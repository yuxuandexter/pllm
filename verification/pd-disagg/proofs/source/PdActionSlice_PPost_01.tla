---- MODULE PdActionSlice_PPost_01 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, Integers, TLAPS, PdFinalAuxType_027d8d9d83cf40b0, PdFinalAuxType_7a2eea0d18bce7cf, PdFinalInvProjections, PdShapeBase, PdFinalEffects

\* Complete original body PdFinalPart_PPost_01_01 SHA 3afd98a1853e50a421377f5f381dd3b4d37777667e6f6dbbec185308310bf13b
HIDE DEF AuxType_027d8d9d83cf40b0, AuxType_7a2eea0d18bce7cf, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI3, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_iv, V22_T_kfly, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pqp, V22_T_prefc, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_PPost_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE (QuietConservation)'
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

           RP_T_spst == spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]


           RP_T_rpgS == rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)


           RP_T_xsrcS == xsrcS \in [Xids -> SUBSET SPages]


           RP_T_sentry == sentry \in SUBSET Xids


           RP_T_squar == squar \in SUBSET (Xids \X SPages)


           RP_RefDelta == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)
            +SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

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


           EPostOK(m) == m.x # 0 /\ iv[m.x] = "none"


           EPost(i,r,m) ==
            /\ m \in net /\ m.t = "dinfo" /\ m.to = i /\ m.r = r /\ m.g = rg[i][r]
            /\ IF EPostOK(m)
               THEN /\ iv' = [iv EXCEPT ![m.x] = "reg"]
                    /\ xsrc' = [xsrc EXCEPT ![m.x] = rpg[i][r]]
                    /\ xlt' = [xlt EXCEPT ![m.x] = LtOf(i,r)]
                    /\ led' = [led EXCEPT ![rpg[i][r]] = @ \cup {m.x}]
                    /\ ph' = [ph EXCEPT ![i][r] = "reg"] /\ rx' = [rx EXCEPT ![i][r] = m.x]
                    /\ UNCHANGED <<pst,pr,pgn,plt,sled,prefc,pqp,xr,xg,xk,xp,xd,xdst,xnt,xst,nx>>
               ELSE /\ ph' = [ph EXCEPT ![i][r] = "end"] /\ rx' = [rx EXCEPT ![i][r] = m.x]
                    /\ PageTo(rpg[i][r], IF KPinned(rpg[i][r]) THEN "drain" ELSE "free", 0, {}, {})
                    /\ UNCHANGED xV


           EDRecFrame == \A j \in DInst, u \in Rq : UNCHANGED <<ph[j][u],rg[j][u],rpg[j][u],rhit[j][u]>>


           EDPageFrame == \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],ptl[q],pvis[q],led[q],sled[q],sfly[q]>>

           \* T2M-LOCAL-VISIBILITY

           RP_RecordReady == B2 => \A i \in PInst,r \in Rq :
            ph'[i][r] \in {"reg","sent","exp"} => rg'[i][r]=rg[i][r] /\ SSendReady(i,r)


           RP_NoneFrame == \A i \in PInst,r \in Rq : ph'[i][r]="none" => ph[i][r]="none" /\ rg'[i][r]=rg[i][r]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_T_spst, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, EPostOK, EPost, EDRecFrame, EDPageFrame, RP_RecordReady, RP_NoneFrame

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


<1>cguDrmIVkET7Lr.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_spst'
<2> USE ONLY <1>cguDrmIVkET7Lr, Sizes, Location, Design
<2>1. RP_T_spst
 BY ONLY <1>cguDrmIVkET7Lr, Sizes, Location, Design DEF STypeOK, RP_T_spst, Sizes, Location, Design
<2>2. CASE ~B2
 <3>1. UNCHANGED spst
  BY ONLY <2>2, <1>cguDrmIVkET7Lr, V21_SFollowOff, Sizes, Location, Design, SMTT(5) DEF sV
 <3>2. QED BY ONLY <2>1, <3>1, SMTT(5) DEF RP_T_spst
<2>3. CASE B2
 <3>1. spst'=[p \in SPages |-> IF \E x \in Xids : RP_Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                                    ELSE IF RP_Drop(p) THEN "free" ELSE IF RP_Ended(p) THEN "drain" ELSE spst[p]]
  BY ONLY <2>3, <1>cguDrmIVkET7Lr, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design, SMTT(5) DEF RP_SFollowEffect
 <3>2. QED BY ONLY <2>1, <3>1, SMTT(10) DEF RP_T_spst
<2>4. QED BY ONLY <2>2, <2>3, SMTT(5)

\* T2M-LOCAL-VISIBILITY

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


<1>l3GvtovXkekm.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>l3GvtovXkekm, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PPost, PageTo, SendReady, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ms7jj44YmXl73f7ce8OgQOrYi.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>ms7jj44YmXl73f7ce8OgQOrYi, Sizes, Location, Design, <1>AnajBeZS7htcLkTpZ8C91mxOHTa DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Db6ZFqcdXWUtDr6Bov42.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>Db6ZFqcdXWUtDr6Bov42, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Db6ZFqcdXWUtDr6Bov42, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED
 <3>fxReady. SendReady(i,r)
  BY ONLY <1>Db6ZFqcdXWUtDr6Bov42, ZenonT(5) DEF PPost
 <3>fxActive. Active(i,r)
  BY ONLY <3>fxReady, SMTT(5) DEF SendReady, Active
 <3>fxPhase. ph'=[ph EXCEPT ![i][r]="end"] \/
              ph'=[ph EXCEPT ![i][r]=IF PReg THEN "reg" ELSE "sent"]
  BY ONLY <1>Db6ZFqcdXWUtDr6Bov42, ZenonT(5) DEF PPost
 <3>fxDomain. PInst \subseteq Inst
  BY ONLY Sizes, SMTT(5) DEF PInst, Inst, NL, Sizes
 <3>fxLocal. ASSUME NEW j \in PInst, NEW s \in Rq, Active(j,s)'
             PROVE Active(j,s)
  <4>fxSame. CASE j=i /\ s=r
   BY ONLY <4>fxSame, <3>fxActive, SMTT(5)
  <4>fxOther. CASE ~(j=i /\ s=r)
   <5>fxIndex. j \in Inst
    BY ONLY <3>fxDomain, <3>fxLocal, SMTT(5)
   <5>fxFrame. ph'[j][s]=ph[j][s]
    BY ONLY <2>1, <3>fxPhase, <3>fxLocal, <4>fxOther, <5>fxIndex, SMTT(5)
   <5>fxDone. QED BY ONLY <3>fxLocal, <5>fxFrame, SMTT(5) DEF Active
  <4>fxDone. QED BY ONLY <4>fxSame, <4>fxOther, SMTT(5)
 <3>fxDone. QED BY ONLY <3>fxLocal, SMTT(5) DEF RP_RecordProgress

\* T2M-LOCAL-VISIBILITY

<1>dlRLZLJP8YIdC37.         PinInv => RP_PageTypes

<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_sfly, V22_T_sled, V22_T_xdst, SMTT(5) DEF RP_PT_hw, RP_PT_kpin, RP_PT_krs, RP_PT_led, RP_PT_pgn, RP_PT_plt, RP_PT_pr, RP_PT_pst, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_sled, RP_PT_xdst, RP_PageTypes

\* T2M-END R2M1445_PdRPPageTypes


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>L4gyoie6.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PPost(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hp, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, torn, xd, xdst, xg, xk, xnt, xp, xr, xst>>
  BY ONLY <1>L4gyoie6, Sizes, Location, Design, ZenonT(5) DEF PPost, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1664_PdRPPP_PdPPostFrames


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

<1>sGwzHBJ3.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE /\ Mode = "push" /\ IsP(i) /\ ph[i][r] = "ready"
       /\ UNCHANGED <<hw,hok,net,gbad>> /\ \E m \in net : EPost(i,r,m)
<2> USE ONLY <1>sGwzHBJ3, Sizes, Location, Design
 <2>1. MZsmqs BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, SMTT(5), Sizes, Location DEF PPost, EPost, EPostOK, SendReady, GenOK, FreeOrDrain, PinBlocks, MZsmqs, xV, Sizes, Location, Design


<1>xwj0NNiH.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ hp[r][rg[i][r]] = i /\ hd[r][rg[i][r]] = rpe[i][r]
       /\ led[rpg[i][r]] = {} /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
       /\ rx[i][r] = 0 /\ plt[rpg[i][r]] = ptl[rpg[i][r]] /\ ptl[rpg[i][r]] \in PLens(r,rg[i][r])
       /\ LtOf(i,r) = ptl[rpg[i][r]] /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
<2> USE ONLY <1>xwj0NNiH, Sizes, Location, Design
 <2>1. K8 /\ K1 /\ K7 /\ ph[i][r] = "ready" /\ IsP(i)
  BY <1>sGwzHBJ3, V21_Inv_K1, V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. dlzHJ(i,r) BY <2>1, <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rpg[i][r] \in Pages /\ pst[rpg[i][r]] = "priv" /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF dlzHJ, Active, OwnedBy, Sizes, Location, Design
 <2>4. Zzz7b(rpg[i][r]) BY <2>1, <2>3, <1>gfplo, Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(5), Sizes, Location, Design DEF dlzHJ, Zzz7b, K1, Active, OwnedBy, LtOf, Sizes, Location, Design


<1>CLUulHx.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE /\ \A j \in Inst, u \in Rq :
          /\ ph'[j][u] = IF j=i /\ u=r THEN (IF EPostOK(m) THEN "reg" ELSE "end") ELSE ph[j][u]
          /\ rx'[j][u] = IF j=i /\ u=r THEN m.x ELSE rx[j][u]
          /\ (Active(j,u)' => Active(j,u))
          /\ (ph'[j][u] \in {"run","ovl"} <=> ph[j][u] \in {"run","ovl"})
       /\ \A j \in DInst, u \in Rq : ph'[j][u] = ph[j][u] /\ rx'[j][u] = rx[j][u]
<2> USE ONLY <1>CLUulHx, Sizes, Location, Design
 <2>1. AydA /\ QC9Q BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>sGwzHBJ3, Sizes, SMTT(5), Location, Design DEF EPost, AydA, QC9Q, Active, IsP, Inst, DInst, NL, Sizes, Location, Design


<1>PlqH4H.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE \A q \in Pages : pst'[q] = IF q=rpg[i][r] THEN (IF EPostOK(m) THEN pst[q] ELSE IF KPinned(q) THEN "drain" ELSE "free") ELSE pst[q]
<2> USE ONLY <1>PlqH4H, Sizes, Location, Design
 <2>1. OyyWS BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>xwj0NNiH, SMTT(5), Sizes, Location, Design DEF EPost, PageTo, OyyWS, xV, Sizes, Location, Design


<1>v32py.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE \A q \in Pages : pr'[q] = IF q=rpg[i][r] THEN (IF ~EPostOK(m) /\ ~KPinned(q) THEN 0 ELSE pr[q]) ELSE pr[q]
<2> USE ONLY <1>v32py, Sizes, Location, Design
 <2>1. IwCp BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>xwj0NNiH, SMTT(5), Sizes, Location, Design DEF EPost, PageTo, IwCp, xV, Sizes, Location, Design


<1>iljoN3.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE \A q \in Pages : pgn'[q] = IF q=rpg[i][r] THEN (IF ~EPostOK(m) /\ ~KPinned(q) THEN 0 ELSE pgn[q]) ELSE pgn[q]
<2> USE ONLY <1>iljoN3, Sizes, Location, Design
 <2>1. vS7em BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>xwj0NNiH, SMTT(5), Sizes, Location, Design DEF EPost, PageTo, vS7em, xV, Sizes, Location, Design


<1>eBa25W.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE \A q \in Pages : plt'[q] = IF q=rpg[i][r] THEN (IF ~EPostOK(m) /\ ~KPinned(q) THEN 0 ELSE plt[q]) ELSE plt[q]
<2> USE ONLY <1>eBa25W, Sizes, Location, Design
 <2>1. bFwlN BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>xwj0NNiH, SMTT(5), Sizes, Location, Design DEF EPost, PageTo, bFwlN, xV, Sizes, Location, Design


<1>TNgDXa.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE \A q \in Pages : led'[q] = IF q=rpg[i][r] THEN (IF EPostOK(m) THEN {m.x} ELSE {}) ELSE led[q]
<2> USE ONLY <1>TNgDXa, Sizes, Location, Design
 <2>1. dcfPK BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>15. led' = IF EPostOK(m) THEN [led EXCEPT ![rpg[i][r]] = @ \cup {m.x}] ELSE [led EXCEPT ![rpg[i][r]] = {}]
  BY SMTT(5), Sizes, Location, Design DEF EPost, PageTo, Sizes, Location, Design
 <2>2. \A q \in Pages : led'[q] = IF q=rpg[i][r] THEN (IF EPostOK(m) THEN led[q] \cup {m.x} ELSE {}) ELSE led[q]
  BY <2>1, <2>15, SMTT(5), Sizes, Location, Design DEF dcfPK, Sizes, Location, Design
 <2>3. led[rpg[i][r]] = {} BY <1>xwj0NNiH, Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. led[rpg[i][r]] \cup {m.x} = {m.x}
  BY <2>3, ZenonT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. QED BY <2>2, <2>4, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design


<1>XZpe1Dp7piH2.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE UNCHANGED <<sled,prefc,pqp>>
<2> USE ONLY <1>XZpe1Dp7piH2, Sizes, Location, Design
 <2>1. h9WLgd /\ p1YmMe5 /\ vRZWI BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>xwj0NNiH, SMTT(5), Sizes, Location, Design DEF EPost, PageTo, h9WLgd, p1YmMe5, vRZWI, Sizes, Location, Design


<1>POQ6uiqj.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE /\ \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
       /\ \A q \in Pages : UNCHANGED GrownP(q)
<2> USE ONLY <1>POQ6uiqj, Sizes, Location, Design
 <2>1. UNCHANGED <<rpg,sled>> BY <1>L4gyoie6, <1>XZpe1Dp7piH2, Sizes, Location, Design DEF Sizes, Location, Design
 <2>15. \A q \in Pages : IsD(Loc(q)) => q # rpg[i][r]
  BY <1>sGwzHBJ3, <1>xwj0NNiH, Sizes, SMTT(5), Location, Design DEF IsP, IsD, Inst, PInst, DInst, NL, Sizes, Location, Design
 <2>2. \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
  BY <2>1, <2>15, <1>PlqH4H, <1>v32py, <1>iljoN3, <1>eBa25W, <1>TNgDXa, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF GrownP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aTpvu5UJ6DArGF.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE \A q \in Pages : UNCHANGED <<NHits(q),KPinned(q)>>
<2> USE ONLY <1>aTpvu5UJ6DArGF, Sizes, Location, Design
 <2>1. UNCHANGED <<kpin,krs,rhit,rpg>> BY <1>L4gyoie6, <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. \A q \in Pages :
 {u \in Rq : ph'[Loc(q)][u] \in {"run","ovl"} /\ rhit'[Loc(q)][u] /\ rpg'[Loc(q)][u]=q}
 = {u \in Rq : ph[Loc(q)][u] \in {"run","ovl"} /\ rhit[Loc(q)][u] /\ rpg[Loc(q)][u]=q}
 BY <2>1, <1>CLUulHx, <1>jc4Pk2myFy, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF NHits, KPinned, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>R6N7Z.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE /\ \A j \in Inst, u \in Rq, q \in Pages : Maps(j,u,q)' => Maps(j,u,q)
       /\ ~EPostOK(m) => \A j \in Inst, u \in Rq : ~Maps(j,u,rpg[i][r])'
<2> USE ONLY <1>R6N7Z, Sizes, Location, Design
 <2>1. K8 /\ IsP(i) /\ Active(i,r) BY <1>sGwzHBJ3, V21_Inv_K8, Sizes, Location, Design DEF Active, Sizes, Location, Design
 <2>2. UNCHANGED rpg BY <1>L4gyoie6, <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. \A j \in Inst, u \in Rq : Active(j,u) /\ rpg[j][u] = rpg[i][r] => j=i /\ u=r
  BY <2>1, <1>HzDmJ6cCSS2, Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. QED BY <2>2, <2>3, <1>CLUulHx, SMTT(5), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design
\* T2M-END R2M1670_PdRPPP_PdEPostSafety

\* T2M-SCOPE R2M1671_PdRPPP_PdE_PPost_K13
\* T2M-BODY R2M1671_PdRPPP_PdE_PPost_K13
\* T2M-LOCAL-VISIBILITY

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


<1>avQgTb.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE K16'
<2> USE ONLY <1>avQgTb, Sizes, Location, Design
<2>1. K16 /\ K8 BY V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_K8, V21_Inv_Safety, Sizes, Location, Design DEF Safety, BaseSafety, Sizes, Location, Design
<2>15. PICK m \in net : EPost(i,r,m) BY <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. EDRecFrame BY <2>15, <1>POQ6uiqj, <1>CLUulHx, <1>L4gyoie6, <1>sGwzHBJ3, SMTT(5), Sizes, Location, Design DEF EDRecFrame, Sizes, Location, Design
<2>3. EDPageFrame BY <2>15, <1>POQ6uiqj, <1>CLUulHx, <1>L4gyoie6, <1>sGwzHBJ3, SMTT(5), Sizes, Location, Design DEF EDPageFrame, Sizes, Location, Design
<2>4. UNCHANGED <<hw,xdst>> BY <2>15, <1>POQ6uiqj, <1>CLUulHx, <1>L4gyoie6, <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. \A q \in Pages : UNCHANGED GrownP(q) BY <2>15, <1>POQ6uiqj, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>NFAXRR, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1672_PdRPPP_PdE_PPost_K16


<1>OLdTq.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
  PROVE K7'
<2> USE ONLY <1>OLdTq, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (ptl[bb_p] >= 0)' /\ (pst[bb_p] = "free" => (pr[bb_p] = 0 /\ pgn[bb_p] = 0 /\ plt[bb_p] = 0 /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
                               /\ prefc[bb_p] = 0 /\ pqp[bb_p] = 0))' /\ (pst[bb_p] \in {"priv", "drain", "quar"} => (pr[bb_p] \in Rq /\ pgn[bb_p] \in Gens /\ pgn[bb_p] <= gen[pr[bb_p]]))' /\ (pst[bb_p] = "quar" => pqp[bb_p] \in Inst)' /\ (pst[bb_p] # "quar" => pqp[bb_p] = 0)' /\ (pst[bb_p] # "shared" => prefc[bb_p] = 0)' /\ (pst[bb_p] = "shared" => (IsD(Loc(bb_p)) /\ led[bb_p] = {} /\ ptl[bb_p] = PS /\ prefc[bb_p] = NHits(bb_p)))' /\ (pst[bb_p] = "drain" => (led[bb_p] # {} \/ sled[bb_p] # {} \/ KPinned(bb_p)))' /\ (pst[bb_p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(bb_p), r, bb_p))' /\ (pst[bb_p] = "priv" => \/ (Maps(Loc(bb_p), pr[bb_p], bb_p) /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p] /\ ~rhit[Loc(bb_p)][pr[bb_p]])
                              \/ GrownP(bb_p))'
  BY Sizes, Location, Design DEF K7, Sizes, Location, Design
<2>1. K7 /\ Zzz7b(bb_p) BY <1>gfplo, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>15. PICK m \in net : EPost(i,r,m) BY <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen,kpin,krs,rg,rpg,rhit,ptl,sfly,sled,prefc,pqp>> BY <2>15, <1>L4gyoie6, <1>XZpe1Dp7piH2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (ptl[bb_p] >= 0)'
  BY <2>1, <2>15, <2>2, <1>xwj0NNiH, <1>sGwzHBJ3, <1>CLUulHx, <1>R6N7Z, <1>aTpvu5UJ6DArGF, <1>POQ6uiqj, <1>PlqH4H, <1>v32py, <1>iljoN3, <1>eBa25W, <1>TNgDXa, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>4. (pst[bb_p] = "free" => (pr[bb_p] = 0 /\ pgn[bb_p] = 0 /\ plt[bb_p] = 0 /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
                               /\ prefc[bb_p] = 0 /\ pqp[bb_p] = 0))'
  BY <2>1, <2>15, <2>2, <1>xwj0NNiH, <1>sGwzHBJ3, <1>CLUulHx, <1>R6N7Z, <1>aTpvu5UJ6DArGF, <1>POQ6uiqj, <1>PlqH4H, <1>v32py, <1>iljoN3, <1>eBa25W, <1>TNgDXa, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>5. (pst[bb_p] \in {"priv", "drain", "quar"} => (pr[bb_p] \in Rq /\ pgn[bb_p] \in Gens /\ pgn[bb_p] <= gen[pr[bb_p]]))'
  BY <2>1, <2>15, <2>2, <1>xwj0NNiH, <1>sGwzHBJ3, <1>CLUulHx, <1>R6N7Z, <1>aTpvu5UJ6DArGF, <1>POQ6uiqj, <1>PlqH4H, <1>v32py, <1>iljoN3, <1>eBa25W, <1>TNgDXa, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>6. (pst[bb_p] = "quar" => pqp[bb_p] \in Inst)'
  BY <2>1, <2>15, <2>2, <1>xwj0NNiH, <1>sGwzHBJ3, <1>CLUulHx, <1>R6N7Z, <1>aTpvu5UJ6DArGF, <1>POQ6uiqj, <1>PlqH4H, <1>v32py, <1>iljoN3, <1>eBa25W, <1>TNgDXa, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>7. (pst[bb_p] # "quar" => pqp[bb_p] = 0)'
  BY <2>1, <2>15, <2>2, <1>xwj0NNiH, <1>sGwzHBJ3, <1>CLUulHx, <1>R6N7Z, <1>aTpvu5UJ6DArGF, <1>POQ6uiqj, <1>PlqH4H, <1>v32py, <1>iljoN3, <1>eBa25W, <1>TNgDXa, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>8. (pst[bb_p] # "shared" => prefc[bb_p] = 0)'
  BY <2>1, <2>15, <2>2, <1>xwj0NNiH, <1>sGwzHBJ3, <1>CLUulHx, <1>R6N7Z, <1>aTpvu5UJ6DArGF, <1>POQ6uiqj, <1>PlqH4H, <1>v32py, <1>iljoN3, <1>eBa25W, <1>TNgDXa, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>9. (pst[bb_p] = "shared" => (IsD(Loc(bb_p)) /\ led[bb_p] = {} /\ ptl[bb_p] = PS /\ prefc[bb_p] = NHits(bb_p)))'
  BY <2>1, <2>15, <2>2, <1>xwj0NNiH, <1>sGwzHBJ3, <1>CLUulHx, <1>R6N7Z, <1>aTpvu5UJ6DArGF, <1>POQ6uiqj, <1>PlqH4H, <1>v32py, <1>iljoN3, <1>eBa25W, <1>TNgDXa, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>10. (pst[bb_p] = "drain" => (led[bb_p] # {} \/ sled[bb_p] # {} \/ KPinned(bb_p)))'
  BY <2>1, <2>15, <2>2, <1>xwj0NNiH, <1>sGwzHBJ3, <1>CLUulHx, <1>R6N7Z, <1>aTpvu5UJ6DArGF, <1>POQ6uiqj, <1>PlqH4H, <1>v32py, <1>iljoN3, <1>eBa25W, <1>TNgDXa, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>11. (pst[bb_p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(bb_p), r, bb_p))'
  BY <2>1, <2>15, <2>2, <1>xwj0NNiH, <1>sGwzHBJ3, <1>CLUulHx, <1>R6N7Z, <1>aTpvu5UJ6DArGF, <1>POQ6uiqj, <1>PlqH4H, <1>v32py, <1>iljoN3, <1>eBa25W, <1>TNgDXa, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>12. (pst[bb_p] = "priv" => \/ (Maps(Loc(bb_p), pr[bb_p], bb_p) /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p] /\ ~rhit[Loc(bb_p)][pr[bb_p]])
                              \/ GrownP(bb_p))'
  BY <2>1, <2>15, <2>2, <1>xwj0NNiH, <1>sGwzHBJ3, <1>CLUulHx, <1>R6N7Z, <1>aTpvu5UJ6DArGF, <1>POQ6uiqj, <1>PlqH4H, <1>v32py, <1>iljoN3, <1>eBa25W, <1>TNgDXa, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>13. QED
  BY <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, <2>12, Sizes, Location, Design DEF K7, Sizes, Location, Design
\* T2M-END R2M1678_PdRPPP_PdE_PPost_K7


<1>eLunyaG.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
  PROVE K7'
  BY ONLY <1>eLunyaG, Sizes, Location, Design, <1>OLdTq, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RABt4EpN.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
  PROVE K16'
  BY ONLY <1>RABt4EpN, Sizes, Location, Design, <1>avQgTb, V21_Inv_K16 DEF Sizes, Location, Design

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


<1>Gi9jdkhau0LKxImNHeF.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE UNCHANGED gen /\ RP_RecordReady /\ RP_NoneFrame
<2> USE ONLY <1>Gi9jdkhau0LKxImNHeF, Sizes, Location, Design
<2>1. B2 => \A j \in PInst,u \in Rq : ph[j][u] \in {"reg","sent","exp"} => SSendReady(j,u)
 BY V21_Inv_P_SI1, Sizes, Location, Design DEF P_SI1, SI1, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Gi9jdkhau0LKxImNHeF, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_RecordReady, RP_NoneFrame, PInst, Inst, NL, EvidenceAt, PEnd, PPost, PageTo, SendReady, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Au9xxCph9.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE P_SI1'
 BY ONLY <1>Au9xxCph9, Sizes, Location, Design, <1>Gi9jdkhau0LKxImNHeF, <1>Db6ZFqcdXWUtDr6Bov42, <1>l3GvtovXkekm, <1>o0ug5dmdGVA DEF Sizes, Location, Design
\* T2M-END R2M1802_PdRPSI1_PPost


<1>tGWnImyZXpAlbrjvqJaPDN.        
 ASSUME K7', K16', RP_PT_pst'
 PROVE BaseQuietConservation'
<2> USE ONLY <1>tGWnImyZXpAlbrjvqJaPDN, Sizes, Location, Design
<2>1. ASSUME Quiet', NEW p \in Pages
       PROVE pst'[p] \in {"free","quar"} \/ (pst'[p]="shared" /\ prefc'[p]=0)
 <3>1. Loc(p) \in Inst BY Location, Sizes, Design DEF KPages, Sizes, Location, Design
 <3>2. pst'[p] # "priv"
  BY ONLY <1>tGWnImyZXpAlbrjvqJaPDN, Sizes, Location, Design, <2>1, <2>1, <3>1, SMTT(10) DEF K7, K16, Quiet, Maps, GrownP, Active, Sizes, Location, Design
 <3>3. pst'[p] # "drain" BY <2>1, Sizes, Location, Design DEF K7, Quiet, Sizes, Location, Design
 <3>4. {r \in Rq : ph'[Loc(p)][r] \in {"run","ovl"} /\ rhit'[Loc(p)][r] /\ rpg'[Loc(p)][r]=p}={}
  BY ONLY <1>tGWnImyZXpAlbrjvqJaPDN, Sizes, Location, Design, <2>1, <2>1, <3>1 DEF Quiet, Active, Sizes, Location, Design
 <3>5. pst'[p]="shared" => prefc'[p]=0
  BY ONLY <1>tGWnImyZXpAlbrjvqJaPDN, Sizes, Location, Design, <2>1, <2>1, <3>4, FS_EmptySet DEF K7, NHits, Sizes, Location, Design
 <3>6. QED BY <2>1, <3>2, <3>3, <3>5, Sizes, Location, Design DEF RP_PT_pst, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF BaseQuietConservation, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nMxL7fiqpNWKeNUrCfZ.        
 ASSUME PinInv, SFollow, RP_NoneFrame, P_SI1', PrefcMatchesHolders'
 PROVE IF ~B2 THEN TRUE ELSE
  ((Quiet' /\ sentry'={} /\ \A p \in SPages : ~swrite'[p] /\ (spst'[p] \in {"priv","drain"} => sready'[p]) /\ ~SPin(p)') =>
   \A p \in SPages : spst'[p] \in {"free","quar"} \/ (spst'[p]="shared" /\ sprefc'[p]=SRefQ(squar',p)))
<2> USE ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design
<2>1. (B2 => SI2) /\ STypeOK BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK DEF P_SI2, Sizes, Location, Design
<2>2. RP_T_rpgS' /\ RP_T_spst' BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>1, <1>g2d0XcDvt56Baa, <1>cguDrmIVkET7Lr DEF Sizes, Location, Design
<2>3. CASE ~B2 BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>3, <2>3 DEF Sizes, Location, Design
<2>4. CASE B2
 <3>1. RP_SFollowEffect BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <2>4, <1>PKl1lJKpXGVI0yrZ8 DEF Sizes, Location, Design
 <3>2. ASSUME Quiet', sentry'={}, \A p \in SPages : ~swrite'[p] /\ (spst'[p] \in {"priv","drain"} => sready'[p]) /\ ~SPin(p)'
        PROVE \A p \in SPages : spst'[p] \in {"free","quar"} \/ (spst'[p]="shared" /\ sprefc'[p]=SRefQ(squar',p))
  <4>1. rpgS'={}
   BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <2>2, <2>4, <3>2, Sizes, SMTT(10) DEF P_SI1, SI1, RP_T_rpgS, Quiet, SHPin, SPin, PInst, Inst, NL, Sizes, Location, Design
  <4>2. ASSUME NEW p \in SPages
         PROVE sprefc'[p]=SRefQ(squar',p)
   <5>1. SRefR(rpgS',p)=0 /\ SRefE(sentry',xsrcS',p)=0
   <6> HIDE DEF PinInv, SFollow, STypeOK, CoreTypeOK
   <6>r. SRefR(rpgS',p)=0
    BY ONLY <4>1, FS_EmptySet, SMTT(5) DEF SRefR
   <6>e. SRefE(sentry',xsrcS',p)=0
    BY ONLY <3>2, FS_EmptySet, SMTT(5) DEF SRefE
   <6>qed. QED BY ONLY <6>r, <6>e, SMTT(5)
   <5>2. SRefQ(squar',p) \in Nat BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>2, <2>1, <4>2, <1>NSUGzTM423PsEC DEF Sizes, Location, Design
   <5>3. QED BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>2, <2>4, <4>2, <5>1, <5>2, SMTT(10) DEF PrefcMatchesHolders, Sizes, Location, Design
  <4>3. ASSUME NEW p \in SPages
         PROVE spst'[p] \in {"free","quar","shared"}
   <5>1. Loc(p) \in PInst BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, Location DEF Sizes, Location, Design
   <5>2. ~RP_Pin2(p) BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <3>2, <4>3 DEF SPin, RP_Pin2, Sizes, Location, Design
   <5>3. RP_E2(0)={} BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <3>1, <3>2 DEF RP_SFollowEffect, Sizes, Location, Design
   <5>4. (spst[p]="priv" => RP_Ended(p))
    BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <2>1, <2>4, <3>2, <4>3, <5>1, Sizes, SMTT(10) DEF SI2, Quiet, Active, RP_NoneFrame, RP_Ended, PInst, Inst, NL, Sizes, Location, Design
   <5>5. spst'[p] \in {"priv","drain","dup"} => sready[p]
    BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <2>1, <2>4, <3>1, <3>2, <4>3, SMTT(10) DEF RP_SFollowEffect, SI2, Sizes, Location, Design
   <5>6. spst'[p] \notin {"priv","drain","dup"}
    BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <3>1, <4>3, <5>2, <5>3, <5>4, <5>5, SMTT(10) DEF RP_SFollowEffect, RP_Drop, Sizes, Location, Design
   <5>7. QED BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>3, <2>2, <4>3, <5>6 DEF RP_T_spst, Sizes, Location, Design
  <4>4. QED BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>2, <4>3 DEF Sizes, Location, Design
 <3>3. QED BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2 DEF Sizes, Location, Design
<2>5. QED BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>3, <2>4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eLjdrc1PhqLC.        
 ASSUME PinInv, SFollow, RP_NoneFrame, P_SI1', PrefcMatchesHolders', K7', K16', RP_PT_pst'
 PROVE QuietConservation'
<2> USE ONLY <1>eLjdrc1PhqLC, Sizes, Location, Design
<2>1. BaseQuietConservation' BY <1>tGWnImyZXpAlbrjvqJaPDN, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design DEF QuietConservation, Sizes, Location, Design
\* T2M-END R2M1787_PdRPQuiet


<1>mEuFACb494zwrvuPnh.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE RP_PT_pst'
<2> USE ONLY <1>mEuFACb494zwrvuPnh, Sizes, Location, Design
<2>1. RP_PT_pst BY <1>dlRLZLJP8YIdC37, Sizes, Location, Design DEF RP_PageTypes, Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_PT_pst, EvidenceAt, PEnd, PPost, PageTo, SendReady, ghV, instV, kV, pgV, recV, rtV, xV, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, AfterEv, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WcESAtmIjTDvAoyTa4xht7J.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE QuietConservation'
 BY ONLY <1>WcESAtmIjTDvAoyTa4xht7J, Sizes, Location, Design, <1>Gi9jdkhau0LKxImNHeF, <1>Au9xxCph9, <1>ms7jj44YmXl73f7ce8OgQOrYi, <1>eLunyaG, <1>RABt4EpN, <1>mEuFACb494zwrvuPnh, <1>eLjdrc1PhqLC DEF Sizes, Location, Design
\* T2M-END R2M1803_PdRPQuiet_PPost


<1> QED BY <1>WcESAtmIjTDvAoyTa4xht7J, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_PPost SHA ada2a2386f1716c472e0441dfea32608c25cf57abe3d2ea17697b6137abafad7
USE DEF ShapeNetFrame
HIDE DEF Part_PPost_01_01, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K16, V21_Inv_K7, V21_Inv_K8, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI4, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_TypeOK, V21_SFollowOff, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rg, V22_T_sfly, V22_T_sled, V22_T_xdst
LEMMA ShapeEffect_PPost ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Design, PPost(i,r)
 PROVE net'=net
 BY ONLY PPost(i,r), Sizes, Design, SMTT(5) DEF PPost, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_PPost ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Design, IndInv, MessageShape, PPost(i,r)
 PROVE MessageShape'
 BY ONLY Sizes, Design, PPost(i,r), MessageShape, ShapeEffect_PPost, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_PPost SHA d4072db4d15a61bb038e8a6c82ef14eb8b4f636645bbfedca30882107eee59f2
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_PPost, ShapeNetFrame
THEOREM DomainKeep_PPost ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, PPost(i,r)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, PPost(i,r), ShapeEffect_PPost
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalPart_PPost_01_02 SHA f21302fc47aa45cbc2527b0547a0415012b2ee1c4479a973545c2704f38afd6b
USE DEF AuxType_027d8d9d83cf40b0, AuxType_7a2eea0d18bce7cf, V21_Inv_GenFiltered, V21_Inv_Safety, V21_Inv_TypeOK
HIDE DEF ShapeEffect_PPost, V21_Inv_MsgXDomain
THEOREM Part_PPost_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE (TypInv)' /\ (GenFiltered)' /\ (MsgXDomain)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE AEZsS == gen \in [Rq -> 0..MG]



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

<1> HIDE DEF AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp

<1>s12kzN51xWp6X.        
 ASSUME PinInv, SFollow
 PROVE STypeOK'
 BY ONLY <1>s12kzN51xWp6X, AuxType_027d8d9d83cf40b0, Sizes, Location, Design DEF Sizes, Location, Design

<1>hzPOBcIR7u63bZs.          
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE CoreTypeOK'
 BY ONLY <1>hzPOBcIR7u63bZs, AuxType_7a2eea0d18bce7cf, Sizes, Location, Design DEF Sizes, Location, Design

<1>AJrOrzQFhm6ci.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE TypInv'
<2> USE ONLY <1>AJrOrzQFhm6ci, Sizes, Location, Design
<2>1. CoreTypeOK' BY <1>hzPOBcIR7u63bZs, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK' BY <1>s12kzN51xWp6X, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF TypInv, Sizes, Location, Design


<1>zf6ZwXNyqqu3PLd.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>zf6ZwXNyqqu3PLd, Sizes, Location, Design, DomainKeep_PPost, SMTT(5)
\* T2M-END R2M0311_PdPDomain_PPost


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>czH3Y0Hqcwn4Q0.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
  PROVE GenFiltered'
<2> USE ONLY <1>czH3Y0Hqcwn4Q0, Sizes, Location, Design
<2>1. GenFiltered /\ qvLUP /\ nNeM /\ Mut = "none"
  BY <1>UwwC5LVwQr, Design, SMTT(10), V21_Inv_GenFiltered, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location DEF Safety, QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, Sizes, SMTT(10), Location, Design DEF PPost, GenFiltered, GenOK, NewGen, qvLUP, nNeM, ghV, Sizes, Location, Design
\* T2M-END R2M1665_PdRPPP_PdCell_PPost_GenFiltered

\* T2M-SCOPE R2M1666_PdRPPP_PdCell_PPost_K17

<1>sYTDQAsnnBpqDxUG.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
  PROVE GenFiltered'
  BY ONLY <1>sYTDQAsnnBpqDxUG, Sizes, Location, Design, <1>czH3Y0Hqcwn4Q0, V21_Inv_GenFiltered DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>AJrOrzQFhm6ci, <1>sYTDQAsnnBpqDxUG, <1>zf6ZwXNyqqu3PLd, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PPost_02_01 SHA 831ea563ac8cb11f2067886de470b9c0fac14ed91d87a8150ce47c9612602dda
USE DEF V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_K8, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_QuarNoReg, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_SFollowOff, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_gbad, V22_T_hw, V22_T_iv, V22_T_net, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_pr, V22_T_pst, V22_T_rg, V22_T_rpg, V22_T_squar, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xsrcS, V22_T_xst
HIDE DEF AuxType_027d8d9d83cf40b0, AuxType_7a2eea0d18bce7cf, DomainKeep_PPost, Part_PPost_01_02, V21_Inv_GenFiltered
THEOREM Part_PPost_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE (P_SI5)' /\ (SI7)' /\ (P_SI4)' /\ (K2)' /\ (P_B2OffInit)'
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


           EPostOK(m) == m.x # 0 /\ iv[m.x] = "none"


           EPost(i,r,m) ==
            /\ m \in net /\ m.t = "dinfo" /\ m.to = i /\ m.r = r /\ m.g = rg[i][r]
            /\ IF EPostOK(m)
               THEN /\ iv' = [iv EXCEPT ![m.x] = "reg"]
                    /\ xsrc' = [xsrc EXCEPT ![m.x] = rpg[i][r]]
                    /\ xlt' = [xlt EXCEPT ![m.x] = LtOf(i,r)]
                    /\ led' = [led EXCEPT ![rpg[i][r]] = @ \cup {m.x}]
                    /\ ph' = [ph EXCEPT ![i][r] = "reg"] /\ rx' = [rx EXCEPT ![i][r] = m.x]
                    /\ UNCHANGED <<pst,pr,pgn,plt,sled,prefc,pqp,xr,xg,xk,xp,xd,xdst,xnt,xst,nx>>
               ELSE /\ ph' = [ph EXCEPT ![i][r] = "end"] /\ rx' = [rx EXCEPT ![i][r] = m.x]
                    /\ PageTo(rpg[i][r], IF KPinned(rpg[i][r]) THEN "drain" ELSE "free", 0, {}, {})
                    /\ UNCHANGED xV


           RP_RegPrelude == \A x \in Xids : iv'[x]="reg" =>
            xk[x]="wr" /\ (RP_Posted(x) \/ (iv[x]="reg" /\ xsrc'[x]=xsrc[x]))


           RP_RegSourceSafe == \A x \in Xids : iv'[x]="reg" => xsrc'[x] \in Pages /\ pst'[xsrc'[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

           RP_NoNewStop == \A x \in Xids : hw[x] \in {"fly","issued"} => hw'[x] # "stop"


           RP_DReadFrame == \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} =>
            ph[j][r] \in {"run","ovl"} /\ rpg'[j][r]=rpg[j][r]


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

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, EK2At, EK3At, EPostOK, EPost, RP_RegPrelude, RP_RegSourceSafe, RP_NoNewStop, RP_DReadFrame, RP_SharedSend, RP2_PublishInfo, RP2_UnpostedFrame, RP2_PublishNoFly, RP2_NewEntryState, RP_QSnapshot, RP2_StoppedHeldBack, RP2_PrivatePhaseStep, RP2_SI5Q, RP2_SI5D, RP2_SI5P, RP2_DHeldBack, RP2_StopBack

<1>m948gxWe0.        
 P_B2OffInit /\ UNCHANGED <<dedupSeen, dpreOK, hitSeen, rpgS, schoice, sdata, sentry, sgen, skey, smap, sown, sprefc, spst, squar, sready, swrite, xprefixOK, xsrcP, xsrcS>> => P_B2OffInit'
 BY IsaT(10), Sizes, Location, Design DEF P_B2OffInit, SInit, Sizes, Location, Design
\* T2M-END R2M0451_PdPF_B2OffInit


<1>TmI3GWe90PUybSk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>TmI3GWe90PUybSk, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0493_PdPOff_PPost


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

<1>Db6ZFqcdXWUtDr6Bov42.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>Db6ZFqcdXWUtDr6Bov42, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Db6ZFqcdXWUtDr6Bov42, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED
 <3>fxReady. SendReady(i,r)
  BY ONLY <1>Db6ZFqcdXWUtDr6Bov42, ZenonT(5) DEF PPost
 <3>fxActive. Active(i,r)
  BY ONLY <3>fxReady, SMTT(5) DEF SendReady, Active
 <3>fxPhase. ph'=[ph EXCEPT ![i][r]="end"] \/
              ph'=[ph EXCEPT ![i][r]=IF PReg THEN "reg" ELSE "sent"]
  BY ONLY <1>Db6ZFqcdXWUtDr6Bov42, ZenonT(5) DEF PPost
 <3>fxDomain. PInst \subseteq Inst
  BY ONLY Sizes, SMTT(5) DEF PInst, Inst, NL, Sizes
 <3>fxLocal. ASSUME NEW j \in PInst, NEW s \in Rq, Active(j,s)'
             PROVE Active(j,s)
  <4>fxSame. CASE j=i /\ s=r
   BY ONLY <4>fxSame, <3>fxActive, SMTT(5)
  <4>fxOther. CASE ~(j=i /\ s=r)
   <5>fxIndex. j \in Inst
    BY ONLY <3>fxDomain, <3>fxLocal, SMTT(5)
   <5>fxFrame. ph'[j][s]=ph[j][s]
    BY ONLY <2>1, <3>fxPhase, <3>fxLocal, <4>fxOther, <5>fxIndex, SMTT(5)
   <5>fxDone. QED BY ONLY <3>fxLocal, <5>fxFrame, SMTT(5) DEF Active
  <4>fxDone. QED BY ONLY <4>fxSame, <4>fxOther, SMTT(5)
 <3>fxDone. QED BY ONLY <3>fxLocal, SMTT(5) DEF RP_RecordProgress

\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>L4gyoie6.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PPost(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hp, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, torn, xd, xdst, xg, xk, xnt, xp, xr, xst>>
  BY ONLY <1>L4gyoie6, Sizes, Location, Design, ZenonT(5) DEF PPost, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1664_PdRPPP_PdPPostFrames


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

<1>sGwzHBJ3.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE /\ Mode = "push" /\ IsP(i) /\ ph[i][r] = "ready"
       /\ UNCHANGED <<hw,hok,net,gbad>> /\ \E m \in net : EPost(i,r,m)
<2> USE ONLY <1>sGwzHBJ3, Sizes, Location, Design
<2> DEFINE Raw(m) ==
  /\ m.t = "dinfo" /\ m.to = i /\ m.r = r /\ GenOK(i, r, m.g)
  /\ gbad' = (gbad \/ m.g # rg[i][r])
  /\ LET p == rpg[i][r] IN
     IF m.x = 0 \/ iv[m.x] # "none"
     THEN /\ ph[i][r] = "ready" /\ led[p] = {} /\ sled[p] = {}
          /\ ph' = [ph EXCEPT ![i][r] = "end"] /\ rx' = [rx EXCEPT ![i][r] = m.x]
          /\ PageTo(p, FreeOrDrain(p), 0, {}, {})
          /\ UNCHANGED <<xV, net>>
     ELSE \* PReg (= glue p_post): register only (iv = reg, the src page enters the ledger, the WRITE is not yet handed to the transfer library, cancellable); otherwise register + submit in one step
          /\ iv' = [iv EXCEPT ![m.x] = IF PReg THEN "reg" ELSE "posted"]
          \* Unquar: cannot issue to a torn-down peer (connection rejected, the op stops at once with failure and never lands)
          /\ hw' = IF PReg THEN hw ELSE [hw EXCEPT ![m.x] = IF Torn(m.x) THEN "stop" ELSE "fly"]
          /\ hok' = IF PReg THEN hok ELSE [hok EXCEPT ![m.x] = FALSE]
          /\ xsrc' = [xsrc EXCEPT ![m.x] = p] /\ xlt' = [xlt EXCEPT ![m.x] = LtOf(i, r)]   \* transfer-length consistency: token count carried by x = the count P recorded
          /\ led' = [led EXCEPT ![p] = @ \cup {m.x}]
          /\ ph' = [ph EXCEPT ![i][r] = IF PReg THEN "reg" ELSE "sent"] /\ rx' = [rx EXCEPT ![i][r] = m.x]
          \* mutant noticeBeforeCompletion (Mooncake#3406): send the success notice as soon as the WRITE is issued (pe = 0: completion event not seen); under PReg it is sent in PSubmit
          /\ net' = IF Mut = "noticeBeforeCompletion" /\ ~PReg
                    THEN net \cup {Msg("notice", i, m.fr, r, m.g, m.x, LtOf(i, r), 0, TRUE)} ELSE net
          /\ UNCHANGED <<pst, pr, pgn, plt, sled, prefc, pqp, xr, xg, xk, xp, xd, xdst, xnt, xst, nx>>
<2> HIDE DEF Raw
<2>design. PReg /\ Mut="none"
 BY ONLY Design, SMTT(5) DEF Design
<2>gbadtype. gbad \in BOOLEAN

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>sGwzHBJ3, V22_T_gbad, SMTT(5)

<2>guard. Mode="push" /\ IsP(i) /\ ph[i][r]="ready"
 BY ONLY <1>sGwzHBJ3, <2>design, ZenonT(5) DEF PPost, SendReady
<2>witness. PICK m \in net : Raw(m)
 BY ONLY <1>sGwzHBJ3, ZenonT(5) DEF PPost, Raw
<2>generation. m.g=rg[i][r]
 BY ONLY <2>witness, <2>design, SMTT(5) DEF Raw, GenOK
<2>effect. EPost(i,r,m)
 BY ONLY <2>witness, <2>design, <2>generation, SMTT(5) DEF Raw, EPost, EPostOK, FreeOrDrain, PinBlocks
<2>hwframe. UNCHANGED <<hw,hok,net>>
 BY ONLY <2>witness, <2>design, SMTT(5) DEF Raw, xV
<2>gframe. UNCHANGED gbad
 BY ONLY <2>witness, <2>generation, <2>gbadtype, SMTT(5) DEF Raw
<2>exists. \E m \in net : EPost(i,r,m)
 BY ONLY <2>witness, <2>effect, SMTT(5)
<2>qed. QED BY ONLY <2>guard, <2>hwframe, <2>gframe, <2>exists, SMTT(5)

<1>xwj0NNiH.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ hp[r][rg[i][r]] = i /\ hd[r][rg[i][r]] = rpe[i][r]
       /\ led[rpg[i][r]] = {} /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
       /\ rx[i][r] = 0 /\ plt[rpg[i][r]] = ptl[rpg[i][r]] /\ ptl[rpg[i][r]] \in PLens(r,rg[i][r])
       /\ LtOf(i,r) = ptl[rpg[i][r]] /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
<2> USE ONLY <1>xwj0NNiH, Sizes, Location, Design
 <2>1. K8 /\ K1 /\ K7 /\ ph[i][r] = "ready" /\ IsP(i)
  BY <1>sGwzHBJ3, V21_Inv_K1, V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. dlzHJ(i,r) BY <2>1, <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rpg[i][r] \in Pages /\ pst[rpg[i][r]] = "priv" /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF dlzHJ, Active, OwnedBy, Sizes, Location, Design
 <2>4. Zzz7b(rpg[i][r]) BY <2>1, <2>3, <1>gfplo, Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(5), Sizes, Location, Design DEF dlzHJ, Zzz7b, K1, Active, OwnedBy, LtOf, Sizes, Location, Design


<1>Zt4pFlxKj.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE /\ m.x \in {0} \cup Xids /\ m.fr = rpe[i][r]
       /\ (m.x # 0 => m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[i][r]
                      /\ xk[m.x] = "wr" /\ xp[m.x] = i /\ xd[m.x] = rpe[i][r])
       /\ (EPostOK(m) => xsrc[m.x] = 0 /\ hw[m.x] = "none")
<2> HIDE DEF PPost, EPost, EPostOK, K12, K2, K3, CoreTypeOK, TypInv, MessageShape
<2>old. K12 /\ K2 /\ K3
 BY ONLY <1>Zt4pFlxKj, V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, Sizes, Location, Design, SMTT(5)
<2>ntype. qvLUP /\ SHJS
 BY ONLY <1>Zt4pFlxKj, V22_T_net, V22_T_nx, SMTT(5) DEF MessageShape, qvLUP, SHJS
<2>fields. m \in net /\ m.t="dinfo" /\ m.to=i /\ m.r=r /\ m.g=rg[i][r]
 BY ONLY <1>Zt4pFlxKj, SMTT(5) DEF EPost
<2>domain. m.x \in {0} \cup Xids
 BY ONLY <2>fields, <2>ntype, SMTT(5) DEF qvLUP
<2>message. m.fr=hd[r][rg[i][r]] /\ (m.x # 0 => m.x<nx /\ xr[m.x]=r /\ xg[m.x]=rg[i][r])
 BY ONLY <2>fields, <2>old, SMTT(5) DEF K12
<2>route. hp[r][rg[i][r]]=i /\ hd[r][rg[i][r]]=rpe[i][r]
 BY ONLY <1>Zt4pFlxKj, <1>xwj0NNiH, Sizes, Location, Design, SMTT(5)
<2>mode. Mode="push"
 BY ONLY <1>Zt4pFlxKj, <1>sGwzHBJ3, Sizes, Location, Design, SMTT(5)
<2>xdomain. m.x # 0 => m.x \in Xids /\ m.x<nx
 BY ONLY <2>domain, <2>message, SMTT(5)
<2>integers. nx \in Int /\ (m.x # 0 => m.x \in Int)
 BY ONLY <2>ntype, <2>xdomain, SMTT(5) DEF SHJS, Xids
<2>record. m.x # 0 => xk[m.x]=(IF Mode="push" THEN "wr" ELSE "rd") /\ xp[m.x]=hp[xr[m.x]][xg[m.x]] /\ xd[m.x]=hd[xr[m.x]][xg[m.x]]
 BY ONLY <2>old, <2>xdomain, <2>integers, SMTT(5) DEF K2
<2>xkind. m.x # 0 => xk[m.x]="wr" /\ xp[m.x]=i /\ xd[m.x]=rpe[i][r]
 BY ONLY <2>record, <2>message, <2>route, <2>mode, SMTT(5)
<2>none. EPostOK(m) => iv[m.x]="none" /\ m.x # 0
 BY ONLY SMTT(5) DEF EPostOK
<2>source. EPostOK(m) => xsrc[m.x]=0
 BY ONLY <2>old, <2>xdomain, <2>xkind, <2>none, SMTT(5) DEF K2, InitPage
<2>hardware. EPostOK(m) => hw[m.x]="none"
 BY ONLY <2>old, <2>xdomain, <2>none, SMTT(5) DEF K3
<2>qed. QED BY ONLY <2>domain, <2>message, <2>route, <2>xdomain, <2>xkind, <2>source, <2>hardware, SMTT(5)

<1>PlqH4H.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE \A q \in Pages : pst'[q] = IF q=rpg[i][r] THEN (IF EPostOK(m) THEN pst[q] ELSE IF KPinned(q) THEN "drain" ELSE "free") ELSE pst[q]
<2> USE ONLY <1>PlqH4H, Sizes, Location, Design
 <2>1. OyyWS BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>xwj0NNiH, SMTT(5), Sizes, Location, Design DEF EPost, PageTo, OyyWS, xV, Sizes, Location, Design


<1>TNgDXa.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE \A q \in Pages : led'[q] = IF q=rpg[i][r] THEN (IF EPostOK(m) THEN {m.x} ELSE {}) ELSE led[q]
<2> USE ONLY <1>TNgDXa, Sizes, Location, Design
 <2>1. dcfPK BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>15. led' = IF EPostOK(m) THEN [led EXCEPT ![rpg[i][r]] = @ \cup {m.x}] ELSE [led EXCEPT ![rpg[i][r]] = {}]
  BY SMTT(5), Sizes, Location, Design DEF EPost, PageTo, Sizes, Location, Design
 <2>2. \A q \in Pages : led'[q] = IF q=rpg[i][r] THEN (IF EPostOK(m) THEN led[q] \cup {m.x} ELSE {}) ELSE led[q]
  BY <2>1, <2>15, SMTT(5), Sizes, Location, Design DEF dcfPK, Sizes, Location, Design
 <2>3. led[rpg[i][r]] = {} BY <1>xwj0NNiH, Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. led[rpg[i][r]] \cup {m.x} = {m.x}
  BY <2>3, ZenonT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. QED BY <2>2, <2>4, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design


<1>aGEfs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE \A q \in Xids : iv'[q] = IF q=m.x THEN (IF EPostOK(m) THEN "reg" ELSE iv[q]) ELSE iv[q]
<2> USE ONLY <1>aGEfs, Sizes, Location, Design
 <2>1. fr1A BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>xwj0NNiH, SMTT(5), Sizes, Location, Design DEF EPost, PageTo, fr1A, xV, Sizes, Location, Design


<1>EH7tvTR.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE \A q \in Xids : xsrc'[q] = IF q=m.x THEN (IF EPostOK(m) THEN rpg[i][r] ELSE xsrc[q]) ELSE xsrc[q]
<2> USE ONLY <1>EH7tvTR, Sizes, Location, Design
 <2>1. Uzgo58 BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>xwj0NNiH, SMTT(5), Sizes, Location, Design DEF EPost, PageTo, Uzgo58, xV, Sizes, Location, Design


<1>p3KRni.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE \A q \in Xids : xlt'[q] = IF q=m.x THEN (IF EPostOK(m) THEN LtOf(i,r) ELSE xlt[q]) ELSE xlt[q]
<2> USE ONLY <1>p3KRni, Sizes, Location, Design
 <2>1. OfQy9 BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>xwj0NNiH, SMTT(5), Sizes, Location, Design DEF EPost, PageTo, OfQy9, xV, Sizes, Location, Design


<1>XZpe1Dp7piH2.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE UNCHANGED <<sled,prefc,pqp>>
<2> USE ONLY <1>XZpe1Dp7piH2, Sizes, Location, Design
 <2>1. h9WLgd /\ p1YmMe5 /\ vRZWI BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>xwj0NNiH, SMTT(5), Sizes, Location, Design DEF EPost, PageTo, h9WLgd, p1YmMe5, vRZWI, Sizes, Location, Design


<1>hU99KBzQotc1so.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE EPostOK(m) => xst[m.x] = "posted"
<2> USE ONLY <1>hU99KBzQotc1so, Sizes, Location, Design
 <2>1. K2 /\ K3 /\ PD2ZN /\ SHJS BY <1>UwwC5LVwQr, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. EPostOK(m) => m.x \in Xids /\ m.x < nx /\ hw[m.x] = "none" /\ iv[m.x] = "none" /\ xk[m.x]="wr"
  BY <1>Zt4pFlxKj, SMTT(5), Sizes, Location, Design DEF EPostOK, Sizes, Location, Design
 <2>3. EPostOK(m) => xst[m.x] # "none"
  BY <2>1, <2>2, Sizes, SMTT(5), Location, Design DEF K2, SHJS, Xids, Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, SMTT(5), Sizes, Location, Design DEF K3, PD2ZN, Sizes, Location, Design
\* T2M-END R2M1667_PdRPPP_PdEPostFacts


<1>vH4yU.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE K2'
<2> USE ONLY <1>vH4yU, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW y \in Xids PROVE EK2At(y)'
 BY <1>CMeT, Sizes, Location, Design DEF Sizes, Location, Design
<2>1. K2 /\ K3 /\ AEZsS /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K3, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>15. EK2At(y) BY <2>1, <1>o6IHG, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. PICK m \in net : EPost(i,r,m)
 BY <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<gen,hd,hok,hp,hw,nx,xd,xdst,xg,xk,xnt,xp,xr,xst>>
 BY <1>L4gyoie6, <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. CASE y >= nx
 BY <2>1, <2>15, <2>2, <2>3, <2>4, <1>Zt4pFlxKj, <1>aGEfs, <1>EH7tvTR, <1>p3KRni, Sizes, SMTT(5), Location, Design DEF SHJS, EK2At, EPostOK, ExpPage, InitPage, ExpInst, InitInst, Xids, Sizes, Location, Design
<2>5. CASE y < nx /\ EPostOK(m) /\ y=m.x
 BY <2>1, <2>15, <2>2, <2>3, <2>5, <1>Zt4pFlxKj, <1>xwj0NNiH, <1>sGwzHBJ3, <1>aGEfs, <1>EH7tvTR, <1>p3KRni, Design, Sizes, SMTT(5), Location DEF SHJS, EK2At, EPostOK, ExpPage, InitPage, ExpInst, InitInst, Xids, Pages, Sizes, Location, Design
<2>6. CASE y < nx /\ (~EPostOK(m) \/ y # m.x)
 BY <2>15, <2>2, <2>3, <2>6, <1>aGEfs, <1>EH7tvTR, <1>p3KRni, SMTT(5), Sizes, Location, Design DEF EK2At, ExpPage, InitPage, ExpInst, InitInst, Sizes, Location, Design
<2>7. QED BY <2>1, <2>4, <2>5, <2>6, SMTT(5), Sizes, Location, Design DEF SHJS, Xids, Sizes, Location, Design
\* T2M-END R2M1673_PdRPPP_PdE_PPost_K2

\* T2M-SCOPE R2M1674_PdRPPP_PdE_PPost_K3

<1>Gp1dV.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE K3'
<2> USE ONLY <1>Gp1dV, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW y \in Xids PROVE EK3At(y)'
 BY <1>lNob, Sizes, Location, Design DEF Sizes, Location, Design
<2>1. K3 /\ K2
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K3, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>15. EK3At(y) BY <2>1, <1>fsuoF, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. PICK m \in net : EPost(i,r,m)
 BY <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<hok,hw,xk,xnt,xst>>
 BY <1>L4gyoie6, <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
 BY <2>15, <2>2, <2>3, <1>Zt4pFlxKj, <1>hU99KBzQotc1so, <1>xwj0NNiH, <1>sGwzHBJ3, <1>aGEfs, <1>EH7tvTR, <1>p3KRni, Design, Sizes, SMTT(10), Location DEF EK3At, EPostOK, CqeHw, InFl, Xids, Sizes, Location, Design
\* T2M-END R2M1674_PdRPPP_PdE_PPost_K3

\* T2M-SCOPE R2M1675_PdRPPP_PdE_PPost_K4

<1>sXtGA.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE K4'
<2> USE ONLY <1>sXtGA, Sizes, Location, Design
<2>1. K4 /\ K2 /\ K3 /\ K5 /\ K7 /\ K8 /\ dcfPK /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_K8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. PICK m \in net : EPost(i,r,m)
 BY <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<nx,xdst,xk,xst>>
 BY <1>L4gyoie6, <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
 BY <2>1, <2>2, <2>3, <1>xwj0NNiH, <1>Zt4pFlxKj, <1>sGwzHBJ3, <1>XZpe1Dp7piH2, <1>aGEfs, <1>TNgDXa, <1>EH7tvTR, Design, Sizes, Location, SMTT(5) DEF Active, CqeHw, DInst, EPostOK, ExpInst, ExpPage, Gens, GrownP, InFl, InitInst, InitPage, Inst, IsD, IsP, K2, K3, K4, K5, K7, K8, KSlots, Maps, NL, OwnedBy, PInst, dcfPK, SHJS, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1675_PdRPPP_PdE_PPost_K4

\* T2M-SCOPE R2M1676_PdRPPP_PdE_PPost_K5

<1>mCRy0UppVPPF.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE QuarNoReg'
<2> USE ONLY <1>mCRy0UppVPPF, Sizes, Location, Design
<2>1. QuarNoReg /\ K2 /\ K4 /\ K8 /\ dcfPK
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_K2, V21_Inv_K4, V21_Inv_K8, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. PICK m \in net : EPost(i,r,m)
 BY <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<>>
 BY <1>L4gyoie6, <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
 BY <2>1, <2>2, <2>3, <1>xwj0NNiH, <1>Zt4pFlxKj, <1>sGwzHBJ3, <1>XZpe1Dp7piH2, <1>aGEfs, <1>TNgDXa, <1>PlqH4H, Design, Sizes, Location, SMTT(5) DEF Active, DInst, EPostOK, ExpInst, ExpPage, Gens, InitInst, InitPage, Inst, IsD, IsP, K2, K4, K8, NL, OwnedBy, PInst, QuarNoReg, dcfPK, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1682_PdRPPP_PdE_PPost_QuarNoReg

\* T2M-SCOPE R2M1683_PdRPPP_PdE_PPost_S1

<1>czzB2Tj.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
  PROVE K2'
  BY ONLY <1>czzB2Tj, Sizes, Location, Design, <1>vH4yU, V21_Inv_K2 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bY8HFtQ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
  PROVE K3'
  BY ONLY <1>bY8HFtQ, Sizes, Location, Design, <1>Gp1dV, V21_Inv_K3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jVTS07K.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
  PROVE K4'
  BY ONLY <1>jVTS07K, Sizes, Location, Design, <1>sXtGA, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YD9PogBNEWsiCt.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>YD9PogBNEWsiCt, Sizes, Location, Design, <1>mCRy0UppVPPF, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1686_PdRPPdPAgg_PPost


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


<1>oVpE1N8G19HsCONU.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE RP_RegPrelude
<2> HIDE DEF PPost, RP_RegPrelude, RP_Posted, K2, K3, K8, K12, CoreTypeOK
<2>old. K2 /\ K3 /\ K8 /\ K12
 BY ONLY <1>oVpE1N8G19HsCONU, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>types. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}] /\ xsrc \in [Xids -> 0..NP]
 BY ONLY <1>oVpE1N8G19HsCONU, V22_T_iv, V22_T_xsrc, SMTT(5)
<2>nxtype. nx \in 1..(MX+1)
 BY ONLY <1>oVpE1N8G19HsCONU, V22_T_nx, SMTT(5)
<2>integers. nx \in Int /\ (\A y \in Xids : y \in Int)
 BY ONLY <2>nxtype, SMTT(5) DEF Xids
<2>design. PReg
 BY ONLY Design, ZenonT(5) DEF Design
<2>guard. IsP(i) /\ Active(i,r)
 BY ONLY <1>oVpE1N8G19HsCONU, SMTT(5) DEF PPost, SendReady, Active
<2>source. rpg[i][r] \in Pages
 BY ONLY <1>oVpE1N8G19HsCONU, <2>guard, <2>old, SMTT(5) DEF K8
<2>witness. PICK m \in net : m.t="dinfo" /\ Mode="push" /\
 (IF m.x=0 \/ iv[m.x] # "none" THEN UNCHANGED <<iv,xsrc>>
  ELSE /\ iv[m.x]="none" /\ iv'=[iv EXCEPT ![m.x]="reg"]
       /\ xsrc'=[xsrc EXCEPT ![m.x]=rpg[i][r]])
 BY ONLY <1>oVpE1N8G19HsCONU, <2>design, ZenonT(5) DEF PPost, xV
<2>allocated. m.x # 0 => m.x < nx
 BY ONLY <2>witness, <2>old, SMTT(5) DEF K12
<2>oldreg. \A y \in Xids : iv[y]="reg" => xk[y]="wr"
 BY ONLY <2>old, SMTT(5) DEF K3
<2>each. ASSUME NEW y \in Xids, iv'[y]="reg"
 PROVE xk[y]="wr" /\ (RP_Posted(y) \/ (iv[y]="reg" /\ xsrc'[y]=xsrc[y]))
 <3>unchanged. CASE m.x=0 \/ iv[m.x] # "none"
  <4>qed. QED BY ONLY <2>each, <3>unchanged, <2>witness, <2>oldreg, SMTT(5)
 <3>updated. CASE m.x # 0 /\ iv[m.x]="none"
  <4>same. CASE y=m.x
   <5>before. y<nx /\ y \in Int /\ nx \in Int /\ Mode="push" /\ iv[y]="none"
    BY ONLY <2>each, <4>same, <3>updated, <2>witness, <2>allocated, <2>integers, SMTT(5)
   <5>kind. xk[y]="wr"
    BY ONLY <2>each, <5>before, <2>old, SMTT(5) DEF K2
   <5>oldpoint. xk[y]="wr" /\ xsrc[y]=0
    BY ONLY <2>each, <5>before, <5>kind, <2>old, SMTT(5) DEF K2, InitPage
   <5>newpoint. xsrc'[y]=rpg[i][r]
    BY ONLY <2>each, <4>same, <3>updated, <2>witness, <2>types, SMTT(5)
   <5>qed. QED BY ONLY <5>oldpoint, <5>newpoint, <2>source, SMTT(5) DEF RP_Posted
  <4>other. CASE y # m.x
   <5>frame. iv'[y]=iv[y] /\ xsrc'[y]=xsrc[y]
    BY ONLY <2>each, <4>other, <3>updated, <2>witness, <2>types, SMTT(5)
   <5>qed. QED BY ONLY <2>each, <5>frame, <2>oldreg, SMTT(5)
  <4>qed. QED BY ONLY <4>same, <4>other, SMTT(5)
 <3>qed. QED BY ONLY <3>unchanged, <3>updated, SMTT(5)
<2>qed. QED BY ONLY <2>each, SMTT(5) DEF RP_RegPrelude

\* T2M-LOCAL-VISIBILITY

<1>SI8zBpPIsLR.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE K1'
<2> USE ONLY <1>SI8zBpPIsLR, Sizes, Location, Design
<2>1. K1 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K1, EvidenceAt, PEnd, PPost, PageTo, SendReady, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EztXrZynnWp.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE K2'
 BY ONLY <1>EztXrZynnWp, Sizes, Location, Design, <1>czzB2Tj DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DgxiIzNGnwB.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE K3'
 BY ONLY <1>DgxiIzNGnwB, Sizes, Location, Design, <1>bY8HFtQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZKPsPaJC1Ql.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE K4'
 BY ONLY <1>ZKPsPaJC1Ql, Sizes, Location, Design, <1>jVTS07K DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>f4zZNL9bSl3kmNDOKb.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>f4zZNL9bSl3kmNDOKb, Sizes, Location, Design, <1>YD9PogBNEWsiCt DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NaiRYcaGeTX.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE nx' \in 1..(MX+1)
<2> USE ONLY <1>NaiRYcaGeTX, Sizes, Location, Design
<2>1. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>NaiRYcaGeTX, V22_T_nx, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF Xids, EvidenceAt, PEnd, PPost, PageTo, SendReady, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mgvDugiSF.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE SI7'
<2> USE ONLY <1>mgvDugiSF, Sizes, Location, Design
<2>1. RP_RegSourceSafe BY <1>SI8zBpPIsLR, <1>EztXrZynnWp, <1>DgxiIzNGnwB, <1>ZKPsPaJC1Ql, <1>f4zZNL9bSl3kmNDOKb, <1>NaiRYcaGeTX, <1>NU8zGD7bQ5u9BXIjl, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>oVpE1N8G19HsCONU, <1>KvDgRwgd9SE, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1837_PdRPSI7_PPost


<1>VBdU3P6Yql2dR5s.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE RP_NoNewStop /\ RP_DReadFrame /\ UNCHANGED xdst
<2> HIDE DEF CoreTypeOK, STypeOK, RP_NoNewStop, RP_DReadFrame, PPost
<2>hardware. PICK m \in net :
 UNCHANGED xdst /\ (hw'=hw \/
  (iv[m.x]="none" /\ hw'=[hw EXCEPT ![m.x]=IF Torn(m.x) THEN "stop" ELSE "fly"]))
 BY ONLY <1>VBdU3P6Yql2dR5s, ZenonT(5) DEF PPost, xV
<2>hwtype. hw \in [Xids -> {"none","fly","issued","stop"}]
 BY ONLY <1>VBdU3P6Yql2dR5s, V22_T_hw, SMTT(5)
<2>k3. K3
 BY ONLY <1>VBdU3P6Yql2dR5s, V21_Inv_K3, Sizes, Location, Design, SMTT(5)
<2>idle. \A z \in Xids : iv[z]="none" => hw[z]="none"
 BY ONLY <2>k3, SMTT(5) DEF K3
<2>noStop. RP_NoNewStop
 BY ONLY <2>hardware, <2>hwtype, <2>idle, SMTT(5) DEF RP_NoNewStop
<2>side. IsP(i)
 BY ONLY <1>VBdU3P6Yql2dR5s, ZenonT(5) DEF PPost
<2>separate. \A j \in DInst : j # i
 BY ONLY <2>side, Sizes, SMTT(5) DEF IsP, DInst, PInst, Inst, NL, Sizes
<2>records. (\E value : ph'=[ph EXCEPT ![i][r]=value]) /\ UNCHANGED rpg
 BY ONLY <1>VBdU3P6Yql2dR5s, ZenonT(5) DEF PPost
<2>types. ph \in [Inst -> [Rq -> PhSet]] /\ rpg \in [Inst -> [Rq -> 0..NP]]
 BY ONLY <1>VBdU3P6Yql2dR5s, V22_T_ph, V22_T_rpg, SMTT(5)
<2>domains. DInst \subseteq Inst
 BY ONLY Sizes, SMTT(5) DEF DInst, Inst, NL, Sizes
<2>dside. \A j \in DInst, u \in Rq : ph'[j][u]=ph[j][u] /\ rpg'[j][u]=rpg[j][u]
 BY ONLY <2>records, <2>separate, <2>types, <2>domains, SMTT(5)
<2>dread. RP_DReadFrame
 BY ONLY <2>dside, SMTT(5) DEF RP_DReadFrame
<2>qed. QED BY ONLY <2>hardware, <2>noStop, <2>dread, SMTT(5)

\* T2M-LOCAL-VISIBILITY

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

<1>hfqoDozwqIINxxAFKwl.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE RP2_PublishInfo /\ RP2_UnpostedFrame /\ RP2_NewEntryState /\ RP2_PublishNoFly /\ UNCHANGED <<hw,ptl,sfly>> /\ nx'>=nx
<2> USE ONLY <1>hfqoDozwqIINxxAFKwl, Sizes, Location, Design
<2>1. xsrc \in [Xids -> 0..NP] /\ xr \in [Xids -> 0..NR] /\ xg \in [Xids -> 0..MG] /\ xlt \in [Xids -> 0..PS]
 /\ xp \in [Xids -> {0} \cup Inst] /\ xk \in [Xids -> {"none","wr","rd"}]
 /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 /\ iv \in [Xids -> {"none","reg","posted","failret","cqe","nopost"}] /\ nx \in 1..(MX+1)
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>hfqoDozwqIINxxAFKwl, V22_T_iv, V22_T_nx, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst, SMTT(5)

<2>2. K2 /\ K8 BY V21_Inv_K2, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. i \in PInst /\ Active(i,r) /\ (B2 => SSendReady(i,r)) /\ rpg[i][r] \in Pages
 BY <2>2, Sizes, Design, SMTT(10), Location DEF PPost, SendReady, IsP, PInst, Inst, NL, Active, K8, Sizes, Location, Design
<2>4. PICK m \in net : EPost(i,r,m)
 BY <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. (EPostOK(m) => m.x \in Xids /\ m.x<nx /\ xr[m.x]=r /\ xg[m.x]=rg[i][r] /\ xk[m.x]="wr" /\ xp[m.x]=i /\ xsrc[m.x]=0 /\ hw[m.x]="none")
 BY <2>4, <1>Zt4pFlxKj, SMTT(10), Sizes, Location, Design DEF EPostOK, Sizes, Location, Design
<2>6. \A x \in Xids : RP_Posted(x) <=> (EPostOK(m) /\ x=m.x)
 BY <2>1, <2>3, <2>4, <2>5, <1>EH7tvTR, Sizes, SMTT(10), Location, Design DEF RP_Posted, Pages, Sizes, Location, Design
<2>7. RP2_PublishInfo
 BY <2>3, <2>4, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF RP2_PublishInfo, EPost, xV, Sizes, Location, Design
<2>8. RP2_UnpostedFrame
 BY <2>1, <2>3, <2>4, <2>5, <2>6, <1>EH7tvTR, <1>p3KRni, <1>aGEfs, SMTT(10), Sizes, Location, Design DEF RP2_UnpostedFrame, EPost, xV, Sizes, Location, Design
<2>9. RP2_NewEntryState
 BY <2>1, <2>4, <2>5, <2>6, <1>aGEfs, SMTT(10), Sizes, Location, Design DEF RP2_NewEntryState, EPost, xV, Sizes, Location, Design
<2>10. RP2_PublishNoFly /\ UNCHANGED <<hw,ptl,sfly>> /\ nx'>=nx
 BY <2>1, <2>4, <2>5, <2>6, <1>sGwzHBJ3, <1>L4gyoie6, SMTT(10), Sizes, Location, Design DEF RP2_PublishNoFly, EPost, xV, Sizes, Location, Design
<2>11. QED BY <2>7, <2>8, <2>9, <2>10, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lfr647sex40IaADeU2.        
 ASSUME PinInv, B2, SFollow
 PROVE RP_QSnapshot'
<2> USE ONLY <1>lfr647sex40IaADeU2, Sizes, Location, Design
<2>1. SI5 /\ STypeOK BY ONLY <1>lfr647sex40IaADeU2, Sizes, Location, Design, V21_Inv_P_SI5, V21_Inv_STypeOK DEF P_SI5, Sizes, Location, Design
<2>2. RP_SFollowEffect BY ONLY <1>lfr647sex40IaADeU2, Sizes, Location, Design, <1>PKl1lJKpXGVI0yrZ8 DEF Sizes, Location, Design
<2>fxQ. squar'=RP_Q2(0)
 BY ONLY <2>2, ZenonT(5) DEF RP_SFollowEffect
<2>fxX. xsrcS'=RP_SX(0)
 BY ONLY <2>2, ZenonT(5) DEF RP_SFollowEffect
<2>types. squar \subseteq Xids \X SPages /\ xsrcS \in [Xids -> SUBSET SPages]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>lfr647sex40IaADeU2, V22_T_squar, V22_T_xsrcS, SMTT(5)

<2>old. \A h \in squar : h[2] \in xsrcS[h[1]]
 BY ONLY <2>1, ZenonT(5) DEF SI5
<2>3. ASSUME NEW h \in squar'
       PROVE h[2] \in xsrcS'[h[1]]
 <3>old. ASSUME h \in squar PROVE h \in Xids \X SPages /\ h[2] \in xsrcS[h[1]]
  BY ONLY <3>old, <2>types, <2>old, SMTT(5)
 <3>new. ASSUME h \notin squar PROVE h \in Xids \X SPages /\ h[2] \in xsrcS[h[1]]
  <4>pickX. PICK x \in Xids : \E p \in xsrcS[x] : h = <<x,p>>
   BY ONLY <2>3, <3>new, <2>fxQ, SMTT(5) DEF RP_Q2
  <4>pick. PICK p \in xsrcS[x] : h = <<x,p>>
   BY ONLY <4>pickX, ZenonT(5)
  <4>ptype. p \in SPages
   BY ONLY <2>types, <4>pickX, <4>pick, SMTT(5)
  <4>qed. QED BY ONLY <4>pickX, <4>pick, <4>ptype, SMTT(5)
 <3>1. h \in Xids \X SPages /\ h[2] \in xsrcS[h[1]]
  BY ONLY <3>old, <3>new, SMTT(5)
 <3>2. ~RP_Posted(h[1])
  BY ONLY <1>lfr647sex40IaADeU2, <2>3, <3>1, <1>IBl04sqx8asAwVJT9rUNW, SMTT(5)
 <3>3. QED BY ONLY <2>fxX, <3>1, <3>2, SMTT(5) DEF RP_SX
<2>4. QED BY ONLY <2>3, ZenonT(5) DEF RP_QSnapshot

\* T2M-LOCAL-VISIBILITY

<1>hWUKLs3aQ14O.        
 ASSUME PinInv, SFollow, RP2_PublishInfo, RP2_UnpostedFrame, RP2_NewEntryState, RP2_PublishNoFly,
        UNCHANGED hw, nx'>=nx, nx' \in 1..(MX+1), K3'
 PROVE P_SI4'
<2> USE ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design
<2>1. (B2 => SI4) /\ STypeOK /\ nx \in 1..(MX+1)
 BY ONLY <1>hWUKLs3aQ14O, Sizes, Location, Design, ZenonT(10), V21_Inv_BaseTypeOK, V21_Inv_K3, V21_Inv_P_SI4, V21_Inv_STypeOK DEF P_SI4, CoreTypeOK, Sizes, Location, Design
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
   <6> HIDE DEF PinInv, CoreTypeOK, STypeOK, SFollow
   <6>pempty. xsrcP'[x]={}
    BY ONLY <3>3, <3>6, ZenonT(5)
   <6>union. xsrcS'[x] \cup xsrcP'[x]=xsrcS'[x]
    BY ONLY <6>pempty, ZenonT(5)
   <6>empty. Cardinality({})=0
    BY ONLY FS_EmptySet, ZenonT(5)
   <6>single. Cardinality({smap[xp'[x]][xr'[x]]})=1
    BY ONLY FS_Singleton, ZenonT(5)
   <6>qed. QED BY ONLY <5>1, <6>union, <6>empty, <6>single, SMTT(5)
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


<1>XmMA6AX2xC.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE P_SI4'
 BY ONLY <1>XmMA6AX2xC, Sizes, Location, Design, <1>hfqoDozwqIINxxAFKwl, <1>DgxiIzNGnwB, <1>NaiRYcaGeTX, <1>hWUKLs3aQ14O DEF Sizes, Location, Design
\* T2M-END R2M1853_PdRPR2PublishSI4_PPost


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

<1>DCepNdVmjsMeB.        
 ASSUME PinInv, B2, SFollow, RP2_UnpostedFrame, RP_RegPrelude, RP_RegSourceSafe, nx'>=nx, nx' \in 1..(MX+1)
 PROVE RP2_SI5Q'
<2> USE ONLY <1>DCepNdVmjsMeB, Sizes, Location, Design
<2>1. SI4 /\ SI5 /\ STypeOK BY V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI4, P_SI5, Sizes, Location, Design
<2>2. RP_SFollowEffect BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
<2>21. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>DCepNdVmjsMeB, V22_T_nx, SMTT(5)

<2>22. nx \in Int /\ nx' \in Int BY <2>21, Sizes, SMTT(10), Location, Design DEF Sizes, Location, Design
<2>23. RP_QSnapshot' BY <1>lfr647sex40IaADeU2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW h \in squar'
       PROVE h[1]<nx' /\ h[2] \in xsrcS'[h[1]] /\ spst'[h[2]]="shared" /\ skey'[h[2]]=STok(xr'[h[1]],xg'[h[1]]) /\ iv'[h[1]] # "reg"
 <3>1. h \in squar \/ (h \in Xids \X SPages /\ RP_Quarantine(h[1]) /\ h[2] \in xsrcS[h[1]])
 <4> HIDE DEF CoreTypeOK, STypeOK, SFollow
 <4>effect. squar'=RP_Q2(0)
  BY ONLY <2>2, ZenonT(5) DEF RP_SFollowEffect
 <4>types. xsrcS \in [Xids -> SUBSET SPages]
  BY ONLY <1>DCepNdVmjsMeB, V22_T_xsrcS, SMTT(5) DEF V22_T_xsrcS
 <4>inQ. h \in RP_Q2(0)
  BY ONLY <2>3, <4>effect, SMTT(5)
 <4>new. CASE h \notin squar
  <5>element. \E x \in Xids : RP_Quarantine(x) /\ (\E p \in xsrcS[x] : h = <<x, p>>)
   BY ONLY <4>inQ, <4>new, ZenonT(10) DEF RP_Q2
  <5>qed. QED BY ONLY <5>element, <4>types, SMTT(5)
 <4>old. CASE h \in squar
  BY ONLY <4>old, SMTT(5)
 <4>qed. QED BY ONLY <4>new, <4>old, SMTT(5)
 <3>2. h[1] \in Xids /\ h[2] \in SPages /\ h[1]<nx /\ h[2] \in xsrcS[h[1]] /\ spst[h[2]]="shared" /\ skey[h[2]]=STok(xr[h[1]],xg[h[1]])
  BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF SI4, SI5, STypeOK, RP_Quarantine, Sizes, Location, Design
 <3>3. ~RP_Posted(h[1]) BY <3>2, <1>IBl04sqx8asAwVJT9rUNW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. UNCHANGED <<iv[h[1]],xr[h[1]],xg[h[1]]>>
  BY <3>2, <3>3, ZenonT(10), Sizes, Location, Design DEF RP2_UnpostedFrame, Sizes, Location, Design
 <3>5. iv'[h[1]] # "reg"
  BY <2>1, <3>1, <3>2, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF SI5, RP_Quarantine, RP_RegPrelude, RP_RegSourceSafe, Sizes, Location, Design
 <3>6. h[1]<nx' BY <2>22, <3>2, Sizes, SMTT(10), Location, Design DEF Xids, Sizes, Location, Design
 <3>7. spst'[h[2]]="shared" /\ skey'[h[2]]=skey[h[2]]
  BY <2>1, <2>2, <3>2, <1>Ua3eOhQVTzEuP0Q, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, Sizes, Location, Design
 <3>8. QED BY <2>3, <2>23, <3>2, <3>4, <3>5, <3>6, <3>7, Sizes, Location, Design DEF RP_QSnapshot, Sizes, Location, Design
<2>4. QED BY <2>3, Sizes, Location, Design DEF RP2_SI5Q, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T94f38JZrxOV.        
 ASSUME PinInv, SFollow, RP2_UnpostedFrame, RP_RegPrelude, RP_RegSourceSafe, nx'>=nx, nx' \in 1..(MX+1),
        UNCHANGED xdst, RP_NoNewStop, RP2_StoppedHeldBack, RP_RecordProgress, (B2 => RP2_PrivatePhaseStep)
 PROVE P_SI5'
<2> USE ONLY <1>T94f38JZrxOV, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI5, Sizes, Location, Design
<2>2. CASE B2
 <3>1. RP2_SI5Q' /\ RP2_SI5D' /\ RP2_SI5P'
  BY <2>2, <1>DCepNdVmjsMeB, <1>lPcR28kbBALGX, <1>JceKtVIEZsJyu, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <3>1, Sizes, Location, Design DEF P_SI5, SI5, RP2_SI5Q, RP2_SI5D, RP2_SI5P, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1855_PdRPR2PublishSI5


<1>atMW8adPGXJlsK69G2.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow, B2
 PROVE RP2_PrivatePhaseStep
<2> USE ONLY <1>atMW8adPGXJlsK69G2, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>atMW8adPGXJlsK69G2, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. SSendReady(i,r)
 BY Design, SMTT(10), Sizes, Location DEF PPost, SendReady, Sizes, Location, Design
<2>3. smap[i][r]=0 \/ spst[smap[i][r]]="shared"
 BY <2>2, Design, SMTT(10), Sizes, Location DEF SSendReady, Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, Design, SMTT(10), Location DEF RP2_PrivatePhaseStep, Active, SPages, Inst, PInst, NL, EvidenceAt, PEnd, PPost, PageTo, SendReady, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AYunvjnbWNWtXLjBFqq.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE UNCHANGED xdst /\ RP2_StoppedHeldBack
<2> USE ONLY <1>AYunvjnbWNWtXLjBFqq, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>AYunvjnbWNWtXLjBFqq, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>2. \A q \in Pages : Loc(q) \in Int
 BY Location, Sizes, SMTT(10), Design DEF KPages, Inst, NL, Sizes, Location, Design
<2>3. rpg[i][r] \in Pages /\ Loc(rpg[i][r])=i /\ IsP(i)
 BY Sizes, Design, SMTT(10), V21_Inv_K8, Location DEF K8, Active, PPost, SendReady, Sizes, Location, Design
<2>4. RP2_DHeldBack
 BY <2>1, <2>2, <2>3, Sizes, Design, SMTT(10), Location DEF RP2_DHeldBack, IsP, IsD, NL, EvidenceAt, PEnd, PPost, PageTo, SendReady, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>5. RP2_StopBack /\ UNCHANGED <<xdst,xr,xg>>
 BY Design, ZenonT(10), Sizes, Location DEF RP2_StopBack, EvidenceAt, PEnd, PPost, PageTo, SendReady, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, <1>IKXZRHRBF2l7ZlEB9jY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MCrkhUny9T.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE P_SI5'
<2> USE ONLY <1>MCrkhUny9T, Sizes, Location, Design
<2>1. RP_RegSourceSafe BY <1>SI8zBpPIsLR, <1>EztXrZynnWp, <1>DgxiIzNGnwB, <1>ZKPsPaJC1Ql, <1>f4zZNL9bSl3kmNDOKb, <1>NaiRYcaGeTX, <1>NU8zGD7bQ5u9BXIjl, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 => RP2_PrivatePhaseStep BY <1>atMW8adPGXJlsK69G2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>hfqoDozwqIINxxAFKwl, <1>oVpE1N8G19HsCONU, <1>AYunvjnbWNWtXLjBFqq,
 <1>VBdU3P6Yql2dR5s, <1>NaiRYcaGeTX, <1>Db6ZFqcdXWUtDr6Bov42, <1>T94f38JZrxOV, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1857_PdRPR2PublishSI5_PPost


<1> QED BY <1>MCrkhUny9T, <1>mgvDugiSF, <1>XmMA6AX2xC, <1>czzB2Tj, <1>TmI3GWe90PUybSk, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF Part_PPost_02_01, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_K8, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_QuarNoReg, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_gbad, V22_T_hw, V22_T_iv, V22_T_net, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_pr, V22_T_pst, V22_T_rg, V22_T_rpg, V22_T_squar, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xsrcS, V22_T_xst
====
