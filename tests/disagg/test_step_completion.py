"""KernelReadPins red team findings fixed in compatibility (the CPU control-plane checks), on the real mini-sglang
``Scheduler`` with the stub engine of test_scheduler_stub (CPU; Python ledger).

abort during an in-flight step (upstream mini-sglang, scheduler.py / table.py): an abort that arrives while
the request's EOS decode step is in flight (overlap loop) freed the request twice: the abort path
(``_process_one_msg``) and then ``_process_last_data`` (its "skip second free" guard does not
cover aborts).  The table row went into the free list twice and two new requests shared it
(non-PD: silently wrong output; PD: the core's bind_row refused the second binding and D stopped),
and the aborted request still got its EOS reply.  Now the result of the in-flight step is dropped
for an aborted request (freed once, no reply after the abort) and ``TableManager.free`` refuses a
double free.

copy-completion ordering: nothing checked that ``step_done(k)`` comes after step k's copy-done
event.  ``PDHooks.complete(batch, copy_done)`` now refuses (LedgerViolation) unless the event's
``query()`` is true, and the stub's event is a recording fake (``query()`` true only after
``synchronize()``), so the red team's KDPRE / KDTICK orderings fail here; the test-side check on
the ledger's ``step_done`` also catches unpinned-launch (unpinned at launch).
"""

from __future__ import annotations

import time

import pytest

torch = pytest.importorskip("torch")

from minisgl.disagg import ledger as L  # noqa: E402
from minisgl.message import AbortBackendMsg  # noqa: E402
from minisgl.scheduler.table import TableManager  # noqa: E402
from test_scheduler_stub import (EOS, build, close, finished, msg, no_pinned_memory,  # noqa: E402,F401
                                 pd_pair, reference, run, send_pd)

PROMPTS = {u: [(u * 31 + i * 7) % 900 + 3 for i in range(3 + u % 9)] for u in range(1, 9)}


# ------------------------------------------------------------------------------- abort during an in-flight step (upstream)
def _inflight_eos(s, uid) -> bool:
    if s.data is None:
        return False
    fi, fo = s.data
    return any(r.uid == uid and int(fo[1][i]) == EOS for i, r in enumerate(fi.batch.reqs))


def _step_until(scheds, cond, timeout=10.0) -> bool:
    t0 = time.monotonic()
    while time.monotonic() - t0 < timeout:
        for s in scheds:
            s.data = s.overlap_loop(s.data)
            if cond():
                return True
        time.sleep(0.001)
    return False


@pytest.mark.parametrize("mode", ["pd", "null"])
def test_abort_while_the_eos_step_is_in_flight(mode):
    """The red team's case (test_step_abort_finish.py), now with the intended outcome: uid 1's third
    decode output is EOS; the abort arrives while that step is in flight; then two new requests.
    Row freed once, nothing sent to uid 1 after the abort, the new requests get two rows and the
    colocated reference tokens, no LedgerViolation; PD: D's ledger quiescent at the end."""
    prompt = [5, 6, 7, 8]
    p = None
    if mode == "pd":
        p, d, _, _ = pd_pair(1)
        scheds = [p, d]
        send_pd(p, d, 1, 7001, prompt, 8)
    else:
        d = build("null", ps=1)
        scheds = [d]
        d.inbox.append(msg(1, prompt, 8))
    try:
        d.engine.eos_at[1] = 2  # the third decode output of uid 1 is EOS
        assert _step_until(scheds, lambda: _inflight_eos(d, 1)), "EOS step never in flight"
        row = next(r.table_idx for r in d.data[0].batch.reqs if r.uid == 1)
        n_before = len(d.outputs.get(1, []))
        assert n_before >= 1 and not d.outputs[1][-1][1]  # uid 1 has not finished yet
        d.inbox.append(AbortBackendMsg(uid=1))  # while the EOS step is in flight
        d.data = d.overlap_loop(d.data)  # the abort, then the in-flight EOS step's result
        free = list(d.table_manager._free_slots)
        assert len(free) == len(set(free)) and free.count(row) == 1, free
        assert len(d.outputs[1]) == n_before, d.outputs[1]  # no EOS reply after the abort
        prompts = {10: [11, 12, 13], 11: [21, 22, 23, 24]}
        ref = reference(prompts, 5, 1)
        rows = []
        real_alloc = d.table_manager.allocate

        def alloc():
            rows.append(real_alloc())
            return rows[-1]

        d.table_manager.allocate = alloc
        for u, pr in prompts.items():
            if mode == "pd":
                send_pd(p, d, u, 7100 + u, pr, 5)
            else:
                d.inbox.append(msg(u, pr, 5))
        assert run(scheds, lambda: finished(d, prompts), timeout=10)
        assert len(rows) == 2 and len(set(rows)) == 2, rows
        assert {u: [t for t, _ in d.outputs[u]] for u in prompts} == ref
        assert len(d.outputs[1]) == n_before
        if mode == "pd":
            st = d.pd.ledger.stats()
            assert st["private"] == 0 and st["draining"] == 0 and st["live_reqs"] == 0, st
            assert st["free"] == d.pd.ledger.num_pages, st
    finally:
        if p is not None:
            close(p, d)


@pytest.mark.parametrize("overlap", [True, False])
def test_abort_of_a_running_request_still_frees_it_once(overlap):
    """The ordinary abort (no EOS in flight) is unchanged: the request ends with no further
    output, its row is free exactly once, and later requests are served."""
    d = build("null", ps=1)

    def loop():
        if overlap:
            d.data = d.overlap_loop(d.data)
        else:
            d.normal_loop()

    d.inbox.append(msg(1, [5, 6, 7, 8], 50))
    for _ in range(200):  # by hand: run() would flush the in-flight step and finish uid 1
        loop()
        if len(d.outputs.get(1, [])) >= 3:
            break
    n = len(d.outputs[1])
    assert 3 <= n < 50 and (d.data is not None) == overlap  # overlap: a step of uid 1 in flight
    d.inbox.append(AbortBackendMsg(uid=1))
    for _ in range(4):
        loop()
    assert len(d.outputs[1]) == n and not d.outputs[1][-1][1]  # nothing after the abort
    free = list(d.table_manager._free_slots)
    assert len(free) == len(set(free)) == d.table_manager._max_running_reqs
    prompts = {2: [9, 8, 7]}
    d.inbox.append(msg(2, prompts[2], 4))
    assert run([d], lambda: finished(d, prompts), overlap=overlap)
    assert [t for t, _ in d.outputs[2]] == reference(prompts, 4, 1)[2]


def test_table_manager_refuses_a_double_free():
    tm = TableManager(4, torch.zeros((5, 8), dtype=torch.int32))
    s = tm.allocate()
    tm.free(s)
    with pytest.raises(RuntimeError, match="already free"):
        tm.free(s)
    assert sorted(tm._free_slots) == [0, 1, 2, 3]  # unchanged by the refused free


# ------------------------------------------------------------------------------- copy-completion ordering
def _watch_step_done(s, log):
    """Wrap the instance's (traced) ledger step_done: every glue call of it, from any site, is
    recorded with whether that step's copy-done event was synchronized and how many steps the
    ledger had in flight."""
    led = s.pd.ledger
    real = led.step_done

    def step_done(k):
        ev = s.engine.events.get(k)
        log.append((s.pd.mode, k, ev is not None and ev.synced, led.stats()["inflight_steps"]))
        return real(k)

    led.step_done = step_done


@pytest.mark.parametrize("ps", [1, 4])
def test_step_done_only_after_the_steps_event(ps):
    """Overlap on, several requests: P and D each have two steps in flight at some step_done
    (step k+1 launched before step k is done), and every step_done(k) comes after step k's
    copy-done event was synchronized; outputs equal the colocated reference."""
    p, d, _, _ = pd_pair(ps)
    log = []
    for s in (p, d):
        _watch_step_done(s, log)
    prompts = {u: PROMPTS[u] for u in (1, 2, 3, 4, 5, 6)}
    try:
        for u, pr in prompts.items():
            send_pd(p, d, u, 9300 + u, pr, 6)
        assert run([p, d], lambda: finished(d, prompts))
        assert {u: [t for t, _ in d.outputs[u]] for u in prompts} == reference(prompts, 6, ps)
        bad = [x for x in log if not x[2]]
        assert not bad, bad  # step_done before its event was synchronized
        for side in ("prefill", "decode"):
            ks = [k for m, k, _, _ in log if m == side]
            assert ks == list(range(1, len(ks) + 1)), (side, ks)
        assert max(n for m, _, _, n in log if m == "decode") >= 2, log  # two steps in flight
    finally:
        close(p, d)


def test_complete_refuses_an_unsynchronized_event():
    """PDHooks.complete itself: an event whose query() is false, or no event, is refused before the
    ledger is told (state unchanged); the real loop then completes the step as usual."""
    p, d, _, _ = pd_pair(1)
    try:
        send_pd(p, d, 1, 9400, PROMPTS[3], 6)
        assert _step_until([p, d], lambda: d.data is not None and not d.data[1][2].synced)
        batch, ev = d.data[0].batch, d.data[1][2]
        before = d.pd.ledger.stats()
        assert before["inflight_steps"] >= 1
        with pytest.raises(L.LedgerViolation, match="copy-done event"):
            d.pd.complete(batch, ev)
        with pytest.raises(L.LedgerViolation, match="no event"):
            d.pd.complete(batch)
        assert d.pd.ledger.stats() == before
        assert run([p, d], lambda: finished(d, {1: PROMPTS[3]}))
        assert [t for t, _ in d.outputs[1]] == reference({1: PROMPTS[3]}, 6, 1)[1]
    finally:
        close(p, d)
