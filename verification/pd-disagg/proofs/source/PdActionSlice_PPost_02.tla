---- MODULE PdActionSlice_PPost_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, Integers, TLAPS, PdFinalAuxType_027d8d9d83cf40b0, PdFinalAuxType_7a2eea0d18bce7cf, PdFinalInvProjections, PdShapeBase, PdFinalEffects, PdActionSlice_PPost_01

\* Complete original body PdFinalPart_PPost_02_02 SHA 665e38996ce6c959ed1f2600d4d5e502a4e1260a0eda73f87740dfe21d2227e3
HIDE DEF AuxType_027d8d9d83cf40b0, AuxType_7a2eea0d18bce7cf, DomainKeep_PPost, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_PPost_01_01, Part_PPost_01_02, Part_PPost_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeEffect_PPost, ShapeImpliesTags, ShapeInitiatorLocation, ShapeKeep_PPost, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K11, V21_Inv_K13, V21_Inv_K16, V21_Inv_K17, V21_Inv_K5, V21_Inv_K6, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_kfly, V22_T_nfail, V22_T_pqp, V22_T_prefc, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xnt, V22_T_xprefixOK, V22_T_xsrcP
THEOREM Part_PPost_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE (P_SI2)' /\ (NoStrayAccess)'
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


           RP_RecordReady == B2 => \A i \in PInst,r \in Rq :
            ph'[i][r] \in {"reg","sent","exp"} => rg'[i][r]=rg[i][r] /\ SSendReady(i,r)


           RP_NoneFrame == \A i \in PInst,r \in Rq : ph'[i][r]="none" => ph[i][r]="none" /\ rg'[i][r]=rg[i][r]

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


           RPN_EPostOK(m) == m.x # 0 /\ iv[m.x] = "none"


           RPN_EPost(i,r,m) ==
            /\ m \in net /\ m.t = "dinfo" /\ m.to = i /\ m.r = r /\ m.g = rg[i][r]
            /\ IF RPN_EPostOK(m)
               THEN /\ iv' = [iv EXCEPT ![m.x] = "reg"]
                    /\ xsrc' = [xsrc EXCEPT ![m.x] = rpg[i][r]]
                    /\ xlt' = [xlt EXCEPT ![m.x] = LtOf(i,r)]
                    /\ led' = [led EXCEPT ![rpg[i][r]] = @ \cup {m.x}]
                    /\ ph' = [ph EXCEPT ![i][r] = "reg"] /\ rx' = [rx EXCEPT ![i][r] = m.x]
                    /\ UNCHANGED <<pst,pr,pgn,plt,sled,prefc,pqp,xr,xg,xk,xp,xd,xdst,xnt,xst,nx>>
               ELSE /\ ph' = [ph EXCEPT ![i][r] = "end"] /\ rx' = [rx EXCEPT ![i][r] = m.x]
                    /\ PageTo(rpg[i][r], IF KPinned(rpg[i][r]) THEN "drain" ELSE "free", 0, {}, {})
                    /\ UNCHANGED xV

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, RP_PinFacts, RP_PinKeep, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, EPostOK, EPost, RP_RecordReady, RP_NoneFrame, RP_SharedSend, RP2_PublishInfo, RP2_UnpostedFrame, RP2_PublishNoFly, RP2_NewEntryState, RP_QSnapshot, RPNS_TransportNoStray, RPN_T_gen, RPN_T_rt, RPN_T_rp, RPN_T_rd, RPN_T_hp, RPN_T_hd, RPN_T_alive, RPN_T_nfail, RPN_T_torn, RPN_T_kpin, RPN_T_kfly, RPN_T_krs, RPN_T_ph, RPN_T_rg, RPN_T_rpg, RPN_T_rpe, RPN_T_rx, RPN_T_rhit, RPN_T_pst, RPN_T_pr, RPN_T_pgn, RPN_T_plt, RPN_T_ptl, RPN_T_pvis, RPN_T_led, RPN_T_sfly, RPN_T_sled, RPN_T_prefc, RPN_T_pqp, RPN_T_xr, RPN_T_xg, RPN_T_xk, RPN_T_xp, RPN_T_xd, RPN_T_xsrc, RPN_T_xdst, RPN_T_xnt, RPN_T_hw, RPN_T_hok, RPN_T_iv, RPN_T_xst, RPN_T_xlt, RPN_T_nx, RPN_T_net, RPN_T_drep, RPN_T_crep, RPN_T_dsucc, RPN_T_gbad, RPN_Types, RPN_BK8At, RPN_BK7At, RPN_EPostOK, RPN_EPost

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


<1>Db6ZFqcdXWUtDr6Bov42.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>Db6ZFqcdXWUtDr6Bov42, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Db6ZFqcdXWUtDr6Bov42, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, PEnd, PPost, PageTo, SendReady, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VpTl8Qd4nHp3uIV0n.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE HitIdentity'
 BY ONLY <1>VpTl8Qd4nHp3uIV0n, Sizes, Location, Design, <1>Db6ZFqcdXWUtDr6Bov42, <1>UbRyVd7pIbH8AblyNEO DEF Sizes, Location, Design
\* T2M-END R2M1428_PdRPShared_PPost


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


<1>CpFlkADGUBWCq.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow, NEW q \in Pages, KPinned(q)
 PROVE RP_PinKeep(q)
<2> HIDE DEF PPost, PageTo, FreeOrDrain, RP_PinKeep, RP_PinFacts
<2>old. RP_PinFacts(q)
 BY ONLY <1>CpFlkADGUBWCq, <1>sTGmGejCTusB, Sizes, Location, Design, SMTT(5)
<2>design. Mut="none" /\ PReg
 BY ONLY Design, ZenonT(5) DEF Design
<2>guard. IsP(i) /\ Active(i,r)
 BY ONLY <1>CpFlkADGUBWCq, <2>design, SMTT(5) DEF PPost, SendReady, Active
<2>k8. K8
 BY ONLY <1>CpFlkADGUBWCq, V21_Inv_K8, Sizes, Location, Design, SMTT(5)
<2>source. rpg[i][r] \in Pages /\ Loc(rpg[i][r])=i /\ pst[rpg[i][r]]="priv"
 BY ONLY <1>CpFlkADGUBWCq, <2>guard, <2>k8, SMTT(5) DEF K8
<2>types. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 /\ plt \in [Pages -> 0..PS] /\ led \in [Pages -> SUBSET Xids]
 /\ sled \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>CpFlkADGUBWCq, V22_T_pst, V22_T_pr, V22_T_pgn, V22_T_plt, V22_T_led, V22_T_sled, SMTT(5)
<2>frame. UNCHANGED <<ptl,pvis,sfly,hw,xdst>>
 BY ONLY <1>CpFlkADGUBWCq, <2>design, ZenonT(5) DEF PPost, xV
<2>nowrite. NoWriteInto(q) => NoWriteInto(q)'
 BY ONLY <2>frame, SMTT(5) DEF NoWriteInto, Writing, InFl
<2>effect. PageTo(rpg[i][r],FreeOrDrain(rpg[i][r]),0,{},{})
 \/ (UNCHANGED <<pst,pr,pgn,plt,sled>> /\
      (\A u \in Pages : u # rpg[i][r] => led'[u]=led[u]))
 BY ONLY <1>CpFlkADGUBWCq, <2>types, SMTT(5) DEF PPost
<2>same. CASE q=rpg[i][r]
 <3>state. FreeOrDrain(rpg[i][r])="drain"
  BY ONLY <1>CpFlkADGUBWCq, <2>same, <2>design, SMTT(5) DEF FreeOrDrain, PinBlocks
 <3>side. IsP(Loc(q)) /\ ~IsD(Loc(q))
  BY ONLY <1>CpFlkADGUBWCq, <2>source, <2>guard, <2>same, Sizes, SMTT(5) DEF IsP, IsD, Inst, NL, Sizes
 <3>update. pst'[q] \in {"priv","drain"} /\ UNCHANGED <<pr[q],pgn[q],plt[q]>> /\ sled'[q]={}
  BY ONLY <1>CpFlkADGUBWCq, <2>same, <2>effect, <2>types, <2>source, <2>old, <3>state, <3>side, SMTT(5) DEF PageTo, RP_PinFacts
 <3>qed. QED
  BY ONLY <2>old, <2>source, <2>same, <2>frame, <2>nowrite, <3>side, <3>update, SMTT(5) DEF RP_PinKeep, RP_PinFacts
<2>other. CASE q # rpg[i][r]
 <3>update. UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
  BY ONLY <1>CpFlkADGUBWCq, <2>other, <2>effect, <2>types, SMTT(5) DEF PageTo
 <3>qed. QED BY ONLY <2>old, <2>frame, <2>nowrite, <3>update, SMTT(5) DEF RP_PinKeep, RP_PinFacts
<2>qed. QED BY ONLY <2>same, <2>other, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>bt55fE06Bk5ybwruO.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs,kfly,xdst>>
 BY ONLY <1>bt55fE06Bk5ybwruO, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, FreeOrDrain, GiveUpTo, GiveUpToN, PEnd, PPost, PageTo, PinBlocks, SendReady, Torn, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>i8S0Zyh7PQsf.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>i8S0Zyh7PQsf, Sizes, Location, Design
<2>1. \A q \in Pages : KPinned(q) => RP_PinKeep(q)
 BY <1>CpFlkADGUBWCq, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,kfly,xdst>> BY <1>bt55fE06Bk5ybwruO, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>i8S0Zyh7PQsf, <2>2, V22_T_xdst, SMTT(5)

<2>4. QED BY <2>1, <2>2, <2>3, <1>VtlCqCAE0X2qQ, Sizes, Location, Design DEF Sizes, Location, Design

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

<1>K6i7zWtqhdV87Sb4Q40nFMS.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>K6i7zWtqhdV87Sb4Q40nFMS, Sizes, Location, Design, <1>hfqoDozwqIINxxAFKwl, <1>KEGyjYU5k3BGqj DEF Sizes, Location, Design

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


<1>C6zd1mhNhf.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE P_SI2'
 BY ONLY <1>C6zd1mhNhf, Sizes, Location, Design, <1>Gi9jdkhau0LKxImNHeF, <1>VpTl8Qd4nHp3uIV0n, <1>AnajBeZS7htcLkTpZ8C91mxOHTa,
    <1>hfqoDozwqIINxxAFKwl, <1>K6i7zWtqhdV87Sb4Q40nFMS, <1>DD3w23uO4qh9 DEF Sizes, Location, Design
\* T2M-END R2M1850_PdRPR2PublishSI2_PPost


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

<1>MQmx26snJYsX.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PPost(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hp, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, torn, xd, xdst, xg, xk, xnt, xp, xr, xst>>
  BY ONLY <1>MQmx26snJYsX, Sizes, Location, Design, ZenonT(5) DEF PPost, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M2135_PdRPNPP_PdPPostFrames


<1>gxygf0DnL4Xw.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE /\ Mode = "push" /\ IsP(i) /\ ph[i][r] = "ready"
       /\ UNCHANGED <<hw,hok,net,gbad>> /\ \E m \in net : RPN_EPost(i,r,m)
<2> USE ONLY <1>gxygf0DnL4Xw, Sizes, Location, Design
 <2>1. RPN_T_gbad BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, SMTT(5), Sizes, Location DEF PPost, RPN_EPost, RPN_EPostOK, SendReady, GenOK, FreeOrDrain, PinBlocks, RPN_T_gbad, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>B1oFB5W8XtNm.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ hp[r][rg[i][r]] = i /\ hd[r][rg[i][r]] = rpe[i][r]
       /\ led[rpg[i][r]] = {} /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
       /\ rx[i][r] = 0 /\ plt[rpg[i][r]] = ptl[rpg[i][r]] /\ ptl[rpg[i][r]] \in PLens(r,rg[i][r])
       /\ LtOf(i,r) = ptl[rpg[i][r]] /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
<2> USE ONLY <1>B1oFB5W8XtNm, Sizes, Location, Design
 <2>1. K8 /\ K1 /\ K7 /\ ph[i][r] = "ready" /\ IsP(i)
  BY <1>gxygf0DnL4Xw, V21_Inv_K1, V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. RPN_BK8At(i,r) BY <2>1, <1>BOF4qLjmO, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rpg[i][r] \in Pages /\ pst[rpg[i][r]] = "priv" /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF RPN_BK8At, Active, OwnedBy, Sizes, Location, Design
 <2>4. RPN_BK7At(rpg[i][r]) BY <2>1, <2>3, <1>UdmO1q2Uu, Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(5), Sizes, Location, Design DEF RPN_BK8At, RPN_BK7At, K1, Active, OwnedBy, LtOf, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GUdtgkQkIPLzW.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), RPN_EPost(i,r,m)
 PROVE /\ m.x \in {0} \cup Xids /\ m.fr = rpe[i][r]
       /\ (m.x # 0 => m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[i][r]
                      /\ xk[m.x] = "wr" /\ xp[m.x] = i /\ xd[m.x] = rpe[i][r])
       /\ (RPN_EPostOK(m) => xsrc[m.x] = 0 /\ hw[m.x] = "none")
<2> USE ONLY <1>GUdtgkQkIPLzW, Sizes, Location, Design
 <2>1. K12 /\ K2 /\ K3 /\ RPN_T_net /\ RPN_T_nx
  BY <1>xefsaV8GL9Rd3I, V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. m.x \in {0} \cup Xids /\ (m.x # 0 => m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[i][r])
  BY <2>1, SMTT(5), Sizes, Location, Design DEF K12, RPN_T_net, RPN_EPost, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>gxygf0DnL4Xw, <1>B1oFB5W8XtNm, Sizes, SMTT(5), Location, Design DEF K12, K2, K3, RPN_EPost, RPN_EPostOK, InitPage, RPN_T_nx, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GJg4XWrIHj.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), RPN_EPost(i,r,m)
 PROVE \A q \in Pages : pst'[q] = IF q=rpg[i][r] THEN (IF RPN_EPostOK(m) THEN pst[q] ELSE IF KPinned(q) THEN "drain" ELSE "free") ELSE pst[q]
<2> USE ONLY <1>GJg4XWrIHj, Sizes, Location, Design
 <2>1. RPN_T_pst BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>B1oFB5W8XtNm, SMTT(5), Sizes, Location, Design DEF RPN_EPost, PageTo, RPN_T_pst, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Um6TgLPN5.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), RPN_EPost(i,r,m)
 PROVE \A q \in Pages : pr'[q] = IF q=rpg[i][r] THEN (IF ~RPN_EPostOK(m) /\ ~KPinned(q) THEN 0 ELSE pr[q]) ELSE pr[q]
<2> USE ONLY <1>Um6TgLPN5, Sizes, Location, Design
 <2>1. RPN_T_pr BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>B1oFB5W8XtNm, SMTT(5), Sizes, Location, Design DEF RPN_EPost, PageTo, RPN_T_pr, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D8I1PmN7HH.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), RPN_EPost(i,r,m)
 PROVE \A q \in Pages : pgn'[q] = IF q=rpg[i][r] THEN (IF ~RPN_EPostOK(m) /\ ~KPinned(q) THEN 0 ELSE pgn[q]) ELSE pgn[q]
<2> USE ONLY <1>D8I1PmN7HH, Sizes, Location, Design
 <2>1. RPN_T_pgn BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>B1oFB5W8XtNm, SMTT(5), Sizes, Location, Design DEF RPN_EPost, PageTo, RPN_T_pgn, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JkfUPygiG8.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), RPN_EPost(i,r,m)
 PROVE \A q \in Pages : plt'[q] = IF q=rpg[i][r] THEN (IF ~RPN_EPostOK(m) /\ ~KPinned(q) THEN 0 ELSE plt[q]) ELSE plt[q]
<2> USE ONLY <1>JkfUPygiG8, Sizes, Location, Design
 <2>1. RPN_T_plt BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>B1oFB5W8XtNm, SMTT(5), Sizes, Location, Design DEF RPN_EPost, PageTo, RPN_T_plt, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eE7KcwPJgR.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), RPN_EPost(i,r,m)
 PROVE \A q \in Pages : led'[q] = IF q=rpg[i][r] THEN (IF RPN_EPostOK(m) THEN {m.x} ELSE {}) ELSE led[q]
<2> USE ONLY <1>eE7KcwPJgR, Sizes, Location, Design
 <2>1. RPN_T_led BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>15. led' = IF RPN_EPostOK(m) THEN [led EXCEPT ![rpg[i][r]] = @ \cup {m.x}] ELSE [led EXCEPT ![rpg[i][r]] = {}]
  BY SMTT(5), Sizes, Location, Design DEF RPN_EPost, PageTo, Sizes, Location, Design
 <2>2. \A q \in Pages : led'[q] = IF q=rpg[i][r] THEN (IF RPN_EPostOK(m) THEN led[q] \cup {m.x} ELSE {}) ELSE led[q]
  BY <2>1, <2>15, SMTT(5), Sizes, Location, Design DEF RPN_T_led, Sizes, Location, Design
 <2>3. led[rpg[i][r]] = {} BY <1>B1oFB5W8XtNm, Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. led[rpg[i][r]] \cup {m.x} = {m.x}
  BY <2>3, ZenonT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. QED BY <2>2, <2>4, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m0DRo1wtulO.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), RPN_EPost(i,r,m)
 PROVE \A q \in Xids : xsrc'[q] = IF q=m.x THEN (IF RPN_EPostOK(m) THEN rpg[i][r] ELSE xsrc[q]) ELSE xsrc[q]
<2> USE ONLY <1>m0DRo1wtulO, Sizes, Location, Design
 <2>1. RPN_T_xsrc BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>B1oFB5W8XtNm, SMTT(5), Sizes, Location, Design DEF RPN_EPost, PageTo, RPN_T_xsrc, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZuPBGTpJLUV7AJDT.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), RPN_EPost(i,r,m)
 PROVE UNCHANGED <<sled,prefc,pqp>>
<2> USE ONLY <1>ZuPBGTpJLUV7AJDT, Sizes, Location, Design
 <2>1. RPN_T_sled /\ RPN_T_prefc /\ RPN_T_pqp BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>B1oFB5W8XtNm, SMTT(5), Sizes, Location, Design DEF RPN_EPost, PageTo, RPN_T_sled, RPN_T_prefc, RPN_T_pqp, Sizes, Location, Design
\* T2M-END R2M2137_PdRPNPP_PdEPostFacts


<1>wSqH03haPuyDY9y.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), RPN_EPost(i,r,m)
 PROVE \A q \in Pages : (led[q] # {} \/ sfly[q] # {} \/ KPinned(q)) =>
   pst'[q] \in {pst[q],"drain","quar"} /\ pr'[q]=pr[q] /\ pgn'[q]=pgn[q] /\ plt'[q]=plt[q]
 BY ONLY <1>wSqH03haPuyDY9y, Sizes, Location, Design, <1>B1oFB5W8XtNm, <1>GJg4XWrIHj, <1>Um6TgLPN5, <1>D8I1PmN7HH, <1>JkfUPygiG8, SMTT(5) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tn832Hw5MghM.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), RPN_EPost(i,r,m)
 PROVE /\ \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
       /\ \A q \in Pages : UNCHANGED GrownP(q)
<2> USE ONLY <1>tn832Hw5MghM, Sizes, Location, Design
 <2>1. UNCHANGED <<rpg,sled>> BY <1>MQmx26snJYsX, <1>ZuPBGTpJLUV7AJDT, Sizes, Location, Design DEF Sizes, Location, Design
 <2>15. \A q \in Pages : IsD(Loc(q)) => q # rpg[i][r]
  BY <1>gxygf0DnL4Xw, <1>B1oFB5W8XtNm, Sizes, SMTT(5), Location, Design DEF IsP, IsD, Inst, PInst, DInst, NL, Sizes, Location, Design
 <2>2. \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
  BY <2>1, <2>15, <1>GJg4XWrIHj, <1>Um6TgLPN5, <1>D8I1PmN7HH, <1>JkfUPygiG8, <1>eE7KcwPJgR, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF GrownP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>P4YkAUl8mQtyAWGhp.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW y \in Xids, PinInv, PPost(i,r), RPN_EPost(i,r,m), Writing(y)
 PROVE UNCHANGED <<pst[xdst[y]],pr[xdst[y]],pgn[xdst[y]]>>
<2> USE ONLY <1>P4YkAUl8mQtyAWGhp, Sizes, Location, Design
 <2>1. K1 /\ K2 /\ K3 /\ RPN_T_nx BY <1>xefsaV8GL9Rd3I, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. y < nx /\ xdst[y] \in Pages
  BY <2>1, <1>QfMLlZ4MHHW0bUMKWZ, <1>FhsnoZB8I8RxAoKXN5IC, Sizes, Location, Design DEF Writing, Sizes, Location, Design
 <2>3. Loc(xdst[y]) \in DInst BY <2>2, <1>uOE5j5p, Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. QED BY <2>2, <2>3, <1>tn832Hw5MghM, <1>MQmx26snJYsX, Sizes, SMTT(5), Location, Design DEF IsD, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DkyRDUndj4C8oxm.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW y \in Xids, PinInv, PPost(i,r), RPN_EPost(i,r,m), hw[y] = "fly"
 PROVE pst'[xsrc[y]] \in {pst[xsrc[y]],"drain","quar"} /\ pr'[xsrc[y]] = pr[xsrc[y]] /\ pgn'[xsrc[y]] = pgn[xsrc[y]]
<2> USE ONLY <1>DkyRDUndj4C8oxm, Sizes, Location, Design
 <2>1. xsrc[y] \in Pages /\ y \in led[xsrc[y]]
  BY <1>gyQ97LfIbobkgLjDB, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED BY <2>1, <1>wSqH03haPuyDY9y, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bGK5fqKGAK0JKUpSuRlO.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, NEW y \in Xids,
        PinInv, PPost(i,r), RPN_EPost(i,r,m), hw[y]="fly"
 PROVE xsrc'[y]=xsrc[y]
 BY ONLY <1>bGK5fqKGAK0JKUpSuRlO, Sizes, Location, Design, <1>GUdtgkQkIPLzW, <1>m0DRo1wtulO, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M2138_PdRPNPP_PdEPostSafety

\* T2M-SCOPE R2M2139_PdRPNPP_PdE_PPost_NoFreeUnderRead
\* T2M-BODY R2M2139_PdRPNPP_PdE_PPost_NoFreeUnderRead

\* T2M-END R2M2139_PdRPNPP_PdE_PPost_NoFreeUnderRead

\* T2M-SCOPE R2M2140_PdRPNPP_PdE_PPost_NoStrayAccess
\* T2M-BODY R2M2140_PdRPNPP_PdE_PPost_NoStrayAccess
\* T2M-LOCAL-VISIBILITY

<1>ncmQNzqvsr5a4EBSvQnr.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE RPNS_TransportNoStray'
<2> USE ONLY <1>ncmQNzqvsr5a4EBSvQnr, Sizes, Location, Design
<2>0. PICK m \in net : RPN_EPost(i,r,m) BY <1>gxygf0DnL4Xw, Sizes, Location, Design DEF Sizes, Location, Design
<2>1. RPNS_TransportNoStray /\ K14 BY V21_Inv_BaseSafety, V21_Inv_K14, V21_Inv_NoStrayAccess, V21_Inv_Safety, Sizes, Location, Design DEF Safety, BaseSafety, NoStrayAccess, RPNS_TransportNoStray, Sizes, Location, Design
<2>2. UNCHANGED <<hw,xdst,xr,xg,sfly,kfly,kpin,krs>> BY <1>MQmx26snJYsX, <1>gxygf0DnL4Xw, Sizes, Location, Design DEF instV, kV, Sizes, Location, Design
<2>3. (\A y \in Xids : Writing(y) => Held(xdst[y],y))'
 BY <2>0, <2>1, <2>2, <1>P4YkAUl8mQtyAWGhp, SMTT(5), Sizes, Location, Design DEF RPNS_TransportNoStray, Held, Writing, InFl, Sizes, Location, Design
<2>4. (\A y \in Xids : hw[y] = "fly" => Held(xsrc[y],y))'
 BY <2>0, <2>1, <2>2, <1>DkyRDUndj4C8oxm, <1>bGK5fqKGAK0JKUpSuRlO, SMTT(5), Sizes, Location, Design DEF RPNS_TransportNoStray, Held, Sizes, Location, Design
<2>5. (\A q \in Pages : \A t \in sfly[q] :
 (pst[q] \in {"priv","drain","quar"} /\ pr[q] = t[1] /\ pgn[q] = t[2]) \/ (pst[q] = "shared" /\ IsD(Loc(q))))'
 BY <2>0, <2>1, <2>2, <1>wSqH03haPuyDY9y, <1>B1oFB5W8XtNm, <1>GJg4XWrIHj, SMTT(5), Sizes, Location, Design DEF RPNS_TransportNoStray, Sizes, Location, Design
<2>7. QED BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF RPNS_TransportNoStray, Sizes, Location, Design
\* T2M-END R2M2140_PdRPNPP_PdE_PPost_NoStrayAccess


<1>MQuYDj9bsEymFr1CirQ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE NoStrayAccess'
<2> USE ONLY <1>MQuYDj9bsEymFr1CirQ, Sizes, Location, Design
<2>1. RPNS_TransportNoStray' BY <1>ncmQNzqvsr5a4EBSvQnr, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. NoFreeUnderRead' BY <1>i8S0Zyh7PQsf, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<kfly,kpin,krs>> BY <1>bt55fE06Bk5ybwruO, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. K14 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF NoStrayAccess, RPNS_TransportNoStray, NoFreeUnderRead, K14, Sizes, Location, Design
\* T2M-END R2M2141_PdRPStray_PPost


<1> QED BY <1>C6zd1mhNhf, <1>MQuYDj9bsEymFr1CirQ, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PPost_03_01 SHA 22e0595b8183ea227219526cfe27fe598994eddcb0f2befcb7dc28accce92097
USE DEF V21_Inv_K10, V21_Inv_K13, V21_Inv_K16, V21_Inv_K9, V21_Inv_S1, V21_Inv_S6, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V22_SF_Off
HIDE DEF P_PagePoolsDisjoint, Part_PPost_02_02, V21_Inv_K14, V21_Inv_K15, V21_Inv_K4, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_SI2, V21_Inv_P_SI5, V21_SFollowOff, V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rg, V22_T_sfly, V22_T_sled, V22_T_squar, V22_T_xdst, V22_T_xsrcS
THEOREM Part_PPost_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE (K7)' /\ (SharedLedRef)' /\ (SendOwnLanded)' /\ (K8)' /\ (K16)' /\ (K13)' /\ (K3)' /\ (K9)' /\ (K10)'
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


           EDRecFrame == \A j \in DInst, u \in Rq : UNCHANGED <<ph[j][u],rg[j][u],rpg[j][u],rhit[j][u]>>


           EDPageFrame == \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],ptl[q],pvis[q],led[q],sled[q],sfly[q]>>

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

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, EK3At, EPostOK, EPost, EDRecFrame, EDPageFrame, RP_SharedSend, RP2_PublishInfo, RP2_UnpostedFrame, RP2_PublishNoFly, RP2_NewEntryState

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


<1>l3GvtovXkekm.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>l3GvtovXkekm, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PPost, PageTo, SendReady, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

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


<1>AWIWNFYpQBDPPH0bXD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE SharedLedRef'
 BY ONLY <1>AWIWNFYpQBDPPH0bXD, Sizes, Location, Design, <1>l3GvtovXkekm, <1>xOtqg6YRsioevxRntvd4 DEF Sizes, Location, Design

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


<1>Zt4pFlxKj.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), EPost(i,r,m)
 PROVE /\ m.x \in {0} \cup Xids /\ m.fr = rpe[i][r]
       /\ (m.x # 0 => m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[i][r]
                      /\ xk[m.x] = "wr" /\ xp[m.x] = i /\ xd[m.x] = rpe[i][r])
       /\ (EPostOK(m) => xsrc[m.x] = 0 /\ hw[m.x] = "none")
<2> USE ONLY <1>Zt4pFlxKj, Sizes, Location, Design
 <2>1. K12 /\ K2 /\ K3 /\ qvLUP /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. m.x \in {0} \cup Xids /\ (m.x # 0 => m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[i][r])
  BY <2>1, SMTT(5), Sizes, Location, Design DEF K12, qvLUP, EPost, Sizes, Location, Design
 <2>msg. m \in net /\ m.t="dinfo" /\ m.to=i /\ m.r=r /\ m.g=rg[i][r]
  BY ONLY <1>Zt4pFlxKj, SMTT(5) DEF EPost
 <2>route. m.fr=rpe[i][r] /\ hp[r][rg[i][r]]=i /\ hd[r][rg[i][r]]=rpe[i][r] /\ Mode="push"
  BY ONLY <1>Zt4pFlxKj, <2>1, <2>msg, <1>xwj0NNiH, Sizes, Location, Design, SMTT(5) DEF K12
 <2>kind. m.x # 0 => xk[m.x]="wr" /\ xp[m.x]=i /\ xd[m.x]=rpe[i][r]
  BY ONLY <2>1, <2>2, <2>route, Sizes, SMTT(5) DEF K2, SHJS, Xids, Sizes
 <2>ok. ASSUME EPostOK(m) PROVE xsrc[m.x]=0 /\ hw[m.x]="none"
  <3>reg. iv[m.x]="none" /\ m.x \in Xids /\ m.x # 0
   BY ONLY <2>ok, <2>2, SMTT(5) DEF EPostOK
  <3>hw. hw[m.x]="none"
   BY ONLY <2>1, <3>reg, SMTT(5) DEF K3
  <3>page. InitPage(m.x)=0
   BY ONLY <2>1, <2>2, <3>reg, Sizes, SMTT(5) DEF K2, SHJS, Xids, Sizes
  <3>qed. QED BY ONLY <3>hw, <3>page, <2>kind, <3>reg, SMTT(5) DEF InitPage
 <2>3. QED BY ONLY <2>2, <2>route, <2>kind, <2>ok, SMTT(5)


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


<1>lPY2Oy.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE K10'
<2> USE ONLY <1>lPY2Oy, Sizes, Location, Design
<2>1. K10 /\ K1 /\ K2 /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. PICK m \in net : EPost(i,r,m)
 BY <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<hok,hw,nx,ptl,rg,xdst,xg,xr>>
 BY <1>L4gyoie6, <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
 BY <2>1, <2>2, <2>3, <1>xwj0NNiH, <1>Zt4pFlxKj, <1>sGwzHBJ3, <1>XZpe1Dp7piH2, <1>iljoN3, <1>v32py, <1>PlqH4H, <1>p3KRni, <1>CLUulHx, Design, Sizes, Location, SMTT(5) DEF DInst, EPostOK, ExpInst, ExpPage, Gens, InitInst, InitPage, Inst, K1, K10, K2, NL, OwnedBy, PInst, SHJS, Xids, Sizes, Location, Design
\* T2M-END R2M1668_PdRPPP_PdE_PPost_K10

\* T2M-SCOPE R2M1669_PdRPPP_PdE_PPost_K11

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

<1>fJPIzv.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE K13'
<2> USE ONLY <1>fJPIzv, Sizes, Location, Design
<2>1. K13 /\ K1
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K13, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. PICK m \in net : EPost(i,r,m)
 BY <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<crep,drep,dsucc,gbad,hd,rg>>
 BY <1>L4gyoie6, <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
 BY <2>1, <2>2, <2>3, <1>POQ6uiqj, <1>ho2qVzp0UDI9Dx, <1>xwj0NNiH, <1>Zt4pFlxKj, <1>sGwzHBJ3, <1>XZpe1Dp7piH2, <1>CLUulHx, Design, Sizes, Location, SMTT(5) DEF DInst, EPostOK, Gens, Inst, K1, K13, NL, PInst, Xids, Sizes, Location, Design
\* T2M-END R2M1671_PdRPPP_PdE_PPost_K13


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


<1>tCHTw.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE K8'
<2> USE ONLY <1>tCHTw, Sizes, Location, Design
<2>1. K8 /\ K2 /\ K3 /\ S1 /\ S6 /\ AEZsS /\ dcfPK /\ SHJS /\ Xc_ngV /\ h9WLgd
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_S1, V21_Inv_S6, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. PICK m \in net : EPost(i,r,m)
 BY <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<gen,hd,hp,nx,ptl,rg,rhit,rpe,rpg,sfly,xg,xr>>
 BY <1>L4gyoie6, <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
 BY <2>1, <2>2, <2>3, <1>xwj0NNiH, <1>Zt4pFlxKj, <1>sGwzHBJ3, <1>XZpe1Dp7piH2, <1>aGEfs, <1>TNgDXa, <1>iljoN3, <1>eBa25W, <1>v32py, <1>PlqH4H, <1>p3KRni, <1>EH7tvTR, <1>CLUulHx, Design, Sizes, Location, SMTT(5) DEF Active, CqeHw, DInst, EPostOK, ExpInst, ExpPage, Gens, InFl, InitInst, InitPage, Inst, IsD, IsP, K2, K3, K8, NL, OwnedBy, PInst, S1, S6, AEZsS, dcfPK, SHJS, Xc_ngV, h9WLgd, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1679_PdRPPP_PdE_PPost_K8

\* T2M-SCOPE R2M1680_PdRPPP_PdE_PPost_K9

<1>mAOXA.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE K9'
<2> USE ONLY <1>mAOXA, Sizes, Location, Design
<2>1. K9 /\ K2 /\ K8 /\ dcfPK /\ SHJS /\ Xc_ngV /\ h9WLgd
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. PICK m \in net : EPost(i,r,m)
 BY <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<drep,nx,ptl,pvis,rg,rhit,rpg,sfly,xdst,xg,xr>>
 BY <1>L4gyoie6, <1>sGwzHBJ3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
 BY <2>1, <2>2, <2>3, <1>xwj0NNiH, <1>Zt4pFlxKj, <1>sGwzHBJ3, <1>XZpe1Dp7piH2, <1>aGEfs, <1>TNgDXa, <1>eBa25W, <1>PlqH4H, <1>CLUulHx, Design, Sizes, Location, SMTT(5) DEF Active, DInst, EPostOK, ExpInst, ExpPage, Gens, InitInst, InitPage, Inst, IsD, IsP, K2, K8, K9, NL, OwnedBy, PInst, dcfPK, SHJS, Xc_ngV, h9WLgd, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1680_PdRPPP_PdE_PPost_K9

\* T2M-SCOPE R2M1681_PdRPPP_PdE_PPost_QuarNeverMapped

<1>g83y0Ch.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
  PROVE K3'
  BY ONLY <1>g83y0Ch, Sizes, Location, Design, <1>Gp1dV, V21_Inv_K3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wXEQJHi.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
  PROVE K7'
  BY ONLY <1>wXEQJHi, Sizes, Location, Design, <1>OLdTq, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ln3lCKZ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
  PROVE K8'
  BY ONLY <1>ln3lCKZ, Sizes, Location, Design, <1>tCHTw, V21_Inv_K8 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aLI8wjh.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
  PROVE K9'
  BY ONLY <1>aLI8wjh, Sizes, Location, Design, <1>mAOXA, V21_Inv_K9 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WYDiiwd3.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
  PROVE K10'
  BY ONLY <1>WYDiiwd3, Sizes, Location, Design, <1>lPY2Oy, V21_Inv_K10 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dM5mmYJ0.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
  PROVE K13'
  BY ONLY <1>dM5mmYJ0, Sizes, Location, Design, <1>fJPIzv, V21_Inv_K13 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>werFeDEG.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
  PROVE K16'
  BY ONLY <1>werFeDEG, Sizes, Location, Design, <1>avQgTb, V21_Inv_K16 DEF Sizes, Location, Design

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

<1>ZG8AMlVt3u0xqlmFbeR0.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r), SFollow
 PROVE SendOwnLanded'
<2> USE ONLY <1>ZG8AMlVt3u0xqlmFbeR0, Sizes, Location, Design
<2>1. BaseSendOwnLanded' BY <1>hfqoDozwqIINxxAFKwl, <1>R1YtFQoOn5rWe9xZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RP_SharedSend' BY <1>hfqoDozwqIINxxAFKwl, <1>KEGyjYU5k3BGqj, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF SendOwnLanded, RP_SharedSend, Sizes, Location, Design
\* T2M-END R2M1849_PdRPR2Publish_PPost


<1> QED BY <1>wXEQJHi, <1>AWIWNFYpQBDPPH0bXD, <1>ZG8AMlVt3u0xqlmFbeR0, <1>ln3lCKZ, <1>werFeDEG, <1>dM5mmYJ0, <1>g83y0Ch, <1>aLI8wjh, <1>WYDiiwd3, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF Part_PPost_03_01, V21_Inv_BaseSafety, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_PrefcMatchesHolders, V21_Inv_S1, V21_Inv_S6, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_Off, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_iv, V22_T_nx, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst
====
