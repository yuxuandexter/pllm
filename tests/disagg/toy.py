"""A CPU stand-in for mini-sglang's engine, used to drive the PD glue end to end without a GPU.

The KV pool is a bytearray laid out exactly like ``MHAKVCache._kv_buffer``
(2, num_layers, pool_pages, page_size, kv_heads, head_dim).  "Prefill" writes a deterministic
byte for every (kv, layer, position, token); "decode" reads every KV byte a real attention kernel
would read and checks it against the same function, so any page that was reused too early, never
written, or overwritten by a late RDMA write shows up as a wrong byte.
"""

from __future__ import annotations

import array
import itertools
import time
from typing import Dict, List, Tuple

from minisgl.disagg import ledger as L
from minisgl.disagg import messages as M
from minisgl.disagg.decode import DecodePD
from minisgl.disagg.prefill import PrefillPD
from minisgl.disagg.transfer import FakeBackend

NL, H, HD = 2, 1, 2  # layers, kv heads, head dim (itemsize 1)
TOY_MODEL = 4242  # model identity in the layout (compatibility, layout agreement)
_bases = itertools.count(1)


def kv_byte(tok: int, pos: int, layer: int, kv: int, j: int) -> int:
    return (tok * 7 + pos * 3 + layer * 5 + kv * 11 + j * 13) % 251


class ToyPool:
    def __init__(self, num_pages: int, ps: int) -> None:
        self.ps = ps
        self.pool_pages = num_pages + 1  # +1 dummy page, as in mini-sglang
        self.page_bytes = ps * H * HD
        self.buf = bytearray(2 * NL * self.pool_pages * self.page_bytes)
        self.base = next(_bases) << 32
        self.layout = [NL, ps, H, HD, 1, self.pool_pages, self.base,
                       L.DTYPE_CODES["float8_e4m3fn"], TOY_MODEL]

    def _off(self, kv: int, layer: int, page: int, slot: int) -> int:
        return ((kv * NL + layer) * self.pool_pages + page) * self.page_bytes + slot * H * HD

    def write_tok(self, pages: List[int], pos: int, tok: int) -> None:
        page, slot = pages[pos // self.ps], pos % self.ps
        for kv in (0, 1):
            for layer in range(NL):
                o = self._off(kv, layer, page, slot)
                for j in range(H * HD):
                    self.buf[o + j] = kv_byte(tok, pos, layer, kv, j)

    def check_tok(self, pages: List[int], pos: int, tok: int) -> bool:
        page, slot = pages[pos // self.ps], pos % self.ps
        for kv in (0, 1):
            for layer in range(NL):
                o = self._off(kv, layer, page, slot)
                for j in range(H * HD):
                    if self.buf[o + j] != kv_byte(tok, pos, layer, kv, j):
                        return False
        return True

    # KernelReadPins: the toy "kernels" address KV by slot (page * page_size + offset), as handed out by the
    # ledger core's k_launch (indices / out_loc), not by the request's page list
    def write_slot(self, slot: int, pos: int, tok: int) -> None:
        page, off = slot // self.ps, slot % self.ps
        for kv in (0, 1):
            for layer in range(NL):
                o = self._off(kv, layer, page, off)
                for j in range(H * HD):
                    self.buf[o + j] = kv_byte(tok, pos, layer, kv, j)

    def check_slot(self, slot: int, pos: int, tok: int) -> bool:
        page, off = slot // self.ps, slot % self.ps
        for kv in (0, 1):
            for layer in range(NL):
                o = self._off(kv, layer, page, off)
                for j in range(H * HD):
                    if self.buf[o + j] != kv_byte(tok, pos, layer, kv, j):
                        return False
        return True

    def checksums(self, pages: List[int]) -> List[int]:
        """Per-(K/V, layer) checksums over the pages' bytes in page order (the reference)."""
        out = []
        for kv in (0, 1):
            for layer in range(NL):
                data = b"".join(bytes(self.buf[self._off(kv, layer, p, 0):
                                               self._off(kv, layer, p, 0) + self.page_bytes])
                                for p in pages)
                out.append(M.kv_checksum_bytes(data))
        return out

    def scribble(self, pages: List[int]) -> None:
        for p in pages:
            for kv in (0, 1):
                for layer in range(NL):
                    o = self._off(kv, layer, p, 0)
                    self.buf[o:o + self.page_bytes] = b"\xee" * self.page_bytes


def i32(b) -> List[int]:
    """A little-endian int32 bytearray of ``k_launch`` as a list."""
    a = array.array("i")
    a.frombytes(bytes(b))
    return a.tolist()


def kargs_rows(ledger, arrs, items) -> List[Tuple[List[int], List[int]]]:
    """Per row: (read slots indices[indptr[j]:indptr[j+1]], written slots out_loc[qo[j]:qo[j+1]]),
    after checking them against what 06b6baf gathered from a page table filled from
    ``token_slots`` (the kernel argument contract translation; an AssertionError stops the toy run)."""
    ip, qo, ind, ol, lpl = (i32(b) for b in arrs)
    assert lpl == [1] * (len(ip) - 1), lpl
    out = []
    for j, (gen, rd, wr) in enumerate(items):
        r, w = ind[ip[j]:ip[j + 1]], ol[qo[j]:qo[j + 1]]
        want = ledger.token_slots(gen, 0, wr)
        assert r == want and w == want[rd:wr], (j, r, w, want, rd, wr)
        out.append((r, w))
    return out


def first_token_of(prompt: List[int]) -> int:
    return (sum(prompt) * 31 + len(prompt)) % 1000


class ToyP:
    """Prefill instance: PrefillPD + a ledger + a toy engine (one step per prefill)."""

    def __init__(self, name: str, num_pages: int = 64, ps: int = 1, check_every: int = 1,
                 checksum: bool = True, role: str | None = "P") -> None:
        self.checksum = checksum
        self.pool = ToyPool(num_pages, ps)
        self.inst = M.new_instance_id()
        # compatibility (the contract): a P process's ledger has role P, as make_pd builds it
        self.ledger = L.RefLedger(num_pages, self.pool.layout, self.inst, check_every, role=role)
        self.backend = FakeBackend(name)
        self.backend.add_region(self.pool.base, self.pool.buf)
        self.backend.register([self.pool.base], [len(self.pool.buf)])
        self.pd = PrefillPD(self.ledger, self.backend, self.pool.layout, self.inst,
                            host="127.0.0.1", port=0)
        self.port = self.pd.port
        self.ledger = self.pd.ledger  # the traced view: the toy engine's calls are traced too
        self.rooms: Dict[int, int] = {}
        self.prompts: Dict[int, List[int]] = {}
        self.step = 0
        self.uids = itertools.count(1)
        self.failed: List[Tuple[int, str]] = []
        self.backlog: List[int] = []  # ready but waiting for free pages

    def submit(self, room: int, prompt: List[int], rid: str = "") -> int:
        uid = next(self.uids)
        self.prompts[uid] = prompt
        self.rooms[uid] = room
        assert self.pd.add_request(uid, room, len(prompt), M.tok_hash(prompt), rid=rid)
        return uid

    def tick(self) -> None:
        self.pd.poll()
        self.failed += self.pd.pop_failed()
        self.backlog += self.pd.pop_ready()
        while self.backlog:
            uid = self.backlog[0]
            prompt = self.prompts[uid]
            gen = self.ledger.open_req(-1)
            self.ledger.note("alloc", uid=uid,
                             **{"room": self.rooms.get(uid, -1), **self.pd.ctx_of(uid)})
            pages = self.ledger.alloc(gen, L.div_ceil(len(prompt), self.pool.ps))
            if not pages:  # pool full: retry when transfers finished and pages came back
                self.ledger.release(gen)
                break
            self.backlog.pop(0)
            del self.prompts[uid]
            self.step += 1
            items = [(gen, 0, len(prompt))]
            arrs = self.ledger.k_launch(self.step, items)  # KernelReadPins: the step's slots from the core
            (_, wslots), = kargs_rows(self.ledger, arrs, items)
            for i, t in enumerate(prompt):
                self.pool.write_slot(wslots[i], i, t)
            self.ledger.step_done(self.step)
            csum = None
            if self.checksum:  # after the prefill step completed, before p_post
                csum = self.pool.checksums(pages)
            self.pd.on_prefill_done(uid, gen, len(prompt), first_token_of(prompt), csum=csum)
            self.ledger.release(gen)  # pages stay held by the transfer entry
            # reuse freed pages at once and scribble: catches a source freed too early
            self.pool.scribble(self._free_pages())

    def _free_pages(self) -> List[int]:
        return [p for p in range(self.ledger.num_pages) if self.ledger.pst[p] == L.FREE]

    def close(self) -> None:
        self.pd.shutdown()
        self.backend.close()


class ToyD:
    """Decode instance: DecodePD + a ledger + a toy decode loop that verifies every KV read."""

    def __init__(self, name: str, num_pages: int = 64, ps: int = 1, check_every: int = 1,
                 checksum: bool = True, checksum_fatal: bool = False, role: str | None = "D",
                 **timeouts) -> None:
        self.pool = ToyPool(num_pages, ps)
        self.inst = M.new_instance_id()
        # compatibility (the contract): a D process's ledger has role D, as make_pd builds it
        self.ledger = L.RefLedger(num_pages, self.pool.layout, self.inst, check_every, role=role)
        self.backend = FakeBackend(name)
        self.backend.add_region(self.pool.base, self.pool.buf)
        self.backend.register([self.pool.base], [len(self.pool.buf)])
        self.flushes = 0
        self.flush_seen: List[int] = []
        self.pd = DecodePD(self.ledger, self.backend, self.pool.layout, self.inst,
                           flush_hook=self._flush,
                           checksum_fn=self.pool.checksums if checksum else None,
                           checksum_fatal=checksum_fatal, **timeouts)
        self.ledger = self.pd.ledger  # the traced view
        self.uids = itertools.count(1)
        self.meta: Dict[int, Tuple[List[int], int]] = {}  # uid -> (prompt, max_new)
        self.running: Dict[int, dict] = {}
        self.outputs: Dict[int, List[int]] = {}
        self.failed: Dict[int, str] = {}
        self.step = 0
        self.bad_reads = 0

    def _flush(self) -> None:
        # record how many landings the ledger had seen when the flush ran: the contract wants the
        # flush before the landing is recorded, so the k-th flush must see k - 1 landings
        self.flush_seen.append(self.ledger.stats()["xfers_landed"])
        self.flushes += 1

    def submit(self, room: int, prompt: List[int], p_port: int, max_new: int = 3,
               rid: str = "") -> int:
        uid = next(self.uids)
        self.meta[uid] = (prompt, max_new)
        ok = self.pd.add_request(uid, room, "127.0.0.1", p_port, len(prompt), M.tok_hash(prompt),
                                 max_new_tokens=max_new, rid=rid)
        if not ok:
            self.failed[uid] = "duplicate room"
        return uid

    def tick(self) -> None:
        self.pd.poll()
        reserve = sum(L.div_ceil(r["len"] + r["left"], self.pool.ps)
                      - len(self.ledger.pages_of(r["gen"])) for r in self.running.values())
        self.pd.try_prealloc(self.ledger.free_pages() - reserve - self.pd.pending_reserve())
        for uid, why in self.pd.pop_failed():
            self.failed[uid] = why
        for uid, gen, first in self.pd.pop_ready():
            prompt, max_new = self.meta[uid]
            self.outputs[uid] = [first]
            self.running[uid] = dict(gen=gen, toks=prompt + [first], len=len(prompt),
                                     left=max_new - 1)
            if max_new <= 1:
                self._finish(uid)
        self._decode_step()

    def _decode_step(self) -> None:
        live = [u for u, r in self.running.items() if r["left"] > 0]
        if not live:
            return
        items = []
        for u in live:
            r = self.running[u]
            if r["len"] + 1 > len(self.ledger.pages_of(r["gen"])) * self.pool.ps:
                assert self.ledger.alloc(r["gen"], 1), "toy D reserve broken"
            items.append((r["gen"], r["len"], r["len"] + 1))
        self.step += 1
        arrs = self.ledger.k_launch(self.step, items)  # KernelReadPins: the step's slots from the core
        rows = kargs_rows(self.ledger, arrs, items)
        for u, (rslots, wslots) in zip(live, rows):
            r = self.running[u]
            for pos in range(r["len"]):  # attention reads every cached position
                if not self.pool.check_slot(rslots[pos], pos, r["toks"][pos]):
                    self.bad_reads += 1
            self.pool.write_slot(wslots[0], r["len"], r["toks"][r["len"]])
            nxt = (r["toks"][-1] * 17 + r["len"]) % 1000
            r["toks"].append(nxt)
            self.outputs[u].append(nxt)
            r["len"] += 1
            r["left"] -= 1
        self.ledger.step_done(self.step)
        for u in live:
            if self.running[u]["left"] <= 0:
                self._finish(u)

    def _finish(self, uid: int) -> None:
        r = self.running.pop(uid)
        self.ledger.release(r["gen"])

    def abort(self, uid: int) -> None:
        if uid in self.running:
            self.ledger.note("release", why="abort")
            self._finish(uid)
        else:
            self.pd.abort(uid)

    def close(self) -> None:
        self.pd.shutdown()
        self.backend.close()


def run_until(cond, nodes, timeout: float = 10.0) -> bool:
    t0 = time.monotonic()
    while time.monotonic() - t0 < timeout:
        for n in nodes:
            n.tick()
        if cond():
            return True
        time.sleep(0.002)
    return False
