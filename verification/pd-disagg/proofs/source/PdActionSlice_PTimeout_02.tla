---- MODULE PdActionSlice_PTimeout_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_d3dd8b4090431094, PdFinalAuxType_fe8bb090b8ff1fa3, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PTimeout_01

\* Complete original body PdFinalPart_PTimeout_02_02 SHA 3662b22cb34909891b35aae92394a2af904041f222b3b3d9a726496daf5783ea
HIDE DEF AuxType_d3dd8b4090431094, AuxType_fe8bb090b8ff1fa3, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_PTimeout_01_01, Part_PTimeout_01_02, Part_PTimeout_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hp, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_plt, V22_T_pqp, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_PTimeout_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE (SI7)' /\ (P_SI5)' /\ (K5)' /\ (SI8)' /\ (K1)'
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

           EK2At(x) ==
           IF x >= nx
                   THEN /\ xk[x] = "none" /\ xr[x] = 0 /\ xg[x] = 0 /\ xp[x] = 0 /\ xd[x] = 0 /\ xsrc[x] = 0 /\ xdst[x] = 0
                        /\ xnt[x] = 0 /\ hw[x] = "none" /\ ~hok[x] /\ iv[x] = "none" /\ xst[x] = "none" /\ xlt[x] = 0
                   ELSE /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
                        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
                        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
                        /\ xnt[x] = NTok(xr[x], xg[x]) /\ xst[x] # "none"
                        /\ IF xk[x] = "wr" /\ InitPage(x) = 0 THEN xlt[x] = 0 ELSE xlt[x] \in PLens(xr[x], xg[x])   
                        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
                        /\ iv[x] = "none" => InitPage(x) = 0
                        /\ iv[x] \notin {"none", "nopost"} => InitPage(x) # 0
                        /\ (iv[x] = "nopost" /\ InitPage(x) # 0) => (xk[x] = "wr" /\ PReg)   
                        /\ InitPage(x) # 0 => (InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))


           EK3At(x) ==
                   /\ (iv[x] \in {"none", "nopost", "reg"}) <=> (hw[x] = "none")
                   /\ iv[x] = "reg" => (xk[x] = "wr" /\ PReg /\ xst[x] = "posted")
                   /\ iv[x] = "cqe" => hw[x] \in CqeHw(x)
                   /\ hw[x] = "issued" => xk[x] = "wr"
                   /\ xst[x] = "revoked" => iv[x] = "nopost"
                   /\ xst[x] = "landed" => (hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x])   
                   /\ (xk[x] = "rd" /\ iv[x] \notin {"none", "nopost"}) => xlt[x] = xnt[x]   
                   /\ xst[x] = "failed" => IF xk[x] = "wr" THEN (hw[x] = "stop" /\ hok[x] /\ xlt[x] # xnt[x])   
                                            ELSE ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ~hok[x]) \/ iv[x] = "nopost")
                   /\ InFl(x) => (xst[x] = "posted" /\ (iv[x] \in {"posted", "failret"} \/ (iv[x] = "cqe" /\ hw[x] = "issued" /\ ~hok[x])))


           RP_NoNewStop == \A x \in Xids : hw[x] \in {"fly","issued"} => hw'[x] # "stop"


           RP_DReadFrame == \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} =>
            ph[j][r] \in {"run","ovl"} /\ rpg'[j][r]=rpg[j][r]


           RP_RegPrelude == \A x \in Xids : iv'[x]="reg" =>
            xk[x]="wr" /\ (RP_Posted(x) \/ (iv[x]="reg" /\ xsrc'[x]=xsrc[x]))


           RP_RegSourceSafe == \A x \in Xids : iv'[x]="reg" => xsrc'[x] \in Pages /\ pst'[xsrc'[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

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

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, EExit, ECancel, ELed, EState, EK2At, EK3At, RP_NoNewStop, RP_DReadFrame, RP_RegPrelude, RP_RegSourceSafe, RP2_NoNewReg, RP2_StoppedHeldBack, RP2_PrivatePhaseStep, RP2_SI5Q, RP2_SI5D, RP2_SI5P, RP2_DHeldBack, RP2_StopBack

<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Wu.        
 K1 /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>> => K1'
 BY IsaT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M0353_PdPF_K1


<1>qK0WhOaWFW2PLnLs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, kfly, kpin, krs, nfail, nx, rd, rp, rt, torn, xg, xr>>
 BY ONLY <1>qK0WhOaWFW2PLnLs, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PEnd, PTimeout, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>p7vpjSzMswi.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE K1'
<2> USE ONLY <1>p7vpjSzMswi, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>qK0WhOaWFW2PLnLs, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

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

<1>lsV4PJOinviYXaFgiDjRimJ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>lsV4PJOinviYXaFgiDjRimJ, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>lsV4PJOinviYXaFgiDjRimJ, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NBGzTOFrH82szGP.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE UNCHANGED <<xsrc,xk,xst>>
 BY ONLY <1>NBGzTOFrH82szGP, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LhWo3A37Ml6A.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE SI8'
 BY ONLY <1>LhWo3A37Ml6A, Sizes, Location, Design, <1>NBGzTOFrH82szGP, <1>cBA7rB8Q9U8gRHfGK DEF Sizes, Location, Design
\* T2M-END R2M1440_PdRPShared_PTimeout


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
  <3>route. hd[r][rg[i][r]] \in DInst
   BY ONLY <1>Igs7TOaR, <2>1, <2>3, SMTT(5) DEF K1
  <3>page. prefc[rpg[i][r]]=0 /\ pqp[rpg[i][r]]=0
   BY ONLY <2>3, <2>4, SMTT(5) DEF Zzz7b
  <3>cancel. ASSUME ECancel(i,r)
              PROVE rx[i][r] \in Xids /\ rx[i][r]<nx /\ iv[rx[i][r]]="reg" /\ xk[rx[i][r]]="wr" /\ xsrc[rx[i][r]]=rpg[i][r] /\ xr[rx[i][r]]=r /\ xg[rx[i][r]]=rg[i][r]
   <4>slot. rx[i][r] \in Xids /\ rx[i][r]<nx /\ iv[rx[i][r]]="reg" /\ xsrc[rx[i][r]]=rpg[i][r] /\ xr[rx[i][r]]=r /\ xg[rx[i][r]]=rg[i][r]
    BY ONLY <2>2, <3>cancel, SMTT(5) DEF dlzHJ, ECancel
   <4>kind. xk[rx[i][r]]="wr"
    BY ONLY <2>1, <4>slot, SMTT(5) DEF K3
   <4>qed. QED BY ONLY <4>slot, <4>kind, SMTT(5)
  <3>qed. QED BY ONLY <2>3, <3>route, <3>page, <3>cancel, SMTT(5)

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


<1>hv0XuP.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE EExit(i,r,"timeout")
 BY ONLY <1>hv0XuP, Sizes, Location, Design, SMTT(5) DEF PTimeout, EExit, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>o6IHG.         K2 <=> (\A x \in Xids : EK2At(x))
 BY ZenonT(5), Sizes, Location, Design DEF K2, EK2At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CMeT.         (\A x \in Xids : EK2At(x)') => K2'
 BY ZenonT(5), Sizes, Location, Design DEF K2, EK2At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fsuoF.         K3 <=> (\A x \in Xids : EK3At(x))
 BY ZenonT(5), Sizes, Location, Design DEF K3, EK3At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lNob.         (\A x \in Xids : EK3At(x)') => K3'
 BY ZenonT(5), Sizes, Location, Design DEF K3, EK3At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>p4Rjn.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE K4'
<2> USE ONLY <1>p4Rjn, Sizes, Location, Design
<2>1. K4 /\ K2 /\ K3 /\ K5 /\ K8 /\ dcfPK /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<nx,xdst,xk,xsrc,xst>>
 BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF rtV, instV, kV, Sizes, Location, Design
<2>3. IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"}
 BY SMTT(5), Sizes, Location, Design DEF EExit, Sizes, Location, Design
<2>nxInt. nx \in Int
 BY ONLY <2>1, SMTT(5) DEF SHJS
<2>ivEffect. \A y \in Xids : iv'[y]=IF ECancel(i,r) /\ y=rx[i][r] THEN "nopost" ELSE iv[y]
 BY ONLY <1>p4Rjn, <1>Ko9N, SMTT(5)
<2>ledEffect. \A q \in Pages : led'[q]=IF q=rpg[i][r] /\ ECancel(i,r) THEN led[q] \ {rx[i][r]} ELSE led[q]
 <3>at. ASSUME NEW q \in Pages
         PROVE led'[q]=IF q=rpg[i][r] /\ ECancel(i,r) THEN led[q] \ {rx[i][r]} ELSE led[q]
  <4>raw. led'[q]=IF q=rpg[i][r] THEN (IF EState(i,r,h)="free" THEN {} ELSE ELed(i,r)) ELSE led[q]
   BY ONLY <1>p4Rjn, <3>at, <1>ql3Fd6, SMTT(5)
  <4>empty. EState(i,r,h)="free" => ELed(i,r)={}
   BY ONLY SMTT(5) DEF EState
  <4>qed. QED BY ONLY <4>raw, <4>empty, SMTT(5) DEF ELed
 <3>qed. QED BY ONLY <3>at, SMTT(5)
<2>select. \A y \in Xids : ExpPage(y)'=ExpPage(y) /\ InitPage(y)'=InitPage(y)
 BY ONLY <2>2, SMTT(5) DEF ExpPage, InitPage
<2>cancel. ASSUME ECancel(i,r)
           PROVE rx[i][r] \in Xids /\ InitPage(rx[i][r])=rpg[i][r] /\ ExpPage(rx[i][r]) # rpg[i][r]
 <3>slot. rpg[i][r] \in Pages /\ Loc(rpg[i][r])=i /\ rpe[i][r] \in DInst /\ rx[i][r] \in Xids /\ rx[i][r]<nx /\ iv[rx[i][r]]="reg" /\ xk[rx[i][r]]="wr" /\ xsrc[rx[i][r]]=rpg[i][r] /\ xr[rx[i][r]]=r /\ xg[rx[i][r]]=rg[i][r]
  BY ONLY <1>p4Rjn, <2>cancel, <1>Igs7TOaR, SMTT(5)
 <3>int. rx[i][r] \in Int
  BY ONLY <3>slot, SMTT(5) DEF Xids
 <3>dest. xdst[rx[i][r]] \in Pages /\ Loc(xdst[rx[i][r]])=xd[rx[i][r]] /\ xd[rx[i][r]]=hd[r][rg[i][r]]
  BY ONLY <2>1, <2>nxInt, <3>slot, <3>int, SMTT(5) DEF K2, ExpPage, ExpInst
 <3>route. rpe[i][r]=hd[r][rg[i][r]]
  BY ONLY <1>p4Rjn, <2>1, <2>3, SMTT(5) DEF K8, Active
 <3>apart. xdst[rx[i][r]] # rpg[i][r]
  BY ONLY <2>3, <3>slot, <3>dest, <3>route, Sizes, SMTT(5) DEF IsP, DInst, Sizes
 <3>qed. QED BY ONLY <3>slot, <3>apart, SMTT(5) DEF ExpPage, InitPage
<2>allocated. ASSUME NEW y \in Xids, y<nx'
              PROVE ((y \in led'[ExpPage(y)']) <=> xst'[y]="posted") /\
                    (InitPage(y)' \in Pages => ((y \in led'[InitPage(y)']) <=> iv'[y] \in {"reg","posted","failret"}))
 <3>index. y \in Int /\ y<nx
  BY ONLY <2>allocated, <2>2, SMTT(5) DEF Xids
 <3>old. ((y \in led[ExpPage(y)]) <=> xst[y]="posted") /\
         (InitPage(y) \in Pages => ((y \in led[InitPage(y)]) <=> iv[y] \in {"reg","posted","failret"}))
  BY ONLY <2>1, <2>allocated, <3>index, SMTT(5) DEF K4
 <3>edomain. ExpPage(y) \in Pages
  BY ONLY <2>1, <2>allocated, <2>nxInt, <3>index, SMTT(5) DEF K2
 <3>enoerase. ~(ECancel(i,r) /\ ExpPage(y)=rpg[i][r] /\ y=rx[i][r])
  BY ONLY <2>cancel, SMTT(5)
 <3>exp. (y \in led'[ExpPage(y)']) <=> xst'[y]="posted"
  <4>member. (y \in led'[ExpPage(y)]) <=> y \in led[ExpPage(y)]
   BY ONLY <2>ledEffect, <3>edomain, <3>enoerase, SMTT(5)
  <4>qed. QED BY ONLY <2>allocated, <2>select, <2>2, <3>old, <4>member, SMTT(5)
 <3>init. ASSUME InitPage(y)' \in Pages
           PROVE (y \in led'[InitPage(y)']) <=> iv'[y] \in {"reg","posted","failret"}
  <4>domain. InitPage(y) \in Pages
   BY ONLY <2>allocated, <2>select, <3>init, SMTT(5)
  <4>update. led'[InitPage(y)]=IF InitPage(y)=rpg[i][r] /\ ECancel(i,r) THEN led[InitPage(y)] \ {rx[i][r]} ELSE led[InitPage(y)]
   BY ONLY <2>ledEffect, <4>domain, SMTT(5)
  <4>iv. iv'[y]=IF ECancel(i,r) /\ y=rx[i][r] THEN "nopost" ELSE iv[y]
   BY ONLY <2>allocated, <2>ivEffect, SMTT(5)
  <4>qed. QED BY ONLY <2>allocated, <2>select, <2>cancel, <3>old, <4>domain, <4>update, <4>iv, SMTT(5)
 <3>qed. QED BY ONLY <3>exp, <3>init, SMTT(5)
<2>members. ASSUME NEW q \in Pages, NEW y \in led'[q]
            PROVE y<nx' /\ (q=ExpPage(y)' \/ q=InitPage(y)')
 <3>old. y \in led[q]
  BY ONLY <2>members, <2>ledEffect, SMTT(5)
 <3>domain. y \in Xids
  BY ONLY <2>members, <2>1, <3>old, SMTT(5) DEF dcfPK
 <3>record. y<nx /\ (q=ExpPage(y) \/ q=InitPage(y))
  BY ONLY <2>1, <2>members, <3>old, SMTT(5) DEF K4
 <3>qed. QED BY ONLY <2>2, <2>select, <3>domain, <3>record, SMTT(5)
<2>qed. QED BY ONLY <2>allocated, <2>members, SMTT(5) DEF K4
\* T2M-END R2M1506_PdRPPP_PdEExit_K4

\* T2M-SCOPE R2M1508_PdRPPP_PdEExit_K5

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

<1>aUiT6.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE K2'
<2> USE ONLY <1>aUiT6, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW yy \in Xids PROVE EK2At(yy)'
 BY <1>CMeT, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>1. K2 /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<gen,hd,hok,hp,hw,nx,xd,xdst,xg,xk,xlt,xnt,xp,xr,xsrc,xst>>
 BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF rtV, instV, kV, Sizes, Location, Design
<2>3. IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"}
 BY SMTT(5), Sizes, Location, Design DEF EExit, Sizes, Location, Design
<2>35. EK2At(yy)
 BY <2>1, <1>o6IHG, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
 BY <2>35, <2>2, <2>3, <1>Igs7TOaR, <1>Ko9N, Design, Sizes, Location, SMTT(5) DEF EK2At, ECancel, ELed, EState, ExpInst, ExpPage, InitInst, InitPage, K2, SHJS, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1502_PdRPPP_PdEExit_K2

\* T2M-SCOPE R2M1504_PdRPPP_PdEExit_K3

<1>ufyjs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE K3'
<2> USE ONLY <1>ufyjs, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW yy \in Xids PROVE EK3At(yy)'
 BY <1>lNob, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>1. K3
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K3, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<hok,hw,xk,xlt,xnt,xst>>
 BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF rtV, instV, kV, Sizes, Location, Design
<2>3. IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"}
 BY SMTT(5), Sizes, Location, Design DEF EExit, Sizes, Location, Design
<2>35. EK3At(yy)
 BY <2>1, <1>fsuoF, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
 BY <2>35, <2>2, <2>3, <1>Igs7TOaR, <1>Ko9N, Design, Sizes, Location, SMTT(5) DEF EK3At, CqeHw, ECancel, ELed, EState, InFl, K3, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1504_PdRPPP_PdEExit_K3


<1>HDeJqxDq.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE K2'
 BY ONLY <1>HDeJqxDq, Sizes, Location, Design, <1>hv0XuP, <1>aUiT6, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1765_PdRPPP_PdE_PTimeout_K2

\* T2M-SCOPE R2M1766_PdRPPP_PdE_PTimeout_K3

<1>at7tiJht.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE K3'
 BY ONLY <1>at7tiJht, Sizes, Location, Design, <1>hv0XuP, <1>ufyjs, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1766_PdRPPP_PdE_PTimeout_K3


<1>nCZvjrOs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE K4'
 BY ONLY <1>nCZvjrOs, Sizes, Location, Design, <1>hv0XuP, <1>p4Rjn, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1767_PdRPPP_PdE_PTimeout_K4

\* T2M-SCOPE R2M1768_PdRPPP_PdE_PTimeout_K5

<1>v17THsFy.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE K5'
 BY ONLY <1>v17THsFy, Sizes, Location, Design, <1>hv0XuP, <1>ANehn, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1768_PdRPPP_PdE_PTimeout_K5

\* T2M-SCOPE R2M1769_PdRPPP_PdE_PTimeout_K6

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


<1>MTQFHSdj88NQ6S9.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE QuarNoReg'
 BY ONLY <1>MTQFHSdj88NQ6S9, Sizes, Location, Design, <1>hv0XuP, <1>Vu9UdvfJZErg, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1774_PdRPPP_PdE_PTimeout_QuarNoReg

\* T2M-SCOPE R2M1775_PdRPPP_PdE_PTimeout_S5

<1>zKcqwhKKfb.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE K2'
  BY ONLY <1>zKcqwhKKfb, Sizes, Location, Design, <1>HDeJqxDq, V21_Inv_K2 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OH0ayUYN34.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE K3'
  BY ONLY <1>OH0ayUYN34, Sizes, Location, Design, <1>at7tiJht, V21_Inv_K3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iboBC8kS3B.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE K4'
  BY ONLY <1>iboBC8kS3B, Sizes, Location, Design, <1>nCZvjrOs, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aTS3kCJ15C.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE K5'
  BY ONLY <1>aTS3kCJ15C, Sizes, Location, Design, <1>v17THsFy, V21_Inv_K5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>prtlGfLq1IRZe65eB.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>prtlGfLq1IRZe65eB, Sizes, Location, Design, <1>MTQFHSdj88NQ6S9, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1776_PdRPPdPAgg_PTimeout


<1>GBlFYGIpWF1UReKPlh.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE RP_NoNewStop /\ RP_DReadFrame /\ UNCHANGED xdst
<2> HIDE DEF PTimeout, PEnd, CoreTypeOK, STypeOK, RP_NoNewStop, RP_DReadFrame
<2>hardware. UNCHANGED <<hw,xdst>>
 BY ONLY <1>GBlFYGIpWF1UReKPlh, ZenonT(5) DEF PTimeout, PEnd
<2>records. ph'=[ph EXCEPT ![i][r]="end"] /\ UNCHANGED rpg
 BY ONLY <1>GBlFYGIpWF1UReKPlh, ZenonT(5) DEF PTimeout, PEnd
<2>side. IsP(i)
 BY ONLY <1>GBlFYGIpWF1UReKPlh, ZenonT(5) DEF PTimeout
<2>noStop. RP_NoNewStop
 BY ONLY <2>hardware, SMTT(5) DEF RP_NoNewStop
<2>separate. \A j \in DInst : j # i
 BY ONLY <2>side, Sizes, SMTT(5) DEF IsP, DInst, PInst, Inst, NL, Sizes
<2>types. ph \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>GBlFYGIpWF1UReKPlh, V22_T_ph, SMTT(5)
<2>domains. DInst \subseteq Inst
 BY ONLY Sizes, SMTT(5) DEF DInst, Inst, NL, Sizes
<2>dside. \A j \in DInst, u \in Rq : ph'[j][u]=ph[j][u]
 BY ONLY <2>records, <2>separate, <2>types, <2>domains, SMTT(5)
<2>dread. RP_DReadFrame
 BY ONLY <2>dside, <2>records, SMTT(5) DEF RP_DReadFrame
<2>qed. QED
 BY ONLY <2>hardware, <2>noStop, <2>dread, SMTT(5)

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


<1>nxWsU6S8a3S232x3OaP.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE RP_RegPrelude
<2> HIDE DEF PTimeout, PEnd, RP_RegPrelude, RP_Posted, K3, CoreTypeOK, STypeOK
<2>old. K3
 BY ONLY <1>nxWsU6S8a3S232x3OaP, V21_Inv_K3, Sizes, Location, Design, SMTT(5)
<2>type. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 BY ONLY <1>nxWsU6S8a3S232x3OaP, V22_T_iv, SMTT(5)
<2>frame. UNCHANGED xsrc
 BY ONLY <1>nxWsU6S8a3S232x3OaP, ZenonT(5) DEF PTimeout, PEnd
<2>effect. iv'=iv \/ iv'=[iv EXCEPT ![rx[i][r]]="nopost"]
 BY ONLY <1>nxWsU6S8a3S232x3OaP, ZenonT(5) DEF PTimeout, PEnd
<2>oldreg. \A y \in Xids : iv[y]="reg" => xk[y]="wr"
 BY ONLY <2>old, SMTT(5) DEF K3
<2>point. ASSUME NEW y \in Xids, iv'[y]="reg"
 PROVE xk[y]="wr" /\ (RP_Posted(y) \/ (iv[y]="reg" /\ xsrc'[y]=xsrc[y]))
 <3>wasreg. iv[y]="reg"
  BY ONLY <2>point, <2>type, <2>effect, SMTT(5)
 <3>qed. QED BY ONLY <2>point, <3>wasreg, <2>oldreg, <2>frame, SMTT(5)
<2>qed. QED BY ONLY <2>point, SMTT(5) DEF RP_RegPrelude

\* T2M-LOCAL-VISIBILITY

<1>RVVfQPPpVWvO4v.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE K1'
<2> USE ONLY <1>RVVfQPPpVWvO4v, Sizes, Location, Design
<2>1. K1 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K1, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qd0mX3HBPqMFiG.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE K2'
 BY ONLY <1>qd0mX3HBPqMFiG, Sizes, Location, Design, <1>zKcqwhKKfb DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UkM3qC1iRaPJGy.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE K3'
 BY ONLY <1>UkM3qC1iRaPJGy, Sizes, Location, Design, <1>OH0ayUYN34 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PFaZ7gxrrgu6hI.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE K4'
 BY ONLY <1>PFaZ7gxrrgu6hI, Sizes, Location, Design, <1>iboBC8kS3B DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ztx5zNBTMZLXg1pQF4kGk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>ztx5zNBTMZLXg1pQF4kGk, Sizes, Location, Design, <1>prtlGfLq1IRZe65eB DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZknqMlRNZV3K6q.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE nx' \in 1..(MX+1)
<2> USE ONLY <1>ZknqMlRNZV3K6q, Sizes, Location, Design
<2>1. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ZknqMlRNZV3K6q, V22_T_nx, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF Xids, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pqHWSfucyrnt.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE SI7'
<2> USE ONLY <1>pqHWSfucyrnt, Sizes, Location, Design
<2>1. RP_RegSourceSafe BY <1>RVVfQPPpVWvO4v, <1>qd0mX3HBPqMFiG, <1>UkM3qC1iRaPJGy, <1>PFaZ7gxrrgu6hI, <1>ztx5zNBTMZLXg1pQF4kGk, <1>ZknqMlRNZV3K6q, <1>NU8zGD7bQ5u9BXIjl, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>nxWsU6S8a3S232x3OaP, <1>KvDgRwgd9SE, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1959_PdRPSI7_PTimeout


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


<1>wrF2606oXr36NJLqhFavSPD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE UNCHANGED <<xsrc,xr,xg,xk,nx,xdst>> /\ RP2_NoNewReg /\ RP2_PrivatePhaseStep
<2> USE ONLY <1>wrF2606oXr36NJLqhFavSPD, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ iv \in [Xids -> {"none","reg","posted","failret","cqe","nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>wrF2606oXr36NJLqhFavSPD, V22_T_iv, V22_T_ph, SMTT(5)

<2>2. UNCHANGED <<xsrc,xr,xg,xk,nx,xdst>>
 BY Design, ZenonT(10), Sizes, Location DEF EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>3. RP2_NoNewReg
 BY <2>1, Design, SMTT(10), Sizes, Location DEF RP2_NoNewReg, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. RP2_PrivatePhaseStep
 BY <2>1, Design, Sizes, SMTT(10), Location DEF RP2_PrivatePhaseStep, Active, Inst, PInst, NL, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>5. QED BY <2>2, <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IcmpXZyKIh1bF5Tg0uqBnB1Ln.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE RP2_StoppedHeldBack
<2> USE ONLY <1>IcmpXZyKIh1bF5Tg0uqBnB1Ln, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 /\ hw \in [Xids -> {"none","fly","issued","stop"}] /\ hok \in [Xids -> BOOLEAN]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>IcmpXZyKIh1bF5Tg0uqBnB1Ln, V22_T_hok, V22_T_hw, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>15. \A q \in Pages : Loc(q) \in Int
 BY Location, Sizes, SMTT(10), Design DEF KPages, Inst, NL, Sizes, Location, Design
<2>2. \A j \in Inst,u \in Rq : Active(j,u) => rpg[j][u] \in Pages /\ Loc(rpg[j][u])=j
 BY SMTT(10), V21_Inv_K8, Sizes, Location, Design DEF K8, Sizes, Location, Design
<2>3. RP2_DHeldBack
 BY <2>1, <2>15, <2>2,  Design, Sizes, SMTT(10), Location DEF RP2_DHeldBack, IsP, IsD, Active, Inst, NL, AfterEv, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. RP2_StopBack
 BY <2>1, Design, SMTT(10), Sizes, Location DEF RP2_StopBack, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>5. UNCHANGED <<xdst,xr,xg>>
 BY Design, ZenonT(10), Sizes, Location DEF EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>6. QED BY <2>3, <2>4, <2>5, <1>IKXZRHRBF2l7ZlEB9jY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>l8lQPRp4jHA5g.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE P_SI5'
 BY ONLY <1>l8lQPRp4jHA5g, Sizes, Location, Design, <1>wrF2606oXr36NJLqhFavSPD, <1>IcmpXZyKIh1bF5Tg0uqBnB1Ln, <1>GBlFYGIpWF1UReKPlh, <1>lsV4PJOinviYXaFgiDjRimJ,
    <1>PFaZ7gxrrgu6hI, <1>ztx5zNBTMZLXg1pQF4kGk, <1>dKRaSSpacKjf DEF Sizes, Location, Design
\* T2M-END R2M1960_PdRPR2SI5_PTimeout


<1> QED BY <1>pqHWSfucyrnt, <1>l8lQPRp4jHA5g, <1>aTS3kCJ15C, <1>LhWo3A37Ml6A, <1>p7vpjSzMswi, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PTimeout_03_01 SHA 66bc79cd3e32ae3a702997d9485060428bd56ea49ccdb6e8f790c94b5689fd48
USE DEF P_PagePoolsDisjoint, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI1, V21_Inv_P_SI3, V21_Inv_PrivateMapOwner, V21_Inv_S5, V22_SF_SharedOrigin, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_plt, V22_T_ptl, V22_T_pvis, V22_T_sfly, V22_T_sled, V22_T_xdst
HIDE DEF Part_PTimeout_02_02, V21_Inv_K4, V21_Inv_K5, V21_Inv_P_SI5, V21_Inv_QuarNoReg, V21_Inv_S2, V21_Inv_SI7, V21_Inv_SI8, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Status, V22_T_hok, V22_T_iv, V22_T_nx, V22_T_xsrcP, V22_T_xsrcS
THEOREM Part_PTimeout_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE (K7)' /\ (K8)' /\ (K9)' /\ (S5)' /\ (K13)' /\ (K6)' /\ (KReadIntegrity)' /\ (PrivateMapOwner)' /\ (SharedImmutable)'
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



           G5gc0VR4iIv(q) ==
            /\ pst[q] \in {"priv","drain","quar","shared"}
            /\ (IsP(Loc(q)) => plt[q]=ptl[q] /\ sfly[q]={} /\ sled[q]={})
            /\ (IsD(Loc(q)) /\ pst[q] # "shared" => led[q]={})
            /\ NoWriteInto(q)


           uHf2IvZFVl(q) ==
            /\ (pst[q]="shared" => pst'[q]="shared")
            /\ pst'[q] \in {"priv","drain","quar","shared"}
            /\ UNCHANGED <<pr[q],pgn[q],plt[q],ptl[q],pvis[q],sfly[q]>>
            /\ (IsD(Loc(q)) /\ led[q]={} => led'[q]={})
            /\ (IsP(Loc(q)) /\ sled[q]={} => sled'[q]={})
            /\ (NoWriteInto(q) => NoWriteInto(q)')


           chzYVBZRW == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           iUaEq5N5 == pr \in [Pages -> 0..NR]


           xsrHD99Mh == pgn \in [Pages -> 0..MG]


           shRopQ4vS == plt \in [Pages -> 0..PS]


           wwfDV4G8v == ptl \in [Pages -> -1..PS]


           bGjNnlab0G == pvis \in [Pages -> BOOLEAN]


           KO9yM_PKDJ == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           SDsDssam7 == led \in [Pages -> SUBSET Xids]


           daXBjpmOeP == sled \in [Pages -> SUBSET (Rq \X Gens)]


           RPRBWqJH == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           HaawKrOn92 == xdst \in [Xids -> 0..NP]


           f1hrMPl_CA == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           lRutIdpbS == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           bcY_9ZySuSdM == chzYVBZRW /\ iUaEq5N5 /\ xsrHD99Mh /\ shRopQ4vS /\ wwfDV4G8v /\ bGjNnlab0G /\ KO9yM_PKDJ /\ SDsDssam7 /\ daXBjpmOeP /\ RPRBWqJH /\ HaawKrOn92 /\ f1hrMPl_CA /\ lRutIdpbS


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

<1> HIDE DEF SKXMH9, YoZCNdW, yRiuUrmy, o2PqE, xGwcBEcmY, rd1IZu, SuEEX, XjZJP, csjI5RPR, ZdeEe4zmp3uag, vLn7d, dLu17, NXhXrvU9, i08nRBE, K9XTdyW, JBL3tE9j, vuZd9ejUPGa3lV56, P28Z9h_alpV7bpoxO, G5gc0VR4iIv, uHf2IvZFVl, chzYVBZRW, iUaEq5N5, xsrHD99Mh, shRopQ4vS, wwfDV4G8v, bGjNnlab0G, KO9yM_PKDJ, SDsDssam7, daXBjpmOeP, RPRBWqJH, HaawKrOn92, f1hrMPl_CA, lRutIdpbS, bcY_9ZySuSdM, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, EExit, ECancel, ELed, EState

<1>pd2OFU6YkaUFY95tm.        
 ASSUME B2, SFollow
 PROVE vuZd9ejUPGa3lV56
 BY ONLY <1>pd2OFU6YkaUFY95tm, Sizes, Location, Design, ZenonT(10) DEF SFollow, vuZd9ejUPGa3lV56, SKXMH9, YoZCNdW, yRiuUrmy, o2PqE, xGwcBEcmY, rd1IZu, SuEEX, XjZJP, csjI5RPR, ZdeEe4zmp3uag, vLn7d, dLu17, NXhXrvU9, i08nRBE, K9XTdyW, JBL3tE9j, Sizes, Location, Design


<1>xgz3m4HqrMEJK.        
 ASSUME SFollow
 PROVE UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ONLY <1>xgz3m4HqrMEJK, Sizes, Location, Design, ZenonT(10), V21_SFollowStatic DEF sV, Sizes, Location, Design


<1>in1Tzg7MuQoimS0.        
 ASSUME NEW p \in SPages, B2, SFollow, SI4, spst[p]="shared"
 PROVE spst'[p]="shared"
<2> USE ONLY <1>in1Tzg7MuQoimS0, Sizes, Location, Design
<2>1. \A x \in Xids : xsrcP[x]={} BY Sizes, Location, Design DEF SI4, Sizes, Location, Design
<2>2. QED BY <2>1, <1>pd2OFU6YkaUFY95tm, SMTT(10), Sizes, Location, Design DEF vuZd9ejUPGa3lV56, K9XTdyW, NXhXrvU9, Sizes, Location, Design


<1>cCu6xzlKl5KmC7HQ.        
 ASSUME NEW p \in SPages, B2, SFollow, spst'[p]="shared"
 PROVE spst[p]="shared"
 BY ONLY <1>cCu6xzlKl5KmC7HQ, Sizes, Location, Design, <1>pd2OFU6YkaUFY95tm, SMTT(10) DEF vuZd9ejUPGa3lV56, Sizes, Location, Design


<1>ktmrRmfGsTxGVe.        
 ASSUME NEW i \in PInst, NEW k \in KSlots, NEW e, B2, SFollow,
        UNCHANGED <<kpin,krs>>, kpin[i][k], e \in krs[i][k], e[3] \in SPages
 PROVE spst'[e[3]] \in {spst[e[3]],"drain","quar"}
<2> USE ONLY <1>ktmrRmfGsTxGVe, Sizes, Location, Design
<2>1. i08nRBE(e[3]) BY SMTT(10), Sizes, Location, Design DEF i08nRBE, Sizes, Location, Design
<2>2. ~K9XTdyW(e[3]) BY <2>1, Sizes, Location, Design DEF K9XTdyW, Sizes, Location, Design
<2>3. QED BY <2>2, <1>pd2OFU6YkaUFY95tm, SMTT(10), Sizes, Location, Design DEF vuZd9ejUPGa3lV56, Sizes, Location, Design


<1>qj8Wntb2sShKlp.        
 ASSUME NEW h, B2, SFollow, h \in rpgS, YoZCNdW(h)
 PROVE h \in rpgS'
 BY ONLY <1>qj8Wntb2sShKlp, Sizes, Location, Design, Design, <1>pd2OFU6YkaUFY95tm, SMTT(10) DEF vuZd9ejUPGa3lV56, o2PqE, Sizes, Location, Design


<1>UgVvtaQtQGe.        
 ASSUME PinInv, SFollow, UNCHANGED <<kpin,krs>>
 PROVE P_SI3'
<2> USE ONLY <1>UgVvtaQtQGe, Sizes, Location, Design
<2>1. B2 => SI3 /\ SI4
 BY V21_Inv_P_SI3, V21_Inv_P_SI4, Sizes, Location, Design DEF P_SI3, P_SI4, Sizes, Location, Design
<2>2. UNCHANGED <<sown,sgen,skey,swrite,sdata>> BY <1>xgz3m4HqrMEJK, Sizes, Location, Design DEF Sizes, Location, Design
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
   BY <2>1, <2>4, <3>1, <1>in1Tzg7MuQoimS0, <1>cCu6xzlKl5KmC7HQ, Sizes, Location, Design DEF Sizes, Location, Design
  <4>4. spst'[e[3]] \in {spst[e[3]],"drain","quar"}
   BY <2>4, <3>1, <4>1, <1>ktmrRmfGsTxGVe, Sizes, Location, Design DEF Sizes, Location, Design
  <4>5. YoZCNdW(SH(i,e[1],e[2],e[3]))
   BY <3>1, SMTT(10), Sizes, Location, Design DEF YoZCNdW, SH, Sizes, Location, Design
  <4>6. spst'[e[3]]="shared" => SH(i,e[1],e[2],e[3]) \in rpgS'
   BY <2>4, <4>2, <4>3, <4>5, <1>qj8Wntb2sShKlp, Sizes, Location, Design DEF Sizes, Location, Design
  <4>7. QED BY <2>2, <4>2, <4>3, <4>4, <4>6, SMTT(10), Sizes, Location, Design DEF SData, SHeld, Sizes, Location, Design
 <3>2. QED BY <2>4, <3>1, Sizes, Location, Design DEF P_SI3, SI3, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design


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


<1>IPerdMiu9fRq3yH0GoNqf.        
 ASSUME PinInv, SFollow, P28Z9h_alpV7bpoxO
 PROVE SMapIntegrity'
<2> USE ONLY <1>IPerdMiu9fRq3yH0GoNqf, Sizes, Location, Design
<2>1. SMapIntegrity /\ PrivateMapOwner /\ (B2 => SI1 /\ SI4) /\ STypeOK
 BY V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI4, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF KReadIntegrity, P_SI1, P_SI4, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF SMapIntegrity, Sizes, Location, Design
<2>3. CASE B2
 <3>1. vuZd9ejUPGa3lV56 BY <2>3, <1>pd2OFU6YkaUFY95tm, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW i \in PInst, NEW r \in Rq, Active(i,r)', smap'[i][r] \in SPages
        PROVE spst'[smap'[i][r]] \in {"priv","shared"}
  <4>1. Active(i,r) /\ rg'[i][r]=rg[i][r] /\ smap'[i][r]=smap[i][r]
   BY <2>3, <3>2, <1>c1NvR5k2Hf, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. spst[smap[i][r]] \in {"priv","shared"} /\ Loc(smap[i][r])=i
   BY <2>1, <2>3, <3>2, <4>1, Sizes, SMTT(10), Location, Design DEF SMapIntegrity, SI1, SPages, Sizes, Location, Design
  <4>3. CASE spst[smap[i][r]]="shared"
   BY <2>1, <2>3, <3>2, <4>1, <4>3, <1>in1Tzg7MuQoimS0, Sizes, Location, Design DEF Sizes, Location, Design
  <4>4. CASE spst[smap[i][r]]="priv"
   <5>1. sown[smap[i][r]]=r /\ sgen[smap[i][r]]=rg[i][r]
    BY <2>1, <2>3, <3>2, <4>1, <4>4, Sizes, Location, Design DEF PrivateMapOwner, Sizes, Location, Design
   <5>2. ~NXhXrvU9(smap[i][r]) /\ ~K9XTdyW(smap[i][r])
    BY <3>2, <4>1, <4>2, <4>4, <5>1, SMTT(10), Sizes, Location, Design DEF NXhXrvU9, K9XTdyW, Active, Sizes, Location, Design
   <5>3. \A x \in Xids : xsrcP[x]={} BY <2>1, <2>3, Sizes, Location, Design DEF SI4, Sizes, Location, Design
   <5>4. QED BY <3>1, <3>2, <4>1, <4>4, <5>2, <5>3, SMTT(10), Sizes, Location, Design DEF vuZd9ejUPGa3lV56, Sizes, Location, Design
  <4>5. QED BY <4>2, <4>3, <4>4, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>3, <3>2, Sizes, Location, Design DEF SMapIntegrity, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>NKpmTGibQbfoB2fltKNjPvl.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE P28Z9h_alpV7bpoxO
<2> USE ONLY <1>NKpmTGibQbfoB2fltKNjPvl, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>NKpmTGibQbfoB2fltKNjPvl, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF P28Z9h_alpV7bpoxO, Active, PInst, Inst, NL, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design


<1>uZPRx4ABYm99.        
 ASSUME PinInv, NEW q \in Pages, KPinned(q)
 PROVE G5gc0VR4iIv(q)
<2> USE ONLY <1>uZPRx4ABYm99, Sizes, Location, Design
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
<2>6. QED BY <2>2, <2>3, <2>30, <2>4, <2>5, Sizes, SMTT(10), Location, Design DEF G5gc0VR4iIv, KHeld, KData, IsP, IsD, Inst, NL, Sizes, Location, Design


<1>Ah2WU6EE8ThfI.        
 ASSUME PinInv, SFollow, UNCHANGED <<kpin,krs,kfly>>,
        xdst' \in [Xids -> 0..NP],
        \A q \in Pages : KPinned(q) => uHf2IvZFVl(q)
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>Ah2WU6EE8ThfI, Sizes, Location, Design
<2>1. K14 /\ K15 /\ NoFreeUnderRead /\ krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0,1,2,3,4})]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Ah2WU6EE8ThfI, V22_T_krs, V21_Inv_K14, V21_Inv_K15, V21_Inv_NoFreeUnderRead, Sizes, Location, Design, SMTT(5)

<2>2. P_SI3' BY <1>UgVvtaQtQGe, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<skey,sdata,swrite>> BY <1>xgz3m4HqrMEJK, Sizes, Location, Design DEF Sizes, Location, Design
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
  <4>2. uHf2IvZFVl(e[3]) BY <3>2, <4>1, Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. QED BY <3>1, <3>2, <4>2, P_PagePoolsDisjoint, SMTT(10), Sizes, Location, Design DEF uHf2IvZFVl, KHeld, KData, Sizes, Location, Design
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


<1>v92EheZ1t1zaKlY.         PinInv => bcY_9ZySuSdM
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_sfly, V22_T_sled, V22_T_xdst, SMTT(5) DEF HaawKrOn92, KO9yM_PKDJ, RPRBWqJH, SDsDssam7, bGjNnlab0G, bcY_9ZySuSdM, chzYVBZRW, daXBjpmOeP, f1hrMPl_CA, iUaEq5N5, lRutIdpbS, shRopQ4vS, wwfDV4G8v, xsrHD99Mh

<1>wu72IK1nv0xf7evd.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow, NEW q \in Pages, KPinned(q)
 PROVE uHf2IvZFVl(q)
<2> USE ONLY <1>wu72IK1nv0xf7evd, Sizes, Location, Design
<2>old. G5gc0VR4iIv(q)
 BY ONLY <1>wu72IK1nv0xf7evd, <1>uZPRx4ABYm99, Sizes, Location, Design, SMTT(5)
<2>mut. Mut="none"
 BY ONLY Design, ZenonT(5) DEF Design
<2>action. PTimeout(i,r)
 BY ONLY <1>wu72IK1nv0xf7evd, <2>mut, SMTT(5) 
<2>guard. IsP(i) /\ Active(i,r)
 BY ONLY <2>action, SMTT(5) DEF PTimeout, Active
<2>k8. K8
 BY ONLY <1>wu72IK1nv0xf7evd, V21_Inv_K8, Sizes, Location, Design, SMTT(5)
<2>source. rpg[i][r] \in Pages /\ Loc(rpg[i][r])=i /\ pst[rpg[i][r]]="priv"
 BY ONLY <1>wu72IK1nv0xf7evd, <2>guard, <2>k8, SMTT(5) DEF K8
<2>effect. PICK nl : PageTo(rpg[i][r],GiveUpToN(rpg[i][r],"timeout",nl),rpe[i][r],nl,sled[rpg[i][r]])
 BY ONLY <2>action, ZenonT(5) DEF PTimeout, PEnd
<2>frame. UNCHANGED <<ptl,pvis,sfly,hw,xdst>>
 BY ONLY <2>action, ZenonT(5) DEF PTimeout, PEnd, xV
<2>type. pst \in [Pages -> {"free","priv","shared","drain","quar"}] /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG] /\ plt \in [Pages -> 0..PS] /\ led \in [Pages -> SUBSET Xids] /\ sled \in [Pages -> SUBSET (Rq \X Gens)]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>wu72IK1nv0xf7evd, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_sled, SMTT(5)

<2>nowrite. NoWriteInto(q) => NoWriteInto(q)'
 BY ONLY <2>frame, SMTT(5) DEF NoWriteInto, Writing, InFl
<2>same. CASE q=rpg[i][r]
 <3>state. GiveUpToN(rpg[i][r],"timeout",nl) \in {"drain","quar"}
  BY ONLY <1>wu72IK1nv0xf7evd, <2>same, <2>mut, SMTT(5) DEF GiveUpToN, PinBlocks
 <3>side. IsP(Loc(q)) /\ ~IsD(Loc(q))
  BY ONLY <1>wu72IK1nv0xf7evd, <2>source, <2>guard, <2>same, Sizes, SMTT(5) DEF IsP, IsD, Inst, NL, Sizes
 <3>update. pst'[q] \in {"drain","quar"} /\ UNCHANGED <<pr[q],pgn[q],plt[q]>> /\ sled'[q]=sled[q]
  BY ONLY <1>wu72IK1nv0xf7evd, <2>same, <2>effect, <2>type, <3>state, SMTT(5) DEF PageTo
 <3>qed. QED BY ONLY <2>old, <2>source, <2>same, <2>frame, <2>nowrite, <3>side, <3>update, SMTT(5) DEF uHf2IvZFVl, G5gc0VR4iIv
<2>other. CASE q # rpg[i][r]
 <3>update. UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
  BY ONLY <1>wu72IK1nv0xf7evd, <2>other, <2>effect, <2>type, SMTT(5) DEF PageTo
 <3>qed. QED BY ONLY <2>old, <2>frame, <2>nowrite, <3>update, SMTT(5) DEF uHf2IvZFVl, G5gc0VR4iIv
<2>qed. QED BY ONLY <2>same, <2>other, SMTT(5)

<1>fPjA94YPeUQzZphfCz25.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs,kfly,xdst>>
 BY ONLY <1>fPjA94YPeUQzZphfCz25, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, GiveUpTo, GiveUpToN, PEnd, PTimeout, PageTo, PinBlocks, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design


<1>Aq2OIK15NB6zwNz.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>Aq2OIK15NB6zwNz, Sizes, Location, Design
<2>1. \A q \in Pages : KPinned(q) => uHf2IvZFVl(q)
 BY <1>wu72IK1nv0xf7evd, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,kfly,xdst>> BY <1>fPjA94YPeUQzZphfCz25, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Aq2OIK15NB6zwNz, <2>2, V22_T_xdst, SMTT(5)

<2>4. QED BY <2>1, <2>2, <2>3, <1>Ah2WU6EE8ThfI, Sizes, Location, Design DEF Sizes, Location, Design


<1>RGjYAiG6PeiEJJRaLYx5I07Xh.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE PrivateMapOwner'
 BY ONLY <1>RGjYAiG6PeiEJJRaLYx5I07Xh, Sizes, Location, Design, <1>NKpmTGibQbfoB2fltKNjPvl, <1>RcA1VC7hI8 DEF Sizes, Location, Design


<1>ov0Sx7WlRXBysX5IZRwaWxay.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>ov0Sx7WlRXBysX5IZRwaWxay, Sizes, Location, Design
<2>1. BaseKReadIntegrity' BY <1>Aq2OIK15NB6zwNz, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. SMapIntegrity' BY <1>NKpmTGibQbfoB2fltKNjPvl, <1>IPerdMiu9fRq3yH0GoNqf, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design


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

<1>Y5FpSjIyB62d8mDnAIRmCips.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>Y5FpSjIyB62d8mDnAIRmCips, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Y5FpSjIyB62d8mDnAIRmCips, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF PEnd, PTimeout, instV, kV, rtV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

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
  <3>route. hd[r][rg[i][r]] \in DInst
   BY ONLY <1>Igs7TOaR, <2>1, <2>3, SMTT(5) DEF K1
  <3>page. prefc[rpg[i][r]]=0 /\ pqp[rpg[i][r]]=0
   BY ONLY <2>3, <2>4, SMTT(5) DEF Zzz7b
  <3>cancel. ASSUME ECancel(i,r)
              PROVE rx[i][r] \in Xids /\ rx[i][r]<nx /\ iv[rx[i][r]]="reg" /\ xk[rx[i][r]]="wr" /\ xsrc[rx[i][r]]=rpg[i][r] /\ xr[rx[i][r]]=r /\ xg[rx[i][r]]=rg[i][r]
   <4>slot. rx[i][r] \in Xids /\ rx[i][r]<nx /\ iv[rx[i][r]]="reg" /\ xsrc[rx[i][r]]=rpg[i][r] /\ xr[rx[i][r]]=r /\ xg[rx[i][r]]=rg[i][r]
    BY ONLY <2>2, <3>cancel, SMTT(5) DEF dlzHJ, ECancel
   <4>kind. xk[rx[i][r]]="wr"
    BY ONLY <2>1, <4>slot, SMTT(5) DEF K3
   <4>qed. QED BY ONLY <4>slot, <4>kind, SMTT(5)
  <3>qed. QED BY ONLY <2>3, <3>route, <3>page, <3>cancel, SMTT(5)

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


<1>hv0XuP.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE EExit(i,r,"timeout")
 BY ONLY <1>hv0XuP, Sizes, Location, Design, SMTT(5) DEF PTimeout, EExit, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>IR3DC3Gy7.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE K13'
 BY ONLY <1>IR3DC3Gy7, Sizes, Location, Design, <1>hv0XuP, <1>CFfxok, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1763_PdRPPP_PdE_PTimeout_K13

\* T2M-SCOPE R2M1764_PdRPPP_PdE_PTimeout_K16

<1>piBsDrTT.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE K6'
 BY ONLY <1>piBsDrTT, Sizes, Location, Design, <1>hv0XuP, <1>QNrqe, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1769_PdRPPP_PdE_PTimeout_K6


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


<1>fBG6ws7p.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE K7'
 BY ONLY <1>fBG6ws7p, Sizes, Location, Design, <1>hv0XuP, <1>ToTOW, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1770_PdRPPP_PdE_PTimeout_K7


<1>HNR3T.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE K8'
<2> USE ONLY <1>HNR3T, Sizes, Location, Design
<2>old. K8
 BY ONLY <1>HNR3T, V21_Inv_K8, Sizes, Location, Design, SMTT(5)
<2>active. IsP(i) /\ Active(i,r)
 BY ONLY <1>HNR3T, ZenonT(5) DEF EExit
<2>frame. UNCHANGED <<gen,hd,hp,nx,ptl,rg,rhit,rpe,rpg,rx,sfly,xg,xlt,xr,xsrc>>
 BY ONLY <1>HNR3T, <1>DqPcfGr, Sizes, Location, Design, SMTT(5) DEF rtV, instV, kV
<2>phase. \A a \in Inst, b \in Rq : ph'[a][b]=IF a=i /\ b=r THEN "end" ELSE ph[a][b]
 BY ONLY <1>HNR3T, <1>L6zZjgr, Sizes, Location, Design, SMTT(5)
<2>cancel. ECancel(i,r) => rx[i][r] \in Xids /\ xsrc[rx[i][r]]=rpg[i][r]
 BY ONLY <1>HNR3T, <1>Igs7TOaR, Sizes, Location, Design, SMTT(5)
<2>ivFrame. \A y \in Xids : ~(ECancel(i,r) /\ y=rx[i][r]) => iv'[y]=iv[y]
 BY ONLY <1>HNR3T, <1>Ko9N, Sizes, Location, Design, SMTT(5)
<2>pageFrame. ASSUME NEW q \in Pages, q # rpg[i][r]
              PROVE UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
 BY ONLY <1>HNR3T, <2>pageFrame, <1>Y6cekk, <1>Fl6OF, <1>EaLpCQ, <1>ZMaKVj, <1>ql3Fd6, <1>lexbQIQ, Sizes, Location, Design, SMTT(5)
<2>record. ASSUME NEW a \in Inst, NEW b \in Rq PROVE dlzHJ(a,b)'
 <3>before. dlzHJ(a,b)
  BY ONLY <2>old, <2>record, <1>QMrZB, Sizes, Location, Design, SMTT(5)
 <3>exit. CASE a=i /\ b=r
  BY ONLY <2>record, <3>exit, <3>before, <2>active, <2>phase, <2>frame, SMTT(5) DEF dlzHJ, Active
 <3>inactive. CASE ~(a=i /\ b=r) /\ ~Active(a,b)
  BY ONLY <2>record, <3>inactive, <3>before, <2>phase, <2>frame, SMTT(5) DEF dlzHJ, Active
 <3>other. CASE ~(a=i /\ b=r) /\ Active(a,b)
  <4>apart. rpg[a][b] # rpg[i][r]
   BY ONLY <1>HNR3T, <2>record, <3>other, <2>old, <2>active, <1>HzDmJ6cCSS2, Sizes, Location, Design, SMTT(5)
  <4>domain. rpg[a][b] \in Pages
   BY ONLY <3>before, <3>other, SMTT(5) DEF dlzHJ
  <4>page. UNCHANGED <<pst[rpg[a][b]],pr[rpg[a][b]],pgn[rpg[a][b]],plt[rpg[a][b]],led[rpg[a][b]],sled[rpg[a][b]]>>
   BY ONLY <2>pageFrame, <2>frame, <4>apart, <4>domain, SMTT(5)
  <4>transfer. ASSUME ph[a][b] \in {"reg","sent","exp"}
               PROVE iv'[rx[a][b]]=iv[rx[a][b]]
   <5>source. rx[a][b] \in Xids /\ xsrc[rx[a][b]]=rpg[a][b]
    BY ONLY <3>before, <4>transfer, SMTT(5) DEF dlzHJ
   <5>apart. ~(ECancel(i,r) /\ rx[a][b]=rx[i][r])
    BY ONLY <2>cancel, <4>apart, <5>source, SMTT(5)
   <5>qed. QED BY ONLY <2>ivFrame, <5>source, <5>apart, SMTT(5)
  <4>qed. QED BY ONLY <2>record, <3>other, <3>before, <2>phase, <2>frame, <4>page, <4>transfer, SMTT(5) DEF dlzHJ, Active, OwnedBy
 <3>qed. QED BY ONLY <3>exit, <3>inactive, <3>other, SMTT(5)
<2>qed. QED BY ONLY <2>record, SMTT(5) DEF K8, dlzHJ

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

<1>y6Zmn.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE S5'
<2> USE ONLY <1>y6Zmn, Sizes, Location, Design
<2>1. S5 /\ K2 /\ K8 /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K8, V21_Inv_S5, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<hok,hw,nx,rg,rhit,rpg,rx,xdst,xg,xlt,xnt,xr,xst>>
 BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF rtV, instV, kV, Sizes, Location, Design
<2>3. IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"}
 BY SMTT(5), Sizes, Location, Design DEF EExit, Sizes, Location, Design
<2>4. QED
 BY <2>1, <2>2, <2>3, <1>Igs7TOaR, <1>L6zZjgr, <1>Ko9N, <1>jUyRMszR6M4WWR, <1>hfsAsK73, Design, Sizes, Location, SMTT(5) DEF Active, ECancel, ELed, EState, ExpInst, ExpPage, InitInst, InitPage, IsD, IsP, K2, K8, OwnedBy, S5, SHJS, Tag, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1524_PdRPPP_PdEExit_S5


<1>TazAEKE8.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE K8'
 BY ONLY <1>TazAEKE8, Sizes, Location, Design, <1>hv0XuP, <1>HNR3T, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1771_PdRPPP_PdE_PTimeout_K8

\* T2M-SCOPE R2M1772_PdRPPP_PdE_PTimeout_K9

<1>zfKsUuV4.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE K9'
 BY ONLY <1>zfKsUuV4, Sizes, Location, Design, <1>hv0XuP, <1>nXf5m, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1772_PdRPPP_PdE_PTimeout_K9

\* T2M-SCOPE R2M1773_PdRPPP_PdE_PTimeout_QuarNeverMapped

<1>RwrJgVCR.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE S5'
 BY ONLY <1>RwrJgVCR, Sizes, Location, Design, <1>hv0XuP, <1>y6Zmn, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1775_PdRPPP_PdE_PTimeout_S5


<1>UnUnz8lKsQ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE K6'
  BY ONLY <1>UnUnz8lKsQ, Sizes, Location, Design, <1>piBsDrTT, V21_Inv_K6 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>btDxMOXbo4.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE K7'
  BY ONLY <1>btDxMOXbo4, Sizes, Location, Design, <1>fBG6ws7p, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FmD92xcsFB.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE K8'
  BY ONLY <1>FmD92xcsFB, Sizes, Location, Design, <1>TazAEKE8, V21_Inv_K8 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>z86tBCSLdB.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE K9'
  BY ONLY <1>z86tBCSLdB, Sizes, Location, Design, <1>zfKsUuV4, V21_Inv_K9 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PQegZh2ol13.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE K13'
  BY ONLY <1>PQegZh2ol13, Sizes, Location, Design, <1>IR3DC3Gy7, V21_Inv_K13 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r8LamlDN3m.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE S5'
  BY ONLY <1>r8LamlDN3m, Sizes, Location, Design, <1>RwrJgVCR, V21_Inv_S5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>btDxMOXbo4, <1>FmD92xcsFB, <1>z86tBCSLdB, <1>r8LamlDN3m, <1>PQegZh2ol13, <1>UnUnz8lKsQ, <1>ov0Sx7WlRXBysX5IZRwaWxay, <1>RGjYAiG6PeiEJJRaLYx5I07Xh, <1>Y5FpSjIyB62d8mDnAIRmCips, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PTimeout_03_02 SHA 8dc136609bea8af3aab7604e61db47aa89ed91010c09ef536ad17e17183d2d4a
USE DEF V21_Inv_K16, V21_Inv_KStruct, V21_Inv_PrefcMatchesHolders, V21_Inv_ReadOwnLanded, V21_Inv_S4, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_SFollowOff, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Status, V22_T_rpg
HIDE DEF P_PagePoolsDisjoint, Part_PTimeout_03_01, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K2, V21_Inv_K6, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI1, V21_Inv_PrivateMapOwner, V21_Inv_S5, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rg, V22_T_sfly, V22_T_sled
THEOREM Part_PTimeout_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE (ReadOwnLanded)' /\ (SharedLedRef)' /\ (K16)' /\ (SealOnlyLanded)' /\ (S4)'
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

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, EExit, ECancel, ELed, EState, RP_NoNewStop, RP_DReadFrame, RP_SharedRead, RPB_T_gen, RPB_T_rt, RPB_T_rp, RPB_T_rd, RPB_T_hp, RPB_T_hd, RPB_T_alive, RPB_T_nfail, RPB_T_torn, RPB_T_kpin, RPB_T_kfly, RPB_T_krs, RPB_T_ph, RPB_T_rg, RPB_T_rpg, RPB_T_rpe, RPB_T_rx, RPB_T_rhit, RPB_T_pst, RPB_T_pr, RPB_T_pgn, RPB_T_plt, RPB_T_ptl, RPB_T_pvis, RPB_T_led, RPB_T_sfly, RPB_T_sled, RPB_T_prefc, RPB_T_pqp, RPB_T_xr, RPB_T_xg, RPB_T_xk, RPB_T_xp, RPB_T_xd, RPB_T_xsrc, RPB_T_xdst, RPB_T_xnt, RPB_T_hw, RPB_T_hok, RPB_T_iv, RPB_T_xst, RPB_T_xlt, RPB_T_nx, RPB_T_net, RPB_T_drep, RPB_T_crep, RPB_T_dsucc, RPB_T_gbad, RPB_Types, RPB_BK8At, RPB_BK7At, RPB_EExit, RPB_ECancel, RPB_ELed, RPB_EState

<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>je.        
 S4 /\ UNCHANGED <<alive, nfail>> => S4'
 BY IsaT(10), Sizes, Location, Design DEF S4, Sizes, Location, Design
\* T2M-END R2M0344_PdPF_S4


<1>qK0WhOaWFW2PLnLs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, kfly, kpin, krs, nfail, nx, rd, rp, rt, torn, xg, xr>>
 BY ONLY <1>qK0WhOaWFW2PLnLs, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PEnd, PTimeout, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IQasljdFjt8.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE S4'
<2> USE ONLY <1>IQasljdFjt8, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>qK0WhOaWFW2PLnLs, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

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


<1>XZApzvoduavliQL.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>XZApzvoduavliQL, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

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


<1>A0y0NEz4lMgtsStcSlK2o.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE SharedLedRef'
 BY ONLY <1>A0y0NEz4lMgtsStcSlK2o, Sizes, Location, Design, <1>XZApzvoduavliQL, <1>xOtqg6YRsioevxRntvd4 DEF Sizes, Location, Design

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

<1>hv0XuP.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE EExit(i,r,"timeout")
 BY ONLY <1>hv0XuP, Sizes, Location, Design, SMTT(5) DEF PTimeout, EExit, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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

<1>HwvY9AoPK.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE K16'
 BY ONLY <1>HwvY9AoPK, Sizes, Location, Design, <1>hv0XuP, <1>CuRN7T, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1764_PdRPPP_PdE_PTimeout_K16


<1>hsy2yJA3T2P.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE K16'
  BY ONLY <1>hsy2yJA3T2P, Sizes, Location, Design, <1>HwvY9AoPK, V21_Inv_K16 DEF Sizes, Location, Design

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
  BY <2>1, <2>2, <2>3, <2>4, SMTT(5), Sizes, Location, Design DEF RPB_BK7At, RPB_BK8At, K1, K3, RPB_ECancel, Sizes, Location, Design

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


<1>vnjwEkvqzS.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE RPB_EExit(i,r,"timeout")
 BY ONLY <1>vnjwEkvqzS, Sizes, Location, Design, SMTT(5) DEF PTimeout, RPB_EExit, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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
  BY <2>1, <2>2, <2>3, <2>5, ZenonT(5), Sizes, Location, Design DEF BaseReadOwnLanded, NoWriteInto, Writing, InFl, Sizes, Location, Design
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


<1>ZB2kDG7eBphtY7qbkmkYIZc.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE BaseReadOwnLanded'
 BY ONLY <1>ZB2kDG7eBphtY7qbkmkYIZc, Sizes, Location, Design, <1>vnjwEkvqzS, <1>rlQFbzs6jnFzY4phm4m9, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1955_PdRPBPP_PdE_PTimeout_ReadOwnLanded


<1>R8UUffUenSpibXnhE7jLVJOM.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE BaseSealOnlyLanded'
 BY ONLY <1>R8UUffUenSpibXnhE7jLVJOM, Sizes, Location, Design, <1>vnjwEkvqzS, <1>aGggnPZjJ21qRf7aX4daH, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1957_PdRPBPP_PdE_PTimeout_SealOnlyLanded


<1>GBlFYGIpWF1UReKPlh.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE RP_NoNewStop /\ RP_DReadFrame /\ UNCHANGED xdst
<2> USE ONLY <1>GBlFYGIpWF1UReKPlh, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rpg \in [Inst -> [Rq -> 0..NP]] /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>GBlFYGIpWF1UReKPlh, V22_T_hw, V22_T_ph, V22_T_rpg, SMTT(5)

<2>2. K1 /\ K3 BY V21_Inv_K1, V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_NoNewStop, RP_DReadFrame, DInst, PInst, Inst, NL, IsP, IsD, K1, K3, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cr9OPpuOvyayqpnJWvR.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE RP_SharedRead'
 BY ONLY <1>cr9OPpuOvyayqpnJWvR, Sizes, Location, Design, <1>GBlFYGIpWF1UReKPlh, <1>PtfM7z6NmcjVW9qw5I DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>plJ1vwaQZEFtf5ROi7.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>plJ1vwaQZEFtf5ROi7, Sizes, Location, Design
<2>1. UNCHANGED xdst BY <1>GBlFYGIpWF1UReKPlh, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xdst' \in [Xids -> 0..NP] 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>plJ1vwaQZEFtf5ROi7, <2>1, V22_T_xdst, SMTT(5)

<2>3. QED BY <2>2, <1>GEiwvO5S4Wv9uAOYEb8qtLWYsu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bXMlycmR5CPUsfXwgxP0MO.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE ReadOwnLanded'
 BY ONLY <1>bXMlycmR5CPUsfXwgxP0MO, Sizes, Location, Design, <1>ZB2kDG7eBphtY7qbkmkYIZc, <1>cr9OPpuOvyayqpnJWvR DEF ReadOwnLanded, RP_SharedRead, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yWP7weQU2JWT9VdYiliuNeD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE SealOnlyLanded'
 BY ONLY <1>yWP7weQU2JWT9VdYiliuNeD, Sizes, Location, Design, <1>R8UUffUenSpibXnhE7jLVJOM, <1>plJ1vwaQZEFtf5ROi7 DEF SealOnlyLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>bXMlycmR5CPUsfXwgxP0MO, <1>A0y0NEz4lMgtsStcSlK2o, <1>hsy2yJA3T2P, <1>yWP7weQU2JWT9VdYiliuNeD, <1>IQasljdFjt8, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF Part_PTimeout_03_02, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K16, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_KStruct, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_PrefcMatchesHolders, V21_Inv_ReadOwnLanded, V21_Inv_S4, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_hw, V22_T_ph, V22_T_rpg, V22_T_xdst
====
