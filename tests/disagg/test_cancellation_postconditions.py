"""Cancellation and launch checks must hold even when full invariant scans are off."""
import json
import logging
from types import SimpleNamespace

import pytest

from minisgl.disagg import ledger as L
from minisgl.disagg import messages as M
from minisgl.disagg import prefill as P
from minisgl.disagg import trace as T


def source(check_every=0):
    led = L.PdLedger(16, [2, 2, 1, 2, 4, 17, 0, 3, 7], 1,
                     check_every=check_every, role="P")
    led.register_peer(2, led.layout)
    gen = led.open_req(11)
    pages = led.alloc(gen, 2)
    led.k_launch(1, [(gen, 0, 4)])
    led.step_done(1)
    return led, gen, pages


def post(led, gen, xid=1):
    eid = led.p_post(gen, 4, 2, 11, 8, xid, [0, 1])
    assert eid > 0
    return eid


@pytest.mark.parametrize('check_every', [0, 1])
def test_quar_no_reg_positive_and_transition_refusal(check_every):
    led, gen, pages = source(check_every)
    eid = post(led, gen)
    # Never-started entries are not allowed to become quarantined, even with full scans off.
    with pytest.raises(L.LedgerViolation, match='postcondition QuarNoReg'):
        led._quarantine(pages[0], L.Q_TIMEOUT, 2)
    assert led.page_states(pages) == [L.PRIVATE] * 2
    assert led.p_begin(eid)
    assert led.p_done(eid, False) == L.SEND_FAIL_UNSTOPPED
    assert led.page_states(pages) == [L.QUARANTINED] * 2
    led.check()  # FAILED is not reg; no false positive on a real failed transfer.


def test_quar_no_reg_rejects_deliberately_corrupted_quarantine():
    led, gen, pages = source()
    post(led, gen)
    # Deliberate bad state; keep the other invariants consistent to isolate QuarNoReg.
    led.pst[pages[0]] = L.QUARANTINED
    led.pqr[pages[0]] = L.Q_TIMEOUT
    led.q_total = 1
    led.reqs[gen].state = L.R_FAILED
    with pytest.raises(L.LedgerViolation, match='postcondition QuarNoReg'):
        led.check()


@pytest.mark.parametrize('release_first', [False, True])
def test_p_cancel_never_submitted_has_stopped_evidence(release_first):
    led, gen, pages = source(1)
    eid = post(led, gen)
    if release_first:
        assert led.release(gen) == 0
    assert led.p_cancel(eid)
    assert not led.p_cancel(eid)  # idempotent, no extra cancellation count
    assert not led.p_begin(eid)  # queued worker must not access recycled pages
    if not release_first:
        assert led.release(gen) == 2
    assert led.page_states(pages) == [L.FREE] * 2
    assert led.stats()['entries_cancelled'] == 1
    assert led.p_abort(2, 1) == L.SEND_ACK
    led.check()


@pytest.mark.parametrize('state', ['submitted', 'abort_req', 'failed', 'done', 'unknown'])
def test_p_cancel_never_claims_a_submitted_transfer_stopped(state):
    led, gen, pages = source(1)
    eid = post(led, gen)
    assert led.p_begin(eid)
    if state == 'abort_req':
        assert led.p_abort(2, 1) == L.SEND_NOTHING
    elif state in ('failed', 'done'):
        led.p_done(eid, state == 'done')
    elif state == 'unknown':
        eid += 100
    before = (led.stats(), led.p_entry(eid), led.page_states(pages))
    assert not led.p_cancel(eid)
    assert before == (led.stats(), led.p_entry(eid), led.page_states(pages))
    led.check()


def test_p_cancel_is_role_guarded():
    led = L.PdLedger(4, [2, 2, 1, 2, 4, 5, 0, 3, 7], 1, role='D')
    with pytest.raises(L.LedgerViolation, match=L.ROLE_REFUSED):
        led.p_cancel(0)


class IdleThread:
    def __init__(self, **kw):
        pass

    def start(self):
        pass


class LocalHub:
    def __init__(self):
        self.sent = []

    def listen(self, *args):
        return 1

    def poll(self, timeout):
        return []

    def send(self, cid, msg):
        self.sent.append((cid, msg))
        return True


@pytest.fixture
def queued(monkeypatch):
    # Keep the real PrefillPD state machine and queue, but control when its worker runs.
    monkeypatch.setattr(P, 'Hub', LocalHub)
    monkeypatch.setattr(P.threading, 'Thread', IdleThread)
    monkeypatch.setattr(T, 'ENABLED', True)
    led, gen, pages = source(1)
    writes = []
    backend = SimpleNamespace(write=lambda *args: writes.append(args) or 0)
    pd = P.PrefillPD(led, backend, led.layout, 1, bootstrap_timeout=10)
    assert pd.add_request(7, 11, 4, 'prompt')
    pd._match(pd.reqs[7], (9, 2, 8, 1, 4, 'prompt', [0, 1]))
    assert pd.pop_ready() == [7]
    eid = pd.on_prefill_done(7, gen, 4, 99)
    assert eid > 0 and 7 not in pd.reqs
    pd.peers[2] = SimpleNamespace(session='fake')
    return pd, led, gen, pages, eid, writes


@pytest.mark.parametrize('release_first', [False, True])
def test_local_abort_cancels_posted_record_before_reuse(queued, release_first, caplog):
    pd, led, gen, pages, eid, writes = queued
    caplog.set_level(logging.INFO, logger='minisgl.disagg')
    if release_first:
        pd.ledger.release(gen)
    pd.abort(7)
    if not release_first:
        pd.ledger.release(gen)
    assert led.page_states(pages) == [L.FREE] * 2
    pd.abort(7)
    assert len(pd.hub.sent) == 1
    fail = pd.hub.sent[0][1]
    assert (fail['t'], fail['stopped'], fail['gen'], fail['xid']) == (M.KV_FAIL, 1, 8, 1)
    pd._work.put(None)
    pd._worker_loop()
    assert writes == [] and led.stats()['quarantined'] == 0
    records = [json.loads(r.getMessage()[4:]) for r in caplog.records
               if r.getMessage().startswith('PDT ')]
    cancel = [r for r in records if r.get('via') == 'p_cancel']
    assert len(cancel) == 1
    assert (cancel[0]['m'], cancel[0]['entry'], cancel[0]['result']) == ('p_abort', 'posted', 'ack')
    assert cancel[0]['a'] == [2, 1] and cancel[0]['res'] == L.SEND_ACK
    assert cancel[0]['eid'] == eid and cancel[0]['why'] == 'client_abort'
    if not release_first:
        rel = next(r for r in records if r.get('m') == 'release')
        assert cancel[0]['seq'] < rel['seq']
    led.check()


def test_drain_deadline_cancels_only_queued_work(queued):
    pd, led, gen, pages, eid, writes = queued
    pd.ledger.release(gen)
    assert led.page_states(pages) == [L.DRAINING] * 2
    deadline = pd.pending[7][-1] + 10
    pd.poll(now=deadline)
    assert led.p_entry(eid)[0] == L.E_POSTED  # strict deadline, still queued
    pd.poll(now=deadline + .01)
    assert led.page_states(pages) == [L.FREE] * 2
    assert len(pd.hub.sent) == 1 and pd.hub.sent[0][1]['stopped'] == 1
    pd.poll(now=deadline + 100)
    pd._work.put(None)
    pd._worker_loop()
    assert writes == [] and not pd.pending and len(pd.hub.sent) == 1
    assert led.stats()['quarantined'] == 0
    led.check()


@pytest.mark.parametrize('trigger', ['abort', 'timeout', 'race'])
def test_begin_wins_cancel_keeps_running_hold(queued, trigger, monkeypatch):
    pd, led, gen, pages, eid, writes = queued
    pd.ledger.release(gen)
    deadline = pd.pending[7][-1] + 11
    if trigger == 'race':
        original = led.p_cancel
        def racing(e):
            assert led.p_begin(e)
            return original(e)
        monkeypatch.setattr(led, 'p_cancel', racing)
        pd.poll(now=deadline)  # sees POSTED; p_begin wins before p_cancel takes the lock
    else:
        assert led.p_begin(eid)
        pd.abort(7) if trigger == 'abort' else pd.poll(now=deadline)
    assert pd.hub.sent == [] and led.page_states(pages) == [L.DRAINING] * 2
    assert led.p_entry(eid)[0] == L.E_SUBMITTED
    assert led.p_done(eid, True) == L.SEND_DONE
    assert led.page_states(pages) == [L.FREE] * 2
    led.check()


@pytest.mark.parametrize('ps', [1, 3, 16, 64])
@pytest.mark.parametrize('shape', ['uniform', 'midpage', 'mixed', 'empty'])
def test_full_slot_checker_matches_scalar_on_every_corrupted_position(ps, shape):
    if L._np is None:
        pytest.skip('numpy path unavailable')
    led = L.PdLedger(32, [2, ps, 1, 2, 4, 33, 0, 3, 7], 1)
    gens = [led.open_req(i) for i in range(3)]
    for g in gens:
        led.alloc(g, 5)
    counts = [2 * ps + 1] * 3
    tok0 = [0] * 3
    if shape == 'midpage':
        tok0 = [ps - 1] * 3
    elif shape == 'mixed':
        counts, tok0 = [0, ps + 1, 2 * ps], [0, 1, 2]
    elif shape == 'empty':
        counts = [0] * 3
    ptr, slots = [0], []
    for g, t, n in zip(gens, tok0, counts):
        slots += led.token_slots(g, t, t + n)
        ptr.append(len(slots))
    def buf(values):
        return bytearray(L._np.asarray(values, dtype='<i4').tobytes())
    good = buf(slots)
    assert led._slots_np(good, ptr, 3, tok0, gens) is None
    assert led._slots_py(good, ptr, 3, tok0, gens) is None
    for pos, slot in enumerate(slots):
        for replacement in (-1, led.num_pages * ps, slot + 1, slot ^ ps):
            bad = bytearray(good)
            bad[4 * pos:4 * pos + 4] = replacement.to_bytes(4, 'little', signed=True)
            want = led._slots_py(bad, ptr, 3, tok0, gens)
            assert want is not None
            assert led._slots_np(bad, ptr, 3, tok0, gens) == want


@pytest.mark.parametrize('field,value', [('pst', L.DRAINING), ('pown', 0), ('pix', 99)])
def test_paged_checker_uses_reverse_map_not_kargs_page_list(field, value):
    led = L.PdLedger(16, [2, 16, 1, 2, 4, 17, 0, 3, 7], 1)
    g = led.open_req(1)
    pages = led.alloc(g, 4)
    items = [(g, 0, 49)]
    arrs = led._kargs(1, items, 0)
    getattr(led, field)[pages[1]] = value
    with pytest.raises(L.LedgerViolation, match='postcondition ReadOwnership'):
        led._kargs_post(1, items, 0, None, arrs)


@pytest.mark.parametrize('fallback', [False, True])
def test_d_grow_fifo_and_release_cover_every_page(monkeypatch, fallback):
    if fallback:
        monkeypatch.setattr(L, '_np', None)
    led = L.PdLedger(16, [2, 4, 1, 2, 4, 17, 0, 3, 7], 2, check_every=1, role='D')
    led.register_peer(1, led.layout)
    g = led.open_req(11)
    initial = led.alloc(g, 1)  # DRecvReq allocation half
    x = led.d_expect(g, 1, 4)
    assert led.d_landed(1, 11, g, x, 4) == L.OK
    led.d_mark_visible(x)
    grown = led.alloc(g, 1)  # DGrow(run)
    with pytest.raises(L.LedgerViolation, match='reads 5 tokens'):
        led.k_launch(1, [(g, 5, 6)])  # no step wrote this token yet
    led.k_launch(1, [(g, 4, 5)])  # W: first grown token written on the stream
    grown += led.alloc(g, 1)  # DGrow while previous step is in flight
    led.k_launch(2, [(g, 5, 9)])  # StreamFIFO: reads step 1's write before KDone(1)
    later = led.alloc(g, 1)  # after the latest snapshot: not pinned by either step
    assert led.release(g) == 1
    assert led.page_states(later) == [L.FREE]
    assert led.page_states(initial + grown) == [L.DRAINING] * 3
    led.step_done(1)
    assert led.page_states(initial + grown) == [L.DRAINING] * 3
    led.step_done(2)
    assert led.page_states(initial + grown) == [L.FREE] * 3
    led.check()
