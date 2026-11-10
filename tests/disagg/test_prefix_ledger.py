"""PrefixSharing minimal P prefix ledger: CPU lifecycle, the contract sequence obligations, calibration.

One complete prefix page per generation; these tests make no radix/refinement claim.
The nine named calibration cases also run against real source mutants in the prefix lifecycle runner.
"""
import array

import pytest

from minisgl.disagg import ledger as L


def pair(ps=2, n=12, check=1):
    layout = [2, ps, 2, 3, 4, n + 1, 1024, 3, 7]
    p = L.PdLedger(n, layout, 1, check_every=check, role="P")
    # Different pool stride and base make accidental source-layout reuse observable.
    dl = [2, ps, 2, 3, 4, n + 4, 65536, 3, 7]
    d = L.PdLedger(n + 3, dl, 2, check_every=check, role="D")
    assert p.register_peer(2, dl) == L.OK
    assert d.register_peer(1, layout) == L.OK
    return p, d


def prefill(p, *, key=None, seal=True, pages=2):
    key = list(range(p.page_size)) if key is None else key
    g = p.open_req(11, prefix_tokens=key)
    pp = p.alloc(g, pages)
    assert len(pp) == pages
    k = p.step + 1
    p.k_launch(k, [(g, 0, pages * p.page_size)])
    p.step_done(k)
    if seal:
        assert p.seal(g) == pp[0]
    return g, pp


def incoming(d, ntokens=4):
    g = d.open_req(11)
    pages = d.alloc(g, L.div_ceil(ntokens, d.page_size))
    xid = d.d_expect(g, 1, ntokens)
    return g, xid, pages, d.d_descriptor(xid)


def send(p, d, g, ntokens=None):
    ntokens = p.page_size * 2 if ntokens is None else ntokens
    dg, xid, pages, desc = incoming(d, ntokens)
    eid = p.p_post(g, ntokens, 2, 11, dg, xid, pages, dst_descriptor=desc)
    assert eid > 0
    return eid, dg, xid, pages, desc


def hit(p, page, key=None):
    g = p.open_req(12, prefix_tokens=list(range(p.page_size)) if key is None else key)
    p.hit(g, page)
    return g


def conserved(p):
    st = p.stats()
    assert sum(st[k] for k in L.PAGE_STATE_NAMES.values()) == p.num_pages
    p.check()


@pytest.mark.parametrize("ps", [1, 2, 4])
@pytest.mark.parametrize("check", [0, 1])
def test_hit_seal_dedup_release_evict_positive(ps, check):
    p, d = pair(ps=ps, check=check)
    g, pages = prefill(p)
    assert p.prefc[pages[0]] == 1
    h = hit(p, pages[0])
    p.alloc(h, 1)
    p.k_launch(p.step + 1, [(h, ps, 2 * ps)])
    p.step_done(p.step)
    z, zp = prefill(p, seal=False)
    assert p.dedup(z, pages[0]) == zp[0]
    assert p.page_states([zp[0]]) == [L.FREE]
    assert p.pages_of(z)[0] == pages[0]
    assert p.prefc[pages[0]] == 3
    for x in (g, h, z):
        p.release(x)
    assert p.prefc[pages[0]] == 0
    p.evict(pages[0])
    assert p.free_pages() == p.num_pages
    assert p.stats()['hits'] == p.stats()['sealed'] == p.stats()['deduped'] == p.stats()['evicted'] == 1
    conserved(p)


@pytest.mark.parametrize("ending", ["success", "cancel", "abort", "lost", "abort_submitted"])
@pytest.mark.parametrize("release_first", [False, True])
def test_entry_reference_stopped_evidence(ending, release_first):
    p, d = pair()
    g, pages = prefill(p)
    e, dg, xid, dst, desc = send(p, d, g)
    assert p.prefc[pages[0]] == 2
    if release_first:
        p.release(g)
    if ending in ("success", "abort_submitted"):
        assert p.p_begin(e)
        if ending == "abort_submitted":
            assert p.p_abort(2, xid) == L.SEND_NOTHING
            assert not p.p_cancel(e)
        assert p.p_done(e, True) == (L.SEND_ACK if ending == "abort_submitted" else L.SEND_DONE)
    elif ending == "cancel":
        assert p.p_cancel(e)
        assert not p.p_cancel(e)
    elif ending == "abort":
        assert p.p_abort(2, xid) == L.SEND_ACK
    else:
        assert p.peer_lost(2) == [e]
    if not release_first:
        p.release(g)
    assert p.prefc[pages[0]] == 0
    assert p.flush_shared() == 1
    assert p.flush_shared() == 0
    conserved(p)


@pytest.mark.parametrize("check", [0, 1])
def test_calibration_sharedFailUnref(check):
    p, d = pair(check=check)
    g, pages = prefill(p)
    e, _, xid, _, _ = send(p, d, g)
    assert p.p_begin(e)
    p.release(g)
    assert p.p_done(e, False) == L.SEND_FAIL_UNSTOPPED
    assert p.prefc[pages[0]] == 1
    assert p.holders[pages[0]] == {('quar', e)}
    assert p.page_states(pages) == [L.SHARED, L.QUARANTINED]
    assert p.stats()['shared_quarantined'] == 1
    assert p.p_abort(2, xid) == L.SEND_FAIL_UNSTOPPED
    assert not p.p_cancel(e)
    with pytest.raises(L.LedgerViolation):
        p.p_done(e, True)  # late evidence never undoes permanent quarantine
    h = hit(p, pages[0])  # immutable quarantined Shared data can still be read
    p.alloc(h, 1)
    p.k_launch(p.step + 1, [(h, p.page_size, 2 * p.page_size)])
    p.step_done(p.step)
    p.release(h)
    with pytest.raises(L.LedgerViolation, match='zero references'):
        p.evict(pages[0])
    with pytest.raises(L.LedgerViolation, match='zero references'):
        p.flush_shared()
    conserved(p)


def test_calibration_hitNoRef():
    p, _ = pair(check=0)
    g, pages = prefill(p)
    h = hit(p, pages[0])
    p.release(g)
    assert p.holders[pages[0]] == {('req', h)}
    assert p.prefc[pages[0]] == 1
    with pytest.raises(L.LedgerViolation):
        p.evict(pages[0])
    p.release(h)
    p.evict(pages[0])
    conserved(p)


def test_calibration_postBeforeDedup():
    p, d = pair(check=0)
    g, pages = prefill(p, seal=False)
    dg, xid, dst, desc = incoming(d)
    args = (g, 4, 2, 11, dg, xid, dst)
    assert p.p_post(*args, dst_descriptor=desc) == L.REJ_SRC
    assert not p.entries
    p.seal(g)
    e = p.p_post(*args, dst_descriptor=desc)
    assert e > 0
    assert p.p_cancel(e)
    # Even after cancellation, post is a one-way boundary for map-changing primitives.
    with pytest.raises(L.LedgerViolation):
        p.seal(g)
    conserved(p)


def test_calibration_dedupNoRemap_and_physical_read_pin():
    p, _ = pair(check=0)
    a, ap = prefill(p)
    b, bp = prefill(p, seal=False)
    k1 = p.step + 1
    p.k_launch(k1, [(b, 4, 4)])
    assert p.dedup(b, ap[0]) == bp[0]
    assert p.pages_of(b) == [ap[0], bp[1]]
    assert p.page_states([bp[0]]) == [L.DUP]
    k2 = p.step + 1
    p.k_launch(k2, [(b, 4, 4)])  # new step reads canonical prefix, old one reads DUP
    p.release(b)
    assert p.prefc[ap[0]] == 2
    p.step_done(k1)
    assert p.page_states([bp[0]]) == [L.FREE]
    assert p.prefc[ap[0]] == 2  # LAST step still holds b
    p.step_done(k2)
    assert p.prefc[ap[0]] == 1
    p.release(a)
    p.evict(ap[0])
    conserved(p)


@pytest.mark.parametrize("stage", ["never", "inflight", "partial", "rewrite"])
def test_calibration_sealUnwritten(stage):
    p, _ = pair(check=0)
    g = p.open_req(11, prefix_tokens=[0, 1])
    p.alloc(g, 2)
    if stage != 'never':
        wr = 1 if stage == 'partial' else 4
        p.k_launch(1, [(g, 0, wr)])
        if stage != 'inflight':
            p.step_done(1)
    if stage == 'rewrite':
        p.k_launch(2, [(g, 0, 2)])
    with pytest.raises(L.LedgerViolation, match='SealOnlyLanded'):
        p.seal(g)
    assert not p.skey


@pytest.mark.parametrize("check", [0, 1])
def test_calibration_unrefBeforeKDone(check):
    p, _ = pair(check=check)
    a, pages = prefill(p)
    b = hit(p, pages[0])
    p.alloc(b, 1)
    p.k_launch(2, [(b, 2, 4)])
    p.k_launch(3, [(b, 4, 4)])
    p.release(a)
    p.release(b)
    assert p.prefc[pages[0]] == 1
    p.step_done(2)
    assert p.prefc[pages[0]] == 1
    with pytest.raises(L.LedgerViolation):
        p.evict(pages[0])
    p.step_done(3)
    assert p.prefc[pages[0]] == 0
    p.evict(pages[0])
    conserved(p)


def test_calibration_doubleRelease():
    p, _ = pair(check=0)
    a, pages = prefill(p)
    b = hit(p, pages[0])
    p.release(a)
    before = p.prefc[pages[0]], p.holders[pages[0]].copy()
    with pytest.raises(L.LedgerViolation):
        p.release(a)
    assert before == (p.prefc[pages[0]], p.holders[pages[0]])
    p.release(b)
    p.evict(pages[0])
    conserved(p)


def test_calibration_flushIgnoresEntries():
    p, d = pair(check=0)
    g, pages = prefill(p)
    e, *_ = send(p, d, g)
    p.release(g)
    before = p.stats(), list(p.free)
    with pytest.raises(L.LedgerViolation):
        p.flush_shared()
    assert before == (p.stats(), list(p.free))
    assert p.p_cancel(e)
    assert p.flush_shared() == 1
    conserved(p)


def test_calibration_unrefWrongHolder():
    p, _ = pair(check=0)
    a, pages = prefill(p)
    b = hit(p, pages[0])
    p.release(a)
    assert p.holders[pages[0]] == {('req', b)}
    with pytest.raises(L.LedgerViolation, match='absent holder'):
        p._unref(pages[0], ('req', a))
    assert p.prefc[pages[0]] == 1
    p.release(b)
    conserved(p)


@pytest.mark.parametrize("method", ['hit', 'seal', 'dedup', 'evict', 'flush_shared'])
def test_d_refuses_prefix_primitives(method):
    _, d = pair()
    args = {'hit': (0, 0), 'seal': (0,), 'dedup': (0, 0), 'evict': (0,), 'flush_shared': ()}
    with pytest.raises(L.LedgerViolation, match=L.ROLE_REFUSED):
        getattr(d, method)(*args[method])
    with pytest.raises(L.LedgerViolation, match=L.ROLE_REFUSED):
        d.open_req(12, prefix_tokens=[0, 1])


@pytest.mark.parametrize("key", [[], [0], [0, 1, 2], [0, -1], [0, 1.0]])
def test_prefix_identity_must_be_a_complete_page(key):
    p, _ = pair()
    with pytest.raises(L.LedgerViolation):
        p.open_req(11, prefix_tokens=key)
    assert not p.reqs


def test_hit_identity_immutable_and_shared_write_rejected():
    p, _ = pair()
    key = [0, 1]
    a, pages = prefill(p, key=key)
    key[0] = 999
    b = p.open_req(12, prefix_tokens=[999, 1])
    with pytest.raises(L.LedgerViolation, match='HitIdentity'):
        p.hit(b, pages[0])
    b = hit(p, pages[0])
    p.alloc(b, 1)
    with pytest.raises(L.LedgerViolation, match='SharedImmutable'):
        p.k_launch(p.step + 1, [(b, 0, 4)])
    # WriteOwnership is independent of launch guards; a generated shared out_loc is refused too.
    arrays = p._kargs(p.step + 1, [(b, 2, 4)], 0)
    arrays[3][:4] = array.array('i', [pages[0] * 2]).tobytes()
    with pytest.raises(L.LedgerViolation, match='WriteOwnership'):
        p._kargs_post(p.step + 1, [(b, 2, 4)], 0, None, arrays)
    conserved(p)


@pytest.mark.parametrize("corruption", ['count', 'holder', 'state', 'key'])
@pytest.mark.parametrize("check", [0, 1])
def test_new_properties_are_always_checked(corruption, check):
    p, d = pair(check=check)
    a, pages = prefill(p)
    e, *_ = send(p, d, a)
    assert p.p_begin(e)
    q = pages[0]
    if corruption == 'count':
        p.prefc[q] -= 1
    elif corruption == 'holder':
        p.holders[q].remove(('entry', e)); p.prefc[q] -= 1
    elif corruption == 'state':
        p.pst[q] = L.FREE
    else:
        p.skey[q] = (99, 99)
    expected = 'NoEvictUnderRDMA' if corruption in ('state', 'key') else 'PrefcMatchesHolders'
    with pytest.raises(L.LedgerViolation, match=expected):
        p.p_plan(e)
    with pytest.raises(L.LedgerViolation):
        p.check()


@pytest.mark.parametrize("corruption", ['reverse', 'repeat', 'other_gen', 'missing'])
def test_d_expect_checks_complete_ordered_owned_pages(corruption):
    _, d = pair(check=0)
    g = d.open_req(11)
    pp = d.alloc(g, 2)
    if corruption == 'reverse':
        d.reqs[g].pages.reverse()
    elif corruption == 'repeat':
        d.reqs[g].pages[1] = pp[0]
    elif corruption == 'other_gen':
        other = d.open_req(12)
        d.reqs[g].pages[1] = d.alloc(other, 1)[0]
    else:
        d.reqs[g].pages.pop()
    with pytest.raises(L.LedgerViolation):
        d.d_expect(g, 1, 4)
    assert not d.xfers


@pytest.mark.parametrize("corruption", ['reverse', 'repeat', 'other_gen', 'missing'])
def test_p_post_checks_ordered_owned_sources(corruption):
    p, d = pair(check=0)
    a, pages = prefill(p)
    dg, xid, dst, desc = incoming(d)
    if corruption == 'reverse':
        p.reqs[a].pages.reverse()
    elif corruption == 'repeat':
        p.reqs[a].pages[1] = pages[0]
    elif corruption == 'other_gen':
        g = p.open_req(12); p.reqs[a].pages[1] = p.alloc(g, 1)[0]
    else:
        p.reqs[a].pages.pop()
    if corruption == 'missing':
        assert p.p_post(a, 4, 2, 11, dg, xid, dst, dst_descriptor=desc) == L.REJ_SRC
    else:
        with pytest.raises(L.LedgerViolation):
            p.p_post(a, 4, 2, 11, dg, xid, dst, dst_descriptor=desc)
    assert not p.entries


@pytest.mark.parametrize("corruption", ['reverse', 'repeat', 'missing', 'extra', 'dummy',
                                         'layout', 'generation', 'count', 'no_descriptor'])
def test_p_post_checks_d_descriptor(corruption):
    p, d = pair(check=0)
    a, pages = prefill(p)
    dg, xid, dst, desc = incoming(d)
    if corruption == 'reverse': dst.reverse()
    elif corruption == 'repeat': dst[1] = dst[0]
    elif corruption == 'missing': dst.pop()
    elif corruption == 'extra': dst.append(2)
    elif corruption == 'dummy': dst[1] = d.layout[5] - 1
    elif corruption == 'layout':
        bad = list(desc); bad[5] = tuple(p.layout); desc = tuple(bad)
    elif corruption == 'generation':
        bad = list(desc); bad[2] += 1; desc = tuple(bad)
    elif corruption == 'count':
        bad = list(desc); bad[4] -= 1; desc = tuple(bad)
    else: desc = None
    assert p.p_post(a, 4, 2, 11, dg, xid, dst, dst_descriptor=desc) == L.REJ_PAGES
    assert not p.entries
    assert p.prefc[pages[0]] == 1


def test_plan_snapshot_and_noncontiguous_order_all_kv_layers():
    p, d = pair(ps=2)
    # D free-list order is not numerical order. Logical order must stay exactly as exposed.
    spare = d.open_req(99); d.alloc(spare, 3); d.release(spare)
    a, src = prefill(p)
    e, dg, xid, dst, desc = send(p, d, a, 3)  # final page partially used
    assert dst == [2, 1]
    src_snapshot, dst_snapshot = p.entries[e].src, p.entries[e].dst
    assert isinstance(src_snapshot, tuple) and isinstance(dst_snapshot, tuple)
    src[0] = 11; dst[0] = 11  # caller-owned lists cannot change posted addresses
    assert p.p_begin(e)
    ss, ds, nn = p.p_plan(e)
    page_bytes = 2 * 2 * 3 * 4
    expected = [(L.page_addr(p.layout, kv, layer, sp),
                 L.page_addr(d.layout, kv, layer, dp), page_bytes)
                for kv in (0, 1) for layer in range(2)
                for sp, dp in zip(src_snapshot, dst_snapshot)]
    assert list(zip(ss, ds, nn)) == expected
    # Copy real CPU bytes by generated addresses, verify all KV/layer/page coordinates.
    src_bytes = bytearray(2 * 2 * p.layout[5] * page_bytes)
    dst_bytes = bytearray(2 * 2 * d.layout[5] * page_bytes)
    for i in range(len(src_bytes)): src_bytes[i] = (i * 7 + i // page_bytes) % 251
    for s, t, n in zip(ss, ds, nn):
        dst_bytes[t-d.layout[6]:t-d.layout[6]+n] = src_bytes[s-p.layout[6]:s-p.layout[6]+n]
    for s, t, n in expected:
        assert dst_bytes[t-d.layout[6]:t-d.layout[6]+n] == src_bytes[s-p.layout[6]:s-p.layout[6]+n]
    conserved(p); conserved(d)


@pytest.mark.parametrize("bad", ['layout', 'short', 'repeat', 'dummy'])
def test_plan_copy_rejects_invalid_pairs(bad):
    p, d = pair()
    sl, dl, ss, ds = p.layout.copy(), d.layout.copy(), [0, 1], [2, 1]
    if bad == 'layout': dl[7] += 1
    elif bad == 'short': ds.pop()
    elif bad == 'repeat': ss[1] = ss[0]
    else: ds[1] = dl[5] - 1
    with pytest.raises(L.LedgerViolation, match='Transfer'):
        L.plan_copy(sl, ss, dl, ds)


def test_unified_pool_pressure_cross_use_reuse_and_stale_identity():
    p, _ = pair(n=6, check=1)
    cached = []
    for i in range(3):
        g, pp = prefill(p, key=[i, i])
        p.release(g)
        cached.append(pp[0])
    # All unused capacity can be consumed as private suffixes, then all Shared reclaimed.
    g = p.open_req(50)
    private = p.alloc(g, 3)
    assert len(private) == 3 and not p.alloc(g, 1)
    assert p.flush_shared() == 3
    assert set(p.alloc(g, 3)) == set(cached)
    assert p.free_pages() == 0
    h = p.open_req(51, prefix_tokens=[0, 0])
    with pytest.raises(L.LedgerViolation, match='HitIdentity'):
        p.hit(h, cached[0])
    p.k_launch(p.step + 1, [(g, 0, 12)])
    p.release(g)
    assert not p.alloc(h, 1)
    p.step_done(p.step)
    assert len(p.alloc(h, 2)) == 2
    p.release(h)
    assert p.free_pages() == 6
    conserved(p)


@pytest.mark.parametrize("enabled", [False, True])
def test_trace_wrapper_transparently_forwards_prefix(enabled, monkeypatch, caplog):
    import json
    import logging
    from minisgl.disagg import trace as T
    monkeypatch.setattr(T, "ENABLED", enabled)
    caplog.set_level(logging.INFO, logger="minisgl.disagg")
    p, d = pair()
    p, d = T.wrap(p, 1, "P"), T.wrap(d, 2, "D")
    a, pp = prefill(p)
    b = hit(p, pp[0]); p.release(b)
    c, cp = prefill(p, seal=False); p.dedup(c, pp[0]); p.release(c)
    e, *_ = send(p, d, a)
    p.release(a); p.p_cancel(e)
    assert p.flush_shared() == 1
    a, pp = prefill(p); p.release(a); p.evict(pp[0])
    conserved(p)
    records = [json.loads(r.getMessage()[4:]) for r in caplog.records
               if r.getMessage().startswith("PDT ")]
    if enabled:
        assert {"hit", "seal", "dedup", "evict", "flush_shared"} <= {r.get("ev") for r in records}
        assert any("dst_descriptor" in r for r in records if r.get('m') == 'p_post')
    else:
        assert not records


def test_two_requests_two_entries_success_and_shared_quarantine():
    p, d = pair(check=1)
    a, pp = prefill(p)
    b = hit(p, pp[0]); p.alloc(b, 1)
    p.k_launch(p.step + 1, [(b, 2, 4)]); p.step_done(p.step)
    ea, *_ = send(p, d, a)
    eb, *_ = send(p, d, b)
    assert p.prefc[pp[0]] == 4
    assert p.p_begin(ea)
    assert p.p_begin(eb)
    p.release(a); p.release(b)
    assert p.prefc[pp[0]] == 2
    p.p_done(ea, False)
    p.p_done(eb, True)
    assert p.prefc[pp[0]] == 1
    assert p.holders[pp[0]] == {('quar', ea)}
    conserved(p)


@pytest.mark.parametrize("method", ["launch", "k_launch"])
def test_posted_prefix_source_accepts_read_pins_but_not_local_writes(method):
    p, d = pair(check=0)
    a, pages = prefill(p)
    e, *_ = send(p, d, a)
    with pytest.raises(L.LedgerViolation, match="local write after post"):
        getattr(p, method)(p.step + 1, [(a, 2, 4)])
    getattr(p, method)(p.step + 1, [(a, 4, 4)])
    p.release(a)
    assert p.p_cancel(e)
    assert p.prefc[pages[0]] == 1  # only local pin remains
    p.step_done(p.step)
    p.evict(pages[0])
    conserved(p)


def test_release_with_pending_pin_still_checks_holders():
    p, _ = pair(check=0)
    a, pages = prefill(p)
    p.k_launch(2, [(a, 4, 4)])
    p.prefc[pages[0]] -= 1
    with pytest.raises(L.LedgerViolation, match="PrefcMatchesHolders"):
        p.release(a)


def test_trace_prefix_refusals_keep_ledger_error_type_and_role():
    from minisgl.disagg import trace as T
    p, d = pair()
    p, d = T.wrap(p, 1, "P"), T.wrap(d, 2, "D")
    g = p.open_req(11, prefix_tokens=[0, 1])
    with pytest.raises(L.LedgerViolation, match="HitIdentity"):
        p.hit(g, 1000)
    with pytest.raises(L.LedgerViolation, match=L.ROLE_REFUSED):
        d.hit(0, 1000)



def test_aba_same_physical_page_new_shared_token_identity():
    p, _ = pair(n=2)
    a, old = prefill(p, pages=1)
    p.release(a); p.evict(old[0])
    b, new = prefill(p, key=[9, 9], pages=1)
    assert new == old  # same physical address, new complete token identity
    c = p.open_req(13, prefix_tokens=[0, 1])
    with pytest.raises(L.LedgerViolation, match="HitIdentity"):
        p.hit(c, old[0])
    p.release(c); p.release(b); p.evict(new[0])
    conserved(p)


def test_post_snapshot_survives_later_row_growth():
    p, d = pair()
    a, src = prefill(p)
    e, *_ = send(p, d, a)
    assert p.p_begin(e)
    before = p.p_plan(e)
    assert p.alloc(a, 1)
    assert p.p_plan(e) == before
    assert p.entries[e].src == tuple(src)
    p.release(a)
    p.p_done(e, True)
    p.evict(src[0])
    assert p.free_pages() == p.num_pages
    conserved(p)
