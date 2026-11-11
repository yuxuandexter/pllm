---- MODULE PdActionSlice_PSentFail_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_d3dd8b4090431094, PdFinalAuxType_73d97f5a6965eefe, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PSentFail_01

\* Complete original body PdFinalPart_PSentFail_02_02 SHA af2819ce907fc2d38a600989cc5f45b0c2d601641a073d5d733280794eb2e8ac
HIDE DEF AuxType_73d97f5a6965eefe, AuxType_d3dd8b4090431094, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_PSentFail_01_01, Part_PSentFail_01_02, Part_PSentFail_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K6, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hp, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_plt, V22_T_pqp, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_PSentFail_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE (P_SI5)' /\ (P_SI2)' /\ (SendOwnLanded)' /\ (NoEvictUnderRDMA)'
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


           EExit(i,r,h) == IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"} /\ PEnd(i,r,h) /\ UNCHANGED gbad


           ECancel(i,r) == ph[i][r] = "reg"


           ELed(i,r) == IF ECancel(i,r) THEN led[rpg[i][r]] \ {rx[i][r]} ELSE led[rpg[i][r]]


           EState(i,r,h) == IF ELed(i,r) = {} /\ sled[rpg[i][r]] = {}
                           THEN IF KPinned(rpg[i][r]) THEN "drain" ELSE "free"
                           ELSE IF h = "timeout" /\ ELed(i,r) # {} THEN "quar" ELSE "drain"

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

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_NewFlyFromReg, RP_SharedSend, RP_RecordProgress, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, EExit, ECancel, ELed, EState, RP_RecordReady, RP_NoneFrame, RP_NoNewStop, RP_DReadFrame, RP2_NoNewReg, RP2_StoppedHeldBack, RP2_PrivatePhaseStep, RP2_SI5Q, RP2_SI5D, RP2_SI5P, RP2_DHeldBack, RP2_StopBack, RP_QSnapshot

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


<1>qPZDucbf6KcjKTogXVwFy.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE UNCHANGED <<xsrc,xr,xg>> /\ RP_NewFlyFromReg
<2> USE ONLY <1>qPZDucbf6KcjKTogXVwFy, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>qPZDucbf6KcjKTogXVwFy, V22_T_hw, SMTT(5)

<2>2. QED BY <2>1, Design, SMTT(10), Sizes, Location DEF RP_NewFlyFromReg, EvidenceAt, PEnd, PSentFail, PSentFailBroken, PSentFailSafe, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wthtYxNBH3FrkouwuLzvDb.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE NoEvictUnderRDMA' /\ RP_SharedSend'
 BY ONLY <1>wthtYxNBH3FrkouwuLzvDb, Sizes, Location, Design, <1>qPZDucbf6KcjKTogXVwFy, <1>fCaVnnRiNeSrXN4lcQ3A DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iib7kWUkJoTqyeer6Q2Ib5rc0h.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>iib7kWUkJoTqyeer6Q2Ib5rc0h, Sizes, Location, Design, <1>wthtYxNBH3FrkouwuLzvDb DEF Sizes, Location, Design
\* T2M-END R2M1404_PdRPAccess_PSentFail


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


<1>ZRXuoOajZXl5IvusE3byq4PC.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>ZRXuoOajZXl5IvusE3byq4PC, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ZRXuoOajZXl5IvusE3byq4PC, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, PEnd, PSentFail, PSentFailBroken, PSentFailSafe, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ry8A45uvDruokeDnDCIpT.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE HitIdentity'
 BY ONLY <1>Ry8A45uvDruokeDnDCIpT, Sizes, Location, Design, <1>ZRXuoOajZXl5IvusE3byq4PC, <1>UbRyVd7pIbH8AblyNEO DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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

<1>DqPcfGr.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, EExit(i,r,h)
 PROVE UNCHANGED <<rtV,instV,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,xst,nx,drep,crep,dsucc,gbad>>
 BY ONLY <1>DqPcfGr, Sizes, Location, Design, ZenonT(10) DEF EExit, PEnd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Igs7TOaR.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
       /\ (ECancel(i,r) => rx[i][r] \in Xids /\ rx[i][r] < nx /\ iv[rx[i][r]] = "reg" /\ xk[rx[i][r]] = "wr"
                          /\ xsrc[rx[i][r]] = rpg[i][r] /\ xr[rx[i][r]] = r /\ xg[rx[i][r]] = rg[i][r])
<2> USE ONLY <1>Igs7TOaR, Sizes, Location, Design
 <2>1. K8 /\ K7 /\ K1 /\ K3 /\ IsP(i) /\ Active(i,r)
  BY SMTT(5), V21_Inv_K1, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF EExit, Sizes, Location, Design
 <2>2. dlzHJ(i,r)
  BY <2>1, <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF dlzHJ, Active, OwnedBy, Sizes, Location, Design
 <2>4. Zzz7b(rpg[i][r])
  BY <2>1, <2>3, <1>gfplo, Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, SMTT(5), Sizes, Location, Design DEF Zzz7b, dlzHJ, K1, K3, ECancel, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aqUWBvC1.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ iv' = IF ECancel(i,r) THEN [iv EXCEPT ![rx[i][r]] = "nopost"] ELSE iv
       /\ PageTo(rpg[i][r],EState(i,r,h),rpe[i][r],ELed(i,r),sled[rpg[i][r]])
       /\ net' = net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)}
          \cup (IF ECancel(i,r) THEN {Msg("nopost",i,xd[rx[i][r]],r,xg[rx[i][r]],rx[i][r],0,0,FALSE)} ELSE {})
<2> USE ONLY <1>aqUWBvC1, Sizes, Location, Design
 <2>1. ECancel(i,r) => rx[i][r] \in Xids /\ iv[rx[i][r]] = "reg" /\ xk[rx[i][r]] = "wr"
  BY <1>Igs7TOaR, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED
  BY <2>1, Design, SMTT(5), Sizes, Location DEF EExit, PEnd, ECancel, ELed, EState, GiveUpToN, PinBlocks, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ko9N.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A y \in Xids : iv'[y] = IF ECancel(i,r) /\ y=rx[i][r] THEN "nopost" ELSE iv[y]
<2> USE ONLY <1>Ko9N, Sizes, Location, Design
 <2>1. fr1A BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF fr1A, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Y6cekk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : pst'[q] = IF q = rpg[i][r] THEN (EState(i,r,h)) ELSE pst[q]
<2> USE ONLY <1>Y6cekk, Sizes, Location, Design
 <2>1. OyyWS BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, OyyWS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ql3Fd6.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : led'[q] = IF q = rpg[i][r] THEN (IF EState(i,r,h) = "free" THEN {} ELSE ELed(i,r)) ELSE led[q]
<2> USE ONLY <1>ql3Fd6, Sizes, Location, Design
 <2>1. dcfPK BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>v9Y37SJ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE EExit(i,r,"timeout")
<2> USE ONLY <1>v9Y37SJ, Sizes, Location, Design
 <2>1. IsP(i) /\ ph[i][r] = "sent" /\ UNCHANGED gbad
  BY ZenonT(5), Sizes, Location, Design DEF PSentFail, ghV, PSentFailSafe, PSentFailBroken, Sizes, Location, Design
 <2>2. PEnd(i,r,"timeout")
  BY <2>1, Design, SMTT(5), Sizes, Location DEF PSentFail, PEnd, GiveUpTo, GiveUpToN, ghV, xV, PSentFailSafe, PSentFailBroken, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, ZenonT(5), Sizes, Location, Design DEF EExit, Active, Sizes, Location, Design
\* T2M-END R2M1490_PdRPPP_PdEExitBridges


<1>p4Rjn.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE K4'
<2> USE ONLY <1>p4Rjn, Sizes, Location, Design
<2> HIDE DEF K2, K4, K8, ECancel, ELed, EState, ExpPage, InitPage, ExpInst
<2>old. K4 /\ K2 /\ K8 /\ nx \in Int
 BY ONLY <1>p4Rjn, V21_Inv_K4, V21_Inv_K2, V21_Inv_K8, V22_T_nx, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<nx,xdst,xk,xsrc,xst>>
 BY ONLY <1>p4Rjn, <1>DqPcfGr, Sizes, Location, Design, SMTT(5)
<2>action. IsP(i) /\ Active(i,r)
 BY ONLY <1>p4Rjn, SMTT(5) DEF EExit
<2>pre. /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r])=i /\ rpe[i][r] \in DInst
 /\ (ECancel(i,r) => rx[i][r] \in Xids /\ rx[i][r] < nx /\ iv[rx[i][r]]="reg" /\ xk[rx[i][r]]="wr"
                    /\ xsrc[rx[i][r]]=rpg[i][r] /\ xr[rx[i][r]]=r /\ xg[rx[i][r]]=rg[i][r])
 BY ONLY <1>p4Rjn, <1>Igs7TOaR, Sizes, Location, Design, SMTT(5)
<2>route. ECancel(i,r) => hd[r][rg[i][r]]=rpe[i][r]
 BY ONLY <1>p4Rjn, <2>old, <2>action, SMTT(5) DEF K8, ECancel, IsP
<2>cancel. ECancel(i,r) => InitPage(rx[i][r])=rpg[i][r] /\ ExpPage(rx[i][r]) # rpg[i][r]
 BY ONLY <1>p4Rjn, <2>old, <2>pre, <2>route, <2>action, Sizes, SMTT(5)
 DEF K2, InitPage, ExpPage, ExpInst, IsP, PInst, DInst, NL, Xids, Sizes
<2>pages. \A y \in Xids : y < nx => ExpPage(y) \in Pages
 BY ONLY <2>old, Sizes, SMTT(5) DEF K2, Xids, Sizes
<2>led. \A p \in Pages : led'[p]=IF p=rpg[i][r] THEN ELed(i,r) ELSE led[p]
 BY ONLY <1>p4Rjn, <1>ql3Fd6, Sizes, Location, Design, SMTT(5) DEF EState
<2>mem. \A p \in Pages : \A y \in Xids :
 (y \in led'[p]) <=> (y \in led[p] /\ ~(ECancel(i,r) /\ p=rpg[i][r] /\ y=rx[i][r]))
 BY ONLY <2>led, SMTT(5) DEF ELed
<2>subset. \A p \in Pages : led'[p] \subseteq led[p]
 BY ONLY <2>led, SMTT(5) DEF ELed
<2>iv. \A y \in Xids : iv'[y]=IF ECancel(i,r) /\ y=rx[i][r] THEN "nopost" ELSE iv[y]
 BY ONLY <1>p4Rjn, <1>Ko9N, Sizes, Location, Design, SMTT(5)
<2>exposer. \A y \in Xids : y < nx => ((y \in led'[ExpPage(y)]) <=> (xst'[y]="posted"))
 BY ONLY <2>old, <2>frame, <2>pages, <2>mem, <2>cancel, SMTT(5) DEF K4
<2>initiator. \A y \in Xids : y < nx /\ InitPage(y) \in Pages =>
 ((y \in led'[InitPage(y)]) <=> (iv'[y] \in {"reg","posted","failret"}))
 BY ONLY <2>old, <2>mem, <2>iv, <2>cancel, SMTT(5) DEF K4
<2>back. \A p \in Pages : \A y \in led'[p] : y < nx /\ (p=ExpPage(y) \/ p=InitPage(y))
 BY ONLY <2>old, <2>subset, SMTT(5) DEF K4
<2>qed. QED BY ONLY <2>exposer, <2>initiator, <2>back, <2>frame, SMTT(5) DEF K4, ExpPage, InitPage
\* T2M-END R2M1506_PdRPPP_PdEExit_K4

\* T2M-SCOPE R2M1508_PdRPPP_PdEExit_K5

<1>qGVJafvCg.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE K4'
 BY ONLY <1>qGVJafvCg, Sizes, Location, Design, <1>v9Y37SJ, <1>p4Rjn, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1729_PdRPPP_PdE_PSentFail_K4

\* T2M-SCOPE R2M1730_PdRPPP_PdE_PSentFail_K5

<1>J88d04o7HQUQG.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A y \in led[rpg[i][r]] : iv[y] = "reg" => ECancel(i,r) /\ y=rx[i][r]
<2> USE ONLY <1>J88d04o7HQUQG, Sizes, Location, Design
 <2>1. K8 /\ K2 /\ K3 /\ K4 /\ K5 /\ S2 /\ dcfPK /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K8, V21_Inv_S2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. dlzHJ(i,r) /\ IsP(i) /\ Active(i,r)
  BY <2>1, <1>QMrZB, Sizes, Location, Design DEF EExit, Sizes, Location, Design
 <2>3. rpg[i][r] \in Pages /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
  BY <1>Igs7TOaR, Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. SUFFICES ASSUME NEW y \in led[rpg[i][r]], iv[y] = "reg" PROVE ECancel(i,r) /\ y=rx[i][r]
  BY SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. y \in Xids /\ y < nx /\ xr[y] = r /\ xg[y] = rg[i][r] /\ xk[y] = "wr"
  BY <2>1, <2>3, <2>4, SMTT(5), Sizes, Location, Design DEF K3, K4, K5, OwnedBy, dcfPK, Sizes, Location, Design
 <2>6. ph[i][r] \in {"reg","sent","exp"} /\ rx[i][r] \in Xids /\ rx[i][r] < nx
        /\ xr[rx[i][r]] = r /\ xg[rx[i][r]] = rg[i][r]
  BY <2>2, <2>4, SMTT(5), Sizes, Location, Design DEF dlzHJ, Active, Sizes, Location, Design
 <2>7. y=rx[i][r]
  BY <2>1, <2>5, <2>6, SMTT(5), Sizes, Location, Design DEF S2, Sizes, Location, Design
 <2>8. Mode = "push"
  BY <2>1, <2>5, Sizes, Design, SMTT(5), Location DEF K2, SHJS, Xids, Sizes, Location, Design
 <2>9. QED BY <2>2, <2>4, <2>6, <2>7, <2>8, SMTT(5), Sizes, Location, Design DEF dlzHJ, ECancel, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Vu9UdvfJZErg.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE QuarNoReg'
<2> USE ONLY <1>Vu9UdvfJZErg, Sizes, Location, Design
 <2>1. QuarNoReg /\ dcfPK BY <1>UwwC5LVwQr, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, Sizes, Location, Design
 <2>2. \A q \in Pages : led'[q] \subseteq led[q]
  BY <1>ql3Fd6, SMTT(5), Sizes, Location, Design DEF ELed, Sizes, Location, Design
 <2>3. \A y \in led'[rpg[i][r]] : iv'[y] # "reg"
  BY <2>1, <2>2, <1>J88d04o7HQUQG, <1>Igs7TOaR, <1>ql3Fd6, <1>Ko9N, SMTT(5), Sizes, Location, Design DEF ELed, EState, dcfPK, Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, <1>Y6cekk, <1>Ko9N, SMTT(5), Sizes, Location, Design DEF QuarNoReg, dcfPK, Sizes, Location, Design
\* T2M-END R2M1522_PdRPPP_PdEExit_QuarNoReg


<1>MvWxNkMoUUf73St9.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE QuarNoReg'
 BY ONLY <1>MvWxNkMoUUf73St9, Sizes, Location, Design, <1>v9Y37SJ, <1>Vu9UdvfJZErg, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1736_PdRPPP_PdE_PSentFail_QuarNoReg


<1>BP7ygSka2fz.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
  PROVE K4'
  BY ONLY <1>BP7ygSka2fz, Sizes, Location, Design, <1>qGVJafvCg, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RpnE6kvyM6buVNHb2Z.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>RpnE6kvyM6buVNHb2Z, Sizes, Location, Design, <1>MvWxNkMoUUf73St9, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1737_PdRPPdPAgg_PSentFail


<1>aptptV7DDeQDDJPShLBEK1D.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE UNCHANGED gen /\ RP_RecordReady /\ RP_NoneFrame
<2> USE ONLY <1>aptptV7DDeQDDJPShLBEK1D, Sizes, Location, Design
<2>1. B2 => \A j \in PInst,u \in Rq : ph[j][u] \in {"reg","sent","exp"} => SSendReady(j,u)
 BY ONLY <1>aptptV7DDeQDDJPShLBEK1D, Sizes, Location, Design, V21_Inv_P_SI1 DEF P_SI1, SI1, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>aptptV7DDeQDDJPShLBEK1D, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_RecordReady, RP_NoneFrame, PInst, Inst, NL, EvidenceAt, PEnd, PSentFail, PSentFailBroken, PSentFailSafe, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gbQIouqx69WSspdCjDpG.        
  BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>> => BaseSendOwnLanded'
  BY SMTT(5), Sizes, Location, Design DEF BaseSendOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GR5rReKRLtRLG7Ni.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PSentFail(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>GR5rReKRLtRLG7Ni, Sizes, Location, Design, Zenon DEF PSentFail, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, PSentFailSafe, PSentFailBroken, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ot0sOvfMA22Qp3zrOL0Cz40g.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>Ot0sOvfMA22Qp3zrOL0Cz40g, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>>
  BY <1>GR5rReKRLtRLG7Ni, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, ReadOwnLanded, SealOnlyLanded, SendOwnLanded, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>gbQIouqx69WSspdCjDpG, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1942_PdRPBPP_PdPSentFailFrames


<1>DxkNe0CrfqYJjDrWn2h.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE RP_NoNewStop /\ RP_DReadFrame /\ UNCHANGED xdst
<2> USE ONLY <1>DxkNe0CrfqYJjDrWn2h, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rpg \in [Inst -> [Rq -> 0..NP]] /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>DxkNe0CrfqYJjDrWn2h, V22_T_hw, V22_T_ph, V22_T_rpg, SMTT(5)

<2>2. K1 /\ K3 BY V21_Inv_K1, V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>1. UNCHANGED <<hw, xdst, rpg>> /\ ph' = [ph EXCEPT ![i][r] = "end"] /\ IsP(i)
  BY ONLY <1>DxkNe0CrfqYJjDrWn2h, SMTT(10) DEF PSentFail, PSentFailBroken, PSentFailSafe, xV
 <3>2. \A j \in DInst : j \in Inst /\ j # i
  BY ONLY <3>1, Sizes, SMTT(10) DEF DInst, Inst, NL, IsP, Sizes
 <3>3. QED BY ONLY <2>1, <3>1, <3>2, SMTT(10) DEF RP_NoNewStop, RP_DReadFrame

\* T2M-LOCAL-VISIBILITY

<1>ajsZFRWjHZaESx07oM2VFtd.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE SendOwnLanded'
 BY ONLY <1>ajsZFRWjHZaESx07oM2VFtd, Sizes, Location, Design, <1>Ot0sOvfMA22Qp3zrOL0Cz40g, <1>wthtYxNBH3FrkouwuLzvDb DEF SendOwnLanded, RP_SharedSend, Sizes, Location, Design
\* T2M-END R2M1944_PdRPSafety_PSentFail


<1>oF0iUOafYDdT7u6.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE K4'
 BY ONLY <1>oF0iUOafYDdT7u6, Sizes, Location, Design, <1>BP7ygSka2fz DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nrGvFwCNTzT4oAUZbBMVUt.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>nrGvFwCNTzT4oAUZbBMVUt, Sizes, Location, Design, <1>RpnE6kvyM6buVNHb2Z DEF Sizes, Location, Design

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


<1>yWxtfkq8cstZfwvQWQxqRILs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE UNCHANGED <<xsrc,xr,xg,xk,nx,xdst>> /\ RP2_NoNewReg /\ RP2_PrivatePhaseStep
<2> USE ONLY <1>yWxtfkq8cstZfwvQWQxqRILs, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ iv \in [Xids -> {"none","reg","posted","failret","cqe","nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>yWxtfkq8cstZfwvQWQxqRILs, V22_T_iv, V22_T_ph, SMTT(5)

<2>2. UNCHANGED <<xsrc,xr,xg,xk,nx,xdst>>
 BY Design, ZenonT(10), Sizes, Location DEF EvidenceAt, PEnd, PSentFail, PSentFailBroken, PSentFailSafe, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>3. RP2_NoNewReg
 BY <2>1, Design, SMTT(10), Sizes, Location DEF RP2_NoNewReg, EvidenceAt, PEnd, PSentFail, PSentFailBroken, PSentFailSafe, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. RP2_PrivatePhaseStep
 BY <2>1, Design, Sizes, SMTT(10), Location DEF RP2_PrivatePhaseStep, Active, Inst, PInst, NL, EvidenceAt, PEnd, PSentFail, PSentFailBroken, PSentFailSafe, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>5. QED BY <2>2, <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QHWCarWOTL1eBeI8cOCuc3jJNH.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE RP2_StoppedHeldBack
<2> USE ONLY <1>QHWCarWOTL1eBeI8cOCuc3jJNH, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 /\ hw \in [Xids -> {"none","fly","issued","stop"}] /\ hok \in [Xids -> BOOLEAN]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>QHWCarWOTL1eBeI8cOCuc3jJNH, V22_T_hok, V22_T_hw, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>15. \A q \in Pages : Loc(q) \in Int
 BY Location, Sizes, SMTT(10), Design DEF KPages, Inst, NL, Sizes, Location, Design
<2>2. \A j \in Inst,u \in Rq : Active(j,u) => rpg[j][u] \in Pages /\ Loc(rpg[j][u])=j
 BY SMTT(10), V21_Inv_K8, Sizes, Location, Design DEF K8, Sizes, Location, Design
<2>3. RP2_DHeldBack
 BY <2>1, <2>15, <2>2,  Design, Sizes, SMTT(10), Location DEF RP2_DHeldBack, IsP, IsD, Active, Inst, NL, AfterEv, EvidenceAt, PEnd, PSentFail, PSentFailBroken, PSentFailSafe, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. RP2_StopBack
 BY <2>1, Design, SMTT(10), Sizes, Location DEF RP2_StopBack, EvidenceAt, PEnd, PSentFail, PSentFailBroken, PSentFailSafe, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>5. UNCHANGED <<xdst,xr,xg>>
 BY Design, ZenonT(10), Sizes, Location DEF EvidenceAt, PEnd, PSentFail, PSentFailBroken, PSentFailSafe, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>6. QED BY <2>3, <2>4, <2>5, <1>IKXZRHRBF2l7ZlEB9jY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AZVSgg3g60emKU.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE P_SI5'
 BY ONLY <1>AZVSgg3g60emKU, Sizes, Location, Design, <1>yWxtfkq8cstZfwvQWQxqRILs, <1>QHWCarWOTL1eBeI8cOCuc3jJNH, <1>DxkNe0CrfqYJjDrWn2h, <1>ZRXuoOajZXl5IvusE3byq4PC,
    <1>oF0iUOafYDdT7u6, <1>nrGvFwCNTzT4oAUZbBMVUt, <1>dKRaSSpacKjf DEF Sizes, Location, Design
\* T2M-END R2M1946_PdRPR2SI5_PSentFail


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


<1>KwDY4wMgYHg7s.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE P_SI2'
 BY ONLY <1>KwDY4wMgYHg7s, Sizes, Location, Design, <1>aptptV7DDeQDDJPShLBEK1D, <1>Ry8A45uvDruokeDnDCIpT, <1>wthtYxNBH3FrkouwuLzvDb, <1>qPZDucbf6KcjKTogXVwFy, <1>AnajBeZS7htcLkTpZ8C91mxOHTa, <1>jNTupquvAyD DEF Sizes, Location, Design
\* T2M-END R2M2079_PdRPSI2_PSentFail


<1> QED BY <1>AZVSgg3g60emKU, <1>KwDY4wMgYHg7s, <1>ajsZFRWjHZaESx07oM2VFtd, <1>iib7kWUkJoTqyeer6Q2Ib5rc0h, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PSentFail_03_01 SHA 4bfe5e0558c230a537a135fae2aa736239884b2dcd691ed99f49d1e053705e12
USE DEF V21_Inv_K16, V21_Inv_K6, V21_Inv_K9, V21_Inv_P_SI3, V21_Inv_S1, V21_SFollowOff
HIDE DEF Part_PSentFail_02_02, V21_Inv_HitIdentity, V21_Inv_KStruct, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI5, V21_Inv_ReadOwnLanded, V21_Inv_SI7, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V22_SF_Off, V22_T_hok, V22_T_hw, V22_T_iv, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_pr, V22_T_pst, V22_T_rg, V22_T_rpg, V22_T_xsrcP, V22_T_xsrcS
THEOREM Part_PSentFail_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE (K7)' /\ (K8)' /\ (K9)' /\ (SharedLedRef)' /\ (K16)' /\ (K6)' /\ (K5)' /\ (QuarNoReg)' /\ (P_SI3)' /\ (S1)'
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


           EExit(i,r,h) == IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"} /\ PEnd(i,r,h) /\ UNCHANGED gbad


           ECancel(i,r) == ph[i][r] = "reg"


           ELed(i,r) == IF ECancel(i,r) THEN led[rpg[i][r]] \ {rx[i][r]} ELSE led[rpg[i][r]]


           EState(i,r,h) == IF ELed(i,r) = {} /\ sled[rpg[i][r]] = {}
                           THEN IF KPinned(rpg[i][r]) THEN "drain" ELSE "free"
                           ELSE IF h = "timeout" /\ ELed(i,r) # {} THEN "quar" ELSE "drain"

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, EExit, ECancel, ELed, EState

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


<1>M5S5pH4Bwlav9Sdr.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>M5S5pH4Bwlav9Sdr, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PSentFail, PSentFailBroken, PSentFailSafe, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UBatrMo9306k0.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE P_SI3'
 BY ONLY <1>UBatrMo9306k0, Sizes, Location, Design, <1>M5S5pH4Bwlav9Sdr, <1>uWXN2TjAdAz DEF Sizes, Location, Design

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


<1>czympVdrol8b0czwmrCUJM.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE SharedLedRef'
 BY ONLY <1>czympVdrol8b0czwmrCUJM, Sizes, Location, Design, <1>M5S5pH4Bwlav9Sdr, <1>xOtqg6YRsioevxRntvd4 DEF Sizes, Location, Design

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

<1>l670nYkxIa09.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PSentFail(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>l670nYkxIa09, Sizes, Location, Design, Zenon DEF PSentFail, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, PSentFailSafe, PSentFailBroken, Sizes, Location, Design
\* T2M-END R2M1719_PdRPPP_PdPSentFailFrames

\* T2M-SCOPE R2M1720_PdRPPP_PdCell_PSentFail_K17

<1>VDPjiqz4Z.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
  PROVE S1'
<2> USE ONLY <1>VDPjiqz4Z, Sizes, Location, Design
<2>1. S1 /\ AydA
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_S1, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<rg,rx,xp,xd,xk,xr,xg,nx,xsrc,xdst>>
  BY <1>l670nYkxIa09, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A a \in Inst, u \in Rq :
           /\ (ph[a][u] # "none" => ph'[a][u] # "none")
           /\ (Active(a,u)' => Active(a,u))
           /\ (ph'[a][u] \in {"run","ovl"} => ph[a][u] \in {"run","ovl"})
  BY <2>1, SMTT(10), Sizes, Location, Design DEF Active, PSentFail, AydA, ghV, instV, kV, recV, rtV, xV, PSentFailSafe, PSentFailBroken, Sizes, Location, Design
<2>4. \A x \in Xids : x < nx => ExpInst(x) \in Inst /\ InitInst(x) \in Inst /\ xr[x] \in Rq
  BY <1>vV6hlhMGns5ALTe, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, <1>tgx9Q, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1721_PdRPPP_PdCell_PSentFail_S1

\* T2M-SCOPE R2M1722_PdRPPP_PdCell_PSentFail_S5

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

<1>HzDmJ6cCSS2.        
  ASSUME NEW i \in Inst, NEW r \in Rq, NEW j \in Inst, NEW s \in Rq,
         K8, IsP(i), Active(i,r)
  PROVE (Active(j,s) /\ rpg[j][s] = rpg[i][r]) => j=i /\ s=r
<2> USE ONLY <1>HzDmJ6cCSS2, Sizes, Location, Design
<2>1. dlzHJ(i,r) /\ dlzHJ(j,s)
  BY <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Loc(rpg[i][r]) = i /\ pr[rpg[i][r]] = r
  BY <2>1, Zenon, Sizes, Location, Design DEF dlzHJ, OwnedBy, Sizes, Location, Design
<2>3. (Active(j,s) /\ rpg[j][s] = rpg[i][r]) => j=i
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Zenon, Sizes, Location, Design DEF dlzHJ, OwnedBy, Sizes, Location, Design

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

<1>DqPcfGr.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, EExit(i,r,h)
 PROVE UNCHANGED <<rtV,instV,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,xst,nx,drep,crep,dsucc,gbad>>
 BY ONLY <1>DqPcfGr, Sizes, Location, Design, ZenonT(10) DEF EExit, PEnd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Igs7TOaR.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
       /\ (ECancel(i,r) => rx[i][r] \in Xids /\ rx[i][r] < nx /\ iv[rx[i][r]] = "reg" /\ xk[rx[i][r]] = "wr"
                          /\ xsrc[rx[i][r]] = rpg[i][r] /\ xr[rx[i][r]] = r /\ xg[rx[i][r]] = rg[i][r])
<2> USE ONLY <1>Igs7TOaR, Sizes, Location, Design
 <2>1. K8 /\ K7 /\ K1 /\ K3 /\ IsP(i) /\ Active(i,r)
  BY SMTT(5), V21_Inv_K1, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF EExit, Sizes, Location, Design
 <2>2. dlzHJ(i,r)
  BY <2>1, <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF dlzHJ, Active, OwnedBy, Sizes, Location, Design
 <2>4. Zzz7b(rpg[i][r])
  BY <2>1, <2>3, <1>gfplo, Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, SMTT(5), Sizes, Location, Design DEF Zzz7b, dlzHJ, K1, K3, ECancel, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aqUWBvC1.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ iv' = IF ECancel(i,r) THEN [iv EXCEPT ![rx[i][r]] = "nopost"] ELSE iv
       /\ PageTo(rpg[i][r],EState(i,r,h),rpe[i][r],ELed(i,r),sled[rpg[i][r]])
       /\ net' = net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)}
          \cup (IF ECancel(i,r) THEN {Msg("nopost",i,xd[rx[i][r]],r,xg[rx[i][r]],rx[i][r],0,0,FALSE)} ELSE {})
<2> USE ONLY <1>aqUWBvC1, Sizes, Location, Design
 <2>1. ECancel(i,r) => rx[i][r] \in Xids /\ iv[rx[i][r]] = "reg" /\ xk[rx[i][r]] = "wr"
  BY <1>Igs7TOaR, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED
  BY <2>1, Design, SMTT(5), Sizes, Location DEF EExit, PEnd, ECancel, ELed, EState, GiveUpToN, PinBlocks, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>L6zZjgr.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A j \in Inst, u \in Rq :
   /\ ph'[j][u] = IF j=i /\ u=r THEN "end" ELSE ph[j][u]
   /\ (Active(j,u)' => Active(j,u) /\ ph'[j][u] = ph[j][u])
   /\ (ph'[j][u] \in {"run","ovl"} <=> ph[j][u] \in {"run","ovl"})
<2> USE ONLY <1>L6zZjgr, Sizes, Location, Design
 <2>1. AydA /\ IsP(i) /\ K8
  BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, EExit, Sizes, Location, Design
 <2>2. ph[i][r] \notin {"run","ovl"}
  BY <2>1, SMTT(5), Sizes, Location, Design DEF K8, Sizes, Location, Design
 <2>3. QED
  BY <2>1, <2>2, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF AydA, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ko9N.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A y \in Xids : iv'[y] = IF ECancel(i,r) /\ y=rx[i][r] THEN "nopost" ELSE iv[y]
<2> USE ONLY <1>Ko9N, Sizes, Location, Design
 <2>1. fr1A BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF fr1A, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Y6cekk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : pst'[q] = IF q = rpg[i][r] THEN (EState(i,r,h)) ELSE pst[q]
<2> USE ONLY <1>Y6cekk, Sizes, Location, Design
 <2>1. OyyWS BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, OyyWS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Fl6OF.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : pr'[q] = IF q = rpg[i][r] THEN (IF EState(i,r,h) = "free" THEN 0 ELSE pr[q]) ELSE pr[q]
<2> USE ONLY <1>Fl6OF, Sizes, Location, Design
 <2>1. IwCp BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, IwCp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EaLpCQ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : pgn'[q] = IF q = rpg[i][r] THEN (IF EState(i,r,h) = "free" THEN 0 ELSE pgn[q]) ELSE pgn[q]
<2> USE ONLY <1>EaLpCQ, Sizes, Location, Design
 <2>1. vS7em BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, vS7em, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZMaKVj.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : plt'[q] = IF q = rpg[i][r] THEN (IF EState(i,r,h) = "free" THEN 0 ELSE plt[q]) ELSE plt[q]
<2> USE ONLY <1>ZMaKVj, Sizes, Location, Design
 <2>1. bFwlN BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, bFwlN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ql3Fd6.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : led'[q] = IF q = rpg[i][r] THEN (IF EState(i,r,h) = "free" THEN {} ELSE ELed(i,r)) ELSE led[q]
<2> USE ONLY <1>ql3Fd6, Sizes, Location, Design
 <2>1. dcfPK BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lexbQIQ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : sled'[q] = IF q = rpg[i][r] THEN (IF EState(i,r,h) = "free" THEN {} ELSE sled[q]) ELSE sled[q]
<2> USE ONLY <1>lexbQIQ, Sizes, Location, Design
 <2>1. h9WLgd BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, h9WLgd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dlZsJxaf.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : prefc'[q] = IF q = rpg[i][r] THEN (IF EState(i,r,h) = "free" THEN 0 ELSE prefc[q]) ELSE prefc[q]
<2> USE ONLY <1>dlZsJxaf, Sizes, Location, Design
 <2>1. p1YmMe5 BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, p1YmMe5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uSNzjM.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : pqp'[q] = IF q = rpg[i][r] THEN (IF EState(i,r,h) = "quar" THEN rpe[i][r] ELSE IF EState(i,r,h) = "free" THEN 0 ELSE pqp[q]) ELSE pqp[q]
<2> USE ONLY <1>uSNzjM, Sizes, Location, Design
 <2>1. vRZWI BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, vRZWI, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jUyRMszR6M4WWR.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE /\ \A q \in Pages : UNCHANGED <<KPinned(q),NHits(q)>>
       /\ \A j \in Inst, u \in Rq : Maps(j,u,rpg[i][r])' => FALSE
<2> USE ONLY <1>jUyRMszR6M4WWR, Sizes, Location, Design
 <2>1. UNCHANGED <<kpin,krs,rpg,rhit>>
  BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF instV, kV, Sizes, Location, Design
 <2>2. K8 /\ IsP(i) /\ Active(i,r)
  BY SMTT(5), V21_Inv_K8, Sizes, Location, Design DEF EExit, Sizes, Location, Design
 <2>3. \A j \in Inst, u \in Rq : (Active(j,u) /\ rpg[j][u] = rpg[i][r]) => j=i /\ u=r
  BY <2>2, <1>HzDmJ6cCSS2, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. \A q \in Pages :
  {u \in Rq : ph'[Loc(q)][u] \in {"run","ovl"} /\ rhit'[Loc(q)][u] /\ rpg'[Loc(q)][u] = q}
  = {u \in Rq : ph[Loc(q)][u] \in {"run","ovl"} /\ rhit[Loc(q)][u] /\ rpg[Loc(q)][u] = q}
  BY <2>1, <1>L6zZjgr, Location, SMTT(5), Sizes, Design DEF KPages, Sizes, Location, Design
 <2>5. QED
  BY <2>1, <2>3, <2>4, <1>L6zZjgr, SMTT(5), Sizes, Location, Design DEF KPinned, NHits, Maps, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hfsAsK73.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE /\ \A j \in DInst, u \in Rq : ph'[j][u] = ph[j][u]
       /\ \A q \in Pages : IsD(Loc(q)) =>
          pst'[q] = pst[q] /\ pr'[q] = pr[q] /\ pgn'[q] = pgn[q] /\ plt'[q] = plt[q] /\ led'[q] = led[q]
<2> USE ONLY <1>hfsAsK73, Sizes, Location, Design
 <2>1. Loc(rpg[i][r]) = i /\ IsP(i)
  BY <1>Igs7TOaR, Sizes, Location, Design DEF EExit, Sizes, Location, Design
 <2>2. QED
  BY <2>1, <1>L6zZjgr, <1>Y6cekk, <1>Fl6OF, <1>EaLpCQ, <1>ZMaKVj, <1>ql3Fd6,
     Sizes, SMTT(5), Location, Design DEF IsP, IsD, PInst, DInst, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jqCbNgps9xy.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : (led'[q] # {} \/ sfly[q] # {} \/ KPinned(q)) =>
       pst'[q] \in {pst[q],"drain","quar"} /\ pr'[q] = pr[q] /\ pgn'[q] = pgn[q] /\ plt'[q] = plt[q]
<2> USE ONLY <1>jqCbNgps9xy, Sizes, Location, Design
 <2>1. K6 /\ rpg[i][r] \in Pages
  BY <1>Igs7TOaR, V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED
  BY <2>1, <1>Y6cekk, <1>Fl6OF, <1>EaLpCQ, <1>ZMaKVj, <1>ql3Fd6, SMTT(5), Sizes, Location, Design DEF EState, K6, Sizes, Location, Design
\* T2M-END R2M1489_PdRPPP_PdEExitFacts


<1>v9Y37SJ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE EExit(i,r,"timeout")
<2> USE ONLY <1>v9Y37SJ, Sizes, Location, Design
 <2>1. IsP(i) /\ ph[i][r] = "sent" /\ UNCHANGED gbad
  BY ZenonT(5), Sizes, Location, Design DEF PSentFail, ghV, PSentFailSafe, PSentFailBroken, Sizes, Location, Design
 <2>2. PEnd(i,r,"timeout")
  BY <2>1, Design, SMTT(5), Sizes, Location DEF PSentFail, PEnd, GiveUpTo, GiveUpToN, ghV, xV, PSentFailSafe, PSentFailBroken, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, ZenonT(5), Sizes, Location, Design DEF EExit, Active, Sizes, Location, Design
\* T2M-END R2M1490_PdRPPP_PdEExitBridges


<1>CuRN7T.        
  ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
  PROVE K16'
<2> USE ONLY <1>CuRN7T, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (GrownP(bb_p) =>
         /\ ph[Loc(bb_p)][pr[bb_p]] \in {"run", "ovl"} /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p]
         /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
         /\ plt[bb_p] = ptl[bb_p] /\ ptl[bb_p] \in {0, 1}
         /\ NoWriteInto(bb_p))'
  BY Sizes, Location, Design DEF K16, Sizes, Location, Design
<2>1. K16
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<hw,xdst,rpg,rg,sfly,ptl>>
 BY <1>DqPcfGr, Sizes, Location, Design DEF Sizes, Location, Design
<2>25. IsP(i) /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
 BY <1>Igs7TOaR, Sizes, Location, Design DEF EExit, Sizes, Location, Design
<2>3. (GrownP(bb_p) =>
         /\ ph[Loc(bb_p)][pr[bb_p]] \in {"run", "ovl"} /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p]
         /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
         /\ plt[bb_p] = ptl[bb_p] /\ ptl[bb_p] \in {0, 1}
         /\ NoWriteInto(bb_p))'
  BY <2>1, <2>2, <1>hfsAsK73, <1>Y6cekk, <1>Fl6OF, <1>EaLpCQ, <1>ZMaKVj, <1>ql3Fd6, <1>lexbQIQ, <2>25, <1>jc4Pk2myFy, <1>yGU8fpsp8, Location, Sizes, SMTT(5), Design DEF DInst, GrownP, InFl, Inst, IsD, K16, NL, NoWriteInto, Writing, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K16, Sizes, Location, Design
\* T2M-END R2M1500_PdRPPP_PdEExit_K16

\* T2M-SCOPE R2M1506_PdRPPP_PdEExit_K4

<1>ANehn.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE K5'
<2> USE ONLY <1>ANehn, Sizes, Location, Design
<2>1. K5 /\ dcfPK
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<xg,xr>>
 BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF rtV, instV, kV, Sizes, Location, Design
<2>3. IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"}
 BY SMTT(5), Sizes, Location, Design DEF EExit, Sizes, Location, Design
<2>4. QED
 BY <2>1, <2>2, <2>3, <1>Igs7TOaR, <1>ql3Fd6, <1>EaLpCQ, <1>Fl6OF, <1>Y6cekk, <1>jqCbNgps9xy, Design, Sizes, Location, SMTT(5) DEF ECancel, ELed, EState, K5, OwnedBy, dcfPK, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1508_PdRPPP_PdEExit_K5

\* T2M-SCOPE R2M1510_PdRPPP_PdEExit_K6

<1>QNrqe.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE K6'
<2> USE ONLY <1>QNrqe, Sizes, Location, Design
<2>1. K6 /\ Xc_ngV /\ h9WLgd
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<gen,sfly>>
 BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF rtV, instV, kV, Sizes, Location, Design
<2>3. IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"}
 BY SMTT(5), Sizes, Location, Design DEF EExit, Sizes, Location, Design
<2>4. QED
 BY <2>1, <2>2, <2>3, <1>Igs7TOaR, <1>EaLpCQ, <1>Fl6OF, <1>Y6cekk, <1>lexbQIQ, <1>jqCbNgps9xy, Design, Sizes, Location, SMTT(5) DEF ECancel, ELed, EState, IsD, K6, OwnedBy, Xc_ngV, h9WLgd, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1510_PdRPPP_PdEExit_K6


<1>AcNeg6NN2H.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE K16'
 BY ONLY <1>AcNeg6NN2H, Sizes, Location, Design, <1>v9Y37SJ, <1>CuRN7T, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1728_PdRPPP_PdE_PSentFail_K16

\* T2M-SCOPE R2M1729_PdRPPP_PdE_PSentFail_K4

<1>G3TGAaWke.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE K5'
 BY ONLY <1>G3TGAaWke, Sizes, Location, Design, <1>v9Y37SJ, <1>ANehn, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1730_PdRPPP_PdE_PSentFail_K5

\* T2M-SCOPE R2M1731_PdRPPP_PdE_PSentFail_K6

<1>DukwhgDaB.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE K6'
 BY ONLY <1>DukwhgDaB, Sizes, Location, Design, <1>v9Y37SJ, <1>QNrqe, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1731_PdRPPP_PdE_PSentFail_K6


<1>ToTOW.        
  ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
  PROVE K7'
<2> USE ONLY <1>ToTOW, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (ptl[bb_p] >= 0)' /\ (pst[bb_p] = "free" => (pr[bb_p] = 0 /\ pgn[bb_p] = 0 /\ plt[bb_p] = 0 /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
                               /\ prefc[bb_p] = 0 /\ pqp[bb_p] = 0))' /\ (pst[bb_p] \in {"priv", "drain", "quar"} => (pr[bb_p] \in Rq /\ pgn[bb_p] \in Gens /\ pgn[bb_p] <= gen[pr[bb_p]]))' /\ (pst[bb_p] = "quar" => pqp[bb_p] \in Inst)' /\ (pst[bb_p] # "quar" => pqp[bb_p] = 0)' /\ (pst[bb_p] # "shared" => prefc[bb_p] = 0)' /\ (pst[bb_p] = "shared" => (IsD(Loc(bb_p)) /\ led[bb_p] = {} /\ ptl[bb_p] = PS /\ prefc[bb_p] = NHits(bb_p)))' /\ (pst[bb_p] = "drain" => (led[bb_p] # {} \/ sled[bb_p] # {} \/ KPinned(bb_p)))' /\ (pst[bb_p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(bb_p), r, bb_p))' /\ (pst[bb_p] = "priv" => \/ (Maps(Loc(bb_p), pr[bb_p], bb_p) /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p] /\ ~rhit[Loc(bb_p)][pr[bb_p]])
                              \/ GrownP(bb_p))'
  BY Sizes, Location, Design DEF K7, Sizes, Location, Design
<2>1. K7 /\ K6 /\ K8 /\ Zzz7b(bb_p)
 BY <1>gfplo, <1>UwwC5LVwQr, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<gen,kpin,krs,rg,rpg,rhit,ptl,sfly>>
 BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF rtV, instV, kV, Sizes, Location, Design
<2>3. (ptl[bb_p] >= 0)'
  BY <2>1, <2>2, <1>Igs7TOaR, <1>L6zZjgr, <1>jUyRMszR6M4WWR, <1>hfsAsK73, <1>Y6cekk, <1>Fl6OF, <1>EaLpCQ, <1>ZMaKVj, <1>ql3Fd6, <1>lexbQIQ, <1>dlZsJxaf, <1>uSNzjM, Location, Sizes, SMTT(5), Design DEF Active, EState, ECancel, ELed, GrownP, Zzz7b, K6, Maps, IsD, Inst, PInst, DInst, NL, KPages, Sizes, Location, Design
<2>4. (pst[bb_p] = "free" => (pr[bb_p] = 0 /\ pgn[bb_p] = 0 /\ plt[bb_p] = 0 /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
                               /\ prefc[bb_p] = 0 /\ pqp[bb_p] = 0))'
  BY <2>1, <2>2, <1>Igs7TOaR, <1>L6zZjgr, <1>jUyRMszR6M4WWR, <1>hfsAsK73, <1>Y6cekk, <1>Fl6OF, <1>EaLpCQ, <1>ZMaKVj, <1>ql3Fd6, <1>lexbQIQ, <1>dlZsJxaf, <1>uSNzjM, Location, Sizes, SMTT(5), Design DEF Active, EState, ECancel, ELed, GrownP, Zzz7b, K6, Maps, IsD, Inst, PInst, DInst, NL, KPages, Sizes, Location, Design
<2>5. (pst[bb_p] \in {"priv", "drain", "quar"} => (pr[bb_p] \in Rq /\ pgn[bb_p] \in Gens /\ pgn[bb_p] <= gen[pr[bb_p]]))'
  BY <2>1, <2>2, <1>Igs7TOaR, <1>L6zZjgr, <1>jUyRMszR6M4WWR, <1>hfsAsK73, <1>Y6cekk, <1>Fl6OF, <1>EaLpCQ, <1>ZMaKVj, <1>ql3Fd6, <1>lexbQIQ, <1>dlZsJxaf, <1>uSNzjM, Location, Sizes, SMTT(5), Design DEF Active, EState, ECancel, ELed, GrownP, Zzz7b, K6, Maps, IsD, Inst, PInst, DInst, NL, KPages, Sizes, Location, Design
<2>6. (pst[bb_p] = "quar" => pqp[bb_p] \in Inst)'
  BY <2>1, <2>2, <1>Igs7TOaR, <1>L6zZjgr, <1>jUyRMszR6M4WWR, <1>hfsAsK73, <1>Y6cekk, <1>Fl6OF, <1>EaLpCQ, <1>ZMaKVj, <1>ql3Fd6, <1>lexbQIQ, <1>dlZsJxaf, <1>uSNzjM, Location, Sizes, SMTT(5), Design DEF Active, EState, ECancel, ELed, GrownP, Zzz7b, K6, Maps, IsD, Inst, PInst, DInst, NL, KPages, Sizes, Location, Design
<2>7. (pst[bb_p] # "quar" => pqp[bb_p] = 0)'
  BY <2>1, <2>2, <1>Igs7TOaR, <1>L6zZjgr, <1>jUyRMszR6M4WWR, <1>hfsAsK73, <1>Y6cekk, <1>Fl6OF, <1>EaLpCQ, <1>ZMaKVj, <1>ql3Fd6, <1>lexbQIQ, <1>dlZsJxaf, <1>uSNzjM, Location, Sizes, SMTT(5), Design DEF Active, EState, ECancel, ELed, GrownP, Zzz7b, K6, Maps, IsD, Inst, PInst, DInst, NL, KPages, Sizes, Location, Design
<2>8. (pst[bb_p] # "shared" => prefc[bb_p] = 0)'
  BY <2>1, <2>2, <1>Igs7TOaR, <1>L6zZjgr, <1>jUyRMszR6M4WWR, <1>hfsAsK73, <1>Y6cekk, <1>Fl6OF, <1>EaLpCQ, <1>ZMaKVj, <1>ql3Fd6, <1>lexbQIQ, <1>dlZsJxaf, <1>uSNzjM, Location, Sizes, SMTT(5), Design DEF Active, EState, ECancel, ELed, GrownP, Zzz7b, K6, Maps, IsD, Inst, PInst, DInst, NL, KPages, Sizes, Location, Design
<2>9. (pst[bb_p] = "shared" => (IsD(Loc(bb_p)) /\ led[bb_p] = {} /\ ptl[bb_p] = PS /\ prefc[bb_p] = NHits(bb_p)))'
  BY <2>1, <2>2, <1>Igs7TOaR, <1>L6zZjgr, <1>jUyRMszR6M4WWR, <1>hfsAsK73, <1>Y6cekk, <1>Fl6OF, <1>EaLpCQ, <1>ZMaKVj, <1>ql3Fd6, <1>lexbQIQ, <1>dlZsJxaf, <1>uSNzjM, Location, Sizes, SMTT(5), Design DEF Active, EState, ECancel, ELed, GrownP, Zzz7b, K6, Maps, IsD, Inst, PInst, DInst, NL, KPages, Sizes, Location, Design
<2>10. (pst[bb_p] = "drain" => (led[bb_p] # {} \/ sled[bb_p] # {} \/ KPinned(bb_p)))'
  BY <2>1, <2>2, <1>Igs7TOaR, <1>L6zZjgr, <1>jUyRMszR6M4WWR, <1>hfsAsK73, <1>Y6cekk, <1>Fl6OF, <1>EaLpCQ, <1>ZMaKVj, <1>ql3Fd6, <1>lexbQIQ, <1>dlZsJxaf, <1>uSNzjM, Location, Sizes, SMTT(5), Design DEF Active, EState, ECancel, ELed, GrownP, Zzz7b, K6, Maps, IsD, Inst, PInst, DInst, NL, KPages, Sizes, Location, Design
<2>11. (pst[bb_p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(bb_p), r, bb_p))'
  BY <2>1, <2>2, <1>Igs7TOaR, <1>L6zZjgr, <1>jUyRMszR6M4WWR, <1>hfsAsK73, <1>Y6cekk, <1>Fl6OF, <1>EaLpCQ, <1>ZMaKVj, <1>ql3Fd6, <1>lexbQIQ, <1>dlZsJxaf, <1>uSNzjM, Location, Sizes, SMTT(5), Design DEF Active, EState, ECancel, ELed, GrownP, Zzz7b, K6, Maps, IsD, Inst, PInst, DInst, NL, KPages, Sizes, Location, Design
<2>12. (pst[bb_p] = "priv" => \/ (Maps(Loc(bb_p), pr[bb_p], bb_p) /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p] /\ ~rhit[Loc(bb_p)][pr[bb_p]])
                              \/ GrownP(bb_p))'
  BY <2>1, <2>2, <1>Igs7TOaR, <1>L6zZjgr, <1>jUyRMszR6M4WWR, <1>hfsAsK73, <1>Y6cekk, <1>Fl6OF, <1>EaLpCQ, <1>ZMaKVj, <1>ql3Fd6, <1>lexbQIQ, <1>dlZsJxaf, <1>uSNzjM, Location, Sizes, SMTT(5), Design DEF Active, EState, ECancel, ELed, GrownP, Zzz7b, K6, Maps, IsD, Inst, PInst, DInst, NL, KPages, Sizes, Location, Design
<2>13. QED
  BY <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, <2>12, Sizes, Location, Design DEF K7, Sizes, Location, Design
\* T2M-END R2M1514_PdRPPP_PdEExit_K7


<1>yrv5QqFW2.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE K7'
 BY ONLY <1>yrv5QqFW2, Sizes, Location, Design, <1>v9Y37SJ, <1>ToTOW, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1732_PdRPPP_PdE_PSentFail_K7


<1>HNR3T.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE K8'
<2> USE ONLY <1>HNR3T, Sizes, Location, Design
<2>1. K8 /\ K2 /\ K3 /\ K4 /\ K5 /\ dcfPK /\ SHJS /\ Xc_ngV /\ h9WLgd
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<gen,hd,hp,nx,ptl,rg,rhit,rpe,rpg,rx,sfly,xg,xlt,xr,xsrc>>
 BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF rtV, instV, kV, Sizes, Location, Design
<2>3. IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"}
 BY SMTT(5), Sizes, Location, Design DEF EExit, Sizes, Location, Design
<2>4. QED
 BY <2>1, <2>2, <2>3, <1>Igs7TOaR, <1>L6zZjgr, <1>Ko9N, <1>ql3Fd6, <1>EaLpCQ, <1>ZMaKVj, <1>Fl6OF, <1>Y6cekk, <1>lexbQIQ, <1>jUyRMszR6M4WWR, <1>hfsAsK73, Design, Sizes, Location, SMTT(5) DEF Active, CqeHw, ECancel, ELed, EState, ExpInst, ExpPage, InFl, InitInst, InitPage, IsD, IsP, K2, K3, K4, K5, K8, OwnedBy, dcfPK, SHJS, Xc_ngV, h9WLgd, Tag, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1516_PdRPPP_PdEExit_K8

\* T2M-SCOPE R2M1518_PdRPPP_PdEExit_K9

<1>nXf5m.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE K9'
<2> USE ONLY <1>nXf5m, Sizes, Location, Design
<2>1. K9 /\ K2 /\ K8 /\ dcfPK /\ SHJS /\ Xc_ngV /\ h9WLgd
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<drep,nx,ptl,pvis,rg,rhit,rpg,rx,sfly,xdst,xg,xr>>
 BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF rtV, instV, kV, Sizes, Location, Design
<2>3. IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"}
 BY SMTT(5), Sizes, Location, Design DEF EExit, Sizes, Location, Design
<2>4. QED
 BY <2>1, <2>2, <2>3, <1>Igs7TOaR, <1>L6zZjgr, <1>Ko9N, <1>ql3Fd6, <1>ZMaKVj, <1>Y6cekk, <1>lexbQIQ, <1>jUyRMszR6M4WWR, <1>hfsAsK73, Design, Sizes, Location, SMTT(5) DEF Active, ECancel, ELed, EState, ExpInst, ExpPage, InitInst, InitPage, IsD, IsP, K2, K8, K9, OwnedBy, dcfPK, SHJS, Xc_ngV, h9WLgd, Tag, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1518_PdRPPP_PdEExit_K9

\* T2M-SCOPE R2M1520_PdRPPP_PdEExit_QuarNeverMapped

<1>J88d04o7HQUQG.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A y \in led[rpg[i][r]] : iv[y] = "reg" => ECancel(i,r) /\ y=rx[i][r]
<2> USE ONLY <1>J88d04o7HQUQG, Sizes, Location, Design
 <2>1. K8 /\ K2 /\ K3 /\ K4 /\ K5 /\ S2 /\ dcfPK /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K8, V21_Inv_S2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. dlzHJ(i,r) /\ IsP(i) /\ Active(i,r)
  BY <2>1, <1>QMrZB, Sizes, Location, Design DEF EExit, Sizes, Location, Design
 <2>3. rpg[i][r] \in Pages /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
  BY <1>Igs7TOaR, Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. SUFFICES ASSUME NEW y \in led[rpg[i][r]], iv[y] = "reg" PROVE ECancel(i,r) /\ y=rx[i][r]
  BY SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. y \in Xids /\ y < nx /\ xr[y] = r /\ xg[y] = rg[i][r] /\ xk[y] = "wr"
  BY <2>1, <2>3, <2>4, SMTT(5), Sizes, Location, Design DEF K3, K4, K5, OwnedBy, dcfPK, Sizes, Location, Design
 <2>6. ph[i][r] \in {"reg","sent","exp"} /\ rx[i][r] \in Xids /\ rx[i][r] < nx
        /\ xr[rx[i][r]] = r /\ xg[rx[i][r]] = rg[i][r]
  BY <2>2, <2>4, SMTT(5), Sizes, Location, Design DEF dlzHJ, Active, Sizes, Location, Design
 <2>7. y=rx[i][r]
  BY <2>1, <2>5, <2>6, SMTT(5), Sizes, Location, Design DEF S2, Sizes, Location, Design
 <2>8. Mode = "push"
  BY <2>1, <2>5, Sizes, Design, SMTT(5), Location DEF K2, SHJS, Xids, Sizes, Location, Design
 <2>9. QED BY <2>2, <2>4, <2>6, <2>7, <2>8, SMTT(5), Sizes, Location, Design DEF dlzHJ, ECancel, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Vu9UdvfJZErg.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE QuarNoReg'
<2> USE ONLY <1>Vu9UdvfJZErg, Sizes, Location, Design
 <2>1. QuarNoReg /\ dcfPK BY <1>UwwC5LVwQr, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, Sizes, Location, Design
 <2>2. \A q \in Pages : led'[q] \subseteq led[q]
  BY <1>ql3Fd6, SMTT(5), Sizes, Location, Design DEF ELed, Sizes, Location, Design
 <2>3. \A y \in led'[rpg[i][r]] : iv'[y] # "reg"
  BY <2>1, <2>2, <1>J88d04o7HQUQG, <1>Igs7TOaR, <1>ql3Fd6, <1>Ko9N, SMTT(5), Sizes, Location, Design DEF ELed, EState, dcfPK, Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, <1>Y6cekk, <1>Ko9N, SMTT(5), Sizes, Location, Design DEF QuarNoReg, dcfPK, Sizes, Location, Design
\* T2M-END R2M1522_PdRPPP_PdEExit_QuarNoReg


<1>VbJ3ucybc.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE K8'
 BY ONLY <1>VbJ3ucybc, Sizes, Location, Design, <1>v9Y37SJ, <1>HNR3T, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1733_PdRPPP_PdE_PSentFail_K8

\* T2M-SCOPE R2M1734_PdRPPP_PdE_PSentFail_K9

<1>pcv0unwJP.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE K9'
 BY ONLY <1>pcv0unwJP, Sizes, Location, Design, <1>v9Y37SJ, <1>nXf5m, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1734_PdRPPP_PdE_PSentFail_K9

\* T2M-SCOPE R2M1735_PdRPPP_PdE_PSentFail_QuarNeverMapped

<1>MvWxNkMoUUf73St9.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE QuarNoReg'
 BY ONLY <1>MvWxNkMoUUf73St9, Sizes, Location, Design, <1>v9Y37SJ, <1>Vu9UdvfJZErg, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1736_PdRPPP_PdE_PSentFail_QuarNoReg


<1>vUDCT9FnHCn.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
  PROVE K5'
  BY ONLY <1>vUDCT9FnHCn, Sizes, Location, Design, <1>G3TGAaWke, V21_Inv_K5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k4Q0WCyTSMK.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
  PROVE K6'
  BY ONLY <1>k4Q0WCyTSMK, Sizes, Location, Design, <1>DukwhgDaB, V21_Inv_K6 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IXYomPaBHUb.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
  PROVE K7'
  BY ONLY <1>IXYomPaBHUb, Sizes, Location, Design, <1>yrv5QqFW2, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VknTiUDOvSh.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
  PROVE K8'
  BY ONLY <1>VknTiUDOvSh, Sizes, Location, Design, <1>VbJ3ucybc, V21_Inv_K8 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gl4j0tDvVHm.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
  PROVE K9'
  BY ONLY <1>gl4j0tDvVHm, Sizes, Location, Design, <1>pcv0unwJP, V21_Inv_K9 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xFmANJlW8uSg.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
  PROVE K16'
  BY ONLY <1>xFmANJlW8uSg, Sizes, Location, Design, <1>AcNeg6NN2H, V21_Inv_K16 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JyaPhvQNeiR.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
  PROVE S1'
  BY ONLY <1>JyaPhvQNeiR, Sizes, Location, Design, <1>VDPjiqz4Z, V21_Inv_S1 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RhHjLPKVInQQ6mtnnH.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>RhHjLPKVInQQ6mtnnH, Sizes, Location, Design, <1>MvWxNkMoUUf73St9, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1737_PdRPPdPAgg_PSentFail


<1> QED BY <1>IXYomPaBHUb, <1>VknTiUDOvSh, <1>gl4j0tDvVHm, <1>czympVdrol8b0czwmrCUJM, <1>xFmANJlW8uSg, <1>k4Q0WCyTSMK, <1>vUDCT9FnHCn, <1>RhHjLPKVInQQ6mtnnH, <1>UBatrMo9306k0, <1>JyaPhvQNeiR, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PSentFail_03_02 SHA fa481c71b2672f4da8383d0cf3de01c5128ce4329e0c1ac19e86b31efd61b95a
USE DEF P_PagePoolsDisjoint, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V22_SF_MapPoint, V22_SF_SharedOrigin, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rg, V22_T_rpg, V22_T_rpgS, V22_T_sfly, V22_T_sled, V22_T_xdst
HIDE DEF Part_PSentFail_03_01, V21_Inv_K16, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K9, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNoReg, V21_Inv_S1, V21_Inv_S2, V21_SFollowOff
THEOREM Part_PSentFail_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE (ReadOwnLanded)' /\ (K13)' /\ (KReadIntegrity)' /\ (SealOnlyLanded)' /\ (K15)' /\ (NoFreeUnderRead)' /\ (P_SI6)'
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


           EExit(i,r,h) == IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"} /\ PEnd(i,r,h) /\ UNCHANGED gbad


           ECancel(i,r) == ph[i][r] = "reg"


           ELed(i,r) == IF ECancel(i,r) THEN led[rpg[i][r]] \ {rx[i][r]} ELSE led[rpg[i][r]]


           EState(i,r,h) == IF ELed(i,r) = {} /\ sled[rpg[i][r]] = {}
                           THEN IF KPinned(rpg[i][r]) THEN "drain" ELSE "free"
                           ELSE IF h = "timeout" /\ ELed(i,r) # {} THEN "quar" ELSE "drain"

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


           RPB_EExit(i,r,h) == IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"} /\ PEnd(i,r,h) /\ UNCHANGED gbad


           RPB_ECancel(i,r) == ph[i][r] = "reg"


           RPB_ELed(i,r) == IF RPB_ECancel(i,r) THEN led[rpg[i][r]] \ {rx[i][r]} ELSE led[rpg[i][r]]


           RPB_EState(i,r,h) == IF RPB_ELed(i,r) = {} /\ sled[rpg[i][r]] = {}
                           THEN IF KPinned(rpg[i][r]) THEN "drain" ELSE "free"
                           ELSE IF h = "timeout" /\ RPB_ELed(i,r) # {} THEN "quar" ELSE "drain"

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_GenMonotone, RP_KPhaseProgress, RP_PinFacts, RP_PinKeep, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, RP_PrivateOwnersStay, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, EExit, ECancel, ELed, EState, RP_NoNewStop, RP_DReadFrame, RP_SharedRead, RPB_T_gen, RPB_T_rt, RPB_T_rp, RPB_T_rd, RPB_T_hp, RPB_T_hd, RPB_T_alive, RPB_T_nfail, RPB_T_torn, RPB_T_kpin, RPB_T_kfly, RPB_T_krs, RPB_T_ph, RPB_T_rg, RPB_T_rpg, RPB_T_rpe, RPB_T_rx, RPB_T_rhit, RPB_T_pst, RPB_T_pr, RPB_T_pgn, RPB_T_plt, RPB_T_ptl, RPB_T_pvis, RPB_T_led, RPB_T_sfly, RPB_T_sled, RPB_T_prefc, RPB_T_pqp, RPB_T_xr, RPB_T_xg, RPB_T_xk, RPB_T_xp, RPB_T_xd, RPB_T_xsrc, RPB_T_xdst, RPB_T_xnt, RPB_T_hw, RPB_T_hok, RPB_T_iv, RPB_T_xst, RPB_T_xlt, RPB_T_nx, RPB_T_net, RPB_T_drep, RPB_T_crep, RPB_T_dsucc, RPB_T_gbad, RPB_Types, RPB_BK8At, RPB_BK7At, RPB_EExit, RPB_ECancel, RPB_ELed, RPB_EState

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

<1>M5S5pH4Bwlav9Sdr.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>M5S5pH4Bwlav9Sdr, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PSentFail, PSentFailBroken, PSentFailSafe, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZRXuoOajZXl5IvusE3byq4PC.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>ZRXuoOajZXl5IvusE3byq4PC, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ZRXuoOajZXl5IvusE3byq4PC, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, PEnd, PSentFail, PSentFailBroken, PSentFailSafe, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

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


<1>MqqU9Fcco40VoZzAusZxc.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE RP_GenMonotone /\ RP_KPhaseProgress
<2> USE ONLY <1>MqqU9Fcco40VoZzAusZxc, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>MqqU9Fcco40VoZzAusZxc, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_GenMonotone, RP_KPhaseProgress, PInst, Inst, NL, EvidenceAt, PEnd, PSentFail, PSentFailBroken, PSentFailSafe, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cdwyIaXC826FD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE P_SI6'
 BY ONLY <1>cdwyIaXC826FD, Sizes, Location, Design, <1>M5S5pH4Bwlav9Sdr, <1>ZRXuoOajZXl5IvusE3byq4PC, <1>MqqU9Fcco40VoZzAusZxc, <1>sP1gMFHuwAB DEF Sizes, Location, Design
\* T2M-END R2M1437_PdRPExtra_PSentFail


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


<1>EWvTncbh9Bswpyvna.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow, NEW q \in Pages, KPinned(q)
 PROVE RP_PinKeep(q)
<2> HIDE DEF PSentFailSafe, PEnd, PageTo, GiveUpToN, RP_PinKeep, RP_PinFacts
<2>old. RP_PinFacts(q)
 BY ONLY <1>EWvTncbh9Bswpyvna, <1>sTGmGejCTusB, Sizes, Location, Design, SMTT(5)
<2>mut. Mut="none"
 BY ONLY Design, ZenonT(5) DEF Design
<2>safe. PSentFailSafe(i,r)
 BY ONLY <1>EWvTncbh9Bswpyvna, <2>mut, SMTT(5) DEF PSentFail
<2>guard. IsP(i) /\ Active(i,r)
 BY ONLY <2>safe, ZenonT(5) DEF PSentFailSafe, Active
<2>k8. K8
 BY ONLY <1>EWvTncbh9Bswpyvna, V21_Inv_K8, Sizes, Location, Design, SMTT(5)
<2>source. rpg[i][r] \in Pages /\ Loc(rpg[i][r])=i /\ pst[rpg[i][r]]="priv"
 BY ONLY <1>EWvTncbh9Bswpyvna, <2>guard, <2>k8, SMTT(5) DEF K8
<2> DEFINE NewLed == led[rpg[i][r]]
<2> HIDE DEF NewLed
<2>effect. PageTo(rpg[i][r],GiveUpToN(rpg[i][r],"timeout",NewLed),rpe[i][r],NewLed,sled[rpg[i][r]])
 BY ONLY <2>safe, ZenonT(5) DEF PSentFailSafe, GiveUpTo, NewLed
<2>frame. UNCHANGED <<ptl,pvis,sfly,hw,xdst>>
 BY ONLY <2>safe, ZenonT(5) DEF PSentFailSafe, xV
<2>types. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 /\ plt \in [Pages -> 0..PS] /\ led \in [Pages -> SUBSET Xids]
 /\ sled \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>EWvTncbh9Bswpyvna, V22_T_pst, V22_T_pr, V22_T_pgn, V22_T_plt, V22_T_led, V22_T_sled, SMTT(5)
<2>nowrite. NoWriteInto(q) => NoWriteInto(q)'
 BY ONLY <2>frame, SMTT(5) DEF NoWriteInto, Writing, InFl
<2>same. CASE q=rpg[i][r]
 <3>state. GiveUpToN(rpg[i][r],"timeout",NewLed) \in {"drain","quar"}
  BY ONLY <1>EWvTncbh9Bswpyvna, <2>same, <2>mut, SMTT(5) DEF GiveUpToN, PinBlocks
 <3>side. IsP(Loc(q)) /\ ~IsD(Loc(q))
  BY ONLY <1>EWvTncbh9Bswpyvna, <2>source, <2>guard, <2>same, Sizes, SMTT(5) DEF IsP, IsD, Inst, NL, Sizes
 <3>update. pst'[q] \in {"drain","quar"} /\ UNCHANGED <<pr[q],pgn[q],plt[q]>> /\ sled'[q]=sled[q]
  BY ONLY <1>EWvTncbh9Bswpyvna, <2>same, <2>effect, <2>types, <3>state, SMTT(5) DEF PageTo
 <3>qed. QED
  BY ONLY <2>old, <2>source, <2>same, <2>frame, <2>nowrite, <3>side, <3>update, SMTT(5) DEF RP_PinKeep, RP_PinFacts
<2>other. CASE q # rpg[i][r]
 <3>update. UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
  BY ONLY <1>EWvTncbh9Bswpyvna, <2>other, <2>effect, <2>types, SMTT(5) DEF PageTo
 <3>qed. QED BY ONLY <2>old, <2>frame, <2>nowrite, <3>update, SMTT(5) DEF RP_PinKeep, RP_PinFacts
<2>qed. QED BY ONLY <2>same, <2>other, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>VKIAhkxrCU80ZJgqZfUr6.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs,kfly,xdst>>
 BY ONLY <1>VKIAhkxrCU80ZJgqZfUr6, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, GiveUpTo, GiveUpToN, PEnd, PSentFail, PSentFailBroken, PSentFailSafe, PageTo, PinBlocks, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LrwfGOQjdVXBC867.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>LrwfGOQjdVXBC867, Sizes, Location, Design
<2>1. \A q \in Pages : KPinned(q) => RP_PinKeep(q)
 BY <1>EWvTncbh9Bswpyvna, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,kfly,xdst>> BY <1>VKIAhkxrCU80ZJgqZfUr6, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>LrwfGOQjdVXBC867, <2>2, V22_T_xdst, SMTT(5)

<2>4. QED BY <2>1, <2>2, <2>3, <1>VtlCqCAE0X2qQ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nVIx0RbuP3EUB.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE K15'
 BY ONLY <1>nVIx0RbuP3EUB, Sizes, Location, Design, <1>LrwfGOQjdVXBC867 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QZRQ2iOPqnSQoapY0SkbKagLU.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE NoFreeUnderRead'
 BY ONLY <1>QZRQ2iOPqnSQoapY0SkbKagLU, Sizes, Location, Design, <1>LrwfGOQjdVXBC867 DEF Sizes, Location, Design
\* T2M-END R2M1457_PdRPKernel_PSentFail


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


<1>cdSMaqSLyNHbSoQscgGdgeKG1k7.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE B2 => RP_PrivateOwnersStay
<2> USE ONLY <1>cdSMaqSLyNHbSoQscgGdgeKG1k7, Sizes, Location, Design
<2>1. B2 => SI2 /\ SI5 BY V21_Inv_P_SI2, V21_Inv_P_SI5, Sizes, Location, Design DEF P_SI2, P_SI5, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>cdSMaqSLyNHbSoQscgGdgeKG1k7, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, Location, SMTT(10) DEF RP_PrivateOwnersStay, SI2, SI5, Active, PInst, Inst, NL, EvidenceAt, PEnd, PSentFail, PSentFailBroken, PSentFailSafe, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uHIesaS9pNAiWMuCK6m0jesu.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>uHIesaS9pNAiWMuCK6m0jesu, Sizes, Location, Design
<2>1. BaseKReadIntegrity' BY <1>LrwfGOQjdVXBC867, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. SMapIntegrity'
 <3>1. CASE ~B2 BY <3>1, Sizes, Location, Design DEF SMapIntegrity, Sizes, Location, Design
 <3>2. CASE B2 BY <3>2, <1>cdSMaqSLyNHbSoQscgGdgeKG1k7, <1>ZRXuoOajZXl5IvusE3byq4PC, <1>DsbKtMfk5TGSpQKzvTWF, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <3>1, <3>2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M1476_PdRPMap_PSentFail


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


<1>DqPcfGr.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, EExit(i,r,h)
 PROVE UNCHANGED <<rtV,instV,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,xst,nx,drep,crep,dsucc,gbad>>
 BY ONLY <1>DqPcfGr, Sizes, Location, Design, ZenonT(10) DEF EExit, PEnd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Igs7TOaR.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
       /\ (ECancel(i,r) => rx[i][r] \in Xids /\ rx[i][r] < nx /\ iv[rx[i][r]] = "reg" /\ xk[rx[i][r]] = "wr"
                          /\ xsrc[rx[i][r]] = rpg[i][r] /\ xr[rx[i][r]] = r /\ xg[rx[i][r]] = rg[i][r])
<2> USE ONLY <1>Igs7TOaR, Sizes, Location, Design
 <2>1. K8 /\ K7 /\ K1 /\ K3 /\ IsP(i) /\ Active(i,r)
  BY SMTT(5), V21_Inv_K1, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF EExit, Sizes, Location, Design
 <2>2. dlzHJ(i,r)
  BY <2>1, <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF dlzHJ, Active, OwnedBy, Sizes, Location, Design
 <2>4. Zzz7b(rpg[i][r])
  BY <2>1, <2>3, <1>gfplo, Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, SMTT(5), Sizes, Location, Design DEF Zzz7b, dlzHJ, K1, K3, ECancel, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aqUWBvC1.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ iv' = IF ECancel(i,r) THEN [iv EXCEPT ![rx[i][r]] = "nopost"] ELSE iv
       /\ PageTo(rpg[i][r],EState(i,r,h),rpe[i][r],ELed(i,r),sled[rpg[i][r]])
       /\ net' = net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)}
          \cup (IF ECancel(i,r) THEN {Msg("nopost",i,xd[rx[i][r]],r,xg[rx[i][r]],rx[i][r],0,0,FALSE)} ELSE {})
<2> USE ONLY <1>aqUWBvC1, Sizes, Location, Design
 <2>1. ECancel(i,r) => rx[i][r] \in Xids /\ iv[rx[i][r]] = "reg" /\ xk[rx[i][r]] = "wr"
  BY <1>Igs7TOaR, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED
  BY <2>1, Design, SMTT(5), Sizes, Location DEF EExit, PEnd, ECancel, ELed, EState, GiveUpToN, PinBlocks, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>L6zZjgr.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A j \in Inst, u \in Rq :
   /\ ph'[j][u] = IF j=i /\ u=r THEN "end" ELSE ph[j][u]
   /\ (Active(j,u)' => Active(j,u) /\ ph'[j][u] = ph[j][u])
   /\ (ph'[j][u] \in {"run","ovl"} <=> ph[j][u] \in {"run","ovl"})
<2> USE ONLY <1>L6zZjgr, Sizes, Location, Design
 <2>1. AydA /\ IsP(i) /\ K8
  BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, EExit, Sizes, Location, Design
 <2>2. ph[i][r] \notin {"run","ovl"}
  BY <2>1, SMTT(5), Sizes, Location, Design DEF K8, Sizes, Location, Design
 <2>3. QED
  BY <2>1, <2>2, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF AydA, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Y6cekk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : pst'[q] = IF q = rpg[i][r] THEN (EState(i,r,h)) ELSE pst[q]
<2> USE ONLY <1>Y6cekk, Sizes, Location, Design
 <2>1. OyyWS BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, OyyWS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Fl6OF.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : pr'[q] = IF q = rpg[i][r] THEN (IF EState(i,r,h) = "free" THEN 0 ELSE pr[q]) ELSE pr[q]
<2> USE ONLY <1>Fl6OF, Sizes, Location, Design
 <2>1. IwCp BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, IwCp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EaLpCQ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : pgn'[q] = IF q = rpg[i][r] THEN (IF EState(i,r,h) = "free" THEN 0 ELSE pgn[q]) ELSE pgn[q]
<2> USE ONLY <1>EaLpCQ, Sizes, Location, Design
 <2>1. vS7em BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, vS7em, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZMaKVj.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : plt'[q] = IF q = rpg[i][r] THEN (IF EState(i,r,h) = "free" THEN 0 ELSE plt[q]) ELSE plt[q]
<2> USE ONLY <1>ZMaKVj, Sizes, Location, Design
 <2>1. bFwlN BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, bFwlN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ql3Fd6.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : led'[q] = IF q = rpg[i][r] THEN (IF EState(i,r,h) = "free" THEN {} ELSE ELed(i,r)) ELSE led[q]
<2> USE ONLY <1>ql3Fd6, Sizes, Location, Design
 <2>1. dcfPK BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hfsAsK73.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE /\ \A j \in DInst, u \in Rq : ph'[j][u] = ph[j][u]
       /\ \A q \in Pages : IsD(Loc(q)) =>
          pst'[q] = pst[q] /\ pr'[q] = pr[q] /\ pgn'[q] = pgn[q] /\ plt'[q] = plt[q] /\ led'[q] = led[q]
<2> USE ONLY <1>hfsAsK73, Sizes, Location, Design
 <2>1. Loc(rpg[i][r]) = i /\ IsP(i)
  BY <1>Igs7TOaR, Sizes, Location, Design DEF EExit, Sizes, Location, Design
 <2>2. QED
  BY <2>1, <1>L6zZjgr, <1>Y6cekk, <1>Fl6OF, <1>EaLpCQ, <1>ZMaKVj, <1>ql3Fd6,
     Sizes, SMTT(5), Location, Design DEF IsP, IsD, PInst, DInst, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>v9Y37SJ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE EExit(i,r,"timeout")
<2> USE ONLY <1>v9Y37SJ, Sizes, Location, Design
 <2>1. IsP(i) /\ ph[i][r] = "sent" /\ UNCHANGED gbad
  BY ZenonT(5), Sizes, Location, Design DEF PSentFail, ghV, PSentFailSafe, PSentFailBroken, Sizes, Location, Design
 <2>2. PEnd(i,r,"timeout")
  BY <2>1, Design, SMTT(5), Sizes, Location DEF PSentFail, PEnd, GiveUpTo, GiveUpToN, ghV, xV, PSentFailSafe, PSentFailBroken, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, ZenonT(5), Sizes, Location, Design DEF EExit, Active, Sizes, Location, Design
\* T2M-END R2M1490_PdRPPP_PdEExitBridges


<1>CFfxok.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE K13'
<2> USE ONLY <1>CFfxok, Sizes, Location, Design
 <2>1. K13 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. UNCHANGED <<gbad,gen,hd,rg,drep,dsucc,crep>>
  BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF rtV, instV, kV, Sizes, Location, Design
 <2>3. \A u \in Rq, g \in Gens : drep[u][g] = 1 => hd[u][g] \in DInst
  BY <1>ho2qVzp0UDI9Dx, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, <1>hfsAsK73, SMTT(5), Sizes, Location, Design DEF K13, Sizes, Location, Design
\* T2M-END R2M1497_PdRPPP_PdEExit_K13

\* T2M-SCOPE R2M1499_PdRPPP_PdEExitSafetyFacts

<1>fPHUeeDVWf.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE K13'
 BY ONLY <1>fPHUeeDVWf, Sizes, Location, Design, <1>v9Y37SJ, <1>CFfxok, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1727_PdRPPP_PdE_PSentFail_K13

\* T2M-SCOPE R2M1728_PdRPPP_PdE_PSentFail_K16

<1>O0wuFVytMlTV.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
  PROVE K13'
  BY ONLY <1>O0wuFVytMlTV, Sizes, Location, Design, <1>fPHUeeDVWf, V21_Inv_K13 DEF Sizes, Location, Design

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


<1>EfjR1l30S8f.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, RPB_EExit(i,r,h)
 PROVE UNCHANGED <<rtV,instV,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,xst,nx,drep,crep,dsucc,gbad>>
 BY ONLY <1>EfjR1l30S8f, Sizes, Location, Design, ZenonT(10) DEF RPB_EExit, PEnd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RXRDKq5UUltA.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPB_EExit(i,r,h)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
       /\ (RPB_ECancel(i,r) => rx[i][r] \in Xids /\ rx[i][r] < nx /\ iv[rx[i][r]] = "reg" /\ xk[rx[i][r]] = "wr"
                          /\ xsrc[rx[i][r]] = rpg[i][r] /\ xr[rx[i][r]] = r /\ xg[rx[i][r]] = rg[i][r])
<2> USE ONLY <1>RXRDKq5UUltA, Sizes, Location, Design
 <2>1. K8 /\ K7 /\ K1 /\ K3 /\ IsP(i) /\ Active(i,r)
  BY SMTT(5), V21_Inv_K1, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF RPB_EExit, Sizes, Location, Design
 <2>2. RPB_BK8At(i,r)
  BY <2>1, <1>PtRv5Ech1, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF RPB_BK8At, Active, OwnedBy, Sizes, Location, Design
 <2>4. RPB_BK7At(rpg[i][r])
  BY <2>1, <2>3, <1>zAull58zS, Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. QED
  <3>1. rpe[i][r] \in DInst
   BY ONLY <2>1, <2>3, SMTT(5) DEF K1
  <3>2. prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
   BY ONLY <2>3, <2>4, SMTT(5) DEF RPB_BK7At
  <3>3. RPB_ECancel(i,r) => rx[i][r] \in Xids /\ rx[i][r] < nx /\ iv[rx[i][r]] = "reg" /\ xk[rx[i][r]] = "wr"
                            /\ xsrc[rx[i][r]] = rpg[i][r] /\ xr[rx[i][r]] = r /\ xg[rx[i][r]] = rg[i][r]
   BY ONLY <2>1, <2>2, SMTT(5) DEF RPB_BK8At, RPB_ECancel, K3
  <3>4. QED BY ONLY <2>3, <3>1, <3>2, <3>3, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>YjWxhBcK8Gqn.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPB_EExit(i,r,h)
 PROVE /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ iv' = IF RPB_ECancel(i,r) THEN [iv EXCEPT ![rx[i][r]] = "nopost"] ELSE iv
       /\ PageTo(rpg[i][r],RPB_EState(i,r,h),rpe[i][r],RPB_ELed(i,r),sled[rpg[i][r]])
       /\ net' = net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)}
          \cup (IF RPB_ECancel(i,r) THEN {Msg("nopost",i,xd[rx[i][r]],r,xg[rx[i][r]],rx[i][r],0,0,FALSE)} ELSE {})
<2> USE ONLY <1>YjWxhBcK8Gqn, Sizes, Location, Design
 <2>1. RPB_ECancel(i,r) => rx[i][r] \in Xids /\ iv[rx[i][r]] = "reg" /\ xk[rx[i][r]] = "wr"
  BY <1>RXRDKq5UUltA, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED
  BY <2>1, Design, SMTT(5), Sizes, Location DEF RPB_EExit, PEnd, RPB_ECancel, RPB_ELed, RPB_EState, GiveUpToN, PinBlocks, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rukwQb0xAHE.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPB_EExit(i,r,h)
 PROVE \A j \in Inst, u \in Rq :
   /\ ph'[j][u] = IF j=i /\ u=r THEN "end" ELSE ph[j][u]
   /\ (Active(j,u)' => Active(j,u) /\ ph'[j][u] = ph[j][u])
   /\ (ph'[j][u] \in {"run","ovl"} <=> ph[j][u] \in {"run","ovl"})
<2> USE ONLY <1>rukwQb0xAHE, Sizes, Location, Design
 <2>1. RPB_T_ph /\ IsP(i) /\ K8
  BY <1>IXEagMJyQryQes, SMTT(5), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, RPB_EExit, Sizes, Location, Design
 <2>2. ph[i][r] \notin {"run","ovl"}
  BY <2>1, SMTT(5), Sizes, Location, Design DEF K8, Sizes, Location, Design
 <2>3. QED
  BY <2>1, <2>2, <1>YjWxhBcK8Gqn, SMTT(5), Sizes, Location, Design DEF RPB_T_ph, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vvWoGJ3O0l.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPB_EExit(i,r,h)
 PROVE \A q \in Pages : pst'[q] = IF q = rpg[i][r] THEN (RPB_EState(i,r,h)) ELSE pst[q]
<2> USE ONLY <1>vvWoGJ3O0l, Sizes, Location, Design
 <2>1. RPB_T_pst BY <1>IXEagMJyQryQes, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>YjWxhBcK8Gqn, SMTT(5), Sizes, Location, Design DEF PageTo, RPB_T_pst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rDcqO5j7y.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPB_EExit(i,r,h)
 PROVE \A q \in Pages : pr'[q] = IF q = rpg[i][r] THEN (IF RPB_EState(i,r,h) = "free" THEN 0 ELSE pr[q]) ELSE pr[q]
<2> USE ONLY <1>rDcqO5j7y, Sizes, Location, Design
 <2>1. RPB_T_pr BY <1>IXEagMJyQryQes, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>YjWxhBcK8Gqn, SMTT(5), Sizes, Location, Design DEF PageTo, RPB_T_pr, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WINO2rMccn.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPB_EExit(i,r,h)
 PROVE \A q \in Pages : pgn'[q] = IF q = rpg[i][r] THEN (IF RPB_EState(i,r,h) = "free" THEN 0 ELSE pgn[q]) ELSE pgn[q]
<2> USE ONLY <1>WINO2rMccn, Sizes, Location, Design
 <2>1. RPB_T_pgn BY <1>IXEagMJyQryQes, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>YjWxhBcK8Gqn, SMTT(5), Sizes, Location, Design DEF PageTo, RPB_T_pgn, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ik0Wd4vJeX.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPB_EExit(i,r,h)
 PROVE \A q \in Pages : plt'[q] = IF q = rpg[i][r] THEN (IF RPB_EState(i,r,h) = "free" THEN 0 ELSE plt[q]) ELSE plt[q]
<2> USE ONLY <1>Ik0Wd4vJeX, Sizes, Location, Design
 <2>1. RPB_T_plt BY <1>IXEagMJyQryQes, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>YjWxhBcK8Gqn, SMTT(5), Sizes, Location, Design DEF PageTo, RPB_T_plt, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LHORXsqNHa.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPB_EExit(i,r,h)
 PROVE \A q \in Pages : led'[q] = IF q = rpg[i][r] THEN (IF RPB_EState(i,r,h) = "free" THEN {} ELSE RPB_ELed(i,r)) ELSE led[q]
<2> USE ONLY <1>LHORXsqNHa, Sizes, Location, Design
 <2>1. RPB_T_led BY <1>IXEagMJyQryQes, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>YjWxhBcK8Gqn, SMTT(5), Sizes, Location, Design DEF PageTo, RPB_T_led, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HWNFkcTWgd4m.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPB_EExit(i,r,h)
 PROVE /\ \A j \in DInst, u \in Rq : ph'[j][u] = ph[j][u]
       /\ \A q \in Pages : IsD(Loc(q)) =>
          pst'[q] = pst[q] /\ pr'[q] = pr[q] /\ pgn'[q] = pgn[q] /\ plt'[q] = plt[q] /\ led'[q] = led[q]
<2> USE ONLY <1>HWNFkcTWgd4m, Sizes, Location, Design
 <2>1. Loc(rpg[i][r]) = i /\ IsP(i)
  BY <1>RXRDKq5UUltA, Sizes, Location, Design DEF RPB_EExit, Sizes, Location, Design
 <2>2. QED
  BY <2>1, <1>rukwQb0xAHE, <1>vvWoGJ3O0l, <1>rDcqO5j7y, <1>WINO2rMccn, <1>Ik0Wd4vJeX, <1>LHORXsqNHa,
     Sizes, SMTT(5), Location, Design DEF IsP, IsD, PInst, DInst, Inst, NL, Sizes, Location, Design
\* T2M-END R2M1858_PdRPBPP_PdEExitFacts


<1>soxu39PJPSY.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE RPB_EExit(i,r,"timeout")
<2> USE ONLY <1>soxu39PJPSY, Sizes, Location, Design
 <2>1. IsP(i) /\ ph[i][r] = "sent" /\ UNCHANGED gbad
  BY ZenonT(5), Sizes, Location, Design DEF PSentFail, ghV, PSentFailSafe, PSentFailBroken, Sizes, Location, Design
 <2>2. PEnd(i,r,"timeout")
  BY <2>1, Design, SMTT(5), Sizes, Location DEF PSentFail, PEnd, GiveUpTo, GiveUpToN, ghV, xV, PSentFailSafe, PSentFailBroken, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, ZenonT(5), Sizes, Location, Design DEF RPB_EExit, Active, Sizes, Location, Design
\* T2M-END R2M1861_PdRPBPP_PdEExitBridges

\* T2M-SCOPE R2M1862_PdRPBPP_PdEExitSafetyFacts

<1>rlQFbzs6jnFzY4phm4m9.        
  ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPB_EExit(i,r,h)
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>rlQFbzs6jnFzY4phm4m9, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_j \in DInst, NEW bb_r \in Rq
                 PROVE (ph[bb_j][bb_r] \in {"run", "ovl"} =>
    LET q == rpg[bb_j][bb_r] IN
      /\ q \in Pages /\ NoWriteInto(q)
      /\ \/ ~rhit[bb_j][bb_r] /\ pst[q] = "priv" /\ pr[q] = bb_r /\ pgn[q] = rg[bb_j][bb_r] /\ ptl[q] = NTok(bb_r, rg[bb_j][bb_r]) /\ pvis[q]
         \/ rhit[bb_j][bb_r] /\ pst[q] = "shared" /\ ptl[q] = PS)'
  BY Sizes, Location, Design DEF BaseReadOwnLanded, Sizes, Location, Design
<2>1. BaseReadOwnLanded /\ K8
  BY <1>IXEagMJyQryQes, V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, RPB_Types, BaseSafety, ReadOwnLanded, SealOnlyLanded, SendOwnLanded, Sizes, Location, Design
<2>2. UNCHANGED <<hw,xdst,rpg,rg,rhit,ptl,pvis>>
 BY <1>EfjR1l30S8f, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ph'[bb_j][bb_r] = ph[bb_j][bb_r] /\ bb_j \in Inst /\ IsD(bb_j)
  BY <1>HWNFkcTWgd4m, <1>Ey9PneZjpodYR, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ph[bb_j][bb_r] \in {"run","ovl"} => rpg[bb_j][bb_r] \in Pages /\ Loc(rpg[bb_j][bb_r]) = bb_j
  BY <2>1, <2>3, <1>jpdVMc56XFCE, ZenonT(5), Sizes, Location, Design DEF Active, Sizes, Location, Design
<2>5. ph[bb_j][bb_r] \in {"run","ovl"} =>
  pst'[rpg[bb_j][bb_r]] = pst[rpg[bb_j][bb_r]] /\ pr'[rpg[bb_j][bb_r]] = pr[rpg[bb_j][bb_r]]
  /\ pgn'[rpg[bb_j][bb_r]] = pgn[rpg[bb_j][bb_r]]
  BY <2>3, <2>4, <1>HWNFkcTWgd4m, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
 <3>1. ph[bb_j][bb_r] \in {"run", "ovl"} =>
         LET q == rpg[bb_j][bb_r] IN
           /\ q \in Pages /\ NoWriteInto(q)
           /\ \/ ~rhit[bb_j][bb_r] /\ pst[q] = "priv" /\ pr[q] = bb_r /\ pgn[q] = rg[bb_j][bb_r] /\ ptl[q] = NTok(bb_r, rg[bb_j][bb_r]) /\ pvis[q]
              \/ rhit[bb_j][bb_r] /\ pst[q] = "shared" /\ ptl[q] = PS
  BY ONLY <2>1, ZenonT(5) DEF BaseReadOwnLanded
 <3>2. \A x \in Xids : Writing(x)' = Writing(x) /\ xdst'[x] = xdst[x]
  BY ONLY <2>2, SMTT(5) DEF Writing, InFl
 <3>3. QED
  BY ONLY <3>1, <3>2, <2>2, <2>3, <2>5, SMTT(5) DEF NoWriteInto
\* T2M-END R2M1863_PdRPBPP_PdEExit_ReadOwnLanded

\* T2M-SCOPE R2M1865_PdRPBPP_PdEExit_SealOnlyLanded

<1>aGggnPZjJ21qRf7aX4daH.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPB_EExit(i,r,h)
 PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>aGggnPZjJ21qRf7aX4daH, Sizes, Location, Design
<2>1. BaseSealOnlyLanded
 BY <1>IXEagMJyQryQes, SMTT(5), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, RPB_Types, BaseSafety, ReadOwnLanded, SealOnlyLanded, SendOwnLanded, Sizes, Location, Design
<2>2. UNCHANGED <<hw,ptl,xdst>>
 BY <1>EfjR1l30S8f, SMTT(5), Sizes, Location, Design DEF rtV, instV, kV, Sizes, Location, Design
<2>3. IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"}
 BY SMTT(5), Sizes, Location, Design DEF RPB_EExit, Sizes, Location, Design
<2>4. QED
 BY <2>1, <2>2, <2>3, <1>RXRDKq5UUltA, <1>vvWoGJ3O0l, Design, Sizes, Location, SMTT(5) DEF RPB_ECancel, RPB_ELed, RPB_EState, InFl, NoWriteInto, BaseSealOnlyLanded, Writing, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1865_PdRPBPP_PdEExit_SealOnlyLanded


<1>IfTb1MWWxmvkGQizJhE3R3on.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE BaseReadOwnLanded'
 BY ONLY <1>IfTb1MWWxmvkGQizJhE3R3on, Sizes, Location, Design, <1>soxu39PJPSY, <1>rlQFbzs6jnFzY4phm4m9, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1941_PdRPBPP_PdE_PSentFail_ReadOwnLanded


<1>XNMDStStnmj50Bt88B93NOt6R.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE BaseSealOnlyLanded'
 BY ONLY <1>XNMDStStnmj50Bt88B93NOt6R, Sizes, Location, Design, <1>soxu39PJPSY, <1>aGggnPZjJ21qRf7aX4daH, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1943_PdRPBPP_PdE_PSentFail_SealOnlyLanded


<1>DxkNe0CrfqYJjDrWn2h.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE RP_NoNewStop /\ RP_DReadFrame /\ UNCHANGED xdst
<2> USE ONLY <1>DxkNe0CrfqYJjDrWn2h, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rpg \in [Inst -> [Rq -> 0..NP]] /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>DxkNe0CrfqYJjDrWn2h, V22_T_hw, V22_T_ph, V22_T_rpg, SMTT(5)

<2>2. K1 /\ K3 BY V21_Inv_K1, V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>1. UNCHANGED <<hw, xdst, rpg>> /\ ph' = [ph EXCEPT ![i][r] = "end"] /\ IsP(i)
  BY ONLY <1>DxkNe0CrfqYJjDrWn2h, SMTT(10) DEF PSentFail, PSentFailBroken, PSentFailSafe, xV
 <3>2. \A j \in DInst : j \in Inst /\ j # i
  BY ONLY <3>1, Sizes, SMTT(10) DEF DInst, Inst, NL, IsP, Sizes
 <3>3. QED BY ONLY <2>1, <3>1, <3>2, SMTT(10) DEF RP_NoNewStop, RP_DReadFrame

\* T2M-LOCAL-VISIBILITY

<1>D9rX2PNN9aogtbaBkTSM.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE RP_SharedRead'
 BY ONLY <1>D9rX2PNN9aogtbaBkTSM, Sizes, Location, Design, <1>DxkNe0CrfqYJjDrWn2h, <1>PtfM7z6NmcjVW9qw5I DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DOfim2EZRYIAGqf5F16.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>DOfim2EZRYIAGqf5F16, Sizes, Location, Design
<2>1. UNCHANGED xdst BY <1>DxkNe0CrfqYJjDrWn2h, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xdst' \in [Xids -> 0..NP] 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>DOfim2EZRYIAGqf5F16, <2>1, V22_T_xdst, SMTT(5)

<2>3. QED BY <2>2, <1>GEiwvO5S4Wv9uAOYEb8qtLWYsu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>svTUIdT6emtnrsKhkhlubaU.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE ReadOwnLanded'
 BY ONLY <1>svTUIdT6emtnrsKhkhlubaU, Sizes, Location, Design, <1>IfTb1MWWxmvkGQizJhE3R3on, <1>D9rX2PNN9aogtbaBkTSM DEF ReadOwnLanded, RP_SharedRead, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eAARgSNRxGgw0ybM2BLJPpYL.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r), SFollow
 PROVE SealOnlyLanded'
 BY ONLY <1>eAARgSNRxGgw0ybM2BLJPpYL, Sizes, Location, Design, <1>XNMDStStnmj50Bt88B93NOt6R, <1>DOfim2EZRYIAGqf5F16 DEF SealOnlyLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>svTUIdT6emtnrsKhkhlubaU, <1>O0wuFVytMlTV, <1>uHIesaS9pNAiWMuCK6m0jesu, <1>eAARgSNRxGgw0ybM2BLJPpYL, <1>nVIx0RbuP3EUB, <1>QZRQ2iOPqnSQoapY0SkbKagLU, <1>cdwyIaXC826FD, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_PSentFail SHA 31065a3082c17755ee96883f665fc9873d15031653b05cfadf64dc47f8a30521
USE DEF Shape_T_rg, Shape_T_rpe
HIDE DEF P_PagePoolsDisjoint, Part_PSentFail_03_02, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_ReadOwnLanded, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapPoint, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rg, V22_T_rpg, V22_T_rpgS, V22_T_sfly, V22_T_sled, V22_T_xdst
LEMMA ShapeEffect_PSentFail ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Design, PSentFail(i,r)
 PROVE net' = net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)}
 BY ONLY PSentFail(i,r), Sizes, Design, SMTT(5) DEF PSentFail, PSentFailSafe, PSentFailBroken, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_PSentFail ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Design, IndInv, MessageShape, PSentFail(i,r)
 PROVE MessageShape'
<1>1. net' = net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)}
 BY ONLY Sizes, Design, PSentFail(i,r), ShapeEffect_PSentFail
<1>2. rg \in [Inst -> [Rq -> 0..MG]] /\ rpe \in [Inst -> [Rq -> {0} \cup Inst]]
 BY ONLY IndInv, Shape_T_rg, Shape_T_rpe
<1>3. QED
 BY ONLY <1>1, <1>2, IndInv, MessageShape, Sizes, SMTT(10)
 DEF MessageShape, Msg, MsgT, Sizes, Rq, Gens, Xids, Pages, Inst, NL, PInst, DInst

\* Complete original body PdDomain_PSentFail SHA 10d08b4411fb281954037f531f593627d07aebe343255cc851046d73f6d7b348
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_PSentFail, Shape_T_rg, Shape_T_rpe
THEOREM DomainKeep_PSentFail ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, PSentFail(i,r)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net' = net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)}
 BY ONLY Sizes, Location, Design, PinInv, PSentFail(i,r), ShapeEffect_PSentFail
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg
HIDE DEF DomainKeep_PSentFail, ShapeEffect_PSentFail, V21_Inv_MsgXDomain
====
