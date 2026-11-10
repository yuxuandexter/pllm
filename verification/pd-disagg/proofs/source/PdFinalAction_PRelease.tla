---- MODULE PdFinalAction_PRelease ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_d3dd8b4090431094, PdFinalAuxType_5511189d22238a64, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PRelease_01

\* Complete original body PdFinalPart_PRelease_03_02 SHA 9e941337b12dc63c2ba77e5014f83d5e82e11ceb5a78a3a6ae819b6ef50c0bc5
HIDE DEF AuxType_5511189d22238a64, AuxType_d3dd8b4090431094, ExactTypeBridge, Group_PRelease_01, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_PRelease_02_01, Part_PRelease_02_02, Part_PRelease_03_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K5, V21_Inv_K6, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_PRelease_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE (SI7)' /\ (P_SI2)' /\ (SendOwnLanded)' /\ (NoEvictUnderRDMA)' /\ (HitIdentity)'
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

           RP_RegPrelude == \A x \in Xids : iv'[x]="reg" =>
            xk[x]="wr" /\ (RP_Posted(x) \/ (iv[x]="reg" /\ xsrc'[x]=xsrc[x]))


           RP_RegSourceSafe == \A x \in Xids : iv'[x]="reg" => xsrc'[x] \in Pages /\ pst'[xsrc'[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

           RP_QSnapshot == \A h \in squar : h[2] \in xsrcS[h[1]]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_NewFlyFromReg, RP_SharedSend, RP_RecordProgress, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, BPEnd, BPFreed, RP_RecordReady, RP_NoneFrame, RP_RegPrelude, RP_RegSourceSafe, RP_QSnapshot

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


<1>SQvJLqVzFltKVggxqQqi.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE UNCHANGED <<xsrc,xr,xg>> /\ RP_NewFlyFromReg
<2>frame. UNCHANGED <<hw,xsrc,xr,xg>>
 BY ONLY <1>SQvJLqVzFltKVggxqQqi, ZenonT(5) DEF PRelease, xV
<2>qed. QED BY ONLY <2>frame, SMTT(5) DEF RP_NewFlyFromReg

\* T2M-LOCAL-VISIBILITY

<1>TL3VmPyQzph5JvdcIJcip.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE NoEvictUnderRDMA' /\ RP_SharedSend'
 BY ONLY <1>TL3VmPyQzph5JvdcIJcip, Sizes, Location, Design, <1>SQvJLqVzFltKVggxqQqi, <1>fCaVnnRiNeSrXN4lcQ3A DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WyLnC64IctqyorcMR9vuhkiFY.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>WyLnC64IctqyorcMR9vuhkiFY, Sizes, Location, Design, <1>TL3VmPyQzph5JvdcIJcip DEF Sizes, Location, Design
\* T2M-END R2M1402_PdRPAccess_PRelease


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


<1>Q3WNsp0VyOmlZOtal9LO0UA.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>Q3WNsp0VyOmlZOtal9LO0UA, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Q3WNsp0VyOmlZOtal9LO0UA, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, PEnd, PRelease, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cd26KkURzj21aVvlcvRc.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE HitIdentity'
 BY ONLY <1>cd26KkURzj21aVvlcvRc, Sizes, Location, Design, <1>Q3WNsp0VyOmlZOtal9LO0UA, <1>UbRyVd7pIbH8AblyNEO DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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

<1>WxjwlU9y1K4.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PRelease(i, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>WxjwlU9y1K4, Sizes, Location, Design, Zenon DEF PRelease, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1711_PdRPPP_PdBPReleaseFrames


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


<1>hI2xtSIGqlt.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PRelease(i, r)
  PROVE IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY ONLY <1>hI2xtSIGqlt, Sizes, Location, Design, Zenon DEF PRelease, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dVoOnceoOKvC.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE BPEnd(i,r)
<2> USE ONLY <1>dVoOnceoOKvC, Sizes, Location, Design
<2>1. IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY <1>hI2xtSIGqlt, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
      /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {} /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
      /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
  BY <2>1, <1>SybH9, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. OyyWS /\ dcfPK /\ h9WLgd /\ IwCp /\ vS7em /\ bFwlN /\ p1YmMe5 /\ vRZWI
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>4. PageTo(rpg[i][r], IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain", 0, led[rpg[i][r]], sled[rpg[i][r]])
  BY <2>2, Design, Zenon, Sizes, Location DEF PRelease, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, PageTo, Sizes, Location, Design
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
  BY <2>1, <2>2, <2>5, <1>WxjwlU9y1K4, Zenon, Sizes, Location, Design DEF PRelease, BPEnd, Sizes, Location, Design
\* T2M-END R2M1712_PdRPPP_PdBPReleaseEffects


<1>UaM4v.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE K4'
<2> USE ONLY <1>UaM4v, Sizes, Location, Design
<2>1. K4 /\ UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
  BY <1>lUkZjHIo, V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>xf9Tky, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1580_PdRPPP_PdBPExitLK4


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


<1>GotsARPn.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE K4'
  BY ONLY <1>GotsARPn, Sizes, Location, Design, <1>dVoOnceoOKvC, <1>UaM4v DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>waxXPMZxC7mxjY0.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE QuarNoReg'
  BY ONLY <1>waxXPMZxC7mxjY0, Sizes, Location, Design, <1>dVoOnceoOKvC, <1>IVWNUw6iLtwD DEF Sizes, Location, Design
\* T2M-END R2M1713_PdRPPP_PdBPReleaseSteps

\* T2M-SCOPE R2M1714_PdRPPdPAgg_PRelease
\* T2M-BODY R2M1714_PdRPPdPAgg_PRelease
\* T2M-LOCAL-VISIBILITY

<1>q3Hk6L0yG0.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
  PROVE K4'
  BY ONLY <1>q3Hk6L0yG0, Sizes, Location, Design, <1>GotsARPn, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>n6ueWug1jTFa5z1YI.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>n6ueWug1jTFa5z1YI, Sizes, Location, Design, <1>waxXPMZxC7mxjY0, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1714_PdRPPdPAgg_PRelease


<1>BiXVwiRwWyJSDS4z0kd7O2.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE UNCHANGED gen /\ RP_RecordReady /\ RP_NoneFrame
<2> USE ONLY <1>BiXVwiRwWyJSDS4z0kd7O2, Sizes, Location, Design
<2>1. B2 => \A j \in PInst,u \in Rq : ph[j][u] \in {"reg","sent","exp"} => SSendReady(j,u)
 BY V21_Inv_P_SI1, Sizes, Location, Design DEF P_SI1, SI1, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>BiXVwiRwWyJSDS4z0kd7O2, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_RecordReady, RP_NoneFrame, PInst, Inst, NL, EvidenceAt, PEnd, PRelease, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GswA3paQVDmuP8UBM2nTC.        
  BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>> => BaseSendOwnLanded'
  BY SMT, Sizes, Location, Design DEF BaseSendOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ANexzJCi63rCwiw.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PRelease(i, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>ANexzJCi63rCwiw, Sizes, Location, Design, Zenon DEF PRelease, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xrYkUEXXgd409IS3TLzTugj.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>xrYkUEXXgd409IS3TLzTugj, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>>
  BY <1>ANexzJCi63rCwiw, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, ReadOwnLanded, SealOnlyLanded, SendOwnLanded, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>GswA3paQVDmuP8UBM2nTC, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1929_PdRPBPP_PdBPReleaseFrames


<1>OHP3JFANlTaekWjx8MVJpY.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE SendOwnLanded'
 BY ONLY <1>OHP3JFANlTaekWjx8MVJpY, Sizes, Location, Design, <1>xrYkUEXXgd409IS3TLzTugj, <1>TL3VmPyQzph5JvdcIJcip DEF SendOwnLanded, RP_SharedSend, Sizes, Location, Design
\* T2M-END R2M1932_PdRPSafety_PRelease


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


<1>azRRAdTif4boxQLiQcy.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE RP_RegPrelude
<2> USE ONLY <1>azRRAdTif4boxQLiQcy, Sizes, Location, Design
<2>1. K3
 BY ONLY <1>azRRAdTif4boxQLiQcy, V21_Inv_K3, Sizes, Location, Design, SMTT(5)
<2>2. UNCHANGED xsrc /\ (\A y \in Xids : iv'[y]="reg" => iv[y]="reg")
 BY ONLY <1>azRRAdTif4boxQLiQcy, SMTT(10) DEF PRelease, xV
<2>3. \A y \in Xids : iv'[y]="reg" => xk[y]="wr" /\ iv[y]="reg" /\ xsrc'[y]=xsrc[y]
 BY ONLY <2>1, <2>2, SMTT(5) DEF K3
<2>4. QED BY ONLY <2>3, SMTT(5) DEF RP_RegPrelude

\* T2M-LOCAL-VISIBILITY

<1>YIW1dDJOwvHoY6.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE K1'
<2> USE ONLY <1>YIW1dDJOwvHoY6, Sizes, Location, Design
<2>1. K1 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K1, EvidenceAt, PEnd, PRelease, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Pz8kJ6jA2BBLQs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE K2'
<2> USE ONLY <1>Pz8kJ6jA2BBLQs, Sizes, Location, Design
<2>1. K2 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K2, InitPage, ExpPage, InitInst, ExpInst, EvidenceAt, PEnd, PRelease, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r9ZVnzY7sbzulS.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE K3'
<2> USE ONLY <1>r9ZVnzY7sbzulS, Sizes, Location, Design
<2>1. K3 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K3, CqeHw, InFl, EvidenceAt, PEnd, PRelease, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Xzwzcd5NDGNSyK.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE K4'
 BY ONLY <1>Xzwzcd5NDGNSyK, Sizes, Location, Design, <1>q3Hk6L0yG0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>j2HEeM96pQ81k6IuCnF21.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>j2HEeM96pQ81k6IuCnF21, Sizes, Location, Design, <1>n6ueWug1jTFa5z1YI DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EJgRuYzOdiVueN.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE nx' \in 1..(MX+1)
<2> USE ONLY <1>EJgRuYzOdiVueN, Sizes, Location, Design
<2>1. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>EJgRuYzOdiVueN, V22_T_nx, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF Xids, EvidenceAt, PEnd, PRelease, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QP8AMrO2f65a.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE SI7'
<2> USE ONLY <1>QP8AMrO2f65a, Sizes, Location, Design
<2>1. RP_RegSourceSafe BY <1>YIW1dDJOwvHoY6, <1>Pz8kJ6jA2BBLQs, <1>r9ZVnzY7sbzulS, <1>Xzwzcd5NDGNSyK, <1>j2HEeM96pQ81k6IuCnF21, <1>EJgRuYzOdiVueN, <1>NU8zGD7bQ5u9BXIjl, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>azRRAdTif4boxQLiQcy, <1>KvDgRwgd9SE, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1933_PdRPSI7_PRelease


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


<1>f67U9jHEvq5j.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE P_SI2'
 BY ONLY <1>f67U9jHEvq5j, Sizes, Location, Design, <1>BiXVwiRwWyJSDS4z0kd7O2, <1>cd26KkURzj21aVvlcvRc, <1>TL3VmPyQzph5JvdcIJcip, <1>SQvJLqVzFltKVggxqQqi, <1>AnajBeZS7htcLkTpZ8C91mxOHTa, <1>jNTupquvAyD DEF Sizes, Location, Design
\* T2M-END R2M2077_PdRPSI2_PRelease


<1> QED BY <1>QP8AMrO2f65a, <1>f67U9jHEvq5j, <1>OHP3JFANlTaekWjx8MVJpY, <1>WyLnC64IctqyorcMR9vuhkiFY, <1>cd26KkURzj21aVvlcvRc, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PRelease_04_01 SHA 11a1736baa2c4036ecfc257d5b3db48e6d7dfc5a4d3c14e7205281c0e3a3c1cf
USE DEF V21_Inv_K10, V21_Inv_K13, V21_Inv_K5, V21_Inv_K6, V21_Inv_K9, V21_Inv_S1, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8
HIDE DEF Part_PRelease_03_02, V21_Inv_HitIdentity, V21_Inv_K3, V21_Inv_K4, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNoReg, V21_Inv_ReadOwnLanded, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_SFollowOff, V21_SFollowStatic, V22_T_nx, V22_T_ph, V22_T_rg, V22_T_xsrcP
THEOREM Part_PRelease_04_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE (K7)' /\ (K9)' /\ (K10)' /\ (K13)' /\ (S1)' /\ (S6)' /\ (K5)' /\ (S5)' /\ (K6)' /\ (SI8)'
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

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, aHWnD, BPEnd, BPFreed

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


<1>PziYv7RtH2aABml.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE UNCHANGED <<xsrc,xk,xst>>
 BY ONLY <1>PziYv7RtH2aABml, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PRelease, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uIU3mdmJm6A5.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE SI8'
 BY ONLY <1>uIU3mdmJm6A5, Sizes, Location, Design, <1>PziYv7RtH2aABml, <1>cBA7rB8Q9U8gRHfGK DEF Sizes, Location, Design
\* T2M-END R2M1432_PdRPShared_PRelease


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


<1>WxjwlU9y1K4.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PRelease(i, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>WxjwlU9y1K4, Sizes, Location, Design, Zenon DEF PRelease, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1711_PdRPPP_PdBPReleaseFrames


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

<1>WGbkrBCzhMP5.        
  ASSUME NEW i \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, BPEnd(i,r)
  PROVE (led[p] # {} \/ sfly[p] # {} \/ KPinned(p)) =>
    pst'[p] \in {pst[p],"drain"} /\ pr'[p] = pr[p] /\ pgn'[p] = pgn[p] /\ plt'[p] = plt[p]
<2> USE ONLY <1>WGbkrBCzhMP5, Sizes, Location, Design
<2>1. sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
    /\ (\A q \in Pages : pst'[q] = IF q=rpg[i][r] THEN (IF BPFreed(i,r) THEN "free" ELSE "drain") ELSE pst[q])
    /\ (\A q \in Pages : pr'[q] = IF q=rpg[i][r] /\ BPFreed(i,r) THEN 0 ELSE pr[q])
    /\ (\A q \in Pages : pgn'[q] = IF q=rpg[i][r] /\ BPFreed(i,r) THEN 0 ELSE pgn[q])
    /\ (\A q \in Pages : plt'[q] = IF q=rpg[i][r] /\ BPFreed(i,r) THEN 0 ELSE plt[q])
  BY <1>k5vlhp4Hi, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF BPFreed, Sizes, Location, Design
\* T2M-END R2M1568_PdRPPP_PdBPExit


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


<1>hI2xtSIGqlt.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PRelease(i, r)
  PROVE IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY ONLY <1>hI2xtSIGqlt, Sizes, Location, Design, Zenon DEF PRelease, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dVoOnceoOKvC.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE BPEnd(i,r)
<2> USE ONLY <1>dVoOnceoOKvC, Sizes, Location, Design
<2>1. IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY <1>hI2xtSIGqlt, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
      /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {} /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
      /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
  BY <2>1, <1>SybH9, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. OyyWS /\ dcfPK /\ h9WLgd /\ IwCp /\ vS7em /\ bFwlN /\ p1YmMe5 /\ vRZWI
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>4. PageTo(rpg[i][r], IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain", 0, led[rpg[i][r]], sled[rpg[i][r]])
  BY <2>2, Design, Zenon, Sizes, Location DEF PRelease, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, PageTo, Sizes, Location, Design
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
  BY <2>1, <2>2, <2>5, <1>WxjwlU9y1K4, Zenon, Sizes, Location, Design DEF PRelease, BPEnd, Sizes, Location, Design
\* T2M-END R2M1712_PdRPPP_PdBPReleaseEffects


<1>inSeAS.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE K10'
<2> USE ONLY <1>inSeAS, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_x \in Xids
                 PROVE ((bb_x < nx /\ xdst[bb_x] \in Pages /\ OwnedBy(xdst[bb_x], xr[bb_x], xg[bb_x])
            /\ ~(ph[Loc(xdst[bb_x])][xr[bb_x]] \in {"run", "ovl"} /\ rg[Loc(xdst[bb_x])][xr[bb_x]] = xg[bb_x]))
           => ptl[xdst[bb_x]] = (IF hw[bb_x] = "stop" /\ hok[bb_x] THEN xlt[bb_x] ELSE 0))'
  BY Sizes, Location, Design DEF K10, Sizes, Location, Design
<2>1. K10
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K10, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lUkZjHIo, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ((bb_x < nx /\ xdst[bb_x] \in Pages /\ OwnedBy(xdst[bb_x], xr[bb_x], xg[bb_x])
            /\ ~(ph[Loc(xdst[bb_x])][xr[bb_x]] \in {"run", "ovl"} /\ rg[Loc(xdst[bb_x])][xr[bb_x]] = xg[bb_x]))
           => ptl[xdst[bb_x]] = (IF hw[bb_x] = "stop" /\ hok[bb_x] THEN xlt[bb_x] ELSE 0))'
  BY <2>1, <2>2, <1>m7hyag3D, <1>fem, <1>xbWa623J, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF DInst, IsD, K10, OwnedBy, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K10, Sizes, Location, Design
\* T2M-END R2M1574_PdRPPP_PdBPExitLK10

\* T2M-SCOPE R2M1575_PdRPPP_PdBPExitLK11

<1>NIxu5E.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE K13'
<2> USE ONLY <1>NIxu5E, Sizes, Location, Design
<2>1. K13
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K13, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lUkZjHIo, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (~gbad)'
  BY <2>1, <2>2, <1>m7hyag3D, <1>ho2qVzp0UDI9Dx, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF K13, Sizes, Location, Design
<2>4. (\A r \in Rq, g \in Gens :
            /\ drep[r][g] <= 1
            /\ dsucc[r][g] => drep[r][g] = 1
            /\ crep[r][g] = "ok" => dsucc[r][g]
            /\ crep[r][g] # "two"
            /\ drep[r][g] = 1 => (rg[hd[r][g]][r] > g \/ (rg[hd[r][g]][r] = g /\ ph[hd[r][g]][r] = "end")))'
  BY <2>1, <2>2, <1>m7hyag3D, <1>ho2qVzp0UDI9Dx, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF K13, Sizes, Location, Design
<2>5. QED
  BY <2>3, <2>4, Sizes, Location, Design DEF K13, Sizes, Location, Design
\* T2M-END R2M1576_PdRPPP_PdBPExitLK13

\* T2M-SCOPE R2M1577_PdRPPP_PdBPExitLK15

<1>GQZqr.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE K5'
<2> USE ONLY <1>GQZqr, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (\A x \in led[bb_p] : OwnedBy(bb_p, xr[x], xg[x]))'
  BY Sizes, Location, Design DEF K5, Sizes, Location, Design
<2>1. K5
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lUkZjHIo, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (\A x \in led[bb_p] : OwnedBy(bb_p, xr[x], xg[x]))'
  BY <2>1, <2>2, <1>WGbkrBCzhMP5, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF K5, OwnedBy, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K5, Sizes, Location, Design
\* T2M-END R2M1581_PdRPPP_PdBPExitLK5

\* T2M-SCOPE R2M1582_PdRPPP_PdBPExitLK6

<1>D8S63.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE K6'
<2> USE ONLY <1>D8S63, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (sfly[bb_p] \subseteq sled[bb_p])' /\ (\A t \in sled[bb_p] : t[2] <= gen[t[1]] /\ (OwnedBy(bb_p, t[1], t[2]) \/ (pst[bb_p] = "shared" /\ IsD(Loc(bb_p)))))'
  BY Sizes, Location, Design DEF K6, Sizes, Location, Design
<2>1. K6
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lUkZjHIo, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (sfly[bb_p] \subseteq sled[bb_p])'
  BY <2>1, <2>2, <1>k5vlhp4Hi, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF K6, OwnedBy, Sizes, Location, Design
<2>4. (\A t \in sled[bb_p] : t[2] <= gen[t[1]] /\ (OwnedBy(bb_p, t[1], t[2]) \/ (pst[bb_p] = "shared" /\ IsD(Loc(bb_p)))))'
  BY <2>1, <2>2, <1>k5vlhp4Hi, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF K6, OwnedBy, Sizes, Location, Design
<2>5. QED
  BY <2>3, <2>4, Sizes, Location, Design DEF K6, Sizes, Location, Design
\* T2M-END R2M1582_PdRPPP_PdBPExitLK6

\* T2M-SCOPE R2M1583_PdRPPP_PdBPExitLK7

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

<1>VDzfSSVAvZ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, NEW j \in DInst, NEW s \in Rq, PinInv, BPEnd(i,r)
  PROVE aHWnD(j,s)'
<2> USE ONLY <1>VDzfSSVAvZ, Sizes, Location, Design
<2>1. K9 /\ K8 /\ aHWnD(j,s)
  BY <1>EMxbd, V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lUkZjHIo, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. j \in Inst /\ IsD(j)
  BY <1>yGU8fpsp8, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. Active(j,s) => rpg[j][s] \in Pages /\ Loc(rpg[j][s]) = j
  BY <2>1, <2>3, <1>FHxj9I1A, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. ph'[j][s] = ph[j][s] /\ (Active(j,s) => pst'[rpg[j][s]] = pst[rpg[j][s]] /\ plt'[rpg[j][s]] = plt[rpg[j][s]])
  BY <2>2, <2>3, <2>4, <1>m7hyag3D, SMT, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, Zenon, Sizes, Location, Design DEF aHWnD, Active, Tag, Sizes, Location, Design
\* T2M-END R2M1587_PdRPPP_PdBPExitLRecord9

\* T2M-SCOPE R2M1588_PdRPPP_PdBPExitLK9
\* T2M-BODY R2M1588_PdRPPP_PdBPExitLK9
\* T2M-LOCAL-VISIBILITY

<1>Z1zhE.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE K9'
  BY ONLY <1>Z1zhE, Sizes, Location, Design, <1>VDzfSSVAvZ, <1>N4h15fQyir6 DEF Sizes, Location, Design
\* T2M-END R2M1588_PdRPPP_PdBPExitLK9


<1>fYmhv.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE S1'
<2> USE ONLY <1>fYmhv, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_x \in Xids
                 PROVE (bb_x < nx =>
        /\ ph[ExpInst(bb_x)][xr[bb_x]] # "none" /\ rg[ExpInst(bb_x)][xr[bb_x]] >= xg[bb_x]
        /\ (rg[ExpInst(bb_x)][xr[bb_x]] = xg[bb_x] /\ Active(ExpInst(bb_x), xr[bb_x])) => rx[ExpInst(bb_x)][xr[bb_x]] = bb_x)'
  BY Sizes, Location, Design DEF S1, Sizes, Location, Design
<2>1. S1
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_S1, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lUkZjHIo, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (bb_x < nx =>
        /\ ph[ExpInst(bb_x)][xr[bb_x]] # "none" /\ rg[ExpInst(bb_x)][xr[bb_x]] >= xg[bb_x]
        /\ (rg[ExpInst(bb_x)][xr[bb_x]] = xg[bb_x] /\ Active(ExpInst(bb_x), xr[bb_x])) => rx[ExpInst(bb_x)][xr[bb_x]] = bb_x)'
  BY <2>1, <2>2, <1>V0TEw, <1>xbWa623J, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF ExpInst, S1, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF S1, Sizes, Location, Design
\* T2M-END R2M1593_PdRPPP_PdBPExitLS1

\* T2M-SCOPE R2M1594_PdRPPP_PdBPExitLS5

<1>iOD00.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE S5'
<2> USE ONLY <1>iOD00, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_j \in DInst, NEW bb_r \in Rq
                 PROVE ((ph[bb_j][bb_r] \in {"run", "ovl"} /\ ~rhit[bb_j][bb_r]) =>
          LET x == rx[bb_j][bb_r] IN
            /\ x \in Xids /\ x < nx /\ xdst[x] = rpg[bb_j][bb_r] /\ xr[x] = bb_r /\ xg[x] = rg[bb_j][bb_r]
            /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x]
            /\ (Mode = "push" => xst[x] = "landed") /\ (Mode = "pull" => iv[x] = "cqe"))'
  BY Sizes, Location, Design DEF S5, Sizes, Location, Design
<2>1. S5
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_S5, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lUkZjHIo, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ((ph[bb_j][bb_r] \in {"run", "ovl"} /\ ~rhit[bb_j][bb_r]) =>
          LET x == rx[bb_j][bb_r] IN
            /\ x \in Xids /\ x < nx /\ xdst[x] = rpg[bb_j][bb_r] /\ xr[x] = bb_r /\ xg[x] = rg[bb_j][bb_r]
            /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x]
            /\ (Mode = "push" => xst[x] = "landed") /\ (Mode = "pull" => iv[x] = "cqe"))'
  BY <2>1, <2>2, <1>m7hyag3D, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF S5, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF S5, Sizes, Location, Design
\* T2M-END R2M1594_PdRPPP_PdBPExitLS5

\* T2M-SCOPE R2M1595_PdRPPP_PdBPExitLS6

<1>VE1g5.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE S6'
<2> USE ONLY <1>VE1g5, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_x \in Xids
                 PROVE ((bb_x < nx /\ InitPage(bb_x) # 0) =>
        /\ ph[InitInst(bb_x)][xr[bb_x]] # "none" /\ rg[InitInst(bb_x)][xr[bb_x]] >= xg[bb_x]
        /\ (rg[InitInst(bb_x)][xr[bb_x]] = xg[bb_x] /\ Active(InitInst(bb_x), xr[bb_x])) => rx[InitInst(bb_x)][xr[bb_x]] = bb_x)'
  BY Sizes, Location, Design DEF S6, Sizes, Location, Design
<2>1. S6
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_S6, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lUkZjHIo, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ((bb_x < nx /\ InitPage(bb_x) # 0) =>
        /\ ph[InitInst(bb_x)][xr[bb_x]] # "none" /\ rg[InitInst(bb_x)][xr[bb_x]] >= xg[bb_x]
        /\ (rg[InitInst(bb_x)][xr[bb_x]] = xg[bb_x] /\ Active(InitInst(bb_x), xr[bb_x])) => rx[InitInst(bb_x)][xr[bb_x]] = bb_x)'
  BY <2>1, <2>2, <1>V0TEw, <1>xbWa623J, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMT, Design DEF InitInst, InitPage, S6, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF S6, Sizes, Location, Design
\* T2M-END R2M1595_PdRPPP_PdBPExitLS6

\* T2M-SCOPE R2M1596_PdRPPP_PdBPExitSteps

<1>ul4pErF9.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE K5'
  BY ONLY <1>ul4pErF9, Sizes, Location, Design, <1>dVoOnceoOKvC, <1>GQZqr DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UP2Ju23Q.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE K6'
  BY ONLY <1>UP2Ju23Q, Sizes, Location, Design, <1>dVoOnceoOKvC, <1>D8S63 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yTTQX3Xr.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE K7'
  BY ONLY <1>yTTQX3Xr, Sizes, Location, Design, <1>dVoOnceoOKvC, <1>wSfB3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SZ3ejY4f.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE K9'
  BY ONLY <1>SZ3ejY4f, Sizes, Location, Design, <1>dVoOnceoOKvC, <1>Z1zhE DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zAuTAVWgV.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE K10'
  BY ONLY <1>zAuTAVWgV, Sizes, Location, Design, <1>dVoOnceoOKvC, <1>inSeAS DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D6pUYLd9m.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE K13'
  BY ONLY <1>D6pUYLd9m, Sizes, Location, Design, <1>dVoOnceoOKvC, <1>NIxu5E DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OyrpWwSb.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE S1'
  BY ONLY <1>OyrpWwSb, Sizes, Location, Design, <1>dVoOnceoOKvC, <1>fYmhv DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RbhzQQ1S.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE S5'
  BY ONLY <1>RbhzQQ1S, Sizes, Location, Design, <1>dVoOnceoOKvC, <1>iOD00 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tTu8CJUT.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE S6'
  BY ONLY <1>tTu8CJUT, Sizes, Location, Design, <1>dVoOnceoOKvC, <1>VE1g5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wYP6GWa6dD.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
  PROVE K5'
  BY ONLY <1>wYP6GWa6dD, Sizes, Location, Design, <1>ul4pErF9, V21_Inv_K5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Nl8FUMDtqE.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
  PROVE K6'
  BY ONLY <1>Nl8FUMDtqE, Sizes, Location, Design, <1>UP2Ju23Q, V21_Inv_K6 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DRmjAbEAFE.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
  PROVE K7'
  BY ONLY <1>DRmjAbEAFE, Sizes, Location, Design, <1>yTTQX3Xr, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q7BFTXSlQT.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
  PROVE K9'
  BY ONLY <1>Q7BFTXSlQT, Sizes, Location, Design, <1>SZ3ejY4f, V21_Inv_K9 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UKeBo1CzPaD.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
  PROVE K10'
  BY ONLY <1>UKeBo1CzPaD, Sizes, Location, Design, <1>zAuTAVWgV, V21_Inv_K10 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BteZsOH97Za.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
  PROVE K13'
  BY ONLY <1>BteZsOH97Za, Sizes, Location, Design, <1>D6pUYLd9m, V21_Inv_K13 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VS5d63Vgy3.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
  PROVE S1'
  BY ONLY <1>VS5d63Vgy3, Sizes, Location, Design, <1>OyrpWwSb, V21_Inv_S1 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Mll6DrkX5P.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
  PROVE S5'
  BY ONLY <1>Mll6DrkX5P, Sizes, Location, Design, <1>RbhzQQ1S, V21_Inv_S5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SZZrSKJjCE.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
  PROVE S6'
  BY ONLY <1>SZZrSKJjCE, Sizes, Location, Design, <1>tTu8CJUT, V21_Inv_S6 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>DRmjAbEAFE, <1>Q7BFTXSlQT, <1>UKeBo1CzPaD, <1>BteZsOH97Za, <1>VS5d63Vgy3, <1>SZZrSKJjCE, <1>wYP6GWa6dD, <1>Mll6DrkX5P, <1>Nl8FUMDtqE, <1>uIU3mdmJm6A5, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PRelease_04_02 SHA 253b331698589ec4c8791e6432ba60e91d09aad44234a947ac4e4494ee80c0b5
USE DEF V21_Inv_K11, V21_Inv_K16, V21_Inv_K17, V21_Inv_K3, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_hw, V22_T_ph, V22_T_rpg, V22_T_xdst
HIDE DEF Part_PRelease_04_01, V21_Inv_K10, V21_Inv_K13, V21_Inv_K2, V21_Inv_K5, V21_Inv_K6, V21_Inv_K9, V21_Inv_S1, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V22_T_xsrcS
THEOREM Part_PRelease_04_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE (ReadOwnLanded)' /\ (SealOnlyLanded)' /\ (K16)' /\ (K17)' /\ (K11)' /\ (P_SI3)'
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


           RPB_BK7At(p) ==
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


           RPB_BPEnd(i,r) ==
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


           RPB_BPFreed(i,r) == led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r])

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, BPEnd, BPFreed, RP_NoNewStop, RP_DReadFrame, RP_SharedRead, RPB_T_gen, RPB_T_rt, RPB_T_rp, RPB_T_rd, RPB_T_hp, RPB_T_hd, RPB_T_alive, RPB_T_nfail, RPB_T_torn, RPB_T_kpin, RPB_T_kfly, RPB_T_krs, RPB_T_ph, RPB_T_rg, RPB_T_rpg, RPB_T_rpe, RPB_T_rx, RPB_T_rhit, RPB_T_pst, RPB_T_pr, RPB_T_pgn, RPB_T_plt, RPB_T_ptl, RPB_T_pvis, RPB_T_led, RPB_T_sfly, RPB_T_sled, RPB_T_prefc, RPB_T_pqp, RPB_T_xr, RPB_T_xg, RPB_T_xk, RPB_T_xp, RPB_T_xd, RPB_T_xsrc, RPB_T_xdst, RPB_T_xnt, RPB_T_hw, RPB_T_hok, RPB_T_iv, RPB_T_xst, RPB_T_xlt, RPB_T_nx, RPB_T_net, RPB_T_drep, RPB_T_crep, RPB_T_dsucc, RPB_T_gbad, RPB_Types, RPB_BK8At, RPB_BK7At, RPB_BPEnd, RPB_BPFreed

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

<1>jTHy3nj1v1xQow2.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>jTHy3nj1v1xQow2, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PRelease, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XFTg9ONi9jmZ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE P_SI3'
 BY ONLY <1>XFTg9ONi9jmZ, Sizes, Location, Design, <1>jTHy3nj1v1xQow2, <1>uWXN2TjAdAz DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>XnMc8sc.        
  K11 /\ UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>> => K11'
  BY SMT, Sizes, Location, Design DEF K11, Sizes, Location, Design
\* T2M-END R2M1487_PdRPPP_PdBFrames


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

<1>p9K3BPe.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW e, c02OO, e \in krs[i][s]
  PROVE e[1] \in Rq /\ e[2] \in Gens /\ e[3] \in KPages /\ e[4] \in {0,1,2,3,4}
  BY ONLY <1>p9K3BPe, Sizes, Location, Design, SMT DEF c02OO, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>M1gZ8YXd.        
  ASSUME PinInv
  PROVE \A i \in Inst, s \in KSlots : \A e \in krs[i][s] :
    e[1] \in Rq /\ e[2] \in Gens /\ e[3] \in KPages /\ e[4] \in {0,1,2,3,4}
<2> USE ONLY <1>M1gZ8YXd, Sizes, Location, Design
<2>1. c02OO
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>p9K3BPe, Sizes, Location, Design DEF Sizes, Location, Design

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

<1>WxjwlU9y1K4.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PRelease(i, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>WxjwlU9y1K4, Sizes, Location, Design, Zenon DEF PRelease, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1711_PdRPPP_PdBPReleaseFrames


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


<1>hI2xtSIGqlt.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PRelease(i, r)
  PROVE IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY ONLY <1>hI2xtSIGqlt, Sizes, Location, Design, Zenon DEF PRelease, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dVoOnceoOKvC.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE BPEnd(i,r)
<2> USE ONLY <1>dVoOnceoOKvC, Sizes, Location, Design
<2>1. IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY <1>hI2xtSIGqlt, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
      /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {} /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
      /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
  BY <2>1, <1>SybH9, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. OyyWS /\ dcfPK /\ h9WLgd /\ IwCp /\ vS7em /\ bFwlN /\ p1YmMe5 /\ vRZWI
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>4. PageTo(rpg[i][r], IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain", 0, led[rpg[i][r]], sled[rpg[i][r]])
  BY <2>2, Design, Zenon, Sizes, Location DEF PRelease, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, PageTo, Sizes, Location, Design
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
  BY <2>1, <2>2, <2>5, <1>WxjwlU9y1K4, Zenon, Sizes, Location, Design DEF PRelease, BPEnd, Sizes, Location, Design
\* T2M-END R2M1712_PdRPPP_PdBPReleaseEffects


<1>k026o6.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE K11'
<2> USE ONLY <1>k026o6, Sizes, Location, Design
<2>1. K11 /\ UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>>
  BY <1>lUkZjHIo, V21_Inv_K11, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>XnMc8sc, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1575_PdRPPP_PdBPExitLK11

\* T2M-SCOPE R2M1576_PdRPPP_PdBPExitLK13

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

<1>pCZo5x.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, BPEnd(i,r)
  PROVE K17'
<2> USE ONLY <1>pCZo5x, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_i \in Inst, NEW bb_s \in KSlots
                 PROVE (kpin[bb_i][bb_s] => \A e \in krs[bb_i][bb_s] :
         e[4] \in {2, 3} =>
           \/ rg[bb_i][e[1]] > e[2]
           \/ rg[bb_i][e[1]] = e[2] /\ ph[bb_i][e[1]] \in {"run", "ovl", "end"} /\ rpg[bb_i][e[1]] # e[3])'
  BY Sizes, Location, Design DEF K17, Sizes, Location, Design
<2>1. K17
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K17, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lUkZjHIo, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (kpin[bb_i][bb_s] => \A e \in krs[bb_i][bb_s] :
         e[4] \in {2, 3} =>
           \/ rg[bb_i][e[1]] > e[2]
           \/ rg[bb_i][e[1]] = e[2] /\ ph[bb_i][e[1]] \in {"run", "ovl", "end"} /\ rpg[bb_i][e[1]] # e[3])'
  BY <2>1, <2>2, <1>k5vlhp4Hi, <1>M1gZ8YXd, SMTT(15), Sizes, Location, Design DEF K17, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K17, Sizes, Location, Design
\* T2M-END R2M1579_PdRPPP_PdBPExitLK17

\* T2M-SCOPE R2M1580_PdRPPP_PdBPExitLK4

<1>s8SRmxNJo.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE K11'
  BY ONLY <1>s8SRmxNJo, Sizes, Location, Design, <1>dVoOnceoOKvC, <1>k026o6 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QM9DdytHJ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE K16'
  BY ONLY <1>QM9DdytHJ, Sizes, Location, Design, <1>dVoOnceoOKvC, <1>ZAl5HW DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kzkSNlBCU.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE K17'
  BY ONLY <1>kzkSNlBCU, Sizes, Location, Design, <1>dVoOnceoOKvC, <1>pCZo5x DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bbsFS1Lab2t.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
  PROVE K11'
  BY ONLY <1>bbsFS1Lab2t, Sizes, Location, Design, <1>s8SRmxNJo, V21_Inv_K11 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>l9jBCd0k1i4.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
  PROVE K16'
  BY ONLY <1>l9jBCd0k1i4, Sizes, Location, Design, <1>QM9DdytHJ, V21_Inv_K16 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tp7Lz8yeIGl.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
  PROVE K17'
  BY ONLY <1>Tp7Lz8yeIGl, Sizes, Location, Design, <1>kzkSNlBCU, V21_Inv_K17 DEF Sizes, Location, Design

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


<1>ANexzJCi63rCwiw.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PRelease(i, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>ANexzJCi63rCwiw, Sizes, Location, Design, Zenon DEF PRelease, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PtRv5Ech1.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE RPB_BK8At(i,r)
  BY ONLY <1>PtRv5Ech1, Sizes, Location, Design DEF K8, RPB_BK8At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zAull58zS.        
  ASSUME NEW p \in Pages, K7
  PROVE RPB_BK7At(p)
  BY ONLY <1>zAull58zS, Sizes, Location, Design DEF K7, RPB_BK7At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wdg7J6ju3.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, IsP(i), ph[i][r] \in {"sent","exp","reg"}
  PROVE
    /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
    /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
    /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
    /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
    /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
<2> USE ONLY <1>wdg7J6ju3, Sizes, Location, Design
<2>1. K8 /\ K7
  BY V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RPB_BK8At(i,r)
  BY <2>1, <1>PtRv5Ech1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
      /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
  BY <2>2, Zenon, Sizes, Location, Design DEF RPB_BK8At, Active, OwnedBy, Sizes, Location, Design
<2>4. sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
      /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
  BY <2>2, Zenon, Sizes, Location, Design DEF RPB_BK8At, Sizes, Location, Design
<2>5. RPB_BK7At(rpg[i][r])
  BY <2>1, <2>3, <1>zAull58zS, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
  BY <2>3, <2>5, Zenon, Sizes, Location, Design DEF RPB_BK7At, Sizes, Location, Design
<2>7. QED
  BY <2>3, <2>4, <2>6, Sizes, Location, Design DEF Sizes, Location, Design

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

<1>RJG2NNrErZFdrB.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst
  BY ONLY <1>RJG2NNrErZFdrB, Sizes, Location, Design, Location, SMT DEF KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ey9PneZjpodYR.        
  /\ \A i \in DInst : i \in Inst /\ IsD(i)
  /\ \A i \in PInst : i \in Inst /\ IsP(i)
  /\ \A i \in Inst : IsP(i) \/ IsD(i)
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMT, Location, Design DEF Inst, DInst, PInst, NL, IsD, IsP, Sizes, Location, Design
\* T2M-END R2M1830_PdRPBPP_PdBRecords


<1>y0Wijgd5abOu.        
  ASSUME NEW i \in Inst, NEW r \in Rq, RPB_BPEnd(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>y0Wijgd5abOu, Sizes, Location, Design, Zenon DEF RPB_BPEnd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wKDK0szzkoez1.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, RPB_BPEnd(i,r)
  PROVE
    /\ IsP(i) /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
    /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {} /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
    /\ \A j \in Inst, s \in Rq : ph'[j][s] = IF j=i /\ s=r THEN "end" ELSE ph[j][s]
    /\ \A q \in Pages : pst'[q] = IF q=rpg[i][r] THEN (IF RPB_BPFreed(i,r) THEN "free" ELSE "drain") ELSE pst[q]
    /\ \A q \in Pages : pr'[q] = IF q=rpg[i][r] /\ RPB_BPFreed(i,r) THEN 0 ELSE pr[q]
    /\ \A q \in Pages : pgn'[q] = IF q=rpg[i][r] /\ RPB_BPFreed(i,r) THEN 0 ELSE pgn[q]
    /\ \A q \in Pages : plt'[q] = IF q=rpg[i][r] /\ RPB_BPFreed(i,r) THEN 0 ELSE plt[q]
<2> USE ONLY <1>wKDK0szzkoez1, Sizes, Location, Design
<2>1. RPB_T_ph /\ RPB_T_pst /\ RPB_T_pr /\ RPB_T_pgn /\ RPB_T_plt
  BY <1>IXEagMJyQryQes, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF RPB_BPEnd, RPB_BPFreed, RPB_T_ph, RPB_T_pst, RPB_T_pr, RPB_T_pgn, RPB_T_plt, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PsLwx3v04zox.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, RPB_BPEnd(i,r)
  PROVE
    /\ \A j \in DInst, s \in Rq : ph'[j][s] = ph[j][s]
    /\ \A q \in Pages : IsD(Loc(q)) => pst'[q] = pst[q] /\ pr'[q] = pr[q] /\ pgn'[q] = pgn[q] /\ plt'[q] = plt[q]
<2> USE ONLY <1>PsLwx3v04zox, Sizes, Location, Design
<2>1. IsP(i) /\ Loc(rpg[i][r]) = i
    /\ (\A j \in Inst, s \in Rq : ph'[j][s] = IF j=i /\ s=r THEN "end" ELSE ph[j][s])
    /\ (\A q \in Pages : pst'[q] = IF q=rpg[i][r] THEN (IF RPB_BPFreed(i,r) THEN "free" ELSE "drain") ELSE pst[q])
    /\ (\A q \in Pages : pr'[q] = IF q=rpg[i][r] /\ RPB_BPFreed(i,r) THEN 0 ELSE pr[q])
    /\ (\A q \in Pages : pgn'[q] = IF q=rpg[i][r] /\ RPB_BPFreed(i,r) THEN 0 ELSE pgn[q])
    /\ (\A q \in Pages : plt'[q] = IF q=rpg[i][r] /\ RPB_BPFreed(i,r) THEN 0 ELSE plt[q])
  BY <1>wKDK0szzkoez1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Location, Sizes, SMT, Design DEF IsP, IsD, DInst, Inst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M1887_PdRPBPP_PdBPExit


<1>JC1u7AXkCm8n.        
  ASSUME RPB_T_pst, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE pst' = [pst EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"]
  BY ONLY <1>JC1u7AXkCm8n, Sizes, Location, Design, SMT DEF PageTo, RPB_T_pst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>C2THAidW86X.        
  ASSUME RPB_T_pr, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE pr' = [pr EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
  BY ONLY <1>C2THAidW86X, Sizes, Location, Design, SMT DEF PageTo, RPB_T_pr, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wDtNZ76q0Bcq.        
  ASSUME RPB_T_pgn, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE pgn' = [pgn EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
  BY ONLY <1>wDtNZ76q0Bcq, Sizes, Location, Design, SMT DEF PageTo, RPB_T_pgn, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aw1DCKWPH6OU.        
  ASSUME RPB_T_plt, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE plt' = [plt EXCEPT ![p] = IF led[p] = {} /\ ~KPinned(p) THEN 0 ELSE @]
  BY ONLY <1>aw1DCKWPH6OU, Sizes, Location, Design, SMT DEF PageTo, RPB_T_plt, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>o0QFB9iY6uVz.        
  ASSUME RPB_T_led, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED led
  BY ONLY <1>o0QFB9iY6uVz, Sizes, Location, Design, SMT DEF PageTo, RPB_T_led, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>f52OZV2EZ2VGp.        
  ASSUME RPB_T_sled, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED sled
  BY ONLY <1>f52OZV2EZ2VGp, Sizes, Location, Design, SMT DEF PageTo, RPB_T_sled, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Rw1LbZbviXhFUG.        
  ASSUME RPB_T_prefc, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED prefc
  BY ONLY <1>Rw1LbZbviXhFUG, Sizes, Location, Design, SMT DEF PageTo, RPB_T_prefc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LG1TRoHnpOKf.        
  ASSUME RPB_T_pqp, NEW p \in Pages, NEW s, NEW q,
    s = (IF led[p] = {} /\ ~KPinned(p) THEN "free" ELSE "drain"),
    sled[p] = {}, prefc[p] = 0, pqp[p] = 0,
    PageTo(p,s,q,led[p],sled[p])
  PROVE UNCHANGED pqp
  BY ONLY <1>LG1TRoHnpOKf, Sizes, Location, Design, SMT DEF PageTo, RPB_T_pqp, Sizes, Location, Design
\* T2M-END R2M1888_PdRPBPP_PdBPageTo


<1>DutDbubsrcIXwBo.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PRelease(i, r)
  PROVE IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY ONLY <1>DutDbubsrcIXwBo, Sizes, Location, Design, Zenon DEF PRelease, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tQbj7bWWB6xEvmB3.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE RPB_BPEnd(i,r)
<2> USE ONLY <1>tQbj7bWWB6xEvmB3, Sizes, Location, Design
<2>1. IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY <1>DutDbubsrcIXwBo, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
      /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {} /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
      /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
  BY <2>1, <1>wdg7J6ju3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RPB_T_pst /\ RPB_T_led /\ RPB_T_sled /\ RPB_T_pr /\ RPB_T_pgn /\ RPB_T_plt /\ RPB_T_prefc /\ RPB_T_pqp
  BY <1>IXEagMJyQryQes, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
<2>4. PageTo(rpg[i][r], IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain", 0, led[rpg[i][r]], sled[rpg[i][r]])
  BY <2>2, Design, Zenon, Sizes, Location DEF PRelease, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, PageTo, Sizes, Location, Design
<2>5. pst' = [pst EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain"]
    /\ pr' = [pr EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
    /\ pgn' = [pgn EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
    /\ plt' = [plt EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
    /\ UNCHANGED <<led,sled,prefc,pqp>>
 <3>1. pst' = [pst EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain"]
  BY ONLY <2>2, <2>3, <2>4, <1>JC1u7AXkCm8n, Sizes, Location, Design, SMTT(5)
 <3>2. pr' = [pr EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
  BY ONLY <2>2, <2>3, <2>4, <1>C2THAidW86X, Sizes, Location, Design, SMTT(5)
 <3>3. pgn' = [pgn EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
  BY ONLY <2>2, <2>3, <2>4, <1>wDtNZ76q0Bcq, Sizes, Location, Design, SMTT(5)
 <3>4. plt' = [plt EXCEPT ![rpg[i][r]] = IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN 0 ELSE @]
  BY ONLY <2>2, <2>3, <2>4, <1>aw1DCKWPH6OU, Sizes, Location, Design, SMTT(5)
 <3>5. UNCHANGED led
  BY ONLY <2>2, <2>3, <2>4, <1>o0QFB9iY6uVz, Sizes, Location, Design, SMTT(5)
 <3>6. UNCHANGED sled
  BY ONLY <2>2, <2>3, <2>4, <1>f52OZV2EZ2VGp, Sizes, Location, Design, SMTT(5)
 <3>7. UNCHANGED prefc
  BY ONLY <2>2, <2>3, <2>4, <1>Rw1LbZbviXhFUG, Sizes, Location, Design, SMTT(5)
 <3>8. UNCHANGED pqp
  BY ONLY <2>2, <2>3, <2>4, <1>LG1TRoHnpOKf, Sizes, Location, Design, SMTT(5)
 <3>9. QED BY ONLY <3>1, <3>2, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, SMTT(5)
<2>6. QED
  BY <2>1, <2>2, <2>5, <1>ANexzJCi63rCwiw, Zenon, Sizes, Location, Design DEF PRelease, RPB_BPEnd, Sizes, Location, Design
\* T2M-END R2M1930_PdRPBPP_PdBPReleaseEffects


<1>ZH1RqkMiAbeOKh73zcKB.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, RPB_BPEnd(i,r)
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>ZH1RqkMiAbeOKh73zcKB, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_j \in DInst, NEW bb_r \in Rq
                 PROVE (ph[bb_j][bb_r] \in {"run", "ovl"} =>
    LET q == rpg[bb_j][bb_r] IN
      /\ q \in Pages /\ NoWriteInto(q)
      /\ \/ ~rhit[bb_j][bb_r] /\ pst[q] = "priv" /\ pr[q] = bb_r /\ pgn[q] = rg[bb_j][bb_r] /\ ptl[q] = NTok(bb_r, rg[bb_j][bb_r]) /\ pvis[q]
         \/ rhit[bb_j][bb_r] /\ pst[q] = "shared" /\ ptl[q] = PS)'
  BY Sizes, Location, Design DEF BaseReadOwnLanded, Sizes, Location, Design
<2>1. BaseReadOwnLanded /\ K8
  BY <1>IXEagMJyQryQes, V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, RPB_Types, BaseSafety, ReadOwnLanded, SealOnlyLanded, SendOwnLanded, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>y0Wijgd5abOu, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ph'[bb_j][bb_r] = ph[bb_j][bb_r] /\ bb_j \in Inst /\ IsD(bb_j)
  BY <1>PsLwx3v04zox, <1>Ey9PneZjpodYR, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ph[bb_j][bb_r] \in {"run","ovl"} => rpg[bb_j][bb_r] \in Pages /\ Loc(rpg[bb_j][bb_r]) = bb_j
  BY <2>1, <2>3, <1>jpdVMc56XFCE, Zenon, Sizes, Location, Design DEF Active, Sizes, Location, Design
<2>5. ph[bb_j][bb_r] \in {"run","ovl"} =>
  pst'[rpg[bb_j][bb_r]] = pst[rpg[bb_j][bb_r]] /\ pr'[rpg[bb_j][bb_r]] = pr[rpg[bb_j][bb_r]]
  /\ pgn'[rpg[bb_j][bb_r]] = pgn[rpg[bb_j][bb_r]]
  BY <2>3, <2>4, <1>PsLwx3v04zox, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>5, Zenon, Sizes, Location, Design DEF BaseReadOwnLanded, NoWriteInto, Writing, InFl, Sizes, Location, Design
\* T2M-END R2M1898_PdRPBPP_PdBPExitLReadOwnLanded

\* T2M-SCOPE R2M1899_PdRPBPP_PdBPExitLSealOnlyLanded

<1>uBDT93OzKsSEz9uZ9PCX2.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, RPB_BPEnd(i,r)
  PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>uBDT93OzKsSEz9uZ9PCX2, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (pst[bb_p] = "shared" => (ptl[bb_p] = PS /\ NoWriteInto(bb_p)))'
  BY Sizes, Location, Design DEF BaseSealOnlyLanded, Sizes, Location, Design
<2>1. BaseSealOnlyLanded
  BY <1>IXEagMJyQryQes, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, RPB_Types, BaseSafety, ReadOwnLanded, SealOnlyLanded, SendOwnLanded, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>y0Wijgd5abOu, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (pst[bb_p] = "shared" => (ptl[bb_p] = PS /\ NoWriteInto(bb_p)))'
  BY <2>1, <2>2, <1>wKDK0szzkoez1, <1>RJG2NNrErZFdrB, <1>Ey9PneZjpodYR, Location, Sizes, SMT, Design DEF InFl, NoWriteInto, BaseSealOnlyLanded, Writing, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF BaseSealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M1899_PdRPBPP_PdBPExitLSealOnlyLanded

\* T2M-SCOPE R2M1900_PdRPBPP_PdBPExitSteps

<1>UsknjwKVV88UzfoXStwRVfN.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE BaseReadOwnLanded'
  BY ONLY <1>UsknjwKVV88UzfoXStwRVfN, Sizes, Location, Design, <1>tQbj7bWWB6xEvmB3, <1>ZH1RqkMiAbeOKh73zcKB DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>E0r1ui6zZ4DOsgXETt6l9icu.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i, r)
  PROVE BaseSealOnlyLanded'
  BY ONLY <1>E0r1ui6zZ4DOsgXETt6l9icu, Sizes, Location, Design, <1>tQbj7bWWB6xEvmB3, <1>uBDT93OzKsSEz9uZ9PCX2 DEF Sizes, Location, Design
\* T2M-END R2M1931_PdRPBPP_PdBPReleaseSteps


<1>u8J9nORb3tQLdN7CSQ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE RP_NoNewStop /\ RP_DReadFrame /\ UNCHANGED xdst
<2> USE ONLY <1>u8J9nORb3tQLdN7CSQ, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rpg \in [Inst -> [Rq -> 0..NP]] /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>u8J9nORb3tQLdN7CSQ, V22_T_hw, V22_T_ph, V22_T_rpg, SMTT(5)

<2>2. K1 /\ K3 BY V21_Inv_K1, V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_NoNewStop, RP_DReadFrame, DInst, PInst, Inst, NL, IsP, IsD, K1, K3, EvidenceAt, PEnd, PRelease, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mnuzYpp05lmrPTnnzNN.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE RP_SharedRead'
 BY ONLY <1>mnuzYpp05lmrPTnnzNN, Sizes, Location, Design, <1>u8J9nORb3tQLdN7CSQ, <1>PtfM7z6NmcjVW9qw5I DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EtLKhI08cON5DZAGT0.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>EtLKhI08cON5DZAGT0, Sizes, Location, Design
<2>1. UNCHANGED xdst BY <1>u8J9nORb3tQLdN7CSQ, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xdst' \in [Xids -> 0..NP] 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>EtLKhI08cON5DZAGT0, <2>1, V22_T_xdst, SMTT(5)

<2>3. QED BY <2>2, <1>GEiwvO5S4Wv9uAOYEb8qtLWYsu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>B5LmvNr8AAK0NmxguHdYrD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE ReadOwnLanded'
 BY ONLY <1>B5LmvNr8AAK0NmxguHdYrD, Sizes, Location, Design, <1>UsknjwKVV88UzfoXStwRVfN, <1>mnuzYpp05lmrPTnnzNN DEF ReadOwnLanded, RP_SharedRead, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wdSQmbHkM67efXc8MPi33bk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE SealOnlyLanded'
 BY ONLY <1>wdSQmbHkM67efXc8MPi33bk, Sizes, Location, Design, <1>E0r1ui6zZ4DOsgXETt6l9icu, <1>EtLKhI08cON5DZAGT0 DEF SealOnlyLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>B5LmvNr8AAK0NmxguHdYrD, <1>wdSQmbHkM67efXc8MPi33bk, <1>l9jBCd0k1i4, <1>Tp7Lz8yeIGl, <1>bbsFS1Lab2t, <1>XFTg9ONi9jmZ, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_PRelease SHA 048cc29ebcfe6067da840651d7a93de5fb663c313618a7387347f7775c89f156
USE DEF ShapeNetFrame
HIDE DEF Part_PRelease_04_02, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K11, V21_Inv_K16, V21_Inv_K17, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_KStruct, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_hw, V22_T_ph, V22_T_rpg, V22_T_xdst
LEMMA ShapeEffect_PRelease ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Design, PRelease(i,r)
 PROVE net'=net
 BY ONLY PRelease(i,r), Sizes, Design, SMTT(5) DEF PRelease, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_PRelease ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Design, IndInv, MessageShape, PRelease(i,r)
 PROVE MessageShape'
 BY ONLY Sizes, Design, PRelease(i,r), MessageShape, ShapeEffect_PRelease, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_PRelease SHA b9288f41e49b3a22777386381ba58018d69857b9cee2111ab7f26bb64ea33283
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_PRelease, ShapeNetFrame
THEOREM DomainKeep_PRelease ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, PRelease(i,r)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, PRelease(i,r), ShapeEffect_PRelease
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_PRelease_05 SHA 59d90200cfac389f77d76dd800ce96c9b221aa2d0aca87dd3e97a4d40539d6b4
USE DEF V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K12, V21_Inv_K14, V21_Inv_K2, V21_Inv_K3, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_PrivateMapOwner, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_STypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_ph, V22_T_rg, V22_T_xdst
HIDE DEF ShapeEffect_PRelease, V21_Inv_MsgXDomain
THEOREM Group_PRelease_05 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE (PrivateMapOwner)' /\ (K1)' /\ (K2)' /\ (K3)' /\ (K12)' /\ (K14)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (GenFiltered)' /\ (OneReply)' /\ (ReplyTruth)' /\ (SharedImmutable)' /\ (EntryQuarantineDisjoint)' /\ (P_B2OffInit)' /\ (MsgXDomain)'
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



<1> HIDE DEF SKXMH9, YoZCNdW, yRiuUrmy, o2PqE, xGwcBEcmY, rd1IZu, SuEEX, XjZJP, csjI5RPR, ZdeEe4zmp3uag, vLn7d, dLu17, NXhXrvU9, i08nRBE, K9XTdyW, JBL3tE9j, vuZd9ejUPGa3lV56, P28Z9h_alpV7bpoxO

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


<1>RSt8sFsMa1wQGON6T0ggGir.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE P28Z9h_alpV7bpoxO
<2> USE ONLY <1>RSt8sFsMa1wQGON6T0ggGir, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>RSt8sFsMa1wQGON6T0ggGir, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF P28Z9h_alpV7bpoxO, Active, PInst, Inst, NL, EvidenceAt, PEnd, PRelease, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design


<1>QhFtRowtAaX90WJRQkMmqnJlX.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE PrivateMapOwner'
 BY ONLY <1>QhFtRowtAaX90WJRQkMmqnJlX, Sizes, Location, Design, <1>RSt8sFsMa1wQGON6T0ggGir, <1>RcA1VC7hI8 DEF Sizes, Location, Design


<1>JXDfQlS2y9KR7Hu9GDxo7nnhieli6NmSu.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE EntryQuarantineDisjoint'
 BY ONLY <1>JXDfQlS2y9KR7Hu9GDxo7nnhieli6NmSu, Sizes, Location, Design, <1>WgHhghZX0y DEF Sizes, Location, Design


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

<1>vopIeNOTDql2dQcjVGnW2rWf.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>vopIeNOTDql2dQcjVGnW2rWf, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>vopIeNOTDql2dQcjVGnW2rWf, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF PRelease, ghV, instV, kV, rtV, xV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mXXraXz8jLrCzXBuS2.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>mXXraXz8jLrCzXBuS2, Sizes, Location, Design, DomainKeep_PRelease, SMTT(5)
\* T2M-END R2M0313_PdPDomain_PRelease


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


<1>ve.        
 K3 /\ UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>> => K3'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, InFl, K3, Sizes, Location, Design
\* T2M-END R2M0332_PdPF_K3


<1>PH.        
 K2 /\ UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>> => K2'
 BY IsaT(10), Sizes, Location, Design DEF ExpInst, ExpPage, InitInst, InitPage, K2, Sizes, Location, Design
\* T2M-END R2M0357_PdPF_K2


<1>ui5.        
 K12 /\ UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>> => K12'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, K12, Sizes, Location, Design
\* T2M-END R2M0362_PdPF_K12


<1>rr9ne18vXWTOQD1H.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, rd, rp, rt, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>rr9ne18vXWTOQD1H, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PRelease, ghV, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Hp85xzr1FO9.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE K1'
<2> USE ONLY <1>Hp85xzr1FO9, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>rr9ne18vXWTOQD1H, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CTuoxprFXVN.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE K2'
<2> USE ONLY <1>CTuoxprFXVN, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>rr9ne18vXWTOQD1H, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nz8pvXA4r4S.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE K3'
<2> USE ONLY <1>nz8pvXA4r4S, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>rr9ne18vXWTOQD1H, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ss8RBazFBVlu.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE K12'
<2> USE ONLY <1>Ss8RBazFBVlu, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>rr9ne18vXWTOQD1H, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RYPzhS3SjCMr.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE K14'
<2> USE ONLY <1>RYPzhS3SjCMr, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>rr9ne18vXWTOQD1H, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pCSbBzLhWyD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE S2'
<2> USE ONLY <1>pCSbBzLhWyD, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>rr9ne18vXWTOQD1H, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jOf2T6EBxRx.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE S3'
<2> USE ONLY <1>jOf2T6EBxRx, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>rr9ne18vXWTOQD1H, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HXAx2expjei.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE S4'
<2> USE ONLY <1>HXAx2expjei, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>rr9ne18vXWTOQD1H, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kYi418aYaupRCD87Ca1y.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>kYi418aYaupRCD87Ca1y, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>rr9ne18vXWTOQD1H, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wnBAgumOAbg6kBmuM.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE OneReply'
<2> USE ONLY <1>wnBAgumOAbg6kBmuM, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>rr9ne18vXWTOQD1H, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VyQNUUjwufM7QvnIXMW.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>VyQNUUjwufM7QvnIXMW, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>rr9ne18vXWTOQD1H, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>h7Mqy0OFmYsS5h8BmY.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRelease(i,r), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>h7Mqy0OFmYsS5h8BmY, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0495_PdPOff_PRelease


<1> QED BY <1>QhFtRowtAaX90WJRQkMmqnJlX, <1>Hp85xzr1FO9, <1>CTuoxprFXVN, <1>nz8pvXA4r4S, <1>Ss8RBazFBVlu, <1>RYPzhS3SjCMr, <1>pCSbBzLhWyD, <1>jOf2T6EBxRx, <1>HXAx2expjei, <1>kYi418aYaupRCD87Ca1y, <1>wnBAgumOAbg6kBmuM, <1>VyQNUUjwufM7QvnIXMW, <1>vopIeNOTDql2dQcjVGnW2rWf, <1>JXDfQlS2y9KR7Hu9GDxo7nnhieli6NmSu, <1>h7Mqy0OFmYsS5h8BmY, <1>mXXraXz8jLrCzXBuS2, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Group_PRelease_01, Part_PRelease_02_01, Part_PRelease_02_02, Part_PRelease_03_01, Part_PRelease_03_02, Part_PRelease_04_01, Part_PRelease_04_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_PRelease
HIDE DEF DomainKeep_PRelease, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K12, V21_Inv_K14, V21_Inv_K2, V21_Inv_K3, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_PrivateMapOwner, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_STypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_ph, V22_T_rg, V22_T_xdst

THEOREM Step_PRelease ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, PRelease(i,r), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, NEW v \in Rq, Sizes, Location, Design, PinInv, PRelease(u,v), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Group_PRelease_01, Part_PRelease_02_01, Part_PRelease_02_02, Part_PRelease_03_01, Part_PRelease_03_02, Part_PRelease_04_01, Part_PRelease_04_02, Group_PRelease_05, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Group_PRelease_01, Part_PRelease_02_01, Part_PRelease_02_02, Part_PRelease_03_01, Part_PRelease_03_02, Part_PRelease_04_01, Part_PRelease_04_02, Group_PRelease_05, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, PRelease(i,r), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, PRelease(i,r), ShapeKeep_PRelease, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
