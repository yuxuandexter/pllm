---- MODULE PdPMutationDisabled ----
EXTENDS PdPBase
LEMMA P_SBadUnref_Disabled ==
 ASSUME Sizes, Location, Design,
        NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, SBadUnref(i,r,p)
 PROVE FALSE
 BY Design, SMTT(10), Sizes, Location DEF SBadUnref, Sizes, Location, Design
====
