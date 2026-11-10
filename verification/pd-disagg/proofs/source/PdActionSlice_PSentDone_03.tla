---- MODULE PdActionSlice_PSentDone_03 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_d3dd8b4090431094, PdFinalAuxType_731d82ba1a57c1cc, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PSentDone_02

\* Complete original body PdFinalPart_PSentDone_04_01 SHA 1f3e4a50b3d744c773dd20d8ac66f632e865275d9ecc6308d37bde6dc8f76343
HIDE DEF AuxType_731d82ba1a57c1cc, AuxType_d3dd8b4090431094, ExactTypeBridge, Group_PSentDone_01, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_PSentDone_02_01, Part_PSentDone_02_02, Part_PSentDone_03_01, Part_PSentDone_03_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K11, V21_Inv_K12, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K3, V21_Inv_K4, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_SI7, V21_Inv_SInd, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xst
THEOREM Part_PSentDone_04_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
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


<1>NKs1tuvbHQJk0mYr.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
 PROVE UNCHANGED <<xsrc,xk,xst>>
 BY ONLY <1>NKs1tuvbHQJk0mYr, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PSentDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>soiRDXsj6ptLF.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
 PROVE SI8'
 BY ONLY <1>soiRDXsj6ptLF, Sizes, Location, Design, <1>NKs1tuvbHQJk0mYr, <1>cBA7rB8Q9U8gRHfGK DEF Sizes, Location, Design
\* T2M-END R2M1434_PdRPShared_PSentDone


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


<1>ClruqY5hnjTp.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PSentDone(i, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>ClruqY5hnjTp, Sizes, Location, Design, Zenon DEF PSentDone, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1715_PdRPPP_PdBPSentDoneFrames


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


<1>Ti0jlrTgARZN.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PSentDone(i, r)
  PROVE IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY ONLY <1>Ti0jlrTgARZN, Sizes, Location, Design, Zenon DEF PSentDone, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fZfYw11cNLGLQ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE BPEnd(i,r)
<2> USE ONLY <1>fZfYw11cNLGLQ, Sizes, Location, Design
<2>1. IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY <1>Ti0jlrTgARZN, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
      /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {} /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
      /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
  BY <2>1, <1>SybH9, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. OyyWS /\ dcfPK /\ h9WLgd /\ IwCp /\ vS7em /\ bFwlN /\ p1YmMe5 /\ vRZWI
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>4. PageTo(rpg[i][r], IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain", 0, led[rpg[i][r]], sled[rpg[i][r]])
  BY <2>2, Design, Zenon, Sizes, Location DEF PSentDone, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, PageTo, Sizes, Location, Design
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
  BY <2>1, <2>2, <2>5, <1>ClruqY5hnjTp, Zenon, Sizes, Location, Design DEF PSentDone, BPEnd, Sizes, Location, Design
\* T2M-END R2M1716_PdRPPP_PdBPSentDoneEffects


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

<1>QWXp3LBA7.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE K5'
  BY ONLY <1>QWXp3LBA7, Sizes, Location, Design, <1>fZfYw11cNLGLQ, <1>GQZqr DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jTyxdpL1V.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE K6'
  BY ONLY <1>jTyxdpL1V, Sizes, Location, Design, <1>fZfYw11cNLGLQ, <1>D8S63 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>o7znAyOla.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE K7'
  BY ONLY <1>o7znAyOla, Sizes, Location, Design, <1>fZfYw11cNLGLQ, <1>wSfB3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kHQIanxRK.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE K9'
  BY ONLY <1>kHQIanxRK, Sizes, Location, Design, <1>fZfYw11cNLGLQ, <1>Z1zhE DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WfVLWzSWjd.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE K10'
  BY ONLY <1>WfVLWzSWjd, Sizes, Location, Design, <1>fZfYw11cNLGLQ, <1>inSeAS DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ubH4s5GrcM.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE K13'
  BY ONLY <1>ubH4s5GrcM, Sizes, Location, Design, <1>fZfYw11cNLGLQ, <1>NIxu5E DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q333diuL5.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE S1'
  BY ONLY <1>Q333diuL5, Sizes, Location, Design, <1>fZfYw11cNLGLQ, <1>fYmhv DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BSH5BQRqZ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE S5'
  BY ONLY <1>BSH5BQRqZ, Sizes, Location, Design, <1>fZfYw11cNLGLQ, <1>iOD00 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MKBetcNlD.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE S6'
  BY ONLY <1>MKBetcNlD, Sizes, Location, Design, <1>fZfYw11cNLGLQ, <1>VE1g5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zFKFXKvXIXp.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
  PROVE K5'
  BY ONLY <1>zFKFXKvXIXp, Sizes, Location, Design, <1>QWXp3LBA7, V21_Inv_K5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pI0CXIo0SpY.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
  PROVE K6'
  BY ONLY <1>pI0CXIo0SpY, Sizes, Location, Design, <1>jTyxdpL1V, V21_Inv_K6 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mUAm27lNVvn.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
  PROVE K7'
  BY ONLY <1>mUAm27lNVvn, Sizes, Location, Design, <1>o7znAyOla, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SU2j7JbaBPn.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
  PROVE K9'
  BY ONLY <1>SU2j7JbaBPn, Sizes, Location, Design, <1>kHQIanxRK, V21_Inv_K9 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yxfyEMqX8Vct.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
  PROVE K10'
  BY ONLY <1>yxfyEMqX8Vct, Sizes, Location, Design, <1>WfVLWzSWjd, V21_Inv_K10 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NOP6a5PD8oZH.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
  PROVE K13'
  BY ONLY <1>NOP6a5PD8oZH, Sizes, Location, Design, <1>ubH4s5GrcM, V21_Inv_K13 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cgXF9n5Epoq.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
  PROVE S1'
  BY ONLY <1>cgXF9n5Epoq, Sizes, Location, Design, <1>Q333diuL5, V21_Inv_S1 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uXNJeiXguzB.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
  PROVE S5'
  BY ONLY <1>uXNJeiXguzB, Sizes, Location, Design, <1>BSH5BQRqZ, V21_Inv_S5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BFo5nZ7hWsG.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
  PROVE S6'
  BY ONLY <1>BFo5nZ7hWsG, Sizes, Location, Design, <1>MKBetcNlD, V21_Inv_S6 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>mUAm27lNVvn, <1>SU2j7JbaBPn, <1>yxfyEMqX8Vct, <1>NOP6a5PD8oZH, <1>cgXF9n5Epoq, <1>BFo5nZ7hWsG, <1>zFKFXKvXIXp, <1>uXNJeiXguzB, <1>pI0CXIo0SpY, <1>soiRDXsj6ptLF, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PSentDone_04_02 SHA bec6f9a378145f6ea2e30f4a91bbcb7b711666650be30e07af1dd7b2caa3be7b
USE DEF V21_Inv_K11, V21_Inv_K16, V21_Inv_K17, V21_Inv_K3, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_hw, V22_T_ph, V22_T_rpg, V22_T_xdst
HIDE DEF Part_PSentDone_04_01, V21_Inv_K10, V21_Inv_K13, V21_Inv_K2, V21_Inv_K5, V21_Inv_K6, V21_Inv_K9, V21_Inv_S1, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V22_T_xsrcS
THEOREM Part_PSentDone_04_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
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

<1>fABziuLR91zUHnn3.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>fABziuLR91zUHnn3, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PSentDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k5Ou4RuglplOt.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
 PROVE P_SI3'
 BY ONLY <1>k5Ou4RuglplOt, Sizes, Location, Design, <1>fABziuLR91zUHnn3, <1>uWXN2TjAdAz DEF Sizes, Location, Design

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

<1>ClruqY5hnjTp.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PSentDone(i, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>ClruqY5hnjTp, Sizes, Location, Design, Zenon DEF PSentDone, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1715_PdRPPP_PdBPSentDoneFrames


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


<1>Ti0jlrTgARZN.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PSentDone(i, r)
  PROVE IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY ONLY <1>Ti0jlrTgARZN, Sizes, Location, Design, Zenon DEF PSentDone, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fZfYw11cNLGLQ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE BPEnd(i,r)
<2> USE ONLY <1>fZfYw11cNLGLQ, Sizes, Location, Design
<2>1. IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY <1>Ti0jlrTgARZN, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
      /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {} /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
      /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
  BY <2>1, <1>SybH9, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. OyyWS /\ dcfPK /\ h9WLgd /\ IwCp /\ vS7em /\ bFwlN /\ p1YmMe5 /\ vRZWI
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>4. PageTo(rpg[i][r], IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain", 0, led[rpg[i][r]], sled[rpg[i][r]])
  BY <2>2, Design, Zenon, Sizes, Location DEF PSentDone, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, PageTo, Sizes, Location, Design
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
  BY <2>1, <2>2, <2>5, <1>ClruqY5hnjTp, Zenon, Sizes, Location, Design DEF PSentDone, BPEnd, Sizes, Location, Design
\* T2M-END R2M1716_PdRPPP_PdBPSentDoneEffects


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

<1>TWyYHNOyyI.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE K11'
  BY ONLY <1>TWyYHNOyyI, Sizes, Location, Design, <1>fZfYw11cNLGLQ, <1>k026o6 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ttOVoJ0Tmd.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE K16'
  BY ONLY <1>ttOVoJ0Tmd, Sizes, Location, Design, <1>fZfYw11cNLGLQ, <1>ZAl5HW DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Bg6AlM9OOp.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE K17'
  BY ONLY <1>Bg6AlM9OOp, Sizes, Location, Design, <1>fZfYw11cNLGLQ, <1>pCZo5x DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yPYLsNqPF5Xi.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
  PROVE K11'
  BY ONLY <1>yPYLsNqPF5Xi, Sizes, Location, Design, <1>TWyYHNOyyI, V21_Inv_K11 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BbGhgWlmmQYi.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
  PROVE K16'
  BY ONLY <1>BbGhgWlmmQYi, Sizes, Location, Design, <1>ttOVoJ0Tmd, V21_Inv_K16 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EfjVvNFEcsgE.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
  PROVE K17'
  BY ONLY <1>EfjVvNFEcsgE, Sizes, Location, Design, <1>Bg6AlM9OOp, V21_Inv_K17 DEF Sizes, Location, Design

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


<1>ySvtMPzZimD8QxO1.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PSentDone(i, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>ySvtMPzZimD8QxO1, Sizes, Location, Design, Zenon DEF PSentDone, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

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


<1>fleDSO6YJilc6e4t.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PSentDone(i, r)
  PROVE IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY ONLY <1>fleDSO6YJilc6e4t, Sizes, Location, Design, Zenon DEF PSentDone, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bDFz9miCJ6sMte7Gx.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE RPB_BPEnd(i,r)
<2> USE ONLY <1>bDFz9miCJ6sMte7Gx, Sizes, Location, Design
<2>1. IsP(i) /\ ph[i][r] \in {"sent","exp","reg"}
  BY <1>fleDSO6YJilc6e4t, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
      /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {} /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
      /\ rx[i][r] \in Xids /\ rx[i][r] < nx /\ xsrc[rx[i][r]] = rpg[i][r]
  BY <2>1, <1>wdg7J6ju3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RPB_T_pst /\ RPB_T_led /\ RPB_T_sled /\ RPB_T_pr /\ RPB_T_pgn /\ RPB_T_plt /\ RPB_T_prefc /\ RPB_T_pqp
  BY <1>IXEagMJyQryQes, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
<2>4. PageTo(rpg[i][r], IF led[rpg[i][r]] = {} /\ ~KPinned(rpg[i][r]) THEN "free" ELSE "drain", 0, led[rpg[i][r]], sled[rpg[i][r]])
  BY <2>2, Design, Zenon, Sizes, Location DEF PSentDone, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, PageTo, Sizes, Location, Design
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
  BY <2>1, <2>2, <2>5, <1>ySvtMPzZimD8QxO1, Zenon, Sizes, Location, Design DEF PSentDone, RPB_BPEnd, Sizes, Location, Design
\* T2M-END R2M1936_PdRPBPP_PdBPSentDoneEffects


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

<1>NbnAwLwEF5hPugw4g1yU0rki.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE BaseReadOwnLanded'
  BY ONLY <1>NbnAwLwEF5hPugw4g1yU0rki, Sizes, Location, Design, <1>bDFz9miCJ6sMte7Gx, <1>ZH1RqkMiAbeOKh73zcKB DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>We1t19BKF28koOLweswOS4K9x.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i, r)
  PROVE BaseSealOnlyLanded'
  BY ONLY <1>We1t19BKF28koOLweswOS4K9x, Sizes, Location, Design, <1>bDFz9miCJ6sMte7Gx, <1>uBDT93OzKsSEz9uZ9PCX2 DEF Sizes, Location, Design
\* T2M-END R2M1937_PdRPBPP_PdBPSentDoneSteps


<1>Lz6gDqhjh0UwYyYnIIi.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
 PROVE RP_NoNewStop /\ RP_DReadFrame /\ UNCHANGED xdst
<2> USE ONLY <1>Lz6gDqhjh0UwYyYnIIi, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rpg \in [Inst -> [Rq -> 0..NP]] /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Lz6gDqhjh0UwYyYnIIi, V22_T_hw, V22_T_ph, V22_T_rpg, SMTT(5)

<2>2. K1 /\ K3 BY V21_Inv_K1, V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_NoNewStop, RP_DReadFrame, DInst, PInst, Inst, NL, IsP, IsD, K1, K3, EvidenceAt, PEnd, PSentDone, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>shcPb6U2jGqtR7toe8yr.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
 PROVE RP_SharedRead'
 BY ONLY <1>shcPb6U2jGqtR7toe8yr, Sizes, Location, Design, <1>Lz6gDqhjh0UwYyYnIIi, <1>PtfM7z6NmcjVW9qw5I DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jrLsG3ouzwy7fD9R8tV.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>jrLsG3ouzwy7fD9R8tV, Sizes, Location, Design
<2>1. UNCHANGED xdst BY <1>Lz6gDqhjh0UwYyYnIIi, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xdst' \in [Xids -> 0..NP] 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>jrLsG3ouzwy7fD9R8tV, <2>1, V22_T_xdst, SMTT(5)

<2>3. QED BY <2>2, <1>GEiwvO5S4Wv9uAOYEb8qtLWYsu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>b2bwQYbSq3ZVaQL1VKEoj9u.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
 PROVE ReadOwnLanded'
 BY ONLY <1>b2bwQYbSq3ZVaQL1VKEoj9u, Sizes, Location, Design, <1>NbnAwLwEF5hPugw4g1yU0rki, <1>shcPb6U2jGqtR7toe8yr DEF ReadOwnLanded, RP_SharedRead, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zEIiwB0OCRbYqSIDnLuLe7FE.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentDone(i,r), SFollow
 PROVE SealOnlyLanded'
 BY ONLY <1>zEIiwB0OCRbYqSIDnLuLe7FE, Sizes, Location, Design, <1>We1t19BKF28koOLweswOS4K9x, <1>jrLsG3ouzwy7fD9R8tV DEF SealOnlyLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>b2bwQYbSq3ZVaQL1VKEoj9u, <1>zEIiwB0OCRbYqSIDnLuLe7FE, <1>BbGhgWlmmQYi, <1>EfjVvNFEcsgE, <1>yPYLsNqPF5Xi, <1>k5Ou4RuglplOt, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_PSentDone SHA 84c112d3bdc5fe51b4429c4883c6ccf74b0157b9623f92f96c73c5712d8a8277
USE DEF ShapeNetFrame
HIDE DEF Part_PSentDone_04_02, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K11, V21_Inv_K16, V21_Inv_K17, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_KStruct, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_hw, V22_T_ph, V22_T_rpg, V22_T_xdst
LEMMA ShapeEffect_PSentDone ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Design, PSentDone(i,r)
 PROVE net'=net
 BY ONLY PSentDone(i,r), Sizes, Design, SMTT(5) DEF PSentDone, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_PSentDone ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Design, IndInv, MessageShape, PSentDone(i,r)
 PROVE MessageShape'
 BY ONLY Sizes, Design, PSentDone(i,r), MessageShape, ShapeEffect_PSentDone, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_PSentDone SHA 462a3910a03b13a995af4320621ef06f4b3e7ba0db747f2e9a8f89cf52d88db7
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_PSentDone, ShapeNetFrame
THEOREM DomainKeep_PSentDone ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, PSentDone(i,r)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, PSentDone(i,r), ShapeEffect_PSentDone
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg
HIDE DEF DomainKeep_PSentDone, ShapeEffect_PSentDone, V21_Inv_MsgXDomain
====
