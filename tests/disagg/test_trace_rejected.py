"""the contract: refusals are observable without changing successful traces or exceptions."""
import io
import json
import logging

import pytest

from minisgl.disagg import ledger as L, trace as T


# Every explicit Ledger API plus an extension reached via __getattr__.
CALLS = [
    ('register_peer', (42, [1, 2]), {}), ('peer_lost', (42,), {}),
    ('open_req', (5,), {}), ('open_req', (5,), {'prefix_tokens': [7, 8]}),
    ('hit', (2, 3), {}), ('seal', (2,), {}), ('dedup', (2, 3), {}),
    ('evict', (3,), {}), ('flush_shared', (), {}), ('alloc', (2, 4), {}),
    ('pages_of', (2,), {}), ('token_slots', (2, 0, 2), {}), ('release', (2,), {}),
    ('launch', (1, [(2, 0, 2)]), {}), ('complete', (1,), {}),
    ('k_launch', (1, [(2, 0, 2)], 1), {'rows': [9]}), ('step_done', (1,), {}),
    ('bind_row', (9, 2), {}), ('row_gen', (9,), {}),
    ('d_expect', (2, 42, 4), {}), ('d_descriptor', (1,), {}),
    ('d_landed', (42, 5, 2, 1, 4), {}), ('d_mark_visible', (1,), {}),
    ('d_stopped', (42, 5, 2, 1), {}), ('d_unstopped', (1, 2), {}), ('d_xfer', (1,), {}),
    ('p_post', (2, 4, 42, 5, 6, 1, [3, 4]), {'dst_descriptor': (42, 5, 6, 1, 4, (1, 2), (3, 4))}),
    ('p_expose', (2, 4, 42, 5, 6, 1, [3, 4]), {'dst_descriptor': (42, 5, 6, 1, 4, (1, 2), (3, 4))}),
    ('p_plan', (1,), {}), ('p_begin', (1,), {}), ('p_cancel', (1,), {}),
    ('p_done', (1, True), {}), ('p_abort', (42, 1), {}), ('p_entry', (1,), {}),
    ('free_pages', (), {}), ('stats', (), {}), ('check', (), {}),
    ('check_kargs', (1, bytearray(b'\x00\x01\xff')), {}),
    ('check_kargs', (1, memoryview(b'\x00\x01\xff')), {}),
    ('prefix_guard', (), {}),
]


class Inner:
    page_size = 2

    def __init__(self, method, error):
        self.method, self.error = method, error
        self.calls = []

    def __getattr__(self, name):
        def call(*args, **kwargs):
            if name == self.method:
                self.calls.append((args, kwargs))
                raise self.error
            return {'pages_of': [], 'shared_snapshot': [], 'p_entry': (0, 0, 0, 0, 0),
                    'd_xfer': (0, 0, 0, 0, 0), 'page_states': []}.get(name)
        return call


@pytest.fixture
def capture(monkeypatch):
    stream = io.StringIO()
    handler = T.StepLineHandler(stream, logging.Formatter('%(message)s'))
    monkeypatch.setattr(T.logger, 'handlers', [handler])
    old_level = T.logger.level
    T.logger.setLevel(logging.INFO)  # also invalidate logging's isEnabledFor cache
    monkeypatch.setattr(T, 'ENABLED', True)
    monkeypatch.setattr(T, 'STEP_LINES', True)
    monkeypatch.setattr(T, '_SEQ', [0])
    yield stream
    handler.flush()
    T.logger.setLevel(old_level)


def records(stream):
    return [json.loads(line[4:]) for line in stream.getvalue().splitlines() if line.startswith('PDT ')]


@pytest.mark.parametrize('method,args,kwargs', CALLS)
def test_each_ledger_api_refusal_is_one_event_and_original_exception(capture, method, args, kwargs):
    error = L.LedgerViolation('[ledger inst=7] HitIdentity: test guard')
    inner = Inner(method, error)
    ledger = T.TracedLedger(inner, 7, 'P')
    ledger.bind(2, rid='request', room=5, uid=10, prefix_tokens=[7, 8])
    ledger.event('boundary', edge='before')
    with pytest.raises(L.LedgerViolation) as raised:
        getattr(ledger, method)(*args, **kwargs)
    assert raised.value is error
    assert len(inner.calls) == 1
    ledger.event('boundary', edge='after')
    rs = records(capture)
    assert [r['seq'] for r in rs] == [1, 2, 3]
    r = rs[1]
    assert (r['k'], r['ev'], r['m'], r['guard'], r['exception']) == (
        'rejected', 'rejected', method, 'HitIdentity', 'LedgerViolation')
    if method == 'check_kargs':
        assert r['args'][1] == {'encoding': 'hex', 'data': '0001ff'}
    else:
        assert r['args'] == json.loads(json.dumps(args))
        assert r['kwargs'] == json.loads(json.dumps(kwargs))
    assert r['res'] is None and r['message'] == str(error)
    if method in ('p_post', 'p_expose'):
        assert r['a'] == list(args[:6]) and r['dst'] == [[3, 2]]
        assert (r['h'], r['peer'], r['room'], r['d_h'], r['xid']) == (2, '0x2a', 5, 6, 1)
    if method == 'register_peer':
        assert r['a'] == [42] and r['layout'] == [1, 2]


def test_rejection_flushes_pending_and_buffered_launch_without_success_context(capture):
    error = L.LedgerViolation('postcondition PrefcMatchesHolders: broken')
    ledger = T.TracedLedger(Inner('p_done', error), 7, 'P')
    T.write({'k': 'step', 'ev': 'kdone', 'step': 1}, step=True)
    ledger._pending_kargs = ({'k': 'step', 'ev': 'klaunch', 'step': 2}, [])
    ledger.eid_ctx.put(1, {'h': 2, 'src': [[3, 1]]})
    with pytest.raises(L.LedgerViolation):
        ledger.p_done(1, True)
    rs = records(capture)
    assert [r['ev'] for r in rs] == ['kdone', 'klaunch', 'rejected']
    assert [r['seq'] for r in rs] == [1, 2, 3]
    assert rs[-1]['phase'] == 'postcondition'
    assert ledger.eid_ctx[1]['src'] == [[3, 1]]


@pytest.mark.parametrize('enabled,error,count', [(False, L.LedgerViolation('bad'), 0),
                                                (True, RuntimeError('not ledger'), 0),
                                                (True, TypeError('not ledger'), 0)])
def test_no_false_rejection(capture, monkeypatch, enabled, error, count):
    monkeypatch.setattr(T, 'ENABLED', enabled)
    ledger = T.TracedLedger(Inner('k_launch', error), 7, 'D')
    with pytest.raises(type(error)) as raised:
        ledger.k_launch(1, [(2, 0, 2)])
    assert raised.value is error
    assert len(records(capture)) == count and T._SEQ[0] == 0


def test_arguments_frozen_before_inner_mutates_them(capture):
    error = L.LedgerViolation('bad')
    class Mutating(Inner):
        def k_launch(self, step, items, npad, *, rows):
            items[0][0] = 99
            rows[0] = 99
            raise error
    ledger = T.TracedLedger(Mutating('k_launch', error), 7, 'D')
    with pytest.raises(L.LedgerViolation):
        ledger.k_launch(1, [[2, 0, 2]], rows=[9])
    r = records(capture)[0]
    assert r['args'] == [1, [[2, 0, 2]], 0] and r['kwargs'] == {'rows': [9]}


@pytest.mark.parametrize('method', ['alloc', 'release'])
def test_invalid_generation_reaches_original_method(capture, method):
    lay = [2, 2, 1, 2, 4, 17, 1 << 40, 1, 777]
    inner = L.PdLedger(16, lay, 7, role='P', check_every=1)
    ledger = T.TracedLedger(inner, 7, 'P')
    args = (999, 1) if method == 'alloc' else (999,)
    with pytest.raises(L.LedgerViolation, match='gen 999'):
        getattr(ledger, method)(*args)
    assert [r['m'] for r in records(capture)] == [method]


def test_broken_capture_does_not_replace_original_ledger_exception(capture, monkeypatch):
    error = L.LedgerViolation('original refusal')
    ledger = T.TracedLedger(Inner('open_req', error), 7, 'P')
    def broken(*args, **kwargs):
        raise OSError('closed capture')
    monkeypatch.setattr(T.logger, 'info', broken)
    monkeypatch.setattr(T.logger, 'exception', broken)
    with pytest.raises(L.LedgerViolation) as raised:
        ledger.open_req(5)
    assert raised.value is error


@pytest.mark.parametrize('gen', ['unknown', []])
def test_wrong_role_with_malformed_generation_still_records_original_refusal(capture, gen):
    lay = [2, 2, 1, 2, 4, 17, 1 << 40, 1, 777]
    ledger = T.TracedLedger(L.PdLedger(16, lay, 7, role='D'), 7, 'D')
    with pytest.raises(L.LedgerViolation, match=L.ROLE_REFUSED):
        ledger.hit(gen, 0)
    r = records(capture)[0]
    assert r['m'] == 'hit' and r['args'] == [gen, 0] and r['h'] == -1
    assert r['guard'] == L.ROLE_REFUSED


def test_unknown_string_generation_is_a_captured_ledger_error(capture):
    lay = [2, 2, 1, 2, 4, 17, 1 << 40, 1, 777]
    ledger = T.TracedLedger(L.PdLedger(16, lay, 7, role='P'), 7, 'P')
    with pytest.raises(L.LedgerViolation, match='gen unknown'):
        ledger.alloc('unknown', 1)
    r = records(capture)[0]
    assert r['m'] == 'alloc' and r['args'] == ['unknown', 1] and r['h'] == -1


def test_bad_page_operand_cannot_mask_a_ledger_guard(capture):
    error = L.LedgerViolation('ROLE_REFUSED')
    ledger = T.TracedLedger(Inner('p_post', error), 7, 'D')
    args = (2, 4, 'bad-peer', 'bad-room', [], 1, ['bad-page'])
    with pytest.raises(L.LedgerViolation) as raised:
        ledger.p_post(*args)
    assert raised.value is error
    r = records(capture)[0]
    assert r['args'] == list(args) and 'dst_error' in r
    assert r['peer'] == '' and r['room'] == r['d_h'] == -1
