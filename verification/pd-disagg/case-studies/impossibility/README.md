# Conditional impossibility

Physical impossibility proves **DelayedAccess ∧ LocalPolicy ⇒ ¬(Isolation ∧ Finality)** for arbitrary causal policies and infinite execution families. Finality means the held physical page eventually
returns to the pool; returning an error or quarantining forever does not satisfy it.

| Premise | Meaning and source anchor |
|---|---|
| DelayedAccess | An old physical access may occur after any finite indistinguishable local prefix; no sound stop evidence. [SGLang timeout comment](https://github.com/sgl-project/sglang/blob/92a6910ef2014f1394c4de527a078712a74a295f/python/sglang/srt/disaggregation/mooncake/conn.py#L2503-L2504), [vLLM unfinished writes](https://github.com/vllm-project/vllm/blob/871147447bcf3cdc3385e850b2e1be191301066a/vllm/distributed/kv_transfer/kv_connector/v1/nixl/push_worker.py#L833-L841). Unbounded delay is an assumption, not a measured fact. |
| LocalPolicy | The same local observation history determines the same release decision. Deadline reclamation examples: [SGLang](https://github.com/sgl-project/sglang/blob/92a6910ef2014f1394c4de527a078712a74a295f/python/sglang/srt/disaggregation/decode.py#L3485-L3489), [vLLM](https://github.com/vllm-project/vllm/blob/871147447bcf3cdc3385e850b2e1be191301066a/vllm/distributed/kv_transfer/kv_connector/v1/nixl/base_worker.py#L3398-L3413). These are selected paths, not every path in either engine. |
| NoGenerationValidation | Consumers lack end-to-end generation validation; [bare SGLang indices](https://github.com/sgl-project/sglang/blob/92a6910ef2014f1394c4de527a078712a74a295f/python/sglang/srt/disaggregation/decode.py#L1852-L1854), [vLLM cache publication](https://github.com/vllm-project/vllm/blob/871147447bcf3cdc3385e850b2e1be191301066a/vllm/v1/core/sched/scheduler.py#L3662-L3664). This motivates silent corruption/propagation, but is unnecessary for the physical contradiction. |

A release at T under permanent failure also occurs in an indistinguishable delayed execution, permitting an old access afterward. No release violates Finality.
This is a manual abstraction theorem; no full-program refinement proof is supplied.
For old READ permissions, DelayedAccess includes unrevoked access rights, not just posted writes.
The specific READ-error/successful-handle-release leakage premise remains unverified.

`LegacyImpossibility.tla` contains the theorem and stop-evidence witness; `LegacyAxiomWitnesses.tla` proves weakened-DelayedAccess countermodels.
`check.py` preserves the original 11 Z3 predictions: legacy UNSAT; drop DelayedAccess/LocalPolicy SAT;
drop NoGenerationValidation still UNSAT; stop-evidence design with eventual sound stop evidence SAT. SAT is consistency,
not universal ledger correctness. Historical strict TLAPS results: 53/53 and 27/27; negative proof timeouts remain INCONCLUSIVE.

```bash
python3 case-studies/impossibility/check.py --solver /path/to/z3 --solver-sha256 SHA256 --out theorem-output
TLAPM_CACHE_DIR="$PWD/fresh-proof-cache" tlapm --strict --threads 1 case-studies/impossibility/LegacyImpossibility.tla
TLAPM_CACHE_DIR="$PWD/fresh-witness-cache" tlapm --strict --threads 1 case-studies/impossibility/LegacyAxiomWitnesses.tla
```

Use Z3 4.8.9 with a recorded binary hash and a TLAPS build supporting strict mode; proof cache directories must be new.
Eventual reclamation additionally needs software unquarantine, eventual owner recovery and fair eviction (Unquar enabled); hardware stop fairness alone is insufficient.
Survivor-only guarantees avoid global recovery; permanent quarantine is not strict Free.
Historical PdCore checks (source hashes `84280a88` / `a19a731f`) and a contract-level progress proof support this; unrestricted PdCore liveness and arbitrary-arrival global emptiness remain unproved.
The 11 Z3 predictions were rechecked after renaming; final PdCore proofs remain pending.
