# Conditional impossibility

Under `DelayedAccess` and `LocalPolicy`, no causal policy can guarantee both
`Isolation` and `Finality` across the infinite execution families in the model.
`Finality` requires the held physical page to return to the pool eventually.
Returning an error or quarantining the page forever does not satisfy it.

| Premise | Meaning and source anchor |
|---|---|
| DelayedAccess | An old physical access may occur after any finite indistinguishable local prefix; no sound stop evidence. [SGLang timeout comment](https://github.com/sgl-project/sglang/blob/92a6910ef2014f1394c4de527a078712a74a295f/python/sglang/srt/disaggregation/mooncake/conn.py#L2503-L2504), [vLLM unfinished writes](https://github.com/vllm-project/vllm/blob/871147447bcf3cdc3385e850b2e1be191301066a/vllm/distributed/kv_transfer/kv_connector/v1/nixl/push_worker.py#L833-L841). Unbounded delay is an assumption, not a measured fact. |
| LocalPolicy | The same local observation history determines the same release decision. Deadline reclamation examples: [SGLang](https://github.com/sgl-project/sglang/blob/92a6910ef2014f1394c4de527a078712a74a295f/python/sglang/srt/disaggregation/decode.py#L3485-L3489), [vLLM](https://github.com/vllm-project/vllm/blob/871147447bcf3cdc3385e850b2e1be191301066a/vllm/distributed/kv_transfer/kv_connector/v1/nixl/base_worker.py#L3398-L3413). These are selected paths, not every path in either engine. |
| NoGenerationValidation | Consumers lack end-to-end generation validation; [bare SGLang indices](https://github.com/sgl-project/sglang/blob/92a6910ef2014f1394c4de527a078712a74a295f/python/sglang/srt/disaggregation/decode.py#L1852-L1854), [vLLM cache publication](https://github.com/vllm-project/vllm/blob/871147447bcf3cdc3385e850b2e1be191301066a/vllm/v1/core/sched/scheduler.py#L3662-L3664). This motivates silent corruption/propagation, but is unnecessary for the physical contradiction. |

A release at time T under permanent failure also occurs in an indistinguishable
delayed execution, where an old access can happen afterward. Never releasing the
page violates `Finality`. This is a manual abstraction theorem, without a
full-program refinement proof.

For old READ permissions, `DelayedAccess` includes unrevoked access rights as
well as posted writes. Residual access after a READ error followed by successful
handle release remains an unverified premise.

`LegacyImpossibility.tla` contains the theorem and a stop-evidence witness.
`LegacyAxiomWitnesses.tla` proves countermodels for weakened `DelayedAccess`.
`check.py` preserves 11 Z3 predictions. The legacy assumptions are UNSAT.
Removing either `DelayedAccess` or `LocalPolicy` gives SAT; removing
`NoGenerationValidation` still gives UNSAT. The stop-evidence design is SAT
when eventual sound stop evidence is assumed. SAT establishes consistency,
not correctness of every ledger execution.

The historical strict TLAPS runs completed 53/53 and 27/27 obligations. Negative
proof timeouts remain INCONCLUSIVE.

```bash
python3 verification/pd-disagg/case-studies/impossibility/check.py --solver /path/to/z3 --solver-sha256 SHA256 --out theorem-output
TLAPM_CACHE_DIR="$PWD/fresh-proof-cache" tlapm --strict --threads 1 verification/pd-disagg/case-studies/impossibility/LegacyImpossibility.tla
TLAPM_CACHE_DIR="$PWD/fresh-witness-cache" tlapm --strict --threads 1 verification/pd-disagg/case-studies/impossibility/LegacyAxiomWitnesses.tla
```

Use Z3 4.8.9 with a recorded binary hash and a TLAPS build supporting strict mode; proof cache directories must be new.
Eventual reclamation also requires software unquarantine, eventual owner recovery,
and fair eviction with `Unquar` enabled. Hardware stop fairness alone is insufficient.
Guarantees restricted to surviving owners avoid global recovery; permanent
quarantine still does not satisfy eventual `Free`.

Historical PdCore checks and a contract-level progress proof support these
conditions. Unrestricted PdCore liveness and global emptiness under arbitrary
arrivals remain unproved. The 11 Z3 predictions were rechecked after renaming;
the completed [PdCore safety proofs](../../proofs/README.md) are available.
