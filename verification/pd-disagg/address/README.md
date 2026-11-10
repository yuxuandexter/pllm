# KV address arithmetic

This CPU-only suite checks the contiguous six-dimensional KV layout
`(2, num_layers, pool_pages, page_size, kv_heads, head_dim)` for page sizes **1,
16, and 64**. Z3 proves that valid byte coordinates have distinct addresses
inside the registered region, that copy blocks stay within their slabs and
exclude the dummy page, and that merging contiguous page pairs preserves token
order. It also checks token-slot arithmetic, layout agreement, and abstract
landed-token and prompt-agreement conditions. Sizes and indices are symbolic
integers in proof mode; the run-loop cross-check and mutation searches are bounded.

The page start in [`ledger.page_addr`](../../../python/minisgl/disagg/ledger.py)
is `base + ((kv * num_layers + layer) * pool_pages + page) * page_bytes`, where
`page_bytes = page_size * kv_heads * head_dim * itemsize`. The in-page byte offset
is `((slot * kv_heads + head) * head_dim + dim) * itemsize + byte`.
[`MHAKVCache`](../../../python/minisgl/kvcache/mha_pool.py) supplies this layout;
[`make_pd`](../../../python/minisgl/disagg/scheduler_pd.py) registers the full
buffer, including its reserved last page. `diff_test.py` imports this checkout's
real ledger and checks `page_addr`, `plan_copy`, `token_slots`, `register_peer`,
and `p_post` with seeded inputs, including the current nine-field layout.

Assumptions include positive dimensions, valid distinct pages, matching transfer
geometry, and a registered region that fits in 64 bits. Claims about different
requests require **disjoint private page sets**; shared-prefix aliases are
outside those claims. Prompt agreement assumes no hash collision. These are
handwritten arithmetic models, not a full-program refinement proof or a check
of GPU kernels or RDMA completion semantics. `A5-DTYPE[16]` and `A1-ROW[64]`
retain expected **VIOLATED** results as historical negative controls with the
dtype comparison or row-width guard omitted. The current checks are represented
by `A5-DTYPE-FIX` and `A1-ROW-GUARDED`; the negative controls are not current bugs.

From the repository root, with Python 3.12:

```bash
python3 -m pip install z3-solver==5.3.3.0
python3 verification/pd-disagg/address/pd_arith.py
python3 verification/pd-disagg/address/diff_test.py 3000
```

Expected summaries are **64 rows, 192 mutant runs (162 killed), 0 bad**, and
**3000 trials, 166364 blocks (55662 merged runs), 0 mismatches**, plus 36 passing
multi-page guard checks. The two perturbed descriptors produce 875 and 686
mismatches. The 30 expected mutation survivors are documented per row, including
degenerate page-size-one cases and redundant checks. Each proof checks premise
and witness satisfiability; unknown, timeout, vacuity, or an unexpected result
fails the run. See [RESULTS.md](RESULTS.md) and [results.json](results.json) for
the recorded queries, bounds, witnesses and counterexamples. Runs print to
stdout by default; add `--out address-results` to `pd_arith.py` to save new
reports, or `--only A4-` for a partial check (supporting lemmas still run).
