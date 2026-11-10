"""launch postconditions: independent launch-check refusals and incarnation pins (CPU, pure Python)."""
import array

import pytest

from minisgl.disagg import ledger as L


def make(ps=1):
    led = L.PdLedger(32, [2, ps, 1, 2, 4, 33, 0, 3, 7], 1, check_every=1)
    a, b = led.open_req(11), led.open_req(12)
    led.alloc(a, 4)
    led.alloc(b, 4)
    led.bind_row(0, a)
    led.bind_row(1, b)
    return led, a, b


def put(buf, index, value):
    buf[4 * index:4 * index + 4] = int(value).to_bytes(4, 'little', signed=True)


@pytest.mark.parametrize('fallback', [False, True])
@pytest.mark.parametrize('check_name', ['ArrayShapes', 'TokenOffsets', 'GenerationVisibility', 'ReadOwnership', 'WriteOwnership', 'PaddingIsolation'])
def test_each_launch_check_refuses_bad_result(monkeypatch, fallback, check_name):
    led, a, b = make(4)
    items, rows = [(a, 0, 3), (b, 0, 4)], [0, 1]
    arrs = list(led._kargs(1, items, 1))
    if check_name == 'ArrayShapes':
        arrs[4].extend(b'\0\0\0\0')
    elif check_name == 'TokenOffsets':
        put(arrs[4], 0, 0)
    elif check_name == 'GenerationVisibility':
        rows = [1, 0]  # independent row-binding postcondition, not the precheck
    elif check_name == 'ReadOwnership':
        put(arrs[2], 1, led.token_slots(b, 1, 2)[0])
    elif check_name == 'WriteOwnership':
        put(arrs[3], 1, led.token_slots(b, 1, 2)[0])
    elif check_name == 'PaddingIsolation':
        put(arrs[2], 7, led.token_slots(a, 0, 1)[0])
    if fallback:
        monkeypatch.setattr(L, '_np', None)
    before = (led.step, led.done, list(led.pst), led.stats())
    with pytest.raises(L.LedgerViolation, match=f'postcondition {check_name}'):
        led._kargs_post(1, items, 1, rows, arrs)
    assert (led.step, led.done, list(led.pst), led.stats()) == before
    led.check()


@pytest.mark.parametrize('ps', [1, 4])
def test_kargs_corruption_rejected_before_pinning(monkeypatch, ps):
    led, a, b = make(ps)
    original = led._kargs
    def wrong(*args):
        out = original(*args)
        put(out[2], 2, led.token_slots(a, 0, 1)[0])  # cross-row-read: second row reads first row
        return out
    monkeypatch.setattr(led, '_kargs', wrong)
    with pytest.raises(L.LedgerViolation, match='postcondition ReadOwnership'):
        led.k_launch(1, [(a, 0, 2), (b, 0, 2)], rows=[0, 1])
    assert led.step == led.done == 0 and not led.steps
    led.check()


def test_growing_overlapped_pin_holds_old_and_new_pages():
    led, a, _ = make()
    first = led.pages_of(a)
    led.k_launch(1, [(a, 0, 2)], rows=[0])
    extra = led.alloc(a, 1)
    led.k_launch(2, [(a, 2, 5)], rows=[0])
    later = led.alloc(a, 1)  # allocated after latest launch: not read by either step
    assert led.release(a) == 1
    assert led.page_states(later) == [L.FREE]
    assert led.page_states(first + extra) == [L.DRAINING] * 5
    led.step_done(1)
    assert led.page_states(first + extra) == [L.DRAINING] * 5
    led.step_done(2)
    assert led.page_states(first + extra) == [L.FREE] * 5
    led.check()


def test_pin_corruption_detected_by_full_check():
    led, a, _ = make()
    led.k_launch(1, [(a, 0, 2)])
    led.reqs[a].rls = 2
    with pytest.raises(L.LedgerViolation, match='pin names no in-flight step'):
        led.check()


@pytest.mark.parametrize('landed', [False, True])
def test_legacy_launch_requires_visible(landed):
    """launch() is public too; k_launch's independent GenerationVisibility must not mask this precheck."""
    led, a, _ = make()
    led.register_peer(2, led.layout)
    xid = led.d_expect(a, 2, 2)
    if landed:
        assert led.d_landed(2, 11, a, xid, 2) == L.OK
    with pytest.raises(L.LedgerViolation, match='not landed\\+visible'):
        led.launch(1, [(a, 0, 2)])
    assert led.step == led.done == 0


def test_generation_visibility_independently_checks_incoming_visibility():
    led, a, _ = make()
    led.register_peer(2, led.layout)
    arrs = led._kargs(1, [(a, 0, 2)], 0)
    led.d_expect(a, 2, 2)
    with pytest.raises(L.LedgerViolation, match='postcondition GenerationVisibility'):
        led._kargs_post(1, [(a, 0, 2)], 0, [0], arrs)


def test_incoming_stop_keeps_zero_write_step_pin():
    """A zero-write launch pins allocated pages; written/launched stay zero, so exposure
    is still allowed on the unset-role API. Stopped RDMA must not erase the local pin."""
    led, a, _ = make()
    led.register_peer(2, led.layout)
    pages = led.pages_of(a)
    led.launch(1, [(a, 0, 0)])
    xid = led.d_expect(a, 2, 2)
    assert led.release(a) == 0
    assert led.d_stopped(2, 11, a, xid) == L.OK
    assert led.page_states(pages) == [L.DRAINING] * len(pages)
    led.step_done(1)
    assert led.page_states(pages) == [L.FREE] * len(pages)


def test_xfer_observer_does_not_report_reclaimed_transfer():
    led, a, _ = make()
    led.register_peer(2, led.layout)
    xid = led.d_expect(a, 2, 2)
    led.release(a)
    assert led.d_stopped(2, 11, a, xid) == L.OK
    assert led.d_xfer(xid) == (0, 0, 0, 0, 0)


def test_full_check_rejects_owned_page_in_free_stack():
    led, a, _ = make()
    led.free.append(led.pages_of(a)[0])
    with pytest.raises(L.LedgerViolation, match='is in the free list'):
        led.check()


def test_step_done_never_releases_quarantine():
    led, a, _ = make()
    led.register_peer(2, led.layout)
    led.k_launch(1, [(a, 0, 2)]); led.step_done(1)
    eid = led.p_post(a, 2, 2, 22, 8, 1, [0, 1])
    assert eid > 0 and led.p_begin(eid)
    led.k_launch(2, [(a, 2, 3)])
    assert led.p_done(eid, False) == L.SEND_FAIL_UNSTOPPED
    pages = led.pages_of(a)
    led.release(a)
    led.step_done(2)
    assert led.page_states(pages[:2]) == [L.QUARANTINED] * 2
    assert led.page_states(pages[2:]) == [L.FREE] * 2
    led.check()


def test_post_rejects_completed_prefix_still_read_by_later_step():
    led, a, _ = make()
    led.register_peer(2, led.layout)
    led.launch(1, [(a, 0, 2)]); led.complete(1)
    led.launch(2, [(a, 2, 3)])
    # The source is written already; it is the live read pin, not written, that must refuse.
    assert led.p_post(a, 2, 2, 22, 8, 1, [0, 1]) == L.REJ_SRC
    assert led.entries == {}
    led.complete(2)
    assert led.p_post(a, 2, 2, 22, 8, 1, [0, 1]) > 0


def test_legacy_launch_refuses_failed_incarnation():
    led, a, _ = make()
    led.register_peer(2, led.layout)
    led.launch(1, [(a, 0, 2)]); led.complete(1)
    eid = led.p_post(a, 2, 2, 22, 8, 1, [0, 1])
    assert eid > 0 and led.p_begin(eid)
    led.p_done(eid, False)  # FAILED without any incoming-xfer visibility guard to mask it
    with pytest.raises(L.LedgerViolation):
        led.launch(2, [(a, 0, 0)])
    assert led.step == 1


def test_released_source_waits_for_every_outgoing_reader():
    """Two destinations read the same released source prefix; one completion is insufficient."""
    led, a, _ = make()
    led.register_peer(2, led.layout)
    led.k_launch(1, [(a, 0, 4)]); led.step_done(1)
    pages = led.pages_of(a)
    e1 = led.p_post(a, 2, 2, 21, 8, 1, [0, 1])
    e2 = led.p_post(a, 2, 2, 22, 9, 2, [2, 3])
    assert e1 > 0 and e2 > 0 and led.p_begin(e1) and led.p_begin(e2)
    assert led.release(a) == 2  # only the unexported suffix can be freed
    assert led.p_done(e1, True) == L.SEND_DONE
    assert led.page_states(pages[:2]) == [L.DRAINING] * 2
    assert led.p_done(e2, True) == L.SEND_DONE
    assert led.page_states(pages) == [L.FREE] * 4
    led.check()
