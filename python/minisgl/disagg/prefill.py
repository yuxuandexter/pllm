"""Prefill holds source pages until the transfer's outcome is known.

A request waits for decode's destination descriptor before prefill starts.
Registration holds the source before the scheduler releases the request.
Queued registrations may be cancelled; submitted writes retain their holds
until the engine returns. kv_done is sent only after every block completes
locally, because a notice sent at submission can race with the data."""

from __future__ import annotations

import logging
import queue
import threading
import time
from dataclasses import dataclass, field
from typing import Dict, List, Tuple

from . import ledger as L
from . import messages as M
from . import trace as T
from .channel import CLOSED, Hub

logger = logging.getLogger(__name__)


@dataclass
class _PReq:
    uid: int
    room: int
    ntokens: int
    tok_hash: str
    t0: float
    match: Tuple | None = None  # (cid, peer, d_gen, xid, ntokens, tok_hash, pages)
    state: str = "boot"
    rid: str = ""  # client request id (router), for the identity log lines


@dataclass
class _Peer:
    inst: int
    session: str
    cids: List[int] = field(default_factory=list)


class PrefillPD:
    def __init__(self, ledger: L.Ledger, backend, layout: List[int], inst: int,
                 host: str = "0.0.0.0", port: int = 0, bootstrap_timeout: float = 300.0) -> None:
        self.ledger = T.wrap(ledger, inst, "P")
        self.backend = backend
        self.layout = list(layout)
        self.inst = inst
        # The queue deadline can cancel unsubmitted work but cannot prove a running write stopped.
        self.bootstrap_timeout = bootstrap_timeout
        self.hub = Hub()
        self.port = self.hub.listen(host, port)
        self.peer_of_cid: Dict[int, int] = {}
        self.peers: Dict[int, _Peer] = {}
        self.reqs: Dict[int, _PReq] = {}
        # Keep the cancellation identity after on_prefill_done removes the request. Only
        # the scheduler thread owns this map; the worker consults the ledger under its lock.
        self.pending: Dict[int, Tuple] = {}
        self.uid_of_room: Dict[int, int] = {}
        # Keep destinations that arrive before their prefill request so matching can occur later.
        self.unmatched: Dict[int, List[Tuple[float, Tuple]]] = {}
        # rooms whose P request failed or was aborted before D's destination came: a later
        # xfer_req for them is refused at once (stopped evidence) instead of at the timeout
        self.dropped_rooms: Dict[int, float] = {}
        # Remember intake refusals so a later destination gets stop evidence immediately.
        # Otherwise decode would wait for a nonexistent request and quarantine its pages.
        self.refused: Dict[int, List[Tuple[float, int, str]]] = {}
        self.ready: List[int] = []
        self.failed: List[Tuple[int, str]] = []
        self.counters: Dict[str, int] = {"bad_msgs": 0, "dup_rooms": 0, "mismatch": 0,
                                         "notices": 0, "acks": 0, "fails_sent": 0,
                                         "refused_dests": 0, "dropped_reqs": 0}
        self._work: "queue.Queue[Tuple | None]" = queue.Queue()
        self._worker = threading.Thread(target=self._worker_loop, daemon=True, name="pd-xfer")
        self._worker.start()
        self.ledger.event("role")

    def add_request(self, uid: int, room: int, ntokens: int, tok_hash: str,
                    now: float | None = None, rid: str = "") -> bool:
        """A request arrived at P (router gave it ``room``).  False: room already active; its D
        leg may still publish a destination, which is then refused with stopped evidence."""
        now = time.monotonic() if now is None else now
        if room in self.uid_of_room:
            self.counters["dup_rooms"] += 1
            self._record_refusal(room, ntokens, tok_hash, now)
            return False
        r = _PReq(uid, room, ntokens, tok_hash, now)
        r.rid = rid
        self.reqs[uid] = r
        self.uid_of_room[room] = uid
        self.dropped_rooms.pop(room, None)
        for _, m in self.unmatched.pop(room, []):
            self._match(r, m)
        return True

    def poll(self, now: float | None = None, timeout: float = 0.0) -> None:
        now = time.monotonic() if now is None else now
        for cid, msg in self.hub.poll(timeout):
            self._handle(cid, msg)
        for uid, pending in list(self.pending.items()):
            if self.ledger.p_entry(pending[0])[0] != L.E_POSTED:
                del self.pending[uid]
            elif now - pending[-1] > self.bootstrap_timeout:
                # Unsubmitted registrations cannot quarantine; PCancelReg releases their holds,
                # including sources already left draining by normal request release.
                self._cancel_pending(uid, "drain_timeout")
        for r in list(self.reqs.values()):
            if r.state == "boot" and now - r.t0 > self.bootstrap_timeout:
                self._fail(r, "bootstrap timeout")
        for room, t in list(self.dropped_rooms.items()):
            if now - t > self.bootstrap_timeout:
                del self.dropped_rooms[room]
        for room, rs in list(self.refused.items()):
            rs = [x for x in rs if now - x[0] <= self.bootstrap_timeout]
            if rs:
                self.refused[room] = rs
            else:
                del self.refused[room]
        for room, ms in list(self.unmatched.items()):
            # Refuse unmatched destinations before decode times out and quarantines them.
            keep = []
            for t, m in ms:
                if now - t <= self.bootstrap_timeout:
                    keep.append((t, m))
                    continue
                cid, peer, d_gen, xid = m[:4]
                self._ddesc_recv(m, room, "unmatched_timeout")
                self.ledger.note("p_abort", why="unmatched_timeout", room=room, d_h=d_gen)
                if self.ledger.p_abort(peer, xid) == L.SEND_ACK:  # tombstone
                    self._send(cid, M.to_p(M.KV_FAIL, src=self.inst, dst=peer, room=room,
                                           gen=d_gen, xid=xid, stopped=1, code=L.REJ_SRC))
                    self.counters["fails_sent"] += 1
            if keep:
                self.unmatched[room] = keep
            else:
                del self.unmatched[room]

    def ctx_of(self, uid: int) -> Dict:
        """rid / room of a P request (for the trace line of its page allocation)."""
        r = self.reqs.get(uid)
        return {} if r is None else {"rid": r.rid, "room": r.room}

    def pop_ready(self) -> List[int]:
        out, self.ready = self.ready, []
        return out

    def pop_failed(self) -> List[Tuple[int, str]]:
        out, self.failed = self.failed, []
        return out

    def on_prefill_done(self, uid: int, gen: int, ntokens: int, first_token: int,
                        csum: List[int] | None = None) -> int:
        """Called by the scheduler when prefill of ``uid`` completed (its step was synchronized)
        and before it releases the request's pages.  ``csum``: per-(K/V, layer) checksums of
        the source pages (``messages.kv_checksum_bytes``), computed before ``p_post`` and sent
        in ``kv_done``.  Returns the eid (> 0) or a REJ_* code."""
        r = self.reqs.pop(uid, None)
        if r is None or r.match is None or r.state != "ready":
            return L.REJ_SRC
        self.uid_of_room.pop(r.room, None)
        cid, peer, d_gen, xid, d_ntok, d_hash, pages = r.match[:7]
        descriptor = r.match[7] if len(r.match) > 7 else None
        # PdCore PPost + SFollow atomically snapshot sources/hold Shared.
        kw = {"dst_descriptor": descriptor} if descriptor is not None else {}
        eid = self.ledger.p_post(gen, ntokens, peer, r.room, d_gen, xid, pages, **kw)
        if eid < 0:  # nothing registered: no byte will ever move (stopped failure)
            self._send(cid, M.to_p(M.KV_FAIL, src=self.inst, dst=peer, room=r.room, gen=d_gen,
                                   xid=xid, stopped=1, code=eid))
            self.counters["fails_sent"] += 1
            return eid
        r.state = "sent"
        logger.info("PD prefill post inst=%#x rid=%s uid=%d room=%d h=%d eid=%d d_h=%d xid=%d "
                    "peer=%#x "
                    "npages=%d", self.inst, r.rid, uid, r.room, gen, eid, d_gen, xid, peer,
                    len(pages))
        self.pending[uid] = (eid, cid, peer, r.room, d_gen, xid, time.monotonic())
        self._work.put((eid, cid, peer, r.room, d_gen, xid, ntokens, first_token, csum, r.rid,
                        gen))
        return eid

    def drop_request(self, room: int, ntokens: int, tok_hash: str) -> None:
        """The scheduler dropped a request before PD saw it (e.g. input longer than this
        instance's max_seq_len): its D leg's destination must get the stopped refusal (intake_refusal)."""
        self.counters["dropped_reqs"] += 1
        self._record_refusal(room, ntokens, tok_hash, time.monotonic())

    def abort(self, uid: int) -> None:
        """Client abort: cancel registered work before the scheduler releases its pages.
        PdCore PEnd; a submitted transfer retains its engine hold."""
        self._cancel_pending(uid, "client_abort")
        r = self.reqs.get(uid)
        if r is not None:
            self._fail(r, "aborted", report=False)

    def stats(self) -> Dict[str, int]:
        out = dict(self.counters)
        out.update({"ledger_" + k: v for k, v in self.ledger.stats().items()})
        out["waiting"] = sum(1 for r in self.reqs.values() if r.state == "boot")
        return out

    def shutdown(self) -> None:
        self._work.put(None)
        self.hub.shutdown()

    def _send(self, cid: int, msg: Dict) -> bool:
        return self.hub.send(cid, msg)

    def _cancel_pending(self, uid: int, why: str) -> bool:
        pending = self.pending.pop(uid, None)
        if pending is None:
            return False
        eid, cid, peer, room, d_gen, xid, _posted_at = pending
        self.ledger.note("p_cancel", why=why)
        if not self.ledger.p_cancel(eid):
            return False  # p_begin won: never claim stopped or release its hold
        self._send(cid, M.to_p(M.KV_FAIL, src=self.inst, dst=peer, room=room,
                               gen=d_gen, xid=xid, stopped=1, code=L.REJ_SRC))
        self.counters["fails_sent"] += 1
        return True

    def _fail(self, r: _PReq, why: str, report: bool = True, notify_d: bool = True) -> None:
        if r.match is not None:
            self._ddesc_recv(r.match, r.room, "failed", r, reason=_why_tag(why))
        self.reqs.pop(r.uid, None)
        self.uid_of_room.pop(r.room, None)
        if r.state == "ready":
            self.ready = [u for u in self.ready if u != r.uid]
        if r.match is not None and notify_d:  # tell D: nothing was or will be written
            cid, peer, d_gen, xid = r.match[:4]
            self.ledger.note("p_abort", why=_why_tag(why), room=r.room, d_h=d_gen)
            if self.ledger.p_abort(peer, xid) == L.SEND_ACK:  # tombstone, certifies stopped
                self._send(cid, M.to_p(M.KV_FAIL, src=self.inst, dst=peer, room=r.room,
                                       gen=d_gen, xid=xid, stopped=1, code=L.REJ_SRC))
                self.counters["fails_sent"] += 1
        r.state = "failed"
        if r.match is None:
            self.dropped_rooms[r.room] = time.monotonic()
        if report:
            self.failed.append((r.uid, why))

    def _record_refusal(self, room: int, ntokens: int, tok_hash: str, now: float) -> None:
        """No request here will use a destination of ``room`` for this prompt (intake_refusal): refuse one
        already waiting (D came first) now, else remember the refusal for the next one."""
        ms = self.unmatched.get(room, [])
        for i, (_, m) in enumerate(ms):
            if (m[4], m[5]) == (ntokens, tok_hash):
                del ms[i]
                if not ms:
                    del self.unmatched[room]
                self._refuse_dest(m, room, "refused_intake", L.REJ_DUP)
                return
        self.refused.setdefault(room, []).append((now, ntokens, tok_hash))

    def _take_refused(self, room: int, ntok: int, h: str) -> bool:
        """Consume one intake refusal of ``room`` for this prompt (intake_refusal)."""
        rs = self.refused.get(room)
        for i, (_, n, hh) in enumerate(rs or ()):
            if (n, hh) == (ntok, h):
                del rs[i]
                if not rs:
                    del self.refused[room]
                return True
        return False

    def _refuse_dest(self, m: Tuple, room: int, why: str, code: int) -> None:
        """Answer a destination no P request will ever use with stopped evidence (tombstone +
        kv_fail stopped=1): D fails the request at once and frees its pages."""
        self._ddesc_recv(m, room, why)
        cid, peer, d_gen, xid = m[:4]
        self.counters["refused_dests"] += 1
        self.ledger.note("p_abort", why=why, room=room, d_h=d_gen)
        if self.ledger.p_abort(peer, xid) == L.SEND_ACK:  # tombstone, certifies stopped
            self._send(cid, M.to_p(M.KV_FAIL, src=self.inst, dst=peer, room=room, gen=d_gen,
                                   xid=xid, stopped=1, code=code))
            self.counters["fails_sent"] += 1
        logger.warning("PD prefill refuse inst=%#x room=%d d_h=%d xid=%d peer=%#x why=%s",
                       self.inst, room, d_gen, xid, peer, why)

    def _ddesc_recv(self, m, room, disposition, r=None, **extra):
        self.ledger.ddesc_receive(
            descriptor=m[7] if len(m) > 7 else None, wire_pages=m[6],
            disposition=disposition, room=room, peer=hex(m[1]), d_h=m[2], xid=m[3],
            ntokens=m[4], uid=r.uid if r is not None else -1,
            rid=r.rid if r is not None else "", h=-1, **extra)

    def _match(self, r: _PReq, m: Tuple) -> None:
        cid, peer, d_gen, xid, ntok, h, pages = m[:7]
        if r.match is not None or r.state != "boot":
            self._ddesc_recv(m, r.room, "duplicate", r)
            # a second destination for the same room: refuse it (no transfer will happen); if a
            # request with this prompt was refused at intake, this may be its D leg (intake_refusal)
            self._take_refused(r.room, ntok, h)
            self.ledger.note("p_abort", why="dup_dest", room=r.room, d_h=d_gen)
            if self.ledger.p_abort(peer, xid) == L.SEND_ACK:
                self._send(cid, M.to_p(M.KV_FAIL, src=self.inst, dst=peer, room=r.room,
                                       gen=d_gen, xid=xid, stopped=1, code=L.REJ_DUP))
            return
        if ntok != r.ntokens or h != r.tok_hash:
            self._ddesc_recv(m, r.room, "mismatch", r)
            self.counters["mismatch"] += 1
            r.match = m
            self._fail(r, "prompt mismatch between P and D")
            return
        r.match = m
        r.state = "ready"
        self.ready.append(r.uid)
        self._ddesc_recv(m, r.room, "bound", r)
        self.ledger.event("match", rid=r.rid, uid=r.uid, room=r.room, peer=hex(m[1]), d_h=m[2],
                          xid=m[3], ntokens=r.ntokens)
        logger.info("PD prefill match inst=%#x rid=%s uid=%d room=%d d_h=%d xid=%d peer=%#x "
                    "ntokens=%d",
                    self.inst, r.rid, r.uid, r.room, m[2], m[3], m[1], r.ntokens)

    def _handle(self, cid: int, msg: Dict) -> None:
        t = msg.get("t")
        if t == CLOSED:
            peer = self.peer_of_cid.pop(cid, None)
            if peer is not None:
                pr = self.peers.get(peer)
                if pr is not None:
                    pr.cids = [c for c in pr.cids if c != cid]
                    if not pr.cids:
                        self._peer_lost(peer)
            return
        if not M.valid(msg):
            if t == M.XFER_REQ:
                self.ledger.ddesc_receive(descriptor=msg.get("descriptor"),
                    wire_pages=msg.get("pages"), disposition="invalid_message",
                    room=msg.get("room"), d_h=msg.get("gen"), xid=msg.get("xid"), h=-1)
            self.counters["bad_msgs"] += 1
            return
        if t == M.HELLO:
            code = self.ledger.register_peer(msg["inst"], msg["layout"])
            self._send(cid, M.to_p(M.HELLO_ACK, inst=self.inst, layout=self.layout,
                                   session=self.backend.session_id, code=code))
            if code == L.OK:
                self.peer_of_cid[cid] = msg["inst"]
                pr = self.peers.setdefault(msg["inst"], _Peer(msg["inst"], msg["session"]))
                pr.cids.append(cid)
            return
        peer = self.peer_of_cid.get(cid)
        if peer is None:  # no successful hello on this connection
            if t == M.XFER_REQ:
                self.ledger.ddesc_receive(descriptor=msg.get("descriptor"),
                    wire_pages=msg.get("pages"), disposition="unregistered_peer",
                    room=msg["room"], d_h=msg["gen"], xid=msg["xid"], h=-1)
            self.counters["bad_msgs"] += 1
            return
        if t == M.PING:
            self._send(cid, M.to_p(M.PONG, seq=msg["seq"]))
        elif t == M.XFER_REQ:
            self.ledger.ddesc_receive(descriptor=msg.get("descriptor"),
                wire_pages=msg["pages"], disposition="received", peer=hex(peer),
                room=msg["room"], d_h=msg["gen"], xid=msg["xid"],
                ntokens=msg["ntokens"], h=-1)
            desc = msg.get("descriptor")
            # Freeze JSON lists without rebuilding the D-created descriptor from P's arguments;
            # that would erase the independent evidence of destination identity and order.
            descriptor = None if desc is None else (*desc[:5], tuple(desc[5]), tuple(desc[6]))
            m = (cid, peer, msg["gen"], msg["xid"], msg["ntokens"], msg["tok_hash"],
                 list(msg["pages"]), descriptor)
            uid = self.uid_of_room.get(msg["room"])
            r = None if uid is None else self.reqs[uid]
            if (r is None or (m[4], m[5]) != (r.ntokens, r.tok_hash)) \
                    and self._take_refused(msg["room"], m[4], m[5]):
                # Refuse the destination of an intake-rejected request before decode times out.
                self._refuse_dest(m, msg["room"], "refused_intake", L.REJ_DUP)
            elif uid is None and msg["room"] in self.dropped_rooms:
                self._ddesc_recv(m, msg["room"], "dropped_room")
                self.ledger.note("p_abort", why="dropped_room", room=msg["room"], d_h=msg["gen"])
                if self.ledger.p_abort(peer, msg["xid"]) == L.SEND_ACK:  # tombstone
                    self._send(cid, M.to_p(M.KV_FAIL, src=self.inst, dst=peer, room=msg["room"],
                                           gen=msg["gen"], xid=msg["xid"], stopped=1,
                                           code=L.REJ_SRC))
                    self.counters["fails_sent"] += 1
            elif uid is None:
                self._ddesc_recv(m, msg["room"], "queued")
                self.unmatched.setdefault(msg["room"], []).append((time.monotonic(), m))
            else:
                self._match(r, m)
        elif t == M.ABORT:
            self._on_abort(cid, peer, msg)
        else:
            self.counters["bad_msgs"] += 1

    def _on_abort(self, cid: int, peer: int, msg: Dict) -> None:
        room, d_gen, xid = msg["room"], msg["gen"], msg["xid"]
        # drop a not-yet-matched destination and fail a P request that waits for this one
        if room in self.unmatched:
            for _, m in self.unmatched[room]:
                if m[3] == xid and m[1] == peer:
                    self._ddesc_recv(m, room, "aborted_unmatched")
            self.unmatched[room] = [(t, m) for t, m in self.unmatched[room]
                                    if m[3] != xid or m[1] != peer]
        uid = self.uid_of_room.get(room)
        if uid is not None:
            r = self.reqs[uid]
            if r.match is not None and r.match[1] == peer and r.match[3] == xid:
                self._fail(r, "decode aborted", notify_d=False)  # the ACK below answers D
        self.ledger.note("p_abort", why="decode_abort", room=room, d_h=d_gen)
        res = self.ledger.p_abort(peer, xid)
        if res == L.SEND_ACK:
            self._send(cid, M.to_p(M.ABORT_ACK, src=self.inst, dst=peer, room=room, gen=d_gen,
                                   xid=xid))
            self.counters["acks"] += 1
        elif res == L.SEND_FAIL_UNSTOPPED:
            self._send(cid, M.to_p(M.KV_FAIL, src=self.inst, dst=peer, room=room, gen=d_gen,
                                   xid=xid, stopped=0, code=L.Q_TRANSFER_FAILED))
        # SEND_NOTHING: an engine call is running; the worker sends the ACK after it returns

    def _peer_lost(self, peer: int) -> None:
        self.peers.pop(peer, None)
        self.ledger.peer_lost(peer)
        for room, ms in list(self.unmatched.items()):
            for _, m in ms:
                if m[1] == peer:
                    self._ddesc_recv(m, room, "peer_lost_unmatched")
            self.unmatched[room] = [(t, m) for t, m in ms if m[1] != peer]
        for r in list(self.reqs.values()):
            if r.match is not None and r.match[1] == peer:
                self._fail(r, "decode instance lost")

    def _worker_loop(self) -> None:
        while True:
            item = self._work.get()
            if item is None:
                return
            eid, cid, peer, room, d_gen, xid, ntokens, first_token, csum, rid, gen = item
            if not self.ledger.p_begin(eid):
                continue  # cancelled by an abort (already acknowledged) or peer loss
            srcs, dsts, lens = self.ledger.p_plan(eid)
            pr = self.peers.get(peer)
            ret = self.ledger.transfer_write(eid, self.backend, pr.session, srcs, dsts, lens) \
                if pr is not None else -1
            res = self.ledger.p_done(eid, ret == 0)
            base = dict(src=self.inst, dst=peer, room=room, gen=d_gen, xid=xid)
            if res == L.SEND_DONE:  # only now: the engine reported local completion
                extra = {} if csum is None else {"csum": list(csum)}
                self._send(cid, M.to_p(M.KV_DONE, ntokens=ntokens, first_token=first_token,
                                       **base, **extra))
                self.counters["notices"] += 1
            elif res == L.SEND_ACK:
                self._send(cid, M.to_p(M.ABORT_ACK, **base))
                self.counters["acks"] += 1
            else:
                logger.warning("PD quarantine side=P inst=%#x reason=transfer_failed rid=%s "
                               "room=%d h=%d "
                               "eid=%d d_h=%d xid=%d peer=%#x", self.inst, rid, room, gen, eid,
                               d_gen, xid,
                               peer)
                self._send(cid, M.to_p(M.KV_FAIL, stopped=0, code=L.Q_TRANSFER_FAILED, **base))
                self.counters["fails_sent"] += 1


_WHY_TAGS = {"bootstrap timeout": "boot_timeout", "prompt mismatch between P and D": "mismatch",
             "aborted": "client_abort", "decode aborted": "decode_abort",
             "decode instance lost": "peer_lost"}


def _why_tag(why: str) -> str:
    return _WHY_TAGS.get(why, why.replace(" ", "_"))
