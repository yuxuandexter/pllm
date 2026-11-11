---- MODULE PdFinalAction_PSubmit ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_d3dd8b4090431094, PdFinalAuxType_6b10eee8fbf863b7, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PSubmit_02

\* Complete original body PdFinalPart_PSubmit_03_01 SHA 30c3c004eea57741dcd07ee8e2885d196ec00bd55a81ab16f9b117a624432965
HIDE DEF AuxType_6b10eee8fbf863b7, AuxType_d3dd8b4090431094, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_PSubmit_01_01, Part_PSubmit_01_02, Part_PSubmit_02_01, Part_PSubmit_02_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K12, V21_Inv_K13, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S6, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SquarFrame, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_PSubmit_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE (S5)' /\ (QuarNeverMapped)' /\ (P_SI1)' /\ (P_SI4)' /\ (SI8)' /\ (K6)' /\ (K11)' /\ (K14)' /\ (S4)' /\ (SharedImmutable)' /\ (EntryQuarantineDisjoint)' /\ (P_B2OffInit)'
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

           RP2_TransportFrame == UNCHANGED <<xsrc,xr,xg,xp,xk,xst,nx>>


           RP2_EntryProgress == \A x \in Xids : iv[x] \in {"reg","posted","failret"} => iv'[x] \in {"reg","posted","failret","cqe","nopost"}


           RP2_HardwareProgress ==
            /\ \A x \in Xids : hw'[x]="fly" => (hw[x]="fly" \/ iv[x]="reg") /\ ~RP_Close(x)
            /\ \A x \in Xids : hw'[x] \in {"issued","stop"} => hw'[x]=hw[x]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF SKXMH9, YoZCNdW, yRiuUrmy, o2PqE, xGwcBEcmY, rd1IZu, SuEEX, XjZJP, csjI5RPR, ZdeEe4zmp3uag, vLn7d, dLu17, NXhXrvU9, i08nRBE, K9XTdyW, JBL3tE9j, vuZd9ejUPGa3lV56, RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, RP_RecordReady, RP_NoneFrame, RP2_TransportFrame, RP2_EntryProgress, RP2_HardwareProgress

<1>pd2OFU6YkaUFY95tm.        
 ASSUME B2, SFollow
 PROVE vuZd9ejUPGa3lV56
 BY ONLY <1>pd2OFU6YkaUFY95tm, Sizes, Location, Design, ZenonT(10) DEF SFollow, vuZd9ejUPGa3lV56, SKXMH9, YoZCNdW, yRiuUrmy, o2PqE, xGwcBEcmY, rd1IZu, SuEEX, XjZJP, csjI5RPR, ZdeEe4zmp3uag, vLn7d, dLu17, NXhXrvU9, i08nRBE, K9XTdyW, JBL3tE9j, Sizes, Location, Design


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


<1>wqdV70V6uasZmR81y4MnQWzAA7uAtBGX.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE EntryQuarantineDisjoint'
 BY ONLY <1>wqdV70V6uasZmR81y4MnQWzAA7uAtBGX, Sizes, Location, Design, <1>WgHhghZX0y DEF Sizes, Location, Design


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

<1>X8noQ9UGPbutfQURSh2ubzD.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>X8noQ9UGPbutfQURSh2ubzD, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>X8noQ9UGPbutfQURSh2ubzD, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF PSubmit, ghV, instV, kV, pgV, rtV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>yYI.        
 K14 /\ UNCHANGED <<gen, kfly, kpin, krs>> => K14'
 BY IsaT(10), Sizes, Location, Design DEF K14, Sizes, Location, Design
\* T2M-END R2M0355_PdPF_K14


<1>IM.        
 K6 /\ UNCHANGED <<gen, pgn, pr, pst, sfly, sled>> => K6'
 BY IsaT(10), Sizes, Location, Design DEF K6, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0372_PdPF_K6


<1>tpP.        
 K11 /\ UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>> => K11'
 BY IsaT(10), Sizes, Location, Design DEF K11, Sizes, Location, Design
\* T2M-END R2M0337_PdPF_K11


<1>AnPh7i5fTwtYM9d.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, kfly, kpin, krs, led, nfail, nx, pgn, pr, pst, ptl, rd, rp, rt, sfly, sled, torn, xg, xlt, xr, xsrc>>
 BY ONLY <1>AnPh7i5fTwtYM9d, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PSubmit, ghV, instV, kV, pgV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YPoG09OYyD.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE K6'
<2> USE ONLY <1>YPoG09OYyD, Sizes, Location, Design
<2>1. K6
 BY V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, pgn, pr, pst, sfly, sled>>
 BY <1>AnPh7i5fTwtYM9d, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>IM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tyvujRnqNyK.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE K11'
<2> USE ONLY <1>tyvujRnqNyK, Sizes, Location, Design
<2>1. K11
 BY V21_Inv_K11, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>>
 BY <1>AnPh7i5fTwtYM9d, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>tpP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RnUI8XHjbab.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE K14'
<2> USE ONLY <1>RnUI8XHjbab, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>AnPh7i5fTwtYM9d, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>thNVpWRLNU.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE S4'
<2> USE ONLY <1>thNVpWRLNU, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>AnPh7i5fTwtYM9d, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PNLw06E8ptwOMSRBF.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>PNLw06E8ptwOMSRBF, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0499_PdPOff_PSubmit


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

<1>cBA7rB8Q9U8gRHfGK.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,xk,xst>>
 PROVE SI8'
<2> USE ONLY <1>cBA7rB8Q9U8gRHfGK, Sizes, Location, Design
<2>1. SI8 /\ xsrcS \in [Xids -> SUBSET SPages]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>cBA7rB8Q9U8gRHfGK, V22_T_xsrcS, V21_Inv_SI8, Sizes, Location, Design, SMTT(5)

<2>2. CASE ~B2
 BY <2>2, Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>3. CASE B2
 <3>1. \A x \in Xids : ~RP_Posted(x) BY <1>ZXxq7ZUlh0hBhsql, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. xsrcS'=xsrcS /\ squar \subseteq squar'
  BY <2>1, <2>3, <3>1, <1>PKl1lJKpXGVI0yrZ8, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_SX, RP_Q2, Sizes, Location, Design
 <3>3. ASSUME NEW x \in Xids, xk'[x]="rd", xst'[x]="posted"
        PROVE x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
  <4>1. x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
   BY <2>1, <2>3, <3>3, Sizes, Location, Design DEF SI8, Sizes, Location, Design
  <4>2. ~RP_Close(x) BY <3>3, Sizes, Location, Design DEF RP_Close, Sizes, Location, Design
  <4>3. (x \in sentry /\ ~RP_Quarantine(x)) => x \in sentry'
   BY <2>3, <4>2, <1>PKl1lJKpXGVI0yrZ8, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_E2, Sizes, Location, Design
  <4>4. RP_Quarantine(x) => \A p \in xsrcS[x] : <<x,p>> \in squar'
   BY <2>3, <1>KReYXg7MU3qwoztWhw, Sizes, Location, Design DEF Sizes, Location, Design
  <4>5. QED BY <3>2, <4>1, <4>3, <4>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY <2>3, <3>3, Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1393_PdRPSharedCore


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

<1>gXlfESySkAXF1I.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>gXlfESySkAXF1I, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

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

<1>iO31eMtGI3dkVv.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE UNCHANGED <<xsrc,xk,xst>>
 BY ONLY <1>iO31eMtGI3dkVv, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cwxqX0Q8Mpn.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE SI8'
 BY ONLY <1>cwxqX0Q8Mpn, Sizes, Location, Design, <1>iO31eMtGI3dkVv, <1>cBA7rB8Q9U8gRHfGK DEF Sizes, Location, Design
\* T2M-END R2M1438_PdRPShared_PSubmit


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


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


<1>vdq7x7HXKR6HBAYi0tBm.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE QuarNeverMapped'
<2> USE ONLY <1>vdq7x7HXKR6HBAYi0tBm, Sizes, Location, Design
<2>old. QuarNeverMapped
 BY ONLY <1>vdq7x7HXKR6HBAYi0tBm, V21_Inv_QuarNeverMapped, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<pst,rpg>>
 BY ONLY <1>vdq7x7HXKR6HBAYi0tBm, <1>zQCSTfqP4L, Sizes, Location, Design, SMTT(5)
<2>active. \A a \in Inst, r \in Rq : Active(a,r)' <=> Active(a,r)
 BY ONLY <1>vdq7x7HXKR6HBAYi0tBm, <1>WQTYH4MdjWyXr, Sizes, Location, Design, SMTT(5)
<2>qed. QED BY ONLY <2>old, <2>frame, <2>active, SMTT(5) DEF QuarNeverMapped

\* T2M-END R2M1754_PdRPPP_PdE_PSubmit_QuarNeverMapped

\* T2M-SCOPE R2M1755_PdRPPP_PdE_PSubmit_S5

<1>JH1lRvf.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE S5'
<2> USE ONLY <1>JH1lRvf, Sizes, Location, Design
<2>old. S5 /\ K3
 BY ONLY <1>JH1lRvf, V21_Inv_S5, V21_Inv_K3, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<nx,xdst,xr,xg,rg,rhit,rpg,rx,xlt,xnt,xst>>
 BY ONLY <1>JH1lRvf, <1>zQCSTfqP4L, Sizes, Location, Design, SMTT(5)
<2>phase. \A a \in DInst, r \in Rq : ph'[a][r]=ph[a][r]
 BY ONLY <1>JH1lRvf, <1>WQTYH4MdjWyXr, Sizes, Location, Design, SMTT(5)
<2>blank. hw[x]="none"
 <3>reg. iv[x]="reg"
  BY ONLY <1>JH1lRvf, ZenonT(5) DEF PSubmit
 <3>qed. QED BY ONLY <1>JH1lRvf, <2>old, <3>reg, SMTT(5) DEF K3
<2>hardware. \A y \in Xids : y # x => iv'[y]=iv[y] /\ hw'[y]=hw[y] /\ hok'[y]=hok[y]
 BY ONLY <1>JH1lRvf, <1>ojP8Js3gjMBL8Rsn, Sizes, Location, Design, SMTT(5)
<2>at. ASSUME NEW j \in DInst, NEW r \in Rq, ph'[j][r] \in {"run","ovl"}, ~rhit'[j][r]
       PROVE /\ rx'[j][r] \in Xids /\ rx'[j][r]<nx' /\ xdst'[rx'[j][r]]=rpg'[j][r] /\ xr'[rx'[j][r]]=r /\ xg'[rx'[j][r]]=rg'[j][r]
             /\ hw'[rx'[j][r]]="stop" /\ hok'[rx'[j][r]] /\ xlt'[rx'[j][r]]=xnt'[rx'[j][r]]
             /\ (Mode="push" => xst'[rx'[j][r]]="landed") /\ (Mode="pull" => iv'[rx'[j][r]]="cqe")
 <3>before. ph[j][r] \in {"run","ovl"} /\ ~rhit[j][r]
  BY ONLY <2>at, <2>phase, <2>frame, SMTT(5)
 <3>landed. rx[j][r] \in Xids /\ hw[rx[j][r]]="stop"
  BY ONLY <2>old, <2>at, <3>before, SMTT(5) DEF S5
 <3>apart. rx[j][r] # x
  BY ONLY <2>blank, <3>landed, SMTT(5)
 <3>same. UNCHANGED <<iv[rx[j][r]],hw[rx[j][r]],hok[rx[j][r]]>>
  BY ONLY <2>frame, <2>hardware, <3>landed, <3>apart, SMTT(5)
 <3>qed. QED BY ONLY <2>old, <2>at, <2>frame, <3>before, <3>same, SMTT(5) DEF S5
<2>qed. QED BY ONLY <2>at, SMTT(5) DEF S5

\* T2M-END R2M1755_PdRPPP_PdE_PSubmit_S5


<1>szOxAnuTE.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE S5'
  BY ONLY <1>szOxAnuTE, Sizes, Location, Design, <1>JH1lRvf, V21_Inv_S5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ILkPk2laqTDRshvWGJXlKb.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>ILkPk2laqTDRshvWGJXlKb, Sizes, Location, Design, <1>vdq7x7HXKR6HBAYi0tBm, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design

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

<1>ca165gJ9Fh8.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE P_SI1'
 BY ONLY <1>ca165gJ9Fh8, Sizes, Location, Design, <1>szwebgGOE2QEusqJPK8I0, <1>xS15HQSBfXshFwaCIzgKec, <1>gXlfESySkAXF1I, <1>o0ug5dmdGVA DEF Sizes, Location, Design
\* T2M-END R2M1812_PdRPSI1_PSubmit


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


<1>a0nKX6uPnqPFoEO4MlX3gFQzlVLZ.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE RP2_TransportFrame /\ RP2_EntryProgress /\ RP2_HardwareProgress
<2> USE ONLY <1>a0nKX6uPnqPFoEO4MlX3gFQzlVLZ, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","failret","cqe","nopost"}]
       /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>a0nKX6uPnqPFoEO4MlX3gFQzlVLZ, V22_T_hw, V22_T_iv, SMTT(5)

<2>2. \A y \in Xids :
       /\ (hw[y]="fly" => xst[y]="posted" /\ iv[y] \in {"posted","failret"})
       /\ (iv[y]="reg" => hw[y]="none" /\ xk[y]="wr" /\ xst[y]="posted")
 BY SMTT(10), V21_Inv_K3, Sizes, Location, Design DEF K3, InFl, Sizes, Location, Design
<2>3. RP2_TransportFrame
 BY Design, ZenonT(10), Sizes, Location DEF RP2_TransportFrame, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>4. RP2_EntryProgress
 BY <2>1, Design, SMTT(10), Sizes, Location DEF RP2_EntryProgress, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>55. S3 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. RP2_HardwareProgress
 BY <2>1, <2>2, <2>3, <2>55, Design, SMTT(10), Sizes, Location DEF RP2_HardwareProgress, RP_Close, RP2_TransportFrame, S3, Torn, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>6. QED BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LYuZVV0nJHFe.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE P_SI4'
 BY ONLY <1>LYuZVV0nJHFe, Sizes, Location, Design, <1>a0nKX6uPnqPFoEO4MlX3gFQzlVLZ, <1>CZs0zteS9nPA DEF Sizes, Location, Design
\* T2M-END R2M1991_PdRPR2Transport_PSubmit


<1> QED BY <1>szOxAnuTE, <1>ILkPk2laqTDRshvWGJXlKb, <1>ca165gJ9Fh8, <1>LYuZVV0nJHFe, <1>cwxqX0Q8Mpn, <1>YPoG09OYyD, <1>tyvujRnqNyK, <1>RnUI8XHjbab, <1>thNVpWRLNU, <1>X8noQ9UGPbutfQURSh2ubzD, <1>wqdV70V6uasZmR81y4MnQWzAA7uAtBGX, <1>PNLw06E8ptwOMSRBF, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_PSubmit SHA c5b601462448aefacd1018cadbab965eebe98f7bcfc99b78c8696d8314602f47
USE DEF ShapeNetFrame
HIDE DEF Part_PSubmit_03_01, V21_Inv_EntryQuarantineDisjoint, V21_Inv_K1, V21_Inv_K11, V21_Inv_K14, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_QuarNeverMapped, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_hw, V22_T_iv, V22_T_ph, V22_T_rg, V22_T_xdst, V22_T_xsrcP, V22_T_xsrcS
LEMMA ShapeEffect_PSubmit ==
 ASSUME NEW x \in Xids, Sizes, Design, PSubmit(x)
 PROVE net'=net
 BY ONLY PSubmit(x), Sizes, Design, SMTT(5) DEF PSubmit, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_PSubmit ==
 ASSUME NEW x \in Xids, Sizes, Design, IndInv, MessageShape, PSubmit(x)
 PROVE MessageShape'
 BY ONLY Sizes, Design, PSubmit(x), MessageShape, ShapeEffect_PSubmit, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_PSubmit SHA 34b55440d145b6973ecdf2725828311148bf3061cb3b84a78bbdde1e9e824a16
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_PSubmit, ShapeNetFrame
THEOREM DomainKeep_PSubmit ==
 ASSUME NEW x \in Xids, Sizes, Location, Design, PinInv, PSubmit(x)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, PSubmit(x), ShapeEffect_PSubmit
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalPart_PSubmit_03_02 SHA 7ea4ee21887c29b57a9457a6c40b6644d1ee458cd37cda1c40c2079d27d9bb3e
USE DEF V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K13, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K5, V21_Inv_K9, V21_Inv_OneReply, V21_Inv_P_SI1, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_STypeOK, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapPoint, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_hok, V22_T_hw, V22_T_iv, V22_T_krs, V22_T_led, V22_T_ph, V22_T_rg, V22_T_rpgS
HIDE DEF ShapeEffect_PSubmit, V21_Inv_MsgXDomain
THEOREM Part_PSubmit_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE (K9)' /\ (P_SI3)' /\ (K13)' /\ (K17)' /\ (HitIdentity)' /\ (P_SI6)' /\ (K3)' /\ (QuarNoReg)' /\ (PrivateMapOwner)' /\ (K1)' /\ (K5)' /\ (S2)' /\ (S3)' /\ (GenFiltered)' /\ (OneReply)' /\ (ReplyTruth)' /\ (MsgXDomain)'
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

           UWzyANy(j,r) == LET q == rpg[j][r]
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

<1> HIDE DEF SKXMH9, YoZCNdW, yRiuUrmy, o2PqE, xGwcBEcmY, rd1IZu, SuEEX, XjZJP, csjI5RPR, ZdeEe4zmp3uag, vLn7d, dLu17, NXhXrvU9, i08nRBE, K9XTdyW, JBL3tE9j, vuZd9ejUPGa3lV56, P28Z9h_alpV7bpoxO, RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_GenMonotone, RP_KPhaseProgress, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, UWzyANy

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


<1>MEJOAQqukBnQEys7IZ7mOD.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE P28Z9h_alpV7bpoxO
<2> USE ONLY <1>MEJOAQqukBnQEys7IZ7mOD, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>MEJOAQqukBnQEys7IZ7mOD, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF P28Z9h_alpV7bpoxO, Active, PInst, Inst, NL, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design


<1>ECDyCLCcYJdUAOGBKp8kWMGw.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE PrivateMapOwner'
 BY ONLY <1>ECDyCLCcYJdUAOGBKp8kWMGw, Sizes, Location, Design, <1>MEJOAQqukBnQEys7IZ7mOD, <1>RcA1VC7hI8 DEF Sizes, Location, Design


<1>RyIPSXBNwwf0Zs2cj.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>RyIPSXBNwwf0Zs2cj, Sizes, Location, Design, DomainKeep_PSubmit, SMTT(5)
\* T2M-END R2M0317_PdPDomain_PSubmit


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Tq.        
 S3 /\ UNCHANGED <<torn>> => S3'
 BY IsaT(10), Sizes, Location, Design DEF S3, Sizes, Location, Design
\* T2M-END R2M0343_PdPF_S3

\* T2M-SCOPE R2M0451_PdPF_B2OffInit

<1>Af.        
 S2 /\ UNCHANGED <<nx, xg, xr>> => S2'
 BY IsaT(10), Sizes, Location, Design DEF S2, Sizes, Location, Design
\* T2M-END R2M0342_PdPF_S2


<1>BBQUQLHXJe.        
 ReplyTruth /\ UNCHANGED <<crep, dsucc>> => ReplyTruth'
 BY IsaT(10), Sizes, Location, Design DEF ReplyTruth, Sizes, Location, Design
\* T2M-END R2M0349_PdPF_ReplyTruth


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


<1>rd.        
 K5 /\ UNCHANGED <<led, pgn, pr, pst, xg, xr>> => K5'
 BY IsaT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0334_PdPF_K5


<1>AnPh7i5fTwtYM9d.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, kfly, kpin, krs, led, nfail, nx, pgn, pr, pst, ptl, rd, rp, rt, sfly, sled, torn, xg, xlt, xr, xsrc>>
 BY ONLY <1>AnPh7i5fTwtYM9d, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PSubmit, ghV, instV, kV, pgV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HmywUEFdWJ.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE K1'
<2> USE ONLY <1>HmywUEFdWJ, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>AnPh7i5fTwtYM9d, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xAAAdmK9ZT.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE K5'
<2> USE ONLY <1>xAAAdmK9ZT, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>AnPh7i5fTwtYM9d, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Knmc0phIY7.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE S2'
<2> USE ONLY <1>Knmc0phIY7, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>AnPh7i5fTwtYM9d, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jpboyFZCIt.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE S3'
<2> USE ONLY <1>jpboyFZCIt, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>AnPh7i5fTwtYM9d, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ex9ZIPzpfpUqSrfauI2.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>ex9ZIPzpfpUqSrfauI2, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>AnPh7i5fTwtYM9d, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>F0odOYdj4uejgXEe.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE OneReply'
<2> USE ONLY <1>F0odOYdj4uejgXEe, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>AnPh7i5fTwtYM9d, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fTBYbMJNBwh1Q6bZMi.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>fTBYbMJNBwh1Q6bZMi, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>AnPh7i5fTwtYM9d, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0427_PdPFrames_PSubmit


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


<1>gXlfESySkAXF1I.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>gXlfESySkAXF1I, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PLUYqXoSTJ1.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE P_SI3'
 BY ONLY <1>PLUYqXoSTJ1, Sizes, Location, Design, <1>gXlfESySkAXF1I, <1>uWXN2TjAdAz DEF Sizes, Location, Design

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

<1>Gx0F6kj0MQlYrVjzKVJ.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE HitIdentity'
 BY ONLY <1>Gx0F6kj0MQlYrVjzKVJ, Sizes, Location, Design, <1>xS15HQSBfXshFwaCIzgKec, <1>UbRyVd7pIbH8AblyNEO DEF Sizes, Location, Design

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


<1>BDPPH1agLDvakKtOiMo.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE RP_GenMonotone /\ RP_KPhaseProgress
<2> USE ONLY <1>BDPPH1agLDvakKtOiMo, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>BDPPH1agLDvakKtOiMo, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_GenMonotone, RP_KPhaseProgress, PInst, Inst, NL, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cdYzSAOBIcx.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE P_SI6'
 BY ONLY <1>cdYzSAOBIcx, Sizes, Location, Design, <1>gXlfESySkAXF1I, <1>xS15HQSBfXshFwaCIzgKec, <1>BDPPH1agLDvakKtOiMo, <1>sP1gMFHuwAB DEF Sizes, Location, Design
\* T2M-END R2M1439_PdRPExtra_PSubmit


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


<1>tW4Eh5tH.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE K17'
<2> USE ONLY <1>tW4Eh5tH, Sizes, Location, Design
<2>1. K17 /\ K14 /\ c02OO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K14, V21_Inv_K17, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,rg,rpg>>
  BY <1>zQCSTfqP4L, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A j \in Inst, u \in Rq : IsD(j) => ph'[j][u] = ph[j][u] /\ rg'[j][u] = rg[j][u] /\ rpg'[j][u] = rpg[j][u]
  BY <2>2, <1>WQTYH4MdjWyXr, Sizes, SMTT(10), Location, Design DEF IsD, Inst, DInst, NL, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>fT88b6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1738_PdRPPP_PdCell_PSubmit_K17

\* T2M-SCOPE R2M1739_PdRPPP_PdCell_PSubmit_K3

<1>kujY0rD.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE K3'
<2> DEFINE StepK3(y) == 
        /\ (iv[y] \in {"none", "nopost", "reg"}) <=> (hw[y] = "none")
        /\ iv[y] = "reg" => (xk[y] = "wr" /\ PReg /\ xst[y] = "posted")
        /\ iv[y] = "cqe" => hw[y] \in CqeHw(y)
        /\ hw[y] = "issued" => xk[y] = "wr"
        /\ xst[y] = "revoked" => iv[y] = "nopost"
        /\ xst[y] = "landed" => (hw[y] = "stop" /\ hok[y] /\ xlt[y] = xnt[y])   \* transfer-length consistency：只有 lt = 计划才算落地
        /\ (xk[y] = "rd" /\ iv[y] \notin {"none", "nopost"}) => xlt[y] = xnt[y]   \* transfer-length consistency：pull 的 D 只在 lt = 计划时发 READ
        /\ xst[y] = "failed" => IF xk[y] = "wr" THEN (hw[y] = "stop" /\ hok[y] /\ xlt[y] # xnt[y])   \* push 的 failed 只来自 BAD_LEN
                                 ELSE ((iv[y] = "cqe" /\ hw[y] = "stop" /\ ~hok[y]) \/ iv[y] = "nopost")
        /\ InFl(y) => (xst[y] = "posted" /\ (iv[y] \in {"posted", "failret"} \/ (iv[y] = "cqe" /\ hw[y] = "issued" /\ ~hok[y])))
<2> HIDE DEF StepK3, K3, PSubmit, CoreTypeOK
<2>old. K3
 BY ONLY <1>kujY0rD, V21_Inv_K3, Sizes, Location, Design, SMTT(5)
<2>type. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 /\ hw \in [Xids -> {"none","fly","issued","stop"}] /\ hok \in [Xids -> BOOLEAN]
 BY ONLY <1>kujY0rD, V22_T_iv, V22_T_hw, V22_T_hok, SMTT(5)
<2>guard. iv[x]="reg" /\ xk[x]="wr"
 BY ONLY <1>kujY0rD, ZenonT(5) DEF PSubmit
<2>posted. xst[x]="posted"
 BY ONLY <1>kujY0rD, <2>guard, <2>old, SMTT(5) DEF K3
<2>frame. UNCHANGED <<xk,xst,xlt,xnt>>
 BY ONLY <1>kujY0rD, ZenonT(5) DEF PSubmit
<2>effect. iv'=[iv EXCEPT ![x]="posted"]
 /\ hw'=[hw EXCEPT ![x]=IF Torn(x) THEN "stop" ELSE "fly"]
 /\ hok'=[hok EXCEPT ![x]=FALSE]
 BY ONLY <1>kujY0rD, ZenonT(5) DEF PSubmit
<2>each. ASSUME NEW y \in Xids PROVE StepK3(y)'
 <3>same. CASE y=x
  <4>update. iv'[y]="posted" /\ hw'[y] \in {"stop","fly"} /\ hok'[y]=FALSE
   BY ONLY <1>kujY0rD, <2>each, <3>same, <2>type, <2>effect, SMTT(5)
  <4>qed. QED BY ONLY <3>same, <4>update, <2>guard, <2>posted, <2>frame, SMTT(5) DEF StepK3, InFl, CqeHw
 <3>other. CASE y # x
  <4>same_fields. UNCHANGED <<iv[y],hw[y],hok[y]>>
   BY ONLY <2>each, <3>other, <2>type, <2>effect, SMTT(5)
  <4>previous. StepK3(y)
   BY ONLY <2>each, <2>old, SMTT(5) DEF StepK3, K3
  <4>qed. QED BY ONLY <4>same_fields, <4>previous, <2>frame, SMTT(5) DEF StepK3, InFl, CqeHw
 <3>qed. QED BY ONLY <3>same, <3>other, SMTT(5)
<2>qed. QED BY ONLY <2>each, SMTT(5) DEF K3, StepK3

\* T2M-LOCAL-VISIBILITY

\* T2M-END R2M1739_PdRPPP_PdCell_PSubmit_K3

<1>Ks62D.         K9 <=> \A j \in DInst, r \in Rq : UWzyANy(j,r)
  BY ZenonT(10), Sizes, Location, Design DEF K9, UWzyANy, Sizes, Location, Design
\* T2M-END R2M1512_PdRPPP_PdPointPredicates


<1>teWeL5Wyp.         K9' <=> \A j \in DInst, r \in Rq : UWzyANy(j,r)'
  BY ZenonT(10), Sizes, Location, Design DEF K9, UWzyANy, Sizes, Location, Design
\* T2M-END R2M1513_PdRPPP_PdPostPoints


<1>RrpehMA.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE K9'
<2> USE ONLY <1>RrpehMA, Sizes, Location, Design
<2>1. K9 /\ fr1A
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<drep,led,nx,plt,pst,ptl,pvis,rg,rhit,rpg,rx,sfly,sled,xdst,xg,xr>>
  BY <1>zQCSTfqP4L, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A j \in DInst, r \in Rq : ph'[j][r] = ph[j][r]
  BY <1>WQTYH4MdjWyXr, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. SUFFICES ASSUME NEW j \in DInst, NEW r \in Rq PROVE UWzyANy(j,r)'
  BY <1>teWeL5Wyp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. UWzyANy(j,r)
  BY <2>1, <1>Ks62D, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. ph[j][r] = "rd" => iv'[rx[j][r]] \in {"posted","cqe","failret"}
  BY <2>1, <2>5, <1>jXujQnapOVz1N, <1>FNMJSUwYV, SMTT(10), Sizes, Location, Design DEF UWzyANy, fr1A, Sizes, Location, Design
<2>7. QED BY <2>2, <2>3, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF UWzyANy, Active, Sizes, Location, Design
\* T2M-END R2M1742_PdRPPP_PdCell_PSubmit_K9


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


<1>Ayg9MvLe.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE K13'
<2> USE ONLY <1>Ayg9MvLe, Sizes, Location, Design
<2>1. K13 /\ K1 /\ AEZsS
 BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K13, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<gbad,gen,hd,rg,drep,dsucc,crep>>
 BY <1>zQCSTfqP4L, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A r \in Rq, g \in Gens : drep[r][g] = 1 => hd[r][g] \in DInst
 BY <1>ho2qVzp0UDI9Dx, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>WQTYH4MdjWyXr, SMTT(5), Sizes, Location, Design DEF K13, Sizes, Location, Design
\* T2M-END R2M1749_PdRPPP_PdE_PSubmit_K13

\* T2M-SCOPE R2M1750_PdRPPP_PdE_PSubmit_K16

<1>aNxXspbIR.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K3'
  BY ONLY <1>aNxXspbIR, Sizes, Location, Design, <1>kujY0rD, V21_Inv_K3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>giaLf4AN2.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K9'
  BY ONLY <1>giaLf4AN2, Sizes, Location, Design, <1>RrpehMA, V21_Inv_K9 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ny3CPjjwRy.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K13'
  BY ONLY <1>Ny3CPjjwRy, Sizes, Location, Design, <1>Ayg9MvLe, V21_Inv_K13 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JFvVuUxSCC.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K17'
  BY ONLY <1>JFvVuUxSCC, Sizes, Location, Design, <1>tW4Eh5tH, V21_Inv_K17 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>R27ZWocNBA1RPYEc.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>R27ZWocNBA1RPYEc, Sizes, Location, Design, <1>vZf8MKjImqYvU7, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1756_PdRPPdPAgg_PSubmit


<1> QED BY <1>giaLf4AN2, <1>PLUYqXoSTJ1, <1>Ny3CPjjwRy, <1>JFvVuUxSCC, <1>Gx0F6kj0MQlYrVjzKVJ, <1>cdYzSAOBIcx, <1>aNxXspbIR, <1>R27ZWocNBA1RPYEc, <1>ECDyCLCcYJdUAOGBKp8kWMGw, <1>HmywUEFdWJ, <1>xAAAdmK9ZT, <1>Knmc0phIY7, <1>jpboyFZCIt, <1>ex9ZIPzpfpUqSrfauI2, <1>F0odOYdj4uejgXEe, <1>fTBYbMJNBwh1Q6bZMi, <1>RyIPSXBNwwf0Zs2cj, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_PSubmit_01_01, Part_PSubmit_01_02, Part_PSubmit_02_01, Part_PSubmit_02_02, Part_PSubmit_03_01, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_PSubmit
HIDE DEF DomainKeep_PSubmit, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K13, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K5, V21_Inv_K9, V21_Inv_OneReply, V21_Inv_P_SI1, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_STypeOK, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapPoint, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_hok, V22_T_hw, V22_T_iv, V22_T_krs, V22_T_led, V22_T_ph, V22_T_rg, V22_T_rpgS

THEOREM Step_PSubmit ==
 ASSUME NEW x \in Xids, Sizes, Location, Design, PinInv, PSubmit(x), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Xids, Sizes, Location, Design, PinInv, PSubmit(u), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_PSubmit_01_01, Part_PSubmit_01_02, Part_PSubmit_02_01, Part_PSubmit_02_02, Part_PSubmit_03_01, Part_PSubmit_03_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_PSubmit_01_01, Part_PSubmit_01_02, Part_PSubmit_02_01, Part_PSubmit_02_02, Part_PSubmit_03_01, Part_PSubmit_03_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, PSubmit(x), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, PSubmit(x), ShapeKeep_PSubmit, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
