---- MODULE PdActionSlice_PExpDone_01 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_d3dd8b4090431094, PdFinalAuxType_2dcb2c05bb6a4884, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalGroup_PExpDone_01 SHA d868b473de84fe7cebabba57903e2649c0bf4247eabcee7dc42d6d77e28e340b
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Group_PExpDone_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE (TypInv)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RP_NewFlyFromReg == \A x \in Xids : hw'[x]="fly" => hw[x]="fly" \/ iv[x]="reg"


<1> HIDE DEF RP_NewFlyFromReg

<1>bLYTylVZl577qzGgqfbB.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE UNCHANGED <<xsrc,xr,xg>> /\ RP_NewFlyFromReg
<2> USE ONLY <1>bLYTylVZl577qzGgqfbB, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>bLYTylVZl577qzGgqfbB, V22_T_hw, SMTT(5)

<2>2. QED BY <2>1, Design, SMTT(10), Sizes, Location DEF RP_NewFlyFromReg, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FOFtOay2erdyG.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE STypeOK'
 BY ONLY <1>FOFtOay2erdyG, AuxType_d3dd8b4090431094, Sizes, Location, Design DEF Sizes, Location, Design

<1>KYAdINuBFN05KXYASD.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i, r)
  PROVE CoreTypeOK'
 BY ONLY <1>KYAdINuBFN05KXYASD, AuxType_2dcb2c05bb6a4884, Sizes, Location, Design DEF Sizes, Location, Design

<1>ixDN8pIfZVT4orWk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE TypInv'
<2> USE ONLY <1>ixDN8pIfZVT4orWk, Sizes, Location, Design
<2>1. CoreTypeOK' BY <1>KYAdINuBFN05KXYASD, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED xsrc BY <1>bLYTylVZl577qzGgqfbB, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. STypeOK' BY <2>2, <1>FOFtOay2erdyG, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, Location, Design DEF TypInv, Sizes, Location, Design
\* T2M-END R2M2031_PdRPR2Types_PExpDone


<1> QED BY <1>ixDN8pIfZVT4orWk, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PExpDone_02_01 SHA 83878c9f473e5a9473fa037e85efbfdd832389825a9c7612b0ef0201ce112edb
USE DEF V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI4, V21_Inv_PrefcMatchesHolders, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_Off, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_iv, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rg, V22_T_sfly, V22_T_sled, V22_T_xdst, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF AuxType_2dcb2c05bb6a4884, AuxType_d3dd8b4090431094, Group_PExpDone_01
THEOREM Part_PExpDone_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE (QuietConservation)' /\ (PrefcMatchesHolders)' /\ (P_SI1)' /\ (P_SI4)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RP_New(i,r) == rg'[i][r] # rg[i][r]


           RP_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           RP_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           RP_H2(unused) == {h \in rpgS : RP_HLive(h) \/ (RP_HPin(h) /\ Mut # "unrefBeforeKDone")}


           RP_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           RP_Src(x) == IF RP_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           RP_SX(unused) == [x \in Xids |-> IF RP_Posted(x) THEN (IF RP_Src(x) \in SPages /\ spst[RP_Src(x)]="shared" THEN {RP_Src(x)} ELSE {}) ELSE xsrcS[x]]


           RP_PX(unused) == [x \in Xids |-> IF RP_Posted(x) THEN (IF RP_Src(x) \in SPages /\ spst[RP_Src(x)]="priv" THEN {RP_Src(x)} ELSE {}) ELSE xsrcP[x]]


           RP_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           RP_Quarantine(x) == x \in sentry /\ ~RP_Close(x) /\
                     ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           RP_E2(unused) == (sentry \cup {x \in Xids : RP_Posted(x)}) \ {x \in Xids : RP_Close(x) \/ RP_Quarantine(x)}


           RP_Q2(unused) == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
                                   UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RP_Quarantine(x)}})


           RP_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\
                    (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           RP_Pin2(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           RP_Drop(p) == (RP_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RP_Pin2(p) /\ sready[p] /\ ~(\E x \in RP_E2(0) : p \in RP_PX(0)[x])


           RP_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
                    spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           RP_SFollowEffect == /\ rpgS'=RP_H2(0) /\ xsrcS'=RP_SX(0) /\ xsrcP'=RP_PX(0) /\ sentry'=RP_E2(0) /\ squar'=RP_Q2(0)
                /\ sprefc'=[p \in SPages |-> sprefc[p]+SRefR(RP_H2(0),p)-SRefR(rpgS,p)
                                    +SRefE(RP_E2(0),RP_SX(0),p)-SRefE(sentry,xsrcS,p)+SRefQ(RP_Q2(0),p)-SRefQ(squar,p)]
                /\ smap'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN 0 ELSE smap[i][r]]]
                /\ schoice'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN FALSE ELSE schoice[i][r]]]
                /\ spst'=[p \in SPages |-> IF \E x \in Xids : RP_Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                                    ELSE IF RP_Drop(p) THEN "free" ELSE IF RP_Ended(p) THEN "drain" ELSE spst[p]]
                /\ xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RP_Valid(x) ELSE xprefixOK[x]]
                /\ dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                                    THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                                          (IF hw[x]="issued" THEN xprefixOK[x] ELSE RP_Valid(x))
                                    ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
                /\ UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>

           \* T2M-LOCAL-VISIBILITY

           RP_RecordProgress == \A i \in PInst,r \in Rq :
            (Active(i,r)' /\ rg'[i][r]=rg[i][r]) => Active(i,r)

           \* T2M-LOCAL-VISIBILITY

           RP_T_spst == spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]


           RP_T_rpgS == rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)


           RP_T_xsrcS == xsrcS \in [Xids -> SUBSET SPages]


           RP_T_sentry == sentry \in SUBSET Xids


           RP_T_squar == squar \in SUBSET (Xids \X SPages)


           RP_RefDelta == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)
            +SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

           \* T2M-LOCAL-VISIBILITY

           RP_PT_pst == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           RP_PT_pr == pr \in [Pages -> 0..NR]


           RP_PT_pgn == pgn \in [Pages -> 0..MG]


           RP_PT_plt == plt \in [Pages -> 0..PS]


           RP_PT_ptl == ptl \in [Pages -> -1..PS]


           RP_PT_pvis == pvis \in [Pages -> BOOLEAN]


           RP_PT_sfly == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           RP_PT_led == led \in [Pages -> SUBSET Xids]


           RP_PT_sled == sled \in [Pages -> SUBSET (Rq \X Gens)]


           RP_PT_hw == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           RP_PT_xdst == xdst \in [Xids -> 0..NP]


           RP_PT_kpin == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           RP_PT_krs == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           RP_PageTypes == RP_PT_pst /\ RP_PT_pr /\ RP_PT_pgn /\ RP_PT_plt /\ RP_PT_ptl /\ RP_PT_pvis /\ RP_PT_sfly /\ RP_PT_led /\ RP_PT_sled /\ RP_PT_hw /\ RP_PT_xdst /\ RP_PT_kpin /\ RP_PT_krs

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

           dlzHJ(i,r) ==
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


           Zzz7b(p) ==
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


           BPEnd(i,r) ==
             LET p == rpg[i][r] IN
             /\ IsP(i) /\ p \in Pages /\ Loc(p) = i /\ pst[p] = "priv"
             /\ ph[i][r] \in {"sent", "exp", "reg"}
             /\ ph' = [ph EXCEPT ![i][r] = "end"]
             /\ pst' = [pst EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"]
             /\ pr' = [pr EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
             /\ pgn' = [pgn EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
             /\ plt' = [plt EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
             /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0
             /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,led,sfly,sled,prefc,pqp,
                             xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,iv,xst,xlt,nx,net,drep,crep,dsucc,gbad>>


           BPFreed(i,r) == led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r])

           \* T2M-LOCAL-VISIBILITY

           RP_RecordReady == B2 => \A i \in PInst,r \in Rq :
            ph'[i][r] \in {"reg","sent","exp"} => rg'[i][r]=rg[i][r] /\ SSendReady(i,r)


           RP_NoneFrame == \A i \in PInst,r \in Rq : ph'[i][r]="none" => ph[i][r]="none" /\ rg'[i][r]=rg[i][r]

           \* T2M-LOCAL-VISIBILITY

           RP2_TransportFrame == UNCHANGED <<xsrc,xr,xg,xp,xk,xst,nx>>


           RP2_EntryProgress == \A x \in Xids : iv[x] \in {"reg","posted","failret"} => iv'[x] \in {"reg","posted","failret","cqe","nopost"}


           RP2_HardwareProgress ==
            /\ \A x \in Xids : hw'[x]="fly" => (hw[x]="fly" \/ iv[x]="reg") /\ ~RP_Close(x)
            /\ \A x \in Xids : hw'[x] \in {"issued","stop"} => hw'[x]=hw[x]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_T_spst, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, BPEnd, BPFreed, RP_RecordReady, RP_NoneFrame, RP2_TransportFrame, RP2_EntryProgress, RP2_HardwareProgress

<1>PKl1lJKpXGVI0yrZ8.        
 ASSUME B2, SFollow
 PROVE RP_SFollowEffect
<2> HIDE DEF SFollow, RP_SFollowEffect, V22_FH2, V22_FSX, V22_FPX, V22_FE2, V22_FQ2, V22_FDrop, V22_FEnded, V22_FQuarantine
<2>hAlias. RP_H2(0)=V22_FH2
 BY ONLY SMTT(5) DEF RP_H2, RP_HLive, RP_HPin, V22_FH2, V22_FHLive, V22_FHPin
<2>sxAlias. RP_SX(0)=V22_FSX
 BY ONLY SMTT(5) DEF RP_SX, RP_Posted, RP_Src, V22_FSX, V22_FPosted, V22_FSrc
<2>pxAlias. RP_PX(0)=V22_FPX
 BY ONLY SMTT(5) DEF RP_PX, RP_Posted, RP_Src, V22_FPX, V22_FPosted, V22_FSrc
<2>eAlias. RP_E2(0)=V22_FE2
 BY ONLY SMTT(5) DEF RP_E2, RP_Posted, RP_Close, RP_Quarantine, V22_FE2, V22_FPosted, V22_FClose, V22_FQuarantine
<2>qAlias. RP_Q2(0)=V22_FQ2
 BY ONLY SMTT(5) DEF RP_Q2, RP_Quarantine, RP_Close, V22_FQ2, V22_FQuarantine, V22_FClose
<2>statusAlias. \A p \in SPages : RP_Ended(p)=V22_FEnded(p) /\ RP_Drop(p)=V22_FDrop(p)
 BY ONLY <2>pxAlias, <2>eAlias, SMTT(5) DEF RP_Ended, RP_Drop, RP_Pin2, V22_FEnded, V22_FDrop, V22_FPin2
<2>quarantineAlias. \A x \in Xids : RP_Quarantine(x)=V22_FQuarantine(x)
 BY ONLY SMTT(5) DEF RP_Quarantine, RP_Close, V22_FQuarantine, V22_FClose
<2>holders. rpgS'=RP_H2(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>hAlias, V22_SF_Holders, SMTT(5) DEF V22_SF_Holders
<2>sourceShared. xsrcS'=RP_SX(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>sxAlias, V22_SF_SourceShared, SMTT(5) DEF V22_SF_SourceShared
<2>sourcePrivate. xsrcP'=RP_PX(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>pxAlias, V22_SF_SourcePrivate, SMTT(5) DEF V22_SF_SourcePrivate
<2>sentry. sentry'=RP_E2(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>eAlias, V22_SF_Sentry, SMTT(5) DEF V22_SF_Sentry
<2>squar. squar'=RP_Q2(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>qAlias, V22_SF_Squar, SMTT(5) DEF V22_SF_Squar
<2>refcount. sprefc'=[p \in SPages |-> sprefc[p]+SRefR(RP_H2(0),p)-SRefR(rpgS,p)
                      +SRefE(RP_E2(0),RP_SX(0),p)-SRefE(sentry,xsrcS,p)+SRefQ(RP_Q2(0),p)-SRefQ(squar,p)]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>hAlias, <2>sxAlias, <2>eAlias, <2>qAlias, V22_SF_RefCount, SMTT(5) DEF V22_SF_RefCount
<2>map. smap'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN 0 ELSE smap[i][r]]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, V22_SF_Map, SMTT(5) DEF RP_New, V22_SF_Map
<2>choice. schoice'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN FALSE ELSE schoice[i][r]]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, V22_SF_Choice, SMTT(5) DEF RP_New, V22_SF_Choice
<2>status. spst'=[p \in SPages |-> IF \E x \in Xids : RP_Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                      ELSE IF RP_Drop(p) THEN "free" ELSE IF RP_Ended(p) THEN "drain" ELSE spst[p]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>statusAlias, <2>quarantineAlias, V22_SF_Status, SMTT(5) DEF V22_SF_Status
<2>prefix. xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RP_Valid(x) ELSE xprefixOK[x]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, ZenonT(10) DEF SFollow, RP_Valid
<2>dpre. dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                      THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                         (IF hw[x]="issued" THEN xprefixOK[x] ELSE RP_Valid(x))
                      ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, ZenonT(10) DEF SFollow, RP_Valid
<2>static. UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, V22_SF_Static, SMTT(5) DEF V22_SF_Static
<2>qed. QED
 BY ONLY <2>holders, <2>sourceShared, <2>sourcePrivate, <2>sentry, <2>squar,
         <2>refcount, <2>map, <2>choice, <2>status, <2>prefix, <2>dpre, <2>static, SMTT(5) DEF RP_SFollowEffect

\* T2M-LOCAL-VISIBILITY

<1>Ua3eOhQVTzEuP0Q.        
 ASSUME NEW p \in SPages, B2, SFollow, SI4, spst[p]="shared"
 PROVE spst'[p]="shared"
<2> USE ONLY <1>Ua3eOhQVTzEuP0Q, Sizes, Location, Design
<2>1. \A x \in Xids : xsrcP[x]={} BY Sizes, Location, Design DEF SI4, Sizes, Location, Design
<2>2. QED BY <2>1, <1>PKl1lJKpXGVI0yrZ8, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_Drop, RP_Ended, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>irl4UaCCkNMPiRRv.        
 ASSUME NEW p \in SPages, B2, SFollow, spst'[p]="shared"
 PROVE spst[p]="shared"
 BY ONLY <1>irl4UaCCkNMPiRRv, Sizes, Location, Design, <1>PKl1lJKpXGVI0yrZ8, SMTT(10) DEF RP_SFollowEffect, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZXxq7ZUlh0hBhsql.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~RP_Posted(x)
 BY ONLY <1>ZXxq7ZUlh0hBhsql, Sizes, Location, Design, SMTT(10) DEF RP_Posted, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KReYXg7MU3qwoztWhw.        
 ASSUME NEW x \in Xids, B2, SFollow, RP_Quarantine(x)
 PROVE \A p \in xsrcS[x] : <<x,p>> \in squar'
<2> USE ONLY <1>KReYXg7MU3qwoztWhw, Sizes, Location, Design
<2>1. squar'=RP_Q2(0) BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF RP_SFollowEffect, Sizes, Location, Design
<2>2. ASSUME NEW p \in xsrcS[x]
       PROVE <<x,p>> \in squar'
 <3>1. x \in {y \in Xids : RP_Quarantine(y)} BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. {<<x,q>> : q \in xsrcS[x]} \in {{<<y,q>> : q \in xsrcS[y]} : y \in {y \in Xids : RP_Quarantine(y)}}
  BY <3>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. <<x,p>> \in {<<x,q>> : q \in xsrcS[x]} BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY <2>1, <3>2, <3>3, Design, SMTT(10), Sizes, Location DEF RP_Q2, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ESBouXiucduyoSgqYf8M.        
 ASSUME PinInv, B2, SFollow, UNCHANGED xsrc
 PROVE UNCHANGED <<xsrcS,xsrcP>> /\ sentry' \subseteq sentry
<2> USE ONLY <1>ESBouXiucduyoSgqYf8M, Sizes, Location, Design
<2>1. \A x \in Xids : ~RP_Posted(x) BY <1>ZXxq7ZUlh0hBhsql, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ESBouXiucduyoSgqYf8M, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

<2>3. QED BY <2>1, <2>2, <1>PKl1lJKpXGVI0yrZ8, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_SX, RP_PX, RP_E2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>f1Y0wBZYE4Htz.        
 /\ IsFiniteSet(PInst) /\ IsFiniteSet(Rq) /\ IsFiniteSet(Gens)
 /\ IsFiniteSet(SPages) /\ IsFiniteSet(Xids)
 BY Sizes, FS_Interval, SMTT(10), Location, Design DEF PInst, Rq, Gens, SPages, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nQKL75Fxdx.        
 ASSUME NEW A, NEW B, NEW C, NEW D,
        IsFiniteSet(A), IsFiniteSet(B), IsFiniteSet(C), IsFiniteSet(D)
 PROVE IsFiniteSet(A \X B \X C \X D)
<2> USE ONLY <1>nQKL75Fxdx, Sizes, Location, Design
<2>1. IsFiniteSet(A \X B) BY FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet((A \X B) \X C) BY <2>1, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet(((A \X B) \X C) \X D) BY <2>2, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. DEFINE U == ((A \X B) \X C) \X D
              F == [t \in U |-> <<t[1][1][1],t[1][1][2],t[1][2],t[2]>>]
<2>5. F \in [U -> (A \X B \X C \X D)]
 BY SMTT(10), Sizes, Location, Design DEF F, U, Sizes, Location, Design
<2>6. \A z \in (A \X B \X C \X D) : <<<<<<z[1],z[2]>>,z[3]>>,z[4]>> \in U
 BY SMTT(10), Sizes, Location, Design DEF U, Sizes, Location, Design
<2>7. \A z \in (A \X B \X C \X D) : F[<<<<<<z[1],z[2]>>,z[3]>>,z[4]>>]=z
 BY SMTT(10), Sizes, Location, Design DEF F, U, Sizes, Location, Design
<2>8. F \in Surjection(U,A \X B \X C \X D)
 BY <2>5, <2>6, <2>7, SMTT(10), Sizes, Location, Design DEF Surjection, Sizes, Location, Design
<2>9. QED BY <2>3, <2>8, FS_Surjection, SMTT(10), Sizes, Location, Design DEF U, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mOXdb4AFBe0It6kG2Px.        
 /\ IsFiniteSet(PInst \X Rq \X Gens \X SPages)
 /\ IsFiniteSet(Xids \X SPages)
 BY <1>f1Y0wBZYE4Htz, <1>nQKL75Fxdx, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qVeeMREBfC.        
 ASSUME NEW H \in SUBSET (PInst \X Rq \X Gens \X SPages),
        NEW E \in SUBSET Xids, NEW X, NEW Q \in SUBSET (Xids \X SPages), NEW p
 PROVE SRefR(H,p) \in Nat /\ SRefE(E,X,p) \in Nat /\ SRefQ(Q,p) \in Nat
<2> USE ONLY <1>qVeeMREBfC, Sizes, Location, Design
<2>1. IsFiniteSet(H) /\ IsFiniteSet(E) /\ IsFiniteSet(Q)
 BY <1>mOXdb4AFBe0It6kG2Px, <1>f1Y0wBZYE4Htz, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. {h \in H : h[4]=p} \subseteq H
       /\ {x \in E : p \in X[x]} \subseteq E
       /\ {h \in Q : h[2]=p} \subseteq Q
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet({h \in H : h[4]=p})
       /\ IsFiniteSet({x \in E : p \in X[x]})
       /\ IsFiniteSet({h \in Q : h[2]=p})
 BY <2>1, <2>2, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>3, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design
\* T2M-END R2M1408_PdRPFinite


<1>cguDrmIVkET7Lr.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_spst'
<2>1. RP_T_spst
 BY ONLY <1>cguDrmIVkET7Lr, SMTT(5) DEF STypeOK, RP_T_spst
<2>2. CASE ~B2
 BY ONLY <1>cguDrmIVkET7Lr, <2>1, <2>2, V22_SF_Off, SMTT(5) DEF sV, RP_T_spst
<2>3. CASE B2
 BY ONLY <1>cguDrmIVkET7Lr, <2>1, <2>3, V22_SF_Status, SMTT(5) DEF RP_T_spst
<2>4. QED BY ONLY <2>2, <2>3

<1>g2d0XcDvt56Baa.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_rpgS'
<2>1. RP_T_rpgS
 BY ONLY <1>g2d0XcDvt56Baa, SMTT(5) DEF STypeOK, RP_T_rpgS
<2>2. CASE ~B2
 BY ONLY <1>g2d0XcDvt56Baa, <2>1, <2>2, V22_SF_Off, SMTT(5) DEF sV, RP_T_rpgS
<2>3. CASE B2
 BY ONLY <1>g2d0XcDvt56Baa, <2>1, <2>3, V22_SF_Holders, SMTT(5) DEF RP_T_rpgS, V22_FH2
<2>4. QED BY ONLY <2>2, <2>3

<1>NjvYCjaSlJxhU8e0.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_sentry'
<2>1. RP_T_sentry
 BY ONLY <1>NjvYCjaSlJxhU8e0, SMTT(5) DEF STypeOK, RP_T_sentry
<2>2. CASE ~B2
 BY ONLY <1>NjvYCjaSlJxhU8e0, <2>1, <2>2, V22_SF_Off, SMTT(5) DEF sV, RP_T_sentry
<2>3. CASE B2
 BY ONLY <1>NjvYCjaSlJxhU8e0, <2>1, <2>3, V22_SF_Sentry, SMTT(5) DEF RP_T_sentry, V22_FE2
<2>4. QED BY ONLY <2>2, <2>3

<1>A1Sb5mM7HaVTJal.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_squar'
<2>1. RP_T_squar /\ RP_T_xsrcS
 BY ONLY <1>A1Sb5mM7HaVTJal, SMTT(5) DEF STypeOK, RP_T_squar, RP_T_xsrcS
<2>2. CASE ~B2
 BY ONLY <1>A1Sb5mM7HaVTJal, <2>1, <2>2, V22_SF_Off, SMTT(5) DEF sV, RP_T_squar
<2>3. CASE B2
 BY ONLY <1>A1Sb5mM7HaVTJal, <2>1, <2>3, V22_SF_Squar, SMTT(5) DEF RP_T_squar, RP_T_xsrcS, V22_FQ2
<2>4. QED BY ONLY <2>2, <2>3

<1>ak2jPIltdDiaCVc.        
 ASSUME B2, SFollow
 PROVE RP_RefDelta
<2> HIDE DEF RP_RefDelta, V22_FH2, V22_FSX, V22_FE2, V22_FQ2
<2>effect. sprefc'=[p \in SPages |-> sprefc[p]+SRefR(V22_FH2,p)-SRefR(rpgS,p)
                         +SRefE(V22_FE2,V22_FSX,p)-SRefE(sentry,xsrcS,p)+SRefQ(V22_FQ2,p)-SRefQ(squar,p)]
 BY ONLY <1>ak2jPIltdDiaCVc, V22_SF_RefCount, ZenonT(10)
<2>fields. rpgS'=V22_FH2 /\ xsrcS'=V22_FSX /\ sentry'=V22_FE2 /\ squar'=V22_FQ2
 BY ONLY <1>ak2jPIltdDiaCVc, V22_SF_Holders, V22_SF_SourceShared, V22_SF_Sentry, V22_SF_Squar, ZenonT(10)
<2>qed. QED BY ONLY <2>effect, <2>fields, SMTT(5) DEF RP_RefDelta

\* T2M-LOCAL-VISIBILITY

<1>NSUGzTM423PsEC.        
 ASSUME STypeOK, SFollow, NEW p \in SPages
 PROVE /\ SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
       /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
       /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
<2> USE ONLY <1>NSUGzTM423PsEC, Sizes, Location, Design
<2>1. RP_T_rpgS /\ RP_T_sentry /\ RP_T_squar
 BY Sizes, Location, Design DEF STypeOK, RP_T_rpgS, RP_T_sentry, RP_T_squar, Sizes, Location, Design
<2>2. RP_T_rpgS' /\ RP_T_sentry' /\ RP_T_squar'
 BY <1>g2d0XcDvt56Baa, <1>NjvYCjaSlJxhU8e0, <1>A1Sb5mM7HaVTJal, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>qVeeMREBfC, Sizes, Location, Design DEF RP_T_rpgS, RP_T_sentry, RP_T_squar, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AnajBeZS7htcLkTpZ8C91mxOHTa.        
 ASSUME PinInv, SFollow
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>AnajBeZS7htcLkTpZ8C91mxOHTa, Sizes, Location, Design
<2>1. PrefcMatchesHolders /\ STypeOK
 BY V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY <2>2, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RP_RefDelta BY <2>3, <1>ak2jPIltdDiaCVc, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW p \in SPages
        PROVE sprefc'[p] = SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
  <4>1. SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
        /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
        /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
   BY <2>1, <1>NSUGzTM423PsEC, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. sprefc[p] = SRefR(rpgS,p)+SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
   BY <2>1, <2>3, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
  <4>3. QED BY ONLY <3>1, <3>2, <4>1, <4>2, SMTT(10) DEF RP_RefDelta
 <3>3. QED BY <2>3, <3>2, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1410_PdRPRefCount


<1>nD6Ms1kWpq68uZA.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>nD6Ms1kWpq68uZA, Sizes, Location, Design, ZenonT(10) DEF EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QB8FDBdU3FB5Ncn4lnMEDXP9V3ky.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>QB8FDBdU3FB5Ncn4lnMEDXP9V3ky, Sizes, Location, Design, <1>AnajBeZS7htcLkTpZ8C91mxOHTa DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yKuqYS4uodfaBD2G9wxMwBN.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>yKuqYS4uodfaBD2G9wxMwBN, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>yKuqYS4uodfaBD2G9wxMwBN, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dlRLZLJP8YIdC37.         PinInv => RP_PageTypes
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_sfly, V22_T_sled, V22_T_xdst, SMTT(5) DEF RP_PT_hw, RP_PT_kpin, RP_PT_krs, RP_PT_led, RP_PT_pgn, RP_PT_plt, RP_PT_pr, RP_PT_pst, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_sled, RP_PT_xdst, RP_PageTypes

\* T2M-END R2M1445_PdRPPageTypes


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>QMrZB.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE dlzHJ(i,r)
  BY ONLY <1>QMrZB, Sizes, Location, Design DEF K8, dlzHJ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gfplo.        
  ASSUME NEW p \in Pages, K7
  PROVE Zzz7b(p)
  BY ONLY <1>gfplo, Sizes, Location, Design DEF K7, Zzz7b, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SybH9.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, IsP(i), ph[i][r] \in {"sent","exp","reg"}
  PROVE
    /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
    /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
    /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
    /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
    /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
<2> USE ONLY <1>SybH9, Sizes, Location, Design
<2>1. K8 /\ K7
  BY V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. dlzHJ(i,r)
  BY <2>1, <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
      /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
  BY <2>2, Zenon, Sizes, Location, Design DEF dlzHJ, Active, OwnedBy, Sizes, Location, Design
<2>4. sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
      /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
  BY <2>2, Zenon, Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design
<2>5. Zzz7b(rpg[i][r])
  BY <2>1, <2>3, <1>gfplo, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
  BY <2>3, <2>5, Zenon, Sizes, Location, Design DEF Zzz7b, Sizes, Location, Design
<2>7. QED
  BY <2>3, <2>4, <2>6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jc4Pk2myFy.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst
  BY ONLY <1>jc4Pk2myFy, Sizes, Location, Design, SMT DEF KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yGU8fpsp8.        
  /\ \A i \in DInst : i \in Inst /\ IsD(i)
  /\ \A i \in PInst : i \in Inst /\ IsP(i)
  /\ \A i \in Inst : IsP(i) \/ IsD(i)
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMT, Location, Design DEF Inst, DInst, PInst, NL, IsD, IsP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nc333adi77M.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpDone(i, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>nc333adi77M, Sizes, Location, Design, Zenon DEF PExpDone, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1567_PdRPPP_PdBPExpDoneFrames


<1>lUkZjHIo.        
  ASSUME NEW i \in Inst, NEW r \in Rq, BPEnd(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>lUkZjHIo, Sizes, Location, Design, Zenon DEF BPEnd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k5vlhp4Hi.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE
    /\ IsP(i) /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
    /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {} /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
    /\ \A j \in Inst, s \in Rq : ph'[j][s] = IF j=i /\ s=r THEN "end" ELSE ph[j][s]
    /\ \A q \in Pages : pst'[q] = IF q=rpg[i][r] THEN (IF BPFreed(i,r) THEN "free" ELSE "drain") ELSE pst[q]
    /\ \A q \in Pages : pr'[q] = IF q=rpg[i][r] /\ BPFreed(i,r) THEN 0 ELSE pr[q]
    /\ \A q \in Pages : pgn'[q] = IF q=rpg[i][r] /\ BPFreed(i,r) THEN 0 ELSE pgn[q]
    /\ \A q \in Pages : plt'[q] = IF q=rpg[i][r] /\ BPFreed(i,r) THEN 0 ELSE plt[q]
<2> USE ONLY <1>k5vlhp4Hi, Sizes, Location, Design
<2>1. AydA /\ OyyWS /\ IwCp /\ vS7em /\ bFwlN
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF BPEnd, BPFreed, AydA, OyyWS, IwCp, vS7em, bFwlN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>V0TEw.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE \A j \in Inst, s \in Rq :
    /\ (Active(j,s)' => Active(j,s) /\ ph'[j][s] = ph[j][s])
    /\ (ph[j][s] # "none" => ph'[j][s] # "none")
<2> USE ONLY <1>V0TEw, Sizes, Location, Design
<2>1. \A j \in Inst, s \in Rq : ph'[j][s] = IF j=i /\ s=r THEN "end" ELSE ph[j][s]
  BY <1>k5vlhp4Hi, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rORIJN56qpNM.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE \A j \in Inst, s \in Rq : (Active(j,s) /\ rpg[j][s] = rpg[i][r]) => j=i /\ s=r
<2> USE ONLY <1>rORIJN56qpNM, Sizes, Location, Design
<2>1. IsP(i) /\ ph[i][r] \in {"sent","exp","reg"} /\ K8
  BY V21_Inv_K8, Sizes, Location, Design DEF BPEnd, Sizes, Location, Design
<2>2. pr[rpg[i][r]] = r /\ Loc(rpg[i][r]) = i
  BY <2>1, <1>SybH9, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW j \in Inst, NEW s \in Rq
      PROVE (Active(j,s) /\ rpg[j][s] = rpg[i][r]) => j=i /\ s=r
  <3>1. dlzHJ(j,s)
    BY <2>1, <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. (Active(j,s) /\ rpg[j][s] = rpg[i][r]) => j=i
    BY <2>2, <3>1, Zenon, Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design
  <3>3. QED
    BY <2>1, <2>2, <3>1, <3>2, Zenon, Sizes, Location, Design DEF dlzHJ, OwnedBy, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m7hyag3D.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE
    /\ \A j \in DInst, s \in Rq : ph'[j][s] = ph[j][s]
    /\ \A q \in Pages : IsD(Loc(q)) => pst'[q] = pst[q] /\ pr'[q] = pr[q] /\ pgn'[q] = pgn[q] /\ plt'[q] = plt[q]
<2> USE ONLY <1>m7hyag3D, Sizes, Location, Design
<2>1. IsP(i) /\ Loc(rpg[i][r]) = i
    /\ (\A j \in Inst, s \in Rq : ph'[j][s] = IF j=i /\ s=r THEN "end" ELSE ph[j][s])
    /\ (\A q \in Pages : pst'[q] = IF q=rpg[i][r] THEN (IF BPFreed(i,r) THEN "free" ELSE "drain") ELSE pst[q])
    /\ (\A q \in Pages : pr'[q] = IF q=rpg[i][r] /\ BPFreed(i,r) THEN 0 ELSE pr[q])
    /\ (\A q \in Pages : pgn'[q] = IF q=rpg[i][r] /\ BPFreed(i,r) THEN 0 ELSE pgn[q])
    /\ (\A q \in Pages : plt'[q] = IF q=rpg[i][r] /\ BPFreed(i,r) THEN 0 ELSE plt[q])
  BY <1>k5vlhp4Hi, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Location, Sizes, SMT, Design DEF IsP, IsD, DInst, Inst, NL, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>adR1LoiGHRoQn.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE \A q \in Pages : pst[q] = "shared" => NHits(q)' = NHits(q)
<2> USE ONLY <1>adR1LoiGHRoQn, Sizes, Location, Design
<2>1. K7 /\ UNCHANGED <<rpg,rhit>>
  BY <1>lUkZjHIo, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ASSUME NEW q \in Pages
      PROVE pst[q] = "shared" => NHits(q)' = NHits(q)
  <3>0. Zzz7b(q) /\ Loc(q) \in Inst
    BY <2>1, <1>gfplo, Location, Sizes, Design DEF KPages, Sizes, Location, Design
  <3>1. pst[q] = "shared" => IsD(Loc(q)) /\ Loc(q) \in DInst
    BY <3>0, Sizes, SMT, Location, Design DEF Zzz7b, IsD, Inst, DInst, NL, Sizes, Location, Design
  <3>2. pst[q] = "shared" => {s \in Rq : ph'[Loc(q)][s] \in {"run","ovl"} /\ rhit'[Loc(q)][s] /\ rpg'[Loc(q)][s] = q}
      = {s \in Rq : ph[Loc(q)][s] \in {"run","ovl"} /\ rhit[Loc(q)][s] /\ rpg[Loc(q)][s] = q}
    BY <2>1, <3>1, <1>m7hyag3D, SMT, Sizes, Location, Design DEF Sizes, Location, Design
  <3>3. QED
    BY <3>2, Sizes, Location, Design DEF NHits, Sizes, Location, Design
<2>3. QED
  BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FHg9BRUW.        
  ASSUME OyyWS, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE pst' = [pst EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"]
  BY ONLY <1>FHg9BRUW, Sizes, Location, Design, SMT DEF PageTo, OyyWS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Xs1FLIA.        
  ASSUME IwCp, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE pr' = [pr EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
  BY ONLY <1>Xs1FLIA, Sizes, Location, Design, SMT DEF PageTo, IwCp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vcnAMsT0.        
  ASSUME vS7em, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE pgn' = [pgn EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
  BY ONLY <1>vcnAMsT0, Sizes, Location, Design, SMT DEF PageTo, vS7em, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HjjUTrwl.        
  ASSUME bFwlN, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE plt' = [plt EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
  BY ONLY <1>HjjUTrwl, Sizes, Location, Design, SMT DEF PageTo, bFwlN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DUJEje1U.        
  ASSUME dcfPK, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED led
  BY ONLY <1>DUJEje1U, Sizes, Location, Design, SMT DEF PageTo, dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lhglIXdXB.        
  ASSUME h9WLgd, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED sled
  BY ONLY <1>lhglIXdXB, Sizes, Location, Design, SMT DEF PageTo, h9WLgd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ey6BAKZZyS.        
  ASSUME p1YmMe5, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED prefc
  BY ONLY <1>Ey6BAKZZyS, Sizes, Location, Design, SMT DEF PageTo, p1YmMe5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cy2yKms0.        
  ASSUME vRZWI, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED pqp
  BY ONLY <1>cy2yKms0, Sizes, Location, Design, SMT DEF PageTo, vRZWI, Sizes, Location, Design
\* T2M-END R2M1569_PdRPPP_PdBPageTo


<1>mHxqo1esPZm.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpDone(i, r)
  PROVE IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY ONLY <1>mHxqo1esPZm, Sizes, Location, Design, Zenon DEF PExpDone, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dHhedKKYbLYR.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i, r)
  PROVE BPEnd(i,r)
<2> USE ONLY <1>dHhedKKYbLYR, Sizes, Location, Design
<2>1. IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY <1>mHxqo1esPZm, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
      /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {} /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
      /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
  BY <2>1, <1>SybH9, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. OyyWS /\ dcfPK /\ h9WLgd /\ IwCp /\ vS7em /\ bFwlN /\ p1YmMe5 /\ vRZWI
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>4. PageTo(rpg[i][r], IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain", 0, led[rpg[i][r]], sled[rpg[i][r]])
  BY <2>2, Design, Zenon, Sizes, Location DEF PExpDone, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, PageTo, Sizes, Location, Design
<2>5. pst' = [pst EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain"]
    /\ pr' = [pr EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
    /\ pgn' = [pgn EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
    /\ plt' = [plt EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
    /\ UNCHANGED <<led,sled,prefc,pqp>>
 <3>1. pst' = [pst EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain"]
  BY ONLY <2>2, <2>3, <2>4, <1>FHg9BRUW, Sizes, Location, Design, SMTT(5)
 <3>2. pr' = [pr EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
  BY ONLY <2>2, <2>3, <2>4, <1>Xs1FLIA, Sizes, Location, Design, SMTT(5)
 <3>3. pgn' = [pgn EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
  BY ONLY <2>2, <2>3, <2>4, <1>vcnAMsT0, Sizes, Location, Design, SMTT(5)
 <3>4. plt' = [plt EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
  BY ONLY <2>2, <2>3, <2>4, <1>HjjUTrwl, Sizes, Location, Design, SMTT(5)
 <3>5. UNCHANGED led
  BY ONLY <2>2, <2>3, <2>4, <1>DUJEje1U, Sizes, Location, Design, SMTT(5)
 <3>6. UNCHANGED sled
  BY ONLY <2>2, <2>3, <2>4, <1>lhglIXdXB, Sizes, Location, Design, SMTT(5)
 <3>7. UNCHANGED prefc
  BY ONLY <2>2, <2>3, <2>4, <1>Ey6BAKZZyS, Sizes, Location, Design, SMTT(5)
 <3>8. UNCHANGED pqp
  BY ONLY <2>2, <2>3, <2>4, <1>cy2yKms0, Sizes, Location, Design, SMTT(5)
 <3>9. QED BY ONLY <3>1, <3>2, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, SMTT(5)
<2>6. QED
  BY <2>1, <2>2, <2>5, <1>nc333adi77M, Zenon, Sizes, Location, Design DEF PExpDone, BPEnd, Sizes, Location, Design
\* T2M-END R2M1570_PdRPPP_PdBPExpDoneEffects


<1>ZAl5HW.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE K16'
<2> USE ONLY <1>ZAl5HW, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (GrownP(bb_p) =>
         /\ ph[Loc(bb_p)][pr[bb_p]] \in {"run", "ovl"} /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p]
         /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
         /\ plt[bb_p] = ptl[bb_p] /\ ptl[bb_p] \in {0, 1}
         /\ NoWriteInto(bb_p))'
  BY Sizes, Location, Design DEF K16, Sizes, Location, Design
<2>1. K16
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lUkZjHIo, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (GrownP(bb_p) =>
         /\ ph[Loc(bb_p)][pr[bb_p]] \in {"run", "ovl"} /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p]
         /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
         /\ plt[bb_p] = ptl[bb_p] /\ ptl[bb_p] \in {0, 1}
         /\ NoWriteInto(bb_p))'
  BY <2>1, <2>2, <1>m7hyag3D, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF DInst, GrownP, InFl, Inst, IsD, K16, NL, NoWriteInto, Writing, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K16, Sizes, Location, Design
\* T2M-END R2M1578_PdRPPP_PdBPExitLK16

\* T2M-SCOPE R2M1579_PdRPPP_PdBPExitLK17

<1>wSfB3.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE K7'
<2> USE ONLY <1>wSfB3, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (ptl[bb_p] >= 0)' /\ (pst[bb_p] = "free" => (pr[bb_p] = 0 /\ pgn[bb_p] = 0 /\ plt[bb_p] = 0 /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
                               /\ prefc[bb_p] = 0 /\ pqp[bb_p] = 0))' /\ (pst[bb_p] \in {"priv", "drain", "quar"} => (pr[bb_p] \in Rq /\ pgn[bb_p] \in Gens /\ pgn[bb_p] <= gen[pr[bb_p]]))' /\ (pst[bb_p] = "quar" => pqp[bb_p] \in Inst)' /\ (pst[bb_p] # "quar" => pqp[bb_p] = 0)' /\ (pst[bb_p] # "shared" => prefc[bb_p] = 0)' /\ (pst[bb_p] = "shared" => (IsD(Loc(bb_p)) /\ led[bb_p] = {} /\ ptl[bb_p] = PS /\ prefc[bb_p] = NHits(bb_p)))' /\ (pst[bb_p] = "drain" => (led[bb_p] # {} \/ sled[bb_p] # {} \/ KPinned(bb_p)))' /\ (pst[bb_p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(bb_p), r, bb_p))' /\ (pst[bb_p] = "priv" => \/ (Maps(Loc(bb_p), pr[bb_p], bb_p) /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p] /\ ~rhit[Loc(bb_p)][pr[bb_p]])
                              \/ GrownP(bb_p))'
  BY Sizes, Location, Design DEF K7, Sizes, Location, Design
<2>1. K7
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lUkZjHIo, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (ptl[bb_p] >= 0)'
  BY <2>1, <2>2, <1>k5vlhp4Hi, <1>V0TEw, <1>rORIJN56qpNM, <1>m7hyag3D, <1>adR1LoiGHRoQn, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF Active, BPFreed, GrownP, K7, KPinned, Maps, Sizes, Location, Design
<2>4. (pst[bb_p] = "free" => (pr[bb_p] = 0 /\ pgn[bb_p] = 0 /\ plt[bb_p] = 0 /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
                               /\ prefc[bb_p] = 0 /\ pqp[bb_p] = 0))'
  BY <2>1, <2>2, <1>k5vlhp4Hi, <1>V0TEw, <1>rORIJN56qpNM, <1>m7hyag3D, <1>adR1LoiGHRoQn, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF Active, BPFreed, GrownP, K7, KPinned, Maps, Sizes, Location, Design
<2>5. (pst[bb_p] \in {"priv", "drain", "quar"} => (pr[bb_p] \in Rq /\ pgn[bb_p] \in Gens /\ pgn[bb_p] <= gen[pr[bb_p]]))'
  BY <2>1, <2>2, <1>k5vlhp4Hi, <1>V0TEw, <1>rORIJN56qpNM, <1>m7hyag3D, <1>adR1LoiGHRoQn, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF Active, BPFreed, GrownP, K7, KPinned, Maps, Sizes, Location, Design
<2>6. (pst[bb_p] = "quar" => pqp[bb_p] \in Inst)'
  BY <2>1, <2>2, <1>k5vlhp4Hi, <1>V0TEw, <1>rORIJN56qpNM, <1>m7hyag3D, <1>adR1LoiGHRoQn, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF Active, BPFreed, GrownP, K7, KPinned, Maps, Sizes, Location, Design
<2>7. (pst[bb_p] # "quar" => pqp[bb_p] = 0)'
  BY <2>1, <2>2, <1>k5vlhp4Hi, <1>V0TEw, <1>rORIJN56qpNM, <1>m7hyag3D, <1>adR1LoiGHRoQn, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF Active, BPFreed, GrownP, K7, KPinned, Maps, Sizes, Location, Design
<2>8. (pst[bb_p] # "shared" => prefc[bb_p] = 0)'
  BY <2>1, <2>2, <1>k5vlhp4Hi, <1>V0TEw, <1>rORIJN56qpNM, <1>m7hyag3D, <1>adR1LoiGHRoQn, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF Active, BPFreed, GrownP, K7, KPinned, Maps, Sizes, Location, Design
<2>9. (pst[bb_p] = "shared" => (IsD(Loc(bb_p)) /\ led[bb_p] = {} /\ ptl[bb_p] = PS /\ prefc[bb_p] = NHits(bb_p)))'
  BY <2>1, <2>2, <1>k5vlhp4Hi, <1>V0TEw, <1>rORIJN56qpNM, <1>m7hyag3D, <1>adR1LoiGHRoQn, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF Active, BPFreed, GrownP, K7, KPinned, Maps, Sizes, Location, Design
<2>10. (pst[bb_p] = "drain" => (led[bb_p] # {} \/ sled[bb_p] # {} \/ KPinned(bb_p)))'
  BY <2>1, <2>2, <1>k5vlhp4Hi, <1>V0TEw, <1>rORIJN56qpNM, <1>m7hyag3D, <1>adR1LoiGHRoQn, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF Active, BPFreed, GrownP, K7, KPinned, Maps, Sizes, Location, Design
<2>11. (pst[bb_p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(bb_p), r, bb_p))'
  BY <2>1, <2>2, <1>k5vlhp4Hi, <1>V0TEw, <1>rORIJN56qpNM, <1>m7hyag3D, <1>adR1LoiGHRoQn, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF Active, BPFreed, GrownP, K7, KPinned, Maps, Sizes, Location, Design
<2>12. (pst[bb_p] = "priv" => \/ (Maps(Loc(bb_p), pr[bb_p], bb_p) /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p] /\ ~rhit[Loc(bb_p)][pr[bb_p]])
                              \/ GrownP(bb_p))'
  BY <2>1, <2>2, <1>k5vlhp4Hi, <1>V0TEw, <1>rORIJN56qpNM, <1>m7hyag3D, <1>adR1LoiGHRoQn, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF Active, BPFreed, GrownP, K7, KPinned, Maps, Sizes, Location, Design
<2>13. QED
  BY <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, <2>12, Sizes, Location, Design DEF K7, Sizes, Location, Design
\* T2M-END R2M1583_PdRPPP_PdBPExitLK7

\* T2M-SCOPE R2M1584_PdRPPP_PdBPExitLOtherRecord8

<1>LR1MDa9t.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i, r)
  PROVE K7'
  BY ONLY <1>LR1MDa9t, Sizes, Location, Design, <1>dHhedKKYbLYR, <1>wSfB3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XhCFAQGyB.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i, r)
  PROVE K16'
  BY ONLY <1>XhCFAQGyB, Sizes, Location, Design, <1>dHhedKKYbLYR, <1>ZAl5HW DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Rwryi1RwYB.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
  PROVE K7'
  BY ONLY <1>Rwryi1RwYB, Sizes, Location, Design, <1>LR1MDa9t, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LkDkgr2zekH.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
  PROVE K16'
  BY ONLY <1>LkDkgr2zekH, Sizes, Location, Design, <1>XhCFAQGyB, V21_Inv_K16 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>o0ug5dmdGVA.        
 ASSUME PinInv, SFollow, UNCHANGED <<kpin,krs,gen>>, RP_RecordProgress, RP_RecordReady, RP_NoneFrame
 PROVE P_SI1'
<2> USE ONLY <1>o0ug5dmdGVA, Sizes, Location, Design
<2>1. (B2 => SI1 /\ SI4) /\ STypeOK
 BY V21_Inv_P_SI1, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI4, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF P_SI1, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RP_SFollowEffect BY <2>3, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A i \in PInst,r \in Rq :
  /\ (ph'[i][r]="none" => smap'[i][r]=0 /\ ~schoice'[i][r])
  /\ (smap'[i][r] # 0 => schoice'[i][r] /\ Loc(smap'[i][r])=i)
 BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF SI1, RP_SFollowEffect, RP_New, RP_NoneFrame, Sizes, Location, Design
 <3>3. \A i \in PInst,r \in Rq :
   (Active(i,r)' /\ smap'[i][r] \in SPages /\ spst'[smap'[i][r]]="shared") => SH(i,r,rg'[i][r],smap'[i][r]) \in rpgS'
  <4>1. ASSUME NEW i \in PInst, NEW r \in Rq,
         Active(i,r)', smap'[i][r] \in SPages, spst'[smap'[i][r]]="shared"
         PROVE SH(i,r,rg'[i][r],smap'[i][r]) \in rpgS'
   <5>1. rg'[i][r]=rg[i][r] /\ smap'[i][r]=smap[i][r]
    BY <3>1, <4>1, Sizes, SMTT(10), Location, Design DEF RP_SFollowEffect, RP_New, SPages, Sizes, Location, Design
   <5>2. Active(i,r) /\ spst[smap[i][r]]="shared"
    BY <2>3, <4>1, <5>1, <1>irl4UaCCkNMPiRRv, Sizes, Location, Design DEF RP_RecordProgress, Sizes, Location, Design
   <5>3. SH(i,r,rg[i][r],smap[i][r]) \in rpgS
    BY <2>1, <2>3, <4>1, <5>1, <5>2, Sizes, Location, Design DEF SI1, Sizes, Location, Design
   <5>4. RP_HLive(SH(i,r,rg'[i][r],smap'[i][r]))
    BY <4>1, SMTT(10), Sizes, Location, Design DEF RP_HLive, SH, Active, Sizes, Location, Design
   <5>5. QED BY <3>1, <5>1, <5>3, <5>4, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_H2, Sizes, Location, Design
  <4>2. QED BY <4>1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. \A i \in PInst,r \in Rq : ph'[i][r] \in {"reg","sent","exp"} => SSendReady(i,r)'
  <4>1. ASSUME NEW i \in PInst, NEW r \in Rq, ph'[i][r] \in {"reg","sent","exp"}
         PROVE SSendReady(i,r)'
   <5>1. rg'[i][r]=rg[i][r] /\ SSendReady(i,r)
    BY <2>3, <4>1, Sizes, Location, Design DEF RP_RecordReady, Sizes, Location, Design
   <5>2. smap'[i][r]=smap[i][r] /\ schoice'[i][r]=schoice[i][r]
    BY <3>1, <5>1, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_New, Sizes, Location, Design
   <5>3. smap[i][r] # 0 => smap[i][r] \in SPages /\ spst[smap[i][r]]="shared"
    BY <2>1, <5>1, Design, SMTT(10), Sizes, Location DEF STypeOK, SSendReady, Sizes, Location, Design
   <5>4. QED BY <2>1, <2>3, <5>1, <5>2, <5>3, <1>Ua3eOhQVTzEuP0Q, SMTT(10), Sizes, Location, Design DEF SSendReady, Sizes, Location, Design
  <4>2. QED BY <4>1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>5. \A h \in rpgS' :
  /\ Loc(h[4])=h[1] /\ h[3]<=gen'[h[2]]
  /\ (rg'[h[1]][h[2]]=h[3] /\ Active(h[1],h[2])' /\ smap'[h[1]][h[2]]=h[4]) \/ SHPin(h)'
  <4>1. ASSUME NEW h \in rpgS'
         PROVE /\ Loc(h[4])=h[1] /\ h[3]<=gen'[h[2]]
               /\ (rg'[h[1]][h[2]]=h[3] /\ Active(h[1],h[2])' /\ smap'[h[1]][h[2]]=h[4]) \/ SHPin(h)'
   <5>1. h \in rpgS /\ (RP_HLive(h) \/ RP_HPin(h))
    BY <3>1, <4>1, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_H2, Sizes, Location, Design
   <5>2. h[1] \in PInst /\ h[2] \in Rq
    BY <2>1, <5>1, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
   <5>3. Loc(h[4])=h[1] /\ h[3]<=gen[h[2]]
         /\ ((rg[h[1]][h[2]]=h[3] /\ Active(h[1],h[2]) /\ smap[h[1]][h[2]]=h[4]) \/ SHPin(h))
    BY <2>1, <2>3, <5>1, Sizes, Location, Design DEF SI1, Sizes, Location, Design
   <5>4. SHPin(h) <=> RP_HPin(h)
    BY SMTT(10), Sizes, Location, Design DEF SHPin, RP_HPin, Sizes, Location, Design
   <5>5. QED BY <3>1, <5>1, <5>2, <5>3, <5>4, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_New, RP_HLive, RP_HPin, SHPin, Active, Sizes, Location, Design
  <4>2. QED BY <4>1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>6. QED BY <2>3, <3>2, <3>3, <3>4, <3>5, Sizes, Location, Design DEF P_SI1, SI1, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1786_PdRPSI1


<1>MLfbUoJ4ChDkEUo8MRyWxw.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE UNCHANGED gen /\ RP_RecordReady /\ RP_NoneFrame
<2> USE ONLY <1>MLfbUoJ4ChDkEUo8MRyWxw, Sizes, Location, Design
<2>1. B2 => \A j \in PInst,u \in Rq : ph[j][u] \in {"reg","sent","exp"} => SSendReady(j,u)
 BY V21_Inv_P_SI1, Sizes, Location, Design DEF P_SI1, SI1, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>MLfbUoJ4ChDkEUo8MRyWxw, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_RecordReady, RP_NoneFrame, PInst, Inst, NL, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DmQKJIbdIrVM.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE P_SI1'
 BY ONLY <1>DmQKJIbdIrVM, Sizes, Location, Design, <1>MLfbUoJ4ChDkEUo8MRyWxw, <1>yKuqYS4uodfaBD2G9wxMwBN, <1>nD6Ms1kWpq68uZA, <1>o0ug5dmdGVA DEF Sizes, Location, Design
\* T2M-END R2M1794_PdRPSI1_PExpDone


<1>tGWnImyZXpAlbrjvqJaPDN.        
 ASSUME K7', K16', RP_PT_pst'
 PROVE BaseQuietConservation'
<2> USE ONLY <1>tGWnImyZXpAlbrjvqJaPDN, Sizes, Location, Design
<2>1. ASSUME Quiet', NEW p \in Pages
       PROVE pst'[p] \in {"free","quar"} \/ (pst'[p]="shared" /\ prefc'[p]=0)
 <3>1. Loc(p) \in Inst BY Location, Sizes, Design DEF KPages, Sizes, Location, Design
 <3>2. pst'[p] # "priv"
  BY ONLY <1>tGWnImyZXpAlbrjvqJaPDN, Sizes, Location, Design, <2>1, <3>1, SMTT(10) DEF K7, K16, Quiet, Maps, GrownP, Active, Sizes, Location, Design
 <3>3. pst'[p] # "drain" BY <2>1, Sizes, Location, Design DEF K7, Quiet, Sizes, Location, Design
 <3>4. {r \in Rq : ph'[Loc(p)][r] \in {"run","ovl"} /\ rhit'[Loc(p)][r] /\ rpg'[Loc(p)][r]=p}={}
  BY ONLY <1>tGWnImyZXpAlbrjvqJaPDN, Sizes, Location, Design, <2>1, <3>1 DEF Quiet, Active, Sizes, Location, Design
 <3>5. pst'[p]="shared" => prefc'[p]=0
  BY ONLY <1>tGWnImyZXpAlbrjvqJaPDN, Sizes, Location, Design, <2>1, <3>4, FS_EmptySet DEF K7, NHits, Sizes, Location, Design
 <3>6. QED BY <2>1, <3>2, <3>3, <3>5, Sizes, Location, Design DEF RP_PT_pst, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF BaseQuietConservation, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nMxL7fiqpNWKeNUrCfZ.        
 ASSUME PinInv, SFollow, RP_NoneFrame, P_SI1', PrefcMatchesHolders'
 PROVE IF ~B2 THEN TRUE ELSE
  ((Quiet' /\ sentry'={} /\ \A p \in SPages : ~swrite'[p] /\ (spst'[p] \in {"priv","drain"} => sready'[p]) /\ ~SPin(p)') =>
   \A p \in SPages : spst'[p] \in {"free","quar"} \/ (spst'[p]="shared" /\ sprefc'[p]=SRefQ(squar',p)))
<2> USE ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design
<2>1. (B2 => SI2) /\ STypeOK BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK DEF P_SI2, Sizes, Location, Design
<2>2. RP_T_rpgS' /\ RP_T_spst' BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>1, <1>g2d0XcDvt56Baa, <1>cguDrmIVkET7Lr DEF Sizes, Location, Design
<2>3. CASE ~B2 BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>3 DEF Sizes, Location, Design
<2>4. CASE B2
 <3>1. RP_SFollowEffect BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <1>PKl1lJKpXGVI0yrZ8 DEF Sizes, Location, Design
 <3>2. ASSUME Quiet', sentry'={}, \A p \in SPages : ~swrite'[p] /\ (spst'[p] \in {"priv","drain"} => sready'[p]) /\ ~SPin(p)'
        PROVE \A p \in SPages : spst'[p] \in {"free","quar"} \/ (spst'[p]="shared" /\ sprefc'[p]=SRefQ(squar',p))
  <4>1. rpgS'={}
   BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <2>2, SMTT(10) DEF P_SI1, SI1, RP_T_rpgS, Quiet, SHPin, SPin, PInst, Inst, NL, Sizes, Location, Design
  <4>2. ASSUME NEW p \in SPages
         PROVE sprefc'[p]=SRefQ(squar',p)
   <5>1. SRefR(rpgS',p)=0 /\ SRefE(sentry',xsrcS',p)=0
    BY ONLY <3>2, <4>1, FS_EmptySet, ZenonT(5) DEF SRefR, SRefE
   <5>2. SRefQ(squar',p) \in Nat BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>2, <2>1, <1>NSUGzTM423PsEC DEF Sizes, Location, Design
   <5>3. QED BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>2, <5>1, <5>2, SMTT(10) DEF PrefcMatchesHolders, Sizes, Location, Design
  <4>3. ASSUME NEW p \in SPages
         PROVE spst'[p] \in {"free","quar","shared"}
   <5>1. Loc(p) \in PInst BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3 DEF Sizes, Location, Design
   <5>2. ~RP_Pin2(p) BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3 DEF SPin, RP_Pin2, Sizes, Location, Design
   <5>3. RP_E2(0)={} BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <3>1 DEF RP_SFollowEffect, Sizes, Location, Design
   <5>4. (spst[p]="priv" => RP_Ended(p))
    BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <2>1, <5>1, SMTT(10) DEF SI2, Quiet, Active, RP_NoneFrame, RP_Ended, PInst, Inst, NL, Sizes, Location, Design
   <5>5. spst'[p] \in {"priv","drain","dup"} => sready[p]
    BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <2>1, <3>1, SMTT(10) DEF RP_SFollowEffect, SI2, Sizes, Location, Design
   <5>6. spst'[p] \notin {"priv","drain","dup"}
    BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <3>1, <5>2, <5>3, <5>4, <5>5, SMTT(10) DEF RP_SFollowEffect, RP_Drop, Sizes, Location, Design
   <5>7. QED BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <2>2, <5>6 DEF RP_T_spst, Sizes, Location, Design
  <4>4. QED BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>2, <4>3 DEF Sizes, Location, Design
 <3>3. QED BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2 DEF Sizes, Location, Design
<2>5. QED BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>3, <2>4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eLjdrc1PhqLC.        
 ASSUME PinInv, SFollow, RP_NoneFrame, P_SI1', PrefcMatchesHolders', K7', K16', RP_PT_pst'
 PROVE QuietConservation'
<2> USE ONLY <1>eLjdrc1PhqLC, Sizes, Location, Design
<2>1. BaseQuietConservation' BY <1>tGWnImyZXpAlbrjvqJaPDN, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design DEF QuietConservation, Sizes, Location, Design
\* T2M-END R2M1787_PdRPQuiet


<1>GbRA6lzqR1bZYcWOZbogK.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE RP_PT_pst'
<2> USE ONLY <1>GbRA6lzqR1bZYcWOZbogK, Sizes, Location, Design
<2>1. RP_PT_pst BY <1>dlRLZLJP8YIdC37, Sizes, Location, Design DEF RP_PageTypes, Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_PT_pst, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, AfterEv, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OgD2ZHUSEnBcIOPEGkw4F7ZPMY.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE QuietConservation'
 BY ONLY <1>OgD2ZHUSEnBcIOPEGkw4F7ZPMY, Sizes, Location, Design, <1>MLfbUoJ4ChDkEUo8MRyWxw, <1>DmQKJIbdIrVM, <1>QB8FDBdU3FB5Ncn4lnMEDXP9V3ky, <1>Rwryi1RwYB, <1>LkDkgr2zekH, <1>GbRA6lzqR1bZYcWOZbogK, <1>eLjdrc1PhqLC DEF Sizes, Location, Design
\* T2M-END R2M1795_PdRPQuiet_PExpDone


<1>CZs0zteS9nPA.        
 ASSUME PinInv, SFollow, RP2_TransportFrame, RP2_EntryProgress, RP2_HardwareProgress
 PROVE P_SI4'
<2> USE ONLY <1>CZs0zteS9nPA, Sizes, Location, Design
<2>1. (B2 => SI4 /\ SI7) /\ STypeOK
 BY V21_Inv_P_SI4, V21_Inv_SI7, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>3. CASE B2
 <3>1. UNCHANGED <<xsrcS,xsrcP>> /\ sentry' \subseteq sentry
  BY <2>3, <1>ESBouXiucduyoSgqYf8M, Sizes, Location, Design DEF RP2_TransportFrame, Sizes, Location, Design
 <3>2. RP_SFollowEffect BY <2>3, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A x \in Xids : xprefixOK'[x]=xprefixOK[x]
  BY <3>2, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP2_HardwareProgress, Sizes, Location, Design
 <3>4. ASSUME NEW x \in Xids
        PROVE /\ xsrcS'[x] \cap xsrcP'[x]={}
              /\ Cardinality(xsrcS'[x] \cup xsrcP'[x])<=1
              /\ xsrcP'[x]={}
              /\ (xsrcS'[x] # {} => x<nx' /\ xsrc'[x] \in Pages)
              /\ \A p \in xsrcS'[x] : Loc(p)=xp'[x]
              /\ (x \in sentry' => x<nx' /\ xsrc'[x] \in Pages /\ (IF xk'[x]="wr" THEN iv'[x] \in {"reg","posted","failret"} ELSE xst'[x]="posted"))
              /\ (hw'[x]="fly" => x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar'))
              /\ (x \in sentry' => \A p \in xsrcS'[x] : spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x]))
              /\ (hw'[x] \in {"issued","stop"} => xprefixOK'[x])
  <4>1. x \in sentry' => ~RP_Close(x)
   BY <3>2, <3>4, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_E2, Sizes, Location, Design
  <4>2. hw'[x]="fly" => x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
   BY <2>1, <2>3, <3>4, SMTT(10), Sizes, Location, Design DEF SI4, SI7, RP2_HardwareProgress, Sizes, Location, Design
  <4>3. squar \subseteq squar'
   BY <3>2, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_Q2, Sizes, Location, Design
  <4>4. (hw'[x]="fly" /\ x \in sentry /\ ~RP_Quarantine(x)) => x \in sentry'
   BY <3>2, <3>4, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_E2, RP2_HardwareProgress, Sizes, Location, Design
  <4>5. RP_Quarantine(x) => \A p \in xsrcS[x] : <<x,p>> \in squar'
   BY <2>3, <3>4, <1>KReYXg7MU3qwoztWhw, Sizes, Location, Design DEF Sizes, Location, Design
  <4>6. x \in sentry' => \A p \in xsrcS'[x] : spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x])
   <5>1. ASSUME x \in sentry', NEW p \in xsrcS'[x]
          PROVE spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x])
    <6>1. p \in SPages /\ spst[p]="shared" /\ skey[p]=STok(xr[x],xg[x])
     BY <2>1, <2>3, <3>1, <3>4, <5>1, SMTT(10), Sizes, Location, Design DEF STypeOK, SI4, Sizes, Location, Design
    <6>2. QED BY <2>1, <2>3, <3>2, <6>1, <1>Ua3eOhQVTzEuP0Q, SMTT(10), Sizes, Location, Design DEF RP2_TransportFrame, RP_SFollowEffect, Sizes, Location, Design
   <5>2. QED BY <5>1, Sizes, Location, Design DEF Sizes, Location, Design
  <4>7. QED BY <2>1, <2>3, <3>1, <3>3, <3>4, <4>1, <4>2, <4>3, <4>4, <4>5, <4>6, SMTT(10), Sizes, Location, Design DEF SI4, RP2_TransportFrame, RP2_EntryProgress, RP2_HardwareProgress, RP_Close, Sizes, Location, Design
 <3>5. QED BY <2>3, <3>4, Sizes, Location, Design DEF P_SI4, SI4, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1980_PdRPR2Transport


<1>Fjd1o21B9ZiEEzrduY8tVyCv2P6wS.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE RP2_TransportFrame /\ RP2_EntryProgress /\ RP2_HardwareProgress
<2> USE ONLY <1>Fjd1o21B9ZiEEzrduY8tVyCv2P6wS, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","failret","cqe","nopost"}]
       /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Fjd1o21B9ZiEEzrduY8tVyCv2P6wS, V22_T_hw, V22_T_iv, SMTT(5)

<2>2. \A y \in Xids :
       /\ (hw[y]="fly" => xst[y]="posted" /\ iv[y] \in {"posted","failret"})
       /\ (iv[y]="reg" => hw[y]="none" /\ xk[y]="wr" /\ xst[y]="posted")
 BY SMTT(10), V21_Inv_K3, Sizes, Location, Design DEF K3, InFl, Sizes, Location, Design
<2>3. RP2_TransportFrame
 BY Design, ZenonT(10), Sizes, Location DEF RP2_TransportFrame, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. RP2_EntryProgress
 BY <2>1, Design, SMTT(10), Sizes, Location DEF RP2_EntryProgress, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>5. RP2_HardwareProgress
 BY <2>1, <2>2, <2>3, Design, SMTT(10), Sizes, Location DEF RP2_HardwareProgress, RP_Close, RP2_TransportFrame, Torn, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>6. QED BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qAVZEjbjiz1YJ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE P_SI4'
 BY ONLY <1>qAVZEjbjiz1YJ, Sizes, Location, Design, <1>Fjd1o21B9ZiEEzrduY8tVyCv2P6wS, <1>CZs0zteS9nPA DEF Sizes, Location, Design
\* T2M-END R2M1984_PdRPR2Transport_PExpDone


<1> QED BY <1>OgD2ZHUSEnBcIOPEGkw4F7ZPMY, <1>QB8FDBdU3FB5Ncn4lnMEDXP9V3ky, <1>DmQKJIbdIrVM, <1>qAVZEjbjiz1YJ, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PExpDone_02_02 SHA a1a0510475997c75ef99f8f0482307b33eb8e414a826395317a3cc8401e9d10d
USE DEF P_PagePoolsDisjoint, V21_Inv_K1, V21_Inv_K14, V21_Inv_K15, V21_Inv_K2, V21_Inv_K4, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI3, V21_Inv_P_SI5, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_SFollowStatic, V22_T_hok, V22_T_nx, V22_T_rpg
HIDE DEF Part_PExpDone_02_01, V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_PrefcMatchesHolders, V21_Inv_SI7, V22_SF_Off
THEOREM Part_PExpDone_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE (P_SI5)' /\ (K8)' /\ (QuarNoReg)' /\ (QuarNeverMapped)' /\ (K4)' /\ (NoFreeUnderRead)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RP_New(i,r) == rg'[i][r] # rg[i][r]


           RP_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           RP_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           RP_H2(unused) == {h \in rpgS : RP_HLive(h) \/ (RP_HPin(h) /\ Mut # "unrefBeforeKDone")}


           RP_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           RP_Src(x) == IF RP_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           RP_SX(unused) == [x \in Xids |-> IF RP_Posted(x) THEN (IF RP_Src(x) \in SPages /\ spst[RP_Src(x)]="shared" THEN {RP_Src(x)} ELSE {}) ELSE xsrcS[x]]


           RP_PX(unused) == [x \in Xids |-> IF RP_Posted(x) THEN (IF RP_Src(x) \in SPages /\ spst[RP_Src(x)]="priv" THEN {RP_Src(x)} ELSE {}) ELSE xsrcP[x]]


           RP_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           RP_Quarantine(x) == x \in sentry /\ ~RP_Close(x) /\
                     ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           RP_E2(unused) == (sentry \cup {x \in Xids : RP_Posted(x)}) \ {x \in Xids : RP_Close(x) \/ RP_Quarantine(x)}


           RP_Q2(unused) == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
                                   UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RP_Quarantine(x)}})


           RP_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\
                    (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           RP_Pin2(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           RP_Drop(p) == (RP_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RP_Pin2(p) /\ sready[p] /\ ~(\E x \in RP_E2(0) : p \in RP_PX(0)[x])


           RP_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
                    spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           RP_SFollowEffect == /\ rpgS'=RP_H2(0) /\ xsrcS'=RP_SX(0) /\ xsrcP'=RP_PX(0) /\ sentry'=RP_E2(0) /\ squar'=RP_Q2(0)
                /\ sprefc'=[p \in SPages |-> sprefc[p]+SRefR(RP_H2(0),p)-SRefR(rpgS,p)
                                    +SRefE(RP_E2(0),RP_SX(0),p)-SRefE(sentry,xsrcS,p)+SRefQ(RP_Q2(0),p)-SRefQ(squar,p)]
                /\ smap'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN 0 ELSE smap[i][r]]]
                /\ schoice'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN FALSE ELSE schoice[i][r]]]
                /\ spst'=[p \in SPages |-> IF \E x \in Xids : RP_Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                                    ELSE IF RP_Drop(p) THEN "free" ELSE IF RP_Ended(p) THEN "drain" ELSE spst[p]]
                /\ xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RP_Valid(x) ELSE xprefixOK[x]]
                /\ dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                                    THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                                          (IF hw[x]="issued" THEN xprefixOK[x] ELSE RP_Valid(x))
                                    ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
                /\ UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>

           \* T2M-LOCAL-VISIBILITY

           RP_RecordProgress == \A i \in PInst,r \in Rq :
            (Active(i,r)' /\ rg'[i][r]=rg[i][r]) => Active(i,r)

           \* T2M-LOCAL-VISIBILITY

           RP_PinFacts(q) ==
            /\ pst[q] \in {"priv","drain","quar","shared"}
            /\ (IsP(Loc(q)) => plt[q]=ptl[q] /\ sfly[q]={} /\ sled[q]={})
            /\ (IsD(Loc(q)) /\ pst[q] # "shared" => led[q]={})
            /\ NoWriteInto(q)


           RP_PinKeep(q) ==
            /\ (pst[q]="shared" => pst'[q]="shared")
            /\ pst'[q] \in {"priv","drain","quar","shared"}
            /\ UNCHANGED <<pr[q],pgn[q],plt[q],ptl[q],pvis[q],sfly[q]>>
            /\ (IsD(Loc(q)) /\ led[q]={} => led'[q]={})
            /\ (IsP(Loc(q)) /\ sled[q]={} => sled'[q]={})
            /\ (NoWriteInto(q) => NoWriteInto(q)')

           \* T2M-LOCAL-VISIBILITY

           RP_PT_pst == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           RP_PT_pr == pr \in [Pages -> 0..NR]


           RP_PT_pgn == pgn \in [Pages -> 0..MG]


           RP_PT_plt == plt \in [Pages -> 0..PS]


           RP_PT_ptl == ptl \in [Pages -> -1..PS]


           RP_PT_pvis == pvis \in [Pages -> BOOLEAN]


           RP_PT_sfly == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           RP_PT_led == led \in [Pages -> SUBSET Xids]


           RP_PT_sled == sled \in [Pages -> SUBSET (Rq \X Gens)]


           RP_PT_hw == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           RP_PT_xdst == xdst \in [Xids -> 0..NP]


           RP_PT_kpin == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           RP_PT_krs == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           RP_PageTypes == RP_PT_pst /\ RP_PT_pr /\ RP_PT_pgn /\ RP_PT_plt /\ RP_PT_ptl /\ RP_PT_pvis /\ RP_PT_sfly /\ RP_PT_led /\ RP_PT_sled /\ RP_PT_hw /\ RP_PT_xdst /\ RP_PT_kpin /\ RP_PT_krs

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

           dlzHJ(i,r) ==
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


           Zzz7b(p) ==
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


           BPEnd(i,r) ==
             LET p == rpg[i][r] IN
             /\ IsP(i) /\ p \in Pages /\ Loc(p) = i /\ pst[p] = "priv"
             /\ ph[i][r] \in {"sent", "exp", "reg"}
             /\ ph' = [ph EXCEPT ![i][r] = "end"]
             /\ pst' = [pst EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"]
             /\ pr' = [pr EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
             /\ pgn' = [pgn EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
             /\ plt' = [plt EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
             /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0
             /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,led,sfly,sled,prefc,pqp,
                             xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,iv,xst,xlt,nx,net,drep,crep,dsucc,gbad>>


           BPFreed(i,r) == led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r])

           \* T2M-LOCAL-VISIBILITY

           BK8C1(j,s) ==
             LET p == rpg[j][s]
                 g == rg[j][s]
                 t == Tag(s, g)
                 x == rx[j][s]
             IN
             IsP(j) => (ph[j][s] \in {"none", "pre", "ready", "reg", "sent", "exp", "end"} /\ ~rhit[j][s])


           BK8C2(j,s) ==
             LET p == rpg[j][s]
                 g == rg[j][s]
                 t == Tag(s, g)
                 x == rx[j][s]
             IN
             IsD(j) => ph[j][s] \in {"none", "wait", "rd", "run", "ovl", "end"}


           BK8C3(j,s) ==
             LET p == rpg[j][s]
                 g == rg[j][s]
                 t == Tag(s, g)
                 x == rx[j][s]
             IN
             ph[j][s] = "none" => (g = 0 /\ p = 0 /\ x = 0 /\ ~rhit[j][s])


           BK8C4(j,s) ==
             LET p == rpg[j][s]
                 g == rg[j][s]
                 t == Tag(s, g)
                 x == rx[j][s]
             IN
             ph[j][s] # "none" => (g \in Gens /\ g <= gen[s])


           BK8C5(j,s) ==
             LET p == rpg[j][s]
                 g == rg[j][s]
                 t == Tag(s, g)
                 x == rx[j][s]
             IN
             ph[j][s] # "none" /\ IsP(j) => (hp[s][g] = j /\ rpe[j][s] = hd[s][g])


           BK8C6(j,s) ==
             LET p == rpg[j][s]
                 g == rg[j][s]
                 t == Tag(s, g)
                 x == rx[j][s]
             IN
             ph[j][s] # "none" /\ IsD(j) => (hd[s][g] = j /\ rpe[j][s] = hp[s][g])


           BK8C7(j,s) ==
             LET p == rpg[j][s]
                 g == rg[j][s]
                 t == Tag(s, g)
                 x == rx[j][s]
             IN
             Active(j, s) => (p \in Pages /\ Loc(p) = j)


           BK8C8(j,s) ==
             LET p == rpg[j][s]
                 g == rg[j][s]
                 t == Tag(s, g)
                 x == rx[j][s]
             IN
             Active(j, s) /\ ~rhit[j][s] => OwnedBy(p, s, g) /\ pst[p] = "priv"


           BK8C9(j,s) ==
             LET p == rpg[j][s]
                 g == rg[j][s]
                 t == Tag(s, g)
                 x == rx[j][s]
             IN
             ph[j][s] = "pre" => (x = 0 /\ led[p] = {} /\ sled[p] = {t} /\ sfly[p] \subseteq {t} /\ plt[p] = 0
                                             /\ (IF t \in sfly[p] THEN ptl[p] = 0 ELSE ptl[p] \in PLens(s, g)))


           BK8C10(j,s) ==
             LET p == rpg[j][s]
                 g == rg[j][s]
                 t == Tag(s, g)
                 x == rx[j][s]
             IN
             ph[j][s] = "ready" => (x = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(s, g))


           BK8C11(j,s) ==
             LET p == rpg[j][s]
                 g == rg[j][s]
                 t == Tag(s, g)
                 x == rx[j][s]
             IN
             ph[j][s] = "reg" => (Mode = "push" /\ PReg /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = s /\ xg[x] = g
                                             /\ iv[x] = "reg" /\ sled[p] = {} /\ sfly[p] = {}
                                             /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(s, g) /\ xlt[x] = ptl[p])


           BK8C12(j,s) ==
             LET p == rpg[j][s]
                 g == rg[j][s]
                 t == Tag(s, g)
                 x == rx[j][s]
             IN
             ph[j][s] = "sent" => (Mode = "push" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = s /\ xg[x] = g
                                              /\ iv[x] \in {"posted", "cqe", "failret"} /\ sled[p] = {} /\ sfly[p] = {}
                                              /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(s, g) /\ xlt[x] = ptl[p])


           BK8C13(j,s) ==
             LET p == rpg[j][s]
                 g == rg[j][s]
                 t == Tag(s, g)
                 x == rx[j][s]
             IN
             ph[j][s] = "exp" => (Mode = "pull" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = s /\ xg[x] = g
                                             /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(s, g) /\ xlt[x] = ptl[p])

           \* T2M-LOCAL-VISIBILITY

           RP_NoNewStop == \A x \in Xids : hw[x] \in {"fly","issued"} => hw'[x] # "stop"


           RP_DReadFrame == \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} =>
            ph[j][r] \in {"run","ovl"} /\ rpg'[j][r]=rpg[j][r]


           RP2_NoNewReg == \A x \in Xids : iv'[x]="reg" => iv[x]="reg"


           RP2_StoppedHeldBack == \A x \in Xids :
            (hw'[x]="stop" /\ hok'[x] /\ xdst'[x] \in Pages /\ Held(xdst[x],x)') =>
            hw[x]="stop" /\ hok[x] /\ Held(xdst[x],x)


           RP2_PrivatePhaseStep == \A i \in PInst,r \in Rq :
            (Active(i,r) /\ rg'[i][r]=rg[i][r] /\ smap[i][r] \in SPages /\ spst[smap[i][r]]="priv" /\ ph[i][r] \in {"pre","ready"} /\ Active(i,r)') => ph'[i][r] \in {"pre","ready"}


           RP2_SI5Q == \A h \in squar : h[1]<nx /\ h[2] \in xsrcS[h[1]] /\ spst[h[2]]="shared" /\ skey[h[2]]=STok(xr[h[1]],xg[h[1]]) /\ iv[h[1]] # "reg"


           RP2_SI5D == \A x \in Xids : (hw[x]="stop" /\ hok[x] /\ xdst[x] \in Pages /\ Held(xdst[x],x)) => dpreOK[xdst[x]]


           RP2_SI5P == \A i \in PInst,r \in Rq : (Active(i,r) /\ smap[i][r] \in SPages /\ spst[smap[i][r]]="priv") => ph[i][r] \in {"pre","ready"}


           RP2_DHeldBack == \A p \in Pages : (IsD(Loc(p)) /\ pst'[p] \in {"priv","drain","quar"}) =>
            pst[p] \in {"priv","drain","quar"} /\ pr'[p]=pr[p] /\ pgn'[p]=pgn[p]


           RP2_StopBack == \A x \in Xids : (hw'[x]="stop" /\ hok'[x]) => hw[x]="stop" /\ hok[x]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_PinFacts, RP_PinKeep, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, BPEnd, BPFreed, BK8C1, BK8C2, BK8C3, BK8C4, BK8C5, BK8C6, BK8C7, BK8C8, BK8C9, BK8C10, BK8C11, BK8C12, BK8C13, RP_NoNewStop, RP_DReadFrame, RP2_NoNewReg, RP2_StoppedHeldBack, RP2_PrivatePhaseStep, RP2_SI5Q, RP2_SI5D, RP2_SI5P, RP2_DHeldBack, RP2_StopBack

<1>PKl1lJKpXGVI0yrZ8.        
 ASSUME B2, SFollow
 PROVE RP_SFollowEffect
<2> HIDE DEF SFollow, RP_SFollowEffect, V22_FH2, V22_FSX, V22_FPX, V22_FE2, V22_FQ2, V22_FDrop, V22_FEnded, V22_FQuarantine
<2>hAlias. RP_H2(0)=V22_FH2
 BY ONLY SMTT(5) DEF RP_H2, RP_HLive, RP_HPin, V22_FH2, V22_FHLive, V22_FHPin
<2>sxAlias. RP_SX(0)=V22_FSX
 BY ONLY SMTT(5) DEF RP_SX, RP_Posted, RP_Src, V22_FSX, V22_FPosted, V22_FSrc
<2>pxAlias. RP_PX(0)=V22_FPX
 BY ONLY SMTT(5) DEF RP_PX, RP_Posted, RP_Src, V22_FPX, V22_FPosted, V22_FSrc
<2>eAlias. RP_E2(0)=V22_FE2
 BY ONLY SMTT(5) DEF RP_E2, RP_Posted, RP_Close, RP_Quarantine, V22_FE2, V22_FPosted, V22_FClose, V22_FQuarantine
<2>qAlias. RP_Q2(0)=V22_FQ2
 BY ONLY SMTT(5) DEF RP_Q2, RP_Quarantine, RP_Close, V22_FQ2, V22_FQuarantine, V22_FClose
<2>statusAlias. \A p \in SPages : RP_Ended(p)=V22_FEnded(p) /\ RP_Drop(p)=V22_FDrop(p)
 BY ONLY <2>pxAlias, <2>eAlias, SMTT(5) DEF RP_Ended, RP_Drop, RP_Pin2, V22_FEnded, V22_FDrop, V22_FPin2
<2>quarantineAlias. \A x \in Xids : RP_Quarantine(x)=V22_FQuarantine(x)
 BY ONLY SMTT(5) DEF RP_Quarantine, RP_Close, V22_FQuarantine, V22_FClose
<2>holders. rpgS'=RP_H2(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>hAlias, V22_SF_Holders, SMTT(5) DEF V22_SF_Holders
<2>sourceShared. xsrcS'=RP_SX(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>sxAlias, V22_SF_SourceShared, SMTT(5) DEF V22_SF_SourceShared
<2>sourcePrivate. xsrcP'=RP_PX(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>pxAlias, V22_SF_SourcePrivate, SMTT(5) DEF V22_SF_SourcePrivate
<2>sentry. sentry'=RP_E2(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>eAlias, V22_SF_Sentry, SMTT(5) DEF V22_SF_Sentry
<2>squar. squar'=RP_Q2(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>qAlias, V22_SF_Squar, SMTT(5) DEF V22_SF_Squar
<2>refcount. sprefc'=[p \in SPages |-> sprefc[p]+SRefR(RP_H2(0),p)-SRefR(rpgS,p)
                      +SRefE(RP_E2(0),RP_SX(0),p)-SRefE(sentry,xsrcS,p)+SRefQ(RP_Q2(0),p)-SRefQ(squar,p)]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>hAlias, <2>sxAlias, <2>eAlias, <2>qAlias, V22_SF_RefCount, SMTT(5) DEF V22_SF_RefCount
<2>map. smap'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN 0 ELSE smap[i][r]]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, V22_SF_Map, SMTT(5) DEF RP_New, V22_SF_Map
<2>choice. schoice'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN FALSE ELSE schoice[i][r]]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, V22_SF_Choice, SMTT(5) DEF RP_New, V22_SF_Choice
<2>status. spst'=[p \in SPages |-> IF \E x \in Xids : RP_Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                      ELSE IF RP_Drop(p) THEN "free" ELSE IF RP_Ended(p) THEN "drain" ELSE spst[p]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>statusAlias, <2>quarantineAlias, V22_SF_Status, SMTT(5) DEF V22_SF_Status
<2>prefix. xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RP_Valid(x) ELSE xprefixOK[x]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, ZenonT(10) DEF SFollow, RP_Valid
<2>dpre. dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                      THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                         (IF hw[x]="issued" THEN xprefixOK[x] ELSE RP_Valid(x))
                      ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, ZenonT(10) DEF SFollow, RP_Valid
<2>static. UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, V22_SF_Static, SMTT(5) DEF V22_SF_Static
<2>qed. QED
 BY ONLY <2>holders, <2>sourceShared, <2>sourcePrivate, <2>sentry, <2>squar,
         <2>refcount, <2>map, <2>choice, <2>status, <2>prefix, <2>dpre, <2>static, SMTT(5) DEF RP_SFollowEffect

\* T2M-LOCAL-VISIBILITY

<1>zfqXeNpr8ate3.        
 ASSUME SFollow
 PROVE UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ONLY <1>zfqXeNpr8ate3, Sizes, Location, Design, ZenonT(10), V21_SFollowStatic DEF sV, Sizes, Location, Design
\* T2M-END R2M1392_PdRPFollowProjection


<1>Ua3eOhQVTzEuP0Q.        
 ASSUME NEW p \in SPages, B2, SFollow, SI4, spst[p]="shared"
 PROVE spst'[p]="shared"
<2> USE ONLY <1>Ua3eOhQVTzEuP0Q, Sizes, Location, Design
<2>1. \A x \in Xids : xsrcP[x]={} BY Sizes, Location, Design DEF SI4, Sizes, Location, Design
<2>2. QED BY <2>1, <1>PKl1lJKpXGVI0yrZ8, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_Drop, RP_Ended, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>irl4UaCCkNMPiRRv.        
 ASSUME NEW p \in SPages, B2, SFollow, spst'[p]="shared"
 PROVE spst[p]="shared"
 BY ONLY <1>irl4UaCCkNMPiRRv, Sizes, Location, Design, <1>PKl1lJKpXGVI0yrZ8, SMTT(10) DEF RP_SFollowEffect, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zeo4iyzi7OjON1.        
 ASSUME NEW i \in PInst, NEW k \in KSlots, NEW e, B2, SFollow,
        UNCHANGED <<kpin,krs>>, kpin[i][k], e \in krs[i][k], e[3] \in SPages
 PROVE spst'[e[3]] \in {spst[e[3]],"drain","quar"}
<2> USE ONLY <1>zeo4iyzi7OjON1, Sizes, Location, Design
<2>1. RP_Pin2(e[3]) BY SMTT(10), Sizes, Location, Design DEF RP_Pin2, Sizes, Location, Design
<2>2. ~RP_Drop(e[3]) BY <2>1, Sizes, Location, Design DEF RP_Drop, Sizes, Location, Design
<2>3. QED BY <2>2, <1>PKl1lJKpXGVI0yrZ8, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>whu4qMNmSVNYx5.        
 ASSUME NEW h, B2, SFollow, h \in rpgS, RP_HPin(h)
 PROVE h \in rpgS'
 BY ONLY <1>whu4qMNmSVNYx5, Sizes, Location, Design, Design, <1>PKl1lJKpXGVI0yrZ8, SMTT(10) DEF RP_SFollowEffect, RP_H2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uWXN2TjAdAz.        
 ASSUME PinInv, SFollow, UNCHANGED <<kpin,krs>>
 PROVE P_SI3'
<2> USE ONLY <1>uWXN2TjAdAz, Sizes, Location, Design
<2>1. B2 => SI3 /\ SI4
 BY V21_Inv_P_SI3, V21_Inv_P_SI4, Sizes, Location, Design DEF P_SI3, P_SI4, Sizes, Location, Design
<2>2. UNCHANGED <<sown,sgen,skey,swrite,sdata>> BY <1>zfqXeNpr8ate3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE ~B2
 BY <2>3, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>4. CASE B2
 <3>1. ASSUME NEW i \in PInst, NEW k \in KSlots, kpin'[i][k], NEW e \in krs'[i][k], e[3] \in SPages
        PROVE /\ e[4] \in {1,4} /\ SData(e)' /\ SHeld(e)'
              /\ spst'[e[3]]="shared" => SH(i,e[1],e[2],e[3]) \in rpgS'
              /\ e[4]=4 => sown'[e[3]]=e[1] /\ sgen'[e[3]]=e[2]
  <4>1. kpin[i][k] /\ e \in krs[i][k] BY <3>1, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. e[4] \in {1,4} /\ SData(e) /\ SHeld(e)
        /\ (spst[e[3]]="shared" => SH(i,e[1],e[2],e[3]) \in rpgS)
        /\ (e[4]=4 => sown[e[3]]=e[1] /\ sgen[e[3]]=e[2])
   BY <2>1, <2>4, <3>1, <4>1, SMTT(10), Sizes, Location, Design DEF SI3, Sizes, Location, Design
  <4>3. (spst[e[3]]="shared" => spst'[e[3]]="shared")
        /\ (spst'[e[3]]="shared" => spst[e[3]]="shared")
   BY <2>1, <2>4, <3>1, <1>Ua3eOhQVTzEuP0Q, <1>irl4UaCCkNMPiRRv, Sizes, Location, Design DEF Sizes, Location, Design
  <4>4. spst'[e[3]] \in {spst[e[3]],"drain","quar"}
   BY <2>4, <3>1, <4>1, <1>zeo4iyzi7OjON1, Sizes, Location, Design DEF Sizes, Location, Design
  <4>5. RP_HPin(SH(i,e[1],e[2],e[3]))
   BY <3>1, SMTT(10), Sizes, Location, Design DEF RP_HPin, SH, Sizes, Location, Design
  <4>6. spst'[e[3]]="shared" => SH(i,e[1],e[2],e[3]) \in rpgS'
   BY <2>4, <4>2, <4>3, <4>5, <1>whu4qMNmSVNYx5, Sizes, Location, Design DEF Sizes, Location, Design
  <4>7. QED BY <2>2, <4>2, <4>3, <4>4, <4>6, SMTT(10), Sizes, Location, Design DEF SData, SHeld, Sizes, Location, Design
 <3>2. QED BY <2>4, <3>1, Sizes, Location, Design DEF P_SI3, SI3, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZXxq7ZUlh0hBhsql.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~RP_Posted(x)
 BY ONLY <1>ZXxq7ZUlh0hBhsql, Sizes, Location, Design, Sizes, SMTT(10) DEF RP_Posted, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ESBouXiucduyoSgqYf8M.        
 ASSUME PinInv, B2, SFollow, UNCHANGED xsrc
 PROVE UNCHANGED <<xsrcS,xsrcP>> /\ sentry' \subseteq sentry
<2> USE ONLY <1>ESBouXiucduyoSgqYf8M, Sizes, Location, Design
<2>1. \A x \in Xids : ~RP_Posted(x) BY <1>ZXxq7ZUlh0hBhsql, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ESBouXiucduyoSgqYf8M, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

<2>3. QED BY <2>1, <2>2, <1>PKl1lJKpXGVI0yrZ8, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_SX, RP_PX, RP_E2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yKuqYS4uodfaBD2G9wxMwBN.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>yKuqYS4uodfaBD2G9wxMwBN, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>yKuqYS4uodfaBD2G9wxMwBN, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sTGmGejCTusB.        
 ASSUME PinInv, NEW q \in Pages, KPinned(q)
 PROVE RP_PinFacts(q)
<2> USE ONLY <1>sTGmGejCTusB, Sizes, Location, Design
<2>1. K14 /\ K15 /\ NoFreeUnderRead
 BY V21_Inv_K14, V21_Inv_K15, V21_Inv_NoFreeUnderRead, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Loc(q) \in Inst /\ q \notin SPages
 BY Location, P_PagePoolsDisjoint, SMTT(10), Sizes, Design DEF KPages, Sizes, Location, Design
<2>3. PICK k \in KSlots : kpin[Loc(q)][k] /\ \E e \in krs[Loc(q)][k] : e[3]=q
 BY Sizes, Location, Design DEF KPinned, Sizes, Location, Design
<2>30. PICK e \in krs[Loc(q)][k] : e[3]=q
 BY <2>3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. KHeld(e) /\ KData(Loc(q),e)
       /\ (IsD(Loc(q)) /\ e[4] # 1 => led[q]={})
       /\ (IsP(Loc(q)) => sled[q]={})
 BY <2>1, <2>2, <2>3, <2>30, Sizes, Location, Design DEF NoFreeUnderRead, K15, Sizes, Location, Design
<2>5. e[4] \in {0,1,2,3} /\ (e[4] # 0 => IsD(Loc(q)))
 BY <2>1, <2>2, <2>3, <2>30, Sizes, Location, Design DEF K14, Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>30, <2>4, <2>5, Sizes, SMTT(10), Location, Design DEF RP_PinFacts, KHeld, KData, IsP, IsD, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VtlCqCAE0X2qQ.        
 ASSUME PinInv, SFollow, UNCHANGED <<kpin,krs,kfly>>,
        xdst' \in [Xids -> 0..NP],
        \A q \in Pages : KPinned(q) => RP_PinKeep(q)
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>VtlCqCAE0X2qQ, Sizes, Location, Design
<2>1. K14 /\ K15 /\ NoFreeUnderRead /\ krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0,1,2,3,4})]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>VtlCqCAE0X2qQ, V22_T_krs, V21_Inv_K14, V21_Inv_K15, V21_Inv_NoFreeUnderRead, Sizes, Location, Design, SMTT(5)

<2>2. P_SI3' BY <1>uWXN2TjAdAz, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<skey,sdata,swrite>> BY <1>zfqXeNpr8ate3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW i \in Inst, NEW k \in KSlots, kpin[i][k], NEW e \in krs[i][k]
       PROVE KHeld(e)' /\ KData(i,e)'
             /\ (IsD(i) /\ e[4] # 1 => led'[e[3]]={})
             /\ (IsP(i) /\ e[3] \in Pages => sled'[e[3]]={})
 <3>1. e[3] \in KPages /\ Loc(e[3])=i /\ KHeld(e) /\ KData(i,e)
       /\ (IsD(i) /\ e[4] # 1 => led[e[3]]={})
       /\ (IsP(i) /\ e[3] \in Pages => sled[e[3]]={})
  BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF K14, K15, NoFreeUnderRead, Sizes, Location, Design
 <3>2. CASE e[3] \in Pages
  <4>1. KPinned(e[3]) BY <2>4, <3>1, SMTT(10), Sizes, Location, Design DEF KPinned, Sizes, Location, Design
  <4>2. RP_PinKeep(e[3]) BY <3>2, <4>1, Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. QED BY <3>1, <3>2, <4>2, P_PagePoolsDisjoint, SMTT(10), Sizes, Location, Design DEF RP_PinKeep, KHeld, KData, Sizes, Location, Design
 <3>3. CASE e[3] \in SPages
  <4>1. B2 /\ i \in PInst /\ ~IsD(i)
   BY <2>1, <2>4, <3>3, Sizes, SMTT(10), Location, Design DEF K14, PInst, Inst, NL, IsP, IsD, Sizes, Location, Design
  <4>2. SData(e)' /\ SHeld(e)'
   BY <2>2, <2>4, <3>3, <4>1, Sizes, Location, Design DEF P_SI3, SI3, Sizes, Location, Design
  <4>3. NoWriteInto(e[3])'
   BY <3>3, Sizes, SMTT(10), Location, Design DEF NoWriteInto, SPages, Sizes, Location, Design
  <4>4. QED BY <3>3, <4>1, <4>2, <4>3, P_PagePoolsDisjoint, SMTT(10), Sizes, Location, Design DEF KHeld, KData, Sizes, Location, Design
 <3>4. QED BY <3>1, <3>2, <3>3, Sizes, Location, Design DEF KPages, Sizes, Location, Design
<2>5. QED BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF K15, K14, NoFreeUnderRead, BaseKReadIntegrity, Sizes, Location, Design
\* T2M-END R2M1444_PdRPKernel


<1>dlRLZLJP8YIdC37.         PinInv => RP_PageTypes
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_sfly, V22_T_sled, V22_T_xdst, SMTT(5) DEF RP_PT_hw, RP_PT_kpin, RP_PT_krs, RP_PT_led, RP_PT_pgn, RP_PT_plt, RP_PT_pr, RP_PT_pst, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_sled, RP_PT_xdst, RP_PageTypes

\* T2M-END R2M1445_PdRPPageTypes


<1>y3poNFvoa8gdztrK.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow, NEW q \in Pages, KPinned(q)
 PROVE RP_PinKeep(q)
<2> USE ONLY <1>y3poNFvoa8gdztrK, Sizes, Location, Design
<2>1. RP_PinFacts(q) BY <1>sTGmGejCTusB, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RP_PageTypes BY <1>dlRLZLJP8YIdC37, Sizes, Location, Design DEF Sizes, Location, Design
<2>25. K8 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <2>25, Design, Sizes, SMTT(10), Location DEF RP_PinKeep, RP_PinFacts, RP_PageTypes, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, AfterEv, EvidenceAt, FreeOrDrain, GiveUpTo, GiveUpToN, PEnd, PExpDone, PageTo, PinBlocks, ghV, instV, kV, recV, rtV, xV, KPinned, IsP, IsD, NoWriteInto, Writing, InFl, K8, Active, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JB9OYlhy4eFBLCLcuLAE.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs,kfly,xdst>>
 BY ONLY <1>JB9OYlhy4eFBLCLcuLAE, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, FreeOrDrain, GiveUpTo, GiveUpToN, PEnd, PExpDone, PageTo, PinBlocks, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sAclTIEgEmGa0hF.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>sAclTIEgEmGa0hF, Sizes, Location, Design
<2>1. \A q \in Pages : KPinned(q) => RP_PinKeep(q)
 BY <1>y3poNFvoa8gdztrK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,kfly,xdst>> BY <1>JB9OYlhy4eFBLCLcuLAE, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>sAclTIEgEmGa0hF, <2>2, V22_T_xdst, SMTT(5)

<2>4. QED BY <2>1, <2>2, <2>3, <1>VtlCqCAE0X2qQ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EtQJsSW6LGSdcwS66tUuOVB7.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE NoFreeUnderRead'
 BY ONLY <1>EtQJsSW6LGSdcwS66tUuOVB7, Sizes, Location, Design, <1>sAclTIEgEmGa0hF DEF Sizes, Location, Design
\* T2M-END R2M1449_PdRPKernel_PExpDone


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>xf9Tky.        
  K4 /\ UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>> => K4'
  BY SMT, Sizes, Location, Design DEF ExpPage, InitPage, K4, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QMrZB.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE dlzHJ(i,r)
  BY ONLY <1>QMrZB, Sizes, Location, Design DEF K8, dlzHJ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gfplo.        
  ASSUME NEW p \in Pages, K7
  PROVE Zzz7b(p)
  BY ONLY <1>gfplo, Sizes, Location, Design DEF K7, Zzz7b, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SybH9.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, IsP(i), ph[i][r] \in {"sent","exp","reg"}
  PROVE
    /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
    /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
    /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
    /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
    /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
<2> USE ONLY <1>SybH9, Sizes, Location, Design
<2>1. K8 /\ K7
  BY V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. dlzHJ(i,r)
  BY <2>1, <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
      /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
  BY <2>2, Zenon, Sizes, Location, Design DEF dlzHJ, Active, OwnedBy, Sizes, Location, Design
<2>4. sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
      /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
  BY <2>2, Zenon, Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design
<2>5. Zzz7b(rpg[i][r])
  BY <2>1, <2>3, <1>gfplo, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
  BY <2>3, <2>5, Zenon, Sizes, Location, Design DEF Zzz7b, Sizes, Location, Design
<2>7. QED
  BY <2>3, <2>4, <2>6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FHxj9I1A.        
  ASSUME NEW j \in Inst, NEW s \in Rq, K8
  PROVE Active(j,s) => rpg[j][s] \in Pages /\ Loc(rpg[j][s]) = j
<2> USE ONLY <1>FHxj9I1A, Sizes, Location, Design
<2>1. dlzHJ(j,s)
  BY <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Zenon, Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jc4Pk2myFy.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst
  BY ONLY <1>jc4Pk2myFy, Sizes, Location, Design, Location, SMT DEF KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yGU8fpsp8.        
  /\ \A i \in DInst : i \in Inst /\ IsD(i)
  /\ \A i \in PInst : i \in Inst /\ IsP(i)
  /\ \A i \in Inst : IsP(i) \/ IsD(i)
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMT, Location, Design DEF Inst, DInst, PInst, NL, IsD, IsP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xBluqEwpfJZ.        
  (\A i \in Inst, r \in Rq : dlzHJ(i,r)') => K8'
  BY Sizes, Location, Design DEF K8, dlzHJ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nc333adi77M.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpDone(i, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>nc333adi77M, Sizes, Location, Design, Zenon DEF PExpDone, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1567_PdRPPP_PdBPExpDoneFrames


<1>lUkZjHIo.        
  ASSUME NEW i \in Inst, NEW r \in Rq, BPEnd(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>lUkZjHIo, Sizes, Location, Design, Zenon DEF BPEnd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k5vlhp4Hi.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE
    /\ IsP(i) /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
    /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {} /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
    /\ \A j \in Inst, s \in Rq : ph'[j][s] = IF j=i /\ s=r THEN "end" ELSE ph[j][s]
    /\ \A q \in Pages : pst'[q] = IF q=rpg[i][r] THEN (IF BPFreed(i,r) THEN "free" ELSE "drain") ELSE pst[q]
    /\ \A q \in Pages : pr'[q] = IF q=rpg[i][r] /\ BPFreed(i,r) THEN 0 ELSE pr[q]
    /\ \A q \in Pages : pgn'[q] = IF q=rpg[i][r] /\ BPFreed(i,r) THEN 0 ELSE pgn[q]
    /\ \A q \in Pages : plt'[q] = IF q=rpg[i][r] /\ BPFreed(i,r) THEN 0 ELSE plt[q]
<2> USE ONLY <1>k5vlhp4Hi, Sizes, Location, Design
<2>1. AydA /\ OyyWS /\ IwCp /\ vS7em /\ bFwlN
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF BPEnd, BPFreed, AydA, OyyWS, IwCp, vS7em, bFwlN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>V0TEw.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE \A j \in Inst, s \in Rq :
    /\ (Active(j,s)' => Active(j,s) /\ ph'[j][s] = ph[j][s])
    /\ (ph[j][s] # "none" => ph'[j][s] # "none")
<2> USE ONLY <1>V0TEw, Sizes, Location, Design
<2>1. \A j \in Inst, s \in Rq : ph'[j][s] = IF j=i /\ s=r THEN "end" ELSE ph[j][s]
  BY <1>k5vlhp4Hi, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rORIJN56qpNM.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE \A j \in Inst, s \in Rq : (Active(j,s) /\ rpg[j][s] = rpg[i][r]) => j=i /\ s=r
<2> USE ONLY <1>rORIJN56qpNM, Sizes, Location, Design
<2>1. IsP(i) /\ ph[i][r] \in {"sent","exp","reg"} /\ K8
  BY V21_Inv_K8, Sizes, Location, Design DEF BPEnd, Sizes, Location, Design
<2>2. pr[rpg[i][r]] = r /\ Loc(rpg[i][r]) = i
  BY <2>1, <1>SybH9, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW j \in Inst, NEW s \in Rq
      PROVE (Active(j,s) /\ rpg[j][s] = rpg[i][r]) => j=i /\ s=r
  <3>1. dlzHJ(j,s)
    BY <2>1, <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. (Active(j,s) /\ rpg[j][s] = rpg[i][r]) => j=i
    BY <2>2, <3>1, Zenon, Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design
  <3>3. QED
    BY <2>1, <2>2, <3>1, <3>2, Zenon, Sizes, Location, Design DEF dlzHJ, OwnedBy, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FHg9BRUW.        
  ASSUME OyyWS, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE pst' = [pst EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"]
  BY ONLY <1>FHg9BRUW, Sizes, Location, Design, SMT DEF PageTo, OyyWS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Xs1FLIA.        
  ASSUME IwCp, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE pr' = [pr EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
  BY ONLY <1>Xs1FLIA, Sizes, Location, Design, SMT DEF PageTo, IwCp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vcnAMsT0.        
  ASSUME vS7em, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE pgn' = [pgn EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
  BY ONLY <1>vcnAMsT0, Sizes, Location, Design, SMT DEF PageTo, vS7em, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HjjUTrwl.        
  ASSUME bFwlN, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE plt' = [plt EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
  BY ONLY <1>HjjUTrwl, Sizes, Location, Design, SMT DEF PageTo, bFwlN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DUJEje1U.        
  ASSUME dcfPK, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED led
  BY ONLY <1>DUJEje1U, Sizes, Location, Design, SMT DEF PageTo, dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lhglIXdXB.        
  ASSUME h9WLgd, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED sled
  BY ONLY <1>lhglIXdXB, Sizes, Location, Design, SMT DEF PageTo, h9WLgd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ey6BAKZZyS.        
  ASSUME p1YmMe5, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED prefc
  BY ONLY <1>Ey6BAKZZyS, Sizes, Location, Design, SMT DEF PageTo, p1YmMe5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cy2yKms0.        
  ASSUME vRZWI, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED pqp
  BY ONLY <1>cy2yKms0, Sizes, Location, Design, SMT DEF PageTo, vRZWI, Sizes, Location, Design
\* T2M-END R2M1569_PdRPPP_PdBPageTo


<1>mHxqo1esPZm.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpDone(i, r)
  PROVE IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY ONLY <1>mHxqo1esPZm, Sizes, Location, Design, Zenon DEF PExpDone, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dHhedKKYbLYR.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i, r)
  PROVE BPEnd(i,r)
<2> USE ONLY <1>dHhedKKYbLYR, Sizes, Location, Design
<2>1. IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY <1>mHxqo1esPZm, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
      /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {} /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
      /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
  BY <2>1, <1>SybH9, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. OyyWS /\ dcfPK /\ h9WLgd /\ IwCp /\ vS7em /\ bFwlN /\ p1YmMe5 /\ vRZWI
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>4. PageTo(rpg[i][r], IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain", 0, led[rpg[i][r]], sled[rpg[i][r]])
  BY <2>2, Design, Zenon, Sizes, Location DEF PExpDone, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, PageTo, Sizes, Location, Design
<2>5. pst' = [pst EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain"]
    /\ pr' = [pr EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
    /\ pgn' = [pgn EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
    /\ plt' = [plt EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
    /\ UNCHANGED <<led,sled,prefc,pqp>>
 <3>1. pst' = [pst EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain"]
  BY ONLY <2>2, <2>3, <2>4, <1>FHg9BRUW, Sizes, Location, Design, SMTT(5)
 <3>2. pr' = [pr EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
  BY ONLY <2>2, <2>3, <2>4, <1>Xs1FLIA, Sizes, Location, Design, SMTT(5)
 <3>3. pgn' = [pgn EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
  BY ONLY <2>2, <2>3, <2>4, <1>vcnAMsT0, Sizes, Location, Design, SMTT(5)
 <3>4. plt' = [plt EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
  BY ONLY <2>2, <2>3, <2>4, <1>HjjUTrwl, Sizes, Location, Design, SMTT(5)
 <3>5. UNCHANGED led
  BY ONLY <2>2, <2>3, <2>4, <1>DUJEje1U, Sizes, Location, Design, SMTT(5)
 <3>6. UNCHANGED sled
  BY ONLY <2>2, <2>3, <2>4, <1>lhglIXdXB, Sizes, Location, Design, SMTT(5)
 <3>7. UNCHANGED prefc
  BY ONLY <2>2, <2>3, <2>4, <1>Ey6BAKZZyS, Sizes, Location, Design, SMTT(5)
 <3>8. UNCHANGED pqp
  BY ONLY <2>2, <2>3, <2>4, <1>cy2yKms0, Sizes, Location, Design, SMTT(5)
 <3>9. QED BY ONLY <3>1, <3>2, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, SMTT(5)
<2>6. QED
  BY <2>1, <2>2, <2>5, <1>nc333adi77M, Zenon, Sizes, Location, Design DEF PExpDone, BPEnd, Sizes, Location, Design
\* T2M-END R2M1570_PdRPPP_PdBPExpDoneEffects


<1>CRH77.        
  ASSUME NEW j \in Inst, NEW s \in Rq, dlzHJ(j,s)
  PROVE BK8C1(j,s)
  BY ONLY <1>CRH77, Sizes, Location, Design, Zenon DEF dlzHJ, BK8C1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>x2hGO.        
  ASSUME NEW j \in Inst, NEW s \in Rq, dlzHJ(j,s)
  PROVE BK8C2(j,s)
  BY ONLY <1>x2hGO, Sizes, Location, Design, Zenon DEF dlzHJ, BK8C2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OUAvm.        
  ASSUME NEW j \in Inst, NEW s \in Rq, dlzHJ(j,s)
  PROVE BK8C3(j,s)
  BY ONLY <1>OUAvm, Sizes, Location, Design, Zenon DEF dlzHJ, BK8C3, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>G9gz7.        
  ASSUME NEW j \in Inst, NEW s \in Rq, dlzHJ(j,s)
  PROVE BK8C4(j,s)
  BY ONLY <1>G9gz7, Sizes, Location, Design, Zenon DEF dlzHJ, BK8C4, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>StaJr.        
  ASSUME NEW j \in Inst, NEW s \in Rq, dlzHJ(j,s)
  PROVE BK8C5(j,s)
  BY ONLY <1>StaJr, Sizes, Location, Design, Zenon DEF dlzHJ, BK8C5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QY6m1.        
  ASSUME NEW j \in Inst, NEW s \in Rq, dlzHJ(j,s)
  PROVE BK8C6(j,s)
  BY ONLY <1>QY6m1, Sizes, Location, Design, Zenon DEF dlzHJ, BK8C6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BHPTD.        
  ASSUME NEW j \in Inst, NEW s \in Rq, dlzHJ(j,s)
  PROVE BK8C7(j,s)
  BY ONLY <1>BHPTD, Sizes, Location, Design, Zenon DEF dlzHJ, BK8C7, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qjvsk.        
  ASSUME NEW j \in Inst, NEW s \in Rq, dlzHJ(j,s)
  PROVE BK8C8(j,s)
  BY ONLY <1>qjvsk, Sizes, Location, Design, Zenon DEF dlzHJ, BK8C8, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rxxDq.        
  ASSUME NEW j \in Inst, NEW s \in Rq, dlzHJ(j,s)
  PROVE BK8C9(j,s)
  BY ONLY <1>rxxDq, Sizes, Location, Design, Zenon DEF dlzHJ, BK8C9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d5D3Ym.        
  ASSUME NEW j \in Inst, NEW s \in Rq, dlzHJ(j,s)
  PROVE BK8C10(j,s)
  BY ONLY <1>d5D3Ym, Sizes, Location, Design, Zenon DEF dlzHJ, BK8C10, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yvclqL.        
  ASSUME NEW j \in Inst, NEW s \in Rq, dlzHJ(j,s)
  PROVE BK8C11(j,s)
  BY ONLY <1>yvclqL, Sizes, Location, Design, Zenon DEF dlzHJ, BK8C11, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>P4q9ul.        
  ASSUME NEW j \in Inst, NEW s \in Rq, dlzHJ(j,s)
  PROVE BK8C12(j,s)
  BY ONLY <1>P4q9ul, Sizes, Location, Design, Zenon DEF dlzHJ, BK8C12, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lScGgP.        
  ASSUME NEW j \in Inst, NEW s \in Rq, dlzHJ(j,s)
  PROVE BK8C13(j,s)
  BY ONLY <1>lScGgP, Sizes, Location, Design, Zenon DEF dlzHJ, BK8C13, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XRzcUr9GyvEY.        
  ASSUME NEW j \in Inst, NEW s \in Rq,
    BK8C1(j,s)' /\ BK8C2(j,s)' /\ BK8C3(j,s)' /\ BK8C4(j,s)' /\ BK8C5(j,s)' /\ BK8C6(j,s)' /\ BK8C7(j,s)' /\ BK8C8(j,s)' /\ BK8C9(j,s)' /\ BK8C10(j,s)' /\ BK8C11(j,s)' /\ BK8C12(j,s)' /\ BK8C13(j,s)'
  PROVE dlzHJ(j,s)'
  BY ONLY <1>XRzcUr9GyvEY, Sizes, Location, Design, Zenon DEF dlzHJ, BK8C1, BK8C2, BK8C3, BK8C4, BK8C5, BK8C6, BK8C7, BK8C8, BK8C9, BK8C10, BK8C11, BK8C12, BK8C13, Sizes, Location, Design
\* T2M-END R2M1572_PdRPPP_PdBRecordParts


<1>Zq3VSInw2u6Qz0Ulp.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE dlzHJ(i,r)'
<2> USE ONLY <1>Zq3VSInw2u6Qz0Ulp, Sizes, Location, Design
<2>1. dlzHJ(i,r)
  BY <1>QMrZB, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lUkZjHIo, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ph[i][r] \in {"sent","exp","reg"} /\ ph'[i][r] = "end"
  BY <1>k5vlhp4Hi, SMT, Sizes, Location, Design DEF BPEnd, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Zenon, Sizes, Location, Design DEF dlzHJ, Active, OwnedBy, Sizes, Location, Design
\* T2M-END R2M1573_PdRPPP_PdBPExitLCurrentRecord8

\* T2M-SCOPE R2M1574_PdRPPP_PdBPExitLK10

<1>UaM4v.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE K4'
<2> USE ONLY <1>UaM4v, Sizes, Location, Design
<2>1. K4 /\ UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
  BY <1>lUkZjHIo, V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>xf9Tky, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1580_PdRPPP_PdBPExitLK4


<1>bT9Vi054yttsG3e.        
  ASSUME NEW i \in Inst, NEW r \in Rq, NEW j \in Inst, NEW s \in Rq,
    PinInv, BPEnd(i,r), (j # i \/ s # r)
  PROVE dlzHJ(j,s)'
<2> USE ONLY <1>bT9Vi054yttsG3e, Sizes, Location, Design
<2>1. K8 /\ dlzHJ(j,s)
  BY <1>QMrZB, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lUkZjHIo, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ph'[j][s] = ph[j][s]
  BY <1>k5vlhp4Hi, SMT, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. Active(j,s) => rpg[j][s] \in Pages /\ rpg[j][s] # rpg[i][r]
  BY <2>1, <1>rORIJN56qpNM, <1>FHxj9I1A, SMT, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. Active(j,s) => pst'[rpg[j][s]] = pst[rpg[j][s]] /\ pr'[rpg[j][s]] = pr[rpg[j][s]] /\ pgn'[rpg[j][s]] = pgn[rpg[j][s]] /\ plt'[rpg[j][s]] = plt[rpg[j][s]]
  BY <2>4, <1>k5vlhp4Hi, SMT, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. BK8C1(j,s)'
  <3>1. BK8C1(j,s)
    BY <2>1, <1>CRH77, Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. QED
    BY <3>1, <2>2, <2>3, <2>5, Zenon, Sizes, Location, Design DEF BK8C1, Active, OwnedBy, Tag, Sizes, Location, Design
<2>7. BK8C2(j,s)'
  <3>1. BK8C2(j,s)
    BY <2>1, <1>x2hGO, Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. QED
    BY <3>1, <2>2, <2>3, <2>5, Zenon, Sizes, Location, Design DEF BK8C2, Active, OwnedBy, Tag, Sizes, Location, Design
<2>8. BK8C3(j,s)'
  <3>1. BK8C3(j,s)
    BY <2>1, <1>OUAvm, Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. QED
    BY <3>1, <2>2, <2>3, <2>5, Zenon, Sizes, Location, Design DEF BK8C3, Active, OwnedBy, Tag, Sizes, Location, Design
<2>9. BK8C4(j,s)'
  <3>1. BK8C4(j,s)
    BY <2>1, <1>G9gz7, Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. QED
    BY <3>1, <2>2, <2>3, <2>5, Zenon, Sizes, Location, Design DEF BK8C4, Active, OwnedBy, Tag, Sizes, Location, Design
<2>10. BK8C5(j,s)'
  <3>1. BK8C5(j,s)
    BY <2>1, <1>StaJr, Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. QED
    BY <3>1, <2>2, <2>3, <2>5, Zenon, Sizes, Location, Design DEF BK8C5, Active, OwnedBy, Tag, Sizes, Location, Design
<2>11. BK8C6(j,s)'
  <3>1. BK8C6(j,s)
    BY <2>1, <1>QY6m1, Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. QED
    BY <3>1, <2>2, <2>3, <2>5, Zenon, Sizes, Location, Design DEF BK8C6, Active, OwnedBy, Tag, Sizes, Location, Design
<2>12. BK8C7(j,s)'
  <3>1. BK8C7(j,s)
    BY <2>1, <1>BHPTD, Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. QED
    BY <3>1, <2>2, <2>3, <2>5, Zenon, Sizes, Location, Design DEF BK8C7, Active, OwnedBy, Tag, Sizes, Location, Design
<2>13. BK8C8(j,s)'
  <3>1. BK8C8(j,s)
    BY <2>1, <1>qjvsk, Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. QED
    BY <3>1, <2>2, <2>3, <2>5, Zenon, Sizes, Location, Design DEF BK8C8, Active, OwnedBy, Tag, Sizes, Location, Design
<2>14. BK8C9(j,s)'
  <3>1. BK8C9(j,s)
    BY <2>1, <1>rxxDq, Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. QED
    BY <3>1, <2>2, <2>3, <2>5, Zenon, Sizes, Location, Design DEF BK8C9, Active, OwnedBy, Tag, Sizes, Location, Design
<2>15. BK8C10(j,s)'
  <3>1. BK8C10(j,s)
    BY <2>1, <1>d5D3Ym, Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. QED
    BY <3>1, <2>2, <2>3, <2>5, Zenon, Sizes, Location, Design DEF BK8C10, Active, OwnedBy, Tag, Sizes, Location, Design
<2>16. BK8C11(j,s)'
  <3>1. BK8C11(j,s)
    BY <2>1, <1>yvclqL, Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. QED
    BY <3>1, <2>2, <2>3, <2>5, Zenon, Sizes, Location, Design DEF BK8C11, Active, OwnedBy, Tag, Sizes, Location, Design
<2>17. BK8C12(j,s)'
  <3>1. BK8C12(j,s)
    BY <2>1, <1>P4q9ul, Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. QED
    BY <3>1, <2>2, <2>3, <2>5, Zenon, Sizes, Location, Design DEF BK8C12, Active, OwnedBy, Tag, Sizes, Location, Design
<2>18. BK8C13(j,s)'
  <3>1. BK8C13(j,s)
    BY <2>1, <1>lScGgP, Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. QED
    BY <3>1, <2>2, <2>3, <2>5, Zenon, Sizes, Location, Design DEF BK8C13, Active, OwnedBy, Tag, Sizes, Location, Design
<2>19. QED
  BY <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, <2>12, <2>13, <2>14, <2>15, <2>16, <2>17, <2>18, <1>XRzcUr9GyvEY, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1584_PdRPPP_PdBPExitLOtherRecord8

\* T2M-SCOPE R2M1585_PdRPPP_PdBPExitLRecord8

<1>bSb5s5my6V.        
  ASSUME NEW i \in Inst, NEW r \in Rq, NEW j \in Inst, NEW s \in Rq, PinInv, BPEnd(i,r)
  PROVE dlzHJ(j,s)'
<2> USE ONLY <1>bSb5s5my6V, Sizes, Location, Design
<2>1. (j=i /\ s=r) => dlzHJ(j,s)'
  BY <1>Zq3VSInw2u6Qz0Ulp, SMT, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. (j # i \/ s # r) => dlzHJ(j,s)'
  BY <1>bT9Vi054yttsG3e, SMT, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1585_PdRPPP_PdBPExitLRecord8

\* T2M-SCOPE R2M1586_PdRPPP_PdBPExitLK8
\* T2M-BODY R2M1586_PdRPPP_PdBPExitLK8
\* T2M-LOCAL-VISIBILITY

<1>ICFIx.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE K8'
  BY ONLY <1>ICFIx, Sizes, Location, Design, <1>bSb5s5my6V, <1>xBluqEwpfJZ DEF Sizes, Location, Design
\* T2M-END R2M1586_PdRPPP_PdBPExitLK8

\* T2M-SCOPE R2M1587_PdRPPP_PdBPExitLRecord9

<1>YNZiA3U0xt6c7H1zO9.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>YNZiA3U0xt6c7H1zO9, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_i \in Inst, NEW bb_r \in Rq
                 PROVE ((Active(bb_i, bb_r) /\ rpg[bb_i][bb_r] \in Pages) => pst[rpg[bb_i][bb_r]] # "quar")'
  BY Sizes, Location, Design DEF QuarNeverMapped, Sizes, Location, Design
<2>1. QuarNeverMapped /\ K8
  BY <1>UwwC5LVwQr, V21_Inv_K8, V21_Inv_QuarNeverMapped, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lUkZjHIo, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ((Active(bb_i, bb_r) /\ rpg[bb_i][bb_r] \in Pages) => pst[rpg[bb_i][bb_r]] # "quar")'
  BY <2>1, <2>2, <1>k5vlhp4Hi, <1>V0TEw, SMT, Sizes, Location, Design DEF QuarNeverMapped, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF QuarNeverMapped, Sizes, Location, Design
\* T2M-END R2M1589_PdRPPP_PdBPExitLQuarNeverMapped

\* T2M-SCOPE R2M1590_PdRPPP_PdBPExitLQuarNoReg

<1>IVWNUw6iLtwD.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE QuarNoReg'
<2> USE ONLY <1>IVWNUw6iLtwD, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE ((IsP(Loc(bb_p)) /\ pst[bb_p] = "quar") => \A x \in led[bb_p] : iv[x] # "reg")'
  BY Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
<2>1. QuarNoReg
  BY <1>UwwC5LVwQr, V21_Inv_KStruct, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lUkZjHIo, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ((IsP(Loc(bb_p)) /\ pst[bb_p] = "quar") => \A x \in led[bb_p] : iv[x] # "reg")'
  BY <2>1, <2>2, <1>k5vlhp4Hi, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF QuarNoReg, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
\* T2M-END R2M1590_PdRPPP_PdBPExitLQuarNoReg


<1>qZ3d9qXv.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i, r)
  PROVE K4'
  BY ONLY <1>qZ3d9qXv, Sizes, Location, Design, <1>dHhedKKYbLYR, <1>UaM4v DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>us4cl881.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i, r)
  PROVE K8'
  BY ONLY <1>us4cl881, Sizes, Location, Design, <1>dHhedKKYbLYR, <1>ICFIx DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zPggIzRtcGsNFoeosaXio.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i, r)
  PROVE QuarNeverMapped'
  BY ONLY <1>zPggIzRtcGsNFoeosaXio, Sizes, Location, Design, <1>dHhedKKYbLYR, <1>YNZiA3U0xt6c7H1zO9 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QoPKRHPFstE0Kmk.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i, r)
  PROVE QuarNoReg'
  BY ONLY <1>QoPKRHPFstE0Kmk, Sizes, Location, Design, <1>dHhedKKYbLYR, <1>IVWNUw6iLtwD DEF Sizes, Location, Design
\* T2M-END R2M1597_PdRPPP_PdBPExpDoneSteps

\* T2M-SCOPE R2M1598_PdRPPdPAgg_PExpDone
\* T2M-BODY R2M1598_PdRPPdPAgg_PExpDone
\* T2M-LOCAL-VISIBILITY

<1>NyREXEqOkZ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
  PROVE K4'
  BY ONLY <1>NyREXEqOkZ, Sizes, Location, Design, <1>qZ3d9qXv, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RCqnbHaNuv.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
  PROVE K8'
  BY ONLY <1>RCqnbHaNuv, Sizes, Location, Design, <1>us4cl881, V21_Inv_K8 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BGS9EhfwPQPn6GhMsf3Yg1D.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>BGS9EhfwPQPn6GhMsf3Yg1D, Sizes, Location, Design, <1>zPggIzRtcGsNFoeosaXio, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ByC4CpVmnmzGYtsfn.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>ByC4CpVmnmzGYtsfn, Sizes, Location, Design, <1>QoPKRHPFstE0Kmk, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1598_PdRPPdPAgg_PExpDone


<1>ZnsOfqDSKFyZ5GS4iY.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE RP_NoNewStop /\ RP_DReadFrame /\ UNCHANGED xdst
<2> USE ONLY <1>ZnsOfqDSKFyZ5GS4iY, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rpg \in [Inst -> [Rq -> 0..NP]] /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ZnsOfqDSKFyZ5GS4iY, V22_T_hw, V22_T_ph, V22_T_rpg, SMTT(5)

<2>2. K1 /\ K3 BY V21_Inv_K1, V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_NoNewStop, RP_DReadFrame, DInst, PInst, Inst, NL, IsP, IsD, K1, K3, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rPQbmSswCYjOs5.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE K4'
 BY ONLY <1>rPQbmSswCYjOs5, Sizes, Location, Design, <1>NyREXEqOkZ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>axMMxmjBDVSrhgYy15scW.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>axMMxmjBDVSrhgYy15scW, Sizes, Location, Design, <1>ByC4CpVmnmzGYtsfn DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>S58Kisv3eD0zH.        
 ASSUME PinInv, NEW x \in Xids, hw[x]="stop", xdst[x] \in Pages
 PROVE IsD(Loc(xdst[x]))
<2> USE ONLY <1>S58Kisv3eD0zH, Sizes, Location, Design
<2>1. K1 /\ K2 BY V21_Inv_K1, V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>S58Kisv3eD0zH, V22_T_nx, SMTT(5)

<2>3. x \in Int /\ nx \in Int BY <2>2, Sizes, SMTT(10), Location, Design DEF Xids, Sizes, Location, Design
<2>4. x<nx BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>5. xk[x] \in {"wr","rd"} /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x]<=gen[xr[x]] /\ xd[x]=hd[xr[x]][xg[x]]
 BY <2>1, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>6. Loc(xdst[x])=xd[x]
 BY <2>1, <2>3, <2>4, <2>5, Sizes, SMTT(10), Location, Design DEF K2, InitPage, ExpPage, InitInst, ExpInst, Pages, Sizes, Location, Design
<2>7. QED BY <2>1, <2>5, <2>6, Sizes, SMTT(10), Location, Design DEF K1, DInst, IsD, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IKXZRHRBF2l7ZlEB9jY.        
 ASSUME PinInv, UNCHANGED <<xdst,xr,xg>>, RP2_DHeldBack, RP2_StopBack
 PROVE RP2_StoppedHeldBack
<2> USE ONLY <1>IKXZRHRBF2l7ZlEB9jY, Sizes, Location, Design
<2>1. ASSUME NEW x \in Xids, hw'[x]="stop", hok'[x], xdst'[x] \in Pages, Held(xdst[x],x)'
       PROVE hw[x]="stop" /\ hok[x] /\ Held(xdst[x],x)
 <3>1. hw[x]="stop" /\ hok[x] BY <2>1, Sizes, Location, Design DEF RP2_StopBack, Sizes, Location, Design
 <3>2. IsD(Loc(xdst[x])) BY <2>1, <3>1, <1>S58Kisv3eD0zH, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>1, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF RP2_DHeldBack, Held, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF RP2_StoppedHeldBack, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ayN36uj24ZGo45HjJ.        
 ASSUME PinInv, NEW x \in Xids, iv[x]="reg"
 PROVE x<nx /\ xk[x]="wr" /\ xsrc[x] \in Pages /\ IsP(Loc(xsrc[x]))
<2> USE ONLY <1>ayN36uj24ZGo45HjJ, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 BY V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>10. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ayN36uj24ZGo45HjJ, V22_T_nx, SMTT(5)

<2>11. x \in Int /\ nx \in Int BY <2>10, Sizes, SMTT(10), Location, Design DEF Xids, Sizes, Location, Design
<2>2. x<nx /\ xk[x]="wr" BY <2>1, <2>11, SMTT(10), Sizes, Location, Design DEF K2, K3, Sizes, Location, Design
<2>3. xsrc[x] \in Pages /\ Loc(xsrc[x])=xp[x] /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x]<=gen[xr[x]] /\ xp[x]=hp[xr[x]][xg[x]]
 BY <2>1, <2>2, <2>11, SMTT(10), Sizes, Location, Design DEF K2, InitPage, InitInst, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K1, IsP, PInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RuioduFVVm5LGCkRO.        
 ASSUME PinInv, B2, SFollow, UNCHANGED <<xsrc,xk,nx>>, RP2_NoNewReg, K4', QuarNoReg'
 PROVE \A x \in Xids : RP_Quarantine(x) => iv'[x] # "reg"
<2> USE ONLY <1>RuioduFVVm5LGCkRO, Sizes, Location, Design
<2>1. ASSUME NEW x \in Xids, RP_Quarantine(x), iv'[x]="reg"
       PROVE FALSE
 <3>1. iv[x]="reg" BY <2>1, Sizes, Location, Design DEF RP2_NoNewReg, Sizes, Location, Design
 <3>2. x<nx /\ xk[x]="wr" /\ xsrc[x] \in Pages /\ IsP(Loc(xsrc[x]))
  BY <2>1, <3>1, <1>ayN36uj24ZGo45HjJ, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. pst'[xsrc[x]]="quar" BY <2>1, <3>2, Sizes, Location, Design DEF RP_Quarantine, Sizes, Location, Design
 <3>4. x \in led'[xsrc[x]] BY <2>1, <3>2, SMTT(10), Sizes, Location, Design DEF K4, InitPage, Sizes, Location, Design
 <3>5. QED BY <2>1, <3>2, <3>3, <3>4, Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qCu83NBhSdos6.        
 ASSUME PinInv, B2, SFollow, UNCHANGED <<xsrc,xr,xg,xk,nx>>, RP2_NoNewReg, K4', QuarNoReg'
 PROVE RP2_SI5Q'
<2> USE ONLY <1>qCu83NBhSdos6, Sizes, Location, Design
<2>1. SI4 /\ SI5 /\ STypeOK BY V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI4, P_SI5, Sizes, Location, Design
<2>2. RP_SFollowEffect BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<xsrcS,xsrcP>> BY <1>ESBouXiucduyoSgqYf8M, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A x \in Xids : RP_Quarantine(x) => iv'[x] # "reg" BY <1>RuioduFVVm5LGCkRO, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. ASSUME NEW h \in squar'
       PROVE h[1]<nx' /\ h[2] \in xsrcS'[h[1]] /\ spst'[h[2]]="shared" /\ skey'[h[2]]=STok(xr'[h[1]],xg'[h[1]]) /\ iv'[h[1]] # "reg"
 <3>1. h \in squar \/ (h \in Xids \X SPages /\ RP_Quarantine(h[1]) /\ h[2] \in xsrcS[h[1]])
  <4>1. squar' = squar \cup UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RP_Quarantine(x)}}
   BY ONLY <2>2, Design, SMTT(20), Sizes, Location DEF RP_SFollowEffect, RP_Q2, Sizes, Location, Design
  <4>2. CASE h \in squar
   BY ONLY <4>2, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. CASE h \notin squar
   <5>1. PICK x \in {x \in Xids : RP_Quarantine(x)} : h \in {<<x,p>> : p \in xsrcS[x]}
    BY ONLY <2>5, <4>1, <4>3, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
   <5>2. PICK p \in xsrcS[x] : h = <<x,p>>
    BY ONLY <5>1, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
   <5>3. p \in SPages
    BY ONLY <2>1, <5>1, <5>2, SMTT(20), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
   <5>4. QED BY ONLY <5>1, <5>2, <5>3, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
  <4>4. QED BY ONLY <4>2, <4>3, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. h[1] \in Xids /\ h[2] \in SPages /\ h[1]<nx /\ h[2] \in xsrcS[h[1]] /\ spst[h[2]]="shared" /\ skey[h[2]]=STok(xr[h[1]],xg[h[1]])
  BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF SI4, SI5, STypeOK, RP_Quarantine, Sizes, Location, Design
 <3>3. iv'[h[1]] # "reg"
  BY <2>1, <2>4, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SI5, RP2_NoNewReg, Sizes, Location, Design
 <3>4. QED BY <2>1, <2>2, <2>3, <3>2, <3>3, <1>Ua3eOhQVTzEuP0Q, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, Sizes, Location, Design
<2>6. QED BY <2>5, Sizes, Location, Design DEF RP2_SI5Q, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lPcR28kbBALGX.        
 ASSUME PinInv, B2, SFollow, UNCHANGED xdst, RP_NoNewStop, RP2_StoppedHeldBack
 PROVE RP2_SI5D'
<2> USE ONLY <1>lPcR28kbBALGX, Sizes, Location, Design
<2>1. SI5 BY V21_Inv_P_SI5, Sizes, Location, Design DEF P_SI5, Sizes, Location, Design
<2>2. RP_SFollowEffect BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW x \in Xids, hw'[x]="stop", hok'[x], xdst'[x] \in Pages, Held(xdst[x],x)'
       PROVE dpreOK'[xdst'[x]]
 <3>1. hw[x]="stop" /\ hok[x] /\ Held(xdst[x],x)
  BY <2>3, Sizes, Location, Design DEF RP2_StoppedHeldBack, Sizes, Location, Design
 <3>2. dpreOK[xdst[x]] /\ pst[xdst[x]] # "free"
  BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF SI5, Held, Sizes, Location, Design
 <3>3. QED BY <2>2, <2>3, <3>2, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_NoNewStop, Sizes, Location, Design
<2>4. QED BY <2>3, Sizes, Location, Design DEF RP2_SI5D, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JceKtVIEZsJyu.        
 ASSUME PinInv, B2, SFollow, RP_RecordProgress, RP2_PrivatePhaseStep
 PROVE RP2_SI5P'
<2> USE ONLY <1>JceKtVIEZsJyu, Sizes, Location, Design
<2>1. SI5 BY V21_Inv_P_SI5, Sizes, Location, Design DEF P_SI5, Sizes, Location, Design
<2>2. RP_SFollowEffect BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
<2>fxMap. smap'=[a \in PInst |-> [b \in Rq |-> IF RP_New(a,b) THEN 0 ELSE smap[a][b]]]
 BY ONLY <2>2, ZenonT(5) DEF RP_SFollowEffect
<2>fxPriv. \A p \in SPages : spst'[p]="priv" => spst[p]="priv"
 <3>origin. ASSUME NEW p \in SPages, B2, SFollow, spst'[p]="priv"
             PROVE spst[p]="priv"
  BY ONLY <3>origin, SMTT(5) DEF SFollow
 <3>qed. QED BY ONLY <1>JceKtVIEZsJyu, <3>origin, SMTT(5)
<2>3. ASSUME NEW i \in PInst, NEW r \in Rq, Active(i,r)', smap'[i][r] \in SPages, spst'[smap'[i][r]]="priv"
       PROVE ph'[i][r] \in {"pre","ready"}
 <3>1. smap'[i][r]=smap[i][r] /\ rg'[i][r]=rg[i][r]
  <4>nonzero. smap'[i][r] # 0
   BY ONLY <2>3, Sizes, SMTT(5) DEF SPages, Sizes
  <4>qed. QED BY ONLY <2>fxMap, <2>3, <4>nonzero, SMTT(5) DEF RP_New
 <3>2. Active(i,r) /\ spst[smap[i][r]]="priv"
  <4>active. Active(i,r)
   BY ONLY <1>JceKtVIEZsJyu, <2>3, <3>1, SMTT(5) DEF RP_RecordProgress
  <4>priv. spst[smap[i][r]]="priv"
   BY ONLY <2>3, <3>1, <2>fxPriv, SMTT(5)
  <4>qed. QED BY ONLY <4>active, <4>priv, SMTT(5)
 <3>3. ph[i][r] \in {"pre","ready"}
  BY ONLY <2>1, <2>3, <3>1, <3>2, SMTT(5) DEF SI5
 <3>4. QED BY ONLY <1>JceKtVIEZsJyu, <2>3, <3>1, <3>2, <3>3, SMTT(5) DEF RP2_PrivatePhaseStep
<2>4. QED BY ONLY <2>3, SMTT(5) DEF RP2_SI5P

\* T2M-LOCAL-VISIBILITY

<1>dKRaSSpacKjf.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,xr,xg,xk,nx,xdst>>, RP2_NoNewReg, K4', QuarNoReg',
        RP_NoNewStop, RP2_StoppedHeldBack, RP_RecordProgress, RP2_PrivatePhaseStep
 PROVE P_SI5'
<2> USE ONLY <1>dKRaSSpacKjf, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI5, Sizes, Location, Design
<2>2. CASE B2
 <3>1. RP2_SI5Q' /\ RP2_SI5D' /\ RP2_SI5P'
  BY <2>2, <1>qCu83NBhSdos6, <1>lPcR28kbBALGX, <1>JceKtVIEZsJyu, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <3>1, Sizes, Location, Design DEF P_SI5, SI5, RP2_SI5Q, RP2_SI5D, RP2_SI5P, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1854_PdRPR2SI5


<1>Jjxq1tma0gczRteM3Rk0Ot4.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE UNCHANGED <<xsrc,xr,xg,xk,nx,xdst>> /\ RP2_NoNewReg /\ RP2_PrivatePhaseStep
<2> USE ONLY <1>Jjxq1tma0gczRteM3Rk0Ot4, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ iv \in [Xids -> {"none","reg","posted","failret","cqe","nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Jjxq1tma0gczRteM3Rk0Ot4, V22_T_iv, V22_T_ph, SMTT(5)

<2>2. UNCHANGED <<xsrc,xr,xg,xk,nx,xdst>>
 BY Design, ZenonT(10), Sizes, Location DEF EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>3. RP2_NoNewReg
 BY <2>1, Design, SMTT(10), Sizes, Location DEF RP2_NoNewReg, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. RP2_PrivatePhaseStep
 BY <2>1, Design, Sizes, SMTT(10), Location DEF RP2_PrivatePhaseStep, Active, Inst, PInst, NL, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>5. QED BY <2>2, <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SkWzC8TcBWpK1Afo3bE1ebyYd.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE RP2_StoppedHeldBack
<2> USE ONLY <1>SkWzC8TcBWpK1Afo3bE1ebyYd, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 /\ hw \in [Xids -> {"none","fly","issued","stop"}] /\ hok \in [Xids -> BOOLEAN]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>SkWzC8TcBWpK1Afo3bE1ebyYd, V22_T_hok, V22_T_hw, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>15. \A q \in Pages : Loc(q) \in Int
 BY Location, Sizes, SMTT(10), Design DEF KPages, Inst, NL, Sizes, Location, Design
<2>2. \A j \in Inst,u \in Rq : Active(j,u) => rpg[j][u] \in Pages /\ Loc(rpg[j][u])=j
 BY SMTT(10), V21_Inv_K8, Sizes, Location, Design DEF K8, Sizes, Location, Design
<2>3. RP2_DHeldBack
 BY <2>1, <2>15, <2>2,  Design, Sizes, SMTT(10), Location DEF RP2_DHeldBack, IsP, IsD, Active, Inst, NL, AfterEv, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. RP2_StopBack
 BY <2>1, Design, SMTT(10), Sizes, Location DEF RP2_StopBack, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>5. UNCHANGED <<xdst,xr,xg>>
 BY Design, ZenonT(10), Sizes, Location DEF EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>6. QED BY <2>3, <2>4, <2>5, <1>IKXZRHRBF2l7ZlEB9jY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OapmRaeiIAyBp.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE P_SI5'
 BY ONLY <1>OapmRaeiIAyBp, Sizes, Location, Design, <1>Jjxq1tma0gczRteM3Rk0Ot4, <1>SkWzC8TcBWpK1Afo3bE1ebyYd, <1>ZnsOfqDSKFyZ5GS4iY, <1>yKuqYS4uodfaBD2G9wxMwBN,
    <1>rPQbmSswCYjOs5, <1>axMMxmjBDVSrhgYy15scW, <1>dKRaSSpacKjf DEF Sizes, Location, Design
\* T2M-END R2M1904_PdRPR2SI5_PExpDone


<1> QED BY <1>OapmRaeiIAyBp, <1>RCqnbHaNuv, <1>ByC4CpVmnmzGYtsfn, <1>BGS9EhfwPQPn6GhMsf3Yg1D, <1>NyREXEqOkZ, <1>EtQJsSW6LGSdcwS66tUuOVB7, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PExpDone_03_01 SHA e0e4af5440132eca3b9b52db78e71ca81b038a082afcb14132442e6eae9f56e1
USE DEF V21_Inv_BaseSafety, V21_Inv_KReadIntegrity, V21_Inv_NoStrayAccess, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_SFollowOff, V22_SF_MapPoint, V22_T_rpgS
HIDE DEF Part_PExpDone_02_02, V21_Inv_KStruct, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V22_T_hok, V22_T_iv, V22_T_nx, V22_T_rpg, V22_T_xsrcP, V22_T_xsrcS
THEOREM Part_PExpDone_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE (NoStrayAccess)' /\ (SharedLedRef)' /\ (KReadIntegrity)' /\ (K15)' /\ (P_SI6)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RP_New(i,r) == rg'[i][r] # rg[i][r]


           RP_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           RP_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           RP_H2(unused) == {h \in rpgS : RP_HLive(h) \/ (RP_HPin(h) /\ Mut # "unrefBeforeKDone")}


           RP_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           RP_Src(x) == IF RP_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           RP_SX(unused) == [x \in Xids |-> IF RP_Posted(x) THEN (IF RP_Src(x) \in SPages /\ spst[RP_Src(x)]="shared" THEN {RP_Src(x)} ELSE {}) ELSE xsrcS[x]]


           RP_PX(unused) == [x \in Xids |-> IF RP_Posted(x) THEN (IF RP_Src(x) \in SPages /\ spst[RP_Src(x)]="priv" THEN {RP_Src(x)} ELSE {}) ELSE xsrcP[x]]


           RP_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           RP_Quarantine(x) == x \in sentry /\ ~RP_Close(x) /\
                     ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           RP_E2(unused) == (sentry \cup {x \in Xids : RP_Posted(x)}) \ {x \in Xids : RP_Close(x) \/ RP_Quarantine(x)}


           RP_Q2(unused) == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
                                   UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RP_Quarantine(x)}})


           RP_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\
                    (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           RP_Pin2(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           RP_Drop(p) == (RP_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RP_Pin2(p) /\ sready[p] /\ ~(\E x \in RP_E2(0) : p \in RP_PX(0)[x])


           RP_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
                    spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           RP_SFollowEffect == /\ rpgS'=RP_H2(0) /\ xsrcS'=RP_SX(0) /\ xsrcP'=RP_PX(0) /\ sentry'=RP_E2(0) /\ squar'=RP_Q2(0)
                /\ sprefc'=[p \in SPages |-> sprefc[p]+SRefR(RP_H2(0),p)-SRefR(rpgS,p)
                                    +SRefE(RP_E2(0),RP_SX(0),p)-SRefE(sentry,xsrcS,p)+SRefQ(RP_Q2(0),p)-SRefQ(squar,p)]
                /\ smap'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN 0 ELSE smap[i][r]]]
                /\ schoice'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN FALSE ELSE schoice[i][r]]]
                /\ spst'=[p \in SPages |-> IF \E x \in Xids : RP_Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                                    ELSE IF RP_Drop(p) THEN "free" ELSE IF RP_Ended(p) THEN "drain" ELSE spst[p]]
                /\ xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RP_Valid(x) ELSE xprefixOK[x]]
                /\ dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                                    THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                                          (IF hw[x]="issued" THEN xprefixOK[x] ELSE RP_Valid(x))
                                    ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
                /\ UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>

           \* T2M-LOCAL-VISIBILITY

           RP_RecordProgress == \A i \in PInst,r \in Rq :
            (Active(i,r)' /\ rg'[i][r]=rg[i][r]) => Active(i,r)

           \* T2M-LOCAL-VISIBILITY

           RP_T_rpgS == rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)


           RP_T_xsrcS == xsrcS \in [Xids -> SUBSET SPages]


           RP_T_sentry == sentry \in SUBSET Xids


           RP_T_squar == squar \in SUBSET (Xids \X SPages)


           RP_RefDelta == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)
            +SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

           \* T2M-LOCAL-VISIBILITY

           RP_GenMonotone == \A i \in PInst,r \in Rq : rg'[i][r] \in Nat /\ rg'[i][r]>=rg[i][r]


           RP_KPhaseProgress == \A i \in PInst,r \in Rq :
            (rg'[i][r]=rg[i][r] /\ ph[i][r] \in {"ready","reg","sent","exp","end"}) =>
            ph'[i][r] \in {"ready","reg","sent","exp","end"}

           \* T2M-LOCAL-VISIBILITY

           RP_PinFacts(q) ==
            /\ pst[q] \in {"priv","drain","quar","shared"}
            /\ (IsP(Loc(q)) => plt[q]=ptl[q] /\ sfly[q]={} /\ sled[q]={})
            /\ (IsD(Loc(q)) /\ pst[q] # "shared" => led[q]={})
            /\ NoWriteInto(q)


           RP_PinKeep(q) ==
            /\ (pst[q]="shared" => pst'[q]="shared")
            /\ pst'[q] \in {"priv","drain","quar","shared"}
            /\ UNCHANGED <<pr[q],pgn[q],plt[q],ptl[q],pvis[q],sfly[q]>>
            /\ (IsD(Loc(q)) /\ led[q]={} => led'[q]={})
            /\ (IsP(Loc(q)) /\ sled[q]={} => sled'[q]={})
            /\ (NoWriteInto(q) => NoWriteInto(q)')

           \* T2M-LOCAL-VISIBILITY

           RP_PT_pst == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           RP_PT_pr == pr \in [Pages -> 0..NR]


           RP_PT_pgn == pgn \in [Pages -> 0..MG]


           RP_PT_plt == plt \in [Pages -> 0..PS]


           RP_PT_ptl == ptl \in [Pages -> -1..PS]


           RP_PT_pvis == pvis \in [Pages -> BOOLEAN]


           RP_PT_sfly == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           RP_PT_led == led \in [Pages -> SUBSET Xids]


           RP_PT_sled == sled \in [Pages -> SUBSET (Rq \X Gens)]


           RP_PT_hw == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           RP_PT_xdst == xdst \in [Xids -> 0..NP]


           RP_PT_kpin == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           RP_PT_krs == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           RP_PageTypes == RP_PT_pst /\ RP_PT_pr /\ RP_PT_pgn /\ RP_PT_plt /\ RP_PT_ptl /\ RP_PT_pvis /\ RP_PT_sfly /\ RP_PT_led /\ RP_PT_sled /\ RP_PT_hw /\ RP_PT_xdst /\ RP_PT_kpin /\ RP_PT_krs

           \* T2M-LOCAL-VISIBILITY

           RP_PrivateOwnersStay == \A p \in SPages : spst[p]="priv" =>
            rg'[Loc(p)][sown[p]]=sgen[p] /\ ph'[Loc(p)][sown[p]] # "end"

           \* T2M-LOCAL-VISIBILITY

           RPNS_TransportNoStray ==
             /\ \A x \in Xids : Writing(x) => Held(xdst[x], x)
             /\ \A x \in Xids : hw[x] = "fly" => Held(xsrc[x], x)
             /\ \A p \in Pages : \A t \in sfly[p] :
                   \/ pst[p] \in {"priv", "drain", "quar"} /\ pr[p] = t[1] /\ pgn[p] = t[2]
                   \/ pst[p] = "shared" /\ IsD(Loc(p))
           \* T2M-END R2M2083_PdRPTransportBase


           RPN_T_gen == gen \in [Rq -> 0..MG]


           RPN_T_rt == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           RPN_T_rp == rp \in [Rq -> {0} \cup Inst]


           RPN_T_rd == rd \in [Rq -> {0} \cup Inst]


           RPN_T_hp == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           RPN_T_hd == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           RPN_T_alive == alive \in [Inst -> BOOLEAN]


           RPN_T_nfail == nfail \in 0..MaxFail


           RPN_T_torn == torn \in [Inst -> SUBSET Inst]


           RPN_T_kpin == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           RPN_T_kfly == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           RPN_T_krs == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           RPN_T_ph == ph \in [Inst -> [Rq -> PhSet]]


           RPN_T_rg == rg \in [Inst -> [Rq -> 0..MG]]


           RPN_T_rpg == rpg \in [Inst -> [Rq -> 0..NP]]


           RPN_T_rpe == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           RPN_T_rx == rx \in [Inst -> [Rq -> 0..MX]]


           RPN_T_rhit == rhit \in [Inst -> [Rq -> BOOLEAN]]


           RPN_T_pst == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           RPN_T_pr == pr \in [Pages -> 0..NR]


           RPN_T_pgn == pgn \in [Pages -> 0..MG]


           RPN_T_plt == plt \in [Pages -> 0..PS]


           RPN_T_ptl == ptl \in [Pages -> -1..PS]


           RPN_T_pvis == pvis \in [Pages -> BOOLEAN]


           RPN_T_led == led \in [Pages -> SUBSET Xids]


           RPN_T_sfly == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           RPN_T_sled == sled \in [Pages -> SUBSET (Rq \X Gens)]


           RPN_T_prefc == prefc \in [Pages -> 0..NR]


           RPN_T_pqp == pqp \in [Pages -> {0} \cup Inst]


           RPN_T_xr == xr \in [Xids -> 0..NR]


           RPN_T_xg == xg \in [Xids -> 0..MG]


           RPN_T_xk == xk \in [Xids -> {"none", "wr", "rd"}]


           RPN_T_xp == xp \in [Xids -> {0} \cup Inst]


           RPN_T_xd == xd \in [Xids -> {0} \cup Inst]


           RPN_T_xsrc == xsrc \in [Xids -> 0..NP]


           RPN_T_xdst == xdst \in [Xids -> 0..NP]


           RPN_T_xnt == xnt \in [Xids -> 0..PS]


           RPN_T_hw == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           RPN_T_hok == hok \in [Xids -> BOOLEAN]


           RPN_T_iv == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           RPN_T_xst == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           RPN_T_xlt == xlt \in [Xids -> 0..PS]


           RPN_T_nx == nx \in 1..(MX + 1)


           RPN_T_net == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           RPN_T_drep == drep \in [Rq -> [Gens -> 0..2]]


           RPN_T_crep == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           RPN_T_dsucc == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           RPN_T_gbad == gbad \in BOOLEAN


           RPN_Types == RPN_T_gen /\ RPN_T_rt /\ RPN_T_rp /\ RPN_T_rd /\ RPN_T_hp /\ RPN_T_hd /\ RPN_T_alive /\ RPN_T_nfail /\ RPN_T_torn /\ RPN_T_kpin /\ RPN_T_kfly /\ RPN_T_krs /\ RPN_T_ph /\ RPN_T_rg /\ RPN_T_rpg /\ RPN_T_rpe /\ RPN_T_rx /\ RPN_T_rhit /\ RPN_T_pst /\ RPN_T_pr /\ RPN_T_pgn /\ RPN_T_plt /\ RPN_T_ptl /\ RPN_T_pvis /\ RPN_T_led /\ RPN_T_sfly /\ RPN_T_sled /\ RPN_T_prefc /\ RPN_T_pqp /\ RPN_T_xr /\ RPN_T_xg /\ RPN_T_xk /\ RPN_T_xp /\ RPN_T_xd /\ RPN_T_xsrc /\ RPN_T_xdst /\ RPN_T_xnt /\ RPN_T_hw /\ RPN_T_hok /\ RPN_T_iv /\ RPN_T_xst /\ RPN_T_xlt /\ RPN_T_nx /\ RPN_T_net /\ RPN_T_drep /\ RPN_T_crep /\ RPN_T_dsucc /\ RPN_T_gbad

           \* T2M-LOCAL-VISIBILITY

           RPN_BK8At(i,r) ==
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


           RPN_BK7At(p) ==
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


           RPN_BPEnd(i,r) ==
             LET p == rpg[i][r] IN
             /\ IsP(i) /\ p \in Pages /\ Loc(p) = i /\ pst[p] = "priv"
             /\ ph[i][r] \in {"sent", "exp", "reg"}
             /\ ph' = [ph EXCEPT ![i][r] = "end"]
             /\ pst' = [pst EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"]
             /\ pr' = [pr EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
             /\ pgn' = [pgn EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
             /\ plt' = [plt EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
             /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0
             /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,led,sfly,sled,prefc,pqp,
                             xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,iv,xst,xlt,nx,net,drep,crep,dsucc,gbad>>


           RPN_BPFreed(i,r) == led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r])

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, RP_GenMonotone, RP_KPhaseProgress, RP_PinFacts, RP_PinKeep, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, RP_PrivateOwnersStay, RPNS_TransportNoStray, RPN_T_gen, RPN_T_rt, RPN_T_rp, RPN_T_rd, RPN_T_hp, RPN_T_hd, RPN_T_alive, RPN_T_nfail, RPN_T_torn, RPN_T_kpin, RPN_T_kfly, RPN_T_krs, RPN_T_ph, RPN_T_rg, RPN_T_rpg, RPN_T_rpe, RPN_T_rx, RPN_T_rhit, RPN_T_pst, RPN_T_pr, RPN_T_pgn, RPN_T_plt, RPN_T_ptl, RPN_T_pvis, RPN_T_led, RPN_T_sfly, RPN_T_sled, RPN_T_prefc, RPN_T_pqp, RPN_T_xr, RPN_T_xg, RPN_T_xk, RPN_T_xp, RPN_T_xd, RPN_T_xsrc, RPN_T_xdst, RPN_T_xnt, RPN_T_hw, RPN_T_hok, RPN_T_iv, RPN_T_xst, RPN_T_xlt, RPN_T_nx, RPN_T_net, RPN_T_drep, RPN_T_crep, RPN_T_dsucc, RPN_T_gbad, RPN_Types, RPN_BK8At, RPN_BK7At, RPN_BPEnd, RPN_BPFreed

<1>PKl1lJKpXGVI0yrZ8.        
 ASSUME B2, SFollow
 PROVE RP_SFollowEffect
<2> HIDE DEF SFollow, RP_SFollowEffect, V22_FH2, V22_FSX, V22_FPX, V22_FE2, V22_FQ2, V22_FDrop, V22_FEnded, V22_FQuarantine
<2>hAlias. RP_H2(0)=V22_FH2
 BY ONLY SMTT(5) DEF RP_H2, RP_HLive, RP_HPin, V22_FH2, V22_FHLive, V22_FHPin
<2>sxAlias. RP_SX(0)=V22_FSX
 BY ONLY SMTT(5) DEF RP_SX, RP_Posted, RP_Src, V22_FSX, V22_FPosted, V22_FSrc
<2>pxAlias. RP_PX(0)=V22_FPX
 BY ONLY SMTT(5) DEF RP_PX, RP_Posted, RP_Src, V22_FPX, V22_FPosted, V22_FSrc
<2>eAlias. RP_E2(0)=V22_FE2
 BY ONLY SMTT(5) DEF RP_E2, RP_Posted, RP_Close, RP_Quarantine, V22_FE2, V22_FPosted, V22_FClose, V22_FQuarantine
<2>qAlias. RP_Q2(0)=V22_FQ2
 BY ONLY SMTT(5) DEF RP_Q2, RP_Quarantine, RP_Close, V22_FQ2, V22_FQuarantine, V22_FClose
<2>statusAlias. \A p \in SPages : RP_Ended(p)=V22_FEnded(p) /\ RP_Drop(p)=V22_FDrop(p)
 BY ONLY <2>pxAlias, <2>eAlias, SMTT(5) DEF RP_Ended, RP_Drop, RP_Pin2, V22_FEnded, V22_FDrop, V22_FPin2
<2>quarantineAlias. \A x \in Xids : RP_Quarantine(x)=V22_FQuarantine(x)
 BY ONLY SMTT(5) DEF RP_Quarantine, RP_Close, V22_FQuarantine, V22_FClose
<2>holders. rpgS'=RP_H2(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>hAlias, V22_SF_Holders, SMTT(5) DEF V22_SF_Holders
<2>sourceShared. xsrcS'=RP_SX(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>sxAlias, V22_SF_SourceShared, SMTT(5) DEF V22_SF_SourceShared
<2>sourcePrivate. xsrcP'=RP_PX(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>pxAlias, V22_SF_SourcePrivate, SMTT(5) DEF V22_SF_SourcePrivate
<2>sentry. sentry'=RP_E2(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>eAlias, V22_SF_Sentry, SMTT(5) DEF V22_SF_Sentry
<2>squar. squar'=RP_Q2(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>qAlias, V22_SF_Squar, SMTT(5) DEF V22_SF_Squar
<2>refcount. sprefc'=[p \in SPages |-> sprefc[p]+SRefR(RP_H2(0),p)-SRefR(rpgS,p)
                      +SRefE(RP_E2(0),RP_SX(0),p)-SRefE(sentry,xsrcS,p)+SRefQ(RP_Q2(0),p)-SRefQ(squar,p)]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>hAlias, <2>sxAlias, <2>eAlias, <2>qAlias, V22_SF_RefCount, SMTT(5) DEF V22_SF_RefCount
<2>map. smap'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN 0 ELSE smap[i][r]]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, V22_SF_Map, SMTT(5) DEF RP_New, V22_SF_Map
<2>choice. schoice'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN FALSE ELSE schoice[i][r]]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, V22_SF_Choice, SMTT(5) DEF RP_New, V22_SF_Choice
<2>status. spst'=[p \in SPages |-> IF \E x \in Xids : RP_Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                      ELSE IF RP_Drop(p) THEN "free" ELSE IF RP_Ended(p) THEN "drain" ELSE spst[p]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>statusAlias, <2>quarantineAlias, V22_SF_Status, SMTT(5) DEF V22_SF_Status
<2>prefix. xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RP_Valid(x) ELSE xprefixOK[x]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, ZenonT(10) DEF SFollow, RP_Valid
<2>dpre. dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                      THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                         (IF hw[x]="issued" THEN xprefixOK[x] ELSE RP_Valid(x))
                      ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, ZenonT(10) DEF SFollow, RP_Valid
<2>static. UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, V22_SF_Static, SMTT(5) DEF V22_SF_Static
<2>qed. QED
 BY ONLY <2>holders, <2>sourceShared, <2>sourcePrivate, <2>sentry, <2>squar,
         <2>refcount, <2>map, <2>choice, <2>status, <2>prefix, <2>dpre, <2>static, SMTT(5) DEF RP_SFollowEffect

\* T2M-LOCAL-VISIBILITY

<1>zfqXeNpr8ate3.        
 ASSUME SFollow
 PROVE UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ONLY <1>zfqXeNpr8ate3, Sizes, Location, Design, ZenonT(10), V21_SFollowStatic DEF sV, Sizes, Location, Design
\* T2M-END R2M1392_PdRPFollowProjection


<1>Ua3eOhQVTzEuP0Q.        
 ASSUME NEW p \in SPages, B2, SFollow, SI4, spst[p]="shared"
 PROVE spst'[p]="shared"
<2> USE ONLY <1>Ua3eOhQVTzEuP0Q, Sizes, Location, Design
<2>1. \A x \in Xids : xsrcP[x]={} BY Sizes, Location, Design DEF SI4, Sizes, Location, Design
<2>2. QED BY <2>1, <1>PKl1lJKpXGVI0yrZ8, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_Drop, RP_Ended, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>irl4UaCCkNMPiRRv.        
 ASSUME NEW p \in SPages, B2, SFollow, spst'[p]="shared"
 PROVE spst[p]="shared"
 BY ONLY <1>irl4UaCCkNMPiRRv, Sizes, Location, Design, <1>PKl1lJKpXGVI0yrZ8, SMTT(10) DEF RP_SFollowEffect, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zeo4iyzi7OjON1.        
 ASSUME NEW i \in PInst, NEW k \in KSlots, NEW e, B2, SFollow,
        UNCHANGED <<kpin,krs>>, kpin[i][k], e \in krs[i][k], e[3] \in SPages
 PROVE spst'[e[3]] \in {spst[e[3]],"drain","quar"}
<2> USE ONLY <1>zeo4iyzi7OjON1, Sizes, Location, Design
<2>1. RP_Pin2(e[3]) BY SMTT(10), Sizes, Location, Design DEF RP_Pin2, Sizes, Location, Design
<2>2. ~RP_Drop(e[3]) BY <2>1, Sizes, Location, Design DEF RP_Drop, Sizes, Location, Design
<2>3. QED BY <2>2, <1>PKl1lJKpXGVI0yrZ8, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>whu4qMNmSVNYx5.        
 ASSUME NEW h, B2, SFollow, h \in rpgS, RP_HPin(h)
 PROVE h \in rpgS'
 BY ONLY <1>whu4qMNmSVNYx5, Sizes, Location, Design, Design, <1>PKl1lJKpXGVI0yrZ8, SMTT(10) DEF RP_SFollowEffect, RP_H2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uWXN2TjAdAz.        
 ASSUME PinInv, SFollow, UNCHANGED <<kpin,krs>>
 PROVE P_SI3'
<2> USE ONLY <1>uWXN2TjAdAz, Sizes, Location, Design
<2>1. B2 => SI3 /\ SI4
 BY V21_Inv_P_SI3, V21_Inv_P_SI4, Sizes, Location, Design DEF P_SI3, P_SI4, Sizes, Location, Design
<2>2. UNCHANGED <<sown,sgen,skey,swrite,sdata>> BY <1>zfqXeNpr8ate3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE ~B2
 BY <2>3, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>4. CASE B2
 <3>1. ASSUME NEW i \in PInst, NEW k \in KSlots, kpin'[i][k], NEW e \in krs'[i][k], e[3] \in SPages
        PROVE /\ e[4] \in {1,4} /\ SData(e)' /\ SHeld(e)'
              /\ spst'[e[3]]="shared" => SH(i,e[1],e[2],e[3]) \in rpgS'
              /\ e[4]=4 => sown'[e[3]]=e[1] /\ sgen'[e[3]]=e[2]
  <4>1. kpin[i][k] /\ e \in krs[i][k] BY <3>1, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. e[4] \in {1,4} /\ SData(e) /\ SHeld(e)
        /\ (spst[e[3]]="shared" => SH(i,e[1],e[2],e[3]) \in rpgS)
        /\ (e[4]=4 => sown[e[3]]=e[1] /\ sgen[e[3]]=e[2])
   BY <2>1, <2>4, <3>1, <4>1, SMTT(10), Sizes, Location, Design DEF SI3, Sizes, Location, Design
  <4>3. (spst[e[3]]="shared" => spst'[e[3]]="shared")
        /\ (spst'[e[3]]="shared" => spst[e[3]]="shared")
   BY <2>1, <2>4, <3>1, <1>Ua3eOhQVTzEuP0Q, <1>irl4UaCCkNMPiRRv, Sizes, Location, Design DEF Sizes, Location, Design
  <4>4. spst'[e[3]] \in {spst[e[3]],"drain","quar"}
   BY <2>4, <3>1, <4>1, <1>zeo4iyzi7OjON1, Sizes, Location, Design DEF Sizes, Location, Design
  <4>5. RP_HPin(SH(i,e[1],e[2],e[3]))
   BY <3>1, SMTT(10), Sizes, Location, Design DEF RP_HPin, SH, Sizes, Location, Design
  <4>6. spst'[e[3]]="shared" => SH(i,e[1],e[2],e[3]) \in rpgS'
   BY <2>4, <4>2, <4>3, <4>5, <1>whu4qMNmSVNYx5, Sizes, Location, Design DEF Sizes, Location, Design
  <4>7. QED BY <2>2, <4>2, <4>3, <4>4, <4>6, SMTT(10), Sizes, Location, Design DEF SData, SHeld, Sizes, Location, Design
 <3>2. QED BY <2>4, <3>1, Sizes, Location, Design DEF P_SI3, SI3, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>f1Y0wBZYE4Htz.        
 /\ IsFiniteSet(PInst) /\ IsFiniteSet(Rq) /\ IsFiniteSet(Gens)
 /\ IsFiniteSet(SPages) /\ IsFiniteSet(Xids)
 BY Sizes, FS_Interval, SMTT(10), Location, Design DEF PInst, Rq, Gens, SPages, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nQKL75Fxdx.        
 ASSUME NEW A, NEW B, NEW C, NEW D,
        IsFiniteSet(A), IsFiniteSet(B), IsFiniteSet(C), IsFiniteSet(D)
 PROVE IsFiniteSet(A \X B \X C \X D)
<2> USE ONLY <1>nQKL75Fxdx, Sizes, Location, Design
<2>1. IsFiniteSet(A \X B) BY FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet((A \X B) \X C) BY <2>1, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet(((A \X B) \X C) \X D) BY <2>2, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. DEFINE U == ((A \X B) \X C) \X D
              F == [t \in U |-> <<t[1][1][1],t[1][1][2],t[1][2],t[2]>>]
<2>5. F \in [U -> (A \X B \X C \X D)]
 BY SMTT(10), Sizes, Location, Design DEF F, U, Sizes, Location, Design
<2>6. \A z \in (A \X B \X C \X D) : <<<<<<z[1],z[2]>>,z[3]>>,z[4]>> \in U
 BY SMTT(10), Sizes, Location, Design DEF U, Sizes, Location, Design
<2>7. \A z \in (A \X B \X C \X D) : F[<<<<<<z[1],z[2]>>,z[3]>>,z[4]>>]=z
 BY SMTT(10), Sizes, Location, Design DEF F, U, Sizes, Location, Design
<2>8. F \in Surjection(U,A \X B \X C \X D)
 BY <2>5, <2>6, <2>7, SMTT(10), Sizes, Location, Design DEF Surjection, Sizes, Location, Design
<2>9. QED BY <2>3, <2>8, FS_Surjection, SMTT(10), Sizes, Location, Design DEF U, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mOXdb4AFBe0It6kG2Px.        
 /\ IsFiniteSet(PInst \X Rq \X Gens \X SPages)
 /\ IsFiniteSet(Xids \X SPages)
 BY <1>f1Y0wBZYE4Htz, <1>nQKL75Fxdx, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qVeeMREBfC.        
 ASSUME NEW H \in SUBSET (PInst \X Rq \X Gens \X SPages),
        NEW E \in SUBSET Xids, NEW X, NEW Q \in SUBSET (Xids \X SPages), NEW p
 PROVE SRefR(H,p) \in Nat /\ SRefE(E,X,p) \in Nat /\ SRefQ(Q,p) \in Nat
<2> USE ONLY <1>qVeeMREBfC, Sizes, Location, Design
<2>1. IsFiniteSet(H) /\ IsFiniteSet(E) /\ IsFiniteSet(Q)
 BY <1>mOXdb4AFBe0It6kG2Px, <1>f1Y0wBZYE4Htz, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. {h \in H : h[4]=p} \subseteq H
       /\ {x \in E : p \in X[x]} \subseteq E
       /\ {h \in Q : h[2]=p} \subseteq Q
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet({h \in H : h[4]=p})
       /\ IsFiniteSet({x \in E : p \in X[x]})
       /\ IsFiniteSet({h \in Q : h[2]=p})
 BY <2>1, <2>2, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>3, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design
\* T2M-END R2M1408_PdRPFinite


<1>g2d0XcDvt56Baa.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_rpgS'
<2> USE ONLY <1>g2d0XcDvt56Baa, Sizes, Location, Design
<2>1. RP_T_rpgS
 BY Sizes, Location, Design DEF STypeOK, RP_T_rpgS, Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF RP_T_rpgS, SFollow, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NjvYCjaSlJxhU8e0.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_sentry'
<2> USE ONLY <1>NjvYCjaSlJxhU8e0, Sizes, Location, Design
<2>1. RP_T_sentry
 BY Sizes, Location, Design DEF STypeOK, RP_T_sentry, Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF RP_T_sentry, SFollow, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>A1Sb5mM7HaVTJal.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_squar'
<2> USE ONLY <1>A1Sb5mM7HaVTJal, Sizes, Location, Design
<2>1. RP_T_squar /\ RP_T_xsrcS
 BY ONLY <1>A1Sb5mM7HaVTJal, Sizes, Location, Design DEF STypeOK, RP_T_squar, RP_T_xsrcS, Sizes, Location, Design
<2>2. CASE ~B2
 <3>1. UNCHANGED squar
  BY ONLY <2>2, <1>A1Sb5mM7HaVTJal, V21_SFollowOff, Sizes, Location, Design, SMTT(5) DEF sV
 <3>2. QED BY ONLY <2>1, <3>1, SMTT(5) DEF RP_T_squar
<2>3. CASE B2
 <3>1. squar'=RP_Q2(0)
  BY ONLY <2>3, <1>A1Sb5mM7HaVTJal, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design, SMTT(5) DEF RP_SFollowEffect
 <3>2. RP_Q2(0) \subseteq Xids \X SPages
  BY ONLY <2>1, SMTT(10) DEF RP_Q2, RP_T_squar, RP_T_xsrcS
 <3>3. QED BY ONLY <3>1, <3>2, SMTT(5) DEF RP_T_squar
<2>4. QED BY ONLY <2>2, <2>3, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>ak2jPIltdDiaCVc.        
 ASSUME B2, SFollow
 PROVE RP_RefDelta
 BY ONLY <1>ak2jPIltdDiaCVc, Sizes, Location, Design, ZenonT(10) DEF RP_RefDelta, SFollow, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NSUGzTM423PsEC.        
 ASSUME STypeOK, SFollow, NEW p \in SPages
 PROVE /\ SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
       /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
       /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
<2> USE ONLY <1>NSUGzTM423PsEC, Sizes, Location, Design
<2>1. RP_T_rpgS /\ RP_T_sentry /\ RP_T_squar
 BY Sizes, Location, Design DEF STypeOK, RP_T_rpgS, RP_T_sentry, RP_T_squar, Sizes, Location, Design
<2>2. RP_T_rpgS' /\ RP_T_sentry' /\ RP_T_squar'
 BY <1>g2d0XcDvt56Baa, <1>NjvYCjaSlJxhU8e0, <1>A1Sb5mM7HaVTJal, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>qVeeMREBfC, Sizes, Location, Design DEF RP_T_rpgS, RP_T_sentry, RP_T_squar, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AnajBeZS7htcLkTpZ8C91mxOHTa.        
 ASSUME PinInv, SFollow
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>AnajBeZS7htcLkTpZ8C91mxOHTa, Sizes, Location, Design
<2>1. PrefcMatchesHolders /\ STypeOK
 BY V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY <2>2, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RP_RefDelta BY <2>3, <1>ak2jPIltdDiaCVc, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW p \in SPages
        PROVE sprefc'[p] = SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
  <4>1. SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
        /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
        /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
   BY <2>1, <1>NSUGzTM423PsEC, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. sprefc[p] = SRefR(rpgS,p)+SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
   BY <2>1, <2>3, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
  <4>3. QED BY <3>1, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF RP_RefDelta, Sizes, Location, Design
 <3>3. QED BY <2>3, <3>2, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1410_PdRPRefCount


<1>nD6Ms1kWpq68uZA.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>nD6Ms1kWpq68uZA, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yKuqYS4uodfaBD2G9wxMwBN.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>yKuqYS4uodfaBD2G9wxMwBN, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>yKuqYS4uodfaBD2G9wxMwBN, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LRleyMNnxCwX.        
 ASSUME NEW H \in SUBSET (PInst \X Rq \X Gens \X SPages), NEW p,
        NEW h \in H, h[4]=p
 PROVE SRefR(H,p)>=1
<2> USE ONLY <1>LRleyMNnxCwX, Sizes, Location, Design
<2>1. IsFiniteSet(PInst \X Rq \X Gens \X SPages) BY <1>mOXdb4AFBe0It6kG2Px, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet({v \in H : v[4]=p})
 BY <2>1, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. {v \in H : v[4]=p} # {} BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. Cardinality({v \in H : v[4]=p}) \in Nat /\ Cardinality({v \in H : v[4]=p}) # 0
 BY <2>2, <2>3, FS_EmptySet, FS_CardinalityType, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF SRefR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xOtqg6YRsioevxRntvd4.        
 ASSUME PinInv, SFollow, UNCHANGED <<kpin,krs>>
 PROVE SharedLedRef'
<2> USE ONLY <1>xOtqg6YRsioevxRntvd4, Sizes, Location, Design
<2>1. STypeOK BY V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. PrefcMatchesHolders' BY <1>AnajBeZS7htcLkTpZ8C91mxOHTa, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. P_SI3' BY <1>uWXN2TjAdAz, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RP_T_rpgS' BY <2>1, <1>g2d0XcDvt56Baa, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. CASE ~B2 BY <2>5, Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
<2>6. CASE B2
 <3>1. ASSUME NEW p \in SPages
        PROVE /\ ((spst'[p]="shared" /\ (SRefE(sentry',xsrcS',p)>0 \/ SPin(p)')) \/ SRefQ(squar',p)>0) => sprefc'[p]>=1
              /\ sprefc'[p]>=SRefQ(squar',p)
  <4>1. SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat
   BY <2>1, <1>NSUGzTM423PsEC, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. sprefc'[p]=SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
   BY <2>2, <2>6, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
  <4>3. ASSUME spst'[p]="shared", SPin(p)'
         PROVE SRefR(rpgS',p)>=1
   <5>1. PICK i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p
    BY <4>3, Sizes, Location, Design DEF SPin, Sizes, Location, Design
   <5>2. PICK e \in krs'[i][k] : e[3]=p BY <5>1, Sizes, Location, Design DEF Sizes, Location, Design
   <5>3. SH(i,e[1],e[2],p) \in rpgS'
    BY <2>3, <2>6, <4>3, <5>1, <5>2, Sizes, Location, Design DEF P_SI3, SI3, Sizes, Location, Design
   <5>4. QED BY <2>4, <5>3, <1>LRleyMNnxCwX, SMTT(10), Sizes, Location, Design DEF RP_T_rpgS, SH, Sizes, Location, Design
  <4>4. QED BY ONLY <4>1, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>6, <3>1, Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
<2>7. QED BY <2>5, <2>6, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1411_PdRPLedRef


<1>sP1gMFHuwAB.        
 ASSUME PinInv, SFollow, UNCHANGED <<kpin,krs>>, RP_RecordProgress, RP_GenMonotone, RP_KPhaseProgress
 PROVE P_SI6'
<2> HIDE DEF SFollow, CoreTypeOK, STypeOK, RP_SFollowEffect, V22_FH2
<2>old. (B2 => SI1 /\ SI6)
 BY ONLY <1>sP1gMFHuwAB, V21_Inv_P_SI1, V21_Inv_P_SI6, Sizes, Location, Design, SMTT(5) DEF P_SI1, P_SI6
<2>types. krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0,1,2,3,4})]] /\
           rg \in [Inst -> [Rq -> 0..MG]] /\ rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)
 BY ONLY <1>sP1gMFHuwAB, V22_T_krs, V22_T_rg, V22_T_rpgS, SMTT(5)
<2>domains. PInst \subseteq Inst /\ Gens \subseteq Nat /\ 0..MG \subseteq Nat
 BY ONLY Sizes, SMTT(5) DEF Sizes, PInst, Inst, NL, Gens
<2>order. ASSUME NEW oldgen \in Nat, NEW newgen \in Nat, NEW entrygen \in Nat,
                 newgen>=oldgen, oldgen>=entrygen
          PROVE newgen>=entrygen /\ (newgen=entrygen => oldgen=entrygen)
 BY ONLY <2>order, SMTT(5)
<2>off. CASE ~B2
 BY ONLY <2>off, SMTT(5) DEF P_SI6
<2>on. CASE B2
 <3>entry. ASSUME NEW i \in PInst, NEW k \in KSlots, kpin'[i][k], NEW e \in krs'[i][k], e[3] \in SPages
          PROVE /\ rg'[i][e[1]]>=e[2]
                /\ (rg'[i][e[1]]=e[2] => schoice'[i][e[1]] /\ ph'[i][e[1]] \in {"ready","reg","sent","exp","end"})
                /\ (e[4]=1 /\ rg'[i][e[1]]=e[2] /\ Active(i,e[1])' => smap'[i][e[1]]=e[3])
  <4>domain. e[1] \in Rq /\ e[2] \in Gens /\ kpin[i][k] /\ e \in krs[i][k]
   BY ONLY <1>sP1gMFHuwAB, <2>types, <2>domains, <3>entry, SMTT(5)
  <4>before. rg[i][e[1]]>=e[2] /\
     (rg[i][e[1]]=e[2] => schoice[i][e[1]] /\ ph[i][e[1]] \in {"ready","reg","sent","exp","end"}) /\
     ((e[4]=1 /\ rg[i][e[1]]=e[2] /\ Active(i,e[1])) => smap[i][e[1]]=e[3])
   BY ONLY <2>old, <2>on, <3>entry, <4>domain, SMTT(5) DEF SI6
  <4>numbers. rg[i][e[1]] \in Nat /\ rg'[i][e[1]] \in Nat /\ e[2] \in Nat /\ rg'[i][e[1]]>=rg[i][e[1]]
   BY ONLY <1>sP1gMFHuwAB, <2>types, <2>domains, <3>entry, <4>domain, SMTT(5) DEF RP_GenMonotone
  <4>ordered. rg'[i][e[1]]>=e[2] /\ (rg'[i][e[1]]=e[2] => rg[i][e[1]]=e[2])
   BY ONLY <2>order, <4>before, <4>numbers, SMTT(5)
  <4>map. rg'[i][e[1]]=e[2] => smap'[i][e[1]]=smap[i][e[1]]
   BY ONLY <1>sP1gMFHuwAB, <2>on, <3>entry, <4>domain, <4>ordered, V22_SF_MapPoint, SMTT(5) DEF V22_SF_MapPoint
  <4>choice. rg'[i][e[1]]=e[2] => schoice'[i][e[1]]=schoice[i][e[1]]
   BY ONLY <1>sP1gMFHuwAB, <2>on, <3>entry, <4>domain, <4>ordered, V22_SF_Choice, SMTT(5) DEF V22_SF_Choice
  <4>phase. rg'[i][e[1]]=e[2] => ph'[i][e[1]] \in {"ready","reg","sent","exp","end"}
   BY ONLY <1>sP1gMFHuwAB, <3>entry, <4>domain, <4>before, <4>ordered, SMTT(5) DEF RP_KPhaseProgress
  <4>active. (rg'[i][e[1]]=e[2] /\ Active(i,e[1])') => Active(i,e[1])
   BY ONLY <1>sP1gMFHuwAB, <3>entry, <4>domain, <4>ordered, SMTT(5) DEF RP_RecordProgress
  <4>qed. QED BY ONLY <4>before, <4>ordered, <4>map, <4>choice, <4>phase, <4>active, SMTT(5)
 <3>holder. ASSUME NEW h \in rpgS', rg'[h[1]][h[2]]=h[3], Active(h[1],h[2])'
           PROVE smap'[h[1]][h[2]]=h[4]
  <4>member. h \in rpgS
   BY ONLY <1>sP1gMFHuwAB, <2>on, <3>holder, V22_SF_Holders, SMTT(5) DEF V22_SF_Holders, V22_FH2
  <4>domain. h[1] \in PInst /\ h[2] \in Rq /\ h[3] \in Gens /\ h[4] \in SPages
   BY ONLY <2>types, <4>member, SMTT(5)
  <4>split. (rg[h[1]][h[2]]=h[3] /\ Active(h[1],h[2]) /\ smap[h[1]][h[2]]=h[4]) \/ SHPin(h)
   BY ONLY <2>old, <2>on, <4>member, SMTT(5) DEF SI1
  <4>lower. rg[h[1]][h[2]]>=h[3]
   <5>direct. CASE rg[h[1]][h[2]]=h[3]
    BY ONLY <5>direct, <4>domain, <2>domains, SMTT(5)
   <5>pin. CASE SHPin(h)
    <6>slot. PICK k \in KSlots : kpin[h[1]][k] /\ \E e \in krs[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]
     BY ONLY <5>pin, SMTT(5) DEF SHPin
    <6>entry. PICK e \in krs[h[1]][k] : kpin[h[1]][k] /\ e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]
     BY ONLY <6>slot, SMTT(5)
    <6>qed. QED BY ONLY <2>old, <2>on, <4>domain, <6>entry, SMTT(5) DEF SI6
   <5>qed. QED BY ONLY <4>split, <5>direct, <5>pin, SMTT(5)
  <4>numbers. rg[h[1]][h[2]] \in Nat /\ rg'[h[1]][h[2]] \in Nat /\ h[3] \in Nat /\ rg'[h[1]][h[2]]>=rg[h[1]][h[2]]
   BY ONLY <1>sP1gMFHuwAB, <2>types, <2>domains, <4>domain, SMTT(5) DEF RP_GenMonotone
  <4>same. rg[h[1]][h[2]]=h[3]
   BY ONLY <2>order, <3>holder, <4>numbers, <4>lower, SMTT(5)
  <4>active. Active(h[1],h[2])
   BY ONLY <1>sP1gMFHuwAB, <3>holder, <4>domain, <4>same, SMTT(5) DEF RP_RecordProgress
  <4>before. smap[h[1]][h[2]]=h[4]
   BY ONLY <2>old, <2>on, <4>member, <4>same, <4>active, SMTT(5) DEF SI6
  <4>qed. QED
   BY ONLY <1>sP1gMFHuwAB, <2>on, <3>holder, <4>domain, <4>same, <4>before, V22_SF_MapPoint, SMTT(5) DEF V22_SF_MapPoint
 <3>qed. QED BY ONLY <2>on, <3>entry, <3>holder, SMTT(5) DEF P_SI6, SI6
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

\* T2M-END R2M1413_PdRPSI6


<1>EeuVa1MUdsbfNxTl4Ep2.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE RP_GenMonotone /\ RP_KPhaseProgress
<2> USE ONLY <1>EeuVa1MUdsbfNxTl4Ep2, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>EeuVa1MUdsbfNxTl4Ep2, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_GenMonotone, RP_KPhaseProgress, PInst, Inst, NL, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qWSoPqIgc4hIYYD8VN6lI.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE SharedLedRef'
 BY ONLY <1>qWSoPqIgc4hIYYD8VN6lI, Sizes, Location, Design, <1>nD6Ms1kWpq68uZA, <1>xOtqg6YRsioevxRntvd4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t4BHZ642KQiF.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE P_SI6'
 BY ONLY <1>t4BHZ642KQiF, Sizes, Location, Design, <1>nD6Ms1kWpq68uZA, <1>yKuqYS4uodfaBD2G9wxMwBN, <1>EeuVa1MUdsbfNxTl4Ep2, <1>sP1gMFHuwAB DEF Sizes, Location, Design
\* T2M-END R2M1421_PdRPExtra_PExpDone


<1>sTGmGejCTusB.        
 ASSUME PinInv, NEW q \in Pages, KPinned(q)
 PROVE RP_PinFacts(q)
<2> USE ONLY <1>sTGmGejCTusB, Sizes, Location, Design
<2>1. K14 /\ K15 /\ NoFreeUnderRead
 BY V21_Inv_K14, V21_Inv_K15, V21_Inv_NoFreeUnderRead, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Loc(q) \in Inst /\ q \notin SPages
 BY Location, P_PagePoolsDisjoint, SMTT(10), Sizes, Design DEF KPages, Sizes, Location, Design
<2>3. PICK k \in KSlots : kpin[Loc(q)][k] /\ \E e \in krs[Loc(q)][k] : e[3]=q
 BY Sizes, Location, Design DEF KPinned, Sizes, Location, Design
<2>30. PICK e \in krs[Loc(q)][k] : e[3]=q
 BY <2>3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. KHeld(e) /\ KData(Loc(q),e)
       /\ (IsD(Loc(q)) /\ e[4] # 1 => led[q]={})
       /\ (IsP(Loc(q)) => sled[q]={})
 BY <2>1, <2>2, <2>3, <2>30, Sizes, Location, Design DEF NoFreeUnderRead, K15, Sizes, Location, Design
<2>5. e[4] \in {0,1,2,3} /\ (e[4] # 0 => IsD(Loc(q)))
 BY <2>1, <2>2, <2>3, <2>30, Sizes, Location, Design DEF K14, Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>30, <2>4, <2>5, Sizes, SMTT(10), Location, Design DEF RP_PinFacts, KHeld, KData, IsP, IsD, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VtlCqCAE0X2qQ.        
 ASSUME PinInv, SFollow, UNCHANGED <<kpin,krs,kfly>>,
        xdst' \in [Xids -> 0..NP],
        \A q \in Pages : KPinned(q) => RP_PinKeep(q)
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>VtlCqCAE0X2qQ, Sizes, Location, Design
<2>1. K14 /\ K15 /\ NoFreeUnderRead /\ krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0,1,2,3,4})]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>VtlCqCAE0X2qQ, V22_T_krs, V21_Inv_K14, V21_Inv_K15, V21_Inv_NoFreeUnderRead, Sizes, Location, Design, SMTT(5)

<2>2. P_SI3' BY <1>uWXN2TjAdAz, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<skey,sdata,swrite>> BY <1>zfqXeNpr8ate3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW i \in Inst, NEW k \in KSlots, kpin[i][k], NEW e \in krs[i][k]
       PROVE KHeld(e)' /\ KData(i,e)'
             /\ (IsD(i) /\ e[4] # 1 => led'[e[3]]={})
             /\ (IsP(i) /\ e[3] \in Pages => sled'[e[3]]={})
 <3>1. e[3] \in KPages /\ Loc(e[3])=i /\ KHeld(e) /\ KData(i,e)
       /\ (IsD(i) /\ e[4] # 1 => led[e[3]]={})
       /\ (IsP(i) /\ e[3] \in Pages => sled[e[3]]={})
  BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF K14, K15, NoFreeUnderRead, Sizes, Location, Design
 <3>2. CASE e[3] \in Pages
  <4>1. KPinned(e[3]) BY <2>4, <3>1, SMTT(10), Sizes, Location, Design DEF KPinned, Sizes, Location, Design
  <4>2. RP_PinKeep(e[3]) BY <3>2, <4>1, Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. QED BY <3>1, <3>2, <4>2, P_PagePoolsDisjoint, SMTT(10), Sizes, Location, Design DEF RP_PinKeep, KHeld, KData, Sizes, Location, Design
 <3>3. CASE e[3] \in SPages
  <4>1. B2 /\ i \in PInst /\ ~IsD(i)
   BY <2>1, <2>4, <3>3, Sizes, SMTT(10), Location, Design DEF K14, PInst, Inst, NL, IsP, IsD, Sizes, Location, Design
  <4>2. SData(e)' /\ SHeld(e)'
   BY <2>2, <2>4, <3>3, <4>1, Sizes, Location, Design DEF P_SI3, SI3, Sizes, Location, Design
  <4>3. NoWriteInto(e[3])'
   BY <3>3, Sizes, SMTT(10), Location, Design DEF NoWriteInto, SPages, Sizes, Location, Design
  <4>4. QED BY <3>3, <4>1, <4>2, <4>3, P_PagePoolsDisjoint, SMTT(10), Sizes, Location, Design DEF KHeld, KData, Sizes, Location, Design
 <3>4. QED BY <3>1, <3>2, <3>3, Sizes, Location, Design DEF KPages, Sizes, Location, Design
<2>5. QED BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF K15, K14, NoFreeUnderRead, BaseKReadIntegrity, Sizes, Location, Design
\* T2M-END R2M1444_PdRPKernel


<1>dlRLZLJP8YIdC37.         PinInv => RP_PageTypes
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_sfly, V22_T_sled, V22_T_xdst, SMTT(5) DEF RP_PT_hw, RP_PT_kpin, RP_PT_krs, RP_PT_led, RP_PT_pgn, RP_PT_plt, RP_PT_pr, RP_PT_pst, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_sled, RP_PT_xdst, RP_PageTypes

\* T2M-END R2M1445_PdRPPageTypes


<1>y3poNFvoa8gdztrK.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow, NEW q \in Pages, KPinned(q)
 PROVE RP_PinKeep(q)
<2> USE ONLY <1>y3poNFvoa8gdztrK, Sizes, Location, Design
<2>1. RP_PinFacts(q) BY <1>sTGmGejCTusB, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RP_PageTypes BY <1>dlRLZLJP8YIdC37, Sizes, Location, Design DEF Sizes, Location, Design
<2>25. K8 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <2>25, Design, Sizes, SMTT(10), Location DEF RP_PinKeep, RP_PinFacts, RP_PageTypes, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, AfterEv, EvidenceAt, FreeOrDrain, GiveUpTo, GiveUpToN, PEnd, PExpDone, PageTo, PinBlocks, ghV, instV, kV, recV, rtV, xV, KPinned, IsP, IsD, NoWriteInto, Writing, InFl, K8, Active, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JB9OYlhy4eFBLCLcuLAE.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs,kfly,xdst>>
 BY ONLY <1>JB9OYlhy4eFBLCLcuLAE, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, FreeOrDrain, GiveUpTo, GiveUpToN, PEnd, PExpDone, PageTo, PinBlocks, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sAclTIEgEmGa0hF.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>sAclTIEgEmGa0hF, Sizes, Location, Design
<2>1. \A q \in Pages : KPinned(q) => RP_PinKeep(q)
 BY <1>y3poNFvoa8gdztrK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,kfly,xdst>> BY <1>JB9OYlhy4eFBLCLcuLAE, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>sAclTIEgEmGa0hF, <2>2, V22_T_xdst, SMTT(5)

<2>4. QED BY <2>1, <2>2, <2>3, <1>VtlCqCAE0X2qQ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZN1J8vhcvnA3.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE K15'
 BY ONLY <1>ZN1J8vhcvnA3, Sizes, Location, Design, <1>sAclTIEgEmGa0hF DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DsbKtMfk5TGSpQKzvTWF.        
 ASSUME PinInv, SFollow, RP_RecordProgress, RP_PrivateOwnersStay
 PROVE SMapIntegrity'
<2> USE ONLY <1>DsbKtMfk5TGSpQKzvTWF, Sizes, Location, Design
<2>1. SMapIntegrity /\ (B2 => SI4) /\ STypeOK
 BY V21_Inv_KReadIntegrity, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF KReadIntegrity, P_SI4, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF SMapIntegrity, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RP_SFollowEffect BY <2>3, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A p \in SPages : spst[p]="priv" => spst'[p]="priv"
  BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF SI4, RP_PrivateOwnersStay, RP_SFollowEffect, RP_Ended, RP_Drop, Sizes, Location, Design
 <3>3. ASSUME NEW i \in PInst, NEW r \in Rq, Active(i,r)', smap'[i][r] \in SPages
        PROVE spst'[smap'[i][r]] \in {"priv","shared"}
  <4>1. smap'[i][r]=smap[i][r] /\ rg'[i][r]=rg[i][r]
   BY <3>1, <3>3, Sizes, SMTT(10), Location, Design DEF RP_SFollowEffect, RP_New, SPages, Sizes, Location, Design
  <4>2. Active(i,r) BY <3>3, <4>1, Sizes, Location, Design DEF RP_RecordProgress, Sizes, Location, Design
  <4>3. spst[smap[i][r]] \in {"priv","shared"}
   BY <2>1, <2>3, <3>3, <4>1, <4>2, Sizes, Location, Design DEF SMapIntegrity, Sizes, Location, Design
  <4>4. QED BY <2>1, <2>3, <3>2, <3>3, <4>1, <4>3, <1>Ua3eOhQVTzEuP0Q, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY <2>3, <3>3, Sizes, Location, Design DEF SMapIntegrity, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1465_PdRPMapIntegrity


<1>gF5ae72dtiuUb48HY2slB6FM3x.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE B2 => RP_PrivateOwnersStay
<2> USE ONLY <1>gF5ae72dtiuUb48HY2slB6FM3x, Sizes, Location, Design
<2>1. B2 => SI2 /\ SI5 BY V21_Inv_P_SI2, V21_Inv_P_SI5, Sizes, Location, Design DEF P_SI2, P_SI5, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>gF5ae72dtiuUb48HY2slB6FM3x, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, Location, SMTT(10) DEF RP_PrivateOwnersStay, SI2, SI5, Active, PInst, Inst, NL, EvidenceAt, NewGen, PEnd, PExpDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tM30wdzQXAO1AgXok8RXznS.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>tM30wdzQXAO1AgXok8RXznS, Sizes, Location, Design
<2>1. BaseKReadIntegrity' BY <1>sAclTIEgEmGa0hF, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. SMapIntegrity'
 <3>1. CASE ~B2 BY <3>1, Sizes, Location, Design DEF SMapIntegrity, Sizes, Location, Design
 <3>2. CASE B2 BY <3>2, <1>gF5ae72dtiuUb48HY2slB6FM3x, <1>yKuqYS4uodfaBD2G9wxMwBN, <1>DsbKtMfk5TGSpQKzvTWF, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <3>1, <3>2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M1468_PdRPMap_PExpDone


<1>xefsaV8GL9Rd3I.         TypInv => RPN_Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, RPN_Types, RPN_T_gen, RPN_T_rt, RPN_T_rp, RPN_T_rd, RPN_T_hp, RPN_T_hd, RPN_T_alive, RPN_T_nfail, RPN_T_torn, RPN_T_kpin, RPN_T_kfly, RPN_T_krs, RPN_T_ph, RPN_T_rg, RPN_T_rpg, RPN_T_rpe, RPN_T_rx, RPN_T_rhit, RPN_T_pst, RPN_T_pr, RPN_T_pgn, RPN_T_plt, RPN_T_ptl, RPN_T_pvis, RPN_T_led, RPN_T_sfly, RPN_T_sled, RPN_T_prefc, RPN_T_pqp, RPN_T_xr, RPN_T_xg, RPN_T_xk, RPN_T_xp, RPN_T_xd, RPN_T_xsrc, RPN_T_xdst, RPN_T_xnt, RPN_T_hw, RPN_T_hok, RPN_T_iv, RPN_T_xst, RPN_T_xlt, RPN_T_nx, RPN_T_net, RPN_T_drep, RPN_T_crep, RPN_T_dsucc, RPN_T_gbad, Sizes, Location, Design
\* T2M-END R2M2084_PdRPNPP_PdProofBase


<1>BOF4qLjmO.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE RPN_BK8At(i,r)
  BY ONLY <1>BOF4qLjmO, Sizes, Location, Design DEF K8, RPN_BK8At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UdmO1q2Uu.        
  ASSUME NEW p \in Pages, K7
  PROVE RPN_BK7At(p)
  BY ONLY <1>UdmO1q2Uu, Sizes, Location, Design DEF K7, RPN_BK7At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tm2fDOmno.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, IsP(i), ph[i][r] \in {"sent","exp","reg"}
  PROVE
    /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
    /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
    /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
    /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
    /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
<2> USE ONLY <1>Tm2fDOmno, Sizes, Location, Design
<2>1. K8 /\ K7
  BY V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RPN_BK8At(i,r)
  BY <2>1, <1>BOF4qLjmO, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
      /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
  BY <2>2, Zenon, Sizes, Location, Design DEF RPN_BK8At, Active, OwnedBy, Sizes, Location, Design
<2>4. sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
      /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
  BY <2>2, Zenon, Sizes, Location, Design DEF RPN_BK8At, Sizes, Location, Design
<2>5. RPN_BK7At(rpg[i][r])
  BY <2>1, <2>3, <1>UdmO1q2Uu, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
  BY <2>3, <2>5, Zenon, Sizes, Location, Design DEF RPN_BK7At, Sizes, Location, Design
<2>7. QED
  BY <2>3, <2>4, <2>6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yrVemvduY6O3T.        
  /\ \A i \in DInst : i \in Inst /\ IsD(i)
  /\ \A i \in PInst : i \in Inst /\ IsP(i)
  /\ \A i \in Inst : IsP(i) \/ IsD(i)
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMT, Location, Design DEF Inst, DInst, PInst, NL, IsD, IsP, Sizes, Location, Design
\* T2M-END R2M2087_PdRPNPP_PdBRecords


<1>Kdm9HTwZckbFg4d.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpDone(i, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>Kdm9HTwZckbFg4d, Sizes, Location, Design, Zenon DEF PExpDone, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M2111_PdRPNPP_PdBPExpDoneFrames


<1>QfMLlZ4MHHW0bUMKWZ.        
  ASSUME NEW x \in Xids, RPN_T_nx, K2, InFl(x)
  PROVE x < nx
  BY ONLY <1>QfMLlZ4MHHW0bUMKWZ, Sizes, Location, Design, SMT DEF RPN_T_nx, Xids, K2, InFl, Sizes, Location, Design


<1>FhsnoZB8I8RxAoKXN5IC.        
  ASSUME NEW x \in Xids, RPN_T_nx, K1, K2, K3, InFl(x)
  PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>FhsnoZB8I8RxAoKXN5IC, Sizes, Location, Design
<2>1. x < nx
  BY <1>QfMLlZ4MHHW0bUMKWZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>0. ~(x >= nx)
  BY <2>1, Sizes, SMT, Location, Design DEF RPN_T_nx, Xids, Sizes, Location, Design
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
\* T2M-END R2M2093_PdRPNPP_PdBDataLemmas

\* T2M-SCOPE R2M2094_PdRPNPP_PdBXFacts
\* T2M-BODY R2M2094_PdRPNPP_PdBXFacts
\* T2M-LOCAL-VISIBILITY

<1>gyQ97LfIbobkgLjDB.        
  ASSUME NEW x \in Xids, PinInv, hw[x] = "fly"
  PROVE xsrc[x] \in Pages /\ x \in led[xsrc[x]]
<2> USE ONLY <1>gyQ97LfIbobkgLjDB, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ RPN_T_nx /\ InFl(x)
  BY <1>xefsaV8GL9Rd3I, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, InFl, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, <1>QfMLlZ4MHHW0bUMKWZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xst[x] = "posted" /\ iv[x] \in {"posted","failret"}
  BY <2>1, Zenon, Sizes, Location, Design DEF K3, InFl, Sizes, Location, Design
<2>4. xsrc[x] \in Pages
  BY <2>1, <2>2, <2>3, Design, SMT, Sizes, Location DEF K2, InitPage, ExpPage, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF K4, InitPage, ExpPage, Sizes, Location, Design
\* T2M-END R2M2094_PdRPNPP_PdBXFacts


<1>pe2Hilpq7Xqa.        
  ASSUME NEW i \in Inst, NEW r \in Rq, RPN_BPEnd(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>pe2Hilpq7Xqa, Sizes, Location, Design, Zenon DEF RPN_BPEnd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NoPo0dWdrkV06.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, RPN_BPEnd(i,r)
  PROVE
    /\ IsP(i) /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
    /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {} /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
    /\ \A j \in Inst, s \in Rq : ph'[j][s] = IF j=i /\ s=r THEN "end" ELSE ph[j][s]
    /\ \A q \in Pages : pst'[q] = IF q=rpg[i][r] THEN (IF RPN_BPFreed(i,r) THEN "free" ELSE "drain") ELSE pst[q]
    /\ \A q \in Pages : pr'[q] = IF q=rpg[i][r] /\ RPN_BPFreed(i,r) THEN 0 ELSE pr[q]
    /\ \A q \in Pages : pgn'[q] = IF q=rpg[i][r] /\ RPN_BPFreed(i,r) THEN 0 ELSE pgn[q]
    /\ \A q \in Pages : plt'[q] = IF q=rpg[i][r] /\ RPN_BPFreed(i,r) THEN 0 ELSE plt[q]
<2> USE ONLY <1>NoPo0dWdrkV06, Sizes, Location, Design
<2>1. RPN_T_ph /\ RPN_T_pst /\ RPN_T_pr /\ RPN_T_pgn /\ RPN_T_plt
  BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF RPN_BPEnd, RPN_BPFreed, RPN_T_ph, RPN_T_pst, RPN_T_pr, RPN_T_pgn, RPN_T_plt, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>otkePTEUTxu0.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, RPN_BPEnd(i,r)
  PROVE
    /\ \A j \in DInst, s \in Rq : ph'[j][s] = ph[j][s]
    /\ \A q \in Pages : IsD(Loc(q)) => pst'[q] = pst[q] /\ pr'[q] = pr[q] /\ pgn'[q] = pgn[q] /\ plt'[q] = plt[q]
<2> USE ONLY <1>otkePTEUTxu0, Sizes, Location, Design
<2>1. IsP(i) /\ Loc(rpg[i][r]) = i
    /\ (\A j \in Inst, s \in Rq : ph'[j][s] = IF j=i /\ s=r THEN "end" ELSE ph[j][s])
    /\ (\A q \in Pages : pst'[q] = IF q=rpg[i][r] THEN (IF RPN_BPFreed(i,r) THEN "free" ELSE "drain") ELSE pst[q])
    /\ (\A q \in Pages : pr'[q] = IF q=rpg[i][r] /\ RPN_BPFreed(i,r) THEN 0 ELSE pr[q])
    /\ (\A q \in Pages : pgn'[q] = IF q=rpg[i][r] /\ RPN_BPFreed(i,r) THEN 0 ELSE pgn[q])
    /\ (\A q \in Pages : plt'[q] = IF q=rpg[i][r] /\ RPN_BPFreed(i,r) THEN 0 ELSE plt[q])
  BY <1>NoPo0dWdrkV06, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Location, Sizes, SMT, Design DEF IsP, IsD, DInst, Inst, NL, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>o6N0MwZFGuOzLaqD.        
  ASSUME NEW i \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, RPN_BPEnd(i,r)
  PROVE (led[p] # {} \/ sfly[p] # {} \/ KPinned(p)) =>
    pst'[p] \in {pst[p],"drain"} /\ pr'[p] = pr[p] /\ pgn'[p] = pgn[p] /\ plt'[p] = plt[p]
<2> USE ONLY <1>o6N0MwZFGuOzLaqD, Sizes, Location, Design
<2>1. sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
    /\ (\A q \in Pages : pst'[q] = IF q=rpg[i][r] THEN (IF RPN_BPFreed(i,r) THEN "free" ELSE "drain") ELSE pst[q])
    /\ (\A q \in Pages : pr'[q] = IF q=rpg[i][r] /\ RPN_BPFreed(i,r) THEN 0 ELSE pr[q])
    /\ (\A q \in Pages : pgn'[q] = IF q=rpg[i][r] /\ RPN_BPFreed(i,r) THEN 0 ELSE pgn[q])
    /\ (\A q \in Pages : plt'[q] = IF q=rpg[i][r] /\ RPN_BPFreed(i,r) THEN 0 ELSE plt[q])
  BY <1>NoPo0dWdrkV06, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF RPN_BPFreed, Sizes, Location, Design
\* T2M-END R2M2112_PdRPNPP_PdBPExit


<1>tF4THsMuPvS1.        
  ASSUME RPN_T_pst, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE pst' = [pst EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"]
  BY ONLY <1>tF4THsMuPvS1, Sizes, Location, Design, SMT DEF PageTo, RPN_T_pst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Vyq6wMzztlW.        
  ASSUME RPN_T_pr, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE pr' = [pr EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
  BY ONLY <1>Vyq6wMzztlW, Sizes, Location, Design, SMT DEF PageTo, RPN_T_pr, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oVi4ULt6KYRh.        
  ASSUME RPN_T_pgn, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE pgn' = [pgn EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
  BY ONLY <1>oVi4ULt6KYRh, Sizes, Location, Design, SMT DEF PageTo, RPN_T_pgn, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eCqImqP4D5Jw.        
  ASSUME RPN_T_plt, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE plt' = [plt EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
  BY ONLY <1>eCqImqP4D5Jw, Sizes, Location, Design, SMT DEF PageTo, RPN_T_plt, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KbPV15yfsbGH.        
  ASSUME RPN_T_led, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED led
  BY ONLY <1>KbPV15yfsbGH, Sizes, Location, Design, SMT DEF PageTo, RPN_T_led, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VdbLMpsxNma09.        
  ASSUME RPN_T_sled, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED sled
  BY ONLY <1>VdbLMpsxNma09, Sizes, Location, Design, SMT DEF PageTo, RPN_T_sled, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TWNl2d5warJ8ke.        
  ASSUME RPN_T_prefc, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED prefc
  BY ONLY <1>TWNl2d5warJ8ke, Sizes, Location, Design, SMT DEF PageTo, RPN_T_prefc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pvQ4J8sXY1Gp.        
  ASSUME RPN_T_pqp, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED pqp
  BY ONLY <1>pvQ4J8sXY1Gp, Sizes, Location, Design, SMT DEF PageTo, RPN_T_pqp, Sizes, Location, Design
\* T2M-END R2M2113_PdRPNPP_PdBPageTo


<1>n1cD8RphSWvRvmF.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpDone(i, r)
  PROVE IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY ONLY <1>n1cD8RphSWvRvmF, Sizes, Location, Design, Zenon DEF PExpDone, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dB6pV6riUzrhNLSH.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i, r)
  PROVE RPN_BPEnd(i,r)
<2> USE ONLY <1>dB6pV6riUzrhNLSH, Sizes, Location, Design
<2>1. IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY <1>n1cD8RphSWvRvmF, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
      /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {} /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
      /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
  BY <2>1, <1>Tm2fDOmno, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RPN_T_pst /\ RPN_T_led /\ RPN_T_sled /\ RPN_T_pr /\ RPN_T_pgn /\ RPN_T_plt /\ RPN_T_prefc /\ RPN_T_pqp
  BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
<2>4. PageTo(rpg[i][r], IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain", 0, led[rpg[i][r]], sled[rpg[i][r]])
  BY <2>2, Design, Zenon, Sizes, Location DEF PExpDone, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, PageTo, Sizes, Location, Design
<2>5. pst' = [pst EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain"]
    /\ pr' = [pr EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
    /\ pgn' = [pgn EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
    /\ plt' = [plt EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
    /\ UNCHANGED <<led,sled,prefc,pqp>>
 <3>1. pst' = [pst EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain"]
  BY ONLY <2>2, <2>3, <2>4, <1>tF4THsMuPvS1, Sizes, Location, Design, SMTT(5)
 <3>2. pr' = [pr EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
  BY ONLY <2>2, <2>3, <2>4, <1>Vyq6wMzztlW, Sizes, Location, Design, SMTT(5)
 <3>3. pgn' = [pgn EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
  BY ONLY <2>2, <2>3, <2>4, <1>oVi4ULt6KYRh, Sizes, Location, Design, SMTT(5)
 <3>4. plt' = [plt EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
  BY ONLY <2>2, <2>3, <2>4, <1>eCqImqP4D5Jw, Sizes, Location, Design, SMTT(5)
 <3>5. UNCHANGED led
  BY ONLY <2>2, <2>3, <2>4, <1>KbPV15yfsbGH, Sizes, Location, Design, SMTT(5)
 <3>6. UNCHANGED sled
  BY ONLY <2>2, <2>3, <2>4, <1>VdbLMpsxNma09, Sizes, Location, Design, SMTT(5)
 <3>7. UNCHANGED prefc
  BY ONLY <2>2, <2>3, <2>4, <1>TWNl2d5warJ8ke, Sizes, Location, Design, SMTT(5)
 <3>8. UNCHANGED pqp
  BY ONLY <2>2, <2>3, <2>4, <1>pvQ4J8sXY1Gp, Sizes, Location, Design, SMTT(5)
 <3>9. QED BY ONLY <3>1, <3>2, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, SMTT(5)
<2>6. QED
  BY <2>1, <2>2, <2>5, <1>Kdm9HTwZckbFg4d, Zenon, Sizes, Location, Design DEF PExpDone, RPN_BPEnd, Sizes, Location, Design
\* T2M-END R2M2114_PdRPNPP_PdBPExpDoneEffects


<1>Nb9MtcgGMjGGKxj4WgHj.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, RPN_BPEnd(i,r)
  PROVE RPNS_TransportNoStray'
<2> USE ONLY <1>Nb9MtcgGMjGGKxj4WgHj, Sizes, Location, Design
<2>1. RPNS_TransportNoStray /\ K14 /\ K1 /\ K2 /\ K3 /\ RPN_T_nx
  BY <1>xefsaV8GL9Rd3I, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K14, V21_Inv_K2, V21_Inv_K3, V21_Inv_NoStrayAccess, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, RPN_Types, BaseSafety, NoStrayAccess, RPNS_TransportNoStray, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>pe2Hilpq7Xqa, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (\A x \in Xids : Writing(x) => Held(xdst[x], x))'
  BY <2>1, <2>2, <1>otkePTEUTxu0, <1>FhsnoZB8I8RxAoKXN5IC, <1>yrVemvduY6O3T, SMT, Sizes, Location, Design DEF Held, Writing, InFl, RPNS_TransportNoStray, Sizes, Location, Design
<2>4. (\A x \in Xids : hw[x] = "fly" => Held(xsrc[x], x))'
  BY <2>1, <2>2, <1>o6N0MwZFGuOzLaqD, <1>gyQ97LfIbobkgLjDB, SMT, Sizes, Location, Design DEF Held, RPNS_TransportNoStray, Sizes, Location, Design
<2>5. (\A p \in Pages : \A t \in sfly[p] :
        \/ pst[p] \in {"priv", "drain", "quar"} /\ pr[p] = t[1] /\ pgn[p] = t[2]
        \/ pst[p] = "shared" /\ IsD(Loc(p)))'
  BY <2>1, <2>2, <1>o6N0MwZFGuOzLaqD, <1>NoPo0dWdrkV06, SMT, Sizes, Location, Design DEF RPNS_TransportNoStray, Sizes, Location, Design
<2>7. QED
  BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF RPNS_TransportNoStray, Sizes, Location, Design
\* T2M-END R2M2121_PdRPNPP_PdBPExitLNoStrayAccess


<1>PPKNRsiKk6yilfub7Yo88zF.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i, r)
  PROVE RPNS_TransportNoStray'
  BY ONLY <1>PPKNRsiKk6yilfub7Yo88zF, Sizes, Location, Design, <1>dB6pV6riUzrhNLSH, <1>Nb9MtcgGMjGGKxj4WgHj DEF Sizes, Location, Design
\* T2M-END R2M2125_PdRPNPP_PdBPExpDoneSteps


<1>RUfSROwOke4W0CexYOfigL.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpDone(i,r), SFollow
 PROVE NoStrayAccess'
<2> USE ONLY <1>RUfSROwOke4W0CexYOfigL, Sizes, Location, Design
<2>1. RPNS_TransportNoStray' BY <1>PPKNRsiKk6yilfub7Yo88zF, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. NoFreeUnderRead' BY <1>sAclTIEgEmGa0hF, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<kfly,kpin,krs>> BY <1>JB9OYlhy4eFBLCLcuLAE, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. K14 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF NoStrayAccess, RPNS_TransportNoStray, NoFreeUnderRead, K14, Sizes, Location, Design
\* T2M-END R2M2126_PdRPStray_PExpDone


<1> QED BY <1>RUfSROwOke4W0CexYOfigL, <1>qWSoPqIgc4hIYYD8VN6lI, <1>tM30wdzQXAO1AgXok8RXznS, <1>ZN1J8vhcvnA3, <1>t4BHZ642KQiF, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF P_PagePoolsDisjoint, Part_PExpDone_03_01, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K14, V21_Inv_K15, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K7, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapPoint, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rg, V22_T_rpgS, V22_T_sfly, V22_T_sled, V22_T_xdst
====
