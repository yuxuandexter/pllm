"""An abort timeout cannot prove that prefill's write has stopped.

Hold the write past ack_timeout and verify permanent quarantine while healthy
requests reuse the remaining pool. Then let the old write land and check that
its late acknowledgement cannot release those pages or corrupt live requests.
Exercise both the toy TCP system and the real scheduler with a CPU engine."""

from __future__ import annotations

import pytest
from test_pd_glue import cluster, expected_output, send  # noqa: F401
from toy import run_until

from minisgl.disagg import ledger as L


def test_ack_timeout_quarantines_and_the_late_write_is_never_read(cluster):
    (p0, p1), (d,) = cluster(n_p=2, d_pages=128, ack_timeout=0.3)
    nodes = [p0, p1, d]
    p0.backend.hang.clear()  # blocked prefill's engine call blocks: its write stays in flight
    bad = send(p0, d, 1, [9] * 6, 3)
    assert run_until(lambda: p0.backend.calls >= 1, nodes, timeout=5)
    bad_pages = d.ledger.pages_of(d.pd.reqs[bad].gen)
    assert len(bad_pages) == 6
    d.abort(bad)  # blocked prefill cannot ACK before its engine call returns
    assert d.pd.stats()["aborting"] == 1
    assert run_until(lambda: d.pd.stats()["aborting"] == 0, nodes, timeout=5)
    st = d.ledger.stats()
    assert d.pd.stats()["ack_timeouts"] == 1
    assert st["quarantined_cancelled"] == 6 and st["quarantined"] == 6, st
    assert st["free"] == d.ledger.num_pages - 6
    want = {}
    for room in range(2, 5):  # D's pages are reused through the healthy prefill, long decodes
        prompt = [room] * 5
        want[send(p1, d, room, prompt, 30)] = prompt
    assert run_until(lambda: len(d.running) == 3, nodes, timeout=5)
    live = {pg for r in d.running.values() for pg in d.ledger.pages_of(r["gen"])}
    assert not set(bad_pages) & live  # quarantined pages are never handed out again
    dropped = d.ledger.stats()["dropped_msgs"]
    p0.backend.hang.set()  # the old write lands now, into the quarantined pages
    assert run_until(lambda: all(u in d.outputs for u in want) and not d.running, nodes,
                     timeout=10)
    assert d.bad_reads == 0
    for uid, prompt in want.items():
        assert d.outputs[uid] == expected_output(prompt, 30)
    assert bad not in d.outputs
    # blocked prefill's ACK arrives after the timeout: not evidence any more, dropped; pages stay quarantined
    assert run_until(lambda: d.ledger.stats()["dropped_msgs"] > dropped, nodes, timeout=5)
    st = d.ledger.stats()
    assert st["quarantined"] == 6 and st["free"] + 6 == d.ledger.num_pages, st
    d.ledger.check()


def test_ack_within_the_timeout_frees_the_pages(cluster):
    """Completion before ack_timeout supplies stop evidence and avoids quarantine."""
    (p0,), (d,) = cluster(d_pages=32, ack_timeout=5.0)
    p0.backend.hang.clear()
    bad = send(p0, d, 1, [9] * 6, 3)
    assert run_until(lambda: p0.backend.calls >= 1, [p0, d], timeout=5)
    d.abort(bad)
    run_until(lambda: False, [p0, d], timeout=0.3)
    p0.backend.hang.set()
    assert run_until(lambda: d.pd.stats()["aborting"] == 0, [p0, d], timeout=5)
    st = d.ledger.stats()
    assert d.pd.stats()["ack_timeouts"] == 0 and st["quarantined"] == 0
    assert st["free"] == d.ledger.num_pages


torch = pytest.importorskip("torch")
from test_scheduler_stub import (close, finished, no_pinned_memory, pd_pair,  # noqa: E402,F401
                                 reference, run, send_pd)
from minisgl.message import AbortBackendMsg  # noqa: E402


def test_ack_timeout_from_config_in_the_real_scheduler():
    prompts = {u: [u + 3] * 5 for u in range(2, 5)}
    ref = reference(prompts, 4, 1)
    p, d, bp, _ = pd_pair(1, ack_timeout=0.3)
    try:
        assert d.pd.pd.ack_timeout == 0.3  # SchedulerConfig.disaggregation_ack_timeout
        bp.gate.clear()  # P's engine call blocks
        send_pd(p, d, 1, 601, [7] * 5, 4)
        assert run([p, d], lambda: bp.calls == 1)
        d.inbox.append(AbortBackendMsg(uid=1))
        assert run([p, d], lambda: d.pd.pd.stats()["ack_timeouts"] == 1, timeout=5)
        st = d.cache_manager.ledger.stats()
        assert st["quarantined_cancelled"] == 5 and st["quarantined"] == 5, st
        bp.gate.set()  # the late write and ACK: dropped, pages stay quarantined
        run([p, d], lambda: False, timeout=0.3)
        for uid, pr in prompts.items():
            send_pd(p, d, uid, 600 + uid, pr, 4)
        assert run([p, d], lambda: finished(d, prompts))
        for uid in prompts:
            assert [t for t, _ in d.outputs[uid]] == ref[uid]
        st = d.cache_manager.ledger.stats()
        assert st["quarantined"] == 5 and st["free"] + 5 == d.engine.num_pages, st
        d.cache_manager.ledger.check()
    finally:
        close(p, d)
