---- MODULE PdSizeFacts ----
EXTENDS PdPinnedBridge
\* V22-SCOPE: sequential-interface
LEMMA V22_SizeParameterTypes == Sizes =>
 /\ NPI \in Nat \ {0} /\ NDI \in Nat \ {0}
 /\ NR \in Nat \ {0} /\ MG \in Nat \ {0}
 /\ PPL \in Nat \ {0} /\ PS \in Nat \ {0}
 /\ MX \in Nat /\ MaxFail \in Nat
 BY ONLY SMTT(5) DEF Sizes
HIDE DEF V22_SizeParameterTypes

LEMMA V22_SizeProductBound ==
 ASSUME Sizes
 PROVE NP \in Nat /\ NP >= 1
<1>1. NPI \in Int /\ NDI \in Int /\ PPL \in Int /\ NP \in Int
       /\ NPI >= 1 /\ NDI >= 1 /\ PPL >= 1 /\ NP=(NPI+NDI)*PPL
 BY ONLY Sizes, SizeArithmetic, SMTT(5)
<1>2. QED BY ONLY <1>1, SMTT(5)
HIDE DEF V22_SizeProductBound

LEMMA V22_SizeRangeFacts == Sizes =>
 /\ NP \in Nat /\ 0 \in 0..NP /\ 0 \in 0..NR /\ 0 \in 0..MG
 /\ 0 \in 0..PS /\ 0 \in -1..PS /\ 0 \in 0..MX /\ 0 \in 0..MaxFail
 /\ 1 \in 1..(MX+1) /\ 1 \in 0..PS /\ 1 \in -1..PS
 /\ 0 \notin Inst /\ 0 \notin Pages /\ 0 \notin Rq /\ 0 \notin Gens /\ 0 \notin Xids
 BY ONLY V22_SizeParameterTypes, V22_SizeProductBound, SMTT(5)
 DEF V22_SizeParameterTypes, V22_SizeProductBound, Inst, NL, Pages, Rq, Gens, Xids
HIDE DEF V22_SizeRangeFacts
====
