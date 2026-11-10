# Trace checks

Run `python3 verification/pd-disagg/trace/check.py --out check-output` to check `example.pdt` with the
independent Python descriptor observer, then test corrupted and missing observations.
The runner records predictions and hashes before checking. `CLOSED` means the
captured descriptors and argument arrays agree in order. It does not prove RDMA
visibility.

The CPU fixture in `tests/` generates the example using memmove. With
`--require-engine`, this example must be INCONCLUSIVE because it contains no
RDMA engine call capture.

For optional TLC conformance, with Java and `TLA2TOOLS_JAR` set:

```bash
python3 verification/pd-disagg/trace/check_rejected.py verification/pd-disagg/trace/example.pdt trace-model-output --radix
```

`extract_observed.py` maps successful calls. `check_rejected.py` also checks the
captured states before and after rejected calls. `PdReject.tla` adds terminal
queries while retaining `PdTrace`'s successful transitions.

The trace model is frozen separately from the current `spec/` proof target.
Its public renaming was checked by reversal and token comparison;
`check_rejected.py` pins the trace model and adapter by hash. Packaging did not
include a TLC trace run. Python observation acceptance therefore does not imply
TLC CONSUMED or refinement to the newer design model.

Prefill prefix sharing covers one page. Capture hooks and concrete-slot digests
remain trusted, and digest collisions are possible. Missing captures remain
inconclusive.
