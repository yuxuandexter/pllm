---- MODULE PdR3InitSharedFacts ----
EXTENDS PdR3InitFacts

\* R3-VISIBILITY

LEMMA R3InitialRefR ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => \A p \in SPages : SRefR(rpgS,p) = 0
<1>1. ASSUME Init, NEW p \in SPages PROVE SRefR(rpgS,p) = 0
<2>1. {h \in rpgS : h[4]=p} = {}
 BY ONLY <1>1, R3Initial_rpgS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY ONLY <2>1, R3CardEmpty, Sizes, Location, Design DEF SRefR, Sizes, Location, Design
<1>2. QED BY <1>1, Sizes, Location, Design DEF Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3InitialRefE ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => \A p \in SPages : SRefE(sentry,xsrcS,p) = 0
<1>1. ASSUME Init, NEW p \in SPages PROVE SRefE(sentry,xsrcS,p) = 0
<2>1. {x \in sentry : p \in xsrcS[x]} = {}
 BY ONLY <1>1, R3Initial_sentry, R3Initial_xsrcS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY ONLY <2>1, R3CardEmpty, Sizes, Location, Design DEF SRefE, Sizes, Location, Design
<1>2. QED BY <1>1, Sizes, Location, Design DEF Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3InitialRefQ ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => \A p \in SPages : SRefQ(squar,p) = 0
<1>1. ASSUME Init, NEW p \in SPages PROVE SRefQ(squar,p) = 0
<2>1. {h \in squar : h[2]=p} = {}
 BY ONLY <1>1, R3Initial_squar, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY ONLY <2>1, R3CardEmpty, Sizes, Location, Design DEF SRefQ, Sizes, Location, Design
<1>2. QED BY <1>1, Sizes, Location, Design DEF Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3InitialNoSPin ==
 ASSUME Sizes, Location, Design
 PROVE
                         Init => \A p \in SPages : ~SPin(p)
 BY ONLY R3Initial_kpin, R3InitDomains, SMTT(10), Sizes, Location, Design DEF SPin, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3InitialSharedLayout ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => \A p \in SPages : spst[p] \in {"free","shared"}
 BY ONLY R3Initial_spst, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3InitialXUnionCard ==
 ASSUME Sizes, Location, Design
 PROVE
                             Init => \A x \in Xids : Cardinality(xsrcS[x] \cup xsrcP[x]) = 0
<1>1. ASSUME Init, NEW x \in Xids PROVE Cardinality(xsrcS[x] \cup xsrcP[x]) = 0
<2>1. xsrcS[x] \cup xsrcP[x] = {}
 BY ONLY <1>1, R3Initial_xsrcS, R3Initial_xsrcP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY ONLY <2>1, R3CardEmpty, Sizes, Location, Design DEF Sizes, Location, Design
<1>2. QED BY <1>1, Sizes, Location, Design DEF Sizes, Location, Design

====
