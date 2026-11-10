"""KV page ownership and lifetime checks for PD disaggregation.

PdLedger decides when pages may be read, written, shared, or reused. The managers
and scheduler follow its results. RefLedger is a compatibility alias. Public
queries return plain values and copies so callers cannot mutate ledger state.

Action and invariant names refer to the prefix-sharing PdCore model in
verification/pd-disagg/trace/PdCore.tla. Trace validation and mutation tests check
the implementation against that design; they are not a refinement proof.

A PRIVATE page belongs to one request generation. Release leaves it DRAINING
while a GPU step or transfer may still access it. Reuse requires evidence that
every access has stopped. Without that evidence, the page stays QUARANTINED for
the process lifetime. SHARED pages contain immutable prefix KV. A remapped DUP
page remains pinned until its last local reader completes. Shared quarantine
keeps a permanent holder rather than changing the page to QUARANTINED.

Local steps complete in stream order. Incoming transfers hold D's exposed pages;
outgoing entries hold P's source pages. Generations and transfer IDs are never
reused. Messages must match the peer instance, room, generation, and transfer ID
or they are dropped and counted.

Prefix sharing supports one complete P prefix page, declared with prefix_tokens
before allocation or hit. All pages use the same pool. Multi-page prefix chains
are outside this implementation.

Untrusted input and capacity refusals return codes. Invalid local calls and
broken invariants raise LedgerViolation, which the caller must treat as fatal."""

from __future__ import annotations

import array
import sys
import threading
from typing import Dict, List, Protocol, Set, Tuple

try:  # Use NumPy views when available; the scalar fallback checks the same postconditions.
    import numpy as _np
except ImportError:  # pragma: no cover
    _np = None

# Plain integer constants keep the ledger interface independent of its implementation.

FREE, PRIVATE, SHARED, DRAINING, QUARANTINED, DUP = 0, 1, 2, 3, 4, 5
PAGE_STATE_NAMES = {FREE: "free", PRIVATE: "private", SHARED: "shared", DRAINING: "draining",
                    QUARANTINED: "quarantined", DUP: "dup"}

# request incarnation states
R_LIVE, R_FAILED, R_RELEASED = 1, 2, 3

# D-side xfer states
X_POSTED, X_LANDED, X_VISIBLE, X_STOPPED, X_QUARANTINED = 1, 2, 3, 4, 5

# P-side entry states
E_POSTED, E_SUBMITTED, E_ABORT_REQ, E_DONE, E_FAILED, E_CANCELLED = 1, 2, 3, 4, 5, 6

# quarantine reasons
Q_PEER_LOST, Q_TIMEOUT, Q_TRANSFER_FAILED, Q_CANCELLED = 1, 2, 3, 4
Q_REASON_NAMES = {Q_PEER_LOST: "peer_lost", Q_TIMEOUT: "timeout",
                  Q_TRANSFER_FAILED: "transfer_failed",
                  Q_CANCELLED: "cancelled"}

# return codes
OK = 0
DROP_UNKNOWN = -1      # no such xid / eid (or never issued)
DROP_MISMATCH = -2     # peer / room / gen do not match the record
DROP_STATE = -3        # the record is not in a state that accepts this message (late, duplicate)
BAD_LEN = -4           # landed token count differs from the expected one (stop evidence kept)
REJ_LAYOUT = -10       # peer KV layout differs from ours (H-layout)
REJ_PEER = -11         # peer unknown or lost
REJ_PAGES = -12        # destination pages out of range / duplicated / wrong count
REJ_SRC = -13          # source request not live, still being written, or too short
REJ_DUP = -14          # (peer, peer_xid) already used or tombstoned (abort arrived first)

# results of p_done / p_abort: what the P glue must send
SEND_NOTHING, SEND_DONE, SEND_ACK, SEND_FAIL_UNSTOPPED = 0, 1, 2, 3

# The handshake includes dtype and model identity because geometry alone is insufficient.
LAYOUT_FIELDS = ("num_layers", "page_size", "kv_heads", "head_dim", "itemsize", "pool_pages",
                 "base_ptr", "dtype", "model_id")
# fields two instances must agree on (pool_pages and base_ptr are per instance)
LAYOUT_COMPARED = (0, 1, 2, 3, 4, 7, 8)
# KV dtype codes (itemsize alone cannot tell bf16 from fp16 or fp8 e4m3 from e5m2)
DTYPE_CODES = {"bfloat16": 1, "float16": 2, "float32": 3, "float8_e4m3fn": 4,
               "float8_e5m2": 5}


# Kernel arguments must fit the int32 page table and FlashInfer index arrays.
K_LIM = 0x7FFF_FFFF
# Row IDs must fit the table-row range accepted by the ledger interface.
ROW_LIM = 1 << 20
# Transfer IDs retain the unsigned 64-bit range of the ledger interface.
XID_LIM = 1 << 64

# Role checks run before argument filtering and leave the state unchanged on refusal.
ROLES = (None, "P", "D")
ROLE_REFUSED = "refused for this instance's role"


def folds_negative(room: int) -> bool:
    """Keep room validation compatible with signed 64-bit ledger rooms.

    Python integers wrap modulo 2**64. Decode refuses values that become negative."""
    return (room & 0xFFFF_FFFF_FFFF_FFFF) >> 63 == 1


def layout_key(layout: List[int]) -> List[int]:
    """The compared part of a layout: equal keys = the same bytes mean the same KV values."""
    return [int(layout[i]) for i in LAYOUT_COMPARED]


class LedgerViolation(RuntimeError):
    """An invariant broke or the glue misused the ledger.  Fatal: stop the process."""




class Ledger(Protocol):
    @property
    def role(self) -> str | None: ...
    def register_peer(self, peer: int, layout: List[int]) -> int: ...
    def peer_lost(self, peer: int) -> List[int]: ...

    def open_req(self, room: int, *, prefix_tokens: List[int] | None = None) -> int: ...
    def hit(self, gen: int, page: int) -> None: ...
    def seal(self, gen: int) -> int: ...
    def dedup(self, gen: int, page: int) -> int: ...
    def evict(self, page: int) -> None: ...
    def flush_shared(self) -> int: ...
    def alloc(self, gen: int, npages: int) -> List[int]: ...
    def pages_of(self, gen: int) -> List[int]: ...
    def token_slots(self, gen: int, lo: int, hi: int) -> List[int]: ...
    def release(self, gen: int) -> int: ...

    def launch(self, step: int, items: List[Tuple[int, int, int]]) -> None: ...
    def complete(self, step: int) -> None: ...
    # PD uses k_launch and step_done to bind kernel arguments to the checked lifetime.
    def k_launch(self, step: int, items: List[Tuple[int, int, int]],
                 npad: int = 0, rows: List[int] | None = None) -> Tuple[
                     bytearray, bytearray, bytearray, bytearray, bytearray]: ...
    def step_done(self, step: int) -> None: ...
    # Row bindings prevent a recycled table row from launching another generation.
    def bind_row(self, row: int, gen: int) -> None: ...
    def row_gen(self, row: int) -> int: ...

    def d_expect(self, gen: int, peer: int, ntokens: int) -> int: ...
    def d_descriptor(self, xid: int) -> tuple: ...
    def d_landed(self, peer: int, room: int, gen: int, xid: int, ntokens: int) -> int: ...
    def d_mark_visible(self, xid: int) -> None: ...
    def d_stopped(self, peer: int, room: int, gen: int, xid: int) -> int: ...
    def d_unstopped(self, xid: int, reason: int) -> int: ...
    def d_xfer(self, xid: int) -> Tuple[int, int, int, int, int]: ...

    def p_post(self, gen: int, ntokens: int, peer: int, peer_room: int, peer_gen: int,
               peer_xid: int, dst_pages: List[int], *, dst_descriptor: tuple | None = None) -> int: ...
    def p_expose(self, gen: int, ntokens: int, peer: int, peer_room: int, peer_gen: int,
                 peer_xid: int, dst_pages: List[int], *, dst_descriptor: tuple) -> tuple: ...
    def p_plan(self, eid: int) -> Tuple[List[int], List[int], List[int]]: ...
    def p_begin(self, eid: int) -> bool: ...
    def p_cancel(self, eid: int) -> bool: ...
    def p_done(self, eid: int, ok: bool) -> int: ...
    def p_abort(self, peer: int, peer_xid: int) -> int: ...
    def p_entry(self, eid: int) -> Tuple[int, int, int, int, int]: ...

    def free_pages(self) -> int: ...
    def stats(self) -> Dict[str, int]: ...
    def check(self) -> None: ...


def div_ceil(a: int, b: int) -> int:
    return -(-a // b)


def _le_i32(b) -> array.array:
    """A little-endian int32 bytearray (a k_launch result) as an array('i')."""
    a = array.array("i")
    a.frombytes(bytes(b))
    if sys.byteorder != "little":
        a.byteswap()
    return a


def page_addr(layout: List[int], kv: int, layer: int, page: int) -> int:
    """Address a KV block in the contiguous MHAKVCache buffer.

    The layout is (2, num_layers, pool_pages, page_size, kv_heads, head_dim)."""
    num_layers, page_size, kv_heads, head_dim, itemsize, pool_pages, base_ptr = layout[:7]
    page_bytes = page_size * kv_heads * head_dim * itemsize
    return base_ptr + ((kv * num_layers + layer) * pool_pages + page) * page_bytes


def plan_copy(src_layout: List[int], src_pages: List[int], dst_layout: List[int],
              dst_pages: List[int]) -> Tuple[List[int], List[int], List[int]]:
    """Merge page pairs contiguous at both ends to reduce transfer descriptors.

    Return source address, destination address, and byte count for each KV layer."""
    if (len(src_layout) != len(LAYOUT_FIELDS) or len(dst_layout) != len(LAYOUT_FIELDS)
            or layout_key(src_layout) != layout_key(dst_layout)):
        raise LedgerViolation("TransferLayout: incompatible source/destination layout")
    if (not src_pages or len(src_pages) != len(dst_pages)
            or len(set(src_pages)) != len(src_pages) or len(set(dst_pages)) != len(dst_pages)
            or any(not 0 <= p < src_layout[5] - 1 for p in src_pages)
            or any(not 0 <= p < dst_layout[5] - 1 for p in dst_pages)):
        raise LedgerViolation("TransferPages: incomplete, repeated or out-of-range page sequence")
    num_layers, page_size, kv_heads, head_dim, itemsize = src_layout[:5]
    page_bytes = page_size * kv_heads * head_dim * itemsize
    runs: List[Tuple[int, int, int]] = []  # (src page, dst page, length in pages)
    for s, d in zip(src_pages, dst_pages):
        if runs and runs[-1][0] + runs[-1][2] == s and runs[-1][1] + runs[-1][2] == d:
            runs[-1] = (runs[-1][0], runs[-1][1], runs[-1][2] + 1)
        else:
            runs.append((s, d, 1))
    srcs: List[int] = []
    dsts: List[int] = []
    lens: List[int] = []
    for kv in (0, 1):
        for layer in range(num_layers):
            for s, d, n in runs:
                srcs.append(page_addr(src_layout, kv, layer, s))
                dsts.append(page_addr(dst_layout, kv, layer, d))
                lens.append(n * page_bytes)
    return srcs, dsts, lens




class _Req:
    __slots__ = ("room", "state", "pages", "written", "launched", "xid", "rls", "rlp", "prefix_key", "posted")

    def __init__(self, room: int, prefix_key: tuple | None = None) -> None:
        self.prefix_key = prefix_key
        self.posted = False
        self.room = room
        self.state = R_LIVE
        self.pages = array.array("q")  # contiguous page IDs; private, queries return copies
        self.rls = 0  # latest step pinning this incarnation
        self.rlp = 0  # page-count snapshot at that launch (alloc may grow afterward)
        self.written = 0  # tokens whose KV is known to be in place (completed steps, landed xfer)
        self.launched = 0  # tokens whose KV is written by a launched (stream-ordered) step
        self.xid = 0  # D side: the incoming transfer of this request (0 = none)


class _Xfer:  # D side
    __slots__ = ("gen", "room", "peer", "pages", "ntokens", "state")

    def __init__(self, gen: int, room: int, peer: int, pages: List[int], ntokens: int) -> None:
        self.gen, self.room, self.peer = gen, room, peer
        self.pages, self.ntokens = pages, ntokens
        self.state = X_POSTED


class _Entry:  # P side
    __slots__ = ("gen", "peer", "peer_room", "peer_gen", "peer_xid", "src", "dst", "state",
                 "ntokens", "dst_layout", "shared")

    def __init__(self, gen, peer, peer_room, peer_gen, peer_xid, src, dst, ntokens) -> None:
        self.gen, self.peer = gen, peer
        self.peer_room, self.peer_gen, self.peer_xid = peer_room, peer_gen, peer_xid
        self.src, self.dst, self.ntokens = src, dst, ntokens
        self.dst_layout: List[int] = []
        self.shared: tuple = ()  # immutable (physical page, complete token key) snapshot
        self.state = E_POSTED


class PdLedger:
    """Serialize ledger operations so checks and state changes are atomic.

    check_every controls full invariant scans: 1 scans every mutation, N scans
    every Nth call, and 0 scans only through check(). Local preconditions and
    k_launch postconditions always run. QuarNoReg runs before quarantine;
    NoEvictUnderRDMA and PrefcMatchesHolders run on each touched shared page.

    role is fixed at construction. None keeps the unrestricted interface;
    "P" and "D" reject calls belonging to the other side before filtering
    arguments or changing state. Decode also rejects local rooms, partial
    exposure, launches without an incoming transfer, and page growth while
    an exposed transfer is not yet VISIBLE."""

    def __init__(self, num_pages: int, layout: List[int], instance: int,
                 check_every: int = 0, role: str | None = None) -> None:
        # Validate the role first to preserve the interface error order.
        if role is not None and not isinstance(role, str):
            raise TypeError(f"argument 'role': {type(role).__name__} object is not None or a str")
        if role not in ROLES:
            raise LedgerViolation(f"role must be None, 'P' or 'D', not {role!r}")
        self._role = role
        if len(layout) != len(LAYOUT_FIELDS):
            raise LedgerViolation(f"layout needs {LAYOUT_FIELDS}")
        if num_pages <= 0 or num_pages > layout[5] - 1:
            # Reserve the last pool page for CUDA-graph padding; the ledger must never own it.
            raise LedgerViolation("num_pages must be in 1..pool_pages - 1 (last page = dummy)")
        self.num_pages = num_pages
        self.page_size = layout[1]
        self.layout = list(layout)
        self.instance = instance
        self.check_every = check_every
        self._ncalls = 0
        self._lock = threading.RLock()
        # Flat machine arrays let launch postconditions use NumPy views without copying.
        self.pst = array.array("b", [FREE]) * num_pages
        self.pown = array.array("q", [0]) * num_pages  # gen
        # Keep each page index independently of request page lists for launch postconditions.
        self.pix = array.array("q", [0]) * num_pages
        self.pops: List[Set[Tuple[int, int]]] = [set() for _ in range(num_pages)]  # in-flight
        self.pqr = [0] * num_pages  # quarantine reason
        self.pqpeer = [0] * num_pages
        self.free: List[int] = list(range(num_pages - 1, -1, -1))  # stack, pops low ids first
        self.q_total = 0  # pages ever quarantined (must equal the current quarantined count)
        # PrefixSharing only: sparse metadata leaves the KernelReadPins full-slot vector path unchanged.
        self.skey: Dict[int, tuple] = {}
        self.prefc: Dict[int, int] = {}
        self.holders: Dict[int, Set[Tuple[str, int]]] = {}
        self.rshared: Dict[int, int] = {}  # Canonical prefix pages are tracked independently of r.pages.
        self.prefix_steps: Dict[int, List[Tuple[int, int]]] = {}  # physical pin snapshots
        self.shared_quarantine: Set[Tuple[int, int]] = set()  # permanent (eid, page) holders
        self.prefix_reqs: Set[int] = set()
        # requests, steps, transfers
        self.reqs: Dict[int, _Req] = {}
        self.next_gen = 1
        self.step = 0
        self.done = 0
        self.steps: Dict[int, Tuple[List[Tuple[int, int, int]], List[int]]] = {}
        self.xfers: Dict[int, _Xfer] = {}
        self.next_xid = 1
        self.entries: Dict[int, _Entry] = {}
        self.entry_by_key: Dict[Tuple[int, int], int] = {}  # Index outgoing entries by peer instance and transfer ID.
        self.next_eid = 1
        self.used_peer_xids: Set[Tuple[int, int]] = set()  # (peer, peer_xid) posted or tombstoned
        self.peers: Dict[int, List[int]] = {}
        self.lost_peers: Set[int] = set()
        # Bindings remain one-to-one until release, even if a transfer fails.
        self.gen_of_row: Dict[int, int] = {}
        self.row_of_gen: Dict[int, int] = {}
        self.counters: Dict[str, int] = {
            "dropped_msgs": 0, "xfers_landed": 0, "xfers_stopped": 0, "xfers_quarantined": 0,
            "entries_done": 0, "entries_failed": 0, "entries_cancelled": 0,
            "hits": 0, "sealed": 0, "deduped": 0, "evicted": 0,
        }
        for r in Q_REASON_NAMES.values():
            self.counters["quarantined_" + r] = 0
        # Observation only: disabled instances keep every original bound method.
        if _os.environ.get("MINISGL_PD_LEDGER_TIMING", "0") == "1":
            from .timing import install
            install(self)

    @property
    def role(self) -> str | None:
        """The role is fixed at construction so callers cannot bypass role checks."""
        return self._role

    def _fail(self, msg: str) -> None:
        raise LedgerViolation(f"[ledger inst={self.instance}] {msg}")

    # PdCore IsP / IsD instance separation (no action).
    def _refuse(self, what: str, why: str) -> None:
        """Refuse a role mismatch before any state change."""
        self._fail(f"{what}: {ROLE_REFUSED} (role {self._role}: {why})")

    def _refuse_on(self, role: str, what: str) -> None:
        """Check the role before malformed arguments can hide a role refusal."""
        if self._role == role:
            self._refuse(what, f"{what} is a {'D' if role == 'P' else 'P'} method")

    def _req(self, gen: int, states=(R_LIVE,)) -> _Req:
        r = self.reqs.get(gen)
        if r is None or r.state not in states:
            self._fail(f"gen {gen} unknown or in wrong state "
                       f"({None if r is None else r.state}, want {states})")
        return r  # type: ignore[return-value]

    def _after(self) -> None:
        self._ncalls += 1
        if self.check_every and self._ncalls % self.check_every == 0:
            self._check()

    def _kpin(self, p: int) -> bool:
        # The latest launch covers older launches because live requests only grow.
        # Shared pages have no private owner; remapped DUP pages may be absent from r.pages.
        if self.pst[p] in (SHARED, DUP):
            return any(q == p for pins in self.prefix_steps.values() for _, q in pins)
        r = self.reqs.get(self.pown[p])
        return r is not None and r.rls > self.done and self.pix[p] < r.rlp

    def _try_free(self, p: int) -> bool:
        """An empty in-flight set is the evidence needed to reclaim a draining page."""
        if self.pst[p] in (DRAINING, DUP) and not self.pops[p] and not self._kpin(p):
            self.pst[p] = FREE
            self.pown[p] = 0
            self.free.append(p)
            return True
        return False

    # QuarNoReg must hold at this transition even when full invariant scans are disabled.
    def _quar_no_reg(self, p: int) -> None:
        for kind, eid in self.pops[p]:
            e = self.entries.get(eid) if kind == 2 else None
            if e is not None and e.state == E_POSTED:
                self._fail(f"postcondition QuarNoReg: page {p} still has POSTED entry {eid}")

    def _quarantine(self, p: int, reason: int, peer: int) -> None:
        self._quar_no_reg(p)
        if self.pst[p] == QUARANTINED:
            return
        if self.pst[p] not in (PRIVATE, DRAINING):
            self._fail(f"quarantine of page {p} in state {self.pst[p]}")
        self.pst[p] = QUARANTINED
        self.pqr[p] = reason
        self.pqpeer[p] = peer
        self.q_total += 1
        self.counters["quarantined_" + Q_REASON_NAMES[reason]] += 1

    def _drop(self) -> int:
        self.counters["dropped_msgs"] += 1
        return 0

    def _gc_req(self, gen: int) -> None:
        r = self.reqs.get(gen)
        if r is None or r.state != R_RELEASED or r.rls > self.done:
            return
        if all(self.pst[p] in (FREE, QUARANTINED) or self.pown[p] != gen for p in r.pages):
            del self.reqs[gen]
            self.prefix_reqs.discard(gen)
            x = self.xfers.get(r.xid)
            if x is not None and x.state != X_POSTED:
                del self.xfers[r.xid]  # xids are never reused (counter); late messages drop

    def _remove_op(self, op: Tuple[int, int], pages: List[int]) -> List[int]:
        touched = []
        for p in pages:
            if op in self.pops[p]:
                self.pops[p].discard(op)
                touched.append(p)
        return touched

    # PdCore environment peer/layout agreement (no standalone action).
    def register_peer(self, peer: int, layout: List[int]) -> int:
        with self._lock:
            if peer in self.lost_peers or peer == self.instance:
                return REJ_PEER
            # layout agreement: geometry, KV dtype and model identity must all agree (Z3 finding layout identity)
            if len(layout) != len(LAYOUT_FIELDS) or layout_key(layout) != layout_key(self.layout):
                return REJ_LAYOUT
            if peer in self.peers and self.peers[peer] != list(layout):
                return REJ_LAYOUT  # an instance never changes its pool
            self.peers[peer] = list(layout)
            self._after()
            return OK

    # PdCore DRecvNotice (not ok) / DTimeout / DrainTimeout; PCancelReg.
    def peer_lost(self, peer: int) -> List[int]:
        """Peer loss does not prove that submitted transfers have stopped.

        Quarantine unresolved incoming transfers. Cancel outgoing registrations
        that never reached the engine; submitted entries keep their source holds
        until p_done reports the result. Return affected transfer or entry IDs."""
        with self._lock:
            self.lost_peers.add(peer)
            self.peers.pop(peer, None)
            out = []
            for xid, x in list(self.xfers.items()):
                if x.peer == peer and x.state == X_POSTED:
                    self._quarantine_xfer(xid, x, Q_PEER_LOST)
                    out.append(xid)
            for eid, e in list(self.entries.items()):
                if e.peer == peer and e.state == E_POSTED:
                    self._finish_entry(eid, e, E_CANCELLED)
                    out.append(eid)
            self._after()
            return out

    # PdCore PRecvReq / DRecvReq (with alloc + d_expect).
    def open_req(self, room: int, *, prefix_tokens: List[int] | None = None) -> int:
        with self._lock:
            if self._role == "D" and folds_negative(room):  # D opens only PD requests (decode handoff admission)
                self._refuse("open_req", f"room {room} is a local request (negative as i64)")
            # PdCore PRecvReq / PAllocPrefix / PNoPrefix.
            key = None
            if prefix_tokens is not None:
                self._refuse_on("D", "open_req(prefix_tokens)")
                key = tuple(prefix_tokens)
                if len(key) != self.page_size or any(type(t) is not int or t < 0 for t in key):
                    self._fail("prefix_tokens must be exactly one complete page of token IDs")
            gen = self.next_gen
            self.next_gen += 1
            self.reqs[gen] = _Req(room, key)
            if key is not None:
                self.prefix_reqs.add(gen)
            self._after()
            return gen

    # PdCore PRecvReq / DRecvReq; DGrow after D visibility (run / ovl).
    # Before D exposure alloc is the DRecvReq allocation half; Q = got (one action).
    def alloc(self, gen: int, npages: int) -> List[int]:
        """Allocate all requested pages or return an empty list without changing ownership."""
        with self._lock:
            r = self._req(gen)
            if npages < 0:
                self._fail("negative npages")
            if self._role == "D" and r.xid and self.xfers[r.xid].state != X_VISIBLE:
                # D's alloc window (decode allocation window): not yet exposed, or the transfer is VISIBLE; checked
                # before the capacity check, so a full pool does not hide the refusal
                self._refuse("alloc", f"gen {gen}'s incoming transfer {r.xid} is exposed but not "
                                      f"visible (state {self.xfers[r.xid].state})")
            if npages > len(self.free):
                return []
            got = [self.free.pop() for _ in range(npages)]
            base = len(r.pages)
            for i, p in enumerate(got):
                if self.pst[p] != FREE or self.pops[p]:
                    self._fail(f"free list held page {p} in state {self.pst[p]}")
                self.pst[p] = PRIVATE
                self.pown[p] = gen
                self.pix[p] = base + i
            r.pages.extend(got)
            self._after()
            return list(got)

    # PdCore observation of pg (no action).
    def pages_of(self, gen: int) -> List[int]:
        with self._lock:
            return list(self._req(gen, (R_LIVE, R_FAILED, R_RELEASED)).pages)

    # PdCore observation of page state (no action).
    def page_states(self, pages: List[int]) -> List[int]:
        """Return page states for trace observations without exposing mutable state."""
        with self._lock:
            return [self.pst[p] for p in pages]

    # PdCore KEnt (page/token addressing; no standalone action).
    def token_slots(self, gen: int, lo: int, hi: int) -> List[int]:
        """KV slot index (page * page_size + offset) of token positions [lo, hi) of ``gen``:
        the page-table entries the glue writes.  Computed here so that the glue never builds
        a slot or page number itself."""
        with self._lock:
            r = self._req(gen)
            ps = self.page_size
            if not (0 <= lo <= hi <= len(r.pages) * ps):
                self._fail(f"token_slots({gen}, {lo}, {hi}) outside {len(r.pages)} pages")
            return [r.pages[t // ps] * ps + t % ps for t in range(lo, hi)]

    # PdCore PRelease / DFinish / DFinishOvl / DEnd; GTo for grown pages.
    def release(self, gen: int) -> int:
        """Release ownership while retaining pages that may still be accessed.

        Unpinned pages become FREE; the rest drain until completion evidence
        arrives. Quarantined pages remain quarantined. Return pages freed now."""
        with self._lock:
            r = self._req(gen, (R_LIVE, R_FAILED))
            r.state = R_RELEASED
            freed = 0
            for p in r.pages:
                if self.pown[p] != gen:
                    continue
                if self.pst[p] == PRIVATE:
                    self.pst[p] = DRAINING
                    freed += self._try_free(p)
                elif self.pst[p] != QUARANTINED:
                    self._fail(f"release: page {p} of gen {gen} in state {self.pst[p]}")
            if gen in self.rshared:
                self._release_shared(gen)
            row = self.row_of_gen.pop(gen, None)  # the gen's table row is free again
            if row is not None:
                del self.gen_of_row[row]
            self._gc_req(gen)
            self._after()
            return freed

    def prefix_guard(self):
        """Keep radix edits atomic with their ledger transitions.

        The traced wrapper takes the trace lock before this reentrant lock,
        preventing worker completion from interleaving with a tree edit."""
        return self._lock

    def _trace_entry_snapshot(self, eid: int) -> dict:
        """Read-only registered entry observation, never a reconstructed call argument.

        The entry stores dst_layout; src_layout is the actual local layout used by
        p_plan (there is no per-entry src_layout field). Caller may hold prefix_guard
        across p_post and this query to make registration + observation indivisible.
        """
        with self._lock:
            e = self.entries[eid]
            return dict(src_pages=list(e.src), dst_pages=list(e.dst),
                        src_layout=list(self.layout), dst_layout=list(e.dst_layout),
                        h=e.gen, peer=e.peer, room=e.peer_room, d_h=e.peer_gen,
                        xid=e.peer_xid, ntokens=e.ntokens)

    def shared_snapshot(self) -> list:
        """Trace-only observation; does not repair counts or alter holder sets."""
        with self._lock:
            return [{"page": p, "tokens": list(self.skey[p]), "refc": self.prefc[p],
                     "holders": [list(h) for h in sorted(self.holders[p])]}
                    for p in sorted(self.skey)]

    def shared_refs(self) -> Dict[int, int]:
        # PdCore PrefcMatchesHolders (observation, no action).
        with self._lock:
            for p in self.skey:
                self._shared_check(p)
            return dict(self.prefc)

    # PdCore PrefcMatchesHolders / SFollow. Count deltas are
    # independent of the holder sets, never assigned from len(holders).
    def _ref(self, p: int, holder: Tuple[str, int]) -> None:
        if holder in self.holders[p]:
            self._fail("postcondition PrefcMatchesHolders: duplicate holder")
        self.holders[p].add(holder)
        self.prefc[p] += 1

    def _unref(self, p: int, holder: Tuple[str, int]) -> None:
        if holder not in self.holders[p] or self.prefc[p] <= 0:
            self._fail("postcondition PrefcMatchesHolders: unref of absent holder")
        self.holders[p].remove(holder)
        self.prefc[p] -= 1

    # PdCore NoEvictUnderRDMA. Entry identity comes from the POST snapshot,
    # including permanently failed transfers; no current request map is consulted.
    def _no_evict_under_rdma(self, p: int) -> None:
        for e in self.entries.values():
            for q, key in e.shared:
                if q == p and (self.pst[p] != SHARED or self.skey.get(p) != key):
                    self._fail(f"postcondition NoEvictUnderRDMA: source page {p} changed")

    def _shared_check(self, p: int) -> None:
        """Always-on touched-page checks, like launch checks / QuarNoReg; check_every only adds scans.
        Reconstruct holders from independent lifecycle records so deleting both a holder
        and its count does not hide an outstanding request, read pin, or transfer."""
        self._no_evict_under_rdma(p)
        expected = {("req", g) for g, q in self.rshared.items() if q == p}
        expected.update(("quar", e) for e, q in self.shared_quarantine if q == p)
        expected.update(("entry", eid) for eid, e in self.entries.items()
                        if e.state != E_FAILED and any(q == p for q, _ in e.shared))
        actual = self.holders.get(p, set())
        if self.prefc.get(p, 0) != len(actual) or actual != expected:
            self._fail(f"postcondition PrefcMatchesHolders: page {p}, count "
                       f"{self.prefc.get(p, 0)}, holders {actual}, expected {expected}")
        # The permanent quarantine record must exist for EVERY failed Shared source.
        for eid, e in self.entries.items():
            if e.state == E_FAILED and any(q == p for q, _ in e.shared):
                if (eid, p) not in self.shared_quarantine:
                    self._fail("postcondition NoEvictUnderRDMA: failed source lost quarantine")
        for gen in self.prefix_reqs:
            r = self.reqs[gen]
            if r.state != R_RELEASED and r.pages and r.pages[0] == p and self.pst[p] == SHARED:
                if self.rshared.get(gen) != p:
                    self._fail("postcondition PrefcMatchesHolders: mapped request has no holder")
        for gen, q in self.rshared.items():
            if q != p:
                continue
            r = self.reqs.get(gen)
            if (r is None or not r.pages or r.pages[0] != p or r.prefix_key != self.skey.get(p)
                    or self.pst[p] != SHARED):
                self._fail("postcondition HitIdentity/SMapIntegrity: shared map changed")
            if r.state == R_RELEASED and r.rls <= self.done:
                self._fail("postcondition PrefcMatchesHolders: released request kept holder")
        for pins in self.prefix_steps.values():
            for gen, q in pins:
                if q == p and self.pst[p] == SHARED and ("req", gen) not in actual:
                    self._fail("postcondition PrefcMatchesHolders: read pin lost request holder")

    def _shared_page(self, p: int, key: tuple | None) -> None:
        if (type(p) is not int or not 0 <= p < self.num_pages or self.pst[p] != SHARED
                or key is None or self.skey.get(p) != key):
            self._fail("HitIdentity: page is not Shared with the request's complete token identity")
        self._shared_check(p)

    # PdCore PHit. Hit happens before alloc/launch, and holds exactly one
    # canonical full prefix page. Identity is the token tuple, not a collision-prone hash.
    def hit(self, gen: int, page: int) -> None:
        with self._lock:
            self._refuse_on("D", "hit")
            r = self._req(gen)
            if r.pages or r.launched or r.posted:
                self._fail("hit must precede allocation, launch and post")
            self._shared_page(page, r.prefix_key)
            r.pages.append(page)
            r.written = r.launched = self.page_size
            self.rshared[gen] = page
            self._ref(page, ("req", gen))
            self.counters["hits"] += 1
            self._shared_check(page)
            self._after()

    def _prefix_candidate(self, gen: int) -> Tuple[_Req, int]:
        r = self._req(gen)
        if r.prefix_key is None or not r.pages or gen in self.rshared or r.posted:
            self._fail("seal/dedup requires a private prefix before post")
        p = r.pages[0]
        if self.pst[p] != PRIVATE or self.pown[p] != gen or self.pix[p] != 0 or self.pops[p]:
            self._fail("seal/dedup candidate is not unexposed private page zero")
        if r.written < self.page_size:
            self._fail("SealOnlyLanded: prefix page is not completely written")
        for items, _ in self.steps.values():
            if any(g == gen and rd < self.page_size and wr > rd for g, rd, wr in items):
                self._fail("SealOnlyLanded: prefix page still has an in-flight writer")
        return r, p

    # PdCore PSeal. Only complete KV with no pending writer can be sealed;
    # read-only pins may remain and keep the generation's reference until KDone.
    def seal(self, gen: int) -> int:
        with self._lock:
            self._refuse_on("D", "seal")
            r, p = self._prefix_candidate(gen)
            self.pst[p], self.pown[p] = SHARED, 0
            self.skey[p] = r.prefix_key
            self.prefc[p], self.holders[p] = 0, set()
            self.rshared[gen] = p
            self._ref(p, ("req", gen))
            self.counters["sealed"] += 1
            self._shared_check(p)
            self._after()
            return p

    # PdCore PDedup. Remap BEFORE freeing the duplicate; actual in-flight
    # physical prefix pages are stored in prefix_steps and are never rewritten by dedup.
    def dedup(self, gen: int, page: int) -> int:
        with self._lock:
            self._refuse_on("D", "dedup")
            r, old = self._prefix_candidate(gen)
            self._shared_page(page, r.prefix_key)
            r.pages[0] = page
            self.rshared[gen] = page
            self._ref(page, ("req", gen))
            self.pst[old] = DUP
            self._try_free(old)
            self.counters["deduped"] += 1
            self._shared_check(page)
            self._after()
            return old

    # PdCore SFollow (RemainingRequestHolders): release keeps the exact request holder until
    # its LAST local read pin ends, independently of other requests or outgoing entries.
    def _release_shared(self, gen: int) -> None:
        p = self.rshared.get(gen)
        if p is not None and self.reqs[gen].rls <= self.done:
            self._unref(p, ("req", gen))
            del self.rshared[gen]
        if p is not None:
            self._shared_check(p)

    # PdCore SEvict. Guard is Shared AND refcount=0; NoEvictUnderRDMA is
    # a checked consequence of holder accounting, never an extra RDMA eviction guard.
    def evict(self, page: int) -> None:
        with self._lock:
            self._refuse_on("D", "evict")
            self._evict_check(page)
            self._evict_apply(page)
            self._after()

    def _evict_check(self, p: int) -> None:
        if type(p) is not int or not 0 <= p < self.num_pages or self.pst[p] != SHARED:
            self._fail("evict requires a Shared page")
        self._shared_check(p)
        if self.prefc[p] != 0:
            self._fail("evict requires zero references")

    def _evict_apply(self, p: int) -> None:
        self.pst[p], self.pown[p], self.pix[p] = FREE, 0, 0
        self._shared_check(p)
        del self.skey[p], self.prefc[p], self.holders[p]
        self.free.append(p)
        self.counters["evicted"] += 1

    # PdCore FlushAll (cache reset, NOT D's visibility flush).
    def flush_shared(self) -> int:
        with self._lock:
            self._refuse_on("D", "flush_shared")
            pages = list(self.skey)
            for p in pages:
                self._evict_check(p)
            for p in pages:
                self._evict_apply(p)
            self._after()
            return len(pages)

    # PdCore KLaunch / KRowOK.
    def launch(self, step: int, items: List[Tuple[int, int, int]]) -> None:
        """Local GPU step ``step`` (must be the next one) is about to be issued.

        items: (gen, read_upto, write_upto) per request: the step reads KV tokens
        [0, read_upto) and writes [read_upto, write_upto).  Fail-stop unless every request is
        live, every read token is already in place (landed transfer, completed step, or a
        launched earlier step on the same stream), no incoming transfer is still unlanded or
        not yet made visible, and the pages cover write_upto.
        """
        with self._lock:
            pages = self._launch_check(step, items)
            self._launch_apply(step, items, pages)
            self._after()

    def _launch_check(self, step: int, items: List[Tuple[int, int, int]]) -> List[int]:
        """Check KRowOK before mutation, with one page-count snapshot per row.

        ReadOwnership, WriteOwnership, and full scans check individual pages;
        this precheck stays proportional to the number of rows."""
        if step != self.step + 1:
            self._fail(f"launch step {step} after {self.step}")
        pages: List[int] = []
        seen: Set[int] = set()
        for gen, rd, wr in items:
            r = self._req(gen)
            if gen in seen:
                self._fail(f"gen {gen} twice in step {step}")
            seen.add(gen)
            if not (0 <= rd <= wr <= len(r.pages) * self.page_size):
                self._fail(f"step {step} gen {gen}: bad range {rd}..{wr} "
                           f"for {len(r.pages)} pages")
            if r.xid and self.xfers[r.xid].state != X_VISIBLE:
                self._fail(f"step {step} gen {gen}: incoming xfer {r.xid} not landed+visible")
            if not r.xid and self._role == "D":  # D runs only handoffs (decode handoff admission); same place as exec
                self._refuse("launch", f"step {step} gen {gen} has no incoming transfer")
            if rd > max(r.written, r.launched):
                self._fail(f"step {step} gen {gen}: reads {rd} tokens, only "
                           f"{max(r.written, r.launched)} written")
            if r.prefix_key is not None:
                if r.posted and wr > rd:
                    self._fail("NoEvictUnderRDMA: local write after post")
                if not r.pages:
                    self._fail("PrefixSharing launch without prefix page")
                if gen in self.rshared:
                    self._shared_page(r.pages[0], r.prefix_key)
                    if rd < self.page_size and wr > rd:
                        self._fail("SharedImmutable: launch writes a Shared prefix")
                elif (self.pst[r.pages[0]] != PRIVATE or self.pown[r.pages[0]] != gen):
                    self._fail("SMapIntegrity: prefix is neither owned Private nor held Shared")
            # KEnt + KGEnt: pin ALL pages, including unwritten grown pages.
            pages.append(len(r.pages))
        return pages

    def _launch_apply(self, step: int, items: List[Tuple[int, int, int]],
                      pages: List[int]) -> None:
        # PdCore KLaunch; pin by incarnation, not one set insertion per page.
        for (gen, rd, wr), count in zip(items, pages):
            r = self.reqs[gen]
            # KLaunch writes W; StreamFIFO: later steps read on the same FIFO stream.
            r.launched = max(r.launched, wr)
            r.rls, r.rlp = step, count
        # PdCore KLaunch. Freeze physical prefix identity for later dedup.
        if self.prefix_reqs:
            pins = [(g, self.reqs[g].pages[0]) for g, _, _ in items if g in self.prefix_reqs]
            if pins:
                self.prefix_steps[step] = pins
        self.steps[step] = (list(items), pages)
        self.step = step

    # PdCore KRowOK (row r binds an incarnation; no standalone action).
    def bind_row(self, row: int, gen: int) -> None:
        """Keep a table row bound to one live generation until release.

        Reject an invalid row, a non-live generation, or an existing binding
        with LedgerViolation and no state change."""
        with self._lock:
            r = self.reqs.get(gen)
            if r is None or r.state != R_LIVE:
                self._fail(f"bind_row({row}, {gen}): gen unknown or not live")
            if not (isinstance(row, int) and 0 <= row < ROW_LIM):
                self._fail(f"bind_row({row}, {gen}): bad row")
            if gen in self.row_of_gen or row in self.gen_of_row:
                self._fail(f"bind_row({row}, {gen}): table row binding (row bound to "
                           f"{self.gen_of_row.get(row, 0)}, gen bound to "
                           f"{self.row_of_gen.get(gen, -1)})")
            self.gen_of_row[row] = gen
            self.row_of_gen[gen] = row
            self._after()

    # PdCore observation of row incarnation (no action).
    def row_gen(self, row: int) -> int:
        """The gen bound to table row ``row`` (0 = none)."""
        with self._lock:
            return self.gen_of_row.get(row, 0)

    # PdCore KLaunch / KRowOK / KEnt.
    def k_launch(self, step: int, items: List[Tuple[int, int, int]], npad: int = 0,
                 rows: List[int] | None = None) -> Tuple[bytearray, bytearray, bytearray,
                                                         bytearray, bytearray]:
        """Build kernel arguments from the same page lists checked by launch.

        items follow launch's batch order; npad adds CUDA-graph padding rows.
        Return indptr, qo_indptr, indices, out_loc, and last_page_len as
        little-endian int32 bytearrays. The pointer arrays delimit each row's
        read and write slots. last_page_len contains ones for FlashInfer's
        single-token pages. Padding uses only the reserved dummy slot.

        When rows is supplied, each generation must match its table binding.
        None skips that check. Any refusal leaves the ledger unchanged."""
        with self._lock:
            if not isinstance(npad, int) or npad < 0:
                self._fail(f"k_launch step {step}: bad npad {npad}")
            if rows is not None:
                if len(rows) != len(items):
                    self._fail(f"k_launch step {step}: {len(rows)} rows for {len(items)} items")
                for (gen, _rd, _wr), w in zip(items, rows):
                    if self.gen_of_row.get(w, 0) != gen:
                        self._fail(f"k_launch step {step}: table row binding: row {w} is bound "
                                   f"to gen {self.gen_of_row.get(w, 0)}, the item is gen {gen}")
            pages = self._launch_check(step, items)
            arrays = self._kargs(step, items, npad)  # pure; may refuse (K_LIM) before any change
            # Check the generated arrays against the pre-launch state so failure leaves it unchanged.
            self._kargs_post(step, items, npad, rows, arrays)
            self._launch_apply(step, items, pages)
            self._after()
            return arrays

    def _kargs(self, step: int, items: List[Tuple[int, int, int]], npad: int):
        if _np is None:
            return self._kargs_py(step, items, npad)
        np, ps = _np, self.page_size
        ip, qo = [0], [0]
        for _g, rd, wr in items:
            ip.append(ip[-1] + wr)
            qo.append(qo[-1] + wr - rd)
        nb = len(items)
        ip.extend(range(ip[-1] + 1, ip[-1] + npad + 1))
        qo.extend(range(qo[-1] + 1, qo[-1] + npad + 1))
        dummy = self.num_pages * ps
        if max(ip[-1], qo[-1], dummy) > K_LIM:
            self._fail(f"k_launch step {step}: slots / writes exceed {K_LIM}")
        indb, olb = bytearray(4 * ip[-1]), bytearray(4 * qo[-1])
        ind, ol = np.frombuffer(indb, dtype="<i4"), np.frombuffer(olb, dtype="<i4")
        offsets = np.arange(ps, dtype=np.int64) if ps != 1 else None
        for j, (gen, rd, wr) in enumerate(items):
            pg = np.frombuffer(self.reqs[gen].pages, dtype=np.int64, count=div_ceil(wr, ps))
            row = pg if ps == 1 else (pg[:, None] * ps + offsets).reshape(-1)[:wr]
            ind[ip[j]:ip[j + 1]] = row
            ol[qo[j]:qo[j + 1]] = row[rd:wr]
        ind[ip[nb]:], ol[qo[nb]:] = dummy, dummy
        return (bytearray(np.asarray(ip, dtype="<i4").tobytes()),
                bytearray(np.asarray(qo, dtype="<i4").tobytes()), indb, olb,
                bytearray(np.ones(nb + npad, dtype="<i4").tobytes()))

    def _kargs_py(self, step: int, items: List[Tuple[int, int, int]], npad: int):
        ps = self.page_size
        ip, qo, ind, ol = [0], [0], array.array("i"), array.array("i")
        for gen, rd, wr in items:
            pg = self.reqs[gen].pages
            if ps == 1:
                row = pg[:wr]
            else:
                row = [p * ps + o for p in pg[:div_ceil(wr, ps)] for o in range(ps)][:wr]
            if row and max(row) > K_LIM:
                self._fail(f"k_launch step {step} gen {gen}: slot {max(row)} > {K_LIM}")
            ind.extend(row)
            ol.extend(row[rd:wr])
            ip.append(ip[-1] + wr)
            qo.append(qo[-1] + wr - rd)
        dummy = self.num_pages * ps
        for _ in range(npad):
            ind.append(dummy)
            ol.append(dummy)
            ip.append(ip[-1] + 1)
            qo.append(qo[-1] + 1)
        if ip[-1] > K_LIM or qo[-1] > K_LIM or dummy > K_LIM:
            self._fail(f"k_launch step {step}: {ip[-1]} slots / {qo[-1]} writes exceed {K_LIM}")
        out = []
        for a in (array.array("i", ip), array.array("i", qo), ind, ol,
                  array.array("i", [1] * (len(items) + npad))):
            if sys.byteorder != "little":
                a.byteswap()
            out.append(bytearray(a.tobytes()))
        return tuple(out)

    def _kargs_post(self, step: int, items: List[Tuple[int, int, int]], npad: int,
                    rows: List[int] | None, arrays) -> None:
        """Validate generated arguments independently before applying the launch.

        _kargs reads request page lists. These checks instead use page state,
        owner, and index arrays, plus table-row bindings when supplied, so a
        bad argument builder cannot validate its own output.

        ArrayShapes and TokenOffsets check every array length and row range.
        GenerationVisibility requires a live owner, visible incoming KV, and
        reads covered by completed or earlier stream-ordered writes.
        ReadOwnership and WriteOwnership check each slot's owner, page index,
        and offset. PaddingIsolation confines padding to the dummy slot.
        Shared-prefix reads are checked separately; writes require PRIVATE pages.

        A failure names the postcondition in LedgerViolation and changes no state."""
        ps = self.page_size
        nb, nr = len(items), len(items) + npad
        def bad(what: str) -> None:
            self._fail(f"k_launch step {step}: postcondition {what}")

        if len(arrays) != 5:
            bad("ArrayShapes: expected five arrays")
        ipb, qob, indb, olb, lplb = arrays
        if len(ipb) != 4 * (nr + 1) or len(qob) != 4 * (nr + 1) or len(lplb) != 4 * nr:
            bad(f"ArrayShapes: {len(ipb) // 4} indptr / {len(qob) // 4} qo_indptr / {len(lplb) // 4} "
                f"last_page_len entries for {nb} rows + {npad} padding rows")
        ip, qo, lpl = _le_i32(ipb), _le_i32(qob), _le_i32(lplb)
        if len(indb) != 4 * ip[-1] or len(olb) != 4 * qo[-1]:
            bad(f"ArrayShapes: {len(indb) // 4} indices / {len(olb) // 4} out_loc for indptr[-1] "
                f"{ip[-1]} / qo_indptr[-1] {qo[-1]}")
        if ip[0] != 0 or qo[0] != 0:
            bad(f"TokenOffsets: indptr[0] {ip[0]}, qo_indptr[0] {qo[0]}")
        if lpl.count(1) != nr:
            bad("TokenOffsets: last_page_len is not all 1")
        owners: List[int] = []
        for j, (gen, rd, wr) in enumerate(items):
            if ip[j + 1] - ip[j] != wr or qo[j + 1] - qo[j] != wr - rd:
                bad(f"TokenOffsets: row {j} (gen {gen}) reads {ip[j + 1] - ip[j]} / writes "
                    f"{qo[j + 1] - qo[j]} tokens, the item says {wr} / {wr - rd}")
            own = gen if rows is None else self.gen_of_row.get(rows[j], 0)
            r = self.reqs.get(own)
            if own != gen or r is None or r.state != R_LIVE:
                bad(f"GenerationVisibility: row {j}: table row {None if rows is None else rows[j]} is bound to "
                    f"gen {own} ({None if r is None else r.state}), the item is gen {gen}")
            if r.xid:
                x = self.xfers.get(r.xid)
                if x is None or x.state != X_VISIBLE:
                    bad(f"GenerationVisibility: row {j} gen {own}: incoming transfer {r.xid} in state "
                        f"{None if x is None else x.state}, not visible")
            elif self._role == "D":
                bad(f"GenerationVisibility: row {j} gen {own}: no incoming transfer on D")
            if not (0 <= rd <= wr <= len(r.pages) * ps) or rd > max(r.written, r.launched):
                bad(f"GenerationVisibility: row {j} gen {own}: reads [0, {wr}) with tokens [0, "
                    f"{max(r.written, r.launched)}) in place and {len(r.pages)} pages")
            owners.append(own)
        for j in range(nb, nr):
            if ip[j + 1] - ip[j] != 1 or qo[j + 1] - qo[j] != 1:
                bad(f"TokenOffsets: padding row {j} reads {ip[j + 1] - ip[j]} / writes "
                    f"{qo[j + 1] - qo[j]} slots, not 1 / 1")
        check = self._slots_np if _np is not None else self._slots_py
        for name, buf, ptr, tok0 in (("ReadOwnership: read", indb, ip, [0] * nb),
                                     ("WriteOwnership: write", olb, qo, [it[1] for it in items])):
            if name == "ReadOwnership: read" and self.rshared and any(g in self.rshared for g in owners):
                hit = self._slots_shared(buf, ptr, nb, tok0, owners)
            else:
                hit = check(buf, ptr, nb, tok0, owners)
            if hit is not None:
                pos, s = hit
                j = max(k for k in range(nb) if ptr[k] <= pos)
                t = tok0[j] + pos - ptr[j]
                p = s // ps if s >= 0 else -1
                have = ((self.pst[p], self.pown[p], self.pix[p]) if 0 <= p < self.num_pages
                        else "outside the pool")
                bad(f"{name} slot {s} of row {j} token {t} (page {p}: state / owner / index "
                    f"{have}), want token {t} of gen {owners[j]}: page index {t // ps}, "
                    f"offset {t % ps}")
        dummy = self.num_pages * ps
        for name, buf, ptr in (("read", indb, ip), ("write", olb, qo)):
            pad = _le_i32(buf[4 * ptr[nb]:]) if npad else []
            if pad and pad.count(dummy) != len(pad):
                bad(f"PaddingIsolation: a padding row {name}s slot "
                    f"{next(s for s in pad if s != dummy)}, not the dummy slot {dummy}")

    # PdCore KEnt / SharedImmutable / HitIdentity.
    # PrefixSharing reads accept held Shared only at logical page zero. Writes still use WriteOwnership's
    # independent PRIVATE owner/index check. KernelReadPins keeps the original vectorized path.
    def _slots_shared(self, buf, ptr, nb, tok0, owners):
        slots, ps = _le_i32(buf[:4 * ptr[nb]]), self.page_size
        for j, gen in enumerate(owners):
            for pos in range(ptr[j], ptr[j + 1]):
                slot, tok = slots[pos], tok0[j] + pos - ptr[j]
                p = slot // ps
                if not (0 <= slot and p < self.num_pages and slot % ps == tok % ps):
                    return pos, slot
                private = self.pst[p] == PRIVATE and self.pown[p] == gen and self.pix[p] == tok // ps
                shared = (tok < ps and self.rshared.get(gen) == p and self.pst[p] == SHARED
                          and self.skey.get(p) == self.reqs[gen].prefix_key
                          and ("req", gen) in self.holders.get(p, ()))
                if not (private or shared):
                    return pos, slot
        return None

    def _slots_np(self, buf, ptr, nb: int, tok0: List[int], owners: List[int]):
        """ReadOwnership / WriteOwnership on numpy views (no copy of pst / pown / pix): the first (position, slot)
        of rows 0 .. nb - 1 of ``buf`` that is not token tok0[j] + t of owners[j], or None."""
        np, ps = _np, self.page_size
        n_all = ptr[nb]
        if n_all == 0:
            return None
        s = np.frombuffer(buf, dtype="<i4", count=n_all)
        # Bounds first: never let negative indexing turn a bad slot into a valid page.
        if s.min() < 0 or s.max() >= self.num_pages * ps:
            ok = (s >= 0) & (s < self.num_pages * ps)
            pos = int(np.argmin(ok))
            return pos, int(s[pos])
        pst = np.frombuffer(self.pst, dtype=np.int8)
        pown = np.frombuffer(self.pown, dtype=np.int64)
        pix = np.frombuffer(self.pix, dtype=np.int64)
        counts = [ptr[j + 1] - ptr[j] for j in range(nb)]
        if (ps > 1 and len(set(counts)) == 1 and counts[0] >= ps
                and len({t % ps for t in tok0}) == 1):
            if self._slots_paged_np(s.reshape(nb, counts[0]), tok0, owners, pst, pown, pix):
                return None
            # Error path only: preserve the exact first-slot diagnostic of the scalar oracle.
            return self._slots_py(buf, ptr, nb, tok0, owners)
        s = s.astype(np.intp)
        # Equal-length decode batches use broadcasting: no O(tokens) owner/token repeats.
        if len(set(counts)) == 1:
            ss = s.reshape(nb, counts[0])
            t = np.arange(counts[0], dtype=np.int64)[None, :] + np.asarray(tok0)[:, None]
            pg = ss if ps == 1 else ss // ps
            ok = (pst[pg] == PRIVATE) & (pown[pg] == np.asarray(owners)[:, None])
            ok &= pix[pg] == (t if ps == 1 else t // ps)
            if ps != 1:
                ok &= ss % ps == t % ps
            if ok.all():
                return None
            pos = int(np.argmin(ok))
            return pos, int(s[pos])
        for j in range(nb):
            ss = s[ptr[j]:ptr[j + 1]]
            pg = ss if ps == 1 else ss // ps
            t = np.arange(tok0[j], tok0[j] + counts[j], dtype=np.int64)
            ok = (pst[pg] == PRIVATE) & (pown[pg] == owners[j])
            ok &= pix[pg] == (t if ps == 1 else t // ps)
            if ps != 1:
                ok &= ss % ps == t % ps
            if not ok.all():
                pos = ptr[j] + int(np.argmin(ok))
                return pos, int(s[pos])
        return None

    def _slots_paged_np(self, ss, tok0, owners, pst, pown, pix) -> bool:
        """Continuity makes every slot belong to its checked page anchor.

        Check every slot, including partial head and tail pages. Validating the
        anchor alone would miss a bad slot inside an otherwise valid page."""
        np, ps = _np, self.page_size
        nb, count = ss.shape
        start = tok0[0] % ps
        head = min(count, ps - start) if start else 0
        body = (count - head) // ps * ps
        spans = ((0, head, head), (head, head + body, ps),
                 (head + body, count, count - head - body))
        own = np.asarray(owners)[:, None]
        token = np.asarray(tok0)[:, None]
        for lo, hi, width in spans:
            if lo == hi:
                continue
            block = ss[:, lo:hi].reshape(nb, -1, width)
            anchor = block[:, :, 0].astype(np.intp)
            t = token + lo + np.arange(block.shape[1], dtype=np.int64)[None, :] * ps
            pg = anchor // ps
            if not ((pst[pg] == PRIVATE) & (pown[pg] == own)
                    & (pix[pg] == t // ps) & (anchor % ps == t % ps)).all():
                return False
            # int32 differences cannot overflow: bounds were checked, all slots in [0,K_LIM].
            if not ((block - block[:, :, :1]) == np.arange(width, dtype=np.int32)).all():
                return False
        return True

    def _slots_py(self, buf, ptr, nb: int, tok0: List[int], owners: List[int]):
        """``_slots_np`` without numpy (same checks, a Python loop)."""
        ps, n = self.page_size, self.num_pages
        s_all = _le_i32(buf[: 4 * ptr[nb]])
        for j in range(nb):
            for pos in range(ptr[j], ptr[j + 1]):
                s, t = s_all[pos], tok0[j] + pos - ptr[j]
                p = s // ps
                if not (0 <= s and p < n and self.pst[p] == PRIVATE and self.pown[p] == owners[j]
                        and self.pix[p] == t // ps and s % ps == t % ps):
                    return pos, s
        return None

    # PdCore KDone; P final prefill also PPoll.
    def step_done(self, step: int) -> None:
        """Record KDone only after the step's copy-done event has synchronized."""
        self.complete(step)

    # PdCore KDone; P final prefill also PPoll.
    def complete(self, step: int) -> None:
        """Local GPU step ``step`` finished (its event was synchronized).  Steps complete in
        order.  Pages whose last in-flight access was this step and whose owner released them
        go back to FREE."""
        with self._lock:
            if step != self.done + 1 or step > self.step:
                self._fail(f"complete step {step}, done={self.done} launched={self.step}")
            items, pages = self.steps.pop(step)
            for gen, _rd, wr in items:
                r = self.reqs.get(gen)
                if r is not None:
                    r.written = max(r.written, wr)
            self.done = step  # ordered completion: all pins <= done have stopped
            # PdCore KDone / SFollow. A remapped DUP may be absent
            # from every current request map; reclaim it via the physical pin snapshot.
            for _gen, p in self.prefix_steps.pop(step, ()):
                if self.pst[p] == DUP:
                    self._try_free(p)
            for gen, _rd, _wr in items:
                r = self.reqs.get(gen)
                if r is not None and r.state == R_RELEASED and r.rls <= self.done:
                    for p in r.pages:
                        if self.pown[p] == gen:
                            self._try_free(p)
                    if gen in self.rshared:
                        self._release_shared(gen)
                    self._gc_req(gen)
            self._after()

    # PdCore DRecvReq (expose half).
    def d_expect(self, gen: int, peer: int, ntokens: int) -> int:
        """Expose the first ceil(ntokens / page_size) pages of ``gen`` to P instance ``peer``
        for RDMA WRITE.  From now on the pages count as written-to by a remote writer until
        landed / stopped evidence arrives.  Returns the new xid (> 0)."""
        with self._lock:
            self._refuse_on("P", "d_expect")
            r = self._req(gen)
            if peer not in self.peers:
                self._fail(f"d_expect to unregistered peer {peer}")
            if r.xid:
                self._fail(f"gen {gen} already has xfer {r.xid}")
            if r.launched or r.written:
                self._fail(f"gen {gen} already written locally")
            npages = div_ceil(ntokens, self.page_size)
            if ntokens <= 0 or npages > len(r.pages):
                self._fail(f"d_expect: {ntokens} tokens need {npages} pages, gen has "
                           f"{len(r.pages)}")
            if self._role == "D" and npages != len(r.pages):  # D exposes every page (decode allocation window)
                self._refuse("d_expect", f"{ntokens} tokens expose {npages} of gen {gen}'s "
                                         f"{len(r.pages)} pages")
            pages = r.pages[:npages]
            self._page_sequence(gen, pages, shared=False)
            xid = self.next_xid
            self.next_xid += 1
            self.xfers[xid] = _Xfer(gen, r.room, peer, list(pages), ntokens)
            for p in pages:
                self.pops[p].add((1, xid))
            r.xid = xid
            self._after()
            return xid

    # Validate logical destination order from independent owner and page-index metadata.
    def _page_sequence(self, gen: int, pages, *, shared: bool) -> None:
        if len(set(pages)) != len(pages):
            self._fail("TransferPages: duplicate page")
        for i, p in enumerate(pages):
            if not 0 <= p < self.num_pages:
                self._fail("TransferPages: page outside pool")
            if shared and i == 0 and self.rshared.get(gen) == p:
                self._shared_page(p, self.reqs[gen].prefix_key)
            elif self.pst[p] != PRIVATE or self.pown[p] != gen or self.pix[p] != i:
                self._fail("TransferPages: wrong owner, state or logical page order")

    # PdCore DRecvReq (exposure observation); ordered destination
    # descriptor is an implementation obligation beyond the model's aggregate xdst.
    def d_descriptor(self, xid: int) -> tuple:
        """Immutable (instance, room, gen, xid, ntokens, layout, ordered pages).
        The PrefixSharing caller must deliver this D-created descriptor intact to p_post. It is
        consistency metadata, not cryptographic authentication of an untrusted peer."""
        with self._lock:
            self._refuse_on("P", "d_descriptor")
            x = self.xfers.get(xid)
            if x is None or x.state != X_POSTED:
                self._fail("d_descriptor requires an exposed transfer")
            self._page_sequence(x.gen, x.pages, shared=False)
            if list(x.pages) != list(self.reqs[x.gen].pages):
                self._fail("TransferPages: D descriptor must expose the complete ordered row")
            return (self.instance, x.room, x.gen, xid, x.ntokens, tuple(self.layout), tuple(x.pages))

    # PdCore DRecvNotice / DRecvNopost identity guards.
    def _check_msg(self, peer: int, room: int, gen: int, xid: int) -> Tuple[int, _Xfer | None]:
        x = self.xfers.get(xid)
        if x is None:
            return DROP_UNKNOWN, None
        if x.peer != peer or x.room != room or x.gen != gen:
            return DROP_MISMATCH, None
        return OK, x

    # PdCore DRecvNotice / DRecvNopost (stop evidence).
    def _stop_xfer(self, xid: int, x: _Xfer, state: int) -> None:
        x.state = state
        for p in self._remove_op((1, xid), x.pages):
            self._try_free(p)
        self._gc_req(x.gen)

    # PdCore DRecvNotice (not ok) / DTimeout / DrainTimeout.
    def _quarantine_xfer(self, xid: int, x: _Xfer, reason: int) -> None:
        x.state = X_QUARANTINED
        self.counters["xfers_quarantined"] += 1
        for p in x.pages:
            if self.pown[p] == x.gen and self.pst[p] in (PRIVATE, DRAINING):
                self._quarantine(p, reason, x.peer)
        self._remove_op((1, xid), x.pages)
        r = self.reqs.get(x.gen)
        if r is not None and r.state == R_LIVE:
            r.state = R_FAILED  # the glue must fail and release this request

    # PdCore DRecvNotice (ok) / DBadLen.
    def d_landed(self, peer: int, room: int, gen: int, xid: int, ntokens: int) -> int:
        """P's notice: all RDMA writes of ``xid`` completed locally at P (sent only after the
        engine returned success).  This is the stopped evidence for the transfer.  If the owner
        already released the pages they go back to FREE; if the token count is wrong the
        transfer is stopped but its data is unusable (BAD_LEN; the glue fails the request)."""
        with self._lock:
            self._refuse_on("P", "d_landed")
            code, x = self._check_msg(peer, room, gen, xid)
            if x is None:
                return code + self._drop()
            if x.state != X_POSTED:
                return DROP_STATE + self._drop()
            r = self.reqs.get(gen)
            if ntokens != x.ntokens:
                self._stop_xfer(xid, x, X_STOPPED)
                self.counters["xfers_stopped"] += 1
                if r is not None and r.state == R_LIVE:
                    r.state = R_FAILED
                self._after()
                return BAD_LEN
            self.counters["xfers_landed"] += 1
            if r is not None and r.state == R_LIVE:
                x.state = X_LANDED
                r.written = max(r.written, ntokens)
                self._remove_op((1, xid), x.pages)  # pages stay PRIVATE(gen)
            else:
                self._stop_xfer(xid, x, X_STOPPED)
            self._after()
            return OK

    # PdCore DLanded (DStartRun flush precondition).
    def d_mark_visible(self, xid: int) -> None:
        """The glue made the landed writes visible to the GPU (the D glue calls
        cudaDeviceFlushGPUDirectRDMAWrites before d_landed, on by default); the consumer may
        now read the pages (``launch`` checks this)."""
        with self._lock:
            self._refuse_on("P", "d_mark_visible")
            x = self.xfers.get(xid)
            if x is None or x.state != X_LANDED:
                self._fail(f"d_mark_visible({xid}) in state {None if x is None else x.state}")
            x.state = X_VISIBLE
            self._after()

    # PdCore DRecvNopost / DXferFailed.
    def d_stopped(self, peer: int, room: int, gen: int, xid: int) -> int:
        """P certifies that no write of ``xid`` will happen or continue (its entry was never
        handed to the engine, or every engine call for it returned success).  The transfer's
        data is not usable; the pages may go back to FREE once the owner releases them."""
        with self._lock:
            self._refuse_on("P", "d_stopped")
            code, x = self._check_msg(peer, room, gen, xid)
            if x is None:
                return code + self._drop()
            if x.state != X_POSTED:
                return DROP_STATE + self._drop()
            self.counters["xfers_stopped"] += 1
            r = self.reqs.get(gen)
            if r is not None and r.state == R_LIVE:
                r.state = R_FAILED
            self._stop_xfer(xid, x, X_STOPPED)
            self._after()
            return OK

    # PdCore DRecvNotice (not ok) / DTimeout / DrainTimeout.
    def d_unstopped(self, xid: int, reason: int) -> int:
        """No stopped evidence can be obtained (timeout, P reported a failed write, abort not
        acknowledged): the exposed pages become QUARANTINED for the process lifetime."""
        with self._lock:
            self._refuse_on("P", "d_unstopped")
            x = self.xfers.get(xid)
            if x is None:
                if 0 < xid < self.next_xid:
                    return DROP_STATE  # already resolved and collected
                self._fail(f"d_unstopped of never-issued xid {xid}")
            if reason not in Q_REASON_NAMES:
                self._fail(f"bad quarantine reason {reason}")
            if x.state != X_POSTED:
                return DROP_STATE
            self._quarantine_xfer(xid, x, reason)
            self._gc_req(x.gen)
            self._after()
            return OK

    # PdCore observation of incoming transfer (no action).
    def d_xfer(self, xid: int) -> Tuple[int, int, int, int, int]:
        """(state, gen, room, peer, ntokens) of a D-side transfer; state 0 if unknown."""
        with self._lock:
            x = self.xfers.get(xid)
            if x is None:
                return (0, 0, 0, 0, 0)
            return (x.state, x.gen, x.room, x.peer, x.ntokens)

    # PdCore PPost (PReg).
    def p_post(self, gen: int, ntokens: int, peer: int, peer_room: int, peer_gen: int,
               peer_xid: int, dst_pages: List[int], *, dst_descriptor: tuple | None = None) -> int:
        """Register an outgoing transfer of the first ntokens tokens of local request ``gen``
        into ``dst_pages`` of D instance ``peer``.  The source pages are held (they cannot
        become FREE) until ``p_done``.  Returns eid > 0, or a negative REJ_* code (then nothing
        was registered and the glue reports a stopped failure to D)."""
        with self._lock:
            self._refuse_on("D", "p_post")
            key = (peer, peer_xid)
            if not (isinstance(peer_xid, int) and 0 <= peer_xid < XID_LIM):
                return REJ_DUP  # peer transfer identity range: same as the Rust core (D's xids are u64)
            if key in self.used_peer_xids:
                return REJ_DUP
            if peer in self.lost_peers or peer not in self.peers:
                return REJ_PEER
            r = self.reqs.get(gen)
            if r is None or r.state != R_LIVE:
                return REJ_SRC
            npages = div_ceil(ntokens, self.page_size)
            # the source KV must be in place: written by completed local steps only
            if ntokens <= 0 or ntokens > r.written or npages > len(r.pages):
                return REJ_SRC
            if r.rls > self.done and r.rlp > 0:
                return REJ_SRC
            peer_layout = self.peers[peer]
            # PdCore PPost / SFollow: insert BEFORE post.
            if r.prefix_key is not None and gen not in self.rshared:
                return REJ_SRC
            # Prefix sharing requires the D-created descriptor to validate exposure independently.
            # Callers without prefix sharing may supply it through the same API.
            if r.prefix_key is not None and dst_descriptor is None:
                return REJ_PAGES
            if dst_descriptor is not None and dst_descriptor != (
                    peer, peer_room, peer_gen, peer_xid, ntokens, tuple(peer_layout), tuple(dst_pages)):
                return REJ_PAGES
            if layout_key(peer_layout) != layout_key(self.layout):
                return REJ_LAYOUT
            if (len(dst_pages) != npages or len(set(dst_pages)) != npages
                    or any(not (0 <= d < peer_layout[5] - 1) for d in dst_pages)):
                # the last pool page is mini-sglang's dummy page; never a destination
                return REJ_PAGES
            src = r.pages[:npages]
            self._page_sequence(gen, src, shared=True)
            eid = self.next_eid
            self.next_eid += 1
            for p in src:
                self.pops[p].add((2, eid))
            self.entries[eid] = _Entry(gen, peer, peer_room, peer_gen, peer_xid, tuple(src),
                                       tuple(dst_pages), ntokens)
            self.entry_by_key[key] = eid
            self.entries[eid].dst_layout = list(peer_layout)
            self.used_peer_xids.add(key)
            r.posted = True
            e = self.entries[eid]
            e.shared = tuple((p, self.skey[p]) for p in src if self.pst[p] == SHARED)
            for p, _ in e.shared:
                self._ref(p, ("entry", eid))
                self._shared_check(p)
            self._after()
            return eid

    # PdCore PExpose + SFollow (PullSourceHeld): publication and protection
    # are one operation. No pull transport is enabled by this source-side primitive.
    def p_expose(self, gen: int, ntokens: int, peer: int, peer_room: int, peer_gen: int,
                 peer_xid: int, dst_pages: List[int], *, dst_descriptor: tuple) -> tuple:
        """Return (eid, immutable source descriptor), or (REJ_*, None).

        Reuses the fully checked push registration (including D's ordered descriptor).
        E_SUBMITTED here means externally exposed: even before the peer starts READ,
        local cancel/peer-loss cannot revoke this descriptor or drop any source hold.
        The caller may call p_done only on trusted ReleaseSource/stopped evidence;
        an unproved failure must use ok=False, retaining permanent quarantine.
        """
        with self._lock:
            eid = self.p_post(gen, ntokens, peer, peer_room, peer_gen, peer_xid, dst_pages,
                              dst_descriptor=dst_descriptor)
            if eid < 0:
                return eid, None
            e = self.entries[eid]
            # Still under the same lock: no caller can observe an unprotected descriptor
            # or cancel the intermediate POSTED registration.
            e.state = E_SUBMITTED
            descriptor = (self.instance, peer_room, gen, eid, ntokens, tuple(self.layout), e.src)
            self._after()
            return eid, descriptor

    # PdCore PPost (address plan observation, no standalone action).
    def p_plan(self, eid: int) -> Tuple[List[int], List[int], List[int]]:
        """Address triples (src, dst, length) for the engine call; computed here, never by the
        glue."""
        with self._lock:
            e = self.entries.get(eid)
            if e is None or e.state not in (E_SUBMITTED, E_ABORT_REQ):
                self._fail(f"p_plan({eid}) for an entry that is not submitted")
            for p, _ in e.shared:
                self._shared_check(p)
            return plan_copy(self.layout, e.src, e.dst_layout, e.dst)

    # PdCore PSubmit / PCancelReg.
    def p_begin(self, eid: int) -> bool:
        """Claim a registered entry immediately before calling the transfer engine.

        False means cancellation won the race; the caller must not submit it."""
        with self._lock:
            self._refuse_on("D", "p_begin")
            e = self.entries.get(eid)
            if e is None:
                if 0 < eid < self.next_eid:
                    return False  # cancelled and collected
                self._fail(f"p_begin of never-issued eid {eid}")
            if e.state != E_POSTED:
                return False
            if e.peer not in self.peers:
                self._finish_entry(eid, e, E_CANCELLED)
                self._after()
                return False
            for p, _ in e.shared:
                self._shared_check(p)
            e.state = E_SUBMITTED
            self._after()
            return True

    # PdCore PCancelReg; PEnd cancels reg before ending the record.
    def p_cancel(self, eid: int) -> bool:
        """Cancel only a never-submitted entry. True is stopped evidence; False changes
        nothing (including SUBMITTED / ABORT_REQ / FAILED and already-collected entries).
        The lock serializes this decision with p_begin: a running write is never cancelled."""
        with self._lock:
            self._refuse_on("D", "p_cancel")
            e = self.entries.get(eid)
            if e is None or e.state != E_POSTED:
                return False
            self._finish_entry(eid, e, E_CANCELLED)
            self._after()
            return True

    # PdCore PSentDone / PSentFail / PCancelReg / PDrainLibFail.
    def _finish_entry(self, eid: int, e: _Entry, state: int) -> None:
        for p, _ in e.shared:
            self._shared_check(p)
        e.state = state
        # SFollow retains a shared-page reference permanently after an unproved failure.
        # Successful completion or cancellation before submission releases it once.
        for p, _ in e.shared:
            if state == E_FAILED:
                self.shared_quarantine.add((eid, p))
                self._ref(p, ("quar", eid))
            self._unref(p, ("entry", eid))
        key = {E_DONE: "entries_done", E_FAILED: "entries_failed",
               E_CANCELLED: "entries_cancelled"}[state]
        self.counters[key] += 1
        if state == E_FAILED:
            # kept forever: a later abort for it must never be acknowledged
            for p in e.src:
                if self.pown[p] == e.gen and self.pst[p] in (PRIVATE, DRAINING):
                    self._quarantine(p, Q_TRANSFER_FAILED, e.peer)
            self._remove_op((2, eid), e.src)
            r = self.reqs.get(e.gen)
            if r is not None and r.state == R_LIVE:
                r.state = R_FAILED
        else:
            for p in self._remove_op((2, eid), e.src):
                self._try_free(p)
            del self.entries[eid]  # (peer, peer_xid) stays in used_peer_xids: later abort ACKs
            self.entry_by_key.pop((e.peer, e.peer_xid), None)
        for p, _ in e.shared:
            self._shared_check(p)
        self._gc_req(e.gen)

    # PdCore Cqe + PSentDone / LibFailRet + PSentFail / PDrainLibFail.
    def p_done(self, eid: int, ok: bool) -> int:
        """The engine call returned.  ok=True: local completion, source pages may be reused
        (SEND_DONE, or SEND_ACK if D aborted meanwhile).  ok=False: the writes may still land
        or be retried (H-fail / H-retry): source pages are QUARANTINED and D gets an
        unstopped failure (SEND_FAIL_UNSTOPPED)."""
        with self._lock:
            self._refuse_on("D", "p_done")
            e = self.entries.get(eid)
            if e is None or e.state not in (E_SUBMITTED, E_ABORT_REQ):
                self._fail(f"p_done({eid}) for an entry that is not submitted")
            aborted = e.state == E_ABORT_REQ
            if ok:
                self._finish_entry(eid, e, E_DONE)
                res = SEND_ACK if aborted else SEND_DONE
            else:
                self._finish_entry(eid, e, E_FAILED)
                res = SEND_FAIL_UNSTOPPED
            self._after()
            return res

    # PdCore PCancelReg / PNoPost / PAbort.
    def p_abort(self, peer: int, peer_xid: int) -> int:
        """D aborted its transfer ``peer_xid``.  SEND_ACK: certified stopped now (never started,
        or already done); SEND_NOTHING: an engine call is running, the ACK follows from
        ``p_done``; SEND_FAIL_UNSTOPPED: the transfer failed, no ACK is possible."""
        with self._lock:
            self._refuse_on("D", "p_abort")
            key = (peer, peer_xid)
            if not (isinstance(peer_xid, int) and 0 <= peer_xid < XID_LIM):
                # peer transfer identity range (as the Rust core): such an xid can never have been posted, so no write
                # can be in flight; certified stopped, and no tombstone (it could match nothing)
                self._after()
                return SEND_ACK
            eid = self.entry_by_key.get(key, 0)
            if not eid:
                # never posted (tombstone: a later p_post for it is refused) or finished with
                # stopped evidence (done / cancelled entries are collected)
                self.used_peer_xids.add(key)
                self._after()
                return SEND_ACK
            e = self.entries[eid]
            if e.state == E_POSTED:
                self._finish_entry(eid, e, E_CANCELLED)
                res = SEND_ACK
            elif e.state == E_SUBMITTED:
                e.state = E_ABORT_REQ
                res = SEND_NOTHING
            elif e.state in (E_DONE, E_CANCELLED):
                res = SEND_ACK
            elif e.state == E_FAILED:
                res = SEND_FAIL_UNSTOPPED
            else:  # E_ABORT_REQ: duplicate abort
                res = SEND_NOTHING
            self._after()
            return res

    # PdCore observation of outgoing entry (no action).
    def p_entry(self, eid: int) -> Tuple[int, int, int, int, int]:
        """(state, peer, peer_room, peer_gen, peer_xid) of a P-side entry; state 0 if unknown."""
        with self._lock:
            e = self.entries.get(eid)
            if e is None:
                return (0, 0, 0, 0, 0)
            return (e.state, e.peer, e.peer_room, e.peer_gen, e.peer_xid)

    # PdCore Conservation observation (no action).
    def free_pages(self) -> int:
        with self._lock:
            return len(self.free)

    # PdCore Conservation observation (no action).
    def stats(self) -> Dict[str, int]:
        with self._lock:
            out = {name: 0 for name in PAGE_STATE_NAMES.values()}
            for s in self.pst:
                out[PAGE_STATE_NAMES[s]] += 1
            out.update(self.counters)
            out["shared_quarantined"] = len({p for _, p in self.shared_quarantine})
            out["live_reqs"] = sum(1 for r in self.reqs.values() if r.state == R_LIVE)
            out["inflight_steps"] = self.step - self.done
            out["xfers_posted_open"] = sum(1 for x in self.xfers.values() if x.state == X_POSTED)
            out["entries_open"] = sum(1 for e in self.entries.values()
                                      if e.state in (E_POSTED, E_SUBMITTED, E_ABORT_REQ))
            return out

    # PdCore Safety / implementation invariant scan (no action).
    def check(self) -> None:
        with self._lock:
            self._check()

    def _check(self) -> None:
        """Check ownership, free-list accounting, and in-flight holds; fail on any violation."""
        n = self.num_pages
        free_set = set(self.free)
        if len(free_set) != len(self.free):
            self._fail("free list has duplicates")
        live_ops: Set[Tuple[int, int]] = set()
        for k in self.steps:
            if not (self.done < k <= self.step):
                self._fail(f"step record {k} outside ({self.done}, {self.step}]")
            live_ops.add((0, k))
        if len(self.steps) != self.step - self.done:
            self._fail("missing in-flight step records")
        for xid, x in self.xfers.items():
            if xid >= self.next_xid:
                self._fail(f"xid {xid} >= next {self.next_xid}")
            if x.state == X_POSTED:
                live_ops.add((1, xid))
        for eid, e in self.entries.items():
            if eid >= self.next_eid:
                self._fail(f"eid {eid} >= next {self.next_eid}")
            if e.state in (E_POSTED, E_SUBMITTED, E_ABORT_REQ):
                live_ops.add((2, eid))
        for gen in self.reqs:
            if gen >= self.next_gen:
                self._fail(f"gen {gen} >= next {self.next_gen}")
        # Reconstruct the page-pin union from step snapshots; verify its compressed form.
        latest = {}
        for k, (items, counts) in self.steps.items():
            if len(items) != len(counts):
                self._fail("step snapshot shape")
            for (gen, _rd, _wr), count in zip(items, counts):
                r = self.reqs.get(gen)
                if r is None or count > len(r.pages) or r.rls < k or r.rlp < count:
                    self._fail("in-flight step lost its incarnation pin")
                latest[gen] = max(latest.get(gen, (0, 0)), (k, count))
                physical = list(r.pages[:count])
                if r.prefix_key is not None:
                    pins = dict(self.prefix_steps.get(k, ()))
                    if gen not in pins:
                        self._fail("in-flight step lost physical prefix snapshot")
                    physical[0] = pins[gen]
                for p in physical:
                    owner_ok = self.pown[p] == gen or (self.pst[p] == SHARED and ("req", gen) in self.holders[p])
                    if not owner_ok or not self._kpin(p):
                        self._fail("in-flight step lost its page pin")
        for gen, r in self.reqs.items():
            if r.rls > self.done and latest.get(gen) != (r.rls, r.rlp):
                self._fail("incarnation pin names no in-flight step")
        nq = 0
        owned: Dict[int, int] = {}
        for gen, r in self.reqs.items():
            for p in r.pages:
                if self.pown[p] == gen:
                    owned[p] = gen
        for p in range(n):
            s = self.pst[p]
            if s == FREE:
                if p not in free_set or self.pown[p] != 0 or self.pops[p] or self._kpin(p):
                    self._fail(f"FreePageUnowned/FreeListExact: FREE page {p} owned/busy/not in free list")
            else:
                if p in free_set:
                    self._fail(f"page {p} in state {s} is in the free list")
            if not self.pops[p] <= live_ops:
                self._fail(f"page {p} references finished ops {self.pops[p] - live_ops}")
            if s == PRIVATE:
                r = self.reqs.get(self.pown[p])
                if r is None or r.state not in (R_LIVE, R_FAILED) or owned.get(p) != self.pown[p]:
                    self._fail(f"PRIVATE page {p}: owner {self.pown[p]} not live")
            elif s == DRAINING:
                r = self.reqs.get(self.pown[p])
                if not self.pops[p] and not self._kpin(p):
                    self._fail(f"DRAINING page {p} with no in-flight access")
                if r is None or r.state != R_RELEASED:
                    self._fail(f"DRAINING page {p}: owner {self.pown[p]} not released")
            elif s == QUARANTINED:
                self._quar_no_reg(p)
                nq += 1
                if self.pqr[p] not in Q_REASON_NAMES:
                    self._fail(f"QUARANTINED page {p} without reason")
            elif s == SHARED:
                if self.pown[p] != 0 or p not in self.skey:
                    self._fail("Shared metadata/owner mismatch")
            elif s == DUP:
                if not self._kpin(p) or self.pops[p]:
                    self._fail("DUP must have a local read pin and no RDMA")
        if nq != self.q_total:
            self._fail(f"quarantine left: {nq} now, {self.q_total} ever (5.2 step-1 rule)")
        for (kind, oid) in live_ops:
            if kind == 1:
                x = self.xfers[oid]
                for p in x.pages:
                    if (1, oid) not in self.pops[p] and self.pst[p] != QUARANTINED:
                        self._fail(f"posted xfer {oid} lost its hold on page {p}")
            elif kind == 2:
                e = self.entries[oid]
                for p in e.src:
                    if (2, oid) not in self.pops[p]:
                        self._fail(f"open entry {oid} lost its hold on page {p}")
        for gen, r in self.reqs.items():
            if r.state in (R_LIVE, R_FAILED):
                for k, p in enumerate(r.pages):
                    if k == 0 and self.rshared.get(gen) == p:
                        self._shared_page(p, r.prefix_key)
                        continue
                    if self.pown[p] != gen or self.pst[p] not in (PRIVATE, QUARANTINED):
                        self._fail(f"live gen {gen} maps page {p} in state {self.pst[p]}")
                    if r.state == R_LIVE and self.pst[p] != PRIVATE:
                        self._fail(f"LIVE gen {gen} maps non-private page {p}")
                    if self.pix[p] != k:  # i_pix (launch postconditions; read by the k_launch postconditions)
                        self._fail(f"live gen {gen}: page {p} is entry {k}, pix says {self.pix[p]}")
            if r.xid and self.xfers[r.xid].gen != gen:
                self._fail(f"gen {gen} xid {r.xid} mismatch")
        for p in set(self.skey) | set(self.prefc) | set(self.holders):
            self._shared_check(p)
        for e in self.entries.values():
            for p, _ in e.shared:
                self._no_evict_under_rdma(p)
        # the row binding is one to one and only holds unreleased generations
        if len(self.gen_of_row) != len(self.row_of_gen):
            self._fail("row binding not one to one")
        for row, gen in self.gen_of_row.items():
            r = self.reqs.get(gen)
            if self.row_of_gen.get(gen) != row or r is None or r.state not in (R_LIVE, R_FAILED):
                self._fail(f"row {row} bound to gen {gen} ({None if r is None else r.state})")


# Python ledger implementation and compatibility aliases.
import os as _os

PyPdLedger = PyRefLedger = PdLedger
LEDGER_KIND = _os.environ.get("MINISGL_PD_LEDGER_IMPL", "") or "python"
if LEDGER_KIND != "python":
    raise ValueError(f"MINISGL_PD_LEDGER_IMPL={LEDGER_KIND!r}: expected 'python' (default)")
LedgerImpl = RefLedger = PdLedger


def ledger_impl() -> str:
    """For the server log: which ledger class this process constructs and the file it was loaded from."""
    return f"python {LedgerImpl.__module__}.{LedgerImpl.__name__} from {__file__}"
