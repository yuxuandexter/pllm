---- MODULE PdFinalAction_PExpose ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, Integers, TLAPS, PdFinalAuxType_027d8d9d83cf40b0, PdFinalAuxType_0cd814f5e0dc64c0, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PExpose_02

\* Complete original body PdFinalPart_PExpose_04_01 SHA 52d7f5b832be3ad48be584ba8f14162bae9d859246689dcc2887e70aa9390d59
HIDE DEF AuxType_027d8d9d83cf40b0, AuxType_0cd814f5e0dc64c0, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_PExpose_01_01, Part_PExpose_01_02, Part_PExpose_02_01, Part_PExpose_02_02, Part_PExpose_03_01, Part_PExpose_03_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K15, V21_Inv_K16, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrcP, V22_T_xsrcS
THEOREM Part_PExpose_04_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE (P_SI6)' /\ (K3)' /\ (K17)' /\ (SI8)' /\ (PrivateMapOwner)' /\ (S2)' /\ (EntryQuarantineDisjoint)' /\ (P_B2OffInit)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE SKXMH9(i,r) == rg'[i][r] # rg[i][r]


           YoZCNdW(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           yRiuUrmy(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           o2PqE(unused) == {h \in rpgS : yRiuUrmy(h) \/ (YoZCNdW(h) /\ Mut # "unrefBeforeKDone")}


           xGwcBEcmY(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           rd1IZu(x) == IF xGwcBEcmY(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           SuEEX(unused) == [x \in Xids |-> IF xGwcBEcmY(x) THEN (IF rd1IZu(x) \in SPages /\ spst[rd1IZu(x)]="shared" THEN {rd1IZu(x)} ELSE {}) ELSE xsrcS[x]]


           XjZJP(unused) == [x \in Xids |-> IF xGwcBEcmY(x) THEN (IF rd1IZu(x) \in SPages /\ spst[rd1IZu(x)]="priv" THEN {rd1IZu(x)} ELSE {}) ELSE xsrcP[x]]


           csjI5RPR(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           ZdeEe4zmp3uag(x) == x \in sentry /\ ~csjI5RPR(x) /\
                     ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           vLn7d(unused) == (sentry \cup {x \in Xids : xGwcBEcmY(x)}) \ {x \in Xids : csjI5RPR(x) \/ ZdeEe4zmp3uag(x)}


           dLu17(unused) == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
                                   UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : ZdeEe4zmp3uag(x)}})


           NXhXrvU9(p) == spst[p]="priv" /\ sown[p] \in Rq /\
                    (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           i08nRBE(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           K9XTdyW(p) == (NXhXrvU9(p) \/ spst[p] \in {"drain","dup"}) /\ ~i08nRBE(p) /\ sready[p] /\ ~(\E x \in vLn7d(0) : p \in XjZJP(0)[x])


           JBL3tE9j(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
                    spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           vuZd9ejUPGa3lV56 == /\ rpgS'=o2PqE(0) /\ xsrcS'=SuEEX(0) /\ xsrcP'=XjZJP(0) /\ sentry'=vLn7d(0) /\ squar'=dLu17(0)
                /\ sprefc'=[p \in SPages |-> sprefc[p]+SRefR(o2PqE(0),p)-SRefR(rpgS,p)
                                    +SRefE(vLn7d(0),SuEEX(0),p)-SRefE(sentry,xsrcS,p)+SRefQ(dLu17(0),p)-SRefQ(squar,p)]
                /\ smap'=[i \in PInst |-> [r \in Rq |-> IF SKXMH9(i,r) THEN 0 ELSE smap[i][r]]]
                /\ schoice'=[i \in PInst |-> [r \in Rq |-> IF SKXMH9(i,r) THEN FALSE ELSE schoice[i][r]]]
                /\ spst'=[p \in SPages |-> IF \E x \in Xids : ZdeEe4zmp3uag(x) /\ p \in xsrcP[x] THEN "quar"
                                    ELSE IF K9XTdyW(p) THEN "free" ELSE IF NXhXrvU9(p) THEN "drain" ELSE spst[p]]
                /\ xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN JBL3tE9j(x) ELSE xprefixOK[x]]
                /\ dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                                    THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                                          (IF hw[x]="issued" THEN xprefixOK[x] ELSE JBL3tE9j(x))
                                    ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
                /\ UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>


           P28Z9h_alpV7bpoxO == \A i \in PInst,r \in Rq :
            (Active(i,r)' /\ rg'[i][r]=rg[i][r]) => Active(i,r)



           RP_New(i,r) == rg'[i][r] # rg[i][r]


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

           RP2_RdOpen == \A x \in Xids : (xk'[x]="rd" /\ xst'[x]="posted") =>
            ~RP_Close(x) /\ (RP_Posted(x) \/ (xk[x]="rd" /\ xst[x]="posted"))

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF SKXMH9, YoZCNdW, yRiuUrmy, o2PqE, xGwcBEcmY, rd1IZu, SuEEX, XjZJP, csjI5RPR, ZdeEe4zmp3uag, vLn7d, dLu17, NXhXrvU9, i08nRBE, K9XTdyW, JBL3tE9j, vuZd9ejUPGa3lV56, P28Z9h_alpV7bpoxO, RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_GenMonotone, RP_KPhaseProgress, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, RP2_RdOpen

<1>pd2OFU6YkaUFY95tm.        
 ASSUME B2, SFollow
 PROVE vuZd9ejUPGa3lV56
 BY ONLY <1>pd2OFU6YkaUFY95tm, Sizes, Location, Design, ZenonT(10) DEF SFollow, vuZd9ejUPGa3lV56, SKXMH9, YoZCNdW, yRiuUrmy, o2PqE, xGwcBEcmY, rd1IZu, SuEEX, XjZJP, csjI5RPR, ZdeEe4zmp3uag, vLn7d, dLu17, NXhXrvU9, i08nRBE, K9XTdyW, JBL3tE9j, Sizes, Location, Design


<1>c1NvR5k2Hf.        
 ASSUME PinInv, B2, SFollow, P28Z9h_alpV7bpoxO,
        NEW i \in PInst, NEW r \in Rq, Active(i,r)', smap'[i][r] \in SPages
 PROVE Active(i,r) /\ rg'[i][r]=rg[i][r] /\ smap'[i][r]=smap[i][r]
<2> USE ONLY <1>c1NvR5k2Hf, Sizes, Location, Design
<2>1. vuZd9ejUPGa3lV56 BY <1>pd2OFU6YkaUFY95tm, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rg'[i][r]=rg[i][r] /\ smap'[i][r]=smap[i][r]
 BY <2>1, Sizes, SMTT(10), Location, Design DEF vuZd9ejUPGa3lV56, SKXMH9, SPages, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF P28Z9h_alpV7bpoxO, Sizes, Location, Design


<1>RcA1VC7hI8.        
 ASSUME PinInv, SFollow, P28Z9h_alpV7bpoxO
 PROVE PrivateMapOwner'
<2> USE ONLY <1>RcA1VC7hI8, Sizes, Location, Design
<2>1. PrivateMapOwner BY V21_Inv_PrivateMapOwner, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF PrivateMapOwner, Sizes, Location, Design
<2>3. CASE B2
 <3>1. vuZd9ejUPGa3lV56 BY <2>3, <1>pd2OFU6YkaUFY95tm, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW i \in PInst, NEW r \in Rq,
              Active(i,r)', smap'[i][r] \in SPages, spst'[smap'[i][r]]="priv"
        PROVE sown'[smap'[i][r]]=r /\ sgen'[smap'[i][r]]=rg'[i][r]
  <4>1. Active(i,r) /\ rg'[i][r]=rg[i][r] /\ smap'[i][r]=smap[i][r]
   BY <2>3, <3>2, <1>c1NvR5k2Hf, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. spst[smap[i][r]]="priv"
   BY <3>1, <3>2, <4>1, SMTT(10), Sizes, Location, Design DEF vuZd9ejUPGa3lV56, Sizes, Location, Design
  <4>3. QED BY <2>1, <2>3, <3>1, <3>2, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF PrivateMapOwner, vuZd9ejUPGa3lV56, Sizes, Location, Design
 <3>3. QED BY <2>3, <3>2, Sizes, Location, Design DEF PrivateMapOwner, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>WgHhghZX0y.        
 ASSUME PinInv, SFollow
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>WgHhghZX0y, Sizes, Location, Design
<2>1. EntryQuarantineDisjoint /\ STypeOK /\ (B2 => SI4 /\ SI5)
 BY V21_Inv_EntryQuarantineDisjoint, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI4, P_SI5, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
<2>3. CASE B2
 <3>1. vuZd9ejUPGa3lV56 BY <2>3, <1>pd2OFU6YkaUFY95tm, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW x \in sentry', NEW p \in xsrcS'[x]
        PROVE <<x,p>> \notin squar'
  <4>1. x \in Xids /\ ~ZdeEe4zmp3uag(x) /\ (x \in sentry \/ xGwcBEcmY(x))
   BY <2>1, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF STypeOK, vuZd9ejUPGa3lV56, vLn7d, Sizes, Location, Design
  <4>2. CASE xGwcBEcmY(x)
   <5>1. xsrcS[x]={}
    BY <2>1, <2>3, <4>1, <4>2, Sizes, SMTT(10), Location, Design DEF SI4, xGwcBEcmY, Pages, Sizes, Location, Design
   <5>2. <<x,p>> \notin squar
    BY <2>1, <2>3, <5>1, SMTT(10), Sizes, Location, Design DEF SI5, Sizes, Location, Design
   <5>3. QED BY <3>1, <4>1, <5>2, SMTT(10), Sizes, Location, Design DEF vuZd9ejUPGa3lV56, dLu17, Sizes, Location, Design
  <4>3. CASE ~xGwcBEcmY(x)
   <5>1. x \in sentry /\ p \in xsrcS[x]
    BY <3>1, <3>2, <4>1, <4>3, SMTT(10), Sizes, Location, Design DEF vuZd9ejUPGa3lV56, SuEEX, Sizes, Location, Design
   <5>2. <<x,p>> \notin squar
    BY <2>1, <2>3, <5>1, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
   <5>3. QED BY <3>1, <4>1, <5>2, SMTT(10), Sizes, Location, Design DEF vuZd9ejUPGa3lV56, dLu17, Sizes, Location, Design
  <4>4. QED BY <4>2, <4>3, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>3, <3>2, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>kFiSZLfq5xqfNQjIVzvQdb.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE P28Z9h_alpV7bpoxO
<2> USE ONLY <1>kFiSZLfq5xqfNQjIVzvQdb, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>kFiSZLfq5xqfNQjIVzvQdb, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF P28Z9h_alpV7bpoxO, Active, PInst, Inst, NL, EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design


<1>c5YmKgz2d7kzTodgXtoYQTHF.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE PrivateMapOwner'
 BY ONLY <1>c5YmKgz2d7kzTodgXtoYQTHF, Sizes, Location, Design, <1>kFiSZLfq5xqfNQjIVzvQdb, <1>RcA1VC7hI8 DEF Sizes, Location, Design


<1>eGXBmC46Fv5hf7MldroadXTy7VFMWyQ8.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE EntryQuarantineDisjoint'
 BY ONLY <1>eGXBmC46Fv5hf7MldroadXTy7VFMWyQ8, Sizes, Location, Design, <1>WgHhghZX0y DEF Sizes, Location, Design


<1>m948gxWe0.        
 P_B2OffInit /\ UNCHANGED <<dedupSeen, dpreOK, hitSeen, rpgS, schoice, sdata, sentry, sgen, skey, smap, sown, sprefc, spst, squar, sready, swrite, xprefixOK, xsrcP, xsrcS>> => P_B2OffInit'
 BY IsaT(10), Sizes, Location, Design DEF P_B2OffInit, SInit, Sizes, Location, Design
\* T2M-END R2M0451_PdPF_B2OffInit


<1>Cz6CQosZ2W2SGJJmf.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>Cz6CQosZ2W2SGJJmf, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0488_PdPOff_PExpose


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

<1>uA3WqSbIQGcGz0.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>uA3WqSbIQGcGz0, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nwtTavMq8af03RrXUlAK6g.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>nwtTavMq8af03RrXUlAK6g, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>nwtTavMq8af03RrXUlAK6g, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

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


<1>V9wtAoQAr6QMJLEVvld.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE RP_GenMonotone /\ RP_KPhaseProgress
<2> USE ONLY <1>V9wtAoQAr6QMJLEVvld, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>V9wtAoQAr6QMJLEVvld, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_GenMonotone, RP_KPhaseProgress, PInst, Inst, NL, EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hr7WVMx14n5.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE P_SI6'
 BY ONLY <1>hr7WVMx14n5, Sizes, Location, Design, <1>uA3WqSbIQGcGz0, <1>nwtTavMq8af03RrXUlAK6g, <1>V9wtAoQAr6QMJLEVvld, <1>sP1gMFHuwAB DEF Sizes, Location, Design
\* T2M-END R2M1423_PdRPExtra_PExpose


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>fT88b6.        
  ASSUME K17, K14, c02OO, UNCHANGED <<kpin,krs>>,
         \A j \in Inst, u \in Rq : IsD(j) =>
           ph'[j][u] = ph[j][u] /\ rg'[j][u] = rg[j][u] /\ rpg'[j][u] = rpg[j][u]
  PROVE K17'
<2> USE ONLY <1>fT88b6, Sizes, Location, Design
<2>1. SUFFICES ASSUME NEW j \in Inst, NEW s \in KSlots,
                     NEW e \in krs'[j][s], kpin'[j][s], e[4] \in {2,3}
                PROVE rg'[j][e[1]] > e[2] \/
                  (rg'[j][e[1]] = e[2] /\ ph'[j][e[1]] \in {"run","ovl","end"} /\ rpg'[j][e[1]] # e[3])
  BY SMTT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
<2>2. kpin[j][s] /\ e \in krs[j][s] /\ e[1] \in Rq
  BY <2>1, SMTT(10), Sizes, Location, Design DEF c02OO, Sizes, Location, Design
<2>3. IsD(j)
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K14, Sizes, Location, Design
<2>4. rg[j][e[1]] > e[2] \/
       (rg[j][e[1]] = e[2] /\ ph[j][e[1]] \in {"run","ovl","end"} /\ rpg[j][e[1]] # e[3])
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1481_PdRPPP_PdK17DFrame


<1>BXyH9j1U0fhI.        
  ASSUME NEW rr, NEW gg, S2, a1R5, CXAy, SHJS, nx <= MX,
         \A x \in Xids : x < nx => xr[x] # rr \/ xg[x] # gg,
         nx' = nx + 1, xr' = [xr EXCEPT ![nx] = rr], xg' = [xg EXCEPT ![nx] = gg]
  PROVE S2'
<2> USE ONLY <1>BXyH9j1U0fhI, Sizes, Location, Design
<2>1. nx \in Xids
  BY Sizes, SMTT(10), Location, Design DEF SHJS, Xids, Sizes, Location, Design
<2>2. SUFFICES ASSUME NEW x1 \in Xids, NEW x2 \in Xids,
                     x1 < nx', x2 < nx', x1 # x2
                PROVE xr'[x1] # xr'[x2] \/ xg'[x1] # xg'[x2]
  BY SMTT(10), Sizes, Location, Design DEF S2, Sizes, Location, Design
<2>3. x1 <= nx /\ x2 <= nx
  BY <2>2, Sizes, SMTT(10), Location, Design DEF Xids, SHJS, Sizes, Location, Design
<2>4. CASE x1 = nx
  BY <2>1, <2>2, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF a1R5, CXAy, Xids, SHJS, Sizes, Location, Design
<2>5. CASE x2 = nx
  BY <2>1, <2>2, <2>3, <2>5, Sizes, SMTT(10), Location, Design DEF a1R5, CXAy, Xids, SHJS, Sizes, Location, Design
<2>6. CASE x1 # nx /\ x2 # nx
  BY <2>1, <2>2, <2>3, <2>6, Sizes, SMTT(10), Location, Design DEF S2, a1R5, CXAy, Xids, SHJS, Sizes, Location, Design
<2>7. QED BY <2>4, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1205_PdRDLegacy_PP_PdFreshXferUnique


<1>Ih1ajIm6Hk.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpose(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xdst>>
  BY ONLY <1>Ih1ajIm6Hk, Sizes, Location, Design, ZenonT(5) DEF PExpose, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1599_PdRPPP_PdPExposeFrames

\* T2M-SCOPE R2M1600_PdRPPP_PdCell_PExpose_K17

<1>mTtrXwAV.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
  PROVE K17'
<2> USE ONLY <1>mTtrXwAV, Sizes, Location, Design
<2>1. K17 /\ K14 /\ c02OO /\ AydA /\ nNeM /\ q1Ohy
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K14, V21_Inv_K17, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs>>
  BY <1>Ih1ajIm6Hk, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A j \in Inst, u \in Rq : IsD(j) =>
           ph'[j][u] = ph[j][u] /\ rg'[j][u] = rg[j][u] /\ rpg'[j][u] = rpg[j][u]
  BY <2>1, Sizes, SMTT(10), Location, Design DEF PExpose, PEnd, AydA, nNeM, q1Ohy, IsP, IsD, Inst, NL, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>fT88b6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1600_PdRPPP_PdCell_PExpose_K17

\* T2M-SCOPE R2M1601_PdRPPP_PdCell_PExpose_K3

<1>cWhYtMX.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
  PROVE K3'
<2> DEFINE StepK3(q) ==
        /\ (iv[q] \in {"none", "nopost", "reg"}) <=> (hw[q] = "none")
        /\ iv[q] = "reg" => (xk[q] = "wr" /\ PReg /\ xst[q] = "posted")
        /\ iv[q] = "cqe" => hw[q] \in CqeHw(q)
        /\ hw[q] = "issued" => xk[q] = "wr"
        /\ xst[q] = "revoked" => iv[q] = "nopost"
        /\ xst[q] = "landed" => (hw[q] = "stop" /\ hok[q] /\ xlt[q] = xnt[q])   \* RB-002：只有 lt = 计划才算落地
        /\ (xk[q] = "rd" /\ iv[q] \notin {"none", "nopost"}) => xlt[q] = xnt[q]   \* RB-002：pull 的 D 只在 lt = 计划时发 READ
        /\ xst[q] = "failed" => IF xk[q] = "wr" THEN (hw[q] = "stop" /\ hok[q] /\ xlt[q] # xnt[q])   \* D-082：push 的 failed 只来自 BAD_LEN
                                 ELSE ((iv[q] = "cqe" /\ hw[q] = "stop" /\ ~hok[q]) \/ iv[q] = "nopost")
        /\ InFl(q) => (xst[q] = "posted" /\ (iv[q] \in {"posted", "failret"} \/ (iv[q] = "cqe" /\ hw[q] = "issued" /\ ~hok[q])))
<2> HIDE DEF StepK3
<2>1. K2 /\ K3 /\ TypInv BY ONLY <1>cWhYtMX, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>1a. nx \in 1..(MX+1)
       /\ xk \in [Xids -> {"none", "wr", "rd"}]
       /\ xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]
       /\ xlt \in [Xids -> 0..PS] /\ xnt \in [Xids -> 0..PS]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>cWhYtMX, V22_T_nx, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xst, SMTT(5)

<2>2. UNCHANGED <<hok,hw,iv>>
 BY ONLY <1>cWhYtMX, <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xk'=[xk EXCEPT ![nx]="rd"] /\ xst'=[xst EXCEPT ![nx]="posted"]
       /\ xlt'=[xlt EXCEPT ![nx]=LtOf(i,r)] /\ xnt'=[xnt EXCEPT ![nx]=NTok(r,rg[i][r])]
 BY ONLY <1>cWhYtMX, SMTT(10), Sizes, Location, Design DEF PExpose, Sizes, Location, Design
<2>4. ASSUME NEW y \in Xids PROVE StepK3(y)'
 <3>1. CASE y=nx
  <4>1. iv[y]="none" /\ hw[y]="none"
   BY ONLY <2>1, <2>1a, <2>4, <3>1, SMTT(10), Sizes, Location, Design DEF K2, Sizes, Location, Design
  <4>2. QED BY ONLY <2>1a, <2>2, <2>3, <2>4, <3>1, <4>1, SMTT(10), Sizes, Location, Design DEF StepK3, CqeHw, InFl, Sizes, Location, Design
 <3>2. CASE y#nx
  <4>1. xk'[y]=xk[y] /\ xst'[y]=xst[y] /\ xlt'[y]=xlt[y] /\ xnt'[y]=xnt[y]
   BY ONLY <2>1a, <2>3, <2>4, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. QED BY ONLY <2>1, <2>2, <2>4, <4>1, SMTT(10), Sizes, Location, Design DEF K3, StepK3, CqeHw, InFl, Sizes, Location, Design
 <3>3. QED BY ONLY <3>1, <3>2, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY ONLY <2>4, Sizes, Location, Design DEF K3, StepK3, Sizes, Location, Design
\* T2M-END R2M1601_PdRPPP_PdCell_PExpose_K3

\* T2M-SCOPE R2M1602_PdRPPP_PdCell_PExpose_S2

<1>HYsuKUB.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
  PROVE S2'
<2> USE ONLY <1>HYsuKUB, Sizes, Location, Design
<2>1. K2 /\ K8 /\ S1 /\ S2 /\ SHJS /\ a1R5 /\ CXAy
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K2, V21_Inv_K8, V21_Inv_S1, V21_Inv_S2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. Mode = "pull" /\ IsP(i) /\ ph[i][r] = "ready" /\ nx <= MX
       /\ nx' = nx + 1 /\ xr' = [xr EXCEPT ![nx] = r]
       /\ xg' = [xg EXCEPT ![nx] = rg[i][r]]
  BY Design, SMTT(10), Sizes, Location DEF PExpose, SendReady, Sizes, Location, Design
<2>3. rx[i][r] = 0 /\ hp[r][rg[i][r]] = i /\ rg[i][r] \in Gens /\ Active(i,r)
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K8, Active, Sizes, Location, Design
<2>4. \A x \in Xids : x < nx => xr[x] # r \/ xg[x] # rg[i][r]
  <3>1. SUFFICES ASSUME NEW x \in Xids, x < nx, xr[x] = r, xg[x] = rg[i][r]
                  PROVE FALSE
    BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. xk[x] = "rd" /\ xp[x] = i
    BY <2>1, <2>2, <2>3, <3>1, Sizes, SMTT(10), Location, Design DEF K2, SHJS, Xids, Sizes, Location, Design
  <3>3. ExpInst(x) = i
    BY <3>2, SMTT(10), Sizes, Location, Design DEF ExpInst, Sizes, Location, Design
  <3>4. rx[i][r] = x
    BY <2>1, <2>3, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF S1, Sizes, Location, Design
  <3>5. QED BY <2>3, <3>1, <3>4, Sizes, SMTT(10), Location, Design DEF Xids, Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>4, <1>BXyH9j1U0fhI, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1602_PdRPPP_PdCell_PExpose_S2


<1>dxfsDnneu.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K3'
  BY ONLY <1>dxfsDnneu, Sizes, Location, Design, <1>cWhYtMX, V21_Inv_K3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AyeRbC6gDS.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K17'
  BY ONLY <1>AyeRbC6gDS, Sizes, Location, Design, <1>mTtrXwAV, V21_Inv_K17 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>akNo5D4tu.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE S2'
  BY ONLY <1>akNo5D4tu, Sizes, Location, Design, <1>HYsuKUB, V21_Inv_S2 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HHsseOgtYnRd.        
 ASSUME PinInv, SFollow, RP2_RdOpen
 PROVE SI8'
<2> USE ONLY <1>HHsseOgtYnRd, Sizes, Location, Design
<2>1. SI8 /\ (B2 => SI4) /\ STypeOK
 BY V21_Inv_P_SI4, V21_Inv_SI8, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RP_SFollowEffect BY <2>3, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. squar \subseteq squar' BY <3>1, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_Q2, Sizes, Location, Design
 <3>3. ASSUME NEW x \in Xids, xk'[x]="rd", xst'[x]="posted"
        PROVE x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
  <4>1. ~RP_Close(x) /\ (RP_Posted(x) \/ (xk[x]="rd" /\ xst[x]="posted"))
   BY <3>3, Sizes, Location, Design DEF RP2_RdOpen, Sizes, Location, Design
  <4>2. CASE RP_Posted(x)
   <5>1. x \notin sentry BY <2>1, <2>3, <3>3, <4>2, Sizes, SMTT(10), Location, Design DEF SI4, RP_Posted, Pages, Sizes, Location, Design
   <5>2. ~RP_Quarantine(x) BY <5>1, Sizes, Location, Design DEF RP_Quarantine, Sizes, Location, Design
   <5>3. QED BY <3>1, <3>3, <4>1, <4>2, <5>2, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_E2, Sizes, Location, Design
  <4>3. CASE ~RP_Posted(x)
   <5>1. xsrcS'[x]=xsrcS[x] BY <3>1, <3>3, <4>3, Sizes, Location, Design DEF RP_SFollowEffect, RP_SX, Sizes, Location, Design
   <5>2. x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
    BY <2>1, <2>3, <3>3, <4>1, <4>3, Sizes, Location, Design DEF SI8, Sizes, Location, Design
   <5>3. (x \in sentry /\ ~RP_Quarantine(x)) => x \in sentry'
    BY <3>1, <3>3, <4>1, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_E2, Sizes, Location, Design
   <5>4. RP_Quarantine(x) => \A p \in xsrcS[x] : <<x,p>> \in squar'
    BY <2>3, <3>3, <1>KReYXg7MU3qwoztWhw, Sizes, Location, Design DEF Sizes, Location, Design
   <5>5. QED BY <3>2, <5>1, <5>2, <5>3, <5>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>4. QED BY <4>2, <4>3, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY <2>3, <3>3, Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1977_PdRPR2SI8


<1>Z7oyhKNLwwfGTH7.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE RP2_RdOpen
<2> USE ONLY <1>Z7oyhKNLwwfGTH7, Sizes, Location, Design
<2>1. K2 /\ K8 BY V21_Inv_K2, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xsrc \in [Xids -> 0..NP] /\ xk \in [Xids -> {"none","wr","rd"}] /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}] /\ nx \in 1..(MX+1)
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Z7oyhKNLwwfGTH7, V22_T_nx, V22_T_xk, V22_T_xsrc, V22_T_xst, SMTT(5)

<2>3. rpg[i][r] \in Pages
 BY <2>1, Design, SMTT(10), Sizes, Location DEF K8, PExpose, SendReady, Active, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, Design, Sizes, SMTT(10), Location DEF RP2_RdOpen, RP_Posted, RP_Close, K2, Xids, EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cXwLQeH7r0Qn.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE SI8'
 BY ONLY <1>cXwLQeH7r0Qn, Sizes, Location, Design, <1>Z7oyhKNLwwfGTH7, <1>HHsseOgtYnRd DEF Sizes, Location, Design
\* T2M-END R2M1978_PdRPR2SI8_PExpose


<1> QED BY <1>hr7WVMx14n5, <1>dxfsDnneu, <1>AyeRbC6gDS, <1>cXwLQeH7r0Qn, <1>c5YmKgz2d7kzTodgXtoYQTHF, <1>akNo5D4tu, <1>eGXBmC46Fv5hf7MldroadXTy7VFMWyQ8, <1>Cz6CQosZ2W2SGJJmf, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_PExpose SHA e855d841efc37d2a1b13fc8cd169f81426308b124b2b57c3a062448daca1da86
USE DEF ShapeReadyLength, Shape_T_nx, Shape_T_ph, Shape_T_rg, Shape_T_rpe, Shape_T_rpg
HIDE DEF Part_PExpose_04_01, V21_Inv_EntryQuarantineDisjoint, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_S1, V21_Inv_S2, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_TypeOK, V21_SFollowOff, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapPoint, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_krs, V22_T_nx, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xsrc, V22_T_xst
LEMMA ShapeEffect_PExpose ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Design, PExpose(i,r)
 PROVE /\ ph[i][r]="ready" /\ nx <= MX
 /\ net' = net \cup {Msg("sinfo",i,rpe[i][r],r,rg[i][r],nx,rpg[i][r],LtOf(i,r),FALSE)}
 BY ONLY PExpose(i,r), Sizes, Design, SMTT(5) DEF PExpose, SendReady, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_PExpose ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Design, IndInv, MessageShape, PExpose(i,r)
 PROVE MessageShape'
<1>1. /\ ph[i][r]="ready" /\ nx <= MX
 /\ net' = net \cup {Msg("sinfo",i,rpe[i][r],r,rg[i][r],nx,rpg[i][r],LtOf(i,r),FALSE)}
 BY ONLY Sizes, Design, PExpose(i,r), ShapeEffect_PExpose
<1>2. nx \in 1..(MX + 1) /\ ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]] /\ rpe \in [Inst -> [Rq -> {0} \cup Inst]] /\ rpg \in [Inst -> [Rq -> 0..NP]]
 BY ONLY IndInv, Shape_T_nx, Shape_T_ph, Shape_T_rg, Shape_T_rpe, Shape_T_rpg

<1>3. LtOf(i,r) \in 0..PS
 BY ONLY <1>1, IndInv, ShapeReadyLength, SMTT(5)
<1>4. nx \in Xids /\ rpg[i][r] \in {0} \cup Pages /\ rg[i][r] \in {0} \cup Gens /\ rpe[i][r] \in {0} \cup Inst
 BY ONLY <1>1, <1>2, Sizes, SMTT(5) DEF Sizes, Xids, Pages, Gens
<1>5. Msg("sinfo",i,rpe[i][r],r,rg[i][r],nx,rpg[i][r],LtOf(i,r),FALSE) \in MsgSpace
 BY ONLY <1>3, <1>4, SMTT(5) DEF MsgT, Msg, MsgSpace
<1>6. QED BY ONLY <1>1, <1>5, MessageShape, SMTT(5) DEF MessageShape, MsgSpace

\* Complete original body PdDomain_PExpose SHA 11621b8618e05736188584970edbb560b5353078181840bae1a71f2b65a75e3a
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_PExpose, ShapeReadyLength, Shape_T_ph, Shape_T_rg, Shape_T_rpe, Shape_T_rpg
THEOREM DomainKeep_PExpose ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, PExpose(i,r)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. /\ ph[i][r]="ready" /\ nx <= MX
 /\ net' = net \cup {Msg("sinfo",i,rpe[i][r],r,rg[i][r],nx,rpg[i][r],LtOf(i,r),FALSE)}
 BY ONLY Sizes, Location, Design, PinInv, PExpose(i,r), ShapeEffect_PExpose
<1>3. nx \in Xids
 BY ONLY <1>2, PinInv, Sizes, Shape_T_nx, SMTT(5) DEF PinInv, Xids
<1>4. QED BY ONLY <1>1, <1>2, <1>3, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalPart_PExpose_04_02 SHA 9ea037b3d989c77fa00e69235d8900e842df54e58a855ce9256f95fa828b3281
USE DEF V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K14, V21_Inv_K6, V21_Inv_OneReply, V21_Inv_ReplyTruth, V21_Inv_S3, V21_Inv_S4, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst
HIDE DEF ShapeEffect_PExpose, Shape_T_nx, V21_Inv_MsgXDomain
THEOREM Part_PExpose_04_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE (K1)' /\ (K6)' /\ (K14)' /\ (S3)' /\ (S4)' /\ (GenFiltered)' /\ (OneReply)' /\ (ReplyTruth)' /\ (SharedImmutable)' /\ (MsgXDomain)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
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

<1>ZGHsBqWE2M1OSLyLI7lxhdW.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>ZGHsBqWE2M1OSLyLI7lxhdW, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ZGHsBqWE2M1OSLyLI7lxhdW, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF PExpose, ghV, instV, kV, rtV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aRbahUJ9Nn4d05pB.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PExpose(i,r)
 PROVE nx<=MX /\ net'=net \cup {Msg("sinfo",i,rpe[i][r],r,rg[i][r],nx,rpg[i][r],LtOf(i,r),FALSE)}
 BY ONLY <1>aRbahUJ9Nn4d05pB, Sizes, Location, Design, SMTT(10) DEF PExpose, Sizes, Location, Design


<1>jL6J3B7WhvQtSY5jk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE MsgXDomain'
 BY ONLY <1>jL6J3B7WhvQtSY5jk, Sizes, Location, Design, DomainKeep_PExpose, SMTT(5)
\* T2M-END R2M0306_PdPDomain_PExpose


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Tq.        
 S3 /\ UNCHANGED <<torn>> => S3'
 BY IsaT(10), Sizes, Location, Design DEF S3, Sizes, Location, Design
\* T2M-END R2M0343_PdPF_S3

\* T2M-SCOPE R2M0451_PdPF_B2OffInit

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


<1>ujEUqBpYoFz.        
 GenFiltered /\ UNCHANGED <<gbad>> => GenFiltered'
 BY IsaT(10), Sizes, Location, Design DEF GenFiltered, Sizes, Location, Design
\* T2M-END R2M0347_PdPF_GenFiltered


<1>XnYly5EW.        
 OneReply /\ UNCHANGED <<crep, drep>> => OneReply'
 BY IsaT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
\* T2M-END R2M0348_PdPF_OneReply


<1>Wu.        
 K1 /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>> => K1'
 BY IsaT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M0353_PdPF_K1


<1>IM.        
 K6 /\ UNCHANGED <<gen, pgn, pr, pst, sfly, sled>> => K6'
 BY IsaT(10), Sizes, Location, Design DEF K6, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0372_PdPF_K6


<1>aJsyO4V2XPrdI0l.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, kfly, kpin, krs, nfail, pgn, pr, pst, rd, rp, rt, sfly, sled, torn>>
 BY ONLY <1>aJsyO4V2XPrdI0l, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PExpose, ghV, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wOttRIApzU.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE K1'
<2> USE ONLY <1>wOttRIApzU, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>aJsyO4V2XPrdI0l, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oxyoba2yat.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE K6'
<2> USE ONLY <1>oxyoba2yat, Sizes, Location, Design
<2>1. K6
 BY V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, pgn, pr, pst, sfly, sled>>
 BY <1>aJsyO4V2XPrdI0l, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>IM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fUDGkOEoBPj.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE K14'
<2> USE ONLY <1>fUDGkOEoBPj, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>aJsyO4V2XPrdI0l, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dLZCQOSR8v.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE S3'
<2> USE ONLY <1>dLZCQOSR8v, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>aJsyO4V2XPrdI0l, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ePGl4IusDa.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE S4'
<2> USE ONLY <1>ePGl4IusDa, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>aJsyO4V2XPrdI0l, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EAy1SjD96QEbks2E24Z.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>EAy1SjD96QEbks2E24Z, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>aJsyO4V2XPrdI0l, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g3H9bDy6nsbyzE0o.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE OneReply'
<2> USE ONLY <1>g3H9bDy6nsbyzE0o, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>aJsyO4V2XPrdI0l, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cf4CiGNUaY6o32KWgI.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>cf4CiGNUaY6o32KWgI, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>aJsyO4V2XPrdI0l, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0403_PdPFrames_PExpose


<1> QED BY <1>wOttRIApzU, <1>oxyoba2yat, <1>fUDGkOEoBPj, <1>dLZCQOSR8v, <1>ePGl4IusDa, <1>EAy1SjD96QEbks2E24Z, <1>g3H9bDy6nsbyzE0o, <1>cf4CiGNUaY6o32KWgI, <1>ZGHsBqWE2M1OSLyLI7lxhdW, <1>jL6J3B7WhvQtSY5jk, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_PExpose_01_01, Part_PExpose_01_02, Part_PExpose_02_01, Part_PExpose_02_02, Part_PExpose_03_01, Part_PExpose_03_02, Part_PExpose_04_01, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_PExpose
HIDE DEF DomainKeep_PExpose, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K14, V21_Inv_K6, V21_Inv_OneReply, V21_Inv_ReplyTruth, V21_Inv_S3, V21_Inv_S4, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst

THEOREM Step_PExpose ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, PExpose(i,r), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, NEW v \in Rq, Sizes, Location, Design, PinInv, PExpose(u,v), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_PExpose_01_01, Part_PExpose_01_02, Part_PExpose_02_01, Part_PExpose_02_02, Part_PExpose_03_01, Part_PExpose_03_02, Part_PExpose_04_01, Part_PExpose_04_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_PExpose_01_01, Part_PExpose_01_02, Part_PExpose_02_01, Part_PExpose_02_02, Part_PExpose_03_01, Part_PExpose_03_02, Part_PExpose_04_01, Part_PExpose_04_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, PExpose(i,r), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, PExpose(i,r), ShapeKeep_PExpose, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
