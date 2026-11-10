# Upstream case studies

The case studies model selected boundaries in SGLang `92a6910ef2` with Mooncake PD
and vLLM `871147447b` with NIXL PD. TLC and Apalache found counterexamples; selected
mechanisms were checked on GB200. This directory summarizes those results.
Reproduction procedures and raw evidence are not bundled.

| Root cause | Boundary | Case count | Cases and evidence | Submitted PRs |
|---|---|---:|---|---|
| SGLang treats timeout or error as stopped access | RDMA and cache propagation | 4 | GB200: deadline release and a failed write outliving its deadline. Model and code: prefix unlock during RDMA and a late write propagating to host cache. | None |
| Prefill room reuse loses lifetime identity | Control messages and prefix metadata | 10 | GB200: in-flight and conclude counter reuse, queued chunk generation, stale transfer info reopening a room, early transfer info being cleared, cancellation across generations, and an old chunk concluding a new room. Control plane: abort poison lost on reopen, with simulated late writes. GB200 mechanism only: parallel sample metadata wait. Model and code: shared-room prefix length lost; GPU attribution remains INCONCLUSIVE. | #48889, #48960, #48979, #48982 |
| Decode room reuse loses lifetime identity | Control messages and decode waiting | 3 | GB200: receiver clear across generations. Partial GB200: acknowledgement tracker overwriting a generation; the remainder is INCONCLUSIVE. Model and code: parallel sample preallocation crash. | #48883 |
| vLLM treats lease expiry or error as remote quiescence | RDMA and prefix propagation | 7 | GB200: read after source lease expiry and corrupt KV publication to the prefix cache. GB200 mechanism only: a write outliving the source lease, without observed corruption. Control plane: first-reader notice releasing a shared source, failed read outliving release, handshake post after lease reap, and post during eviction. The handshake GPU attempt was INCONCLUSIVE. | None |
| Push-side decode waiting lacks a completion path | Decode waiting and capacity | 3 and a trigger | GB200: decode waiting without completion and the triggering heartbeat key mismatch. Control plane only: write failure without decode notice and a cross wait for push capacity. | None |

Counts include variants and model-only cases, not independent bugs. Prefill and
decode room reuse share one identity design defect at two independently repaired
locations. Publishing corrupt KV into the prefix cache propagates the vLLM lease
failure across components. A late write reaching host cache is the SGLang counterpart.

The frozen classification contains 27 cases: 15 locally repairable, 10 architectural,
and 2 undecided. The undecided cases are acknowledgement tracking across generations
and first-reader notice releasing a shared source. The capacity cross wait was
added later.

Local repairs cover the prefill identity cases, receiver clear, parallel sample
preallocation, handshake post after lease reap, post during eviction, and the
heartbeat key mismatch. These claims apply within the stated subspace and finite
symbolic parameter domains, not arbitrary engine sizes.

Architectural cases involve a tradeoff between safety and reclamation: the SGLang
timeout cases, vLLM lease expiry, failed reads outliving release, corrupt prefix
publication, decode waiting without completion, and write failure without decode
notice. The failed-read case assumes residual DMA after failure. The two
decode-notification cases admit narrower message-path repairs.

As checked on 2026-11-08, all five submitted PRs were open and unmerged:

- [#48883](https://github.com/sgl-project/sglang/pull/48883) makes receiver clear idempotent across generations.
- [#48889](https://github.com/sgl-project/sglang/pull/48889) preserves in-flight staging counts across counter reuse.
- [#48960](https://github.com/sgl-project/sglang/pull/48960) binds queued chunks to room generations so old chunks cannot conclude new requests.
- [#48979](https://github.com/sgl-project/sglang/pull/48979) preserves unconsumed abort poison when a room reopens.
- [#48982](https://github.com/sgl-project/sglang/pull/48982) preserves early TransferInfo across cancellation and room reuse.

The repairs do not cover HiCache shared-room prefix length loss, late writes into
host cache, or host-prefix eviction before restore. The last has model and code
evidence and lies outside these five root causes. GPU attribution for the shared
prefix-length loss remains INCONCLUSIVE. Historical results are maintainer reports.
See [the conditional theorem](impossibility/README.md).
