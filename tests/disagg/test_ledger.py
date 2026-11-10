"""Unit and randomized tests for the reference ledger (CPU only, no torch)."""

from __future__ import annotations

import random

import pytest

from minisgl.disagg import ledger as L
from minisgl.disagg.ledger import LedgerViolation, RefLedger

PS = 1
BF16, MODEL = L.DTYPE_CODES["bfloat16"], 777  # layout fields 7, 8: KV dtype code, model id
LAYOUT_D = [2, PS, 2, 4, 2, 17, 1 << 40, BF16, MODEL]  # 16 usable pages + dummy
LAYOUT_P = [2, PS, 2, 4, 2, 17, 2 << 40, BF16, MODEL]
P_INST, D_INST = 111, 222


def mk(layout=LAYOUT_D, inst=D_INST, n=16):
    return RefLedger(n, layout, inst, check_every=1)


def pair():
    d, p = mk(LAYOUT_D, D_INST), mk(LAYOUT_P, P_INST)
    assert d.register_peer(P_INST, LAYOUT_P) == L.OK
    assert p.register_peer(D_INST, LAYOUT_D) == L.OK
    return p, d


def prefill_on_p(p: RefLedger, ntok: int, step: int) -> int:
    g = p.open_req(-1)
    assert len(p.alloc(g, L.div_ceil(ntok, PS))) == L.div_ceil(ntok, PS)
    p.launch(step, [(g, 0, ntok)])
    p.complete(step)
    return g


def test_alloc_release_roundtrip():
    d = mk()
    g = d.open_req(5)
    pages = d.alloc(g, 4)
    assert len(pages) == 4 and len(set(pages)) == 4
    assert d.free_pages() == 12
    assert d.alloc(g, 13) == []  # all or nothing
    assert d.release(g) == 4
    assert d.free_pages() == 16
    with pytest.raises(LedgerViolation):
        d.release(g)  # double release is a glue bug


def test_gen_never_reused():
    d = mk()
    gens = [d.open_req(1) for _ in range(5)]
    assert gens == sorted(set(gens))


def test_release_while_step_in_flight_drains():
    d = mk()
    g = d.open_req(1)
    d.alloc(g, 2)
    d.launch(1, [(g, 0, 2)])
    assert d.release(g) == 0
    assert d.stats()["draining"] == 2
    assert d.free_pages() == 14
    d.complete(1)
    assert d.stats()["draining"] == 0 and d.free_pages() == 16


def test_launch_reads_only_written_tokens():
    d = mk()
    g = d.open_req(1)
    d.alloc(g, 4)
    with pytest.raises(LedgerViolation):
        d.launch(1, [(g, 2, 3)])  # nothing written yet


def test_launch_after_launched_step_is_stream_ordered():
    d = mk()
    g = d.open_req(1)
    d.alloc(g, 4)
    d.launch(1, [(g, 0, 2)])
    d.launch(2, [(g, 2, 3)])  # reads what step 1 writes: same stream, allowed
    d.complete(1)
    d.complete(2)
    with pytest.raises(LedgerViolation):
        d.complete(3)


def test_d_happy_path():
    p, d = pair()
    g = d.open_req(42)
    d.alloc(g, 3)
    xid = d.d_expect(g, P_INST, 3)
    with pytest.raises(LedgerViolation):
        d.launch(1, [(g, 3, 4)])  # not landed
    assert d.d_landed(P_INST, 42, g, xid, 3) == L.OK
    with pytest.raises(LedgerViolation):
        d.launch(1, [(g, 3, 4)])  # landed but visibility hook not run
    d.d_mark_visible(xid)
    d.alloc(g, 1)
    d.launch(1, [(g, 3, 4)])
    d.complete(1)
    d.release(g)
    assert d.free_pages() == 16


def test_d_stale_messages_dropped():
    p, d = pair()
    g = d.open_req(42)
    d.alloc(g, 2)
    xid = d.d_expect(g, P_INST, 2)
    assert d.d_landed(P_INST, 42, g, xid + 7, 2) == L.DROP_UNKNOWN
    assert d.d_landed(P_INST, 43, g, xid, 2) == L.DROP_MISMATCH   # wrong room
    assert d.d_landed(P_INST, 42, g + 1, xid, 2) == L.DROP_MISMATCH  # wrong gen
    assert d.d_landed(999, 42, g, xid, 2) == L.DROP_MISMATCH  # wrong sender instance
    assert d.d_landed(P_INST, 42, g, xid, 2) == L.OK
    assert d.d_landed(P_INST, 42, g, xid, 2) == L.DROP_STATE  # duplicate
    assert d.stats()["dropped_msgs"] == 5


def test_d_bad_len_is_stopped_but_fails_request():
    p, d = pair()
    g = d.open_req(1)
    d.alloc(g, 2)
    xid = d.d_expect(g, P_INST, 2)
    assert d.d_landed(P_INST, 1, g, xid, 1) == L.BAD_LEN
    with pytest.raises(LedgerViolation):
        d.launch(1, [(g, 0, 1)])  # request is failed
    d.release(g)
    assert d.free_pages() == 16  # stopped evidence: pages reusable


def test_d_abort_then_ack_frees():
    p, d = pair()
    g = d.open_req(7)
    d.alloc(g, 2)
    xid = d.d_expect(g, P_INST, 2)
    d.release(g)  # client abort while the transfer is posted
    assert d.stats()["draining"] == 2 and d.free_pages() == 14
    assert d.d_stopped(P_INST, 7, g, xid) == L.OK
    assert d.free_pages() == 16


def test_d_abort_then_late_landed_frees():
    p, d = pair()
    g = d.open_req(7)
    d.alloc(g, 2)
    xid = d.d_expect(g, P_INST, 2)
    d.release(g)
    assert d.d_landed(P_INST, 7, g, xid, 2) == L.OK
    assert d.free_pages() == 16


@pytest.mark.parametrize("reason", [L.Q_TIMEOUT, L.Q_TRANSFER_FAILED, L.Q_CANCELLED])
def test_d_unstopped_quarantines_forever(reason):
    p, d = pair()
    g = d.open_req(7)
    d.alloc(g, 3)
    xid = d.d_expect(g, P_INST, 2)  # exposes 2 of the 3 pages
    assert d.d_unstopped(xid, reason) == L.OK
    d.release(g)
    st = d.stats()
    assert st["quarantined"] == 2 and d.free_pages() == 14
    assert st["quarantined_" + L.Q_REASON_NAMES[reason]] == 2
    # late evidence does not bring them back
    assert d.d_landed(P_INST, 7, g, xid, 2) < 0
    assert d.d_stopped(P_INST, 7, g, xid) < 0
    got = []
    g2 = d.open_req(8)
    got = d.alloc(g2, 14)
    assert len(got) == 14 and d.alloc(g2, 1) == []


def test_d_peer_lost_quarantines_posted_only():
    p, d = pair()
    g1, g2 = d.open_req(1), d.open_req(2)
    d.alloc(g1, 2)
    d.alloc(g2, 2)
    x1 = d.d_expect(g1, P_INST, 2)
    x2 = d.d_expect(g2, P_INST, 2)
    assert d.d_landed(P_INST, 1, g1, x1, 2) == L.OK
    assert d.peer_lost(P_INST) == [x2]
    assert d.stats()["quarantined_peer_lost"] == 2
    assert d.register_peer(P_INST, LAYOUT_P) == L.REJ_PEER  # an old instance never comes back


def test_layout_mismatch_rejected():
    d = mk()
    assert d.register_peer(5, [2, PS, 2, 8, 2, 17, 0, BF16, MODEL]) == L.REJ_LAYOUT


def test_p_happy_path_holds_source_until_done():
    p, d = pair()
    gp = prefill_on_p(p, 3, 1)
    eid = p.p_post(gp, 3, D_INST, 9, 4, 1, [5, 6, 7])
    assert eid > 0
    p.release(gp)
    assert p.stats()["draining"] == 3 and p.free_pages() == 13
    assert p.p_begin(eid)
    srcs, dsts, lens = p.p_plan(eid)
    assert len(srcs) == 2 * 2  # K/V x 2 layers, one contiguous run
    assert lens[0] == 3 * PS * 2 * 4 * 2
    assert dsts[0] == L.page_addr(LAYOUT_D, 0, 0, 5)
    assert p.p_done(eid, True) == L.SEND_DONE
    assert p.free_pages() == 16


def test_p_refuses_unwritten_source():
    p, d = pair()
    g = p.open_req(-1)
    p.alloc(g, 3)
    p.launch(1, [(g, 0, 3)])
    assert p.p_post(g, 3, D_INST, 1, 1, 1, [0, 1, 2]) == L.REJ_SRC  # step 1 not complete
    p.complete(1)
    assert p.p_post(g, 4, D_INST, 1, 1, 1, [0, 1, 2, 3]) == L.REJ_SRC  # longer than written


def test_p_refuses_bad_dst_and_dup():
    p, d = pair()
    gp = prefill_on_p(p, 2, 1)
    assert p.p_post(gp, 2, D_INST, 1, 1, 1, [3, 3]) == L.REJ_PAGES
    assert p.p_post(gp, 2, D_INST, 1, 1, 1, [3, 16]) == L.REJ_PAGES  # 16 = dummy page
    assert p.p_post(gp, 2, D_INST, 1, 1, 1, [3]) == L.REJ_PAGES
    assert p.p_post(gp, 2, 999, 1, 1, 1, [3, 4]) == L.REJ_PEER
    assert p.p_post(gp, 2, D_INST, 1, 1, 1, [3, 4]) > 0
    assert p.p_post(gp, 2, D_INST, 1, 1, 1, [5, 6]) == L.REJ_DUP


def test_p_failed_write_quarantines_source():
    p, d = pair()
    gp = prefill_on_p(p, 2, 1)
    eid = p.p_post(gp, 2, D_INST, 1, 1, 1, [3, 4])
    p.release(gp)
    assert p.p_begin(eid)
    assert p.p_done(eid, False) == L.SEND_FAIL_UNSTOPPED
    st = p.stats()
    assert st["quarantined_transfer_failed"] == 2 and p.free_pages() == 14
    assert p.p_abort(D_INST, 1) == L.SEND_FAIL_UNSTOPPED  # never ACK a failed transfer


def test_p_abort_before_post_tombstones():
    p, d = pair()
    assert p.p_abort(D_INST, 5) == L.SEND_ACK
    gp = prefill_on_p(p, 1, 1)
    assert p.p_post(gp, 1, D_INST, 1, 1, 5, [0]) == L.REJ_DUP


def test_p_abort_posted_cancels_and_running_acks_later():
    p, d = pair()
    gp = prefill_on_p(p, 2, 1)
    e1 = p.p_post(gp, 1, D_INST, 1, 1, 1, [0])
    e2 = p.p_post(gp, 1, D_INST, 2, 2, 2, [1])
    assert p.p_abort(D_INST, 1) == L.SEND_ACK
    assert not p.p_begin(e1)
    assert p.p_begin(e2)
    assert p.p_abort(D_INST, 2) == L.SEND_NOTHING
    assert p.p_done(e2, True) == L.SEND_ACK


def test_p_peer_lost_cancels_posted():
    p, d = pair()
    gp = prefill_on_p(p, 2, 1)
    e1 = p.p_post(gp, 2, D_INST, 1, 1, 1, [0, 1])
    p.release(gp)
    assert p.peer_lost(D_INST) == [e1]
    assert not p.p_begin(e1) if p.p_entry(e1)[0] else True
    assert p.free_pages() == 16


def test_plan_merges_contiguous_runs():
    srcs, dsts, lens = L.plan_copy(LAYOUT_P, [1, 2, 3, 9], LAYOUT_D, [4, 5, 6, 7])
    assert len(srcs) == 2 * 2 * 2  # Coalesce source pages 1 through 3 into destination pages 4 through 6; copy page 9 separately.
    pb = PS * 2 * 4 * 2
    assert lens[:2] == [3 * pb, pb]
    assert srcs[2] == L.page_addr(LAYOUT_P, 0, 1, 1)


class World:
    """P and D ledgers plus a simulated network and RDMA engine.

    Memory is simulated per page as a tag.  An RDMA write copies the source tag at the time it
    lands (the NIC reads the source lazily), and a failed engine call may still land any subset
    of its writes later (H-fail / H-retry).  Every local step checks that the KV it reads is the
    KV the request should see; a freed-too-early page shows up as a wrong tag.
    """

    def __init__(self, rng: random.Random, n_p: int = 24, n_d: int = 24, check_every: int = 1):
        self.rng = rng
        self.lp = [3, PS, 1, 1, 1, n_p + 1, 0, BF16, MODEL]
        self.ld = [3, PS, 1, 1, 1, n_d + 1, 1 << 30, BF16, MODEL]
        self.p = RefLedger(n_p, self.lp, P_INST, check_every=check_every)
        self.d = RefLedger(n_d, self.ld, D_INST, check_every=check_every)
        assert self.p.register_peer(D_INST, self.ld) == L.OK
        assert self.d.register_peer(P_INST, self.lp) == L.OK
        self.pmem = [None] * n_p
        self.dmem = [None] * n_d
        self.pstep = self.dstep = 0
        self.pdone = self.ddone = 0
        self.pending_writes = []  # (src_page, dst_page) not yet landed
        self.to_p = []
        self.to_d = []
        self.room = 0
        self.dreq = {}
        self.preq = {}
        self.engine = []  # eids submitted to the engine and not returned
        self.lost = False
        self.posted = []  # P entries registered but not yet handed to the engine

    def land_some(self):
        keep = []
        for sp, dp in self.pending_writes:
            if self.rng.random() < 0.5:
                self.dmem[dp] = self.pmem[sp]
            else:
                keep.append((sp, dp))
        self.pending_writes = keep

    def p_new(self):
        self.room += 1
        room, ntok = self.room, self.rng.randint(1, 3)
        g = self.p.open_req(-1)
        pages = self.p.alloc(g, ntok)
        if not pages:
            self.p.release(g)
            return
        self.pstep += 1
        self.p.launch(self.pstep, [(g, 0, ntok)])
        for i, pg in enumerate(pages):
            self.pmem[pg] = (room, i)
        self.preq[room] = (g, ntok)
        # D side for the same room (no new transfers once the P instance is lost)
        if self.lost:
            return
        gd = self.d.open_req(room)
        dp = self.d.alloc(gd, ntok)
        if not dp:
            self.d.release(gd)
            return
        xid = self.d.d_expect(gd, P_INST, ntok)
        self.dreq[room] = dict(gen=gd, xid=xid, ntok=ntok, st="wait")
        self.to_p.append(("req", room, gd, xid, ntok, dp))

    def step(self):
        acts = [(10, self.p_new)]
        if self.pdone < self.pstep:
            acts.append((12, self.p_complete))
        if self.to_p and not self.lost:
            acts.append((14, self.p_deliver))
        if self.posted:
            acts.append((10, lambda: self.p_submit(*self.posted.pop(
                self.rng.randrange(len(self.posted))))))
        if self.engine:
            acts.append((10, self.engine_return))
        if self.to_d:
            acts.append((14, self.d_deliver))
        if self.pending_writes:
            acts.append((4, self.land_some))
        acts.append((10, self.d_decode))
        if self.ddone < self.dstep:
            acts.append((8, self.d_complete))
        acts.append((2, self.d_abort_or_timeout))
        acts.append((2, self.p_reuse))
        if not self.lost and self.pstep > 25:
            acts.append((0.5, self.lose_peer))
        tot = sum(w for w, _ in acts)
        x = self.rng.random() * tot
        for w, fn in acts:
            x -= w
            if x < 0:
                fn()
                return
        acts[-1][1]()

    def p_complete(self):
        self.pdone += 1
        self.p.complete(self.pdone)

    def d_complete(self):
        self.ddone += 1
        self.d.complete(self.ddone)

    def p_deliver(self):
        i = 0 if self.rng.random() < 0.7 else self.rng.randrange(len(self.to_p))
        self.p_handle(self.to_p.pop(i))

    def d_deliver(self):
        m = self.to_d.pop(self.rng.randrange(len(self.to_d)))
        if self.rng.random() < 0.1:
            self.to_d.append(m)  # duplicate delivery
        self.d_handle(m)

    def engine_return(self):
        eid, room, gd, xid, ok_write = self.engine.pop(self.rng.randrange(len(self.engine)))
        ok = self.rng.random() < 0.85
        if ok:  # every write landed before local completion
            for sp, dp in ok_write:
                self.dmem[dp] = self.pmem[sp]
        else:  # some writes may land later, any subset, any time (H-fail / H-retry)
            self.pending_writes.extend(ok_write)
        res = self.p.p_done(eid, ok)
        if res == L.SEND_DONE:
            self.to_d.append(("done", room, gd, xid, self.dreq.get(room, {}).get("ntok", 0)))
        elif res == L.SEND_ACK:
            self.to_d.append(("ack", room, gd, xid))
        elif res == L.SEND_FAIL_UNSTOPPED:
            self.to_d.append(("fail", room, gd, xid))

    def lose_peer(self):
        self.lost = True
        for xid in self.d.peer_lost(P_INST):
            for rq in self.dreq.values():
                if rq["xid"] == xid and rq["st"] in ("wait", "abort"):
                    if rq["st"] == "wait":
                        self.d.release(rq["gen"])
                    rq["st"] = "dead"
        self.p.peer_lost(D_INST)
        self.to_p.clear()
        self.posted.clear()

    def p_handle(self, m):
        if m[0] == "req":
            _, room, gd, xid, ntok, dp = m
            gp, pn = self.preq.get(room, (0, 0))
            if not gp:
                self.to_d.append(("ack", room, gd, xid))  # unknown room: stopped failure
                return
            eid = self.p.p_post(gp, ntok, D_INST, room, gd, xid, dp)
            if eid < 0:
                if eid == L.REJ_SRC:
                    self.to_p.append(m)  # prefill not complete yet: retry later
                else:
                    self.to_d.append(("ack", room, gd, xid))
                return
            if self.rng.random() < 0.5:
                self.preq.pop(room)
                self.p.release(gp)
            else:
                self.preq[room] = (gp, pn)
            self.posted.append((eid, room, gd, xid, dp))
        elif m[0] == "abort":
            _, room, gd, xid = m
            res = self.p.p_abort(D_INST, xid)
            if res == L.SEND_ACK:
                self.to_d.append(("ack", room, gd, xid))
            elif res == L.SEND_FAIL_UNSTOPPED:
                self.to_d.append(("fail", room, gd, xid))

    def p_submit(self, eid, room, gd, xid, dp):
        if self.p.p_begin(eid):
            # decode the ledger's address plan back into page pairs (page bytes = 1 here):
            # this also tests the address arithmetic
            srcs, dsts, lens = self.p.p_plan(eid)
            nruns = len(srcs) // (2 * self.lp[0])
            pairs = []
            for s, d, n in zip(srcs[:nruns], dsts[:nruns], lens[:nruns]):
                sp0 = (s - self.lp[6]) % self.lp[5]
                dp0 = (d - self.ld[6]) % self.ld[5]
                pairs += [(sp0 + i, dp0 + i) for i in range(n)]
            assert sorted(q for _, q in pairs) == sorted(dp)
            self.engine.append((eid, room, gd, xid, pairs))

    def p_reuse(self):
        # release some P requests that still hold pages and overwrite freed pages
        for room in list(self.preq):
            if self.rng.random() < 0.5:
                gp, _ = self.preq.pop(room)
                self.p.release(gp)
        for pg in range(len(self.pmem)):
            if self.p.pst[pg] == L.FREE:
                self.pmem[pg] = ("garbage", pg)

    def d_handle(self, m):
        kind, room, gd, xid = m[:4]
        rq = self.dreq.get(room)
        if kind == "done":
            code = self.d.d_landed(P_INST, room, gd, xid, m[4])
            if code == L.OK and rq and rq["xid"] == xid and rq["st"] == "wait":
                self.d.d_mark_visible(xid)
                rq["st"] = "ready"
                rq["len"] = rq["ntok"]
        elif kind == "ack":
            code = self.d.d_stopped(P_INST, room, gd, xid)
            if code == L.OK and rq and rq["xid"] == xid and rq["st"] == "wait":
                self.d.release(gd)
                rq["st"] = "dead"
        elif kind == "fail":
            if rq and rq["xid"] == xid and rq["st"] in ("wait", "abort"):
                if self.d.d_unstopped(xid, L.Q_TRANSFER_FAILED) == L.OK and rq["st"] == "wait":
                    self.d.release(gd)
                rq["st"] = "dead"

    def d_decode(self):
        items = []
        for room, rq in self.dreq.items():
            if rq["st"] == "ready" and self.rng.random() < 0.7:
                gen = rq["gen"]
                if rq["len"] >= len(self.d.pages_of(gen)) * PS:
                    if not self.d.alloc(gen, 1):
                        continue
                items.append((room, rq))
        if not items:
            return
        self.dstep += 1
        launch = [(rq["gen"], rq["len"], rq["len"] + 1) for _, rq in items]
        self.d.launch(self.dstep, launch)
        for room, rq in items:
            pages = self.d.pages_of(rq["gen"])
            # the read: transferred tokens must carry this room's KV, decoded ones ours
            for i in range(rq["len"]):
                want = (room, i) if i < rq["ntok"] else ("D", room, i)
                assert self.dmem[pages[i]] == want, (room, i, self.dmem[pages[i]], want)
            self.dmem[pages[rq["len"]]] = ("D", room, rq["len"])
            rq["len"] += 1
            if rq["len"] >= rq["ntok"] + 3 or self.rng.random() < 0.2:
                self.d.release(rq["gen"])
                rq["st"] = "done"

    def d_abort_or_timeout(self):
        waiting = [(room, rq) for room, rq in self.dreq.items() if rq["st"] == "wait"]
        aborting = [(room, rq) for room, rq in self.dreq.items() if rq["st"] == "abort"]
        if not waiting or (aborting and self.rng.random() < 0.3):
            if aborting and self.rng.random() < 0.3:  # ack never came: quarantine
                room, rq = self.rng.choice(aborting)
                self.d.d_unstopped(rq["xid"], L.Q_CANCELLED)
                rq["st"] = "dead"
            return
        room, rq = self.rng.choice(waiting)
        if self.rng.random() < 0.5:  # client abort: release, ask P to stop, wait for ACK
            self.d.release(rq["gen"])
            rq["st"] = "abort"
            self.to_p.append(("abort", room, rq["gen"], rq["xid"]))
        else:  # waiting timeout: quarantine at once, still tell P
            self.d.d_unstopped(rq["xid"], L.Q_TIMEOUT)
            self.d.release(rq["gen"])
            rq["st"] = "dead"
            self.to_p.append(("abort", room, rq["gen"], rq["xid"]))

    def drain(self):
        """Quiesce: finish engine calls, steps, and messages; then check conservation."""
        for _ in range(2000):
            if self.pdone < self.pstep:
                self.pdone += 1
                self.p.complete(self.pdone)
            elif self.ddone < self.dstep:
                self.ddone += 1
                self.d.complete(self.ddone)
            elif self.posted:
                self.p_submit(*self.posted.pop())
            elif self.engine:
                self.rng.random()
                eid, room, gd, xid, pairs = self.engine.pop()
                for sp, dp in pairs:
                    self.dmem[dp] = self.pmem[sp]
                res = self.p.p_done(eid, True)
                if res == L.SEND_DONE:
                    self.to_d.append(("done", room, gd, xid, self.dreq.get(room, {}).get("ntok", 0)))
                elif res == L.SEND_ACK:
                    self.to_d.append(("ack", room, gd, xid))
            elif self.to_p and not self.lost:
                self.p_handle(self.to_p.pop(0))
            elif self.to_d:
                self.d_handle(self.to_d.pop(0))
            else:
                break
        for room, rq in self.dreq.items():
            if rq["st"] in ("wait",):
                self.d.d_unstopped(rq["xid"], L.Q_TIMEOUT)
                self.d.release(rq["gen"])
                rq["st"] = "dead"
            elif rq["st"] == "abort":
                self.d.d_unstopped(rq["xid"], L.Q_CANCELLED)
                rq["st"] = "dead"
            elif rq["st"] == "ready":
                self.d.release(rq["gen"])
                rq["st"] = "done"
        for room in list(self.preq):
            self.p.release(self.preq.pop(room)[0])
        for led in (self.p, self.d):
            led.check()
            st = led.stats()
            # quiescent conservation: every page is FREE or QUARANTINED
            assert st["free"] + st["quarantined"] == led.num_pages, st
            assert st["private"] == 0 and st["draining"] == 0, st


@pytest.mark.parametrize("seed", range(150))
def test_randomized_pd_world(seed):
    rng = random.Random(seed)
    w = World(rng)
    for _ in range(400):
        w.step()
    w.drain()


def test_randomized_world_covers_paths():
    """The randomized world must actually reach every interesting path (else it proves little)."""
    tot = {}
    decodes = 0
    for seed in range(60):
        w = World(random.Random(seed))
        for _ in range(400):
            w.step()
        decodes += w.dstep
        w.drain()
        for led in (w.p, w.d):
            for k, v in led.stats().items():
                tot[k] = tot.get(k, 0) + v
    for key in ("xfers_landed", "xfers_stopped", "xfers_quarantined", "entries_done",
                "entries_failed", "entries_cancelled", "dropped_msgs", "quarantined_timeout",
                "quarantined_transfer_failed", "quarantined_cancelled", "quarantined_peer_lost"):
        assert tot.get(key, 0) > 0, (key, tot)
    assert decodes > 100


# Each mutant reintroduces one known bug class; the behavioural oracle of the randomized world
# (KV tags read by decode steps, conservation at quiescence) must catch it with the ledger's own
# invariant scan switched off (check_every=0), i.e. the tests observe behaviour, not internals.


def _mut_free_while_busy(self, p):  # Reproduce reuse while an access remains in flight.
    if self.pst[p] == L.DRAINING:
        self.pst[p] = L.FREE
        self.pown[p] = 0
        self.free.append(p)
        return True
    return False


def _mut_timeout_frees(self, xid, reason):  # Reproduce a timeout incorrectly treated as stop evidence.
    x = self.xfers.get(xid)
    if x is None or x.state != L.X_POSTED:
        return L.DROP_STATE
    r = self.reqs.get(x.gen)
    if r is not None and r.state == L.R_LIVE:
        r.state = L.R_FAILED
    self._stop_xfer(xid, x, L.X_STOPPED)
    return L.OK


def _mut_release_frees_busy(self, gen):  # Reproduce release that ignores all in-flight accesses.
    r = self.reqs[gen]
    r.state = L.R_RELEASED
    for p in r.pages:
        if self.pown[p] == gen and self.pst[p] in (L.PRIVATE, L.DRAINING):
            self.pst[p] = L.FREE
            self.pown[p] = 0
            self.pops[p] = set()
            self.free.append(p)
    self._gc_req(gen)
    return 0


@pytest.mark.parametrize("name,attr,fn", [
    ("free_while_busy", "_try_free", _mut_free_while_busy),
    ("timeout_frees", "d_unstopped", _mut_timeout_frees),
    ("release_frees_busy", "release", _mut_release_frees_busy),
])
def test_mutants_are_caught(monkeypatch, name, attr, fn):
    monkeypatch.setattr(RefLedger, attr, fn)
    caught = 0
    for seed in range(150):
        w = World(random.Random(seed), check_every=0)
        try:
            for _ in range(400):
                w.step()
            w.drain()
        except (AssertionError, LedgerViolation, KeyError):
            caught += 1
    assert caught > 0, name


def test_token_slots_are_ledger_computed():
    lay = [2, 4, 2, 4, 2, 17, 1 << 40, BF16, MODEL]
    d = RefLedger(16, lay, D_INST, check_every=1)
    g = d.open_req(1)
    pages = d.alloc(g, 2)
    assert d.token_slots(g, 0, 8) == [pages[t // 4] * 4 + t % 4 for t in range(8)]
    assert d.token_slots(g, 5, 7) == [pages[1] * 4 + 1, pages[1] * 4 + 2]
    with pytest.raises(LedgerViolation):
        d.token_slots(g, 0, 9)  # beyond the request's pages


def test_reference_implements_the_whole_interface():
    names = [n for n, v in vars(L.Ledger).items() if callable(v) and not n.startswith("_")]
    assert len(names) == 36
    for n in names:
        assert callable(getattr(RefLedger, n, None)), n


def test_dummy_page_ledger_never_owns_the_dummy_page():
    """The dummy page belongs to graph padding and must never be allocated by the ledger."""
    with pytest.raises(LedgerViolation):
        RefLedger(17, LAYOUT_D, D_INST)
    assert RefLedger(16, LAYOUT_D, D_INST).free_pages() == 16


@pytest.mark.parametrize("name,a,b", [
    ("fp8_e5m2_vs_e4m3", "float8_e5m2", "float8_e4m3fn"),  # the Z3 counterexample (1 byte each)
    ("bf16_vs_fp16", "bfloat16", "float16"),  # 2 bytes each
])
def test_layout_same_itemsize_different_dtype_refused(name, a, b):
    lay_d = list(LAYOUT_D)
    lay_d[7] = L.DTYPE_CODES[a]
    lay_p = list(LAYOUT_P)
    lay_p[7] = L.DTYPE_CODES[b]
    d = RefLedger(16, lay_d, D_INST, check_every=1)
    assert lay_d[:5] == lay_p[:5]  # the compatibility comparison would have accepted this pair
    assert d.register_peer(P_INST, lay_p) == L.REJ_LAYOUT


@pytest.mark.parametrize("idx", range(len(L.LAYOUT_FIELDS)))
def test_ct_layout_every_compared_field_matters(idx):
    """layout agreement negative test at the ledger: changing any compared field refuses the peer;
    the per-instance fields (pool_pages, base_ptr) may differ."""
    d = RefLedger(16, LAYOUT_D, D_INST, check_every=1)
    other = list(LAYOUT_P)
    other[idx] += 1
    want = L.REJ_LAYOUT if idx in L.LAYOUT_COMPARED else L.OK
    assert d.register_peer(P_INST, other) == want, L.LAYOUT_FIELDS[idx]


def test_layout_geometry_only_comparison_is_a_killed_mutant(monkeypatch):
    """The compatibility check (layout[:5]) accepts the e5m2 / e4m3 pair; the test above kills it."""
    monkeypatch.setattr(L, "layout_key", lambda lay: list(lay[:5]))
    lay_p = list(LAYOUT_P)
    lay_p[7] = L.DTYPE_CODES["float8_e5m2"]
    d = RefLedger(16, LAYOUT_D, D_INST)
    assert d.register_peer(P_INST, lay_p) == L.OK  # the bug, reproduced under the mutant
