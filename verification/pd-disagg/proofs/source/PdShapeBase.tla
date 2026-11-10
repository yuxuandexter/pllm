---- MODULE PdShapeBase ----
EXTENDS PdPinnedBridge

LEMMA ShapeBaseType == IndInv => BaseTypeOK
 BY ONLY SMTT(5) DEF IndInv, TypeOK

LEMMA Shape_T_gen == IndInv => gen \in [Rq -> 0..MG]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_rt == IndInv => rt \in [Rq -> {"idle", "wait", "ok", "err"}]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_rp == IndInv => rp \in [Rq -> {0} \cup Inst]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_rd == IndInv => rd \in [Rq -> {0} \cup Inst]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_hp == IndInv => hp \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_hd == IndInv => hd \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_alive == IndInv => alive \in [Inst -> BOOLEAN]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_nfail == IndInv => nfail \in 0..MaxFail
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_torn == IndInv => torn \in [Inst -> SUBSET Inst]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_kpin == IndInv => kpin \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_kfly == IndInv => kfly \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_krs == IndInv => krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_ph == IndInv => ph \in [Inst -> [Rq -> PhSet]]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_rg == IndInv => rg \in [Inst -> [Rq -> 0..MG]]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_rpg == IndInv => rpg \in [Inst -> [Rq -> 0..NP]]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_rpe == IndInv => rpe \in [Inst -> [Rq -> {0} \cup Inst]]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_rx == IndInv => rx \in [Inst -> [Rq -> 0..MX]]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_rhit == IndInv => rhit \in [Inst -> [Rq -> BOOLEAN]]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_pst == IndInv => pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_pr == IndInv => pr \in [Pages -> 0..NR]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_pgn == IndInv => pgn \in [Pages -> 0..MG]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_plt == IndInv => plt \in [Pages -> 0..PS]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_ptl == IndInv => ptl \in [Pages -> -1..PS]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_pvis == IndInv => pvis \in [Pages -> BOOLEAN]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_led == IndInv => led \in [Pages -> SUBSET Xids]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_sfly == IndInv => sfly \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_sled == IndInv => sled \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_prefc == IndInv => prefc \in [Pages -> 0..NR]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_pqp == IndInv => pqp \in [Pages -> {0} \cup Inst]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_xr == IndInv => xr \in [Xids -> 0..NR]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_xg == IndInv => xg \in [Xids -> 0..MG]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_xk == IndInv => xk \in [Xids -> {"none", "wr", "rd"}]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_xp == IndInv => xp \in [Xids -> {0} \cup Inst]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_xd == IndInv => xd \in [Xids -> {0} \cup Inst]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_xsrc == IndInv => xsrc \in [Xids -> 0..NP]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_xdst == IndInv => xdst \in [Xids -> 0..NP]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_xnt == IndInv => xnt \in [Xids -> 0..PS]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_hw == IndInv => hw \in [Xids -> {"none", "fly", "issued", "stop"}]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_hok == IndInv => hok \in [Xids -> BOOLEAN]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_iv == IndInv => iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_xst == IndInv => xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_xlt == IndInv => xlt \in [Xids -> 0..PS]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_nx == IndInv => nx \in 1..(MX + 1)
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_drep == IndInv => drep \in [Rq -> [Gens -> 0..2]]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_crep == IndInv => crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_dsucc == IndInv => dsucc \in [Rq -> [Gens -> BOOLEAN]]
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_T_gbad == IndInv => gbad \in BOOLEAN
 BY ONLY ShapeBaseType, SMTT(5) DEF BaseTypeOK

LEMMA Shape_K2 == IndInv => K2
 BY ONLY SMTT(5) DEF IndInv, KStruct

LEMMA Shape_K8 == IndInv => K8
 BY ONLY SMTT(5) DEF IndInv, KStruct

LEMMA Shape_K12 == IndInv => K12
 BY ONLY SMTT(5) DEF IndInv, KStruct


LEMMA ShapeReqPeers ==
 ASSUME IndInv, NEW m \in net, m.t="req"
 PROVE m.pe \in {0} \cup Inst
<1>1. K12 /\ hp \in [Rq -> [Gens -> {0} \cup Inst]] /\ hd \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY IndInv, Shape_K12, Shape_T_hp, Shape_T_hd
<1>2. QED BY ONLY <1>1, m \in net, m.t="req", SMTT(5) DEF K12

LEMMA ShapeReadyLength ==
 ASSUME IndInv, NEW i \in Inst, NEW r \in Rq, ph[i][r]="ready"
 PROVE LtOf(i,r) \in 0..PS
<1>1. K8 /\ plt \in [Pages -> 0..PS]
 BY ONLY IndInv, Shape_K8, Shape_T_plt
<1>2. rpg[i][r] \in Pages
 BY ONLY <1>1, ph[i][r]="ready", SMTT(5) DEF K8, Active
<1>3. QED BY ONLY <1>1, <1>2, ph[i][r]="ready", SMTT(5) DEF LtOf

LEMMA ShapeInitiatorLocation ==
 ASSUME Sizes, IndInv, NEW x \in Xids, iv[x]="posted"
 PROVE Loc(IF xk[x]="wr" THEN xsrc[x] ELSE xdst[x]) \in Inst
<1>1. K2 BY ONLY IndInv, Shape_K2
<1>2. InitPage(x) \in Pages
 BY ONLY <1>1, iv[x]="posted", SMTT(5) DEF K2
<1>3. QED BY ONLY <1>2, Sizes, PinnedPrivateLocation, SMTT(5) DEF InitPage

LEMMA ShapeNetFrame ==
 ASSUME MessageShape, net'=net
 PROVE MessageShape'
 BY ONLY MessageShape, net'=net, SMTT(5) DEF MessageShape

MsgSpace == [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                      r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                      pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


LEMMA ShapeMessage ==
 ASSUME NEW t \in MsgT, NEW fr \in {0} \cup Inst, NEW to \in {0} \cup Inst,
        NEW r \in {0} \cup Rq, NEW g \in {0} \cup Gens, NEW x \in {0} \cup Xids,
        NEW pg \in {0} \cup Pages \cup (0..PS), NEW pe \in {0} \cup Inst \cup (0..PS), NEW ok \in BOOLEAN
 PROVE Msg(t,fr,to,r,g,x,pg,pe,ok) \in MsgSpace
 BY ONLY SMTT(5) DEF Msg, MsgSpace
====
