"""single-page prefix sharing: real Scheduler/PrefillAdder/radix + CPU model/transfer stubs.

Radix is the production tree, including its lookup/lock/insert logic. Only the CPU
key-compare extension is replaced with an exact token comparison, to avoid JIT.
The named calibration tests are also run against each corresponding source mutant.
"""
import json
import queue
from types import SimpleNamespace as NS

import pytest
import torch

from minisgl.disagg import ledger as L, messages as M, trace as T
from minisgl.kvcache.radix_cache import RadixTreeNode
from test_scheduler_stub import (MemBackend, build, close, finished, msg, no_pinned_memory,
                                 reference, run, send_pd)
from test_trace_steps import attach, detach


@pytest.fixture(autouse=True)
def exact_cpu_compare(monkeypatch):
    def compare(self, ids):
        return next((i for i, (a, b) in enumerate(zip(self._key.tolist(), ids.tolist()))
                     if a != b), min(len(self._key), len(ids)))
    monkeypatch.setattr(RadixTreeNode, 'get_match_len', compare)


@pytest.fixture
def pairs():
    made = []
    def factory(ps=2, pages=48, row_check='on', kread=True):
        bp, bd = MemBackend(f'prefix_prefill{len(made)}'), MemBackend(f'prefix_decode{len(made)}')
        p = build('prefill', ps=ps, num_pages=pages, backend=bp, cache_type='radix',
                  row_check=row_check, kread=kread)
        d = build('decode', ps=ps, num_pages=96, backend=bd, row_check=row_check, kread=kread)
        made.append((p, d, bp, bd))
        return made[-1]
    yield factory
    for p, d, bp, bd in made:
        bp.gate.set()
        close(p, d)
        p.pd.pd._worker.join(2)
        assert not p.pd.pd._worker.is_alive()


@pytest.mark.parametrize('ps', [1, 2, 4])
@pytest.mark.parametrize('overlap,kread', [(False, True), (True, True), (True, False)])
def test_radix_rounds_match_naive_cpu_bytes_and_tokens(pairs, ps, overlap, kread):
    p, d, _, _ = pairs(ps, kread=kread)
    prompts = {1: [7] * ps + [11, 12, 13], 2: [7] * ps + [14, 15, 16]}
    ref = reference(prompts, 4, ps)
    for uid, prompt in prompts.items():
        send_pd(p, d, uid, 100 + uid, prompt, 4)
        assert run([p, d], lambda: finished(d, [uid]), overlap=overlap)
        assert uid not in d.errors
        assert [t for t, _ in d.outputs[uid]] == ref[uid]
    st = p.pd.ledger.stats()
    assert st['sealed'] == 1 and st['hits'] == 1
    assert d.pd.pd.counters['kv_checksum_ok'] == 2
    assert p.engine.kargs_diff == d.engine.kargs_diff == 0
    assert d.pd.ledger.free_pages() == d.engine.num_pages
    assert p.cache_manager.flush_shared() == 1
    assert p.pd.ledger.free_pages() == p.engine.num_pages


def test_d_rejects_radix():
    with pytest.raises(ValueError, match='D needs --cache-type naive'):
        build('decode', ps=2, backend=MemBackend('reject-d'), cache_type='radix')


class Harness:
    """Use real admission, Scheduler._prepare_batch/_forward and PDHooks.
    Stop only this instance's worker; tests explicitly schedule its queue actions.
    The normal-loop tests above cover the live TCP/worker/memmove path separately.
    """
    def __init__(self, ps=2, pages=24):
        self.p = build('prefill', ps=ps, num_pages=pages, backend=MemBackend('cal-p'),
                       cache_type='radix', row_check='on')
        self.pd, self.c, self.l = self.p.pd.pd, self.p.cache_manager, self.p.pd.ledger
        self.pd._work.put(None)
        self.pd._worker.join(2)
        assert not self.pd._worker.is_alive()
        self.pd._work = queue.Queue()
        self.sent = []
        self.pd._send = lambda cid, m: self.sent.append(m) or True
        self.ps = ps
        layout = list(self.pd.layout)
        layout[5], layout[6] = 257, 1 << 40
        self.d = L.PdLedger(256, layout, 12345, role='D', check_every=1)
        self.d.register_peer(self.pd.inst, self.pd.layout)
        self.pd._handle(1, M.to_p(M.HELLO, inst=12345, layout=layout, session='cal-d'))
        self.gens = {}
        self.dmsgs = {}

    def admit(self, uid, tokens):
        room = uid + 500
        dis = {'bootstrap_room': room}
        assert self.p.pd.on_user_msg(msg(uid, tokens, 1, dis))
        g = self.d.open_req(room)
        self.d.alloc(g, L.div_ceil(len(tokens), self.ps))
        x = self.d.d_expect(g, self.pd.inst, len(tokens))
        m = M.to_p(M.XFER_REQ, room=room, gen=g, xid=x, ntokens=len(tokens),
                   tok_hash=M.tok_hash(tokens), pages=self.d.pages_of(g),
                   descriptor=self.d.d_descriptor(x))
        self.dmsgs[uid] = m
        self.pd._handle(1, json.loads(json.dumps(m)))  # same wire tuple/list conversion
        self.p.pd.tick(False)
        batch = self.p.prefill_manager.schedule_next_batch(64)
        assert batch is not None
        req = batch.reqs[0]
        self.gens[uid] = self.c.gen_of_row[req.table_idx]
        return batch

    def compute(self, batch, complete=True):
        fi = self.p._prepare_batch(batch)
        out = self.p._forward(fi)
        if complete:
            out.copy_done_event.synchronize()
            self.p.pd.complete(batch, out.copy_done_event)
        return batch.reqs[0], out

    def finish(self, req, post=True):
        if post:
            self.p.pd.on_finished(req, 100)
        self.p._free_req_resources(req)
        return self.pd.pending.get(req.uid, (None,))[0]

    def seed(self, uid=1, tokens=None):
        req, _ = self.compute(self.admit(uid, tokens or [7] * self.ps + [8, 9]))
        self.c.prepare_prefix(req)
        page = self.l.pages_of(self.gens[uid])[0]
        self.finish(req, post=False)
        return page

    def close(self):
        close(self.p)


@pytest.fixture
def harness():
    made = []
    def factory(**kw):
        h = Harness(**kw)
        made.append(h)
        return h
    yield factory
    for h in made:
        h.close()


def test_calibration_sharedFailUnref(harness):
    h = harness()
    r, _ = h.compute(h.admit(1, [7, 7, 8, 9]))
    e = h.finish(r)
    assert e and h.l.p_begin(e)
    assert h.l.p_done(e, False) == L.SEND_FAIL_UNSTOPPED
    assert h.l.stats()['shared_quarantined'] == 1
    with pytest.raises(L.LedgerViolation):
        h.c.flush_shared()
    h.l.check()


def test_calibration_hitNoRef(harness):
    h = harness()
    page = h.seed()
    batch = h.admit(2, [7, 7, 10, 11])
    assert batch.reqs[0].cached_len == 2
    assert h.l.shared_refs()[page] == 1
    h.c.check_integrity()


def test_calibration_postBeforeDedup(harness):
    h = harness()
    r, _ = h.compute(h.admit(1, [7, 7, 8, 9]))
    g = h.gens[1]
    # Deliberately call the real message/post hook before PDHooks.prepare_prefix.
    assert h.pd.on_prefill_done(1, g, r.cached_len, 100) == L.REJ_SRC
    assert h.pd._work.empty()
    assert h.sent[-1]['t'] == M.KV_FAIL and h.sent[-1]['stopped'] == 1


def test_calibration_dedupNoRemap(harness):
    h = harness()
    a = h.admit(1, [7, 7, 8, 9])
    b = h.admit(2, [7, 7, 10, 11])  # both miss before either gets sealed
    ra, _ = h.compute(a)
    rb, _ = h.compute(b)
    h.c.prepare_prefix(ra)
    page = h.l.pages_of(h.gens[1])[0]
    old = h.l.pages_of(h.gens[2])[0]
    h.c.prepare_prefix(rb)
    assert h.l.pages_of(h.gens[2])[0] == page != old
    assert h.p.engine.page_table[rb.table_idx, :2].tolist() == [page * 2, page * 2 + 1]
    h.c.check_rows(99, [(rb.table_idx, h.gens[2], rb.cached_len)])
    assert h.l.page_states([old]) == [L.FREE]
    h.finish(ra)
    h.finish(rb)
    assert h.l.stats()['deduped'] == 1
    assert all(h.l.p_cancel(p[0]) for p in h.pd.pending.values())
    h.c.flush_shared()


def test_calibration_sealUnwritten(harness):
    h = harness()
    b = h.admit(1, [7, 7, 8, 9])
    h.c.allocate_paged(b.reqs)  # allocated, never launched or written
    with pytest.raises(L.LedgerViolation, match='SealOnlyLanded'):
        h.c.prepare_prefix(b.reqs[0])
    assert not h.c._tree_pages


def test_calibration_unrefBeforeKDone(harness):
    h = harness()
    page = h.seed()
    b = h.admit(2, [7, 7, 10, 11])
    r, out = h.compute(b, complete=False)
    h.finish(r, post=False)  # abort while the prefix is still in the kernel read snapshot
    assert h.l.shared_refs()[page] == 1
    assert h.c.prefix_cache.size_info.protected_size == 2
    with pytest.raises(L.LedgerViolation):
        h.c.flush_shared()
    out.copy_done_event.synchronize()
    h.p.pd.complete(b, out.copy_done_event)
    assert h.c.flush_shared() == 1


def test_calibration_doubleRelease(harness):
    h = harness()
    h.seed()
    h.c.check_integrity()
    assert h.c.flush_shared() == 1
    assert h.l.free_pages() == h.p.engine.num_pages


def test_calibration_flushIgnoresEntries(harness):
    h = harness()
    r, _ = h.compute(h.admit(1, [7, 7, 8, 9]))
    e = h.finish(r)
    assert e and h.l.stats()['live_reqs'] == 0
    before = h.l.stats().copy()
    with pytest.raises(L.LedgerViolation):
        h.l.flush_shared()  # the real scheduler's ledger, bypass redundant tree lock guard
    assert h.l.stats() == before
    with pytest.raises(L.LedgerViolation):
        h.c.flush_shared()
    assert h.l.p_cancel(e)
    assert h.c.flush_shared() == 1


def test_calibration_unrefWrongHolder(harness):
    h = harness()
    page = h.seed()
    a = h.admit(2, [7, 7, 10, 11])
    b = h.admit(3, [7, 7, 12, 13])
    assert h.l.shared_refs()[page] == 2
    h.finish(a.reqs[0], post=False)
    assert h.l.shared_refs()[page] == 1
    h.c.check_integrity()
    h.finish(b.reqs[0], post=False)
    assert h.c.flush_shared() == 1


@pytest.mark.parametrize('bad', ['order', 'missing', 'layout', 'gen', 'length'])
def test_descriptor_wire_mismatch_stops_before_queue(harness, bad):
    h = harness()
    r, _ = h.compute(h.admit(1, [7, 7, 8, 9, 10]))
    match = list(h.pd.reqs[1].match)
    if bad == 'missing':
        match[7] = None
    elif bad == 'order':
        match[6] = list(reversed(match[6]))
    else:
        desc = list(match[7])
        if bad == 'layout':
            lay = list(desc[5]); lay[2] += 1; desc[5] = tuple(lay)
        elif bad == 'gen':
            desc[2] += 1
        else:
            desc[4] -= 1
        match[7] = tuple(desc)
    h.pd.reqs[1].match = tuple(match)
    h.p.pd.on_finished(r, 100)
    assert h.pd._work.empty()
    assert h.sent[-1]['t'] == M.KV_FAIL and h.sent[-1]['code'] == L.REJ_PAGES


def test_unified_pool_tree_full_reclaims_for_suffix_and_aba(harness):
    h = harness(ps=2, pages=6)
    grab = attach()
    try:
        for u in range(1, 7):
            r, _ = h.compute(h.admit(u, [u, u]))
            h.c.prepare_prefix(r)
            h.finish(r, post=False)
        original = set(h.c._tree_pages)
        old_tokens = {x['page']: x['tokens'] for x in h.l.shared_snapshot()}
        assert original == set(range(6)) and h.l.free_pages() == 0
        assert h.c.available_size == 12  # capacity is recovered through SEvict, no spare pool
        b = h.admit(7, [99, 99, 98, 98, 97, 97, 96])
        r, _ = h.compute(b)
        reused = h.l.pages_of(h.gens[7])
        assert len(reused) == 4 and set(reused) <= original
        assert all(h.l.page_states([p]) == [L.PRIVATE] for p in reused[1:])
        assert h.l.stats()['evicted'] == 4
        h.c.prepare_prefix(r)
        canonical = h.l.pages_of(h.gens[7])[0]
        h.finish(r, post=False)
        # Same physical page is now Shared under a new full token identity.
        assert old_tokens[canonical] != [99, 99]
        g = h.l.open_req(999, prefix_tokens=old_tokens[canonical])
        with pytest.raises(L.LedgerViolation, match='HitIdentity'):
            h.l.hit(g, canonical)
        h.l.release(g)
        h.c.check_integrity()
        h.c.flush_shared()
        assert h.l.free_pages() == 6
        events = {r.get('ev') for r in grab.recs}
        assert {'seal', 'evict', 'alloc', 'klaunch', 'kdone', 'release'} <= events
        evicts = [r for r in grab.recs if r.get('ev') == 'evict']
        assert all(r['shared_before'] and r['shared_after'] != r['shared_before'] for r in evicts)
        save_trace('unified-pool-aba', grab.recs)
    finally:
        detach(grab)


def test_trace_has_grow_all_item_bounds_and_prefix_transitions(pairs):
    p, d, _, _ = pairs(ps=2)
    grab = attach()
    try:
        for uid in (1, 2):
            send_pd(p, d, uid, 1000 + uid, [7, 7, 8], 5)
            assert run([p, d], lambda: finished(d, [uid]))
        assert p.cache_manager.flush_shared() == 1
        recs = grab.recs
        grow = [r for r in recs if r.get('action') == 'DGrow']
        assert grow and all(r['side'] == 'D' and len(r['after']) > len(r['before']) for r in grow)
        for r in recs:
            if r.get('ev') == 'klaunch':
                assert all(len(it) == 4 and 0 <= it[2] < it[3] for it in r['it'])
                assert all(it[3] - it[2] == kd[3] for it, kd in zip(r['it'], r['kd']))
        assert {'hit', 'seal', 'flush_shared'} <= {r.get('ev') for r in recs}
    finally:
        detach(grab)


def save_trace(name, records):
    import os
    from pathlib import Path
    root = os.environ.get('PREFIX_TRACE_DIR')
    if root:
        p = Path(root) / (name + '.ndjson')
        p.parent.mkdir(parents=True, exist_ok=True)
        p.write_text(''.join(json.dumps(r, separators=(',', ':')) + '\n' for r in records))


@pytest.mark.parametrize('failure', [False, True])
def test_expose_atomically_protects_before_descriptor_is_observable(harness, monkeypatch, failure):
    import threading
    h = harness()
    req, _ = h.compute(h.admit(1, [7, 7, 8, 9]))
    h.c.prepare_prefix(req)
    gen = h.gens[1]
    m = h.dmsgs[1]
    entered, unblock, cancel_started, cancel_done = (threading.Event() for _ in range(4))
    real_ref = h.l.inner._ref
    result, cancelled, errors = [], [], []
    def slow_ref(p, holder):
        real_ref(p, holder)
        if holder[0] == 'entry':
            entered.set()
            assert unblock.wait(3)
    monkeypatch.setattr(h.l.inner, '_ref', slow_ref)
    def expose():
        try:
            result.append(h.l.p_expose(gen, req.cached_len, 12345, m['room'], m['gen'],
                                      m['xid'], m['pages'], dst_descriptor=m['descriptor']))
        except BaseException as e:
            errors.append(e)
    def cancel():
        cancel_started.set()
        cancelled.append(h.l.p_cancel(1))
        cancel_done.set()
    grab = attach()
    a, b = threading.Thread(target=expose), threading.Thread(target=cancel)
    try:
        a.start()
        assert entered.wait(3)
        b.start()
        assert cancel_started.wait(3)
        assert not cancel_done.wait(0.02) and not result  # publication is still inside its lock
        unblock.set()
        a.join(3); b.join(3)
        assert not a.is_alive() and not b.is_alive() and not errors
        eid, descriptor = result[0]
        assert cancelled == [False] and not h.l.p_begin(eid)
        assert isinstance(descriptor, tuple) and isinstance(descriptor[-1], tuple)
        snap = descriptor[-1]
        h.finish(req, post=False)
        assert h.l.shared_refs()[snap[0]] == 1
        with pytest.raises(L.LedgerViolation):
            h.c.flush_shared()
        h.l.p_done(eid, not failure)  # trusted ReleaseSource or no-stop failure in this test
        if failure:
            assert h.l.stats()['shared_quarantined'] == 1
            with pytest.raises(L.LedgerViolation):
                h.c.flush_shared()
        else:
            assert h.c.flush_shared() == 1
        exposure = next(r for r in grab.recs if r.get('ev') == 'expose')
        assert exposure['src_descriptor'][-1] == list(snap)
        assert ['entry', eid] in exposure['shared_after'][0]['holders']
        save_trace('expose-' + str(failure), grab.recs)
    finally:
        unblock.set()
        if a.ident is not None:
            a.join(3)
        if b.ident is not None:
            b.join(3)
        detach(grab)


@pytest.mark.parametrize('ps', [1, 4])
@pytest.mark.parametrize('lazy', [False, True])
def test_upstream_duplicate_free_remaps_live_row_before_reuse(monkeypatch, ps, lazy):
    import contextlib
    from minisgl.core import Req, SamplingParams
    from minisgl.scheduler.cache import CacheManager
    import minisgl.kvcache.radix_cache as RC
    monkeypatch.setattr(RC, 'get_global_ctx', lambda: NS(page_size=ps))
    table = torch.zeros((3, 16), dtype=torch.int32)
    cache = CacheManager(8, ps, table, 'radix')
    reqs = []
    for row in (0, 1):
        ids = torch.tensor([7] * (ps * 2), dtype=torch.int32)
        h = cache.match_req(NS(input_ids=ids, input_len=len(ids))).cuda_handle
        cache.lock(h)
        reqs.append(Req(ids, row, 0, 4, row, SamplingParams(), h))
    cache.allocate_paged(reqs)
    for r in reqs:
        r.cached_len = len(r.input_ids)
    duplicates = table[1, :ps*2].clone()
    with cache.lazy_free_region() if lazy else contextlib.nullcontext():
        for r in reqs:
            cache.cache_req(r, finished=False)
    assert torch.equal(table[0, :ps*2], table[1, :ps*2])
    free = set(cache.free_slots.tolist())
    assert all(int(p) in free for p in duplicates[::ps])
    assert not set(table[1, :ps*2:ps].tolist()) & free
    got = cache._allocate(len(free))
    assert set(duplicates[::ps].tolist()) <= set(got.tolist())
    assert torch.equal(table[0, :ps*2], table[1, :ps*2])


def test_actual_worker_failure_retains_shared_source_and_allows_rehit(pairs):
    p, d, bp, _ = pairs(ps=2)
    bp.fail_next = 1
    send_pd(p, d, 1, 501, [7, 7, 8, 9], 3)
    assert run([p, d], lambda: finished(d, [1]))
    assert p.pd.ledger.stats()['shared_quarantined'] == 1
    assert d.errors[1]
    with pytest.raises(L.LedgerViolation):
        p.cache_manager.flush_shared()
    send_pd(p, d, 2, 502, [7, 7, 10, 11], 3)
    assert run([p, d], lambda: finished(d, [2]))
    assert 2 not in d.errors and p.pd.ledger.stats()['hits'] == 1
    assert p.pd.ledger.stats()['shared_quarantined'] == 1
    p.cache_manager.check_integrity()


def test_chunked_hit_abort_keeps_ref_until_last_done(pairs):
    from minisgl.message import AbortBackendMsg
    p, d, _, _ = pairs(ps=2)
    send_pd(p, d, 1, 501, [7, 7, 8, 9], 1)
    assert run([p, d], lambda: finished(d, [1]))
    p.prefill_budget = 2
    send_pd(p, d, 2, 502, [7, 7] + list(range(20, 36)), 1)
    for _ in range(1000):
        p.data = p.overlap_loop(p.data)
        d.data = d.overlap_loop(d.data)
        if p.data is not None:
            break
        import time
        time.sleep(0.001)
    assert p.data is not None
    p.inbox.append(AbortBackendMsg(uid=2))
    assert run([p, d], lambda: not p.pd.pd.reqs and finished(d, [2]))
    assert p.cache_manager.flush_shared() == 1
    assert p.pd.ledger.free_pages() == p.engine.num_pages


def test_legacy_naive_wrapper_does_not_fabricate_descriptor():
    # Frozen archive is optional; exercise the actual missing-API wrapper path without it.
    traced = T.TracedLedger(NS(page_size=1), 42, 'D')
    assert traced.d_descriptor(1) is None
