---- MODULE PdActionSlice_PAbort_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_d3dd8b4090431094, PdFinalAuxType_0dae22251ff24c86, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PAbort_01

\* Complete original body PdFinalPart_PAbort_02_01 SHA 274b7dfc991919aa14d63aa3175d5b4bc9f622f9fcf78e1be482ffe7e34bf6c4
HIDE DEF AuxType_0dae22251ff24c86, AuxType_d3dd8b4090431094, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_PAbort_01_01, Part_PAbort_01_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K17, V21_Inv_K5, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_iv, V22_T_kfly, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_ph, V22_T_pqp, V22_T_prefc, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_PAbort_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PAbort(i,r), SFollow
 PROVE (NoStrayAccess)' /\ (K10)' /\ (K1)'
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

           EK10At(x) ==
           (x < nx /\ xdst[x] \in Pages /\ OwnedBy(xdst[x], xr[x], xg[x])
                       /\ ~(ph[Loc(xdst[x])][xr[x]] \in {"run", "ovl"} /\ rg[Loc(xdst[x])][xr[x]] = xg[x]))
                      => ptl[xdst[x]] = (IF hw[x] = "stop" /\ hok[x] THEN xlt[x] ELSE 0)


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

           RPN_BK8At(i,r) ==
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


           RPN_BK7At(p) ==
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


           RPN_EExit(i,r,h) == IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"} /\ PEnd(i,r,h) /\ UNCHANGED gbad


           RPN_ECancel(i,r) == ph[i][r] = "reg"


           RPN_ELed(i,r) == IF RPN_ECancel(i,r) THEN led[rpg[i][r]] \ {rx[i][r]} ELSE led[rpg[i][r]]


           RPN_EState(i,r,h) == IF RPN_ELed(i,r) = {} /\ sled[rpg[i][r]] = {}
                           THEN IF KPinned(rpg[i][r]) THEN "drain" ELSE "free"
                           ELSE IF h = "timeout" /\ RPN_ELed(i,r) # {} THEN "quar" ELSE "drain"

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_PinFacts, RP_PinKeep, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, EExit, ECancel, ELed, EState, EK10At, RPNS_TransportNoStray, RPN_T_gen, RPN_T_rt, RPN_T_rp, RPN_T_rd, RPN_T_hp, RPN_T_hd, RPN_T_alive, RPN_T_nfail, RPN_T_torn, RPN_T_kpin, RPN_T_kfly, RPN_T_krs, RPN_T_ph, RPN_T_rg, RPN_T_rpg, RPN_T_rpe, RPN_T_rx, RPN_T_rhit, RPN_T_pst, RPN_T_pr, RPN_T_pgn, RPN_T_plt, RPN_T_ptl, RPN_T_pvis, RPN_T_led, RPN_T_sfly, RPN_T_sled, RPN_T_prefc, RPN_T_pqp, RPN_T_xr, RPN_T_xg, RPN_T_xk, RPN_T_xp, RPN_T_xd, RPN_T_xsrc, RPN_T_xdst, RPN_T_xnt, RPN_T_hw, RPN_T_hok, RPN_T_iv, RPN_T_xst, RPN_T_xlt, RPN_T_nx, RPN_T_net, RPN_T_drep, RPN_T_crep, RPN_T_dsucc, RPN_T_gbad, RPN_Types, RPN_BK8At, RPN_BK7At, RPN_EExit, RPN_ECancel, RPN_ELed, RPN_EState

<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Wu.        
 K1 /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>> => K1'
 BY IsaT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M0353_PdPF_K1


<1>xexBMhHSFzJLnU.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PAbort(i,r), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hp, kfly, kpin, krs, nfail, nx, rd, rp, rt, torn, xg, xr>>
 BY ONLY <1>xexBMhHSFzJLnU, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PAbort, PEnd, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DB33z5V7f.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PAbort(i,r), SFollow
 PROVE K1'
<2> USE ONLY <1>DB33z5V7f, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>xexBMhHSFzJLnU, Sizes, Location, Design DEF Sizes, Location, Design
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


<1>Iv0OmYQRVqFxA7.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PAbort(i,r), SFollow, NEW q \in Pages, KPinned(q)
 PROVE RP_PinKeep(q)
<2> HIDE DEF PAbort, PEnd, PageTo, GiveUpToN, RP_PinKeep, RP_PinFacts
<2>old. RP_PinFacts(q)
 BY ONLY <1>Iv0OmYQRVqFxA7, <1>sTGmGejCTusB, Sizes, Location, Design, SMTT(5)
<2>mut. Mut="none"
 BY ONLY Design, ZenonT(5) DEF Design
<2>guard. IsP(i) /\ Active(i,r)
 BY ONLY <1>Iv0OmYQRVqFxA7, ZenonT(5) DEF PAbort
<2>k8. K8
 BY ONLY <1>Iv0OmYQRVqFxA7, V21_Inv_K8, Sizes, Location, Design, SMTT(5)
<2>source. rpg[i][r] \in Pages /\ Loc(rpg[i][r])=i /\ pst[rpg[i][r]]="priv"
 BY ONLY <1>Iv0OmYQRVqFxA7, <2>guard, <2>k8, SMTT(5) DEF K8
<2> DEFINE NewLed == IF ph[i][r]="reg" /\ rx[i][r] \in Xids /\ iv[rx[i][r]]="reg" /\ Mut # "pEndNoCancel"
                      THEN led[rpg[i][r]] \ {rx[i][r]} ELSE led[rpg[i][r]]
<2> HIDE DEF NewLed
<2>effect. PageTo(rpg[i][r],GiveUpToN(rpg[i][r],"abort",NewLed),rpe[i][r],NewLed,sled[rpg[i][r]])
 BY ONLY <1>Iv0OmYQRVqFxA7, ZenonT(5) DEF PAbort, PEnd, NewLed
<2>frame. UNCHANGED <<ptl,pvis,sfly,hw,xdst>>
 BY ONLY <1>Iv0OmYQRVqFxA7, ZenonT(5) DEF PAbort, PEnd
<2>types. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 /\ plt \in [Pages -> 0..PS] /\ led \in [Pages -> SUBSET Xids]
 /\ sled \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>Iv0OmYQRVqFxA7, V22_T_pst, V22_T_pr, V22_T_pgn, V22_T_plt, V22_T_led, V22_T_sled, SMTT(5)
<2>nowrite. NoWriteInto(q) => NoWriteInto(q)'
 BY ONLY <2>frame, SMTT(5) DEF NoWriteInto, Writing, InFl
<2>same. CASE q=rpg[i][r]
 <3>state. GiveUpToN(rpg[i][r],"abort",NewLed) \in {"drain","quar"}
  BY ONLY <1>Iv0OmYQRVqFxA7, <2>same, <2>mut, SMTT(5) DEF GiveUpToN, PinBlocks
 <3>side. IsP(Loc(q)) /\ ~IsD(Loc(q))
  BY ONLY <1>Iv0OmYQRVqFxA7, <2>source, <2>guard, <2>same, Sizes, SMTT(5) DEF IsP, IsD, Inst, NL, Sizes
 <3>update. pst'[q] \in {"drain","quar"} /\ UNCHANGED <<pr[q],pgn[q],plt[q]>> /\ sled'[q]=sled[q]
  BY ONLY <1>Iv0OmYQRVqFxA7, <2>same, <2>effect, <2>types, <3>state, SMTT(5) DEF PageTo
 <3>qed. QED
  BY ONLY <2>old, <2>source, <2>same, <2>frame, <2>nowrite, <3>side, <3>update, SMTT(5) DEF RP_PinKeep, RP_PinFacts
<2>other. CASE q # rpg[i][r]
 <3>update. UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
  BY ONLY <1>Iv0OmYQRVqFxA7, <2>other, <2>effect, <2>types, SMTT(5) DEF PageTo
 <3>qed. QED BY ONLY <2>old, <2>frame, <2>nowrite, <3>update, SMTT(5) DEF RP_PinKeep, RP_PinFacts
<2>qed. QED BY ONLY <2>same, <2>other, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>bMfPbwBzF8lVrl5hbB.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PAbort(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs,kfly,xdst>>
 BY ONLY <1>bMfPbwBzF8lVrl5hbB, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, GiveUpTo, GiveUpToN, PAbort, PEnd, PageTo, PinBlocks, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qaRWqEzOpF7um.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PAbort(i,r), SFollow
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>qaRWqEzOpF7um, Sizes, Location, Design
<2>1. \A q \in Pages : KPinned(q) => RP_PinKeep(q)
 BY ONLY <1>qaRWqEzOpF7um, Sizes, Location, Design, <1>Iv0OmYQRVqFxA7 DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,kfly,xdst>> BY <1>bMfPbwBzF8lVrl5hbB, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>qaRWqEzOpF7um, <2>2, V22_T_xdst, SMTT(5)

<2>4. QED BY <2>1, <2>2, <2>3, <1>VtlCqCAE0X2qQ, Sizes, Location, Design DEF Sizes, Location, Design

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
<2> HIDE DEF EExit, ECancel, K1, K3, K7, K8, CoreTypeOK, dlzHJ, Zzz7b
<2>old. K8 /\ K7 /\ K1 /\ K3
 BY ONLY <1>Igs7TOaR, V21_Inv_K8, V21_Inv_K7, V21_Inv_K1, V21_Inv_K3, Sizes, Location, Design, SMTT(5)
<2>active. IsP(i) /\ Active(i,r)
 BY ONLY <1>Igs7TOaR, ZenonT(5) DEF EExit
<2>record. dlzHJ(i,r)
 BY ONLY <1>Igs7TOaR, <2>old, <1>QMrZB, Sizes, Location, Design, SMTT(5)
<2>mapped. rpg[i][r] \in Pages /\ Loc(rpg[i][r])=i /\ pst[rpg[i][r]]="priv" /\
 pr[rpg[i][r]]=r /\ pgn[rpg[i][r]]=rg[i][r] /\
 rg[i][r] \in Gens /\ rg[i][r]<=gen[r] /\ rpe[i][r]=hd[r][rg[i][r]]
 BY ONLY <2>record, <2>active, SMTT(5) DEF dlzHJ, Active, OwnedBy
<2>page. prefc[rpg[i][r]]=0 /\ pqp[rpg[i][r]]=0
 BY ONLY <2>old, <2>mapped, SMTT(5) DEF K7
<2>peer. rpe[i][r] \in DInst
 BY ONLY <1>Igs7TOaR, <2>old, <2>mapped, SMTT(5) DEF K1
<2>cancel. ECancel(i,r) => rx[i][r] \in Xids /\ rx[i][r]<nx /\ iv[rx[i][r]]="reg" /\
 xsrc[rx[i][r]]=rpg[i][r] /\ xr[rx[i][r]]=r /\ xg[rx[i][r]]=rg[i][r]
 BY ONLY <2>record, SMTT(5) DEF dlzHJ, ECancel
<2>kind. ECancel(i,r) => xk[rx[i][r]]="wr"
 BY ONLY <2>old, <2>cancel, SMTT(5) DEF K3
<2>qed. QED BY ONLY <2>mapped, <2>page, <2>peer, <2>cancel, <2>kind, SMTT(5)


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

<1>nun6.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PAbort(i,r)
 PROVE EExit(i,r,"abort")
<2> USE ONLY <1>nun6, Sizes, Location, Design
 <2>1. IsP(i) /\ Active(i,r) /\ PEnd(i,r,"abort")
  BY ZenonT(5), Sizes, Location, Design DEF PAbort, Sizes, Location, Design
 <2>2. MZsmqs BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>3. UNCHANGED gbad
  BY <2>2, Design, SMTT(5), Sizes, Location DEF PAbort, GenOK, MZsmqs, Sizes, Location, Design
 <2>4. QED BY <2>1, <2>3, ZenonT(5), Sizes, Location, Design DEF EExit, Sizes, Location, Design

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


<1>M3v24T.         K10 <=> (\A x \in Xids : EK10At(x))
 BY ZenonT(5), Sizes, Location, Design DEF K10, EK10At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iSKJT.         (\A x \in Xids : EK10At(x)') => K10'
 BY ZenonT(5), Sizes, Location, Design DEF K10, EK10At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mppl5J.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE K10'
<2> USE ONLY <1>mppl5J, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW yy \in Xids PROVE EK10At(yy)'
 BY <1>iSKJT, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>1. K10 /\ K1 /\ K2 /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<hok,hw,nx,ptl,rg,xdst,xg,xlt,xr>>
 BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF rtV, instV, kV, Sizes, Location, Design
<2>3. IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"}
 BY SMTT(5), Sizes, Location, Design DEF EExit, Sizes, Location, Design
<2>35. EK10At(yy)
 BY <2>1, <1>M3v24T, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
 BY <2>35, <2>2, <2>3, <1>Igs7TOaR, <1>L6zZjgr, <1>EaLpCQ, <1>Fl6OF, <1>Y6cekk, <1>jUyRMszR6M4WWR, <1>hfsAsK73, <1>fem, <1>xbWa623J, Design, Sizes, Location, SMTT(5) DEF EK10At, ECancel, ELed, EState, ExpInst, ExpPage, InitInst, InitPage, K1, K10, K2, OwnedBy, SHJS, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1493_PdRPPP_PdEExit_K10

\* T2M-SCOPE R2M1495_PdRPPP_PdEExit_K11

<1>nVWAh9Y.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PAbort(i,r)
 PROVE K10'
 BY ONLY <1>nVWAh9Y, Sizes, Location, Design, <1>nun6, <1>mppl5J, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1494_PdRPPP_PdE_PAbort_K10

\* T2M-SCOPE R2M1496_PdRPPP_PdE_PAbort_K11

<1>GU8wEzT2w.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PAbort(i,r), SFollow
  PROVE K10'
  BY ONLY <1>GU8wEzT2w, Sizes, Location, Design, <1>nVWAh9Y, V21_Inv_K10 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xefsaV8GL9Rd3I.         TypInv => RPN_Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, RPN_Types, RPN_T_gen, RPN_T_rt, RPN_T_rp, RPN_T_rd, RPN_T_hp, RPN_T_hd, RPN_T_alive, RPN_T_nfail, RPN_T_torn, RPN_T_kpin, RPN_T_kfly, RPN_T_krs, RPN_T_ph, RPN_T_rg, RPN_T_rpg, RPN_T_rpe, RPN_T_rx, RPN_T_rhit, RPN_T_pst, RPN_T_pr, RPN_T_pgn, RPN_T_plt, RPN_T_ptl, RPN_T_pvis, RPN_T_led, RPN_T_sfly, RPN_T_sled, RPN_T_prefc, RPN_T_pqp, RPN_T_xr, RPN_T_xg, RPN_T_xk, RPN_T_xp, RPN_T_xd, RPN_T_xsrc, RPN_T_xdst, RPN_T_xnt, RPN_T_hw, RPN_T_hok, RPN_T_iv, RPN_T_xst, RPN_T_xlt, RPN_T_nx, RPN_T_net, RPN_T_drep, RPN_T_crep, RPN_T_dsucc, RPN_T_gbad, Sizes, Location, Design
\* T2M-END R2M2084_PdRPNPP_PdProofBase


<1>QfMLlZ4MHHW0bUMKWZ.        
  ASSUME NEW x \in Xids, RPN_T_nx, K2, InFl(x)
  PROVE x < nx
  BY ONLY <1>QfMLlZ4MHHW0bUMKWZ, Sizes, Location, Design, SMT DEF RPN_T_nx, Xids, K2, InFl, Sizes, Location, Design


<1>FhsnoZB8I8RxAoKXN5IC.        
  ASSUME NEW x \in Xids, RPN_T_nx, K1, K2, K3, InFl(x)
  PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>FhsnoZB8I8RxAoKXN5IC, Sizes, Location, Design
<2>1. x < nx
  BY <1>QfMLlZ4MHHW0bUMKWZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>0. ~(x >= nx)
  BY <2>1, Sizes, SMT, Location, Design DEF RPN_T_nx, Xids, Sizes, Location, Design
<2>2. xk[x] \in {"wr","rd"} /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
    /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>0, Design, Zenon, Sizes, Location DEF K2, Sizes, Location, Design
<2>3. xd[x] \in DInst
  BY <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. iv[x] \notin {"none","nopost"}
  BY Zenon, Sizes, Location, Design DEF K3, InFl, Sizes, Location, Design
<2>5. InitPage(x) # 0
  BY <2>0, <2>4, Zenon, Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>6. xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>0, <2>2, <2>5, Zenon, Sizes, Location, Design DEF K2, ExpPage, InitPage, ExpInst, InitInst, Sizes, Location, Design
<2>7. QED
  BY <2>3, <2>6, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2093_PdRPNPP_PdBDataLemmas

\* T2M-SCOPE R2M2094_PdRPNPP_PdBXFacts
\* T2M-BODY R2M2094_PdRPNPP_PdBXFacts
\* T2M-LOCAL-VISIBILITY

<1>uOE5j5p.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xdst[x] \in Pages
  PROVE Loc(xdst[x]) \in DInst
<2> USE ONLY <1>uOE5j5p, Sizes, Location, Design
<2>1. K1 /\ K2 /\ RPN_T_nx
  BY <1>xefsaV8GL9Rd3I, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ Loc(xdst[x]) = xd[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gyQ97LfIbobkgLjDB.        
  ASSUME NEW x \in Xids, PinInv, hw[x] = "fly"
  PROVE xsrc[x] \in Pages /\ x \in led[xsrc[x]]
<2> USE ONLY <1>gyQ97LfIbobkgLjDB, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ RPN_T_nx /\ InFl(x)
  BY <1>xefsaV8GL9Rd3I, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, InFl, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, <1>QfMLlZ4MHHW0bUMKWZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xst[x] = "posted" /\ iv[x] \in {"posted","failret"}
  BY <2>1, Zenon, Sizes, Location, Design DEF K3, InFl, Sizes, Location, Design
<2>4. xsrc[x] \in Pages
  BY <2>1, <2>2, <2>3, Design, SMT, Sizes, Location DEF K2, InitPage, ExpPage, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF K4, InitPage, ExpPage, Sizes, Location, Design
\* T2M-END R2M2094_PdRPNPP_PdBXFacts


<1>BOF4qLjmO.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE RPN_BK8At(i,r)
  BY ONLY <1>BOF4qLjmO, Sizes, Location, Design DEF K8, RPN_BK8At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UdmO1q2Uu.        
  ASSUME NEW p \in Pages, K7
  PROVE RPN_BK7At(p)
  BY ONLY <1>UdmO1q2Uu, Sizes, Location, Design DEF K7, RPN_BK7At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>M0c2LVP2tZe.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, RPN_EExit(i,r,h)
 PROVE UNCHANGED <<rtV,instV,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,xst,nx,drep,crep,dsucc,gbad>>
 BY ONLY <1>M0c2LVP2tZe, Sizes, Location, Design, ZenonT(10) DEF RPN_EExit, PEnd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RgNGzQgwys95.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPN_EExit(i,r,h)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
       /\ (RPN_ECancel(i,r) => rx[i][r] \in Xids /\ rx[i][r] < nx /\ iv[rx[i][r]] = "reg" /\ xk[rx[i][r]] = "wr"
                          /\ xsrc[rx[i][r]] = rpg[i][r] /\ xr[rx[i][r]] = r /\ xg[rx[i][r]] = rg[i][r])
<2> USE ONLY <1>RgNGzQgwys95, Sizes, Location, Design
 <2>1. K8 /\ K7 /\ K1 /\ K3 /\ IsP(i) /\ Active(i,r)
  BY SMTT(5), V21_Inv_K1, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF RPN_EExit, Sizes, Location, Design
 <2>2. RPN_BK8At(i,r)
  BY <2>1, <1>BOF4qLjmO, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF RPN_BK8At, Active, OwnedBy, Sizes, Location, Design
 <2>4. RPN_BK7At(rpg[i][r])
  BY <2>1, <2>3, <1>UdmO1q2Uu, Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, SMTT(5), Sizes, Location, Design DEF RPN_BK7At, RPN_BK8At, K1, K3, RPN_ECancel, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dWn1YoA6CV7L.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPN_EExit(i,r,h)
 PROVE /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ iv' = IF RPN_ECancel(i,r) THEN [iv EXCEPT ![rx[i][r]] = "nopost"] ELSE iv
       /\ PageTo(rpg[i][r],RPN_EState(i,r,h),rpe[i][r],RPN_ELed(i,r),sled[rpg[i][r]])
       /\ net' = net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)}
          \cup (IF RPN_ECancel(i,r) THEN {Msg("nopost",i,xd[rx[i][r]],r,xg[rx[i][r]],rx[i][r],0,0,FALSE)} ELSE {})
<2> USE ONLY <1>dWn1YoA6CV7L, Sizes, Location, Design
 <2>1. RPN_ECancel(i,r) => rx[i][r] \in Xids /\ iv[rx[i][r]] = "reg" /\ xk[rx[i][r]] = "wr"
  BY <1>RgNGzQgwys95, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED
  BY <2>1, Design, SMTT(5), Sizes, Location DEF RPN_EExit, PEnd, RPN_ECancel, RPN_ELed, RPN_EState, GiveUpToN, PinBlocks, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>o61oVEe3bDK.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPN_EExit(i,r,h)
 PROVE \A j \in Inst, u \in Rq :
   /\ ph'[j][u] = IF j=i /\ u=r THEN "end" ELSE ph[j][u]
   /\ (Active(j,u)' => Active(j,u) /\ ph'[j][u] = ph[j][u])
   /\ (ph'[j][u] \in {"run","ovl"} <=> ph[j][u] \in {"run","ovl"})
<2> USE ONLY <1>o61oVEe3bDK, Sizes, Location, Design
 <2>1. RPN_T_ph /\ IsP(i) /\ K8
  BY <1>xefsaV8GL9Rd3I, SMTT(5), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, RPN_EExit, Sizes, Location, Design
 <2>2. ph[i][r] \notin {"run","ovl"}
  BY <2>1, SMTT(5), Sizes, Location, Design DEF K8, Sizes, Location, Design
 <2>3. QED
  BY <2>1, <2>2, <1>dWn1YoA6CV7L, SMTT(5), Sizes, Location, Design DEF RPN_T_ph, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Rgue6DTYGc.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPN_EExit(i,r,h)
 PROVE \A q \in Pages : pst'[q] = IF q = rpg[i][r] THEN (RPN_EState(i,r,h)) ELSE pst[q]
<2> USE ONLY <1>Rgue6DTYGc, Sizes, Location, Design
 <2>1. RPN_T_pst BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>dWn1YoA6CV7L, SMTT(5), Sizes, Location, Design DEF PageTo, RPN_T_pst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xEYUcsMgW.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPN_EExit(i,r,h)
 PROVE \A q \in Pages : pr'[q] = IF q = rpg[i][r] THEN (IF RPN_EState(i,r,h) = "free" THEN 0 ELSE pr[q]) ELSE pr[q]
<2> USE ONLY <1>xEYUcsMgW, Sizes, Location, Design
 <2>1. RPN_T_pr BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>dWn1YoA6CV7L, SMTT(5), Sizes, Location, Design DEF PageTo, RPN_T_pr, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wx0Ck5o0ec.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPN_EExit(i,r,h)
 PROVE \A q \in Pages : pgn'[q] = IF q = rpg[i][r] THEN (IF RPN_EState(i,r,h) = "free" THEN 0 ELSE pgn[q]) ELSE pgn[q]
<2> USE ONLY <1>wx0Ck5o0ec, Sizes, Location, Design
 <2>1. RPN_T_pgn BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>dWn1YoA6CV7L, SMTT(5), Sizes, Location, Design DEF PageTo, RPN_T_pgn, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eeAIT3PVQD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPN_EExit(i,r,h)
 PROVE \A q \in Pages : plt'[q] = IF q = rpg[i][r] THEN (IF RPN_EState(i,r,h) = "free" THEN 0 ELSE plt[q]) ELSE plt[q]
<2> USE ONLY <1>eeAIT3PVQD, Sizes, Location, Design
 <2>1. RPN_T_plt BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>dWn1YoA6CV7L, SMTT(5), Sizes, Location, Design DEF PageTo, RPN_T_plt, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xJQeUPGlkV.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPN_EExit(i,r,h)
 PROVE \A q \in Pages : led'[q] = IF q = rpg[i][r] THEN (IF RPN_EState(i,r,h) = "free" THEN {} ELSE RPN_ELed(i,r)) ELSE led[q]
<2> USE ONLY <1>xJQeUPGlkV, Sizes, Location, Design
 <2>1. RPN_T_led BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>dWn1YoA6CV7L, SMTT(5), Sizes, Location, Design DEF PageTo, RPN_T_led, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AKhOgNpmhM7i.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPN_EExit(i,r,h)
 PROVE /\ \A j \in DInst, u \in Rq : ph'[j][u] = ph[j][u]
       /\ \A q \in Pages : IsD(Loc(q)) =>
          pst'[q] = pst[q] /\ pr'[q] = pr[q] /\ pgn'[q] = pgn[q] /\ plt'[q] = plt[q] /\ led'[q] = led[q]
<2> USE ONLY <1>AKhOgNpmhM7i, Sizes, Location, Design
 <2>1. Loc(rpg[i][r]) = i /\ IsP(i)
  BY <1>RgNGzQgwys95, Sizes, Location, Design DEF RPN_EExit, Sizes, Location, Design
 <2>2. QED
  BY <2>1, <1>o61oVEe3bDK, <1>Rgue6DTYGc, <1>xEYUcsMgW, <1>wx0Ck5o0ec, <1>eeAIT3PVQD, <1>xJQeUPGlkV,
     Sizes, SMTT(5), Location, Design DEF IsP, IsD, PInst, DInst, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sYIZrl8pwGsKjFr.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPN_EExit(i,r,h)
 PROVE \A q \in Pages : (led'[q] # {} \/ sfly[q] # {} \/ KPinned(q)) =>
       pst'[q] \in {pst[q],"drain","quar"} /\ pr'[q] = pr[q] /\ pgn'[q] = pgn[q] /\ plt'[q] = plt[q]
<2> USE ONLY <1>sYIZrl8pwGsKjFr, Sizes, Location, Design
 <2>1. K6 /\ rpg[i][r] \in Pages
  BY <1>RgNGzQgwys95, V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED
  BY <2>1, <1>Rgue6DTYGc, <1>xEYUcsMgW, <1>wx0Ck5o0ec, <1>eeAIT3PVQD, <1>xJQeUPGlkV, SMTT(5), Sizes, Location, Design DEF RPN_EState, K6, Sizes, Location, Design
\* T2M-END R2M2089_PdRPNPP_PdEExitFacts


<1>UJext6Lo.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PAbort(i,r)
 PROVE RPN_EExit(i,r,"abort")
<2> USE ONLY <1>UJext6Lo, Sizes, Location, Design
 <2>1. IsP(i) /\ Active(i,r) /\ PEnd(i,r,"abort")
  BY ZenonT(5), Sizes, Location, Design DEF PAbort, Sizes, Location, Design
 <2>2. RPN_T_gbad BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>3. UNCHANGED gbad
  BY <2>2, Design, SMTT(5), Sizes, Location DEF PAbort, GenOK, RPN_T_gbad, Sizes, Location, Design
 <2>4. QED BY <2>1, <2>3, ZenonT(5), Sizes, Location, Design DEF RPN_EExit, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nSyNwpGnut4hSjhse.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, NEW y \in Xids, PinInv, RPN_EExit(i,r,h), Writing(y)
 PROVE UNCHANGED <<pst[xdst[y]],pr[xdst[y]],pgn[xdst[y]]>>
<2> USE ONLY <1>nSyNwpGnut4hSjhse, Sizes, Location, Design
 <2>1. K1 /\ K2 /\ K3 /\ RPN_T_nx BY <1>xefsaV8GL9Rd3I, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. y < nx /\ xdst[y] \in Pages
  BY <2>1, <1>QfMLlZ4MHHW0bUMKWZ, <1>FhsnoZB8I8RxAoKXN5IC, Sizes, Location, Design DEF Writing, Sizes, Location, Design
 <2>3. Loc(xdst[y]) \in DInst BY <2>2, <1>uOE5j5p, Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. QED BY <2>2, <2>3, <1>AKhOgNpmhM7i, <1>M0c2LVP2tZe, Sizes, SMTT(5), Location, Design DEF IsD, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gw1uKDGDMkOI6ks.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, NEW y \in Xids, PinInv, RPN_EExit(i,r,h), hw[y] = "fly"
 PROVE pst'[xsrc[y]] \in {pst[xsrc[y]],"drain","quar"} /\ pr'[xsrc[y]] = pr[xsrc[y]] /\ pgn'[xsrc[y]] = pgn[xsrc[y]]
<2> USE ONLY <1>gw1uKDGDMkOI6ks, Sizes, Location, Design
 <2>1. xsrc[y] \in Pages /\ y \in led[xsrc[y]]
  BY <1>gyQ97LfIbobkgLjDB, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. K3 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. RPN_ECancel(i,r) => y # rx[i][r]
  BY <2>2, <1>RgNGzQgwys95, SMTT(5), Sizes, Location, Design DEF K3, Sizes, Location, Design
 <2>4. y \in led'[xsrc[y]]
  BY <2>1, <2>3, <1>xJQeUPGlkV, SMTT(5), Sizes, Location, Design DEF RPN_EState, RPN_ELed, Sizes, Location, Design
 <2>5. QED BY <2>1, <2>4, <1>sYIZrl8pwGsKjFr, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2095_PdRPNPP_PdEExitSafetyFacts

\* T2M-SCOPE R2M2096_PdRPNPP_PdEExit_NoFreeUnderRead
\* T2M-BODY R2M2096_PdRPNPP_PdEExit_NoFreeUnderRead

\* T2M-END R2M2096_PdRPNPP_PdEExit_NoFreeUnderRead

\* T2M-SCOPE R2M2097_PdRPNPP_PdEExit_NoStrayAccess
\* T2M-BODY R2M2097_PdRPNPP_PdEExit_NoStrayAccess
\* T2M-LOCAL-VISIBILITY

<1>vHI6IPrbldbRdrcjAg2d.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, RPN_EExit(i,r,h)
 PROVE RPNS_TransportNoStray'
<2> USE ONLY <1>vHI6IPrbldbRdrcjAg2d, Sizes, Location, Design
<2>1. RPNS_TransportNoStray /\ K14 BY V21_Inv_BaseSafety, V21_Inv_K14, V21_Inv_NoStrayAccess, V21_Inv_Safety, Sizes, Location, Design DEF Safety, BaseSafety, NoStrayAccess, RPNS_TransportNoStray, Sizes, Location, Design
<2>2. UNCHANGED <<hw,xdst,xsrc,xr,xg,sfly,kfly,kpin,krs>> BY <1>M0c2LVP2tZe, Sizes, Location, Design DEF instV, kV, Sizes, Location, Design
<2>3. (\A y \in Xids : Writing(y) => Held(xdst[y],y))'
 BY <2>1, <2>2, <1>nSyNwpGnut4hSjhse, SMTT(5), Sizes, Location, Design DEF RPNS_TransportNoStray, Held, Writing, InFl, Sizes, Location, Design
<2>4. (\A y \in Xids : hw[y] = "fly" => Held(xsrc[y],y))'
 BY <2>1, <2>2, <1>gw1uKDGDMkOI6ks, SMTT(5), Sizes, Location, Design DEF RPNS_TransportNoStray, Held, Sizes, Location, Design
<2>5. (\A q \in Pages : \A t \in sfly[q] :
 (pst[q] \in {"priv","drain","quar"} /\ pr[q] = t[1] /\ pgn[q] = t[2]) \/ (pst[q] = "shared" /\ IsD(Loc(q))))'
 BY <2>1, <2>2, <1>sYIZrl8pwGsKjFr, <1>RgNGzQgwys95, <1>Rgue6DTYGc, SMTT(5), Sizes, Location, Design DEF RPNS_TransportNoStray, Sizes, Location, Design
<2>7. QED BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF RPNS_TransportNoStray, Sizes, Location, Design
\* T2M-END R2M2097_PdRPNPP_PdEExit_NoStrayAccess


<1>QSIkTcawet9gnad1ALBIl.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PAbort(i,r)
 PROVE RPNS_TransportNoStray'
 BY ONLY <1>QSIkTcawet9gnad1ALBIl, Sizes, Location, Design, <1>UJext6Lo, <1>vHI6IPrbldbRdrcjAg2d, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M2098_PdRPNPP_PdE_PAbort_NoStrayAccess


<1>PnpBQIZp0sZEj3uoPUUb.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PAbort(i,r), SFollow
 PROVE NoStrayAccess'
<2> USE ONLY <1>PnpBQIZp0sZEj3uoPUUb, Sizes, Location, Design
<2>1. RPNS_TransportNoStray' BY <1>QSIkTcawet9gnad1ALBIl, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. NoFreeUnderRead' BY <1>qaRWqEzOpF7um, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<kfly,kpin,krs>> BY <1>bMfPbwBzF8lVrl5hbB, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. K14 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF NoStrayAccess, RPNS_TransportNoStray, NoFreeUnderRead, K14, Sizes, Location, Design
\* T2M-END R2M2099_PdRPStray_PAbort


<1> QED BY <1>PnpBQIZp0sZEj3uoPUUb, <1>GU8wEzT2w, <1>DB33z5V7f, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF P_PagePoolsDisjoint, Part_PAbort_02_01, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K10, V21_Inv_K14, V21_Inv_K15, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_sfly, V22_T_sled, V22_T_xdst
====
