# Design model

`PdCore.tla` models the protocol design. It is not extracted from Python code.
`MC_pd_ind.tla` defines `IndInv`, which includes `Safety` as a conjunct.
The public model differs from the proof target only by a mechanically checked
renaming. See [proof status](../proofs/STATUS.md) for source hashes and proof results.

| State and actions | Purpose |
|---|---|
| Page state, owner, and generation | Associate every access with the page's current lifetime. |
| Requests, routing, and messages | Prevent room reuse from accepting an old request's identity. |
| Transfer and stream ledgers | Retain access holds until completion evidence arrives, including after a failed return. |
| Prefix state | Count request, transfer, and quarantine holders before reuse or eviction. |
| Kernel steps | Keep read pages pinned until the step completes. |

`Safety` checks ownership, transfer landing, generation filtering, truthful single
replies, quarantine exclusion, conservation, read pins, and prefix identity and
immutability. `IndInv` also constrains types, message domains, reachable states,
and the relationships between requests, pages, streams, transfers, and kernel
pins. Prefix checks relate holder counts to data and transfer snapshots.
`PrivateMapOwner` rejects incorrect ownership; `EntryQuarantineDisjoint` prevents
duplicate quarantine accounting.

Run `TLA2TOOLS_JAR=/path/to/tla2tools.jar python3 verification/pd-disagg/spec/check.py --out model-output`.
The default `small.cfg` checks `IndInv` with finite prefix sharing. The push and
pull configurations check their listed safety invariants. All three were rechecked
after renaming. Deadlock checking is disabled. These bounded runs do not establish
induction, liveness, or action coverage.
