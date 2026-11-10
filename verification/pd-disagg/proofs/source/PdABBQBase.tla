---- MODULE PdABBQBase ----
EXTENDS PdABBBase

LEMMA rgBrCdU91SzjkhB_h88 ==
 ASSUME Sizes, Location, Design
 PROVE
                             Pages \cap SPages = {}
 BY Sizes, SMTT(10), Location, Design DEF Pages, SPages, Sizes, Location, Design

LEMMA sgSShmXFCWW8F ==
 ASSUME Sizes, Location, Design
 PROVE
                       /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design

====
