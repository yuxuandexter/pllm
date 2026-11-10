---- MODULE PdFinalAction_PRecvReq ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_d3dd8b4090431094, PdFinalAuxType_8b9ab1a2ae146b89, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PRecvReq_02

\* Complete original body PdFinalPart_PRecvReq_03_02 SHA bc72b455602738a67b17a6f135a421b7d1bf81f820c77598a6ef50bf160b1fc3
HIDE DEF AuxType_8b9ab1a2ae146b89, AuxType_d3dd8b4090431094, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_PRecvReq_01_01, Part_PRecvReq_01_02, Part_PRecvReq_02_01, Part_PRecvReq_02_02, Part_PRecvReq_03_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K11, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_PRecvReq_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE (ReadOwnLanded)' /\ (S1)' /\ (S6)' /\ (K8)' /\ (K9)' /\ (S5)' /\ (QuarNeverMapped)' /\ (SharedLedRef)' /\ (PrefcMatchesHolders)' /\ (HitIdentity)'
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


           aHWnD(j,r) ==
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

           RP_NoNewStop == \A x \in Xids : hw[x] \in {"fly","issued"} => hw'[x] # "stop"


           RP_DReadFrame == \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} =>
            ph[j][r] \in {"run","ovl"} /\ rpg'[j][r]=rpg[j][r]


           RP_SharedRead == B2 => \A j \in DInst,r \in Rq : ph[j][r] \in {"run","ovl"} => dpreOK[rpg[j][r]]

           \* T2M-LOCAL-VISIBILITY

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

           RPB_BK8At(i,r) ==
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


           RPB_EDPageFrame == \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],ptl[q],pvis[q],led[q],sled[q],sfly[q]>>

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, aHWnD, ERecv, RP_NoNewStop, RP_DReadFrame, RP_SharedRead, RPB_T_gen, RPB_T_rt, RPB_T_rp, RPB_T_rd, RPB_T_hp, RPB_T_hd, RPB_T_alive, RPB_T_nfail, RPB_T_torn, RPB_T_kpin, RPB_T_kfly, RPB_T_krs, RPB_T_ph, RPB_T_rg, RPB_T_rpg, RPB_T_rpe, RPB_T_rx, RPB_T_rhit, RPB_T_pst, RPB_T_pr, RPB_T_pgn, RPB_T_plt, RPB_T_ptl, RPB_T_pvis, RPB_T_led, RPB_T_sfly, RPB_T_sled, RPB_T_prefc, RPB_T_pqp, RPB_T_xr, RPB_T_xg, RPB_T_xk, RPB_T_xp, RPB_T_xd, RPB_T_xsrc, RPB_T_xdst, RPB_T_xnt, RPB_T_hw, RPB_T_hok, RPB_T_iv, RPB_T_xst, RPB_T_xlt, RPB_T_nx, RPB_T_net, RPB_T_drep, RPB_T_crep, RPB_T_dsucc, RPB_T_gbad, RPB_Types, RPB_BK8At, RPB_ERecv, RPB_EDRecFrame, RPB_EDPageFrame

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


<1>LKvmgcKkorZYvNe.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>LKvmgcKkorZYvNe, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, NewGen, PEnd, PRecvReq, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ThGkAs8GaOcx7jhS3WTETz35t1HZ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>ThGkAs8GaOcx7jhS3WTETz35t1HZ, Sizes, Location, Design, <1>AnajBeZS7htcLkTpZ8C91mxOHTa DEF Sizes, Location, Design

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

<1>BsoXX7FUWfABzuhBNrN4.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE HitIdentity'
 BY ONLY <1>BsoXX7FUWfABzuhBNrN4, Sizes, Location, Design, <1>R3JjhdS5cuEMeUrocTJORt9, <1>UbRyVd7pIbH8AblyNEO DEF Sizes, Location, Design

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


<1>dEtVf3wwWO8RVIzhql6Gg.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE SharedLedRef'
 BY ONLY <1>dEtVf3wwWO8RVIzhql6Gg, Sizes, Location, Design, <1>LKvmgcKkorZYvNe, <1>xOtqg6YRsioevxRntvd4 DEF Sizes, Location, Design

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

<1>EMxbd.        
  ASSUME NEW j \in DInst, NEW r \in Rq, K9
  PROVE aHWnD(j,r)
  BY ONLY <1>EMxbd, Sizes, Location, Design DEF K9, aHWnD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xBluqEwpfJZ.        
  (\A i \in Inst, r \in Rq : dlzHJ(i,r)') => K8'
  BY Sizes, Location, Design DEF K8, dlzHJ, Sizes, Location, Design

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

<1>lUDz2gaHgwt.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW p, PinInv, PRecvReq(i,r), ERecv(i,r,m,p)
 PROVE /\ ~rhit[i][r] /\ rg[i][r] \in 0..MG
       /\ (p # 0 => led[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0)
<2> USE ONLY <1>lUDz2gaHgwt, Sizes, Location, Design
 <2>1. K7 /\ K8 /\ nNeM BY <1>UwwC5LVwQr, V21_Inv_K7, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. ~rhit[i][r] BY <2>1, <1>CsxO3y, <1>QMrZB, SMTT(5), Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>CsxO3y, SMTT(5), Sizes, Location, Design DEF K7, nNeM, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UdAmBEHFHl0.        
 ASSUME NEW j \in Inst, NEW u \in Rq, PinInv, Active(j,u)
 PROVE rpg[j][u] \in Pages /\ pst[rpg[j][u]] # "free"
<2> USE ONLY <1>UdAmBEHFHl0, Sizes, Location, Design
 <2>1. K8 /\ K9 /\ dlzHJ(j,u) BY <1>QMrZB, V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. rpg[j][u] \in Pages BY <2>1, Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design
 <2>3. CASE ~rhit[j][u]
  BY <2>1, <2>2, <2>3, SMTT(5), Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design
 <2>4. CASE rhit[j][u]
  <3>1. IsD(j) /\ j \in DInst
   BY <2>1, <2>4, <1>yGU8fpsp8, SMTT(5), Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design
  <3>2. aHWnD(j,u) BY <2>1, <3>1, <1>EMxbd, Sizes, Location, Design DEF Sizes, Location, Design
  <3>3. QED BY <2>2, <2>4, <3>2, SMTT(5), Sizes, Location, Design DEF aHWnD, Active, Sizes, Location, Design
 <2>5. QED BY <2>3, <2>4, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1693_PdRPPP_PdERecvPoints

\* T2M-SCOPE R2M1694_PdRPPP_PdE_PRecvReq_K10
\* T2M-BODY R2M1694_PdRPPP_PdE_PRecvReq_K10
\* T2M-LOCAL-VISIBILITY

<1>TH0ZUUHk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE K8'
<2> USE ONLY <1>TH0ZUUHk, Sizes, Location, Design
 <2>0. SUFFICES ASSUME NEW j \in Inst, NEW u \in Rq PROVE dlzHJ(j,u)'
  BY <1>xBluqEwpfJZ, Sizes, Location, Design DEF Sizes, Location, Design
 <2>1. K8 /\ K7 /\ dlzHJ(j,u) /\ dlzHJ(i,r)
  BY <1>QMrZB, V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p) BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. UNCHANGED <<gen,hp,hd,nx,iv,xsrc,xr,xg,xlt,led,rhit>> BY <1>woEZGzt7yjb, <1>LEhnC1gxPKIaF, Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. CASE j=i /\ u=r
  <3>1. ( LET p == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN IsP(j) => (ph[j][u] \in {"none", "pre", "ready", "reg", "sent", "exp", "end"} /\ ~rhit[j][u]))'
   BY <2>1, <2>2, <2>3, <2>4, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>ttRRTqL, <1>claSLdb, Sizes, SMTT(5), Location, Design DEF dlzHJ, Active, OwnedBy, IsP, IsD, Inst, PInst, DInst, NL, Tag, Sizes, Location, Design
  <3>2. ( LET p == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN IsD(j) => ph[j][u] \in {"none", "wait", "rd", "run", "ovl", "end"})'
   BY <2>1, <2>2, <2>3, <2>4, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>ttRRTqL, <1>claSLdb, Sizes, SMTT(5), Location, Design DEF dlzHJ, Active, OwnedBy, IsP, IsD, Inst, PInst, DInst, NL, Tag, Sizes, Location, Design
  <3>3. ( LET p == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN ph[j][u] = "none" => (g = 0 /\ p = 0 /\ x = 0 /\ ~rhit[j][u]))'
   BY <2>1, <2>2, <2>3, <2>4, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>ttRRTqL, <1>claSLdb, Sizes, SMTT(5), Location, Design DEF dlzHJ, Active, OwnedBy, IsP, IsD, Inst, PInst, DInst, NL, Tag, Sizes, Location, Design
  <3>4. ( LET p == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN ph[j][u] # "none" => (g \in Gens /\ g <= gen[u]))'
   BY <2>1, <2>2, <2>3, <2>4, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>ttRRTqL, <1>claSLdb, Sizes, SMTT(5), Location, Design DEF dlzHJ, Active, OwnedBy, IsP, IsD, Inst, PInst, DInst, NL, Tag, Sizes, Location, Design
  <3>5. ( LET p == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN ph[j][u] # "none" /\ IsP(j) => (hp[u][g] = j /\ rpe[j][u] = hd[u][g]))'
   BY <2>1, <2>2, <2>3, <2>4, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>ttRRTqL, <1>claSLdb, Sizes, SMTT(5), Location, Design DEF dlzHJ, Active, OwnedBy, IsP, IsD, Inst, PInst, DInst, NL, Tag, Sizes, Location, Design
  <3>6. ( LET p == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN ph[j][u] # "none" /\ IsD(j) => (hd[u][g] = j /\ rpe[j][u] = hp[u][g]))'
   BY <2>1, <2>2, <2>3, <2>4, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>ttRRTqL, <1>claSLdb, Sizes, SMTT(5), Location, Design DEF dlzHJ, Active, OwnedBy, IsP, IsD, Inst, PInst, DInst, NL, Tag, Sizes, Location, Design
  <3>7. ( LET p == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN Active(j, u) => (p \in Pages /\ Loc(p) = j))'
   BY <2>1, <2>2, <2>3, <2>4, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>ttRRTqL, <1>claSLdb, Sizes, SMTT(5), Location, Design DEF dlzHJ, Active, OwnedBy, IsP, IsD, Inst, PInst, DInst, NL, Tag, Sizes, Location, Design
  <3>8. ( LET p == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN Active(j, u) /\ ~rhit[j][u] => OwnedBy(p, u, g) /\ pst[p] = "priv")'
   BY <2>1, <2>2, <2>3, <2>4, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>ttRRTqL, <1>claSLdb, Sizes, SMTT(5), Location, Design DEF dlzHJ, Active, OwnedBy, IsP, IsD, Inst, PInst, DInst, NL, Tag, Sizes, Location, Design
  <3>9. ( LET p == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN ph[j][u] = "pre" => (x = 0 /\ led[p] = {} /\ sled[p] = {t} /\ sfly[p] \subseteq {t} /\ plt[p] = 0
                          /\ (IF t \in sfly[p] THEN ptl[p] = 0 ELSE ptl[p] \in PLens(u, g))))'
   BY <2>1, <2>2, <2>3, <2>4, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>ttRRTqL, <1>claSLdb, Sizes, SMTT(5), Location, Design DEF dlzHJ, Active, OwnedBy, IsP, IsD, Inst, PInst, DInst, NL, Tag, Sizes, Location, Design
  <3>10. ( LET p == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN ph[j][u] = "ready" => (x = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(u, g)))'
   BY <2>1, <2>2, <2>3, <2>4, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>ttRRTqL, <1>claSLdb, Sizes, SMTT(5), Location, Design DEF dlzHJ, Active, OwnedBy, IsP, IsD, Inst, PInst, DInst, NL, Tag, Sizes, Location, Design
  <3>11. ( LET p == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN ph[j][u] = "reg" => (Mode = "push" /\ PReg /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = u /\ xg[x] = g
                          /\ iv[x] = "reg" /\ sled[p] = {} /\ sfly[p] = {}
                          /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(u, g) /\ xlt[x] = ptl[p]))'
   BY <2>1, <2>2, <2>3, <2>4, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>ttRRTqL, <1>claSLdb, Sizes, SMTT(5), Location, Design DEF dlzHJ, Active, OwnedBy, IsP, IsD, Inst, PInst, DInst, NL, Tag, Sizes, Location, Design
  <3>12. ( LET p == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN ph[j][u] = "sent" => (Mode = "push" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = u /\ xg[x] = g
                           /\ iv[x] \in {"posted", "cqe", "failret"} /\ sled[p] = {} /\ sfly[p] = {}
                           /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(u, g) /\ xlt[x] = ptl[p]))'
   BY <2>1, <2>2, <2>3, <2>4, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>ttRRTqL, <1>claSLdb, Sizes, SMTT(5), Location, Design DEF dlzHJ, Active, OwnedBy, IsP, IsD, Inst, PInst, DInst, NL, Tag, Sizes, Location, Design
  <3>13. ( LET p == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN ph[j][u] = "exp" => (Mode = "pull" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = u /\ xg[x] = g
                          /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(u, g) /\ xlt[x] = ptl[p]))'
   BY <2>1, <2>2, <2>3, <2>4, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>EGNgd5, <1>jj0T0, <1>B2nFk5, <1>xFFcTA, <1>jn3dmy, <1>ttRRTqL, <1>claSLdb, Sizes, SMTT(5), Location, Design DEF dlzHJ, Active, OwnedBy, IsP, IsD, Inst, PInst, DInst, NL, Tag, Sizes, Location, Design
  <3>99. QED BY <3>1, <3>2, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9, <3>10, <3>11, <3>12, <3>13, Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design
 <2>5. CASE j # i \/ u # r
  <3>1. Active(j,u) => rpg[j][u] \in Pages /\ pst[rpg[j][u]] # "free"
   BY <1>UdAmBEHFHl0, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. QED BY <2>1, <2>2, <2>3, <2>5, <3>1, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>uKlEE3iBA, SMTT(5), Sizes, Location, Design DEF dlzHJ, Active, OwnedBy, Sizes, Location, Design
 <2>6. QED BY <2>4, <2>5, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1703_PdRPPP_PdE_PRecvReq_K8

\* T2M-SCOPE R2M1704_PdRPPP_PdE_PRecvReq_K9

<1>HmJUN368.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE K9'
<2> USE ONLY <1>HmJUN368, Sizes, Location, Design
<2>1. K9 /\ K8 /\ bFwlN /\ OyyWS /\ rO4YE /\ Bq5Edl /\ Xc_ngV /\ h9WLgd
 BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p) BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<drep,iv,led,nx,rhit,xdst,xg,xr>> BY <1>woEZGzt7yjb, <1>LEhnC1gxPKIaF, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
 BY <2>1, <2>2, <2>3, <1>mTGbJEan, <1>uKlEE3iBA, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, <1>xFFcTA, <1>EGNgd5, <1>jn3dmy, <1>CgKHZ5q, <1>ttRRTqL, <1>claSLdb, Sizes, Location, SMTT(5), Design DEF Active, DInst, Gens, Inst, IsD, IsP, K8, K9, NL, NewGen, OwnedBy, PInst, bFwlN, OyyWS, rO4YE, Bq5Edl, Xc_ngV, h9WLgd, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1704_PdRPPP_PdE_PRecvReq_K9

\* T2M-SCOPE R2M1705_PdRPPP_PdE_PRecvReq_QuarNeverMapped

<1>iuepUq7m9ADKKjn3Rp1a1.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE QuarNeverMapped'
<2> USE ONLY <1>iuepUq7m9ADKKjn3Rp1a1, Sizes, Location, Design
<2>1. QuarNeverMapped /\ K8 /\ OyyWS
 BY <1>UwwC5LVwQr, V21_Inv_K8, V21_Inv_QuarNeverMapped, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p) BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<>> BY <1>woEZGzt7yjb, <1>LEhnC1gxPKIaF, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
 BY <2>1, <2>2, <2>3, <1>mTGbJEan, <1>uKlEE3iBA, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, <1>EGNgd5, Sizes, Location, SMTT(5), Design DEF Active, DInst, Gens, Inst, IsD, IsP, K8, NL, NewGen, OwnedBy, PInst, QuarNeverMapped, OyyWS, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1705_PdRPPP_PdE_PRecvReq_QuarNeverMapped

\* T2M-SCOPE R2M1706_PdRPPP_PdE_PRecvReq_QuarNoReg

<1>vsKUWO6X.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE S1'
<2> USE ONLY <1>vsKUWO6X, Sizes, Location, Design
<2>1. S1 /\ K2
 BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_S1, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p) BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<nx,xd,xg,xk,xp,xr>> BY <1>woEZGzt7yjb, <1>LEhnC1gxPKIaF, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
 BY <2>1, <2>2, <2>3, <1>xbWa623J, <1>mTGbJEan, <1>uKlEE3iBA, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, Sizes, Location, SMTT(5), Design DEF Active, DInst, ExpInst, ExpPage, Gens, InitInst, InitPage, Inst, IsD, IsP, K2, NL, NewGen, PInst, S1, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1707_PdRPPP_PdE_PRecvReq_S1

\* T2M-SCOPE R2M1708_PdRPPP_PdE_PRecvReq_S5

<1>QnQc18xK.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE S5'
<2> USE ONLY <1>QnQc18xK, Sizes, Location, Design
<2>1. S5
 BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_S5, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p) BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<hok,hw,iv,nx,rhit,xdst,xg,xlt,xnt,xr,xst>> BY <1>woEZGzt7yjb, <1>LEhnC1gxPKIaF, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
 BY <2>1, <2>2, <2>3, <1>mTGbJEan, <1>uKlEE3iBA, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, Sizes, Location, SMTT(5), Design DEF DInst, Gens, Inst, IsD, IsP, NL, NewGen, PInst, S5, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1708_PdRPPP_PdE_PRecvReq_S5

\* T2M-SCOPE R2M1709_PdRPPP_PdE_PRecvReq_S6

<1>Lu5bGtn0.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE S6'
<2> USE ONLY <1>Lu5bGtn0, Sizes, Location, Design
<2>1. S6 /\ K2
 BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_S6, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p) BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<nx,xd,xdst,xg,xk,xp,xr,xsrc>> BY <1>woEZGzt7yjb, <1>LEhnC1gxPKIaF, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
 BY <2>1, <2>2, <2>3, <1>xbWa623J, <1>mTGbJEan, <1>uKlEE3iBA, <1>lUDz2gaHgwt, <1>CsxO3y, <1>Gn6NVDusGMlYg, <1>aYuEoL7oM, Sizes, Location, SMTT(5), Design DEF Active, DInst, ExpInst, ExpPage, Gens, InitInst, InitPage, Inst, IsD, IsP, K2, NL, NewGen, PInst, S6, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1709_PdRPPP_PdE_PRecvReq_S6


<1>rtld3V8NSx.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE K8'
  BY ONLY <1>rtld3V8NSx, Sizes, Location, Design, <1>TH0ZUUHk, V21_Inv_K8 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HURl6Sck38.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE K9'
  BY ONLY <1>HURl6Sck38, Sizes, Location, Design, <1>HmJUN368, V21_Inv_K9 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zj5419t51J.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE S1'
  BY ONLY <1>zj5419t51J, Sizes, Location, Design, <1>vsKUWO6X, V21_Inv_S1 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>y7tG8ac72T.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE S5'
  BY ONLY <1>y7tG8ac72T, Sizes, Location, Design, <1>QnQc18xK, V21_Inv_S5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>igfobY6olA.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE S6'
  BY ONLY <1>igfobY6olA, Sizes, Location, Design, <1>Lu5bGtn0, V21_Inv_S6 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QkUDUgYCOC8MC0wUXGCWBKW.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>QkUDUgYCOC8MC0wUXGCWBKW, Sizes, Location, Design, <1>iuepUq7m9ADKKjn3Rp1a1, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PtfM7z6NmcjVW9qw5I.        
 ASSUME PinInv, SFollow, RP_NoNewStop, RP_DReadFrame
 PROVE RP_SharedRead'
<2> USE ONLY <1>PtfM7z6NmcjVW9qw5I, Sizes, Location, Design
<2>1. ReadOwnLanded BY V21_Inv_ReadOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF RP_SharedRead, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RP_SFollowEffect BY <2>3, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW j \in DInst, NEW r \in Rq, ph'[j][r] \in {"run","ovl"}
        PROVE dpreOK'[rpg'[j][r]]
  <4>1. ph[j][r] \in {"run","ovl"} /\ rpg'[j][r]=rpg[j][r]
   BY <3>2, Sizes, Location, Design DEF RP_DReadFrame, Sizes, Location, Design
  <4>2. rpg[j][r] \in Pages /\ pst[rpg[j][r]] # "free" /\ dpreOK[rpg[j][r]]
   BY <2>1, <2>3, <4>1, SMTT(10), Sizes, Location, Design DEF ReadOwnLanded, BaseReadOwnLanded, Sizes, Location, Design
  <4>3. QED BY <3>1, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_NoNewStop, Sizes, Location, Design
 <3>3. QED BY <2>3, <3>2, Sizes, Location, Design DEF RP_SharedRead, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1823_PdRPSharedRead


<1>IXEagMJyQryQes.         TypInv => RPB_Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, RPB_Types, RPB_T_gen, RPB_T_rt, RPB_T_rp, RPB_T_rd, RPB_T_hp, RPB_T_hd, RPB_T_alive, RPB_T_nfail, RPB_T_torn, RPB_T_kpin, RPB_T_kfly, RPB_T_krs, RPB_T_ph, RPB_T_rg, RPB_T_rpg, RPB_T_rpe, RPB_T_rx, RPB_T_rhit, RPB_T_pst, RPB_T_pr, RPB_T_pgn, RPB_T_plt, RPB_T_ptl, RPB_T_pvis, RPB_T_led, RPB_T_sfly, RPB_T_sled, RPB_T_prefc, RPB_T_pqp, RPB_T_xr, RPB_T_xg, RPB_T_xk, RPB_T_xp, RPB_T_xd, RPB_T_xsrc, RPB_T_xdst, RPB_T_xnt, RPB_T_hw, RPB_T_hok, RPB_T_iv, RPB_T_xst, RPB_T_xlt, RPB_T_nx, RPB_T_net, RPB_T_drep, RPB_T_crep, RPB_T_dsucc, RPB_T_gbad, Sizes, Location, Design
\* T2M-END R2M1825_PdRPBPP_PdProofBase


<1>PtRv5Ech1.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE RPB_BK8At(i,r)
  BY ONLY <1>PtRv5Ech1, Sizes, Location, Design DEF K8, RPB_BK8At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jpdVMc56XFCE.        
  ASSUME NEW j \in Inst, NEW s \in Rq, K8
  PROVE Active(j,s) => rpg[j][s] \in Pages /\ Loc(rpg[j][s]) = j
<2> USE ONLY <1>jpdVMc56XFCE, Sizes, Location, Design
<2>1. RPB_BK8At(j,s)
  BY <1>PtRv5Ech1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Zenon, Sizes, Location, Design DEF RPB_BK8At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ey9PneZjpodYR.        
  /\ \A i \in DInst : i \in Inst /\ IsD(i)
  /\ \A i \in PInst : i \in Inst /\ IsP(i)
  /\ \A i \in Inst : IsP(i) \/ IsD(i)
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMT, Location, Design DEF Inst, DInst, PInst, NL, IsD, IsP, Sizes, Location, Design
\* T2M-END R2M1830_PdRPBPP_PdBRecords


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


<1>TEKWrTYupyhxHo.        
 ASSUME K8, BaseReadOwnLanded, RPB_EDRecFrame, RPB_EDPageFrame, UNCHANGED <<hw,xdst>>
 PROVE BaseReadOwnLanded'
<2> USE ONLY <1>TEKWrTYupyhxHo, Sizes, Location, Design
 <2>1. SUFFICES ASSUME NEW j \in DInst, NEW u \in Rq, ph'[j][u] \in {"run","ovl"}
  PROVE (LET q == rpg[j][u] IN
    /\ q \in Pages /\ NoWriteInto(q)
    /\ \/ ~rhit[j][u] /\ pst[q]="priv" /\ pr[q]=u /\ pgn[q]=rg[j][u] /\ ptl[q]=NTok(u,rg[j][u]) /\ pvis[q]
       \/ rhit[j][u] /\ pst[q]="shared" /\ ptl[q]=PS)'
  BY SMTT(5), Sizes, Location, Design DEF BaseReadOwnLanded, Sizes, Location, Design
 <2>2. j \in Inst /\ IsD(j) BY <2>1, <1>Ey9PneZjpodYR, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. Active(j,u) /\ rpg[j][u] \in Pages /\ Loc(rpg[j][u])=j
  BY <2>1, <2>2, <1>jpdVMc56XFCE, SMTT(5), Sizes, Location, Design DEF RPB_EDRecFrame, Active, Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, SMTT(5), Sizes, Location, Design DEF BaseReadOwnLanded, RPB_EDRecFrame, RPB_EDPageFrame, NoWriteInto, Writing, InFl, Sizes, Location, Design
\* T2M-END R2M1844_PdRPBPP_PdEDOnlyInvariants


<1>obSUmyaipoYCapQL2bye7oi.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE BaseReadOwnLanded'
<2> USE ONLY <1>obSUmyaipoYCapQL2bye7oi, Sizes, Location, Design
<2>1. BaseReadOwnLanded /\ K8 BY V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF Safety, BaseSafety, ReadOwnLanded, SealOnlyLanded, SendOwnLanded, Sizes, Location, Design
<2>15. PICK m \in net, p \in {0} \cup Pages : RPB_ERecv(i,r,m,p) BY <1>LJVyF1auRuzq, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RPB_EDRecFrame BY <2>15, <1>rytNzPg2ZeeZ, <1>Nfuh7gDTOHN1zem, <1>bNi3s2jXOT7KM0Es9, SMTT(5), Sizes, Location, Design DEF RPB_EDRecFrame, Sizes, Location, Design
<2>3. RPB_EDPageFrame BY <2>15, <1>rytNzPg2ZeeZ, <1>Nfuh7gDTOHN1zem, <1>bNi3s2jXOT7KM0Es9, SMTT(5), Sizes, Location, Design DEF RPB_EDPageFrame, Sizes, Location, Design
<2>4. UNCHANGED <<hw,xdst>> BY <2>15, <1>rytNzPg2ZeeZ, <1>Nfuh7gDTOHN1zem, <1>bNi3s2jXOT7KM0Es9, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>1, <2>2, <2>3, <2>4, <1>TEKWrTYupyhxHo, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1922_PdRPBPP_PdE_PRecvReq_ReadOwnLanded


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

<1>jDIjwvQaqTWYAeztyHV.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE RP_SharedRead'
 BY ONLY <1>jDIjwvQaqTWYAeztyHV, Sizes, Location, Design, <1>Jk9atDZEaRFATlL2Zo, <1>PtfM7z6NmcjVW9qw5I DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dWaFIburcwyixCH7NSIVLn.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE ReadOwnLanded'
 BY ONLY <1>dWaFIburcwyixCH7NSIVLn, Sizes, Location, Design, <1>obSUmyaipoYCapQL2bye7oi, <1>jDIjwvQaqTWYAeztyHV DEF ReadOwnLanded, RP_SharedRead, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>dWaFIburcwyixCH7NSIVLn, <1>zj5419t51J, <1>igfobY6olA, <1>rtld3V8NSx, <1>HURl6Sck38, <1>y7tG8ac72T, <1>QkUDUgYCOC8MC0wUXGCWBKW, <1>dEtVf3wwWO8RVIzhql6Gg, <1>ThGkAs8GaOcx7jhS3WTETz35t1HZ, <1>BsoXX7FUWfABzuhBNrN4, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PRecvReq_04_01 SHA fb31cae7acb2767c825d1fee6a073e65bdb8ab59d552ad5d0da260eb682dff78
USE DEF V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K11, V21_Inv_K14, V21_Inv_K17, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_P_SI5, V21_Inv_PrivateMapOwner, V21_Inv_SI8, V22_SF_SharedOrigin, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst, V22_T_xsrcS
HIDE DEF Part_PRecvReq_03_02, V21_Inv_HitIdentity, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_P_SI3, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_ReadOwnLanded, V21_Inv_S1, V21_Inv_S5, V21_Inv_S6, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_SFollowOff
THEOREM Part_PRecvReq_04_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE (SI8)' /\ (K4)' /\ (K5)' /\ (K6)' /\ (K11)' /\ (K17)' /\ (PrivateMapOwner)' /\ (K12)' /\ (GenFiltered)' /\ (SharedImmutable)' /\ (EntryQuarantineDisjoint)'
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

<1> HIDE DEF SKXMH9, YoZCNdW, yRiuUrmy, o2PqE, xGwcBEcmY, rd1IZu, SuEEX, XjZJP, csjI5RPR, ZdeEe4zmp3uag, vLn7d, dLu17, NXhXrvU9, i08nRBE, K9XTdyW, JBL3tE9j, vuZd9ejUPGa3lV56, P28Z9h_alpV7bpoxO, RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, ERecv

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


<1>vHVAzCPUePyHVP0F9ATfigS.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE P28Z9h_alpV7bpoxO
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]] /\ K8 /\ K12
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>vHVAzCPUePyHVP0F9ATfigS, V22_T_ph, V22_T_rg, V21_Inv_K12, V21_Inv_K8, Sizes, Location, Design, SMTT(5)

<2>2. PICK m \in net : m.t="req" /\ NewGen(i,r,m.g)
           /\ rg'=[rg EXCEPT ![i][r]=m.g]
           /\ (ph'=[ph EXCEPT ![i][r]="pre"] \/ ph'=[ph EXCEPT ![i][r]="end"])
 BY ONLY <1>vHVAzCPUePyHVP0F9ATfigS, SMTT(10), Sizes, Location, Design DEF PRecvReq, Sizes, Location, Design
<2>3. m.g \in Gens BY ONLY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>4. rg'[i][r] # rg[i][r]
 BY ONLY <1>vHVAzCPUePyHVP0F9ATfigS, <2>1, <2>2, <2>3, Sizes, SMTT(10), Location, Design DEF K8, NewGen, Gens, Sizes, Location, Design
<2>5. \A j \in PInst, u \in Rq : (j#i \/ u#r) => ph'[j][u]=ph[j][u]
 BY ONLY <1>vHVAzCPUePyHVP0F9ATfigS, <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF PInst, Inst, NL, Sizes, Location, Design
<2>6. QED BY ONLY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF P28Z9h_alpV7bpoxO, Active, Sizes, Location, Design


<1>edxVdlkTCEbBkZCNpz4rn6O7Q.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE PrivateMapOwner'
 BY ONLY <1>edxVdlkTCEbBkZCNpz4rn6O7Q, Sizes, Location, Design, <1>vHVAzCPUePyHVP0F9ATfigS, <1>RcA1VC7hI8 DEF Sizes, Location, Design


<1>PXEB2XjBM3WrlKKpTR5GM16RwraMB2ydB.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE EntryQuarantineDisjoint'
 BY ONLY <1>PXEB2XjBM3WrlKKpTR5GM16RwraMB2ydB, Sizes, Location, Design, <1>WgHhghZX0y DEF Sizes, Location, Design


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

<1>HImP0bDy1PbtfVcfrKueSbIQ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>HImP0bDy1PbtfVcfrKueSbIQ, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>HImP0bDy1PbtfVcfrKueSbIQ, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF PRecvReq, instV, kV, rtV, xV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>LcGUHCuYP7vIYnv.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE UNCHANGED <<xsrc,xk,xst>>
 BY ONLY <1>LcGUHCuYP7vIYnv, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, NewGen, PEnd, PRecvReq, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IRcsMCnvnwVL.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE SI8'
 BY ONLY <1>IRcsMCnvnwVL, Sizes, Location, Design, <1>LcGUHCuYP7vIYnv, <1>cBA7rB8Q9U8gRHfGK DEF Sizes, Location, Design
\* T2M-END R2M1430_PdRPShared_PRecvReq


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

<1>q7AKSeNnO.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE K17'
<2> USE ONLY <1>q7AKSeNnO, Sizes, Location, Design
<2>1. K17 /\ K14 /\ c02OO /\ AydA /\ nNeM /\ q1Ohy
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K14, V21_Inv_K17, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs>>
  BY <1>woEZGzt7yjb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A j \in Inst, u \in Rq : IsD(j) =>
           ph'[j][u] = ph[j][u] /\ rg'[j][u] = rg[j][u] /\ rpg'[j][u] = rpg[j][u]
  BY <2>1, Sizes, SMTT(10), Location, Design DEF PRecvReq, PEnd, AydA, nNeM, q1Ohy, IsP, IsD, Inst, NL, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>fT88b6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1689_PdRPPP_PdCell_PRecvReq_K17

\* T2M-SCOPE R2M1690_PdRPPP_PdRequestPeer

<1>Kq28m5w6uXrmyxT.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PRecvReq(i,r)
  PROVE \E m \in net : m.t = "req" /\ m.r = r /\ (net' = net \/ net' = net \cup {Msg("abort",i,m.pe,r,m.g,0,0,0,FALSE)})
  BY ONLY <1>Kq28m5w6uXrmyxT, Sizes, Location, Design, Design, SMTT(10) DEF PRecvReq, Sizes, Location, Design
\* T2M-END R2M1691_PdRPPP_PdPRecvReqNet


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


<1>RDLBLF8f2.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE K11'
<2> USE ONLY <1>RDLBLF8f2, Sizes, Location, Design
<2>1. K11 /\ K7 /\ c02OO /\ dcfPK /\ SHJS /\ vS7em /\ AydA /\ bFwlN /\ IwCp /\ OyyWS /\ rO4YE /\ Bq5Edl /\ nNeM /\ E1MnW /\ q1Ohy /\ QC9Q /\ Xc_ngV /\ h9WLgd
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K11, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p)
 BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>woEZGzt7yjb, Design, Sizes, Location, SMTT(5) DEF Active, ERecv, GrownP, IsD, K11, K7, KSlots, Maps, NewGen, c02OO, dcfPK, SHJS, vS7em, AydA, bFwlN, IwCp, OyyWS, rO4YE, Bq5Edl, nNeM, E1MnW, q1Ohy, QC9Q, Xc_ngV, h9WLgd, Tag, instV, kV, rtV, xV, Sizes, Location, Design
\* T2M-END R2M1695_PdRPPP_PdE_PRecvReq_K11


<1>GjW0geppK.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE K12'
<2> USE ONLY <1>GjW0geppK, Sizes, Location, Design
 <2>1. K12 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. UNCHANGED <<gen,hp,hd,xr,xg,xdst,xsrc,xlt,iv,hw,hok,xk,nx,drep,dsucc>>
  BY <1>woEZGzt7yjb, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. PICK m \in net : m.t = "req" /\ m.r = r /\ (net' = net \/ net' = net \cup {Msg("abort",i,m.pe,r,m.g,0,0,0,FALSE)})
  BY <1>Kq28m5w6uXrmyxT, Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K12, Msg, CqeHw, Sizes, Location, Design
\* T2M-END R2M1696_PdRPPP_PdE_PRecvReq_K12


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

<1>qZIzHDWe.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE K5'
<2> USE ONLY <1>qZIzHDWe, Sizes, Location, Design
<2>1. K5 /\ K7 /\ c02OO /\ dcfPK /\ SHJS /\ vS7em /\ AydA /\ bFwlN /\ IwCp /\ OyyWS /\ rO4YE /\ Bq5Edl /\ nNeM /\ E1MnW /\ q1Ohy /\ QC9Q /\ Xc_ngV /\ h9WLgd
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p)
 BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>woEZGzt7yjb, Design, Sizes, Location, SMTT(5) DEF Active, ERecv, GrownP, IsD, K5, K7, KSlots, Maps, NewGen, OwnedBy, c02OO, dcfPK, SHJS, vS7em, AydA, bFwlN, IwCp, OyyWS, rO4YE, Bq5Edl, nNeM, E1MnW, q1Ohy, QC9Q, Xc_ngV, h9WLgd, Tag, instV, kV, rtV, xV, Sizes, Location, Design
\* T2M-END R2M1700_PdRPPP_PdE_PRecvReq_K5

\* T2M-SCOPE R2M1701_PdRPPP_PdE_PRecvReq_K6

<1>w5ymoO7k.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
 PROVE K6'
<2> USE ONLY <1>w5ymoO7k, Sizes, Location, Design
<2>1. K6 /\ K7 /\ c02OO /\ dcfPK /\ SHJS /\ vS7em /\ AydA /\ bFwlN /\ IwCp /\ OyyWS /\ rO4YE /\ Bq5Edl /\ nNeM /\ E1MnW /\ q1Ohy /\ QC9Q /\ Xc_ngV /\ h9WLgd
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. PICK m \in net, p \in {0} \cup Pages : ERecv(i,r,m,p)
 BY <1>xhMq4f9E, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>woEZGzt7yjb, Design, Sizes, Location, SMTT(5) DEF Active, ERecv, GrownP, IsD, K6, K7, KSlots, Maps, NewGen, OwnedBy, c02OO, dcfPK, SHJS, vS7em, AydA, bFwlN, IwCp, OyyWS, rO4YE, Bq5Edl, nNeM, E1MnW, q1Ohy, QC9Q, Xc_ngV, h9WLgd, Tag, instV, kV, rtV, xV, Sizes, Location, Design
\* T2M-END R2M1701_PdRPPP_PdE_PRecvReq_K6


<1>bV99WSHEFU.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE K4'
  BY ONLY <1>bV99WSHEFU, Sizes, Location, Design, <1>fzKBn1ys, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CRgJK0XiNV.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE K5'
  BY ONLY <1>CRgJK0XiNV, Sizes, Location, Design, <1>qZIzHDWe, V21_Inv_K5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DYdB0wj9TY.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE K6'
  BY ONLY <1>DYdB0wj9TY, Sizes, Location, Design, <1>w5ymoO7k, V21_Inv_K6 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ehTmULTZThA.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE K11'
  BY ONLY <1>ehTmULTZThA, Sizes, Location, Design, <1>RDLBLF8f2, V21_Inv_K11 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wU2hPmy4cem.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE K12'
  BY ONLY <1>wU2hPmy4cem, Sizes, Location, Design, <1>GjW0geppK, V21_Inv_K12 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>a5HmFvhOpD2.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE K17'
  BY ONLY <1>a5HmFvhOpD2, Sizes, Location, Design, <1>q7AKSeNnO, V21_Inv_K17 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EwPvaZswTOF1SMKNVNo.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE GenFiltered'
  BY ONLY <1>EwPvaZswTOF1SMKNVNo, Sizes, Location, Design, <1>IVTDoZ8i6Wy1nUykb, V21_Inv_GenFiltered DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>IRcsMCnvnwVL, <1>bV99WSHEFU, <1>CRgJK0XiNV, <1>DYdB0wj9TY, <1>ehTmULTZThA, <1>a5HmFvhOpD2, <1>edxVdlkTCEbBkZCNpz4rn6O7Q, <1>wU2hPmy4cem, <1>EwPvaZswTOF1SMKNVNo, <1>HImP0bDy1PbtfVcfrKueSbIQ, <1>PXEB2XjBM3WrlKKpTR5GM16RwraMB2ydB, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_PRecvReq SHA 90ff464bb540bc5b33242b365c043a8c865d9911230b6013d35665a8a0bb9501
USE DEF ShapeReqPeers
HIDE DEF Part_PRecvReq_04_01, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K11, V21_Inv_K12, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_PrivateMapOwner, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_ph, V22_T_rg, V22_T_xdst, V22_T_xsrcS
LEMMA ShapeEffect_PRecvReq ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Design, PRecvReq(i,r)
 PROVE \E m \in net : m.t="req" /\ net' \subseteq net \cup {Msg("abort",i,m.pe,r,m.g,0,0,0,FALSE)}
 BY ONLY PRecvReq(i,r), Sizes, Design, SMTT(5) DEF PRecvReq, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_PRecvReq ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Design, IndInv, MessageShape, PRecvReq(i,r)
 PROVE MessageShape'
<1>1. \E m \in net : m.t="req" /\ net' \subseteq net \cup {Msg("abort",i,m.pe,r,m.g,0,0,0,FALSE)}
 BY ONLY Sizes, Design, PRecvReq(i,r), ShapeEffect_PRecvReq
<1>3. QED
 BY ONLY <1>1, IndInv, MessageShape, Sizes, ShapeReqPeers, SMTT(10)
 DEF MessageShape, Msg, MsgT, Sizes, Rq, Gens, Xids, Pages, Inst, NL, PInst, DInst

\* Complete original body PdDomain_PRecvReq SHA dbda18f022b57516587d016914f20bbc595c75e791bd7e7813819a36473b6487
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_PRecvReq, ShapeReqPeers
THEOREM DomainKeep_PRecvReq ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, PRecvReq(i,r)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. \E m \in net : m.t="req" /\ net' \subseteq net \cup {Msg("abort",i,m.pe,r,m.g,0,0,0,FALSE)}
 BY ONLY Sizes, Location, Design, PinInv, PRecvReq(i,r), ShapeEffect_PRecvReq
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalPart_PRecvReq_04_02 SHA d11917dbe4a8ea23911186a8f6b884f4dee53b35501bccbe67d0b8cb80e44b52
USE DEF V21_Inv_K1, V21_Inv_K14, V21_Inv_K2, V21_Inv_K3, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_SFollowOff, V21_SFollowStatic
HIDE DEF ShapeEffect_PRecvReq, V21_Inv_MsgXDomain
THEOREM Part_PRecvReq_04_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE (K1)' /\ (K2)' /\ (K3)' /\ (K14)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (OneReply)' /\ (ReplyTruth)' /\ (P_B2OffInit)' /\ (MsgXDomain)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1>IfXiXw15U4GSQXGLO0.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>IfXiXw15U4GSQXGLO0, Sizes, Location, Design, DomainKeep_PRecvReq, SMTT(5)
\* T2M-END R2M0312_PdPDomain_PRecvReq


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Tq.        
 S3 /\ UNCHANGED <<torn>> => S3'
 BY IsaT(10), Sizes, Location, Design DEF S3, Sizes, Location, Design
\* T2M-END R2M0343_PdPF_S3

\* T2M-SCOPE R2M0451_PdPF_B2OffInit

<1>m948gxWe0.        
 P_B2OffInit /\ UNCHANGED <<dedupSeen, dpreOK, hitSeen, rpgS, schoice, sdata, sentry, sgen, skey, smap, sown, sprefc, spst, squar, sready, swrite, xprefixOK, xsrcP, xsrcS>> => P_B2OffInit'
 BY IsaT(10), Sizes, Location, Design DEF P_B2OffInit, SInit, Sizes, Location, Design
\* T2M-END R2M0451_PdPF_B2OffInit


<1>je.        
 S4 /\ UNCHANGED <<alive, nfail>> => S4'
 BY IsaT(10), Sizes, Location, Design DEF S4, Sizes, Location, Design
\* T2M-END R2M0344_PdPF_S4


<1>Af.        
 S2 /\ UNCHANGED <<nx, xg, xr>> => S2'
 BY IsaT(10), Sizes, Location, Design DEF S2, Sizes, Location, Design
\* T2M-END R2M0342_PdPF_S2


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


<1>Wu.        
 K1 /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>> => K1'
 BY IsaT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M0353_PdPF_K1


<1>ve.        
 K3 /\ UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>> => K3'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, InFl, K3, Sizes, Location, Design
\* T2M-END R2M0332_PdPF_K3


<1>PH.        
 K2 /\ UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>> => K2'
 BY IsaT(10), Sizes, Location, Design DEF ExpInst, ExpPage, InitInst, InitPage, K2, Sizes, Location, Design
\* T2M-END R2M0357_PdPF_K2


<1>kUa5tBYgK3YiUBBp.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, rd, rp, rt, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>kUa5tBYgK3YiUBBp, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PRecvReq, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OBOVqxlpvnk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE K1'
<2> USE ONLY <1>OBOVqxlpvnk, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>kUa5tBYgK3YiUBBp, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>N8yAvetXEIZ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE K2'
<2> USE ONLY <1>N8yAvetXEIZ, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>kUa5tBYgK3YiUBBp, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HMO6Re2L2EQ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE K3'
<2> USE ONLY <1>HMO6Re2L2EQ, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>kUa5tBYgK3YiUBBp, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZQpl48hsliP0.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE K14'
<2> USE ONLY <1>ZQpl48hsliP0, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>kUa5tBYgK3YiUBBp, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Mr3YegMfJDi.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE S2'
<2> USE ONLY <1>Mr3YegMfJDi, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>kUa5tBYgK3YiUBBp, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MBv757dwVkh.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE S3'
<2> USE ONLY <1>MBv757dwVkh, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>kUa5tBYgK3YiUBBp, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hHnGLtRTh00.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE S4'
<2> USE ONLY <1>hHnGLtRTh00, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>kUa5tBYgK3YiUBBp, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IUAdzVOs6nW0CC5QR.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE OneReply'
<2> USE ONLY <1>IUAdzVOs6nW0CC5QR, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>kUa5tBYgK3YiUBBp, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WgLWOQ6xCqsTJG3lYLa.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>WgLWOQ6xCqsTJG3lYLa, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>kUa5tBYgK3YiUBBp, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0422_PdPFrames_PRecvReq

\* T2M-SCOPE R2M0494_PdPOff_PRecvReq

<1>fbdIHtwMHTTAGvwxKd.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>fbdIHtwMHTTAGvwxKd, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0494_PdPOff_PRecvReq


<1> QED BY <1>OBOVqxlpvnk, <1>N8yAvetXEIZ, <1>HMO6Re2L2EQ, <1>ZQpl48hsliP0, <1>Mr3YegMfJDi, <1>MBv757dwVkh, <1>hHnGLtRTh00, <1>IUAdzVOs6nW0CC5QR, <1>WgLWOQ6xCqsTJG3lYLa, <1>fbdIHtwMHTTAGvwxKd, <1>IfXiXw15U4GSQXGLO0, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_PRecvReq_01_01, Part_PRecvReq_01_02, Part_PRecvReq_02_01, Part_PRecvReq_02_02, Part_PRecvReq_03_01, Part_PRecvReq_03_02, Part_PRecvReq_04_01, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_PRecvReq
HIDE DEF DomainKeep_PRecvReq, V21_Inv_K1, V21_Inv_K14, V21_Inv_K2, V21_Inv_K3, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_SFollowOff, V21_SFollowStatic

THEOREM Step_PRecvReq ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, PRecvReq(i,r), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, NEW v \in Rq, Sizes, Location, Design, PinInv, PRecvReq(u,v), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_PRecvReq_01_01, Part_PRecvReq_01_02, Part_PRecvReq_02_01, Part_PRecvReq_02_02, Part_PRecvReq_03_01, Part_PRecvReq_03_02, Part_PRecvReq_04_01, Part_PRecvReq_04_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_PRecvReq_01_01, Part_PRecvReq_01_02, Part_PRecvReq_02_01, Part_PRecvReq_02_02, Part_PRecvReq_03_01, Part_PRecvReq_03_02, Part_PRecvReq_04_01, Part_PRecvReq_04_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, PRecvReq(i,r), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, PRecvReq(i,r), ShapeKeep_PRecvReq, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
