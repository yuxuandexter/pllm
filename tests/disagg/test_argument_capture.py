"""argument capture: summarize observed metadata/store arrays and keep emitted seq order."""
import json
from types import SimpleNamespace as NS

import pytest
import torch

from minisgl.disagg import ledger as L
from minisgl.disagg import scheduler_pd as S
from minisgl.disagg import trace as T
from test_trace_steps import attach, detach


def setup():
    inner = L.PdLedger(24, [2, 1, 1, 2, 4, 25, 0, 3, 7], 1, check_every=1)
    led = T.TracedLedger(inner, 1, 'P')
    led.defer_kargs = True
    gens = [led.open_req(i) for i in (1, 2)]
    for j, g in enumerate(gens):
        led.alloc(g, 4)
        led.bind_row(j, g)
    items = [(g, 0, 3) for g in gens]
    h = S.PDHooks.__new__(S.PDHooks)
    h.ledger, h.kread = led, True
    h.kargs_stats = dict(kargs_seen_steps=0, kargs_seen_ns_total=0, kargs_seen_ns_max=0)
    arrs = led.k_launch(1, items, 1, rows=[0, 1])
    ka = S.stage_kargs(1, arrs, torch.device('cpu'), pinned=False)
    meta = NS(indices=ka.indices.clone(), cu_seqlens_k_cpu=ka.indptr_cpu,
              cu_seqlens_q_cpu=ka.qo_indptr_cpu)
    batch = NS(pd_step=1, pd_kargs=ka, attn_metadata=meta,
               out_loc=ka.out_loc.clone(), reqs=[NS(), NS()])
    return h, batch


def test_observation_uses_metadata_and_final_store_array():
    grab = attach()
    try:
        h, b = setup()
        assert not [r for r in grab.recs if r.get('ev') in ('klaunch', 'read')]
        before = T._SEQ[0]
        T.write(dict(k='diagnostic', side='P', inst='0x1'))
        assert T._SEQ[0] == before + 1
        b.attn_metadata.indices = b.attn_metadata.indices.flip(0)
        b.out_loc = b.out_loc.flip(0)
        h.kargs_seen(b)
        rec = next(r for r in grab.recs if r.get('ev') == 'klaunch')
        want = T.kargs_summary(b.pd_kargs.indptr_cpu, b.pd_kargs.qo_indptr_cpu,
                               b.attn_metadata.indices.numpy(), b.out_loc.numpy(), 2, 'attn')
        old = T.kargs_summary(b.pd_kargs.indptr_cpu, b.pd_kargs.qo_indptr_cpu,
                              b.pd_kargs.indices.numpy(), b.pd_kargs.out_loc.numpy(), 2, 'kargs')
        assert {k: rec[k] for k in want} == want
        assert rec['kh'] != old['kh'] and rec['kd'] != old['kd']
        assert rec['seq'] == before + 2
        seqs = [r['seq'] for r in grab.recs]
        assert seqs == sorted(set(seqs))
        h.ledger.step_done(1)
        assert len([r for r in grab.recs if r.get('ev') == 'klaunch']) == 1
    finally:
        detach(grab)


def test_unobserved_completion_flushes_without_claiming_summary():
    grab = attach()
    try:
        h, b = setup()
        h.ledger.step_done(1)
        rec = next(r for r in grab.recs if r.get('ev') == 'klaunch')
        assert not {'kd', 'kp', 'kh', 'ks'} & rec.keys()
        evs = [r.get('ev') for r in grab.recs]
        assert evs.index('klaunch') < evs.index('read') < evs.index('kdone')
    finally:
        detach(grab)


def test_digest_all_positions_padding_and_empty_rows():
    ip, qo = [0, 3, 3, 4], [0, 1, 1, 2]
    r = T.kargs_summary(ip, qo, [4, 5, 6, 24], [6, 24], 2, 'kargs')
    assert r['kd'] == [[3, 4, 6, 1, 6, 6], [0, -1, -1, 0, -1, -1]]
    assert r['kp'] == [24]
    expected = sum((x+1) * ((i*40503) % 65521 + 1) for i, x in enumerate([4, 5, 6]))
    assert r['kh'] == [expected, 7]
    changed = T.kargs_summary(ip, qo, [4, 9, 6, 24], [6, 24], 2, 'kargs')
    assert changed['kd'] == r['kd'] and changed['kh'] != r['kh']
    assert len(json.dumps(r, separators=(',', ':'))) > 0


def test_summary_rejects_missing_array_tail():
    with pytest.raises(L.LedgerViolation, match='shape'):
        T.kargs_summary([0, 3], [0, 1], [1, 2], [2], 1, 'attn')


def test_digest_period_and_u64_wrap_match_scalar_formula(monkeypatch):
    import numpy as np
    n = 65521 * 9 + 3
    slots = np.full(n, (1 << 31) - 1, dtype=np.int32)
    expected = sum((int(x) + 1) * ((i * 40503) % 65521 + 1)
                   for i, x in enumerate(slots)) % (1 << 64)
    fast = T.kargs_summary([0, n], [0, 0], slots, [], 1, 'attn')
    assert fast['kh'] == [expected, 0]
    monkeypatch.setattr(L, '_np', None)
    assert T.kargs_summary([0, n], [0, 0], slots, [], 1, 'attn') == fast
