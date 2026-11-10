---- MODULE PdR3InitBaseTypeOK ----
EXTENDS PdPBase

R3BaseTypeOKField01 == gen \in [Rq -> 0..MG]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField01 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField01
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField01, PhSet, Sizes, Location, Design

R3BaseTypeOKField02 == rt \in [Rq -> {"idle", "wait", "ok", "err"}]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField02 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField02
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField02, PhSet, Sizes, Location, Design

R3BaseTypeOKField03 == rp \in [Rq -> {0} \cup Inst]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField03 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField03
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField03, PhSet, Sizes, Location, Design

R3BaseTypeOKField04 == rd \in [Rq -> {0} \cup Inst]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField04 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField04
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField04, PhSet, Sizes, Location, Design

R3BaseTypeOKField05 == hp \in [Rq -> [Gens -> {0} \cup Inst]]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField05 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField05
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField05, PhSet, Sizes, Location, Design

R3BaseTypeOKField06 == hd \in [Rq -> [Gens -> {0} \cup Inst]]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField06 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField06
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField06, PhSet, Sizes, Location, Design

R3BaseTypeOKField07 == alive \in [Inst -> BOOLEAN]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField07 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField07
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField07, PhSet, Sizes, Location, Design

R3BaseTypeOKField08 == nfail \in 0..MaxFail
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField08 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField08
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField08, PhSet, Sizes, Location, Design

R3BaseTypeOKField09 == torn \in [Inst -> SUBSET Inst]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField09 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField09
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField09, PhSet, Sizes, Location, Design

R3BaseTypeOKField10 == kpin \in [Inst -> [KSlots -> BOOLEAN]]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField10 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField10
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField10, PhSet, Sizes, Location, Design

R3BaseTypeOKField11 == kfly \in [Inst -> [KSlots -> BOOLEAN]]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField11 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField11
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField11, PhSet, Sizes, Location, Design

R3BaseTypeOKField12 == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField12 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField12
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField12, PhSet, Sizes, Location, Design

R3BaseTypeOKField13 == ph \in [Inst -> [Rq -> PhSet]]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField13 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField13
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField13, PhSet, Sizes, Location, Design

R3BaseTypeOKField14 == rg \in [Inst -> [Rq -> 0..MG]]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField14 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField14
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField14, PhSet, Sizes, Location, Design

R3BaseTypeOKField15 == rpg \in [Inst -> [Rq -> 0..NP]]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField15 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField15
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField15, PhSet, Sizes, Location, Design

R3BaseTypeOKField16 == rpe \in [Inst -> [Rq -> {0} \cup Inst]]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField16 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField16
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField16, PhSet, Sizes, Location, Design

R3BaseTypeOKField17 == rx \in [Inst -> [Rq -> 0..MX]]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField17 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField17
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField17, PhSet, Sizes, Location, Design

R3BaseTypeOKField18 == rhit \in [Inst -> [Rq -> BOOLEAN]]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField18 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField18
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField18, PhSet, Sizes, Location, Design

R3BaseTypeOKField19 == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField19 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField19
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField19, PhSet, Sizes, Location, Design

R3BaseTypeOKField20 == pr \in [Pages -> 0..NR]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField20 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField20
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField20, PhSet, Sizes, Location, Design

R3BaseTypeOKField21 == pgn \in [Pages -> 0..MG]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField21 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField21
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField21, PhSet, Sizes, Location, Design

R3BaseTypeOKField22 == plt \in [Pages -> 0..PS]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField22 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField22
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField22, PhSet, Sizes, Location, Design

R3BaseTypeOKField23 == ptl \in [Pages -> -1..PS]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField23 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField23
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField23, PhSet, Sizes, Location, Design

R3BaseTypeOKField24 == pvis \in [Pages -> BOOLEAN]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField24 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField24
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField24, PhSet, Sizes, Location, Design

R3BaseTypeOKField25 == led \in [Pages -> SUBSET Xids]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField25 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField25
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField25, PhSet, Sizes, Location, Design

R3BaseTypeOKField26 == sfly \in [Pages -> SUBSET (Rq \X Gens)]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField26 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField26
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField26, PhSet, Sizes, Location, Design

R3BaseTypeOKField27 == sled \in [Pages -> SUBSET (Rq \X Gens)]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField27 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField27
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField27, PhSet, Sizes, Location, Design

R3BaseTypeOKField28 == prefc \in [Pages -> 0..NR]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField28 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField28
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField28, PhSet, Sizes, Location, Design

R3BaseTypeOKField29 == pqp \in [Pages -> {0} \cup Inst]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField29 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField29
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField29, PhSet, Sizes, Location, Design

R3BaseTypeOKField30 == xr \in [Xids -> 0..NR]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField30 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField30
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField30, PhSet, Sizes, Location, Design

R3BaseTypeOKField31 == xg \in [Xids -> 0..MG]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField31 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField31
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField31, PhSet, Sizes, Location, Design

R3BaseTypeOKField32 == xk \in [Xids -> {"none", "wr", "rd"}]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField32 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField32
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField32, PhSet, Sizes, Location, Design

R3BaseTypeOKField33 == xp \in [Xids -> {0} \cup Inst]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField33 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField33
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField33, PhSet, Sizes, Location, Design

R3BaseTypeOKField34 == xd \in [Xids -> {0} \cup Inst]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField34 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField34
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField34, PhSet, Sizes, Location, Design

R3BaseTypeOKField35 == xsrc \in [Xids -> 0..NP]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField35 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField35
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField35, PhSet, Sizes, Location, Design

R3BaseTypeOKField36 == xdst \in [Xids -> 0..NP]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField36 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField36
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField36, PhSet, Sizes, Location, Design

R3BaseTypeOKField37 == xnt \in [Xids -> 0..PS]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField37 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField37
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField37, PhSet, Sizes, Location, Design

R3BaseTypeOKField38 == hw \in [Xids -> {"none", "fly", "issued", "stop"}]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField38 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField38
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField38, PhSet, Sizes, Location, Design

R3BaseTypeOKField39 == hok \in [Xids -> BOOLEAN]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField39 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField39
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField39, PhSet, Sizes, Location, Design

R3BaseTypeOKField40 == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField40 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField40
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField40, PhSet, Sizes, Location, Design

R3BaseTypeOKField41 == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField41 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField41
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField41, PhSet, Sizes, Location, Design

R3BaseTypeOKField42 == xlt \in [Xids -> 0..PS]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField42 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField42
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField42, PhSet, Sizes, Location, Design

R3BaseTypeOKField43 == nx \in 1..(MX + 1)
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField43 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField43
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField43, PhSet, Sizes, Location, Design

R3BaseTypeOKField44 == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                      r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                      pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField44 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField44
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField44, PhSet, Sizes, Location, Design

R3BaseTypeOKField45 == drep \in [Rq -> [Gens -> 0..2]]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField45 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField45
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField45, PhSet, Sizes, Location, Design

R3BaseTypeOKField46 == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField46 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField46
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField46, PhSet, Sizes, Location, Design

R3BaseTypeOKField47 == dsucc \in [Rq -> [Gens -> BOOLEAN]]
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField47 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField47
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField47, PhSet, Sizes, Location, Design

R3BaseTypeOKField48 == gbad \in BOOLEAN
\* R3-VISIBILITY

LEMMA Init_R3BaseTypeOKField48 ==
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => R3BaseTypeOKField48
 BY Sizes, SMTT(20), Location, Design DEF Init, BaseInit, SInit, R3BaseTypeOKField48, PhSet, Sizes, Location, Design

\* R3-VISIBILITY

THEOREM R3Init_BaseTypeOK ==
 ASSUME Sizes, Location, Design
 PROVE
                             Init => CoreTypeOK
 BY Init_R3BaseTypeOKField01, Init_R3BaseTypeOKField02, Init_R3BaseTypeOKField03, Init_R3BaseTypeOKField04, Init_R3BaseTypeOKField05, Init_R3BaseTypeOKField06, Init_R3BaseTypeOKField07, Init_R3BaseTypeOKField08, Init_R3BaseTypeOKField09, Init_R3BaseTypeOKField10, Init_R3BaseTypeOKField11, Init_R3BaseTypeOKField12, Init_R3BaseTypeOKField13, Init_R3BaseTypeOKField14, Init_R3BaseTypeOKField15, Init_R3BaseTypeOKField16, Init_R3BaseTypeOKField17, Init_R3BaseTypeOKField18, Init_R3BaseTypeOKField19, Init_R3BaseTypeOKField20, Init_R3BaseTypeOKField21, Init_R3BaseTypeOKField22, Init_R3BaseTypeOKField23, Init_R3BaseTypeOKField24, Init_R3BaseTypeOKField25, Init_R3BaseTypeOKField26, Init_R3BaseTypeOKField27, Init_R3BaseTypeOKField28, Init_R3BaseTypeOKField29, Init_R3BaseTypeOKField30, Init_R3BaseTypeOKField31, Init_R3BaseTypeOKField32, Init_R3BaseTypeOKField33, Init_R3BaseTypeOKField34, Init_R3BaseTypeOKField35, Init_R3BaseTypeOKField36, Init_R3BaseTypeOKField37, Init_R3BaseTypeOKField38, Init_R3BaseTypeOKField39, Init_R3BaseTypeOKField40, Init_R3BaseTypeOKField41, Init_R3BaseTypeOKField42, Init_R3BaseTypeOKField43, Init_R3BaseTypeOKField44, Init_R3BaseTypeOKField45, Init_R3BaseTypeOKField46, Init_R3BaseTypeOKField47, Init_R3BaseTypeOKField48, Sizes, Location, Design DEF CoreTypeOK, R3BaseTypeOKField01, R3BaseTypeOKField02, R3BaseTypeOKField03, R3BaseTypeOKField04, R3BaseTypeOKField05, R3BaseTypeOKField06, R3BaseTypeOKField07, R3BaseTypeOKField08, R3BaseTypeOKField09, R3BaseTypeOKField10, R3BaseTypeOKField11, R3BaseTypeOKField12, R3BaseTypeOKField13, R3BaseTypeOKField14, R3BaseTypeOKField15, R3BaseTypeOKField16, R3BaseTypeOKField17, R3BaseTypeOKField18, R3BaseTypeOKField19, R3BaseTypeOKField20, R3BaseTypeOKField21, R3BaseTypeOKField22, R3BaseTypeOKField23, R3BaseTypeOKField24, R3BaseTypeOKField25, R3BaseTypeOKField26, R3BaseTypeOKField27, R3BaseTypeOKField28, R3BaseTypeOKField29, R3BaseTypeOKField30, R3BaseTypeOKField31, R3BaseTypeOKField32, R3BaseTypeOKField33, R3BaseTypeOKField34, R3BaseTypeOKField35, R3BaseTypeOKField36, R3BaseTypeOKField37, R3BaseTypeOKField38, R3BaseTypeOKField39, R3BaseTypeOKField40, R3BaseTypeOKField41, R3BaseTypeOKField42, R3BaseTypeOKField43, R3BaseTypeOKField44, R3BaseTypeOKField45, R3BaseTypeOKField46, R3BaseTypeOKField47, R3BaseTypeOKField48, Sizes, Location, Design
====
