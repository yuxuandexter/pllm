"""descriptor-capture: capture actual values at independent boundaries, including broken returns."""
import io
import json
import logging
from copy import deepcopy
from types import SimpleNamespace

import pytest

from minisgl.disagg import ledger as L, trace as T
from minisgl.disagg.transfer import MooncakeBackend, FaultInjector


@pytest.fixture
def capture(monkeypatch):
    stream = io.StringIO()
    handler = logging.StreamHandler(stream)
    monkeypatch.setattr(T.logger, 'handlers', [handler])
    old_level = T.logger.level
    T.logger.setLevel(logging.INFO)  # also invalidate logging's isEnabledFor cache
    monkeypatch.setattr(T, 'ENABLED', True)
    monkeypatch.setattr(T, 'DDESC', True)
    monkeypatch.setattr(T, '_SEQ', [0])
    yield lambda: [json.loads(s[4:]) for s in stream.getvalue().splitlines()]
    T.logger.setLevel(old_level)


def layout(base, pool=13):
    return [2, 2, 1, 4, 2, pool, base, 1, (1 << 63) + 17]


def world():
    p = T.TracedLedger(L.PdLedger(12, layout((1 << 55) + 19), 11, role='P'), 11, 'P')
    d = T.TracedLedger(L.PdLedger(16, layout((1 << 56) + 23, 17), 22, role='D'), 22, 'D')
    for ledger in (p, d):
        ledger.event('role')
    p.register_peer(22, d.inner.layout)
    d.register_peer(11, p.inner.layout)
    pg, dg = p.open_req(7), d.open_req(7)
    p.alloc(pg, 3); d.alloc(dg, 3)
    p.launch(1, [(pg, 0, 5)]); p.complete(1)
    xid = d.d_expect(dg, 11, 5)
    desc = d.d_descriptor(xid)
    eid = p.p_post(pg, 5, 22, 7, dg, xid, list(desc[-1]), dst_descriptor=desc)
    assert eid > 0
    return p, d, pg, dg, xid, eid


def test_independent_layout_and_registered_entry(capture):
    p, d, pg, dg, xid, eid = world()
    roles = [r for r in capture() if r['k'] == 'role']
    assert [r['layout'] for r in roles] == [p.inner.layout, d.inner.layout]
    assert all(len(r['layout']) == 9 and all(type(n) is int for n in r['layout']) for r in roles)
    assert roles[0]['layout'][6] == (1 << 55) + 19
    assert roles[0]['layout'][5:7] != roles[1]['layout'][5:7]
    post = next(r for r in capture() if r.get('ev') == 'post')
    e = p.inner.entries[eid]
    snap = post['entry_snapshot']
    assert snap == dict(src_pages=list(e.src), dst_pages=list(e.dst), src_layout=p.inner.layout,
                       dst_layout=e.dst_layout, h=pg, peer=22, room=7, d_h=dg, xid=xid, ntokens=5)
    # A returned snapshot is detached; editing it does not write ledger state.
    got = p.inner._trace_entry_snapshot(eid)
    got['src_pages'][0] = 99; got['dst_layout'][0] = 99
    assert e.src[0] != 99 and e.dst_layout[0] == 2
    p.inner.layout[0] = 99
    p.event('role')
    assert capture()[-1]['layout'][0] == 2  # one construction-time observation


def test_descriptor_is_actual_deep_return_not_publish(capture, monkeypatch):
    p, d, pg, dg, xid, eid = world()
    wrong = [22, 7, dg, xid, 5, list(d.inner.layout), [2, 0, 1]]
    monkeypatch.setattr(d.inner, 'd_descriptor', lambda x: wrong)
    # Capture the pre-serialization object too: shallow capture would change here.
    raw = []
    orig = T.write
    monkeypatch.setattr(T, 'write', lambda rec, **kw: (raw.append(rec), orig(rec, **kw))[1])
    returned = d.d_descriptor(xid)
    assert returned is wrong
    wrong[5][0] = 99; wrong[6][0] = 99
    assert raw[-1]['descriptor'][5][0] == 2
    assert raw[-1]['descriptor'][6] == [2, 0, 1]
    assert capture()[-1]['descriptor'][6] != list(d.inner.xfers[xid].pages)


def test_handshake_input_frozen_before_call(capture, monkeypatch):
    p = T.TracedLedger(L.PdLedger(12, layout(1000), 11, role='P'), 11, 'P')
    original = p.inner.register_peer
    args = layout(2000)
    def mutate(peer, data):
        result = original(peer, data)
        data[6] = 99
        return result
    monkeypatch.setattr(p.inner, 'register_peer', mutate)
    p.register_peer(22, args)
    assert args[6] == 99 and capture()[-1]['peer_layout'][6] == 2000


def test_post_observes_entry_not_request_mapping(capture, monkeypatch):
    p, d, pg, dg, xid, eid = world()
    # Return a deliberately broken entry from the real atomic registration boundary.
    pg2, dg2 = p.open_req(8), d.open_req(8)
    p.alloc(pg2, 2); d.alloc(dg2, 2)
    p.launch(2, [(pg2, 0, 4)]); p.complete(2)
    x2 = d.d_expect(dg2, 11, 4); desc = d.d_descriptor(x2)
    original = p.inner.p_post
    def corrupt(*args, **kw):
        new = original(*args, **kw)
        p.inner.entries[new].src = tuple(reversed(p.inner.entries[new].src))
        return new
    monkeypatch.setattr(p.inner, 'p_post', corrupt)
    e2 = p.p_post(pg2, 4, 22, 8, dg2, x2, list(desc[-1]), dst_descriptor=desc)
    post = next(r for r in reversed(capture()) if r.get('ev') == 'post')
    assert post['entry_snapshot']['src_pages'] == list(p.inner.entries[e2].src)
    assert post['entry_snapshot']['src_pages'] != T.unruns(post['pages'])


def test_plan_and_submit_observe_each_boundary(capture, monkeypatch):
    p, d, pg, dg, xid, eid = world()
    assert p.p_begin(eid)
    actual = [[101, 102], [201, 202], [7, 8]]
    monkeypatch.setattr(p.inner, 'p_plan', lambda _: actual)
    assert p.p_plan(eid) is actual
    actual[0][0] = 901  # damage between plan and submission is visible
    seen = []
    def write(session, srcs, dsts, lens):
        seen.append(deepcopy((srcs, dsts, lens)))
        srcs[0] = 999  # backend must not retroactively change capture
        return -7
    assert p.transfer_write(eid, SimpleNamespace(write=write), 'session', *actual) == -7
    plan = next(r for r in capture() if r.get('ev') == 'xfer_plan')
    submit = next(r for r in capture() if r.get('ev') == 'xfer_submit')
    result = capture()[-1]
    assert plan['src_addrs'] == [101, 102] and submit['src_addrs'] == [901, 102]
    assert seen[0][0] == submit['src_addrs']
    assert submit['eid'] == eid and submit['h'] == pg and submit['d_h'] == dg
    assert result['status'] == 'returned' and result['res'] == -7
    assert result['submit_seq'] == submit['seq'] and T._XFER_CONTEXT.get() is None


@pytest.mark.parametrize('kind', ['ordinary', 'ledger'])
def test_submit_exception_same_object(capture, kind):
    p, d, pg, dg, xid, eid = world()
    error = (RuntimeError if kind == 'ordinary' else L.LedgerViolation)('engine boom')
    def fail(*args):
        raise error
    with pytest.raises(type(error)) as exc:
        p.transfer_write(eid, SimpleNamespace(write=fail), 'session', [1], [2], [3])
    assert exc.value is error
    assert capture()[-1]['status'] == 'raised'
    assert capture()[-1]['exception'] == type(error).__name__
    assert T._XFER_CONTEXT.get() is None


def test_mooncake_final_converted_arguments_and_existing_failure_policy(capture):
    p, d, pg, dg, xid, eid = world()
    backend = MooncakeBackend.__new__(MooncakeBackend)  # CPU engine double, no GPU import
    backend.faults = FaultInjector('')
    seen = []
    def engine(session, srcs, dsts, lens):
        assert type(srcs) is list and type(dsts) is list and type(lens) is list
        seen.append(deepcopy((srcs, dsts, lens)))
        raise RuntimeError('native failure')
    backend.engine = SimpleNamespace(batch_transfer_sync_write=engine)
    assert p.transfer_write(eid, backend, 'session', (101,), (201,), (3,)) == -1
    submits = [r for r in capture() if r.get('ev') == 'xfer_submit']
    assert [r['boundary'] for r in submits] == ['backend.write', 'TransferEngine.batch_transfer_sync_write']
    assert submits[-1]['src_addrs'] == seen[0][0] == [101]
    results = [r for r in capture() if r.get('ev') == 'xfer_result']
    assert [(r['status'], r.get('res')) for r in results] == [('raised', None), ('returned', -1)]


def test_fail_before_has_no_engine_attempt(capture):
    p, d, pg, dg, xid, eid = world()
    backend = MooncakeBackend.__new__(MooncakeBackend)
    backend.faults = FaultInjector('fail_before@all')
    backend.engine = SimpleNamespace(batch_transfer_sync_write=lambda *a: pytest.fail('called'))
    assert p.transfer_write(eid, backend, 'session', [101], [201], [3]) == -1
    assert [r['boundary'] for r in capture() if r.get('ev') == 'xfer_submit'] == ['backend.write']


@pytest.mark.parametrize('flag', ['DDESC', 'ENABLED'])
def test_disabled_has_no_new_observation(capture, monkeypatch, flag):
    monkeypatch.setattr(T, flag, False)
    p, d, pg, dg, xid, eid = world()
    p.p_begin(eid); p.p_plan(eid)
    p.ddesc_receive(descriptor=[1], wire_pages=[2], disposition='received')
    assert p.transfer_write(eid, SimpleNamespace(write=lambda *a: 0), 's', [1], [2], [3]) == 0
    assert not any('ddesc_v' in r for r in capture())
    assert not any(r.get('ev') in ('ddesc', 'ddesc_recv', 'xfer_plan', 'xfer_submit', 'xfer_result') for r in capture())


def test_receive_raw_copy_and_queued_disposition(capture):
    p, d, pg, dg, xid, eid = world()
    raw = [22, 7, dg, xid, 5, list(d.inner.layout), [0, 1, 2]]
    pages = [0, 1, 2]
    p.ddesc_receive(descriptor=raw, wire_pages=pages, disposition='queued', room=7, h=-1)
    raw[-1][0] = 99; pages[0] = 99
    rec = capture()[-1]
    assert rec['descriptor'][-1] == rec['wire_pages'] == [0, 1, 2]
    assert rec['disposition'] == 'queued' and rec['bind'] is False and rec['h'] == -1


def test_engine_boundary_detects_backend_argument_change(capture):
    p, d, pg, dg, xid, eid = world()
    class ChangedBackend(MooncakeBackend):
        def write(self, session, srcs, dsts, lens):
            changed = list(srcs); changed[0] += 32
            return super().write(session, changed, dsts, lens)
    backend = ChangedBackend.__new__(ChangedBackend)
    backend.faults = FaultInjector('')
    backend.engine = SimpleNamespace(batch_transfer_sync_write=lambda *a: 0)
    p.transfer_write(eid, backend, 's', [101], [201], [3])
    submits = [r for r in capture() if r.get('ev') == 'xfer_submit']
    assert [r['src_addrs'] for r in submits] == [[101], [133]]
    assert submits[0]['eid'] == submits[1]['eid'] == eid


@pytest.mark.parametrize('outcome', ['bound', 'duplicate', 'mismatch', 'aborted_unmatched',
                                   'peer_lost_unmatched', 'refused_intake', 'unmatched_timeout'])
def test_receive_dispositions_at_real_control_boundaries(capture, outcome):
    from minisgl.disagg.prefill import PrefillPD, _PReq
    p, d, pg, dg, xid, eid = world()
    m = (1, 22, dg, xid + 100, 5, 'hash', [0, 1, 2], d.d_descriptor(xid))
    obj = PrefillPD.__new__(PrefillPD)
    obj.ledger = p; obj.inst = 11
    obj.ready = []; obj.failed = []; obj.pending = {}; obj.dropped_rooms = {}
    obj.counters = dict(acks=0, fails_sent=0, refused_dests=0, mismatch=0)
    obj._send = lambda *a: True
    obj._take_refused = lambda *a: False
    r = _PReq(9, 7, 5, 'hash', 0, rid='recv-test')
    obj.reqs = {}; obj.uid_of_room = {}; obj.peers = {}
    obj.unmatched = {7: [(0, m)]}
    if outcome == 'bound': obj._match(r, m)
    elif outcome == 'duplicate':
        r.match = m; obj._match(r, m)
    elif outcome == 'mismatch':
        r.ntokens = 6; obj._match(r, m)
    elif outcome == 'aborted_unmatched': obj._on_abort(1, 22, dict(room=7, gen=dg, xid=xid+100))
    elif outcome == 'peer_lost_unmatched': obj._peer_lost(22)
    elif outcome == 'refused_intake': obj._refuse_dest(m, 7, outcome, L.REJ_DUP)
    else:
        obj.hub = SimpleNamespace(poll=lambda *a: [])
        obj.bootstrap_timeout = 10
        obj.refused = {}
        obj.poll(now=20)
    rs = [r for r in capture() if r.get('ev') == 'ddesc_recv']
    assert any(r['disposition'] == outcome and r['wire_pages'] == m[6] and r['xid'] == m[3] for r in rs)
    assert all(r['bind'] == (r['disposition'] == 'bound') for r in rs)
    assert not any(r['bind'] for r in rs) or outcome == 'bound'


def test_negative_post_has_no_fabricated_entry(capture):
    p, d, pg, dg, xid, eid = world()
    assert p.p_post(pg, 5, 22, 7, dg, xid, [0, 1, 2]) == L.REJ_DUP
    rec = capture()[-1]
    assert rec['res'] == L.REJ_DUP and 'entry_snapshot' not in rec
    assert rec['ddesc_v'] == 1
