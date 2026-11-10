# PdCore proof status: pending

The final proof batch is not included or inspected in this package.
The maintainer will add `PdCore_Proof.tla` and its dependencies after acceptance.

The public model is a mechanically checked renaming of the proof-target copy, with no other changes.
Source proof objects (SHA256, before the earlier publication comment sanitization):
- PdCore: `24ef403401bed868c08be7f48f1b5da81052442448dc83443771b23317631906`
- MC_pd_ind: `27563caf183f1902d8bfda46e9b9c6ddb4f77203b2c48f23a177b894bde7b65e`

Inductive preservation covers 64 actions × 53 conjuncts = 3,392 preservation cells,
plus 2 initialization goals. Cells are not the same as generated backend obligations.
The theorem is about the design model under its stated environment assumptions.
It is not a proof of the Python implementation, kernels or arbitrary RDMA providers.

Acceptance requires two independent strict whole-batch runs of identical sources
and dependencies in fresh caches; every obligation must be proved in each run.
Every timed obligation/backend attempt must take at most half its applicable limit.
No merging successes from different source versions or partial runs; no timeout,
unknown, omitted proof, incomplete run or stale-cache result counts as success.
The renaming is mechanically checked; final proof inputs still require maintainer reconciliation.

Results: **TO BE FILLED**. Final sources: **TO BE FILLED**.
Run records, obligation counts and timing margins: **TO BE FILLED**.
