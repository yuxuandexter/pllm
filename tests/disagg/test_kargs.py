"""KernelReadPins (lifecycle contract, kernel argument contract = ledger contract): the kernels' arguments come
from the ledger core.

Every PD step is launched with ``ledger.k_launch`` (KLaunch), which refuses the step (state
unchanged) or returns flashinfer's ``indptr`` / ``indices`` / ``last_page_len`` / ``qo_indptr``
and the KV-store ``out_loc``; ``step_done`` (KDone) follows the step's copy-done event.  The
fi attention backend and the scheduler use these arrays instead of gathering them from the page
table.  Runs with the Python ledger.

1. ledger level: the arrays equal the page-table gather built from ``token_slots`` (padding rows:
   the dummy slot), ``k_launch`` / ``step_done`` change the state exactly like ``launch`` /
   ``complete``; the row binding (compatibility: ``bind_row`` one to one until release, ``k_launch(rows=)``
   refuses any item whose gen is not the one bound to its row); peer transfer identity range (peer xid outside u64); the injections the core must refuse at launch (stale / failed / unknown
   generation, before landed, landed but not visible, unwritten KV, a gen twice, a freed and
   reused page's old owner, out-of-range rows, wrong step, bad npad) raise with the state
   unchanged and the step number not consumed; NoFreeUnderRead under overlap (release while a
   later step still reads: DRAINING, FREE only at that step's step_done).
2. the fi backend: ``prepare_metadata`` from the core's arrays gives the same FIMetadata as the
   06b6baf gather, and ``plan()`` receives the core's arrays (eager decode, both decode kernel
   choices, prefill, CUDA-graph replay); flashinfer itself is a recording fake (no GPU here).
3. the real Scheduler + stub engine: every step's core arrays equal the 06b6baf gather on
   fault-free batches, CUDA-graph padding rows get the dummy slot, the debug cross-check runs
   and catches a corrupted array, the same injections stop P / D at launch, and a request
   released while the next step reads it stays DRAINING until that step's step_done.
"""

from __future__ import annotations

import array
import sys
import time
import types
from types import SimpleNamespace

import pytest

torch = pytest.importorskip("torch")

from test_scheduler_stub import (EOS, GRAPH_BS, close, finished,  # noqa: E402,F401
                                 no_pinned_memory, pd_pair, reference, run, send_pd)

from minisgl.disagg import ledger as L  # noqa: E402
from minisgl.disagg import scheduler_pd as SPD  # noqa: E402

D_INST, P_INST = 0xD1, 0xB1
PROMPTS = {u: [(u * 31 + i * 7) % 900 + 3 for i in range(3 + u % 9)] for u in range(1, 13)}


def lay(ps: int, n: int, base: int = 1 << 40):
    return [2, ps, 1, 2, 4, n + 1, base, L.DTYPE_CODES["float32"], 7]


def i32(b):
    a = array.array("i")
    a.frombytes(bytes(b))
    return a.tolist()


def gather(led, items, npad, n, ps):
    """What 06b6baf's fi backend and _prepare_batch gave the kernels, from a page table whose
    rows are the ledger's token_slots: indices = cat(row[:device_len]), indptr = cumsum,
    out_loc = row[cached_len:device_len]; padding rows: the dummy slot n * ps."""
    ip, qo, ind, ol = [0], [0], [], []
    for g, rd, wr in items:
        row = led.token_slots(g, 0, wr)
        ind += row
        ol += row[rd:wr]
        ip.append(ip[-1] + wr)
        qo.append(qo[-1] + wr - rd)
    for _ in range(npad):
        ind.append(n * ps)
        ol.append(n * ps)
        ip.append(ip[-1] + 1)
        qo.append(qo[-1] + 1)
    return ip, qo, ind, ol, [1] * (len(items) + npad)


def state(led):
    return list(led.pst), led.stats(), led.free_pages()


def local_prefill(led, step: int, ntok: int, ps: int):
    g = led.open_req(-1)
    assert led.alloc(g, L.div_ceil(ntok, ps))
    led.k_launch(step, [(g, 0, ntok)])
    led.step_done(step)
    return g


# ------------------------------------------------------------------------------- 1. ledger
@pytest.mark.parametrize("ps", [1, 4])
@pytest.mark.parametrize("npad", [0, 3])
def test_k_launch_arrays_are_the_page_table_gather(ps, npad):
    n = 24
    led = L.RefLedger(n, lay(ps, n), D_INST, check_every=1)
    ga = local_prefill(led, 1, 5, ps)
    gb = local_prefill(led, 2, 9, ps)
    for g, cur in ((ga, 5), (gb, 9)):  # decode needs a page for the next token
        if cur + 1 > len(led.pages_of(g)) * ps:
            assert led.alloc(g, 1)
    gc = led.open_req(-1)
    assert led.alloc(gc, L.div_ceil(7, ps))
    items = [(ga, 5, 6), (gb, 9, 10), (gc, 0, 7)]  # two decode rows and a prefill row
    want = gather(led, items, npad, n, ps)
    got = [i32(b) for b in led.k_launch(3, items, npad)]
    assert got == list(want)
    ip, qo, ind, ol, lpl = got
    assert len(ip) == len(qo) == len(items) + npad + 1 and len(lpl) == len(items) + npad
    assert len(ind) == ip[-1] and len(ol) == qo[-1]
    led.step_done(3)


def test_k_launch_and_step_done_change_the_state_like_launch_and_complete():
    a = L.RefLedger(16, lay(4, 16), D_INST, check_every=1)
    b = L.RefLedger(16, lay(4, 16), D_INST, check_every=1)
    for led, kl in ((a, True), (b, False)):
        g = led.open_req(1)
        assert led.alloc(g, 3)
        launch = (lambda s, it: led.k_launch(s, it, 2)) if kl else led.launch
        done = led.step_done if kl else led.complete
        launch(1, [(g, 0, 9)])
        launch(2, [(g, 9, 10)])
        done(1)
        led.release(g)  # step 2 still reads g: DRAINING
        assert led.stats()["draining"] == 3 and led.free_pages() == 13
        done(2)
        assert led.free_pages() == 16
    assert state(a) == state(b)


def _d_pair(ps: int = 1, n: int = 16):
    d = L.RefLedger(n, lay(ps, n), D_INST, check_every=1)
    assert d.register_peer(P_INST, lay(ps, n, 2 << 40)) == L.OK
    return d


def _inject(kind: str):
    """A D ledger in a reachable state plus the KLaunch the glue must not be allowed to issue,
    and a good KLaunch for the same step number."""
    d = _d_pair()
    live = d.open_req(1)
    assert d.alloc(live, 2)
    good = [(live, 0, 2)]
    if kind == "stale_gen":  # the row's previous request: released, pages FREE
        g = d.open_req(2)
        assert d.alloc(g, 2)
        d.release(g)
        bad = [(g, 0, 1)]
    elif kind == "freed_page_old_owner":  # MSLOT shape: a slot of a page freed and reused
        g = d.open_req(2)
        old = d.alloc(g, 2)
        d.release(g)
        g2 = d.open_req(3)
        assert d.alloc(g2, 2) and sorted(d.pages_of(g2)) == sorted(old)  # reused at once
        bad = [(g, 0, 2)]
        good = [(live, 0, 2), (g2, 0, 2)]
    elif kind == "unknown_gen":
        bad = [(9999, 0, 1)]
    elif kind == "failed_gen":  # transfer failed: the request is FAILED, its pages quarantined
        g = d.open_req(2)
        assert d.alloc(g, 2)
        xid = d.d_expect(g, P_INST, 2)
        d.d_unstopped(xid, L.Q_TRANSFER_FAILED)
        bad = [(g, 2, 3)]
    elif kind in ("before_landed", "landed_not_visible"):
        g = d.open_req(42)
        assert d.alloc(g, 3)
        xid = d.d_expect(g, P_INST, 2)
        if kind == "landed_not_visible":
            assert d.d_landed(P_INST, 42, g, xid, 2) == L.OK
        bad = [(g, 2, 3)]
    elif kind == "unwritten_kv":  # reads 2 tokens nothing has written
        bad = [(live, 2, 3)]
    elif kind == "gen_twice":
        bad = [(live, 0, 1), (live, 0, 1)]
    elif kind == "beyond_pages":
        bad = [(live, 0, 3)]  # 2 pages of 1 token
    else:
        raise AssertionError(kind)
    return d, bad, good


INJECTIONS = ["stale_gen", "freed_page_old_owner", "unknown_gen", "failed_gen", "before_landed",
              "landed_not_visible", "unwritten_kv", "gen_twice", "beyond_pages"]


@pytest.mark.parametrize("kind", INJECTIONS)
def test_core_refuses_the_injection_at_launch_and_keeps_its_state(kind):
    d, bad, good = _inject(kind)
    before = state(d)
    with pytest.raises(L.LedgerViolation):
        d.k_launch(1, bad, 1)
    assert state(d) == before  # nothing pinned, nothing launched, no step consumed
    got = [i32(x) for x in d.k_launch(1, good, 1)]  # the same step number still works
    assert got == list(gather(d, good, 1, 16, 1))
    d.step_done(1)


@pytest.mark.parametrize("call", ["wrong_step", "bad_npad", "unknown_step_done"])
def test_core_refuses_out_of_order_steps(call):
    d, _, good = _inject("unwritten_kv")
    before = state(d)
    with pytest.raises(L.LedgerViolation):
        if call == "wrong_step":
            d.k_launch(2, good, 0)
        elif call == "bad_npad":
            d.k_launch(1, good, -1)
        else:
            d.step_done(1)
    assert state(d) == before


def test_release_under_read_drains_until_the_reading_step_is_done():
    """NoFreeUnderRead under the overlap scheduler: step k+1 is launched before step k's
    results show that the request finished; the release then happens while k+1 reads it."""
    d = _d_pair(4, 16)
    g = local_prefill(d, 1, 6, 4)  # 2 pages
    d.k_launch(2, [(g, 6, 7)], 3)  # step k
    d.k_launch(3, [(g, 7, 8)], 3)  # step k + 1, in flight
    d.step_done(2)
    assert d.release(g) == 0  # nothing freed: step 3 still reads both pages
    assert d.page_states(d.pages_of(g)) == [L.DRAINING] * 2 and d.free_pages() == 14
    o = d.open_req(5)
    assert d.alloc(o, 14) and d.alloc(o, 1) == []  # the draining pages are not handed out
    d.release(o)
    d.step_done(3)
    assert d.free_pages() == 16 and d.stats()["draining"] == 0


# ------------------------------------------------------------------------------- row binding (compatibility)
def test_bind_row_one_to_one_until_release():
    d = _d_pair()
    a, b = d.open_req(1), d.open_req(2)
    assert d.alloc(a, 2) and d.alloc(b, 2)
    assert d.row_gen(3) == 0 and d.row_gen(-1) == 0
    d.bind_row(3, a)
    assert d.row_gen(3) == a
    for row, gen in ((3, b), (4, a), (3, a)):  # row taken / gen taken / again
        before = state(d)
        with pytest.raises(L.LedgerViolation):
            d.bind_row(row, gen)
        assert state(d) == before and d.row_gen(3) == a and d.row_gen(4) == 0
    for row, gen in ((-1, b), (L.ROW_LIM, b), (5, 9999)):  # bad row / beyond ROW_LIM / unknown gen
        with pytest.raises(L.LedgerViolation):
            d.bind_row(row, gen)
    d.bind_row(L.ROW_LIM - 1, b)
    d.release(a)  # release unbinds: the row can take a new generation, the old one is gone
    assert d.row_gen(3) == 0
    with pytest.raises(L.LedgerViolation):
        d.bind_row(7, a)  # a released gen cannot be bound again
    c = d.open_req(3)
    d.bind_row(3, c)  # a gen with no pages yet can be bound (P binds right after open_req)
    assert d.row_gen(3) == c and d.row_gen(L.ROW_LIM - 1) == b


def test_bind_row_failed_generation():
    """A transfer failure makes the gen FAILED: it stays bound (it is not released) but cannot be
    bound anew; release unbinds it."""
    d = _d_pair()
    g = d.open_req(4)
    assert d.alloc(g, 2)
    xid = d.d_expect(g, P_INST, 2)
    d.bind_row(0, g)  # LIVE with a posted transfer: allowed
    d.d_unstopped(xid, L.Q_TRANSFER_FAILED)
    assert d.row_gen(0) == g
    with pytest.raises(L.LedgerViolation):
        d.bind_row(1, g)
    d.release(g)
    assert d.row_gen(0) == 0


@pytest.mark.parametrize("bad", ["swapped", "unbound_row", "stale_row", "short", "negative"])
def test_k_launch_rows_must_match_the_binding(bad):
    d = _d_pair(4, 16)
    ga = local_prefill(d, 1, 3, 4)
    gb = local_prefill(d, 2, 3, 4)
    d.bind_row(0, ga)
    d.bind_row(1, gb)
    items = [(ga, 3, 4), (gb, 3, 4)]  # the same length: only the binding tells them apart
    rows = {"swapped": [1, 0], "unbound_row": [0, 5], "short": [0], "negative": [0, -1]}.get(bad)
    if bad == "stale_row":  # row 1's gen released and the row rebound to a new gen
        gc = d.open_req(9)
        assert d.alloc(gc, 1)
        d.release(gb)
        d.bind_row(1, gc)
        items, rows = [(ga, 3, 4), (gb, 3, 4)], [0, 1]
    before = state(d)
    with pytest.raises(L.LedgerViolation):
        d.k_launch(3, items, 2, rows=rows)
    assert state(d) == before and d.row_gen(0) == ga
    good = [(ga, 3, 4)] + ([] if bad == "stale_row" else [(gb, 3, 4)])
    got = [i32(x) for x in d.k_launch(3, good, 2, rows=[0, 1][:len(good)])]
    assert got == list(gather(d, good, 2, 16, 4))  # padding rows need no row
    d.step_done(3)


def test_k_launch_without_rows_is_unchanged():
    d = _d_pair()
    g = local_prefill(d, 1, 2, 1)  # never bound
    assert d.alloc(g, 1)
    assert [i32(x) for x in d.k_launch(2, [(g, 2, 3)], 1)] == list(gather(d, [(g, 2, 3)], 1, 16, 1))
    d.step_done(2)


def _p_pair():
    p = L.RefLedger(16, lay(1, 16, 2 << 40), P_INST, check_every=1)
    assert p.register_peer(D_INST, lay(1, 16)) == L.OK
    g = local_prefill(p, 1, 2, 1)
    return p, g


@pytest.mark.parametrize("xid", [-1, 1 << 64, (1 << 64) + 5])
def test_peer_xid_range_peer_xid_outside_u64_is_refused_at_post(xid):
    """peer transfer identity range (main): as the Rust core, a peer xid outside 0 .. 2^64 - 1 is refused at p_post with
    REJ_DUP (also for an unknown peer), nothing registered."""
    p, g = _p_pair()
    before = state(p)
    assert p.p_post(g, 2, D_INST, 1, 1, xid, [0, 1]) == L.REJ_DUP
    assert p.p_post(g, 2, 0x77, 1, 1, xid, [0, 1]) == L.REJ_DUP
    assert state(p) == before
    assert p.p_post(g, 2, D_INST, 1, 1, 3, [0, 1]) > 0  # an in-range xid still posts


def test_peer_xid_range_abort_for_xid_outside_u64_is_acked_without_tombstone():
    """peer transfer identity range (main): such an xid can never have been posted, so no write can be in flight: the
    abort is acknowledged and leaves no tombstone, in particular none at the xid it would wrap
    to (2^64 - 1 for -1, 0 for 2^64), which still post afterwards."""
    p, g = _p_pair()
    for xid in (-1, 1 << 64):
        assert p.p_abort(D_INST, xid) == L.SEND_ACK
        assert p.p_abort(0x77, xid) == L.SEND_ACK
    assert p.p_post(g, 2, D_INST, 1, 1, (1 << 64) - 1, [0, 1]) > 0
    g2 = local_prefill(p, 2, 2, 1)
    assert p.p_post(g2, 2, D_INST, 1, 1, 0, [2, 3]) > 0
    if hasattr(p, "used_peer_xids"):  # Python reference: no key was recorded for them
        assert not any(k[1] < 0 or k[1] >= 1 << 64 for k in p.used_peer_xids)


# ------------------------------------------------------------------------------- staging
@pytest.mark.parametrize("pinned", [True, False])
def test_stage_kargs_views(pinned):
    led = L.RefLedger(32, lay(4, 32), D_INST, check_every=1)
    g1 = local_prefill(led, 1, 13, 4)
    g2 = local_prefill(led, 2, 3, 4)
    items = [(g1, 13, 14), (g2, 3, 4)]
    want = gather(led, items, 2, 32, 4)
    ka = SPD.stage_kargs(3, led.k_launch(3, items, 2), torch.device("cpu"), pinned=pinned)
    ip, qo, ind, ol, lpl = want
    assert ka.rows == 4 and ka.nq == qo[-1] == 4 and ka.nbytes == 4 * sum(map(len, want))
    assert ka.indptr_cpu.tolist() == ip and ka.qo_indptr_cpu.tolist() == qo
    assert ka.qo_indptr.tolist() == qo and ka.indices.tolist() == ind
    assert ka.out_loc.tolist() == ol and ka.last_page_len_cpu.tolist() == lpl
    assert ka.seq_lens_cpu.tolist() == [14, 4, 1, 1]
    assert all(t.dtype == torch.int32 for t in (ka.indices, ka.out_loc, ka.qo_indptr))
    assert ka.host is not None
    if pinned:  # one buffer; every device-side array starts 256-byte aligned
        base = ka.qo_indptr.data_ptr()
        for t in (ka.indices, ka.out_loc):
            assert (t.data_ptr() - base) % 256 == 0
    led.step_done(3)


# ------------------------------------------------------------------------------- 2. fi backend
class _FakeDecode:
    def __init__(self, use_tensor_cores=False, graph=False):
        self.use_tensor_cores, self.graph, self.plans = use_tensor_cores, graph, []

    def plan(self, **kw):
        self.plans.append(kw)


class _FakePrefill:
    def __init__(self):
        self.plans = []

    def plan(self, **kw):
        self.plans.append(kw)


@pytest.fixture
def fi_backend(monkeypatch):
    from minisgl.attention import fi as FI

    for name in ("ones", "arange"):  # 06b6baf's path asks for pinned host tensors
        real = getattr(torch, name)
        monkeypatch.setattr(torch, name, lambda *a, _r=real, **k: _r(*a, **{
            x: y for x, y in k.items() if x != "pin_memory"}))
    monkeypatch.setattr(FI.FIMetadata, "__post_init__", lambda self: None)  # CUDA asserts
    monkeypatch.setitem(sys.modules, "flashinfer", types.SimpleNamespace(
        BatchDecodeWithPagedKVCacheWrapper=_FakeDecode))
    be = object.__new__(FI.FlashInferBackend)
    be.config = SimpleNamespace(head_dim=2)
    be.kvcache = SimpleNamespace(dtype=torch.float32)
    be.device = torch.device("cpu")
    be.qo_head_local, be.kv_head_local = 4, 1
    be.cached_ones_cpu = torch.tensor([], dtype=torch.int32)
    be.decode_wrappers, be.prefill_wrapper = _FakeDecode(), _FakePrefill()
    be.graph_wrappers, be.capture_bs, be.capture = {}, list(GRAPH_BS), object()
    be.last_event = SimpleNamespace(synchronize=lambda: None, record=lambda: None)
    return FI, be


def _batch(phase, reqs, npad, dummy_row):
    rs = [SimpleNamespace(table_idx=row, cached_len=c, device_len=n, extend_len=n - c)
          for row, c, n in reqs]
    pads = [SimpleNamespace(table_idx=dummy_row, cached_len=0, device_len=1, extend_len=1)] * npad
    return SimpleNamespace(reqs=rs, padded_reqs=rs + pads, padded_size=len(rs) + npad, phase=phase,
                           is_decode=phase == "decode", is_prefill=phase == "prefill")


META = ("cu_seqlens_q_cpu", "cu_seqlens_k_cpu", "cu_seqlens_q_gpu", "indices",
        "last_page_len_cpu", "seq_lens_cpu")


@pytest.mark.parametrize("case", ["decode_eager", "decode_graph", "prefill_fresh",
                                  "prefill_extend"])
@pytest.mark.parametrize("tensor_cores", [True, False])  # Qwen3-32B (GQA 8) / 0.6B (GQA 2)
def test_fi_metadata_and_plan_from_the_core(fi_backend, monkeypatch, case, tensor_cores):
    FI, be = fi_backend
    ps, n = 4, 40
    be.decode_wrappers.use_tensor_cores = tensor_cores
    led = L.RefLedger(n, lay(ps, n), D_INST, check_every=1)
    pt = torch.zeros((6, 64), dtype=torch.int32)
    pt[5].fill_(n * ps)  # Engine.__init__: dummy row -> dummy slot
    rows = {}
    for row, ntok in ((0, 6), (1, 9), (2, 3)):
        rows[row] = local_prefill(led, len(rows) + 1, ntok, ps)
        assert led.alloc(rows[row], 1)
        pt[row, : len(led.pages_of(rows[row])) * ps] = torch.tensor(
            led.token_slots(rows[row], 0, len(led.pages_of(rows[row])) * ps))
    step = len(rows) + 1
    if case.startswith("decode"):
        npad, phase = (1 if case == "decode_graph" else 0), "decode"
        spec = [(0, 6, 7), (1, 9, 10), (2, 3, 4)]
    elif case == "prefill_fresh":
        g = led.open_req(-1)
        assert led.alloc(g, 3)
        rows[3] = g
        pt[3, :12] = torch.tensor(led.token_slots(g, 0, 12))
        spec, npad, phase = [(3, 0, 10)], 0, "prefill"
    else:  # chunked / partial: one row extends from cached_len 6 by 4 tokens
        spec, npad, phase = [(0, 6, 8), (1, 9, 10)], 0, "prefill"
    batch = _batch(phase, spec, npad, 5)
    monkeypatch.setattr(FI, "get_global_ctx", lambda: SimpleNamespace(page_table=pt))
    be.prepare_metadata(batch)  # 06b6baf: gathered from the page table
    old = batch.attn_metadata
    items = [(rows[row], c, d) for row, c, d in spec]
    batch.pd_kargs = SPD.stage_kargs(step, led.k_launch(step, items, npad), be.device)
    be.prepare_metadata(batch)  # KernelReadPins: from the core
    new = batch.attn_metadata
    for f in META:
        assert getattr(new, f).tolist() == getattr(old, f).tolist(), f
    assert new.wrapper is old.wrapper
    assert new.indices is batch.pd_kargs.indices  # no gather: the core's tensor itself
    if case == "decode_graph":
        bs = len(batch.padded_reqs)
        be.graph_wrappers[bs] = _FakeDecode(tensor_cores, graph=True)
        be.prepare_for_replay(batch)
        assert new.wrapper is be.graph_wrappers[bs]
    else:
        be._initialize_metadata_once(new)
    kw = new.wrapper.plans[-1]
    if phase == "decode":
        assert kw["indices"] is batch.pd_kargs.indices
        assert kw["indptr"] is batch.pd_kargs.indptr_cpu
        assert kw["last_page_len"] is batch.pd_kargs.last_page_len_cpu
        assert kw["seq_lens"].tolist() == [d for _, _, d in spec] + [1] * npad
    else:
        assert kw["paged_kv_indices"] is batch.pd_kargs.indices
        assert kw["paged_kv_indptr"] is batch.pd_kargs.indptr_cpu
        assert kw["qo_indptr"] is batch.pd_kargs.qo_indptr_cpu
        assert kw["paged_kv_last_page_len"] is batch.pd_kargs.last_page_len_cpu
    assert kw["page_size"] == 1
    led.step_done(step)


def test_fi_refuses_core_arrays_of_another_batch_shape(fi_backend):
    FI, be = fi_backend
    led = L.RefLedger(8, lay(1, 8), D_INST, check_every=1)
    g = local_prefill(led, 1, 3, 1)
    assert led.alloc(g, 1)
    batch = _batch("decode", [(0, 3, 4)], 1, 5)  # one padding row in the batch...
    batch.pd_kargs = SPD.stage_kargs(2, led.k_launch(2, [(g, 3, 4)], 0), be.device)  # ...none here
    with pytest.raises(RuntimeError, match="PD kernel arguments"):
        be.prepare_metadata(batch)


# ------------------------------------------------------------------------------- 3. scheduler
@pytest.mark.parametrize("ps,overlap", [(1, True), (4, True), (4, False)])
def test_core_arrays_equal_the_page_table_gather_on_fault_free_batches(ps, overlap):
    ref = reference(PROMPTS, 6, ps)
    p, d, _, _ = pd_pair(ps)
    seen = {"P": 0, "D": 0}
    for side, s in (("P", p), ("D", d)):
        _watch_rows(s, seen, side)
    for uid, pr in PROMPTS.items():
        send_pd(p, d, uid, 8000 + uid, pr, 6)
    try:
        assert run([p, d], lambda: finished(d, PROMPTS), overlap=overlap)
        assert all([t for t, _ in d.outputs[u]] == ref[u] for u in PROMPTS)
        assert seen["P"] > 0 and seen["D"] > 0
        for s in (p, d):
            led = s.cache_manager.ledger  # every request released: no row stays bound
            assert all(led.row_gen(w) == 0 for w in range(s.engine.page_table.shape[0]))
            e = s.engine
            assert e.kargs_same == e.steps > 0 and e.kargs_diff == 0, (e.kargs_same, e.steps)
            ks = s.pd.kargs_stats
            assert ks["kargs"] == 1 and ks["kargs_steps"] == e.steps and ks["kargs_bytes_total"] > 0
            assert s.cache_manager.row_stats["row_checks"] == 0  # auto: off on the core path
            s.cache_manager.ledger.check()
            assert s.cache_manager.ledger.stats()["free"] == e.num_pages
    finally:
        close(p, d)


def _watch_rows(s, seen, side):
    """Every KLaunch of the glue passes rows = the batch's table rows, and each row is bound in
    the core to exactly the gen the glue has for it (compatibility, 14.3 call sites 1-3)."""
    led, cache = s.pd.ledger, s.cache_manager
    real = led.k_launch

    def k_launch(step, items, npad=0, rows=None):
        assert rows is not None and len(rows) == len(items)
        for (g, _, _), w in zip(items, rows):
            assert led.row_gen(w) == g == cache.gen_of_row[w], (w, g)
        seen[side] += 1
        return real(step, items, npad, rows=rows)

    led.k_launch = k_launch


@pytest.mark.parametrize("ps", [1, 4])
def test_cuda_graph_padding_rows_get_the_dummy_slot(ps):
    ref = reference(PROMPTS, 6, ps)
    p, d, _, _ = pd_pair(ps, pad=True)
    for uid, pr in PROMPTS.items():
        send_pd(p, d, uid, 8100 + uid, pr, 6)
    try:
        assert run([p, d], lambda: finished(d, PROMPTS))
        assert all([t for t, _ in d.outputs[u]] == ref[u] for u in PROMPTS)
        e = d.engine
        assert e.pad_rows > 0 and d.pd.kargs_stats["kargs_pad_rows"] == e.pad_rows
        assert e.pad_slots == {e.num_pages * ps}  # only the dummy slot, never a ledger page
        assert e.kargs_diff == 0  # = the dummy row of the page table (06b6baf)
        assert (e.kv[:, :, e.num_pages] == 250.0).any()  # the dummy page took the writes
    finally:
        close(p, d)


def test_debug_cross_check_runs_both_checks():
    ref = reference(PROMPTS, 6, 4)
    p, d, _, _ = pd_pair(4, row_check="on", pad=True)
    for uid, pr in PROMPTS.items():
        send_pd(p, d, uid, 8200 + uid, pr, 6)
    try:
        assert run([p, d], lambda: finished(d, PROMPTS))
        assert all([t for t, _ in d.outputs[u]] == ref[u] for u in PROMPTS)
        for s in (p, d):
            ks, rs = s.pd.kargs_stats, s.cache_manager.row_stats
            assert ks["kargs_xcheck"] == 1 and ks["kargs_xchecks"] == ks["kargs_steps"] > 0
            assert rs["row_check"] == 1 and rs["row_checks"] == ks["kargs_steps"]
    finally:
        close(p, d)


@pytest.mark.parametrize("field", ["out_loc", "indices"])
def test_debug_cross_check_catches_a_corrupted_core_array(monkeypatch, field):
    """Calibration of the cross-check: a wrong slot in what reaches the kernels is caught."""
    real = SPD.stage_kargs

    def bad(step, arrs, device, pinned=True):
        ka = real(step, arrs, device, pinned)
        if step == 2:
            t = getattr(ka, field)
            t[-1] = t[-1] + 1
        return ka

    monkeypatch.setattr(SPD, "stage_kargs", bad)
    p, d, _, _ = pd_pair(1, row_check="on")
    send_pd(p, d, 1, 8300, PROMPTS[3], 6)
    try:
        with pytest.raises(L.LedgerViolation, match=rf"kargs xcheck .*\['{field}'\]"):
            run([p, d], lambda: finished(d, [1]))
    finally:
        close(p, d)


def _stale_gen_for(cache):
    """Glue bug (wrong-generation row): a reused page-table row keeps reporting the generation
    of the first request that used it."""
    real, first = cache.gen_for, {}

    def gen_for(row):
        return first.setdefault(row, real(row))

    cache.gen_for = gen_for


def _record_refusals(led, log):
    """Record every ledger refusal of alloc / k_launch (method, message, state unchanged)."""
    for name in ("alloc", "k_launch"):
        real = getattr(led, name)

        def call(*a, _real=real, _name=name, **kw):
            before = state(led)
            try:
                return _real(*a, **kw)
            except L.LedgerViolation as e:
                log.append((_name, str(e), before == state(led)))
                raise

        setattr(led, name, call)


@pytest.mark.parametrize("kind,ps", [("stale_gen", 1), ("stale_gen", 4), ("before_landed", 1),
                                     ("before_landed", 4), ("landed_not_visible", 1),
                                     ("landed_not_visible", 4)])
def test_scheduler_injection_is_refused_at_launch(kind, ps):
    """The same injections through the real Scheduler: D stops before the step reaches the
    (stub) kernels.  At page 1 every decode step needs a new page, so the step's page alloc is
    the first ledger call that refuses: stale_gen (the gen is gone), and, since compatibility (the contract,
    D's ledger has role D), before_landed / landed_not_visible too (D's alloc window: the gen's
    transfer is exposed but not VISIBLE; a role refusal).  At page 4 the step needs no new page
    and KLaunch refuses it."""
    p, d, bp, _ = pd_pair(ps)
    refused = []
    _record_refusals(d.pd.ledger, refused)
    try:
        if kind == "stale_gen":
            _stale_gen_for(d.cache_manager)
            first = {u: PROMPTS[u] for u in (1, 2, 3)}
            for uid, pr in first.items():
                send_pd(p, d, uid, 8400 + uid, pr, 4)
            assert run([p, d], lambda: finished(d, first))  # rows used once: fine
            for uid in (4, 13):  # rows reused by new requests (prompt length 7: 7 % 4 != 0)
                send_pd(p, d, uid, 8400 + uid, PROMPTS[4], 4)
        else:
            if kind == "landed_not_visible":  # glue bug: the visibility step is skipped
                d.pd.pd.ledger.d_mark_visible = lambda xid: None
            else:
                bp.gate.clear()  # P's write is in flight
            send_pd(p, d, 1, 8450, PROMPTS[4], 4)
            if kind == "before_landed":  # glue bug: hand the waiting request to decode
                assert run([p, d], lambda: d.pd.pd.count("waiting") == 1)
                r = next(r for r in d.pd.pd.reqs.values() if r.state == "waiting")
                d.pd.ready_d.append((r.uid, r.gen, 7))
        steps = d.engine.steps
        with pytest.raises(L.LedgerViolation):
            run([p, d], lambda: False, timeout=5)
        assert refused and refused[0][2], refused  # refused by the ledger, state unchanged
        want = "alloc" if ps == 1 else "k_launch"
        assert refused[0][0] == want, refused
        # compatibility: only the role D alloc window is a role refusal (KLaunch of a transfer that
        # is not VISIBLE stays V_LAUNCH; a stale gen is V_GEN)
        role = kind != "stale_gen" and ps == 1
        assert (L.ROLE_REFUSED in refused[0][1]) == role, refused
        assert d.engine.steps == steps  # the step never reached the (stub) kernels
    finally:
        bp.gate.set()
        close(p, d)


@pytest.mark.parametrize("row_check", ["auto", "on"])
def test_swapped_live_generations_are_refused_at_launch(row_check):
    """Was the known gap of compatibility (ledger contract): two live requests of the same length
    whose row -> gen entries the glue swaps.  With the row binding in the core (compatibility, 14.3)
    KLaunch refuses it: row a is bound to gen a, the item says gen b (``auto``: k_launch,
    ledger state unchanged, the step never reaches the kernels).  ``on``: the debug row check
    runs first and stops it the same step (the page-table rows were written with the right
    gens at commit)."""
    two = {1: [5, 6, 7, 8], 2: [9, 10, 11, 12]}
    p, d, bp, _ = pd_pair(1, row_check=row_check)
    real, done, refused = d.pd.launch, [], []
    _record_refusals(d.pd.ledger, refused)

    def launch(batch):  # glue bug: swap the two rows' generations once, at the first decode step
        if not done and len(batch.reqs) == 2:
            a, b = batch.reqs
            m = d.cache_manager.gen_of_row
            m[a.table_idx], m[b.table_idx] = m[b.table_idx], m[a.table_idx]
            done.append((a.uid, b.uid))
        real(batch)

    d.pd.launch = launch
    try:
        bp.gate.clear()
        for uid, pr in two.items():
            send_pd(p, d, uid, 8500 + uid, pr, 4)
        assert run([p, d], lambda: d.pd.pd.count("waiting") == 2)
        bp.gate.set()  # P writes both while D does not poll: both land in one D tick
        assert run([p], lambda: p.cache_manager.ledger.stats()["entries_done"] == 2)
        time.sleep(0.2)
        steps = d.engine.steps
        match = "page-table row" if row_check == "on" else "row"
        with pytest.raises(L.LedgerViolation, match=match):
            run([p, d], lambda: finished(d, two))
        assert done, "the two requests were not decoded in one batch"
        assert d.engine.steps == steps  # the swapped step never ran
        if row_check == "auto":
            assert len(refused) == 1 and refused[0][0] == "k_launch" and refused[0][2], refused
            assert "row" in refused[0][1]  # V_ROW / "table row binding"
    finally:
        bp.gate.set()
        close(p, d)


@pytest.mark.parametrize("overlap", [True, False])
def test_release_while_the_next_step_reads_stays_draining(overlap):
    """step_done after each copy-done event; the overlap scheduler launches step k+1 (which still
    holds a request) before step k's EOS ends it, so the release must leave its pages DRAINING
    until step_done(k+1) (Private -> Drain under a pin, never Free)."""
    p, d, _, _ = pd_pair(1)
    d.engine.eos_at = {3: 1}  # uid 3 ends with EOS at its second decode output
    led, cm = d.pd.ledger, d.cache_manager
    real, seen = cm.cache_req, {}

    def cache_req(req, *, finished):
        gen = cm.gen_of_row.get(req.table_idx) if finished else None
        pages = led.pages_of(gen) if gen is not None else None
        real(req, finished=finished)
        if pages is not None:
            seen[req.uid] = (len(pages), led.page_states(pages), led.stats()["inflight_steps"])

    cm.cache_req = cache_req
    four = {u: PROMPTS[u] for u in (1, 2, 3, 4)}
    for uid, pr in four.items():
        send_pd(p, d, uid, 8600 + uid, pr, 6)
    try:
        # overlap: batch k+1 still carries uid 3 and replies once more after its EOS (upstream)
        done = lambda: all(any(f for _, f in d.outputs.get(u, [])) for u in four)  # noqa: E731
        assert run([p, d], done, overlap=overlap)
        assert d.outputs[3][2] == (EOS, True)  # first token, one decode token, EOS
        npg, sts, inflight = seen[3]
        if overlap:
            assert sts == [L.DRAINING] * npg and inflight >= 1, seen[3]
        else:
            assert sts == [L.FREE] * npg and inflight == 0, seen[3]
        led.check()
        assert led.stats()["free"] == d.engine.num_pages and led.stats()["draining"] == 0
    finally:
        close(p, d)


def test_trace_read_lines_mark_the_core_path(monkeypatch):
    from minisgl.disagg import trace as T

    lines = []
    monkeypatch.setattr(T, "write", lambda rec, **kw: lines.append(rec))  # step=True: step lines
    p, d, _, _ = pd_pair(1)
    send_pd(p, d, 1, 8700, PROMPTS[5], 3)
    try:
        assert run([p, d], lambda: finished(d, [1]))
        reads = [r for r in lines if r.get("m") == "launch" and r.get("ev") == "read"]
        assert {r["side"] for r in reads} == {"P", "D"} and all(r.get("kargs") == 1 for r in reads)
    finally:
        close(p, d)


def test_host_staging_is_dropped_at_step_done():
    p, d, _, _ = pd_pair(1)
    seen = []
    real = d.pd.complete

    def complete(batch, *ev):  # compatibility: complete(batch, copy_done) (copy-completion ordering)
        ka = batch.pd_kargs
        seen.append(ka.host is not None)  # alive until step_done
        real(batch, *ev)
        seen.append(ka.host is None)

    d.pd.complete = complete
    send_pd(p, d, 1, 8800, PROMPTS[6], 4)
    try:
        assert run([p, d], lambda: finished(d, [1]))
        assert seen and all(seen)
    finally:
        close(p, d)
