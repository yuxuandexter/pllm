# Upstream case studies

SGLang `92a6910ef2` (Mooncake PD) and vLLM `871147447b` (NIXL PD) were split into boundary
models; TLC/Apalache found counterexamples and selected mechanisms were checked on GB200. This directory publishes results, not reproduction recipes.
Each case lists its evidence: GB200, mechanism only, control plane, model + code, or INCONCLUSIVE.

| Root cause | Boundary | Case count | Cases and evidence | Submitted PRs |
|---|---|---:|---|---|
| timeout/error treated as stopped access (SGLang) | RDMA; cache propagation | 4 | deadline-release, failed write outlives deadline: GB200; prefix unlocked during rdma, late write propagates to host cache: model + code | — |
| room replaces lifetime identity on P | Room/control; prefix metadata | 10 | inflight counter reuse, conclude counter reuse, queued chunk generation, stale transfer info reopens room, early transfer info cleared, cancellation crosses generations, old chunk concludes new room: GB200; abort poison lost on reopen: control plane (late-write premise simulated); parallel sample metadata wait: GB200 mechanism only; shared room prefix length lost: model + code, GPU attribution INCONCLUSIVE | #48889, #48960, #48979, #48982 |
| room replaces lifetime identity on D | Room/control; decode waiting | 3 | receiver clear crosses generations: GB200; ack tracker overwrites generation: partial GB200, remainder INCONCLUSIVE; parallel sample preallocation crash: model + code | #48883 |
| lease/error treated as remote quiescence (vLLM) | RDMA; prefix propagation | 7 | read after source lease expiry, corrupt kv published to prefix cache: GB200; write outlives source lease: GB200 mechanism only (no observed corruption); first reader notice releases shared source, failed read may outlive release, handshake post after lease reap, post during eviction window: control plane; handshake post after lease reap GPU attempt INCONCLUSIVE | — |
| push-side D wait lacks a completion path | Decode waiting/capacity | 3 + trigger | decode waits without completion and its trigger heartbeat key mismatch: GB200; write failure without decode notice, push capacity cross wait: control plane (no GPU result) | — |

Counts list variants, including model-only cases; they are not independent bug counts.
prefill room identity reuse/decode room identity reuse are one identity design defect in two independently repaired code locations.
Publishing corrupt KV into the prefix cache amplifies the vLLM lease failure across components; propagating a late write into host cache is the SGLang counterpart.
Locally repairable means repairable within a stated subspace. Architectural: safety/reclamation tradeoff, sometimes conditional.
The frozen 27-case classification is 15 locally repairable / 10 architectural / 2 undecided (ack tracker overwrites generation, first reader notice releases shared source); push capacity cross wait was added later.
Locally repairable: all prefill room identity reuse cases, receiver clear crosses generations, parallel sample preallocation crash, handshake post after lease reap, post during eviction window, heartbeat key mismatch. Architectural: all SGLang timeout without stop evidence cases, read after source lease expiry, write outlives source lease, failed read may outlive release, corrupt kv published to prefix cache, decode waits without completion, write failure without decode notice.
failed read may outlive release assumes residual DMA after failure; decode waits without completion/write failure without decode notice admit narrower message-path repairs.
Local repair symbolic results cover finite parameter domains, not arbitrary engine sizes.

PR status checked **2026-11-08**: all **open**, none merged.
[#48883](https://github.com/sgl-project/sglang/pull/48883) (receiver clear crosses generations): make receiver clear idempotent;
[#48889](https://github.com/sgl-project/sglang/pull/48889) (inflight counter reuse/conclude counter reuse): preserve in-flight staging counts;
[#48960](https://github.com/sgl-project/sglang/pull/48960) (queued chunk generation/old chunk concludes new room): bind chunks to room generations;
[#48979](https://github.com/sgl-project/sglang/pull/48979) (abort poison lost on reopen): preserve unconsumed abort poison;
[#48982](https://github.com/sgl-project/sglang/pull/48982) (early transfer info cleared/cancellation crosses generations entry): preserve early TransferInfo.

**Outside scope:** HiCache shared room prefix length lost (prefill room identity reuse), late write propagates to host cache (SGLang timeout without stop evidence), host prefix eviction before restore (model + code, outside these five root causes).
shared room prefix length lost GPU attribution remains INCONCLUSIVE. Historical results are maintainer reports; raw evidence is not bundled.
See [the conditional theorem](impossibility/README.md).
