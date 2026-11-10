---- MODULE PdActionSlice_PRecvReq_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_d3dd8b4090431094, PdFinalAuxType_8b9ab1a2ae146b89, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PRecvReq_01

\* Complete original body PdFinalPart_PRecvReq_02_02 SHA 511812aa55ef457f29ab4d6d71eb94159a8c18dd3e1bbda5a5f6e15c770392b7
HIDE DEF AuxType_8b9ab1a2ae146b89, AuxType_d3dd8b4090431094, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_PRecvReq_01_01, Part_PRecvReq_01_02, Part_PRecvReq_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K11, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K5, V21_Inv_K6, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_PRecvReq_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE (SI7)' /\ (P_SI2)' /\ (NoEvictUnderRDMA)' /\ (P_SI4)'
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

           ERecv(i,r,m,p) ==
            /\ IsP(i) /\ m \in net /\ m.t = "req" /\ m.to = i /\ m.r = r /\ NewGen(i,r,m.g)
            /\ m.g \in Gens /\ m.g <= gen[r] /\ hp[r][m.g] = i /\ hd[r][m.g] = m.pe /\ m.pe \in DInst
            /\ p \in {0} \cup Pages
            /\ (p # 0 => Loc(p) = i /\ pst[p] = "free")
            /\ rg' = [rg EXCEPT ![i][r] = m.g] /\ rpe' = [rpe EXCEPT ![i][r] = m.pe]
            /\ rx' = [rx EXCEPT ![i][r] = 0] /\ rpg' = [rpg EXCEPT ![i][r] = p]
            /\ ph' = [ph EXCEPT ![i][r] = IF p=0 THEN "end" ELSE "pre"]
            /\ IF p=0 THEN UNCHANGED <<pst,pr,pgn,plt,ptl,pvis,sfly,sled>>
               ELSE /\ pst' = [pst EXCEPT ![p] = "priv"] /\ pr' = [pr EXCEPT ![p] = r]
                    /\ pgn' = [pgn EXCEPT ![p] = m.g] /\ plt' = [plt EXCEPT ![p] = 0]
                    /\ ptl' = [ptl EXCEPT ![p] = 0] /\ pvis' = [pvis EXCEPT ![p] = FALSE]
                    /\ sfly' = [sfly EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
                    /\ sled' = [sled EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
            /\ UNCHANGED <<led,prefc,pqp>>

           \* T2M-LOCAL-VISIBILITY

           RP_RecordReady == B2 => \A i \in PInst,r \in Rq :
            ph'[i][r] \in {"reg","sent","exp"} => rg'[i][r]=rg[i][r] /\ SSendReady(i,r)


           RP_NoneFrame == \A i \in PInst,r \in Rq : ph'[i][r]="none" => ph[i][r]="none" /\ rg'[i][r]=rg[i][r]

           \* T2M-LOCAL-VISIBILITY

           RP_RegPrelude == \A x \in Xids : iv'[x]="reg" =>
            xk[x]="wr" /\ (RP_Posted(x) \/ (iv[x]="reg" /\ xsrc'[x]=xsrc[x]))


           RP_RegSourceSafe == \A x \in Xids : iv'[x]="reg" => xsrc'[x] \in Pages /\ pst'[xsrc'[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

           RP2_TransportFrame == UNCHANGED <<xsrc,xr,xg,xp,xk,xst,nx>>


           RP2_EntryProgress == \A x \in Xids : iv[x] \in {"reg","posted","failret"} => iv'[x] \in {"reg","posted","failret","cqe","nopost"}


           RP2_HardwareProgress ==
            /\ \A x \in Xids : hw'[x]="fly" => (hw[x]="fly" \/ iv[x]="reg") /\ ~RP_Close(x)
            /\ \A x \in Xids : hw'[x] \in {"issued","stop"} => hw'[x]=hw[x]

           \* T2M-LOCAL-VISIBILITY

           RP_QSnapshot == \A h \in squar : h[2] \in xsrcS[h[1]]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_NewFlyFromReg, RP_SharedSend, RP_RecordProgress, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, ERecv, RP_RecordReady, RP_NoneFrame, RP_RegPrelude, RP_RegSourceSafe, RP2_TransportFrame, RP2_EntryProgress, RP2_HardwareProgress, RP_QSnapshot

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


<1>WFyZkq65kAiKpZ9b8x6O.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE UNCHANGED <<xsrc,xr,xg>> /\ RP_NewFlyFromReg
<2>frame. UNCHANGED <<hw,xsrc,xr,xg>>
 BY ONLY <1>WFyZkq65kAiKpZ9b8x6O, ZenonT(5) DEF PRecvReq, xV
<2>qed. QED BY ONLY <2>frame, SMTT(5) DEF RP_NewFlyFromReg

\* T2M-LOCAL-VISIBILITY

<1>NdG9cKg51Dm3YBSxUh8Ho.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE NoEvictUnderRDMA' /\ RP_SharedSend'
 BY ONLY <1>NdG9cKg51Dm3YBSxUh8Ho, Sizes, Location, Design, <1>WFyZkq65kAiKpZ9b8x6O, <1>fCaVnnRiNeSrXN4lcQ3A DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IjtVdU89wqT6opuXepmNpWBcY.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>IjtVdU89wqT6opuXepmNpWBcY, Sizes, Location, Design, <1>NdG9cKg51Dm3YBSxUh8Ho DEF Sizes, Location, Design
\* T2M-END R2M1401_PdRPAccess_PRecvReq


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


<1>R3JjhdS5cuEMeUrocTJORt9.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>R3JjhdS5cuEMeUrocTJORt9, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>R3JjhdS5cuEMeUrocTJORt9, V22_T_ph, V22_T_rg, SMTT(5)

<2>15. K8 /\ K12
 BY ONLY <1>R3JjhdS5cuEMeUrocTJORt9, V21_Inv_K8, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>2. QED
 <3>fxMessage. PICK m \in net :
   /\ m.t="req" /\ NewGen(i,r,m.g)
   /\ rg'=[rg EXCEPT ![i][r]=m.g]
   /\ (ph'=[ph EXCEPT ![i][r]="pre"] \/ ph'=[ph EXCEPT ![i][r]="end"])
  BY ONLY <1>R3JjhdS5cuEMeUrocTJORt9, ZenonT(5) DEF PRecvReq
 <3>fxMsgType. \A z \in net : z.t # "hello" => z.g \in Gens
  BY ONLY <2>15, ZenonT(5) DEF K12
 <3>fxGeneration. m.g \in Gens
  BY ONLY <3>fxMessage, <3>fxMsgType, SMTT(5)
 <3>fxFresh. ph[i][r]="none" => rg[i][r]=0
  BY ONLY <2>15, ZenonT(5) DEF K8
 <3>fxOldType. rg[i][r] \in Int
  BY ONLY <2>1, SMTT(5)
 <3>fxChanged. m.g # rg[i][r]
  BY ONLY <3>fxMessage, <3>fxGeneration, <3>fxFresh, <3>fxOldType, SMTT(5) DEF NewGen, Gens
 <3>fxCurrent. rg'[i][r]=m.g
  BY ONLY <2>1, <3>fxMessage, SMTT(5)
 <3>fxDomain. PInst \subseteq Inst
  BY ONLY Sizes, SMTT(5) DEF PInst, Inst, NL, Sizes
 <3>fxLocal. ASSUME NEW j \in PInst, NEW s \in Rq, Active(j,s)', rg'[j][s]=rg[j][s]
             PROVE Active(j,s)
  <4>fxSame. CASE j=i /\ s=r
   BY ONLY <4>fxSame, <3>fxLocal, <3>fxChanged, <3>fxCurrent, SMTT(5)
  <4>fxOther. CASE ~(j=i /\ s=r)
   <5>fxIndex. j \in Inst BY ONLY <3>fxDomain, <3>fxLocal, SMTT(5)
   <5>fxFrame. ph'[j][s]=ph[j][s]
    BY ONLY <2>1, <3>fxMessage, <3>fxLocal, <4>fxOther, <5>fxIndex, SMTT(5)
   <5>fxDone. QED BY ONLY <3>fxLocal, <5>fxFrame, SMTT(5) DEF Active
  <4>fxDone. QED BY ONLY <4>fxSame, <4>fxOther, SMTT(5)
 <3>fxDone. QED BY ONLY <3>fxLocal, SMTT(5) DEF RP_RecordProgress

\* T2M-LOCAL-VISIBILITY

<1>hh7JexhgpUjOECdkQjF1.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE HitIdentity'
 BY ONLY <1>hh7JexhgpUjOECdkQjF1, Sizes, Location, Design, <1>R3JjhdS5cuEMeUrocTJORt9, <1>UbRyVd7pIbH8AblyNEO DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>woEZGzt7yjb.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PRecvReq(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, pqp, prefc, rd, rhit, rp, rt, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>woEZGzt7yjb, Sizes, Location, Design, Zenon DEF PRecvReq, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1687_PdRPPP_PdPRecvReqFrames

\* T2M-SCOPE R2M1688_PdRPPP_PdCell_PRecvReq_GenFiltered
\* T2M-BODY R2M1688_PdRPPP_PdCell_PRecvReq_GenFiltered
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

<1>xhMq4f9E.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE \E m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p)
<2> USE ONLY <1>xhMq4f9E, Sizes, Location, Design
 <2>1. K1 /\ K12
  BY V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. PICK m \in net : m.t = "req" /\ m.to = i /\ m.r = r /\ NewGen(i,r,m.g)
    /\ rg' = [rg EXCEPT ![i][r] = m.g] /\ rpe' = [rpe EXCEPT ![i][r] = m.pe]
    /\ rx' = [rx EXCEPT ![i][r] = 0]
    /\ (\E p \in {0} \cup Pages :
         /\ (p # 0 => Loc(p) = i /\ pst[p] = "free")
         /\ rpg' = [rpg EXCEPT ![i][r] = p]
         /\ ph' = [ph EXCEPT ![i][r] = IF p=0 THEN "end" ELSE "pre"]
         /\ IF p=0 THEN UNCHANGED <<pst,pr,pgn,plt,ptl,pvis,sfly,sled>>
            ELSE /\ pst' = [pst EXCEPT ![p] = "priv"] /\ pr' = [pr EXCEPT ![p] = r]
                 /\ pgn' = [pgn EXCEPT ![p] = m.g] /\ plt' = [plt EXCEPT ![p] = 0]
                 /\ ptl' = [ptl EXCEPT ![p] = 0] /\ pvis' = [pvis EXCEPT ![p] = FALSE]
                 /\ sfly' = [sfly EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
                 /\ sled' = [sled EXCEPT ![p] = @ \cup {Tag(r,m.g)}])
  BY Design, Sizes, SMTT(5), Location DEF PRecvReq, Pages, Sizes, Location, Design
 <2>3. IsP(i) /\ UNCHANGED <<led,prefc,pqp>>
  BY Design, SMTT(5), Sizes, Location DEF PRecvReq, Sizes, Location, Design
 <2>4. m.g \in Gens /\ m.g <= gen[r] /\ hp[r][m.g] = i /\ hd[r][m.g] = m.pe /\ m.pe \in DInst
  BY <2>1, <2>2, <2>3, Sizes, SMTT(5), Location, Design DEF K12, K1, IsP, PInst, DInst, NL, Sizes, Location, Design
 <2>5. PICK p \in {0} \cup Pages :
         /\ (p # 0 => Loc(p) = i /\ pst[p] = "free")
         /\ rpg' = [rpg EXCEPT ![i][r] = p]
         /\ ph' = [ph EXCEPT ![i][r] = IF p=0 THEN "end" ELSE "pre"]
         /\ IF p=0 THEN UNCHANGED <<pst,pr,pgn,plt,ptl,pvis,sfly,sled>>
            ELSE /\ pst' = [pst EXCEPT ![p] = "priv"] /\ pr' = [pr EXCEPT ![p] = r]
                 /\ pgn' = [pgn EXCEPT ![p] = m.g] /\ plt' = [plt EXCEPT ![p] = 0]
                 /\ ptl' = [ptl EXCEPT ![p] = 0] /\ pvis' = [pvis EXCEPT ![p] = FALSE]
                 /\ sfly' = [sfly EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
                 /\ sled' = [sled EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
  BY ONLY <2>2, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <2>6. ERecv(i,r,m,p)
  BY ONLY <2>2, <2>3, <2>4, <2>5, SMTT(20), Sizes, Location, Design DEF ERecv, Sizes, Location, Design
 <2>7. \E q \in {0} \cup Pages : ERecv(i,r,m,q)
  BY ONLY <2>5, <2>6, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <2>8. QED BY ONLY <2>2, <2>7, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1692_PdRPPP_PdERecvFacts


<1>LEhnC1gxPKIaF.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE UNCHANGED led
 BY ONLY <1>LEhnC1gxPKIaF, Sizes, Location, Design, <1>xhMq4f9E, SMTT(5) DEF ERecv, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CsxO3y.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE /\ IsP(i) /\ m.g \in Gens /\ m.g <= gen[r] /\ hp[r][m.g] = i /\ hd[r][m.g] = m.pe /\ m.pe \in DInst
       /\ p \in {0} \cup Pages /\ (p # 0 => Loc(p)=i /\ pst[p]="free")
 BY ONLY <1>CsxO3y, Sizes, Location, Design DEF ERecv, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EGNgd5.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : pst'[q] = IF p=q THEN "priv" ELSE pst[q]
<2> USE ONLY <1>EGNgd5, Sizes, Location, Design
 <2>1. OyyWS /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF ERecv, K7, OyyWS, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jj0T0.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : pr'[q] = IF p=q THEN r ELSE pr[q]
<2> USE ONLY <1>jj0T0, Sizes, Location, Design
 <2>1. IwCp /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF ERecv, K7, IwCp, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>B2nFk5.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : pgn'[q] = IF p=q THEN m.g ELSE pgn[q]
<2> USE ONLY <1>B2nFk5, Sizes, Location, Design
 <2>1. vS7em /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF ERecv, K7, vS7em, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xFFcTA.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : plt'[q] = IF p=q THEN 0 ELSE plt[q]
<2> USE ONLY <1>xFFcTA, Sizes, Location, Design
 <2>1. bFwlN /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF ERecv, K7, bFwlN, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jn3dmy.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : ptl'[q] = IF p=q THEN 0 ELSE ptl[q]
<2> USE ONLY <1>jn3dmy, Sizes, Location, Design
 <2>1. rO4YE /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF ERecv, K7, rO4YE, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CgKHZ5q.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : pvis'[q] = IF p=q THEN FALSE ELSE pvis[q]
<2> USE ONLY <1>CgKHZ5q, Sizes, Location, Design
 <2>1. Bq5Edl /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF ERecv, K7, Bq5Edl, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ttRRTqL.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : sfly'[q] = IF p=q THEN {Tag(r,m.g)} ELSE sfly[q]
<2> USE ONLY <1>ttRRTqL, Sizes, Location, Design
 <2>1. Xc_ngV /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. p # 0 => p \in Pages /\ sfly[p] = {}
  BY <2>1, SMTT(5), Sizes, Location, Design DEF ERecv, K7, Sizes, Location, Design
 <2>3. sfly' = IF p=0 THEN sfly ELSE [sfly EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
  BY SMTT(5), Sizes, Location, Design DEF ERecv, Sizes, Location, Design
 <2>4. SUFFICES ASSUME NEW q \in Pages PROVE sfly'[q] = IF p=q THEN {Tag(r,m.g)} ELSE sfly[q]
  BY SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. q # 0 BY Sizes, SMTT(5), Location, Design DEF Pages, Sizes, Location, Design
 <2>6. CASE p=0
  BY <2>3, <2>4, <2>5, <2>6, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>7. CASE p # 0
  <3>1. sfly'[q] = IF p=q THEN sfly[q] \cup {Tag(r,m.g)} ELSE sfly[q]
   BY <2>1, <2>3, <2>4, <2>7, SMTT(5), Sizes, Location, Design DEF Xc_ngV, Sizes, Location, Design
  <3>2. sfly[p] \cup {Tag(r,m.g)} = {Tag(r,m.g)}
   BY <2>2, <2>7, ZenonT(5), Sizes, Location, Design DEF Sizes, Location, Design
  <3>3. QED BY <3>1, <3>2, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>8. QED BY <2>6, <2>7, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>claSLdb.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : sled'[q] = IF p=q THEN {Tag(r,m.g)} ELSE sled[q]
<2> USE ONLY <1>claSLdb, Sizes, Location, Design
 <2>1. h9WLgd /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. p # 0 => p \in Pages /\ sled[p] = {}
  BY <2>1, SMTT(5), Sizes, Location, Design DEF ERecv, K7, Sizes, Location, Design
 <2>3. sled' = IF p=0 THEN sled ELSE [sled EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
  BY SMTT(5), Sizes, Location, Design DEF ERecv, Sizes, Location, Design
 <2>4. SUFFICES ASSUME NEW q \in Pages PROVE sled'[q] = IF p=q THEN {Tag(r,m.g)} ELSE sled[q]
  BY SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. q # 0 BY Sizes, SMTT(5), Location, Design DEF Pages, Sizes, Location, Design
 <2>6. CASE p=0
  BY <2>3, <2>4, <2>5, <2>6, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>7. CASE p # 0
  <3>1. sled'[q] = IF p=q THEN sled[q] \cup {Tag(r,m.g)} ELSE sled[q]
   BY <2>1, <2>3, <2>4, <2>7, SMTT(5), Sizes, Location, Design DEF h9WLgd, Sizes, Location, Design
  <3>2. sled[p] \cup {Tag(r,m.g)} = {Tag(r,m.g)}
   BY <2>2, <2>7, ZenonT(5), Sizes, Location, Design DEF Sizes, Location, Design
  <3>3. QED BY <3>1, <3>2, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>8. QED BY <2>6, <2>7, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Gn6NVDusGMlYg.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE /\ \A j \in Inst, u \in Rq :
           /\ ph'[j][u] = IF j=i /\ u=r THEN (IF p=0 THEN "end" ELSE "pre") ELSE ph[j][u]
           /\ rg'[j][u] = IF j=i /\ u=r THEN m.g ELSE rg[j][u]
           /\ rpg'[j][u] = IF j=i /\ u=r THEN p ELSE rpg[j][u]
           /\ rx'[j][u] = IF j=i /\ u=r THEN 0 ELSE rx[j][u]
           /\ rpe'[j][u] = IF j=i /\ u=r THEN m.pe ELSE rpe[j][u]
           /\ (ph'[j][u] \in {"run","ovl"} <=> ph[j][u] \in {"run","ovl"})
       /\ ~Active(i,r) /\ (ph[i][r] # "none" => m.g > rg[i][r])
<2> USE ONLY <1>Gn6NVDusGMlYg, Sizes, Location, Design
 <2>1. AydA /\ nNeM /\ q1Ohy /\ QC9Q /\ E1MnW BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, SMTT(5), Sizes, Location DEF ERecv, AydA, nNeM, q1Ohy, QC9Q, E1MnW, NewGen, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uKlEE3iBA.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : pst[q] # "free" => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],ptl[q],pvis[q],sfly[q],sled[q]>>
 BY ONLY <1>uKlEE3iBA, Sizes, Location, Design, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>CgKHZ5q, <1>ttRRTqL, <1>claSLdb, Sizes, SMTT(5) DEF ERecv, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mTGbJEan.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE /\ \A j \in DInst, u \in Rq : UNCHANGED <<ph[j][u],rg[j][u],rpg[j][u],rx[j][u],rpe[j][u]>>
       /\ \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],ptl[q],pvis[q],sfly[q],sled[q]>>
<2> USE ONLY <1>mTGbJEan, Sizes, Location, Design
 <2>1. \A j \in DInst : j \in Inst /\ j # i
  BY <1>CsxO3y, Sizes, SMTT(5), Location, Design DEF IsP, Inst, PInst, DInst, NL, Sizes, Location, Design
 <2>2. \A j \in DInst, u \in Rq : UNCHANGED <<ph[j][u],rg[j][u],rpg[j][u],rx[j][u],rpe[j][u]>>
  BY <2>1, <1>Gn6NVDusGMlYg, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. \A q \in Pages : IsD(Loc(q)) => q # p
  BY <1>CsxO3y, Sizes, SMTT(5), Location, Design DEF IsP, IsD, Inst, PInst, DInst, NL, Pages, Sizes, Location, Design
 <2>4. QED BY <2>2, <2>3, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>CgKHZ5q, <1>ttRRTqL, <1>claSLdb, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aYuEoL7oM.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE /\ \A q \in Pages : UNCHANGED <<NHits(q),KPinned(q),GrownP(q)>>
       /\ \A j \in Inst, u \in Rq : j # i \/ u # r => UNCHANGED Active(j,u)
<2> USE ONLY <1>aYuEoL7oM, Sizes, Location, Design
 <2>1. UNCHANGED <<kpin,krs,rhit>> BY <1>woEZGzt7yjb, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. \A q \in Pages :
 {u \in Rq : ph'[Loc(q)][u] \in {"run","ovl"} /\ rhit'[Loc(q)][u] /\ rpg'[Loc(q)][u] = q}
 = {u \in Rq : ph[Loc(q)][u] \in {"run","ovl"} /\ rhit[Loc(q)][u] /\ rpg[Loc(q)][u] = q}
 BY <2>1, <1>Gn6NVDusGMlYg, <1>jc4Pk2myFy, SMTT(5), Sizes, Location, Design DEF KPages, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>mTGbJEan, <1>Gn6NVDusGMlYg, <1>jc4Pk2myFy, <1>yGU8fpsp8, SMTT(5), Sizes, Location, Design DEF NHits, KPinned, GrownP, Active, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fzKBn1ys.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE K4'
<2> USE ONLY <1>fzKBn1ys, Sizes, Location, Design
<2>1. K4 /\ K2 /\ K7 /\ c02OO /\ dcfPK /\ SHJS /\ vS7em /\ AydA /\ bFwlN /\ IwCp /\ OyyWS /\ rO4YE /\ Bq5Edl /\ nNeM /\ E1MnW /\ q1Ohy /\ QC9Q /\ Xc_ngV /\ h9WLgd
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K4, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p)
 BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>woEZGzt7yjb, Design, Sizes, Location, SMTT(5) DEF Active, ERecv, ExpInst, ExpPage, GrownP, InitInst, InitPage, IsD, K2, K4, K7, KSlots, Maps, NewGen, c02OO, dcfPK, SHJS, vS7em, AydA, bFwlN, IwCp, OyyWS, rO4YE, Bq5Edl, nNeM, E1MnW, q1Ohy, QC9Q, Xc_ngV, h9WLgd, Tag, instV, kV, rtV, xV, Sizes, Location, Design
\* T2M-END R2M1699_PdRPPP_PdE_PRecvReq_K4

\* T2M-SCOPE R2M1700_PdRPPP_PdE_PRecvReq_K5

<1>Quna5zGUcisbDY7.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE QuarNoReg'
<2> USE ONLY <1>Quna5zGUcisbDY7, Sizes, Location, Design
<2>1. QuarNoReg /\ OyyWS
 BY <1>UwwC5LVwQr, V21_Inv_KStruct, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p) BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<iv,led>> BY <1>woEZGzt7yjb, <1>LEhnC1gxPKIaF, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
 BY <2>1, <2>2, <2>3, <1>mTGbJEan, <1>uKlEE3iBA, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, <1>EGNgd5, Sizes, Location, SMTT(5), Design DEF DInst, Gens, Inst, IsD, IsP, NL, NewGen, PInst, QuarNoReg, OyyWS, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1706_PdRPPP_PdE_PRecvReq_QuarNoReg

\* T2M-SCOPE R2M1707_PdRPPP_PdE_PRecvReq_S1

<1>gPFIsYahWd.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE K4'
  BY ONLY <1>gPFIsYahWd, Sizes, Location, Design, <1>fzKBn1ys, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NWvDoQB8FbiB42ksJ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>NWvDoQB8FbiB42ksJ, Sizes, Location, Design, <1>Quna5zGUcisbDY7, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1710_PdRPPdPAgg_PRecvReq


<1>SV01u8tSKbSo7E3riiUl2p.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE UNCHANGED gen /\ RP_RecordReady /\ RP_NoneFrame
<2> USE ONLY <1>SV01u8tSKbSo7E3riiUl2p, Sizes, Location, Design
<2>1. B2 => \A j \in PInst,u \in Rq : ph[j][u] \in {"reg","sent","exp"} => SSendReady(j,u)
 BY V21_Inv_P_SI1, Sizes, Location, Design DEF P_SI1, SI1, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>SV01u8tSKbSo7E3riiUl2p, V22_T_ph, V22_T_rg, SMTT(5)

<2>15. K8 /\ K12 BY V21_Inv_K12, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <2>15, Design, Sizes, SMTT(10), Location DEF RP_RecordReady, RP_NoneFrame, PInst, Inst, NL, EvidenceAt, NewGen, PEnd, PRecvReq, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>HmdObJJ7R9s7rrXrzzk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE RP_RegPrelude
<2> USE ONLY <1>HmdObJJ7R9s7rrXrzzk, Sizes, Location, Design
<2>1. K3
 BY ONLY <1>HmdObJJ7R9s7rrXrzzk, V21_Inv_K3, Sizes, Location, Design, SMTT(5)
<2>2. UNCHANGED xsrc /\ (\A y \in Xids : iv'[y]="reg" => iv[y]="reg")
 BY ONLY <1>HmdObJJ7R9s7rrXrzzk, SMTT(10) DEF PRecvReq, xV
<2>3. \A y \in Xids : iv'[y]="reg" => xk[y]="wr" /\ iv[y]="reg" /\ xsrc'[y]=xsrc[y]
 BY ONLY <2>1, <2>2, SMTT(5) DEF K3
<2>4. QED BY ONLY <2>3, SMTT(5) DEF RP_RegPrelude

\* T2M-LOCAL-VISIBILITY

<1>AFFZ159utVSb3A.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE K1'
<2> USE ONLY <1>AFFZ159utVSb3A, Sizes, Location, Design
<2>1. K1 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K1, EvidenceAt, NewGen, PEnd, PRecvReq, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fZlCHbnDPfNmuD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE K2'
<2> USE ONLY <1>fZlCHbnDPfNmuD, Sizes, Location, Design
<2>1. K2 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K2, InitPage, ExpPage, InitInst, ExpInst, EvidenceAt, NewGen, PEnd, PRecvReq, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pnorqu99Tv1yL2.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE K3'
<2> USE ONLY <1>pnorqu99Tv1yL2, Sizes, Location, Design
<2>1. K3 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K3, CqeHw, InFl, EvidenceAt, NewGen, PEnd, PRecvReq, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RupfMOPwZdQ4te.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE K4'
 BY ONLY <1>RupfMOPwZdQ4te, Sizes, Location, Design, <1>gPFIsYahWd DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CxwWoxx2nxEjfggSgGodN.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>CxwWoxx2nxEjfggSgGodN, Sizes, Location, Design, <1>NWvDoQB8FbiB42ksJ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vNHwf1yTaBr4Hs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE nx' \in 1..(MX+1)
<2> USE ONLY <1>vNHwf1yTaBr4Hs, Sizes, Location, Design
<2>1. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>vNHwf1yTaBr4Hs, V22_T_nx, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF Xids, EvidenceAt, NewGen, PEnd, PRecvReq, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vI9VFKlAHGC4.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE SI7'
<2> USE ONLY <1>vI9VFKlAHGC4, Sizes, Location, Design
<2>1. RP_RegSourceSafe BY <1>AFFZ159utVSb3A, <1>fZlCHbnDPfNmuD, <1>pnorqu99Tv1yL2, <1>RupfMOPwZdQ4te, <1>CxwWoxx2nxEjfggSgGodN, <1>vNHwf1yTaBr4Hs, <1>NU8zGD7bQ5u9BXIjl, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>HmdObJJ7R9s7rrXrzzk, <1>KvDgRwgd9SE, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1927_PdRPSI7_PRecvReq


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


<1>kaxPbrcWGWaAEeuTdIoGvPt3r3Otk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE RP2_TransportFrame /\ RP2_EntryProgress /\ RP2_HardwareProgress
<2> USE ONLY <1>kaxPbrcWGWaAEeuTdIoGvPt3r3Otk, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","failret","cqe","nopost"}]
       /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>kaxPbrcWGWaAEeuTdIoGvPt3r3Otk, V22_T_hw, V22_T_iv, SMTT(5)

<2>2. \A y \in Xids :
       /\ (hw[y]="fly" => xst[y]="posted" /\ iv[y] \in {"posted","failret"})
       /\ (iv[y]="reg" => hw[y]="none" /\ xk[y]="wr" /\ xst[y]="posted")
 BY SMTT(10), V21_Inv_K3, Sizes, Location, Design DEF K3, InFl, Sizes, Location, Design
<2>3. RP2_TransportFrame
 BY Design, ZenonT(10), Sizes, Location DEF RP2_TransportFrame, EvidenceAt, NewGen, PEnd, PRecvReq, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. RP2_EntryProgress
 BY <2>1, Design, SMTT(10), Sizes, Location DEF RP2_EntryProgress, EvidenceAt, NewGen, PEnd, PRecvReq, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>5. RP2_HardwareProgress
 BY <2>1, <2>2, <2>3, Design, SMTT(10), Sizes, Location DEF RP2_HardwareProgress, RP_Close, RP2_TransportFrame, Torn, EvidenceAt, NewGen, PEnd, PRecvReq, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>6. QED BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xrD1SEWaGz9Fb.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE P_SI4'
 BY ONLY <1>xrD1SEWaGz9Fb, Sizes, Location, Design, <1>kaxPbrcWGWaAEeuTdIoGvPt3r3Otk, <1>CZs0zteS9nPA DEF Sizes, Location, Design
\* T2M-END R2M1987_PdRPR2Transport_PRecvReq


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


<1>Yj3agFWXldrf.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE P_SI2'
 BY ONLY <1>Yj3agFWXldrf, Sizes, Location, Design, <1>SV01u8tSKbSo7E3riiUl2p, <1>hh7JexhgpUjOECdkQjF1, <1>NdG9cKg51Dm3YBSxUh8Ho, <1>WFyZkq65kAiKpZ9b8x6O, <1>AnajBeZS7htcLkTpZ8C91mxOHTa, <1>jNTupquvAyD DEF Sizes, Location, Design
\* T2M-END R2M2076_PdRPSI2_PRecvReq


<1> QED BY <1>vI9VFKlAHGC4, <1>Yj3agFWXldrf, <1>IjtVdU89wqT6opuXepmNpWBcY, <1>xrD1SEWaGz9Fb, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PRecvReq_03_01 SHA e14a70628f5d7511e6d15b26b8fd163137609fe6041e472443062d021d22858d
USE DEF P_PagePoolsDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V22_SF_MapPoint, V22_SF_SharedOrigin, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rpgS, V22_T_sfly, V22_T_sled, V22_T_xdst
HIDE DEF Part_PRecvReq_02_02, V21_Inv_HitIdentity, V21_Inv_K3, V21_Inv_K4, V21_Inv_NoEvictUnderRDMA, V21_Inv_PrefcMatchesHolders, V21_Inv_SI7, V21_Inv_SharedImmutable, V21_SFollowOff, V22_T_iv, V22_T_nx, V22_T_xsrcP, V22_T_xsrcS
THEOREM Part_PRecvReq_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE (K7)' /\ (K10)' /\ (K13)' /\ (K16)' /\ (QuarNoReg)' /\ (KReadIntegrity)' /\ (SealOnlyLanded)' /\ (P_SI6)'
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


           ERecv(i,r,m,p) ==
            /\ IsP(i) /\ m \in net /\ m.t = "req" /\ m.to = i /\ m.r = r /\ NewGen(i,r,m.g)
            /\ m.g \in Gens /\ m.g <= gen[r] /\ hp[r][m.g] = i /\ hd[r][m.g] = m.pe /\ m.pe \in DInst
            /\ p \in {0} \cup Pages
            /\ (p # 0 => Loc(p) = i /\ pst[p] = "free")
            /\ rg' = [rg EXCEPT ![i][r] = m.g] /\ rpe' = [rpe EXCEPT ![i][r] = m.pe]
            /\ rx' = [rx EXCEPT ![i][r] = 0] /\ rpg' = [rpg EXCEPT ![i][r] = p]
            /\ ph' = [ph EXCEPT ![i][r] = IF p=0 THEN "end" ELSE "pre"]
            /\ IF p=0 THEN UNCHANGED <<pst,pr,pgn,plt,ptl,pvis,sfly,sled>>
               ELSE /\ pst' = [pst EXCEPT ![p] = "priv"] /\ pr' = [pr EXCEPT ![p] = r]
                    /\ pgn' = [pgn EXCEPT ![p] = m.g] /\ plt' = [plt EXCEPT ![p] = 0]
                    /\ ptl' = [ptl EXCEPT ![p] = 0] /\ pvis' = [pvis EXCEPT ![p] = FALSE]
                    /\ sfly' = [sfly EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
                    /\ sled' = [sled EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
            /\ UNCHANGED <<led,prefc,pqp>>

           \* T2M-LOCAL-VISIBILITY

           EDRecFrame == \A j \in DInst, u \in Rq : UNCHANGED <<ph[j][u],rg[j][u],rpg[j][u],rhit[j][u]>>


           EDPageFrame == \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],ptl[q],pvis[q],led[q],sled[q],sfly[q]>>

           \* T2M-LOCAL-VISIBILITY

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

           RPB_ERecv(i,r,m,p) ==
            /\ IsP(i) /\ m \in net /\ m.t = "req" /\ m.to = i /\ m.r = r /\ NewGen(i,r,m.g)
            /\ m.g \in Gens /\ m.g <= gen[r] /\ hp[r][m.g] = i /\ hd[r][m.g] = m.pe /\ m.pe \in DInst
            /\ p \in {0} \cup Pages
            /\ (p # 0 => Loc(p) = i /\ pst[p] = "free")
            /\ rg' = [rg EXCEPT ![i][r] = m.g] /\ rpe' = [rpe EXCEPT ![i][r] = m.pe]
            /\ rx' = [rx EXCEPT ![i][r] = 0] /\ rpg' = [rpg EXCEPT ![i][r] = p]
            /\ ph' = [ph EXCEPT ![i][r] = IF p=0 THEN "end" ELSE "pre"]
            /\ IF p=0 THEN UNCHANGED <<pst,pr,pgn,plt,ptl,pvis,sfly,sled>>
               ELSE /\ pst' = [pst EXCEPT ![p] = "priv"] /\ pr' = [pr EXCEPT ![p] = r]
                    /\ pgn' = [pgn EXCEPT ![p] = m.g] /\ plt' = [plt EXCEPT ![p] = 0]
                    /\ ptl' = [ptl EXCEPT ![p] = 0] /\ pvis' = [pvis EXCEPT ![p] = FALSE]
                    /\ sfly' = [sfly EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
                    /\ sled' = [sled EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
            /\ UNCHANGED <<led,prefc,pqp>>

           \* T2M-LOCAL-VISIBILITY

           RPB_EDRecFrame == \A j \in DInst, u \in Rq : UNCHANGED <<ph[j][u],rg[j][u],rpg[j][u],rhit[j][u]>>


<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_GenMonotone, RP_KPhaseProgress, RP_PinFacts, RP_PinKeep, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, RP_PrivateOwnersStay, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, ERecv, EDRecFrame, EDPageFrame, RP_NoNewStop, RP_DReadFrame, RPB_T_gen, RPB_T_rt, RPB_T_rp, RPB_T_rd, RPB_T_hp, RPB_T_hd, RPB_T_alive, RPB_T_nfail, RPB_T_torn, RPB_T_kpin, RPB_T_kfly, RPB_T_krs, RPB_T_ph, RPB_T_rg, RPB_T_rpg, RPB_T_rpe, RPB_T_rx, RPB_T_rhit, RPB_T_pst, RPB_T_pr, RPB_T_pgn, RPB_T_plt, RPB_T_ptl, RPB_T_pvis, RPB_T_led, RPB_T_sfly, RPB_T_sled, RPB_T_prefc, RPB_T_pqp, RPB_T_xr, RPB_T_xg, RPB_T_xk, RPB_T_xp, RPB_T_xd, RPB_T_xsrc, RPB_T_xdst, RPB_T_xnt, RPB_T_hw, RPB_T_hok, RPB_T_iv, RPB_T_xst, RPB_T_xlt, RPB_T_nx, RPB_T_net, RPB_T_drep, RPB_T_crep, RPB_T_dsucc, RPB_T_gbad, RPB_Types, RPB_ERecv, RPB_EDRecFrame

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

<1>LKvmgcKkorZYvNe.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>LKvmgcKkorZYvNe, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, NewGen, PEnd, PRecvReq, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>R3JjhdS5cuEMeUrocTJORt9.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>R3JjhdS5cuEMeUrocTJORt9, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>R3JjhdS5cuEMeUrocTJORt9, V22_T_ph, V22_T_rg, SMTT(5)

<2>15. K8 /\ K12
 BY ONLY <1>R3JjhdS5cuEMeUrocTJORt9, V21_Inv_K8, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>2. QED
 <3>fxMessage. PICK m \in net :
   /\ m.t="req" /\ NewGen(i,r,m.g)
   /\ rg'=[rg EXCEPT ![i][r]=m.g]
   /\ (ph'=[ph EXCEPT ![i][r]="pre"] \/ ph'=[ph EXCEPT ![i][r]="end"])
  BY ONLY <1>R3JjhdS5cuEMeUrocTJORt9, ZenonT(5) DEF PRecvReq
 <3>fxMsgType. \A z \in net : z.t # "hello" => z.g \in Gens
  BY ONLY <2>15, ZenonT(5) DEF K12
 <3>fxGeneration. m.g \in Gens
  BY ONLY <3>fxMessage, <3>fxMsgType, SMTT(5)
 <3>fxFresh. ph[i][r]="none" => rg[i][r]=0
  BY ONLY <2>15, ZenonT(5) DEF K8
 <3>fxOldType. rg[i][r] \in Int
  BY ONLY <2>1, SMTT(5)
 <3>fxChanged. m.g # rg[i][r]
  BY ONLY <3>fxMessage, <3>fxGeneration, <3>fxFresh, <3>fxOldType, SMTT(5) DEF NewGen, Gens
 <3>fxCurrent. rg'[i][r]=m.g
  BY ONLY <2>1, <3>fxMessage, SMTT(5)
 <3>fxDomain. PInst \subseteq Inst
  BY ONLY Sizes, SMTT(5) DEF PInst, Inst, NL, Sizes
 <3>fxLocal. ASSUME NEW j \in PInst, NEW s \in Rq, Active(j,s)', rg'[j][s]=rg[j][s]
             PROVE Active(j,s)
  <4>fxSame. CASE j=i /\ s=r
   BY ONLY <4>fxSame, <3>fxLocal, <3>fxChanged, <3>fxCurrent, SMTT(5)
  <4>fxOther. CASE ~(j=i /\ s=r)
   <5>fxIndex. j \in Inst BY ONLY <3>fxDomain, <3>fxLocal, SMTT(5)
   <5>fxFrame. ph'[j][s]=ph[j][s]
    BY ONLY <2>1, <3>fxMessage, <3>fxLocal, <4>fxOther, <5>fxIndex, SMTT(5)
   <5>fxDone. QED BY ONLY <3>fxLocal, <5>fxFrame, SMTT(5) DEF Active
  <4>fxDone. QED BY ONLY <4>fxSame, <4>fxOther, SMTT(5)
 <3>fxDone. QED BY ONLY <3>fxLocal, SMTT(5) DEF RP_RecordProgress

\* T2M-LOCAL-VISIBILITY

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


<1>uAOE8v9oiEGTMTSc2Jgs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE RP_GenMonotone /\ RP_KPhaseProgress
<2> USE ONLY <1>uAOE8v9oiEGTMTSc2Jgs, Sizes, Location, Design
<2>type. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>uAOE8v9oiEGTMTSc2Jgs, V22_T_ph, V22_T_rg, SMTT(5)

<2>old. K8 /\ K12
 BY ONLY <1>uAOE8v9oiEGTMTSc2Jgs, V21_Inv_K8, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>mut. Mut="none" BY ONLY Design, SMTT(5) DEF Design
<2>witness. PICK m \in net : m.t="req" /\ m.r=r /\ NewGen(i,r,m.g) /\ rg'=[rg EXCEPT ![i][r]=m.g]
 BY ONLY <1>uAOE8v9oiEGTMTSc2Jgs, ZenonT(5) DEF PRecvReq
<2>msggen. m.g \in Gens
 BY ONLY <2>old, <2>witness, SMTT(5) DEF K12
<2>bounds. m.g \in Nat /\ m.g>=1 /\ rg[i][r] \in Int
 BY ONLY <2>msggen, <2>type, SMTT(5) DEF Gens
<2>newgen. m.g>rg[i][r]
 <3>none. CASE ph[i][r]="none"
  <4>zero. rg[i][r]=0 BY ONLY <3>none, <2>old, SMTT(5) DEF K8
  <4>qed. QED BY ONLY <4>zero, <2>bounds, SMTT(5)
 <3>end. CASE ph[i][r] # "none"
  BY ONLY <3>end, <2>witness, <2>mut, SMTT(5) DEF NewGen
 <3>qed. QED BY ONLY <3>none, <3>end, SMTT(5)
<2>pheffect. \E phase : ph'=[ph EXCEPT ![i][r]=phase]
 BY ONLY <1>uAOE8v9oiEGTMTSc2Jgs, ZenonT(5) DEF PRecvReq
<2>subsets. PInst \subseteq Inst
 BY ONLY Sizes, SMTT(5) DEF PInst, Inst, NL, Sizes
<2>slot. ASSUME NEW a \in PInst, NEW b \in Rq
 PROVE /\ rg'[a][b] \in Nat /\ rg'[a][b]>=rg[a][b]
       /\ ((rg'[a][b]=rg[a][b] /\ ph[a][b] \in {"ready","reg","sent","exp","end"}) => ph'[a][b] \in {"ready","reg","sent","exp","end"})
 <3>domain. a \in Inst /\ rg[a][b] \in Nat
  BY ONLY <2>subsets, <2>type, SMTT(5)
 <3>same. CASE a=i /\ b=r
  <4>update. rg'[a][b]=m.g
   BY ONLY <2>type, <2>witness, <3>same, <3>domain, SMTT(5)
  <4>qed. QED BY ONLY <3>same, <4>update, <2>bounds, <2>newgen, SMTT(5)
 <3>other. CASE a # i \/ b # r
  <4>frame. rg'[a][b]=rg[a][b] /\ ph'[a][b]=ph[a][b]
   BY ONLY <3>other, <3>domain, <2>type, <2>witness, <2>pheffect, SMTT(5)
  <4>qed. QED BY ONLY <4>frame, <3>domain, SMTT(5)
 <3>qed. QED BY ONLY <3>same, <3>other, SMTT(5)
<2>qed. QED BY ONLY <2>slot, SMTT(5) DEF RP_GenMonotone, RP_KPhaseProgress

<1>V2PvzKDR9ou1.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE P_SI6'
 BY ONLY <1>V2PvzKDR9ou1, Sizes, Location, Design, <1>LKvmgcKkorZYvNe, <1>R3JjhdS5cuEMeUrocTJORt9, <1>uAOE8v9oiEGTMTSc2Jgs, <1>sP1gMFHuwAB DEF Sizes, Location, Design
\* T2M-END R2M1431_PdRPExtra_PRecvReq


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


<1>mlryWpO5e4ZAdb1A.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow, NEW q \in Pages, KPinned(q)
 PROVE RP_PinKeep(q)
<2> HIDE DEF PRecvReq, RP_PinFacts, RP_PinKeep, CoreTypeOK
<2>old. RP_PinFacts(q)
 BY ONLY <1>mlryWpO5e4ZAdb1A, <1>sTGmGejCTusB, Sizes, Location, Design, SMTT(5)
<2>notfree. pst[q] # "free"
 BY ONLY <2>old, SMTT(5) DEF RP_PinFacts
<2>mut. Mut="none"
 BY ONLY Design, ZenonT(5) DEF Design
<2>frame. UNCHANGED <<hw,xdst,led>>
 BY ONLY <1>mlryWpO5e4ZAdb1A, <2>mut, ZenonT(5) DEF PRecvReq, xV
<2>pst_type. pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 BY ONLY <1>mlryWpO5e4ZAdb1A, V22_T_pst, SMTT(5)
<2>pst_frame. UNCHANGED pst[q]
 BY ONLY <1>mlryWpO5e4ZAdb1A, <2>notfree, <2>pst_type, SMTT(5) DEF PRecvReq
<2>pr_type. pr \in [Pages -> 0..NR]
 BY ONLY <1>mlryWpO5e4ZAdb1A, V22_T_pr, SMTT(5)
<2>pr_frame. UNCHANGED pr[q]
 BY ONLY <1>mlryWpO5e4ZAdb1A, <2>notfree, <2>pr_type, SMTT(5) DEF PRecvReq
<2>pgn_type. pgn \in [Pages -> 0..MG]
 BY ONLY <1>mlryWpO5e4ZAdb1A, V22_T_pgn, SMTT(5)
<2>pgn_frame. UNCHANGED pgn[q]
 BY ONLY <1>mlryWpO5e4ZAdb1A, <2>notfree, <2>pgn_type, SMTT(5) DEF PRecvReq
<2>plt_type. plt \in [Pages -> 0..PS]
 BY ONLY <1>mlryWpO5e4ZAdb1A, V22_T_plt, SMTT(5)
<2>plt_frame. UNCHANGED plt[q]
 BY ONLY <1>mlryWpO5e4ZAdb1A, <2>notfree, <2>plt_type, SMTT(5) DEF PRecvReq
<2>ptl_type. ptl \in [Pages -> -1..PS]
 BY ONLY <1>mlryWpO5e4ZAdb1A, V22_T_ptl, SMTT(5)
<2>ptl_frame. UNCHANGED ptl[q]
 BY ONLY <1>mlryWpO5e4ZAdb1A, <2>notfree, <2>ptl_type, SMTT(5) DEF PRecvReq
<2>pvis_type. pvis \in [Pages -> BOOLEAN]
 BY ONLY <1>mlryWpO5e4ZAdb1A, V22_T_pvis, SMTT(5)
<2>pvis_frame. UNCHANGED pvis[q]
 BY ONLY <1>mlryWpO5e4ZAdb1A, <2>notfree, <2>pvis_type, SMTT(5) DEF PRecvReq
<2>sfly_type. sfly \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>mlryWpO5e4ZAdb1A, V22_T_sfly, SMTT(5)
<2>sfly_frame. UNCHANGED sfly[q]
 BY ONLY <1>mlryWpO5e4ZAdb1A, <2>notfree, <2>sfly_type, SMTT(5) DEF PRecvReq
<2>sled_type. sled \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>mlryWpO5e4ZAdb1A, V22_T_sled, SMTT(5)
<2>sled_frame. UNCHANGED sled[q]
 BY ONLY <1>mlryWpO5e4ZAdb1A, <2>notfree, <2>sled_type, SMTT(5) DEF PRecvReq
<2>nowrite. NoWriteInto(q) => NoWriteInto(q)'
 BY ONLY <2>frame, SMTT(5) DEF NoWriteInto, Writing, InFl
<2>qed. QED BY ONLY <2>old, <2>frame, <2>nowrite, <2>pst_frame, <2>pr_frame, <2>pgn_frame, <2>plt_frame, <2>ptl_frame, <2>pvis_frame, <2>sfly_frame, <2>sled_frame, SMTT(5) DEF RP_PinKeep, RP_PinFacts

\* T2M-LOCAL-VISIBILITY

<1>S9W3DdSuFxCWimcvgOBp.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs,kfly,xdst>>
 BY ONLY <1>S9W3DdSuFxCWimcvgOBp, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, GiveUpTo, GiveUpToN, PEnd, PRecvReq, PageTo, PinBlocks, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IO9jiqwTl0eN6Fg.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>IO9jiqwTl0eN6Fg, Sizes, Location, Design
<2>1. \A q \in Pages : KPinned(q) => RP_PinKeep(q)
 BY <1>mlryWpO5e4ZAdb1A, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,kfly,xdst>> BY <1>S9W3DdSuFxCWimcvgOBp, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>IO9jiqwTl0eN6Fg, <2>2, V22_T_xdst, SMTT(5)

<2>4. QED BY <2>1, <2>2, <2>3, <1>VtlCqCAE0X2qQ, Sizes, Location, Design DEF Sizes, Location, Design

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


<1>UFy40dMs5s7vyYxq6VRNerGdMj.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE B2 => RP_PrivateOwnersStay
<2> USE ONLY <1>UFy40dMs5s7vyYxq6VRNerGdMj, Sizes, Location, Design
<2>1. B2 => SI2 /\ SI5 BY V21_Inv_P_SI2, V21_Inv_P_SI5, Sizes, Location, Design DEF P_SI2, P_SI5, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>UFy40dMs5s7vyYxq6VRNerGdMj, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, Location, SMTT(10) DEF RP_PrivateOwnersStay, SI2, SI5, Active, PInst, Inst, NL, EvidenceAt, NewGen, PEnd, PRecvReq, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>i5hPlwRDHsOhUrNhm21it9O.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>i5hPlwRDHsOhUrNhm21it9O, Sizes, Location, Design
<2>1. BaseKReadIntegrity' BY <1>IO9jiqwTl0eN6Fg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. SMapIntegrity'
 <3>1. CASE ~B2 BY <3>1, Sizes, Location, Design DEF SMapIntegrity, Sizes, Location, Design
 <3>2. CASE B2 BY <3>2, <1>UFy40dMs5s7vyYxq6VRNerGdMj, <1>R3JjhdS5cuEMeUrocTJORt9, <1>DsbKtMfk5TGSpQKzvTWF, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <3>1, <3>2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M1473_PdRPMap_PRecvReq


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


<1>woEZGzt7yjb.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PRecvReq(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, pqp, prefc, rd, rhit, rp, rt, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>woEZGzt7yjb, Sizes, Location, Design, Zenon DEF PRecvReq, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1687_PdRPPP_PdPRecvReqFrames

\* T2M-SCOPE R2M1688_PdRPPP_PdCell_PRecvReq_GenFiltered
\* T2M-BODY R2M1688_PdRPPP_PdCell_PRecvReq_GenFiltered
\* T2M-LOCAL-VISIBILITY

<1>IVTDoZ8i6Wy1nUykb.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE GenFiltered'
<2> USE ONLY <1>IVTDoZ8i6Wy1nUykb, Sizes, Location, Design
<2>1. GenFiltered /\ qvLUP /\ nNeM /\ Mut = "none"
  BY <1>UwwC5LVwQr, Design, SMTT(10), V21_Inv_GenFiltered, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location DEF Safety, QLAWp, Sizes, Location, Design
<2>2. PICK m \in net : NewGen(i,r,m.g) /\ gbad' = (gbad \/ (ph[i][r] = "end" /\ m.g <= rg[i][r]))
  BY ZenonT(10), Sizes, Location, Design DEF PRecvReq, Sizes, Location, Design
<2>3. m.g \in 0..MG /\ rg[i][r] \in 0..MG
  BY <2>1, <2>2, <1>Ug4VwS, Sizes, SMTT(10), Location, Design DEF qvLUP, nNeM, Sizes, Location, Design
<2>4. ~(ph[i][r] = "end" /\ m.g <= rg[i][r])
  BY <2>1, <2>2, <2>3, Sizes, SMTT(10), Location, Design DEF NewGen, Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF GenFiltered, Sizes, Location, Design
\* T2M-END R2M1688_PdRPPP_PdCell_PRecvReq_GenFiltered

\* T2M-SCOPE R2M1689_PdRPPP_PdCell_PRecvReq_K17

<1>k8I.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xsrc[x] \in Pages
  PROVE Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>k8I, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xp[x] = hp[xr[x]][xg[x]]
        /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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

<1>ho2qVzp0UDI9Dx.        
  ASSUME NEW r \in Rq, NEW g \in Gens, PinInv, drep[r][g] = 1
  PROVE hd[r][g] \in DInst
<2> USE ONLY <1>ho2qVzp0UDI9Dx, Sizes, Location, Design
<2>1. K1 /\ AEZsS
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. g <= gen[r]
  BY <2>1, Sizes, SMTT(15), Location, Design DEF K1, AEZsS, Gens, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M1488_PdRPPP_PdBRecords


<1>xhMq4f9E.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE \E m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p)
<2> USE ONLY <1>xhMq4f9E, Sizes, Location, Design
 <2>1. K1 /\ K12
  BY V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. PICK m \in net : m.t = "req" /\ m.to = i /\ m.r = r /\ NewGen(i,r,m.g)
    /\ rg' = [rg EXCEPT ![i][r] = m.g] /\ rpe' = [rpe EXCEPT ![i][r] = m.pe]
    /\ rx' = [rx EXCEPT ![i][r] = 0]
    /\ (\E p \in {0} \cup Pages :
         /\ (p # 0 => Loc(p) = i /\ pst[p] = "free")
         /\ rpg' = [rpg EXCEPT ![i][r] = p]
         /\ ph' = [ph EXCEPT ![i][r] = IF p=0 THEN "end" ELSE "pre"]
         /\ IF p=0 THEN UNCHANGED <<pst,pr,pgn,plt,ptl,pvis,sfly,sled>>
            ELSE /\ pst' = [pst EXCEPT ![p] = "priv"] /\ pr' = [pr EXCEPT ![p] = r]
                 /\ pgn' = [pgn EXCEPT ![p] = m.g] /\ plt' = [plt EXCEPT ![p] = 0]
                 /\ ptl' = [ptl EXCEPT ![p] = 0] /\ pvis' = [pvis EXCEPT ![p] = FALSE]
                 /\ sfly' = [sfly EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
                 /\ sled' = [sled EXCEPT ![p] = @ \cup {Tag(r,m.g)}])
  BY Design, Sizes, SMTT(5), Location DEF PRecvReq, Pages, Sizes, Location, Design
 <2>3. IsP(i) /\ UNCHANGED <<led,prefc,pqp>>
  BY Design, SMTT(5), Sizes, Location DEF PRecvReq, Sizes, Location, Design
 <2>4. m.g \in Gens /\ m.g <= gen[r] /\ hp[r][m.g] = i /\ hd[r][m.g] = m.pe /\ m.pe \in DInst
  BY <2>1, <2>2, <2>3, Sizes, SMTT(5), Location, Design DEF K12, K1, IsP, PInst, DInst, NL, Sizes, Location, Design
 <2>5. PICK p \in {0} \cup Pages :
         /\ (p # 0 => Loc(p) = i /\ pst[p] = "free")
         /\ rpg' = [rpg EXCEPT ![i][r] = p]
         /\ ph' = [ph EXCEPT ![i][r] = IF p=0 THEN "end" ELSE "pre"]
         /\ IF p=0 THEN UNCHANGED <<pst,pr,pgn,plt,ptl,pvis,sfly,sled>>
            ELSE /\ pst' = [pst EXCEPT ![p] = "priv"] /\ pr' = [pr EXCEPT ![p] = r]
                 /\ pgn' = [pgn EXCEPT ![p] = m.g] /\ plt' = [plt EXCEPT ![p] = 0]
                 /\ ptl' = [ptl EXCEPT ![p] = 0] /\ pvis' = [pvis EXCEPT ![p] = FALSE]
                 /\ sfly' = [sfly EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
                 /\ sled' = [sled EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
  BY ONLY <2>2, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <2>6. ERecv(i,r,m,p)
  BY ONLY <2>2, <2>3, <2>4, <2>5, SMTT(20), Sizes, Location, Design DEF ERecv, Sizes, Location, Design
 <2>7. \E q \in {0} \cup Pages : ERecv(i,r,m,q)
  BY ONLY <2>5, <2>6, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <2>8. QED BY ONLY <2>2, <2>7, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1692_PdRPPP_PdERecvFacts


<1>LEhnC1gxPKIaF.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE UNCHANGED led
 BY ONLY <1>LEhnC1gxPKIaF, Sizes, Location, Design, <1>xhMq4f9E, SMTT(5) DEF ERecv, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CsxO3y.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE /\ IsP(i) /\ m.g \in Gens /\ m.g <= gen[r] /\ hp[r][m.g] = i /\ hd[r][m.g] = m.pe /\ m.pe \in DInst
       /\ p \in {0} \cup Pages /\ (p # 0 => Loc(p)=i /\ pst[p]="free")
 BY ONLY <1>CsxO3y, Sizes, Location, Design DEF ERecv, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EGNgd5.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : pst'[q] = IF p=q THEN "priv" ELSE pst[q]
<2> USE ONLY <1>EGNgd5, Sizes, Location, Design
 <2>1. OyyWS /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF ERecv, K7, OyyWS, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jj0T0.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : pr'[q] = IF p=q THEN r ELSE pr[q]
<2> USE ONLY <1>jj0T0, Sizes, Location, Design
 <2>1. IwCp /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF ERecv, K7, IwCp, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>B2nFk5.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : pgn'[q] = IF p=q THEN m.g ELSE pgn[q]
<2> USE ONLY <1>B2nFk5, Sizes, Location, Design
 <2>1. vS7em /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF ERecv, K7, vS7em, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xFFcTA.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : plt'[q] = IF p=q THEN 0 ELSE plt[q]
<2> USE ONLY <1>xFFcTA, Sizes, Location, Design
 <2>1. bFwlN /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF ERecv, K7, bFwlN, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jn3dmy.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : ptl'[q] = IF p=q THEN 0 ELSE ptl[q]
<2> USE ONLY <1>jn3dmy, Sizes, Location, Design
 <2>1. rO4YE /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF ERecv, K7, rO4YE, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CgKHZ5q.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : pvis'[q] = IF p=q THEN FALSE ELSE pvis[q]
<2> USE ONLY <1>CgKHZ5q, Sizes, Location, Design
 <2>1. Bq5Edl /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF ERecv, K7, Bq5Edl, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ttRRTqL.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : sfly'[q] = IF p=q THEN {Tag(r,m.g)} ELSE sfly[q]
<2> USE ONLY <1>ttRRTqL, Sizes, Location, Design
 <2>1. Xc_ngV /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. p # 0 => p \in Pages /\ sfly[p] = {}
  BY <2>1, SMTT(5), Sizes, Location, Design DEF ERecv, K7, Sizes, Location, Design
 <2>3. sfly' = IF p=0 THEN sfly ELSE [sfly EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
  BY SMTT(5), Sizes, Location, Design DEF ERecv, Sizes, Location, Design
 <2>4. SUFFICES ASSUME NEW q \in Pages PROVE sfly'[q] = IF p=q THEN {Tag(r,m.g)} ELSE sfly[q]
  BY SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. q # 0 BY Sizes, SMTT(5), Location, Design DEF Pages, Sizes, Location, Design
 <2>6. CASE p=0
  BY <2>3, <2>4, <2>5, <2>6, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>7. CASE p # 0
  <3>1. sfly'[q] = IF p=q THEN sfly[q] \cup {Tag(r,m.g)} ELSE sfly[q]
   BY <2>1, <2>3, <2>4, <2>7, SMTT(5), Sizes, Location, Design DEF Xc_ngV, Sizes, Location, Design
  <3>2. sfly[p] \cup {Tag(r,m.g)} = {Tag(r,m.g)}
   BY <2>2, <2>7, ZenonT(5), Sizes, Location, Design DEF Sizes, Location, Design
  <3>3. QED BY <3>1, <3>2, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>8. QED BY <2>6, <2>7, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>claSLdb.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : sled'[q] = IF p=q THEN {Tag(r,m.g)} ELSE sled[q]
<2> USE ONLY <1>claSLdb, Sizes, Location, Design
 <2>1. h9WLgd /\ K7 BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. p # 0 => p \in Pages /\ sled[p] = {}
  BY <2>1, SMTT(5), Sizes, Location, Design DEF ERecv, K7, Sizes, Location, Design
 <2>3. sled' = IF p=0 THEN sled ELSE [sled EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
  BY SMTT(5), Sizes, Location, Design DEF ERecv, Sizes, Location, Design
 <2>4. SUFFICES ASSUME NEW q \in Pages PROVE sled'[q] = IF p=q THEN {Tag(r,m.g)} ELSE sled[q]
  BY SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. q # 0 BY Sizes, SMTT(5), Location, Design DEF Pages, Sizes, Location, Design
 <2>6. CASE p=0
  BY <2>3, <2>4, <2>5, <2>6, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>7. CASE p # 0
  <3>1. sled'[q] = IF p=q THEN sled[q] \cup {Tag(r,m.g)} ELSE sled[q]
   BY <2>1, <2>3, <2>4, <2>7, SMTT(5), Sizes, Location, Design DEF h9WLgd, Sizes, Location, Design
  <3>2. sled[p] \cup {Tag(r,m.g)} = {Tag(r,m.g)}
   BY <2>2, <2>7, ZenonT(5), Sizes, Location, Design DEF Sizes, Location, Design
  <3>3. QED BY <3>1, <3>2, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>8. QED BY <2>6, <2>7, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Gn6NVDusGMlYg.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE /\ \A j \in Inst, u \in Rq :
           /\ ph'[j][u] = IF j=i /\ u=r THEN (IF p=0 THEN "end" ELSE "pre") ELSE ph[j][u]
           /\ rg'[j][u] = IF j=i /\ u=r THEN m.g ELSE rg[j][u]
           /\ rpg'[j][u] = IF j=i /\ u=r THEN p ELSE rpg[j][u]
           /\ rx'[j][u] = IF j=i /\ u=r THEN 0 ELSE rx[j][u]
           /\ rpe'[j][u] = IF j=i /\ u=r THEN m.pe ELSE rpe[j][u]
           /\ (ph'[j][u] \in {"run","ovl"} <=> ph[j][u] \in {"run","ovl"})
       /\ ~Active(i,r) /\ (ph[i][r] # "none" => m.g > rg[i][r])
<2> USE ONLY <1>Gn6NVDusGMlYg, Sizes, Location, Design
 <2>1. AydA /\ nNeM /\ q1Ohy /\ QC9Q /\ E1MnW BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, SMTT(5), Sizes, Location DEF ERecv, AydA, nNeM, q1Ohy, QC9Q, E1MnW, NewGen, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uKlEE3iBA.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE \A q \in Pages : pst[q] # "free" => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],ptl[q],pvis[q],sfly[q],sled[q]>>
 BY ONLY <1>uKlEE3iBA, Sizes, Location, Design, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>CgKHZ5q, <1>ttRRTqL, <1>claSLdb, Sizes, SMTT(5) DEF ERecv, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mTGbJEan.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE /\ \A j \in DInst, u \in Rq : UNCHANGED <<ph[j][u],rg[j][u],rpg[j][u],rx[j][u],rpe[j][u]>>
       /\ \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],ptl[q],pvis[q],sfly[q],sled[q]>>
<2> USE ONLY <1>mTGbJEan, Sizes, Location, Design
 <2>1. \A j \in DInst : j \in Inst /\ j # i
  BY <1>CsxO3y, Sizes, SMTT(5), Location, Design DEF IsP, Inst, PInst, DInst, NL, Sizes, Location, Design
 <2>2. \A j \in DInst, u \in Rq : UNCHANGED <<ph[j][u],rg[j][u],rpg[j][u],rx[j][u],rpe[j][u]>>
  BY <2>1, <1>Gn6NVDusGMlYg, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. \A q \in Pages : IsD(Loc(q)) => q # p
  BY <1>CsxO3y, Sizes, SMTT(5), Location, Design DEF IsP, IsD, Inst, PInst, DInst, NL, Pages, Sizes, Location, Design
 <2>4. QED BY <2>2, <2>3, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>CgKHZ5q, <1>ttRRTqL, <1>claSLdb, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aYuEoL7oM.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE /\ \A q \in Pages : UNCHANGED <<NHits(q),KPinned(q),GrownP(q)>>
       /\ \A j \in Inst, u \in Rq : j # i \/ u # r => UNCHANGED Active(j,u)
<2> USE ONLY <1>aYuEoL7oM, Sizes, Location, Design
 <2>1. UNCHANGED <<kpin,krs,rhit>> BY <1>woEZGzt7yjb, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. \A q \in Pages :
 {u \in Rq : ph'[Loc(q)][u] \in {"run","ovl"} /\ rhit'[Loc(q)][u] /\ rpg'[Loc(q)][u] = q}
 = {u \in Rq : ph[Loc(q)][u] \in {"run","ovl"} /\ rhit[Loc(q)][u] /\ rpg[Loc(q)][u] = q}
 BY <2>1, <1>Gn6NVDusGMlYg, <1>jc4Pk2myFy, SMTT(5), Sizes, Location, Design DEF KPages, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>mTGbJEan, <1>Gn6NVDusGMlYg, <1>jc4Pk2myFy, <1>yGU8fpsp8, SMTT(5), Sizes, Location, Design DEF NHits, KPinned, GrownP, Active, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lUDz2gaHgwt.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE /\ ~rhit[i][r] /\ rg[i][r] \in 0..MG
       /\ (p # 0 => led[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0)
<2> USE ONLY <1>lUDz2gaHgwt, Sizes, Location, Design
 <2>1. K7 /\ K8 /\ nNeM BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. ~rhit[i][r] BY <2>1, <1>CsxO3y, <1>QMrZB, SMTT(5), Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>CsxO3y, SMTT(5), Sizes, Location, Design DEF K7, nNeM, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Uqmv2rQeM.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE K10'
<2> USE ONLY <1>Uqmv2rQeM, Sizes, Location, Design
<2>1. K10 /\ K2 /\ vS7em /\ IwCp /\ OyyWS /\ rO4YE
 BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K10, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p) BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<hok,hw,nx,xdst,xg,xlt,xr>> BY <1>woEZGzt7yjb, <1>LEhnC1gxPKIaF, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
 BY <2>1, <2>2, <2>3, <1>xbWa623J, <1>mTGbJEan, <1>uKlEE3iBA, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, <1>B2nFk5, <1>jj0T0, <1>EGNgd5, <1>jn3dmy, <1>xbWa623J, <1>k8I, <1>fem, Sizes, Location, SMTT(5), Design DEF DInst, ExpInst, ExpPage, Gens, InitInst, InitPage, Inst, IsD, IsP, K10, K2, NL, NewGen, OwnedBy, PInst, vS7em, IwCp, OyyWS, rO4YE, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1694_PdRPPP_PdE_PRecvReq_K10


<1>MM4yd9rYW.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE K13'
<2> USE ONLY <1>MM4yd9rYW, Sizes, Location, Design
<2>1. K13
 BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K13, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p) BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<crep,drep,dsucc,hd>> BY <1>woEZGzt7yjb, <1>LEhnC1gxPKIaF, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ~gbad'
 BY <1>IVTDoZ8i6Wy1nUykb, Sizes, Location, Design DEF GenFiltered, Sizes, Location, Design
<2>5. QED
 BY <2>1, <2>2, <2>3, <1>mTGbJEan, <1>uKlEE3iBA, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, <2>4, <1>ho2qVzp0UDI9Dx, Sizes, Location, SMTT(5), Design DEF DInst, Gens, Inst, IsD, IsP, K13, NL, NewGen, PInst, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1697_PdRPPP_PdE_PRecvReq_K13


<1>NFAXRR.        
 ASSUME K16, EDRecFrame, EDPageFrame, UNCHANGED <<hw,xdst>>,
        \A q \in Pages : UNCHANGED GrownP(q)
 PROVE K16'
<2> USE ONLY <1>NFAXRR, Sizes, Location, Design
 <2>1. SUFFICES ASSUME NEW q \in Pages, GrownP(q)'
  PROVE /\ ph'[Loc(q)][pr'[q]] \in {"run","ovl"} /\ rg'[Loc(q)][pr'[q]]=pgn'[q]
        /\ led'[q]={} /\ sled'[q]={} /\ sfly'[q]={}
        /\ plt'[q]=ptl'[q] /\ ptl'[q] \in {0,1} /\ NoWriteInto(q)'
  BY SMTT(5), Sizes, Location, Design DEF K16, Sizes, Location, Design
 <2>2. GrownP(q) /\ IsD(Loc(q)) /\ pr[q] \in Rq /\ Loc(q) \in DInst
  BY <2>1, <1>jc4Pk2myFy, <1>yGU8fpsp8, SMTT(5), Sizes, Location, Design DEF GrownP, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF K16, EDRecFrame, EDPageFrame, NoWriteInto, Writing, InFl, Sizes, Location, Design
\* T2M-END R2M1536_PdRPPP_PdEDOnlyInvariants


<1>SK01tKVrZ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE K16'
<2> USE ONLY <1>SK01tKVrZ, Sizes, Location, Design
<2>1. K16 /\ K8 BY V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_K8, V21_Inv_Safety, Sizes, Location, Design DEF Safety, BaseSafety, Sizes, Location, Design
<2>15. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p) BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. EDRecFrame BY <2>15, <1>mTGbJEan, <1>woEZGzt7yjb, <1>LEhnC1gxPKIaF, SMTT(5), Sizes, Location, Design DEF EDRecFrame, Sizes, Location, Design
<2>3. EDPageFrame BY <2>15, <1>mTGbJEan, <1>woEZGzt7yjb, <1>LEhnC1gxPKIaF, SMTT(5), Sizes, Location, Design DEF EDPageFrame, Sizes, Location, Design
<2>4. UNCHANGED <<hw,xdst>> BY <2>15, <1>mTGbJEan, <1>woEZGzt7yjb, <1>LEhnC1gxPKIaF, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. \A q \in Pages : UNCHANGED GrownP(q) BY <2>15, <1>aYuEoL7oM, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>NFAXRR, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1698_PdRPPP_PdE_PRecvReq_K16


<1>biOrGfiw.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE K7'
<2> USE ONLY <1>biOrGfiw, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (ptl[bb_p] >= 0)' /\ (pst[bb_p] = "free" => (pr[bb_p] = 0 /\ pgn[bb_p] = 0 /\ plt[bb_p] = 0 /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
                               /\ prefc[bb_p] = 0 /\ pqp[bb_p] = 0))' /\ (pst[bb_p] \in {"priv", "drain", "quar"} => (pr[bb_p] \in Rq /\ pgn[bb_p] \in Gens /\ pgn[bb_p] <= gen[pr[bb_p]]))' /\ (pst[bb_p] = "quar" => pqp[bb_p] \in Inst)' /\ (pst[bb_p] # "quar" => pqp[bb_p] = 0)' /\ (pst[bb_p] # "shared" => prefc[bb_p] = 0)' /\ (pst[bb_p] = "shared" => (IsD(Loc(bb_p)) /\ led[bb_p] = {} /\ ptl[bb_p] = PS /\ prefc[bb_p] = NHits(bb_p)))' /\ (pst[bb_p] = "drain" => (led[bb_p] # {} \/ sled[bb_p] # {} \/ KPinned(bb_p)))' /\ (pst[bb_p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(bb_p), r, bb_p))' /\ (pst[bb_p] = "priv" => \/ (Maps(Loc(bb_p), pr[bb_p], bb_p) /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p] /\ ~rhit[Loc(bb_p)][pr[bb_p]])
                              \/ GrownP(bb_p))'
  BY Sizes, Location, Design DEF K7, Sizes, Location, Design
<2>1. K7 /\ K8 /\ Zzz7b(bb_p) BY <1>gfplo, V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>15. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p) BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen,kpin,krs,rhit,prefc,pqp,led>> BY <1>woEZGzt7yjb, <1>LEhnC1gxPKIaF, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (ptl[bb_p] >= 0)'
  BY <2>1, <2>15, <2>2, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, <1>uKlEE3iBA, <1>mTGbJEan, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>CgKHZ5q, <1>ttRRTqL, <1>claSLdb, <1>jc4Pk2myFy, Sizes, Design, SMTT(5), Location DEF NewGen, Zzz7b, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Tag, Gens, Sizes, Location, Design
<2>4. (pst[bb_p] = "free" => (pr[bb_p] = 0 /\ pgn[bb_p] = 0 /\ plt[bb_p] = 0 /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
                               /\ prefc[bb_p] = 0 /\ pqp[bb_p] = 0))'
  BY <2>1, <2>15, <2>2, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, <1>uKlEE3iBA, <1>mTGbJEan, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>CgKHZ5q, <1>ttRRTqL, <1>claSLdb, <1>jc4Pk2myFy, Sizes, Design, SMTT(5), Location DEF NewGen, Zzz7b, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Tag, Gens, Sizes, Location, Design
<2>5. (pst[bb_p] \in {"priv", "drain", "quar"} => (pr[bb_p] \in Rq /\ pgn[bb_p] \in Gens /\ pgn[bb_p] <= gen[pr[bb_p]]))'
  BY <2>1, <2>15, <2>2, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, <1>uKlEE3iBA, <1>mTGbJEan, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>CgKHZ5q, <1>ttRRTqL, <1>claSLdb, <1>jc4Pk2myFy, Sizes, Design, SMTT(5), Location DEF NewGen, Zzz7b, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Tag, Gens, Sizes, Location, Design
<2>6. (pst[bb_p] = "quar" => pqp[bb_p] \in Inst)'
  BY <2>1, <2>15, <2>2, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, <1>uKlEE3iBA, <1>mTGbJEan, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>CgKHZ5q, <1>ttRRTqL, <1>claSLdb, <1>jc4Pk2myFy, Sizes, Design, SMTT(5), Location DEF NewGen, Zzz7b, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Tag, Gens, Sizes, Location, Design
<2>7. (pst[bb_p] # "quar" => pqp[bb_p] = 0)'
  BY <2>1, <2>15, <2>2, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, <1>uKlEE3iBA, <1>mTGbJEan, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>CgKHZ5q, <1>ttRRTqL, <1>claSLdb, <1>jc4Pk2myFy, Sizes, Design, SMTT(5), Location DEF NewGen, Zzz7b, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Tag, Gens, Sizes, Location, Design
<2>8. (pst[bb_p] # "shared" => prefc[bb_p] = 0)'
  BY <2>1, <2>15, <2>2, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, <1>uKlEE3iBA, <1>mTGbJEan, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>CgKHZ5q, <1>ttRRTqL, <1>claSLdb, <1>jc4Pk2myFy, Sizes, Design, SMTT(5), Location DEF NewGen, Zzz7b, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Tag, Gens, Sizes, Location, Design
<2>9. (pst[bb_p] = "shared" => (IsD(Loc(bb_p)) /\ led[bb_p] = {} /\ ptl[bb_p] = PS /\ prefc[bb_p] = NHits(bb_p)))'
  BY <2>1, <2>15, <2>2, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, <1>uKlEE3iBA, <1>mTGbJEan, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>CgKHZ5q, <1>ttRRTqL, <1>claSLdb, <1>jc4Pk2myFy, Sizes, Design, SMTT(5), Location DEF NewGen, Zzz7b, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Tag, Gens, Sizes, Location, Design
<2>10. (pst[bb_p] = "drain" => (led[bb_p] # {} \/ sled[bb_p] # {} \/ KPinned(bb_p)))'
  BY <2>1, <2>15, <2>2, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, <1>uKlEE3iBA, <1>mTGbJEan, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>CgKHZ5q, <1>ttRRTqL, <1>claSLdb, <1>jc4Pk2myFy, Sizes, Design, SMTT(5), Location DEF NewGen, Zzz7b, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Tag, Gens, Sizes, Location, Design
<2>11. (pst[bb_p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(bb_p), r, bb_p))'
  BY <2>1, <2>15, <2>2, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, <1>uKlEE3iBA, <1>mTGbJEan, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>CgKHZ5q, <1>ttRRTqL, <1>claSLdb, <1>jc4Pk2myFy, Sizes, Design, SMTT(5), Location DEF NewGen, Zzz7b, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Tag, Gens, Sizes, Location, Design
<2>12. (pst[bb_p] = "priv" => \/ (Maps(Loc(bb_p), pr[bb_p], bb_p) /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p] /\ ~rhit[Loc(bb_p)][pr[bb_p]])
                              \/ GrownP(bb_p))'
 <3>1. CASE bb_p=p
  BY <2>15, <2>2, <3>1, <1>CsxO3y, <1>lUDz2gaHgwt, <1>Gn6NVDusGMlYg, <1>jj0T0, <1>B2nFk5, Sizes, SMTT(5), Location, Design DEF Maps, Active, Pages, Sizes, Location, Design
 <3>2. CASE bb_p # p
  <4>1. UNCHANGED <<pst[bb_p],pr[bb_p],pgn[bb_p]>>
   BY <2>15, <3>2, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. pst[bb_p]="priv" => pr[bb_p] \in Rq /\ Loc(bb_p) \in Inst
   BY <2>1, <1>jc4Pk2myFy, SMTT(5), Sizes, Location, Design DEF Zzz7b, Sizes, Location, Design
  <4>3. Maps(Loc(bb_p),pr[bb_p],bb_p) => Loc(bb_p) # i \/ pr[bb_p] # r
   BY <2>15, <1>Gn6NVDusGMlYg, SMTT(5), Sizes, Location, Design DEF Maps, Sizes, Location, Design
  <4>4. QED BY <2>1, <2>15, <2>2, <4>1, <4>2, <4>3, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, SMTT(5), Sizes, Location, Design DEF Zzz7b, Maps, Active, Sizes, Location, Design
 <3>3. QED BY <3>1, <3>2, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>13. QED
  BY <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, <2>12, Sizes, Location, Design DEF K7, Sizes, Location, Design
\* T2M-END R2M1702_PdRPPP_PdE_PRecvReq_K7

\* T2M-SCOPE R2M1703_PdRPPP_PdE_PRecvReq_K8

<1>Quna5zGUcisbDY7.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE QuarNoReg'
<2> USE ONLY <1>Quna5zGUcisbDY7, Sizes, Location, Design
<2>1. QuarNoReg /\ OyyWS
 BY <1>UwwC5LVwQr, V21_Inv_KStruct, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p) BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<iv,led>> BY <1>woEZGzt7yjb, <1>LEhnC1gxPKIaF, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
 BY <2>1, <2>2, <2>3, <1>mTGbJEan, <1>uKlEE3iBA, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, <1>EGNgd5, Sizes, Location, SMTT(5), Design DEF DInst, Gens, Inst, IsD, IsP, NL, NewGen, PInst, QuarNoReg, OyyWS, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1706_PdRPPP_PdE_PRecvReq_QuarNoReg

\* T2M-SCOPE R2M1707_PdRPPP_PdE_PRecvReq_S1

<1>qGRfDmIYzA.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE K7'
  BY ONLY <1>qGRfDmIYzA, Sizes, Location, Design, <1>biOrGfiw, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bd8V2STuY8m.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE K10'
  BY ONLY <1>bd8V2STuY8m, Sizes, Location, Design, <1>Uqmv2rQeM, V21_Inv_K10 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>q3Ed6YxiK4s.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE K13'
  BY ONLY <1>q3Ed6YxiK4s, Sizes, Location, Design, <1>MM4yd9rYW, V21_Inv_K13 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kxn1UiQqDmL.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE K16'
  BY ONLY <1>kxn1UiQqDmL, Sizes, Location, Design, <1>SK01tKVrZ, V21_Inv_K16 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OuTXx5GUUR8wRVvB5.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>OuTXx5GUUR8wRVvB5, Sizes, Location, Design, <1>Quna5zGUcisbDY7, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1710_PdRPPdPAgg_PRecvReq


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


<1>Nfuh7gDTOHN1zem.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PRecvReq(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, pqp, prefc, rd, rhit, rp, rt, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>Nfuh7gDTOHN1zem, Sizes, Location, Design, Zenon DEF PRecvReq, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1915_PdRPBPP_PdPRecvReqFrames

\* T2M-SCOPE R2M1916_PdRPBPP_PdRequestPeer

<1>LJVyF1auRuzq.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE \E m \in net, p \in {0} \cup Pages : RPB_ERecv(i,r,m,p)
<2> USE ONLY <1>LJVyF1auRuzq, Sizes, Location, Design
 <2>1. K1 /\ K12
  BY V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. PICK m \in net : m.t = "req" /\ m.to = i /\ m.r = r /\ NewGen(i,r,m.g)
    /\ rg' = [rg EXCEPT ![i][r] = m.g] /\ rpe' = [rpe EXCEPT ![i][r] = m.pe]
    /\ rx' = [rx EXCEPT ![i][r] = 0]
    /\ (\E p \in {0} \cup Pages :
         /\ (p # 0 => Loc(p) = i /\ pst[p] = "free")
         /\ rpg' = [rpg EXCEPT ![i][r] = p]
         /\ ph' = [ph EXCEPT ![i][r] = IF p=0 THEN "end" ELSE "pre"]
         /\ IF p=0 THEN UNCHANGED <<pst,pr,pgn,plt,ptl,pvis,sfly,sled>>
            ELSE /\ pst' = [pst EXCEPT ![p] = "priv"] /\ pr' = [pr EXCEPT ![p] = r]
                 /\ pgn' = [pgn EXCEPT ![p] = m.g] /\ plt' = [plt EXCEPT ![p] = 0]
                 /\ ptl' = [ptl EXCEPT ![p] = 0] /\ pvis' = [pvis EXCEPT ![p] = FALSE]
                 /\ sfly' = [sfly EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
                 /\ sled' = [sled EXCEPT ![p] = @ \cup {Tag(r,m.g)}])
  BY Design, Sizes, SMTT(5), Location DEF PRecvReq, Pages, Sizes, Location, Design
 <2>3. IsP(i) /\ UNCHANGED <<led,prefc,pqp>>
  BY Design, SMTT(5), Sizes, Location DEF PRecvReq, Sizes, Location, Design
 <2>4. m.g \in Gens /\ m.g <= gen[r] /\ hp[r][m.g] = i /\ hd[r][m.g] = m.pe /\ m.pe \in DInst
  BY <2>1, <2>2, <2>3, Sizes, SMTT(5), Location, Design DEF K12, K1, IsP, PInst, DInst, NL, Sizes, Location, Design
 <2>5. PICK p \in {0} \cup Pages :
         /\ (p # 0 => Loc(p) = i /\ pst[p] = "free")
         /\ rpg' = [rpg EXCEPT ![i][r] = p]
         /\ ph' = [ph EXCEPT ![i][r] = IF p=0 THEN "end" ELSE "pre"]
         /\ IF p=0 THEN UNCHANGED <<pst,pr,pgn,plt,ptl,pvis,sfly,sled>>
            ELSE /\ pst' = [pst EXCEPT ![p] = "priv"] /\ pr' = [pr EXCEPT ![p] = r]
                 /\ pgn' = [pgn EXCEPT ![p] = m.g] /\ plt' = [plt EXCEPT ![p] = 0]
                 /\ ptl' = [ptl EXCEPT ![p] = 0] /\ pvis' = [pvis EXCEPT ![p] = FALSE]
                 /\ sfly' = [sfly EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
                 /\ sled' = [sled EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
  BY ONLY <2>2, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <2>6. RPB_ERecv(i,r,m,p)
  BY ONLY <2>2, <2>3, <2>4, <2>5, SMTT(20), Sizes, Location, Design DEF RPB_ERecv, Sizes, Location, Design
 <2>7. \E q \in {0} \cup Pages : RPB_ERecv(i,r,m,q)
  BY ONLY <2>5, <2>6, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <2>8. QED BY ONLY <2>2, <2>7, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1918_PdRPBPP_PdERecvFacts


<1>bNi3s2jXOT7KM0Es9.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE UNCHANGED led
 BY ONLY <1>bNi3s2jXOT7KM0Es9, Sizes, Location, Design, <1>LJVyF1auRuzq, SMTT(5) DEF RPB_ERecv, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wSZZS7utYR.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), RPB_ERecv(i,r,m,p)
 PROVE /\ IsP(i) /\ m.g \in Gens /\ m.g <= gen[r] /\ hp[r][m.g] = i /\ hd[r][m.g] = m.pe /\ m.pe \in DInst
       /\ p \in {0} \cup Pages /\ (p # 0 => Loc(p)=i /\ pst[p]="free")
 BY ONLY <1>wSZZS7utYR, Sizes, Location, Design DEF RPB_ERecv, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ncQrPI3hKD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), RPB_ERecv(i,r,m,p)
 PROVE \A q \in Pages : pst'[q] = IF p=q THEN "priv" ELSE pst[q]
<2> USE ONLY <1>ncQrPI3hKD, Sizes, Location, Design
 <2>1. RPB_T_pst /\ K7 BY <1>IXEagMJyQryQes, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF RPB_ERecv, K7, RPB_T_pst, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>shlSU8EWe.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), RPB_ERecv(i,r,m,p)
 PROVE \A q \in Pages : pr'[q] = IF p=q THEN r ELSE pr[q]
<2> USE ONLY <1>shlSU8EWe, Sizes, Location, Design
 <2>1. RPB_T_pr /\ K7 BY <1>IXEagMJyQryQes, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF RPB_ERecv, K7, RPB_T_pr, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lTj6k9XtIP.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), RPB_ERecv(i,r,m,p)
 PROVE \A q \in Pages : pgn'[q] = IF p=q THEN m.g ELSE pgn[q]
<2> USE ONLY <1>lTj6k9XtIP, Sizes, Location, Design
 <2>1. RPB_T_pgn /\ K7 BY <1>IXEagMJyQryQes, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF RPB_ERecv, K7, RPB_T_pgn, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AgW07nPomC.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), RPB_ERecv(i,r,m,p)
 PROVE \A q \in Pages : plt'[q] = IF p=q THEN 0 ELSE plt[q]
<2> USE ONLY <1>AgW07nPomC, Sizes, Location, Design
 <2>1. RPB_T_plt /\ K7 BY <1>IXEagMJyQryQes, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF RPB_ERecv, K7, RPB_T_plt, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dIk4UQGV47.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), RPB_ERecv(i,r,m,p)
 PROVE \A q \in Pages : ptl'[q] = IF p=q THEN 0 ELSE ptl[q]
<2> USE ONLY <1>dIk4UQGV47, Sizes, Location, Design
 <2>1. RPB_T_ptl /\ K7 BY <1>IXEagMJyQryQes, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF RPB_ERecv, K7, RPB_T_ptl, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fsTrUWuaOie.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), RPB_ERecv(i,r,m,p)
 PROVE \A q \in Pages : pvis'[q] = IF p=q THEN FALSE ELSE pvis[q]
<2> USE ONLY <1>fsTrUWuaOie, Sizes, Location, Design
 <2>1. RPB_T_pvis /\ K7 BY <1>IXEagMJyQryQes, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, Sizes, SMTT(5), Location, Design DEF RPB_ERecv, K7, RPB_T_pvis, Tag, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Z6sTi4WxI28.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), RPB_ERecv(i,r,m,p)
 PROVE \A q \in Pages : sfly'[q] = IF p=q THEN {Tag(r,m.g)} ELSE sfly[q]
<2> USE ONLY <1>Z6sTi4WxI28, Sizes, Location, Design
 <2>1. RPB_T_sfly /\ K7 BY <1>IXEagMJyQryQes, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. p # 0 => p \in Pages /\ sfly[p] = {}
  BY <2>1, SMTT(5), Sizes, Location, Design DEF RPB_ERecv, K7, Sizes, Location, Design
 <2>3. sfly' = IF p=0 THEN sfly ELSE [sfly EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
  BY SMTT(5), Sizes, Location, Design DEF RPB_ERecv, Sizes, Location, Design
 <2>4. SUFFICES ASSUME NEW q \in Pages PROVE sfly'[q] = IF p=q THEN {Tag(r,m.g)} ELSE sfly[q]
  BY SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. q # 0 BY Sizes, SMTT(5), Location, Design DEF Pages, Sizes, Location, Design
 <2>6. CASE p=0
  BY <2>3, <2>4, <2>5, <2>6, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>7. CASE p # 0
  <3>1. sfly'[q] = IF p=q THEN sfly[q] \cup {Tag(r,m.g)} ELSE sfly[q]
   BY <2>1, <2>3, <2>4, <2>7, SMTT(5), Sizes, Location, Design DEF RPB_T_sfly, Sizes, Location, Design
  <3>2. sfly[p] \cup {Tag(r,m.g)} = {Tag(r,m.g)}
   BY <2>2, <2>7, ZenonT(5), Sizes, Location, Design DEF Sizes, Location, Design
  <3>3. QED BY <3>1, <3>2, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>8. QED BY <2>6, <2>7, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZXZXrYuKNON.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), RPB_ERecv(i,r,m,p)
 PROVE \A q \in Pages : sled'[q] = IF p=q THEN {Tag(r,m.g)} ELSE sled[q]
<2> USE ONLY <1>ZXZXrYuKNON, Sizes, Location, Design
 <2>1. RPB_T_sled /\ K7 BY <1>IXEagMJyQryQes, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. p # 0 => p \in Pages /\ sled[p] = {}
  BY <2>1, SMTT(5), Sizes, Location, Design DEF RPB_ERecv, K7, Sizes, Location, Design
 <2>3. sled' = IF p=0 THEN sled ELSE [sled EXCEPT ![p] = @ \cup {Tag(r,m.g)}]
  BY SMTT(5), Sizes, Location, Design DEF RPB_ERecv, Sizes, Location, Design
 <2>4. SUFFICES ASSUME NEW q \in Pages PROVE sled'[q] = IF p=q THEN {Tag(r,m.g)} ELSE sled[q]
  BY SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. q # 0 BY Sizes, SMTT(5), Location, Design DEF Pages, Sizes, Location, Design
 <2>6. CASE p=0
  BY <2>3, <2>4, <2>5, <2>6, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>7. CASE p # 0
  <3>1. sled'[q] = IF p=q THEN sled[q] \cup {Tag(r,m.g)} ELSE sled[q]
   BY <2>1, <2>3, <2>4, <2>7, SMTT(5), Sizes, Location, Design DEF RPB_T_sled, Sizes, Location, Design
  <3>2. sled[p] \cup {Tag(r,m.g)} = {Tag(r,m.g)}
   BY <2>2, <2>7, ZenonT(5), Sizes, Location, Design DEF Sizes, Location, Design
  <3>3. QED BY <3>1, <3>2, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>8. QED BY <2>6, <2>7, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>x328zLl0hMxucpclK.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), RPB_ERecv(i,r,m,p)
 PROVE /\ \A j \in Inst, u \in Rq :
           /\ ph'[j][u] = IF j=i /\ u=r THEN (IF p=0 THEN "end" ELSE "pre") ELSE ph[j][u]
           /\ rg'[j][u] = IF j=i /\ u=r THEN m.g ELSE rg[j][u]
           /\ rpg'[j][u] = IF j=i /\ u=r THEN p ELSE rpg[j][u]
           /\ rx'[j][u] = IF j=i /\ u=r THEN 0 ELSE rx[j][u]
           /\ rpe'[j][u] = IF j=i /\ u=r THEN m.pe ELSE rpe[j][u]
           /\ (ph'[j][u] \in {"run","ovl"} <=> ph[j][u] \in {"run","ovl"})
       /\ ~Active(i,r) /\ (ph[i][r] # "none" => m.g > rg[i][r])
<2> USE ONLY <1>x328zLl0hMxucpclK, Sizes, Location, Design
 <2>1. RPB_T_ph /\ RPB_T_rg /\ RPB_T_rpg /\ RPB_T_rx /\ RPB_T_rpe BY <1>IXEagMJyQryQes, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, SMTT(5), Sizes, Location DEF RPB_ERecv, RPB_T_ph, RPB_T_rg, RPB_T_rpg, RPB_T_rx, RPB_T_rpe, NewGen, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rytNzPg2ZeeZ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), RPB_ERecv(i,r,m,p)
 PROVE /\ \A j \in DInst, u \in Rq : UNCHANGED <<ph[j][u],rg[j][u],rpg[j][u],rx[j][u],rpe[j][u]>>
       /\ \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],ptl[q],pvis[q],sfly[q],sled[q]>>
<2> USE ONLY <1>rytNzPg2ZeeZ, Sizes, Location, Design
 <2>1. \A j \in DInst : j \in Inst /\ j # i
  BY <1>wSZZS7utYR, Sizes, SMTT(5), Location, Design DEF IsP, Inst, PInst, DInst, NL, Sizes, Location, Design
 <2>2. \A j \in DInst, u \in Rq : UNCHANGED <<ph[j][u],rg[j][u],rpg[j][u],rx[j][u],rpe[j][u]>>
  BY <2>1, <1>x328zLl0hMxucpclK, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. \A q \in Pages : IsD(Loc(q)) => q # p
  BY <1>wSZZS7utYR, Sizes, SMTT(5), Location, Design DEF IsP, IsD, Inst, PInst, DInst, NL, Pages, Sizes, Location, Design
 <2>4. QED BY <2>2, <2>3, <1>ncQrPI3hKD, <1>shlSU8EWe, <1>lTj6k9XtIP, <1>AgW07nPomC, <1>dIk4UQGV47, <1>fsTrUWuaOie, <1>Z6sTi4WxI28, <1>ZXZXrYuKNON, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1921_PdRPBPP_PdERecvPoints


<1>VdkHHPL0DEoxQtDeBju254w7.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>VdkHHPL0DEoxQtDeBju254w7, Sizes, Location, Design
<2>1. BaseSealOnlyLanded /\ K7 /\ RPB_T_krs /\ RPB_T_led /\ RPB_T_nx /\ RPB_T_pgn /\ RPB_T_ph /\ RPB_T_plt /\ RPB_T_pr /\ RPB_T_pst /\ RPB_T_ptl /\ RPB_T_pvis /\ RPB_T_rg /\ RPB_T_rpe /\ RPB_T_rpg /\ RPB_T_rx /\ RPB_T_sfly /\ RPB_T_sled
 BY <1>IXEagMJyQryQes, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K7, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, RPB_Types, BaseSafety, ReadOwnLanded, SealOnlyLanded, SendOwnLanded, Sizes, Location, Design
<2>2. PICK m \in net, p \in {0} \cup Pages : RPB_ERecv(i,r,m,p)
 BY <1>LJVyF1auRuzq, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>Nfuh7gDTOHN1zem, Design, Sizes, Location, SMTT(5) DEF Active, RPB_ERecv, GrownP, InFl, IsD, K7, KSlots, Maps, NewGen, NoWriteInto, BaseSealOnlyLanded, RPB_T_krs, RPB_T_led, RPB_T_nx, RPB_T_pgn, RPB_T_ph, RPB_T_plt, RPB_T_pr, RPB_T_pst, RPB_T_ptl, RPB_T_pvis, RPB_T_rg, RPB_T_rpe, RPB_T_rpg, RPB_T_rx, RPB_T_sfly, RPB_T_sled, Tag, Writing, instV, kV, rtV, xV, Sizes, Location, Design
\* T2M-END R2M1925_PdRPBPP_PdE_PRecvReq_SealOnlyLanded


<1>Jk9atDZEaRFATlL2Zo.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE RP_NoNewStop /\ RP_DReadFrame /\ UNCHANGED xdst
<2> USE ONLY <1>Jk9atDZEaRFATlL2Zo, Sizes, Location, Design
<2>1. PICK m \in net, p \in {0} \cup Pages : RPB_ERecv(i,r,m,p)
 BY ONLY <1>Jk9atDZEaRFATlL2Zo, <1>LJVyF1auRuzq, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw,xdst>>
 BY ONLY <1>Jk9atDZEaRFATlL2Zo, <2>1, <1>rytNzPg2ZeeZ, <1>Nfuh7gDTOHN1zem, <1>bNi3s2jXOT7KM0Es9, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RPB_EDRecFrame
 BY ONLY <1>Jk9atDZEaRFATlL2Zo, <2>1, Sizes, Location, Design, <1>rytNzPg2ZeeZ, <1>Nfuh7gDTOHN1zem, <1>bNi3s2jXOT7KM0Es9, SMTT(10) DEF RPB_EDRecFrame, Sizes, Location, Design
<2>4. RP_DReadFrame
 BY ONLY <2>3, SMTT(10), Sizes, Location, Design DEF RP_DReadFrame, RPB_EDRecFrame, Sizes, Location, Design
<2>5. RP_NoNewStop
 BY ONLY <2>2, SMTT(10), Sizes, Location, Design DEF RP_NoNewStop, Sizes, Location, Design
<2>6. QED BY ONLY <2>2, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>S5YMw3z8tDTEhD4rVo.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>S5YMw3z8tDTEhD4rVo, Sizes, Location, Design
<2>1. UNCHANGED xdst BY <1>Jk9atDZEaRFATlL2Zo, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xdst' \in [Xids -> 0..NP] 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>S5YMw3z8tDTEhD4rVo, <2>1, V22_T_xdst, SMTT(5)

<2>3. QED BY <2>2, <1>GEiwvO5S4Wv9uAOYEb8qtLWYsu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>j5l6kblfco4BZlM5wumFTuG.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE SealOnlyLanded'
 BY ONLY <1>j5l6kblfco4BZlM5wumFTuG, Sizes, Location, Design, <1>VdkHHPL0DEoxQtDeBju254w7, <1>S5YMw3z8tDTEhD4rVo DEF SealOnlyLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>qGRfDmIYzA, <1>bd8V2STuY8m, <1>q3Ed6YxiK4s, <1>kxn1UiQqDmL, <1>OuTXx5GUUR8wRVvB5, <1>i5hPlwRDHsOhUrNhm21it9O, <1>j5l6kblfco4BZlM5wumFTuG, <1>V2PvzKDR9ou1, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF P_PagePoolsDisjoint, Part_PRecvReq_03_01, V21_Inv_BaseSafety, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K2, V21_Inv_K7, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_QuarNoReg, V21_Inv_ReadOwnLanded, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapPoint, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rg, V22_T_rpgS, V22_T_sfly, V22_T_sled, V22_T_xdst
====
