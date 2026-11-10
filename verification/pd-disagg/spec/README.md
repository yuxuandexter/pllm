# Design model

`PdCore.tla` is a protocol design, not an extraction of Python code.
`MC_pd_ind.tla` defines the strengthened `IndInv`; `IndInv => Safety` is syntactic.
The public model is a mechanically checked renaming of the proof-target copy, with
no other changes; source hashes and proof status are in [proof status](../proofs/STATUS.md).

| State / action family | Meaning |
|---|---|
| Page state, owner and generation | Free / private / shared / draining / quarantined; access belongs to the current lifetime. |
| Request, router and messages | Open, route, receive, reply, cancel; room reuse cannot transfer old identity. |
| Transfer and stream ledgers | Register, submit, complete, flush, drain; failed returns do not imply stopped hardware. |
| Prefix state | Choose, hit, seal, deduplicate, release, evict; holder counts include requests, entries and quarantine. |
| Kernel steps | Launch, land, complete; reads stay pinned until completion. |

`Safety` combines ownership/landing, generation filtering, truthful single replies,
quarantine exclusion, conservation, read-pin safety and prefix immutability/identity.
`IndInv` adds type and message domains; router and transfer consistency;
ledger, stream and page relations; request, data and message relations;
kernel pins and grown pages; reachability strengthening;
prefix holders, data and transfer snapshots; `PrivateMapOwner` and
`EntryQuarantineDisjoint` prohibit wrong owners and duplicate quarantine accounting.

Run `TLA2TOOLS_JAR=/path/to/tla2tools.jar python3 spec/check.py --out model-output`.
Default `small.cfg` checks IndInv with finite prefix sharing; push/pull configs
check their listed safety invariants. Deadlock checking is disabled; this is not
an induction, liveness or action-coverage verdict. All three finite configurations were rechecked after renaming.
