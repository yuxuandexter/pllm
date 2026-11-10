---- MODULE PdR3InitSTypeOK ----
EXTENDS PdPBase

R3STypeOKField01 == spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField01 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField01
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField01, PhSet, Sizes, Location, Design

R3STypeOKField02 == sown \in [SPages -> 0..NR]
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField02 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField02
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField02, PhSet, Sizes, Location, Design

R3STypeOKField03 == sgen \in [SPages -> 0..MG]
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField03 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField03
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField03, PhSet, Sizes, Location, Design

R3STypeOKField04 == skey \in [SPages -> 0..2]
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField04 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField04
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField04, PhSet, Sizes, Location, Design

R3STypeOKField05 == swrite \in [SPages -> BOOLEAN]
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField05 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField05
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField05, PhSet, Sizes, Location, Design

R3STypeOKField06 == sdata \in [SPages -> BOOLEAN]
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField06 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField06
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField06, PhSet, Sizes, Location, Design

R3STypeOKField07 == sready \in [SPages -> BOOLEAN]
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField07 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField07
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField07, PhSet, Sizes, Location, Design

R3STypeOKField08 == sprefc \in [SPages -> 0..(NPI*NR*MG+MX)]
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField08 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField08
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField08, PhSet, Sizes, Location, Design

R3STypeOKField09 == smap \in [PInst -> [Rq -> {0} \cup SPages]]
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField09 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField09
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField09, PhSet, Sizes, Location, Design

R3STypeOKField10 == schoice \in [PInst -> [Rq -> BOOLEAN]]
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField10 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField10
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField10, PhSet, Sizes, Location, Design

R3STypeOKField11 == rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField11 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField11
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField11, PhSet, Sizes, Location, Design

R3STypeOKField12 == xsrcS \in [Xids -> SUBSET SPages]
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField12 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField12
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField12, PhSet, Sizes, Location, Design

R3STypeOKField13 == xsrcP \in [Xids -> SUBSET SPages]
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField13 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField13
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField13, PhSet, Sizes, Location, Design

R3STypeOKField14 == sentry \in SUBSET Xids
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField14 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField14
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField14, PhSet, Sizes, Location, Design

R3STypeOKField15 == squar \in SUBSET (Xids \X SPages)
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField15 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField15
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField15, PhSet, Sizes, Location, Design

R3STypeOKField16 == xprefixOK \in [Xids -> BOOLEAN]
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField16 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField16
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField16, PhSet, Sizes, Location, Design

R3STypeOKField17 == dpreOK \in [Pages -> BOOLEAN]
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField17 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField17
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField17, PhSet, Sizes, Location, Design

R3STypeOKField18 == hitSeen \in BOOLEAN
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField18 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField18
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField18, PhSet, Sizes, Location, Design

R3STypeOKField19 == dedupSeen \in BOOLEAN
\* R3-VISIBILITY

LEMMA Init_R3STypeOKField19 ==
 ASSUME Sizes, Location, Design
 PROVE
                               Init => R3STypeOKField19
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3STypeOKField19, PhSet, Sizes, Location, Design

\* R3-VISIBILITY

THEOREM R3Init_STypeOK ==
 ASSUME Sizes, Location, Design
 PROVE
                          Init => STypeOK
 BY Init_R3STypeOKField01, Init_R3STypeOKField02, Init_R3STypeOKField03, Init_R3STypeOKField04, Init_R3STypeOKField05, Init_R3STypeOKField06, Init_R3STypeOKField07, Init_R3STypeOKField08, Init_R3STypeOKField09, Init_R3STypeOKField10, Init_R3STypeOKField11, Init_R3STypeOKField12, Init_R3STypeOKField13, Init_R3STypeOKField14, Init_R3STypeOKField15, Init_R3STypeOKField16, Init_R3STypeOKField17, Init_R3STypeOKField18, Init_R3STypeOKField19, Sizes, Location, Design DEF STypeOK, R3STypeOKField01, R3STypeOKField02, R3STypeOKField03, R3STypeOKField04, R3STypeOKField05, R3STypeOKField06, R3STypeOKField07, R3STypeOKField08, R3STypeOKField09, R3STypeOKField10, R3STypeOKField11, R3STypeOKField12, R3STypeOKField13, R3STypeOKField14, R3STypeOKField15, R3STypeOKField16, R3STypeOKField17, R3STypeOKField18, R3STypeOKField19, Sizes, Location, Design
====
