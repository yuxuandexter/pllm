---- MODULE PdActionSlice_PSubmit_01 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_d3dd8b4090431094, PdFinalAuxType_6b10eee8fbf863b7, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalPart_PSubmit_01_01 SHA 73beaa829c8373a87f02a3b238d49205834f307b40d34d61c83d85eac38a0f2c
HIDE DEF AuxType_6b10eee8fbf863b7, AuxType_d3dd8b4090431094, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_K6, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI3, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_iv, V22_T_kfly, V22_T_net, V22_T_nfail, V22_T_pqp, V22_T_prefc, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_PSubmit_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE (QuietConservation)' /\ (SI7)'
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

           OjcUPgq(p) ==
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


           RP_RecordReady == B2 => \A i \in PInst,r \in Rq :
            ph'[i][r] \in {"reg","sent","exp"} => rg'[i][r]=rg[i][r] /\ SSendReady(i,r)


           RP_NoneFrame == \A i \in PInst,r \in Rq : ph'[i][r]="none" => ph[i][r]="none" /\ rg'[i][r]=rg[i][r]

           \* T2M-LOCAL-VISIBILITY

           RP_RegPrelude == \A x \in Xids : iv'[x]="reg" =>
            xk[x]="wr" /\ (RP_Posted(x) \/ (iv[x]="reg" /\ xsrc'[x]=xsrc[x]))


           RP_RegSourceSafe == \A x \in Xids : iv'[x]="reg" => xsrc'[x] \in Pages /\ pst'[xsrc'[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_T_spst, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, OjcUPgq, RP_RecordReady, RP_NoneFrame, RP_RegPrelude, RP_RegSourceSafe

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


<1>gXlfESySkAXF1I.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>gXlfESySkAXF1I, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Gg0HOXJ3VuKUwjQ3odfq5VKcYGG.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>Gg0HOXJ3VuKUwjQ3odfq5VKcYGG, Sizes, Location, Design, <1>AnajBeZS7htcLkTpZ8C91mxOHTa DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xS15HQSBfXshFwaCIzgKec.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>xS15HQSBfXshFwaCIzgKec, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>xS15HQSBfXshFwaCIzgKec, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dlRLZLJP8YIdC37.         PinInv => RP_PageTypes
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_sfly, V22_T_sled, V22_T_xdst, SMTT(5) DEF RP_PT_hw, RP_PT_kpin, RP_PT_krs, RP_PT_led, RP_PT_pgn, RP_PT_plt, RP_PT_pr, RP_PT_pst, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_sled, RP_PT_xdst, RP_PageTypes

\* T2M-END R2M1445_PdRPPageTypes


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>Ug4VwS.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1459_PdRPPP_PdMsgBase


<1>zQCSTfqP4L.        
  ASSUME NEW x \in Xids, PSubmit(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, kfly, kpin, krs, led, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>zQCSTfqP4L, Sizes, Location, Design, Zenon DEF PSubmit, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1460_PdRPPP_PdPSubmitFrames

\* T2M-SCOPE R2M1461_PdRPPP_PdSubmitEffects
\* T2M-BODY R2M1461_PdRPPP_PdSubmitEffects
\* T2M-LOCAL-VISIBILITY

<1>jXujQnapOVz1N.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ x < nx /\ iv[x] = "reg" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst
        /\ xsrc[x] \in Pages /\ xdst[x] \in Pages
        /\ Loc(xsrc[x]) = xp[x] /\ Loc(xdst[x]) = xd[x]
<2> USE ONLY <1>jXujQnapOVz1N, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xk[x] = "wr" /\ iv[x] = "reg"
  BY SMTT(10), Sizes, Location, Design DEF PSubmit, Sizes, Location, Design
<2>3. x < nx /\ xst[x] = "posted"
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, K3, SHJS, Xids, Sizes, Location, Design
<2>4. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
         /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>5. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K2, InitPage, ExpPage, InitInst, ExpInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FNMJSUwYV.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ iv' = [iv EXCEPT ![x] = "posted"]
        /\ hw' = [hw EXCEPT ![x] = IF Torn(x) THEN "stop" ELSE "fly"]
        /\ hok' = [hok EXCEPT ![x] = FALSE]
        /\ ph' = IF ph[xp[x]][xr[x]] = "reg" /\ rg[xp[x]][xr[x]] = xg[x] /\ rx[xp[x]][xr[x]] = x
                 THEN [ph EXCEPT ![xp[x]][xr[x]] = "sent"] ELSE ph
        /\ net' = net
        /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, xst, nx, ghV>>
  BY ONLY <1>FNMJSUwYV, Sizes, Location, Design, Design, SMTT(10) DEF PSubmit, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ojP8Js3gjMBL8Rsn.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ iv'[x] = "posted" /\ hok'[x] = FALSE /\ hw'[x] \in {"stop","fly"}
        /\ \A y \in Xids : y # x => iv'[y] = iv[y] /\ hw'[y] = hw[y] /\ hok'[y] = hok[y]
<2> USE ONLY <1>ojP8Js3gjMBL8Rsn, Sizes, Location, Design
<2>1. fr1A /\ DpA4 /\ DnMxp
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>FNMJSUwYV, SMTT(10), Sizes, Location, Design DEF fr1A, DpA4, DnMxp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WQTYH4MdjWyXr.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ \A a \in Inst, r \in Rq :
              /\ Active(a,r)' <=> Active(a,r)
              /\ (ph'[a][r] \in {"run","ovl"}) <=> (ph[a][r] \in {"run","ovl"})
              /\ (ph'[a][r] = "end") <=> (ph[a][r] = "end")
        /\ \A a \in DInst, r \in Rq : ph'[a][r] = ph[a][r]
<2> USE ONLY <1>WQTYH4MdjWyXr, Sizes, Location, Design
<2>1. AydA /\ xp[x] \in PInst /\ xr[x] \in Rq
  BY <1>UwwC5LVwQr, <1>jXujQnapOVz1N, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>FNMJSUwYV, Sizes, SMTT(10), Location, Design DEF Active, AydA, Inst, PInst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xfECovnYAR2iw5UbcxP.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ x \in led[xsrc[x]] /\ x \in led[xdst[x]]
        /\ OwnedBy(xsrc[x],xr[x],xg[x]) /\ OwnedBy(xdst[x],xr[x],xg[x])
<2> USE ONLY <1>xfECovnYAR2iw5UbcxP, Sizes, Location, Design
<2>1. K4 /\ K5
  BY SMTT(10), V21_Inv_K4, V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x < nx /\ iv[x] = "reg" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ xsrc[x] \in Pages /\ xdst[x] \in Pages
  BY <1>jXujQnapOVz1N, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. x \in led[xsrc[x]] /\ x \in led[xdst[x]]
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K4, InitPage, ExpPage, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K5, Sizes, Location, Design
\* T2M-END R2M1461_PdRPPP_PdSubmitEffects


<1>kujY0rD.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE K3'
<2> USE ONLY <1>kujY0rD, Sizes, Location, Design
<2> HIDE DEF K3, CqeHw, InFl
<2>old. K3
 BY ONLY <1>kujY0rD, V21_Inv_K3, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<xk,xlt,xnt,xst>>
 BY ONLY <1>kujY0rD, <1>zQCSTfqP4L, Sizes, Location, Design, SMTT(5)
<2>effect. /\ iv'[x]="posted" /\ hok'[x]=FALSE /\ hw'[x] \in {"stop","fly"}
 /\ \A y \in Xids : y # x => iv'[y]=iv[y] /\ hw'[y]=hw[y] /\ hok'[y]=hok[y]
 BY ONLY <1>kujY0rD, <1>ojP8Js3gjMBL8Rsn, Sizes, Location, Design, SMTT(5)
<2>reg. xk[x]="wr" /\ xst[x]="posted"
 BY ONLY <1>kujY0rD, <1>jXujQnapOVz1N, Sizes, Location, Design, SMTT(5)
<2>point. ASSUME NEW y \in Xids
 PROVE
  /\ (iv'[y] \in {"none","nopost","reg"}) <=> (hw'[y]="none")
  /\ iv'[y]="reg" => (xk'[y]="wr" /\ PReg /\ xst'[y]="posted")
  /\ iv'[y]="cqe" => hw'[y] \in CqeHw(y)'
  /\ hw'[y]="issued" => xk'[y]="wr"
  /\ xst'[y]="revoked" => iv'[y]="nopost"
  /\ xst'[y]="landed" => (hw'[y]="stop" /\ hok'[y] /\ xlt'[y]=xnt'[y])
  /\ (xk'[y]="rd" /\ iv'[y] \notin {"none","nopost"}) => xlt'[y]=xnt'[y]
  /\ xst'[y]="failed" => IF xk'[y]="wr" THEN (hw'[y]="stop" /\ hok'[y] /\ xlt'[y] # xnt'[y])
                         ELSE ((iv'[y]="cqe" /\ hw'[y]="stop" /\ ~hok'[y]) \/ iv'[y]="nopost")
  /\ InFl(y)' => (xst'[y]="posted" /\ (iv'[y] \in {"posted","failret"} \/ (iv'[y]="cqe" /\ hw'[y]="issued" /\ ~hok'[y])))
 <3>changed. CASE y=x
  BY ONLY <3>changed, <2>effect, <2>frame, <2>reg, SMTT(5) DEF CqeHw, InFl
 <3>other. CASE y # x
  BY ONLY <3>other, <2>point, <2>old, <2>effect, <2>frame, SMTT(5) DEF K3, CqeHw, InFl
 <3>qed. QED BY ONLY <3>changed, <3>other, SMTT(5)
<2>qed. QED BY ONLY <2>point, SMTT(5) DEF K3
\* T2M-END R2M1739_PdRPPP_PdCell_PSubmit_K3


<1>jRfmn.         K7 <=> \A p \in Pages : OjcUPgq(p)
  BY ZenonT(10), Sizes, Location, Design DEF K7, OjcUPgq, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d4BZsgEKv.         K7' <=> \A p \in Pages : OjcUPgq(p)'
  BY ZenonT(10), Sizes, Location, Design DEF K7, OjcUPgq, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lQp5LiQ0Z.        
  UNCHANGED <<kpin,krs>> => \A p : KPinned(p)' = KPinned(p)
  BY ZenonT(10), Sizes, Location, Design DEF KPinned, Sizes, Location, Design
\* T2M-END R2M1740_PdRPPP_PdPinObservationFrame


<1>nYXmHsK.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE K7'
<2> USE ONLY <1>nYXmHsK, Sizes, Location, Design
<2>1. K7
  BY SMTT(10), V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen,kpin,krs,led,pgn,plt,pqp,pr,prefc,pst,ptl,rg,rhit,rpg,sfly,sled>>
  BY <1>zQCSTfqP4L, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A a \in Inst, r \in Rq : Active(a,r)' <=> Active(a,r)
  BY <1>WQTYH4MdjWyXr, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A p \in Pages, r \in Rq : Maps(Loc(p),r,p)' = Maps(Loc(p),r,p)
  BY <2>2, <2>3, Location, SMTT(10), Sizes, Design DEF Maps, KPages, Sizes, Location, Design
<2>5. \A p \in Pages : NHits(p)' = NHits(p)
  <3>1. SUFFICES ASSUME NEW p \in Pages PROVE NHits(p)' = NHits(p)
    BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. {u \in Rq : ph'[Loc(p)][u] \in {"run","ovl"} /\ rhit'[Loc(p)][u] /\ rpg'[Loc(p)][u] = p}
          = {u \in Rq : ph[Loc(p)][u] \in {"run","ovl"} /\ rhit[Loc(p)][u] /\ rpg[Loc(p)][u] = p}
    BY <2>2, <1>WQTYH4MdjWyXr, Location, SMTT(10), Sizes, Design DEF KPages, Sizes, Location, Design
  <3>3. QED BY <3>2, SMTT(10), Sizes, Location, Design DEF NHits, Sizes, Location, Design
<2>6. SUFFICES ASSUME NEW p \in Pages PROVE OjcUPgq(p)'
  BY <1>d4BZsgEKv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. OjcUPgq(p)
  BY <2>1, <1>jRfmn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>8. QED
  <3>1. (ptl[p] >= 0)'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>2. (pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0))'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>3. (pst[p] \in {"priv", "drain", "quar"} => (pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]]))'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>4. (pst[p] = "quar" => pqp[p] \in Inst)'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>5. (pst[p] # "quar" => pqp[p] = 0)'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>6. (pst[p] # "shared" => prefc[p] = 0)'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>7. (pst[p] = "shared" => (IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p)))'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>8. (pst[p] = "drain" => (led[p] # {} \/ sled[p] # {} \/ KPinned(p)))'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>9. (pst[p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(p), r, p))'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>10. (pst[p] = "priv" => ( (Maps(Loc(p), pr[p], p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]]) \/ GrownP(p)))'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>11. QED BY <3>1, <3>2, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9, <3>10, ZenonT(10), Sizes, Location, Design DEF OjcUPgq, Sizes, Location, Design
\* T2M-END R2M1741_PdRPPP_PdCell_PSubmit_K7

\* T2M-SCOPE R2M1742_PdRPPP_PdCell_PSubmit_K9

<1>vZf8MKjImqYvU7.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE QuarNoReg'
<2> USE ONLY <1>vZf8MKjImqYvU7, Sizes, Location, Design
<2> HIDE DEF QuarNoReg
<2>old. QuarNoReg
 BY ONLY <1>vZf8MKjImqYvU7, V21_Inv_QuarNoReg, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<led,pst>>
 BY ONLY <1>vZf8MKjImqYvU7, <1>zQCSTfqP4L, Sizes, Location, Design, SMTT(5)
<2>effect. iv'[x]="posted" /\ (\A y \in Xids : y # x => iv'[y]=iv[y])
 BY ONLY <1>vZf8MKjImqYvU7, <1>ojP8Js3gjMBL8Rsn, Sizes, Location, Design, SMTT(5)
<2>typ. led \in [Pages -> SUBSET Xids]
 BY ONLY <1>vZf8MKjImqYvU7, V22_T_led, SMTT(5)
<2>qed. QED BY ONLY <2>old, <2>frame, <2>effect, <2>typ, SMTT(5) DEF QuarNoReg
\* T2M-END R2M1743_PdRPPP_PdCell_PSubmit_QuarNoReg

\* T2M-SCOPE R2M1744_PdRPPP_PdSubmitRecordFrame

<1>J3erBvwKnE3Y.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE \A q \in Pages : GrownP(q) => q # xdst[x]
<2> USE ONLY <1>J3erBvwKnE3Y, Sizes, Location, Design
 <2>1. K16 /\ x \in led[xdst[x]]
  BY <1>xfECovnYAR2iw5UbcxP, V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF K16, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q44LvJlbwsB.        
 ASSUME NEW x \in Xids, NEW q, PinInv, PSubmit(x), q # xdst[x]
 PROVE NoWriteInto(q) => NoWriteInto(q)'
<2> USE ONLY <1>Q44LvJlbwsB, Sizes, Location, Design
 <2>1. UNCHANGED xdst /\ (\A y \in Xids : y # x => hw'[y] = hw[y])
  BY <1>zQCSTfqP4L, <1>ojP8Js3gjMBL8Rsn, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF NoWriteInto, Writing, InFl, Sizes, Location, Design
\* T2M-END R2M1747_PdRPPP_PdESubmitSafetyFacts

\* T2M-SCOPE R2M1748_PdRPPP_PdE_PSubmit_K10

<1>PHCk93TJ.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE K16'
<2> USE ONLY <1>PHCk93TJ, Sizes, Location, Design
<2>1. K16
 BY V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<pst,pr,pgn,rpg,rg,led,sled,sfly,plt,ptl>>
 BY <1>zQCSTfqP4L, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A q \in Pages : UNCHANGED GrownP(q)
 BY <2>2, SMTT(5), Sizes, Location, Design DEF GrownP, Sizes, Location, Design
<2>4. \A q \in Pages : GrownP(q) => NoWriteInto(q)'
 BY <2>1, <1>J3erBvwKnE3Y, <1>Q44LvJlbwsB, SMTT(5), Sizes, Location, Design DEF K16, Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, <1>WQTYH4MdjWyXr, Location, Sizes, SMTT(5), Design DEF K16, GrownP, IsD, Inst, DInst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M1750_PdRPPP_PdE_PSubmit_K16


<1>xvSeB7Y.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE K2'
<2> USE ONLY <1>xvSeB7Y, Sizes, Location, Design
<2>1. K2
 BY SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. jb4aTlh /\ jC41VF /\ Q1j7VI /\ MuHyNw3 /\ MZsmqs /\ AEZsS /\ RwXY /\ DnMxp /\ O0Gm /\ DpA4 /\ fr1A /\ djyOpL /\ m1zx9S /\ c02OO /\ dcfPK /\ qvLUP /\ zaBQrrW /\ SHJS /\ vS7em /\ AydA /\ bFwlN /\ vRZWI /\ IwCp /\ p1YmMe5 /\ OyyWS /\ rO4YE /\ Bq5Edl /\ jY_U /\ nNeM /\ EYS1sP /\ Zd4y /\ E1MnW /\ q1Ohy /\ o5G2 /\ QC9Q /\ Xc_ngV /\ h9WLgd /\ pc8eUz /\ C4fb /\ JjZ1PO /\ CXAy /\ ok5g /\ OfQy9 /\ PwcfA /\ vdyX /\ a1R5 /\ Uzgo58 /\ PD2ZN
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>jXujQnapOVz1N, <1>FNMJSUwYV, <1>ojP8Js3gjMBL8Rsn, <1>WQTYH4MdjWyXr, <1>xfECovnYAR2iw5UbcxP, <1>zQCSTfqP4L, Design, Sizes, Location, SMTT(3) DEF ExpInst, ExpPage, InitInst, InitPage, K2, jb4aTlh, jC41VF, Q1j7VI, MuHyNw3, MZsmqs, AEZsS, RwXY, DnMxp, O0Gm, DpA4, fr1A, djyOpL, m1zx9S, c02OO, dcfPK, qvLUP, zaBQrrW, SHJS, vS7em, AydA, bFwlN, vRZWI, IwCp, p1YmMe5, OyyWS, rO4YE, Bq5Edl, jY_U, nNeM, EYS1sP, Zd4y, E1MnW, q1Ohy, o5G2, QC9Q, Xc_ngV, h9WLgd, pc8eUz, C4fb, JjZ1PO, CXAy, ok5g, OfQy9, PwcfA, vdyX, a1R5, Uzgo58, PD2ZN, ghV, instV, kV, pgV, rtV, Sizes, Location, Design
\* T2M-END R2M1751_PdRPPP_PdE_PSubmit_K2

\* T2M-SCOPE R2M1752_PdRPPP_PdE_PSubmit_K4

<1>AD7gHHr.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE K4'
<2> USE ONLY <1>AD7gHHr, Sizes, Location, Design
<2>1. K4
 BY SMTT(5), V21_Inv_BaseSafety, V21_Inv_K4, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. jb4aTlh /\ jC41VF /\ Q1j7VI /\ MuHyNw3 /\ MZsmqs /\ AEZsS /\ RwXY /\ DnMxp /\ O0Gm /\ DpA4 /\ fr1A /\ djyOpL /\ m1zx9S /\ c02OO /\ dcfPK /\ qvLUP /\ zaBQrrW /\ SHJS /\ vS7em /\ AydA /\ bFwlN /\ vRZWI /\ IwCp /\ p1YmMe5 /\ OyyWS /\ rO4YE /\ Bq5Edl /\ jY_U /\ nNeM /\ EYS1sP /\ Zd4y /\ E1MnW /\ q1Ohy /\ o5G2 /\ QC9Q /\ Xc_ngV /\ h9WLgd /\ pc8eUz /\ C4fb /\ JjZ1PO /\ CXAy /\ ok5g /\ OfQy9 /\ PwcfA /\ vdyX /\ a1R5 /\ Uzgo58 /\ PD2ZN
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>jXujQnapOVz1N, <1>FNMJSUwYV, <1>ojP8Js3gjMBL8Rsn, <1>WQTYH4MdjWyXr, <1>xfECovnYAR2iw5UbcxP, <1>zQCSTfqP4L, Design, Sizes, Location, SMTT(3) DEF ExpPage, InitPage, K4, jb4aTlh, jC41VF, Q1j7VI, MuHyNw3, MZsmqs, AEZsS, RwXY, DnMxp, O0Gm, DpA4, fr1A, djyOpL, m1zx9S, c02OO, dcfPK, qvLUP, zaBQrrW, SHJS, vS7em, AydA, bFwlN, vRZWI, IwCp, p1YmMe5, OyyWS, rO4YE, Bq5Edl, jY_U, nNeM, EYS1sP, Zd4y, E1MnW, q1Ohy, o5G2, QC9Q, Xc_ngV, h9WLgd, pc8eUz, C4fb, JjZ1PO, CXAy, ok5g, OfQy9, PwcfA, vdyX, a1R5, Uzgo58, PD2ZN, ghV, instV, kV, pgV, rtV, Sizes, Location, Design
\* T2M-END R2M1752_PdRPPP_PdE_PSubmit_K4

\* T2M-SCOPE R2M1753_PdRPPP_PdE_PSubmit_K8

<1>TRdOHN4UZ.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K2'
  BY ONLY <1>TRdOHN4UZ, Sizes, Location, Design, <1>xvSeB7Y, V21_Inv_K2 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HZKH6QEft.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K3'
  BY ONLY <1>HZKH6QEft, Sizes, Location, Design, <1>kujY0rD, V21_Inv_K3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MWgn76kZV.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K4'
  BY ONLY <1>MWgn76kZV, Sizes, Location, Design, <1>AD7gHHr, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kBL2G0qc7.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K7'
  BY ONLY <1>kBL2G0qc7, Sizes, Location, Design, <1>nYXmHsK, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xRXWVzsqtF.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K16'
  BY ONLY <1>xRXWVzsqtF, Sizes, Location, Design, <1>PHCk93TJ, V21_Inv_K16 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RSMU6wnDDmpT8mRQ.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>RSMU6wnDDmpT8mRQ, Sizes, Location, Design, <1>vZf8MKjImqYvU7, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1756_PdRPPdPAgg_PSubmit


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


<1>szwebgGOE2QEusqJPK8I0.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE UNCHANGED gen /\ RP_RecordReady /\ RP_NoneFrame
<2> USE ONLY <1>szwebgGOE2QEusqJPK8I0, Sizes, Location, Design
<2>1. B2 => \A j \in PInst,u \in Rq : ph[j][u] \in {"reg","sent","exp"} => SSendReady(j,u)
 BY ONLY <1>szwebgGOE2QEusqJPK8I0, Sizes, Location, Design, V21_Inv_P_SI1 DEF P_SI1, SI1, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>szwebgGOE2QEusqJPK8I0, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_RecordReady, RP_NoneFrame, PInst, Inst, NL, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lRkAddnoTTX.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE P_SI1'
 BY ONLY <1>lRkAddnoTTX, Sizes, Location, Design, <1>szwebgGOE2QEusqJPK8I0, <1>xS15HQSBfXshFwaCIzgKec, <1>gXlfESySkAXF1I, <1>o0ug5dmdGVA DEF Sizes, Location, Design
\* T2M-END R2M1812_PdRPSI1_PSubmit


<1>tGWnImyZXpAlbrjvqJaPDN.        
 ASSUME K7', K16', RP_PT_pst'
 PROVE BaseQuietConservation'
<2> USE ONLY <1>tGWnImyZXpAlbrjvqJaPDN, Sizes, Location, Design
<2>1. ASSUME Quiet', NEW p \in Pages
       PROVE pst'[p] \in {"free","quar"} \/ (pst'[p]="shared" /\ prefc'[p]=0)
 <3>1. Loc(p) \in Inst BY Location, Sizes, Design DEF KPages, Sizes, Location, Design
 <3>2. pst'[p] # "priv"
  BY ONLY <1>tGWnImyZXpAlbrjvqJaPDN, Sizes, Location, Design, <2>1, <2>1, <3>1, SMTT(10) DEF K7, K16, Quiet, Maps, GrownP, Active, Sizes, Location, Design
 <3>3. pst'[p] # "drain" BY <2>1, Sizes, Location, Design DEF K7, Quiet, Sizes, Location, Design
 <3>4. {r \in Rq : ph'[Loc(p)][r] \in {"run","ovl"} /\ rhit'[Loc(p)][r] /\ rpg'[Loc(p)][r]=p}={}
  BY ONLY <1>tGWnImyZXpAlbrjvqJaPDN, Sizes, Location, Design, <2>1, <2>1, <3>1 DEF Quiet, Active, Sizes, Location, Design
 <3>5. pst'[p]="shared" => prefc'[p]=0
  BY ONLY <1>tGWnImyZXpAlbrjvqJaPDN, Sizes, Location, Design, <2>1, <2>1, <3>4, FS_EmptySet DEF K7, NHits, Sizes, Location, Design
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
<2>3. CASE ~B2 BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>3, <2>3 DEF Sizes, Location, Design
<2>4. CASE B2
 <3>1. RP_SFollowEffect BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <2>4, <1>PKl1lJKpXGVI0yrZ8 DEF Sizes, Location, Design
 <3>2. ASSUME Quiet', sentry'={}, \A p \in SPages : ~swrite'[p] /\ (spst'[p] \in {"priv","drain"} => sready'[p]) /\ ~SPin(p)'
        PROVE \A p \in SPages : spst'[p] \in {"free","quar"} \/ (spst'[p]="shared" /\ sprefc'[p]=SRefQ(squar',p))
  <4>1. rpgS'={}
   BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <2>2, <2>4, <3>2, Sizes, SMTT(10) DEF P_SI1, SI1, RP_T_rpgS, Quiet, SHPin, SPin, PInst, Inst, NL, Sizes, Location, Design
  <4>2. ASSUME NEW p \in SPages
         PROVE sprefc'[p]=SRefQ(squar',p)
   <5>1. SRefR(rpgS',p)=0 /\ SRefE(sentry',xsrcS',p)=0
    BY ONLY <3>2, <4>1, FS_EmptySet, ZenonT(5) DEF SRefR, SRefE
   <5>2. SRefQ(squar',p) \in Nat BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>2, <2>1, <4>2, <1>NSUGzTM423PsEC DEF Sizes, Location, Design
   <5>3. QED BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>2, <2>4, <4>2, <5>1, <5>2, SMTT(10) DEF PrefcMatchesHolders, Sizes, Location, Design
  <4>3. ASSUME NEW p \in SPages
         PROVE spst'[p] \in {"free","quar","shared"}
   <5>1. Loc(p) \in PInst BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, Location DEF Sizes, Location, Design
   <5>2. ~RP_Pin2(p) BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <3>2, <4>3 DEF SPin, RP_Pin2, Sizes, Location, Design
   <5>3. RP_E2(0)={} BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <3>1, <3>2 DEF RP_SFollowEffect, Sizes, Location, Design
   <5>4. (spst[p]="priv" => RP_Ended(p))
    BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <2>1, <2>4, <3>2, <4>3, <5>1, Sizes, SMTT(10) DEF SI2, Quiet, Active, RP_NoneFrame, RP_Ended, PInst, Inst, NL, Sizes, Location, Design
   <5>5. spst'[p] \in {"priv","drain","dup"} => sready[p]
    BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <2>1, <2>4, <3>1, <3>2, <4>3, SMTT(10) DEF RP_SFollowEffect, SI2, Sizes, Location, Design
   <5>6. spst'[p] \notin {"priv","drain","dup"}
    BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <3>1, <4>3, <5>2, <5>3, <5>4, <5>5, SMTT(10) DEF RP_SFollowEffect, RP_Drop, Sizes, Location, Design
   <5>7. QED BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <2>2, <4>3, <5>6 DEF RP_T_spst, Sizes, Location, Design
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


<1>QmsCgucjzJpeNI3hgnI1.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE RP_PT_pst'
<2> USE ONLY <1>QmsCgucjzJpeNI3hgnI1, Sizes, Location, Design
<2>1. RP_PT_pst BY <1>dlRLZLJP8YIdC37, Sizes, Location, Design DEF RP_PageTypes, Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_PT_pst, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, AfterEv, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>E1MJ76pbT8fj8uht6p5oJnCpx.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE QuietConservation'
 BY ONLY <1>E1MJ76pbT8fj8uht6p5oJnCpx, Sizes, Location, Design, <1>szwebgGOE2QEusqJPK8I0, <1>lRkAddnoTTX, <1>Gg0HOXJ3VuKUwjQ3odfq5VKcYGG, <1>kBL2G0qc7, <1>xRXWVzsqtF, <1>QmsCgucjzJpeNI3hgnI1, <1>eLjdrc1PhqLC DEF Sizes, Location, Design
\* T2M-END R2M1813_PdRPQuiet_PSubmit


<1>NU8zGD7bQ5u9BXIjl.        
 ASSUME K1', K2', K3', K4', QuarNoReg', nx' \in 1..(MX+1)
 PROVE RP_RegSourceSafe
<2> USE ONLY <1>NU8zGD7bQ5u9BXIjl, Sizes, Location, Design
<2>1. ASSUME NEW x \in Xids, iv'[x]="reg"
       PROVE xsrc'[x] \in Pages /\ pst'[xsrc'[x]] # "quar"
 <3>1. x<nx' /\ xk'[x]="wr" /\ xst'[x]="posted"
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, K3, Xids, Sizes, Location, Design
 <3>2. xr'[x] \in Rq /\ xg'[x] \in Gens /\ xg'[x]<=gen'[xr'[x]] /\ xp'[x]=hp'[xr'[x]][xg'[x]]
       /\ xsrc'[x] \in Pages /\ Loc(xsrc'[x])=xp'[x]
  BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF K2, InitPage, InitInst, Sizes, Location, Design
 <3>3. xp'[x] \in PInst /\ IsP(Loc(xsrc'[x]))
  BY <3>2, Sizes, SMTT(10), Location, Design DEF K1, PInst, IsP, Sizes, Location, Design
 <3>4. x \in led'[xsrc'[x]]
  BY <2>1, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF K4, InitPage, Sizes, Location, Design
 <3>5. QED BY <2>1, <3>2, <3>3, <3>4, Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF RP_RegSourceSafe, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KvDgRwgd9SE.        
 ASSUME PinInv, SFollow, RP_RegPrelude, RP_RegSourceSafe
 PROVE SI7'
<2> USE ONLY <1>KvDgRwgd9SE, Sizes, Location, Design
<2>1. SI7 BY V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF SI7, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RP_SFollowEffect BY <2>3, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW x \in Xids, iv'[x]="reg"
        PROVE x \in sentry'
  <4>1. xk[x]="wr" /\ (RP_Posted(x) \/ (iv[x]="reg" /\ xsrc'[x]=xsrc[x]))
   BY <3>2, Sizes, Location, Design DEF RP_RegPrelude, Sizes, Location, Design
  <4>2. x \in sentry \/ RP_Posted(x)
   BY <2>1, <2>3, <3>2, <4>1, Sizes, Location, Design DEF SI7, Sizes, Location, Design
  <4>3. ~RP_Close(x) /\ ~RP_Quarantine(x)
   BY <3>2, <4>1, Sizes, SMTT(10), Location, Design DEF RP_RegSourceSafe, RP_Posted, RP_Close, RP_Quarantine, Pages, Sizes, Location, Design
  <4>4. QED BY <3>1, <3>2, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_E2, Sizes, Location, Design
 <3>3. QED BY <2>3, <3>2, Sizes, Location, Design DEF SI7, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1819_PdRPSI7


<1>jWzt5Knf0JblyxZ5b1.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE RP_RegPrelude
<2> USE ONLY <1>jWzt5Knf0JblyxZ5b1, Sizes, Location, Design
<2>1. K3
 BY ONLY <1>jWzt5Knf0JblyxZ5b1, V21_Inv_K3, Sizes, Location, Design, SMTT(5)
<2>2. UNCHANGED xsrc /\ (\A y \in Xids : iv'[y]="reg" => iv[y]="reg")
 <3>fxSource. UNCHANGED xsrc
  BY ONLY <1>jWzt5Knf0JblyxZ5b1, SMTT(5) DEF PSubmit
 <3>fxUpdate. iv' = [iv EXCEPT ![x] = "posted"]
  BY ONLY <1>jWzt5Knf0JblyxZ5b1, SMTT(5) DEF PSubmit
 <3>fxType. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
  BY ONLY <1>jWzt5Knf0JblyxZ5b1, V22_T_iv, SMTT(5) DEF V22_T_iv
 <3>fxOld. \A y \in Xids : iv'[y]="reg" => iv[y]="reg"
  BY ONLY <3>fxUpdate, <3>fxType, SMTT(5)
 <3>fxDone. QED BY ONLY <3>fxSource, <3>fxOld, SMTT(5)
<2>3. \A y \in Xids : iv'[y]="reg" => xk[y]="wr" /\ iv[y]="reg" /\ xsrc'[y]=xsrc[y]
 BY ONLY <2>1, <2>2, SMTT(5) DEF K3
<2>4. QED BY ONLY <2>3, SMTT(5) DEF RP_RegPrelude

\* T2M-LOCAL-VISIBILITY

<1>jC2xI81mvZYfH.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE K1'
<2> USE ONLY <1>jC2xI81mvZYfH, Sizes, Location, Design
<2>1. K1 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K1, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mIpqBXQKZFLwB.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE K2'
 BY ONLY <1>mIpqBXQKZFLwB, Sizes, Location, Design, <1>TRdOHN4UZ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jCFqc4cSdP7lv.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE K3'
 BY ONLY <1>jCFqc4cSdP7lv, Sizes, Location, Design, <1>HZKH6QEft DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>E7QTi2TuITAkR.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE K4'
 BY ONLY <1>E7QTi2TuITAkR, Sizes, Location, Design, <1>MWgn76kZV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jVestuH1VnM0X4Gz4h5U.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>jVestuH1VnM0X4Gz4h5U, Sizes, Location, Design, <1>RSMU6wnDDmpT8mRQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YbWDYvIt4W6D1.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE nx' \in 1..(MX+1)
<2> USE ONLY <1>YbWDYvIt4W6D1, Sizes, Location, Design
<2>1. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>YbWDYvIt4W6D1, V22_T_nx, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF Xids, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KufaCZIe69v.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE SI7'
<2> USE ONLY <1>KufaCZIe69v, Sizes, Location, Design
<2>1. RP_RegSourceSafe BY <1>jC2xI81mvZYfH, <1>mIpqBXQKZFLwB, <1>jCFqc4cSdP7lv, <1>E7QTi2TuITAkR, <1>jVestuH1VnM0X4Gz4h5U, <1>YbWDYvIt4W6D1, <1>NU8zGD7bQ5u9BXIjl, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>jWzt5Knf0JblyxZ5b1, <1>KvDgRwgd9SE, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1953_PdRPSI7_PSubmit


<1> QED BY <1>E1MJ76pbT8fj8uht6p5oJnCpx, <1>KufaCZIe69v, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PSubmit_01_02 SHA 42370c345ed5d988a226cc3a3193f390da5e03de62603dde16a72d545a8cca9c
USE DEF AuxType_6b10eee8fbf863b7, AuxType_d3dd8b4090431094, V21_Inv_HitIdentity, V21_Inv_K8, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI5, V21_Inv_S3, V21_Inv_SharedImmutable, V21_SFollowOff, V21_SFollowStatic, V22_T_hok, V22_T_iv, V22_T_rpg, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF Part_PSubmit_01_01, V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V22_SF_Off, V22_T_kpin, V22_T_krs, V22_T_plt, V22_T_ptl, V22_T_pvis, V22_T_sfly, V22_T_sled, V22_T_xdst
THEOREM Part_PSubmit_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE (TypInv)' /\ (P_SI5)' /\ (P_SI2)'
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

           RP_NewFlyFromReg == \A x \in Xids : hw'[x]="fly" => hw[x]="fly" \/ iv[x]="reg"


           RP_SharedSend == IF ~B2 THEN TRUE ELSE \A x \in Xids : hw[x]="fly" =>
            \A p \in xsrcS[x] \cup xsrcP[x] : sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])

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

           RP_RecordReady == B2 => \A i \in PInst,r \in Rq :
            ph'[i][r] \in {"reg","sent","exp"} => rg'[i][r]=rg[i][r] /\ SSendReady(i,r)


           RP_NoneFrame == \A i \in PInst,r \in Rq : ph'[i][r]="none" => ph[i][r]="none" /\ rg'[i][r]=rg[i][r]

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

           RP_QSnapshot == \A h \in squar : h[2] \in xsrcS[h[1]]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_NewFlyFromReg, RP_SharedSend, RP_RecordProgress, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, RP_RecordReady, RP_NoneFrame, RP_NoNewStop, RP_DReadFrame, RP2_NoNewReg, RP2_StoppedHeldBack, RP2_PrivatePhaseStep, RP2_SI5Q, RP2_SI5D, RP2_SI5P, RP2_DHeldBack, RP2_StopBack, RP_QSnapshot

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

<1>M8HwZu9jwGkBjbpUA.        
 ASSUME B2, SFollow
 PROVE \A h \in squar' : h \in squar \/ h[1] \in sentry
<2> USE ONLY <1>M8HwZu9jwGkBjbpUA, Sizes, Location, Design
<2>1. squar'=RP_Q2(0) BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF RP_SFollowEffect, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF RP_Q2, RP_Quarantine, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yQBGvxyGQhN0w6pz3gh.        
 ASSUME PinInv, B2, SFollow, UNCHANGED xsrc, RP_NewFlyFromReg
 PROVE \A x \in Xids : SAccess(x)' => SAccess(x)
<2> USE ONLY <1>yQBGvxyGQhN0w6pz3gh, Sizes, Location, Design
<2>1. sentry' \subseteq sentry BY <1>ESBouXiucduyoSgqYf8M, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. SI7 BY V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A h \in squar' : h \in squar \/ h[1] \in sentry
 BY <1>M8HwZu9jwGkBjbpUA, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF SAccess, SI7, RP_NewFlyFromReg, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fCaVnnRiNeSrXN4lcQ3A.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,xr,xg>>, RP_NewFlyFromReg
 PROVE NoEvictUnderRDMA' /\ RP_SharedSend'
<2> USE ONLY <1>fCaVnnRiNeSrXN4lcQ3A, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ SharedImmutable /\ (B2 => SI4) /\ STypeOK
 BY V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI4, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. UNCHANGED <<skey,sdata,swrite>> BY <1>zfqXeNpr8ate3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE ~B2
 BY <2>3, Sizes, Location, Design DEF NoEvictUnderRDMA, RP_SharedSend, Sizes, Location, Design
<2>4. CASE B2
 <3>1. UNCHANGED <<xsrcS,xsrcP>> BY <2>4, <1>ESBouXiucduyoSgqYf8M, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A x \in Xids : SAccess(x)' => SAccess(x)
  BY <2>4, <1>yQBGvxyGQhN0w6pz3gh, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A x \in Xids : xsrcP'[x]={}
  BY <2>1, <2>4, <3>1, Sizes, Location, Design DEF SI4, Sizes, Location, Design
 <3>4. \A x \in Xids : SAccess(x)' => \A p \in xsrcS'[x] :
   spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x]) /\ sdata'[p] /\ ~swrite'[p]
  <4>1. ASSUME NEW x \in Xids, SAccess(x)', NEW p \in xsrcS'[x]
         PROVE spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x]) /\ sdata'[p] /\ ~swrite'[p]
   <5>1. SAccess(x) /\ p \in xsrcS[x] /\ p \in SPages
    BY <2>1, <3>1, <3>2, <4>1, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
   <5>2. spst[p]="shared" /\ skey[p]=STok(xr[x],xg[x]) /\ sdata[p] /\ ~swrite[p]
    BY <2>1, <2>4, <5>1, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, SharedImmutable, Sizes, Location, Design
   <5>3. QED BY <2>1, <2>2, <2>4, <5>1, <5>2, <1>Ua3eOhQVTzEuP0Q, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. QED BY <4>1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>5. QED BY <2>4, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, RP_SharedSend, SAccess, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1394_PdRPSharedAccess


<1>Hva5axFVBiUG699zUpK.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE UNCHANGED <<xsrc,xr,xg>> /\ RP_NewFlyFromReg
<2> USE ONLY <1>Hva5axFVBiUG699zUpK, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Hva5axFVBiUG699zUpK, V22_T_hw, SMTT(5)

<2>2. QED BY <2>1, Design, SMTT(10), Sizes, Location DEF RP_NewFlyFromReg, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TyBTsxOWyLahVO45h6xE.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE NoEvictUnderRDMA' /\ RP_SharedSend'
 BY ONLY <1>TyBTsxOWyLahVO45h6xE, Sizes, Location, Design, <1>Hva5axFVBiUG699zUpK, <1>fCaVnnRiNeSrXN4lcQ3A DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UbRyVd7pIbH8AblyNEO.        
 ASSUME PinInv, SFollow, RP_RecordProgress
 PROVE HitIdentity'
<2> USE ONLY <1>UbRyVd7pIbH8AblyNEO, Sizes, Location, Design
<2>1. HitIdentity /\ (B2 => SI4) /\ STypeOK
 BY V21_Inv_HitIdentity, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. UNCHANGED skey BY <1>zfqXeNpr8ate3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE ~B2
 BY <2>3, Sizes, Location, Design DEF HitIdentity, Sizes, Location, Design
<2>4. CASE B2
 <3>1. RP_SFollowEffect BY <2>4, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. rpgS' \subseteq rpgS BY <3>1, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_H2, Sizes, Location, Design
 <3>3. \A h \in rpgS' : spst'[h[4]]="shared" /\ skey'[h[4]]=STok(h[2],h[3])
  <4>1. ASSUME NEW h \in rpgS'
         PROVE spst'[h[4]]="shared" /\ skey'[h[4]]=STok(h[2],h[3])
   <5>1. h \in rpgS /\ h[4] \in SPages
    BY <2>1, <3>2, <4>1, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
   <5>2. spst[h[4]]="shared" /\ skey[h[4]]=STok(h[2],h[3])
    BY <2>1, <2>4, <5>1, Sizes, Location, Design DEF HitIdentity, Sizes, Location, Design
   <5>3. QED BY <2>1, <2>2, <2>4, <5>1, <5>2, <1>Ua3eOhQVTzEuP0Q, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. QED BY <4>1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. \A i \in PInst,r \in Rq : (Active(i,r)' /\ smap'[i][r] \in SPages) => skey'[smap'[i][r]]=STok(r,rg'[i][r])
  <4>1. ASSUME NEW i \in PInst, NEW r \in Rq, Active(i,r)', smap'[i][r] \in SPages
         PROVE skey'[smap'[i][r]]=STok(r,rg'[i][r])
   <5>1. smap'[i][r]=smap[i][r] /\ rg'[i][r]=rg[i][r]
    BY <3>1, <4>1, Sizes, SMTT(10), Location, Design DEF RP_SFollowEffect, RP_New, SPages, Sizes, Location, Design
   <5>2. Active(i,r) BY <4>1, <5>1, Sizes, Location, Design DEF RP_RecordProgress, Sizes, Location, Design
   <5>3. QED BY <2>1, <2>2, <2>4, <4>1, <5>1, <5>2, SMTT(10), Sizes, Location, Design DEF HitIdentity, Sizes, Location, Design
  <4>2. QED BY <4>1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>5. QED BY <2>4, <3>3, <3>4, Sizes, Location, Design DEF HitIdentity, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1412_PdRPSharedIdentity


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


<1>xS15HQSBfXshFwaCIzgKec.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>xS15HQSBfXshFwaCIzgKec, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>xS15HQSBfXshFwaCIzgKec, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>X2fo9sRKmt0XtbZNJ2q.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE HitIdentity'
 BY ONLY <1>X2fo9sRKmt0XtbZNJ2q, Sizes, Location, Design, <1>xS15HQSBfXshFwaCIzgKec, <1>UbRyVd7pIbH8AblyNEO DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>Ug4VwS.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1459_PdRPPP_PdMsgBase


<1>zQCSTfqP4L.        
  ASSUME NEW x \in Xids, PSubmit(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, kfly, kpin, krs, led, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>zQCSTfqP4L, Sizes, Location, Design, Zenon DEF PSubmit, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1460_PdRPPP_PdPSubmitFrames

\* T2M-SCOPE R2M1461_PdRPPP_PdSubmitEffects
\* T2M-BODY R2M1461_PdRPPP_PdSubmitEffects
\* T2M-LOCAL-VISIBILITY

<1>jXujQnapOVz1N.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ x < nx /\ iv[x] = "reg" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst
        /\ xsrc[x] \in Pages /\ xdst[x] \in Pages
        /\ Loc(xsrc[x]) = xp[x] /\ Loc(xdst[x]) = xd[x]
<2> USE ONLY <1>jXujQnapOVz1N, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xk[x] = "wr" /\ iv[x] = "reg"
  BY SMTT(10), Sizes, Location, Design DEF PSubmit, Sizes, Location, Design
<2>3. x < nx /\ xst[x] = "posted"
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, K3, SHJS, Xids, Sizes, Location, Design
<2>4. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
         /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>5. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K2, InitPage, ExpPage, InitInst, ExpInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FNMJSUwYV.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ iv' = [iv EXCEPT ![x] = "posted"]
        /\ hw' = [hw EXCEPT ![x] = IF Torn(x) THEN "stop" ELSE "fly"]
        /\ hok' = [hok EXCEPT ![x] = FALSE]
        /\ ph' = IF ph[xp[x]][xr[x]] = "reg" /\ rg[xp[x]][xr[x]] = xg[x] /\ rx[xp[x]][xr[x]] = x
                 THEN [ph EXCEPT ![xp[x]][xr[x]] = "sent"] ELSE ph
        /\ net' = net
        /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, xst, nx, ghV>>
  BY ONLY <1>FNMJSUwYV, Sizes, Location, Design, Design, SMTT(10) DEF PSubmit, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ojP8Js3gjMBL8Rsn.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ iv'[x] = "posted" /\ hok'[x] = FALSE /\ hw'[x] \in {"stop","fly"}
        /\ \A y \in Xids : y # x => iv'[y] = iv[y] /\ hw'[y] = hw[y] /\ hok'[y] = hok[y]
<2> USE ONLY <1>ojP8Js3gjMBL8Rsn, Sizes, Location, Design
<2>1. fr1A /\ DpA4 /\ DnMxp
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>FNMJSUwYV, SMTT(10), Sizes, Location, Design DEF fr1A, DpA4, DnMxp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WQTYH4MdjWyXr.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ \A a \in Inst, r \in Rq :
              /\ Active(a,r)' <=> Active(a,r)
              /\ (ph'[a][r] \in {"run","ovl"}) <=> (ph[a][r] \in {"run","ovl"})
              /\ (ph'[a][r] = "end") <=> (ph[a][r] = "end")
        /\ \A a \in DInst, r \in Rq : ph'[a][r] = ph[a][r]
<2> USE ONLY <1>WQTYH4MdjWyXr, Sizes, Location, Design
<2>1. AydA /\ xp[x] \in PInst /\ xr[x] \in Rq
  BY <1>UwwC5LVwQr, <1>jXujQnapOVz1N, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>FNMJSUwYV, Sizes, SMTT(10), Location, Design DEF Active, AydA, Inst, PInst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xfECovnYAR2iw5UbcxP.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ x \in led[xsrc[x]] /\ x \in led[xdst[x]]
        /\ OwnedBy(xsrc[x],xr[x],xg[x]) /\ OwnedBy(xdst[x],xr[x],xg[x])
<2> USE ONLY <1>xfECovnYAR2iw5UbcxP, Sizes, Location, Design
<2>1. K4 /\ K5
  BY SMTT(10), V21_Inv_K4, V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x < nx /\ iv[x] = "reg" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ xsrc[x] \in Pages /\ xdst[x] \in Pages
  BY <1>jXujQnapOVz1N, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. x \in led[xsrc[x]] /\ x \in led[xdst[x]]
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K4, InitPage, ExpPage, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K5, Sizes, Location, Design
\* T2M-END R2M1461_PdRPPP_PdSubmitEffects


<1>vZf8MKjImqYvU7.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE QuarNoReg'
<2> HIDE DEF PSubmit, QuarNoReg, CoreTypeOK
<2>old. QuarNoReg
 BY ONLY <1>vZf8MKjImqYvU7, V21_Inv_QuarNoReg, Sizes, Location, Design, SMTT(5)
<2>types. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}] /\ led \in [Pages -> SUBSET Xids]
 BY ONLY <1>vZf8MKjImqYvU7, V22_T_iv, V22_T_led, SMTT(5)
<2>effect. iv'=[iv EXCEPT ![x]="posted"] /\ UNCHANGED <<led,pst>>
 BY ONLY <1>vZf8MKjImqYvU7, ZenonT(5) DEF PSubmit, pgV
<2>no_new. \A y \in Xids : iv'[y]="reg" => iv[y]="reg"
 BY ONLY <1>vZf8MKjImqYvU7, <2>types, <2>effect, SMTT(5)
<2>qed. QED BY ONLY <2>old, <2>types, <2>effect, <2>no_new, SMTT(5) DEF QuarNoReg

\* T2M-LOCAL-VISIBILITY

\* T2M-END R2M1743_PdRPPP_PdCell_PSubmit_QuarNoReg

\* T2M-SCOPE R2M1744_PdRPPP_PdSubmitRecordFrame

<1>AD7gHHr.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE K4'
<2> HIDE DEF PSubmit, K4, CoreTypeOK, InitPage, ExpPage
<2>old. K4
 BY ONLY <1>AD7gHHr, V21_Inv_K4, Sizes, Location, Design, SMTT(5)
<2>type. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 BY ONLY <1>AD7gHHr, V22_T_iv, SMTT(5)
<2>effect. iv[x]="reg" /\ iv'=[iv EXCEPT ![x]="posted"] /\
 UNCHANGED <<nx,xst,xk,xsrc,xdst,led>>
 BY ONLY <1>AD7gHHr, ZenonT(5) DEF PSubmit, pgV
<2>membership. \A y \in Xids : (iv'[y] \in {"reg","posted","failret"}) <=> (iv[y] \in {"reg","posted","failret"})
 BY ONLY <1>AD7gHHr, <2>type, <2>effect, SMTT(5)
<2>qed. QED BY ONLY <2>old, <2>effect, <2>membership, SMTT(5) DEF K4, InitPage, ExpPage

\* T2M-END R2M1752_PdRPPP_PdE_PSubmit_K4
\* T2M-SCOPE R2M1753_PdRPPP_PdE_PSubmit_K8

<1>MWgn76kZV.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K4'
  BY ONLY <1>MWgn76kZV, Sizes, Location, Design, <1>AD7gHHr, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RSMU6wnDDmpT8mRQ.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>RSMU6wnDDmpT8mRQ, Sizes, Location, Design, <1>vZf8MKjImqYvU7, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1756_PdRPPdPAgg_PSubmit


<1>szwebgGOE2QEusqJPK8I0.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE UNCHANGED gen /\ RP_RecordReady /\ RP_NoneFrame
<2> USE ONLY <1>szwebgGOE2QEusqJPK8I0, Sizes, Location, Design
<2>1. B2 => \A j \in PInst,u \in Rq : ph[j][u] \in {"reg","sent","exp"} => SSendReady(j,u)
 BY ONLY <1>szwebgGOE2QEusqJPK8I0, Sizes, Location, Design, V21_Inv_P_SI1 DEF P_SI1, SI1, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>szwebgGOE2QEusqJPK8I0, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_RecordReady, RP_NoneFrame, PInst, Inst, NL, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ryS0sRAuMBBetiW6R.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE RP_NoNewStop /\ RP_DReadFrame /\ UNCHANGED xdst
<2> USE ONLY <1>ryS0sRAuMBBetiW6R, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rpg \in [Inst -> [Rq -> 0..NP]] /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ryS0sRAuMBBetiW6R, V22_T_hw, V22_T_ph, V22_T_rpg, SMTT(5)

<2>2. K1 /\ K3 BY V21_Inv_K1, V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_NoNewStop, RP_DReadFrame, DInst, PInst, Inst, NL, IsP, IsD, K1, K3, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>E7QTi2TuITAkR.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE K4'
 BY ONLY <1>E7QTi2TuITAkR, Sizes, Location, Design, <1>MWgn76kZV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jVestuH1VnM0X4Gz4h5U.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>jVestuH1VnM0X4Gz4h5U, Sizes, Location, Design, <1>RSMU6wnDDmpT8mRQ DEF Sizes, Location, Design

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


<1>NUU03x7cq7WbcR3Qa0DMEi.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE UNCHANGED <<xsrc,xr,xg,xk,nx,xdst>> /\ RP2_NoNewReg /\ RP2_PrivatePhaseStep
<2> USE ONLY <1>NUU03x7cq7WbcR3Qa0DMEi, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ iv \in [Xids -> {"none","reg","posted","failret","cqe","nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>NUU03x7cq7WbcR3Qa0DMEi, V22_T_iv, V22_T_ph, SMTT(5)

<2>2. UNCHANGED <<xsrc,xr,xg,xk,nx,xdst>>
 BY Design, ZenonT(10), Sizes, Location DEF EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>3. RP2_NoNewReg
 BY <2>1, Design, SMTT(10), Sizes, Location DEF RP2_NoNewReg, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>4. RP2_PrivatePhaseStep
 BY <2>1, Design, Sizes, SMTT(10), Location DEF RP2_PrivatePhaseStep, Active, Inst, PInst, NL, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>5. QED BY <2>2, <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PF8WqcIj1IeNtqyPp6wug9ie.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE RP2_StoppedHeldBack
<2> USE ONLY <1>PF8WqcIj1IeNtqyPp6wug9ie, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 /\ hw \in [Xids -> {"none","fly","issued","stop"}] /\ hok \in [Xids -> BOOLEAN]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>PF8WqcIj1IeNtqyPp6wug9ie, V22_T_hok, V22_T_hw, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>15. \A q \in Pages : Loc(q) \in Int
 BY Location, Sizes, SMTT(10), Design DEF KPages, Inst, NL, Sizes, Location, Design
<2>2. \A j \in Inst,u \in Rq : Active(j,u) => rpg[j][u] \in Pages /\ Loc(rpg[j][u])=j
 BY SMTT(10), V21_Inv_K8, Sizes, Location, Design DEF K8, Sizes, Location, Design
<2>3. RP2_DHeldBack
 BY <2>1, <2>15, <2>2,  Design, Sizes, SMTT(10), Location DEF RP2_DHeldBack, IsP, IsD, Active, Inst, NL, AfterEv, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>35. S3 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RP2_StopBack
 BY <2>1, <2>35, Design, SMTT(10), Sizes, Location DEF RP2_StopBack, S3, Torn, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>5. UNCHANGED <<xdst,xr,xg>>
 BY Design, ZenonT(10), Sizes, Location DEF EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>6. QED BY <2>3, <2>4, <2>5, <1>IKXZRHRBF2l7ZlEB9jY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TNoF1enwyz61.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE P_SI5'
 BY ONLY <1>TNoF1enwyz61, Sizes, Location, Design, <1>NUU03x7cq7WbcR3Qa0DMEi, <1>PF8WqcIj1IeNtqyPp6wug9ie, <1>ryS0sRAuMBBetiW6R, <1>xS15HQSBfXshFwaCIzgKec,
    <1>E7QTi2TuITAkR, <1>jVestuH1VnM0X4Gz4h5U, <1>dKRaSSpacKjf DEF Sizes, Location, Design
\* T2M-END R2M1954_PdRPR2SI5_PSubmit


<1>FOFtOay2erdyG.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE STypeOK'
 BY ONLY <1>FOFtOay2erdyG, AuxType_d3dd8b4090431094, Sizes, Location, Design DEF Sizes, Location, Design

<1>RWjD469HFM3HWtpNp.          
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE CoreTypeOK'
 BY ONLY <1>RWjD469HFM3HWtpNp, AuxType_6b10eee8fbf863b7, Sizes, Location, Design DEF Sizes, Location, Design

<1>esJ3OKysEkzHEcY.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE TypInv'
<2> USE ONLY <1>esJ3OKysEkzHEcY, Sizes, Location, Design
<2>1. CoreTypeOK' BY <1>RWjD469HFM3HWtpNp, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED xsrc BY <1>Hva5axFVBiUG699zUpK, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. STypeOK' BY <2>2, <1>FOFtOay2erdyG, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, Location, Design DEF TypInv, Sizes, Location, Design
\* T2M-END R2M2060_PdRPR2Types_PSubmit


<1>oOiFTl0ixVgmlGByX.        
 ASSUME PinInv, B2, SFollow, UNCHANGED xsrc
 PROVE RP_QSnapshot'
<2> USE ONLY <1>oOiFTl0ixVgmlGByX, Sizes, Location, Design
<2>1. SI5 /\ STypeOK BY V21_Inv_P_SI5, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI5, Sizes, Location, Design
<2>2. RP_SFollowEffect BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<xsrcS,xsrcP>> BY <1>ESBouXiucduyoSgqYf8M, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF SI5, RP_QSnapshot, RP_SFollowEffect, RP_Q2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gBcuQ3MZg0Mp69tPa.        
 ASSUME B2, PrefcMatchesHolders', HitIdentity', NoEvictUnderRDMA',
        RP_T_rpgS', RP_T_sentry', RP_T_squar', RP_QSnapshot', NEW p \in SPages, spst'[p] # "shared"
 PROVE sprefc'[p]=0
<2> USE ONLY <1>gBcuQ3MZg0Mp69tPa, Sizes, Location, Design
<2>1. {h \in rpgS' : h[4]=p}={}
 BY SMTT(10), Sizes, Location, Design DEF HitIdentity, Sizes, Location, Design
<2>2. {x \in sentry' : p \in xsrcS'[x]}={}
 BY SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, RP_T_sentry, SAccess, Sizes, Location, Design
<2>3. {h \in squar' : h[2]=p}={}
 BY SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, RP_T_squar, RP_QSnapshot, SAccess, Sizes, Location, Design
<2>4. SRefR(rpgS',p)=0 /\ SRefE(sentry',xsrcS',p)=0 /\ SRefQ(squar',p)=0
 BY <2>1, <2>2, <2>3, FS_EmptySet, Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jNTupquvAyD.        
 ASSUME PinInv, SFollow, RP_NoneFrame, UNCHANGED xsrc,
        HitIdentity', NoEvictUnderRDMA', PrefcMatchesHolders'
 PROVE P_SI2'
<2> USE ONLY <1>jNTupquvAyD, Sizes, Location, Design
<2>1. (B2 => SI1 /\ SI2 /\ SI4) /\ STypeOK
 BY V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI4, Sizes, Location, Design
<2>2. RP_T_rpgS' /\ RP_T_sentry' /\ RP_T_squar'
 BY <2>1, <1>g2d0XcDvt56Baa, <1>NjvYCjaSlJxhU8e0, <1>A1Sb5mM7HaVTJal, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE ~B2 BY <2>3, Sizes, Location, Design DEF P_SI2, Sizes, Location, Design
<2>4. CASE B2
 <3>1. RP_SFollowEffect BY <2>4, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>15. RP_QSnapshot' BY <2>4, <1>oOiFTl0ixVgmlGByX, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A p \in SPages : spst'[p] # "shared" => sprefc'[p]=0
  BY <2>2, <2>4, <3>15, <1>gBcuQ3MZg0Mp69tPa, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A x \in Xids : xsrcP[x]={} /\ RP_PX(0)[x]={}
  BY <2>1, <2>4, <3>1, <1>ZXxq7ZUlh0hBhsql, SMTT(10), Sizes, Location, Design DEF SI4, RP_PX, Sizes, Location, Design
 <3>4. ASSUME NEW p \in SPages
        PROVE /\ (spst'[p]="priv" => sown'[p] \in Rq /\ sgen'[p] \in Gens /\ rg'[Loc(p)][sown'[p]]=sgen'[p]
                    /\ (ph'[Loc(p)][sown'[p]] \notin {"none","end"}) /\ smap'[Loc(p)][sown'[p]]=p /\ skey'[p]=STok(sown'[p],sgen'[p]))
              /\ (spst'[p]="free" => ~swrite'[p] /\ sprefc'[p]=0)
              /\ (spst'[p] \in {"priv","drain"} => swrite'[p] \/ sdata'[p])
              /\ (swrite'[p] => spst'[p] \in {"priv","drain"} /\ ~sdata'[p] /\ ~sready'[p])
              /\ (sready'[p] => sdata'[p] /\ ~swrite'[p])
              /\ (spst'[p]="shared" => skey'[p] \in 1..2)
              /\ (spst'[p] \in {"drain","dup"} => ~sready'[p] \/ SPin(p)')
              /\ (spst'[p] # "shared" => sprefc'[p]=0)
              /\ (spst'[p]="dup" => sready'[p]) /\ spst'[p] # "quar"
  <4>1. Loc(p) \in PInst BY Location, Sizes, Design DEF Sizes, Location, Design
  <4>2. spst'[p]="priv" => spst[p]="priv" /\ ~RP_Ended(p)
   BY <2>1, <2>4, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_Drop, Sizes, Location, Design
  <4>3. ASSUME spst'[p]="priv"
         PROVE sown'[p] \in Rq /\ sgen'[p] \in Gens /\ rg'[Loc(p)][sown'[p]]=sgen'[p]
         /\ (ph'[Loc(p)][sown'[p]] \notin {"none","end"}) /\ smap'[Loc(p)][sown'[p]]=p /\ skey'[p]=STok(sown'[p],sgen'[p])
   <5>1. sown[p] \in Rq /\ sgen[p] \in Gens /\ rg[Loc(p)][sown[p]]=sgen[p]
     /\ Active(Loc(p),sown[p]) /\ smap[Loc(p)][sown[p]]=p /\ skey[p]=STok(sown[p],sgen[p])
    BY <2>1, <2>4, <4>2, <4>3, Sizes, Location, Design DEF SI2, Sizes, Location, Design
   <5>2. QED BY <3>1, <4>1, <4>2, <4>3, <5>1, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_Ended, RP_New, RP_NoneFrame, Active, Sizes, Location, Design
  <4>4. QED BY <2>1, <2>2, <2>4, <3>1, <3>2, <3>3, <4>3, SMTT(10), Sizes, Location, Design DEF SI2, RP_SFollowEffect, RP_Drop, RP_Ended, RP_Pin2, SPin, RP_T_sentry, Sizes, Location, Design
 <3>5. QED BY <2>4, <3>4, Sizes, Location, Design DEF P_SI2, SI2, Active, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1818_PdRPSI2


<1>suUyBILKNKL.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE P_SI2'
 BY ONLY <1>suUyBILKNKL, Sizes, Location, Design, <1>szwebgGOE2QEusqJPK8I0, <1>X2fo9sRKmt0XtbZNJ2q, <1>TyBTsxOWyLahVO45h6xE, <1>Hva5axFVBiUG699zUpK, <1>AnajBeZS7htcLkTpZ8C91mxOHTa, <1>jNTupquvAyD DEF Sizes, Location, Design
\* T2M-END R2M2080_PdRPSI2_PSubmit


<1> QED BY <1>esJ3OKysEkzHEcY, <1>TNoF1enwyz61, <1>suUyBILKNKL, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PSubmit_02_01 SHA bb77477543d2cd0257c92cac12bc3342a2e135a80d520b253a14ef04528856dc
USE DEF P_PagePoolsDisjoint, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_K10, V21_Inv_K14, V21_Inv_K15, V21_Inv_K7, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_SI3, V21_Inv_S1, V21_Inv_S6, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V22_SF_SharedOrigin, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_kpin, V22_T_krs, V22_T_plt, V22_T_ptl, V22_T_pvis, V22_T_sfly, V22_T_sled, V22_T_xdst
HIDE DEF AuxType_6b10eee8fbf863b7, AuxType_d3dd8b4090431094, Part_PSubmit_01_02, V21_Inv_HitIdentity, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNoReg, V21_Inv_S3, V21_Inv_SI7, V21_Inv_SharedImmutable, V21_SFollowOff, V22_T_hok, V22_T_iv, V22_T_nx, V22_T_xsrcP, V22_T_xsrcS
THEOREM Part_PSubmit_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE (NoStrayAccess)' /\ (KReadIntegrity)' /\ (K15)' /\ (NoFreeUnderRead)' /\ (SealOnlyLanded)' /\ (K10)' /\ (K7)' /\ (S1)' /\ (S6)' /\ (K2)' /\ (K8)'
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

           RP_PrivateOwnersStay == \A p \in SPages : spst[p]="priv" =>
            rg'[Loc(p)][sown[p]]=sgen[p] /\ ph'[Loc(p)][sown[p]] # "end"

           \* T2M-LOCAL-VISIBILITY

           OjcUPgq(p) ==
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


           RP_NoNewStop == \A x \in Xids : hw[x] \in {"fly","issued"} => hw'[x] # "stop"


           RP_DReadFrame == \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} =>
            ph[j][r] \in {"run","ovl"} /\ rpg'[j][r]=rpg[j][r]


           RPB_T_gen == gen \in [Rq -> 0..MG]


           RPB_T_rt == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           RPB_T_rp == rp \in [Rq -> {0} \cup Inst]


           RPB_T_rd == rd \in [Rq -> {0} \cup Inst]


           RPB_T_hp == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           RPB_T_hd == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           RPB_T_alive == alive \in [Inst -> BOOLEAN]


           RPB_T_nfail == nfail \in 0..MaxFail


           RPB_T_torn == torn \in [Inst -> SUBSET Inst]


           RPB_T_kpin == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           RPB_T_kfly == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           RPB_T_krs == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           RPB_T_ph == ph \in [Inst -> [Rq -> PhSet]]


           RPB_T_rg == rg \in [Inst -> [Rq -> 0..MG]]


           RPB_T_rpg == rpg \in [Inst -> [Rq -> 0..NP]]


           RPB_T_rpe == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           RPB_T_rx == rx \in [Inst -> [Rq -> 0..MX]]


           RPB_T_rhit == rhit \in [Inst -> [Rq -> BOOLEAN]]


           RPB_T_pst == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           RPB_T_pr == pr \in [Pages -> 0..NR]


           RPB_T_pgn == pgn \in [Pages -> 0..MG]


           RPB_T_plt == plt \in [Pages -> 0..PS]


           RPB_T_ptl == ptl \in [Pages -> -1..PS]


           RPB_T_pvis == pvis \in [Pages -> BOOLEAN]


           RPB_T_led == led \in [Pages -> SUBSET Xids]


           RPB_T_sfly == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           RPB_T_sled == sled \in [Pages -> SUBSET (Rq \X Gens)]


           RPB_T_prefc == prefc \in [Pages -> 0..NR]


           RPB_T_pqp == pqp \in [Pages -> {0} \cup Inst]


           RPB_T_xr == xr \in [Xids -> 0..NR]


           RPB_T_xg == xg \in [Xids -> 0..MG]


           RPB_T_xk == xk \in [Xids -> {"none", "wr", "rd"}]


           RPB_T_xp == xp \in [Xids -> {0} \cup Inst]


           RPB_T_xd == xd \in [Xids -> {0} \cup Inst]


           RPB_T_xsrc == xsrc \in [Xids -> 0..NP]


           RPB_T_xdst == xdst \in [Xids -> 0..NP]


           RPB_T_xnt == xnt \in [Xids -> 0..PS]


           RPB_T_hw == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           RPB_T_hok == hok \in [Xids -> BOOLEAN]


           RPB_T_iv == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           RPB_T_xst == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           RPB_T_xlt == xlt \in [Xids -> 0..PS]


           RPB_T_nx == nx \in 1..(MX + 1)


           RPB_T_net == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           RPB_T_drep == drep \in [Rq -> [Gens -> 0..2]]


           RPB_T_crep == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           RPB_T_dsucc == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           RPB_T_gbad == gbad \in BOOLEAN


           RPB_Types == RPB_T_gen /\ RPB_T_rt /\ RPB_T_rp /\ RPB_T_rd /\ RPB_T_hp /\ RPB_T_hd /\ RPB_T_alive /\ RPB_T_nfail /\ RPB_T_torn /\ RPB_T_kpin /\ RPB_T_kfly /\ RPB_T_krs /\ RPB_T_ph /\ RPB_T_rg /\ RPB_T_rpg /\ RPB_T_rpe /\ RPB_T_rx /\ RPB_T_rhit /\ RPB_T_pst /\ RPB_T_pr /\ RPB_T_pgn /\ RPB_T_plt /\ RPB_T_ptl /\ RPB_T_pvis /\ RPB_T_led /\ RPB_T_sfly /\ RPB_T_sled /\ RPB_T_prefc /\ RPB_T_pqp /\ RPB_T_xr /\ RPB_T_xg /\ RPB_T_xk /\ RPB_T_xp /\ RPB_T_xd /\ RPB_T_xsrc /\ RPB_T_xdst /\ RPB_T_xnt /\ RPB_T_hw /\ RPB_T_hok /\ RPB_T_iv /\ RPB_T_xst /\ RPB_T_xlt /\ RPB_T_nx /\ RPB_T_net /\ RPB_T_drep /\ RPB_T_crep /\ RPB_T_dsucc /\ RPB_T_gbad

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

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_PinFacts, RP_PinKeep, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, RP_PrivateOwnersStay, OjcUPgq, RP_NoNewStop, RP_DReadFrame, RPB_T_gen, RPB_T_rt, RPB_T_rp, RPB_T_rd, RPB_T_hp, RPB_T_hd, RPB_T_alive, RPB_T_nfail, RPB_T_torn, RPB_T_kpin, RPB_T_kfly, RPB_T_krs, RPB_T_ph, RPB_T_rg, RPB_T_rpg, RPB_T_rpe, RPB_T_rx, RPB_T_rhit, RPB_T_pst, RPB_T_pr, RPB_T_pgn, RPB_T_plt, RPB_T_ptl, RPB_T_pvis, RPB_T_led, RPB_T_sfly, RPB_T_sled, RPB_T_prefc, RPB_T_pqp, RPB_T_xr, RPB_T_xg, RPB_T_xk, RPB_T_xp, RPB_T_xd, RPB_T_xsrc, RPB_T_xdst, RPB_T_xnt, RPB_T_hw, RPB_T_hok, RPB_T_iv, RPB_T_xst, RPB_T_xlt, RPB_T_nx, RPB_T_net, RPB_T_drep, RPB_T_crep, RPB_T_dsucc, RPB_T_gbad, RPB_Types, RPNS_TransportNoStray, RPN_T_gen, RPN_T_rt, RPN_T_rp, RPN_T_rd, RPN_T_hp, RPN_T_hd, RPN_T_alive, RPN_T_nfail, RPN_T_torn, RPN_T_kpin, RPN_T_kfly, RPN_T_krs, RPN_T_ph, RPN_T_rg, RPN_T_rpg, RPN_T_rpe, RPN_T_rx, RPN_T_rhit, RPN_T_pst, RPN_T_pr, RPN_T_pgn, RPN_T_plt, RPN_T_ptl, RPN_T_pvis, RPN_T_led, RPN_T_sfly, RPN_T_sled, RPN_T_prefc, RPN_T_pqp, RPN_T_xr, RPN_T_xg, RPN_T_xk, RPN_T_xp, RPN_T_xd, RPN_T_xsrc, RPN_T_xdst, RPN_T_xnt, RPN_T_hw, RPN_T_hok, RPN_T_iv, RPN_T_xst, RPN_T_xlt, RPN_T_nx, RPN_T_net, RPN_T_drep, RPN_T_crep, RPN_T_dsucc, RPN_T_gbad, RPN_Types

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

<1>xS15HQSBfXshFwaCIzgKec.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>xS15HQSBfXshFwaCIzgKec, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>xS15HQSBfXshFwaCIzgKec, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

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


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>Ug4VwS.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1459_PdRPPP_PdMsgBase


<1>zQCSTfqP4L.        
  ASSUME NEW x \in Xids, PSubmit(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, kfly, kpin, krs, led, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>zQCSTfqP4L, Sizes, Location, Design, Zenon DEF PSubmit, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1460_PdRPPP_PdPSubmitFrames

\* T2M-SCOPE R2M1461_PdRPPP_PdSubmitEffects
\* T2M-BODY R2M1461_PdRPPP_PdSubmitEffects
\* T2M-LOCAL-VISIBILITY

<1>jXujQnapOVz1N.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ x < nx /\ iv[x] = "reg" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst
        /\ xsrc[x] \in Pages /\ xdst[x] \in Pages
        /\ Loc(xsrc[x]) = xp[x] /\ Loc(xdst[x]) = xd[x]
<2> USE ONLY <1>jXujQnapOVz1N, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xk[x] = "wr" /\ iv[x] = "reg"
  BY SMTT(10), Sizes, Location, Design DEF PSubmit, Sizes, Location, Design
<2>3. x < nx /\ xst[x] = "posted"
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, K3, SHJS, Xids, Sizes, Location, Design
<2>4. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
         /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>5. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K2, InitPage, ExpPage, InitInst, ExpInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FNMJSUwYV.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ iv' = [iv EXCEPT ![x] = "posted"]
        /\ hw' = [hw EXCEPT ![x] = IF Torn(x) THEN "stop" ELSE "fly"]
        /\ hok' = [hok EXCEPT ![x] = FALSE]
        /\ ph' = IF ph[xp[x]][xr[x]] = "reg" /\ rg[xp[x]][xr[x]] = xg[x] /\ rx[xp[x]][xr[x]] = x
                 THEN [ph EXCEPT ![xp[x]][xr[x]] = "sent"] ELSE ph
        /\ net' = net
        /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, xst, nx, ghV>>
  BY ONLY <1>FNMJSUwYV, Sizes, Location, Design, Design, SMTT(10) DEF PSubmit, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ojP8Js3gjMBL8Rsn.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ iv'[x] = "posted" /\ hok'[x] = FALSE /\ hw'[x] \in {"stop","fly"}
        /\ \A y \in Xids : y # x => iv'[y] = iv[y] /\ hw'[y] = hw[y] /\ hok'[y] = hok[y]
<2> USE ONLY <1>ojP8Js3gjMBL8Rsn, Sizes, Location, Design
<2>1. fr1A /\ DpA4 /\ DnMxp
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>FNMJSUwYV, SMTT(10), Sizes, Location, Design DEF fr1A, DpA4, DnMxp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WQTYH4MdjWyXr.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ \A a \in Inst, r \in Rq :
              /\ Active(a,r)' <=> Active(a,r)
              /\ (ph'[a][r] \in {"run","ovl"}) <=> (ph[a][r] \in {"run","ovl"})
              /\ (ph'[a][r] = "end") <=> (ph[a][r] = "end")
        /\ \A a \in DInst, r \in Rq : ph'[a][r] = ph[a][r]
<2> USE ONLY <1>WQTYH4MdjWyXr, Sizes, Location, Design
<2>1. AydA /\ xp[x] \in PInst /\ xr[x] \in Rq
  BY <1>UwwC5LVwQr, <1>jXujQnapOVz1N, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>FNMJSUwYV, Sizes, SMTT(10), Location, Design DEF Active, AydA, Inst, PInst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xfECovnYAR2iw5UbcxP.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ x \in led[xsrc[x]] /\ x \in led[xdst[x]]
        /\ OwnedBy(xsrc[x],xr[x],xg[x]) /\ OwnedBy(xdst[x],xr[x],xg[x])
<2> USE ONLY <1>xfECovnYAR2iw5UbcxP, Sizes, Location, Design
<2>1. K4 /\ K5
  BY SMTT(10), V21_Inv_K4, V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x < nx /\ iv[x] = "reg" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ xsrc[x] \in Pages /\ xdst[x] \in Pages
  BY <1>jXujQnapOVz1N, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. x \in led[xsrc[x]] /\ x \in led[xdst[x]]
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K4, InitPage, ExpPage, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K5, Sizes, Location, Design
\* T2M-END R2M1461_PdRPPP_PdSubmitEffects


<1>iu1pwz6NZ42F7ea.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow, NEW q \in Pages, KPinned(q)
 PROVE RP_PinKeep(q)
<2> USE ONLY <1>iu1pwz6NZ42F7ea, Sizes, Location, Design
<2>1. RP_PinFacts(q) BY <1>sTGmGejCTusB, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RP_PageTypes BY <1>dlRLZLJP8YIdC37, Sizes, Location, Design DEF Sizes, Location, Design
<2>25. xdst[x] \in Pages /\ Loc(xdst[x]) \in DInst /\ x \in led[xdst[x]] /\ pst[xdst[x]] # "shared"
 BY <1>jXujQnapOVz1N, <1>xfECovnYAR2iw5UbcxP, SMTT(10), Sizes, Location, Design DEF OwnedBy, Sizes, Location, Design
<2>26. q # xdst[x]
 BY <2>1, <2>25, Sizes, SMTT(10), Location, Design DEF RP_PinFacts, DInst, IsD, NL, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <2>26, Design, Sizes, SMTT(10), Location DEF RP_PinKeep, RP_PinFacts, RP_PageTypes, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, AfterEv, EvidenceAt, GiveUpTo, GiveUpToN, PEnd, PSubmit, PageTo, PinBlocks, Torn, ghV, instV, kV, pgV, recV, rtV, xV, KPinned, IsP, IsD, NoWriteInto, Writing, InFl, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RmqxXKvLmobMD5EYqTC.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE UNCHANGED <<kpin,krs,kfly,xdst>>
 BY ONLY <1>RmqxXKvLmobMD5EYqTC, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, GiveUpTo, GiveUpToN, PEnd, PSubmit, PageTo, PinBlocks, Torn, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EnCo0dvNbTupDX.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>EnCo0dvNbTupDX, Sizes, Location, Design
<2>1. \A q \in Pages : KPinned(q) => RP_PinKeep(q)
 BY <1>iu1pwz6NZ42F7ea, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,kfly,xdst>> BY <1>RmqxXKvLmobMD5EYqTC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>EnCo0dvNbTupDX, <2>2, V22_T_xdst, SMTT(5)

<2>4. QED BY <2>1, <2>2, <2>3, <1>VtlCqCAE0X2qQ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r5N3rfwedne.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE K15'
 BY ONLY <1>r5N3rfwedne, Sizes, Location, Design, <1>EnCo0dvNbTupDX DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EJr8hwwRSdk4SogIdl58rTi.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE NoFreeUnderRead'
 BY ONLY <1>EJr8hwwRSdk4SogIdl58rTi, Sizes, Location, Design, <1>EnCo0dvNbTupDX DEF Sizes, Location, Design
\* T2M-END R2M1462_PdRPKernel_PSubmit


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


<1>rGx5MXaUC4JwblbQp4YcqB9Yg.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE B2 => RP_PrivateOwnersStay
<2> USE ONLY <1>rGx5MXaUC4JwblbQp4YcqB9Yg, Sizes, Location, Design
<2>1. B2 => SI2 /\ SI5 BY V21_Inv_P_SI2, V21_Inv_P_SI5, Sizes, Location, Design DEF P_SI2, P_SI5, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>rGx5MXaUC4JwblbQp4YcqB9Yg, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, Location, SMTT(10) DEF RP_PrivateOwnersStay, SI2, SI5, Active, PInst, Inst, NL, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>U3luoQVx9k51Y690vgeedA.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>U3luoQVx9k51Y690vgeedA, Sizes, Location, Design
<2>1. BaseKReadIntegrity' BY <1>EnCo0dvNbTupDX, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. SMapIntegrity'
 <3>1. CASE ~B2 BY <3>1, Sizes, Location, Design DEF SMapIntegrity, Sizes, Location, Design
 <3>2. CASE B2 BY <3>2, <1>rGx5MXaUC4JwblbQp4YcqB9Yg, <1>xS15HQSBfXshFwaCIzgKec, <1>DsbKtMfk5TGSpQKzvTWF, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <3>1, <3>2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M1477_PdRPMap_PSubmit


<1>jRfmn.         K7 <=> \A p \in Pages : OjcUPgq(p)
  BY ZenonT(10), Sizes, Location, Design DEF K7, OjcUPgq, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d4BZsgEKv.         K7' <=> \A p \in Pages : OjcUPgq(p)'
  BY ZenonT(10), Sizes, Location, Design DEF K7, OjcUPgq, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lQp5LiQ0Z.        
  UNCHANGED <<kpin,krs>> => \A p : KPinned(p)' = KPinned(p)
  BY ZenonT(10), Sizes, Location, Design DEF KPinned, Sizes, Location, Design
\* T2M-END R2M1740_PdRPPP_PdPinObservationFrame


<1>nYXmHsK.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE K7'
<2> USE ONLY <1>nYXmHsK, Sizes, Location, Design
<2>1. K7
  BY SMTT(10), V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen,kpin,krs,led,pgn,plt,pqp,pr,prefc,pst,ptl,rg,rhit,rpg,sfly,sled>>
  BY <1>zQCSTfqP4L, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A a \in Inst, r \in Rq : Active(a,r)' <=> Active(a,r)
  BY <1>WQTYH4MdjWyXr, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A p \in Pages, r \in Rq : Maps(Loc(p),r,p)' = Maps(Loc(p),r,p)
  BY <2>2, <2>3, Location, SMTT(10), Sizes, Design DEF Maps, KPages, Sizes, Location, Design
<2>5. \A p \in Pages : NHits(p)' = NHits(p)
  <3>1. SUFFICES ASSUME NEW p \in Pages PROVE NHits(p)' = NHits(p)
    BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. {u \in Rq : ph'[Loc(p)][u] \in {"run","ovl"} /\ rhit'[Loc(p)][u] /\ rpg'[Loc(p)][u] = p}
          = {u \in Rq : ph[Loc(p)][u] \in {"run","ovl"} /\ rhit[Loc(p)][u] /\ rpg[Loc(p)][u] = p}
    BY <2>2, <1>WQTYH4MdjWyXr, Location, SMTT(10), Sizes, Design DEF KPages, Sizes, Location, Design
  <3>3. QED BY <3>2, SMTT(10), Sizes, Location, Design DEF NHits, Sizes, Location, Design
<2>6. SUFFICES ASSUME NEW p \in Pages PROVE OjcUPgq(p)'
  BY <1>d4BZsgEKv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. OjcUPgq(p)
  BY <2>1, <1>jRfmn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>8. QED
  <3>1. (ptl[p] >= 0)'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>2. (pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0))'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>3. (pst[p] \in {"priv", "drain", "quar"} => (pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]]))'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>4. (pst[p] = "quar" => pqp[p] \in Inst)'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>5. (pst[p] # "quar" => pqp[p] = 0)'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>6. (pst[p] # "shared" => prefc[p] = 0)'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>7. (pst[p] = "shared" => (IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p)))'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>8. (pst[p] = "drain" => (led[p] # {} \/ sled[p] # {} \/ KPinned(p)))'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>9. (pst[p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(p), r, p))'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>10. (pst[p] = "priv" => ( (Maps(Loc(p), pr[p], p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]]) \/ GrownP(p)))'
    BY <2>2, <2>4, <2>5, <2>7, <1>lQp5LiQ0Z, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, Sizes, Location, Design
  <3>11. QED BY <3>1, <3>2, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9, <3>10, ZenonT(10), Sizes, Location, Design DEF OjcUPgq, Sizes, Location, Design
\* T2M-END R2M1741_PdRPPP_PdCell_PSubmit_K7

\* T2M-SCOPE R2M1742_PdRPPP_PdCell_PSubmit_K9

<1>vV6hlhMGns5ALTe.        
  ASSUME NEW x \in Xids, PinInv, x < nx
  PROVE ExpInst(x) \in Inst /\ InitInst(x) \in Inst /\ xr[x] \in Rq
<2> USE ONLY <1>vV6hlhMGns5ALTe, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, SHJS, Xids, Sizes, Location, Design
<2>3. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, <1>Ug4VwS, SMTT(10), Sizes, Location, Design DEF ExpInst, InitInst, Sizes, Location, Design
\* T2M-END R2M1483_PdRPPP_PdAllocatedEndpoints

\* T2M-SCOPE R2M1484_PdRPPP_PdRecordPhaseFrames
\* T2M-BODY R2M1484_PdRPPP_PdRecordPhaseFrames
\* T2M-LOCAL-VISIBILITY

<1>tgx9Q.        
  ASSUME S1, UNCHANGED <<rg,rx,xp,xd,xk,xr,xg,nx,xsrc,xdst>>,
         \A x \in Xids : x < nx => ExpInst(x) \in Inst /\ xr[x] \in Rq,
         \A a \in Inst, u \in Rq : ph[a][u] # "none" => ph'[a][u] # "none",
         \A a \in Inst, u \in Rq : Active(a,u)' => Active(a,u)
  PROVE S1'
  BY ONLY <1>tgx9Q, Sizes, Location, Design, SMTT(10) DEF S1, ExpInst, InitInst, InitPage, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wsqeU.        
  ASSUME S6, UNCHANGED <<rg,rx,xp,xd,xk,xr,xg,nx,xsrc,xdst>>,
         \A x \in Xids : x < nx => InitInst(x) \in Inst /\ xr[x] \in Rq,
         \A a \in Inst, u \in Rq : ph[a][u] # "none" => ph'[a][u] # "none",
         \A a \in Inst, u \in Rq : Active(a,u)' => Active(a,u)
  PROVE S6'
  BY ONLY <1>wsqeU, Sizes, Location, Design, SMTT(10) DEF S6, ExpInst, InitInst, InitPage, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wni2pPCpOZS1gC.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE \A a \in Inst, u \in Rq :
           /\ (ph[a][u] # "none" => ph'[a][u] # "none")
           /\ (Active(a,u)' => Active(a,u))
           /\ (ph'[a][u] \in {"run","ovl"} => ph[a][u] \in {"run","ovl"})
<2> USE ONLY <1>wni2pPCpOZS1gC, Sizes, Location, Design
<2>1. AydA /\ xp[x] \in Inst /\ xr[x] \in Rq
  BY <1>UwwC5LVwQr, <1>jXujQnapOVz1N, <1>Ug4VwS, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY <2>1, <1>FNMJSUwYV, SMTT(10), Sizes, Location, Design DEF AydA, Active, Sizes, Location, Design
\* T2M-END R2M1744_PdRPPP_PdSubmitRecordFrame

\* T2M-SCOPE R2M1745_PdRPPP_PdCell_PSubmit_S1

<1>riwin3e.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE S1'
<2> USE ONLY <1>riwin3e, Sizes, Location, Design
<2>1. S1
  BY SMTT(10), V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<rg,rx,xp,xd,xk,xr,xg,nx,xsrc,xdst>>
  BY <1>zQCSTfqP4L, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A y \in Xids : y < nx => ExpInst(y) \in Inst /\ InitInst(y) \in Inst /\ xr[y] \in Rq
  BY <1>vV6hlhMGns5ALTe, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>wni2pPCpOZS1gC, <1>tgx9Q, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1745_PdRPPP_PdCell_PSubmit_S1

\* T2M-SCOPE R2M1746_PdRPPP_PdCell_PSubmit_S6

<1>ztVeTwi.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE S6'
<2> USE ONLY <1>ztVeTwi, Sizes, Location, Design
<2>1. S6
  BY SMTT(10), V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<rg,rx,xp,xd,xk,xr,xg,nx,xsrc,xdst>>
  BY <1>zQCSTfqP4L, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A y \in Xids : y < nx => ExpInst(y) \in Inst /\ InitInst(y) \in Inst /\ xr[y] \in Rq
  BY <1>vV6hlhMGns5ALTe, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>wni2pPCpOZS1gC, <1>wsqeU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1746_PdRPPP_PdCell_PSubmit_S6


<1>fem.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xdst[x] \in Pages
  PROVE Loc(xdst[x]) \in DInst
<2> USE ONLY <1>fem, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ Loc(xdst[x]) = xd[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xbWa623J.        
  ASSUME NEW x \in Xids, PinInv, x < nx
  PROVE xr[x] \in Rq /\ xg[x] \in Gens /\ xp[x] \in PInst /\ xd[x] \in DInst
    /\ ExpInst(x) \in Inst /\ InitInst(x) \in Inst
<2> USE ONLY <1>xbWa623J, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>0. ~(x >= nx)
  BY <2>1, Sizes, SMT, Location, Design DEF SHJS, Xids, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
    /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, <2>0, Zenon, Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>3. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. QED
  BY <2>2, <2>3, Sizes, SMT, Location, Design DEF ExpInst, InitInst, PInst, DInst, Inst, NL, Sizes, Location, Design
\* T2M-END R2M1492_PdRPPP_PdBXFacts


<1>R9hBSUJveDSPKF5.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE hw[x] = "none"
<2> USE ONLY <1>R9hBSUJveDSPKF5, Sizes, Location, Design
 <2>1. K3 /\ iv[x] = "reg"
  BY <1>jXujQnapOVz1N, V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF K3, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>L7ucoeUq.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE K10'
<2> USE ONLY <1>L7ucoeUq, Sizes, Location, Design
<2>1. K10 /\ K2
 BY V21_Inv_K10, V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx,xdst,pr,pgn,pst,ptl,rg,xr,xg,xlt>>
 BY <1>zQCSTfqP4L, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A y \in Xids : y < nx /\ xdst[y] \in Pages => Loc(xdst[y]) \in DInst /\ xr[y] \in Rq
 BY <1>fem, <1>xbWa623J, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>R9hBSUJveDSPKF5, <1>ojP8Js3gjMBL8Rsn, <1>WQTYH4MdjWyXr, SMTT(5), Sizes, Location, Design DEF K10, OwnedBy, Sizes, Location, Design
\* T2M-END R2M1748_PdRPPP_PdE_PSubmit_K10

\* T2M-SCOPE R2M1749_PdRPPP_PdE_PSubmit_K13

<1>xvSeB7Y.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE K2'
<2> USE ONLY <1>xvSeB7Y, Sizes, Location, Design
<2> DEFINE Rec(y) == IF y >= nx
        THEN /\ xk[y] = "none" /\ xr[y] = 0 /\ xg[y] = 0 /\ xp[y] = 0 /\ xd[y] = 0 /\ xsrc[y] = 0 /\ xdst[y] = 0
             /\ xnt[y] = 0 /\ hw[y] = "none" /\ ~hok[y] /\ iv[y] = "none" /\ xst[y] = "none" /\ xlt[y] = 0
        ELSE /\ xk[y] = (IF Mode = "push" THEN "wr" ELSE "rd")
             /\ xr[y] \in Rq /\ xg[y] \in Gens /\ xg[y] <= gen[xr[y]]
             /\ xp[y] = hp[xr[y]][xg[y]] /\ xd[y] = hd[xr[y]][xg[y]]
             /\ xnt[y] = NTok(xr[y], xg[y]) /\ xst[y] # "none"
             /\ IF xk[y] = "wr" /\ InitPage(y) = 0 THEN xlt[y] = 0 ELSE xlt[y] \in PLens(xr[y], xg[y])   
             /\ ExpPage(y) \in Pages /\ Loc(ExpPage(y)) = ExpInst(y)
             /\ iv[y] = "none" => InitPage(y) = 0
             /\ iv[y] \notin {"none", "nopost"} => InitPage(y) # 0
             /\ (iv[y] = "nopost" /\ InitPage(y) # 0) => (xk[y] = "wr" /\ PReg)   
             /\ InitPage(y) # 0 => (InitPage(y) \in Pages /\ Loc(InitPage(y)) = InitInst(y))
<2>old. K2
 BY ONLY <1>xvSeB7Y, V21_Inv_K2, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<gen,hd,hp,nx,xk,xr,xg,xp,xd,xsrc,xdst,xnt,xlt,xst>>
 BY ONLY <1>xvSeB7Y, <1>zQCSTfqP4L, Sizes, Location, Design, SMTT(5)
<2>select. \A y \in Xids : UNCHANGED <<ExpPage(y),InitPage(y),ExpInst(y),InitInst(y)>>
 BY ONLY <2>frame, SMTT(5) DEF ExpPage, InitPage, ExpInst, InitInst
<2>indices. x \in Int /\ nx \in Int
 <3>type. CoreTypeOK => nx \in 1..(MX+1)
  BY ONLY ZenonT(5) DEF CoreTypeOK
 <3>core. CoreTypeOK
  BY ONLY <1>xvSeB7Y, V21_Inv_BaseTypeOK, Sizes, Location, Design, SMTT(5)
 <3>qed. QED BY ONLY <1>xvSeB7Y, <3>type, <3>core, SMTT(5) DEF Xids
<2>submit. x<nx /\ iv[x]="reg" /\ iv'[x]="posted"
 BY ONLY <1>xvSeB7Y, <1>jXujQnapOVz1N, <1>ojP8Js3gjMBL8Rsn, Sizes, Location, Design, SMTT(5)
<2>hardware. \A y \in Xids : y # x => UNCHANGED <<iv[y],hw[y],hok[y]>>
 BY ONLY <1>xvSeB7Y, <1>ojP8Js3gjMBL8Rsn, Sizes, Location, Design, SMTT(5)
<2>at. ASSUME NEW y \in Xids PROVE Rec(y)'
 <3>before. Rec(y)
  BY ONLY <2>old, <2>at, SMTT(5) DEF K2, Rec
 <3>other. CASE y # x
  BY ONLY <2>at, <3>other, <3>before, <2>frame, <2>select, <2>hardware, SMTT(5) DEF Rec
 <3>same. CASE y=x
  BY ONLY <2>at, <3>same, <3>before, <2>frame, <2>select, <2>indices, <2>submit, SMTT(5) DEF Rec
 <3>qed. QED BY ONLY <3>other, <3>same, SMTT(5)
<2>qed. QED BY ONLY <2>at, SMTT(5) DEF K2, Rec

\* T2M-END R2M1751_PdRPPP_PdE_PSubmit_K2

\* T2M-SCOPE R2M1752_PdRPPP_PdE_PSubmit_K4

<1>qVcme1z.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE K8'
<2> USE ONLY <1>qVcme1z, Sizes, Location, Design
<2> DEFINE Rec(a,b) == LET p == rpg[a][b]
            g == rg[a][b]
            t == Tag(b, g)
            x == rx[a][b]
        IN
        /\ IsP(a) => (ph[a][b] \in {"none", "pre", "ready", "reg", "sent", "exp", "end"} /\ ~rhit[a][b])
        /\ IsD(a) => ph[a][b] \in {"none", "wait", "rd", "run", "ovl", "end"}
        /\ ph[a][b] = "none" => (g = 0 /\ p = 0 /\ x = 0 /\ ~rhit[a][b])
        /\ ph[a][b] # "none" => (g \in Gens /\ g <= gen[b])
        /\ ph[a][b] # "none" /\ IsP(a) => (hp[b][g] = a /\ rpe[a][b] = hd[b][g])
        /\ ph[a][b] # "none" /\ IsD(a) => (hd[b][g] = a /\ rpe[a][b] = hp[b][g])
        /\ Active(a, b) => (p \in Pages /\ Loc(p) = a)
        /\ Active(a, b) /\ ~rhit[a][b] => OwnedBy(p, b, g) /\ pst[p] = "priv"
        /\ ph[a][b] = "pre" => (x = 0 /\ led[p] = {} /\ sled[p] = {t} /\ sfly[p] \subseteq {t} /\ plt[p] = 0
                                /\ (IF t \in sfly[p] THEN ptl[p] = 0 ELSE ptl[p] \in PLens(b, g)))
        /\ ph[a][b] = "ready" => (x = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(b, g))
        /\ ph[a][b] = "reg" => (Mode = "push" /\ PReg /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = b /\ xg[x] = g
                                /\ iv[x] = "reg" /\ sled[p] = {} /\ sfly[p] = {}
                                /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(b, g) /\ xlt[x] = ptl[p])
        /\ ph[a][b] = "sent" => (Mode = "push" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = b /\ xg[x] = g
                                 /\ iv[x] \in {"posted", "cqe", "failret"} /\ sled[p] = {} /\ sfly[p] = {}
                                 /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(b, g) /\ xlt[x] = ptl[p])
        /\ ph[a][b] = "exp" => (Mode = "pull" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = b /\ xg[x] = g
                                /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(b, g) /\ xlt[x] = ptl[p])
<2> DEFINE Change(a,b) == a=xp[x] /\ b=xr[x] /\ ph[a][b]="reg" /\ rg[a][b]=xg[x] /\ rx[a][b]=x
<2>old. K8
 BY ONLY <1>qVcme1z, V21_Inv_K8, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<gen,hd,hp,nx,rg,rpg,rpe,rx,rhit,ptl,sfly,plt,pst,pr,pgn,led,sled,xr,xg,xsrc,xlt>>
 BY ONLY <1>qVcme1z, <1>zQCSTfqP4L, Sizes, Location, Design, SMTT(5)
<2>support. xp[x] \in Inst /\ xr[x] \in Rq /\ Loc(xsrc[x])=xp[x] /\ iv[x]="reg" /\ iv'[x]="posted"
 BY ONLY <1>qVcme1z, <1>jXujQnapOVz1N, <1>ojP8Js3gjMBL8Rsn, <1>Ug4VwS, Sizes, Location, Design, SMTT(5)
<2>type. ph \in [Inst -> [Rq -> PhSet]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>qVcme1z, V22_T_ph, SMTT(5)

<2>phase. \A a \in Inst, b \in Rq : ph'[a][b]=IF Change(a,b) THEN "sent" ELSE ph[a][b]
 <3>effect. ph'=IF ph[xp[x]][xr[x]]="reg" /\ rg[xp[x]][xr[x]]=xg[x] /\ rx[xp[x]][xr[x]]=x THEN [ph EXCEPT ![xp[x]][xr[x]]="sent"] ELSE ph
  BY ONLY <1>qVcme1z, <1>FNMJSUwYV, Sizes, Location, Design, SMTT(5)
 <3>qed. QED BY ONLY <2>support, <2>type, <3>effect, SMTT(5) DEF Change
<2>ivFrame. \A y \in Xids : y # x => iv'[y]=iv[y]
 BY ONLY <1>qVcme1z, <1>ojP8Js3gjMBL8Rsn, Sizes, Location, Design, SMTT(5)
<2>regSlot. ASSUME NEW a \in Inst, NEW b \in Rq, ph[a][b]="reg", rx[a][b]=x
            PROVE Change(a,b)
 <3>record. Rec(a,b)
  BY ONLY <2>old, <2>regSlot, SMTT(5) DEF K8, Rec
 <3>source. xsrc[x]=rpg[a][b] /\ xr[x]=b /\ xg[x]=rg[a][b] /\ Loc(rpg[a][b])=a
  BY ONLY <3>record, <2>regSlot, SMTT(5) DEF Rec, Active
 <3>route. a=xp[x] /\ b=xr[x]
  BY ONLY <2>support, <3>source, SMTT(5)
 <3>qed. QED BY ONLY <2>regSlot, <3>source, <3>route, SMTT(5) DEF Change
<2>at. ASSUME NEW a \in Inst, NEW b \in Rq PROVE Rec(a,b)'
 <3>before. Rec(a,b)
  BY ONLY <2>old, <2>at, SMTT(5) DEF K8, Rec
 <3>changed. CASE Change(a,b)
  BY ONLY <2>at, <3>changed, <3>before, <2>frame, <2>support, <2>phase, SMTT(5) DEF Change, Rec, Active, OwnedBy
 <3>same. CASE ~Change(a,b)
  <4>iv. ASSUME ph[a][b] \in {"reg","sent"} PROVE iv'[rx[a][b]]=iv[rx[a][b]]
   <5>domain. rx[a][b] \in Xids
    BY ONLY <3>before, <4>iv, SMTT(5) DEF Rec
   <5>reg. CASE ph[a][b]="reg"
    BY ONLY <2>at, <3>same, <5>reg, <2>regSlot, <2>ivFrame, <5>domain, SMTT(5)
   <5>sent. CASE ph[a][b]="sent"
    <6>old. iv[rx[a][b]] \in {"posted","cqe","failret"}
     BY ONLY <3>before, <5>sent, SMTT(5) DEF Rec
    <6>apart. rx[a][b] # x
     BY ONLY <2>support, <6>old, SMTT(5)
    <6>qed. QED BY ONLY <2>ivFrame, <5>domain, <6>apart, SMTT(5)
   <5>qed. QED BY ONLY <4>iv, <5>reg, <5>sent, SMTT(5)
  <4>qed. QED BY ONLY <2>at, <3>same, <3>before, <2>frame, <2>phase, <4>iv, SMTT(5) DEF Rec, Active, OwnedBy
 <3>qed. QED BY ONLY <3>changed, <3>same, SMTT(5)
<2>qed. QED BY ONLY <2>at, SMTT(5) DEF K8, Rec

\* T2M-END R2M1753_PdRPPP_PdE_PSubmit_K8

\* T2M-SCOPE R2M1754_PdRPPP_PdE_PSubmit_QuarNeverMapped

<1>zol0VuNFp.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K2'
  BY ONLY <1>zol0VuNFp, Sizes, Location, Design, <1>xvSeB7Y, V21_Inv_K2 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bq7N5c5Fs.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K7'
  BY ONLY <1>bq7N5c5Fs, Sizes, Location, Design, <1>nYXmHsK, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HZkZnrM5N.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K8'
  BY ONLY <1>HZkZnrM5N, Sizes, Location, Design, <1>qVcme1z, V21_Inv_K8 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Nr5yA5ZllJ.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K10'
  BY ONLY <1>Nr5yA5ZllJ, Sizes, Location, Design, <1>L7ucoeUq, V21_Inv_K10 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zg5bDq8vE.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE S1'
  BY ONLY <1>zg5bDq8vE, Sizes, Location, Design, <1>riwin3e, V21_Inv_S1 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TX0bTgPpF.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE S6'
  BY ONLY <1>TX0bTgPpF, Sizes, Location, Design, <1>ztVeTwi, V21_Inv_S6 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cs0FiemT6QmATfG.        
 ASSUME NEW p \in SPages, B2, SFollow, spst'[p]="shared"
 PROVE spst[p]="shared" /\ UNCHANGED <<sready,sdata,swrite>>
 BY ONLY <1>cs0FiemT6QmATfG, Sizes, Location, Design, ZenonT(10), V21_SFollowStatic, V22_SFollowSharedOrigin DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GEiwvO5S4Wv9uAOYEb8qtLWYsu.        
 ASSUME PinInv, SFollow, xdst' \in [Xids -> 0..NP]
 PROVE SharedImmutable'
<2> HIDE DEF SFollow, CoreTypeOK, STypeOK
<2>old. SharedImmutable
 BY ONLY <1>GEiwvO5S4Wv9uAOYEb8qtLWYsu, V22_T_SharedImmutable, SMTT(5) DEF V22_T_SharedImmutable
<2>off. CASE ~B2
 BY ONLY <2>off, SMTT(5) DEF SharedImmutable
<2>on. CASE B2
 <3>each. ASSUME NEW p \in SPages, spst'[p]="shared"
          PROVE sready'[p] /\ sdata'[p] /\ ~swrite'[p] /\ NoWriteInto(p)'
  <4>origin. spst[p]="shared"
   BY ONLY <1>GEiwvO5S4Wv9uAOYEb8qtLWYsu, <2>on, <3>each, V22_SF_SharedOrigin, SMTT(5) DEF V22_SF_SharedOrigin
  <4>static. UNCHANGED <<sready,sdata,swrite>>
   BY ONLY <1>GEiwvO5S4Wv9uAOYEb8qtLWYsu, V22_SF_Static, SMTT(5) DEF V22_SF_Static
  <4>data. sready'[p] /\ sdata'[p] /\ ~swrite'[p]
   BY ONLY <2>old, <2>on, <3>each, <4>origin, <4>static, SMTT(5) DEF SharedImmutable
  <4>noWrite. NoWriteInto(p)'
   BY ONLY <1>GEiwvO5S4Wv9uAOYEb8qtLWYsu, <3>each, Sizes, V22_SharedNoWriteNext, SMTT(5) DEF V22_SharedNoWriteNext
  <4>qed. QED BY ONLY <4>data, <4>noWrite, SMTT(5)
 <3>qed. QED BY ONLY <2>on, <3>each, SMTT(5) DEF SharedImmutable
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

\* T2M-END R2M1824_PdRPImmutable


<1>IXEagMJyQryQes.         TypInv => RPB_Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, RPB_Types, RPB_T_gen, RPB_T_rt, RPB_T_rp, RPB_T_rd, RPB_T_hp, RPB_T_hd, RPB_T_alive, RPB_T_nfail, RPB_T_torn, RPB_T_kpin, RPB_T_kfly, RPB_T_krs, RPB_T_ph, RPB_T_rg, RPB_T_rpg, RPB_T_rpe, RPB_T_rx, RPB_T_rhit, RPB_T_pst, RPB_T_pr, RPB_T_pgn, RPB_T_plt, RPB_T_ptl, RPB_T_pvis, RPB_T_led, RPB_T_sfly, RPB_T_sled, RPB_T_prefc, RPB_T_pqp, RPB_T_xr, RPB_T_xg, RPB_T_xk, RPB_T_xp, RPB_T_xd, RPB_T_xsrc, RPB_T_xdst, RPB_T_xnt, RPB_T_hw, RPB_T_hok, RPB_T_iv, RPB_T_xst, RPB_T_xlt, RPB_T_nx, RPB_T_net, RPB_T_drep, RPB_T_crep, RPB_T_dsucc, RPB_T_gbad, Sizes, Location, Design
\* T2M-END R2M1825_PdRPBPP_PdProofBase


<1>DcNrv9aQdOAIq9.        
  ASSUME NEW x \in Xids, PSubmit(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, kfly, kpin, krs, led, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>DcNrv9aQdOAIq9, Sizes, Location, Design, Zenon DEF PSubmit, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1947_PdRPBPP_PdPSubmitFrames

\* T2M-SCOPE R2M1948_PdRPBPP_PdSubmitEffects
\* T2M-BODY R2M1948_PdRPBPP_PdSubmitEffects
\* T2M-LOCAL-VISIBILITY

<1>xyEg5zwrIh3Tz0bDo.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ x < nx /\ iv[x] = "reg" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst
        /\ xsrc[x] \in Pages /\ xdst[x] \in Pages
        /\ Loc(xsrc[x]) = xp[x] /\ Loc(xdst[x]) = xd[x]
<2> USE ONLY <1>xyEg5zwrIh3Tz0bDo, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ RPB_T_nx
  BY <1>IXEagMJyQryQes, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
<2>2. xk[x] = "wr" /\ iv[x] = "reg"
  BY SMTT(10), Sizes, Location, Design DEF PSubmit, Sizes, Location, Design
<2>3. x < nx /\ xst[x] = "posted"
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, K3, RPB_T_nx, Xids, Sizes, Location, Design
<2>4. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
         /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>5. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K2, InitPage, ExpPage, InitInst, ExpInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ksn8cHaMe8s3A.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ iv' = [iv EXCEPT ![x] = "posted"]
        /\ hw' = [hw EXCEPT ![x] = IF Torn(x) THEN "stop" ELSE "fly"]
        /\ hok' = [hok EXCEPT ![x] = FALSE]
        /\ ph' = IF ph[xp[x]][xr[x]] = "reg" /\ rg[xp[x]][xr[x]] = xg[x] /\ rx[xp[x]][xr[x]] = x
                 THEN [ph EXCEPT ![xp[x]][xr[x]] = "sent"] ELSE ph
        /\ net' = net
        /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, xst, nx, ghV>>
  BY ONLY <1>ksn8cHaMe8s3A, Sizes, Location, Design, Design, SMTT(10) DEF PSubmit, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TonhXR0tHy5rzcwWQhjQ.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ iv'[x] = "posted" /\ hok'[x] = FALSE /\ hw'[x] \in {"stop","fly"}
        /\ \A y \in Xids : y # x => iv'[y] = iv[y] /\ hw'[y] = hw[y] /\ hok'[y] = hok[y]
<2> USE ONLY <1>TonhXR0tHy5rzcwWQhjQ, Sizes, Location, Design
<2>1. RPB_T_iv /\ RPB_T_hw /\ RPB_T_hok
  BY <1>IXEagMJyQryQes, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ksn8cHaMe8s3A, SMTT(10), Sizes, Location, Design DEF RPB_T_iv, RPB_T_hw, RPB_T_hok, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fuBnQw6wCG42g5Kbq.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ \A a \in Inst, r \in Rq :
              /\ Active(a,r)' <=> Active(a,r)
              /\ (ph'[a][r] \in {"run","ovl"}) <=> (ph[a][r] \in {"run","ovl"})
              /\ (ph'[a][r] = "end") <=> (ph[a][r] = "end")
        /\ \A a \in DInst, r \in Rq : ph'[a][r] = ph[a][r]
<2> USE ONLY <1>fuBnQw6wCG42g5Kbq, Sizes, Location, Design
<2>1. RPB_T_ph /\ xp[x] \in PInst /\ xr[x] \in Rq
  BY <1>IXEagMJyQryQes, <1>xyEg5zwrIh3Tz0bDo, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ksn8cHaMe8s3A, Sizes, SMTT(10), Location, Design DEF Active, RPB_T_ph, Inst, PInst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kjiX0SOQGejm4olBu9UrmmU.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ x \in led[xsrc[x]] /\ x \in led[xdst[x]]
        /\ OwnedBy(xsrc[x],xr[x],xg[x]) /\ OwnedBy(xdst[x],xr[x],xg[x])
<2> USE ONLY <1>kjiX0SOQGejm4olBu9UrmmU, Sizes, Location, Design
<2>1. K4 /\ K5
  BY SMTT(10), V21_Inv_K4, V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x < nx /\ iv[x] = "reg" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ xsrc[x] \in Pages /\ xdst[x] \in Pages
  BY <1>xyEg5zwrIh3Tz0bDo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. x \in led[xsrc[x]] /\ x \in led[xdst[x]]
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K4, InitPage, ExpPage, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K5, Sizes, Location, Design
\* T2M-END R2M1948_PdRPBPP_PdSubmitEffects

\* T2M-SCOPE R2M1949_PdRPBPP_PdE_PSubmit_ReadOwnLanded
\* T2M-BODY R2M1949_PdRPBPP_PdE_PSubmit_ReadOwnLanded
\* T2M-LOCAL-VISIBILITY

<1>YsRNL2CGzvWL9GzCKgsduRc.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>YsRNL2CGzvWL9GzCKgsduRc, Sizes, Location, Design
<2>old. BaseSealOnlyLanded
 BY ONLY <1>YsRNL2CGzvWL9GzCKgsduRc, V21_Inv_SealOnlyLanded, Sizes, Location, Design, SMTT(5) DEF SealOnlyLanded
<2>frame. UNCHANGED <<pst,ptl,xdst>>
 BY ONLY <1>YsRNL2CGzvWL9GzCKgsduRc, <1>DcNrv9aQdOAIq9, Sizes, Location, Design, SMTT(5)
<2>dest. pst[xdst[x]] \in {"priv","drain","quar"}
 BY ONLY <1>YsRNL2CGzvWL9GzCKgsduRc, <1>kjiX0SOQGejm4olBu9UrmmU, Sizes, Location, Design, SMTT(5) DEF OwnedBy
<2>hardware. \A y \in Xids : y # x => hw'[y]=hw[y]
 BY ONLY <1>YsRNL2CGzvWL9GzCKgsduRc, <1>TonhXR0tHy5rzcwWQhjQ, Sizes, Location, Design, SMTT(5)
<2>page. ASSUME NEW p \in Pages, pst'[p]="shared"
         PROVE ptl'[p]=PS /\ NoWriteInto(p)'
 <3>before. ptl[p]=PS /\ NoWriteInto(p) /\ pst[p]="shared"
  BY ONLY <2>page, <2>old, <2>frame, SMTT(5) DEF BaseSealOnlyLanded
 <3>apart. xdst[x] # p
  BY ONLY <2>dest, <3>before, SMTT(5)
 <3>writing. ASSUME NEW y \in Xids, Writing(y)' PROVE xdst'[y] # p
  <4>same. CASE y=x
   BY ONLY <4>same, <2>frame, <3>apart, SMTT(5)
  <4>other. CASE y # x
   BY ONLY <3>writing, <4>other, <2>frame, <2>hardware, <3>before, SMTT(5) DEF NoWriteInto, Writing, InFl
  <4>qed. QED BY ONLY <4>same, <4>other, SMTT(5)
 <3>qed. QED BY ONLY <2>frame, <3>before, <3>writing, SMTT(5) DEF NoWriteInto
<2>qed. QED BY ONLY <2>page, SMTT(5) DEF BaseSealOnlyLanded

\* T2M-END R2M1951_PdRPBPP_PdE_PSubmit_SealOnlyLanded


<1>ryS0sRAuMBBetiW6R.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE RP_NoNewStop /\ RP_DReadFrame /\ UNCHANGED xdst
<2> USE ONLY <1>ryS0sRAuMBBetiW6R, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rpg \in [Inst -> [Rq -> 0..NP]] /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ryS0sRAuMBBetiW6R, V22_T_hw, V22_T_ph, V22_T_rpg, SMTT(5)

<2>2. K1 /\ K3 BY V21_Inv_K1, V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_NoNewStop, RP_DReadFrame, DInst, PInst, Inst, NL, IsP, IsD, K1, K3, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Y9g89CBnhQC1OsnSd.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>Y9g89CBnhQC1OsnSd, Sizes, Location, Design
<2>1. UNCHANGED xdst BY <1>ryS0sRAuMBBetiW6R, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xdst' \in [Xids -> 0..NP] 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Y9g89CBnhQC1OsnSd, <2>1, V22_T_xdst, SMTT(5)

<2>3. QED BY <2>2, <1>GEiwvO5S4Wv9uAOYEb8qtLWYsu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>maEVUWUccoa7oJqulMYWdI.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE SealOnlyLanded'
 BY ONLY <1>maEVUWUccoa7oJqulMYWdI, Sizes, Location, Design, <1>YsRNL2CGzvWL9GzCKgsduRc, <1>Y9g89CBnhQC1OsnSd DEF SealOnlyLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xefsaV8GL9Rd3I.         TypInv => RPN_Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, RPN_Types, RPN_T_gen, RPN_T_rt, RPN_T_rp, RPN_T_rd, RPN_T_hp, RPN_T_hd, RPN_T_alive, RPN_T_nfail, RPN_T_torn, RPN_T_kpin, RPN_T_kfly, RPN_T_krs, RPN_T_ph, RPN_T_rg, RPN_T_rpg, RPN_T_rpe, RPN_T_rx, RPN_T_rhit, RPN_T_pst, RPN_T_pr, RPN_T_pgn, RPN_T_plt, RPN_T_ptl, RPN_T_pvis, RPN_T_led, RPN_T_sfly, RPN_T_sled, RPN_T_prefc, RPN_T_pqp, RPN_T_xr, RPN_T_xg, RPN_T_xk, RPN_T_xp, RPN_T_xd, RPN_T_xsrc, RPN_T_xdst, RPN_T_xnt, RPN_T_hw, RPN_T_hok, RPN_T_iv, RPN_T_xst, RPN_T_xlt, RPN_T_nx, RPN_T_net, RPN_T_drep, RPN_T_crep, RPN_T_dsucc, RPN_T_gbad, Sizes, Location, Design
\* T2M-END R2M2084_PdRPNPP_PdProofBase


<1>ppJdK9oGIdl6oo.        
  ASSUME NEW x \in Xids, PSubmit(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, kfly, kpin, krs, led, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>ppJdK9oGIdl6oo, Sizes, Location, Design, Zenon DEF PSubmit, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M2162_PdRPNPP_PdPSubmitFrames

\* T2M-SCOPE R2M2163_PdRPNPP_PdSubmitEffects
\* T2M-BODY R2M2163_PdRPNPP_PdSubmitEffects
\* T2M-LOCAL-VISIBILITY

<1>nrLEPTtI0BUgbW5qA.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ x < nx /\ iv[x] = "reg" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst
        /\ xsrc[x] \in Pages /\ xdst[x] \in Pages
        /\ Loc(xsrc[x]) = xp[x] /\ Loc(xdst[x]) = xd[x]
<2> USE ONLY <1>nrLEPTtI0BUgbW5qA, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ RPN_T_nx
  BY <1>xefsaV8GL9Rd3I, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
<2>2. xk[x] = "wr" /\ iv[x] = "reg"
  BY SMTT(10), Sizes, Location, Design DEF PSubmit, Sizes, Location, Design
<2>3. x < nx /\ xst[x] = "posted"
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, K3, RPN_T_nx, Xids, Sizes, Location, Design
<2>4. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
         /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>5. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K2, InitPage, ExpPage, InitInst, ExpInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jBUpYDb79kS9T.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ iv' = [iv EXCEPT ![x] = "posted"]
        /\ hw' = [hw EXCEPT ![x] = IF Torn(x) THEN "stop" ELSE "fly"]
        /\ hok' = [hok EXCEPT ![x] = FALSE]
        /\ ph' = IF ph[xp[x]][xr[x]] = "reg" /\ rg[xp[x]][xr[x]] = xg[x] /\ rx[xp[x]][xr[x]] = x
                 THEN [ph EXCEPT ![xp[x]][xr[x]] = "sent"] ELSE ph
        /\ net' = net
        /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, xst, nx, ghV>>
  BY ONLY <1>jBUpYDb79kS9T, Sizes, Location, Design, Design, SMTT(10) DEF PSubmit, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rVET3Ostlk8Q7z3RND2I.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ iv'[x] = "posted" /\ hok'[x] = FALSE /\ hw'[x] \in {"stop","fly"}
        /\ \A y \in Xids : y # x => iv'[y] = iv[y] /\ hw'[y] = hw[y] /\ hok'[y] = hok[y]
<2> USE ONLY <1>rVET3Ostlk8Q7z3RND2I, Sizes, Location, Design
<2>1. RPN_T_iv /\ RPN_T_hw /\ RPN_T_hok
  BY <1>xefsaV8GL9Rd3I, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>jBUpYDb79kS9T, SMTT(10), Sizes, Location, Design DEF RPN_T_iv, RPN_T_hw, RPN_T_hok, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nOTxABiFWjkOkgsmFn0OQMh.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ x \in led[xsrc[x]] /\ x \in led[xdst[x]]
        /\ OwnedBy(xsrc[x],xr[x],xg[x]) /\ OwnedBy(xdst[x],xr[x],xg[x])
<2> USE ONLY <1>nOTxABiFWjkOkgsmFn0OQMh, Sizes, Location, Design
<2>1. K4 /\ K5
  BY SMTT(10), V21_Inv_K4, V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x < nx /\ iv[x] = "reg" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ xsrc[x] \in Pages /\ xdst[x] \in Pages
  BY <1>nrLEPTtI0BUgbW5qA, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. x \in led[xsrc[x]] /\ x \in led[xdst[x]]
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K4, InitPage, ExpPage, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K5, Sizes, Location, Design
\* T2M-END R2M2163_PdRPNPP_PdSubmitEffects


<1>RQzK4EdssPv1WQX4YpzG20.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE RPNS_TransportNoStray'
<2> USE ONLY <1>RQzK4EdssPv1WQX4YpzG20, Sizes, Location, Design
 <2>1. RPNS_TransportNoStray
  BY V21_Inv_BaseSafety, V21_Inv_NoStrayAccess, V21_Inv_Safety, Sizes, Location, Design DEF Safety, BaseSafety, NoStrayAccess, RPNS_TransportNoStray, Sizes, Location, Design
 <2>2. UNCHANGED <<kfly,krs,pst,pr,pgn,sfly,xdst,xsrc,xr,xg>>
  BY <1>ppJdK9oGIdl6oo, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. Held(xdst[x],x) /\ Held(xsrc[x],x)
  BY <1>nrLEPTtI0BUgbW5qA, <1>nOTxABiFWjkOkgsmFn0OQMh, SMTT(5), Sizes, Location, Design DEF Held, OwnedBy, Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, <1>rVET3Ostlk8Q7z3RND2I, SMTT(5), Sizes, Location, Design DEF RPNS_TransportNoStray, Held, KHeld, Writing, InFl, Sizes, Location, Design
\* T2M-END R2M2165_PdRPNPP_PdE_PSubmit_NoStrayAccess


<1>tbzzV8oWoWJMFkqLQw0lx.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE NoStrayAccess'
<2> USE ONLY <1>tbzzV8oWoWJMFkqLQw0lx, Sizes, Location, Design
<2>1. RPNS_TransportNoStray' BY <1>RQzK4EdssPv1WQX4YpzG20, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. NoFreeUnderRead' BY <1>EnCo0dvNbTupDX, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<kfly,kpin,krs>> BY <1>RmqxXKvLmobMD5EYqTC, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. K14 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF NoStrayAccess, RPNS_TransportNoStray, NoFreeUnderRead, K14, Sizes, Location, Design
\* T2M-END R2M2166_PdRPStray_PSubmit


<1> QED BY <1>tbzzV8oWoWJMFkqLQw0lx, <1>U3luoQVx9k51Y690vgeedA, <1>r5N3rfwedne, <1>EJr8hwwRSdk4SogIdl58rTi, <1>maEVUWUccoa7oJqulMYWdI, <1>Nr5yA5ZllJ, <1>bq7N5c5Fs, <1>zg5bDq8vE, <1>TX0bTgPpF, <1>zol0VuNFp, <1>HZkZnrM5N, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF P_PagePoolsDisjoint, Part_PSubmit_02_01, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K10, V21_Inv_K14, V21_Inv_K15, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_S1, V21_Inv_S6, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rg, V22_T_rpg, V22_T_sfly, V22_T_sled, V22_T_xdst
====
