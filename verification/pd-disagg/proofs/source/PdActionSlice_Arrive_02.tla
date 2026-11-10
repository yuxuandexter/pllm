---- MODULE PdActionSlice_Arrive_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_9ef278c147c12b12, PdFinalAuxType_c4345ad3846ce0f4, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_Arrive_01

\* Complete original body PdFinalPart_Arrive_02_01 SHA 80984553fe3e6e9925798fe79225c38675af21fed0d09aba5905c050a8dc7fd3
HIDE DEF AuxType_9ef278c147c12b12, AuxType_c4345ad3846ce0f4, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_Arrive_01_01, Part_Arrive_01_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SInd, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Status, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sprefc, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc
THEOREM Part_Arrive_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE (PrefcMatchesHolders)' /\ (SI8)' /\ (SI7)' /\ (SealOnlyLanded)' /\ (K1)' /\ (K12)' /\ (K9)' /\ (K10)' /\ (K11)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE T_gen == gen \in [Rq -> 0..MG]


           T_rt == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           T_rp == rp \in [Rq -> {0} \cup Inst]


           T_rd == rd \in [Rq -> {0} \cup Inst]


           T_hp == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           T_hd == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           T_alive == alive \in [Inst -> BOOLEAN]


           T_nfail == nfail \in 0..MaxFail


           T_torn == torn \in [Inst -> SUBSET Inst]


           T_kpin == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           T_kfly == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           T_krs == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           T_ph == ph \in [Inst -> [Rq -> PhSet]]


           T_rg == rg \in [Inst -> [Rq -> 0..MG]]


           T_rpg == rpg \in [Inst -> [Rq -> 0..NP]]


           T_rpe == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           T_rx == rx \in [Inst -> [Rq -> 0..MX]]


           T_rhit == rhit \in [Inst -> [Rq -> BOOLEAN]]


           T_pst == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           T_pr == pr \in [Pages -> 0..NR]


           T_pgn == pgn \in [Pages -> 0..MG]


           T_plt == plt \in [Pages -> 0..PS]


           T_ptl == ptl \in [Pages -> -1..PS]


           T_pvis == pvis \in [Pages -> BOOLEAN]


           T_led == led \in [Pages -> SUBSET Xids]


           T_sfly == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           T_sled == sled \in [Pages -> SUBSET (Rq \X Gens)]


           T_prefc == prefc \in [Pages -> 0..NR]


           T_pqp == pqp \in [Pages -> {0} \cup Inst]


           T_xr == xr \in [Xids -> 0..NR]


           T_xg == xg \in [Xids -> 0..MG]


           T_xk == xk \in [Xids -> {"none", "wr", "rd"}]


           T_xp == xp \in [Xids -> {0} \cup Inst]


           T_xd == xd \in [Xids -> {0} \cup Inst]


           T_xsrc == xsrc \in [Xids -> 0..NP]


           T_xdst == xdst \in [Xids -> 0..NP]


           T_xnt == xnt \in [Xids -> 0..PS]


           T_hw == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           T_hok == hok \in [Xids -> BOOLEAN]


           T_iv == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           T_xst == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           T_xlt == xlt \in [Xids -> 0..PS]


           T_nx == nx \in 1..(MX + 1)


           T_net == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           T_drep == drep \in [Rq -> [Gens -> 0..2]]


           T_crep == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           T_dsucc == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           T_gbad == gbad \in BOOLEAN


           Types == T_gen /\ T_rt /\ T_rp /\ T_rd /\ T_hp /\ T_hd /\ T_alive /\ T_nfail /\ T_torn /\ T_kpin /\ T_kfly /\ T_krs /\ T_ph /\ T_rg /\ T_rpg /\ T_rpe /\ T_rx /\ T_rhit /\ T_pst /\ T_pr /\ T_pgn /\ T_plt /\ T_ptl /\ T_pvis /\ T_led /\ T_sfly /\ T_sled /\ T_prefc /\ T_pqp /\ T_xr /\ T_xg /\ T_xk /\ T_xp /\ T_xd /\ T_xsrc /\ T_xdst /\ T_xnt /\ T_hw /\ T_hok /\ T_iv /\ T_xst /\ T_xlt /\ T_nx /\ T_net /\ T_drep /\ T_crep /\ T_dsucc /\ T_gbad

           \* T2M-LOCAL-VISIBILITY

           RO_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           RO_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           RO_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           RO_Src(x) == IF RO_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           RO_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           RO_Quarantine(x) == x \in sentry /\ ~RO_Close(x) /\
            ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           RO_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\ (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           RO_Pin(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           RO_Drop(p) == (RO_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RO_Pin(p) /\ sready[p] /\ ~(\E x \in sentry' : p \in xsrcP'[x])


           RO_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
            spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           RO_E_rpgS == rpgS'={h \in rpgS : RO_HLive(h) \/ (RO_HPin(h) /\ Mut # "unrefBeforeKDone")}


           RO_E_xsrcS == xsrcS'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="shared" THEN {RO_Src(x)} ELSE {}) ELSE xsrcS[x]]


           RO_E_xsrcP == xsrcP'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="priv" THEN {RO_Src(x)} ELSE {}) ELSE xsrcP[x]]


           RO_E_sentry == sentry'=(sentry \cup {x \in Xids : RO_Posted(x)}) \ {x \in Xids : RO_Close(x) \/ RO_Quarantine(x)}


           RO_E_squar == squar'=squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RO_Quarantine(x)}})


           RO_E_smap == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           RO_E_schoice == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           RO_E_sprefc == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)+SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

           \* T2M-LOCAL-VISIBILITY

           RO_Flat(e) == <<e[1][1],e[1][2],e[2][1],e[2][2]>>

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_sprefc, RO_Flat

<1>ELvtX9yoPlInf.        
 ASSUME NEW p \in SPages, B2, SFollow, spst'[p]="shared"
 PROVE spst[p]="shared" /\ UNCHANGED <<sready,sdata,swrite>>
 BY ONLY <1>ELvtX9yoPlInf, Sizes, Location, Design, ZenonT(10), V21_SFollowStatic, V22_SFollowSharedOrigin DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UoOnqFdN5hlmOkH5yaHH03rU.        
 ASSUME PinInv, SFollow, xdst' \in [Xids -> 0..NP]
 PROVE SharedImmutable'
<2> HIDE DEF SFollow, CoreTypeOK, STypeOK
<2>old. SharedImmutable
 BY ONLY <1>UoOnqFdN5hlmOkH5yaHH03rU, V22_T_SharedImmutable, SMTT(5) DEF V22_T_SharedImmutable
<2>off. CASE ~B2
 BY ONLY <2>off, SMTT(5) DEF SharedImmutable
<2>on. CASE B2
 <3>each. ASSUME NEW p \in SPages, spst'[p]="shared"
          PROVE sready'[p] /\ sdata'[p] /\ ~swrite'[p] /\ NoWriteInto(p)'
  <4>origin. spst[p]="shared"
   BY ONLY <1>UoOnqFdN5hlmOkH5yaHH03rU, <2>on, <3>each, V22_SF_SharedOrigin, SMTT(5) DEF V22_SF_SharedOrigin
  <4>static. UNCHANGED <<sready,sdata,swrite>>
   BY ONLY <1>UoOnqFdN5hlmOkH5yaHH03rU, V22_SF_Static, SMTT(5) DEF V22_SF_Static
  <4>data. sready'[p] /\ sdata'[p] /\ ~swrite'[p]
   BY ONLY <2>old, <2>on, <3>each, <4>origin, <4>static, SMTT(5) DEF SharedImmutable
  <4>noWrite. NoWriteInto(p)'
   BY ONLY <1>UoOnqFdN5hlmOkH5yaHH03rU, <3>each, Sizes, V22_SharedNoWriteNext, SMTT(5) DEF V22_SharedNoWriteNext
  <4>qed. QED BY ONLY <4>data, <4>noWrite, SMTT(5)
 <3>qed. QED BY ONLY <2>on, <3>each, SMTT(5) DEF SharedImmutable
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

\* T2M-END R2M0510_PdPSFollowShared

\* T2M-SCOPE R2M0511_PdPSharedOld
\* T2M-BODY R2M0511_PdPSharedOld
\* T2M-LOCAL-VISIBILITY

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Uj0mi4.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M0003_PP_PdMsgBase


<1>lfvXDhEF7.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, Arrive(r,i,j)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, hok, hw, iv, kfly, kpin, krs, led, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rg, rhit, rpe, rpg, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>lfvXDhEF7, Sizes, Location, Design, ZenonT(5) DEF Arrive, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M0004_PP_PdArriveFrames

\* T2M-SCOPE R2M0005_PP_PdArriveHistory
\* T2M-BODY R2M0005_PP_PdArriveHistory
\* T2M-LOCAL-VISIBILITY

<1>yKx7sy.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE K1'
<2> USE ONLY <1>yKx7sy, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW zz_r \in Rq
                 PROVE ((rt[zz_r] = "idle") <=> (gen[zz_r] = 0))' /\ (gen[zz_r] >= 1 => (rp[zz_r] = hp[zz_r][gen[zz_r]] /\ rd[zz_r] = hd[zz_r][gen[zz_r]]))' /\ (rt[zz_r] = "wait" => crep[zz_r][gen[zz_r]] = "none")' /\ (\A g \in Gens :
             /\ g <= gen[zz_r] => (hp[zz_r][g] \in PInst /\ hd[zz_r][g] \in DInst)
             /\ g > gen[zz_r] => (hp[zz_r][g] = 0 /\ hd[zz_r][g] = 0 /\ crep[zz_r][g] = "none" /\ drep[zz_r][g] = 0 /\ ~dsucc[zz_r][g]))'
  BY SMTT(20), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>1. K1 /\ T_gen /\ T_hp /\ T_hd /\ T_rt /\ T_rp /\ T_rd /\ T_crep
  BY SMTT(20), <1>g4u1JVDPkX, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc>>
  BY SMTT(20), <1>lfvXDhEF7, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ((rt[zz_r] = "idle") <=> (gen[zz_r] = 0))'
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(20) DEF Arrive, DInst, Gens, K1, NL, PInst, Rq, T_crep, T_gen, T_hd, T_hp, T_rd, T_rp, T_rt, Sizes, Location, Design
<2>4. (gen[zz_r] >= 1 => (rp[zz_r] = hp[zz_r][gen[zz_r]] /\ rd[zz_r] = hd[zz_r][gen[zz_r]]))'
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(20) DEF Arrive, DInst, Gens, K1, NL, PInst, Rq, T_crep, T_gen, T_hd, T_hp, T_rd, T_rp, T_rt, Sizes, Location, Design
<2>5. (rt[zz_r] = "wait" => crep[zz_r][gen[zz_r]] = "none")'
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(20) DEF Arrive, DInst, Gens, K1, NL, PInst, Rq, T_crep, T_gen, T_hd, T_hp, T_rd, T_rp, T_rt, Sizes, Location, Design
<2>6. (\A g \in Gens :
             /\ g <= gen[zz_r] => (hp[zz_r][g] \in PInst /\ hd[zz_r][g] \in DInst)
             /\ g > gen[zz_r] => (hp[zz_r][g] = 0 /\ hd[zz_r][g] = 0 /\ crep[zz_r][g] = "none" /\ drep[zz_r][g] = 0 /\ ~dsucc[zz_r][g]))'
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(20) DEF Arrive, DInst, Gens, K1, NL, PInst, Rq, T_crep, T_gen, T_hd, T_hp, T_rd, T_rp, T_rt, Sizes, Location, Design
<2>7. QED
  BY SMTT(20), <2>3, <2>4, <2>5, <2>6, Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M0006_PP_PdCell_Arrive_K1

\* T2M-SCOPE R2M0007_PP_PdCell_Arrive_K12

<1>QeazWHz.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE K12'
<2> USE ONLY <1>QeazWHz, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW zz_m \in net'
                 PROVE (zz_m.t # "hello" => (zz_m.r \in Rq /\ zz_m.g \in Gens /\ zz_m.g <= gen[zz_m.r]))' /\ (zz_m.t = "hello" => zz_m.fr \in Inst)' /\ (zz_m.t = "req" => (zz_m.fr = 0 /\ zz_m.x = 0 /\
                            ((zz_m.to = hp[zz_m.r][zz_m.g] /\ zz_m.pe = hd[zz_m.r][zz_m.g]) \/ (zz_m.to = hd[zz_m.r][zz_m.g] /\ zz_m.pe = hp[zz_m.r][zz_m.g]))))' /\ (zz_m.t = "dinfo" => (Mode = "push" /\ zz_m.fr = hd[zz_m.r][zz_m.g] /\ zz_m.to = hp[zz_m.r][zz_m.g]
                              /\ (zz_m.x # 0 => (zz_m.x < nx /\ xr[zz_m.x] = zz_m.r /\ xg[zz_m.x] = zz_m.g /\ xdst[zz_m.x] = zz_m.pg))))' /\ (zz_m.t = "sinfo" => (Mode = "pull" /\ zz_m.x < nx /\ xr[zz_m.x] = zz_m.r /\ xg[zz_m.x] = zz_m.g /\ xsrc[zz_m.x] = zz_m.pg /\ zz_m.pe = xlt[zz_m.x]
                              /\ zz_m.fr = hp[zz_m.r][zz_m.g] /\ zz_m.to = hd[zz_m.r][zz_m.g]))' /\ (zz_m.t = "notice" => (Mode = "push" /\ zz_m.x < nx /\ xr[zz_m.x] = zz_m.r /\ xg[zz_m.x] = zz_m.g /\ zz_m.pe = 1 /\ zz_m.pg = xlt[zz_m.x]
                               /\ iv[zz_m.x] = "cqe" /\ hw[zz_m.x] \in CqeHw(zz_m.x) /\ zz_m.ok = hok[zz_m.x]))' /\ (zz_m.t = "nopost" => (Mode = "push" /\ zz_m.x < nx /\ xr[zz_m.x] = zz_m.r /\ xg[zz_m.x] = zz_m.g /\ iv[zz_m.x] = "nopost"))' /\ (zz_m.t = "revoke" => (Mode = "push" /\ zz_m.x < nx /\ xr[zz_m.x] = zz_m.r /\ xg[zz_m.x] = zz_m.g))' /\ (zz_m.t = "relsrc" => (Mode = "pull" /\ zz_m.x < nx /\ xr[zz_m.x] = zz_m.r /\ xg[zz_m.x] = zz_m.g
                               /\ ((iv[zz_m.x] = "cqe" /\ hw[zz_m.x] = "stop" /\ zz_m.ok = hok[zz_m.x]) \/ (iv[zz_m.x] = "nopost" /\ ~zz_m.ok))))' /\ (zz_m.t = "reply" => (zz_m.fr = hd[zz_m.r][zz_m.g] /\ drep[zz_m.r][zz_m.g] = 1 /\ (zz_m.ok => dsucc[zz_m.r][zz_m.g])))'
  BY SMTT(10), Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>1. K12 /\ K1 /\ T_gen /\ T_hp /\ T_hd
  BY SMTT(10), <1>g4u1JVDPkX, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K12, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, hok, hw, iv, nx, xdst, xg, xk, xlt, xr, xsrc>>
  BY SMTT(10), <1>lfvXDhEF7, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (zz_m.t # "hello" => (zz_m.r \in Rq /\ zz_m.g \in Gens /\ zz_m.g <= gen[zz_m.r]))'
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(10) DEF Arrive, CqeHw, DInst, Gens, Inst, K1, K12, Msg, NL, PInst, Rq, T_gen, T_hd, T_hp, Sizes, Location, Design
<2>4. (zz_m.t = "hello" => zz_m.fr \in Inst)'
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(10) DEF Arrive, CqeHw, DInst, Gens, Inst, K1, K12, Msg, NL, PInst, Rq, T_gen, T_hd, T_hp, Sizes, Location, Design
<2>5. (zz_m.t = "req" => (zz_m.fr = 0 /\ zz_m.x = 0 /\
                            ((zz_m.to = hp[zz_m.r][zz_m.g] /\ zz_m.pe = hd[zz_m.r][zz_m.g]) \/ (zz_m.to = hd[zz_m.r][zz_m.g] /\ zz_m.pe = hp[zz_m.r][zz_m.g]))))'
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(10) DEF Arrive, CqeHw, DInst, Gens, Inst, K1, K12, Msg, NL, PInst, Rq, T_gen, T_hd, T_hp, Sizes, Location, Design
<2>6. (zz_m.t = "dinfo" => (Mode = "push" /\ zz_m.fr = hd[zz_m.r][zz_m.g] /\ zz_m.to = hp[zz_m.r][zz_m.g]
                              /\ (zz_m.x # 0 => (zz_m.x < nx /\ xr[zz_m.x] = zz_m.r /\ xg[zz_m.x] = zz_m.g /\ xdst[zz_m.x] = zz_m.pg))))'
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(10) DEF Arrive, CqeHw, DInst, Gens, Inst, K1, K12, Msg, NL, PInst, Rq, T_gen, T_hd, T_hp, Sizes, Location, Design
<2>7. (zz_m.t = "sinfo" => (Mode = "pull" /\ zz_m.x < nx /\ xr[zz_m.x] = zz_m.r /\ xg[zz_m.x] = zz_m.g /\ xsrc[zz_m.x] = zz_m.pg /\ zz_m.pe = xlt[zz_m.x]
                              /\ zz_m.fr = hp[zz_m.r][zz_m.g] /\ zz_m.to = hd[zz_m.r][zz_m.g]))'
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(10) DEF Arrive, CqeHw, DInst, Gens, Inst, K1, K12, Msg, NL, PInst, Rq, T_gen, T_hd, T_hp, Sizes, Location, Design
<2>8. (zz_m.t = "notice" => (Mode = "push" /\ zz_m.x < nx /\ xr[zz_m.x] = zz_m.r /\ xg[zz_m.x] = zz_m.g /\ zz_m.pe = 1 /\ zz_m.pg = xlt[zz_m.x]
                               /\ iv[zz_m.x] = "cqe" /\ hw[zz_m.x] \in CqeHw(zz_m.x) /\ zz_m.ok = hok[zz_m.x]))'
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(10) DEF Arrive, CqeHw, DInst, Gens, Inst, K1, K12, Msg, NL, PInst, Rq, T_gen, T_hd, T_hp, Sizes, Location, Design
<2>9. (zz_m.t = "nopost" => (Mode = "push" /\ zz_m.x < nx /\ xr[zz_m.x] = zz_m.r /\ xg[zz_m.x] = zz_m.g /\ iv[zz_m.x] = "nopost"))'
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(10) DEF Arrive, CqeHw, DInst, Gens, Inst, K1, K12, Msg, NL, PInst, Rq, T_gen, T_hd, T_hp, Sizes, Location, Design
<2>10. (zz_m.t = "revoke" => (Mode = "push" /\ zz_m.x < nx /\ xr[zz_m.x] = zz_m.r /\ xg[zz_m.x] = zz_m.g))'
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(10) DEF Arrive, CqeHw, DInst, Gens, Inst, K1, K12, Msg, NL, PInst, Rq, T_gen, T_hd, T_hp, Sizes, Location, Design
<2>11. (zz_m.t = "relsrc" => (Mode = "pull" /\ zz_m.x < nx /\ xr[zz_m.x] = zz_m.r /\ xg[zz_m.x] = zz_m.g
                               /\ ((iv[zz_m.x] = "cqe" /\ hw[zz_m.x] = "stop" /\ zz_m.ok = hok[zz_m.x]) \/ (iv[zz_m.x] = "nopost" /\ ~zz_m.ok))))'
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(10) DEF Arrive, CqeHw, DInst, Gens, Inst, K1, K12, Msg, NL, PInst, Rq, T_gen, T_hd, T_hp, Sizes, Location, Design
<2>12. (zz_m.t = "reply" => (zz_m.fr = hd[zz_m.r][zz_m.g] /\ drep[zz_m.r][zz_m.g] = 1 /\ (zz_m.ok => dsucc[zz_m.r][zz_m.g])))'
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(10) DEF Arrive, CqeHw, DInst, Gens, Inst, K1, K12, Msg, NL, PInst, Rq, T_gen, T_hd, T_hp, Sizes, Location, Design
<2>13. QED
  BY SMTT(10), <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, <2>12, Sizes, Location, Design DEF K12, Sizes, Location, Design
\* T2M-END R2M0007_PP_PdCell_Arrive_K12

\* T2M-SCOPE R2M0008_PP_PdCell_Arrive_K13

<1>AL6I9nRu.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
  PROVE K1'
  BY ONLY <1>AL6I9nRu, Sizes, Location, Design, <1>yKx7sy, V21_Inv_K1 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Mk4mMVIeM.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
  PROVE K12'
  BY ONLY <1>Mk4mMVIeM, Sizes, Location, Design, <1>QeazWHz, V21_Inv_K12 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>tpP.        
 K11 /\ UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>> => K11'
 BY IsaT(10), Sizes, Location, Design DEF K11, Sizes, Location, Design
\* T2M-END R2M0337_PdPF_K11


<1>ahB.        
 K10 /\ UNCHANGED <<hok, hw, nx, pgn, ph, pr, pst, ptl, rg, xdst, xg, xlt, xr>> => K10'
 BY IsaT(10), Sizes, Location, Design DEF K10, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0336_PdPF_K10

\* T2M-SCOPE R2M0339_PdPF_K16

<1>Dv.        
 K9 /\ UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>> => K9'
 BY IsaT(10), Sizes, Location, Design DEF Active, K9, Sizes, Location, Design
\* T2M-END R2M0335_PdPF_K9


<1>hRmi8h2dwdvAZN.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, hok, hw, iv, kpin, krs, led, nfail, nx, pgn, ph, plt, pr, pst, ptl, pvis, rg, rhit, rpg, rx, sdata, sfly, skey, sled, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>hRmi8h2dwdvAZN, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF Arrive, ghV, instV, kV, pgV, recV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t4U4j0Z2r.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE K9'
<2> USE ONLY <1>t4U4j0Z2r, Sizes, Location, Design
<2>1. K9
 BY V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>>
 BY <1>hRmi8h2dwdvAZN, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Dv, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Oj5mruDa3h.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE K10'
<2> USE ONLY <1>Oj5mruDa3h, Sizes, Location, Design
<2>1. K10
 BY V21_Inv_K10, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, nx, pgn, ph, pr, pst, ptl, rg, xdst, xg, xlt, xr>>
 BY <1>hRmi8h2dwdvAZN, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ahB, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CJ7Ei3bYPU.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE K11'
<2> USE ONLY <1>CJ7Ei3bYPU, Sizes, Location, Design
<2>1. K11
 BY V21_Inv_K11, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>>
 BY <1>hRmi8h2dwdvAZN, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>tpP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H0Dre0I9dt5V.        
 ASSUME B2, SFollow
 PROVE RO_E_rpgS
 BY ONLY <1>H0Dre0I9dt5V, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_rpgS, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m0crpwxTDdjmI.        
 ASSUME B2, SFollow
 PROVE RO_E_xsrcS
 BY ONLY <1>m0crpwxTDdjmI, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_xsrcS, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ifwDg0IoVKTvz.        
 ASSUME B2, SFollow
 PROVE RO_E_xsrcP
 BY ONLY <1>ifwDg0IoVKTvz, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_xsrcP, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oVMEMsT8gqQqbk.        
 ASSUME B2, SFollow
 PROVE RO_E_sentry
 BY ONLY <1>oVMEMsT8gqQqbk, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_sentry, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lIuyiSzJ58zq2.        
 ASSUME B2, SFollow
 PROVE RO_E_squar
 BY ONLY <1>lIuyiSzJ58zq2, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_squar, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kcdhaxe1yPn5.        
 ASSUME B2, SFollow
 PROVE RO_E_smap
 BY ONLY <1>kcdhaxe1yPn5, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_smap, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FuwCbPxDgseJUUg.        
 ASSUME B2, SFollow
 PROVE RO_E_schoice
 BY ONLY <1>FuwCbPxDgseJUUg, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_schoice, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ugzpmKUcZ3Dcdb.        
 ASSUME B2, SFollow
 PROVE RO_E_sprefc
 BY ONLY <1>ugzpmKUcZ3Dcdb, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_sprefc, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pDDs2iPJ6v1.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>pDDs2iPJ6v1, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eav3Mlg8.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~RO_Posted(x)
 BY ONLY <1>eav3Mlg8, Sizes, Location, Design, SMTT(10) DEF RO_Posted, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J0yx6oHL5UyrV.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
<2> USE ONLY <1>J0yx6oHL5UyrV, Sizes, Location, Design
<2>1. STypeOK BY V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY ONLY <1>J0yx6oHL5UyrV, <2>2, SMTT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RO_E_smap /\ RO_E_schoice /\ RO_E_xsrcS /\ RO_E_xsrcP /\ (\A x \in Xids : ~RO_Posted(x))
 BY <2>3, <1>kcdhaxe1yPn5, <1>FuwCbPxDgseJUUg, <1>m0crpwxTDdjmI, <1>ifwDg0IoVKTvz, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED rg
 BY <1>J0yx6oHL5UyrV, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. /\ smap \in [PInst -> [Rq -> {0} \cup SPages]]
       /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>J0yx6oHL5UyrV, V22_T_schoice, V22_T_smap, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

 <3>4. /\ smap' = [i \in PInst |-> [r \in Rq |-> smap[i][r]]]
       /\ schoice' = [i \in PInst |-> [r \in Rq |-> schoice[i][r]]]
       /\ xsrcS' = [x \in Xids |-> xsrcS[x]] /\ xsrcP' = [x \in Xids |-> xsrcP[x]]
 BY ONLY <3>1, <3>2, SMTT(20), Sizes, Location, Design DEF RO_E_smap, RO_E_schoice, RO_E_xsrcS, RO_E_xsrcP, Sizes, Location, Design
 <3>5. QED BY ONLY <3>3, <3>4, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SvtT5da.        
 ASSUME PinInv, B2
 PROVE /\ spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
       /\ rpgS \subseteq PInst \X Rq \X Gens \X SPages
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
       /\ sentry \subseteq Xids /\ squar \subseteq Xids \X SPages
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY <1>SvtT5da, V22_T_rpgS, V22_T_sentry, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>L8DIG3nRD9Lv3.        
 IsFiniteSet(PInst) /\ IsFiniteSet(Rq) /\ IsFiniteSet(Gens) /\ IsFiniteSet(Xids) /\ IsFiniteSet(SPages)
 BY Sizes, FS_Interval, SMTT(10), Location, Design DEF PInst, Rq, Gens, Xids, SPages, Sizes, Location, Design


<1>ePMf4RNB21H.        
 IsFiniteSet(PInst \X Rq \X Gens \X SPages) /\ IsFiniteSet(Xids \X SPages)
<2>1. IsFiniteSet((PInst \X Rq) \X (Gens \X SPages)) /\ IsFiniteSet(Xids \X SPages)
 BY <1>L8DIG3nRD9Lv3, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. {RO_Flat(e) : e \in (PInst \X Rq) \X (Gens \X SPages)} = PInst \X Rq \X Gens \X SPages
 <3>1. ASSUME NEW e \in (PInst \X Rq) \X (Gens \X SPages)
        PROVE RO_Flat(e) \in PInst \X Rq \X Gens \X SPages
 BY SMTT(10), Sizes, Location, Design DEF RO_Flat, Sizes, Location, Design
 <3>2. ASSUME NEW e \in PInst \X Rq \X Gens \X SPages
        PROVE e \in {RO_Flat(t) : t \in (PInst \X Rq) \X (Gens \X SPages)}
  <4>1. <<<<e[1],e[2]>>,<<e[3],e[4]>>>> \in (PInst \X Rq) \X (Gens \X SPages)
   BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. RO_Flat(<<<<e[1],e[2]>>,<<e[3],e[4]>>>>)=e
   BY SMTT(10), Sizes, Location, Design DEF RO_Flat, Sizes, Location, Design
  <4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet({RO_Flat(e) : e \in (PInst \X Rq) \X (Gens \X SPages)})
 BY <2>1, FS_Image, IsaT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>l9BskpKB8.        
 ASSUME NEW U, IsFiniteSet(U), NEW V \in SUBSET U, NEW P(_)
 PROVE Cardinality({x \in V : P(x)}) \in Nat
<2> USE ONLY <1>l9BskpKB8, Sizes, Location, Design
<2>1. {x \in V : P(x)} \subseteq U BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet({x \in V : P(x)}) BY <2>1, FS_Subset, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, FS_CardinalityType, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Hl2eKc2VBkR40pk.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc
 PROVE /\ rpgS' \subseteq PInst \X Rq \X Gens \X SPages
       /\ sentry' \subseteq Xids
       /\ squar' \subseteq Xids \X SPages
<2> USE ONLY <1>Hl2eKc2VBkR40pk, Sizes, Location, Design
<2>1. RO_E_rpgS /\ RO_E_sentry /\ RO_E_squar /\ (\A x \in Xids : ~RO_Posted(x))
 BY <1>H0Dre0I9dt5V, <1>oVMEMsT8gqQqbk, <1>lIuyiSzJ58zq2, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpgS \subseteq PInst \X Rq \X Gens \X SPages /\ sentry \subseteq Xids
       /\ squar \subseteq Xids \X SPages /\ xsrcS \in [Xids -> SUBSET SPages]
 BY <1>SvtT5da, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rpgS' \subseteq PInst \X Rq \X Gens \X SPages
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_rpgS, Sizes, Location, Design
<2>4. sentry' \subseteq Xids
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_sentry, Sizes, Location, Design
<2>5. squar' \subseteq Xids \X SPages
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_squar, Sizes, Location, Design
<2>6. QED BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>x8eiSet.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc, NEW p \in SPages
 PROVE /\ SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
       /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
       /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
<2> USE ONLY <1>x8eiSet, Sizes, Location, Design
<2>1. rpgS \subseteq PInst \X Rq \X Gens \X SPages /\ sentry \subseteq Xids /\ squar \subseteq Xids \X SPages
 BY <1>SvtT5da, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpgS' \subseteq PInst \X Rq \X Gens \X SPages /\ sentry' \subseteq Xids /\ squar' \subseteq Xids \X SPages
 BY <1>Hl2eKc2VBkR40pk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ePMf4RNB21H, <1>L8DIG3nRD9Lv3, <1>l9BskpKB8, IsaT(20), Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BhJJoZwTfyo0ME.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>BhJJoZwTfyo0ME, Sizes, Location, Design
<2>1. CASE ~B2
 BY <2>1, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>2. CASE B2
 <3>1. PrefcMatchesHolders /\ RO_E_sprefc BY <2>2, <1>pDDs2iPJ6v1, <1>ugzpmKUcZ3Dcdb, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW p \in SPages
        PROVE sprefc'[p]=SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
  <4>1. SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
       /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
       /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
   BY <2>2, <1>x8eiSet, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. QED BY <2>2, <3>1, <4>1, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, RO_E_sprefc, Sizes, Location, Design
 <3>3. QED BY <3>2, <2>2, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2183_PdROFinite


<1>cg3ikpihvVLpb3qO.        
 ASSUME PinInv, NEW x \in Xids, iv[x]="reg"
 PROVE xsrc[x] \in Pages /\ pst[xsrc[x]] # "quar"
<2> USE ONLY <1>cg3ikpihvVLpb3qO, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ QuarNoReg
 BY V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>cg3ikpihvVLpb3qO, V22_T_nx, SMTT(5)

<2>3. x<nx /\ xk[x]="wr" BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, K3, Xids, Sizes, Location, Design
<2>4. xsrc[x] \in Pages /\ Loc(xsrc[x])=xp[x] /\ xp[x] \in PInst
 BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K1, K2, InitPage, InitInst, Sizes, Location, Design
<2>5. x \in led[xsrc[x]] BY <2>1, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF K4, InitPage, Sizes, Location, Design
<2>6. QED BY <2>1, <2>4, <2>5, Sizes, SMTT(10), Location, Design DEF QuarNoReg, IsP, PInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FVK4MYGoOHs3gti.        
 ASSUME PinInv, UNCHANGED xsrc,
        \A x \in Xids : iv'[x]="reg" => iv[x]="reg",
        \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
 PROVE \A x \in Xids : iv'[x]="reg" => ~RO_Quarantine(x)
 BY ONLY <1>FVK4MYGoOHs3gti, Sizes, Location, Design, <1>cg3ikpihvVLpb3qO, SMTT(10) DEF RO_Quarantine, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dhSsfJA1lMG4.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,xk>>,
        \A x \in Xids : iv'[x]="reg" => iv[x]="reg",
        \A x \in Xids : iv'[x]="reg" => ~RO_Quarantine(x)
 PROVE SI7'
<2> USE ONLY <1>dhSsfJA1lMG4, Sizes, Location, Design
<2>1. SI7 /\ K3 BY V21_Inv_K3, V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF SI7, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RO_E_sentry /\ (\A x \in Xids : ~RO_Posted(x)) BY <2>3, <1>oVMEMsT8gqQqbk, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF SI7, K3, RO_E_sentry, RO_Close, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>f2Leyy7poQD1fIQ.        
 ASSUME B2, SFollow, NEW x \in Xids, RO_Quarantine(x)
 PROVE \A p \in xsrcS[x] : <<x,p>> \in squar'
<2> USE ONLY <1>f2Leyy7poQD1fIQ, Sizes, Location, Design
<2>1. RO_E_squar BY <1>lIuyiSzJ58zq2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x \in {y \in Xids : RO_Quarantine(y)} BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. {<<x,p>> : p \in xsrcS[x]} \in {{<<y,p>> : p \in xsrcS[y]} : y \in {y \in Xids : RO_Quarantine(y)}}
 BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in xsrcS[x]
       PROVE <<x,p>> \in squar'
 <3>1. <<x,p>> \in {<<x,q>> : q \in xsrcS[x]} BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>3, <3>1, Design, ZenonT(10), Sizes, Location DEF RO_E_squar, Sizes, Location, Design
<2>5. QED BY <2>4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bneczW3Qjs8bDyTc.        
 ASSUME B2, SFollow, NEW x \in Xids, ~RO_Close(x),
        x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
 PROVE x \in sentry' \/ (\A p \in xsrcS[x] : <<x,p>> \in squar')
<2> USE ONLY <1>bneczW3Qjs8bDyTc, Sizes, Location, Design
<2>1. RO_E_sentry /\ RO_E_squar BY <1>oVMEMsT8gqQqbk, <1>lIuyiSzJ58zq2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE x \in sentry /\ ~RO_Quarantine(x)
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_sentry, Sizes, Location, Design
<2>3. CASE RO_Quarantine(x)
 BY <2>3, <1>f2Leyy7poQD1fIQ, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. CASE x \notin sentry
 BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF RO_E_squar, Sizes, Location, Design
<2>5. QED BY <2>2, <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yYTbap2jtpor.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,xk,xsrcS>>,
        \A x \in Xids : xst'[x]="posted" => xst[x]="posted"
 PROVE SI8'
<2> USE ONLY <1>yYTbap2jtpor, Sizes, Location, Design
<2>1. SI8 BY V21_Inv_SI8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>3. CASE B2
 <3>1. ASSUME NEW x \in Xids, xk'[x]="rd", xst'[x]="posted"
        PROVE x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
  <4>1. xk[x]="rd" /\ xst[x]="posted" BY <3>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
  BY <2>1, <2>3, <4>1, ZenonT(10), Sizes, Location, Design DEF SI8, Sizes, Location, Design
  <4>3. ~RO_Close(x) BY <3>1, <4>1, SMTT(10), Sizes, Location, Design DEF RO_Close, Sizes, Location, Design
  <4>4. QED BY <2>3, <4>2, <4>3, <1>bneczW3Qjs8bDyTc, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>3, <3>1, Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2185_PdROSharedShape

\* T2M-SCOPE R2M2186_PdRORefSafety
\* T2M-BODY R2M2186_PdRORefSafety
\* T2M-LOCAL-VISIBILITY

<1>dQ3bBrrBxVF8Ri4bWy.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, Arrive(r,i,j)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>dQ3bBrrBxVF8Ri4bWy, Sizes, Location, Design, Design, ZenonT(10) DEF Arrive, ghV, instV, kV, pgV, recV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>n0KWWBc0bBqSVkDvtaDz.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>n0KWWBc0bBqSVkDvtaDz, Sizes, Location, Design, <1>dQ3bBrrBxVF8Ri4bWy, <1>J0yx6oHL5UyrV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>i8bM6Cq7hx5qzWcx.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
 PROVE \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
<2> USE ONLY <1>i8bM6Cq7hx5qzWcx, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>i8bM6Cq7hx5qzWcx, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF Arrive, ghV, instV, kV, pgV, recV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T2iphChpdB7nentx.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
 PROVE \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
<2> USE ONLY <1>T2iphChpdB7nentx, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>T2iphChpdB7nentx, V22_T_iv, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF Arrive, ghV, instV, kV, pgV, recV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PhcAi0U3oWUfIaSoRwB.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
 PROVE \A x \in Xids : xst'[x]="posted" => xst[x]="posted"
<2> USE ONLY <1>PhcAi0U3oWUfIaSoRwB, Sizes, Location, Design
<2>1. xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>PhcAi0U3oWUfIaSoRwB, V22_T_xst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF Arrive, ghV, instV, kV, pgV, recV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ptj6p2rA80cAAa5mAxsbfEJrZD.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>Ptj6p2rA80cAAa5mAxsbfEJrZD, Sizes, Location, Design, <1>dQ3bBrrBxVF8Ri4bWy, <1>BhJJoZwTfyo0ME DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HKWPu0lPmU.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE SI7'
 BY ONLY <1>HKWPu0lPmU, Sizes, Location, Design, <1>dQ3bBrrBxVF8Ri4bWy, <1>T2iphChpdB7nentx, <1>i8bM6Cq7hx5qzWcx, <1>FVK4MYGoOHs3gti, <1>dhSsfJA1lMG4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r3xUAtO0li.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE SI8'
 BY ONLY <1>r3xUAtO0li, Sizes, Location, Design, <1>dQ3bBrrBxVF8Ri4bWy, <1>n0KWWBc0bBqSVkDvtaDz, <1>PhcAi0U3oWUfIaSoRwB, <1>yYTbap2jtpor DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>QnToi322eWaRiePI0.        
  BaseSealOnlyLanded /\ UNCHANGED <<hw, pst, ptl, xdst>> => BaseSealOnlyLanded'
  BY SMTT(5), Sizes, Location, Design DEF InFl, NoWriteInto, BaseSealOnlyLanded, Writing, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xlEjS107o.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, Arrive(r,i,j)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, hok, hw, iv, kfly, kpin, krs, led, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rg, rhit, rpe, rpg, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>xlEjS107o, Sizes, Location, Design, ZenonT(5) DEF Arrive, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SPB4IlioOcjQaO1r26.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>SPB4IlioOcjQaO1r26, Sizes, Location, Design
<2>1. BaseSealOnlyLanded /\ UNCHANGED <<hw, pst, ptl, xdst>>
  BY <1>d9xjhNZcw, SMTT(5), <1>xlEjS107o, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>QnToi322eWaRiePI0, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>e6tLaQ0WCNPlnIs2Kv6tc.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE SealOnlyLanded'
<2> USE ONLY <1>e6tLaQ0WCNPlnIs2Kv6tc, Sizes, Location, Design
<2>1. BaseSealOnlyLanded' BY <1>SPB4IlioOcjQaO1r26, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>e6tLaQ0WCNPlnIs2Kv6tc, <1>dQ3bBrrBxVF8Ri4bWy, V22_T_xdst, SMTT(5)

<2>3. SharedImmutable' BY <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, Location, Design DEF SealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M2649_PdROSafety_Arrive_SealOnlyLanded

\* T2M-SCOPE R2M2650_PdROSafety_Arrive_SendOwnLanded

<1> QED BY <1>Ptj6p2rA80cAAa5mAxsbfEJrZD, <1>r3xUAtO0li, <1>HKWPu0lPmU, <1>e6tLaQ0WCNPlnIs2Kv6tc, <1>AL6I9nRu, <1>Mk4mMVIeM, <1>t4U4j0Z2r, <1>Oj5mruDa3h, <1>CJ7Ei3bYPU, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_Arrive_02_02 SHA b3cee4832018071f96c94c7f6cbf159981696d4a31b49f0d9b2e19541a6f98b5
USE DEF P_PagePoolsDisjoint, V21_Inv_EntryQuarantineDisjoint, V21_Inv_K13, V21_Inv_K15, V21_Inv_K16, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_PrivateMapOwner, V22_SF_Choice, V22_SF_Map, V22_SF_Off, V22_SF_SourcePrivate, V22_SF_SourceShared
HIDE DEF Part_Arrive_02_01, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K9, V21_Inv_QuarNoReg, V21_Inv_SI7, V21_Inv_SI8, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_iv, V22_T_nx, V22_T_xdst, V22_T_xst
THEOREM Part_Arrive_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE (NoFreeUnderRead)' /\ (ReadOwnLanded)' /\ (P_SI3)' /\ (EntryQuarantineDisjoint)' /\ (K7)' /\ (PrivateMapOwner)' /\ (K2)' /\ (K6)' /\ (K8)' /\ (K13)' /\ (K3)' /\ (K4)' /\ (K5)' /\ (K15)' /\ (K16)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE PicQNkhs(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           UNRhKDF(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           x4aVJ652V(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           pONKJ3(x) == IF x4aVJ652V(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           flYh_aDX(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           zp_PIk4svxWLB(x) == x \in sentry /\ ~flYh_aDX(x) /\
            ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           jpr2xpt8(p) == spst[p]="priv" /\ sown[p] \in Rq /\ (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           LVIWHG(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           gaiU_p1(p) == (jpr2xpt8(p) \/ spst[p] \in {"drain","dup"}) /\ ~LVIWHG(p) /\ sready[p] /\ ~(\E x \in sentry' : p \in xsrcP'[x])


           n1a4h1qj(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
            spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           Zxt3uAWx0s == xsrcS'=[x \in Xids |-> IF x4aVJ652V(x) THEN (IF pONKJ3(x) \in SPages /\ spst[pONKJ3(x)]="shared" THEN {pONKJ3(x)} ELSE {}) ELSE xsrcS[x]]


           x3u8USZ8BP == xsrcP'=[x \in Xids |-> IF x4aVJ652V(x) THEN (IF pONKJ3(x) \in SPages /\ spst[pONKJ3(x)]="priv" THEN {pONKJ3(x)} ELSE {}) ELSE xsrcP[x]]


           XiXzxLeogqQ == sentry'=(sentry \cup {x \in Xids : x4aVJ652V(x)}) \ {x \in Xids : flYh_aDX(x) \/ zp_PIk4svxWLB(x)}


           cube8JL9My == squar'=squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : zp_PIk4svxWLB(x)}})


           gsRtJP8qi == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           PfTvb9KsRvdD == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           Lysb3rxXC == spst'=[p \in SPages |-> IF \E x \in Xids : zp_PIk4svxWLB(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF gaiU_p1(p) THEN "free" ELSE IF jpr2xpt8(p) THEN "drain" ELSE spst[p]]


           T_gen == gen \in [Rq -> 0..MG]


           T_rt == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           T_rp == rp \in [Rq -> {0} \cup Inst]


           T_rd == rd \in [Rq -> {0} \cup Inst]


           T_hp == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           T_hd == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           T_alive == alive \in [Inst -> BOOLEAN]


           T_nfail == nfail \in 0..MaxFail


           T_torn == torn \in [Inst -> SUBSET Inst]


           T_kpin == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           T_kfly == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           T_krs == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           T_ph == ph \in [Inst -> [Rq -> PhSet]]


           T_rg == rg \in [Inst -> [Rq -> 0..MG]]


           T_rpg == rpg \in [Inst -> [Rq -> 0..NP]]


           T_rpe == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           T_rx == rx \in [Inst -> [Rq -> 0..MX]]


           T_rhit == rhit \in [Inst -> [Rq -> BOOLEAN]]


           T_pst == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           T_pr == pr \in [Pages -> 0..NR]


           T_pgn == pgn \in [Pages -> 0..MG]


           T_plt == plt \in [Pages -> 0..PS]


           T_ptl == ptl \in [Pages -> -1..PS]


           T_pvis == pvis \in [Pages -> BOOLEAN]


           T_led == led \in [Pages -> SUBSET Xids]


           T_sfly == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           T_sled == sled \in [Pages -> SUBSET (Rq \X Gens)]


           T_prefc == prefc \in [Pages -> 0..NR]


           T_pqp == pqp \in [Pages -> {0} \cup Inst]


           T_xr == xr \in [Xids -> 0..NR]


           T_xg == xg \in [Xids -> 0..MG]


           T_xk == xk \in [Xids -> {"none", "wr", "rd"}]


           T_xp == xp \in [Xids -> {0} \cup Inst]


           T_xd == xd \in [Xids -> {0} \cup Inst]


           T_xsrc == xsrc \in [Xids -> 0..NP]


           T_xdst == xdst \in [Xids -> 0..NP]


           T_xnt == xnt \in [Xids -> 0..PS]


           T_hw == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           T_hok == hok \in [Xids -> BOOLEAN]


           T_iv == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           T_xst == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           T_xlt == xlt \in [Xids -> 0..PS]


           T_nx == nx \in 1..(MX + 1)


           T_net == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           T_drep == drep \in [Rq -> [Gens -> 0..2]]


           T_crep == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           T_dsucc == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           T_gbad == gbad \in BOOLEAN


           Types == T_gen /\ T_rt /\ T_rp /\ T_rd /\ T_hp /\ T_hd /\ T_alive /\ T_nfail /\ T_torn /\ T_kpin /\ T_kfly /\ T_krs /\ T_ph /\ T_rg /\ T_rpg /\ T_rpe /\ T_rx /\ T_rhit /\ T_pst /\ T_pr /\ T_pgn /\ T_plt /\ T_ptl /\ T_pvis /\ T_led /\ T_sfly /\ T_sled /\ T_prefc /\ T_pqp /\ T_xr /\ T_xg /\ T_xk /\ T_xp /\ T_xd /\ T_xsrc /\ T_xdst /\ T_xnt /\ T_hw /\ T_hok /\ T_iv /\ T_xst /\ T_xlt /\ T_nx /\ T_net /\ T_drep /\ T_crep /\ T_dsucc /\ T_gbad

           \* T2M-LOCAL-VISIBILITY

           K7Point(p) ==
                   /\ ptl[p] >= 0
                   /\ pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {}
                                          /\ prefc[p] = 0 /\ pqp[p] = 0)
                   /\ pst[p] \in {"priv", "drain", "quar"} => (pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]])
                   /\ pst[p] = "quar" => pqp[p] \in Inst
                   /\ pst[p] # "quar" => pqp[p] = 0
                   /\ pst[p] # "shared" => prefc[p] = 0
                   /\ pst[p] = "shared" => (IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p))
                   /\ pst[p] = "drain" => (led[p] # {} \/ sled[p] # {} \/ KPinned(p))   
                   /\ pst[p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(p), r, p)
                   /\ pst[p] = "priv" => \/ (Maps(Loc(p), pr[p], p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]])
                                         \/ GrownP(p)


           RO_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           RO_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           RO_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           RO_Src(x) == IF RO_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           RO_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           RO_Quarantine(x) == x \in sentry /\ ~RO_Close(x) /\
            ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           RO_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\ (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           RO_Pin(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           RO_Drop(p) == (RO_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RO_Pin(p) /\ sready[p] /\ ~(\E x \in sentry' : p \in xsrcP'[x])


           RO_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
            spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           RO_PinGrows == /\ \A p \in SPages : SPin(p) => RO_Pin(p)
                          /\ \A h \in rpgS : SHPin(h) => RO_HPin(h)


           RO_E_rpgS == rpgS'={h \in rpgS : RO_HLive(h) \/ (RO_HPin(h) /\ Mut # "unrefBeforeKDone")}


           RO_E_spst == spst'=[p \in SPages |-> IF \E x \in Xids : RO_Quarantine(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF RO_Drop(p) THEN "free" ELSE IF RO_Ended(p) THEN "drain" ELSE spst[p]]


           RO_E_dpreOK == dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop" THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") => (IF hw[x]="issued" THEN xprefixOK[x] ELSE RO_Valid(x)) ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]


           RO_SharedFieldsFrame == UNCHANGED <<spst,sown,sgen,sdata,swrite,skey>>


           Ltilk == gen \in [Rq -> 0..MG]


           ckVW == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           bXD3 == rp \in [Rq -> {0} \cup Inst]


           XAoD == rd \in [Rq -> {0} \cup Inst]


           ZzYU == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           v7av == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           Zwf5Kak == alive \in [Inst -> BOOLEAN]


           UTxM0oD == nfail \in 0..MaxFail


           Btadh0 == torn \in [Inst -> SUBSET Inst]


           hgjUtY == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           DgHrMJ == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           UDzxF == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           NN85 == ph \in [Inst -> [Rq -> PhSet]]


           FlLc == rg \in [Inst -> [Rq -> 0..MG]]


           mCp6f == rpg \in [Inst -> [Rq -> 0..NP]]


           EfDhA == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           TO_H == rx \in [Inst -> [Rq -> 0..MX]]


           OFH6nV == rhit \in [Inst -> [Rq -> BOOLEAN]]


           nU_pl == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           KRyh == pr \in [Pages -> 0..NR]


           SWs37 == pgn \in [Pages -> 0..MG]


           Q73Wr == plt \in [Pages -> 0..PS]


           cDvpy == ptl \in [Pages -> -1..PS]


           aHUmFg == pvis \in [Pages -> BOOLEAN]


           m0XQV == led \in [Pages -> SUBSET Xids]


           YAnOjz == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           owHnyB == sled \in [Pages -> SUBSET (Rq \X Gens)]


           Gpa5dVU == prefc \in [Pages -> 0..NR]


           f9onk == pqp \in [Pages -> {0} \cup Inst]


           fwbJ == xr \in [Xids -> 0..NR]


           mnFW == xg \in [Xids -> 0..MG]


           nOWk == xk \in [Xids -> {"none", "wr", "rd"}]


           Ha9G == xp \in [Xids -> {0} \cup Inst]


           f5DU == xd \in [Xids -> {0} \cup Inst]


           KZInRS == xsrc \in [Xids -> 0..NP]


           hq2umu == xdst \in [Xids -> 0..NP]


           ROI9_ == xnt \in [Xids -> 0..PS]


           M7cq == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           u1j8N == hok \in [Xids -> BOOLEAN]


           ECDy == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           q4kPy == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           doDAh == xlt \in [Xids -> 0..PS]


           YN04 == nx \in 1..(MX + 1)


           kvUux == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           WsZW22 == drep \in [Rq -> [Gens -> 0..2]]


           d654kx == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           jl8hSJt == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           XEsGoy == gbad \in BOOLEAN


           qryMJ == Ltilk /\ ckVW /\ bXD3 /\ XAoD /\ ZzYU /\ v7av /\ Zwf5Kak /\ UTxM0oD /\ Btadh0 /\ hgjUtY /\ DgHrMJ /\ UDzxF /\ NN85 /\ FlLc /\ mCp6f /\ EfDhA /\ TO_H /\ OFH6nV /\ nU_pl /\ KRyh /\ SWs37 /\ Q73Wr /\ cDvpy /\ aHUmFg /\ m0XQV /\ YAnOjz /\ owHnyB /\ Gpa5dVU /\ f9onk /\ fwbJ /\ mnFW /\ nOWk /\ Ha9G /\ f5DU /\ KZInRS /\ hq2umu /\ ROI9_ /\ M7cq /\ u1j8N /\ ECDy /\ q4kPy /\ doDAh /\ YN04 /\ kvUux /\ WsZW22 /\ d654kx /\ jl8hSJt /\ XEsGoy

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Zxt3uAWx0s, x3u8USZ8BP, XiXzxLeogqQ, cube8JL9My, gsRtJP8qi, PfTvb9KsRvdD, Lysb3rxXC, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, K7Point, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_spst, RO_E_dpreOK, RO_SharedFieldsFrame, Ltilk, ckVW, bXD3, XAoD, ZzYU, v7av, Zwf5Kak, UTxM0oD, Btadh0, hgjUtY, DgHrMJ, UDzxF, NN85, FlLc, mCp6f, EfDhA, TO_H, OFH6nV, nU_pl, KRyh, SWs37, Q73Wr, cDvpy, aHUmFg, m0XQV, YAnOjz, owHnyB, Gpa5dVU, f9onk, fwbJ, mnFW, nOWk, Ha9G, f5DU, KZInRS, hq2umu, ROI9_, M7cq, u1j8N, ECDy, q4kPy, doDAh, YN04, kvUux, WsZW22, d654kx, jl8hSJt, XEsGoy, qryMJ

<1>cwygPFvwHoczY.        
 ASSUME B2, SFollow
 PROVE Zxt3uAWx0s
 BY ONLY <1>cwygPFvwHoczY, Sizes, Location, Design, ZenonT(10) DEF SFollow, Zxt3uAWx0s, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>Gd2HPOF0RVYJt.        
 ASSUME B2, SFollow
 PROVE x3u8USZ8BP
 BY ONLY <1>Gd2HPOF0RVYJt, Sizes, Location, Design, ZenonT(10) DEF SFollow, x3u8USZ8BP, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>HwTcZ0S4gasFui.        
 ASSUME B2, SFollow
 PROVE XiXzxLeogqQ
 BY ONLY <1>HwTcZ0S4gasFui, Sizes, Location, Design, ZenonT(10) DEF SFollow, XiXzxLeogqQ, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>TOIEvhKztkZU7.        
 ASSUME B2, SFollow
 PROVE cube8JL9My
 BY ONLY <1>TOIEvhKztkZU7, Sizes, Location, Design, ZenonT(10) DEF SFollow, cube8JL9My, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>oPciMlf6Iubx.        
 ASSUME B2, SFollow
 PROVE gsRtJP8qi
 BY ONLY <1>oPciMlf6Iubx, Sizes, Location, Design, ZenonT(10) DEF SFollow, gsRtJP8qi, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>AHYkU73mfqzQD5t.        
 ASSUME B2, SFollow
 PROVE PfTvb9KsRvdD
 BY ONLY <1>AHYkU73mfqzQD5t, Sizes, Location, Design, ZenonT(10) DEF SFollow, PfTvb9KsRvdD, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>uUDp3u4e5PqL.        
 ASSUME B2, SFollow
 PROVE Lysb3rxXC
 BY ONLY <1>uUDp3u4e5PqL, Sizes, Location, Design, ZenonT(10) DEF SFollow, Lysb3rxXC, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>cQRSNCkI9c6.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>cQRSNCkI9c6, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design


<1>rsuLN.         SFollow => UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design


<1>M20Oc0Xr.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~x4aVJ652V(x)
 BY ONLY <1>M20Oc0Xr, Sizes, Location, Design, SMTT(10) DEF x4aVJ652V, Pages, Sizes, Location, Design


<1>QPMjP2YgSfrqb.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
<2> HIDE DEF CoreTypeOK, STypeOK, SFollow, V22_FPosted, V22_FSX, V22_FPX, V22_FSrc
<2>off. CASE ~B2
 BY ONLY <1>QPMjP2YgSfrqb, <2>off, V22_SF_Off, SMTT(5) DEF sV
<2>on. CASE B2
 <3>rg. \A i \in PInst, r \in Rq : rg'[i][r]=rg[i][r]
  BY ONLY <1>QPMjP2YgSfrqb, SMTT(5)
 <3>smapType. smap \in [PInst -> [Rq -> {0} \cup SPages]]
  BY ONLY <1>QPMjP2YgSfrqb, V22_T_smap, SMTT(5)
 <3>smapEffect. smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]
  BY ONLY <1>QPMjP2YgSfrqb, <2>on, V22_SF_Map, SMTT(5)
 <3>smapFrame. UNCHANGED smap
  BY ONLY <3>smapType, <3>smapEffect, <3>rg, SMTT(5)
 <3>schoiceType. schoice \in [PInst -> [Rq -> BOOLEAN]]
  BY ONLY <1>QPMjP2YgSfrqb, V22_T_schoice, SMTT(5)
 <3>schoiceEffect. schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]
  BY ONLY <1>QPMjP2YgSfrqb, <2>on, V22_SF_Choice, SMTT(5)
 <3>schoiceFrame. UNCHANGED schoice
  BY ONLY <3>schoiceType, <3>schoiceEffect, <3>rg, SMTT(5)
 <3>pageDomain. 0 \notin Pages
  BY ONLY Sizes, SMTT(5) DEF Sizes, Pages
 <3>noPosted. \A x \in Xids : ~V22_FPosted(x)
  BY ONLY <1>QPMjP2YgSfrqb, <3>pageDomain, SMTT(5) DEF V22_FPosted
 <3>xsrcSType. xsrcS \in [Xids -> SUBSET SPages]
  BY ONLY <1>QPMjP2YgSfrqb, V22_T_xsrcS, SMTT(5)
 <3>xsrcSEffect. xsrcS'=V22_FSX
  BY ONLY <1>QPMjP2YgSfrqb, <2>on, V22_SF_SourceShared, SMTT(5)
 <3>xsrcSFrame. UNCHANGED xsrcS
  BY ONLY <3>xsrcSType, <3>xsrcSEffect, <3>noPosted, SMTT(5) DEF V22_FSX
 <3>xsrcPType. xsrcP \in [Xids -> SUBSET SPages]
  BY ONLY <1>QPMjP2YgSfrqb, V22_T_xsrcP, SMTT(5)
 <3>xsrcPEffect. xsrcP'=V22_FPX
  BY ONLY <1>QPMjP2YgSfrqb, <2>on, V22_SF_SourcePrivate, SMTT(5)
 <3>xsrcPFrame. UNCHANGED xsrcP
  BY ONLY <3>xsrcPType, <3>xsrcPEffect, <3>noPosted, SMTT(5) DEF V22_FPX
 <3>qed. QED BY ONLY <3>smapFrame, <3>schoiceFrame, <3>xsrcSFrame, <3>xsrcPFrame, SMTT(5)
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

<1>vWo5OSv.        
 ASSUME PinInv, B2
 PROVE /\ spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
       /\ rpgS \subseteq PInst \X Rq \X Gens \X SPages
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
       /\ sentry \subseteq Xids /\ squar \subseteq Xids \X SPages
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY <1>vWo5OSv, V22_T_rpgS, V22_T_sentry, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

<1>Ehr2pMdg5uoVBObEEj2Ppij.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg,xsrc>>
 PROVE PrivateMapOwner'
<2> USE ONLY <1>Ehr2pMdg5uoVBObEEj2Ppij, Sizes, Location, Design
<2>1. PrivateMapOwner BY V21_Inv_PrivateMapOwner, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF PrivateMapOwner, Sizes, Location, Design
<2>3. CASE B2
 <3>1. UNCHANGED <<smap,sown,sgen>> BY <1>QPMjP2YgSfrqb, <1>rsuLN, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. Lysb3rxXC BY <2>3, <1>uUDp3u4e5PqL, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A p \in SPages : spst'[p]="priv" => spst[p]="priv"
 BY <3>2, SMTT(10), Sizes, Location, Design DEF Lysb3rxXC, Sizes, Location, Design
 <3>4. QED BY <2>3, <2>1, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF PrivateMapOwner, Active, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg,xsrc>>
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy, Sizes, Location, Design
<2>1. EntryQuarantineDisjoint BY V21_Inv_EntryQuarantineDisjoint, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
<2>3. CASE B2
 <3>1. XiXzxLeogqQ /\ cube8JL9My /\ (\A x \in Xids : ~x4aVJ652V(x))
 BY <2>3, <1>HwTcZ0S4gasFui, <1>TOIEvhKztkZU7, <1>M20Oc0Xr, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED xsrcS BY <1>QPMjP2YgSfrqb, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. sentry \subseteq Xids BY <2>3, <1>vWo5OSv, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. \A x \in sentry' : x \in sentry /\ ~zp_PIk4svxWLB(x)
 BY <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF XiXzxLeogqQ, Sizes, Location, Design
 <3>5. \A x \in sentry' : \A p \in xsrcS'[x] : <<x,p>> \notin squar'
 BY <2>1, <2>3, <3>1, <3>2, <3>3, <3>4, SMTT(20), Sizes, Location, Design DEF EntryQuarantineDisjoint, cube8JL9My, Sizes, Location, Design
 <3>6. QED BY <3>5, <2>3, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>KnHou4KAEhUjbQfJEO6wM9C.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE PrivateMapOwner'
<2> USE ONLY <1>KnHou4KAEhUjbQfJEO6wM9C, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF Arrive, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>Ehr2pMdg5uoVBObEEj2Ppij, Sizes, Location, Design DEF Sizes, Location, Design


<1>w3yXFu4jCqHkjWz6AX0Setkak9Ost9o.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>w3yXFu4jCqHkjWz6AX0Setkak9Ost9o, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF Arrive, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy, Sizes, Location, Design DEF Sizes, Location, Design


<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lfvXDhEF7.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, Arrive(r,i,j)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, hok, hw, iv, kfly, kpin, krs, led, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rg, rhit, rpe, rpg, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>lfvXDhEF7, Sizes, Location, Design, ZenonT(5) DEF Arrive, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M0004_PP_PdArriveFrames

\* T2M-SCOPE R2M0005_PP_PdArriveHistory
\* T2M-BODY R2M0005_PP_PdArriveHistory
\* T2M-LOCAL-VISIBILITY

<1>RWJt5w8z9iX.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE /\ \A u \in Rq : gen'[u] >= gen[u]
        /\ \A u \in Rq, g \in Gens : g <= gen[u] => (hp'[u][g] = hp[u][g] /\ hd'[u][g] = hd[u][g])
<2> USE ONLY <1>RWJt5w8z9iX, Sizes, Location, Design
<2>1. T_gen /\ T_hp /\ T_hd
  BY SMTT(5), <1>g4u1JVDPkX, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. gen[r] < MG /\ gen' = [gen EXCEPT ![r] = gen[r]+1]
      /\ hp' = [hp EXCEPT ![r][gen[r]+1] = i] /\ hd' = [hd EXCEPT ![r][gen[r]+1] = j]
  BY SMTT(5), Sizes, Location, Design DEF Arrive, Sizes, Location, Design
<2>3. \A u \in Rq : gen'[u] >= gen[u]
  BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF T_gen, Sizes, Location, Design
<2>4. \A u \in Rq, g \in Gens : g <= gen[u] => (hp'[u][g] = hp[u][g] /\ hd'[u][g] = hd[u][g])
  BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF T_gen, T_hp, T_hd, Gens, Sizes, Location, Design
<2>5. QED
  BY SMTT(5), <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0005_PP_PdArriveHistory

\* T2M-SCOPE R2M0006_PP_PdCell_Arrive_K1
\* T2M-BODY R2M0006_PP_PdCell_Arrive_K1
\* T2M-LOCAL-VISIBILITY

<1>PCz4L3c.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE K13'
<2> USE ONLY <1>PCz4L3c, Sizes, Location, Design
<2>1. K13 /\ K1 /\ T_gen
  BY SMTT(5), <1>g4u1JVDPkX, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K13, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, ph, rg>>
  BY SMTT(5), <1>lfvXDhEF7, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (\A u \in Rq : gen'[u] >= gen[u]) /\ (\A u \in Rq, g \in Gens : g <= gen[u] => (hp'[u][g] = hp[u][g] /\ hd'[u][g] = hd[u][g]))
  BY SMTT(5), <1>RWJt5w8z9iX, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, SMTT(5), Sizes, Location, Design DEF DInst, Gens, K1, K13, NL, PInst, Rq, T_gen, Sizes, Location, Design
\* T2M-END R2M0008_PP_PdCell_Arrive_K13

\* T2M-SCOPE R2M0009_PP_PdArriveGen

<1>orT5ccVhaJ.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE T_gen'
<2> USE ONLY <1>orT5ccVhaJ, Sizes, Location, Design
<2>1. T_gen
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. gen[r] < MG /\ gen' = [gen EXCEPT ![r] = gen[r]+1]
  BY SMTT(10), Sizes, Location, Design DEF Arrive, Sizes, Location, Design
<2>3. gen[r]+1 \in 0..MG
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF T_gen, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF T_gen, Sizes, Location, Design
\* T2M-END R2M0009_PP_PdArriveGen

\* T2M-SCOPE R2M0010_PP_PdCell_Arrive_K2
\* T2M-BODY R2M0010_PP_PdCell_Arrive_K2
\* T2M-LOCAL-VISIBILITY

<1>WzO6Zz.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE K2'
<2> USE ONLY <1>WzO6Zz, Sizes, Location, Design
<2>1. T_gen /\ K2
  BY SMTT(10), <1>g4u1JVDPkX, V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY SMTT(10), <1>lfvXDhEF7, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (\A u \in Rq : gen'[u] >= gen[u]) /\ (\A u \in Rq, g \in Gens : g <= gen[u] => (hp'[u][g] = hp[u][g] /\ hd'[u][g] = hd[u][g]))
  BY SMTT(10), <1>RWJt5w8z9iX, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. T_gen'
  BY <1>orT5ccVhaJ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF ExpInst, ExpPage, Gens, InitInst, InitPage, K2, T_gen, Sizes, Location, Design
\* T2M-END R2M0010_PP_PdCell_Arrive_K2

\* T2M-SCOPE R2M0011_PP_PdCell_Arrive_K6

<1>PvHjug.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE K6'
<2> USE ONLY <1>PvHjug, Sizes, Location, Design
<2>1. T_gen /\ K6 /\ T_sled
  BY SMTT(10), <1>g4u1JVDPkX, V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<pgn, pr, pst, sfly, sled>>
  BY SMTT(10), <1>lfvXDhEF7, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (\A u \in Rq : gen'[u] >= gen[u]) /\ (\A u \in Rq, g \in Gens : g <= gen[u] => (hp'[u][g] = hp[u][g] /\ hd'[u][g] = hd[u][g]))
  BY SMTT(10), <1>RWJt5w8z9iX, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. T_gen'
  BY <1>orT5ccVhaJ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF K6, OwnedBy, T_sled, T_gen, Gens, Sizes, Location, Design
\* T2M-END R2M0011_PP_PdCell_Arrive_K6


<1>Uw9mC.         K7 <=> \A p \in Pages : K7Point(p)
  BY ZenonT(10), Sizes, Location, Design DEF K7, K7Point, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vSt2oHdf5.         K7' <=> \A p \in Pages : K7Point(p)'
  BY ZenonT(10), Sizes, Location, Design DEF K7, K7Point, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>udxlyHHih.        
  UNCHANGED <<ph,rpg>> => \A i,r,p : Maps(i,r,p)' = Maps(i,r,p)
  BY ZenonT(10), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VWuNhp28S.        
  UNCHANGED <<ph,rhit,rpg>> => \A p : NHits(p)' = NHits(p)
  BY ZenonT(10), Sizes, Location, Design DEF NHits, Sizes, Location, Design
\* T2M-END R2M0014_PP_PdPageObservationFrame

\* T2M-SCOPE R2M0015_PP_PdPinObservationFrame

<1>Z9almCxkt.        
  UNCHANGED <<kpin,krs>> => \A p : KPinned(p)' = KPinned(p)
  BY ZenonT(10), Sizes, Location, Design DEF KPinned, Sizes, Location, Design
\* T2M-END R2M0015_PP_PdPinObservationFrame


<1>GGDcsh.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE K7'
<2> USE ONLY <1>GGDcsh, Sizes, Location, Design
<2>1. T_gen /\ K7
  BY SMTT(10), <1>g4u1JVDPkX, V21_Inv_BaseSafety, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>>
  BY SMTT(10), <1>lfvXDhEF7, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (\A u \in Rq : gen'[u] >= gen[u]) /\ (\A u \in Rq, g \in Gens : g <= gen[u] => (hp'[u][g] = hp[u][g] /\ hd'[u][g] = hd[u][g]))
  BY SMTT(10), <1>RWJt5w8z9iX, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. T_gen'
  BY <1>orT5ccVhaJ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. SUFFICES ASSUME NEW p \in Pages PROVE K7Point(p)'
  BY <1>vSt2oHdf5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. K7Point(p)
  BY <2>1, <1>Uw9mC, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED
  <3>1. (ptl[p] >= 0)'
    BY <2>1, <2>2, <2>3, <2>4, <2>6, <1>udxlyHHih, <1>VWuNhp28S, <1>Z9almCxkt, Sizes, SMTT(10), Location, Design DEF K7Point, GrownP, T_gen, Gens, Sizes, Location, Design
  <3>2. (pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0))'
    BY <2>1, <2>2, <2>3, <2>4, <2>6, <1>udxlyHHih, <1>VWuNhp28S, <1>Z9almCxkt, Sizes, SMTT(10), Location, Design DEF K7Point, GrownP, T_gen, Gens, Sizes, Location, Design
  <3>3. (pst[p] \in {"priv", "drain", "quar"} => (pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]]))'
    BY <2>1, <2>2, <2>3, <2>4, <2>6, <1>udxlyHHih, <1>VWuNhp28S, <1>Z9almCxkt, Sizes, SMTT(10), Location, Design DEF K7Point, GrownP, T_gen, Gens, Sizes, Location, Design
  <3>4. (pst[p] = "quar" => pqp[p] \in Inst)'
    BY <2>1, <2>2, <2>3, <2>4, <2>6, <1>udxlyHHih, <1>VWuNhp28S, <1>Z9almCxkt, Sizes, SMTT(10), Location, Design DEF K7Point, GrownP, T_gen, Gens, Sizes, Location, Design
  <3>5. (pst[p] # "quar" => pqp[p] = 0)'
    BY <2>1, <2>2, <2>3, <2>4, <2>6, <1>udxlyHHih, <1>VWuNhp28S, <1>Z9almCxkt, Sizes, SMTT(10), Location, Design DEF K7Point, GrownP, T_gen, Gens, Sizes, Location, Design
  <3>6. (pst[p] # "shared" => prefc[p] = 0)'
    BY <2>1, <2>2, <2>3, <2>4, <2>6, <1>udxlyHHih, <1>VWuNhp28S, <1>Z9almCxkt, Sizes, SMTT(10), Location, Design DEF K7Point, GrownP, T_gen, Gens, Sizes, Location, Design
  <3>7. (pst[p] = "shared" => (IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p)))'
    BY <2>1, <2>2, <2>3, <2>4, <2>6, <1>udxlyHHih, <1>VWuNhp28S, <1>Z9almCxkt, Sizes, SMTT(10), Location, Design DEF K7Point, GrownP, T_gen, Gens, Sizes, Location, Design
  <3>8. (pst[p] = "drain" => (led[p] # {} \/ sled[p] # {} \/ KPinned(p)))'
    BY <2>1, <2>2, <2>3, <2>4, <2>6, <1>udxlyHHih, <1>VWuNhp28S, <1>Z9almCxkt, Sizes, SMTT(10), Location, Design DEF K7Point, GrownP, T_gen, Gens, Sizes, Location, Design
  <3>9. (pst[p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(p), r, p))'
    BY <2>1, <2>2, <2>3, <2>4, <2>6, <1>udxlyHHih, <1>VWuNhp28S, <1>Z9almCxkt, Sizes, SMTT(10), Location, Design DEF K7Point, GrownP, T_gen, Gens, Sizes, Location, Design
  <3>10. (pst[p] = "priv" => ( (Maps(Loc(p), pr[p], p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]]) \/ GrownP(p)))'
    BY <2>1, <2>2, <2>3, <2>4, <2>6, <1>udxlyHHih, <1>VWuNhp28S, <1>Z9almCxkt, Sizes, SMTT(10), Location, Design DEF K7Point, GrownP, T_gen, Gens, Sizes, Location, Design
  <3>11. QED BY <3>1, <3>2, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9, <3>10, ZenonT(10), Sizes, Location, Design DEF K7Point, Sizes, Location, Design
\* T2M-END R2M0016_PP_PdCell_Arrive_K7


<1>H9ntSy.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE K8'
<2> USE ONLY <1>H9ntSy, Sizes, Location, Design
<2>1. T_gen /\ K8
  BY SMTT(10), <1>g4u1JVDPkX, V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, pgn, ph, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>>
  BY SMTT(10), <1>lfvXDhEF7, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (\A u \in Rq : gen'[u] >= gen[u]) /\ (\A u \in Rq, g \in Gens : g <= gen[u] => (hp'[u][g] = hp[u][g] /\ hd'[u][g] = hd[u][g]))
  BY SMTT(10), <1>RWJt5w8z9iX, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. T_gen'
  BY <1>orT5ccVhaJ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF Active, Gens, K8, OwnedBy, T_gen, Sizes, Location, Design
\* T2M-END R2M0017_PP_PdCell_Arrive_K8


<1>No3mK8T4.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
  PROVE K2'
  BY ONLY <1>No3mK8T4, Sizes, Location, Design, <1>WzO6Zz, V21_Inv_K2 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>R9SwKoXn.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
  PROVE K6'
  BY ONLY <1>R9SwKoXn, Sizes, Location, Design, <1>PvHjug, V21_Inv_K6 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>OUBrYuuK.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
  PROVE K7'
  BY ONLY <1>OUBrYuuK, Sizes, Location, Design, <1>GGDcsh, V21_Inv_K7 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>NYM7oc4W.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
  PROVE K8'
  BY ONLY <1>NYM7oc4W, Sizes, Location, Design, <1>H9ntSy, V21_Inv_K8 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>dw6a0KPBX.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
  PROVE K13'
  BY ONLY <1>dw6a0KPBX, Sizes, Location, Design, <1>PCz4L3c, V21_Inv_K13 DEF Sizes, Location, Design
\* T2M-END R2M0018_PdPAgg_Arrive


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>ve.        
 K3 /\ UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>> => K3'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, InFl, K3, Sizes, Location, Design
\* T2M-END R2M0332_PdPF_K3


<1>rd.        
 K5 /\ UNCHANGED <<led, pgn, pr, pst, xg, xr>> => K5'
 BY IsaT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0334_PdPF_K5


<1>pJ.        
 K4 /\ UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>> => K4'
 BY IsaT(10), Sizes, Location, Design DEF ExpPage, InitPage, K4, Sizes, Location, Design
\* T2M-END R2M0333_PdPF_K4


<1>M6Z.        
 K16 /\ UNCHANGED <<hw, led, pgn, ph, plt, pr, pst, ptl, rg, rpg, sfly, sled, xdst>> => K16'
 BY IsaT(10), Sizes, Location, Design DEF GrownP, InFl, K16, NoWriteInto, Writing, Sizes, Location, Design
\* T2M-END R2M0339_PdPF_K16


<1>LBf.        
 K15 /\ UNCHANGED <<hw, kpin, krs, led, plt, ptl, pvis, sdata, sfly, skey, sled, swrite, xdst>> => K15'
 BY P_PagePoolsDisjoint, IsaT(10), Sizes, Location, Design DEF InFl, K15, KData, NoWriteInto, SData, Writing, Sizes, Location, Design
\* T2M-END R2M0338_PdPF_K15


<1>hRmi8h2dwdvAZN.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, hok, hw, iv, kpin, krs, led, nfail, nx, pgn, ph, plt, pr, pst, ptl, pvis, rg, rhit, rpg, rx, sdata, sfly, skey, sled, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>hRmi8h2dwdvAZN, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF Arrive, ghV, instV, kV, pgV, recV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D20PC1yqT.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE K3'
<2> USE ONLY <1>D20PC1yqT, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>hRmi8h2dwdvAZN, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TZv4E7XgG.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE K4'
<2> USE ONLY <1>TZv4E7XgG, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>hRmi8h2dwdvAZN, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jxI4oKl5j.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE K5'
<2> USE ONLY <1>jxI4oKl5j, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>hRmi8h2dwdvAZN, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HiPl4k2uCF.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE K15'
<2> USE ONLY <1>HiPl4k2uCF, Sizes, Location, Design
<2>1. K15
 BY V21_Inv_K15, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, kpin, krs, led, plt, ptl, pvis, sdata, sfly, skey, sled, swrite, xdst>>
 BY <1>hRmi8h2dwdvAZN, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>LBf, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>l8LEC4hpBA.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE K16'
<2> USE ONLY <1>l8LEC4hpBA, Sizes, Location, Design
<2>1. K16
 BY V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, led, pgn, ph, plt, pr, pst, ptl, rg, rpg, sfly, sled, xdst>>
 BY <1>hRmi8h2dwdvAZN, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>M6Z, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H0Dre0I9dt5V.        
 ASSUME B2, SFollow
 PROVE RO_E_rpgS
 BY ONLY <1>H0Dre0I9dt5V, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_rpgS, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LQE0C5CV3kHl.        
 ASSUME B2, SFollow
 PROVE RO_E_spst
 BY ONLY <1>LQE0C5CV3kHl, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_spst, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kgOzghpuDBjlN1.        
 ASSUME B2, SFollow
 PROVE RO_E_dpreOK
 BY ONLY <1>kgOzghpuDBjlN1, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_dpreOK, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pDDs2iPJ6v1.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>pDDs2iPJ6v1, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jGg3R.         SFollow => UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rUEzU8wbH.        
 ASSUME UNCHANGED <<kpin,krs>>
 PROVE RO_PinGrows
 BY ONLY <1>rUEzU8wbH, Sizes, Location, Design, SMTT(10) DEF RO_PinGrows, SPin, SHPin, RO_Pin, RO_HPin, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yFQ846plk6kJ.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg>>, RO_PinGrows
 PROVE UNCHANGED rpgS
<2> USE ONLY <1>yFQ846plk6kJ, Sizes, Location, Design
<2>1. CASE ~B2
 BY ONLY <1>yFQ846plk6kJ, <2>1, SMTT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI1 /\ RO_E_rpgS BY <2>2, <1>pDDs2iPJ6v1, <1>H0Dre0I9dt5V, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <3>1, Design, IsaT(20), Sizes, Location DEF SI1, RO_E_rpgS, RO_HLive, RO_PinGrows, Active, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JJE0Tfox9Q.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg>>, RO_PinGrows
 PROVE UNCHANGED spst
<2> USE ONLY <1>JJE0Tfox9Q, Sizes, Location, Design
<2>1. CASE ~B2
 BY <2>1, ZenonT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI2 /\ SI4 /\ STypeOK /\ RO_E_spst BY <2>2, <1>pDDs2iPJ6v1, <1>LQE0C5CV3kHl, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A p \in SPages : ~RO_Ended(p)
 BY <3>1, SMTT(10), Sizes, Location, Design DEF SI2, RO_Ended, Active, Sizes, Location, Design
 <3>3. \A p \in SPages : ~RO_Drop(p)
 BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SI2, RO_Drop, RO_PinGrows, Sizes, Location, Design
 <3>4. \A p \in SPages : spst'[p]=spst[p]
 BY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF SI4, RO_E_spst, Sizes, Location, Design
 <3>5. QED BY ONLY <3>1, <3>4, SMTT(20), Sizes, Location, Design DEF RO_E_spst, STypeOK, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2182_PdROFollow


<1>G62OMB7v6XF.        
 ASSUME PinInv, B2, NEW x \in Xids, hw[x]="fly"
 PROVE RO_Valid(x)
<2> USE ONLY <1>G62OMB7v6XF, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ SendOwnLanded
 BY V21_Inv_NoEvictUnderRDMA, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF RO_Valid, NoEvictUnderRDMA, SAccess, SendOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RDpDVaE3CTJB.        
 ASSUME PinInv, SFollow, B2, \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
 PROVE \A p \in Pages : dpreOK[p] => dpreOK'[p]
<2> USE ONLY <1>RDpDVaE3CTJB, Sizes, Location, Design
<2>1. RO_E_dpreOK /\ SI4 BY <1>kgOzghpuDBjlN1, <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A x \in Xids : hw[x] \in {"fly","issued"} => (IF hw[x]="issued" THEN xprefixOK[x] ELSE RO_Valid(x))
 BY <2>1, <1>G62OMB7v6XF, SMTT(10), Sizes, Location, Design DEF SI4, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_dpreOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>umw00Yrfg.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rpg>>,
        \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
 PROVE B2 => \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} => dpreOK'[rpg'[j][r]]
<2> USE ONLY <1>umw00Yrfg, Sizes, Location, Design
<2>1. ReadOwnLanded BY V21_Inv_ReadOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE B2
 <3>1. \A p \in Pages : dpreOK[p] => dpreOK'[p] BY <2>3, <1>RDpDVaE3CTJB, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF ReadOwnLanded, BaseReadOwnLanded, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FZld0iMu.        
 ASSUME PinInv, UNCHANGED <<kpin,krs,spst,sdata,swrite,skey,sown,sgen,rpgS>>
 PROVE P_SI3'
 BY ONLY <1>FZld0iMu, Sizes, Location, Design, SMTT(10), V21_Inv_P_SI3 DEF P_SI3, SI3, SData, SHeld, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dQ3bBrrBxVF8Ri4bWy.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, Arrive(r,i,j)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>dQ3bBrrBxVF8Ri4bWy, Sizes, Location, Design, Design, ZenonT(10) DEF Arrive, ghV, instV, kV, pgV, recV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LpALwqgJdGp5Nlc.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>LpALwqgJdGp5Nlc, Sizes, Location, Design, Design, SMTT(10) DEF Arrive, ghV, instV, kV, pgV, recV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Y7gt6QnQP9dbfvD09.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE UNCHANGED <<spst,rpgS>>
 BY ONLY <1>Y7gt6QnQP9dbfvD09, Sizes, Location, Design, <1>dQ3bBrrBxVF8Ri4bWy, <1>LpALwqgJdGp5Nlc, <1>rUEzU8wbH, <1>JJE0Tfox9Q, <1>yFQ846plk6kJ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>j4zvIF8WAfFSXJ.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
 PROVE \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
<2> USE ONLY <1>j4zvIF8WAfFSXJ, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>j4zvIF8WAfFSXJ, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF Arrive, ghV, instV, kV, pgV, recV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OcmHeWKJV2.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE P_SI3'
 BY ONLY <1>OcmHeWKJV2, Sizes, Location, Design, <1>LpALwqgJdGp5Nlc, <1>Y7gt6QnQP9dbfvD09, <1>jGg3R, <1>FZld0iMu DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>QeaLe6a1C470KoyL.        
  BaseReadOwnLanded /\ UNCHANGED <<hw, pgn, ph, pr, pst, ptl, pvis, rg, rhit, rpg, xdst>> => BaseReadOwnLanded'
  BY SMTT(5), Sizes, Location, Design DEF InFl, NoWriteInto, BaseReadOwnLanded, Writing, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xlEjS107o.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, Arrive(r,i,j)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, hok, hw, iv, kfly, kpin, krs, led, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rg, rhit, rpe, rpg, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>xlEjS107o, Sizes, Location, Design, ZenonT(5) DEF Arrive, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EyIxVz40LCC0ufJzm.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>EyIxVz40LCC0ufJzm, Sizes, Location, Design
<2>1. BaseReadOwnLanded /\ UNCHANGED <<hw, pgn, ph, pr, pst, ptl, pvis, rg, rhit, rpg, xdst>>
  BY <1>d9xjhNZcw, SMTT(5), <1>xlEjS107o, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>QeaLe6a1C470KoyL, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>w1A6qbKTB1.        
 ASSUME RO_SharedFieldsFrame
 PROVE TypInv => qryMJ
  BY ONLY <1>w1A6qbKTB1, Sizes, Location, Design, ZenonT(5) DEF TypInv, CoreTypeOK, qryMJ, Ltilk, ckVW, bXD3, XAoD, ZzYU, v7av, Zwf5Kak, UTxM0oD, Btadh0, hgjUtY, DgHrMJ, UDzxF, NN85, FlLc, mCp6f, EfDhA, TO_H, OFH6nV, nU_pl, KRyh, SWs37, Q73Wr, cDvpy, aHUmFg, m0XQV, YAnOjz, owHnyB, Gpa5dVU, f9onk, fwbJ, mnFW, nOWk, Ha9G, f5DU, KZInRS, hq2umu, ROI9_, M7cq, u1j8N, ECDy, q4kPy, doDAh, YN04, kvUux, WsZW22, d654kx, jl8hSJt, XEsGoy, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BVNGgr9i2.        
 ASSUME RO_SharedFieldsFrame
 PROVE PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY ONLY <1>BVNGgr9i2, Sizes, Location, Design, V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2532_PdRORead_PdProofBase


<1>oqcJNgBIWOfbiwv1Ji.        
 ASSUME RO_SharedFieldsFrame
 PROVE NoFreeUnderRead /\ UNCHANGED <<kpin, krs, pgn, pr, pst>> => NoFreeUnderRead'
  BY ONLY <1>oqcJNgBIWOfbiwv1Ji, Sizes, Location, Design, SMTT(5) DEF KHeld, NoFreeUnderRead, SHeld, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D6Ur2JOaS.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, Arrive(r,i,j)
  , RO_SharedFieldsFrame
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, hok, hw, iv, kfly, kpin, krs, led, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rg, rhit, rpe, rpg, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>D6Ur2JOaS, Sizes, Location, Design, ZenonT(5) DEF Arrive, ghV, instV, kV, pgV, recV, rtV, vars, xV, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rqXITm0TWEteD9rgq20.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  , RO_SharedFieldsFrame
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>rqXITm0TWEteD9rgq20, Sizes, Location, Design
<2>1. NoFreeUnderRead /\ UNCHANGED <<kpin, krs, pgn, pr, pst>>
  BY <1>BVNGgr9i2, SMTT(5), <1>D6Ur2JOaS, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>oqcJNgBIWOfbiwv1Ji, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YQy0YX3XHjROSFtHeDwpet.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>YQy0YX3XHjROSFtHeDwpet, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>Y7gt6QnQP9dbfvD09, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. NoFreeUnderRead'
 BY <2>1, <1>rqXITm0TWEteD9rgq20, <1>w1A6qbKTB1, V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2541_PdROReadCell_Arrive_NoFreeUnderRead

\* T2M-SCOPE R2M2542_PdROReadCell_Arrive_NoStrayAccess

<1>BgyFlZIc4ov2Ems0ecB9.        
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j), SFollow
 PROVE ReadOwnLanded'
<2> USE ONLY <1>BgyFlZIc4ov2Ems0ecB9, Sizes, Location, Design
<2>1. BaseReadOwnLanded' BY <1>EyIxVz40LCC0ufJzm, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 => \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} => dpreOK'[rpg'[j][r]]
 BY <1>dQ3bBrrBxVF8Ri4bWy, <1>j4zvIF8WAfFSXJ, <1>umw00Yrfg, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF ReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M2648_PdROSafety_Arrive_ReadOwnLanded

\* T2M-SCOPE R2M2649_PdROSafety_Arrive_SealOnlyLanded

<1> QED BY <1>YQy0YX3XHjROSFtHeDwpet, <1>BgyFlZIc4ov2Ems0ecB9, <1>OcmHeWKJV2, <1>w3yXFu4jCqHkjWz6AX0Setkak9Ost9o, <1>OUBrYuuK, <1>KnHou4KAEhUjbQfJEO6wM9C, <1>No3mK8T4, <1>R9SwKoXn, <1>NYM7oc4W, <1>dw6a0KPBX, <1>D20PC1yqT, <1>TZv4E7XgG, <1>jxI4oKl5j, <1>HiPl4k2uCF, <1>l8LEC4hpBA, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_Arrive SHA 1e52211efd9419feaa6a765db301df4f6df08950328ffc7312088365f3ef87f7
USE DEF Shape_T_gen
HIDE DEF P_PagePoolsDisjoint, Part_Arrive_02_02, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K13, V21_Inv_K15, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_Choice, V22_SF_Map, V22_SF_Off, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_T_pst, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS
LEMMA ShapeEffect_Arrive ==
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, Sizes, Design, Arrive(r,i,j)
 PROVE /\ gen[r] < MG
 /\ net' = net \cup {Msg("req",0,i,r,gen[r]+1,0,0,j,FALSE),Msg("req",0,j,r,gen[r]+1,0,0,i,FALSE)}
 BY ONLY Arrive(r,i,j), Sizes, Design, SMTT(5) DEF Arrive, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_Arrive ==
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, Sizes, Design, IndInv, MessageShape, Arrive(r,i,j)
 PROVE MessageShape'
<1>1. /\ gen[r] < MG
 /\ net' = net \cup {Msg("req",0,i,r,gen[r]+1,0,0,j,FALSE),Msg("req",0,j,r,gen[r]+1,0,0,i,FALSE)}
 BY ONLY Sizes, Design, Arrive(r,i,j), ShapeEffect_Arrive
<1>2. gen \in [Rq -> 0..MG]
 BY ONLY IndInv, Shape_T_gen
<1>3. QED
 BY ONLY <1>1, <1>2, IndInv, MessageShape, Sizes, SMTT(10)
 DEF MessageShape, Msg, MsgT, Sizes, Rq, Gens, Xids, Pages, Inst, NL, PInst, DInst

\* Complete original body PdDomain_Arrive SHA da672ca9105d62025d445a55298c7bb17f9025725e4474d530712fb5b0bbeb51
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_Arrive, Shape_T_gen
THEOREM DomainKeep_Arrive ==
 ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, Sizes, Location, Design, PinInv, Arrive(r,i,j)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. /\ gen[r] < MG
 /\ net' = net \cup {Msg("req",0,i,r,gen[r]+1,0,0,j,FALSE),Msg("req",0,j,r,gen[r]+1,0,0,i,FALSE)}
 BY ONLY Sizes, Location, Design, PinInv, Arrive(r,i,j), ShapeEffect_Arrive
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg
HIDE DEF DomainKeep_Arrive, ShapeEffect_Arrive, V21_Inv_MsgXDomain
====
