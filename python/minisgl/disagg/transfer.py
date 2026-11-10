"""Transfer backends expose local completion to the ledger.

Mooncake registers the KV pool once and pushes source blocks into decode's pool.
write returns zero only after the engine reports completion for every block.
Any other result may leave writes in flight, so the ledger quarantines their
pages. The in-process fake preserves this failure behavior for CPU tests."""

from __future__ import annotations

import json
import logging
import os
import threading
import time
from typing import Dict, List, Protocol, Tuple

logger = logging.getLogger("minisgl.disagg.transfer")


class TransferBackend(Protocol):
    session_id: str

    def register(self, ptrs: List[int], lens: List[int]) -> None: ...
    def write(self, peer_session: str, srcs: List[int], dsts: List[int],
              lens: List[int]) -> int: ...


class FaultInjector:
    """External-boundary fault injection around the transfer library call (off by default).

    Rules come from ``MINISGL_PD_FAULT`` (``;``-separated, same grammar as the e2e kit's
    ``faultshim``): ``<knob>[=<ms>]@<selector>`` where the selector picks the n-th call of this
    process (1-based): ``all``, ``every<k>`` (n % k == 0) or ``n<i>`` (n == i).  Knobs:

        delay_before_ms=<ms>  sleep before calling the library (a slow submission queue)
        fail_before           report failure without calling the library (nothing was posted)
        delay_after_ms=<ms>   sleep after the library returned (late local-completion event)
        fail_after            the library returned success but the glue is told -1 (H-fail)

    Every injected event is logged; with ``MINISGL_PD_FAULT_LOG`` set it is also appended there
    as one JSON line.  The glue cannot tell an injected failure from a real one: the ledger
    quarantines the pages either way (that is the point).
    """

    KNOBS = ("delay_before_ms", "fail_before", "delay_after_ms", "fail_after")

    def __init__(self, spec: str | None = None) -> None:
        spec = os.environ.get("MINISGL_PD_FAULT", "") if spec is None else spec
        self.rules: List[Tuple[str, float, Tuple[str, int]]] = []
        for part in filter(None, (p.strip() for p in spec.split(";"))):
            what, _, sel = part.partition("@")
            name, _, val = what.partition("=")
            if name not in self.KNOBS or not sel:
                raise ValueError(f"bad MINISGL_PD_FAULT rule {part!r}")
            if sel == "all":
                match = ("all", 0)
            elif sel.startswith("every") and sel[5:].isdigit() and int(sel[5:]) > 0:
                match = ("every", int(sel[5:]))
            elif sel.startswith("n") and sel[1:].isdigit():
                match = ("n", int(sel[1:]))
            else:
                raise ValueError(f"bad selector in MINISGL_PD_FAULT rule {part!r}")
            self.rules.append((name, float(val or 0), match))
        self.calls = 0
        self.injected = 0
        self._lock = threading.Lock()

    @property
    def active(self) -> bool:
        return bool(self.rules)

    def _log(self, n: int, knob: str, val: float) -> None:
        self.injected += 1
        logger.warning("PD fault injected: call=%d %s=%s", n, knob, val)
        path = os.environ.get("MINISGL_PD_FAULT_LOG")
        if path:
            with open(path, "a") as f:
                f.write(json.dumps({"call": n, "knob": knob, "val": val, "pid": os.getpid(),
                                    "t": time.time()}) + "\n")

    def run(self, call) -> int:
        """Run ``call()`` (the library call, returns 0 on success) under the matching rules."""
        if not self.rules:
            return call()
        with self._lock:
            self.calls += 1
            n = self.calls
        mine = [(k, v) for k, v, (kind, i) in self.rules
                if kind == "all" or (kind == "every" and n % i == 0) or (kind == "n" and n == i)]
        knobs = dict(mine)
        if "delay_before_ms" in knobs:
            self._log(n, "delay_before_ms", knobs["delay_before_ms"])
            time.sleep(knobs["delay_before_ms"] / 1000.0)
        if "fail_before" in knobs:
            self._log(n, "fail_before", 0)
            return -1
        ret = call()
        if "delay_after_ms" in knobs:
            self._log(n, "delay_after_ms", knobs["delay_after_ms"])
            time.sleep(knobs["delay_after_ms"] / 1000.0)
        if "fail_after" in knobs and ret == 0:
            self._log(n, "fail_after", 0)
            return -1
        return ret


class MooncakeBackend:
    """Require an explicit RDMA device to avoid selecting an incompatible port.

    Mooncake uses the selected device for the registered GPU memory. Tests use
    the in-process backend instead."""

    def __init__(self, hostname: str, ib_device: str, protocol: str | None = None) -> None:
        from mooncake.engine import TransferEngine  # imported lazily: not needed on CPU

        protocol = protocol or os.environ.get("MOONCAKE_PROTOCOL", "rdma")
        if protocol == "rdma" and not ib_device:
            raise ValueError("--disaggregation-ib-device is required for Mooncake RDMA "
                             "(choose the active InfiniBand ports explicitly, the contract)")
        self.engine = TransferEngine()
        ret = self.engine.initialize(hostname, "P2PHANDSHAKE", protocol, ib_device)
        if ret != 0:
            raise RuntimeError(f"Mooncake TransferEngine.initialize failed (ret={ret})")
        self.session_id = f"{hostname}:{self.engine.get_rpc_port()}"
        self.faults = FaultInjector()  # MINISGL_PD_FAULT; no rules = no effect

    def register(self, ptrs: List[int], lens: List[int]) -> None:
        ret = self.engine.batch_register_memory(list(ptrs), list(lens))
        if ret != 0:
            raise RuntimeError(f"Mooncake batch_register_memory failed (ret={ret})")

    def write(self, peer_session: str, srcs: List[int], dsts: List[int],
              lens: List[int]) -> int:
        if not srcs:
            return 0

        def call() -> int:
            try:
                from .trace import transfer_call
                ret = transfer_call("TransferEngine.batch_transfer_sync_write",
                                    self.engine.batch_transfer_sync_write, peer_session,
                                    list(srcs), list(dsts), list(lens))
            except Exception:  # noqa: BLE001  (same as SGLang: any exception = failure)
                ret = -1
            return 0 if ret == 0 else -1

        return self.faults.run(call)


# fake backend: bytes really move between in-process buffers, with fault injection

_FAKE_SESSIONS: Dict[str, "FakeBackend"] = {}
_FAKE_LOCK = threading.Lock()


class FakeBackend:
    """In-process stand-in for the RDMA engine.

    Memory regions are ``bytearray`` objects registered under fake addresses.  ``write`` copies
    bytes into the peer's registered region.  Faults (set by tests):
      ``delay_s``      sleep before copying (a slow transfer, so aborts can race with it);
      ``fail_next``    the next N calls return -1; with ``late`` set, the bytes are still
                       copied ``late_s`` seconds later from a background thread (H-fail: a write
                       that "failed" lands afterwards), otherwise half of the blocks are copied;
      ``hang``         block until ``release_hang`` (an engine call that never returns).
    """

    def __init__(self, name: str) -> None:
        self.session_id = f"fake:{name}"
        self.regions: List[Tuple[int, int, bytearray]] = []
        self.delay_s = 0.0
        self.fail_next = 0
        self.late = False
        self.late_s = 0.05
        self.hang = threading.Event()
        self.hang.set()
        self.calls = 0
        self.late_threads: List[threading.Thread] = []
        self.faults = FaultInjector("")  # tests set rules here (the env is not read)
        self.corrupt_next = 0  # flip one destination byte in the next N successful calls
        with _FAKE_LOCK:
            _FAKE_SESSIONS[self.session_id] = self

    def add_region(self, base: int, buf: bytearray) -> None:
        self.regions.append((base, len(buf), buf))

    def register(self, ptrs: List[int], lens: List[int]) -> None:
        for p, n in zip(ptrs, lens):
            if not any(b <= p and p + n <= b + m for b, m, _ in self.regions):
                raise RuntimeError(f"fake register: [{p:#x}, +{n}) is not a known region")

    def _locate(self, addr: int, n: int) -> Tuple[bytearray, int]:
        for b, m, buf in self.regions:
            if b <= addr and addr + n <= b + m:
                return buf, addr - b
        raise RuntimeError(f"fake engine: address {addr:#x}+{n} not registered")

    def write(self, peer_session: str, srcs: List[int], dsts: List[int],
              lens: List[int]) -> int:
        return self.faults.run(lambda: self._write(peer_session, srcs, dsts, lens))

    def _write(self, peer_session: str, srcs: List[int], dsts: List[int],
               lens: List[int]) -> int:
        self.calls += 1
        with _FAKE_LOCK:
            peer = _FAKE_SESSIONS.get(peer_session)
        if peer is None:
            return -1
        self.hang.wait()
        if self.delay_s:
            time.sleep(self.delay_s)
        blocks = list(zip(srcs, dsts, lens))
        if self.fail_next > 0:
            self.fail_next -= 1
            if self.late:
                t = threading.Thread(target=self._late_copy, args=(peer, blocks), daemon=True)
                self.late_threads.append(t)
                t.start()
            else:
                self._copy(peer, blocks[: len(blocks) // 2])
            return -1
        self._copy(peer, blocks)
        if self.corrupt_next > 0 and blocks:  # a silent wrong byte at D (checksum test)
            self.corrupt_next -= 1
            db, do = peer._locate(blocks[0][1], 1)
            db[do] ^= 0x5A
        return 0

    def _late_copy(self, peer: "FakeBackend", blocks) -> None:
        time.sleep(self.late_s)
        self._copy(peer, blocks)

    def _copy(self, peer: "FakeBackend", blocks) -> None:
        for s, d, n in blocks:
            sb, so = self._locate(s, n)
            db, do = peer._locate(d, n)
            db[do:do + n] = sb[so:so + n]

    def close(self) -> None:
        with _FAKE_LOCK:
            _FAKE_SESSIONS.pop(self.session_id, None)
