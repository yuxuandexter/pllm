"""KernelReadPins compatibility (trace conformance compatibility, trace/README.md 15.7): per-step trace lines and P entry pages.

1. Every ``launch`` / ``k_launch`` writes a ``klaunch`` step line (step, ``it`` = [[row, gen, rd, wr], ...]
   in batch order, ``npad``) and every ``complete`` / ``step_done`` a ``kdone`` line, P and D, so
   D's step completions and a request's later launches are observed (no inferred KDone), and no
   ledger call consumes a seq without a line (the untraced completion P holes are gone; ``MINISGL_PD_TRACE_STEPS
   =0`` brings them back).  NoFreeUnderRead is decidable from the lines: a release while a step
   that reads the gen is between its klaunch and kdone frees no page.
2. ``begin`` / ``done`` / ``abort`` lines carry the entry's source pages and their states before /
   after the call (one test per outcome), so failed-write-not-drained (failed -> drained) shows on the line.
3. ``StepLineHandler``: in a server process step lines are held and written with the next other
   line in one write (or at the line / age cap, flush, scheduler idle, process exit), file order =
   seq order.
Runs with the Python ledger.
"""

from __future__ import annotations

import io
import json
import logging
import multiprocessing as mp
import os
import time

import pytest
from toy import ToyD, ToyP, run_until

from minisgl.disagg import ledger as L
from minisgl.disagg import trace as T

TRACE = "minisgl.disagg.trace"
KL = {"k", "ev", "inst", "side", "step", "it", "npad", "seq"}
KD = {"k", "ev", "inst", "side", "step", "seq"}


class _Grab(logging.Handler):
    def __init__(self):
        super().__init__(logging.INFO)
        self.recs = []

    def emit(self, record):
        m = record.getMessage()
        if m.startswith("PDT "):
            self.recs.append(json.loads(m[4:]))


def attach():
    """Capture every PDT record at the trace logger itself (init_logger turns propagation off,
    so caplog does not see them after a PDHooks was built in this process)."""
    lg = logging.getLogger(TRACE)
    h = _Grab()
    lg.addHandler(h)
    h.old_level = lg.level
    lg.setLevel(logging.INFO)
    return h


def detach(h):
    lg = logging.getLogger(TRACE)
    lg.removeHandler(h)
    lg.setLevel(h.old_level)


@pytest.fixture
def pdt():
    h = attach()
    yield h.recs
    detach(h)


@pytest.fixture
def nodes():
    made = []

    def make(n_d=1, d_kw=None, p_kw=None):
        p = ToyP(f"tp-{time.monotonic_ns()}", **(p_kw or {}))
        ds = [ToyD(f"td{i}-{time.monotonic_ns()}", **(d_kw or {})) for i in range(n_d)]
        made.extend([p] + ds)
        return p, ds

    yield make
    for n in made:
        n.close()



def of(rs, **kw):
    return [r for r in rs if all(r.get(k) == v for k, v in kw.items())]


def steps_of(rs, inst):
    """step -> (klaunch line, kdone line or None) of one instance."""
    out = {}
    for r in of(rs, k="step", inst=inst):
        if r["ev"] == "klaunch":
            assert r["step"] not in out, r  # each step launched once
            out[r["step"]] = [r, None]
        else:
            assert out[r["step"]][1] is None, r  # done once, after its launch
            out[r["step"]][1] = r
    return out


def _two_requests(nodes, max_new=4):
    p, (d,) = nodes()
    uids = []
    for room, pr in ((5, [1, 2, 3]), (6, [4, 5])):
        p.submit(room, pr, rid=f"r-{room}")
        uids.append(d.submit(room, pr, p.port, max_new, rid=f"r-{room}"))
    assert run_until(lambda: all(u in d.outputs for u in uids) and not d.running, [p, d])
    return p, d


# ------------------------------------------------------------------------------ 1. step lines
def test_step_lines_on_p_and_d(monkeypatch, nodes, pdt):
    cls = L.PyRefLedger
    monkeypatch.setattr(L, "RefLedger", cls)  # what toy.ToyP / ToyD construct
    p, d = _two_requests(nodes)
    assert type(d.ledger.inner) is cls
    for node in (p, d):
        inst = hex(node.inst)
        st = steps_of(pdt, inst)
        assert sorted(st) == list(range(1, node.step + 1)) and node.step >= 1
        prev = 0
        for s in sorted(st):
            kl, kd = st[s]
            assert set(kl) == KL and set(kd) == KD, (kl, kd)
            assert kl["side"] == kd["side"] == ("P" if node is p else "D")
            assert kl["seq"] < kd["seq"] and kd["seq"] > prev  # done after launch, in step order
            prev = kd["seq"]
            assert kl["npad"] == 0 and kl["it"] and all(row == -1 for row, _, _, _ in kl["it"])  # toy: no rows
        # each first launch (read line) follows its step's klaunch line and names a gen of it
        for rd in of(pdt, k="call", ev="read", inst=inst):
            kl = st[rd["step"]][0]
            assert kl["seq"] < rd["seq"] and rd["h"] in [g for _, g, _, _ in kl["it"]]
    # D: the later launches of a request are on the klaunch lines (3 decode steps each here)
    dst = steps_of(pdt, hex(d.inst))
    for rd in of(pdt, k="call", ev="read", inst=hex(d.inst)):
        n = sum(1 for kl, _ in dst.values() if rd["h"] in [g for _, g, _, _ in kl["it"]])
        assert n == 3, (rd, n)


def test_seq_has_no_holes_and_complete_points_at_its_kdone(monkeypatch, nodes, pdt):
    """untraced completion: P's complete calls took a seq without a line.  Now every seq is a line."""
    monkeypatch.setattr(L, "RefLedger", L.PyRefLedger)
    p, d = _two_requests(nodes)
    seqs = sorted(r["seq"] for r in pdt)
    assert seqs == list(range(seqs[0], seqs[-1] + 1)), "seq holes"
    kd = {r["seq"]: r for r in of(pdt, k="step", ev="kdone", inst=hex(p.inst))}
    comps = of(pdt, k="call", ev="complete", inst=hex(p.inst))
    assert len(comps) == 2
    for c in comps:
        assert c["at_seq"] in kd and kd[c["at_seq"]]["step"] == c["step"], c
        post = [r for r in of(pdt, ev="post", h=c["h"], inst=hex(p.inst))][0]
        assert c["at_seq"] < post["seq"]  # the source was written before it was posted


def test_step_lines_off_restores_the_untraced_completion_holes(monkeypatch, nodes, pdt):
    monkeypatch.setattr(T, "STEP_LINES", False)
    p, d = _two_requests(nodes)
    assert not of(pdt, k="step")
    seqs = sorted(r["seq"] for r in pdt)
    holes = sorted(set(range(seqs[0], seqs[-1] + 1)) - set(seqs))
    assert len(holes) == p.step  # one per P completion, none for D (as before this round)
    assert {c["at_seq"] for c in of(pdt, ev="complete")} <= set(holes)


def test_refused_launch_and_completion_write_only_rejected_lines(pdt):
    lay = [2, 1, 1, 1, 1, 9, 0, 1, 1]
    t = T.wrap(L.RefLedger(8, lay, 0x5A, check_every=1), 0x5A, "D")
    g = t.open_req(1)
    t.alloc(g, 2)
    t.k_launch(1, [(g, 0, 2)])
    t.step_done(1)
    n, seq = len(pdt), T._SEQ[0]
    with pytest.raises(L.LedgerViolation):
        t.k_launch(2, [(g, 3, 4)])  # reads 3 tokens, 2 written
    with pytest.raises(L.LedgerViolation):
        t.step_done(2)  # never launched
    assert len(pdt) == n + 2 and T._SEQ[0] == seq + 2
    rejects = pdt[n:]
    assert [r["seq"] for r in rejects] == [seq + 1, seq + 2]
    assert all(r["k"] == r["ev"] == "rejected" for r in rejects)
    assert [r["m"] for r in rejects] == ["k_launch", "step_done"]
    assert rejects[0]["args"] == [2, [[g, 3, 4]], 0]
    assert rejects[1]["args"] == [2]
    assert t.inner.step == t.inner.done == 1  # refusal still leaves ledger unchanged
    assert [(r["ev"], r["step"]) for r in of(pdt, k="step")] == [("klaunch", 1), ("kdone", 1)]


# -------------------------------------------------------------- 1b. the real Scheduler (stub)


@pytest.fixture
def S(monkeypatch):
    """The real Scheduler + stub engine helpers (need torch; imported only by these tests), with
    the stub module's no-pinned-memory patches (its autouse fixture does not reach this file)."""
    torch = pytest.importorskip("torch")
    import test_scheduler_stub as stub

    real_empty, real_tensor = torch.empty, torch.tensor

    def empty(*a, **kw):
        kw.pop("pin_memory", None)
        return real_empty(*a, **kw)

    def tensor(*a, **kw):
        kw.pop("pin_memory", None)
        return real_tensor(*a, **kw)

    monkeypatch.setattr(torch, "empty", empty)
    monkeypatch.setattr(torch, "tensor", tensor)
    monkeypatch.setattr(torch.Tensor, "pin_memory", lambda self, *a, **k: self)
    return stub


PROMPTS = {u: [(u * 31 + i * 7) % 900 + 3 for i in range(3 + u % 9)] for u in range(1, 13)}


def test_scheduler_klaunch_lines_carry_rows_and_padding(S):
    p, d, _, _ = S.pd_pair(1, pad=True)
    h = attach()  # after the PDHooks were built (init_logger cleared the trace handlers)
    try:
        for uid, pr in PROMPTS.items():
            S.send_pd(p, d, uid, 9100 + uid, pr, 6)
        assert S.run([p, d], lambda: S.finished(d, PROMPTS))
        rs = h.recs
        for s in (p, d):
            inst = hex(s.pd.inst)
            st = steps_of(rs, inst)
            assert len(st) == s.pd.kargs_stats["kargs_steps"] > 0
            assert sum(kl["npad"] for kl, _ in st.values()) == s.pd.kargs_stats["kargs_pad_rows"]
            for kl, kd in st.values():
                rows = [row for row, _, _, _ in kl["it"]]
                assert all(row >= 0 for row in rows) and len(set(rows)) == len(rows)
            for rd in of(rs, k="call", ev="read", inst=inst):  # first launch: same row on both
                assert [rd["row"], rd["h"], rd["rd"], rd["wr"]] in st[rd["step"]][0]["it"], rd
        assert sum(kl["npad"] for kl, _ in steps_of(rs, hex(d.pd.inst)).values()) > 0
        lg = logging.getLogger(TRACE)
        assert any(isinstance(x, T.StepLineHandler) for x in lg.handlers)  # PDHooks holds them
    finally:
        detach(h)
        S.close(p, d)


@pytest.mark.parametrize("overlap", [True, False])
def test_release_under_read_is_decidable_from_the_lines(S, overlap):
    """NoFreeUnderRead on the trace alone: for every D release, the steps whose klaunch line
    lists the gen and whose kdone line comes after the release are the ones still reading it;
    then the release frees no page (post has no "free").  Under overlap the EOS request is
    released while step k+1 reads it (pages draining); without overlap nothing is in flight."""
    p, d, _, _ = S.pd_pair(1)
    d.engine.eos_at = {3: 1}
    h = attach()
    four = {u: PROMPTS[u] for u in (1, 2, 3, 4)}
    try:
        for uid, pr in four.items():
            S.send_pd(p, d, uid, 9600 + uid, pr, 6)
        done = lambda: all(any(f for _, f in d.outputs.get(u, [])) for u in four)  # noqa: E731
        assert S.run([p, d], done, overlap=overlap)
        assert d.outputs[3][2] == (S.EOS, True)
        rs, inst = h.recs, hex(d.pd.inst)
        st = steps_of(rs, inst)
        under = 0
        for rel in of(rs, k="call", ev="release", inst=inst):
            reading = [s for s, (kl, kd) in st.items() if kl["seq"] < rel["seq"]
                       and (kd is None or kd["seq"] > rel["seq"])
                       and rel["h"] in [g for _, g, _, _ in kl["it"]]]
            if reading:
                under += 1
                assert "free" not in rel["post"] and rel["post"].get("draining"), (rel, reading)
            else:
                assert rel["post"] == {"free": len(T.unruns(rel["pages"]))}, rel
        assert (under >= 1) if overlap else (under == 0)
    finally:
        detach(h)
        S.close(p, d)


# --------------------------------------------------------------- 2. P entry pages per outcome
D_PEER = 0xD7
LAY_P = [2, 1, 1, 2, 4, 17, 2 << 40, L.DTYPE_CODES["float32"], 7]  # as test_kargs.lay
LAY_D = [2, 1, 1, 2, 4, 17, 1 << 40, L.DTYPE_CODES["float32"], 7]


def _p(monkeypatch, n=3, ntok=3):
    """A traced P ledger with one prefilled request of ntok tokens on n pages."""
    monkeypatch.setattr(L, "RefLedger", L.PyRefLedger)
    t = T.wrap(L.RefLedger(16, LAY_P, 0xB7, check_every=1), 0xB7, "P")
    assert t.register_peer(D_PEER, LAY_D) == L.OK
    g = t.open_req(1)
    src = t.alloc(g, n)
    t.k_launch(1, [(g, 0, ntok)])
    t.step_done(1)
    return t, g, src


def _post(t, g, xid=11, ntok=3):
    eid = t.p_post(g, ntok, D_PEER, 1, 1, xid, [0, 1, 2][:ntok])
    assert eid > 0
    return eid


def _line(rs, ev):
    return of(rs, k="call", ev=ev)[-1]


def _pages(r):
    return T.unruns(r["pages"])


def test_entry_done(monkeypatch, pdt):
    t, g, src = _p(monkeypatch)
    eid = _post(t, g)
    assert t.p_begin(eid)
    b = _line(pdt, "begin")
    assert (b["entry"], b["res"], _pages(b)) == ("posted", True, src)
    assert b["pre"] == b["post"] == {"private": 3}
    t.release(g)  # the P request ends after post (source entry lifetime / source-release ordering shape): the entry holds the pages
    assert _line(pdt, "release")["post"] == {"draining": 3}
    assert t.p_done(eid, True) == L.SEND_DONE
    dn = _line(pdt, "done")
    assert (dn["result"], _pages(dn), dn["eid"], dn["h"]) == ("done", src, eid, g)
    assert dn["pre"] == {"draining": 3} and dn["post"] == {"free": 3}
    assert "src" not in t.eid_ctx[eid]  # collected: the pages are no longer the entry's


def test_entry_ack(monkeypatch, pdt):
    t, g, src = _p(monkeypatch)
    eid = _post(t, g)
    assert t.p_begin(eid)
    assert t.p_abort(D_PEER, 11) == L.SEND_NOTHING  # D aborted while the write runs
    ab = _line(pdt, "abort")
    assert (ab["entry"], ab["result"], _pages(ab)) == ("submitted", "nothing", src)
    assert ab["pre"] == ab["post"] == {"private": 3}
    t.release(g)
    assert t.p_done(eid, True) == L.SEND_ACK
    dn = _line(pdt, "done")
    assert (dn["result"], _pages(dn)) == ("ack", src)
    assert dn["pre"] == {"draining": 3} and dn["post"] == {"free": 3}


def test_entry_fail_unstopped_quarantines_and_later_abort_sees_it(monkeypatch, pdt):
    """failed-write-not-drained (failedAsDrained) is decidable from this line: a failed write's source pages
    must be quarantined after p_done(False), never draining or free."""
    t, g, src = _p(monkeypatch)
    eid = _post(t, g)
    assert t.p_begin(eid)
    t.release(g)
    assert t.p_done(eid, False) == L.SEND_FAIL_UNSTOPPED
    dn = _line(pdt, "done")
    assert (dn["result"], _pages(dn)) == ("fail_unstopped", src)
    assert dn["pre"] == {"draining": 3} and dn["post"] == {"quarantined": 3}
    assert t.p_abort(D_PEER, 11) == L.SEND_FAIL_UNSTOPPED
    ab = _line(pdt, "abort")
    assert (ab["entry"], ab["result"], _pages(ab)) == ("failed", "fail_unstopped", src)
    assert ab["pre"] == ab["post"] == {"quarantined": 3}
    assert "src" in t.eid_ctx[eid]  # a failed entry is kept by the ledger, and so are its pages


def test_entry_cancelled_before_begin(monkeypatch, pdt):
    t, g, src = _p(monkeypatch)
    eid = _post(t, g)
    t.release(g)
    assert t.p_abort(D_PEER, 11) == L.SEND_ACK
    ab = _line(pdt, "abort")
    assert (ab["entry"], ab["result"], _pages(ab)) == ("posted", "ack", src)
    assert ab["pre"] == {"draining": 3} and ab["post"] == {"free": 3}
    assert t.p_begin(eid) is False  # the worker comes too late: no engine call
    b = _line(pdt, "begin")
    assert (b["entry"], b["res"], b["pages"], b["pre"], b["post"]) == ("none", False, [], {}, {})


def test_entry_tombstone_and_abort_after_done_hold_no_pages(monkeypatch, pdt):
    t, g, src = _p(monkeypatch)
    assert t.p_abort(D_PEER, 99) == L.SEND_ACK  # never posted: tombstone
    ab = _line(pdt, "abort")
    assert (ab["entry"], ab["eid"], ab["pages"], ab["pre"], ab["post"]) == ("none", -1, [], {}, {})
    eid = _post(t, g)
    assert t.p_begin(eid) and t.p_done(eid, True) == L.SEND_DONE
    assert t.p_abort(D_PEER, 11) == L.SEND_ACK  # finished with stopped evidence: collected
    ab = _line(pdt, "abort")
    assert (ab["entry"], ab["eid"], ab["pages"], ab["post"]) == ("none", eid, [], {})


def test_entry_cancelled_by_peer_loss(monkeypatch, pdt):
    t, g, src = _p(monkeypatch)
    eid = _post(t, g)
    assert t.peer_lost(D_PEER) == [eid]
    assert "src" not in t.eid_ctx[eid]
    assert t.p_begin(eid) is False
    b = _line(pdt, "begin")
    assert (b["entry"], b["pages"]) == ("none", [])
    assert t.page_states(src) == [L.PRIVATE] * 3  # the request still owns them


def test_entry_lines_on_the_toy_failure_path(nodes, pdt):
    """End to end (toy P, D over TCP, fake RDMA): a write that fails shows its quarantine on
    P's done line; the success path's done line shows the pages freed."""
    p, (d,) = nodes()
    p.backend.fail_next = 1
    p.submit(5, [1, 2, 3], rid="r-f")
    u1 = d.submit(5, [1, 2, 3], p.port, 2, rid="r-f")
    assert run_until(lambda: u1 in d.failed, [p, d])
    p.submit(6, [4, 5], rid="r-ok")
    u2 = d.submit(6, [4, 5], p.port, 2, rid="r-ok")
    assert run_until(lambda: u2 in d.outputs and not d.running, [p, d])
    f = of(pdt, ev="done", rid="r-f")[0]
    ok = of(pdt, ev="done", rid="r-ok")[0]
    assert f["result"] == "fail_unstopped" and f["post"] == {"quarantined": 3}
    assert ok["result"] == "done" and len(_pages(ok)) == 2 and sum(ok["post"].values()) == 2
    assert set(ok["post"]) <= {"free", "private"}  # private if the P request is not released yet
    post = of(pdt, ev="post", rid="r-ok")[0]
    assert ok["pages"] == post["pages"]  # the same pages the post line registered


# ----------------------------------------------------------------- 3. StepLineHandler
class _Stream(io.StringIO):
    def __init__(self):
        super().__init__()
        self.nwrites = 0

    def write(self, s):
        self.nwrites += 1
        return super().write(s)


def _holder(monkeypatch, **cfg):
    for k, v in cfg.items():
        monkeypatch.setattr(T, k, v)
    s = _Stream()
    h = T.StepLineHandler(s, logging.Formatter("[%(levelname)s] %(message)s"))
    lg = logging.getLogger("minisgl.test.steps")
    lg.handlers[:] = [h]
    lg.setLevel(logging.INFO)
    lg.propagate = False
    return lg, h, s


def test_holder_writes_step_lines_with_the_next_other_line(monkeypatch):
    lg, h, s = _holder(monkeypatch)
    lg.info("PDT a", extra={"pd_step": True})
    lg.info("PDT b", extra={"pd_step": True})
    assert s.getvalue() == "" and s.nwrites == 0  # held
    lg.info("PDT c")
    assert s.getvalue() == "[INFO] PDT a\n[INFO] PDT b\n[INFO] PDT c\n" and s.nwrites == 1
    lg.info("PDT d")
    assert s.nwrites == 2  # other lines: one write each, as before


def test_holder_line_and_age_caps(monkeypatch):
    lg, h, s = _holder(monkeypatch, STEP_HOLD_LINES=3)
    for x in "abc":
        lg.info(x, extra={"pd_step": True})
    assert s.getvalue() == "[INFO] a\n[INFO] b\n[INFO] c\n" and s.nwrites == 1
    lg, h, s = _holder(monkeypatch, STEP_HOLD_LINES=256, STEP_HOLD_S=0.0)
    lg.info("x", extra={"pd_step": True})
    assert s.getvalue() == "[INFO] x\n"  # the oldest held line is already 0 s old


def test_holder_flush_and_hold_step_lines(monkeypatch):
    lg, h, s = _holder(monkeypatch)
    h.flush()
    assert s.nwrites == 0  # nothing held: no write
    lg.info("x", extra={"pd_step": True})
    h.flush()
    assert s.getvalue() == "[INFO] x\n"
    # hold_step_lines swaps init_logger's plain StreamHandler, same stream and formatter
    tl = logging.getLogger(TRACE)
    saved = list(tl.handlers)
    try:
        st, fmt = _Stream(), logging.Formatter("%(message)s")
        plain, other = logging.StreamHandler(st), _Grab()
        plain.setFormatter(fmt)
        tl.handlers[:] = [plain, other]
        T.hold_step_lines()
        T.hold_step_lines()  # idempotent
        hs = [x for x in tl.handlers if isinstance(x, T.StepLineHandler)]
        assert len(hs) == 1 and hs[0].stream is st and hs[0].formatter is fmt and other in tl.handlers
        old = tl.level
        tl.setLevel(logging.INFO)
        T.write({"k": "step", "ev": "kdone"}, step=True)
        assert st.getvalue() == "" and len(other.recs) == 1  # held there, seen at once here
        T.flush_steps()
        assert st.getvalue().startswith('PDT {"k":"step","ev":"kdone","seq":')
        tl.setLevel(old)
    finally:
        tl.handlers[:] = saved
        T._HOLDERS[:] = [x for x in saved if isinstance(x, T.StepLineHandler)]


def _child(path: str, fail: bool) -> None:
    """A scheduler-like subprocess: holds a step line, then exits (normally or by an exception)."""
    lg = logging.getLogger(TRACE)
    f = open(path, "w")
    lg.handlers[:] = [logging.StreamHandler(f)]
    lg.setLevel(logging.INFO)
    lg.propagate = False
    T.hold_step_lines()
    T.write({"k": "step", "ev": "kdone", "step": 7}, step=True)
    if fail:
        raise RuntimeError("fail-stop")


@pytest.mark.parametrize("fail", [False, True])
def test_held_lines_are_written_when_the_subprocess_exits(tmp_path, fail):
    """minisgl's scheduler is a multiprocessing child (no atexit there): the Finalize hook writes
    the held lines, also when the child dies of an exception (LedgerViolation fail-stop)."""
    path = str(tmp_path / "child.log")
    ctx = mp.get_context("spawn")
    c = ctx.Process(target=_child, args=(path, fail))
    c.start()
    c.join(60)
    assert c.exitcode == (1 if fail else 0)
    with open(path) as f:
        got = f.read()
    assert '"ev":"kdone","step":7' in got, got
    assert os.path.getsize(path) > 0
