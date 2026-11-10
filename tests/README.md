# CPU checks

Install `requirements.txt`, then run `bash tests/run.sh` from the repository root.
`PYTHON` may select an existing interpreter. The full suite lives in
`engine/tests/disagg`; it includes PdLedger, fake transport, scheduler, prefix
sharing, rejected calls, descriptor capture and launch-argument corruption tests.
Archived Rust-backend tests may skip; they are outside this release.

To capture fresh observations using the real scheduler/ledger with a stub CPU
model and memmove transport, run:

```bash
python3 tests/sample.py --tree engine --out cpu-sample --port 19330
python3 trace/check_descriptor.py cpu-sample/raw.pdt cpu-check
python3 tests/mutate.py --out cpu-mutations
```

The server binds only loopback and uses three consecutive ports. The sample
runner records its process group, shuts it down and verifies exit. It exercises
cold deduplication, warm prefix hits and decode growth; its five capture mutations
have predictions recorded before execution. Source mutants operate on private copies.
Missing dependencies, syntax errors and timeouts are errors, not killed mutants.
These are CPU checks; no claim about RDMA visibility or real model outputs follows.
