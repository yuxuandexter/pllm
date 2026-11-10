"""Timing must preserve accounting, lifecycle behavior, and invalid-export detection."""
from copy import deepcopy
import inspect
import json
import threading
from types import SimpleNamespace
import urllib.request

import pytest
from minisgl.disagg import ledger as L, timing as TM, trace as T


class Clock:
    def __init__(self):
        self.w = self.c = 0
        self.calls = []
    def wall(self):
        self.calls.append('wall'); return self.w
    def cpu(self):
        self.calls.append('cpu'); return self.c
    def advance(self, w, c):
        self.w += w; self.c += c


def timer(limit=100000):
    c = Clock()
    t = TM.LedgerTiming(1, 'D', 0, limit=limit, wall=c.wall, cpu=c.cpu)
    return t, c


def batch(t):
    return t.new_batch(SimpleNamespace(is_prefill=False, reqs=[1, 2]))


def ledger(monkeypatch, enabled=True, check=0, cls=L.PdLedger):
    monkeypatch.setenv('MINISGL_PD_LEDGER_TIMING', str(int(enabled)))
    return cls(32, [2, 4, 1, 2, 4, 33, 0, 3, 7], 1, check_every=check)


def test_disabled_has_original_methods_and_no_new_clocks(monkeypatch):
    def fail():
        pytest.fail('disabled ledger called a clock')
    monkeypatch.setattr(TM.time, 'perf_counter_ns', fail)
    monkeypatch.setattr(TM.time, 'thread_time_ns', fail)
    l = ledger(monkeypatch, False)
    assert not hasattr(l, '_timing')
    assert l.open_req.__func__ is L.PdLedger.open_req
    g = l.open_req(1); l.alloc(g, 1); l.k_launch(1, [(g, 0, 3)])
    l.step_done(1); l.release(g); l.check()


def test_method_inventory_and_type_preserved(monkeypatch):
    l = ledger(monkeypatch)
    actual = {n for n, f in inspect.getmembers(L.PdLedger, inspect.isfunction) if not n.startswith('_')}
    assert actual == TM.PUBLIC
    assert type(l) is L.PdLedger
    assert isinstance(T.wrap(l, 1, 'D'), T.TracedLedger)
    assert TM.collector(T.wrap(l, 1, 'D')) is l._timing


def test_clock_order_nested_outer_only_and_scopes():
    t, c = timer(); r = batch(t); t.bind(r, 1)
    inner = t.wrap(lambda: c.advance(7, 3), 'complete')
    def fn():
        c.advance(2, 1); inner(); c.advance(5, 2)
    outer = t.wrap(fn, 'step_done')
    c.calls.clear()
    with t.scope(r, 'complete'):
        outer()
    assert c.calls[:4] == ['wall', 'cpu', 'cpu', 'wall']
    assert r['ledger_wall_ns'] == 14 and r['ledger_cpu_ns'] == 6
    assert r['by_call'] == {'step_done': dict(wall_ns=14, cpu_ns=6, calls=1, errors=0)}
    assert r['by_scope']['complete']['calls'] == 1
    assert r['clock_calls'] == 12  # new_batch 4 + body 4 + accumulation 4


def test_interleaved_batch_scope_restores_and_retire_is_included():
    t, c = timer(); a, b = batch(t), batch(t)
    t.bind(a, 1); t.bind(b, 2)
    call = t.wrap(lambda: c.advance(10, 6), 'release')
    with t.scope(b, 'prepare'):
        call()
        with t.scope(a, 'complete'):
            call()
        with t.scope(a, 'retire'):
            call()
        call()
    for r in (a,b):
        r['launched'] = True; t.seal(r, True)
    assert a['by_scope']['retire']['calls'] == 1
    assert a['by_scope']['complete']['calls'] == 1
    assert b['by_scope']['prepare']['calls'] == 2
    assert a['ledger_wall_ns'] == b['ledger_wall_ns'] == 20
    assert t.context() == (None, 'control')


def test_thread_has_no_scheduler_token():
    t, c = timer(); r = batch(t)
    call = t.wrap(lambda: None, 'p_done')
    with t.scope(r, 'prepare'):
        th = threading.Thread(target=call, name='test-xfer'); th.start(); th.join()
    assert r['ledger_wall_ns'] == 0 and not r['by_call']
    rows = t.snapshot()['ambient']
    assert len(rows) == 1 and rows[0]['scope'] == 'control' and rows[0]['thread_name'] == 'test-xfer'


def test_prefix_guard_times_only_acquire_and_release(monkeypatch):
    l = ledger(monkeypatch); t = l._timing; c = Clock(); t.wall, t.cpu = c.wall, c.cpu
    r = batch(t)
    with t.scope(r, 'prepare'):
        with l.prefix_guard():
            c.advance(10000, 9000)
            l.free_pages()
    assert r['ledger_wall_ns'] == 0
    assert set(r['by_call']) == {'prefix_guard.acquire', 'prefix_guard.release', 'free_pages'}
    # Original exception identity survives context-manager exit.
    error = ValueError('body')
    with pytest.raises(ValueError) as caught:
        with l.prefix_guard():
            raise error
    assert caught.value is error
    assert l.free_pages() == 32


def test_auxiliary_overlap_removed_but_diagnostics_are_inclusive():
    t, c = timer(); r = batch(t)
    sub = t.wrap(lambda: c.advance(2, 1), '_check', 'subspans_inclusive')
    def work():
        c.advance(5, 3); sub()
    core = t.wrap(work, 'token_slots')
    with t.scope(r, 'prepare'):
        with t.auxiliary('row_check'):
            c.advance(10, 6); core(); c.advance(3, 2)
    assert r['ledger_wall_ns'] == 7
    assert r['subspans_inclusive']['_check']['wall_ns'] == 2
    assert r['auxiliary_inclusive']['row_check']['wall_ns'] == 20
    assert r['auxiliary_exclusive']['row_check']['wall_ns'] == 13
    assert r['ledger_wall_ns'] + r['auxiliary_exclusive']['row_check']['wall_ns'] == 20


@pytest.mark.parametrize('kind', [ValueError, L.LedgerViolation, KeyboardInterrupt])
def test_exception_object_preserved_and_failed_record(kind):
    t, c = timer(); r = batch(t); t.bind(r,1)
    error = kind('same exception')
    def fail():
        c.advance(5, 3); raise error
    with pytest.raises(kind) as caught:
        with t.scope(r, 'prepare'):
            t.wrap(fail, 'k_launch')()
    assert caught.value is error
    t.seal(r, False)
    out = t.snapshot(0, 1)
    assert out['status'] == 'INCONCLUSIVE' and not out['records'][0]['completed']
    assert out['records'][0]['by_call']['k_launch']['errors'] == 1


@pytest.mark.parametrize('case', ['duplicate_bind', 'gap_bind', 'duplicate_seal', 'pending', 'overflow', 'missing', 'clock', 'late'])
def test_incomplete_capture_is_flagged(case):
    t, c = timer(limit=1 if case == 'overflow' else 100000)
    r=batch(t); t.bind(r, 1); r['launched']=True
    if case == 'duplicate_bind': t.bind(r, 1)
    if case == 'gap_bind': t.bind(batch(t), 3)
    if case == 'missing': t.seal(None, True)
    if case == 'clock':
        with t.scope(r, 'prepare'): t.wrap(lambda: c.advance(-1, -1), 'open_req')()
    if case != 'pending': t.seal(r, True)
    if case == 'duplicate_seal': t.seal(r, True)
    if case == 'overflow':
        b=batch(t);t.bind(b, 2);b['launched']=True;t.seal(b, True)
    if case == 'late':
        with t.scope(r, 'retire'): t.wrap(lambda: None, 'release')()
    assert t.snapshot()['status'] == 'INCONCLUSIVE'
    if case == 'overflow': assert 'cursor_gap' in t.snapshot(0, 2)['issues']


@pytest.mark.parametrize('bounds', [(-1,0), (0,2), (True,1), (1,0), (0,None)])
def test_invalid_cursor_rejected(bounds):
    t,c=timer();r=batch(t);t.bind(r,1);r['launched']=True;t.seal(r,True)
    with pytest.raises(ValueError): t.snapshot(*bounds)


def test_snapshot_copy_and_no_tail_loss():
    t,c=timer();a=batch(t);t.bind(a,1);a['launched']=True;t.seal(a,True)
    before=t.snapshot()
    b=batch(t);t.bind(b,2);b['launched']=True;t.seal(b,True)
    window=t.snapshot(0,before['cursor'])
    window['records'][0]['by_scope']['prepare']['calls']=999
    assert t.snapshot(0,2)['records'][0]['by_scope']['prepare']['calls'] == 0
    assert len(t.snapshot(before['cursor'],2)['records']) == 1


def test_unknown_public_method_is_measured_and_invalidates(monkeypatch):
    class Future(L.PdLedger):
        def new_api(self): return 42
    l=ledger(monkeypatch, cls=Future)
    assert l.new_api() == 42
    s=l._timing.snapshot()
    assert s['unknown_calls'] == 1 and 'unknown_method:new_api' in s['issues']


@pytest.mark.parametrize('check',[0,1])
def test_real_scan_ka_and_shared_coverage(monkeypatch, check):
    l=ledger(monkeypatch, check=check);t=l._timing
    r=batch(t);t.bind(r,1)
    with t.scope(r,'prepare'):
        g=l.open_req(1,prefix_tokens=[1,2,3,4]);l.alloc(g,1)
        l.k_launch(1,[(g,0,4)])
    with t.scope(r,'complete'):l.step_done(1)
    with t.scope(r,'retire'):
        page=l.seal(g);l.release(g)
    r['launched']=True;t.seal(r,True)
    assert r['subspans_inclusive']['_kargs_post']['calls'] == 1
    assert r['subspans_inclusive']['_kargs']['calls'] == 1
    assert r['subspans_inclusive']['_check']['calls'] == (6 if check else 0)
    assert r['subspans_inclusive']['_shared_check']['calls'] > 0
    assert 'complete' not in r['by_call'] and r['by_call']['step_done']['calls'] == 1
    l.stats();l.check()
    scopes={x['scope'] for x in t.snapshot()['ambient']}
    assert scopes == {'observation','idle_check'}


def test_same_results_states_and_refusals_with_timing(monkeypatch):
    answers=[]
    for enabled in (False,True):
        l=ledger(monkeypatch,enabled,check=1)
        g=l.open_req(11); pages=l.alloc(g,2);l.bind_row(0,g)
        ka=l.k_launch(1,[(g,0,6)],rows=[0]);l.step_done(1)
        errors=[]
        for fn in (lambda:l.k_launch(1,[(g,0,1)]),lambda:l.bind_row(0,999)):
            with pytest.raises(L.LedgerViolation) as exc:fn()
            errors.append((type(exc.value).__name__,str(exc.value)))
        answers.append((pages,ka,errors,deepcopy(l.gen_of_row),list(l.pst),l.stats()))
    assert answers[0] == answers[1]


@pytest.mark.parametrize('overlap', [False,True])
@pytest.mark.parametrize('trace', [False,True])
def test_real_scheduler_and_structured_http(monkeypatch, overlap, trace):
    from test_scheduler_stub import no_pinned_memory, pd_pair, send_pd, run, finished, close
    from minisgl.disagg.scheduler_pd import _start_stats_server
    no_pinned_memory.__wrapped__(monkeypatch)
    monkeypatch.setenv('MINISGL_PD_LEDGER_TIMING','1')
    monkeypatch.setattr(T,'ENABLED',trace);monkeypatch.setattr(T,'STEP_LINES',trace)
    p,d,_,_=pd_pair(4,row_check='on')
    srv=_start_stats_server(d.pd,0)
    url=f'http://127.0.0.1:{srv.server_address[1]}/pd_timing'
    def get(path=''):
        with urllib.request.urlopen(url+path,timeout=5) as f:return json.load(f)
    try:
        before=get()
        for uid in (1,2):send_pd(p,d,uid,100+uid,[3,4,5,6,7],6)
        assert run([p,d],lambda:finished(d,[1,2]),overlap=overlap)
        after=get();out=get(f'?after={before["cursor"]}&through={after["cursor"]}')
        assert out['status']=='OK',out['issues']
        rows=out['records'];assert len(rows)==d.pd.kargs_stats['kargs_steps']>0
        assert [r['step_id'] for r in rows] == list(range(1,len(rows)+1))
        for r in rows:
            assert r['phase']=='decode' and r['completed'] and r['launched']
            assert r['ledger_wall_ns']>0 and r['ledger_cpu_ns']>0
            assert r['by_scope']['prepare']['calls']>0 and r['by_scope']['complete']['calls']==1
            assert r['by_call']['k_launch']['calls']==1
            assert r['subspans_inclusive']['_kargs_post']['calls']==1
            assert all(r['auxiliary_inclusive'][k]['calls']==1 for k in ('row_check','stage','xcheck'))
            assert r['auxiliary_inclusive']['kargs_seen']['calls']==int(trace)
        assert sum(r['by_call'].get('release',{}).get('calls',0) for r in rows)==2
        assert len(p.pd.timing_snapshot(0,p.pd.timing.cursor)['records'])==p.pd.kargs_stats['kargs_steps']
        with pytest.raises(urllib.error.HTTPError) as error:get('?after=0&through=99999')
        assert error.value.code==400
    finally:
        srv.shutdown();srv.server_close();close(p,d)


@pytest.mark.parametrize('method,args,kwargs', [
    ('prefix_guard', (1,), {}), ('prefix_guard', (), {'_bound': None}),
    ('open_req', (), {}), ('open_req', (1,), {'unexpected': 1}),
    ('stats', (1,), {}), ('check', (), {'bad': True}),
])
def test_invalid_public_arguments_keep_typeerror(monkeypatch, method, args, kwargs):
    messages=[]
    for enabled in (False, True):
        l=ledger(monkeypatch, enabled)
        with pytest.raises(TypeError) as exc:
            getattr(l,method)(*args,**kwargs)
        messages.append(str(exc.value))
        if enabled:
            assert l._timing.snapshot()['status'] == 'INCONCLUSIVE'
    assert messages[0]==messages[1]


def test_auxiliary_wrapper_does_not_accept_private_override_arguments():
    t,c=timer()
    def fn(value):return value
    wrapped=TM._auxiliary_method(t,fn,'row_check',None)
    for kwargs in ({'_fn': lambda: 0}, {'_label': 'other'}):
        messages=[]
        for call in (fn,wrapped):
            with pytest.raises(TypeError) as exc:call(1,**kwargs)
            messages.append(str(exc.value))
        assert messages[0]==messages[1]
