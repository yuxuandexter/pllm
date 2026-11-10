---- MODULE PdSharedRefCounts ----
EXTENDS PdCore, TLAPS, FiniteSetTheorems
\* V22-SCOPE: sequential-interface
\* Fine count projections; no model assumptions are added.
LEMMA V22_SRefR_Empty ==
 ASSUME NEW H, NEW p, {h \in H : h[4]=p}={}
 PROVE SRefR(H,p)=0
 BY ONLY {h \in H : h[4]=p}={}, FS_EmptySet, SMTT(5) DEF SRefR
HIDE DEF V22_SRefR_Empty

LEMMA V22_SRefE_Empty ==
 ASSUME NEW E, NEW X, NEW p, {x \in E : p \in X[x]}={}
 PROVE SRefE(E,X,p)=0
 BY ONLY {x \in E : p \in X[x]}={}, FS_EmptySet, SMTT(5) DEF SRefE
HIDE DEF V22_SRefE_Empty

LEMMA V22_SRefQ_Empty ==
 ASSUME NEW Q, NEW p, {h \in Q : h[2]=p}={}
 PROVE SRefQ(Q,p)=0
 BY ONLY {h \in Q : h[2]=p}={}, FS_EmptySet, SMTT(5) DEF SRefQ
HIDE DEF V22_SRefQ_Empty

LEMMA V22_SharedRefZero ==
 ASSUME NEW p \in SPages, B2, PrefcMatchesHolders,
        {h \in rpgS : h[4]=p}={},
        {x \in sentry : p \in xsrcS[x]}={},
        {h \in squar : h[2]=p}={}
 PROVE sprefc[p]=0
<1>1. SRefR(rpgS,p)=0
 BY ONLY {h \in rpgS : h[4]=p}={}, FS_EmptySet, SMTT(5) DEF SRefR
<1>2. SRefE(sentry,xsrcS,p)=0
 BY ONLY {x \in sentry : p \in xsrcS[x]}={}, FS_EmptySet, SMTT(5) DEF SRefE
<1>3. SRefQ(squar,p)=0
 BY ONLY {h \in squar : h[2]=p}={}, FS_EmptySet, SMTT(5) DEF SRefQ
<1>4. QED BY ONLY <1>1, <1>2, <1>3, p \in SPages, B2, PrefcMatchesHolders, SMTT(5) DEF PrefcMatchesHolders
HIDE DEF V22_SharedRefZero

LEMMA V22_PostSharedRefZero ==
 ASSUME NEW p \in SPages, B2, PrefcMatchesHolders',
        {h \in rpgS' : h[4]=p}={},
        {x \in sentry' : p \in xsrcS'[x]}={},
        {h \in squar' : h[2]=p}={}
 PROVE sprefc'[p]=0
<1>1. SRefR(rpgS',p)=0
 BY ONLY {h \in rpgS' : h[4]=p}={}, FS_EmptySet, SMTT(5) DEF SRefR
<1>2. SRefE(sentry',xsrcS',p)=0
 BY ONLY {x \in sentry' : p \in xsrcS'[x]}={}, FS_EmptySet, SMTT(5) DEF SRefE
<1>3. SRefQ(squar',p)=0
 BY ONLY {h \in squar' : h[2]=p}={}, FS_EmptySet, SMTT(5) DEF SRefQ
<1>4. QED BY ONLY <1>1, <1>2, <1>3, p \in SPages, B2, PrefcMatchesHolders', SMTT(5) DEF PrefcMatchesHolders
HIDE DEF V22_PostSharedRefZero
====
