"""End-to-end CPU tests of the PD glue: real TCP control channel, fake RDMA engine, toy engine.

What these do NOT cover (needs GPU validation): Mooncake RDMA itself, GPU visibility of RDMA
writes (H-visible), the mini-sglang scheduler integration with real CUDA streams, Qwen3-32B.
"""

from __future__ import annotations

import random
import time

import pytest
from toy import ToyD, ToyP, run_until

from minisgl.disagg import ledger as L
from minisgl.disagg import messages as M


@pytest.fixture
def cluster(request):
    made = []

    def make(n_p=1, n_d=1, ps=1, p_pages=64, d_pages=64, **dkw):
        ps_ = [ToyP(f"p{i}-{time.monotonic_ns()}", p_pages, ps) for i in range(n_p)]
        ds_ = [ToyD(f"d{i}-{time.monotonic_ns()}", d_pages, ps, **dkw) for i in range(n_d)]
        made.extend(ps_ + ds_)
        return ps_, ds_

    yield make
    for n in made:
        n.close()


def send(p, d, room, prompt, max_new=3):
    p.submit(room, prompt)
    return d.submit(room, prompt, p.port, max_new)


def expected_output(prompt, max_new):
    from toy import first_token_of
    toks = prompt + [first_token_of(prompt)]
    out = [toks[-1]]
    for i in range(max_new - 1):
        nxt = (toks[-1] * 17 + len(prompt) + i) % 1000
        toks.append(nxt)
        out.append(nxt)
    return out


def quiescent(nodes):
    for n in nodes:
        n.ledger.check()
        st = n.ledger.stats()
        assert st["private"] == 0 and st["draining"] == 0, st
        assert st["free"] + st["quarantined"] == n.ledger.num_pages


@pytest.mark.parametrize("ps", [1, 4])
def test_1p1d_happy_path(cluster, ps):
    (p,), (d,) = cluster(ps=ps)
    rng = random.Random(ps)
    uids = {}
    for room in range(1, 21):
        prompt = [rng.randrange(1000) for _ in range(rng.randint(1, 13))]
        uids[send(p, d, room, prompt, 4)] = prompt
    assert run_until(lambda: len(d.outputs) == 20 and not d.running, [p, d])
    assert d.bad_reads == 0
    for uid, prompt in uids.items():
        assert d.outputs[uid] == expected_output(prompt, 4)
    assert d.flushes == 20  # the flush ran once per landed transfer ...
    assert d.flush_seen == list(range(20))  # ... each time before the ledger recorded it
    assert p.pd.stats()["notices"] == 20
    quiescent([p, d])
    assert d.ledger.stats()["quarantined"] == 0 and p.ledger.stats()["quarantined"] == 0


@pytest.mark.parametrize("n_p,n_d", [(1, 2), (2, 1), (2, 2)])
def test_ratios(cluster, n_p, n_d):
    ps_, ds_ = cluster(n_p, n_d, ps=2)
    rng = random.Random(n_p * 10 + n_d)
    want = {}
    for room in range(1, 41):
        p, d = rng.choice(ps_), rng.choice(ds_)
        prompt = [rng.randrange(1000) for _ in range(rng.randint(1, 9))]
        want[(id(d), send(p, d, room, prompt, 3))] = (d, prompt)
    nodes = ps_ + ds_
    assert run_until(lambda: sum(len(d.outputs) for d in ds_) == 40
                     and not any(d.running for d in ds_), nodes)
    for (_, uid), (d, prompt) in want.items():
        assert d.outputs[uid] == expected_output(prompt, 3)
    assert sum(d.bad_reads for d in ds_) == 0
    quiescent(nodes)


def test_d_arrives_before_p(cluster):
    (p,), (d,) = cluster()
    uid = d.submit(7, [1, 2, 3], p.port, 2)
    run_until(lambda: False, [p, d], timeout=0.2)  # xfer_req waits at P, unmatched
    p.submit(7, [1, 2, 3])
    assert run_until(lambda: uid in d.outputs and not d.running, [p, d])
    assert d.outputs[uid] == expected_output([1, 2, 3], 2)


def test_abort_while_transfer_running_gets_ack(cluster):
    (p,), (d,) = cluster()
    p.backend.delay_s = 0.3
    uid = send(p, d, 1, [5, 6, 7, 8])
    assert run_until(lambda: d.pd.stats()["waiting"] == 1, [p, d])
    time.sleep(0.05)  # let P reach the engine call
    run_until(lambda: p.ledger.stats()["entries_open"] == 1, [p, d], timeout=1.0)
    d.abort(uid)
    assert run_until(lambda: d.pd.stats()["aborting"] == 0, [p, d])
    quiescent([p, d])
    assert d.ledger.stats()["quarantined"] == 0  # P's ACK came after local completion
    assert uid not in d.outputs


def test_abort_before_p_sees_request_tombstones(cluster):
    (p,), (d,) = cluster()
    uid = d.submit(9, [1, 2], p.port, 2)
    assert run_until(lambda: d.pd.stats()["waiting"] == 1, [p, d])
    d.abort(uid)
    assert run_until(lambda: d.pd.stats()["aborting"] == 0, [p, d])
    p.submit(9, [1, 2])  # the P request for the aborted room never transfers
    run_until(lambda: False, [p, d], timeout=0.2)
    assert p.pd.stats()["notices"] == 0
    quiescent([d])
    assert d.ledger.stats()["quarantined"] == 0


def test_failed_write_lands_late_into_quarantine_only(cluster):
    (p,), (d,) = cluster(d_pages=16)
    p.backend.fail_next = 1
    p.backend.late = True
    p.backend.late_s = 0.2
    bad = send(p, d, 1, [9] * 6)
    assert run_until(lambda: bad in d.pd.reqs and d.pd.reqs[bad].gen, [p, d])
    bad_pages = d.ledger.pages_of(d.pd.reqs[bad].gen)
    assert run_until(lambda: bad in d.failed, [p, d])
    st_d, st_p = d.ledger.stats(), p.ledger.stats()
    assert st_d["quarantined_transfer_failed"] == 6 and st_p["quarantined_transfer_failed"] == 6
    # keep the pool busy while the late write lands: no live request may see it
    want = {}
    for room in range(2, 12):
        prompt = [room] * 5
        want[send(p, d, room, prompt, 2)] = prompt
    assert run_until(lambda: len(d.outputs) == 10 and not d.running, [p, d])
    for t in p.backend.late_threads:
        t.join()
    assert d.bad_reads == 0
    for uid, prompt in want.items():
        assert d.outputs[uid] == expected_output(prompt, 2)
    # the late bytes really landed, in the quarantined pages
    qpages = [pg for pg in range(16) if d.ledger.pst[pg] == L.QUARANTINED]
    assert sorted(qpages) == sorted(bad_pages)
    assert all(d.pool.check_tok(bad_pages, i, 9) for i in range(6))
    quiescent([p, d])


def test_waiting_timeout_quarantines_and_drops_late_notice(cluster):
    (p,), (d,) = cluster(waiting_timeout=0.2)
    p.backend.hang.clear()  # the engine call never returns ... for now
    uid = send(p, d, 1, [1, 2, 3])
    assert run_until(lambda: uid in d.failed, [p, d], timeout=5)
    assert d.ledger.stats()["quarantined_timeout"] == 3
    p.backend.hang.set()  # the call returns success later; its notice must be dropped
    assert run_until(lambda: d.ledger.stats()["dropped_msgs"] >= 1, [p, d])
    assert d.ledger.stats()["quarantined"] == 3  # never returns to FREE (lifecycle contract)
    quiescent([p, d])


def test_peer_loss_quarantines(cluster):
    (p,), (d,) = cluster(hb_interval=0.05, hb_timeout=0.3)
    p.backend.hang.clear()
    uid = send(p, d, 1, [4, 4, 4, 4])
    assert run_until(lambda: d.pd.stats()["waiting"] == 1, [p, d])
    p.pd.hub.shutdown()  # P instance disappears
    assert run_until(lambda: uid in d.failed, [d])
    assert d.ledger.stats()["quarantined_peer_lost"] == 4
    p.backend.hang.set()
    quiescent([d])


def test_heartbeat_timeout_is_peer_loss(cluster):
    (p,), (d,) = cluster(hb_interval=0.05, hb_timeout=0.2)
    p.backend.hang.clear()
    uid = send(p, d, 1, [4, 4])
    assert run_until(lambda: d.pd.stats()["waiting"] == 1, [p, d])
    # P stays connected but stops answering (its scheduler is stuck): only D ticks
    assert run_until(lambda: uid in d.failed, [d])
    assert d.ledger.stats()["quarantined_peer_lost"] == 2
    p.backend.hang.set()


def test_prompt_mismatch_is_stopped_failure(cluster):
    (p,), (d,) = cluster()
    p.submit(3, [1, 2, 3])
    uid = d.submit(3, [1, 2, 4], p.port, 2)
    assert run_until(lambda: uid in d.failed, [p, d])
    assert p.pd.stats()["mismatch"] == 1
    quiescent([p, d])
    assert d.ledger.stats()["quarantined"] == 0


def test_duplicate_room_rejected(cluster):
    (p,), (d,) = cluster()
    d.submit(5, [1], p.port)
    uid2 = d.submit(5, [2], p.port)
    assert d.failed[uid2] == "duplicate room"
    p.submit(5, [1])
    assert p.pd.add_request(99, 5, 1, M.tok_hash([1])) is False


def test_layout_mismatch_refuses_handshake(cluster):
    (p,), (d,) = cluster(ps=1)
    d.pd.layout = list(d.pd.layout)
    d.pd.layout[3] += 1  # different head_dim
    uid = d.submit(1, [1, 2], p.port)
    assert run_until(lambda: uid in d.failed, [p, d])
    assert "handshake refused" in d.failed[uid]


# layout agreement negative test over the real handshake (compatibility): P and D that differ in page_size,
# KV dtype (same itemsize), KV head count, layer count or model identity must refuse to pair,
# in either direction, before any byte moves.
@pytest.mark.parametrize("side", ["d", "p"])
@pytest.mark.parametrize("field", ["page_size", "dtype", "kv_heads", "num_layers", "model_id"])
def test_ct_layout_mismatch_refused(cluster, field, side):
    if field == "page_size":  # a genuinely different pool: D pages of 4 tokens, P pages of 1
        ps_, ds_ = cluster(1, 0, ps=1)
        (p,), (d,) = ps_, [ToyD(f"d-ps4-{time.monotonic_ns()}", 64, 4)]
        if side == "p":
            ps_, ds_ = cluster(0, 1, ps=1)
            (p,), (d,) = [ToyP(f"p-ps4-{time.monotonic_ns()}", 64, 4)], ds_
    else:
        (p,), (d,) = cluster()
        idx = L.LAYOUT_FIELDS.index(field)
        node = d if side == "d" else p
        node.pd.layout = list(node.pd.layout)
        if field == "dtype":  # fp8 e4m3 -> e5m2: itemsize stays 1 (the Z3 layout identity counterexample)
            node.pd.layout[idx] = L.DTYPE_CODES["float8_e5m2"]
        else:
            node.pd.layout[idx] += 1
    try:
        p.submit(1, [1, 2, 3])
        uid = d.submit(1, [1, 2, 3], p.port, 2)
        assert run_until(lambda: uid in d.failed, [p, d])
        assert "handshake refused" in d.failed[uid]
        assert p.pd.stats()["notices"] == 0 and p.backend.calls == 0  # no byte moved
        assert d.ledger.stats()["free"] == d.ledger.num_pages  # nothing allocated or quarantined
    finally:
        for n in (p, d):
            n.close()


def test_stale_and_forged_messages_dropped(cluster):
    (p,), (d,) = cluster()
    p.backend.hang.clear()
    uid = send(p, d, 1, [1, 2, 3])
    assert run_until(lambda: d.pd.stats()["waiting"] == 1, [p, d])
    r = d.pd.reqs[uid]
    # forge notices on P's own connection (as a buggy or old P would send them)
    cid = next(iter(p.pd.peer_of_cid))
    base = dict(src=p.inst, dst=d.inst, room=r.room, gen=r.gen, xid=r.xid, ntokens=3,
                first_token=0)
    for bad in (dict(base, gen=r.gen + 1), dict(base, xid=r.xid + 100), dict(base, room=2),
                dict(base, dst=d.inst + 1), dict(base, src=p.inst + 1)):
        p.pd.hub.send(cid, M.to_p(M.KV_DONE, **bad))
    run_until(lambda: False, [d], timeout=0.2)
    st = d.pd.stats()
    assert st["dropped"] == 5 and d.pd.stats()["waiting"] == 1 and d.flushes == 0
    p.backend.hang.set()
    assert run_until(lambda: uid in d.outputs and not d.running, [p, d])
    assert d.bad_reads == 0


def test_tight_pool_many_requests(cluster):
    """Small pools and many requests force page reuse on both sides; every read is checked."""
    ps_, ds_ = cluster(2, 2, ps=2, p_pages=24, d_pages=24)
    rng = random.Random(7)
    n = 60
    for room in range(1, n + 1):
        prompt = [rng.randrange(1000) for _ in range(rng.randint(1, 10))]
        send(rng.choice(ps_), rng.choice(ds_), room, prompt, rng.randint(1, 6))
    assert run_until(lambda: sum(len(d.outputs) for d in ds_) == n
                     and not any(d.running for d in ds_), ps_ + ds_, timeout=30)
    assert sum(d.bad_reads for d in ds_) == 0
    quiescent(ps_ + ds_)


def test_mooncake_api_names():
    """The Mooncake calls we make exist in the pinned wheel (CPU import only; no transfer)."""
    eng = pytest.importorskip("mooncake.engine", exc_type=ImportError)
    names = set(dir(eng.TransferEngine))
    for n in ("initialize", "batch_register_memory", "batch_transfer_sync_write",
              "get_rpc_port"):
        assert n in names, n


def test_mooncake_requires_explicit_ib_device():
    pytest.importorskip("mooncake.engine", exc_type=ImportError)
    from minisgl.disagg.transfer import MooncakeBackend
    with pytest.raises(ValueError):
        MooncakeBackend("127.0.0.1", "", protocol="rdma")
