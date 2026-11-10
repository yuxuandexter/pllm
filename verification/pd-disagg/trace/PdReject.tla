----------------------------- MODULE PdReject -----------------------------
\* observed normal transition relation is imported byte-for-byte as PdTrace.
\* No rejected action is added to TraceNext; all queries are at its terminal.
EXTENDS PdTrace
CONSTANT RejectEvent
RE == RejectEvent

RejectAction == CASE RE.method = "hit" -> PHit(RE.i, RE.r, RE.q)
                  [] RE.method = "dedup" -> PDedup(RE.i, RE.r, RE.q)
                  [] RE.method = "evict" -> SEvict(RE.q)
                  [] OTHER -> FALSE

RejectSnapshot(s) ==
  /\ SeqSet(s.ss) = {<<p,sprefc[p],SRefR(rpgS,p),SRefE(sentry,xsrcS,p),SRefQ(squar,p)>> :
                      p \in {p \in SPages : Loc(p)=RE.i /\ spst[p]="shared"}}
  /\ SeqSet(s.sr) = {h \in rpgS : h[1]=RE.i}
  /\ SeqSet(s.se) = UNION {{<<x,p>> : p \in {p \in xsrcS[x] : Loc(p)=RE.i}} : x \in sentry}
  /\ SeqSet(s.sq) = {h \in squar : Loc(h[2])=RE.i}
  /\ (RE.method # "evict" => smap[RE.i][RE.r]=s.spmap)

RejectBefore == /\ RejectSnapshot(RE.before)
                /\ (RE.method # "evict" => rg[RE.i][RE.r]=RE.g)
RejectAfter == RejectSnapshot(RE.after)
RejectTerminal == l=Len(TLog)+1 /\ todo = << >>
\* Full exhaustion is required by the runner. A printed marker alone never passes.
\* Enumerate ALL observed terminal states; a single counterexample prevents agreement.
RejectProbe == IF RejectTerminal THEN
  PrintT(<<"REJECTED_CALL", RE.seq, RejectBefore,
           ENABLED RejectAction, ENABLED (RejectAction /\ RejectAfter')>>)
  ELSE TRUE
=============================================================================
