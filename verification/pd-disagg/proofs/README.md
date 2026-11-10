# PdCore safety proof

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

Static checks need Bash and Python 3.9+. Proof runs also need a TLAPS installation
with its standard library, Z3, Zenon, Isabelle and temporal backend.
The recorded tools are TLAPM (version output `efe4f2d-dirty`, binary SHA256
`32812a0fd9e9944c00f6f0135bae62563500dbd32c87969ed1aadd97cbbf91b5`),
Z3 4.8.9 (binary SHA256
`56e1b909c7462653471012478f317143c8eb77a3cea085d6ad5422084d8d63e5`),
Zenon 0.8.4 [a268], and Isabelle2025. `SUMMARY.tsv` records tool and library hashes
once, plus each module's source hash, import closure hash, obligation count and
stretch multiplier.

Run from this directory. `TLAPS` below is your installation prefix.

```bash
./verify.sh --static
./verify.sh --module PdABBQBase --tlapm "$TLAPS/bin/tlapm" --out review-one
./verify.sh --sample 5 --seed 42 --tlapm "$TLAPS/bin/tlapm" --out review-sample
./verify.sh --all --tlapm "$TLAPS/bin/tlapm" --out review-all
```

Each proof run first repeats the static checks. It copies the sources into a new
output directory, uses a fresh cache with `--nofp`, and checks every obligation's
final status and the exact count. Only `proved` or `trivial` succeeds. An incomplete
run or timeout fails. Commands, raw logs and results remain in the output directory.
The output reports whether the tools match the recorded hashes; add
`--require-toolchain` to require that exact build. Other platforms can use their
own TLAPS build for independent checking.

The native whole-module command is:

```bash
tlapm --strict --threads 1 -I "$TLAPS/lib/tlapm/stdlib" -I "$SRC" \
  --nofp --stretch "$STRETCH" --toolbox 0 0 "$SRC/$MODULE.tla"
```

`SRC` is the copied source directory. `STRETCH` comes from the module's summary
(12, 24 or 30). `verify.sh` sets the backend search path and `TLAPM_CACHE_DIR`.
For a module recorded as sharded, `--module NAME --shards` first obtains the whole
inventory, then runs each inclusive line range from `SUMMARY.tsv`:

```bash
tlapm --strict --threads 1 -I "$TLAPS/lib/tlapm/stdlib" -I "$SRC" \
  --nofp --stretch "$STRETCH" -N --toolbox 0 0 "$SRC/$MODULE.tla"
tlapm --strict --threads 1 -I "$TLAPS/lib/tlapm/stdlib" -I "$SRC" \
  --nofp --stretch "$STRETCH" --toolbox "$START" "$END" "$SRC/$MODULE.tla"
```

The `-N` invocation supplies only the inventory. The proved shards must match its
source-location multiset exactly, including repeated locations. This release has
no sharded modules.

Start with one proof worker and 16 GiB RAM for small modules. Recorded large-module
runs used up to 48 GiB per process. A fresh full run can take many hours. Use
`--threads`, `--timeout` (default 18,000 seconds per invocation) and `--stretch`
to adjust execution budgets. Isabelle's heap can be set with `TLAPM_POLY_OPTIONS`;
the default is 6 GiB. All modules run sequentially.

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
