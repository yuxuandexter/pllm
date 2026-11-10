---- MODULE PdActionSlice_PExpose_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, Integers, TLAPS, PdFinalAuxType_027d8d9d83cf40b0, PdFinalAuxType_0cd814f5e0dc64c0, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PExpose_01

\* Complete original body PdFinalPart_PExpose_02_02 SHA 17d613feb4eac37e07ed86d28244cc374f3ac7b74f13aad39533a230e397659f
HIDE DEF AuxType_027d8d9d83cf40b0, AuxType_0cd814f5e0dc64c0, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_PExpose_01_01, Part_PExpose_01_02, Part_PExpose_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP
THEOREM Part_PExpose_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE (SI7)' /\ (P_SI2)' /\ (S1)' /\ (S6)' /\ (K9)'
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

           RP_RecordReady == B2 => \A i \in PInst,r \in Rq :
            ph'[i][r] \in {"reg","sent","exp"} => rg'[i][r]=rg[i][r] /\ SSendReady(i,r)


           RP_NoneFrame == \A i \in PInst,r \in Rq : ph'[i][r]="none" => ph[i][r]="none" /\ rg'[i][r]=rg[i][r]

           \* T2M-LOCAL-VISIBILITY

           RP_RegPrelude == \A x \in Xids : iv'[x]="reg" =>
            xk[x]="wr" /\ (RP_Posted(x) \/ (iv[x]="reg" /\ xsrc'[x]=xsrc[x]))


           RP_RegSourceSafe == \A x \in Xids : iv'[x]="reg" => xsrc'[x] \in Pages /\ pst'[xsrc'[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

           RP_SharedSend == IF ~B2 THEN TRUE ELSE \A x \in Xids : hw[x]="fly" =>
            \A p \in xsrcS[x] \cup xsrcP[x] : sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])

           \* T2M-LOCAL-VISIBILITY

           RP2_PublishInfo == B2 => \A x \in Xids : RP_Posted(x) =>
            xp'[x] \in PInst /\ xr'[x] \in Rq /\ Active(xp'[x],xr'[x]) /\ SSendReady(xp'[x],xr'[x])
            /\ xg'[x]=rg[xp'[x]][xr'[x]] /\ x<nx'


           RP2_UnpostedFrame == \A x \in Xids : ~RP_Posted(x) =>
            UNCHANGED <<xsrc[x],xr[x],xg[x],xp[x],xk[x],xst[x],iv[x],xlt[x]>>


           RP2_PublishNoFly == \A x \in Xids : RP_Posted(x) => hw[x]="none"


           RP2_NewEntryState == \A x \in Xids : RP_Posted(x) =>
            (IF xk'[x]="wr" THEN iv'[x] \in {"reg","posted","failret"} ELSE xst'[x]="posted")

           \* T2M-LOCAL-VISIBILITY

           RP_QSnapshot == \A h \in squar : h[2] \in xsrcS[h[1]]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, aHWnD, RP_RecordReady, RP_NoneFrame, RP_RegPrelude, RP_RegSourceSafe, RP_SharedSend, RP2_PublishInfo, RP2_UnpostedFrame, RP2_PublishNoFly, RP2_NewEntryState, RP_QSnapshot

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
<2>qed. QED BY ONLY <1>ak2jPIltdDiaCVc, V22_SF_RefCount, V22_SF_Holders, V22_SF_SourceShared, V22_SF_Sentry, V22_SF_Squar, SMTT(5) DEF RP_RefDelta
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

<1>PYLHC770NBI3cbFefRv.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE HitIdentity'
 BY ONLY <1>PYLHC770NBI3cbFefRv, Sizes, Location, Design, <1>nwtTavMq8af03RrXUlAK6g, <1>UbRyVd7pIbH8AblyNEO DEF Sizes, Location, Design
\* T2M-END R2M1422_PdRPShared_PExpose


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>Ih1ajIm6Hk.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpose(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xdst>>
  BY ONLY <1>Ih1ajIm6Hk, Sizes, Location, Design, ZenonT(5) DEF PExpose, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1599_PdRPPP_PdPExposeFrames

\* T2M-SCOPE R2M1600_PdRPPP_PdCell_PExpose_K17

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

<1>FHxj9I1A.        
  ASSUME NEW j \in Inst, NEW s \in Rq, K8
  PROVE Active(j,s) => rpg[j][s] \in Pages /\ Loc(rpg[j][s]) = j
<2> USE ONLY <1>FHxj9I1A, Sizes, Location, Design
<2>1. dlzHJ(j,s)
  BY <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Zenon, Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EMxbd.        
  ASSUME NEW j \in DInst, NEW r \in Rq, K9
  PROVE aHWnD(j,r)
  BY ONLY <1>EMxbd, Sizes, Location, Design DEF K9, aHWnD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>N4h15fQyir6.        
  (\A j \in DInst, r \in Rq : aHWnD(j,r)') => K9'
  BY Sizes, Location, Design DEF K9, aHWnD, Sizes, Location, Design

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


<1>tXbUxPjAN.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE Mode = "pull" /\ IsP(i) /\ ph[i][r] = "ready" /\ nx <= MX /\ nx \in Xids
<2> USE ONLY <1>tXbUxPjAN, Sizes, Location, Design
 <2>1. SHJS BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, Sizes, SMTT(5), Location DEF PExpose, SendReady, SHJS, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KbDs6OZlcp.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ hp[r][rg[i][r]] = i /\ hd[r][rg[i][r]] = rpe[i][r]
       /\ led[rpg[i][r]] = {} /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
       /\ rx[i][r] = 0 /\ plt[rpg[i][r]] = ptl[rpg[i][r]] /\ ptl[rpg[i][r]] \in PLens(r,rg[i][r])
       /\ LtOf(i,r) = ptl[rpg[i][r]]
<2> USE ONLY <1>KbDs6OZlcp, Sizes, Location, Design
 <2>1. K8 /\ K1 /\ ph[i][r] = "ready" /\ IsP(i)
  BY <1>tXbUxPjAN, V21_Inv_K1, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. dlzHJ(i,r) BY <2>1, <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>2, <2>1, SMTT(5), Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, SMTT(5), Sizes, Location, Design DEF dlzHJ, K1, Active, OwnedBy, LtOf, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>u0BDx88.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xr'[y] = IF y=nx THEN r ELSE xr[y]
<2> USE ONLY <1>u0BDx88, Sizes, Location, Design
 <2>1. a1R5 BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, a1R5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>avJnorl.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xg'[y] = IF y=nx THEN rg[i][r] ELSE xg[y]
<2> USE ONLY <1>avJnorl, Sizes, Location, Design
 <2>1. CXAy BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, CXAy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fyedmWL.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xk'[y] = IF y=nx THEN "rd" ELSE xk[y]
<2> USE ONLY <1>fyedmWL, Sizes, Location, Design
 <2>1. ok5g BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, ok5g, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>niHtR3B.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xp'[y] = IF y=nx THEN i ELSE xp[y]
<2> USE ONLY <1>niHtR3B, Sizes, Location, Design
 <2>1. vdyX BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, vdyX, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eZXe1VO.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xd'[y] = IF y=nx THEN rpe[i][r] ELSE xd[y]
<2> USE ONLY <1>eZXe1VO, Sizes, Location, Design
 <2>1. C4fb BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, C4fb, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MiGwosYWa.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xsrc'[y] = IF y=nx THEN rpg[i][r] ELSE xsrc[y]
<2> USE ONLY <1>MiGwosYWa, Sizes, Location, Design
 <2>1. Uzgo58 BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, Uzgo58, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vvlPk9uJ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xnt'[y] = IF y=nx THEN NTok(r,rg[i][r]) ELSE xnt[y]
<2> USE ONLY <1>vvlPk9uJ, Sizes, Location, Design
 <2>1. PwcfA BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, PwcfA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RwuD0jsb.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xlt'[y] = IF y=nx THEN LtOf(i,r) ELSE xlt[y]
<2> USE ONLY <1>RwuD0jsb, Sizes, Location, Design
 <2>1. OfQy9 BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, OfQy9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>P4FsINDM.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xst'[y] = IF y=nx THEN "posted" ELSE xst[y]
<2> USE ONLY <1>P4FsINDM, Sizes, Location, Design
 <2>1. PD2ZN BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, PD2ZN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZdV92Gb.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PExpose(i,r)
 PROVE nx' = nx+1
 BY ONLY <1>ZdV92Gb, Sizes, Location, Design, SMTT(5) DEF PExpose, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SrUXhoss.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A q \in Pages : led'[q] = IF q=rpg[i][r] THEN led[q] \cup {nx} ELSE led[q]
<2> USE ONLY <1>SrUXhoss, Sizes, Location, Design
 <2>1. dcfPK BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OIfz603b0.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE /\ \A j \in Inst, u \in Rq :
          /\ ph'[j][u] = IF j=i /\ u=r THEN "exp" ELSE ph[j][u]
          /\ rx'[j][u] = IF j=i /\ u=r THEN nx ELSE rx[j][u]
          /\ (Active(j,u)' <=> Active(j,u))
          /\ (ph'[j][u] \in {"run","ovl"} <=> ph[j][u] \in {"run","ovl"})
       /\ \A j \in DInst, u \in Rq : ph'[j][u] = ph[j][u] /\ rx'[j][u] = rx[j][u]
<2> USE ONLY <1>OIfz603b0, Sizes, Location, Design
 <2>1. AydA /\ QC9Q BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>tXbUxPjAN, Sizes, SMTT(5), Location, Design DEF PExpose, AydA, QC9Q, Active, IsP, Inst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oz4BGxpIU.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
  PROVE \A x \in Xids : x < nx => xr[x] # r \/ xg[x] # rg[i][r]
<2> USE ONLY <1>oz4BGxpIU, Sizes, Location, Design
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
<2>5. QED BY <2>4, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1604_PdRPPP_PdEExposeFresh


<1>eTAcW7uqoDSN9Gg.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : y < nx =>
   UNCHANGED <<xr[y],xg[y],xk[y],xp[y],xd[y],xsrc[y],xlt[y],xnt[y],xst[y],ExpPage(y),InitPage(y),ExpInst(y),InitInst(y)>>
<2> USE ONLY <1>eTAcW7uqoDSN9Gg, Sizes, Location, Design
 <2>1. UNCHANGED xdst BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED BY <2>1, <1>u0BDx88, <1>avJnorl, <1>fyedmWL, <1>niHtR3B, <1>eZXe1VO, <1>MiGwosYWa, <1>RwuD0jsb, <1>vvlPk9uJ, <1>P4FsINDM, SMTT(5), Sizes, Location, Design DEF ExpPage, InitPage, ExpInst, InitInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xC8kiZQuzgOmmvX.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE /\ xk'[nx] = "rd" /\ xr'[nx] = r /\ xg'[nx] = rg[i][r]
       /\ xp'[nx] = i /\ xd'[nx] = rpe[i][r]
       /\ xsrc'[nx] = rpg[i][r] /\ xdst'[nx] = 0
       /\ iv'[nx] = "none" /\ hw'[nx] = "none" /\ xst'[nx] = "posted"
       /\ xlt'[nx] = ptl[rpg[i][r]]
<2> USE ONLY <1>xC8kiZQuzgOmmvX, Sizes, Location, Design
 <2>1. K2 /\ nx \in Xids BY <1>tXbUxPjAN, V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. xdst[nx] = 0 /\ iv[nx] = "none" /\ hw[nx] = "none"
  BY <2>1, Sizes, SMTT(5), Location, Design DEF K2, Xids, Sizes, Location, Design
 <2>3. UNCHANGED <<xdst,iv,hw>> BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, <1>KbDs6OZlcp, <1>fyedmWL, <1>u0BDx88, <1>avJnorl, <1>niHtR3B, <1>eZXe1VO, <1>MiGwosYWa, <1>RwuD0jsb, <1>P4FsINDM, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yqogGQyaTa.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A q \in Pages, y \in Xids : y < nx => ((y \in led'[q]) <=> (y \in led[q]))
 BY ONLY <1>yqogGQyaTa, Sizes, Location, Design, <1>SrUXhoss, SMTT(5) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>v6lFz9H.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE K2'
<2> USE ONLY <1>v6lFz9H, Sizes, Location, Design
<2>1. K2 /\ K8 /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<gen,hd,hok,hp,hw,iv,xdst>>
 BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>tXbUxPjAN, <1>KbDs6OZlcp, <1>eZXe1VO, <1>avJnorl, <1>fyedmWL, <1>RwuD0jsb, <1>vvlPk9uJ, <1>niHtR3B, <1>u0BDx88, <1>MiGwosYWa, <1>P4FsINDM, <1>ZdV92Gb, Design, Sizes, Location, SMTT(5) DEF Active, ExpInst, ExpPage, InitInst, InitPage, IsD, IsP, K2, K8, OwnedBy, SHJS, Tag, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1610_PdRPPP_PdE_PExpose_K2

\* T2M-SCOPE R2M1611_PdRPPP_PdE_PExpose_K4

<1>ICCzuYD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE K4'
<2> USE ONLY <1>ICCzuYD, Sizes, Location, Design
 <2>1. K4 /\ K2 /\ SHJS /\ dcfPK BY <1>UwwC5LVwQr, V21_Inv_K2, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. UNCHANGED <<iv,xdst>> BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. \A y \in Xids : y < nx' =>
    /\ (y \in led'[ExpPage(y)']) <=> xst'[y] = "posted"
    /\ InitPage(y)' \in Pages => ((y \in led'[InitPage(y)']) <=> iv'[y] \in {"reg","posted","failret"})
  <3>1. SUFFICES ASSUME NEW y \in Xids, y < nx' PROVE
    /\ (y \in led'[ExpPage(y)']) <=> xst'[y] = "posted"
    /\ InitPage(y)' \in Pages => ((y \in led'[InitPage(y)']) <=> iv'[y] \in {"reg","posted","failret"})
   BY SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. y <= nx BY <2>1, <3>1, <1>ZdV92Gb, Sizes, SMTT(5), Location, Design DEF SHJS, Xids, Sizes, Location, Design
  <3>3. CASE y=nx
   BY <3>1, <3>3, <1>xC8kiZQuzgOmmvX, <1>KbDs6OZlcp, <1>SrUXhoss, Sizes, SMTT(5), Location, Design DEF ExpPage, InitPage, Pages, Sizes, Location, Design
  <3>4. CASE y<nx
   <4>1. ExpPage(y) \in Pages /\ (InitPage(y) # 0 => InitPage(y) \in Pages)
    BY <2>1, <3>1, <3>4, Design, Sizes, SMTT(5), Location DEF K2, SHJS, Xids, Sizes, Location, Design
   <4>2. QED BY <2>1, <2>2, <3>1, <3>4, <4>1, <1>eTAcW7uqoDSN9Gg, <1>yqogGQyaTa, SMTT(5), Sizes, Location, Design DEF K4, Sizes, Location, Design
  <3>5. QED BY <3>2, <3>3, <3>4, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. \A q \in Pages : \A y \in led'[q] : y < nx' /\ (q=ExpPage(y)' \/ q=InitPage(y)')
  BY <2>1, <1>tXbUxPjAN, <1>KbDs6OZlcp, <1>SrUXhoss, <1>ZdV92Gb, <1>eTAcW7uqoDSN9Gg, <1>xC8kiZQuzgOmmvX, Sizes, SMTT(5), Location, Design DEF K4, dcfPK, SHJS, Xids, ExpPage, InitPage, Sizes, Location, Design
 <2>5. QED BY <2>3, <2>4, Sizes, Location, Design DEF K4, Sizes, Location, Design
\* T2M-END R2M1611_PdRPPP_PdE_PExpose_K4

\* T2M-SCOPE R2M1612_PdRPPP_PdE_PExpose_K5

<1>DmIiPEd.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE K9'
<2> USE ONLY <1>DmIiPEd, Sizes, Location, Design
 <2>0. SUFFICES ASSUME NEW j \in DInst, NEW u \in Rq PROVE aHWnD(j,u)'
  BY <1>N4h15fQyir6, Sizes, Location, Design DEF Sizes, Location, Design
 <2>1. K9 /\ K8 /\ SHJS /\ aHWnD(j,u) BY <1>EMxbd, <1>UwwC5LVwQr, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. UNCHANGED <<rpg,rg,rhit,drep,iv,xdst,sled,sfly,plt,ptl,pvis,pst>> BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. j \in Inst /\ IsD(j) BY Sizes, SMTT(5), Location, Design DEF DInst, Inst, IsD, NL, Sizes, Location, Design
 <2>4. Active(j,u) => rpg[j][u] \in Pages /\ Loc(rpg[j][u]) = j
  BY <2>1, <2>3, <1>FHxj9I1A, Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. Active(j,u) => led'[rpg[j][u]] = led[rpg[j][u]]
  BY <2>3, <2>4, <1>tXbUxPjAN, <1>KbDs6OZlcp, <1>SrUXhoss, Sizes, SMTT(5), Location, Design DEF IsP, DInst, PInst, NL, Sizes, Location, Design
 <2>6. ( LET q == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN Active(j, u) => drep[u][g] = 0)'
 BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>OIfz603b0, <1>eTAcW7uqoDSN9Gg, <1>ZdV92Gb, Sizes, SMTT(5), Location, Design DEF aHWnD, Active, SHJS, Xids, Sizes, Location, Design
<2>7. ( LET q == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN ph[j][u] = "end" => drep[u][g] = 1)'
 BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>OIfz603b0, <1>eTAcW7uqoDSN9Gg, <1>ZdV92Gb, Sizes, SMTT(5), Location, Design DEF aHWnD, Active, SHJS, Xids, Sizes, Location, Design
<2>8. ( LET q == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN rhit[j][u] => ph[j][u] \in {"run", "ovl", "end"})'
 BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>OIfz603b0, <1>eTAcW7uqoDSN9Gg, <1>ZdV92Gb, Sizes, SMTT(5), Location, Design DEF aHWnD, Active, SHJS, Xids, Sizes, Location, Design
<2>9. ( LET q == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN ph[j][u] = "wait" /\ Mode = "push" => (x \in Xids /\ x < nx /\ xdst[x] = q /\ xr[x] = u /\ xg[x] = g
                                            /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0))'
 BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>OIfz603b0, <1>eTAcW7uqoDSN9Gg, <1>ZdV92Gb, Sizes, SMTT(5), Location, Design DEF aHWnD, Active, SHJS, Xids, Sizes, Location, Design
<2>10. ( LET q == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN ph[j][u] = "wait" /\ Mode = "pull" => (x = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0))'
 BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>OIfz603b0, <1>eTAcW7uqoDSN9Gg, <1>ZdV92Gb, Sizes, SMTT(5), Location, Design DEF aHWnD, Active, SHJS, Xids, Sizes, Location, Design
<2>11. ( LET q == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN ph[j][u] = "rd" => (Mode = "pull" /\ x \in Xids /\ x < nx /\ xdst[x] = q /\ xr[x] = u /\ xg[x] = g
                         /\ iv[x] \in {"posted", "cqe", "failret"} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0))'
 BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>OIfz603b0, <1>eTAcW7uqoDSN9Gg, <1>ZdV92Gb, Sizes, SMTT(5), Location, Design DEF aHWnD, Active, SHJS, Xids, Sizes, Location, Design
<2>12. ( LET q == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN ph[j][u] \in {"run", "ovl"} /\ ~rhit[j][u] => (led[q] = {} /\ sled[q] = {t} /\ plt[q] = NTok(u, g) /\ ptl[q] = NTok(u, g) /\ pvis[q]))'
 BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>OIfz603b0, <1>eTAcW7uqoDSN9Gg, <1>ZdV92Gb, Sizes, SMTT(5), Location, Design DEF aHWnD, Active, SHJS, Xids, Sizes, Location, Design
<2>13. ( LET q == rpg[j][u]
     g == rg[j][u]
     t == Tag(u,g)
     x == rx[j][u]
 IN ph[j][u] \in {"run", "ovl"} /\ rhit[j][u] => (pst[q] = "shared" /\ t \in sled[q] /\ x = 0))'
 BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>OIfz603b0, <1>eTAcW7uqoDSN9Gg, <1>ZdV92Gb, Sizes, SMTT(5), Location, Design DEF aHWnD, Active, SHJS, Xids, Sizes, Location, Design
<2>99. QED BY <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, <2>12, <2>13, Sizes, Location, Design DEF aHWnD, Sizes, Location, Design
\* T2M-END R2M1615_PdRPPP_PdE_PExpose_K9

\* T2M-SCOPE R2M1616_PdRPPP_PdE_PExpose_QuarNeverMapped

<1>FAhRqWhWMg74cq.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE QuarNoReg'
<2> USE ONLY <1>FAhRqWhWMg74cq, Sizes, Location, Design
<2>1. QuarNoReg /\ dcfPK
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_KStruct, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<iv,pst>>
 BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>tXbUxPjAN, <1>KbDs6OZlcp, <1>SrUXhoss, Design, Sizes, Location, SMTT(5) DEF IsP, QuarNoReg, dcfPK, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1617_PdRPPP_PdE_PExpose_QuarNoReg

\* T2M-SCOPE R2M1618_PdRPPP_PdE_PExpose_S1

<1>JT9Xuxx.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE S1'
<2> USE ONLY <1>JT9Xuxx, Sizes, Location, Design
<2>1. S1 /\ K2 /\ K8 /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K8, V21_Inv_S1, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<rg>>
 BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>xbWa623J, <1>fem, <1>ho2qVzp0UDI9Dx, <1>oz4BGxpIU, <1>eTAcW7uqoDSN9Gg, <1>xC8kiZQuzgOmmvX, <1>tXbUxPjAN, <1>KbDs6OZlcp, <1>eZXe1VO, <1>avJnorl, <1>fyedmWL, <1>niHtR3B, <1>u0BDx88, <1>ZdV92Gb, <1>OIfz603b0, Design, Sizes, Location, SMTT(10) DEF Active, ExpInst, ExpPage, InitInst, InitPage, IsD, IsP, K2, OwnedBy, S1, SHJS, Tag, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1618_PdRPPP_PdE_PExpose_S1

\* T2M-SCOPE R2M1619_PdRPPP_PdE_PExpose_S5

<1>eQ11y0I.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE S6'
<2> USE ONLY <1>eQ11y0I, Sizes, Location, Design
<2>1. S6 /\ K2 /\ K8 /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K8, V21_Inv_S6, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<rg,xdst>>
 BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>xbWa623J, <1>fem, <1>ho2qVzp0UDI9Dx, <1>oz4BGxpIU, <1>eTAcW7uqoDSN9Gg, <1>xC8kiZQuzgOmmvX, <1>tXbUxPjAN, <1>KbDs6OZlcp, <1>eZXe1VO, <1>avJnorl, <1>fyedmWL, <1>niHtR3B, <1>u0BDx88, <1>MiGwosYWa, <1>ZdV92Gb, <1>OIfz603b0, Design, Sizes, Location, SMTT(10) DEF Active, ExpInst, ExpPage, InitInst, InitPage, IsD, IsP, K2, OwnedBy, S6, SHJS, Tag, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1620_PdRPPP_PdE_PExpose_S6


<1>qVFlSeZew.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K2'
  BY ONLY <1>qVFlSeZew, Sizes, Location, Design, <1>v6lFz9H, V21_Inv_K2 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>u4kbinEaa.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K3'
  BY ONLY <1>u4kbinEaa, Sizes, Location, Design, <1>cWhYtMX, V21_Inv_K3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J3pc6gAFH.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K4'
  BY ONLY <1>J3pc6gAFH, Sizes, Location, Design, <1>ICCzuYD, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iy38VduiM.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K9'
  BY ONLY <1>iy38VduiM, Sizes, Location, Design, <1>DmIiPEd, V21_Inv_K9 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>f3M8O5Rw9.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE S1'
  BY ONLY <1>f3M8O5Rw9, Sizes, Location, Design, <1>JT9Xuxx, V21_Inv_S1 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aUXKOfQZl.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE S6'
  BY ONLY <1>aUXKOfQZl, Sizes, Location, Design, <1>eQ11y0I, V21_Inv_S6 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q79TVY04iCAi2wxu.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>Q79TVY04iCAi2wxu, Sizes, Location, Design, <1>FAhRqWhWMg74cq, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1621_PdRPPdPAgg_PExpose


<1>qB39FMP124WaPnid5gQg1.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE UNCHANGED gen /\ RP_RecordReady /\ RP_NoneFrame
<2> USE ONLY <1>qB39FMP124WaPnid5gQg1, Sizes, Location, Design
<2>1. B2 => \A j \in PInst,u \in Rq : ph[j][u] \in {"reg","sent","exp"} => SSendReady(j,u)
 BY V21_Inv_P_SI1, Sizes, Location, Design DEF P_SI1, SI1, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>qB39FMP124WaPnid5gQg1, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_RecordReady, RP_NoneFrame, PInst, Inst, NL, EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

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


<1>oItEBPvm4xMyvmQnAt.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE RP_RegPrelude
<2> HIDE DEF K2, K3, RP_RegPrelude
<2>old. K2 /\ K3 /\ nx \in 1..(MX+1) /\ xsrc \in [Xids -> 0..NP]
 BY ONLY <1>oItEBPvm4xMyvmQnAt, V21_Inv_K2, V21_Inv_K3, V22_T_nx, V22_T_xsrc, Sizes, Location, Design, SMTT(5)
<2>effect. iv'=iv /\ xsrc'=[xsrc EXCEPT ![nx]=rpg[i][r]]
 BY ONLY <1>oItEBPvm4xMyvmQnAt, SMTT(5) DEF PExpose
<2>point. ASSUME NEW x \in Xids, iv'[x]="reg"
 PROVE xk[x]="wr" /\ (RP_Posted(x) \/ (iv[x]="reg" /\ xsrc'[x]=xsrc[x]))
 <3>prior. iv[x]="reg"
  BY ONLY <2>point, <2>effect, SMTT(5)
 <3>integers. x \in Int /\ nx \in Int
  BY ONLY <2>point, <2>old, SMTT(5) DEF Xids
 <3>different. x # nx
  BY ONLY <2>point, <2>old, <3>prior, <3>integers, SMTT(5) DEF K2
 <3>kind. xk[x]="wr"
  BY ONLY <2>point, <2>old, <3>prior, SMTT(5) DEF K3
 <3>source. xsrc'[x]=xsrc[x]
  BY ONLY <2>point, <2>old, <2>effect, <3>different, SMTT(5)
 <3>qed. QED BY ONLY <3>prior, <3>kind, <3>source, SMTT(5)
<2>qed. QED BY ONLY <2>point, SMTT(5) DEF RP_RegPrelude

\* T2M-LOCAL-VISIBILITY

<1>V9sVgPYhuNoep.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE K1'
<2> USE ONLY <1>V9sVgPYhuNoep, Sizes, Location, Design
<2>1. K1 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K1, EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JVmwBUr8JdLjl.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE K2'
 BY ONLY <1>JVmwBUr8JdLjl, Sizes, Location, Design, <1>qVFlSeZew DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>w3rSi9XIkrLs7.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE K3'
 BY ONLY <1>w3rSi9XIkrLs7, Sizes, Location, Design, <1>u4kbinEaa DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mfykL8whsaWQs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE K4'
 BY ONLY <1>mfykL8whsaWQs, Sizes, Location, Design, <1>J3pc6gAFH DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yx0nKNPJxas2jO060zO7.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>yx0nKNPJxas2jO060zO7, Sizes, Location, Design, <1>Q79TVY04iCAi2wxu DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YmYs2za0y8hVG.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE nx' \in 1..(MX+1)
<2> USE ONLY <1>YmYs2za0y8hVG, Sizes, Location, Design
<2>1. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>YmYs2za0y8hVG, V22_T_nx, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF Xids, EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wJjXJ86ECQ8.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE SI7'
<2> USE ONLY <1>wJjXJ86ECQ8, Sizes, Location, Design
<2>1. RP_RegSourceSafe BY <1>V9sVgPYhuNoep, <1>JVmwBUr8JdLjl, <1>w3rSi9XIkrLs7, <1>mfykL8whsaWQs, <1>yx0nKNPJxas2jO060zO7, <1>YmYs2za0y8hVG, <1>NU8zGD7bQ5u9BXIjl, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>oItEBPvm4xMyvmQnAt, <1>KvDgRwgd9SE, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1822_PdRPSI7_PExpose


<1>M8HwZu9jwGkBjbpUA.        
 ASSUME B2, SFollow
 PROVE \A h \in squar' : h \in squar \/ h[1] \in sentry
<2> USE ONLY <1>M8HwZu9jwGkBjbpUA, Sizes, Location, Design
<2>1. squar'=RP_Q2(0) BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF RP_SFollowEffect, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF RP_Q2, RP_Quarantine, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IBl04sqx8asAwVJT9rUNW.        
 ASSUME PinInv, B2, NEW x \in Xids, xsrcS[x] # {}
 PROVE ~RP_Posted(x)
<2> USE ONLY <1>IBl04sqx8asAwVJT9rUNW, Sizes, Location, Design
<2>1. SI4 BY V21_Inv_P_SI4, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, SMTT(10), Location, Design DEF SI4, RP_Posted, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Cu2thJvelAD2muiXP3.        
 ASSUME PinInv, B2, SFollow, RP2_PublishInfo, NEW x \in Xids, RP_Posted(x)
 PROVE xsrcP'[x]={} /\ (xsrcS'[x]={} \/ xsrcS'[x]={smap[xp'[x]][xr'[x]]})
 /\ \A p \in xsrcS'[x] : p \in SPages /\ spst'[p]="shared" /\ Loc(p)=xp'[x]
       /\ skey'[p]=STok(xr'[x],xg'[x]) /\ sdata'[p] /\ ~swrite'[p]
<2> USE ONLY <1>Cu2thJvelAD2muiXP3, Sizes, Location, Design
<2>1. SI1 /\ SI4 /\ HitIdentity /\ SharedImmutable /\ STypeOK
 BY V21_Inv_HitIdentity, V21_Inv_P_SI1, V21_Inv_P_SI4, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF P_SI1, P_SI4, Sizes, Location, Design
<2>2. RP_SFollowEffect BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xp'[x] \in PInst /\ xr'[x] \in Rq /\ Active(xp'[x],xr'[x]) /\ SSendReady(xp'[x],xr'[x]) /\ xg'[x]=rg[xp'[x]][xr'[x]]
 BY Sizes, Location, Design DEF RP2_PublishInfo, Sizes, Location, Design
<2>4. smap[xp'[x]][xr'[x]]=0 \/ (smap[xp'[x]][xr'[x]] \in SPages /\ spst[smap[xp'[x]][xr'[x]]]="shared")
 BY <2>1, <2>3, Design, SMTT(10), Sizes, Location DEF STypeOK, SSendReady, Sizes, Location, Design
<2>5. xsrcP'[x]={} /\ (xsrcS'[x]={} \/ xsrcS'[x]={smap[xp'[x]][xr'[x]]})
 BY <2>2, <2>4, Sizes, SMTT(10), Location, Design DEF RP_SFollowEffect, RP_SX, RP_PX, RP_Src, SPages, Sizes, Location, Design
<2>55. xsrcS'[x]=IF smap[xp'[x]][xr'[x]] \in SPages /\ spst[smap[xp'[x]][xr'[x]]]="shared" THEN {smap[xp'[x]][xr'[x]]} ELSE {}
 BY <2>2, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_SX, RP_Src, Sizes, Location, Design
<2>6. ASSUME NEW p \in xsrcS'[x]
       PROVE p \in SPages /\ spst'[p]="shared" /\ Loc(p)=xp'[x]
       /\ skey'[p]=STok(xr'[x],xg'[x]) /\ sdata'[p] /\ ~swrite'[p]
 <3>1. p=smap[xp'[x]][xr'[x]] /\ p \in SPages /\ spst[p]="shared"
  BY <2>55, <2>6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. Loc(p)=xp'[x] /\ skey[p]=STok(xr'[x],xg'[x]) /\ sdata[p] /\ ~swrite[p]
  BY <2>1, <2>3, <3>1, Sizes, SMTT(10), Location, Design DEF SI1, HitIdentity, SharedImmutable, SPages, Sizes, Location, Design
 <3>3. QED BY <2>1, <2>2, <3>1, <3>2, <1>Ua3eOhQVTzEuP0Q, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, Sizes, Location, Design
<2>7. QED BY <2>5, <2>6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vbFJMgIprIpe5E6C1dAaNei5q.        
 ASSUME PinInv, B2, SFollow, RP2_PublishInfo
 PROVE \A x \in Xids : xsrcP'[x]={}
<2> USE ONLY <1>vbFJMgIprIpe5E6C1dAaNei5q, Sizes, Location, Design
<2>1. SI4 BY V21_Inv_P_SI4, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. RP_SFollowEffect BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Cu2thJvelAD2muiXP3, SMTT(10), Sizes, Location, Design DEF SI4, RP_SFollowEffect, RP_PX, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>B7gEeXrXbws8yxr3BsZ4k.        
 ASSUME PinInv, B2, SFollow, UNCHANGED hw, NEW x \in Xids, ~RP_Posted(x), SAccess(x)'
 PROVE SAccess(x)
<2> USE ONLY <1>B7gEeXrXbws8yxr3BsZ4k, Sizes, Location, Design
<2>1. RP_SFollowEffect BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A h \in squar' : h \in squar \/ h[1] \in sentry BY <1>M8HwZu9jwGkBjbpUA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF SAccess, RP_SFollowEffect, RP_E2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KEGyjYU5k3BGqj.        
 ASSUME PinInv, SFollow, RP2_PublishInfo, RP2_UnpostedFrame, UNCHANGED hw
 PROVE NoEvictUnderRDMA' /\ RP_SharedSend'
<2> USE ONLY <1>KEGyjYU5k3BGqj, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ SharedImmutable /\ (B2 => SI4) /\ STypeOK
 BY V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI4, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF NoEvictUnderRDMA, RP_SharedSend, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RP_SFollowEffect BY <2>3, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A x \in Xids : xsrcP'[x]={} BY <2>3, <1>vbFJMgIprIpe5E6C1dAaNei5q, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. ASSUME NEW x \in Xids, SAccess(x)', NEW p \in xsrcS'[x]
        PROVE spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x]) /\ sdata'[p] /\ ~swrite'[p]
  <4>1. CASE RP_Posted(x) BY <2>3, <3>3, <4>1, <1>Cu2thJvelAD2muiXP3, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. CASE ~RP_Posted(x)
   <5>1. SAccess(x) BY <2>3, <3>3, <4>2, <1>B7gEeXrXbws8yxr3BsZ4k, Sizes, Location, Design DEF Sizes, Location, Design
   <5>2. xsrcS'[x]=xsrcS[x] /\ xr'[x]=xr[x] /\ xg'[x]=xg[x]
    BY <3>1, <3>3, <4>2, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_SX, RP2_UnpostedFrame, Sizes, Location, Design
   <5>3. p \in SPages /\ spst[p]="shared" /\ skey[p]=STok(xr[x],xg[x]) /\ sdata[p] /\ ~swrite[p]
    BY <2>1, <2>3, <3>3, <5>1, <5>2, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, SharedImmutable, STypeOK, Sizes, Location, Design
   <5>4. QED BY <2>1, <2>3, <3>1, <5>2, <5>3, <1>Ua3eOhQVTzEuP0Q, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, Sizes, Location, Design
  <4>3. QED BY <4>1, <4>2, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY <2>3, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, RP_SharedSend, SAccess, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>j4RKPg9jdfM4wkcoZMxYW.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE RP2_PublishInfo /\ RP2_UnpostedFrame /\ RP2_NewEntryState /\ RP2_PublishNoFly /\ UNCHANGED <<hw,ptl,sfly>> /\ nx'>=nx
<2> USE ONLY <1>j4RKPg9jdfM4wkcoZMxYW, Sizes, Location, Design
<2>1. xsrc \in [Xids -> 0..NP] /\ xr \in [Xids -> 0..NR] /\ xg \in [Xids -> 0..MG] /\ xlt \in [Xids -> 0..PS]
 /\ xp \in [Xids -> {0} \cup Inst] /\ xk \in [Xids -> {"none","wr","rd"}]
 /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 /\ iv \in [Xids -> {"none","reg","posted","failret","cqe","nopost"}] /\ nx \in 1..(MX+1)
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>j4RKPg9jdfM4wkcoZMxYW, V22_T_iv, V22_T_nx, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst, SMTT(5)

<2>2. K2 /\ K8 BY V21_Inv_K2, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. i \in PInst /\ Active(i,r) /\ (B2 => SSendReady(i,r)) /\ rpg[i][r] \in Pages
 BY <2>2, Sizes, Design, SMTT(10), Location DEF PExpose, SendReady, IsP, PInst, Inst, NL, Active, K8, Sizes, Location, Design
<2>4. nx \in Xids /\ xsrc[nx]=0 /\ xk[nx]="none" /\ hw[nx]="none"
 BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF PExpose, K2, Xids, Sizes, Location, Design
<2>5. \A x \in Xids : RP_Posted(x) <=> x=nx
 BY <2>1, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF PExpose, RP_Posted, Pages, Sizes, Location, Design
<2>6. RP2_PublishInfo
 BY <2>1, <2>3, <2>4, <2>5, Sizes, SMTT(10), Location, Design DEF RP2_PublishInfo, PExpose, Xids, Sizes, Location, Design
<2>7. RP2_UnpostedFrame
 BY <2>1, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF RP2_UnpostedFrame, PExpose, Sizes, Location, Design
<2>8. RP2_NewEntryState /\ RP2_PublishNoFly /\ UNCHANGED <<hw,ptl,sfly>> /\ nx'>=nx
 BY <2>1, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF RP2_NewEntryState, RP2_PublishNoFly, PExpose, Sizes, Location, Design
<2>9. QED BY <2>6, <2>7, <2>8, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VPUcNOOGrI8Fc3kpjFXJbyraC.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>VPUcNOOGrI8Fc3kpjFXJbyraC, Sizes, Location, Design, <1>j4RKPg9jdfM4wkcoZMxYW, <1>KEGyjYU5k3BGqj DEF Sizes, Location, Design

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
 BY ONLY <2>1, <2>2, <2>3, FS_EmptySet, ZenonT(5) DEF SRefR, SRefE, SRefQ
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lfr647sex40IaADeU2.        
 ASSUME PinInv, B2, SFollow
 PROVE RP_QSnapshot'
<2> HIDE DEF RP_QSnapshot, V22_FQ2, V22_FSX, V22_FPosted, RP_Posted, SI5
<2>types. squar \subseteq Xids \X SPages /\ xsrcS \in [Xids -> SUBSET SPages]
 BY ONLY <1>lfr647sex40IaADeU2, V22_T_squar, V22_T_xsrcS, SMTT(5)
<2>old. SI5
 BY ONLY <1>lfr647sex40IaADeU2, V21_Inv_P_SI5, Sizes, Location, Design, SMTT(5) DEF P_SI5
<2>effect. squar'=V22_FQ2 /\ xsrcS'=V22_FSX
 BY ONLY <1>lfr647sex40IaADeU2, V22_SF_Squar, V22_SF_SourceShared, SMTT(5)
<2>point. ASSUME NEW h \in squar'
 PROVE h[2] \in xsrcS'[h[1]]
 <3>origin. h \in squar \/ (\E x \in Xids : \E p \in xsrcS[x] : h = <<x,p>>)
  BY ONLY <2>point, <2>effect, SMTT(5) DEF V22_FQ2
 <3>prior. h \in Xids \X SPages /\ h[2] \in xsrcS[h[1]]
  <4>oldCase. CASE h \in squar
   BY ONLY <4>oldCase, <2>types, <2>old, SMTT(5) DEF SI5
  <4>newCase. CASE h \notin squar
   <5>first. PICK x \in Xids : \E p \in xsrcS[x] : h = <<x,p>>
    BY ONLY <3>origin, <4>newCase, SMTT(5)
   <5>second. PICK p \in xsrcS[x] : h = <<x,p>>
    BY ONLY <5>first, SMTT(5)
   <5>qed. QED BY ONLY <5>first, <5>second, <2>types, SMTT(5)
  <4>qed. QED BY ONLY <4>oldCase, <4>newCase, SMTT(5)
 <3>index. h[1] \in Xids /\ xsrcS[h[1]] # {}
  BY ONLY <3>prior, SMTT(5)
 <3>noPosted. ~RP_Posted(h[1])
  BY ONLY <1>lfr647sex40IaADeU2, <3>index, <1>IBl04sqx8asAwVJT9rUNW, Sizes, Location, Design, SMTT(5)
 <3>source. xsrcS'[h[1]]=xsrcS[h[1]]
  BY ONLY <2>effect, <3>index, <3>noPosted, SMTT(5) DEF V22_FSX, V22_FPosted, RP_Posted
 <3>qed. QED BY ONLY <3>prior, <3>source, SMTT(5)
<2>qed. QED BY ONLY <2>point, SMTT(5) DEF RP_QSnapshot

\* T2M-LOCAL-VISIBILITY

<1>DD3w23uO4qh9.        
 ASSUME PinInv, SFollow, RP_NoneFrame, RP2_PublishInfo,
        HitIdentity', NoEvictUnderRDMA', PrefcMatchesHolders'
 PROVE P_SI2'
<2> USE ONLY <1>DD3w23uO4qh9, Sizes, Location, Design
<2>1. (B2 => SI1 /\ SI2 /\ SI4) /\ STypeOK
 BY V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI4, Sizes, Location, Design
<2>2. RP_T_rpgS' /\ RP_T_sentry' /\ RP_T_squar'
 BY <2>1, <1>g2d0XcDvt56Baa, <1>NjvYCjaSlJxhU8e0, <1>A1Sb5mM7HaVTJal, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE ~B2 BY <2>3, Sizes, Location, Design DEF P_SI2, Sizes, Location, Design
<2>4. CASE B2
 <3>1. RP_SFollowEffect BY <2>4, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>15. RP_QSnapshot' BY <2>4, <1>lfr647sex40IaADeU2, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A p \in SPages : spst'[p] # "shared" => sprefc'[p]=0
  BY <2>2, <2>4, <3>15, <1>gBcuQ3MZg0Mp69tPa, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A x \in Xids : xsrcP[x]={} /\ RP_PX(0)[x]={}
  BY <2>1, <2>4, <3>1, <1>vbFJMgIprIpe5E6C1dAaNei5q, SMTT(10), Sizes, Location, Design DEF SI4, RP_SFollowEffect, Sizes, Location, Design
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
\* T2M-END R2M1821_PdRPR2PublishSI2


<1>XytsSn4zYtUp.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE P_SI2'
 BY ONLY <1>XytsSn4zYtUp, Sizes, Location, Design, <1>qB39FMP124WaPnid5gQg1, <1>PYLHC770NBI3cbFefRv, <1>AnajBeZS7htcLkTpZ8C91mxOHTa,
    <1>j4RKPg9jdfM4wkcoZMxYW, <1>VPUcNOOGrI8Fc3kpjFXJbyraC, <1>DD3w23uO4qh9 DEF Sizes, Location, Design
\* T2M-END R2M1836_PdRPR2PublishSI2_PExpose


<1> QED BY <1>wJjXJ86ECQ8, <1>XytsSn4zYtUp, <1>f3M8O5Rw9, <1>aUXKOfQZl, <1>iy38VduiM, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PExpose_03_01 SHA d1bf966457618162459047d5c612d91460055059b83adb06d1b11e5a07db7463
USE DEF V21_Inv_K5, V21_Inv_K7, V21_Inv_ReadOwnLanded, V21_Inv_S5, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V22_T_hw, V22_T_rpg
HIDE DEF Part_PExpose_02_02, V21_Inv_K9, V21_Inv_P_SI2, V21_Inv_P_SI5, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNoReg, V21_Inv_S1, V21_Inv_S2, V21_Inv_S6, V21_Inv_SI7, V21_SFollowStatic, V22_SF_Off, V22_T_rg, V22_T_squar, V22_T_xsrcS
THEOREM Part_PExpose_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE (K5)' /\ (P_SI4)' /\ (K2)' /\ (S5)' /\ (K7)' /\ (ReadOwnLanded)' /\ (SendOwnLanded)' /\ (NoEvictUnderRDMA)'
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


           RP_SharedSend == IF ~B2 THEN TRUE ELSE \A x \in Xids : hw[x]="fly" =>
            \A p \in xsrcS[x] \cup xsrcP[x] : sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])

           \* T2M-LOCAL-VISIBILITY

           RP2_PublishInfo == B2 => \A x \in Xids : RP_Posted(x) =>
            xp'[x] \in PInst /\ xr'[x] \in Rq /\ Active(xp'[x],xr'[x]) /\ SSendReady(xp'[x],xr'[x])
            /\ xg'[x]=rg[xp'[x]][xr'[x]] /\ x<nx'


           RP2_UnpostedFrame == \A x \in Xids : ~RP_Posted(x) =>
            UNCHANGED <<xsrc[x],xr[x],xg[x],xp[x],xk[x],xst[x],iv[x],xlt[x]>>


           RP2_PublishNoFly == \A x \in Xids : RP_Posted(x) => hw[x]="none"


           RP2_NewEntryState == \A x \in Xids : RP_Posted(x) =>
            (IF xk'[x]="wr" THEN iv'[x] \in {"reg","posted","failret"} ELSE xst'[x]="posted")

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, RP_NoNewStop, RP_DReadFrame, RP_SharedRead, RPB_T_gen, RPB_T_rt, RPB_T_rp, RPB_T_rd, RPB_T_hp, RPB_T_hd, RPB_T_alive, RPB_T_nfail, RPB_T_torn, RPB_T_kpin, RPB_T_kfly, RPB_T_krs, RPB_T_ph, RPB_T_rg, RPB_T_rpg, RPB_T_rpe, RPB_T_rx, RPB_T_rhit, RPB_T_pst, RPB_T_pr, RPB_T_pgn, RPB_T_plt, RPB_T_ptl, RPB_T_pvis, RPB_T_led, RPB_T_sfly, RPB_T_sled, RPB_T_prefc, RPB_T_pqp, RPB_T_xr, RPB_T_xg, RPB_T_xk, RPB_T_xp, RPB_T_xd, RPB_T_xsrc, RPB_T_xdst, RPB_T_xnt, RPB_T_hw, RPB_T_hok, RPB_T_iv, RPB_T_xst, RPB_T_xlt, RPB_T_nx, RPB_T_net, RPB_T_drep, RPB_T_crep, RPB_T_dsucc, RPB_T_gbad, RPB_Types, RPB_BK8At, RP_SharedSend, RP2_PublishInfo, RP2_UnpostedFrame, RP2_PublishNoFly, RP2_NewEntryState

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
<2> HIDE DEF SFollow, RP_SFollowEffect, V22_FDrop, V22_FEnded, V22_FQuarantine, V22_FE2, V22_FPX, V22_FPin2
<2>private. \A x \in Xids : xsrcP[x]={}
 BY ONLY <1>Ua3eOhQVTzEuP0Q, SMTT(5) DEF SI4
<2>kept. ~V22_FEnded(p) /\ ~V22_FDrop(p)
 BY ONLY <1>Ua3eOhQVTzEuP0Q, SMTT(5) DEF V22_FEnded, V22_FDrop
<2>qed. QED
 BY ONLY <1>Ua3eOhQVTzEuP0Q, <2>private, <2>kept, V22_SF_Status, SMTT(5) DEF V22_SF_Status

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

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>Ih1ajIm6Hk.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpose(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xdst>>
  BY ONLY <1>Ih1ajIm6Hk, Sizes, Location, Design, ZenonT(5) DEF PExpose, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1599_PdRPPP_PdPExposeFrames

\* T2M-SCOPE R2M1600_PdRPPP_PdCell_PExpose_K17

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

<1>tXbUxPjAN.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE Mode = "pull" /\ IsP(i) /\ ph[i][r] = "ready" /\ nx <= MX /\ nx \in Xids
<2> USE ONLY <1>tXbUxPjAN, Sizes, Location, Design
 <2>1. SHJS BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, Sizes, SMTT(5), Location DEF PExpose, SendReady, SHJS, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KbDs6OZlcp.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ hp[r][rg[i][r]] = i /\ hd[r][rg[i][r]] = rpe[i][r]
       /\ led[rpg[i][r]] = {} /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
       /\ rx[i][r] = 0 /\ plt[rpg[i][r]] = ptl[rpg[i][r]] /\ ptl[rpg[i][r]] \in PLens(r,rg[i][r])
       /\ LtOf(i,r) = ptl[rpg[i][r]]
<2> USE ONLY <1>KbDs6OZlcp, Sizes, Location, Design
 <2>1. K8 /\ K1 /\ ph[i][r] = "ready" /\ IsP(i)
  BY <1>tXbUxPjAN, V21_Inv_K1, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. dlzHJ(i,r) BY <2>1, <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>2, <2>1, SMTT(5), Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, SMTT(5), Sizes, Location, Design DEF dlzHJ, K1, Active, OwnedBy, LtOf, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>u0BDx88.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xr'[y] = IF y=nx THEN r ELSE xr[y]
<2> USE ONLY <1>u0BDx88, Sizes, Location, Design
 <2>1. a1R5 BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, a1R5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>avJnorl.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xg'[y] = IF y=nx THEN rg[i][r] ELSE xg[y]
<2> USE ONLY <1>avJnorl, Sizes, Location, Design
 <2>1. CXAy BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, CXAy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fyedmWL.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xk'[y] = IF y=nx THEN "rd" ELSE xk[y]
<2> USE ONLY <1>fyedmWL, Sizes, Location, Design
 <2>1. ok5g BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, ok5g, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>niHtR3B.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xp'[y] = IF y=nx THEN i ELSE xp[y]
<2> USE ONLY <1>niHtR3B, Sizes, Location, Design
 <2>1. vdyX BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, vdyX, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eZXe1VO.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xd'[y] = IF y=nx THEN rpe[i][r] ELSE xd[y]
<2> USE ONLY <1>eZXe1VO, Sizes, Location, Design
 <2>1. C4fb BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, C4fb, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MiGwosYWa.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xsrc'[y] = IF y=nx THEN rpg[i][r] ELSE xsrc[y]
<2> USE ONLY <1>MiGwosYWa, Sizes, Location, Design
 <2>1. Uzgo58 BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, Uzgo58, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vvlPk9uJ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xnt'[y] = IF y=nx THEN NTok(r,rg[i][r]) ELSE xnt[y]
<2> USE ONLY <1>vvlPk9uJ, Sizes, Location, Design
 <2>1. PwcfA BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, PwcfA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RwuD0jsb.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xlt'[y] = IF y=nx THEN LtOf(i,r) ELSE xlt[y]
<2> USE ONLY <1>RwuD0jsb, Sizes, Location, Design
 <2>1. OfQy9 BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, OfQy9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>P4FsINDM.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xst'[y] = IF y=nx THEN "posted" ELSE xst[y]
<2> USE ONLY <1>P4FsINDM, Sizes, Location, Design
 <2>1. PD2ZN BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, PD2ZN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZdV92Gb.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PExpose(i,r)
 PROVE nx' = nx+1
 BY ONLY <1>ZdV92Gb, Sizes, Location, Design, SMTT(5) DEF PExpose, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SrUXhoss.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A q \in Pages : led'[q] = IF q=rpg[i][r] THEN led[q] \cup {nx} ELSE led[q]
<2> USE ONLY <1>SrUXhoss, Sizes, Location, Design
 <2>1. dcfPK BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OIfz603b0.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE /\ \A j \in Inst, u \in Rq :
          /\ ph'[j][u] = IF j=i /\ u=r THEN "exp" ELSE ph[j][u]
          /\ rx'[j][u] = IF j=i /\ u=r THEN nx ELSE rx[j][u]
          /\ (Active(j,u)' <=> Active(j,u))
          /\ (ph'[j][u] \in {"run","ovl"} <=> ph[j][u] \in {"run","ovl"})
       /\ \A j \in DInst, u \in Rq : ph'[j][u] = ph[j][u] /\ rx'[j][u] = rx[j][u]
<2> USE ONLY <1>OIfz603b0, Sizes, Location, Design
 <2>1. AydA /\ QC9Q BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>tXbUxPjAN, Sizes, SMTT(5), Location, Design DEF PExpose, AydA, QC9Q, Active, IsP, Inst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ABoGys6KqVeb5y5s.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE /\ \A q \in Pages : UNCHANGED <<KPinned(q),NHits(q),GrownP(q)>>
       /\ \A j \in Inst, u \in Rq, q \in Pages : UNCHANGED Maps(j,u,q)
<2> USE ONLY <1>ABoGys6KqVeb5y5s, Sizes, Location, Design
 <2>1. UNCHANGED <<kpin,krs,pst,pr,rpg,rhit>> BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. \A q \in Pages :
  {u \in Rq : ph'[Loc(q)][u] \in {"run","ovl"} /\ rhit'[Loc(q)][u] /\ rpg'[Loc(q)][u] = q}
  = {u \in Rq : ph[Loc(q)][u] \in {"run","ovl"} /\ rhit[Loc(q)][u] /\ rpg[Loc(q)][u] = q}
  BY <2>1, <1>OIfz603b0, Location, SMTT(5), Sizes, Design DEF KPages, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>OIfz603b0, SMTT(5), Sizes, Location, Design DEF KPinned, NHits, GrownP, Maps, Sizes, Location, Design
\* T2M-END R2M1603_PdRPPP_PdEExposeFacts


<1>eTAcW7uqoDSN9Gg.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : y < nx =>
   UNCHANGED <<xr[y],xg[y],xk[y],xp[y],xd[y],xsrc[y],xlt[y],xnt[y],xst[y],ExpPage(y),InitPage(y),ExpInst(y),InitInst(y)>>
<2> USE ONLY <1>eTAcW7uqoDSN9Gg, Sizes, Location, Design
 <2>1. UNCHANGED xdst BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED BY <2>1, <1>u0BDx88, <1>avJnorl, <1>fyedmWL, <1>niHtR3B, <1>eZXe1VO, <1>MiGwosYWa, <1>RwuD0jsb, <1>vvlPk9uJ, <1>P4FsINDM, SMTT(5), Sizes, Location, Design DEF ExpPage, InitPage, ExpInst, InitInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xC8kiZQuzgOmmvX.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE /\ xk'[nx] = "rd" /\ xr'[nx] = r /\ xg'[nx] = rg[i][r]
       /\ xp'[nx] = i /\ xd'[nx] = rpe[i][r]
       /\ xsrc'[nx] = rpg[i][r] /\ xdst'[nx] = 0
       /\ iv'[nx] = "none" /\ hw'[nx] = "none" /\ xst'[nx] = "posted"
       /\ xlt'[nx] = ptl[rpg[i][r]]
<2> USE ONLY <1>xC8kiZQuzgOmmvX, Sizes, Location, Design
 <2>1. K2 /\ nx \in Xids BY <1>tXbUxPjAN, V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. xdst[nx] = 0 /\ iv[nx] = "none" /\ hw[nx] = "none"
  BY <2>1, Sizes, SMTT(5), Location, Design DEF K2, Xids, Sizes, Location, Design
 <2>3. UNCHANGED <<xdst,iv,hw>> BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, <1>KbDs6OZlcp, <1>fyedmWL, <1>u0BDx88, <1>avJnorl, <1>niHtR3B, <1>eZXe1VO, <1>MiGwosYWa, <1>RwuD0jsb, <1>P4FsINDM, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>v6lFz9H.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE K2'
<2> USE ONLY <1>v6lFz9H, Sizes, Location, Design
<2>1. K2 /\ K8 /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<gen,hd,hok,hp,hw,iv,xdst>>
 BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>tXbUxPjAN, <1>KbDs6OZlcp, <1>eZXe1VO, <1>avJnorl, <1>fyedmWL, <1>RwuD0jsb, <1>vvlPk9uJ, <1>niHtR3B, <1>u0BDx88, <1>MiGwosYWa, <1>P4FsINDM, <1>ZdV92Gb, Design, Sizes, Location, SMTT(5) DEF Active, ExpInst, ExpPage, InitInst, InitPage, IsD, IsP, K2, K8, OwnedBy, SHJS, Tag, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1610_PdRPPP_PdE_PExpose_K2

\* T2M-SCOPE R2M1611_PdRPPP_PdE_PExpose_K4

<1>F56sj6Z.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE K5'
<2> USE ONLY <1>F56sj6Z, Sizes, Location, Design
 <2>1. K5 /\ K4 /\ dcfPK BY <1>UwwC5LVwQr, V21_Inv_K4, V21_Inv_K5, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. UNCHANGED <<pst,pr,pgn>> BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>SrUXhoss, <1>eTAcW7uqoDSN9Gg, <1>xC8kiZQuzgOmmvX, <1>KbDs6OZlcp, <1>tXbUxPjAN, SMTT(5), Sizes, Location, Design DEF K5, K4, OwnedBy, dcfPK, Sizes, Location, Design
\* T2M-END R2M1612_PdRPPP_PdE_PExpose_K5


<1>hcEaTJ6.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
  PROVE K7'
<2> USE ONLY <1>hcEaTJ6, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (ptl[bb_p] >= 0)' /\ (pst[bb_p] = "free" => (pr[bb_p] = 0 /\ pgn[bb_p] = 0 /\ plt[bb_p] = 0 /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
                               /\ prefc[bb_p] = 0 /\ pqp[bb_p] = 0))' /\ (pst[bb_p] \in {"priv", "drain", "quar"} => (pr[bb_p] \in Rq /\ pgn[bb_p] \in Gens /\ pgn[bb_p] <= gen[pr[bb_p]]))' /\ (pst[bb_p] = "quar" => pqp[bb_p] \in Inst)' /\ (pst[bb_p] # "quar" => pqp[bb_p] = 0)' /\ (pst[bb_p] # "shared" => prefc[bb_p] = 0)' /\ (pst[bb_p] = "shared" => (IsD(Loc(bb_p)) /\ led[bb_p] = {} /\ ptl[bb_p] = PS /\ prefc[bb_p] = NHits(bb_p)))' /\ (pst[bb_p] = "drain" => (led[bb_p] # {} \/ sled[bb_p] # {} \/ KPinned(bb_p)))' /\ (pst[bb_p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(bb_p), r, bb_p))' /\ (pst[bb_p] = "priv" => \/ (Maps(Loc(bb_p), pr[bb_p], bb_p) /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p] /\ ~rhit[Loc(bb_p)][pr[bb_p]])
                              \/ GrownP(bb_p))'
  BY Sizes, Location, Design DEF K7, Sizes, Location, Design
<2>1. K7 /\ Zzz7b(bb_p) BY <1>gfplo, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen,kpin,krs,pgn,plt,pqp,pr,prefc,pst,ptl,rg,rhit,rpg,sfly,sled>> BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (ptl[bb_p] >= 0)'
  BY <2>1, <2>2, <1>KbDs6OZlcp, <1>tXbUxPjAN, <1>SrUXhoss, <1>OIfz603b0, <1>ABoGys6KqVeb5y5s, <1>jc4Pk2myFy, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>4. (pst[bb_p] = "free" => (pr[bb_p] = 0 /\ pgn[bb_p] = 0 /\ plt[bb_p] = 0 /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
                               /\ prefc[bb_p] = 0 /\ pqp[bb_p] = 0))'
  BY <2>1, <2>2, <1>KbDs6OZlcp, <1>tXbUxPjAN, <1>SrUXhoss, <1>OIfz603b0, <1>ABoGys6KqVeb5y5s, <1>jc4Pk2myFy, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>5. (pst[bb_p] \in {"priv", "drain", "quar"} => (pr[bb_p] \in Rq /\ pgn[bb_p] \in Gens /\ pgn[bb_p] <= gen[pr[bb_p]]))'
  BY <2>1, <2>2, <1>KbDs6OZlcp, <1>tXbUxPjAN, <1>SrUXhoss, <1>OIfz603b0, <1>ABoGys6KqVeb5y5s, <1>jc4Pk2myFy, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>6. (pst[bb_p] = "quar" => pqp[bb_p] \in Inst)'
  BY <2>1, <2>2, <1>KbDs6OZlcp, <1>tXbUxPjAN, <1>SrUXhoss, <1>OIfz603b0, <1>ABoGys6KqVeb5y5s, <1>jc4Pk2myFy, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>7. (pst[bb_p] # "quar" => pqp[bb_p] = 0)'
  BY <2>1, <2>2, <1>KbDs6OZlcp, <1>tXbUxPjAN, <1>SrUXhoss, <1>OIfz603b0, <1>ABoGys6KqVeb5y5s, <1>jc4Pk2myFy, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>8. (pst[bb_p] # "shared" => prefc[bb_p] = 0)'
  BY <2>1, <2>2, <1>KbDs6OZlcp, <1>tXbUxPjAN, <1>SrUXhoss, <1>OIfz603b0, <1>ABoGys6KqVeb5y5s, <1>jc4Pk2myFy, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>9. (pst[bb_p] = "shared" => (IsD(Loc(bb_p)) /\ led[bb_p] = {} /\ ptl[bb_p] = PS /\ prefc[bb_p] = NHits(bb_p)))'
  BY <2>1, <2>2, <1>KbDs6OZlcp, <1>tXbUxPjAN, <1>SrUXhoss, <1>OIfz603b0, <1>ABoGys6KqVeb5y5s, <1>jc4Pk2myFy, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>10. (pst[bb_p] = "drain" => (led[bb_p] # {} \/ sled[bb_p] # {} \/ KPinned(bb_p)))'
  BY <2>1, <2>2, <1>KbDs6OZlcp, <1>tXbUxPjAN, <1>SrUXhoss, <1>OIfz603b0, <1>ABoGys6KqVeb5y5s, <1>jc4Pk2myFy, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>11. (pst[bb_p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(bb_p), r, bb_p))'
  BY <2>1, <2>2, <1>KbDs6OZlcp, <1>tXbUxPjAN, <1>SrUXhoss, <1>OIfz603b0, <1>ABoGys6KqVeb5y5s, <1>jc4Pk2myFy, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>12. (pst[bb_p] = "priv" => \/ (Maps(Loc(bb_p), pr[bb_p], bb_p) /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p] /\ ~rhit[Loc(bb_p)][pr[bb_p]])
                              \/ GrownP(bb_p))'
  BY <2>1, <2>2, <1>KbDs6OZlcp, <1>tXbUxPjAN, <1>SrUXhoss, <1>OIfz603b0, <1>ABoGys6KqVeb5y5s, <1>jc4Pk2myFy, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>13. QED
  BY <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, <2>12, Sizes, Location, Design DEF K7, Sizes, Location, Design
\* T2M-END R2M1613_PdRPPP_PdE_PExpose_K7


<1>JFkH13M.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE S5'
<2> USE ONLY <1>JFkH13M, Sizes, Location, Design
<2>1. S5 /\ K2 /\ K3 /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K3, V21_Inv_S5, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<hok,hw,iv,rg,rhit,rpg,xdst>>
 BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>tXbUxPjAN, <1>KbDs6OZlcp, <1>avJnorl, <1>RwuD0jsb, <1>vvlPk9uJ, <1>u0BDx88, <1>P4FsINDM, <1>ZdV92Gb, <1>OIfz603b0, Design, Sizes, Location, SMTT(5) DEF CqeHw, ExpInst, ExpPage, InFl, InitInst, InitPage, K2, K3, S5, SHJS, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1619_PdRPPP_PdE_PExpose_S5

\* T2M-SCOPE R2M1620_PdRPPP_PdE_PExpose_S6

<1>Dt5V5Nki0.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K2'
  BY ONLY <1>Dt5V5Nki0, Sizes, Location, Design, <1>v6lFz9H, V21_Inv_K2 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>u4kbinEaa.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K3'
  BY ONLY <1>u4kbinEaa, Sizes, Location, Design, <1>cWhYtMX, V21_Inv_K3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dMQLjWyhj.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K5'
  BY ONLY <1>dMQLjWyhj, Sizes, Location, Design, <1>F56sj6Z, V21_Inv_K5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uflyWwc4r.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K7'
  BY ONLY <1>uflyWwc4r, Sizes, Location, Design, <1>hcEaTJ6, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UwKjlfd61.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE S5'
  BY ONLY <1>UwKjlfd61, Sizes, Location, Design, <1>JFkH13M, V21_Inv_S5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>w3rSi9XIkrLs7.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE K3'
 BY ONLY <1>w3rSi9XIkrLs7, Sizes, Location, Design, <1>u4kbinEaa DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YmYs2za0y8hVG.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE nx' \in 1..(MX+1)
<2> USE ONLY <1>YmYs2za0y8hVG, Sizes, Location, Design
<2>1. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>YmYs2za0y8hVG, V22_T_nx, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF Xids, EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

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


<1>WInKQmqqKOJdsT.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpose(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xdst>>
  BY ONLY <1>WInKQmqqKOJdsT, Sizes, Location, Design, ZenonT(5) DEF PExpose, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PtRv5Ech1.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE RPB_BK8At(i,r)
  BY ONLY <1>PtRv5Ech1, Sizes, Location, Design DEF K8, RPB_BK8At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q3ZYBIegKOGPJ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE Mode = "pull" /\ IsP(i) /\ ph[i][r] = "ready" /\ nx <= MX /\ nx \in Xids
<2> USE ONLY <1>Q3ZYBIegKOGPJ, Sizes, Location, Design
 <2>1. RPB_T_nx BY <1>IXEagMJyQryQes, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, Sizes, SMTT(5), Location DEF PExpose, SendReady, RPB_T_nx, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kAbiVViPqEF5Dx.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ hp[r][rg[i][r]] = i /\ hd[r][rg[i][r]] = rpe[i][r]
       /\ led[rpg[i][r]] = {} /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
       /\ rx[i][r] = 0 /\ plt[rpg[i][r]] = ptl[rpg[i][r]] /\ ptl[rpg[i][r]] \in PLens(r,rg[i][r])
       /\ LtOf(i,r) = ptl[rpg[i][r]]
<2> USE ONLY <1>kAbiVViPqEF5Dx, Sizes, Location, Design
 <2>1. K8 /\ K1 /\ ph[i][r] = "ready" /\ IsP(i)
  BY <1>Q3ZYBIegKOGPJ, V21_Inv_K1, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. RPB_BK8At(i,r) BY <2>1, <1>PtRv5Ech1, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>2, <2>1, SMTT(5), Sizes, Location, Design DEF RPB_BK8At, Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, SMTT(5), Sizes, Location, Design DEF RPB_BK8At, K1, Active, OwnedBy, LtOf, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>F6iZ9aanOVTNy.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE /\ \A j \in Inst, u \in Rq :
          /\ ph'[j][u] = IF j=i /\ u=r THEN "exp" ELSE ph[j][u]
          /\ rx'[j][u] = IF j=i /\ u=r THEN nx ELSE rx[j][u]
          /\ (Active(j,u)' <=> Active(j,u))
          /\ (ph'[j][u] \in {"run","ovl"} <=> ph[j][u] \in {"run","ovl"})
       /\ \A j \in DInst, u \in Rq : ph'[j][u] = ph[j][u] /\ rx'[j][u] = rx[j][u]
<2> USE ONLY <1>F6iZ9aanOVTNy, Sizes, Location, Design
 <2>1. RPB_T_ph /\ RPB_T_rx BY <1>IXEagMJyQryQes, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>Q3ZYBIegKOGPJ, Sizes, SMTT(5), Location, Design DEF PExpose, RPB_T_ph, RPB_T_rx, Active, IsP, Inst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1831_PdRPBPP_PdEExposeFacts

\* T2M-SCOPE R2M1832_PdRPBPP_PdE_PExpose_ReadOwnLanded
\* T2M-BODY R2M1832_PdRPBPP_PdE_PExpose_ReadOwnLanded
\* T2M-LOCAL-VISIBILITY

<1>njpta3TXKb6l5RXSXXdxTA.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE BaseReadOwnLanded'
<2> USE ONLY <1>njpta3TXKb6l5RXSXXdxTA, Sizes, Location, Design
<2>1. BaseReadOwnLanded
 BY <1>IXEagMJyQryQes, SMTT(5), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, RPB_Types, BaseSafety, ReadOwnLanded, SealOnlyLanded, SendOwnLanded, Sizes, Location, Design
<2>2. UNCHANGED <<hw,pgn,pr,pst,ptl,pvis,rg,rhit,rpg,xdst>>
 BY <1>WInKQmqqKOJdsT, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>Q3ZYBIegKOGPJ, <1>kAbiVViPqEF5Dx, <1>F6iZ9aanOVTNy, Design, Sizes, Location, SMTT(5) DEF InFl, NoWriteInto, BaseReadOwnLanded, Writing, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1832_PdRPBPP_PdE_PExpose_ReadOwnLanded

\* T2M-SCOPE R2M1833_PdRPBPP_PdE_PExpose_SendOwnLanded

<1>XrmgB1IfP8VN9H4WT.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE RP_NoNewStop /\ RP_DReadFrame /\ UNCHANGED xdst
<2> USE ONLY <1>XrmgB1IfP8VN9H4WT, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rpg \in [Inst -> [Rq -> 0..NP]] /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>XrmgB1IfP8VN9H4WT, V22_T_hw, V22_T_ph, V22_T_rpg, SMTT(5)

<2>2. K1 /\ K3 BY V21_Inv_K1, V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_NoNewStop, RP_DReadFrame, DInst, PInst, Inst, NL, IsP, IsD, K1, K3, EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D9tHVbHhPKWRFpQaZR.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE RP_SharedRead'
 BY ONLY <1>D9tHVbHhPKWRFpQaZR, Sizes, Location, Design, <1>XrmgB1IfP8VN9H4WT, <1>PtfM7z6NmcjVW9qw5I DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QF30YBXIMsUzhAwkpqEt3.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE ReadOwnLanded'
 BY ONLY <1>QF30YBXIMsUzhAwkpqEt3, Sizes, Location, Design, <1>njpta3TXKb6l5RXSXXdxTA, <1>D9tHVbHhPKWRFpQaZR DEF ReadOwnLanded, RP_SharedRead, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>M8HwZu9jwGkBjbpUA.        
 ASSUME B2, SFollow
 PROVE \A h \in squar' : h \in squar \/ h[1] \in sentry
<2> USE ONLY <1>M8HwZu9jwGkBjbpUA, Sizes, Location, Design
<2>1. squar'=RP_Q2(0) BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF RP_SFollowEffect, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF RP_Q2, RP_Quarantine, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Cu2thJvelAD2muiXP3.        
 ASSUME PinInv, B2, SFollow, RP2_PublishInfo, NEW x \in Xids, RP_Posted(x)
 PROVE xsrcP'[x]={} /\ (xsrcS'[x]={} \/ xsrcS'[x]={smap[xp'[x]][xr'[x]]})
 /\ \A p \in xsrcS'[x] : p \in SPages /\ spst'[p]="shared" /\ Loc(p)=xp'[x]
       /\ skey'[p]=STok(xr'[x],xg'[x]) /\ sdata'[p] /\ ~swrite'[p]
<2> USE ONLY <1>Cu2thJvelAD2muiXP3, Sizes, Location, Design
<2>1. SI1 /\ SI4 /\ HitIdentity /\ SharedImmutable /\ STypeOK
 BY V21_Inv_HitIdentity, V21_Inv_P_SI1, V21_Inv_P_SI4, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF P_SI1, P_SI4, Sizes, Location, Design
<2>2. RP_SFollowEffect BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xp'[x] \in PInst /\ xr'[x] \in Rq /\ Active(xp'[x],xr'[x]) /\ SSendReady(xp'[x],xr'[x]) /\ xg'[x]=rg[xp'[x]][xr'[x]]
 BY Sizes, Location, Design DEF RP2_PublishInfo, Sizes, Location, Design
<2>4. smap[xp'[x]][xr'[x]]=0 \/ (smap[xp'[x]][xr'[x]] \in SPages /\ spst[smap[xp'[x]][xr'[x]]]="shared")
 BY <2>1, <2>3, Design, SMTT(10), Sizes, Location DEF STypeOK, SSendReady, Sizes, Location, Design
<2>5. xsrcP'[x]={} /\ (xsrcS'[x]={} \/ xsrcS'[x]={smap[xp'[x]][xr'[x]]})
 BY <2>2, <2>4, Sizes, SMTT(10), Location, Design DEF RP_SFollowEffect, RP_SX, RP_PX, RP_Src, SPages, Sizes, Location, Design
<2>55. xsrcS'[x]=IF smap[xp'[x]][xr'[x]] \in SPages /\ spst[smap[xp'[x]][xr'[x]]]="shared" THEN {smap[xp'[x]][xr'[x]]} ELSE {}
 BY <2>2, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_SX, RP_Src, Sizes, Location, Design
<2>6. ASSUME NEW p \in xsrcS'[x]
       PROVE p \in SPages /\ spst'[p]="shared" /\ Loc(p)=xp'[x]
       /\ skey'[p]=STok(xr'[x],xg'[x]) /\ sdata'[p] /\ ~swrite'[p]
 <3>1. p=smap[xp'[x]][xr'[x]] /\ p \in SPages /\ spst[p]="shared"
  BY <2>55, <2>6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. Loc(p)=xp'[x] /\ skey[p]=STok(xr'[x],xg'[x]) /\ sdata[p] /\ ~swrite[p]
  BY <2>1, <2>3, <3>1, Sizes, SMTT(10), Location, Design DEF SI1, HitIdentity, SharedImmutable, SPages, Sizes, Location, Design
 <3>3. QED BY <2>1, <2>2, <3>1, <3>2, <1>Ua3eOhQVTzEuP0Q, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, Sizes, Location, Design
<2>7. QED BY <2>5, <2>6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vbFJMgIprIpe5E6C1dAaNei5q.        
 ASSUME PinInv, B2, SFollow, RP2_PublishInfo
 PROVE \A x \in Xids : xsrcP'[x]={}
<2> USE ONLY <1>vbFJMgIprIpe5E6C1dAaNei5q, Sizes, Location, Design
<2>1. SI4 BY V21_Inv_P_SI4, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. RP_SFollowEffect BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Cu2thJvelAD2muiXP3, SMTT(10), Sizes, Location, Design DEF SI4, RP_SFollowEffect, RP_PX, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>B7gEeXrXbws8yxr3BsZ4k.        
 ASSUME PinInv, B2, SFollow, UNCHANGED hw, NEW x \in Xids, ~RP_Posted(x), SAccess(x)'
 PROVE SAccess(x)
<2> USE ONLY <1>B7gEeXrXbws8yxr3BsZ4k, Sizes, Location, Design
<2>1. RP_SFollowEffect BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A h \in squar' : h \in squar \/ h[1] \in sentry BY <1>M8HwZu9jwGkBjbpUA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF SAccess, RP_SFollowEffect, RP_E2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KEGyjYU5k3BGqj.        
 ASSUME PinInv, SFollow, RP2_PublishInfo, RP2_UnpostedFrame, UNCHANGED hw
 PROVE NoEvictUnderRDMA' /\ RP_SharedSend'
<2> USE ONLY <1>KEGyjYU5k3BGqj, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ SharedImmutable /\ (B2 => SI4) /\ STypeOK
 BY V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI4, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF NoEvictUnderRDMA, RP_SharedSend, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RP_SFollowEffect BY <2>3, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A x \in Xids : xsrcP'[x]={} BY <2>3, <1>vbFJMgIprIpe5E6C1dAaNei5q, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. ASSUME NEW x \in Xids, SAccess(x)', NEW p \in xsrcS'[x]
        PROVE spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x]) /\ sdata'[p] /\ ~swrite'[p]
  <4>1. CASE RP_Posted(x) BY <2>3, <3>3, <4>1, <1>Cu2thJvelAD2muiXP3, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. CASE ~RP_Posted(x)
   <5>1. SAccess(x) BY <2>3, <3>3, <4>2, <1>B7gEeXrXbws8yxr3BsZ4k, Sizes, Location, Design DEF Sizes, Location, Design
   <5>2. xsrcS'[x]=xsrcS[x] /\ xr'[x]=xr[x] /\ xg'[x]=xg[x]
    BY <3>1, <3>3, <4>2, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_SX, RP2_UnpostedFrame, Sizes, Location, Design
   <5>3. p \in SPages /\ spst[p]="shared" /\ skey[p]=STok(xr[x],xg[x]) /\ sdata[p] /\ ~swrite[p]
    BY <2>1, <2>3, <3>3, <5>1, <5>2, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, SharedImmutable, STypeOK, Sizes, Location, Design
   <5>4. QED BY <2>1, <2>3, <3>1, <5>2, <5>3, <1>Ua3eOhQVTzEuP0Q, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, Sizes, Location, Design
  <4>3. QED BY <4>1, <4>2, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY <2>3, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, RP_SharedSend, SAccess, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>R1YtFQoOn5rWe9xZ.        
 ASSUME PinInv, RP2_UnpostedFrame, RP2_PublishNoFly, UNCHANGED <<hw,ptl,sfly>>
 PROVE BaseSendOwnLanded'
<2> USE ONLY <1>R1YtFQoOn5rWe9xZ, Sizes, Location, Design
<2>1. BaseSendOwnLanded BY V21_Inv_SendOwnLanded, Sizes, Location, Design DEF SendOwnLanded, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF BaseSendOwnLanded, RP2_UnpostedFrame, RP2_PublishNoFly, Sizes, Location, Design
\* T2M-END R2M1820_PdRPR2Publish


<1>j4RKPg9jdfM4wkcoZMxYW.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE RP2_PublishInfo /\ RP2_UnpostedFrame /\ RP2_NewEntryState /\ RP2_PublishNoFly /\ UNCHANGED <<hw,ptl,sfly>> /\ nx'>=nx
<2> USE ONLY <1>j4RKPg9jdfM4wkcoZMxYW, Sizes, Location, Design
<2>1. xsrc \in [Xids -> 0..NP] /\ xr \in [Xids -> 0..NR] /\ xg \in [Xids -> 0..MG] /\ xlt \in [Xids -> 0..PS]
 /\ xp \in [Xids -> {0} \cup Inst] /\ xk \in [Xids -> {"none","wr","rd"}]
 /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 /\ iv \in [Xids -> {"none","reg","posted","failret","cqe","nopost"}] /\ nx \in 1..(MX+1)
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>j4RKPg9jdfM4wkcoZMxYW, V22_T_iv, V22_T_nx, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst, SMTT(5)

<2>2. K2 /\ K8 BY V21_Inv_K2, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. i \in PInst /\ Active(i,r) /\ (B2 => SSendReady(i,r)) /\ rpg[i][r] \in Pages
 BY <2>2, Sizes, Design, SMTT(10), Location DEF PExpose, SendReady, IsP, PInst, Inst, NL, Active, K8, Sizes, Location, Design
<2>4. nx \in Xids /\ xsrc[nx]=0 /\ xk[nx]="none" /\ hw[nx]="none"
 BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF PExpose, K2, Xids, Sizes, Location, Design
<2>5. \A x \in Xids : RP_Posted(x) <=> x=nx
 BY <2>1, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF PExpose, RP_Posted, Pages, Sizes, Location, Design
<2>6. RP2_PublishInfo
 BY <2>1, <2>3, <2>4, <2>5, Sizes, SMTT(10), Location, Design DEF RP2_PublishInfo, PExpose, Xids, Sizes, Location, Design
<2>7. RP2_UnpostedFrame
 BY <2>1, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF RP2_UnpostedFrame, PExpose, Sizes, Location, Design
<2>8. RP2_NewEntryState /\ RP2_PublishNoFly /\ UNCHANGED <<hw,ptl,sfly>> /\ nx'>=nx
 BY <2>1, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF RP2_NewEntryState, RP2_PublishNoFly, PExpose, Sizes, Location, Design
<2>9. QED BY <2>6, <2>7, <2>8, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nUD4R8swQSngaqgL0hKwV0hAd.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>nUD4R8swQSngaqgL0hKwV0hAd, Sizes, Location, Design, <1>j4RKPg9jdfM4wkcoZMxYW, <1>KEGyjYU5k3BGqj DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dCUWcCEKGu7fX2A1Aznngc.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE SendOwnLanded'
<2> USE ONLY <1>dCUWcCEKGu7fX2A1Aznngc, Sizes, Location, Design
<2>1. BaseSendOwnLanded' BY <1>j4RKPg9jdfM4wkcoZMxYW, <1>R1YtFQoOn5rWe9xZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RP_SharedSend' BY <1>j4RKPg9jdfM4wkcoZMxYW, <1>KEGyjYU5k3BGqj, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF SendOwnLanded, RP_SharedSend, Sizes, Location, Design
\* T2M-END R2M1835_PdRPR2Publish_PExpose


<1>hWUKLs3aQ14O.        
 ASSUME PinInv, SFollow, RP2_PublishInfo, RP2_UnpostedFrame, RP2_NewEntryState, RP2_PublishNoFly,
        UNCHANGED hw, nx'>=nx, nx' \in 1..(MX+1), K3'
 PROVE P_SI4'
<2> USE ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design
<2>1. (B2 => SI4) /\ STypeOK /\ nx \in 1..(MX+1)
 BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, V21_Inv_P_SI4, V21_Inv_STypeOK, V22_T_nx, SMTT(5) DEF P_SI4, V22_T_nx
<2>2. CASE ~B2 BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>2, <2>2 DEF P_SI4, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RP_SFollowEffect BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <2>3, <1>PKl1lJKpXGVI0yrZ8 DEF Sizes, Location, Design
 <3>2. NoEvictUnderRDMA' BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <1>KEGyjYU5k3BGqj DEF Sizes, Location, Design
 <3>3. \A x \in Xids : xsrcP'[x]={} BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <2>3, <1>vbFJMgIprIpe5E6C1dAaNei5q DEF Sizes, Location, Design
 <3>4. squar \subseteq squar' BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <3>1, SMTT(10) DEF RP_SFollowEffect, RP_Q2, Sizes, Location, Design
 <3>5. \A x \in Xids : xprefixOK'[x]=xprefixOK[x]
  BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <3>1, SMTT(10) DEF RP_SFollowEffect, Sizes, Location, Design
 <3>6. ASSUME NEW x \in Xids
        PROVE /\ xsrcS'[x] \cap xsrcP'[x]={}
              /\ Cardinality(xsrcS'[x] \cup xsrcP'[x])<=1
              /\ xsrcP'[x]={}
              /\ (xsrcS'[x] # {} => x<nx' /\ xsrc'[x] \in Pages)
              /\ \A p \in xsrcS'[x] : Loc(p)=xp'[x]
              /\ (x \in sentry' => x<nx' /\ xsrc'[x] \in Pages /\ (IF xk'[x]="wr" THEN iv'[x] \in {"reg","posted","failret"} ELSE xst'[x]="posted"))
              /\ (hw'[x]="fly" => x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar'))
              /\ (x \in sentry' => \A p \in xsrcS'[x] : spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x]))
              /\ (hw'[x] \in {"issued","stop"} => xprefixOK'[x])
  <4>1. x \in sentry' => \A p \in xsrcS'[x] : spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x])
   BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <3>6, <2>3, <3>2, <3>6, SMTT(10) DEF NoEvictUnderRDMA, SAccess, Sizes, Location, Design
  <4>2. CASE RP_Posted(x)
   <5>1. xsrcS'[x]={} \/ xsrcS'[x]={smap[xp'[x]][xr'[x]]}
       /\ (\A p \in xsrcS'[x] : Loc(p)=xp'[x])
    BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <3>6, <4>2, <2>3, <3>6, <4>2, <1>Cu2thJvelAD2muiXP3 DEF Sizes, Location, Design
   <5>2. Cardinality(xsrcS'[x] \cup xsrcP'[x])<=1
    <6>private. xsrcP'[x]={}
     BY ONLY <3>6, <3>3, SMTT(5)
    <6>union. xsrcS'[x] \cup xsrcP'[x]=xsrcS'[x]
     BY ONLY <6>private, SMTT(5)
    <6>emptyCount. Cardinality({})=0
     BY ONLY FS_EmptySet, SMTT(5)
    <6>singleCount. Cardinality({smap[xp'[x]][xr'[x]]})=1
     BY ONLY FS_Singleton, SMTT(5)
    <6>empty. CASE xsrcS'[x]={}
     BY ONLY <6>empty, <6>union, <6>emptyCount, SMTT(5)
    <6>single. CASE xsrcS'[x]={smap[xp'[x]][xr'[x]]}
     BY ONLY <6>single, <6>union, <6>singleCount, SMTT(5)
    <6>qed. QED BY ONLY <5>1, <6>empty, <6>single, SMTT(5)
   <5>3. x<nx' /\ xsrc'[x] \in Pages /\ hw'[x]="none"
    BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <3>6, <4>2, <2>3, <3>6, <4>2 DEF RP2_PublishInfo, RP_Posted, RP2_PublishNoFly, Sizes, Location, Design
   <5>4. QED BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <3>6, <4>2, <3>3, <3>6, <4>1, <4>2, <5>1, <5>2, <5>3, SMTT(10) DEF RP2_NewEntryState, Sizes, Location, Design
  <4>3. CASE ~RP_Posted(x)
   <5>1. xsrcS'[x]=xsrcS[x] /\ UNCHANGED <<xsrc[x],xr[x],xg[x],xp[x],xk[x],xst[x],iv[x]>>
    BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <3>6, <4>3, <3>1, <3>6, <4>3, SMTT(10) DEF RP_SFollowEffect, RP_SX, RP2_UnpostedFrame, Sizes, Location, Design
   <5>2. x \in sentry' => x \in sentry
    BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <3>6, <4>3, <3>1, <3>6, <4>3, SMTT(10) DEF RP_SFollowEffect, RP_E2, Sizes, Location, Design
   <5>3. hw'[x]="fly" => ~RP_Close(x)
    BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <3>6, <4>3, <3>6, <5>1, SMTT(10) DEF K3, InFl, RP_Close, Sizes, Location, Design
   <5>4. hw'[x]="fly" => x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
    BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <3>6, <4>3, <2>1, <2>3, <3>6 DEF SI4, Sizes, Location, Design
   <5>5. (hw'[x]="fly" /\ x \in sentry /\ ~RP_Quarantine(x)) => x \in sentry'
    BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <3>6, <4>3, <3>1, <3>6, <5>3, SMTT(10) DEF RP_SFollowEffect, RP_E2, Sizes, Location, Design
   <5>6. RP_Quarantine(x) => \A p \in xsrcS[x] : <<x,p>> \in squar'
    BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <3>6, <4>3, <2>3, <3>6, <1>KReYXg7MU3qwoztWhw DEF Sizes, Location, Design
   <5>7. x \in Int /\ nx \in Int /\ nx' \in Int
    BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <3>6, <4>3, <2>1, <3>6, Sizes, SMTT(10) DEF Xids, Sizes, Location, Design
   <5>8. QED BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <3>6, <4>3, <2>1, <2>3, <3>3, <3>4, <3>5, <3>6, <4>1, <5>1, <5>2, <5>3, <5>4, <5>5, <5>6, <5>7, SMTT(10) DEF SI4, Sizes, Location, Design
  <4>4. QED BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <3>6, <4>2, <4>3 DEF Sizes, Location, Design
 <3>7. QED BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>3, <2>3, <3>6 DEF P_SI4, SI4, Sizes, Location, Design
<2>4. QED BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, <2>2, <2>3 DEF Sizes, Location, Design
\* T2M-END R2M1851_PdRPR2PublishSI4


<1>FkIkPAaujtO3.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE P_SI4'
 BY ONLY <1>FkIkPAaujtO3, Sizes, Location, Design, <1>j4RKPg9jdfM4wkcoZMxYW, <1>w3rSi9XIkrLs7, <1>YmYs2za0y8hVG, <1>hWUKLs3aQ14O DEF Sizes, Location, Design
\* T2M-END R2M1852_PdRPR2PublishSI4_PExpose


<1> QED BY <1>dMQLjWyhj, <1>FkIkPAaujtO3, <1>Dt5V5Nki0, <1>UwKjlfd61, <1>uflyWwc4r, <1>QF30YBXIMsUzhAwkpqEt3, <1>dCUWcCEKGu7fX2A1Aznngc, <1>nUD4R8swQSngaqgL0hKwV0hAd, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PExpose_03_02 SHA f98bdb42f7baf7615984a5cde4f8cafe4490dbd97d2cd88922b8444c8a8187a2
USE DEF P_PagePoolsDisjoint, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI5, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_S1, V21_Inv_S2, V21_SFollowOff, V21_SFollowStatic, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rg, V22_T_sfly, V22_T_sled, V22_T_xdst
HIDE DEF Part_PExpose_03_01, V21_Inv_HitIdentity, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_ReadOwnLanded, V21_Inv_S5, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V22_T_iv, V22_T_nx, V22_T_rpg, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_PExpose_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE (SharedLedRef)' /\ (K8)' /\ (KReadIntegrity)' /\ (K12)' /\ (K15)' /\ (NoFreeUnderRead)' /\ (K13)' /\ (K16)' /\ (PrefcMatchesHolders)' /\ (P_SI3)' /\ (QuarNeverMapped)'
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

           UlVxe(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])


           kYyEb(m) == m.t = "hello" => m.fr \in Inst


           BTg7I(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))


           Bxryv(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))


           XTUuY(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])


           Gf8VR(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])


           l7paO(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")


           RPcfz(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)


           G3Uin(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))


           xAvu0j(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))


           BmN6sl4(m) ==
             /\ UlVxe(m)
             /\ kYyEb(m)
             /\ BTg7I(m)
             /\ Bxryv(m)
             /\ XTUuY(m)
             /\ Gf8VR(m)
             /\ l7paO(m)
             /\ RPcfz(m)
             /\ G3Uin(m)
             /\ xAvu0j(m)

           \* T2M-LOCAL-VISIBILITY

           PKE_PExpose(i,r) ==
            /\ Mode="pull" /\ i \in PInst /\ ph[i][r]="ready" /\ nx<=MX
            /\ nx'=nx+1
            /\ xr'=[xr EXCEPT ![nx]=r] /\ xg'=[xg EXCEPT ![nx]=rg[i][r]]
            /\ xk'=[xk EXCEPT ![nx]="rd"] /\ xsrc'=[xsrc EXCEPT ![nx]=rpg[i][r]]
            /\ xlt'=[xlt EXCEPT ![nx]=LtOf(i,r)]
            /\ net'=net \cup {Msg("sinfo",i,rpe[i][r],r,rg[i][r],nx,rpg[i][r],LtOf(i,r),FALSE)}
            /\ UNCHANGED <<gen,hp,hd,xdst,iv,hw,hok,drep,dsucc>>

           \* T2M-LOCAL-VISIBILITY

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

           RP_T_rpgS == rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)


           RP_T_xsrcS == xsrcS \in [Xids -> SUBSET SPages]


           RP_T_sentry == sentry \in SUBSET Xids


           RP_T_squar == squar \in SUBSET (Xids \X SPages)


           RP_RefDelta == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)
            +SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

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


<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, UlVxe, kYyEb, BTg7I, Bxryv, XTUuY, Gf8VR, l7paO, RPcfz, G3Uin, xAvu0j, BmN6sl4, PKE_PExpose, RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, RP_PinFacts, RP_PinKeep, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, RP_PrivateOwnersStay, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FdYjaJP.         (\A m \in net' : BmN6sl4(m)') => K12'
  BY ONLY ZenonT(5) DEF K12, BmN6sl4, UlVxe, kYyEb, BTg7I, Bxryv, XTUuY, Gf8VR, l7paO, RPcfz, G3Uin, xAvu0j
\* T2M-END R2M0439_PdPK12Support


<1>wGqOyCF8w5c9JD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PExpose(i,r)
 PROVE PKE_PExpose(i,r)
 BY ONLY <1>wGqOyCF8w5c9JD, Sizes, Location, Design, Design, Sizes, SMTT(10) DEF PKE_PExpose, IsP, LtOf, Msg, PExpose, SendReady, ghV, instV, kV, rtV, Inst, NL, PInst, DInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LhkBByvTkl.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), NEW m \in net'
 PROVE UlVxe(m)'
<2> USE ONLY <1>LhkBByvTkl, Sizes, Location, Design
<2>1. K12 /\ K8 /\ T_nx /\ T_xr /\ T_xg /\ T_gen
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PExpose(i,r)
 BY <1>wGqOyCF8w5c9JD, Sizes, Location, Design DEF Sizes, Location, Design
<2>genframe. gen'=gen
 BY ONLY <2>2, ZenonT(5) DEF PKE_PExpose
<2>kg. \A a \in Inst, b \in Rq : ph[a][b] # "none" => rg[a][b] \in Gens /\ rg[a][b]<=gen[b]
 BY ONLY <2>1, ZenonT(5) DEF K8
<2>phase. ph[i][r] # "none"
 BY ONLY <2>2, SMTT(5) DEF PKE_PExpose, Active
<2>rg. rg[i][r] \in Gens /\ rg[i][r]<=gen[r]
 BY ONLY <1>LhkBByvTkl, <2>kg, <2>phase, SMTT(5)
<2>old. CASE m \in net
 <3>was. UlVxe(m)
  BY ONLY <1>LhkBByvTkl, <2>1, <2>old, SMTT(5) DEF K12, UlVxe
 <3>qed. QED BY ONLY <2>genframe, <3>was, SMTT(5) DEF UlVxe
<2>new. CASE m \notin net
 <3>fields. m.r=r /\ m.g=rg[i][r]
  BY ONLY <1>LhkBByvTkl, <2>2, <2>new, SMTT(5) DEF PKE_PExpose, Msg
 <3>qed. QED BY ONLY <1>LhkBByvTkl, <2>rg, <2>genframe, <3>fields, SMTT(5) DEF UlVxe
<2>qed. QED BY ONLY <2>old, <2>new, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>Oe4O8fSNAW.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), NEW m \in net'
 PROVE kYyEb(m)'
<2> HIDE DEF PExpose, kYyEb, K12
<2>oldInv. K12
 BY ONLY <1>Oe4O8fSNAW, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. net'=net \cup {Msg("sinfo",i,rpe[i][r],r,rg[i][r],nx,rpg[i][r],LtOf(i,r),FALSE)}
 BY ONLY <1>Oe4O8fSNAW, ZenonT(5) DEF PExpose
<2>old. CASE m \in net
 BY ONLY <2>old, <2>oldInv, SMTT(5) DEF K12, kYyEb
<2>new. CASE m \notin net
 BY ONLY <1>Oe4O8fSNAW, <2>new, <2>effect, SMTT(5) DEF kYyEb, Msg
<2>qed. QED BY ONLY <2>old, <2>new, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>wqNFTo8Wjz.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), NEW m \in net'
 PROVE BTg7I(m)'
<2> USE ONLY <1>wqNFTo8Wjz, Sizes, Location, Design
<2>1. K12
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PExpose(i,r)
 BY <1>wGqOyCF8w5c9JD, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, Design, Sizes, Location, SMTT(10) DEF K12, PKE_PExpose, BTg7I, Msg, Active, IsP, IsD, CqeHw, Torn, NewGen, GenOK, Bump, LtOf, NTok, InitPage, ExpPage, InitInst, ExpInst, OwnedBy, InFl, Xids, Gens, PInst, DInst, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ap1IUWAy2Z.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), NEW m \in net'
 PROVE Bxryv(m)'
<2> USE ONLY <1>Ap1IUWAy2Z, Sizes, Location, Design
<2>1. K12 /\ T_nx /\ T_net /\ T_xr /\ T_xg /\ T_xdst
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PExpose(i,r)
 BY <1>wGqOyCF8w5c9JD, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, Design, Sizes, Location, SMTT(10) DEF K12, T_nx, T_net, T_xr, T_xg, T_xdst, PKE_PExpose, Bxryv, Msg, Active, IsP, IsD, CqeHw, Torn, NewGen, GenOK, Bump, LtOf, NTok, InitPage, ExpPage, InitInst, ExpInst, OwnedBy, InFl, Xids, Gens, PInst, DInst, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gU2lnzsjHh.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), NEW m \in net'
 PROVE XTUuY(m)'
<2> USE ONLY <1>gU2lnzsjHh, Sizes, Location, Design
<2>1. K12 /\ MsgXDomain /\ K8 /\ T_nx /\ T_net /\ T_xr /\ T_xg /\ T_xsrc /\ T_xlt
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_K8, V21_Inv_MsgXDomain, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PExpose(i,r)
 BY <1>wGqOyCF8w5c9JD, Sizes, Location, Design DEF Sizes, Location, Design
<2>static. UNCHANGED <<hp,hd>> /\ Mode="pull" /\ nx'=nx+1
 BY ONLY <2>2, ZenonT(5) DEF PKE_PExpose
<2>route. \A a \in Inst,b \in Rq : ph[a][b] # "none" /\ IsP(a) => hp[b][rg[a][b]]=a /\ rpe[a][b]=hd[b][rg[a][b]]
 <3>at. ASSUME NEW a \in Inst, NEW b \in Rq, ph[a][b] # "none", IsP(a)
         PROVE hp[b][rg[a][b]]=a /\ rpe[a][b]=hd[b][rg[a][b]]
  BY ONLY <2>1, <3>at, SMTT(5) DEF K8
 <3>qed. QED BY ONLY <3>at, SMTT(5)
<2>nx. nx \in Xids /\ nx \in Int
 BY ONLY <2>1, <2>2, Sizes, SMTT(5) DEF PKE_PExpose, T_nx, Xids, Sizes
<2>old. CASE m \in net /\ m.t="sinfo"
 <3>was. Mode="pull" /\ m.x \in Xids /\ m.x<nx /\ xr[m.x]=m.r /\ xg[m.x]=m.g /\ xsrc[m.x]=m.pg /\ xlt[m.x]=m.pe /\ m.fr=hp[m.r][m.g] /\ m.to=hd[m.r][m.g]
  BY ONLY <1>gU2lnzsjHh, <2>old, <2>1, SMTT(5) DEF K12, MsgXDomain
 <3>index. m.x \in Int /\ m.x # nx
  BY ONLY <2>nx, <3>was, SMTT(5) DEF Xids
 <3>fields. xr'[m.x]=xr[m.x] /\ xg'[m.x]=xg[m.x] /\ xsrc'[m.x]=xsrc[m.x] /\ xlt'[m.x]=xlt[m.x]
  BY ONLY <2>1, <2>2, <3>was, <3>index, SMTT(5) DEF PKE_PExpose, T_xr, T_xg, T_xsrc, T_xlt
 <3>bound. m.x<nx'
  BY ONLY <2>nx, <2>static, <3>was, <3>index, SMTT(5)
 <3>qed. QED BY ONLY <2>static, <3>was, <3>fields, <3>bound, SMTT(5) DEF XTUuY
<2>new. CASE m \notin net /\ m.t="sinfo"
 <3>msg. m.r=r /\ m.g=rg[i][r] /\ m.x=nx /\ m.pg=rpg[i][r] /\ m.pe=LtOf(i,r) /\ m.fr=i /\ m.to=rpe[i][r]
  BY ONLY <1>gU2lnzsjHh, <2>2, <2>new, SMTT(5) DEF PKE_PExpose, Msg
 <3>router. hp[r][rg[i][r]]=i /\ rpe[i][r]=hd[r][rg[i][r]]
  BY ONLY <1>gU2lnzsjHh, <2>2, <2>route, Sizes, SMTT(5) DEF PKE_PExpose, IsP, PInst, Sizes
 <3>fields. xr'[nx]=r /\ xg'[nx]=rg[i][r] /\ xsrc'[nx]=rpg[i][r] /\ xlt'[nx]=LtOf(i,r)
  BY ONLY <2>1, <2>2, <2>nx, SMTT(5) DEF PKE_PExpose, T_xr, T_xg, T_xsrc, T_xlt
 <3>bound. nx<nx'
  BY ONLY <2>nx, <2>static, SMTT(5)
 <3>qed. QED BY ONLY <2>static, <3>msg, <3>router, <3>fields, <3>bound, SMTT(5) DEF XTUuY
<2>other. CASE m.t # "sinfo"
 BY ONLY <2>other, SMTT(5) DEF XTUuY
<2>qed. QED BY ONLY <2>old, <2>new, <2>other, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>uCptCvxFv4.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), NEW m \in net'
 PROVE Gf8VR(m)'
<2> HIDE DEF PExpose, K12, Gf8VR, CoreTypeOK
<2>old. K12
 BY ONLY <1>uCptCvxFv4, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>mode. Mode="pull"
 BY ONLY <1>uCptCvxFv4, ZenonT(5) DEF PExpose
<2>oldtags. \A msg \in net : msg.t # "notice"
 BY ONLY <2>old, <2>mode, SMTT(5) DEF K12
<2>net_effect. \A msg \in net' : msg \in net \/ msg.t="sinfo"
 BY ONLY <1>uCptCvxFv4, SMTT(5) DEF PExpose, Msg
<2>qed. QED BY ONLY <1>uCptCvxFv4, <2>oldtags, <2>net_effect, SMTT(5) DEF Gf8VR

\* T2M-LOCAL-VISIBILITY

<1>WsIb1mdhUJ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), NEW m \in net'
 PROVE l7paO(m)'
<2> USE ONLY <1>WsIb1mdhUJ, Sizes, Location, Design
<2>1. K12 /\ MsgXDomain /\ T_nx /\ T_iv /\ T_xr /\ T_xg
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PExpose(i,r)
 BY <1>wGqOyCF8w5c9JD, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, Design, Sizes, Location, SMTT(10) DEF K12, MsgXDomain, T_nx, T_iv, T_xr, T_xg, PKE_PExpose, l7paO, Msg, Active, IsP, IsD, CqeHw, Torn, NewGen, GenOK, Bump, LtOf, NTok, InitPage, ExpPage, InitInst, ExpInst, OwnedBy, InFl, Xids, Gens, PInst, DInst, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>q3RyHy96Nf.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), NEW m \in net'
 PROVE RPcfz(m)'
<2> USE ONLY <1>q3RyHy96Nf, Sizes, Location, Design
<2>1. K12 /\ MsgXDomain /\ T_nx /\ T_xr /\ T_xg
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PExpose(i,r)
 BY <1>wGqOyCF8w5c9JD, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, Design, Sizes, Location, SMTT(10) DEF K12, MsgXDomain, T_nx, T_xr, T_xg, PKE_PExpose, RPcfz, Msg, Active, IsP, IsD, CqeHw, Torn, NewGen, GenOK, Bump, LtOf, NTok, InitPage, ExpPage, InitInst, ExpInst, OwnedBy, InFl, Xids, Gens, PInst, DInst, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sQaLmMMihq.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), NEW m \in net'
 PROVE G3Uin(m)'
<2> USE ONLY <1>sQaLmMMihq, Sizes, Location, Design
<2>1. K12 /\ MsgXDomain /\ T_nx /\ T_iv /\ T_hw /\ T_hok /\ T_xr /\ T_xg /\ T_xk
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PExpose(i,r)
 BY <1>wGqOyCF8w5c9JD, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, Design, Sizes, Location, SMTT(10) DEF K12, MsgXDomain, T_nx, T_iv, T_hw, T_hok, T_xr, T_xg, T_xk, PKE_PExpose, G3Uin, Msg, Active, IsP, IsD, CqeHw, Torn, NewGen, GenOK, Bump, LtOf, NTok, InitPage, ExpPage, InitInst, ExpInst, OwnedBy, InFl, Xids, Gens, PInst, DInst, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MaupK2pNry0.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), NEW m \in net'
 PROVE xAvu0j(m)'
<2> USE ONLY <1>MaupK2pNry0, Sizes, Location, Design
<2>1. K12 /\ T_drep
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PExpose(i,r)
 BY <1>wGqOyCF8w5c9JD, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, Design, Sizes, Location, SMTT(10) DEF K12, T_drep, PKE_PExpose, xAvu0j, Msg, Active, IsP, IsD, CqeHw, Torn, NewGen, GenOK, Bump, LtOf, NTok, InitPage, ExpPage, InitInst, ExpInst, OwnedBy, InFl, Xids, Gens, PInst, DInst, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TyvUJZJSjx.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE K12'
<2> USE ONLY <1>TyvUJZJSjx, Sizes, Location, Design
<2>1. ASSUME NEW m \in net' PROVE BmN6sl4(m)'
  BY <1>LhkBByvTkl, <1>Oe4O8fSNAW, <1>wqNFTo8Wjz, <1>Ap1IUWAy2Z, <1>gU2lnzsjHh, <1>uCptCvxFv4, <1>WsIb1mdhUJ, <1>q3RyHy96Nf, <1>sQaLmMMihq, <1>MaupK2pNry0, Sizes, Location, Design DEF BmN6sl4, Sizes, Location, Design
<2>2. QED BY <2>1, <1>FdYjaJP, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0446_PdPK12_PExpose


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


<1>uA3WqSbIQGcGz0.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>uA3WqSbIQGcGz0, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Yt052rP5iXn.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE P_SI3'
 BY ONLY <1>Yt052rP5iXn, Sizes, Location, Design, <1>uA3WqSbIQGcGz0, <1>uWXN2TjAdAz DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JdGfFkSIKegng0ohd6etvN7E5i2.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>JdGfFkSIKegng0ohd6etvN7E5i2, Sizes, Location, Design, <1>AnajBeZS7htcLkTpZ8C91mxOHTa DEF Sizes, Location, Design

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


<1>tsApevUcsifdGgxDEV8Q.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE SharedLedRef'
 BY ONLY <1>tsApevUcsifdGgxDEV8Q, Sizes, Location, Design, <1>uA3WqSbIQGcGz0, <1>xOtqg6YRsioevxRntvd4 DEF Sizes, Location, Design

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


<1>XY9h7Q9lrABzQx7.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow, NEW q \in Pages, KPinned(q)
 PROVE RP_PinKeep(q)
<2> USE ONLY <1>XY9h7Q9lrABzQx7, Sizes, Location, Design
<2>1. RP_PinFacts(q) BY <1>sTGmGejCTusB, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RP_PageTypes BY <1>dlRLZLJP8YIdC37, Sizes, Location, Design DEF Sizes, Location, Design
<2>25. K8 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <2>25, Design, Sizes, SMTT(10), Location DEF RP_PinKeep, RP_PinFacts, RP_PageTypes, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, AfterEv, EvidenceAt, GiveUpTo, GiveUpToN, PEnd, PExpose, PageTo, PinBlocks, SendReady, ghV, instV, kV, recV, rtV, xV, KPinned, IsP, IsD, NoWriteInto, Writing, InFl, K8, Active, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kDJidVXkyu5HBL6pn1r.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs,kfly,xdst>>
 BY ONLY <1>kDJidVXkyu5HBL6pn1r, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, GiveUpTo, GiveUpToN, PEnd, PExpose, PageTo, PinBlocks, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pYEkxNAC9r60Hs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>pYEkxNAC9r60Hs, Sizes, Location, Design
<2>1. \A q \in Pages : KPinned(q) => RP_PinKeep(q)
 BY <1>XY9h7Q9lrABzQx7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,kfly,xdst>> BY <1>kDJidVXkyu5HBL6pn1r, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>pYEkxNAC9r60Hs, <2>2, V22_T_xdst, SMTT(5)

<2>4. QED BY <2>1, <2>2, <2>3, <1>VtlCqCAE0X2qQ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gktKtaaMjPT.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE K15'
 BY ONLY <1>gktKtaaMjPT, Sizes, Location, Design, <1>pYEkxNAC9r60Hs DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eEWprfATlbra6Oghfb8inwk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE NoFreeUnderRead'
 BY ONLY <1>eEWprfATlbra6Oghfb8inwk, Sizes, Location, Design, <1>pYEkxNAC9r60Hs DEF Sizes, Location, Design
\* T2M-END R2M1450_PdRPKernel_PExpose


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


<1>xmCyItXpLCHHrG5YKyOmRLiCg.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE B2 => RP_PrivateOwnersStay
<2> USE ONLY <1>xmCyItXpLCHHrG5YKyOmRLiCg, Sizes, Location, Design
<2>1. B2 => SI2 /\ SI5 BY V21_Inv_P_SI2, V21_Inv_P_SI5, Sizes, Location, Design DEF P_SI2, P_SI5, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>xmCyItXpLCHHrG5YKyOmRLiCg, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, Location, SMTT(10) DEF RP_PrivateOwnersStay, SI2, SI5, Active, PInst, Inst, NL, EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aZPdj29T39Zj6grJoinrjZ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>aZPdj29T39Zj6grJoinrjZ, Sizes, Location, Design
<2>1. BaseKReadIntegrity' BY <1>pYEkxNAC9r60Hs, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. SMapIntegrity'
 <3>1. CASE ~B2 BY <3>1, Sizes, Location, Design DEF SMapIntegrity, Sizes, Location, Design
 <3>2. CASE B2 BY <3>2, <1>xmCyItXpLCHHrG5YKyOmRLiCg, <1>nwtTavMq8af03RrXUlAK6g, <1>DsbKtMfk5TGSpQKzvTWF, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <3>1, <3>2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M1469_PdRPMap_PExpose


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>Ih1ajIm6Hk.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpose(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xdst>>
  BY ONLY <1>Ih1ajIm6Hk, Sizes, Location, Design, ZenonT(5) DEF PExpose, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1599_PdRPPP_PdPExposeFrames

\* T2M-SCOPE R2M1600_PdRPPP_PdCell_PExpose_K17

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

<1>jc4Pk2myFy.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst
  BY ONLY <1>jc4Pk2myFy, Sizes, Location, Design, Location, SMT DEF KPages, Sizes, Location, Design

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


<1>tXbUxPjAN.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE Mode = "pull" /\ IsP(i) /\ ph[i][r] = "ready" /\ nx <= MX /\ nx \in Xids
<2> USE ONLY <1>tXbUxPjAN, Sizes, Location, Design
 <2>1. SHJS BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, Sizes, SMTT(5), Location DEF PExpose, SendReady, SHJS, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KbDs6OZlcp.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ hp[r][rg[i][r]] = i /\ hd[r][rg[i][r]] = rpe[i][r]
       /\ led[rpg[i][r]] = {} /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
       /\ rx[i][r] = 0 /\ plt[rpg[i][r]] = ptl[rpg[i][r]] /\ ptl[rpg[i][r]] \in PLens(r,rg[i][r])
       /\ LtOf(i,r) = ptl[rpg[i][r]]
<2> USE ONLY <1>KbDs6OZlcp, Sizes, Location, Design
 <2>1. K8 /\ K1 /\ ph[i][r] = "ready" /\ IsP(i)
  BY <1>tXbUxPjAN, V21_Inv_K1, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. dlzHJ(i,r) BY <2>1, <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>2, <2>1, SMTT(5), Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, SMTT(5), Sizes, Location, Design DEF dlzHJ, K1, Active, OwnedBy, LtOf, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>u0BDx88.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xr'[y] = IF y=nx THEN r ELSE xr[y]
<2> USE ONLY <1>u0BDx88, Sizes, Location, Design
 <2>1. a1R5 BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, a1R5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>avJnorl.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xg'[y] = IF y=nx THEN rg[i][r] ELSE xg[y]
<2> USE ONLY <1>avJnorl, Sizes, Location, Design
 <2>1. CXAy BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, CXAy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MiGwosYWa.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xsrc'[y] = IF y=nx THEN rpg[i][r] ELSE xsrc[y]
<2> USE ONLY <1>MiGwosYWa, Sizes, Location, Design
 <2>1. Uzgo58 BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, Uzgo58, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RwuD0jsb.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xlt'[y] = IF y=nx THEN LtOf(i,r) ELSE xlt[y]
<2> USE ONLY <1>RwuD0jsb, Sizes, Location, Design
 <2>1. OfQy9 BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, OfQy9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZdV92Gb.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PExpose(i,r)
 PROVE nx' = nx+1
 BY ONLY <1>ZdV92Gb, Sizes, Location, Design, SMTT(5) DEF PExpose, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SrUXhoss.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A q \in Pages : led'[q] = IF q=rpg[i][r] THEN led[q] \cup {nx} ELSE led[q]
<2> USE ONLY <1>SrUXhoss, Sizes, Location, Design
 <2>1. dcfPK BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OIfz603b0.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE /\ \A j \in Inst, u \in Rq :
          /\ ph'[j][u] = IF j=i /\ u=r THEN "exp" ELSE ph[j][u]
          /\ rx'[j][u] = IF j=i /\ u=r THEN nx ELSE rx[j][u]
          /\ (Active(j,u)' <=> Active(j,u))
          /\ (ph'[j][u] \in {"run","ovl"} <=> ph[j][u] \in {"run","ovl"})
       /\ \A j \in DInst, u \in Rq : ph'[j][u] = ph[j][u] /\ rx'[j][u] = rx[j][u]
<2> USE ONLY <1>OIfz603b0, Sizes, Location, Design
 <2>1. AydA /\ QC9Q BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>tXbUxPjAN, Sizes, SMTT(5), Location, Design DEF PExpose, AydA, QC9Q, Active, IsP, Inst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ABoGys6KqVeb5y5s.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE /\ \A q \in Pages : UNCHANGED <<KPinned(q),NHits(q),GrownP(q)>>
       /\ \A j \in Inst, u \in Rq, q \in Pages : UNCHANGED Maps(j,u,q)
<2> USE ONLY <1>ABoGys6KqVeb5y5s, Sizes, Location, Design
 <2>1. UNCHANGED <<kpin,krs,pst,pr,rpg,rhit>> BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. \A q \in Pages :
  {u \in Rq : ph'[Loc(q)][u] \in {"run","ovl"} /\ rhit'[Loc(q)][u] /\ rpg'[Loc(q)][u] = q}
  = {u \in Rq : ph[Loc(q)][u] \in {"run","ovl"} /\ rhit[Loc(q)][u] /\ rpg[Loc(q)][u] = q}
  BY <2>1, <1>OIfz603b0, Location, SMTT(5), Sizes, Design DEF KPages, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>OIfz603b0, SMTT(5), Sizes, Location, Design DEF KPinned, NHits, GrownP, Maps, Sizes, Location, Design
\* T2M-END R2M1603_PdRPPP_PdEExposeFacts


<1>oz4BGxpIU.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
  PROVE \A x \in Xids : x < nx => xr[x] # r \/ xg[x] # rg[i][r]
<2> USE ONLY <1>oz4BGxpIU, Sizes, Location, Design
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
<2>5. QED BY <2>4, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1604_PdRPPP_PdEExposeFresh


<1>FqDCj2wrwD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A q \in Pages : IsD(Loc(q)) => led'[q] = led[q]
 BY ONLY <1>FqDCj2wrwD, Sizes, Location, Design, <1>tXbUxPjAN, <1>KbDs6OZlcp, <1>SrUXhoss, Sizes, SMTT(5) DEF IsP, IsD, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1605_PdRPPP_PdEExposeTransfers

\* T2M-SCOPE R2M1606_PdRPPP_PdE_PExpose_K10
\* T2M-BODY R2M1606_PdRPPP_PdE_PExpose_K10
\* T2M-LOCAL-VISIBILITY

<1>hWAUoaxW.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE K13'
<2> USE ONLY <1>hWAUoaxW, Sizes, Location, Design
<2>1. K13 /\ K1
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K13, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<crep,drep,dsucc,gbad,hd,rg>>
 BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>xbWa623J, <1>fem, <1>ho2qVzp0UDI9Dx, <1>oz4BGxpIU, <1>tXbUxPjAN, <1>KbDs6OZlcp, <1>OIfz603b0, Design, Sizes, Location, SMTT(5) DEF K1, K13, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1608_PdRPPP_PdE_PExpose_K13

\* T2M-SCOPE R2M1609_PdRPPP_PdE_PExpose_K16

<1>coHSaphU.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE K16'
<2> USE ONLY <1>coHSaphU, Sizes, Location, Design
 <2>1. K16 BY V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. UNCHANGED <<hw,xdst,pst,pr,pgn,plt,ptl,rg,rpg,sfly,sled>> BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. SUFFICES ASSUME NEW q \in Pages, GrownP(q)'
  PROVE /\ ph'[Loc(q)][pr'[q]] \in {"run","ovl"} /\ rg'[Loc(q)][pr'[q]]=pgn'[q]
        /\ led'[q]={} /\ sled'[q]={} /\ sfly'[q]={}
        /\ plt'[q]=ptl'[q] /\ ptl'[q] \in {0,1}
        /\ NoWriteInto(q)'
  BY SMTT(5), Sizes, Location, Design DEF K16, Sizes, Location, Design
 <2>4. GrownP(q) /\ Loc(q) \in Inst /\ pr[q] \in Rq /\ IsD(Loc(q))
  BY <2>3, <1>ABoGys6KqVeb5y5s, <1>jc4Pk2myFy, SMTT(5), Sizes, Location, Design DEF GrownP, Sizes, Location, Design
 <2>5. QED BY <2>1, <2>2, <2>3, <2>4, <1>FqDCj2wrwD, <1>OIfz603b0, SMTT(5), Sizes, Location, Design DEF K16, NoWriteInto, Writing, InFl, Sizes, Location, Design
\* T2M-END R2M1609_PdRPPP_PdE_PExpose_K16

\* T2M-SCOPE R2M1610_PdRPPP_PdE_PExpose_K2

<1>pvVY0Wu.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE K8'
<2> USE ONLY <1>pvVY0Wu, Sizes, Location, Design
<2>1. K8 /\ K2 /\ S1 /\ dcfPK /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K8, V21_Inv_S1, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<gen,hd,hp,iv,pgn,plt,pr,pst,ptl,rg,rhit,rpe,rpg,sfly,sled>>
 BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>xbWa623J, <1>fem, <1>ho2qVzp0UDI9Dx, <1>oz4BGxpIU, <1>tXbUxPjAN, <1>KbDs6OZlcp, <1>avJnorl, <1>RwuD0jsb, <1>u0BDx88, <1>MiGwosYWa, <1>ZdV92Gb, <1>SrUXhoss, <1>OIfz603b0, Design, Sizes, Location, SMTT(5) DEF Active, ExpInst, ExpPage, InitInst, InitPage, IsD, IsP, K2, K8, OwnedBy, S1, dcfPK, SHJS, Tag, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1614_PdRPPP_PdE_PExpose_K8

\* T2M-SCOPE R2M1615_PdRPPP_PdE_PExpose_K9

<1>KagAGMfkbv3OXCUkTCcH.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE QuarNeverMapped'
<2> USE ONLY <1>KagAGMfkbv3OXCUkTCcH, Sizes, Location, Design
<2>1. QuarNeverMapped
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_KStruct, V21_Inv_QuarNeverMapped, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<pst,rpg>>
 BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>tXbUxPjAN, <1>KbDs6OZlcp, <1>OIfz603b0, Design, Sizes, Location, SMTT(5) DEF Active, QuarNeverMapped, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1616_PdRPPP_PdE_PExpose_QuarNeverMapped

\* T2M-SCOPE R2M1617_PdRPPP_PdE_PExpose_QuarNoReg

<1>Gpx5xQPG0.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K8'
  BY ONLY <1>Gpx5xQPG0, Sizes, Location, Design, <1>pvVY0Wu, V21_Inv_K8 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SEiZ803LOh.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K13'
  BY ONLY <1>SEiZ803LOh, Sizes, Location, Design, <1>hWAUoaxW, V21_Inv_K13 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>I7fiVxmRhB.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K16'
  BY ONLY <1>I7fiVxmRhB, Sizes, Location, Design, <1>coHSaphU, V21_Inv_K16 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QEUOKTPkaXrQHg9CIad4wO.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>QEUOKTPkaXrQHg9CIad4wO, Sizes, Location, Design, <1>KagAGMfkbv3OXCUkTCcH, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>tsApevUcsifdGgxDEV8Q, <1>Gpx5xQPG0, <1>aZPdj29T39Zj6grJoinrjZ, <1>TyvUJZJSjx, <1>gktKtaaMjPT, <1>eEWprfATlbra6Oghfb8inwk, <1>SEiZ803LOh, <1>I7fiVxmRhB, <1>JdGfFkSIKegng0ohd6etvN7E5i2, <1>Yt052rP5iXn, <1>QEUOKTPkaXrQHg9CIad4wO, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF P_PagePoolsDisjoint, Part_PExpose_03_02, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K2, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_S1, V21_Inv_S2, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rg, V22_T_sfly, V22_T_sled, V22_T_xdst
====
