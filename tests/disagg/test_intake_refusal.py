"""A prefill refusal must resolve decode's destination without a timeout.

Decode may accept a resend after its original request has landed while prefill
still considers the room busy. Remember the refusal so its destination receives
stop evidence whenever it arrives, including when it arrived before the refusal.
Otherwise healthy prefill leaves decode waiting and quarantining unused pages."""

from __future__ import annotations

import time

import pytest
from test_pd_glue import cluster, expected_output, quiescent  # noqa: F401
from toy import run_until

from minisgl.disagg import messages as M


def test_intake_refusal_resend_refused_by_p_accepted_by_d(cluster):
    (p,), (d,) = cluster(waiting_timeout=3.0)
    room, prompt = 4371257431375131705, [7] * 9
    p.submit(room, prompt)  # the original at P ...
    assert not p.pd.add_request(999, room, len(prompt), M.tok_hash(prompt))  # ... resend refused
    orig = d.submit(room, prompt, p.port, 40)  # the original at D
    assert run_until(lambda: orig in d.outputs, [p, d])  # landed: D's record of the room is gone
    t0 = time.monotonic()
    resend = d.submit(room, prompt, p.port, 3)  # D accepts the resend and publishes
    assert resend not in d.failed
    d.abort(orig)  # The original abort arrives only after decode accepts the resend.
    assert run_until(lambda: resend in d.failed, [p, d], timeout=5)
    assert time.monotonic() - t0 < 1.0, "D waited for its timeout"  # before the fix: 3 s
    assert "prefill refused the transfer" in d.failed[resend]
    st = d.ledger.stats()
    assert st["quarantined"] == 0 and st["free"] == d.ledger.num_pages, st  # before: 9 quarantined
    assert p.pd.stats()["refused_dests"] == 1 and not p.pd.refused
    quiescent([p, d])


def test_intake_refusal_destination_that_came_first_is_refused_when_p_drops(cluster):
    """D first: its destination is already waiting at P when P drops the request."""
    (p,), (d,) = cluster(waiting_timeout=3.0)
    room, prompt = 77, [3, 1, 4, 1, 5]
    uid = d.submit(room, prompt, p.port, 3)
    assert run_until(lambda: room in p.pd.unmatched, [p, d])
    t0 = time.monotonic()
    p.pd.drop_request(room, len(prompt), M.tok_hash(prompt))
    assert run_until(lambda: uid in d.failed, [p, d], timeout=5)
    assert time.monotonic() - t0 < 1.0
    assert d.ledger.stats()["quarantined"] == 0
    quiescent([p, d])


def test_intake_refusal_refusal_does_not_hit_another_prompt_in_the_same_room(cluster):
    """A refusal belongs to one prompt; another prompt may reuse the room safely."""
    (p,), (d,) = cluster(waiting_timeout=3.0)
    room = 4242
    p.submit(room, [9] * 4)
    assert not p.pd.add_request(999, room, 4, M.tok_hash([9] * 4))  # refused, D leg never comes
    first = d.submit(room, [9] * 4, p.port, 2)
    assert run_until(lambda: first in d.outputs and not d.running, [p, d])
    other = [5, 6, 7]
    uid = d.submit(room, other, p.port, 3)  # D first: waits at P, unmatched
    assert run_until(lambda: room in p.pd.unmatched, [p, d])
    p.submit(room, other)
    assert run_until(lambda: uid in d.outputs and not d.running, [p, d])
    assert d.outputs[uid] == expected_output(other, 3) and uid not in d.failed
    assert d.ledger.stats()["quarantined"] == 0


torch = pytest.importorskip("torch")
from test_scheduler_stub import (close, finished, msg, no_pinned_memory, pd_pair,  # noqa: E402,F401
                                 run)


def _dis(p, room):
    return {"bootstrap_host": "127.0.0.1", "bootstrap_port": p.pd.pd.port, "bootstrap_room": room}


def test_intake_refusal_batch4_order_in_the_real_scheduler():
    p, d, _, _ = pd_pair(1, waiting_timeout=3.0)
    try:
        room, prompt = 4371257431375131705, [11] * 7
        p.inbox += [msg(1, prompt, 4, _dis(p, room)), msg(2, prompt, 4, _dis(p, room))]
        d.inbox.append(msg(1, prompt, 4, _dis(p, room)))
        assert run([p, d], lambda: 1 in d.outputs)  # P refused uid 2; uid 1 landed on D
        assert "duplicate active room" in p.errors[2]
        t0 = time.monotonic()
        d.inbox.append(msg(2, prompt, 4, _dis(p, room)))  # D accepts the resend
        assert run([p, d], lambda: finished(d, [1, 2]), timeout=5)
        assert time.monotonic() - t0 < 1.0
        assert "prefill refused the transfer" in d.errors[2]
        st = d.cache_manager.ledger.stats()
        assert st["quarantined"] == 0 and st["free"] == d.engine.num_pages, st
    finally:
        close(p, d)


def test_intake_refusal_scheduler_drop_on_p_refuses_d_leg():
    """P drops a request before PD sees it (input longer than P's max_seq_len; D's is larger):
    D's destination is refused at once and both clients get an error."""
    p, d, _, _ = pd_pair(1, waiting_timeout=3.0)
    try:
        p.engine.max_seq_len = 5
        prompt = [13] * 6
        t0 = time.monotonic()
        p.inbox.append(msg(1, prompt, 3, _dis(p, 99)))
        d.inbox.append(msg(1, prompt, 3, _dis(p, 99)))
        assert run([p, d], lambda: finished(d, [1]) and 1 in p.errors, timeout=5)
        assert time.monotonic() - t0 < 1.0
        assert "input length 6" in p.errors[1] and "prefill refused" in d.errors[1]
        assert d.cache_manager.ledger.stats()["quarantined"] == 0
    finally:
        close(p, d)
