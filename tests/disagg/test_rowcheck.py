"""Page-table backends must use slots owned by the current request.

Compare every used column with the ledger, including previously checked columns
that may have changed. Corrupt partial mappings or swap rows at handoff: the
check must stop decode before a kernel reads them. Without the check, these
faults can corrupt output while transferred KV checksums still pass.

Backends that consume ledger arrays directly are unaffected by a bad page table.
Debug mode still checks both views; auto mode checks only page-table backends."""

from __future__ import annotations

import inspect
import textwrap
import types
from types import SimpleNamespace

import pytest

torch = pytest.importorskip("torch")

from test_scheduler_stub import (close, finished, no_pinned_memory, pd_pair,  # noqa: E402,F401
                                 reference, run, send_pd)

from minisgl.disagg import ledger as L  # noqa: E402
from minisgl.disagg import scheduler_pd as SPD  # noqa: E402
from minisgl.disagg import trace as T  # noqa: E402
from minisgl.disagg.scheduler_pd import LedgerCacheManager  # noqa: E402
from minisgl.utils import div_ceil  # noqa: E402

INST = 0x5157


def mkcache(ps: int, row_check: bool = True, num_pages: int = 32, width: int = 64):
    lay = [2, ps, 1, 2, 4, num_pages + 1, 1 << 40, L.DTYPE_CODES["float32"], 7]
    led = T.wrap(L.RefLedger(num_pages, lay, INST, check_every=1), INST, "D")
    pt = torch.zeros((5, width), dtype=torch.int32)
    return led, LedgerCacheManager(led, num_pages, ps, pt, row_check=row_check, inst=INST)


def req(row: int, cached: int, device: int, uid: int = 1):
    return SimpleNamespace(table_idx=row, cached_len=cached, device_len=device, uid=uid)


def grow(cache, row: int, n: int, step: int):
    """One local step that extends the request in ``row`` to ``n`` tokens (allocate_paged maps
    any new whole pages), then the row check of that step."""
    cache.allocate_paged([req(row, max(0, n - 1), n)])
    gen = cache.gen_of_row[row]
    cache.check_rows(step, [(row, gen, n)])


@pytest.mark.parametrize("ps", [1, 4])
def test_glue_mapping_passes_and_shadow_equals_ledger(ps):
    led, cache = mkcache(ps)
    cache.allocate_paged([req(0, 0, 7, 1), req(1, 0, 3, 2)])  # P-style prefill of two rows
    g0, g1 = cache.gen_of_row[0], cache.gen_of_row[1]
    cache.check_rows(1, [(0, g0, 7), (1, g1, 3)])
    step = 1
    for n in range(8, 20):  # decode growth of row 0, crossing page boundaries
        step += 1
        grow(cache, 0, n, step)
    assert cache._sh[0, :19].tolist() == led.token_slots(g0, 0, 19)
    assert cache._sh[1, :3].tolist() == led.token_slots(g1, 0, 3)
    st = cache.row_stats
    assert st["row_checks"] == step and st["row_check_fetched"] == 19 + 3  # each column once
    assert st["row_check_cols"] == 7 + 3 + sum(range(8, 20))  # every column every step


def _commit(cache, led, row: int, ntok: int, extra_pages: int = 0) -> int:
    """D-style hand-off: alloc whole pages for ntok tokens, map them (write_rows)."""
    gen = led.open_req(row + 100)
    npages = div_ceil(ntok, cache.page_size) + extra_pages
    assert led.alloc(gen, npages)
    cache.gen_of_row[row] = gen
    cache.write_rows(row, gen, npages)
    return gen


@pytest.mark.parametrize("kind", ["stale_tail", "swapped_rows", "overwritten_later",
                                  "other_gens_slot"])
def test_each_kind_of_wrong_row_is_refused(kind):
    ps = 4
    led, cache = mkcache(ps)
    cache.page_table.fill_(0)
    if kind == "stale_tail":  # MSLOT: only the prompt's 5 slots mapped, decode reads slot 5
        gen = led.open_req(1)
        assert led.alloc(gen, 2)
        cache.gen_of_row[0] = gen
        cache._write_slots(0, 0, led.token_slots(gen, 0, 5))
        bad_row, bad_col, items = 0, 5, [(0, gen, 6)]
    elif kind == "swapped_rows":  # MROW: two rows committed together get each other's slots
        ga = _commit(cache, led, 0, 6)
        gb = _commit(cache, led, 1, 6)
        cache.write_rows(0, gb, 2)
        cache.write_rows(1, ga, 2)
        bad_row, bad_col, items = 0, 0, [(0, ga, 7), (1, gb, 7)]
    elif kind == "overwritten_later":  # verified at step 1, changed before step 2
        ga = _commit(cache, led, 0, 6)
        cache.check_rows(1, [(0, ga, 7)])
        cache.page_table[0, 2] += 1
        bad_row, bad_col, items = 0, 2, [(0, ga, 8)]
    else:  # one column points into another live request's page
        ga = _commit(cache, led, 0, 6)
        gb = _commit(cache, led, 1, 6)
        cache.page_table[0, 3] = led.token_slots(gb, 3, 4)[0]
        bad_row, bad_col, items = 0, 3, [(0, ga, 7), (1, gb, 7)]
    with pytest.raises(L.LedgerViolation,
                       match=rf"page-table row {bad_row} \(gen \d+\) column {bad_col} holds slot"):
        cache.check_rows(2, items)


def test_unmapped_tail_beyond_device_len_is_not_compared():
    """Columns past device_len are never read by the step: stale values there are fine."""
    led, cache = mkcache(4)
    cache.page_table.fill_(9999)
    ga = _commit(cache, led, 0, 5)  # 2 whole pages = 8 columns mapped, the rest stale
    cache.check_rows(1, [(0, ga, 8)])
    with pytest.raises(L.LedgerViolation, match="reads 65 columns, the row width is 64"):
        cache.check_rows(2, [(0, ga, 65)])


def test_row_check_switch_off_for_benchmarks():
    led, cache = mkcache(4, row_check=False)
    gen = led.open_req(1)
    assert led.alloc(gen, 2)
    cache._write_slots(0, 0, led.token_slots(gen, 0, 5))  # the MSLOT row
    cache.check_rows(1, [(0, gen, 6)])  # not checked
    assert cache.row_stats["row_check"] == 0 and cache.row_stats["row_checks"] == 0


WRITE = "self.cache.write_rows(row, gen, len(self.ledger.pages_of(gen)))"
MROW_BLOCK = [  # row corruption fixture, re-indented
    '_red = getattr(self, "_red_prev", None)',
    "if _red is not None:",
    "    _m = min(_red[2], len(self.ledger.pages_of(gen)))",
    "    self.cache.write_rows(row, _red[1], _m)",
    "    self.cache.write_rows(_red[0], gen, _m)",
    "    self._red_prev = None",
    "else:",
    "    self._red_prev = (row, gen, len(self.ledger.pages_of(gen)))",
]


def red_commit_ready(kind: str):
    """Corrupt the handoff mapping at its real write site.

    Fail if the mutation point moved, so an unapplied mutation cannot pass."""
    src = textwrap.dedent(inspect.getsource(SPD.PDHooks._commit_ready))
    assert "_red_prev" not in src and "token_slots(gen, 0, n)" not in src, \
        "_commit_ready already carries a red team mutant (applying it twice would undo MROW)"
    lines = src.splitlines()
    at = [i for i, ln in enumerate(lines) if ln.strip() == WRITE]
    assert len(at) == 1, "red team mutation point (write_rows line) not found"
    i = at[0]
    ind = lines[i][: len(lines[i]) - len(lines[i].lstrip())]
    if kind == "MSLOT":
        lines[i] = ind + "self.cache._write_slots(row, 0, self.ledger.token_slots(gen, 0, n))"
    else:
        lines[i + 1:i + 1] = [ind + b for b in MROW_BLOCK]
        k = [j for j, ln in enumerate(lines) if ln.strip() == "keep = []"]
        assert len(k) == 1, "red team mutation point (keep = []) not found"
        kind_ind = lines[k[0]][: len(lines[k[0]]) - len(lines[k[0]].lstrip())]
        lines.insert(k[0] + 1, kind_ind + "self._red_prev = None")
    ns: dict = {}
    exec(compile("\n".join(lines) + "\n", f"<red-pd {kind}>", "exec"), vars(SPD), ns)
    return ns["_commit_ready"]


PROMPTS = {u: [(u * 31 + i * 7) % 900 + 3 for i in range(3 + u % 9)] for u in range(1, 13)}


def _run12(ps: int, row_check, p_mutant=None, kread: bool = True):
    p, d, _, _ = pd_pair(ps, row_check=row_check, kread=kread)
    if p_mutant is not None:
        p.cache_manager.allocate_paged = types.MethodType(p_mutant, p.cache_manager)
    for uid, pr in PROMPTS.items():
        send_pd(p, d, uid, 5000 + uid, pr, 6)
    return p, d


@pytest.mark.parametrize("kind,ps", [("MSLOT", 4), ("MROW", 1), ("MROW", 4)])
def test_red_mutant_is_caught_by_the_row_check(monkeypatch, kind, ps):
    """Debug mode must detect the corrupt row before decode runs."""
    monkeypatch.setattr(SPD.PDHooks, "_commit_ready", red_commit_ready(kind))
    p, d = _run12(ps, row_check=True)
    try:
        with pytest.raises(L.LedgerViolation, match="page-table row") as ei:
            run([p, d], lambda: finished(d, PROMPTS))
        assert f"row check inst={d.pd.inst:#x}" in str(ei.value)  # D's check, before decode
    finally:
        close(p, d)


@pytest.mark.parametrize("kind,ps", [("MSLOT", 4), ("MROW", 1), ("MROW", 4)])
def test_red_mutant_without_the_row_check_passes_every_other_gate(monkeypatch, kind, ps):
    """KV checksums cannot detect a page-table backend reading the wrong slots.

    With row checks off, output is wrong even though checksums, ledger scans,
    and quiescent accounting pass."""
    ref = reference(PROMPTS, 6, ps)
    monkeypatch.setattr(SPD.PDHooks, "_commit_ready", red_commit_ready(kind))
    p, d = _run12(ps, row_check=False, kread=False)
    try:
        assert run([p, d], lambda: finished(d, PROMPTS))
        wrong = [u for u in PROMPTS if [t for t, _ in d.outputs[u]] != ref[u]]
        assert wrong, "the mutant no longer changes any output"
        st = d.pd.pd.stats()
        assert st["kv_checksum_ok"] == 12 and st["kv_checksum_mismatch"] == 0
        for s in (p, d):
            s.cache_manager.ledger.check()
            assert s.cache_manager.ledger.stats()["free"] == s.engine.num_pages
    finally:
        close(p, d)


@pytest.mark.parametrize("kind,ps", [("MSLOT", 4), ("MROW", 1), ("MROW", 4)])
def test_red_mutant_is_harmless_on_the_core_path(monkeypatch, kind, ps):
    """Ledger-array backends must ignore corruption confined to the page table.

    Output still matches the colocated reference with auto checks off. A
    nonzero kargs_diff confirms that the mutation changed the unused table."""
    ref = reference(PROMPTS, 6, ps)
    monkeypatch.setattr(SPD.PDHooks, "_commit_ready", red_commit_ready(kind))
    p, d = _run12(ps, row_check="auto")
    try:
        assert run([p, d], lambda: finished(d, PROMPTS))
        assert all([t for t, _ in d.outputs[u]] == ref[u] for u in PROMPTS)
        assert d.engine.kargs_diff > 0, "the mutant no longer changes the page table"
        assert d.cache_manager.row_stats["row_check"] == 0
        for s in (p, d):
            s.cache_manager.ledger.check()
            assert s.cache_manager.ledger.stats()["free"] == s.engine.num_pages
    finally:
        close(p, d)


def test_mslot_at_page_1_is_not_a_violation(monkeypatch):
    """Whole-page mapping at page size one must not trigger a false alarm."""
    ref = reference(PROMPTS, 6, 1)
    monkeypatch.setattr(SPD.PDHooks, "_commit_ready", red_commit_ready("MSLOT"))
    p, d = _run12(1, row_check=True)
    try:
        assert run([p, d], lambda: finished(d, PROMPTS))
        assert all([t for t, _ in d.outputs[u]] == ref[u] for u in PROMPTS)
        assert d.cache_manager.row_stats["row_checks"] > 0
    finally:
        close(p, d)


def _mut_prefill_reversed(self, reqs):
    """P-side mutant: the prefill maps the new pages' slots in reverse order into the page table
    (a page-table attention backend reads position i's KV from the ledger's page n-1-i)."""
    for r in reqs:
        first, last = div_ceil(r.cached_len, self.page_size), div_ceil(r.device_len, self.page_size)
        if last > first:
            gen = self.gen_for(r.table_idx)
            self.ledger.note("alloc", uid=r.uid, **self.uid_ctx(r.uid))
            assert self.ledger.alloc(gen, last - first)
            lo, hi = first * self.page_size, last * self.page_size
            self._write_slots(r.table_idx, lo, self.ledger.token_slots(gen, lo, hi)[::-1])


@pytest.mark.parametrize("row_check,kread", [(True, True), (False, False), ("auto", True)])
def test_p_side_wrong_prefill_mapping(row_check, kread):
    ref = reference(PROMPTS, 6, 1)
    p, d = _run12(1, row_check=row_check, p_mutant=_mut_prefill_reversed, kread=kread)
    try:
        if row_check is True:
            with pytest.raises(L.LedgerViolation, match="page-table row") as ei:
                run([p, d], lambda: finished(d, PROMPTS))
            assert f"row check inst={p.pd.inst:#x}" in str(ei.value)
            assert p.cache_manager.row_stats["row_checks"] == 0  # P's first prefill step
        elif not kread:  # page-table backend, check off: wrong outputs, checksums blind
            assert run([p, d], lambda: finished(d, PROMPTS))
            assert any([t for t, _ in d.outputs[u]] != ref[u] for u in PROMPTS)
            assert d.pd.pd.stats()["kv_checksum_mismatch"] == 0  # checksums cannot see it
        else:  # KernelReadPins core path: the reversed page table is never read
            assert run([p, d], lambda: finished(d, PROMPTS))
            assert all([t for t, _ in d.outputs[u]] == ref[u] for u in PROMPTS)
            assert p.engine.kargs_diff > 0
    finally:
        close(p, d)


@pytest.mark.parametrize("ps,overlap,kread", [(1, True, True), (4, True, True), (4, False, True),
                                              (4, True, False)])
def test_row_check_auto_in_the_real_scheduler_path(ps, overlap, kread):
    """Default --disaggregation-row-check auto: off when the kernels take the core's arrays, on
    when the attention backend still reads the page table; both report in /pd_stats."""
    ref = reference(PROMPTS, 6, ps)
    p, d = _run12(ps, row_check="auto", kread=kread)
    try:
        assert run([p, d], lambda: finished(d, PROMPTS), overlap=overlap)
        assert all([t for t, _ in d.outputs[u]] == ref[u] for u in PROMPTS)
        for s in (p, d):
            st = s.cache_manager.row_stats
            assert st["row_check"] == int(not kread)
            assert (st["row_checks"] > 0) == (not kread)
            ks = s.pd.kargs_stats
            assert ks["kargs"] == int(kread) and ks["kargs_steps"] > 0
        snap = d.pd.snapshot()
        assert "row_checks" in snap and "kargs_steps" in snap  # reported in /pd_stats
    finally:
        close(p, d)
