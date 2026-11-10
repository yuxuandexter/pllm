---- MODULE PdFunctionFrames ----
EXTENDS TLAPS
\* V22-SCOPE: sequential-interface
\* Pure function identities: no model assumptions or state strengthening.
LEMMA V22_FunctionEta ==
 ASSUME NEW A, NEW B, NEW f \in [A -> B]
 PROVE [a \in A |-> f[a]] = f
 BY ONLY SMTT(5)
HIDE DEF V22_FunctionEta

LEMMA V22_MatrixEta ==
 ASSUME NEW A, NEW B, NEW C, NEW f \in [A -> [B -> C]]
 PROVE [a \in A |-> [b \in B |-> f[a][b]]] = f
<1>1. \A a \in A : [b \in B |-> f[a][b]] = f[a]
 BY ONLY V22_FunctionEta, SMTT(5)
<1>2. QED BY ONLY <1>1, V22_FunctionEta, SMTT(5)
HIDE DEF V22_MatrixEta
====
