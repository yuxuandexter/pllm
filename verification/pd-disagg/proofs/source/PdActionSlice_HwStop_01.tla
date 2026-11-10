---- MODULE PdActionSlice_HwStop_01 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_9ef278c147c12b12, PdFinalAuxType_005ae912248d6948, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalGroup_HwStop_01 SHA fa74a27e28be404e7c72923539a3d0fe915af1f9ca34917408d44ba9468ded22
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Group_HwStop_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE (TypInv)'
<1>dplfnpeXIVM3vR82a4.        
 ASSUME NEW x \in Xids, HwStop(x)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>dplfnpeXIVM3vR82a4, Sizes, Location, Design, Design, ZenonT(10) DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g4ukMt7rga0IPw.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE STypeOK'
 BY ONLY <1>g4ukMt7rga0IPw, AuxType_9ef278c147c12b12, Sizes, Location, Design DEF Sizes, Location, Design

<1>z94bHZuslb.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE CoreTypeOK'
 BY ONLY <1>z94bHZuslb, AuxType_005ae912248d6948, Sizes, Location, Design DEF Sizes, Location, Design

<1>wbHjI8fCemgNJ.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE TypInv'
<2> USE ONLY <1>wbHjI8fCemgNJ, Sizes, Location, Design
<2>1. CoreTypeOK' BY <1>z94bHZuslb, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK' BY <1>dplfnpeXIVM3vR82a4, <1>g4ukMt7rga0IPw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF TypInv, Sizes, Location, Design
\* T2M-END R2M2713_PdROType_HwStop


<1> QED BY <1>wbHjI8fCemgNJ, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_HwStop_02_01 SHA e12df1e007d11452badef57221450679b8e228321faff32f2d3f09425a5bfca5
USE DEF V21_Inv_BaseSafety, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoStrayAccess, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_T_gen, V22_T_hw, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF AuxType_005ae912248d6948, Group_HwStop_01
THEOREM Part_HwStop_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE (QuietConservation)' /\ (P_SI2)' /\ (SendOwnLanded)' /\ (SharedLedRef)' /\ (NoEvictUnderRDMA)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RO_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


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


           RO_E_xsrcS == xsrcS'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="shared" THEN {RO_Src(x)} ELSE {}) ELSE xsrcS[x]]


           RO_E_xsrcP == xsrcP'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="priv" THEN {RO_Src(x)} ELSE {}) ELSE xsrcP[x]]


           RO_E_sentry == sentry'=(sentry \cup {x \in Xids : RO_Posted(x)}) \ {x \in Xids : RO_Close(x) \/ RO_Quarantine(x)}


           RO_E_squar == squar'=squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RO_Quarantine(x)}})


           RO_E_smap == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           RO_E_schoice == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           RO_E_spst == spst'=[p \in SPages |-> IF \E x \in Xids : RO_Quarantine(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF RO_Drop(p) THEN "free" ELSE IF RO_Ended(p) THEN "drain" ELSE spst[p]]


           RO_E_sprefc == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)+SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

           \* T2M-LOCAL-VISIBILITY

           RO_Flat(e) == <<e[1][1],e[1][2],e[2][1],e[2][2]>>

           \* T2M-LOCAL-VISIBILITY

           RO_StableStates == \A p \in SPages : spst[p] \notin {"drain","dup"} => spst'[p]=spst[p]

           \* T2M-LOCAL-VISIBILITY

           wOTr_ == gen \in [Rq -> 0..MG]


           Qjrp == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           vdfp == rp \in [Rq -> {0} \cup Inst]


           Gi91 == rd \in [Rq -> {0} \cup Inst]


           f9Jo == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           qC4t == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           dfknOma == alive \in [Inst -> BOOLEAN]


           TiBl9dL == nfail \in 0..MaxFail


           nvVdwJ == torn \in [Inst -> SUBSET Inst]


           kyOog2 == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           UUdTOK == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           dMRAk == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           lwx7 == ph \in [Inst -> [Rq -> PhSet]]


           azLu == rg \in [Inst -> [Rq -> 0..MG]]


           T2_wJ == rpg \in [Inst -> [Rq -> 0..NP]]


           DRkCp == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           u6eb == rx \in [Inst -> [Rq -> 0..MX]]


           WFFocH == rhit \in [Inst -> [Rq -> BOOLEAN]]


           mWgRR == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           voSc == pr \in [Pages -> 0..NR]


           ejARA == pgn \in [Pages -> 0..MG]


           nhDFh == plt \in [Pages -> 0..PS]


           Oet5P == ptl \in [Pages -> -1..PS]


           toA96a == pvis \in [Pages -> BOOLEAN]


           CQcwS == led \in [Pages -> SUBSET Xids]


           pgoLyw == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           gwX1nH == sled \in [Pages -> SUBSET (Rq \X Gens)]


           uhaZUCa == prefc \in [Pages -> 0..NR]


           j9ZB2 == pqp \in [Pages -> {0} \cup Inst]


           tOrh == xr \in [Xids -> 0..NR]


           oZ1G == xg \in [Xids -> 0..MG]


           TMQx == xk \in [Xids -> {"none", "wr", "rd"}]


           vvyr == xp \in [Xids -> {0} \cup Inst]


           FBnj == xd \in [Xids -> {0} \cup Inst]


           Sbgpxn == xsrc \in [Xids -> 0..NP]


           tP64Zt == xdst \in [Xids -> 0..NP]


           Rl_wH == xnt \in [Xids -> 0..PS]


           JojO == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           NFMkE == hok \in [Xids -> BOOLEAN]


           vQ8m == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           tMnUG == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           Og_ZB == xlt \in [Xids -> 0..PS]


           NHqB == nx \in 1..(MX + 1)


           j95de == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           jnT8ZH == drep \in [Rq -> [Gens -> 0..2]]


           fikvOb == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           wBRWE5u == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           Le6TxG == gbad \in BOOLEAN


           soyHJ == wOTr_ /\ Qjrp /\ vdfp /\ Gi91 /\ f9Jo /\ qC4t /\ dfknOma /\ TiBl9dL /\ nvVdwJ /\ kyOog2 /\ UUdTOK /\ dMRAk /\ lwx7 /\ azLu /\ T2_wJ /\ DRkCp /\ u6eb /\ WFFocH /\ mWgRR /\ voSc /\ ejARA /\ nhDFh /\ Oet5P /\ toA96a /\ CQcwS /\ pgoLyw /\ gwX1nH /\ uhaZUCa /\ j9ZB2 /\ tOrh /\ oZ1G /\ TMQx /\ vvyr /\ FBnj /\ Sbgpxn /\ tP64Zt /\ Rl_wH /\ JojO /\ NFMkE /\ vQ8m /\ tMnUG /\ Og_ZB /\ NHqB /\ j95de /\ jnT8ZH /\ fikvOb /\ wBRWE5u /\ Le6TxG

           \* T2M-LOCAL-VISIBILITY

           NlAXTwIvW(x) ==
             hw[x] \in {"fly", "issued"} /\ \E ok \in (IF hw[x] = "issued" THEN {hok[x]} ELSE BOOLEAN) :
              /\ hw' = [hw EXCEPT ![x] = "stop"] /\ hok' = [hok EXCEPT ![x] = ok]
              /\ ptl' = [ptl EXCEPT ![xdst[x]] = IF Held(xdst[x], x) THEN (IF ok THEN xlt[x] ELSE 0) ELSE -1]
              /\ pvis' = [pvis EXCEPT ![xdst[x]] = IF ok THEN FALSE ELSE @]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_sprefc, RO_Flat, RO_StableStates, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ, NlAXTwIvW

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

<1>LQE0C5CV3kHl.        
 ASSUME B2, SFollow
 PROVE RO_E_spst
 BY ONLY <1>LQE0C5CV3kHl, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_spst, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

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

<1>jGg3R.         SFollow => UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design

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


<1>zfU9bzFS28ZT.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc,
        \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
 PROVE \A x \in Xids : SAccess(x)' => SAccess(x)
<2> USE ONLY <1>zfU9bzFS28ZT, Sizes, Location, Design
<2>1. RO_E_sentry /\ RO_E_squar /\ (\A x \in Xids : ~RO_Posted(x))
 BY <1>oVMEMsT8gqQqbk, <1>lIuyiSzJ58zq2, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK BY <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. sentry' \subseteq sentry
 BY <2>1, SMTT(10), Sizes, Location, Design DEF RO_E_sentry, Sizes, Location, Design
<2>4. \A h \in squar' : h \in squar \/ h[1] \in sentry
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_squar, RO_Quarantine, STypeOK, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF SAccess, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YraYIuuP0dXpCHZH.        
 ASSUME PinInv, SFollow,
        UNCHANGED <<xsrc,xsrcS,xsrcP,xr,xg,sown,sgen,skey>>, RO_StableStates,
        \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>YraYIuuP0dXpCHZH, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ (B2 => SI4) /\ STypeOK BY V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF NoEvictUnderRDMA, Sizes, Location, Design
<2>3. CASE B2
 <3>1. \A x \in Xids : SAccess(x)' => SAccess(x) BY <2>3, <1>zfU9bzFS28ZT, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, SI4, STypeOK, RO_StableStates, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KPndmXINRK1Z.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg,smap,schoice,spst,skey,sready,rpgS>>, RO_PinGrows,
        gen' \in [Rq -> 0..MG], \A r \in Rq : gen'[r]>=gen[r]
 PROVE P_SI1'
<2> USE ONLY <1>KPndmXINRK1Z, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI1, Sizes, Location, Design
<2>2. CASE B2
 <3>0. gen \in [Rq -> 0..MG] 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>KPndmXINRK1Z, V22_T_gen, SMTT(5)

 <3>1. SI1 /\ STypeOK BY <2>2, <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A h \in rpgS : h[2] \in Rq
 BY <3>1, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
 <3>3. ASSUME NEW h \in rpgS
        PROVE h[3]<=gen'[h[2]]
  <4>1. h[3]<=gen[h[2]] BY <3>1, ZenonT(10), Sizes, Location, Design DEF SI1, Sizes, Location, Design
  <4>2. h[2] \in Rq BY <3>2, Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. gen[h[2]] \in Nat /\ gen'[h[2]] \in Nat /\ h[3] \in Nat BY <3>0, <3>1, <4>2, Sizes, SMTT(10), Location, Design DEF STypeOK, Gens, Sizes, Location, Design
  <4>4. gen'[h[2]]>=gen[h[2]] BY <4>2, Sizes, Location, Design DEF Sizes, Location, Design
  <4>5. QED BY <4>1, <4>3, <4>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY <2>2, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF P_SI1, SI1, SSendReady, Active, SHPin, RO_PinGrows, RO_HPin, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FZld0iMu.        
 ASSUME PinInv, UNCHANGED <<kpin,krs,spst,sdata,swrite,skey,sown,sgen,rpgS>>
 PROVE P_SI3'
 BY ONLY <1>FZld0iMu, Sizes, Location, Design, SMTT(10), V21_Inv_P_SI3 DEF P_SI3, SI3, SData, SHeld, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CHVOTlcrYdkDhqRGxLk.        
 ASSUME PinInv, B2
 PROVE /\ \A h \in rpgS : spst[h[4]]="shared"
       /\ \A x \in sentry : \A p \in xsrcS[x] : spst[p]="shared"
       /\ \A h \in squar : spst[h[2]]="shared"
<2> USE ONLY <1>CHVOTlcrYdkDhqRGxLk, Sizes, Location, Design
<2>1. HitIdentity /\ SI4 /\ SI5 /\ STypeOK BY <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF HitIdentity, SI4, SI5, STypeOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zIpzJmV4LXez8qoyL.        
 ASSUME PinInv, SFollow, B2, UNCHANGED <<xsrc,xsrcS>>, RO_StableStates
 PROVE /\ \A h \in rpgS' : spst'[h[4]]="shared"
       /\ \A x \in sentry' : \A p \in xsrcS'[x] : spst'[p]="shared"
       /\ \A h \in squar' : spst'[h[2]]="shared"
<2> USE ONLY <1>zIpzJmV4LXez8qoyL, Sizes, Location, Design
<2>1. RO_E_rpgS /\ RO_E_sentry /\ RO_E_squar /\ (\A x \in Xids : ~RO_Posted(x))
 BY <1>H0Dre0I9dt5V, <1>oVMEMsT8gqQqbk, <1>lIuyiSzJ58zq2, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK /\ (\A h \in rpgS : spst[h[4]]="shared")
       /\ (\A x \in sentry : \A p \in xsrcS[x] : spst[p]="shared")
       /\ (\A h \in squar : spst[h[2]]="shared")
 BY <1>CHVOTlcrYdkDhqRGxLk, <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_rpgS, RO_E_sentry, RO_E_squar, RO_Quarantine, STypeOK, RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tkIbKthZ8rm8L.        
 ASSUME PinInv, SFollow, B2, UNCHANGED <<xsrc,xsrcS>>, RO_StableStates, NEW p \in SPages, spst'[p] # "shared"
 PROVE sprefc'[p]=0
<2> HIDE DEF PrefcMatchesHolders, SRefR, SRefE, SRefQ
<2>count. PrefcMatchesHolders'
 BY ONLY <1>tkIbKthZ8rm8L, <1>BhJJoZwTfyo0ME, Sizes, Location, Design, SMTT(5)
<2>total. sprefc'[p]=SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
 BY ONLY <1>tkIbKthZ8rm8L, <2>count, SMTT(5) DEF PrefcMatchesHolders
<2>shared. (\A h \in rpgS' : spst'[h[4]]="shared") /\
          (\A x \in sentry' : \A q \in xsrcS'[x] : spst'[q]="shared") /\
          (\A h \in squar' : spst'[h[2]]="shared")
 BY ONLY <1>tkIbKthZ8rm8L, <1>zIpzJmV4LXez8qoyL, Sizes, Location, Design, SMTT(5)
<2>emptyR. {h \in rpgS' : h[4]=p}={}
 BY ONLY <1>tkIbKthZ8rm8L, <2>shared, SMTT(5)
<2>emptyE. {x \in sentry' : p \in xsrcS'[x]}={}
 BY ONLY <1>tkIbKthZ8rm8L, <2>shared, SMTT(5)
<2>emptyQ. {h \in squar' : h[2]=p}={}
 BY ONLY <1>tkIbKthZ8rm8L, <2>shared, SMTT(5)
<2>emptyCount. Cardinality({})=0
 BY ONLY FS_EmptySet, SMTT(5)
<2>zeroR. SRefR(rpgS',p)=0
 BY ONLY <2>emptyR, <2>emptyCount, SMTT(5) DEF SRefR
<2>zeroE. SRefE(sentry',xsrcS',p)=0
 BY ONLY <2>emptyE, <2>emptyCount, SMTT(5) DEF SRefE
<2>zeroQ. SRefQ(squar',p)=0
 BY ONLY <2>emptyQ, <2>emptyCount, SMTT(5) DEF SRefQ
<2>qed. QED BY ONLY <2>total, <2>zeroR, <2>zeroE, <2>zeroQ, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>dusdnIGW.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg,smap,xsrc,xsrcS,spst,sown,sgen,skey,swrite,sdata,sready>>, RO_PinGrows
 PROVE P_SI2'
<2> USE ONLY <1>dusdnIGW, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI2, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI2 BY <2>2, <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A p \in SPages : spst'[p] # "shared" => sprefc'[p]=0
 BY <2>2, <1>tkIbKthZ8rm8L, Sizes, Location, Design DEF RO_StableStates, Sizes, Location, Design
 <3>3. QED BY <2>2, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF P_SI2, SI2, SPin, Active, RO_PinGrows, RO_Pin, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k9ruZkLVvpGveCVg.        
 ASSUME NEW S, IsFiniteSet(S), S # {}
 PROVE Cardinality(S)>0
 BY ONLY <1>k9ruZkLVvpGveCVg, Sizes, Location, Design, FS_EmptySet, FS_CardinalityType, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RMHRf5pN.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc, NEW p \in SPages
 PROVE /\ SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat
       /\ (\E h \in rpgS' : h[4]=p) => SRefR(rpgS',p)>0
<2> USE ONLY <1>RMHRf5pN, Sizes, Location, Design
<2>1. rpgS' \subseteq PInst \X Rq \X Gens \X SPages BY <1>Hl2eKc2VBkR40pk, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet({h \in rpgS' : h[4]=p}) BY <2>1, <1>ePMf4RNB21H, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (\E h \in rpgS' : h[4]=p) => {h \in rpgS' : h[4]=p} # {}
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. (\E h \in rpgS' : h[4]=p) => SRefR(rpgS',p)>0
 BY <2>2, <2>3, <1>k9ruZkLVvpGveCVg, SMTT(10), Sizes, Location, Design DEF SRefR, Sizes, Location, Design
<2>5. SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat
 BY <1>x8eiSet, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>W6ZEgSLf4BlQd7l9.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc, P_SI3'
 PROVE SharedLedRef'
<2> USE ONLY <1>W6ZEgSLf4BlQd7l9, Sizes, Location, Design
<2>1. PrefcMatchesHolders' BY <1>BhJJoZwTfyo0ME, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ASSUME NEW p \in SPages
       PROVE /\ ((spst'[p]="shared" /\ (SRefE(sentry',xsrcS',p)>0 \/ SPin(p)')) \/ SRefQ(squar',p)>0) => sprefc'[p]>=1
             /\ sprefc'[p]>=SRefQ(squar',p)
 <3>1. SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat
       /\ ((\E h \in rpgS' : h[4]=p) => SRefR(rpgS',p)>0)
 BY <1>RMHRf5pN, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. (spst'[p]="shared" /\ SPin(p)') => \E h \in rpgS' : h[4]=p
 BY SMTT(10), Sizes, Location, Design DEF P_SI3, SI3, SPin, SH, Sizes, Location, Design
 <3>3. sprefc'[p] = SRefR(rpgS',p) + SRefE(sentry',xsrcS',p) + SRefQ(squar',p)
  BY ONLY <1>W6ZEgSLf4BlQd7l9, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
 <3>4. QED
  <4>sumBounds. ASSUME NEW a \in Nat, NEW b \in Nat, NEW c \in Nat, NEW total, total=a+b+c
               PROVE total>=c /\ ((a>0 \/ b>0 \/ c>0) => total>=1)
   <5>integer. a \in Int /\ b \in Int /\ c \in Int
    BY ONLY <4>sumBounds, SMTT(5)
   <5>nonnegative. a>=0 /\ b>=0 /\ c>=0
    BY ONLY <4>sumBounds, SMTT(5)
   <5>qed. QED BY ONLY <4>sumBounds, <5>integer, <5>nonnegative, SMTT(5)
  <4>pin. (spst'[p]="shared" /\ SPin(p)') => SRefR(rpgS',p)>0
   BY ONLY <3>1, <3>2, SMTT(5)
  <4>bounds. sprefc'[p]>=SRefQ(squar',p) /\
    ((SRefR(rpgS',p)>0 \/ SRefE(sentry',xsrcS',p)>0 \/ SRefQ(squar',p)>0) => sprefc'[p]>=1)
   BY ONLY <3>1, <3>3, <4>sumBounds, SMTT(5)
  <4>qed. QED BY ONLY <4>pin, <4>bounds, SMTT(5)
<2>3. QED BY <2>2, Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dplfnpeXIVM3vR82a4.        
 ASSUME NEW x \in Xids, HwStop(x)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>dplfnpeXIVM3vR82a4, Sizes, Location, Design, Design, ZenonT(10) DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tmky0pBTnVGMtBA0qQxe.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>Tmky0pBTnVGMtBA0qQxe, Sizes, Location, Design, <1>dplfnpeXIVM3vR82a4, <1>J0yx6oHL5UyrV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qipnHByloD94p9G.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x)
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>qipnHByloD94p9G, Sizes, Location, Design, Design, SMTT(10) DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sUxiuduQWVGBvY84I.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE UNCHANGED <<spst,rpgS>>
 BY ONLY <1>sUxiuduQWVGBvY84I, Sizes, Location, Design, <1>dplfnpeXIVM3vR82a4, <1>qipnHByloD94p9G, <1>rUEzU8wbH, <1>JJE0Tfox9Q, <1>yFQ846plk6kJ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XBpdkSVkgCziFlub.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x)
 PROVE \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
<2> USE ONLY <1>XBpdkSVkgCziFlub, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>XBpdkSVkgCziFlub, V22_T_hw, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qsjynvuC9zS8t8nNYa.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x)
 PROVE gen' \in [Rq -> 0..MG] /\ \A r \in Rq : gen'[r]>=gen[r]
<2> USE ONLY <1>qsjynvuC9zS8t8nNYa, Sizes, Location, Design
<2>1. gen \in [Rq -> 0..MG]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>qsjynvuC9zS8t8nNYa, V22_T_gen, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RDD0kyw3qdOXm3Lh09nWuzVkkb.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>RDD0kyw3qdOXm3Lh09nWuzVkkb, Sizes, Location, Design, <1>dplfnpeXIVM3vR82a4, <1>BhJJoZwTfyo0ME DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>v5qNYCnbSzSaaS75tR3l6h6.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>v5qNYCnbSzSaaS75tR3l6h6, Sizes, Location, Design, <1>dplfnpeXIVM3vR82a4, <1>Tmky0pBTnVGMtBA0qQxe, <1>sUxiuduQWVGBvY84I, <1>jGg3R, <1>XBpdkSVkgCziFlub, <1>YraYIuuP0dXpCHZH DEF RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aZZ7pAmkIB.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE P_SI1'
 BY ONLY <1>aZZ7pAmkIB, Sizes, Location, Design, <1>dplfnpeXIVM3vR82a4, <1>Tmky0pBTnVGMtBA0qQxe, <1>sUxiuduQWVGBvY84I, <1>jGg3R, <1>qsjynvuC9zS8t8nNYa, <1>qipnHByloD94p9G, <1>rUEzU8wbH, <1>KPndmXINRK1Z DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YxcN8hRW8R.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE P_SI3'
 BY ONLY <1>YxcN8hRW8R, Sizes, Location, Design, <1>qipnHByloD94p9G, <1>sUxiuduQWVGBvY84I, <1>jGg3R, <1>FZld0iMu DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>K49culthi.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrcS,xsrcP,xr,xg>>,
        \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
 PROVE IF ~B2 THEN TRUE ELSE \A x \in Xids : hw'[x]="fly" => \A p \in xsrcS'[x] \cup xsrcP'[x] :
       sdata'[p] /\ ~swrite'[p] /\ skey'[p]=STok(xr'[x],xg'[x])
<2> USE ONLY <1>K49culthi, Sizes, Location, Design
<2>1. SendOwnLanded BY V21_Inv_SendOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<sdata,swrite,skey>> BY <1>jGg3R, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF SendOwnLanded, Sizes, Location, Design
\* T2M-END R2M2187_PdROSharedControl


<1>g4ukMt7rga0IPw.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE STypeOK'
 BY ONLY <1>g4ukMt7rga0IPw, AuxType_9ef278c147c12b12, Sizes, Location, Design DEF Sizes, Location, Design

<1>EjmNCRbt1.        
 ASSUME BaseQuietConservation', P_SI1', P_SI2', STypeOK', PrefcMatchesHolders'
 PROVE QuietConservation'
<2> USE ONLY <1>EjmNCRbt1, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF QuietConservation, Sizes, Location, Design
<2>2. CASE B2
 <3>1. ASSUME Quiet', sentry'={},
       \A p \in SPages : ~swrite'[p] /\ (spst'[p] \in {"priv","drain"} => sready'[p]) /\ ~SPin(p)'
       PROVE \A p \in SPages : spst'[p] \in {"free","quar"} \/ (spst'[p]="shared" /\ sprefc'[p]=SRefQ(squar',p))
  <4>1. PInst \subseteq Inst BY Sizes, SMTT(10), Location, Design DEF NL, PInst, Inst, DInst, Sizes, Location, Design
  <4>2. \A p \in SPages : spst'[p] \in {"free","quar","shared"}
  BY ONLY <1>EjmNCRbt1, Sizes, Location, Design, <2>2, <3>1, <2>2, <4>1, Location, SMTT(10) DEF P_SI2, SI2, STypeOK, Quiet, KPages, Sizes, Location, Design
  <4>3. rpgS'={}
  BY ONLY <1>EjmNCRbt1, Sizes, Location, Design, <2>2, <3>1, <2>2, <4>1, SMTT(10) DEF P_SI1, SI1, STypeOK, Quiet, SHPin, SPin, Sizes, Location, Design
  <4>4. \A p \in SPages : SRefR(rpgS',p)=0 /\ SRefE(sentry',xsrcS',p)=0
  BY ONLY <1>EjmNCRbt1, Sizes, Location, Design, <2>2, <3>1, <4>3, FS_EmptySet, SMTT(10) DEF SRefR, SRefE, Sizes, Location, Design
  <4>5. IsFiniteSet(squar') BY <1>L8DIG3nRD9Lv3, FS_Product, FS_Subset, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
  <4>6. \A p \in SPages : SRefQ(squar',p) \in Nat
  BY ONLY <1>EjmNCRbt1, Sizes, Location, Design, <2>2, <4>5, FS_Subset, FS_CardinalityType, SMTT(10) DEF SRefQ, Sizes, Location, Design
  <4>7. QED BY <3>1, <2>2, <4>2, <4>4, <4>6, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
 <3>2. QED BY <2>2, <3>1, Sizes, Location, Design DEF QuietConservation, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2192_PdROQuiet


<1>OJpowx54MQ.         TypInv => soyHJ
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, soyHJ, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>FtC5YSiCRNkSBGTzLgH8g.        
  BaseQuietConservation /\ UNCHANGED <<kpin, krs, led, ph, prefc, pst, sled>> => BaseQuietConservation'
  BY SMT, Sizes, Location, Design DEF Active, KPinned, Quiet, BaseQuietConservation, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>O8DCAEAnW.        
  ASSUME NEW x \in Xids, HwStop(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>O8DCAEAnW, Sizes, Location, Design, Zenon DEF HwStop, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cjzdSGd7WKX4RR4akiecS.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE BaseQuietConservation'
<2> USE ONLY <1>cjzdSGd7WKX4RR4akiecS, Sizes, Location, Design
<2>1. BaseQuietConservation /\ UNCHANGED <<kpin, krs, led, ph, prefc, pst, sled>>
  BY <1>d9xjhNZcw, <1>O8DCAEAnW, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>FtC5YSiCRNkSBGTzLgH8g, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2245_PdROBase_PdBHwStopFrames


<1>fGXIv31pqv.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE P_SI2'
 BY ONLY <1>fGXIv31pqv, Sizes, Location, Design, <1>dplfnpeXIVM3vR82a4, <1>Tmky0pBTnVGMtBA0qQxe, <1>sUxiuduQWVGBvY84I, <1>qipnHByloD94p9G, <1>jGg3R, <1>rUEzU8wbH, <1>dusdnIGW DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AyYDzBvzFtPNYhpGxox.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE SharedLedRef'
<2> USE ONLY <1>AyYDzBvzFtPNYhpGxox, Sizes, Location, Design
 <2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
<2>2. CASE B2 BY <2>2, <1>dplfnpeXIVM3vR82a4, <1>YxcN8hRW8R, <1>W6ZEgSLf4BlQd7l9, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TD0TjIl7DKzo87RhU52XXvek.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE QuietConservation'
<2> USE ONLY <1>TD0TjIl7DKzo87RhU52XXvek, Sizes, Location, Design
 <2>1. BaseQuietConservation' BY <1>cjzdSGd7WKX4RR4akiecS, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. P_SI1' /\ P_SI2' /\ STypeOK' /\ PrefcMatchesHolders'
 BY <1>aZZ7pAmkIB, <1>fGXIv31pqv, <1>dplfnpeXIVM3vR82a4, <1>g4ukMt7rga0IPw, <1>RDD0kyw3qdOXm3Lh09nWuzVkkb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>EjmNCRbt1, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2246_PdROExtra_HwStop


<1>grbyd938aDQbwR.        
  ASSUME NEW x \in Xids, NHqB, K2, InFl(x)
  PROVE x < nx
  BY ONLY <1>grbyd938aDQbwR, Sizes, Location, Design, SMT DEF NHqB, Xids, K2, InFl, Sizes, Location, Design


<1>PE2LO6N9uFT6SSfe.        
  ASSUME NEW x \in Xids, NHqB, K1, K2, K3, InFl(x)
  PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>PE2LO6N9uFT6SSfe, Sizes, Location, Design
<2>1. x < nx
  BY <1>grbyd938aDQbwR, Sizes, Location, Design DEF Sizes, Location, Design
<2>0. ~(x >= nx)
  BY <2>1, Sizes, SMT, Location, Design DEF NHqB, Xids, Sizes, Location, Design
<2>2. xk[x] \in {"wr","rd"} /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
    /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>0, Design, Zenon, Sizes, Location DEF K2, Sizes, Location, Design
<2>3. xd[x] \in DInst
  BY <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. iv[x] \notin {"none","nopost"}
  BY Zenon, Sizes, Location, Design DEF K3, InFl, Sizes, Location, Design
<2>5. InitPage(x) # 0
  BY <2>0, <2>4, Zenon, Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>6. xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>0, <2>2, <2>5, Zenon, Sizes, Location, Design DEF K2, ExpPage, InitPage, ExpInst, InitInst, Sizes, Location, Design
<2>7. QED
  BY <2>3, <2>6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dupU4Q0.        
  ASSUME NEW i \in Inst, NEW p \in Pages, IsP(i), Loc(p) = i,
         NHqB, K1, K2, K3
  PROVE NoWriteInto(p)
<2> USE ONLY <1>dupU4Q0, Sizes, Location, Design
<2>1. \A x \in Xids : InFl(x) => Loc(xdst[x]) \in DInst
  BY <1>PE2LO6N9uFT6SSfe, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. i \notin DInst
  BY Sizes, SMT, Location, Design DEF IsP, DInst, Inst, NL, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF NoWriteInto, Writing, Sizes, Location, Design
\* T2M-END R2M2279_PdROBase_PdBDataLemmas

\* T2M-SCOPE R2M2280_PdROBase_PdBXFacts
\* T2M-BODY R2M2280_PdROBase_PdBXFacts
\* T2M-LOCAL-VISIBILITY

<1>kHb.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xsrc[x] \in Pages
  PROVE Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>kHb, Sizes, Location, Design
<2>1. K1 /\ K2 /\ NHqB
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xp[x] = hp[xr[x]][xg[x]]
        /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dkGTct6EsITt5.        
  ASSUME NEW x \in Xids, PinInv, hw[x] = "fly"
  PROVE xsrc[x] \in Pages /\ x \in led[xsrc[x]]
<2> USE ONLY <1>dkGTct6EsITt5, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ NHqB /\ InFl(x)
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, InFl, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, <1>grbyd938aDQbwR, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xst[x] = "posted" /\ iv[x] \in {"posted","failret"}
  BY <2>1, Zenon, Sizes, Location, Design DEF K3, InFl, Sizes, Location, Design
<2>4. xsrc[x] \in Pages
  BY <2>1, <2>2, <2>3, Design, SMT, Sizes, Location DEF K2, InitPage, ExpPage, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF K4, InitPage, ExpPage, Sizes, Location, Design
\* T2M-END R2M2280_PdROBase_PdBXFacts


<1>W9CGEbFDUe.        
  ASSUME NEW x \in Xids, HwStop(x)
  PROVE NlAXTwIvW(x)
  BY ONLY <1>W9CGEbFDUe, Sizes, Location, Design, Design, Zenon DEF HwStop, NlAXTwIvW, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eA7yQzNcumdUm.        
  ASSUME NEW x \in Xids, NEW p \in Pages, PinInv, HwStop(x), NoWriteInto(p)
  PROVE ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p] /\ NoWriteInto(p)'
<2> USE ONLY <1>eA7yQzNcumdUm, Sizes, Location, Design
<2>1. Oet5P /\ toA96a /\ JojO /\ NlAXTwIvW(x) /\ UNCHANGED xdst
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>W9CGEbFDUe, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>3. xdst[x] # p
  BY <2>1, SMT, Sizes, Location, Design DEF NlAXTwIvW, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>4. ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p]
  BY <2>1, <2>3, SMT, Sizes, Location, Design DEF NlAXTwIvW, Oet5P, toA96a, Sizes, Location, Design
<2>5. NoWriteInto(p)'
  BY <2>1, SMT, Sizes, Location, Design DEF NlAXTwIvW, JojO, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>6. QED
  BY <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DmU58uZ3ks15jWs.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE \A p \in Pages : NoWriteInto(p) =>
    ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p] /\ NoWriteInto(p)'
  BY ONLY <1>DmU58uZ3ks15jWs, Sizes, Location, Design, <1>eA7yQzNcumdUm DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TzoFU0M3q.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE \A p \in Pages : IsP(Loc(p)) => ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p]
<2> USE ONLY <1>TzoFU0M3q, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ NHqB
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. \A p \in Pages : IsP(Loc(p)) => NoWriteInto(p)
  BY <2>1, Location, <1>dupU4Q0, SMT, Sizes, Design DEF KPages, Sizes, Location, Design
<2>3. QED
  BY <2>2, <1>DmU58uZ3ks15jWs, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KrNBIGTqiAXpc.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE x < nx /\ xdst[x] \in Pages /\ Held(xdst[x],x)
<2> USE ONLY <1>KrNBIGTqiAXpc, Sizes, Location, Design
<2>1. NHqB /\ K1 /\ K2 /\ K3 /\ NoStrayAccess /\ InFl(x)
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_NoStrayAccess, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Safety, HwStop, InFl, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>grbyd938aDQbwR, <1>PE2LO6N9uFT6SSfe, SMT, Sizes, Location, Design DEF NoStrayAccess, Writing, Sizes, Location, Design
\* T2M-END R2M2666_PdROBase_PdBHwStopEffects


<1>yviLSgCtrZ.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst
  BY ONLY <1>yviLSgCtrZ, Sizes, Location, Design, Location, SMT DEF KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RnL5hSIjI.        
  /\ \A i \in DInst : i \in Inst /\ IsD(i)
  /\ \A i \in PInst : i \in Inst /\ IsP(i)
  /\ \A i \in Inst : IsP(i) \/ IsD(i)
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMT, Location, Design DEF Inst, DInst, PInst, NL, IsD, IsP, Sizes, Location, Design
\* T2M-END R2M2281_PdROBase_PdBRecords


<1>rBJQkiEdi2.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE \E ok \in BOOLEAN :
    /\ (hw[x] = "issued" => ok = hok[x])
    /\ \A y \in Xids : hw'[y] = IF y=x THEN "stop" ELSE hw[y]
    /\ \A y \in Xids : hok'[y] = IF y=x THEN ok ELSE hok[y]
    /\ \A p \in Pages : ptl'[p] = IF p=xdst[x] THEN (IF ok THEN xlt[x] ELSE 0) ELSE ptl[p]
    /\ \A p \in Pages : pvis'[p] = IF p=xdst[x] /\ ok THEN FALSE ELSE pvis[p]
<2> USE ONLY <1>rBJQkiEdi2, Sizes, Location, Design
<2>1. JojO /\ NFMkE /\ Oet5P /\ toA96a /\ NlAXTwIvW(x) /\ Held(xdst[x],x)
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>W9CGEbFDUe, <1>KrNBIGTqiAXpc, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF NlAXTwIvW, JojO, NFMkE, Oet5P, toA96a, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dsojP11ZBBTHI1p.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE \A y \in Xids : (InFl(y)' => InFl(y)) /\ (hw'[y] = "fly" => hw[y] = "fly")
  BY ONLY <1>dsojP11ZBBTHI1p, Sizes, Location, Design, <1>rBJQkiEdi2, SMT DEF InFl, Sizes, Location, Design
\* T2M-END R2M2667_PdROBase_PdBHwStopData

\* T2M-SCOPE R2M2668_PdROBase_PdBHwStopLReadOwnLanded
\* T2M-BODY R2M2668_PdROBase_PdBHwStopLReadOwnLanded
\* T2M-LOCAL-VISIBILITY

<1>tISdDlhnvxhLHCFZw.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>tISdDlhnvxhLHCFZw, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_x \in Xids
                 PROVE (hw[bb_x] = "fly" => (ptl[xsrc[bb_x]] = xlt[bb_x] /\ sfly[xsrc[bb_x]] = {}))'
  BY Sizes, Location, Design DEF BaseSendOwnLanded, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ K1 /\ K2 /\ K3 /\ NHqB
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, soyHJ, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>O8DCAEAnW, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (hw[bb_x] = "fly" => (ptl[xsrc[bb_x]] = xlt[bb_x] /\ sfly[xsrc[bb_x]] = {}))'
  BY <2>1, <2>2, <1>grbyd938aDQbwR, <1>dkGTct6EsITt5, <1>kHb, <1>TzoFU0M3q, <1>dsojP11ZBBTHI1p, <1>yviLSgCtrZ, <1>RnL5hSIjI, Location, Sizes, SMT, Design DEF InFl, IsP, K1, K2, K3, PInst, BaseSendOwnLanded, NHqB, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF BaseSendOwnLanded, Sizes, Location, Design
\* T2M-END R2M2674_PdROBase_PdCHwStopLSendOwnLanded


<1>w9LAkhaL0DeeeIFCZGDG.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE SendOwnLanded'
<2> USE ONLY <1>w9LAkhaL0DeeeIFCZGDG, Sizes, Location, Design
<2>1. BaseSendOwnLanded' BY <1>tISdDlhnvxhLHCFZw, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IF ~B2 THEN TRUE ELSE \A x \in Xids : hw'[x]="fly" => \A p \in xsrcS'[x] \cup xsrcP'[x] : sdata'[p] /\ ~swrite'[p] /\ skey'[p]=STok(xr'[x],xg'[x])
 BY <1>dplfnpeXIVM3vR82a4, <1>Tmky0pBTnVGMtBA0qQxe, <1>XBpdkSVkgCziFlub, <1>K49culthi, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF SendOwnLanded, Sizes, Location, Design
\* T2M-END R2M2675_PdROSafety_HwStop_SendOwnLanded


<1> QED BY <1>TD0TjIl7DKzo87RhU52XXvek, <1>fGXIv31pqv, <1>w9LAkhaL0DeeeIFCZGDG, <1>AyYDzBvzFtPNYhpGxox, <1>v5qNYCnbSzSaaS75tR3l6h6, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_HwStop_02_02 SHA c69d8dd0f04980342996b407be9de4143efc9bb8d9c5c03be5334d8751e8942c
USE DEF V21_Inv_K15, V21_Inv_QuarNoReg, V22_T_hok, V22_T_iv, V22_T_nx, V22_T_pgn, V22_T_pr, V22_T_pst, V22_T_xst
HIDE DEF AuxType_9ef278c147c12b12, Part_HwStop_02_01, V22_T_gen, V22_T_rpgS, V22_T_sentry, V22_T_spst, V22_T_squar
THEOREM Part_HwStop_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE (KReadIntegrity)' /\ (P_SI5)' /\ (P_SI4)' /\ (K15)' /\ (NoStrayAccess)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RO_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


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


           RO_E_xsrcS == xsrcS'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="shared" THEN {RO_Src(x)} ELSE {}) ELSE xsrcS[x]]


           RO_E_xsrcP == xsrcP'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="priv" THEN {RO_Src(x)} ELSE {}) ELSE xsrcP[x]]


           RO_E_sentry == sentry'=(sentry \cup {x \in Xids : RO_Posted(x)}) \ {x \in Xids : RO_Close(x) \/ RO_Quarantine(x)}


           RO_E_squar == squar'=squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RO_Quarantine(x)}})


           RO_E_smap == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           RO_E_schoice == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           RO_E_spst == spst'=[p \in SPages |-> IF \E x \in Xids : RO_Quarantine(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF RO_Drop(p) THEN "free" ELSE IF RO_Ended(p) THEN "drain" ELSE spst[p]]


           RO_E_xprefixOK == xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RO_Valid(x) ELSE xprefixOK[x]]


           RO_E_dpreOK == dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop" THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") => (IF hw[x]="issued" THEN xprefixOK[x] ELSE RO_Valid(x)) ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]


           RO_StableStates == \A p \in SPages : spst[p] \notin {"drain","dup"} => spst'[p]=spst[p]

           \* T2M-LOCAL-VISIBILITY

           RO_ControlStep ==
            /\ \A x \in Xids : iv'[x]=iv[x] \/ iv'[x] \in {"cqe","failret"}
            /\ \A x \in Xids : xst'[x]=xst[x] \/ xst'[x] \in {"landed","failed"}
            /\ \A x \in Xids : hw'[x] \in {"issued","stop"} => hw[x] \in {"fly","issued","stop"}

           \* T2M-LOCAL-VISIBILITY

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

           JSROqizvb(x) ==
             hw[x] \in {"fly", "issued"} /\ \E ok \in (IF hw[x] = "issued" THEN {hok[x]} ELSE BOOLEAN) :
              /\ hw' = [hw EXCEPT ![x] = "stop"] /\ hok' = [hok EXCEPT ![x] = ok]
              /\ ptl' = [ptl EXCEPT ![xdst[x]] = IF Held(xdst[x], x) THEN (IF ok THEN xlt[x] ELSE 0) ELSE -1]
              /\ pvis' = [pvis EXCEPT ![xdst[x]] = IF ok THEN FALSE ELSE @]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_xprefixOK, RO_E_dpreOK, RO_StableStates, RO_ControlStep, RO_SharedFieldsFrame, Ltilk, ckVW, bXD3, XAoD, ZzYU, v7av, Zwf5Kak, UTxM0oD, Btadh0, hgjUtY, DgHrMJ, UDzxF, NN85, FlLc, mCp6f, EfDhA, TO_H, OFH6nV, nU_pl, KRyh, SWs37, Q73Wr, cDvpy, aHUmFg, m0XQV, YAnOjz, owHnyB, Gpa5dVU, f9onk, fwbJ, mnFW, nOWk, Ha9G, f5DU, KZInRS, hq2umu, ROI9_, M7cq, u1j8N, ECDy, q4kPy, doDAh, YN04, kvUux, WsZW22, d654kx, jl8hSJt, XEsGoy, qryMJ, JSROqizvb

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

<1>LQE0C5CV3kHl.        
 ASSUME B2, SFollow
 PROVE RO_E_spst
 BY ONLY <1>LQE0C5CV3kHl, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_spst, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>icyzRs1WpaOrfYqB8.        
 ASSUME B2, SFollow
 PROVE RO_E_xprefixOK
 BY ONLY <1>icyzRs1WpaOrfYqB8, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_xprefixOK, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

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

<1>Fjqj9qY9B4kZ.        
 ASSUME PinInv, UNCHANGED <<ph,smap>>, RO_StableStates
 PROVE SMapIntegrity'
 BY ONLY <1>Fjqj9qY9B4kZ, Sizes, Location, Design, SMTT(10), V21_Inv_KReadIntegrity DEF KReadIntegrity, SMapIntegrity, Active, RO_StableStates, Sizes, Location, Design
\* T2M-END R2M2184_PdROSharedSafety


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

<1>dplfnpeXIVM3vR82a4.        
 ASSUME NEW x \in Xids, HwStop(x)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>dplfnpeXIVM3vR82a4, Sizes, Location, Design, Design, ZenonT(10) DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tmky0pBTnVGMtBA0qQxe.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>Tmky0pBTnVGMtBA0qQxe, Sizes, Location, Design, <1>dplfnpeXIVM3vR82a4, <1>J0yx6oHL5UyrV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qipnHByloD94p9G.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x)
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>qipnHByloD94p9G, Sizes, Location, Design, Design, SMTT(10) DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sUxiuduQWVGBvY84I.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE UNCHANGED <<spst,rpgS>>
 BY ONLY <1>sUxiuduQWVGBvY84I, Sizes, Location, Design, <1>dplfnpeXIVM3vR82a4, <1>qipnHByloD94p9G, <1>rUEzU8wbH, <1>JJE0Tfox9Q, <1>yFQ846plk6kJ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ak9608JcJ6ue5h.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x)
 PROVE \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
<2> USE ONLY <1>Ak9608JcJ6ue5h, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Ak9608JcJ6ue5h, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XBpdkSVkgCziFlub.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x)
 PROVE \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
<2> USE ONLY <1>XBpdkSVkgCziFlub, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>XBpdkSVkgCziFlub, V22_T_hw, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k3OzRIJg1MZtWjzn.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x)
 PROVE \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
<2> USE ONLY <1>k3OzRIJg1MZtWjzn, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>k3OzRIJg1MZtWjzn, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D9Xq67JUjjubMZxJ.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x)
 PROVE \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
<2> USE ONLY <1>D9Xq67JUjjubMZxJ, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>D9Xq67JUjjubMZxJ, V22_T_iv, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tphQHXLBjhGxkh.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x)
 PROVE /\ \A z \in Xids : iv'[z]=iv[z] \/ iv'[z] \in {"cqe","failret"}
       /\ \A z \in Xids : xst'[z]=xst[z] \/ xst'[z] \in {"landed","failed"}
       /\ \A z \in Xids : hw'[z] \in {"issued","stop"} => hw[z] \in {"fly","issued","stop"}
<2> USE ONLY <1>tphQHXLBjhGxkh, Sizes, Location, Design
<2>1. K3 /\ hw \in [Xids -> {"none","fly","issued","stop"}]
       /\ iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
       /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>tphQHXLBjhGxkh, V22_T_hw, V22_T_iv, V22_T_xst, V21_Inv_K3, Sizes, Location, Design, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Fm5XpuqFG6waCfcPcd.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x)
 PROVE \A z \in Xids : hw'[z]="fly" => ~RO_Close(z)
<2> USE ONLY <1>Fm5XpuqFG6waCfcPcd, Sizes, Location, Design
<2>1. K3 /\ hw \in [Xids -> {"none","fly","issued","stop"}]
       /\ iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
       /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Fm5XpuqFG6waCfcPcd, V22_T_hw, V22_T_iv, V22_T_xst, V21_Inv_K3, Sizes, Location, Design, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwStop, ghV, instV, kV, recV, rtV, RO_Close, K3, InFl, CqeHw, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H8tL4TrT3XStNvPRK.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x)
 PROVE \A z \in Xids : (hw'[z]="stop" /\ hok'[z] /\ xdst[z] \in Pages /\ Held(xdst[z],z)') =>
       ((hw[z]="stop" /\ hok[z] /\ Held(xdst[z],z)) \/ hw[z] \in {"fly","issued"})
<2> USE ONLY <1>H8tL4TrT3XStNvPRK, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
       /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
       /\ hw \in [Xids -> {"none","fly","issued","stop"}] /\ hok \in [Xids -> BOOLEAN]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>H8tL4TrT3XStNvPRK, V22_T_hok, V22_T_hw, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwStop, ghV, instV, kV, recV, rtV, Held, Sizes, Location, Design
\* T2M-END R2M2243_PdROEffects_HwStop


<1>VjsXrQaxUcu9.        
 ASSUME PinInv, SFollow, B2, RO_ControlStep
 PROVE \A x \in Xids : hw'[x] \in {"issued","stop"} => xprefixOK'[x]
<2> USE ONLY <1>VjsXrQaxUcu9, Sizes, Location, Design
<2>1. SI4 /\ RO_E_xprefixOK BY <1>pDDs2iPJ6v1, <1>icyzRs1WpaOrfYqB8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>G62OMB7v6XF, SMTT(10), Sizes, Location, Design DEF SI4, RO_E_xprefixOK, RO_ControlStep, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RP8AheTgvoO.        
 ASSUME PinInv, SFollow, B2, UNCHANGED <<xsrc,xsrcS>>,
        \A x \in Xids : hw'[x]="fly" => hw[x]="fly",
        \A x \in Xids : hw'[x]="fly" => ~RO_Close(x)
 PROVE \A x \in Xids : hw'[x]="fly" => x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
<2> USE ONLY <1>RP8AheTgvoO, Sizes, Location, Design
<2>1. SI4 BY <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ASSUME NEW x \in Xids, hw'[x]="fly"
       PROVE x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
 <3>1. hw[x]="fly" /\ ~RO_Close(x) BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
 BY <2>1, <3>1, ZenonT(10), Sizes, Location, Design DEF SI4, Sizes, Location, Design
 <3>3. QED BY <3>1, <3>2, <1>bneczW3Qjs8bDyTc, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>S9kRK0leNkDm.        
 ASSUME PinInv, SFollow, RO_ControlStep,
        UNCHANGED <<xsrc,xsrcS,xsrcP,xk,xp,xr,xg,nx,skey>>, RO_StableStates,
        \A x \in Xids : hw'[x]="fly" => hw[x]="fly",
        \A x \in Xids : hw'[x]="fly" => ~RO_Close(x)
 PROVE P_SI4'
<2> USE ONLY <1>S9kRK0leNkDm, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI4 /\ STypeOK /\ RO_E_sentry /\ (\A x \in Xids : ~RO_Posted(x)) BY <2>2, <1>pDDs2iPJ6v1, <1>oVMEMsT8gqQqbk, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A x \in sentry' : x \in sentry /\ ~RO_Close(x) /\ ~RO_Quarantine(x)
 BY <3>1, SMTT(10), Sizes, Location, Design DEF RO_E_sentry, STypeOK, Sizes, Location, Design
 <3>3. \A x \in Xids : x \in sentry' => (IF xk'[x]="wr" THEN iv'[x] \in {"reg","posted","failret"} ELSE xst'[x]="posted")
 BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SI4, RO_Close, RO_ControlStep, Sizes, Location, Design
 <3>4. \A x \in Xids : hw'[x]="fly" => x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
 BY <2>2, <1>RP8AheTgvoO, Sizes, Location, Design DEF Sizes, Location, Design
 <3>5. \A x \in Xids : hw'[x] \in {"issued","stop"} => xprefixOK'[x]
 BY <2>2, <1>VjsXrQaxUcu9, Sizes, Location, Design DEF Sizes, Location, Design
 <3>6. QED BY <2>2, <3>1, <3>2, <3>3, <3>4, <3>5, SMTT(10), Sizes, Location, Design DEF P_SI4, SI4, STypeOK, RO_StableStates, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LR4QDO8J.        
 ASSUME PinInv, SFollow, B2, NEW p \in Pages,
        \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
 PROVE dpreOK'[p]
<2> USE ONLY <1>LR4QDO8J, Sizes, Location, Design
<2>1. SI4 /\ RO_E_dpreOK BY <1>pDDs2iPJ6v1, <1>kgOzghpuDBjlN1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A x \in Xids : hw[x]="issued" => xprefixOK[x]
 BY <2>1, ZenonT(10), Sizes, Location, Design DEF SI4, Sizes, Location, Design
<2>3. \A x \in Xids : hw[x]="fly" => RO_Valid(x) BY <1>G62OMB7v6XF, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF RO_E_dpreOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cU8s9xOg0OyR.        
 ASSUME PinInv, SFollow, RO_ControlStep,
        UNCHANGED <<ph,rg,smap,xsrc,xsrcS,xsrcP,xr,xg,xk,xdst,nx,skey>>, RO_StableStates,
        \A x \in Xids : iv'[x]="reg" => ~RO_Quarantine(x),
        \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free"),
        \A x \in Xids : (hw'[x]="stop" /\ hok'[x] /\ xdst[x] \in Pages /\ Held(xdst[x],x)') =>
          ((hw[x]="stop" /\ hok[x] /\ Held(xdst[x],x)) \/ hw[x] \in {"fly","issued"})
 PROVE P_SI5'
<2> USE ONLY <1>cU8s9xOg0OyR, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI5, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI4 /\ SI5 /\ STypeOK /\ SMapIntegrity /\ RO_E_squar BY <2>2, <1>pDDs2iPJ6v1, <1>lIuyiSzJ58zq2, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A h \in squar' : h \in squar \/ (\E x \in Xids : \E p \in xsrcS[x] : h= <<x,p>> /\ RO_Quarantine(x))
 BY <3>1, SMTT(10), Sizes, Location, Design DEF RO_E_squar, Sizes, Location, Design
 <3>3. \A h \in squar' : h[1]<nx' /\ h[2] \in xsrcS'[h[1]] /\ spst'[h[2]]="shared" /\ skey'[h[2]]=STok(xr'[h[1]],xg'[h[1]]) /\ iv'[h[1]] # "reg"
 BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SI4, SI5, STypeOK, RO_Quarantine, RO_ControlStep, RO_StableStates, Sizes, Location, Design
 <3>4. \A x \in Xids : (hw'[x]="stop" /\ hok'[x] /\ xdst'[x] \in Pages /\ Held(xdst[x],x)') => dpreOK'[xdst'[x]]
 BY <2>2, <3>1, <1>LR4QDO8J, <1>RDpDVaE3CTJB, SMTT(10), Sizes, Location, Design DEF SI5, Sizes, Location, Design
 <3>5. QED BY <2>2, <3>1, <3>3, <3>4, ZenonT(10), Sizes, Location, Design DEF P_SI5, SI5, Active, RO_StableStates, SMapIntegrity, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2188_PdROSharedFive


<1>GbBmHSPGiG.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE P_SI4'
 BY ONLY <1>GbBmHSPGiG, Sizes, Location, Design, <1>tphQHXLBjhGxkh, <1>dplfnpeXIVM3vR82a4, <1>Tmky0pBTnVGMtBA0qQxe, <1>sUxiuduQWVGBvY84I, <1>jGg3R, <1>XBpdkSVkgCziFlub, <1>Fm5XpuqFG6waCfcPcd, <1>S9kRK0leNkDm DEF RO_ControlStep, RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rrxiWCDYLZ.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE P_SI5'
 BY ONLY <1>rrxiWCDYLZ, Sizes, Location, Design, <1>tphQHXLBjhGxkh, <1>dplfnpeXIVM3vR82a4, <1>Tmky0pBTnVGMtBA0qQxe, <1>sUxiuduQWVGBvY84I, <1>jGg3R, <1>D9Xq67JUjjubMZxJ, <1>k3OzRIJg1MZtWjzn, <1>FVK4MYGoOHs3gti, <1>Ak9608JcJ6ue5h, <1>H8tL4TrT3XStNvPRK, <1>cU8s9xOg0OyR DEF RO_ControlStep, RO_StableStates, Sizes, Location, Design

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


<1>JdNdQ3cqq.        
  ASSUME NEW x \in Xids, HwStop(x)
  , RO_SharedFieldsFrame
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>JdNdQ3cqq, Sizes, Location, Design, Zenon DEF HwStop, ghV, instV, kV, pgV, recV, rtV, vars, xV, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OZlUbWexrUAisB.        
  ASSUME NEW x \in Xids, YN04, K2, InFl(x)
  , RO_SharedFieldsFrame
 PROVE x < nx
  BY ONLY <1>OZlUbWexrUAisB, Sizes, Location, Design, SMT DEF YN04, Xids, K2, InFl, RO_SharedFieldsFrame, Sizes, Location, Design


<1>tAlUylw7LYnIreiB.        
  ASSUME NEW x \in Xids, YN04, K1, K2, K3, InFl(x)
  , RO_SharedFieldsFrame
 PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>tAlUylw7LYnIreiB, Sizes, Location, Design
<2>1. x < nx
  BY <1>OZlUbWexrUAisB, Sizes, Location, Design DEF Sizes, Location, Design
<2>0. ~(x >= nx)
  BY <2>1, Sizes, SMT, Location, Design DEF YN04, Xids, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. xk[x] \in {"wr","rd"} /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
    /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>0, Design, Zenon, Sizes, Location DEF K2, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. xd[x] \in DInst
  BY <2>2, SMT, Sizes, Location, Design DEF K1, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. iv[x] \notin {"none","nopost"}
  BY Zenon, Sizes, Location, Design DEF K3, InFl, RO_SharedFieldsFrame, Sizes, Location, Design
<2>5. InitPage(x) # 0
  BY <2>0, <2>4, Zenon, Sizes, Location, Design DEF K2, RO_SharedFieldsFrame, Sizes, Location, Design
<2>6. xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>0, <2>2, <2>5, Zenon, Sizes, Location, Design DEF K2, ExpPage, InitPage, ExpInst, InitInst, RO_SharedFieldsFrame, Sizes, Location, Design
<2>7. QED
  BY <2>3, <2>6, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2591_PdRORead_PdBDataLemmas

\* T2M-SCOPE R2M2592_PdRORead_PdBXFacts
\* T2M-BODY R2M2592_PdRORead_PdBXFacts
\* T2M-LOCAL-VISIBILITY

<1>en70LXcAI4.        
  ASSUME NEW x \in Xids, HwStop(x)
  , RO_SharedFieldsFrame
 PROVE JSROqizvb(x)
  BY ONLY <1>en70LXcAI4, Sizes, Location, Design, Design, Zenon DEF HwStop, JSROqizvb, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Wgp95ez2KVjGW.        
  ASSUME NEW x \in Xids, NEW p \in Pages, PinInv, HwStop(x), NoWriteInto(p)
  , RO_SharedFieldsFrame
 PROVE ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p] /\ NoWriteInto(p)'
<2> USE ONLY <1>Wgp95ez2KVjGW, Sizes, Location, Design
<2>1. cDvpy /\ aHUmFg /\ M7cq /\ JSROqizvb(x) /\ UNCHANGED xdst
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, <1>en70LXcAI4, <1>JdNdQ3cqq, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. xdst[x] # p
  BY <2>1, SMT, Sizes, Location, Design DEF JSROqizvb, NoWriteInto, Writing, InFl, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p]
  BY <2>1, <2>3, SMT, Sizes, Location, Design DEF JSROqizvb, cDvpy, aHUmFg, RO_SharedFieldsFrame, Sizes, Location, Design
<2>5. NoWriteInto(p)'
  BY <2>1, SMT, Sizes, Location, Design DEF JSROqizvb, M7cq, NoWriteInto, Writing, InFl, RO_SharedFieldsFrame, Sizes, Location, Design
<2>6. QED
  BY <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ObrUJ4aB0szc0.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  , RO_SharedFieldsFrame
 PROVE x < nx /\ xdst[x] \in Pages /\ Held(xdst[x],x)
<2> USE ONLY <1>ObrUJ4aB0szc0, Sizes, Location, Design
<2>1. YN04 /\ K1 /\ K2 /\ K3 /\ NoStrayAccess /\ InFl(x)
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_NoStrayAccess, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Safety, HwStop, InFl, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>OZlUbWexrUAisB, <1>tAlUylw7LYnIreiB, SMT, Sizes, Location, Design DEF NoStrayAccess, Writing, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2593_PdRORead_PdBHwStopEffects


<1>jv1GzKO.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW e, UDzxF, e \in krs[i][s]
  , RO_SharedFieldsFrame
 PROVE e[1] \in Rq /\ e[2] \in Gens /\ e[3] \in KPages /\ e[4] \in {0,1,2,3,4}
  BY ONLY <1>jv1GzKO, Sizes, Location, Design, SMT DEF UDzxF, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RbdlkJN4.        
  ASSUME PinInv
  , RO_SharedFieldsFrame
 PROVE \A i \in Inst, s \in KSlots : \A e \in krs[i][s] :
    e[1] \in Rq /\ e[2] \in Gens /\ e[3] \in KPages /\ e[4] \in {0,1,2,3,4}
<2> USE ONLY <1>RbdlkJN4, Sizes, Location, Design
<2>1. UDzxF
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>jv1GzKO, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mL0YLvDBn4.        
  ASSUME NEW p \in Pages
  , RO_SharedFieldsFrame
 PROVE Loc(p) \in Inst
  BY ONLY <1>mL0YLvDBn4, Sizes, Location, Design, Location, SMT DEF KPages, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Mp85qPnu6.        
 ASSUME RO_SharedFieldsFrame
 PROVE /\ \A i \in DInst : i \in Inst /\ IsD(i)
  /\ \A i \in PInst : i \in Inst /\ IsP(i)
  /\ \A i \in Inst : IsP(i) \/ IsD(i)
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY ONLY <1>Mp85qPnu6, Sizes, Location, Design, Sizes, SMT DEF Inst, DInst, PInst, NL, IsD, IsP, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2594_PdRORead_PdBRecords


<1>P5LBnTXteg.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  , RO_SharedFieldsFrame
 PROVE \E ok \in BOOLEAN :
    /\ (hw[x] = "issued" => ok = hok[x])
    /\ \A y \in Xids : hw'[y] = IF y=x THEN "stop" ELSE hw[y]
    /\ \A y \in Xids : hok'[y] = IF y=x THEN ok ELSE hok[y]
    /\ \A p \in Pages : ptl'[p] = IF p=xdst[x] THEN (IF ok THEN xlt[x] ELSE 0) ELSE ptl[p]
    /\ \A p \in Pages : pvis'[p] = IF p=xdst[x] /\ ok THEN FALSE ELSE pvis[p]
<2> USE ONLY <1>P5LBnTXteg, Sizes, Location, Design
<2>1. M7cq /\ u1j8N /\ cDvpy /\ aHUmFg /\ JSROqizvb(x) /\ Held(xdst[x],x)
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, <1>en70LXcAI4, <1>ObrUJ4aB0szc0, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF JSROqizvb, M7cq, u1j8N, cDvpy, aHUmFg, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>w3ZvwI67jgIkFyx.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  , RO_SharedFieldsFrame
 PROVE \A y \in Xids : (InFl(y)' => InFl(y)) /\ (hw'[y] = "fly" => hw[y] = "fly")
  BY ONLY <1>w3ZvwI67jgIkFyx, Sizes, Location, Design, <1>P5LBnTXteg, SMT DEF InFl, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zmxnuL1at1KZZV.        
  ASSUME NEW x \in Xids, NEW i, NEW e, PinInv, HwStop(x), e[3] \in KPages, KData(i,e), RO_SharedFieldsFrame
  PROVE KData(i,e)'
<2> USE ONLY <1>zmxnuL1at1KZZV, Sizes, Location, Design
<2>1. NoWriteInto(e[3]) BY Sizes, Location, Design DEF KData, Sizes, Location, Design
<2>2. NoWriteInto(e[3])'
 BY <2>1, <1>w3ZvwI67jgIkFyx, <1>JdNdQ3cqq, SMT, Sizes, Location, Design DEF NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>3. CASE e[3] \in SPages
 BY <2>3, <2>2, SMT, Sizes, Location, Design DEF KData, SData, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. CASE e[3] \notin SPages
 <3>1. e[3] \in Pages BY <2>4, Sizes, Location, Design DEF KPages, Sizes, Location, Design
 <3>2. ptl'[e[3]]=ptl[e[3]] /\ pvis'[e[3]]=pvis[e[3]] /\ UNCHANGED <<plt,sfly>>
 BY <3>1, <2>1, <1>Wgp95ez2KVjGW, <1>JdNdQ3cqq, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>4, <2>2, <3>2, SMT, Sizes, Location, Design DEF KData, SData, RO_SharedFieldsFrame, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2595_PdRORead_PdBHwStopData

\* T2M-SCOPE R2M2596_PdRORead_PdBHwStopLK15
\* T2M-BODY R2M2596_PdRORead_PdBHwStopLK15
\* T2M-LOCAL-VISIBILITY

<1>X3vKYgG.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  , RO_SharedFieldsFrame
 PROVE K15'
<2> USE ONLY <1>X3vKYgG, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_i \in Inst, NEW bb_s \in KSlots
                 PROVE (kpin[bb_i][bb_s] => \A e \in krs[bb_i][bb_s] :
         /\ KData(bb_i, e)
         /\ (IsD(bb_i) /\ e[4] # 1) => led[e[3]] = {}   
         /\ (IsP(bb_i) /\ e[3] \in Pages) => sled[e[3]] = {})'
  BY Sizes, Location, Design DEF K15, RO_SharedFieldsFrame, Sizes, Location, Design
<2>1. K15
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_BaseSafety, V21_Inv_K15, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, qryMJ, BaseSafety, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>JdNdQ3cqq, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (kpin[bb_i][bb_s] => \A e \in krs[bb_i][bb_s] :
         /\ KData(bb_i, e)
         /\ (IsD(bb_i) /\ e[4] # 1) => led[e[3]] = {}   
         /\ (IsP(bb_i) /\ e[3] \in Pages) => sled[e[3]] = {})'
  BY <2>1, <2>2, <1>zmxnuL1at1KZZV, <1>RbdlkJN4, <1>mL0YLvDBn4, <1>Mp85qPnu6, Location, Sizes, SMT, Design DEF K15, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K15, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2596_PdRORead_PdBHwStopLK15


<1>mcDiuBVPuB.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE K15'
<2> USE ONLY <1>mcDiuBVPuB, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>sUxiuduQWVGBvY84I, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. K15'
 BY <2>1, <1>X3vKYgG, <1>w1A6qbKTB1, V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2597_PdROReadCell_HwStop_K15


<1>YQSryxoIBsK6ufsemF.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  , RO_SharedFieldsFrame
 PROVE BaseKReadIntegrity'
<2> USE ONLY <1>YQSryxoIBsK6ufsemF, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW i \in Inst, NEW s \in KSlots,
                    NEW e \in krs[i][s]
              PROVE kfly[i][s] => Loc(e[3]) = i /\ KHeld(e)' /\ KData(i,e)'
  BY <1>JdNdQ3cqq, Sizes, Location, Design DEF BaseKReadIntegrity, RO_SharedFieldsFrame, Sizes, Location, Design
<2>1. kfly[i][s] => Loc(e[3]) = i /\ KHeld(e) /\ KData(i,e)
  BY <1>BVNGgr9i2, SMT, V21_Inv_BaseSafety, V21_Inv_Safety, Sizes, Location, Design DEF Safety, BaseKReadIntegrity, BaseSafety, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. e[3] \in KPages
  BY <1>RbdlkJN4, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. kfly[i][s] => KData(i,e)'
  BY <2>1, <2>2, <1>zmxnuL1at1KZZV, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. kfly[i][s] => KHeld(e)'
  BY <2>1, <1>JdNdQ3cqq, Zenon, Sizes, Location, Design DEF KHeld, SHeld, KPages, RO_SharedFieldsFrame, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2598_PdRORead_PdCHwStopLKReadIntegrity


<1>VKoQy4QokOnK11I7KaLlj.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>VKoQy4QokOnK11I7KaLlj, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>sUxiuduQWVGBvY84I, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. BaseKReadIntegrity'
 BY <2>1, <1>YQSryxoIBsK6ufsemF, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. SMapIntegrity' BY <1>dplfnpeXIVM3vR82a4, <1>Tmky0pBTnVGMtBA0qQxe, <1>sUxiuduQWVGBvY84I, <1>Fjqj9qY9B4kZ, Sizes, Location, Design DEF RO_StableStates, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2599_PdROReadCell_HwStop_KReadIntegrity


<1>kp8nWKiENx8tl9tEE.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  , RO_SharedFieldsFrame
 PROVE NoStrayAccess'
<2> USE ONLY <1>kp8nWKiENx8tl9tEE, Sizes, Location, Design
<2>1. NoStrayAccess
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_KStruct, V21_Inv_NoStrayAccess, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>JdNdQ3cqq, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (\A x \in Xids : Writing(x) => Held(xdst[x], x))'
  BY <2>1, <2>2, <1>w3ZvwI67jgIkFyx, <1>mL0YLvDBn4, <1>Mp85qPnu6, Location, Sizes, SMT, Design DEF Held, InFl, KHeld, NoStrayAccess, Writing, SHeld, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. (\A x \in Xids : hw[x] = "fly" => Held(xsrc[x], x))'
  BY <2>1, <2>2, <1>w3ZvwI67jgIkFyx, <1>mL0YLvDBn4, <1>Mp85qPnu6, Location, Sizes, SMT, Design DEF Held, InFl, KHeld, NoStrayAccess, Writing, SHeld, RO_SharedFieldsFrame, Sizes, Location, Design
<2>5. (\A p \in Pages : \A t \in sfly[p] :
        \/ pst[p] \in {"priv", "drain", "quar"} /\ pr[p] = t[1] /\ pgn[p] = t[2]
        \/ pst[p] = "shared" /\ IsD(Loc(p)))'
  BY <2>1, <2>2, <1>w3ZvwI67jgIkFyx, <1>mL0YLvDBn4, <1>Mp85qPnu6, Location, Sizes, SMT, Design DEF Held, InFl, KHeld, NoStrayAccess, Writing, SHeld, RO_SharedFieldsFrame, Sizes, Location, Design
<2>6. (\A i \in Inst, s \in KSlots : kfly[i][s] => \A e \in krs[i][s] : KHeld(e))'
  BY <2>1, <2>2, <1>w3ZvwI67jgIkFyx, <1>mL0YLvDBn4, <1>Mp85qPnu6, Location, Sizes, SMT, Design DEF Held, InFl, KHeld, NoStrayAccess, Writing, SHeld, RO_SharedFieldsFrame, Sizes, Location, Design
<2>7. QED
  BY <2>3, <2>4, <2>5, <2>6, Sizes, Location, Design DEF NoStrayAccess, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2601_PdRORead_PdBHwStopLNoStrayAccess


<1>QwBx495uY8Zd05MHhHtc.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE NoStrayAccess'
<2> USE ONLY <1>QwBx495uY8Zd05MHhHtc, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>sUxiuduQWVGBvY84I, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. NoStrayAccess'
 BY <2>1, <1>kp8nWKiENx8tl9tEE, <1>w1A6qbKTB1, V21_Inv_NoStrayAccess, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2602_PdROReadCell_HwStop_NoStrayAccess


<1> QED BY <1>VKoQy4QokOnK11I7KaLlj, <1>rrxiWCDYLZ, <1>GbBmHSPGiG, <1>mcDiuBVPuB, <1>QwBx495uY8Zd05MHhHtc, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_HwStop_03_01 SHA d13349a5e5e0ad5d3b93ef31b09d34f792a3b8470c9f07b51d3377197ccb08a5
USE DEF V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_SI8, V22_T_gen, V22_T_rpgS, V22_T_sentry, V22_T_spst, V22_T_squar
HIDE DEF Part_HwStop_02_02, V21_Inv_BaseSafety, V21_Inv_K15, V21_Inv_K4, V21_Inv_NoEvictUnderRDMA, V21_Inv_QuarNoReg, V22_T_hok, V22_T_hw, V22_T_iv, V22_T_nx, V22_T_pgn, V22_T_pr, V22_T_pst
THEOREM Part_HwStop_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE (K12)' /\ (P_SI1)' /\ (HitIdentity)' /\ (P_SI6)' /\ (NoFreeUnderRead)' /\ (PrefcMatchesHolders)' /\ (SI8)'
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

           MsgC1(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])


           MsgC2(m) == m.t = "hello" => m.fr \in Inst


           MsgC3(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))


           MsgC4(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))


           MsgC5(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])


           MsgC6(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])


           MsgC7(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")


           MsgC8(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)


           MsgC9(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))


           MsgC10(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))


           MsgSafe(m) ==
             /\ MsgC1(m)
             /\ MsgC2(m)
             /\ MsgC3(m)
             /\ MsgC4(m)
             /\ MsgC5(m)
             /\ MsgC6(m)
             /\ MsgC7(m)
             /\ MsgC8(m)
             /\ MsgC9(m)
             /\ MsgC10(m)

           \* T2M-LOCAL-VISIBILITY

           BE_HwStop(x) ==
             hw[x] \in {"fly", "issued"} /\ \E ok \in (IF hw[x] = "issued" THEN {hok[x]} ELSE BOOLEAN) :
              /\ hw' = [hw EXCEPT ![x] = "stop"] /\ hok' = [hok EXCEPT ![x] = ok]
              /\ ptl' = [ptl EXCEPT ![xdst[x]] = IF Held(xdst[x], x) THEN (IF ok THEN xlt[x] ELSE 0) ELSE -1]
              /\ pvis' = [pvis EXCEPT ![xdst[x]] = IF ok THEN FALSE ELSE @]

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


           RO_PinGrows == /\ \A p \in SPages : SPin(p) => RO_Pin(p)
                          /\ \A h \in rpgS : SHPin(h) => RO_HPin(h)


           RO_E_rpgS == rpgS'={h \in rpgS : RO_HLive(h) \/ (RO_HPin(h) /\ Mut # "unrefBeforeKDone")}


           RO_E_xsrcS == xsrcS'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="shared" THEN {RO_Src(x)} ELSE {}) ELSE xsrcS[x]]


           RO_E_xsrcP == xsrcP'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="priv" THEN {RO_Src(x)} ELSE {}) ELSE xsrcP[x]]


           RO_E_sentry == sentry'=(sentry \cup {x \in Xids : RO_Posted(x)}) \ {x \in Xids : RO_Close(x) \/ RO_Quarantine(x)}


           RO_E_squar == squar'=squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RO_Quarantine(x)}})


           RO_E_smap == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           RO_E_schoice == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           RO_E_spst == spst'=[p \in SPages |-> IF \E x \in Xids : RO_Quarantine(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF RO_Drop(p) THEN "free" ELSE IF RO_Ended(p) THEN "drain" ELSE spst[p]]


           RO_E_sprefc == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)+SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

           \* T2M-LOCAL-VISIBILITY

           RO_Flat(e) == <<e[1][1],e[1][2],e[2][1],e[2][2]>>

           \* T2M-LOCAL-VISIBILITY

           RO_StableStates == \A p \in SPages : spst[p] \notin {"drain","dup"} => spst'[p]=spst[p]

           \* T2M-LOCAL-VISIBILITY

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

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, MsgC1, MsgC2, MsgC3, MsgC4, MsgC5, MsgC6, MsgC7, MsgC8, MsgC9, MsgC10, MsgSafe, BE_HwStop, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_sprefc, RO_Flat, RO_StableStates, RO_SharedFieldsFrame, Ltilk, ckVW, bXD3, XAoD, ZzYU, v7av, Zwf5Kak, UTxM0oD, Btadh0, hgjUtY, DgHrMJ, UDzxF, NN85, FlLc, mCp6f, EfDhA, TO_H, OFH6nV, nU_pl, KRyh, SWs37, Q73Wr, cDvpy, aHUmFg, m0XQV, YAnOjz, owHnyB, Gpa5dVU, f9onk, fwbJ, mnFW, nOWk, Ha9G, f5DU, KZInRS, hq2umu, ROI9_, M7cq, u1j8N, ECDy, q4kPy, doDAh, YN04, kvUux, WsZW22, d654kx, jl8hSJt, XEsGoy, qryMJ

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SXJT0yI47i.         K12 <=> (\A m \in net : MsgSafe(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, MsgSafe, MsgC1, MsgC2, MsgC3, MsgC4, MsgC5, MsgC6, MsgC7, MsgC8, MsgC9, MsgC10, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>j4cViHN.         (\A m \in net' : MsgSafe(m)') => K12'
  BY ZenonT(5), Sizes, Location, Design DEF K12, MsgSafe, MsgC1, MsgC2, MsgC3, MsgC4, MsgC5, MsgC6, MsgC7, MsgC8, MsgC9, MsgC10, Sizes, Location, Design
\* T2M-END R2M0002_PP_PdMessagePred


<1>er8h7LTgB.        
  ASSUME NEW m, MsgC1(m), UNCHANGED <<gen>>
  PROVE MsgC1(m)'
  BY ONLY <1>er8h7LTgB, Sizes, Location, Design, SMT DEF MsgC1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qR3zi2Kot.        
  ASSUME NEW m, MsgC2(m), UNCHANGED <<>>
  PROVE MsgC2(m)'
  BY ONLY <1>qR3zi2Kot, Sizes, Location, Design, SMT DEF MsgC2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iwCbGtypi.        
  ASSUME NEW m, MsgC3(m), UNCHANGED <<hd, hp>>
  PROVE MsgC3(m)'
  BY ONLY <1>iwCbGtypi, Sizes, Location, Design, SMT DEF MsgC3, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KW37GlVHp.        
  ASSUME NEW m, MsgC4(m), UNCHANGED <<hd, hp, nx, xdst, xg, xr>>
  PROVE MsgC4(m)'
  BY ONLY <1>KW37GlVHp, Sizes, Location, Design, SMT DEF MsgC4, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>riDVFru1C.        
  ASSUME NEW m, MsgC5(m), UNCHANGED <<hd, hp, nx, xg, xlt, xr, xsrc>>
  PROVE MsgC5(m)'
  BY ONLY <1>riDVFru1C, Sizes, Location, Design, SMT DEF MsgC5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NVfHoP77L.        
  ASSUME NEW m, MsgC7(m), UNCHANGED <<iv, nx, xg, xr>>
  PROVE MsgC7(m)'
  BY ONLY <1>NVfHoP77L, Sizes, Location, Design, SMT DEF MsgC7, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>K5z0brpMw.        
  ASSUME NEW m, MsgC8(m), UNCHANGED <<nx, xg, xr>>
  PROVE MsgC8(m)'
  BY ONLY <1>K5z0brpMw, Sizes, Location, Design, SMT DEF MsgC8, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cCAxb5Pyj9.        
  ASSUME NEW m, MsgC10(m), UNCHANGED <<drep, dsucc, hd>>
  PROVE MsgC10(m)'
  BY ONLY <1>cCAxb5Pyj9, Sizes, Location, Design, SMT DEF MsgC10, Sizes, Location, Design
\* T2M-END R2M0238_PK4_PdBFrames

\* T2M-SCOPE R2M0239_PK4_PdCMsgDomain
\* T2M-BODY R2M0239_PK4_PdCMsgDomain
\* T2M-LOCAL-VISIBILITY

<1>A3cRtHRvDJny.        
  ASSUME MsgXDomain, NEW m \in net,
    m.t \in {"sinfo","notice","nopost","revoke","relsrc"}
  PROVE m.x \in Xids
  BY ONLY <1>A3cRtHRvDJny, Sizes, Location, Design, SMT DEF MsgXDomain, Sizes, Location, Design

\* MsgU => domain is a proposal obligation, not assumed or asserted here.
\* T2M-END R2M0239_PK4_PdCMsgDomain


<1>VSZSLpL12.        
  ASSUME NEW x \in Xids, HwStop(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>VSZSLpL12, Sizes, Location, Design, Zenon DEF HwStop, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M0248_PK4_PdBHwStopFrames


<1>jSSxDzYQQXnG2O.        
  ASSUME NEW x \in Xids, T_nx, K2, InFl(x)
  PROVE x < nx
  BY ONLY <1>jSSxDzYQQXnG2O, Sizes, Location, Design, SMT DEF T_nx, Xids, K2, InFl, Sizes, Location, Design


<1>AnqI1nO2Qlfvi4jy.        
  ASSUME NEW x \in Xids, T_nx, K1, K2, K3, InFl(x)
  PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>AnqI1nO2Qlfvi4jy, Sizes, Location, Design
<2>1. x < nx
  BY <1>jSSxDzYQQXnG2O, Sizes, Location, Design DEF Sizes, Location, Design
<2>0. ~(x >= nx)
  BY <2>1, Sizes, SMT, Location, Design DEF T_nx, Xids, Sizes, Location, Design
<2>2. xk[x] \in {"wr","rd"} /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
    /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>0, Design, Zenon, Sizes, Location DEF K2, Sizes, Location, Design
<2>3. xd[x] \in DInst
  BY <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. iv[x] \notin {"none","nopost"}
  BY Zenon, Sizes, Location, Design DEF K3, InFl, Sizes, Location, Design
<2>5. InitPage(x) # 0
  BY <2>0, <2>4, Zenon, Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>6. xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>0, <2>2, <2>5, Zenon, Sizes, Location, Design DEF K2, ExpPage, InitPage, ExpInst, InitInst, Sizes, Location, Design
<2>7. QED
  BY <2>3, <2>6, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0249_PK4_PdBDataLemmas

\* T2M-SCOPE R2M0250_PK4_PdBXFacts
\* T2M-BODY R2M0250_PK4_PdBXFacts

\* T2M-END R2M0250_PK4_PdBXFacts


<1>BmaMuk7xV6.        
  ASSUME NEW x \in Xids, HwStop(x)
  PROVE BE_HwStop(x)
  BY ONLY <1>BmaMuk7xV6, Sizes, Location, Design, Design, Zenon DEF HwStop, BE_HwStop, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fgrMK3Ufbxbl9.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE x < nx /\ xdst[x] \in Pages /\ Held(xdst[x],x)
<2> USE ONLY <1>fgrMK3Ufbxbl9, Sizes, Location, Design
<2>1. T_nx /\ K1 /\ K2 /\ K3 /\ NoStrayAccess /\ InFl(x)
  BY <1>g4u1JVDPkX, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_NoStrayAccess, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Safety, HwStop, InFl, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>jSSxDzYQQXnG2O, <1>AnqI1nO2Qlfvi4jy, SMT, Sizes, Location, Design DEF NoStrayAccess, Writing, Sizes, Location, Design
\* T2M-END R2M0251_PK4_PdBHwStopEffects


<1>a36JYV7Vz4.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE \E ok \in BOOLEAN :
    /\ (hw[x] = "issued" => ok = hok[x])
    /\ \A y \in Xids : hw'[y] = IF y=x THEN "stop" ELSE hw[y]
    /\ \A y \in Xids : hok'[y] = IF y=x THEN ok ELSE hok[y]
    /\ \A p \in Pages : ptl'[p] = IF p=xdst[x] THEN (IF ok THEN xlt[x] ELSE 0) ELSE ptl[p]
    /\ \A p \in Pages : pvis'[p] = IF p=xdst[x] /\ ok THEN FALSE ELSE pvis[p]
<2> USE ONLY <1>a36JYV7Vz4, Sizes, Location, Design
<2>1. T_hw /\ T_hok /\ T_ptl /\ T_pvis /\ BE_HwStop(x) /\ Held(xdst[x],x)
  BY <1>g4u1JVDPkX, <1>BmaMuk7xV6, <1>fgrMK3Ufbxbl9, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF BE_HwStop, T_hw, T_hok, T_ptl, T_pvis, Sizes, Location, Design
\* T2M-END R2M0253_PK4_PdBHwStopData

\* T2M-SCOPE R2M0254_PK4_PdCHwStopK12Conditional

<1>n2xa0EjtXCB59fi9Eb55.        
  ASSUME NEW x \in Xids, PinInv, MsgXDomain, HwStop(x)
  PROVE K12'
<2> USE ONLY <1>n2xa0EjtXCB59fi9Eb55, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW m \in net' PROVE MsgSafe(m)'
  BY <1>j4cViHN, Sizes, Location, Design DEF Sizes, Location, Design
<2>1. K12 /\ net' = net
  BY <1>VSZSLpL12, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. MsgSafe(m)
  BY <2>1, <1>SXJT0yI47i, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. m.t \in {"sinfo","notice","nopost","revoke","relsrc"} => m.x \in Xids
  BY <2>1, <1>A3cRtHRvDJny, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. K3 /\ T_hw /\ T_hok /\ T_iv /\ T_xdst
  BY <1>g4u1JVDPkX, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>5. hw[x] \in {"fly","issued"}
  BY <1>BmaMuk7xV6, Sizes, Location, Design DEF BE_HwStop, Sizes, Location, Design
<2>11. MsgC1(m)'
<3>1. UNCHANGED <<gen>>
  BY <1>VSZSLpL12, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED
  BY <2>2, <3>1, <1>er8h7LTgB, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
<2>12. MsgC2(m)'
<3>1. UNCHANGED <<>>
  BY <1>VSZSLpL12, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED
  BY <2>2, <3>1, <1>qR3zi2Kot, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
<2>13. MsgC3(m)'
<3>1. UNCHANGED <<hd, hp>>
  BY <1>VSZSLpL12, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED
  BY <2>2, <3>1, <1>iwCbGtypi, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
<2>14. MsgC4(m)'
<3>1. UNCHANGED <<hd, hp, nx, xdst, xg, xr>>
  BY <1>VSZSLpL12, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED
  BY <2>2, <3>1, <1>KW37GlVHp, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
<2>15. MsgC5(m)'
<3>1. UNCHANGED <<hd, hp, nx, xg, xlt, xr, xsrc>>
  BY <1>VSZSLpL12, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED
  BY <2>2, <3>1, <1>riDVFru1C, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
<2>16. MsgC6(m)'
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>a36JYV7Vz4, <1>VSZSLpL12, Design, SMT, Sizes, Location DEF MsgC6, MsgSafe, K3, CqeHw, Sizes, Location, Design
<2>17. MsgC7(m)'
<3>1. UNCHANGED <<iv, nx, xg, xr>>
  BY <1>VSZSLpL12, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED
  BY <2>2, <3>1, <1>NVfHoP77L, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
<2>18. MsgC8(m)'
<3>1. UNCHANGED <<nx, xg, xr>>
  BY <1>VSZSLpL12, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED
  BY <2>2, <3>1, <1>K5z0brpMw, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
<2>19. MsgC9(m)'
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>a36JYV7Vz4, <1>VSZSLpL12, Design, SMT, Sizes, Location DEF MsgC9, MsgSafe, K3, CqeHw, Sizes, Location, Design
<2>20. MsgC10(m)'
<3>1. UNCHANGED <<drep, dsucc, hd>>
  BY <1>VSZSLpL12, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED
  BY <2>2, <3>1, <1>cCAxb5Pyj9, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
<2>21. QED
  BY <2>11, <2>12, <2>13, <2>14, <2>15, <2>16, <2>17, <2>18, <2>19, <2>20, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
\* T2M-END R2M0254_PK4_PdCHwStopK12Conditional

\* T2M-SCOPE R2M0255_PdPCell_HwStop_K12
\* T2M-BODY R2M0255_PdPCell_HwStop_K12
\* T2M-LOCAL-VISIBILITY

<1>APRNWGvWR.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
  PROVE K12'
  BY ONLY <1>APRNWGvWR, Sizes, Location, Design, <1>n2xa0EjtXCB59fi9Eb55, V21_Inv_K12, V21_Inv_MsgXDomain DEF Sizes, Location, Design
\* T2M-END R2M0255_PdPCell_HwStop_K12


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

<1>LQE0C5CV3kHl.        
 ASSUME B2, SFollow
 PROVE RO_E_spst
 BY ONLY <1>LQE0C5CV3kHl, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_spst, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

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

<1>jGg3R.         SFollow => UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design

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


<1>BbgSGNWiNo6y.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg,smap,skey>>, RO_StableStates
 PROVE HitIdentity'
<2> USE ONLY <1>BbgSGNWiNo6y, Sizes, Location, Design
<2>1. HitIdentity /\ STypeOK BY V21_Inv_HitIdentity, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF HitIdentity, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RO_E_rpgS BY <2>3, <1>H0Dre0I9dt5V, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. rpgS' \subseteq rpgS BY <3>1, SMTT(10), Sizes, Location, Design DEF RO_E_rpgS, Sizes, Location, Design
 <3>3. QED BY <2>1, <2>3, <3>2, SMTT(10), Sizes, Location, Design DEF HitIdentity, Active, STypeOK, RO_StableStates, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KPndmXINRK1Z.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg,smap,schoice,spst,skey,sready,rpgS>>, RO_PinGrows,
        gen' \in [Rq -> 0..MG], \A r \in Rq : gen'[r]>=gen[r]
 PROVE P_SI1'
<2> USE ONLY <1>KPndmXINRK1Z, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI1, Sizes, Location, Design
<2>2. CASE B2
 <3>0. gen \in [Rq -> 0..MG] 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>KPndmXINRK1Z, V22_T_gen, SMTT(5)

 <3>1. SI1 /\ STypeOK BY <2>2, <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A h \in rpgS : h[2] \in Rq
 BY <3>1, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
 <3>3. ASSUME NEW h \in rpgS
        PROVE h[3]<=gen'[h[2]]
  <4>1. h[3]<=gen[h[2]] BY <3>1, ZenonT(10), Sizes, Location, Design DEF SI1, Sizes, Location, Design
  <4>2. h[2] \in Rq BY <3>2, Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. gen[h[2]] \in Nat /\ gen'[h[2]] \in Nat /\ h[3] \in Nat BY <3>0, <3>1, <4>2, Sizes, SMTT(10), Location, Design DEF STypeOK, Gens, Sizes, Location, Design
  <4>4. gen'[h[2]]>=gen[h[2]] BY <4>2, Sizes, Location, Design DEF Sizes, Location, Design
  <4>5. QED BY <4>1, <4>3, <4>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY <2>2, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF P_SI1, SI1, SSendReady, Active, SHPin, RO_PinGrows, RO_HPin, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>boxoLZrc.        
 ASSUME PinInv, UNCHANGED <<kpin,krs,ph,rg,schoice,smap,rpgS>>
 PROVE P_SI6'
 BY ONLY <1>boxoLZrc, Sizes, Location, Design, SMTT(10), V21_Inv_P_SI6 DEF P_SI6, SI6, Active, Sizes, Location, Design

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

<1>dplfnpeXIVM3vR82a4.        
 ASSUME NEW x \in Xids, HwStop(x)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>dplfnpeXIVM3vR82a4, Sizes, Location, Design, Design, ZenonT(10) DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tmky0pBTnVGMtBA0qQxe.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>Tmky0pBTnVGMtBA0qQxe, Sizes, Location, Design, <1>dplfnpeXIVM3vR82a4, <1>J0yx6oHL5UyrV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qipnHByloD94p9G.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x)
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>qipnHByloD94p9G, Sizes, Location, Design, Design, SMTT(10) DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sUxiuduQWVGBvY84I.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE UNCHANGED <<spst,rpgS>>
 BY ONLY <1>sUxiuduQWVGBvY84I, Sizes, Location, Design, <1>dplfnpeXIVM3vR82a4, <1>qipnHByloD94p9G, <1>rUEzU8wbH, <1>JJE0Tfox9Q, <1>yFQ846plk6kJ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qsjynvuC9zS8t8nNYa.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x)
 PROVE gen' \in [Rq -> 0..MG] /\ \A r \in Rq : gen'[r]>=gen[r]
<2> USE ONLY <1>qsjynvuC9zS8t8nNYa, Sizes, Location, Design
<2>1. gen \in [Rq -> 0..MG]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>qsjynvuC9zS8t8nNYa, V22_T_gen, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LScuKSebI8PVLGZHNi7.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x)
 PROVE \A x \in Xids : xst'[x]="posted" => xst[x]="posted"
<2> USE ONLY <1>LScuKSebI8PVLGZHNi7, Sizes, Location, Design
<2>1. xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>LScuKSebI8PVLGZHNi7, V22_T_xst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MLel6DhXnHUgU89LELPyKNYJb9.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>MLel6DhXnHUgU89LELPyKNYJb9, Sizes, Location, Design, <1>dplfnpeXIVM3vR82a4, <1>BhJJoZwTfyo0ME DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>w0hp9gzu3N.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE SI8'
 BY ONLY <1>w0hp9gzu3N, Sizes, Location, Design, <1>dplfnpeXIVM3vR82a4, <1>Tmky0pBTnVGMtBA0qQxe, <1>LScuKSebI8PVLGZHNi7, <1>yYTbap2jtpor DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aS4mIOwF6kLy26DNPC.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE HitIdentity'
 BY ONLY <1>aS4mIOwF6kLy26DNPC, Sizes, Location, Design, <1>dplfnpeXIVM3vR82a4, <1>Tmky0pBTnVGMtBA0qQxe, <1>sUxiuduQWVGBvY84I, <1>jGg3R, <1>BbgSGNWiNo6y DEF RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pkYjrICMVH.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE P_SI1'
 BY ONLY <1>pkYjrICMVH, Sizes, Location, Design, <1>dplfnpeXIVM3vR82a4, <1>Tmky0pBTnVGMtBA0qQxe, <1>sUxiuduQWVGBvY84I, <1>jGg3R, <1>qsjynvuC9zS8t8nNYa, <1>qipnHByloD94p9G, <1>rUEzU8wbH, <1>KPndmXINRK1Z DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WafYz2d8Yb.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE P_SI6'
 BY ONLY <1>WafYz2d8Yb, Sizes, Location, Design, <1>dplfnpeXIVM3vR82a4, <1>qipnHByloD94p9G, <1>sUxiuduQWVGBvY84I, <1>Tmky0pBTnVGMtBA0qQxe, <1>boxoLZrc DEF Sizes, Location, Design
\* T2M-END R2M2244_PdROShared_HwStop


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


<1>dehx3bsiPeOCNRGJlKR.        
 ASSUME RO_SharedFieldsFrame
 PROVE NoFreeUnderRead /\ UNCHANGED <<kpin, krs, pgn, pr, pst>> => NoFreeUnderRead'
  BY ONLY <1>dehx3bsiPeOCNRGJlKR, Sizes, Location, Design, SMT DEF KHeld, NoFreeUnderRead, SHeld, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JdNdQ3cqq.        
  ASSUME NEW x \in Xids, HwStop(x)
  , RO_SharedFieldsFrame
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>JdNdQ3cqq, Sizes, Location, Design, Zenon DEF HwStop, ghV, instV, kV, pgV, recV, rtV, vars, xV, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XSIsCz3vViAfCsu3Pbp.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  , RO_SharedFieldsFrame
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>XSIsCz3vViAfCsu3Pbp, Sizes, Location, Design
<2>1. NoFreeUnderRead /\ UNCHANGED <<kpin, krs, pgn, pr, pst>>
  BY <1>BVNGgr9i2, <1>JdNdQ3cqq, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>dehx3bsiPeOCNRGJlKR, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2590_PdRORead_PdBHwStopFrames


<1>nc3SC9D4V7i7RIOsLrDgdT.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>nc3SC9D4V7i7RIOsLrDgdT, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>sUxiuduQWVGBvY84I, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. NoFreeUnderRead'
 BY <2>1, <1>XSIsCz3vViAfCsu3Pbp, <1>w1A6qbKTB1, V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2600_PdROReadCell_HwStop_NoFreeUnderRead


<1> QED BY <1>APRNWGvWR, <1>pkYjrICMVH, <1>aS4mIOwF6kLy26DNPC, <1>WafYz2d8Yb, <1>nc3SC9D4V7i7RIOsLrDgdT, <1>MLel6DhXnHUgU89LELPyKNYJb9, <1>w0hp9gzu3N, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_HwStop_03_02 SHA fd293daefa573b8b4c8225c8a81973f932dee374e97fef8501f463c3809f53d2
USE DEF V21_Inv_BaseSafety, V21_Inv_K11, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_NoEvictUnderRDMA, V21_Inv_S6, V22_T_pst
HIDE DEF Part_HwStop_03_01, V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_SI8, V21_SFollowOff, V21_SFollowStatic, V22_T_gen, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_HwStop_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE (K9)' /\ (ReadOwnLanded)' /\ (K8)' /\ (K7)' /\ (K11)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RO_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


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


           RO_E_dpreOK == dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop" THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") => (IF hw[x]="issued" THEN xprefixOK[x] ELSE RO_Valid(x)) ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]


           wOTr_ == gen \in [Rq -> 0..MG]


           Qjrp == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           vdfp == rp \in [Rq -> {0} \cup Inst]


           Gi91 == rd \in [Rq -> {0} \cup Inst]


           f9Jo == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           qC4t == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           dfknOma == alive \in [Inst -> BOOLEAN]


           TiBl9dL == nfail \in 0..MaxFail


           nvVdwJ == torn \in [Inst -> SUBSET Inst]


           kyOog2 == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           UUdTOK == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           dMRAk == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           lwx7 == ph \in [Inst -> [Rq -> PhSet]]


           azLu == rg \in [Inst -> [Rq -> 0..MG]]


           T2_wJ == rpg \in [Inst -> [Rq -> 0..NP]]


           DRkCp == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           u6eb == rx \in [Inst -> [Rq -> 0..MX]]


           WFFocH == rhit \in [Inst -> [Rq -> BOOLEAN]]


           mWgRR == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           voSc == pr \in [Pages -> 0..NR]


           ejARA == pgn \in [Pages -> 0..MG]


           nhDFh == plt \in [Pages -> 0..PS]


           Oet5P == ptl \in [Pages -> -1..PS]


           toA96a == pvis \in [Pages -> BOOLEAN]


           CQcwS == led \in [Pages -> SUBSET Xids]


           pgoLyw == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           gwX1nH == sled \in [Pages -> SUBSET (Rq \X Gens)]


           uhaZUCa == prefc \in [Pages -> 0..NR]


           j9ZB2 == pqp \in [Pages -> {0} \cup Inst]


           tOrh == xr \in [Xids -> 0..NR]


           oZ1G == xg \in [Xids -> 0..MG]


           TMQx == xk \in [Xids -> {"none", "wr", "rd"}]


           vvyr == xp \in [Xids -> {0} \cup Inst]


           FBnj == xd \in [Xids -> {0} \cup Inst]


           Sbgpxn == xsrc \in [Xids -> 0..NP]


           tP64Zt == xdst \in [Xids -> 0..NP]


           Rl_wH == xnt \in [Xids -> 0..PS]


           JojO == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           NFMkE == hok \in [Xids -> BOOLEAN]


           vQ8m == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           tMnUG == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           Og_ZB == xlt \in [Xids -> 0..PS]


           NHqB == nx \in 1..(MX + 1)


           j95de == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           jnT8ZH == drep \in [Rq -> [Gens -> 0..2]]


           fikvOb == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           wBRWE5u == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           Le6TxG == gbad \in BOOLEAN


           soyHJ == wOTr_ /\ Qjrp /\ vdfp /\ Gi91 /\ f9Jo /\ qC4t /\ dfknOma /\ TiBl9dL /\ nvVdwJ /\ kyOog2 /\ UUdTOK /\ dMRAk /\ lwx7 /\ azLu /\ T2_wJ /\ DRkCp /\ u6eb /\ WFFocH /\ mWgRR /\ voSc /\ ejARA /\ nhDFh /\ Oet5P /\ toA96a /\ CQcwS /\ pgoLyw /\ gwX1nH /\ uhaZUCa /\ j9ZB2 /\ tOrh /\ oZ1G /\ TMQx /\ vvyr /\ FBnj /\ Sbgpxn /\ tP64Zt /\ Rl_wH /\ JojO /\ NFMkE /\ vQ8m /\ tMnUG /\ Og_ZB /\ NHqB /\ j95de /\ jnT8ZH /\ fikvOb /\ wBRWE5u /\ Le6TxG

           \* T2M-LOCAL-VISIBILITY

           AEZsS == gen \in [Rq -> 0..MG]



           o5G2 == rt \in [Rq -> {"idle", "wait", "ok", "err"}]



           Zd4y == rp \in [Rq -> {0} \cup Inst]



           jY_U == rd \in [Rq -> {0} \cup Inst]



           O0Gm == hp \in [Rq -> [Gens -> {0} \cup Inst]]



           RwXY == hd \in [Rq -> [Gens -> {0} \cup Inst]]



           jb4aTlh == alive \in [Inst -> BOOLEAN]



           zaBQrrW == nfail \in 0..MaxFail



           pc8eUz == torn \in [Inst -> SUBSET Inst]



           m1zx9S == kpin \in [Inst -> [KSlots -> BOOLEAN]]



           djyOpL == kfly \in [Inst -> [KSlots -> BOOLEAN]]



           c02OO == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]



           AydA == ph \in [Inst -> [Rq -> PhSet]]



           nNeM == rg \in [Inst -> [Rq -> 0..MG]]



           q1Ohy == rpg \in [Inst -> [Rq -> 0..NP]]



           E1MnW == rpe \in [Inst -> [Rq -> {0} \cup Inst]]



           QC9Q == rx \in [Inst -> [Rq -> 0..MX]]



           EYS1sP == rhit \in [Inst -> [Rq -> BOOLEAN]]



           OyyWS == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]



           IwCp == pr \in [Pages -> 0..NR]



           vS7em == pgn \in [Pages -> 0..MG]



           bFwlN == plt \in [Pages -> 0..PS]



           rO4YE == ptl \in [Pages -> -1..PS]



           Bq5Edl == pvis \in [Pages -> BOOLEAN]



           dcfPK == led \in [Pages -> SUBSET Xids]



           Xc_ngV == sfly \in [Pages -> SUBSET (Rq \X Gens)]



           h9WLgd == sled \in [Pages -> SUBSET (Rq \X Gens)]



           p1YmMe5 == prefc \in [Pages -> 0..NR]



           vRZWI == pqp \in [Pages -> {0} \cup Inst]



           a1R5 == xr \in [Xids -> 0..NR]



           CXAy == xg \in [Xids -> 0..MG]



           ok5g == xk \in [Xids -> {"none", "wr", "rd"}]



           vdyX == xp \in [Xids -> {0} \cup Inst]



           C4fb == xd \in [Xids -> {0} \cup Inst]



           Uzgo58 == xsrc \in [Xids -> 0..NP]



           JjZ1PO == xdst \in [Xids -> 0..NP]



           PwcfA == xnt \in [Xids -> 0..PS]



           DpA4 == hw \in [Xids -> {"none", "fly", "issued", "stop"}]



           DnMxp == hok \in [Xids -> BOOLEAN]



           fr1A == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]



           PD2ZN == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]



           OfQy9 == xlt \in [Xids -> 0..PS]



           SHJS == nx \in 1..(MX + 1)



           qvLUP == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]



           Q1j7VI == drep \in [Rq -> [Gens -> 0..2]]



           jC41VF == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]



           MuHyNw3 == dsucc \in [Rq -> [Gens -> BOOLEAN]]



           MZsmqs == gbad \in BOOLEAN



           QLAWp == AEZsS /\ o5G2 /\ Zd4y /\ jY_U /\ O0Gm /\ RwXY /\ jb4aTlh /\ zaBQrrW /\ pc8eUz /\ m1zx9S /\ djyOpL /\ c02OO /\ AydA /\ nNeM /\ q1Ohy /\ E1MnW /\ QC9Q /\ EYS1sP /\ OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ rO4YE /\ Bq5Edl /\ dcfPK /\ Xc_ngV /\ h9WLgd /\ p1YmMe5 /\ vRZWI /\ a1R5 /\ CXAy /\ ok5g /\ vdyX /\ C4fb /\ Uzgo58 /\ JjZ1PO /\ PwcfA /\ DpA4 /\ DnMxp /\ fr1A /\ PD2ZN /\ OfQy9 /\ SHJS /\ qvLUP /\ Q1j7VI /\ jC41VF /\ MuHyNw3 /\ MZsmqs


           \* T2M-LOCAL-VISIBILITY

           dGUq4p04D(x) ==
             hw[x] \in {"fly", "issued"} /\ \E ok \in (IF hw[x] = "issued" THEN {hok[x]} ELSE BOOLEAN) :
              /\ hw' = [hw EXCEPT ![x] = "stop"] /\ hok' = [hok EXCEPT ![x] = ok]
              /\ ptl' = [ptl EXCEPT ![xdst[x]] = IF Held(xdst[x], x) THEN (IF ok THEN xlt[x] ELSE 0) ELSE -1]
              /\ pvis' = [pvis EXCEPT ![xdst[x]] = IF ok THEN FALSE ELSE @]

           \* T2M-LOCAL-VISIBILITY

           IHCST(i,r) ==
             LET p == rpg[i][r]
                 g == rg[i][r]
                 t == Tag(r, g)
                 x == rx[i][r]
             IN
             /\ IsP(i) => (ph[i][r] \in {"none", "pre", "ready", "reg", "sent", "exp", "end"} /\ ~rhit[i][r])
             /\ IsD(i) => ph[i][r] \in {"none", "wait", "rd", "run", "ovl", "end"}
             /\ ph[i][r] = "none" => (g = 0 /\ p = 0 /\ x = 0 /\ ~rhit[i][r])
             /\ ph[i][r] # "none" => (g \in Gens /\ g <= gen[r])
             /\ ph[i][r] # "none" /\ IsP(i) => (hp[r][g] = i /\ rpe[i][r] = hd[r][g])
             /\ ph[i][r] # "none" /\ IsD(i) => (hd[r][g] = i /\ rpe[i][r] = hp[r][g])
             /\ Active(i, r) => (p \in Pages /\ Loc(p) = i)
             /\ Active(i, r) /\ ~rhit[i][r] => OwnedBy(p, r, g) /\ pst[p] = "priv"
             /\ ph[i][r] = "pre" => (x = 0 /\ led[p] = {} /\ sled[p] = {t} /\ sfly[p] \subseteq {t} /\ plt[p] = 0
                                     /\ (IF t \in sfly[p] THEN ptl[p] = 0 ELSE ptl[p] \in PLens(r, g)))
             /\ ph[i][r] = "ready" => (x = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g))
             /\ ph[i][r] = "reg" => (Mode = "push" /\ PReg /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = r /\ xg[x] = g
                                     /\ iv[x] = "reg" /\ sled[p] = {} /\ sfly[p] = {}
                                     /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g) /\ xlt[x] = ptl[p])
             /\ ph[i][r] = "sent" => (Mode = "push" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = r /\ xg[x] = g
                                      /\ iv[x] \in {"posted", "cqe", "failret"} /\ sled[p] = {} /\ sfly[p] = {}
                                      /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g) /\ xlt[x] = ptl[p])
             /\ ph[i][r] = "exp" => (Mode = "pull" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = r /\ xg[x] = g
                                     /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g) /\ xlt[x] = ptl[p])


           BDBZ2(p) ==
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


           iHcOq(j,r) ==
             LET q == rpg[j][r]
                 g == rg[j][r]
                 t == Tag(r, g)
                 x == rx[j][r]
             IN
             /\ Active(j, r) => drep[r][g] = 0
             /\ ph[j][r] = "end" => drep[r][g] = 1
             /\ rhit[j][r] => ph[j][r] \in {"run", "ovl", "end"}
             /\ ph[j][r] = "wait" /\ Mode = "push" => (x \in Xids /\ x < nx /\ xdst[x] = q /\ xr[x] = r /\ xg[x] = g
                                                       /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0)
             /\ ph[j][r] = "wait" /\ Mode = "pull" => (x = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0)
             /\ ph[j][r] = "rd" => (Mode = "pull" /\ x \in Xids /\ x < nx /\ xdst[x] = q /\ xr[x] = r /\ xg[x] = g
                                    /\ iv[x] \in {"posted", "cqe", "failret"} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0)
             /\ ph[j][r] \in {"run", "ovl"} /\ ~rhit[j][r] => (led[q] = {} /\ sled[q] = {t} /\ plt[q] = NTok(r, g) /\ ptl[q] = NTok(r, g) /\ pvis[q])
             /\ ph[j][r] \in {"run", "ovl"} /\ rhit[j][r] => (pst[q] = "shared" /\ t \in sled[q] /\ x = 0)

           \* T2M-LOCAL-VISIBILITY

           NlAXTwIvW(x) ==
             hw[x] \in {"fly", "issued"} /\ \E ok \in (IF hw[x] = "issued" THEN {hok[x]} ELSE BOOLEAN) :
              /\ hw' = [hw EXCEPT ![x] = "stop"] /\ hok' = [hok EXCEPT ![x] = ok]
              /\ ptl' = [ptl EXCEPT ![xdst[x]] = IF Held(xdst[x], x) THEN (IF ok THEN xlt[x] ELSE 0) ELSE -1]
              /\ pvis' = [pvis EXCEPT ![xdst[x]] = IF ok THEN FALSE ELSE @]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_E_dpreOK, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dGUq4p04D, IHCST, BDBZ2, iHcOq, NlAXTwIvW

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

<1>dplfnpeXIVM3vR82a4.        
 ASSUME NEW x \in Xids, HwStop(x)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>dplfnpeXIVM3vR82a4, Sizes, Location, Design, Design, ZenonT(10) DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ak9608JcJ6ue5h.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x)
 PROVE \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
<2> USE ONLY <1>Ak9608JcJ6ue5h, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Ak9608JcJ6ue5h, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OJpowx54MQ.         TypInv => soyHJ
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, soyHJ, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>O8DCAEAnW.        
  ASSUME NEW x \in Xids, HwStop(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>O8DCAEAnW, Sizes, Location, Design, Zenon DEF HwStop, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>ySVUTHwtc.        
  ASSUME NEW x \in Xids, HwStop(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>ySVUTHwtc, Sizes, Location, Design, Zenon DEF HwStop, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M2320_PdROOld_PP_PdBHwStopFrames


<1>p8neXZOTpqDzNL.        
  ASSUME NEW x \in Xids, SHJS, K2, InFl(x)
  PROVE x < nx
  BY ONLY <1>p8neXZOTpqDzNL, Sizes, Location, Design, SMT DEF SHJS, Xids, K2, InFl, Sizes, Location, Design


<1>acIN3mkqFi8T6oNX.        
  ASSUME NEW x \in Xids, SHJS, K1, K2, K3, InFl(x)
  PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>acIN3mkqFi8T6oNX, Sizes, Location, Design
<2>1. x < nx
  BY <1>p8neXZOTpqDzNL, Sizes, Location, Design DEF Sizes, Location, Design
<2>0. ~(x >= nx)
  BY <2>1, Sizes, SMT, Location, Design DEF SHJS, Xids, Sizes, Location, Design
<2>2. xk[x] \in {"wr","rd"} /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
    /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>0, Design, Zenon, Sizes, Location DEF K2, Sizes, Location, Design
<2>3. xd[x] \in DInst
  BY <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. iv[x] \notin {"none","nopost"}
  BY Zenon, Sizes, Location, Design DEF K3, InFl, Sizes, Location, Design
<2>5. InitPage(x) # 0
  BY <2>0, <2>4, Zenon, Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>6. xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>0, <2>2, <2>5, Zenon, Sizes, Location, Design DEF K2, ExpPage, InitPage, ExpInst, InitInst, Sizes, Location, Design
<2>7. QED
  BY <2>3, <2>6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>idFuwWm.        
  ASSUME NEW i \in Inst, NEW p \in Pages, IsP(i), Loc(p) = i,
         SHJS, K1, K2, K3
  PROVE NoWriteInto(p)
<2> USE ONLY <1>idFuwWm, Sizes, Location, Design
<2>1. \A x \in Xids : InFl(x) => Loc(xdst[x]) \in DInst
  BY <1>acIN3mkqFi8T6oNX, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. i \notin DInst
  BY Sizes, SMT, Location, Design DEF IsP, DInst, Inst, NL, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF NoWriteInto, Writing, Sizes, Location, Design
\* T2M-END R2M2321_PdROOld_PP_PdBDataLemmas

\* T2M-SCOPE R2M2322_PdROOld_PP_PdBXFacts
\* T2M-BODY R2M2322_PdROOld_PP_PdBXFacts
\* T2M-LOCAL-VISIBILITY

<1>fDQ.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xsrc[x] \in Pages
  PROVE Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>fDQ, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xp[x] = hp[xr[x]][xg[x]]
        /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MRreMujAPn.        
  ASSUME NEW x \in Xids, HwStop(x)
  PROVE dGUq4p04D(x)
  BY ONLY <1>MRreMujAPn, Sizes, Location, Design, Design, Zenon DEF HwStop, dGUq4p04D, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KoIDXQJMl5ctE.        
  ASSUME NEW x \in Xids, NEW p \in Pages, PinInv, HwStop(x), NoWriteInto(p)
  PROVE ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p] /\ NoWriteInto(p)'
<2> USE ONLY <1>KoIDXQJMl5ctE, Sizes, Location, Design
<2>1. rO4YE /\ Bq5Edl /\ DpA4 /\ dGUq4p04D(x) /\ UNCHANGED xdst
  BY <1>UwwC5LVwQr, <1>MRreMujAPn, <1>ySVUTHwtc, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>3. xdst[x] # p
  BY <2>1, SMT, Sizes, Location, Design DEF dGUq4p04D, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>4. ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p]
  BY <2>1, <2>3, SMT, Sizes, Location, Design DEF dGUq4p04D, rO4YE, Bq5Edl, Sizes, Location, Design
<2>5. NoWriteInto(p)'
  BY <2>1, SMT, Sizes, Location, Design DEF dGUq4p04D, DpA4, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>6. QED
  BY <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VYjZKbvyOHYwoqq.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE \A p \in Pages : NoWriteInto(p) =>
    ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p] /\ NoWriteInto(p)'
  BY ONLY <1>VYjZKbvyOHYwoqq, Sizes, Location, Design, <1>KoIDXQJMl5ctE DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uOKFWpk9v.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE \A p \in Pages : IsP(Loc(p)) => ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p]
<2> USE ONLY <1>uOKFWpk9v, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. \A p \in Pages : IsP(Loc(p)) => NoWriteInto(p)
  BY <2>1, Location, <1>idFuwWm, SMT, Sizes, Design DEF KPages, Sizes, Location, Design
<2>3. QED
  BY <2>2, <1>VYjZKbvyOHYwoqq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MO5iWwrOtMyfE.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE x < nx /\ xdst[x] \in Pages /\ Held(xdst[x],x)
<2> USE ONLY <1>MO5iWwrOtMyfE, Sizes, Location, Design
<2>1. SHJS /\ K1 /\ K2 /\ K3 /\ NoStrayAccess /\ InFl(x)
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_NoStrayAccess, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Safety, HwStop, InFl, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>p8neXZOTpqDzNL, <1>acIN3mkqFi8T6oNX, SMT, Sizes, Location, Design DEF NoStrayAccess, Writing, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iO67a.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE IHCST(i,r)
  BY ONLY <1>iO67a, Sizes, Location, Design DEF K8, IHCST, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J7mCO.        
  ASSUME NEW p \in Pages, K7
  PROVE BDBZ2(p)
  BY ONLY <1>J7mCO, Sizes, Location, Design DEF K7, BDBZ2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dJv1EbS4.        
  ASSUME NEW j \in Inst, NEW s \in Rq, K8
  PROVE Active(j,s) => rpg[j][s] \in Pages /\ Loc(rpg[j][s]) = j
<2> USE ONLY <1>dJv1EbS4, Sizes, Location, Design
<2>1. IHCST(j,s)
  BY <1>iO67a, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Zenon, Sizes, Location, Design DEF IHCST, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Sxhh9GWIfZ.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst
  BY ONLY <1>Sxhh9GWIfZ, Sizes, Location, Design, Location, SMT DEF KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wrt7kq3wM.        
  /\ \A i \in DInst : i \in Inst /\ IsD(i)
  /\ \A i \in PInst : i \in Inst /\ IsP(i)
  /\ \A i \in Inst : IsP(i) \/ IsD(i)
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMT, Location, Design DEF Inst, DInst, PInst, NL, IsD, IsP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>arKye.        
  ASSUME NEW j \in DInst, NEW r \in Rq, K9
  PROVE iHcOq(j,r)
  BY ONLY <1>arKye, Sizes, Location, Design DEF K9, iHcOq, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WjkJ7p4bVOE.        
  (\A i \in Inst, r \in Rq : IHCST(i,r)') => K8'
  BY Sizes, Location, Design DEF K8, IHCST, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qeGVA2qxpaU.        
  (\A j \in DInst, r \in Rq : iHcOq(j,r)') => K9'
  BY Sizes, Location, Design DEF K9, iHcOq, Sizes, Location, Design
\* T2M-END R2M2324_PdROOld_PP_PdBRecords


<1>g5BKcNTt4M.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE \E ok \in BOOLEAN :
    /\ (hw[x] = "issued" => ok = hok[x])
    /\ \A y \in Xids : hw'[y] = IF y=x THEN "stop" ELSE hw[y]
    /\ \A y \in Xids : hok'[y] = IF y=x THEN ok ELSE hok[y]
    /\ \A p \in Pages : ptl'[p] = IF p=xdst[x] THEN (IF ok THEN xlt[x] ELSE 0) ELSE ptl[p]
    /\ \A p \in Pages : pvis'[p] = IF p=xdst[x] /\ ok THEN FALSE ELSE pvis[p]
<2> USE ONLY <1>g5BKcNTt4M, Sizes, Location, Design
<2>1. DpA4 /\ DnMxp /\ rO4YE /\ Bq5Edl /\ dGUq4p04D(x) /\ Held(xdst[x],x)
  BY <1>UwwC5LVwQr, <1>MRreMujAPn, <1>MO5iWwrOtMyfE, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF dGUq4p04D, DpA4, DnMxp, rO4YE, Bq5Edl, Sizes, Location, Design
\* T2M-END R2M2325_PdROOld_PP_PdBHwStopData

\* T2M-SCOPE R2M2326_PdROOld_PP_PdBHwStopLK10
\* T2M-BODY R2M2326_PdROOld_PP_PdBHwStopLK10
\* T2M-LOCAL-VISIBILITY

<1>DzZp29G.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE K11'
<2> USE ONLY <1>DzZp29G, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_x \in Xids
                 PROVE ((bb_x < nx /\ xsrc[bb_x] \in Pages /\ bb_x \in led[xsrc[bb_x]])
           => (ptl[xsrc[bb_x]] = xlt[bb_x] /\ sfly[xsrc[bb_x]] = {} /\ sled[xsrc[bb_x]] = {}))'
  BY Sizes, Location, Design DEF K11, Sizes, Location, Design
<2>1. K11
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K11, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>ySVUTHwtc, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ((bb_x < nx /\ xsrc[bb_x] \in Pages /\ bb_x \in led[xsrc[bb_x]])
           => (ptl[xsrc[bb_x]] = xlt[bb_x] /\ sfly[xsrc[bb_x]] = {} /\ sled[xsrc[bb_x]] = {}))'
  BY <2>1, <2>2, <1>fDQ, <1>uOKFWpk9v, <1>Sxhh9GWIfZ, <1>wrt7kq3wM, Location, Sizes, SMT, Design DEF IsP, K11, PInst, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K11, Sizes, Location, Design
\* T2M-END R2M2327_PdROOld_PP_PdBHwStopLK11

\* T2M-SCOPE R2M2328_PdROOld_PP_PdBHwStopLK16

<1>p6hb.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE ph[i][r] \in {"pre","ready","reg","sent","exp"} => IsP(i) /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
<2> USE ONLY <1>p6hb, Sizes, Location, Design
<2>1. IHCST(i,r)
  BY <1>iO67a, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsP(i) \/ IsD(i)
  BY Sizes, SMT, Location, Design DEF IsP, IsD, Inst, NL, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF IHCST, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gDd3DKZgDjoka.        
  ASSUME NEW j \in DInst, NEW r \in Rq, NEW y \in Xids, PinInv,
    Mode = "pull", ph[j][r] = "wait", InFl(y)
  PROVE xdst[y] # rpg[j][r]
<2> USE ONLY <1>gDd3DKZgDjoka, Sizes, Location, Design
<2>1. SHJS /\ K1 /\ K2 /\ K3 /\ K8 /\ K9 /\ S6 /\ NoStrayAccess
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_K9, V21_Inv_NoStrayAccess, V21_Inv_S6, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, Sizes, Location, Design
<2>2. y < nx /\ xdst[y] \in Pages /\ Loc(xdst[y]) = xd[y]
  BY <2>1, <1>p8neXZOTpqDzNL, <1>acIN3mkqFi8T6oNX, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. j \in Inst /\ IsD(j)
  BY Sizes, SMT, Location, Design DEF DInst, Inst, NL, IsD, Sizes, Location, Design
<2>4. IHCST(j,r)
  BY <2>1, <2>3, <1>iO67a, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ OwnedBy(rpg[j][r],r,rg[j][r]) /\ rx[j][r] = 0
  BY <2>1, <2>4, Zenon, Sizes, Location, Design DEF IHCST, K9, Active, Sizes, Location, Design
<2>6. InitInst(y) = xd[y] /\ InitPage(y) = xdst[y]
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K2, InitInst, InitPage, Sizes, Location, Design
<2>6a. Held(xdst[y],y)
  BY <2>1, Zenon, Sizes, Location, Design DEF NoStrayAccess, Writing, Sizes, Location, Design
<2>7. xdst[y] = rpg[j][r] => xr[y] = r /\ xg[y] = rg[j][r] /\ xd[y] = j
  BY <2>2, <2>5, <2>6a, SMT, Sizes, Location, Design DEF Held, OwnedBy, Sizes, Location, Design
<2>8. xdst[y] = rpg[j][r] => rx[j][r] = y
  BY <2>1, <2>2, <2>5, <2>6, <2>7, Sizes, SMT, Location, Design DEF S6, Active, Pages, Sizes, Location, Design
<2>9. QED
  BY <2>5, <2>8, Sizes, SMT, Location, Design DEF Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H15ImgD7FbbJg.        
  ASSUME NEW j \in DInst, NEW r \in Rq, PinInv
  PROVE (Mode = "pull" /\ ph[j][r] = "wait") => NoWriteInto(rpg[j][r])
  BY ONLY <1>H15ImgD7FbbJg, Sizes, Location, Design, <1>gDd3DKZgDjoka DEF NoWriteInto, Writing, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Zxwd8kkCkZp4UXC.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE \A p \in Pages : ptl'[p] >= 0
<2> USE ONLY <1>Zxwd8kkCkZp4UXC, Sizes, Location, Design
<2>1. K7 /\ OfQy9
  BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>g5BKcNTt4M, SMT, Sizes, Location, Design DEF K7, OfQy9, Sizes, Location, Design
\* T2M-END R2M2331_PdROOld_PP_PdCHwStopSupport

\* T2M-SCOPE R2M2332_PdROOld_PP_PdCHwStopLK2
\* T2M-BODY R2M2332_PdROOld_PP_PdCHwStopLK2
\* T2M-LOCAL-VISIBILITY

<1>rbPizbaTgTAcL.        
  ASSUME K7,
    UNCHANGED <<pst, pr, pgn, plt, led, sled, sfly, prefc, pqp,
                gen, ph, rg, rpg, rhit, kpin, krs>>,
    \A p \in Pages : ptl'[p] >= 0 /\ (pst[p] = "shared" => ptl'[p] = ptl[p])
  PROVE K7'
<2> USE ONLY <1>rbPizbaTgTAcL, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW p \in Pages PROVE BDBZ2(p)'
  BY Sizes, Location, Design DEF K7, BDBZ2, Sizes, Location, Design
<2>1. BDBZ2(p)
  BY <1>J7mCO, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<KPinned(p), NHits(p), GrownP(p)>>
  BY Isa, Sizes, Location, Design DEF KPinned, NHits, GrownP, Sizes, Location, Design
<2>3. \A r : UNCHANGED Maps(Loc(p),r,p)
  BY Isa, Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, SMT, Sizes, Location, Design DEF BDBZ2, Sizes, Location, Design
\* T2M-END R2M2334_PdROOld_PP_PdCK7Frame


<1>Z2tmGv.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE K7'
<2> USE ONLY <1>Z2tmGv, Sizes, Location, Design
<2>1. K7 /\ SealOnlyLanded
  BY V21_Inv_K7, V21_Inv_Safety, V21_Inv_SealOnlyLanded, Sizes, Location, Design DEF Safety, Sizes, Location, Design
<2>2. UNCHANGED <<pst, pr, pgn, plt, led, sled, sfly, prefc, pqp,
                gen, ph, rg, rpg, rhit, kpin, krs>>
  BY <1>ySVUTHwtc, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A p \in Pages : ptl'[p] >= 0 /\ (pst[p] = "shared" => ptl'[p] = ptl[p])
  BY <2>1, <1>Zxwd8kkCkZp4UXC, <1>VYjZKbvyOHYwoqq, Sizes, Location, Design DEF SealOnlyLanded, BaseSealOnlyLanded, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, <1>rbPizbaTgTAcL, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2335_PdROOld_PP_PdCHwStopLK7

\* T2M-SCOPE R2M2336_PdROOld_PP_PdCHwStopLK8

<1>KVgGoDezrkM.        
  ASSUME NEW x \in Xids, NEW j \in Inst, NEW s \in Rq, PinInv, HwStop(x)
  PROVE IHCST(j,s)'
<2> USE ONLY <1>KVgGoDezrkM, Sizes, Location, Design
<2>1. K8 /\ K8 /\ IHCST(j,s)
  BY <1>iO67a, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>ySVUTHwtc, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ph[j][s] \in {"pre","ready","reg","sent","exp"} => ptl'[rpg[j][s]] = ptl[rpg[j][s]]
  BY <2>1, <1>p6hb, <1>uOKFWpk9v, SMT, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Zenon, Sizes, Location, Design DEF IHCST, Active, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xF2YcI.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE K8'
  BY ONLY <1>xF2YcI, Sizes, Location, Design, <1>KVgGoDezrkM, <1>WjkJ7p4bVOE DEF Sizes, Location, Design
\* T2M-END R2M2336_PdROOld_PP_PdCHwStopLK8

\* T2M-SCOPE R2M2337_PdROOld_PP_PdCHwStopLK9

<1>D4McVedeaIm.        
  ASSUME NEW x \in Xids, NEW j \in DInst, NEW s \in Rq, PinInv, HwStop(x)
  PROVE iHcOq(j,s)'
<2> USE ONLY <1>D4McVedeaIm, Sizes, Location, Design
<2>1. K9 /\ K8 /\ iHcOq(j,s)
  BY <1>arKye, V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>ySVUTHwtc, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. j \in Inst /\ IsD(j)
  BY <1>wrt7kq3wM, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. Active(j,s) => rpg[j][s] \in Pages /\ Loc(rpg[j][s]) = j
  BY <2>1, <2>3, <1>dJv1EbS4, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. ReadOwnLanded
  BY V21_Inv_ReadOwnLanded, V21_Inv_Safety, Sizes, Location, Design DEF Safety, Sizes, Location, Design
<2>6. (ph[j][s] \in {"run","ovl"} \/ (Mode = "pull" /\ ph[j][s] = "wait")) => NoWriteInto(rpg[j][s])
  BY <2>5, <1>H15ImgD7FbbJg, Zenon, Sizes, Location, Design DEF ReadOwnLanded, BaseReadOwnLanded, Sizes, Location, Design
<2>7. (ph[j][s] \in {"run","ovl"} \/ (Mode = "pull" /\ ph[j][s] = "wait")) =>
    ptl'[rpg[j][s]] = ptl[rpg[j][s]] /\ pvis'[rpg[j][s]] = pvis[rpg[j][s]]
  BY <2>4, <2>6, <1>VYjZKbvyOHYwoqq, Zenon, Sizes, Location, Design DEF Active, Sizes, Location, Design
<2>8. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, Zenon, Sizes, Location, Design DEF iHcOq, Active, Tag, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>u2maK4.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE K9'
  BY ONLY <1>u2maK4, Sizes, Location, Design, <1>D4McVedeaIm, <1>qeGVA2qxpaU DEF Sizes, Location, Design
\* T2M-END R2M2337_PdROOld_PP_PdCHwStopLK9

\* T2M-SCOPE R2M2338_PdROOld_PdPAgg_HwStop

<1>weciwcvq.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
  PROVE K7'
  BY ONLY <1>weciwcvq, Sizes, Location, Design, <1>Z2tmGv, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sgv0ikSz.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
  PROVE K8'
  BY ONLY <1>sgv0ikSz, Sizes, Location, Design, <1>xF2YcI, V21_Inv_K8 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>v73LYatk.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
  PROVE K9'
  BY ONLY <1>v73LYatk, Sizes, Location, Design, <1>u2maK4, V21_Inv_K9 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EHsxDT7uw.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
  PROVE K11'
  BY ONLY <1>EHsxDT7uw, Sizes, Location, Design, <1>DzZp29G, V21_Inv_K11 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t2tlAMsRhkUf0BIV.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE K11'
 BY ONLY <1>t2tlAMsRhkUf0BIV, Sizes, Location, Design, <1>EHsxDT7uw DEF Sizes, Location, Design
\* T2M-END R2M2340_PdROFinal_HwStop_K11

\* T2M-SCOPE R2M2341_PdROFinal_HwStop_K16

<1>yhKSWw5yffWns38.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE K7'
 BY ONLY <1>yhKSWw5yffWns38, Sizes, Location, Design, <1>weciwcvq DEF Sizes, Location, Design
\* T2M-END R2M2344_PdROFinal_HwStop_K7

\* T2M-SCOPE R2M2345_PdROFinal_HwStop_K8

<1>I7pQRDw7UFnugKX.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE K8'
 BY ONLY <1>I7pQRDw7UFnugKX, Sizes, Location, Design, <1>sgv0ikSz DEF Sizes, Location, Design
\* T2M-END R2M2345_PdROFinal_HwStop_K8

\* T2M-SCOPE R2M2346_PdROFinal_HwStop_K9

<1>AT8sGyUFuroLh5i.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE K9'
 BY ONLY <1>AT8sGyUFuroLh5i, Sizes, Location, Design, <1>v73LYatk DEF Sizes, Location, Design
\* T2M-END R2M2346_PdROFinal_HwStop_K9

\* T2M-SCOPE R2M2347_PdROFinal_HwStop_S5

<1>W9CGEbFDUe.        
  ASSUME NEW x \in Xids, HwStop(x)
  PROVE NlAXTwIvW(x)
  BY ONLY <1>W9CGEbFDUe, Sizes, Location, Design, Design, Zenon DEF HwStop, NlAXTwIvW, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eA7yQzNcumdUm.        
  ASSUME NEW x \in Xids, NEW p \in Pages, PinInv, HwStop(x), NoWriteInto(p)
  PROVE ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p] /\ NoWriteInto(p)'
<2> USE ONLY <1>eA7yQzNcumdUm, Sizes, Location, Design
<2>1. Oet5P /\ toA96a /\ JojO /\ NlAXTwIvW(x) /\ UNCHANGED xdst
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>W9CGEbFDUe, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>3. xdst[x] # p
  BY <2>1, SMT, Sizes, Location, Design DEF NlAXTwIvW, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>4. ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p]
  BY <2>1, <2>3, SMT, Sizes, Location, Design DEF NlAXTwIvW, Oet5P, toA96a, Sizes, Location, Design
<2>5. NoWriteInto(p)'
  BY <2>1, SMT, Sizes, Location, Design DEF NlAXTwIvW, JojO, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>6. QED
  BY <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DmU58uZ3ks15jWs.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE \A p \in Pages : NoWriteInto(p) =>
    ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p] /\ NoWriteInto(p)'
  BY ONLY <1>DmU58uZ3ks15jWs, Sizes, Location, Design, <1>eA7yQzNcumdUm DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yviLSgCtrZ.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst
  BY ONLY <1>yviLSgCtrZ, Sizes, Location, Design, Location, SMT DEF KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RnL5hSIjI.        
  /\ \A i \in DInst : i \in Inst /\ IsD(i)
  /\ \A i \in PInst : i \in Inst /\ IsP(i)
  /\ \A i \in Inst : IsP(i) \/ IsD(i)
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMT, Location, Design DEF Inst, DInst, PInst, NL, IsD, IsP, Sizes, Location, Design
\* T2M-END R2M2281_PdROBase_PdBRecords


<1>XVvCOPhMQ4ycKZkdF.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>XVvCOPhMQ4ycKZkdF, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_j \in DInst, NEW bb_r \in Rq
                 PROVE (ph[bb_j][bb_r] \in {"run", "ovl"} =>
    LET q == rpg[bb_j][bb_r] IN
      /\ q \in Pages /\ NoWriteInto(q)
      /\ \/ ~rhit[bb_j][bb_r] /\ pst[q] = "priv" /\ pr[q] = bb_r /\ pgn[q] = rg[bb_j][bb_r] /\ ptl[q] = NTok(bb_r, rg[bb_j][bb_r]) /\ pvis[q]
         \/ rhit[bb_j][bb_r] /\ pst[q] = "shared" /\ ptl[q] = PS)'
  BY Sizes, Location, Design DEF BaseReadOwnLanded, Sizes, Location, Design
<2>1. BaseReadOwnLanded
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, soyHJ, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>O8DCAEAnW, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (ph[bb_j][bb_r] \in {"run", "ovl"} =>
    LET q == rpg[bb_j][bb_r] IN
      /\ q \in Pages /\ NoWriteInto(q)
      /\ \/ ~rhit[bb_j][bb_r] /\ pst[q] = "priv" /\ pr[q] = bb_r /\ pgn[q] = rg[bb_j][bb_r] /\ ptl[q] = NTok(bb_r, rg[bb_j][bb_r]) /\ pvis[q]
         \/ rhit[bb_j][bb_r] /\ pst[q] = "shared" /\ ptl[q] = PS)'
  BY <2>1, <2>2, <1>DmU58uZ3ks15jWs, <1>yviLSgCtrZ, <1>RnL5hSIjI, Location, Sizes, SMT, Design DEF BaseReadOwnLanded, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF BaseReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M2668_PdROBase_PdBHwStopLReadOwnLanded


<1>cnQfgVSnXT9yKeAleOZM.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE ReadOwnLanded'
<2> USE ONLY <1>cnQfgVSnXT9yKeAleOZM, Sizes, Location, Design
<2>1. BaseReadOwnLanded' BY <1>XVvCOPhMQ4ycKZkdF, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 => \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} => dpreOK'[rpg'[j][r]]
 BY <1>dplfnpeXIVM3vR82a4, <1>Ak9608JcJ6ue5h, <1>umw00Yrfg, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF ReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M2669_PdROSafety_HwStop_ReadOwnLanded


<1> QED BY <1>AT8sGyUFuroLh5i, <1>cnQfgVSnXT9yKeAleOZM, <1>I7pQRDw7UFnugKX, <1>yhKSWw5yffWns38, <1>t2tlAMsRhkUf0BIV, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_HwStop_04_01 SHA f3761c1d9f8aeab3ff79bd4c4aa9a47098c984eaf3e3165f7233a5a77165c428
USE DEF V21_Inv_K10, V21_Inv_K14, V21_Inv_K16, V21_Inv_K4, V21_Inv_K5, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S4, V21_Inv_S5, V21_SFollowOff, V21_SFollowStatic
HIDE DEF Part_HwStop_03_02, V21_Inv_HitIdentity, V21_Inv_K11, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V22_T_pst
THEOREM Part_HwStop_04_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE (K10)' /\ (S5)' /\ (K2)' /\ (K3)' /\ (K16)' /\ (K4)' /\ (K5)' /\ (K14)' /\ (S4)' /\ (S6)' /\ (OneReply)' /\ (ReplyTruth)' /\ (QuarNeverMapped)' /\ (QuarNoReg)' /\ (P_B2OffInit)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE AEZsS == gen \in [Rq -> 0..MG]



           o5G2 == rt \in [Rq -> {"idle", "wait", "ok", "err"}]



           Zd4y == rp \in [Rq -> {0} \cup Inst]



           jY_U == rd \in [Rq -> {0} \cup Inst]



           O0Gm == hp \in [Rq -> [Gens -> {0} \cup Inst]]



           RwXY == hd \in [Rq -> [Gens -> {0} \cup Inst]]



           jb4aTlh == alive \in [Inst -> BOOLEAN]



           zaBQrrW == nfail \in 0..MaxFail



           pc8eUz == torn \in [Inst -> SUBSET Inst]



           m1zx9S == kpin \in [Inst -> [KSlots -> BOOLEAN]]



           djyOpL == kfly \in [Inst -> [KSlots -> BOOLEAN]]



           c02OO == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]



           AydA == ph \in [Inst -> [Rq -> PhSet]]



           nNeM == rg \in [Inst -> [Rq -> 0..MG]]



           q1Ohy == rpg \in [Inst -> [Rq -> 0..NP]]



           E1MnW == rpe \in [Inst -> [Rq -> {0} \cup Inst]]



           QC9Q == rx \in [Inst -> [Rq -> 0..MX]]



           EYS1sP == rhit \in [Inst -> [Rq -> BOOLEAN]]



           OyyWS == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]



           IwCp == pr \in [Pages -> 0..NR]



           vS7em == pgn \in [Pages -> 0..MG]



           bFwlN == plt \in [Pages -> 0..PS]



           rO4YE == ptl \in [Pages -> -1..PS]



           Bq5Edl == pvis \in [Pages -> BOOLEAN]



           dcfPK == led \in [Pages -> SUBSET Xids]



           Xc_ngV == sfly \in [Pages -> SUBSET (Rq \X Gens)]



           h9WLgd == sled \in [Pages -> SUBSET (Rq \X Gens)]



           p1YmMe5 == prefc \in [Pages -> 0..NR]



           vRZWI == pqp \in [Pages -> {0} \cup Inst]



           a1R5 == xr \in [Xids -> 0..NR]



           CXAy == xg \in [Xids -> 0..MG]



           ok5g == xk \in [Xids -> {"none", "wr", "rd"}]



           vdyX == xp \in [Xids -> {0} \cup Inst]



           C4fb == xd \in [Xids -> {0} \cup Inst]



           Uzgo58 == xsrc \in [Xids -> 0..NP]



           JjZ1PO == xdst \in [Xids -> 0..NP]



           PwcfA == xnt \in [Xids -> 0..PS]



           DpA4 == hw \in [Xids -> {"none", "fly", "issued", "stop"}]



           DnMxp == hok \in [Xids -> BOOLEAN]



           fr1A == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]



           PD2ZN == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]



           OfQy9 == xlt \in [Xids -> 0..PS]



           SHJS == nx \in 1..(MX + 1)



           qvLUP == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]



           Q1j7VI == drep \in [Rq -> [Gens -> 0..2]]



           jC41VF == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]



           MuHyNw3 == dsucc \in [Rq -> [Gens -> BOOLEAN]]



           MZsmqs == gbad \in BOOLEAN



           QLAWp == AEZsS /\ o5G2 /\ Zd4y /\ jY_U /\ O0Gm /\ RwXY /\ jb4aTlh /\ zaBQrrW /\ pc8eUz /\ m1zx9S /\ djyOpL /\ c02OO /\ AydA /\ nNeM /\ q1Ohy /\ E1MnW /\ QC9Q /\ EYS1sP /\ OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ rO4YE /\ Bq5Edl /\ dcfPK /\ Xc_ngV /\ h9WLgd /\ p1YmMe5 /\ vRZWI /\ a1R5 /\ CXAy /\ ok5g /\ vdyX /\ C4fb /\ Uzgo58 /\ JjZ1PO /\ PwcfA /\ DpA4 /\ DnMxp /\ fr1A /\ PD2ZN /\ OfQy9 /\ SHJS /\ qvLUP /\ Q1j7VI /\ jC41VF /\ MuHyNw3 /\ MZsmqs


           \* T2M-LOCAL-VISIBILITY

           dGUq4p04D(x) ==
             hw[x] \in {"fly", "issued"} /\ \E ok \in (IF hw[x] = "issued" THEN {hok[x]} ELSE BOOLEAN) :
              /\ hw' = [hw EXCEPT ![x] = "stop"] /\ hok' = [hok EXCEPT ![x] = ok]
              /\ ptl' = [ptl EXCEPT ![xdst[x]] = IF Held(xdst[x], x) THEN (IF ok THEN xlt[x] ELSE 0) ELSE -1]
              /\ pvis' = [pvis EXCEPT ![xdst[x]] = IF ok THEN FALSE ELSE @]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dGUq4p04D

<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>m948gxWe0.        
 P_B2OffInit /\ UNCHANGED <<dedupSeen, dpreOK, hitSeen, rpgS, schoice, sdata, sentry, sgen, skey, smap, sown, sprefc, spst, squar, sready, swrite, xprefixOK, xsrcP, xsrcS>> => P_B2OffInit'
 BY IsaT(10), Sizes, Location, Design DEF P_B2OffInit, SInit, Sizes, Location, Design
\* T2M-END R2M0451_PdPF_B2OffInit


<1>je.        
 S4 /\ UNCHANGED <<alive, nfail>> => S4'
 BY IsaT(10), Sizes, Location, Design DEF S4, Sizes, Location, Design
\* T2M-END R2M0344_PdPF_S4


<1>BBQUQLHXJe.        
 ReplyTruth /\ UNCHANGED <<crep, dsucc>> => ReplyTruth'
 BY IsaT(10), Sizes, Location, Design DEF ReplyTruth, Sizes, Location, Design
\* T2M-END R2M0349_PdPF_ReplyTruth


<1>yYI.        
 K14 /\ UNCHANGED <<gen, kfly, kpin, krs>> => K14'
 BY IsaT(10), Sizes, Location, Design DEF K14, Sizes, Location, Design
\* T2M-END R2M0355_PdPF_K14


<1>XnYly5EW.        
 OneReply /\ UNCHANGED <<crep, drep>> => OneReply'
 BY IsaT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
\* T2M-END R2M0348_PdPF_OneReply


<1>sk.        
 S6 /\ UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>> => S6'
 BY IsaT(10), Sizes, Location, Design DEF Active, InitInst, InitPage, S6, Sizes, Location, Design
\* T2M-END R2M0346_PdPF_S6


<1>rd.        
 K5 /\ UNCHANGED <<led, pgn, pr, pst, xg, xr>> => K5'
 BY IsaT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0334_PdPF_K5


<1>pJ.        
 K4 /\ UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>> => K4'
 BY IsaT(10), Sizes, Location, Design DEF ExpPage, InitPage, K4, Sizes, Location, Design
\* T2M-END R2M0333_PdPF_K4


<1>agy0tgaoa.        
 QuarNoReg /\ UNCHANGED <<iv, led, pst>> => QuarNoReg'
 BY IsaT(10), Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
\* T2M-END R2M0351_PdPF_QuarNoReg


<1>CHHI4E3y3uZD9LA.        
 QuarNeverMapped /\ UNCHANGED <<ph, pst, rpg>> => QuarNeverMapped'
 BY IsaT(10), Sizes, Location, Design DEF Active, QuarNeverMapped, Sizes, Location, Design
\* T2M-END R2M0350_PdPF_QuarNeverMapped


<1>EFXm9LGw5cMvST.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, pr, pst, rd, rg, rp, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xp, xr, xsrc, xst>>
 BY ONLY <1>EFXm9LGw5cMvST, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF HwStop, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gP9LNKyLk.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE K4'
<2> USE ONLY <1>gP9LNKyLk, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>EFXm9LGw5cMvST, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Xhku8eYjG.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE K5'
<2> USE ONLY <1>Xhku8eYjG, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>EFXm9LGw5cMvST, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r4TJEuQYLj.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE K14'
<2> USE ONLY <1>r4TJEuQYLj, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>EFXm9LGw5cMvST, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Lig5heVUc.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE S4'
<2> USE ONLY <1>Lig5heVUc, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>EFXm9LGw5cMvST, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>i1eID3r04.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE S6'
<2> USE ONLY <1>i1eID3r04, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>EFXm9LGw5cMvST, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BXTbuHArQTvHdaZ.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE OneReply'
<2> USE ONLY <1>BXTbuHArQTvHdaZ, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>EFXm9LGw5cMvST, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fQzv4jCqJXLmjUXuV.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>fQzv4jCqJXLmjUXuV, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>EFXm9LGw5cMvST, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fy7Qym7f8uNpIWCQgTmJwO.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE QuarNeverMapped'
<2> USE ONLY <1>fy7Qym7f8uNpIWCQgTmJwO, Sizes, Location, Design
<2>1. QuarNeverMapped
 BY V21_Inv_QuarNeverMapped, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ph, pst, rpg>>
 BY <1>EFXm9LGw5cMvST, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>CHHI4E3y3uZD9LA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>s71TYoynqsheaf31.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE QuarNoReg'
<2> USE ONLY <1>s71TYoynqsheaf31, Sizes, Location, Design
<2>1. QuarNoReg
 BY V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, pst>>
 BY <1>EFXm9LGw5cMvST, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>agy0tgaoa, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VR2ltuk9POdF9JEW.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>VR2ltuk9POdF9JEW, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0477_PdPOff_HwStop


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>ySVUTHwtc.        
  ASSUME NEW x \in Xids, HwStop(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>ySVUTHwtc, Sizes, Location, Design, Zenon DEF HwStop, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M2320_PdROOld_PP_PdBHwStopFrames


<1>p8neXZOTpqDzNL.        
  ASSUME NEW x \in Xids, SHJS, K2, InFl(x)
  PROVE x < nx
  BY ONLY <1>p8neXZOTpqDzNL, Sizes, Location, Design, SMT DEF SHJS, Xids, K2, InFl, Sizes, Location, Design


<1>acIN3mkqFi8T6oNX.        
  ASSUME NEW x \in Xids, SHJS, K1, K2, K3, InFl(x)
  PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>acIN3mkqFi8T6oNX, Sizes, Location, Design
<2>1. x < nx
  BY <1>p8neXZOTpqDzNL, Sizes, Location, Design DEF Sizes, Location, Design
<2>0. ~(x >= nx)
  BY <2>1, Sizes, SMT, Location, Design DEF SHJS, Xids, Sizes, Location, Design
<2>2. xk[x] \in {"wr","rd"} /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
    /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>0, Design, Zenon, Sizes, Location DEF K2, Sizes, Location, Design
<2>3. xd[x] \in DInst
  BY <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. iv[x] \notin {"none","nopost"}
  BY Zenon, Sizes, Location, Design DEF K3, InFl, Sizes, Location, Design
<2>5. InitPage(x) # 0
  BY <2>0, <2>4, Zenon, Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>6. xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>0, <2>2, <2>5, Zenon, Sizes, Location, Design DEF K2, ExpPage, InitPage, ExpInst, InitInst, Sizes, Location, Design
<2>7. QED
  BY <2>3, <2>6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MRreMujAPn.        
  ASSUME NEW x \in Xids, HwStop(x)
  PROVE dGUq4p04D(x)
  BY ONLY <1>MRreMujAPn, Sizes, Location, Design, Design, Zenon DEF HwStop, dGUq4p04D, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KoIDXQJMl5ctE.        
  ASSUME NEW x \in Xids, NEW p \in Pages, PinInv, HwStop(x), NoWriteInto(p)
  PROVE ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p] /\ NoWriteInto(p)'
<2> USE ONLY <1>KoIDXQJMl5ctE, Sizes, Location, Design
<2>1. rO4YE /\ Bq5Edl /\ DpA4 /\ dGUq4p04D(x) /\ UNCHANGED xdst
  BY <1>UwwC5LVwQr, <1>MRreMujAPn, <1>ySVUTHwtc, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>3. xdst[x] # p
  BY <2>1, SMT, Sizes, Location, Design DEF dGUq4p04D, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>4. ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p]
  BY <2>1, <2>3, SMT, Sizes, Location, Design DEF dGUq4p04D, rO4YE, Bq5Edl, Sizes, Location, Design
<2>5. NoWriteInto(p)'
  BY <2>1, SMT, Sizes, Location, Design DEF dGUq4p04D, DpA4, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>6. QED
  BY <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VYjZKbvyOHYwoqq.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE \A p \in Pages : NoWriteInto(p) =>
    ptl'[p] = ptl[p] /\ pvis'[p] = pvis[p] /\ NoWriteInto(p)'
  BY ONLY <1>VYjZKbvyOHYwoqq, Sizes, Location, Design, <1>KoIDXQJMl5ctE DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MO5iWwrOtMyfE.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE x < nx /\ xdst[x] \in Pages /\ Held(xdst[x],x)
<2> USE ONLY <1>MO5iWwrOtMyfE, Sizes, Location, Design
<2>1. SHJS /\ K1 /\ K2 /\ K3 /\ NoStrayAccess /\ InFl(x)
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_NoStrayAccess, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Safety, HwStop, InFl, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>p8neXZOTpqDzNL, <1>acIN3mkqFi8T6oNX, SMT, Sizes, Location, Design DEF NoStrayAccess, Writing, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LLUM52QvMLvi4bKENTXGWX5JmS.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE \A y \in Xids : (y < nx /\ xdst[y] = xdst[x] /\ OwnedBy(xdst[y],xr[y],xg[y])) => y = x
<2> USE ONLY <1>LLUM52QvMLvi4bKENTXGWX5JmS, Sizes, Location, Design
<2>1. x < nx /\ Held(xdst[x],x) /\ S2
  BY <1>MO5iWwrOtMyfE, V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF S2, Held, OwnedBy, Sizes, Location, Design
\* T2M-END R2M2323_PdROOld_PP_PdBHwStopEffects


<1>Sxhh9GWIfZ.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst
  BY ONLY <1>Sxhh9GWIfZ, Sizes, Location, Design, Location, SMT DEF KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wrt7kq3wM.        
  /\ \A i \in DInst : i \in Inst /\ IsD(i)
  /\ \A i \in PInst : i \in Inst /\ IsP(i)
  /\ \A i \in Inst : IsP(i) \/ IsD(i)
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMT, Location, Design DEF Inst, DInst, PInst, NL, IsD, IsP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g5BKcNTt4M.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE \E ok \in BOOLEAN :
    /\ (hw[x] = "issued" => ok = hok[x])
    /\ \A y \in Xids : hw'[y] = IF y=x THEN "stop" ELSE hw[y]
    /\ \A y \in Xids : hok'[y] = IF y=x THEN ok ELSE hok[y]
    /\ \A p \in Pages : ptl'[p] = IF p=xdst[x] THEN (IF ok THEN xlt[x] ELSE 0) ELSE ptl[p]
    /\ \A p \in Pages : pvis'[p] = IF p=xdst[x] /\ ok THEN FALSE ELSE pvis[p]
<2> USE ONLY <1>g5BKcNTt4M, Sizes, Location, Design
<2>1. DpA4 /\ DnMxp /\ rO4YE /\ Bq5Edl /\ dGUq4p04D(x) /\ Held(xdst[x],x)
  BY <1>UwwC5LVwQr, <1>MRreMujAPn, <1>MO5iWwrOtMyfE, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF dGUq4p04D, DpA4, DnMxp, rO4YE, Bq5Edl, Sizes, Location, Design
\* T2M-END R2M2325_PdROOld_PP_PdBHwStopData

\* T2M-SCOPE R2M2326_PdROOld_PP_PdBHwStopLK10
\* T2M-BODY R2M2326_PdROOld_PP_PdBHwStopLK10
\* T2M-LOCAL-VISIBILITY

<1>BpJ92xB.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE K10'
<2> USE ONLY <1>BpJ92xB, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_x \in Xids
                 PROVE ((bb_x < nx /\ xdst[bb_x] \in Pages /\ OwnedBy(xdst[bb_x], xr[bb_x], xg[bb_x])
            /\ ~(ph[Loc(xdst[bb_x])][xr[bb_x]] \in {"run", "ovl"} /\ rg[Loc(xdst[bb_x])][xr[bb_x]] = xg[bb_x]))
           => ptl[xdst[bb_x]] = (IF hw[bb_x] = "stop" /\ hok[bb_x] THEN xlt[bb_x] ELSE 0))'
  BY Sizes, Location, Design DEF K10, Sizes, Location, Design
<2>1. K10
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K10, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>ySVUTHwtc, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ((bb_x < nx /\ xdst[bb_x] \in Pages /\ OwnedBy(xdst[bb_x], xr[bb_x], xg[bb_x])
            /\ ~(ph[Loc(xdst[bb_x])][xr[bb_x]] \in {"run", "ovl"} /\ rg[Loc(xdst[bb_x])][xr[bb_x]] = xg[bb_x]))
           => ptl[xdst[bb_x]] = (IF hw[bb_x] = "stop" /\ hok[bb_x] THEN xlt[bb_x] ELSE 0))'
  BY <2>1, <2>2, <1>g5BKcNTt4M, <1>LLUM52QvMLvi4bKENTXGWX5JmS, <1>Sxhh9GWIfZ, <1>wrt7kq3wM, Location, Sizes, SMT, Design DEF K10, OwnedBy, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K10, Sizes, Location, Design
\* T2M-END R2M2326_PdROOld_PP_PdBHwStopLK10

\* T2M-SCOPE R2M2327_PdROOld_PP_PdBHwStopLK11

<1>LXjP4jl.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE K16'
<2> USE ONLY <1>LXjP4jl, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (GrownP(bb_p) =>
         /\ ph[Loc(bb_p)][pr[bb_p]] \in {"run", "ovl"} /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p]
         /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
         /\ plt[bb_p] = ptl[bb_p] /\ ptl[bb_p] \in {0, 1}
         /\ NoWriteInto(bb_p))'
  BY Sizes, Location, Design DEF K16, Sizes, Location, Design
<2>1. K16
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>ySVUTHwtc, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (GrownP(bb_p) =>
         /\ ph[Loc(bb_p)][pr[bb_p]] \in {"run", "ovl"} /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p]
         /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
         /\ plt[bb_p] = ptl[bb_p] /\ ptl[bb_p] \in {0, 1}
         /\ NoWriteInto(bb_p))'
  BY <2>1, <2>2, <1>VYjZKbvyOHYwoqq, <1>Sxhh9GWIfZ, <1>wrt7kq3wM, Location, Sizes, SMT, Design DEF GrownP, K16, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K16, Sizes, Location, Design
\* T2M-END R2M2328_PdROOld_PP_PdBHwStopLK16

\* T2M-SCOPE R2M2329_PdROOld_PP_PdBHwStopLS5

<1>jrMxJz.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE S5'
<2> USE ONLY <1>jrMxJz, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_j \in DInst, NEW bb_r \in Rq
                 PROVE ((ph[bb_j][bb_r] \in {"run", "ovl"} /\ ~rhit[bb_j][bb_r]) =>
          LET x == rx[bb_j][bb_r] IN
            /\ x \in Xids /\ x < nx /\ xdst[x] = rpg[bb_j][bb_r] /\ xr[x] = bb_r /\ xg[x] = rg[bb_j][bb_r]
            /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x]
            /\ (Mode = "push" => xst[x] = "landed") /\ (Mode = "pull" => iv[x] = "cqe"))'
  BY Sizes, Location, Design DEF S5, Sizes, Location, Design
<2>1. S5
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_S5, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>ySVUTHwtc, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ((ph[bb_j][bb_r] \in {"run", "ovl"} /\ ~rhit[bb_j][bb_r]) =>
          LET x == rx[bb_j][bb_r] IN
            /\ x \in Xids /\ x < nx /\ xdst[x] = rpg[bb_j][bb_r] /\ xr[x] = bb_r /\ xg[x] = rg[bb_j][bb_r]
            /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x]
            /\ (Mode = "push" => xst[x] = "landed") /\ (Mode = "pull" => iv[x] = "cqe"))'
  BY <2>1, <2>2, <1>g5BKcNTt4M, <1>MRreMujAPn, <1>Sxhh9GWIfZ, <1>wrt7kq3wM, Location, Sizes, SMT, Design DEF dGUq4p04D, S5, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF S5, Sizes, Location, Design
\* T2M-END R2M2329_PdROOld_PP_PdBHwStopLS5


<1>TOJm8q.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE K2'
<2> USE ONLY <1>TOJm8q, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_x \in Xids
                 PROVE (IF bb_x >= nx
        THEN /\ xk[bb_x] = "none" /\ xr[bb_x] = 0 /\ xg[bb_x] = 0 /\ xp[bb_x] = 0 /\ xd[bb_x] = 0 /\ xsrc[bb_x] = 0 /\ xdst[bb_x] = 0
             /\ xnt[bb_x] = 0 /\ hw[bb_x] = "none" /\ ~hok[bb_x] /\ iv[bb_x] = "none" /\ xst[bb_x] = "none" /\ xlt[bb_x] = 0
        ELSE /\ xk[bb_x] = (IF Mode = "push" THEN "wr" ELSE "rd")
             /\ xr[bb_x] \in Rq /\ xg[bb_x] \in Gens /\ xg[bb_x] <= gen[xr[bb_x]]
             /\ xp[bb_x] = hp[xr[bb_x]][xg[bb_x]] /\ xd[bb_x] = hd[xr[bb_x]][xg[bb_x]]
             /\ xnt[bb_x] = NTok(xr[bb_x], xg[bb_x]) /\ xst[bb_x] # "none"
             /\ IF xk[bb_x] = "wr" /\ InitPage(bb_x) = 0 THEN xlt[bb_x] = 0 ELSE xlt[bb_x] \in PLens(xr[bb_x], xg[bb_x])   
             /\ ExpPage(bb_x) \in Pages /\ Loc(ExpPage(bb_x)) = ExpInst(bb_x)
             /\ iv[bb_x] = "none" => InitPage(bb_x) = 0
             /\ iv[bb_x] \notin {"none", "nopost"} => InitPage(bb_x) # 0
             /\ (iv[bb_x] = "nopost" /\ InitPage(bb_x) # 0) => (xk[bb_x] = "wr" /\ PReg)   
             /\ InitPage(bb_x) # 0 => (InitPage(bb_x) \in Pages /\ Loc(InitPage(bb_x)) = InitInst(bb_x)))'
  BY Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>1. K2
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hp, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>MRreMujAPn, <1>ySVUTHwtc, Sizes, Location, Design DEF Sizes, Location, Design
<2>2a. hw[x] \in {"fly","issued"}
  BY <1>MRreMujAPn, Zenon, Sizes, Location, Design DEF dGUq4p04D, Sizes, Location, Design
<2>3. (IF bb_x >= nx
        THEN /\ xk[bb_x] = "none" /\ xr[bb_x] = 0 /\ xg[bb_x] = 0 /\ xp[bb_x] = 0 /\ xd[bb_x] = 0 /\ xsrc[bb_x] = 0 /\ xdst[bb_x] = 0
             /\ xnt[bb_x] = 0 /\ hw[bb_x] = "none" /\ ~hok[bb_x] /\ iv[bb_x] = "none" /\ xst[bb_x] = "none" /\ xlt[bb_x] = 0
        ELSE /\ xk[bb_x] = (IF Mode = "push" THEN "wr" ELSE "rd")
             /\ xr[bb_x] \in Rq /\ xg[bb_x] \in Gens /\ xg[bb_x] <= gen[xr[bb_x]]
             /\ xp[bb_x] = hp[xr[bb_x]][xg[bb_x]] /\ xd[bb_x] = hd[xr[bb_x]][xg[bb_x]]
             /\ xnt[bb_x] = NTok(xr[bb_x], xg[bb_x]) /\ xst[bb_x] # "none"
             /\ IF xk[bb_x] = "wr" /\ InitPage(bb_x) = 0 THEN xlt[bb_x] = 0 ELSE xlt[bb_x] \in PLens(xr[bb_x], xg[bb_x])   
             /\ ExpPage(bb_x) \in Pages /\ Loc(ExpPage(bb_x)) = ExpInst(bb_x)
             /\ iv[bb_x] = "none" => InitPage(bb_x) = 0
             /\ iv[bb_x] \notin {"none", "nopost"} => InitPage(bb_x) # 0
             /\ (iv[bb_x] = "nopost" /\ InitPage(bb_x) # 0) => (xk[bb_x] = "wr" /\ PReg)   
             /\ InitPage(bb_x) # 0 => (InitPage(bb_x) \in Pages /\ Loc(InitPage(bb_x)) = InitInst(bb_x)))'
  BY <2>1, <2>2, <2>2a, <1>g5BKcNTt4M, <1>MO5iWwrOtMyfE, Design, Sizes, SMT, Location DEF K2, CqeHw, InFl, InitInst, InitPage, ExpInst, ExpPage, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K2, Sizes, Location, Design
\* T2M-END R2M2332_PdROOld_PP_PdCHwStopLK2

\* T2M-SCOPE R2M2333_PdROOld_PP_PdCHwStopLK3

<1>X3ZDQs.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE K3'
<2> USE ONLY <1>X3ZDQs, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_x \in Xids
                 PROVE ((iv[bb_x] \in {"none", "nopost", "reg"}) <=> (hw[bb_x] = "none"))' /\ (iv[bb_x] = "reg" => (xk[bb_x] = "wr" /\ PReg /\ xst[bb_x] = "posted"))' /\ (iv[bb_x] = "cqe" => hw[bb_x] \in CqeHw(bb_x))' /\ (hw[bb_x] = "issued" => xk[bb_x] = "wr")' /\ (xst[bb_x] = "revoked" => iv[bb_x] = "nopost")' /\ (xst[bb_x] = "landed" => (hw[bb_x] = "stop" /\ hok[bb_x] /\ xlt[bb_x] = xnt[bb_x]))' /\ ((xk[bb_x] = "rd" /\ iv[bb_x] \notin {"none", "nopost"}) => xlt[bb_x] = xnt[bb_x])' /\ (xst[bb_x] = "failed" => IF xk[bb_x] = "wr" THEN (hw[bb_x] = "stop" /\ hok[bb_x] /\ xlt[bb_x] # xnt[bb_x])   
                                 ELSE ((iv[bb_x] = "cqe" /\ hw[bb_x] = "stop" /\ ~hok[bb_x]) \/ iv[bb_x] = "nopost"))' /\ (InFl(bb_x) => (xst[bb_x] = "posted" /\ (iv[bb_x] \in {"posted", "failret"} \/ (iv[bb_x] = "cqe" /\ hw[bb_x] = "issued" /\ ~hok[bb_x]))))'
  BY Sizes, Location, Design DEF K3, Sizes, Location, Design
<2>1. K3
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K3, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<iv, xk, xlt, xnt, xst>>
  BY <1>MRreMujAPn, <1>ySVUTHwtc, Sizes, Location, Design DEF Sizes, Location, Design
<2>2a. hw[x] \in {"fly","issued"}
  BY <1>MRreMujAPn, Zenon, Sizes, Location, Design DEF dGUq4p04D, Sizes, Location, Design
<2>3. ((iv[bb_x] \in {"none", "nopost", "reg"}) <=> (hw[bb_x] = "none"))'
  BY <2>1, <2>2, <2>2a, <1>g5BKcNTt4M, <1>MO5iWwrOtMyfE, Design, Sizes, SMT, Location DEF K3, CqeHw, InFl, InitInst, InitPage, ExpInst, ExpPage, Sizes, Location, Design
<2>4. (iv[bb_x] = "reg" => (xk[bb_x] = "wr" /\ PReg /\ xst[bb_x] = "posted"))'
  BY <2>1, <2>2, <2>2a, <1>g5BKcNTt4M, <1>MO5iWwrOtMyfE, Design, Sizes, SMT, Location DEF K3, CqeHw, InFl, InitInst, InitPage, ExpInst, ExpPage, Sizes, Location, Design
<2>5. (iv[bb_x] = "cqe" => hw[bb_x] \in CqeHw(bb_x))'
  BY <2>1, <2>2, <2>2a, <1>g5BKcNTt4M, <1>MO5iWwrOtMyfE, Design, Sizes, SMT, Location DEF K3, CqeHw, InFl, InitInst, InitPage, ExpInst, ExpPage, Sizes, Location, Design
<2>6. (hw[bb_x] = "issued" => xk[bb_x] = "wr")'
  BY <2>1, <2>2, <2>2a, <1>g5BKcNTt4M, <1>MO5iWwrOtMyfE, Design, Sizes, SMT, Location DEF K3, CqeHw, InFl, InitInst, InitPage, ExpInst, ExpPage, Sizes, Location, Design
<2>7. (xst[bb_x] = "revoked" => iv[bb_x] = "nopost")'
  BY <2>1, <2>2, <2>2a, <1>g5BKcNTt4M, <1>MO5iWwrOtMyfE, Design, Sizes, SMT, Location DEF K3, CqeHw, InFl, InitInst, InitPage, ExpInst, ExpPage, Sizes, Location, Design
<2>8. (xst[bb_x] = "landed" => (hw[bb_x] = "stop" /\ hok[bb_x] /\ xlt[bb_x] = xnt[bb_x]))'
  BY <2>1, <2>2, <2>2a, <1>g5BKcNTt4M, <1>MO5iWwrOtMyfE, Design, Sizes, SMT, Location DEF K3, CqeHw, InFl, InitInst, InitPage, ExpInst, ExpPage, Sizes, Location, Design
<2>9. ((xk[bb_x] = "rd" /\ iv[bb_x] \notin {"none", "nopost"}) => xlt[bb_x] = xnt[bb_x])'
  BY <2>1, <2>2, <2>2a, <1>g5BKcNTt4M, <1>MO5iWwrOtMyfE, Design, Sizes, SMT, Location DEF K3, CqeHw, InFl, InitInst, InitPage, ExpInst, ExpPage, Sizes, Location, Design
<2>10. (xst[bb_x] = "failed" => IF xk[bb_x] = "wr" THEN (hw[bb_x] = "stop" /\ hok[bb_x] /\ xlt[bb_x] # xnt[bb_x])   
                                 ELSE ((iv[bb_x] = "cqe" /\ hw[bb_x] = "stop" /\ ~hok[bb_x]) \/ iv[bb_x] = "nopost"))'
  BY <2>1, <2>2, <2>2a, <1>g5BKcNTt4M, <1>MO5iWwrOtMyfE, Design, Sizes, SMT, Location DEF K3, CqeHw, InFl, InitInst, InitPage, ExpInst, ExpPage, Sizes, Location, Design
<2>11. (InFl(bb_x) => (xst[bb_x] = "posted" /\ (iv[bb_x] \in {"posted", "failret"} \/ (iv[bb_x] = "cqe" /\ hw[bb_x] = "issued" /\ ~hok[bb_x]))))'
  BY <2>1, <2>2, <2>2a, <1>g5BKcNTt4M, <1>MO5iWwrOtMyfE, Design, Sizes, SMT, Location DEF K3, CqeHw, InFl, InitInst, InitPage, ExpInst, ExpPage, Sizes, Location, Design
<2>12. QED
  BY <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, Sizes, Location, Design DEF K3, Sizes, Location, Design
\* T2M-END R2M2333_PdROOld_PP_PdCHwStopLK3


<1>sUWVcykM.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
  PROVE K2'
  BY ONLY <1>sUWVcykM, Sizes, Location, Design, <1>TOJm8q, V21_Inv_K2 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WvQecKvl.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
  PROVE K3'
  BY ONLY <1>WvQecKvl, Sizes, Location, Design, <1>X3ZDQs, V21_Inv_K3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jtWJ3wHO7.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
  PROVE K10'
  BY ONLY <1>jtWJ3wHO7, Sizes, Location, Design, <1>BpJ92xB, V21_Inv_K10 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>s1CA92EPV.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
  PROVE K16'
  BY ONLY <1>s1CA92EPV, Sizes, Location, Design, <1>LXjP4jl, V21_Inv_K16 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZxmCbrSn.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
  PROVE S5'
  BY ONLY <1>ZxmCbrSn, Sizes, Location, Design, <1>jrMxJz, V21_Inv_S5 DEF Sizes, Location, Design
\* T2M-END R2M2338_PdROOld_PdPAgg_HwStop

\* T2M-SCOPE R2M2339_PdROFinal_HwStop_K10
\* T2M-BODY R2M2339_PdROFinal_HwStop_K10
\* T2M-LOCAL-VISIBILITY

<1>LhQAM49B7w6AbiGw.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE K10'
 BY ONLY <1>LhQAM49B7w6AbiGw, Sizes, Location, Design, <1>jtWJ3wHO7 DEF Sizes, Location, Design
\* T2M-END R2M2339_PdROFinal_HwStop_K10

\* T2M-SCOPE R2M2340_PdROFinal_HwStop_K11

<1>YhN4fVGYvKIVfJT6.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE K16'
 BY ONLY <1>YhN4fVGYvKIVfJT6, Sizes, Location, Design, <1>s1CA92EPV DEF Sizes, Location, Design
\* T2M-END R2M2341_PdROFinal_HwStop_K16

\* T2M-SCOPE R2M2342_PdROFinal_HwStop_K2

<1>kTO8SooMEIscD4z.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE K2'
 BY ONLY <1>kTO8SooMEIscD4z, Sizes, Location, Design, <1>sUWVcykM DEF Sizes, Location, Design
\* T2M-END R2M2342_PdROFinal_HwStop_K2


<1>L3gCGEQ9wu97iGs.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE K3'
 BY ONLY <1>L3gCGEQ9wu97iGs, Sizes, Location, Design, <1>WvQecKvl DEF Sizes, Location, Design
\* T2M-END R2M2343_PdROFinal_HwStop_K3

\* T2M-SCOPE R2M2344_PdROFinal_HwStop_K7

<1>iwtb6ZkmCMUfsHT.        
 ASSUME NEW x \in Xids, PinInv, HwStop(x), SFollow
 PROVE S5'
 BY ONLY <1>iwtb6ZkmCMUfsHT, Sizes, Location, Design, <1>ZxmCbrSn DEF Sizes, Location, Design
\* T2M-END R2M2347_PdROFinal_HwStop_S5


<1> QED BY <1>LhQAM49B7w6AbiGw, <1>iwtb6ZkmCMUfsHT, <1>kTO8SooMEIscD4z, <1>L3gCGEQ9wu97iGs, <1>YhN4fVGYvKIVfJT6, <1>gP9LNKyLk, <1>Xhku8eYjG, <1>r4TJEuQYLj, <1>Lig5heVUc, <1>i1eID3r04, <1>BXTbuHArQTvHdaZ, <1>fQzv4jCqJXLmjUXuV, <1>fy7Qym7f8uNpIWCQgTmJwO, <1>s71TYoynqsheaf31, <1>VR2ltuk9POdF9JEW, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_HwStop SHA 2dac5ee13d7fc16376f78280f69c00b3dea360a5310ad956c9f1c814e70a6dcb
USE DEF ShapeNetFrame
HIDE DEF Part_HwStop_04_01, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K10, V21_Inv_K14, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_KStruct, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic
LEMMA ShapeEffect_HwStop ==
 ASSUME NEW x \in Xids, Sizes, Design, HwStop(x)
 PROVE net'=net
 BY ONLY HwStop(x), Sizes, Design, SMTT(5) DEF HwStop, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_HwStop ==
 ASSUME NEW x \in Xids, Sizes, Design, IndInv, MessageShape, HwStop(x)
 PROVE MessageShape'
 BY ONLY Sizes, Design, HwStop(x), MessageShape, ShapeEffect_HwStop, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_HwStop SHA a15e85e0bca77da0fb0a44ae29dcd583ba9b59e246eb2dfc23ba1bb228afffea
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_HwStop, ShapeNetFrame
THEOREM DomainKeep_HwStop ==
 ASSUME NEW x \in Xids, Sizes, Location, Design, PinInv, HwStop(x)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, HwStop(x), ShapeEffect_HwStop
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg
HIDE DEF DomainKeep_HwStop, ShapeEffect_HwStop, V21_Inv_MsgXDomain
====
