# PdCore safety proof

The [Z3 address arithmetic suite](../address/README.md) checks KV layout and copy arithmetic.

## The theorem

The root theorem in `source/PdCore_Proof.tla` is:

```tla
THEOREM SpecImpliesAlwaysSafety ==
 ASSUME Sizes, Design
 PROVE Spec => []Safety
```

Its premises are defined in `source/PdPinnedBridge.tla`:

```tla
Sizes == /\ NPI \in Nat \ {0} /\ NDI \in Nat \ {0}
                /\ NR \in Nat \ {0} /\ MG \in Nat \ {0}
                /\ PPL \in Nat \ {0} /\ PS \in Nat \ {0}
                /\ KR \in Nat /\ MX \in Nat /\ MaxFail \in Nat
                /\ B2 \in BOOLEAN /\ SPP \in Nat
                /\ NP = (NPI + NDI) * PPL
Design == /\ Mode \in {"push", "pull"}
                 /\ HComplete = "narrow" /\ HOrder = "widest"
                 /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
                 /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE
                 /\ Ovl = TRUE /\ PReg = TRUE /\ Mut = "none" /\ Faults = TRUE
```

This proves safety of the `PdCore` design model, not the implementation code.
The induction uses `PinInv == IndInv /\ MessageShape`: the model's 53 invariant
conjuncts plus message shape. Preservation covers **64 actions × 54 invariant
conjuncts = 3,456 cells**. Initialization establishes all 54 conjuncts.
The root combines `Init => PinInv`, step preservation (including stuttering),
and `PinInv => Safety`. Thus it also establishes `Init => IndInv` and uses the
model's `IndInv => Safety` decomposition.

`../spec/` is a renamed equivalent copy. The proofs import the pinned models in
`source/`; `verify.sh` checks equivalence using `model-renames.tsv` after removing
comments and whitespace.

## Reproduce or sample

Run `./verify.sh` from this directory with Bash and Python 3.9+. Proof modes also
need TLAPS with Z3, Zenon, Isabelle and the temporal backend; add
`--tlapm "$TLAPS/bin/tlapm" --out NEW_DIRECTORY`, where `TLAPS` is your installation
prefix. `SUMMARY.tsv` records the tool/library hashes and per-module counts.

| Mode | Purpose and cost |
|---|---|
| `--static` | Check pinned inputs, proof structure and coverage in seconds; no TLAPS needed. |
| `--module NAME` | Recheck one complete module with TLAPS; seconds to hours depending on the module. |
| `--sample N --seed S` | Recheck N uniformly sampled modules with TLAPS; cost depends on the sample. |
| `--all` | Recheck all 226 modules sequentially with TLAPS; allow several days. |
| `--all --jobs J --slice-large` | Run modules concurrently and split large proofs with TLAPS; see the resource estimate below. |

Recommended review order:

1. Run `./verify.sh --static`.
2. Choose your own seed and run `--sample N --seed S` (for example, `--sample 5 --seed 42`).
3. With enough compute, run `--all --jobs J --slice-large`.

Estimated full-run work is **222–316 CPU core-hours**: ideally **14–20 / 7–10 /
3.5–5 hours on 16 / 32 / 64 cores**, subject to memory and scheduling limits.
`--jobs` caps concurrent processes; `--threads` defaults to 1 per process.
Admission reserves 16 GiB per job by default, within `--memory-budget-gib` (default
160 GiB); adjust these estimates with `--job-memory-gib` and `--memory-budget-gib`
to fit the machine. Recorded large whole-module runs used limits up to 48 GiB
per process. These reservations are scheduling estimates, not hard memory limits.

Every slice reads the complete original module. The native whole-module `-N`
inventory is the sole authority for reconciliation. Each slice's proved source
location multiset must exactly match its assigned inventory, and their sum must
exactly equal the whole inventory; any failed slice fails the run. Cuts occur
only between top-level theorems or level-one proof steps.

Every proof run repeats static checks, copies the sources, uses `--strict --nofp`,
and retains commands, raw logs and results. Only `proved` or `trivial` succeeds;
timeouts and incomplete runs fail. Slicing requires the recorded tool/library
hashes; whole-module checking permits other TLAPS builds unless
`--require-toolchain` is set. `--timeout` defaults to 18,000 seconds per invocation;
`--stretch` overrides the recorded backend timeout multiplier. Subset success is
reported separately from a full-tree pass.

**All results in this release come from whole-module runs.** Slicing is an
optional way to accelerate independent review.

## Results

All **226 modules** passed strict TLAPS checking: **516,973 obligations**, with
226 whole-module results and 0 sharded results. All 230 `.tla` files, including the
two pinned models, are unchanged copies of the final source tree; their hashes are
in `source/SHA256SUMS`.

The packaged static checks pass: pinned source and import hashes; zero new module
`ASSUME`/`AXIOM`; zero `OMITTED`; 3,456 reachable preservation cells with matching
action parameters and postconditions; 54 reachable initialization targets; the
initialization, safety and root contracts; and public-model renaming equivalence.
`coverage.tsv` maps each preservation cell to its source proof step.
