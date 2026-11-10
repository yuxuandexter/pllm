---- MODULE PdV22NextPartition ----
EXTENDS PdFinalFamilies, PdPMutationDisabled

LEMMA NextFamilies ==
 ASSUME Sizes, Design
 PROVE Next <=> (NextP \/ NextD \/ NextMessage \/ NextKernel \/ NextB2)
<1>1. Location BY ONLY Sizes, PinnedLocationFact
<1>2. QED
 BY ONLY Sizes, Design, <1>1, P_SBadUnref_Disabled, ZenonT(30) DEF Next, BaseNext, SNext, NextP, NextD, NextMessage, NextKernel, NextB2

====
