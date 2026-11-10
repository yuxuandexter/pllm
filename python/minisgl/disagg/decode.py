"""Decode accepts KV only after transfer completion and GPU visibility.

The ledger owns destination allocation, exposure, and release. Every notice must
match the peer, room, generation, and transfer ID. A waiting timeout sends ABORT
and quarantines the pages immediately. An abort without an acknowledgement by
ack_timeout also quarantines them: elapsed time cannot prove a remote write has
stopped."""

from __future__ import annotations

import logging
import time
from dataclasses import dataclass, field
from typing import Callable, Dict, List, Tuple

from . import ledger as L
from . import messages as M
from . import trace as T
from .channel import CLOSED, Hub

logger = logging.getLogger(__name__)


@dataclass
class _DReq:
    uid: int
    room: int
    addr: Tuple[str, int]
    ntokens: int
    tok_hash: str
    t0: float
    gen: int = 0
    xid: int = 0
    peer: int = 0
    t_pub: float = 0.0
    first_token: int = -1
    extra_pages: int = 0  # decode pages this request will need after the transfer
    state: str = "queued"
    rid: str = ""  # client request id (router), for the identity log lines


@dataclass
class _Conn:
    addr: Tuple[str, int]
    cid: int = 0
    state: str = "connecting"
    inst: int = 0
    session: str = ""
    t0: float = 0.0
    last_pong: float = 0.0
    t_ping: float = 0.0
    seq: int = 0
    waiting: List[int] = field(default_factory=list)


class DecodePD:
    def __init__(self, ledger: L.Ledger, backend, layout: List[int], inst: int,
                 bootstrap_timeout: float = 300.0, waiting_timeout: float = 300.0,
                 ack_timeout: float = 30.0, hb_interval: float = 5.0, hb_timeout: float = 15.0,
                 flush_hook: Callable[[], None] | None = None,
                 checksum_fn: Callable[[List[int]], List[int]] | None = None,
                 checksum_fatal: bool = False) -> None:
        self.ledger = T.wrap(ledger, inst, "D")
        self.backend = backend
        self.layout = list(layout)
        self.inst = inst
        self.bootstrap_timeout = bootstrap_timeout
        self.waiting_timeout = waiting_timeout
        self.ack_timeout = ack_timeout
        self.hb_interval = hb_interval
        self.hb_timeout = hb_timeout
        self.flush_hook = flush_hook
        # Checksums compare visible destination bytes with the source before acceptance.
        self.checksum_fn = checksum_fn
        self.checksum_fatal = checksum_fatal
        self.ledger.event("role", flush=flush_hook is not None)
        self.hub = Hub()
        self.conns: Dict[Tuple[str, int], _Conn] = {}
        self.conn_of_cid: Dict[int, _Conn] = {}
        self.reqs: Dict[int, _DReq] = {}
        self.by_xid: Dict[int, _DReq] = {}
        self.active_rooms: Dict[int, int] = {}
        self.queue: List[int] = []  # uids waiting for capacity / handshake (FIFO)
        self.ready: List[Tuple[int, int, int]] = []
        self.failed: List[Tuple[int, str]] = []
        self.counters: Dict[str, int] = {"bad_msgs": 0, "dup_rooms": 0, "bad_rooms": 0,
                                         "dropped": 0,
                                         "waiting_timeouts": 0, "ack_timeouts": 0,
                                         "peers_lost": 0, "bad_len": 0, "flush_count": 0,
                                         "flush_ns_total": 0, "flush_ns_max": 0,
                                         "kv_checksum_ok": 0, "kv_checksum_mismatch": 0,
                                         "kv_checksum_missing": 0, "kv_checksum_ns_total": 0}

    def add_request(self, uid: int, room: int, host: str, port: int, ntokens: int,
                    tok_hash: str, max_new_tokens: int = 0, now: float | None = None,
                    rid: str = "") -> bool:
        now = time.monotonic() if now is None else now
        if not M.room_ok(room):
            # Reject untrusted rooms here so malformed router input cannot stop the ledger.
            self.counters["bad_rooms"] += 1
            logger.warning("PD decode drop inst=%#x rid=%s uid=%d room=%r: bootstrap_room outside "
                           "[0, 2^63)", self.inst, rid, uid, room)
            return False
        if room in self.active_rooms:
            self.counters["dup_rooms"] += 1
            return False
        r = _DReq(uid, room, (host, port), ntokens, tok_hash, now)
        r.rid = rid
        ps = self.layout[1]
        r.extra_pages = L.div_ceil(ntokens + max(0, max_new_tokens), ps) - L.div_ceil(ntokens, ps)
        self.reqs[uid] = r
        self.active_rooms[room] = uid
        self.queue.append(uid)
        c = self.conns.get(r.addr)
        if c is None or c.state == "dead":
            self._connect(r.addr, now)
        return True

    def poll(self, now: float | None = None, timeout: float = 0.0) -> None:
        now = time.monotonic() if now is None else now
        for cid, msg in self.hub.poll(timeout):
            self._handle(cid, msg, now)
        for c in list(self.conns.values()):
            if c.state == "connecting" and now - c.t0 > self.bootstrap_timeout:
                self._conn_dead(c, "bootstrap timeout")
            elif c.state == "ready":
                if now - c.last_pong > self.hb_timeout:
                    self._conn_dead(c, "heartbeat timeout")
                elif now - c.t_ping >= self.hb_interval:
                    c.t_ping = now
                    c.seq += 1
                    self.hub.send(c.cid, M.to_p(M.PING, seq=c.seq))
        for r in list(self.reqs.values()):
            if r.state == "waiting" and now - r.t_pub > self.waiting_timeout:
                self.counters["waiting_timeouts"] += 1
                self._send_abort(r)
                self.ledger.d_unstopped(r.xid, L.Q_TIMEOUT)
                self._qlog(r, "timeout")
                self._finish(r, "failed", "waiting timeout (pages quarantined)")
            elif r.state == "aborting" and now - r.t_pub > self.ack_timeout:
                self.counters["ack_timeouts"] += 1
                self.ledger.d_unstopped(r.xid, L.Q_CANCELLED)
                self._qlog(r, "cancelled")
                self._finish(r, "done")
            elif r.state == "queued" and now - r.t0 > self.bootstrap_timeout:
                self._finish(r, "failed", "bootstrap timeout")

    def try_prealloc(self, budget_pages: int, now: float | None = None) -> int:
        """Admit queued requests whose P is connected, in order, while ``budget_pages`` (pages
        the scheduler can spare beyond what running requests need) lasts.  Returns pages used."""
        now = time.monotonic() if now is None else now
        used = 0
        ps = self.layout[1]
        keep: List[int] = []
        for i, uid in enumerate(self.queue):
            r = self.reqs.get(uid)
            if r is None or r.state != "queued":
                continue
            c = self.conns.get(r.addr)
            if c is None or c.state != "ready":
                keep.append(uid)
                continue
            need = L.div_ceil(r.ntokens, ps)
            if used + need + r.extra_pages > budget_pages:
                keep.extend(u for u in self.queue[i:])
                break
            gen = self.ledger.open_req(r.room)
            self.ledger.bind(gen, rid=r.rid, room=r.room, uid=r.uid)
            pages = self.ledger.alloc(gen, need)
            if not pages:
                self.ledger.note("release", why="abort")  # no capacity: retried later
                self.ledger.release(gen)
                keep.extend(u for u in self.queue[i:])
                break
            used += need + r.extra_pages
            r.gen = gen
            r.peer = c.inst
            r.xid = self.ledger.d_expect(gen, c.inst, r.ntokens)  # exposed from here on
            self.by_xid[r.xid] = r
            r.state = "waiting"
            r.t_pub = now
            logger.info("PD decode publish inst=%#x rid=%s uid=%d room=%d h=%d xid=%d peer=%#x "
                        "npages=%d",
                        self.inst, r.rid, r.uid, r.room, gen, r.xid, c.inst, need)
            ok = self.hub.send(c.cid, M.to_p(M.XFER_REQ, room=r.room, gen=gen, xid=r.xid,
                                             ntokens=r.ntokens, tok_hash=r.tok_hash,
                                             pages=self.ledger.pages_of(gen)[:need],
                                             # Keep the D-created exposure descriptor intact for independent validation at P.
                                             descriptor=(self.ledger.d_descriptor(r.xid)
                                                         if hasattr(self.ledger, "d_descriptor")
                                                         else None)))
            if not ok:  # we cannot tell whether P got it: the CLOSED event quarantines it
                pass
        self.queue = [u for u in keep if u in self.reqs and self.reqs[u].state == "queued"]
        return used

    def count(self, state: str) -> int:
        return sum(1 for r in self.reqs.values() if r.state == state)

    def pending_reserve(self) -> int:
        """Decode pages promised to admitted requests not yet handed to the scheduler."""
        return sum(r.extra_pages for r in self.reqs.values() if r.state in ("waiting", "ready"))

    def pop_ready(self) -> List[Tuple[int, int, int]]:
        """(uid, gen, first_token) of requests whose KV landed and is visible."""
        out, self.ready = self.ready, []
        for uid, _, _ in out:
            r = self.reqs.pop(uid, None)
            if r is not None:
                r.state = "taken"
                self.active_rooms.pop(r.room, None)
                self.by_xid.pop(r.xid, None)
        return out

    def pop_failed(self) -> List[Tuple[int, str]]:
        out, self.failed = self.failed, []
        return out

    def abort(self, uid: int, now: float | None = None) -> None:
        """Client abort of a request that has not been handed to the scheduler yet."""
        now = time.monotonic() if now is None else now
        r = self.reqs.get(uid)
        if r is None:
            return
        if r.state == "queued":
            self._finish(r, "done")
        elif r.state == "waiting":
            self.ledger.note("release", why="abort")
            self.ledger.release(r.gen)  # pages DRAINING until P's evidence (or quarantine)
            r.state = "aborting"
            r.t_pub = now
            logger.info("PD decode cancel inst=%#x rid=%s uid=%d room=%d h=%d xid=%d peer=%#x",
                        self.inst, r.rid, r.uid, r.room, r.gen, r.xid, r.peer)
            self._send_abort(r)
        elif r.state == "ready":
            self.ready = [x for x in self.ready if x[0] != uid]
            self.ledger.note("release", why="abort")
            self.ledger.release(r.gen)
            self._finish(r, "done")

    def stats(self) -> Dict[str, int]:
        out = dict(self.counters)
        out.update({"ledger_" + k: v for k, v in self.ledger.stats().items()})
        out["queued"] = sum(1 for r in self.reqs.values() if r.state == "queued")
        out["waiting"] = sum(1 for r in self.reqs.values() if r.state == "waiting")
        out["aborting"] = sum(1 for r in self.reqs.values() if r.state == "aborting")
        return out

    def shutdown(self) -> None:
        self.hub.shutdown()

    def _connect(self, addr: Tuple[str, int], now: float) -> None:
        c = _Conn(addr, t0=now)
        self.conns[addr] = c
        try:
            c.cid = self.hub.connect(addr[0], addr[1])
        except OSError:
            self._conn_dead(c, "connect failed")
            return
        self.conn_of_cid[c.cid] = c
        self.hub.send(c.cid, M.to_p(M.HELLO, inst=self.inst, layout=self.layout,
                                    session=self.backend.session_id))

    def _conn_dead(self, c: _Conn, why: str) -> None:
        prev = c.state
        c.state = "dead"
        if c.cid:
            self.conn_of_cid.pop(c.cid, None)
            self.hub.close(c.cid)
        if prev == "ready" and c.inst:
            self.counters["peers_lost"] += 1
            self.ledger.peer_lost(c.inst)  # Peer loss cannot prove that its posted writes have stopped.
        for r in list(self.reqs.values()):
            if r.addr != c.addr:
                continue
            if r.state == "queued":
                self._finish(r, "failed", f"prefill instance unreachable ({why})")
            elif r.state in ("waiting", "aborting") and r.peer == c.inst:
                self._qlog(r, "peer_lost")
                self._finish(r, "failed" if r.state == "waiting" else "done",
                             f"prefill instance lost ({why}, pages quarantined)")

    def _checksum_ok(self, r: _DReq, msg: Dict) -> bool:
        """Compare visible destination bytes with P's checksum before accepting KV.

        A mismatch provides no stop evidence, so the request fails and its pages
        stay quarantined. checksum_fatal instead raises LedgerViolation."""
        if "csum" not in msg:
            self.counters["kv_checksum_missing"] += 1  # P runs without checksums: accepted
            return True
        t0 = time.perf_counter_ns()
        npages = L.div_ceil(r.ntokens, self.layout[1])
        got = [int(x) for x in self.checksum_fn(self.ledger.pages_of(r.gen)[:npages])]
        self.counters["kv_checksum_ns_total"] += time.perf_counter_ns() - t0
        if got == list(msg["csum"]):
            self.counters["kv_checksum_ok"] += 1
            return True
        self.counters["kv_checksum_mismatch"] += 1
        bad = [i for i, (a, b) in enumerate(zip(got, msg["csum"])) if a != b]
        logger.error("PD KV CHECKSUM MISMATCH inst=%#x rid=%s uid=%d room=%d h=%d xid=%d "
                     "peer=%#x "
                     "slabs=%s (of %d)", self.inst, r.rid, r.uid, r.room, r.gen, r.xid, r.peer,
                     bad[:8],
                     len(got))
        if self.checksum_fatal:
            raise L.LedgerViolation(f"KV checksum mismatch on xid {r.xid} (room {r.room})")
        self.ledger.d_unstopped(r.xid, L.Q_TRANSFER_FAILED)
        self._qlog(r, "kv_checksum")
        self._finish(r, "failed", "KV checksum mismatch (pages quarantined)")
        return False

    def _qlog(self, r: _DReq, reason: str) -> None:
        """One line per quarantine event, with every identity needed to attribute it."""
        st = self.ledger.d_xfer(r.xid)
        logger.warning("PD quarantine side=D inst=%#x reason=%s rid=%s uid=%d room=%d h=%d "
                       "xid=%d "
                       "peer=%#x ntokens=%d xstate=%d", self.inst, reason, r.rid, r.uid, r.room,
                       r.gen,
                       r.xid, r.peer, r.ntokens, st[0])

    def _send_abort(self, r: _DReq) -> None:
        c = self.conns.get(r.addr)
        if c is not None and c.state == "ready" and c.inst == r.peer:
            self.hub.send(c.cid, M.to_p(M.ABORT, room=r.room, gen=r.gen, xid=r.xid))

    def _finish(self, r: _DReq, state: str, why: str = "") -> None:
        """Leave the D-side PD queues.  A failed request's pages are released (quarantined
        pages stay quarantined; the ledger decides)."""
        if r.state == "waiting" and state == "failed":
            self.ledger.note("release", why="failed")
            self.ledger.release(r.gen)
        r.state = state
        self.reqs.pop(r.uid, None)
        self.by_xid.pop(r.xid, None)
        self.active_rooms.pop(r.room, None)
        if state == "failed":
            logger.warning("PD decode failed inst=%#x rid=%s uid=%d room=%d h=%d xid=%d "
                           "peer=%#x: %s",
                           self.inst, r.rid, r.uid, r.room, r.gen, r.xid, r.peer, why)
            self.failed.append((r.uid, why))

    def _handle(self, cid: int, msg: Dict, now: float) -> None:
        c = self.conn_of_cid.get(cid)
        t = msg.get("t")
        if t == CLOSED:
            if c is not None and c.state != "dead":
                self._conn_dead(c, "connection closed")
            return
        if c is None or not M.valid(msg):
            self.counters["bad_msgs"] += 1
            return
        if t == M.HELLO_ACK:
            if msg["code"] != L.OK or self.ledger.register_peer(msg["inst"], msg["layout"]) != L.OK:
                self._conn_dead(c, f"handshake refused (code {msg['code']})")
                return
            c.state, c.inst, c.session = "ready", msg["inst"], msg["session"]
            c.last_pong = now
            return
        if c.state != "ready":
            self.counters["bad_msgs"] += 1
            return
        if t == M.PONG:
            c.last_pong = now
            return
        if msg.get("dst") != self.inst or msg.get("src") != c.inst:
            self.counters["dropped"] += 1  # meant for another incarnation
            return
        room, gen, xid = msg["room"], msg["gen"], msg["xid"]
        r = self.by_xid.get(xid)
        if t == M.KV_DONE:
            mine = (r is not None and r.state == "waiting"
                    and (r.peer, r.room, r.gen) == (c.inst, room, gen))
            if mine and self.flush_hook is not None:
                # Flush GPUDirect writes before the ledger allows a kernel to read them.
                t0 = time.perf_counter_ns()
                self.flush_hook()
                dt = time.perf_counter_ns() - t0
                self.counters["flush_count"] += 1
                self.counters["flush_ns_total"] += dt
                self.counters["flush_ns_max"] = max(self.counters["flush_ns_max"], dt)
                self.ledger.event("flush", rid=r.rid, room=r.room, h=r.gen, xid=xid,
                                  peer=hex(c.inst), ns=dt)
            if mine and self.checksum_fn is not None and not self._checksum_ok(r, msg):
                return  # mismatch: quarantined and failed (or LedgerViolation if fatal)
            code = self.ledger.d_landed(c.inst, room, gen, xid, msg["ntokens"])
            if code == L.OK and r is not None:
                if r.state == "waiting":
                    self.ledger.d_mark_visible(xid)
                    r.state = "ready"
                    r.first_token = msg["first_token"]
                    self.ready.append((r.uid, r.gen, r.first_token))
                    logger.info("PD decode landed inst=%#x rid=%s uid=%d room=%d h=%d xid=%d",
                                self.inst, r.rid, r.uid, r.room, r.gen, r.xid)
                elif r.state == "aborting":
                    self._finish(r, "done")  # stopped evidence: pages already FREE
            elif code == L.BAD_LEN and r is not None:
                self.counters["bad_len"] += 1
                self._finish(r, "failed" if r.state == "waiting" else "done",
                             "landed token count mismatch")
            elif code < 0:
                self.counters["dropped"] += 1
        elif t == M.ABORT_ACK or (t == M.KV_FAIL and msg["stopped"] == 1):
            code = self.ledger.d_stopped(c.inst, room, gen, xid)
            if code == L.OK and r is not None:
                self._finish(r, "failed" if r.state == "waiting" else "done",
                             f"prefill refused the transfer (code {msg.get('code', 0)})")
            elif code < 0:
                self.counters["dropped"] += 1
        elif t == M.KV_FAIL:  # stopped == 0: the write may still land
            st, xgen, xroom, xpeer, _ = self.ledger.d_xfer(xid)
            if st == L.X_POSTED and (xgen, xroom, xpeer) == (gen, room, c.inst):
                self.ledger.d_unstopped(xid, L.Q_TRANSFER_FAILED)
                if r is not None:
                    self._qlog(r, "transfer_failed")
                    self._finish(r, "failed" if r.state == "waiting" else "done",
                                 "transfer failed (pages quarantined)")
            else:
                self.counters["dropped"] += 1
        else:
            self.counters["bad_msgs"] += 1
