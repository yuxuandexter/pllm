---- MODULE PdActionSlice_PCancelReg_01 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_d3dd8b4090431094, PdFinalAuxType_b4c35f0bd68d4e22, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalPart_PCancelReg_01_01 SHA 0f135947791c46907ae6a3e5a4365746fd705b62523cc8f26fbbe05ef81c3649
HIDE DEF AuxType_b4c35f0bd68d4e22, AuxType_d3dd8b4090431094, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI3, V21_Inv_P_SI5, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_iv, V22_T_kfly, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pqp, V22_T_prefc, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_PCancelReg_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE (QuietConservation)' /\ (K16)' /\ (P_SI6)'
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

           RP_GenMonotone == \A i \in PInst,r \in Rq : rg'[i][r] \in Nat /\ rg'[i][r]>=rg[i][r]


           RP_KPhaseProgress == \A i \in PInst,r \in Rq :
            (rg'[i][r]=rg[i][r] /\ ph[i][r] \in {"ready","reg","sent","exp","end"}) =>
            ph'[i][r] \in {"ready","reg","sent","exp","end"}

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


           ECancelLive(x) == ph[xp[x]][xr[x]] \in {"reg","sent"} /\ rg[xp[x]][xr[x]] = xg[x] /\ rx[xp[x]][xr[x]] = x


           ECancelFree(x) == led[xsrc[x]] \ {x} = {} /\ sled[xsrc[x]] = {} /\ ~KPinned(xsrc[x]) /\ (ECancelLive(x) \/ pst[xsrc[x]] = "drain")


           ECancelState(x) == IF ECancelFree(x) THEN "free" ELSE IF ECancelLive(x) THEN "drain" ELSE pst[xsrc[x]]

           \* T2M-LOCAL-VISIBILITY

           EDRecFrame == \A j \in DInst, u \in Rq : UNCHANGED <<ph[j][u],rg[j][u],rpg[j][u],rhit[j][u]>>


           EDPageFrame == \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],ptl[q],pvis[q],led[q],sled[q],sfly[q]>>

           \* T2M-LOCAL-VISIBILITY

           RP_RecordReady == B2 => \A i \in PInst,r \in Rq :
            ph'[i][r] \in {"reg","sent","exp"} => rg'[i][r]=rg[i][r] /\ SSendReady(i,r)


           RP_NoneFrame == \A i \in PInst,r \in Rq : ph'[i][r]="none" => ph[i][r]="none" /\ rg'[i][r]=rg[i][r]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_T_spst, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, RP_GenMonotone, RP_KPhaseProgress, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, ECancelLive, ECancelFree, ECancelState, EDRecFrame, EDPageFrame, RP_RecordReady, RP_NoneFrame

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


<1>U4AEtY7P5wWK8FghU.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>U4AEtY7P5wWK8FghU, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, NewGen, PCancelReg, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D2ck36YTcbOjt4Fu1FxSKVOtzHs8ug.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>D2ck36YTcbOjt4Fu1FxSKVOtzHs8ug, Sizes, Location, Design, <1>AnajBeZS7htcLkTpZ8C91mxOHTa DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MbCc4CzCSalzbBsO3RNc2ShSc.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>MbCc4CzCSalzbBsO3RNc2ShSc, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>MbCc4CzCSalzbBsO3RNc2ShSc, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, NewGen, PCancelReg, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

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


<1>d06wyg0nfvPtmVA2ipbUtp.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE RP_GenMonotone /\ RP_KPhaseProgress
<2> USE ONLY <1>d06wyg0nfvPtmVA2ipbUtp, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>d06wyg0nfvPtmVA2ipbUtp, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_GenMonotone, RP_KPhaseProgress, PInst, Inst, NL, EvidenceAt, NewGen, PCancelReg, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m95QhwQ5N57xtb.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE P_SI6'
 BY ONLY <1>m95QhwQ5N57xtb, Sizes, Location, Design, <1>U4AEtY7P5wWK8FghU, <1>MbCc4CzCSalzbBsO3RNc2ShSc, <1>d06wyg0nfvPtmVA2ipbUtp, <1>sP1gMFHuwAB DEF Sizes, Location, Design
\* T2M-END R2M1417_PdRPExtra_PCancelReg


<1>dlRLZLJP8YIdC37.         PinInv => RP_PageTypes
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_sfly, V22_T_sled, V22_T_xdst, SMTT(5) DEF RP_PT_hw, RP_PT_kpin, RP_PT_krs, RP_PT_led, RP_PT_pgn, RP_PT_plt, RP_PT_pr, RP_PT_pst, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_sled, RP_PT_xdst, RP_PageTypes

\* T2M-END R2M1445_PdRPPageTypes


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>RXig2BJKOut28.        
  ASSUME NEW x \in Xids, PCancelReg(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>RXig2BJKOut28, Sizes, Location, Design, ZenonT(5) DEF EvidenceAt, PCancelReg, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1527_PdRPPP_PdPCancelRegFrames

\* T2M-SCOPE R2M1528_PdRPPP_PdCell_PCancelReg_K17

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


<1>sisXnvJZE.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE /\ iv[x] = "reg" /\ xk[x] = "wr" /\ x < nx /\ hw[x] = "none"
       /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xp[x] \in PInst /\ xd[x] \in DInst
       /\ xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
       /\ x \in led[xsrc[x]] /\ OwnedBy(xsrc[x],xr[x],xg[x])
<2> USE ONLY <1>sisXnvJZE, Sizes, Location, Design
 <2>1. K1 /\ K2 /\ K3 /\ K4 /\ K5 /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. iv[x] = "reg" /\ xk[x] = "wr"
  BY Design, SMTT(5), Sizes, Location DEF PCancelReg, Sizes, Location, Design
 <2>3. x < nx /\ hw[x] = "none"
  BY <2>1, <2>2, Sizes, SMTT(5), Location, Design DEF K2, K3, SHJS, Xids, Sizes, Location, Design
 <2>4. xr[x] \in Rq /\ xg[x] \in Gens /\ xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>3, <1>xbWa623J, Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>1, <2>2, <2>3, SMTT(5), Sizes, Location, Design DEF K2, InitPage, ExpPage, InitInst, ExpInst, Sizes, Location, Design
 <2>6. QED BY <2>1, <2>2, <2>3, <2>4, <2>5, SMTT(5), Sizes, Location, Design DEF K4, K5, InitPage, ExpPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nYpzjcGZ3s.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE /\ iv' = [iv EXCEPT ![x] = "nopost"]
       /\ ph' = IF ECancelLive(x) THEN [ph EXCEPT ![xp[x]][xr[x]] = "end"] ELSE ph
       /\ PageTo(xsrc[x],ECancelState(x),pqp[xsrc[x]],led[xsrc[x]] \ {x},sled[xsrc[x]])
<2> USE ONLY <1>nYpzjcGZ3s, Sizes, Location, Design
 <2>1. pst[xsrc[x]] \in {"priv","drain","quar"}
  BY <1>sisXnvJZE, Sizes, Location, Design DEF OwnedBy, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, SMTT(5), Sizes, Location DEF PCancelReg, ECancelLive, ECancelState, ECancelFree, EvidenceAt, AfterEv, PinBlocks, PageTo, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EaWO9PfF0.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE /\ \A j \in Inst, u \in Rq :
          /\ ph'[j][u] = IF ECancelLive(x) /\ j=xp[x] /\ u=xr[x] THEN "end" ELSE ph[j][u]
          /\ (Active(j,u)' => Active(j,u) /\ ph'[j][u] = ph[j][u])
          /\ (ph'[j][u] \in {"run","ovl"} <=> ph[j][u] \in {"run","ovl"})
       /\ \A j \in DInst, u \in Rq : ph'[j][u] = ph[j][u]
<2> USE ONLY <1>EaWO9PfF0, Sizes, Location, Design
 <2>1. AydA BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>sisXnvJZE, <1>nYpzjcGZ3s, Sizes, SMTT(5), Location, Design DEF ECancelLive, AydA, Active, Inst, DInst, PInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IJmeqqKU.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : pst'[q] = IF q=xsrc[x] THEN (ECancelState(x)) ELSE pst[q]
<2> USE ONLY <1>IJmeqqKU, Sizes, Location, Design
 <2>1. OyyWS BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, OyyWS, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HsIx0fv.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : pr'[q] = IF q=xsrc[x] THEN (IF ECancelFree(x) THEN 0 ELSE pr[q]) ELSE pr[q]
<2> USE ONLY <1>HsIx0fv, Sizes, Location, Design
 <2>1. IwCp BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, IwCp, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zIDbyeMF.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : pgn'[q] = IF q=xsrc[x] THEN (IF ECancelFree(x) THEN 0 ELSE pgn[q]) ELSE pgn[q]
<2> USE ONLY <1>zIDbyeMF, Sizes, Location, Design
 <2>1. vS7em BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, vS7em, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qxLTiqEn.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : plt'[q] = IF q=xsrc[x] THEN (IF ECancelFree(x) THEN 0 ELSE plt[q]) ELSE plt[q]
<2> USE ONLY <1>qxLTiqEn, Sizes, Location, Design
 <2>1. bFwlN BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, bFwlN, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YJjokdIY.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : led'[q] = IF q=xsrc[x] THEN (IF ECancelFree(x) THEN {} ELSE led[q] \ {x}) ELSE led[q]
<2> USE ONLY <1>YJjokdIY, Sizes, Location, Design
 <2>1. dcfPK BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, dcfPK, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>a0WNnb4jo.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : sled'[q] = IF q=xsrc[x] THEN (IF ECancelFree(x) THEN {} ELSE sled[q]) ELSE sled[q]
<2> USE ONLY <1>a0WNnb4jo, Sizes, Location, Design
 <2>1. h9WLgd BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, h9WLgd, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SsuHlkxe2E.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : prefc'[q] = IF q=xsrc[x] THEN (IF ECancelFree(x) THEN 0 ELSE prefc[q]) ELSE prefc[q]
<2> USE ONLY <1>SsuHlkxe2E, Sizes, Location, Design
 <2>1. p1YmMe5 BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, p1YmMe5, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vo1XeQrE.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : pqp'[q] = IF q=xsrc[x] THEN (IF ECancelFree(x) THEN 0 ELSE pqp[q]) ELSE pqp[q]
<2> USE ONLY <1>vo1XeQrE, Sizes, Location, Design
 <2>1. vRZWI BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, vRZWI, OwnedBy, Sizes, Location, Design
\* T2M-END R2M1531_PdRPPP_PdECancelFacts


<1>m4UmJZ5vla.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE /\ \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
       /\ \A q \in Pages : UNCHANGED GrownP(q)
<2> USE ONLY <1>m4UmJZ5vla, Sizes, Location, Design
 <2>1. UNCHANGED <<rpg,xsrc>> BY <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
  BY <1>sisXnvJZE, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, Sizes, SMTT(5), Location, Design DEF IsD, PInst, DInst, NL, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF GrownP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PMSLP2R4Cg3MoL2v.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : UNCHANGED <<NHits(q),KPinned(q)>>
<2> USE ONLY <1>PMSLP2R4Cg3MoL2v, Sizes, Location, Design
 <2>1. UNCHANGED <<kpin,krs,rhit,rpg>> BY <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. \A q \in Pages :
 {u \in Rq : ph'[Loc(q)][u] \in {"run","ovl"} /\ rhit'[Loc(q)][u] /\ rpg'[Loc(q)][u]=q}
 = {u \in Rq : ph[Loc(q)][u] \in {"run","ovl"} /\ rhit[Loc(q)][u] /\ rpg[Loc(q)][u]=q}
 BY <2>1, <1>EaWO9PfF0, <1>jc4Pk2myFy, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF NHits, KPinned, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>a12kGba.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE /\ \A j \in Inst, u \in Rq, q \in Pages : Maps(j,u,q)' => Maps(j,u,q)
       /\ ECancelLive(x) => \A j \in Inst, u \in Rq : ~Maps(j,u,xsrc[x])'
<2> USE ONLY <1>a12kGba, Sizes, Location, Design
 <2>1. K8 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. UNCHANGED <<rpg,xsrc>> BY <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. ECancelLive(x) => Active(xp[x],xr[x]) /\ rpg[xp[x]][xr[x]] = xsrc[x]
  BY <2>1, <1>sisXnvJZE, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF ECancelLive, K8, Active, IsP, PInst, Inst, Sizes, Location, Design
 <2>4. ECancelLive(x) => \A j \in Inst, u \in Rq :
    (Active(j,u) /\ rpg[j][u] = xsrc[x]) => j=xp[x] /\ u=xr[x]
  BY <2>1, <2>3, <1>sisXnvJZE, <1>yGU8fpsp8, <1>HzDmJ6cCSS2, Sizes, SMTT(5), Location, Design DEF IsP, Inst, PInst, NL, Sizes, Location, Design
 <2>5. QED BY <2>2, <2>3, <2>4, <1>EaWO9PfF0, SMTT(5), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LgizYhGNV8lBAE.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE ECancelLive(x) => pst[xsrc[x]] = "priv" /\ pqp[xsrc[x]] = 0
<2> USE ONLY <1>LgizYhGNV8lBAE, Sizes, Location, Design
 <2>1. xp[x] \in Inst /\ IsP(xp[x]) /\ xr[x] \in Rq
  BY <1>sisXnvJZE, <1>yGU8fpsp8, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. ECancelLive(x) => ph[xp[x]][xr[x]] \in {"reg","sent"} /\ rx[xp[x]][xr[x]] = x
  BY Sizes, Location, Design DEF ECancelLive, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>SybH9, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IOHaCmfHMYlG.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A j \in Inst, u \in Rq, q \in Pages :
   ((q # xsrc[x] \/ ~ECancelLive(x)) /\ Maps(j,u,q)) => Maps(j,u,q)'
<2> USE ONLY <1>IOHaCmfHMYlG, Sizes, Location, Design
 <2>1. K8 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. UNCHANGED rpg BY <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. ECancelLive(x) => rpg[xp[x]][xr[x]] = xsrc[x]
  BY <2>1, <1>sisXnvJZE, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF ECancelLive, K8, Active, IsP, PInst, Inst, Sizes, Location, Design
 <2>4. QED BY <2>2, <2>3, <1>EaWO9PfF0, SMTT(5), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design
\* T2M-END R2M1535_PdRPPP_PdECancelSafety


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


<1>VCTQYlPQ7CB.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE K16'
<2> USE ONLY <1>VCTQYlPQ7CB, Sizes, Location, Design
<2>1. K16 /\ K8 BY V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_K8, V21_Inv_Safety, Sizes, Location, Design DEF Safety, BaseSafety, Sizes, Location, Design
<2>2. EDRecFrame BY <1>m4UmJZ5vla, <1>EaWO9PfF0, <1>RXig2BJKOut28, SMTT(5), Sizes, Location, Design DEF EDRecFrame, Sizes, Location, Design
<2>3. EDPageFrame BY <1>m4UmJZ5vla, <1>EaWO9PfF0, <1>RXig2BJKOut28, SMTT(5), Sizes, Location, Design DEF EDPageFrame, Sizes, Location, Design
<2>4. UNCHANGED <<hw,xdst>> BY <1>m4UmJZ5vla, <1>EaWO9PfF0, <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. \A q \in Pages : UNCHANGED GrownP(q) BY <1>m4UmJZ5vla, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>NFAXRR, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1537_PdRPPP_PdE_PCancelReg_K16


<1>ptFAClTNGu.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE K7'
<2> USE ONLY <1>ptFAClTNGu, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (ptl[bb_p] >= 0)' /\ (pst[bb_p] = "free" => (pr[bb_p] = 0 /\ pgn[bb_p] = 0 /\ plt[bb_p] = 0 /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
                               /\ prefc[bb_p] = 0 /\ pqp[bb_p] = 0))' /\ (pst[bb_p] \in {"priv", "drain", "quar"} => (pr[bb_p] \in Rq /\ pgn[bb_p] \in Gens /\ pgn[bb_p] <= gen[pr[bb_p]]))' /\ (pst[bb_p] = "quar" => pqp[bb_p] \in Inst)' /\ (pst[bb_p] # "quar" => pqp[bb_p] = 0)' /\ (pst[bb_p] # "shared" => prefc[bb_p] = 0)' /\ (pst[bb_p] = "shared" => (IsD(Loc(bb_p)) /\ led[bb_p] = {} /\ ptl[bb_p] = PS /\ prefc[bb_p] = NHits(bb_p)))' /\ (pst[bb_p] = "drain" => (led[bb_p] # {} \/ sled[bb_p] # {} \/ KPinned(bb_p)))' /\ (pst[bb_p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(bb_p), r, bb_p))' /\ (pst[bb_p] = "priv" => \/ (Maps(Loc(bb_p), pr[bb_p], bb_p) /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p] /\ ~rhit[Loc(bb_p)][pr[bb_p]])
                              \/ GrownP(bb_p))'
  BY Sizes, Location, Design DEF K7, Sizes, Location, Design
<2>1. K7 /\ K6 /\ Zzz7b(bb_p) BY <1>gfplo, V21_Inv_K6, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen,kpin,krs,rg,rpg,rhit,ptl,sfly,xsrc>> BY <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (ptl[bb_p] >= 0)'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>4. (pst[bb_p] = "free" => (pr[bb_p] = 0 /\ pgn[bb_p] = 0 /\ plt[bb_p] = 0 /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
                               /\ prefc[bb_p] = 0 /\ pqp[bb_p] = 0))'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>5. (pst[bb_p] \in {"priv", "drain", "quar"} => (pr[bb_p] \in Rq /\ pgn[bb_p] \in Gens /\ pgn[bb_p] <= gen[pr[bb_p]]))'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>6. (pst[bb_p] = "quar" => pqp[bb_p] \in Inst)'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>7. (pst[bb_p] # "quar" => pqp[bb_p] = 0)'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>8. (pst[bb_p] # "shared" => prefc[bb_p] = 0)'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>9. (pst[bb_p] = "shared" => (IsD(Loc(bb_p)) /\ led[bb_p] = {} /\ ptl[bb_p] = PS /\ prefc[bb_p] = NHits(bb_p)))'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>10. (pst[bb_p] = "drain" => (led[bb_p] # {} \/ sled[bb_p] # {} \/ KPinned(bb_p)))'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>11. (pst[bb_p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(bb_p), r, bb_p))'
 <3>1. Loc(bb_p) \in Inst BY <1>jc4Pk2myFy, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. CASE bb_p=xsrc[x] /\ ECancelLive(x)
  BY <2>2, <3>1, <3>2, <1>a12kGba, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. CASE bb_p # xsrc[x] \/ ~ECancelLive(x)
  <4>1. pst'[bb_p] \in {"drain","quar"} => pst[bb_p] \in {"drain","quar"}
   BY <3>3, <1>IJmeqqKU, SMTT(5), Sizes, Location, Design DEF ECancelState, Sizes, Location, Design
  <4>2. QED BY <2>1, <2>2, <3>1, <4>1, <1>a12kGba, SMTT(5), Sizes, Location, Design DEF Zzz7b, Sizes, Location, Design
 <3>4. QED BY <3>2, <3>3, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>12. (pst[bb_p] = "priv" => \/ (Maps(Loc(bb_p), pr[bb_p], bb_p) /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p] /\ ~rhit[Loc(bb_p)][pr[bb_p]])
                              \/ GrownP(bb_p))'
 <3>1. pst'[bb_p] = "priv" =>
   pst[bb_p] = "priv" /\ pr'[bb_p]=pr[bb_p] /\ pgn'[bb_p]=pgn[bb_p] /\ (bb_p # xsrc[x] \/ ~ECancelLive(x))
  BY <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, SMTT(5), Sizes, Location, Design DEF ECancelState, Sizes, Location, Design
 <3>2. Loc(bb_p) \in Inst BY <1>jc4Pk2myFy, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>1, <2>2, <3>1, <3>2, <1>IOHaCmfHMYlG, <1>m4UmJZ5vla, SMTT(5), Sizes, Location, Design DEF Zzz7b, Sizes, Location, Design
<2>13. QED
  BY <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, <2>12, Sizes, Location, Design DEF K7, Sizes, Location, Design
\* T2M-END R2M1543_PdRPPP_PdE_PCancelReg_K7


<1>Dikil283XkH1.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
  PROVE K7'
  BY ONLY <1>Dikil283XkH1, Sizes, Location, Design, <1>ptFAClTNGu, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Bza6Y8JDegmia.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
  PROVE K16'
  BY ONLY <1>Bza6Y8JDegmia, Sizes, Location, Design, <1>VCTQYlPQ7CB, V21_Inv_K16 DEF Sizes, Location, Design

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


<1>eOQOojB6a75R4XX5esxQeIWn.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE UNCHANGED gen /\ RP_RecordReady /\ RP_NoneFrame
<2> USE ONLY <1>eOQOojB6a75R4XX5esxQeIWn, Sizes, Location, Design
<2>1. B2 => \A j \in PInst,u \in Rq : ph[j][u] \in {"reg","sent","exp"} => SSendReady(j,u)
 BY V21_Inv_P_SI1, Sizes, Location, Design DEF P_SI1, SI1, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>eOQOojB6a75R4XX5esxQeIWn, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_RecordReady, RP_NoneFrame, PInst, Inst, NL, EvidenceAt, NewGen, PCancelReg, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cqSvo3nlLVmsHF.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE P_SI1'
 BY ONLY <1>cqSvo3nlLVmsHF, Sizes, Location, Design, <1>eOQOojB6a75R4XX5esxQeIWn, <1>MbCc4CzCSalzbBsO3RNc2ShSc, <1>U4AEtY7P5wWK8FghU, <1>o0ug5dmdGVA DEF Sizes, Location, Design
\* T2M-END R2M1790_PdRPSI1_PCancelReg


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
    BY ONLY <1>nMxL7fiqpNWKeNUrCfZ, Sizes, Location, Design, <2>4, <3>2, <4>2, <3>2, <4>1, FS_EmptySet DEF SRefR, SRefE, Sizes, Location, Design
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


<1>JYLQig3Tqphvm8qGbhriNMc.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE RP_PT_pst'
<2> USE ONLY <1>JYLQig3Tqphvm8qGbhriNMc, Sizes, Location, Design
<2>1. RP_PT_pst BY <1>dlRLZLJP8YIdC37, Sizes, Location, Design DEF RP_PageTypes, Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_PT_pst, EvidenceAt, NewGen, PCancelReg, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, AfterEv, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TsblDDO0j2AGVLG9bp5tb9Tqer51.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE QuietConservation'
 BY ONLY <1>TsblDDO0j2AGVLG9bp5tb9Tqer51, Sizes, Location, Design, <1>eOQOojB6a75R4XX5esxQeIWn, <1>cqSvo3nlLVmsHF, <1>D2ck36YTcbOjt4Fu1FxSKVOtzHs8ug, <1>Dikil283XkH1, <1>Bza6Y8JDegmia, <1>JYLQig3Tqphvm8qGbhriNMc, <1>eLjdrc1PhqLC DEF Sizes, Location, Design
\* T2M-END R2M1791_PdRPQuiet_PCancelReg


<1> QED BY <1>TsblDDO0j2AGVLG9bp5tb9Tqer51, <1>Bza6Y8JDegmia, <1>m95QhwQ5N57xtb, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PCancelReg_01_02 SHA f3b95b447ebffbdbb185707dd28c79abcb99cf2d87b3f8e62b1af2ef332eaeae
USE DEF AuxType_b4c35f0bd68d4e22, AuxType_d3dd8b4090431094, P_PagePoolsDisjoint, V21_Inv_K14, V21_Inv_K15, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI3, V21_Inv_P_SI5, V21_Inv_Strengthen, V21_SFollowStatic, V22_T_nx
HIDE DEF Part_PCancelReg_01_01, V21_Inv_K16, V21_Inv_P_SI1, V21_Inv_P_SI6, V22_SF_MapPoint, V22_T_rpgS
THEOREM Part_PCancelReg_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE (TypInv)' /\ (K7)' /\ (SharedLedRef)' /\ (KReadIntegrity)' /\ (K8)'
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


           ECancelLive(x) == ph[xp[x]][xr[x]] \in {"reg","sent"} /\ rg[xp[x]][xr[x]] = xg[x] /\ rx[xp[x]][xr[x]] = x


           ECancelFree(x) == led[xsrc[x]] \ {x} = {} /\ sled[xsrc[x]] = {} /\ ~KPinned(xsrc[x]) /\ (ECancelLive(x) \/ pst[xsrc[x]] = "drain")


           ECancelState(x) == IF ECancelFree(x) THEN "free" ELSE IF ECancelLive(x) THEN "drain" ELSE pst[xsrc[x]]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_NewFlyFromReg, RP_RecordProgress, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, RP_PinFacts, RP_PinKeep, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, RP_PrivateOwnersStay, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, ECancelLive, ECancelFree, ECancelState

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

<1>WNyxetP94apaUcH13MSIPE.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE UNCHANGED <<xsrc,xr,xg>> /\ RP_NewFlyFromReg
<2> USE ONLY <1>WNyxetP94apaUcH13MSIPE, Sizes, Location, Design
<2>frame. UNCHANGED <<hw,xsrc,xr,xg>>
 BY ONLY <1>WNyxetP94apaUcH13MSIPE, ZenonT(5) DEF PCancelReg
<2>fly. RP_NewFlyFromReg
 BY ONLY <2>frame, SMTT(5) DEF RP_NewFlyFromReg
<2>qed. QED BY ONLY <2>frame, <2>fly, SMTT(5)

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


<1>U4AEtY7P5wWK8FghU.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>U4AEtY7P5wWK8FghU, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, NewGen, PCancelReg, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MbCc4CzCSalzbBsO3RNc2ShSc.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>MbCc4CzCSalzbBsO3RNc2ShSc, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>MbCc4CzCSalzbBsO3RNc2ShSc, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, NewGen, PCancelReg, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

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


<1>NldbvddCWqF9w0UZlXekZiA.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE SharedLedRef'
 BY ONLY <1>NldbvddCWqF9w0UZlXekZiA, Sizes, Location, Design, <1>U4AEtY7P5wWK8FghU, <1>xOtqg6YRsioevxRntvd4 DEF Sizes, Location, Design

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


<1>aezC4VEn0nHtycCKSP.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow, NEW q \in Pages, KPinned(q)
 PROVE RP_PinKeep(q)
<2> USE ONLY <1>aezC4VEn0nHtycCKSP, Sizes, Location, Design
<2>1. RP_PinFacts(q) BY <1>sTGmGejCTusB, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RP_PageTypes BY <1>dlRLZLJP8YIdC37, Sizes, Location, Design DEF Sizes, Location, Design
<2>25. K2 /\ K3 /\ K4 /\ K5 BY V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>26. iv[x]="reg" /\ xk[x]="wr" BY Design, SMTT(10), Sizes, Location DEF PCancelReg, Sizes, Location, Design
<2>265. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>aezC4VEn0nHtycCKSP, V22_T_nx, SMTT(5)

<2>27. x<nx /\ xsrc[x] \in Pages BY <2>25, <2>26, <2>265, Sizes, SMTT(10), Location, Design DEF K2, InitPage, Xids, Sizes, Location, Design
<2>28. pst[xsrc[x]] \in {"priv","drain","quar"}
 BY <2>25, <2>26, <2>27, SMTT(10), Sizes, Location, Design DEF K4, K5, InitPage, OwnedBy, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <2>28, Design, Sizes, SMTT(10), Location DEF RP_PinKeep, RP_PinFacts, RP_PageTypes, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, AfterEv, EvidenceAt, FreeOrDrain, GiveUpTo, GiveUpToN, PCancelReg, PEnd, PageTo, PinBlocks, ghV, instV, kV, recV, rtV, xV, KPinned, IsP, IsD, NoWriteInto, Writing, InFl, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qGKvGQVGG5Kq1qzFrAEGMY.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE UNCHANGED <<kpin,krs,kfly,xdst>>
 BY ONLY <1>qGKvGQVGG5Kq1qzFrAEGMY, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, FreeOrDrain, GiveUpTo, GiveUpToN, PCancelReg, PEnd, PageTo, PinBlocks, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kFoY7QWQyZvdDPu5v.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>kFoY7QWQyZvdDPu5v, Sizes, Location, Design
<2>1. \A q \in Pages : KPinned(q) => RP_PinKeep(q)
 BY <1>aezC4VEn0nHtycCKSP, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,kfly,xdst>> BY <1>qGKvGQVGG5Kq1qzFrAEGMY, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>kFoY7QWQyZvdDPu5v, <2>2, V22_T_xdst, SMTT(5)

<2>4. QED BY <2>1, <2>2, <2>3, <1>VtlCqCAE0X2qQ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>tjcJONo7hAZEn7F23F0SO8z2Eshu.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE B2 => RP_PrivateOwnersStay
<2> USE ONLY <1>tjcJONo7hAZEn7F23F0SO8z2Eshu, Sizes, Location, Design
<2>1. B2 => SI2 /\ SI5 BY V21_Inv_P_SI2, V21_Inv_P_SI5, Sizes, Location, Design DEF P_SI2, P_SI5, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>tjcJONo7hAZEn7F23F0SO8z2Eshu, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, Location, SMTT(10) DEF RP_PrivateOwnersStay, SI2, SI5, Active, PInst, Inst, NL, EvidenceAt, NewGen, PCancelReg, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HDXYcLtZEGtYwUtB6Dw89oatz.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>HDXYcLtZEGtYwUtB6Dw89oatz, Sizes, Location, Design
<2>1. BaseKReadIntegrity' BY <1>kFoY7QWQyZvdDPu5v, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. SMapIntegrity'
 <3>1. CASE ~B2 BY <3>1, Sizes, Location, Design DEF SMapIntegrity, Sizes, Location, Design
 <3>2. CASE B2 BY <3>2, <1>tjcJONo7hAZEn7F23F0SO8z2Eshu, <1>MbCc4CzCSalzbBsO3RNc2ShSc, <1>DsbKtMfk5TGSpQKzvTWF, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <3>1, <3>2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M1466_PdRPMap_PCancelReg


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>RXig2BJKOut28.        
  ASSUME NEW x \in Xids, PCancelReg(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>RXig2BJKOut28, Sizes, Location, Design, ZenonT(5) DEF EvidenceAt, PCancelReg, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1527_PdRPPP_PdPCancelRegFrames

\* T2M-SCOPE R2M1528_PdRPPP_PdCell_PCancelReg_K17

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


<1>sisXnvJZE.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE /\ iv[x] = "reg" /\ xk[x] = "wr" /\ x < nx /\ hw[x] = "none"
       /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xp[x] \in PInst /\ xd[x] \in DInst
       /\ xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
       /\ x \in led[xsrc[x]] /\ OwnedBy(xsrc[x],xr[x],xg[x])
<2> USE ONLY <1>sisXnvJZE, Sizes, Location, Design
 <2>1. K1 /\ K2 /\ K3 /\ K4 /\ K5 /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. iv[x] = "reg" /\ xk[x] = "wr"
  BY Design, SMTT(5), Sizes, Location DEF PCancelReg, Sizes, Location, Design
 <2>3. x < nx /\ hw[x] = "none"
  BY <2>1, <2>2, Sizes, SMTT(5), Location, Design DEF K2, K3, SHJS, Xids, Sizes, Location, Design
 <2>4. xr[x] \in Rq /\ xg[x] \in Gens /\ xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>3, <1>xbWa623J, Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>1, <2>2, <2>3, SMTT(5), Sizes, Location, Design DEF K2, InitPage, ExpPage, InitInst, ExpInst, Sizes, Location, Design
 <2>6. QED BY <2>1, <2>2, <2>3, <2>4, <2>5, SMTT(5), Sizes, Location, Design DEF K4, K5, InitPage, ExpPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nYpzjcGZ3s.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE /\ iv' = [iv EXCEPT ![x] = "nopost"]
       /\ ph' = IF ECancelLive(x) THEN [ph EXCEPT ![xp[x]][xr[x]] = "end"] ELSE ph
       /\ PageTo(xsrc[x],ECancelState(x),pqp[xsrc[x]],led[xsrc[x]] \ {x},sled[xsrc[x]])
<2> USE ONLY <1>nYpzjcGZ3s, Sizes, Location, Design
 <2>1. pst[xsrc[x]] \in {"priv","drain","quar"}
  BY <1>sisXnvJZE, Sizes, Location, Design DEF OwnedBy, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, SMTT(5), Sizes, Location DEF PCancelReg, ECancelLive, ECancelState, ECancelFree, EvidenceAt, AfterEv, PinBlocks, PageTo, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uHpx9q.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A y \in Xids : iv'[y] = IF y=x THEN "nopost" ELSE iv[y]
<2> USE ONLY <1>uHpx9q, Sizes, Location, Design
 <2>1. fr1A BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, SMTT(5), Sizes, Location, Design DEF fr1A, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EaWO9PfF0.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE /\ \A j \in Inst, u \in Rq :
          /\ ph'[j][u] = IF ECancelLive(x) /\ j=xp[x] /\ u=xr[x] THEN "end" ELSE ph[j][u]
          /\ (Active(j,u)' => Active(j,u) /\ ph'[j][u] = ph[j][u])
          /\ (ph'[j][u] \in {"run","ovl"} <=> ph[j][u] \in {"run","ovl"})
       /\ \A j \in DInst, u \in Rq : ph'[j][u] = ph[j][u]
<2> USE ONLY <1>EaWO9PfF0, Sizes, Location, Design
 <2>1. AydA BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>sisXnvJZE, <1>nYpzjcGZ3s, Sizes, SMTT(5), Location, Design DEF ECancelLive, AydA, Active, Inst, DInst, PInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IJmeqqKU.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : pst'[q] = IF q=xsrc[x] THEN (ECancelState(x)) ELSE pst[q]
<2> USE ONLY <1>IJmeqqKU, Sizes, Location, Design
 <2>1. OyyWS BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, OyyWS, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HsIx0fv.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : pr'[q] = IF q=xsrc[x] THEN (IF ECancelFree(x) THEN 0 ELSE pr[q]) ELSE pr[q]
<2> USE ONLY <1>HsIx0fv, Sizes, Location, Design
 <2>1. IwCp BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, IwCp, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zIDbyeMF.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : pgn'[q] = IF q=xsrc[x] THEN (IF ECancelFree(x) THEN 0 ELSE pgn[q]) ELSE pgn[q]
<2> USE ONLY <1>zIDbyeMF, Sizes, Location, Design
 <2>1. vS7em BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, vS7em, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qxLTiqEn.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : plt'[q] = IF q=xsrc[x] THEN (IF ECancelFree(x) THEN 0 ELSE plt[q]) ELSE plt[q]
<2> USE ONLY <1>qxLTiqEn, Sizes, Location, Design
 <2>1. bFwlN BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, bFwlN, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YJjokdIY.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : led'[q] = IF q=xsrc[x] THEN (IF ECancelFree(x) THEN {} ELSE led[q] \ {x}) ELSE led[q]
<2> USE ONLY <1>YJjokdIY, Sizes, Location, Design
 <2>1. dcfPK BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, dcfPK, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>a0WNnb4jo.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : sled'[q] = IF q=xsrc[x] THEN (IF ECancelFree(x) THEN {} ELSE sled[q]) ELSE sled[q]
<2> USE ONLY <1>a0WNnb4jo, Sizes, Location, Design
 <2>1. h9WLgd BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, h9WLgd, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SsuHlkxe2E.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : prefc'[q] = IF q=xsrc[x] THEN (IF ECancelFree(x) THEN 0 ELSE prefc[q]) ELSE prefc[q]
<2> USE ONLY <1>SsuHlkxe2E, Sizes, Location, Design
 <2>1. p1YmMe5 BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, p1YmMe5, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vo1XeQrE.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : pqp'[q] = IF q=xsrc[x] THEN (IF ECancelFree(x) THEN 0 ELSE pqp[q]) ELSE pqp[q]
<2> USE ONLY <1>vo1XeQrE, Sizes, Location, Design
 <2>1. vRZWI BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, vRZWI, OwnedBy, Sizes, Location, Design
\* T2M-END R2M1531_PdRPPP_PdECancelFacts


<1>m4UmJZ5vla.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE /\ \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
       /\ \A q \in Pages : UNCHANGED GrownP(q)
<2> USE ONLY <1>m4UmJZ5vla, Sizes, Location, Design
 <2>1. UNCHANGED <<rpg,xsrc>> BY <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
  BY <1>sisXnvJZE, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, Sizes, SMTT(5), Location, Design DEF IsD, PInst, DInst, NL, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF GrownP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PMSLP2R4Cg3MoL2v.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : UNCHANGED <<NHits(q),KPinned(q)>>
<2> USE ONLY <1>PMSLP2R4Cg3MoL2v, Sizes, Location, Design
 <2>1. UNCHANGED <<kpin,krs,rhit,rpg>> BY <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. \A q \in Pages :
 {u \in Rq : ph'[Loc(q)][u] \in {"run","ovl"} /\ rhit'[Loc(q)][u] /\ rpg'[Loc(q)][u]=q}
 = {u \in Rq : ph[Loc(q)][u] \in {"run","ovl"} /\ rhit[Loc(q)][u] /\ rpg[Loc(q)][u]=q}
 BY <2>1, <1>EaWO9PfF0, <1>jc4Pk2myFy, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF NHits, KPinned, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>a12kGba.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE /\ \A j \in Inst, u \in Rq, q \in Pages : Maps(j,u,q)' => Maps(j,u,q)
       /\ ECancelLive(x) => \A j \in Inst, u \in Rq : ~Maps(j,u,xsrc[x])'
<2> USE ONLY <1>a12kGba, Sizes, Location, Design
 <2>1. K8 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. UNCHANGED <<rpg,xsrc>> BY <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. ECancelLive(x) => Active(xp[x],xr[x]) /\ rpg[xp[x]][xr[x]] = xsrc[x]
  BY <2>1, <1>sisXnvJZE, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF ECancelLive, K8, Active, IsP, PInst, Inst, Sizes, Location, Design
 <2>4. ECancelLive(x) => \A j \in Inst, u \in Rq :
    (Active(j,u) /\ rpg[j][u] = xsrc[x]) => j=xp[x] /\ u=xr[x]
  BY <2>1, <2>3, <1>sisXnvJZE, <1>yGU8fpsp8, <1>HzDmJ6cCSS2, Sizes, SMTT(5), Location, Design DEF IsP, Inst, PInst, NL, Sizes, Location, Design
 <2>5. QED BY <2>2, <2>3, <2>4, <1>EaWO9PfF0, SMTT(5), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LgizYhGNV8lBAE.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE ECancelLive(x) => pst[xsrc[x]] = "priv" /\ pqp[xsrc[x]] = 0
<2> USE ONLY <1>LgizYhGNV8lBAE, Sizes, Location, Design
 <2>1. xp[x] \in Inst /\ IsP(xp[x]) /\ xr[x] \in Rq
  BY <1>sisXnvJZE, <1>yGU8fpsp8, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. ECancelLive(x) => ph[xp[x]][xr[x]] \in {"reg","sent"} /\ rx[xp[x]][xr[x]] = x
  BY Sizes, Location, Design DEF ECancelLive, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>SybH9, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IOHaCmfHMYlG.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A j \in Inst, u \in Rq, q \in Pages :
   ((q # xsrc[x] \/ ~ECancelLive(x)) /\ Maps(j,u,q)) => Maps(j,u,q)'
<2> USE ONLY <1>IOHaCmfHMYlG, Sizes, Location, Design
 <2>1. K8 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. UNCHANGED rpg BY <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. ECancelLive(x) => rpg[xp[x]][xr[x]] = xsrc[x]
  BY <2>1, <1>sisXnvJZE, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF ECancelLive, K8, Active, IsP, PInst, Inst, Sizes, Location, Design
 <2>4. QED BY <2>2, <2>3, <1>EaWO9PfF0, SMTT(5), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design
\* T2M-END R2M1535_PdRPPP_PdECancelSafety


<1>ptFAClTNGu.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE K7'
<2> USE ONLY <1>ptFAClTNGu, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (ptl[bb_p] >= 0)' /\ (pst[bb_p] = "free" => (pr[bb_p] = 0 /\ pgn[bb_p] = 0 /\ plt[bb_p] = 0 /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
                               /\ prefc[bb_p] = 0 /\ pqp[bb_p] = 0))' /\ (pst[bb_p] \in {"priv", "drain", "quar"} => (pr[bb_p] \in Rq /\ pgn[bb_p] \in Gens /\ pgn[bb_p] <= gen[pr[bb_p]]))' /\ (pst[bb_p] = "quar" => pqp[bb_p] \in Inst)' /\ (pst[bb_p] # "quar" => pqp[bb_p] = 0)' /\ (pst[bb_p] # "shared" => prefc[bb_p] = 0)' /\ (pst[bb_p] = "shared" => (IsD(Loc(bb_p)) /\ led[bb_p] = {} /\ ptl[bb_p] = PS /\ prefc[bb_p] = NHits(bb_p)))' /\ (pst[bb_p] = "drain" => (led[bb_p] # {} \/ sled[bb_p] # {} \/ KPinned(bb_p)))' /\ (pst[bb_p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(bb_p), r, bb_p))' /\ (pst[bb_p] = "priv" => \/ (Maps(Loc(bb_p), pr[bb_p], bb_p) /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p] /\ ~rhit[Loc(bb_p)][pr[bb_p]])
                              \/ GrownP(bb_p))'
  BY Sizes, Location, Design DEF K7, Sizes, Location, Design
<2>1. K7 /\ K6 /\ Zzz7b(bb_p) BY <1>gfplo, V21_Inv_K6, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen,kpin,krs,rg,rpg,rhit,ptl,sfly,xsrc>> BY <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (ptl[bb_p] >= 0)'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>4. (pst[bb_p] = "free" => (pr[bb_p] = 0 /\ pgn[bb_p] = 0 /\ plt[bb_p] = 0 /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
                               /\ prefc[bb_p] = 0 /\ pqp[bb_p] = 0))'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>5. (pst[bb_p] \in {"priv", "drain", "quar"} => (pr[bb_p] \in Rq /\ pgn[bb_p] \in Gens /\ pgn[bb_p] <= gen[pr[bb_p]]))'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>6. (pst[bb_p] = "quar" => pqp[bb_p] \in Inst)'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>7. (pst[bb_p] # "quar" => pqp[bb_p] = 0)'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>8. (pst[bb_p] # "shared" => prefc[bb_p] = 0)'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>9. (pst[bb_p] = "shared" => (IsD(Loc(bb_p)) /\ led[bb_p] = {} /\ ptl[bb_p] = PS /\ prefc[bb_p] = NHits(bb_p)))'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>10. (pst[bb_p] = "drain" => (led[bb_p] # {} \/ sled[bb_p] # {} \/ KPinned(bb_p)))'
  BY <2>1, <2>2, <1>sisXnvJZE, <1>LgizYhGNV8lBAE, <1>EaWO9PfF0, <1>a12kGba, <1>PMSLP2R4Cg3MoL2v, <1>m4UmJZ5vla, <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, <1>qxLTiqEn, <1>YJjokdIY, <1>a0WNnb4jo, <1>SsuHlkxe2E, <1>vo1XeQrE, <1>jc4Pk2myFy, <1>yGU8fpsp8, Sizes, SMTT(5), Location, Design DEF Zzz7b, K6, ECancelLive, ECancelState, ECancelFree, OwnedBy, IsP, IsD, GrownP, Maps, Active, PInst, DInst, Inst, NL, Sizes, Location, Design
<2>11. (pst[bb_p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(bb_p), r, bb_p))'
 <3>1. Loc(bb_p) \in Inst BY <1>jc4Pk2myFy, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. CASE bb_p=xsrc[x] /\ ECancelLive(x)
  BY <2>2, <3>1, <3>2, <1>a12kGba, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. CASE bb_p # xsrc[x] \/ ~ECancelLive(x)
  <4>1. pst'[bb_p] \in {"drain","quar"} => pst[bb_p] \in {"drain","quar"}
   BY <3>3, <1>IJmeqqKU, SMTT(5), Sizes, Location, Design DEF ECancelState, Sizes, Location, Design
  <4>2. QED BY <2>1, <2>2, <3>1, <4>1, <1>a12kGba, SMTT(5), Sizes, Location, Design DEF Zzz7b, Sizes, Location, Design
 <3>4. QED BY <3>2, <3>3, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>12. (pst[bb_p] = "priv" => \/ (Maps(Loc(bb_p), pr[bb_p], bb_p) /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p] /\ ~rhit[Loc(bb_p)][pr[bb_p]])
                              \/ GrownP(bb_p))'
 <3>1. pst'[bb_p] = "priv" =>
   pst[bb_p] = "priv" /\ pr'[bb_p]=pr[bb_p] /\ pgn'[bb_p]=pgn[bb_p] /\ (bb_p # xsrc[x] \/ ~ECancelLive(x))
  BY <1>IJmeqqKU, <1>HsIx0fv, <1>zIDbyeMF, SMTT(5), Sizes, Location, Design DEF ECancelState, Sizes, Location, Design
 <3>2. Loc(bb_p) \in Inst BY <1>jc4Pk2myFy, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>1, <2>2, <3>1, <3>2, <1>IOHaCmfHMYlG, <1>m4UmJZ5vla, SMTT(5), Sizes, Location, Design DEF Zzz7b, Sizes, Location, Design
<2>13. QED
  BY <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, <2>12, Sizes, Location, Design DEF K7, Sizes, Location, Design
\* T2M-END R2M1543_PdRPPP_PdE_PCancelReg_K7


<1>VLkSECyPcl.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE K8'
<2> USE ONLY <1>VLkSECyPcl, Sizes, Location, Design
<2>1. K8 /\ K2 /\ K3 /\ K4 /\ K5 /\ AEZsS /\ dcfPK /\ SHJS /\ Xc_ngV /\ h9WLgd
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<gen,hd,hp,nx,ptl,rg,rhit,rpe,rpg,rx,sfly,xg,xlt,xr,xsrc>>
 BY <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>sisXnvJZE, <1>YJjokdIY, <1>zIDbyeMF, <1>qxLTiqEn, <1>HsIx0fv, <1>IJmeqqKU, <1>a0WNnb4jo, <1>EaWO9PfF0, <1>uHpx9q, Design, Sizes, Location, SMTT(5) DEF Active, CqeHw, DInst, ECancelFree, ECancelLive, ECancelState, ExpInst, ExpPage, Gens, InFl, InitInst, InitPage, Inst, IsD, IsP, K2, K3, K4, K5, K8, NL, OwnedBy, PInst, AEZsS, dcfPK, SHJS, Xc_ngV, h9WLgd, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1544_PdRPPP_PdE_PCancelReg_K8

\* T2M-SCOPE R2M1545_PdRPPP_PdE_PCancelReg_K9

<1>FvIx9pxxE4xb.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
  PROVE K7'
  BY ONLY <1>FvIx9pxxE4xb, Sizes, Location, Design, <1>ptFAClTNGu, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ihHPRV4PwPLw.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
  PROVE K8'
  BY ONLY <1>ihHPRV4PwPLw, Sizes, Location, Design, <1>VLkSECyPcl, V21_Inv_K8 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FOFtOay2erdyG.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE STypeOK'
 BY ONLY <1>FOFtOay2erdyG, AuxType_d3dd8b4090431094, Sizes, Location, Design DEF Sizes, Location, Design

<1>DAer5nMFZX5hTBwIK9Pw.          
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE CoreTypeOK'
 BY ONLY <1>DAer5nMFZX5hTBwIK9Pw, AuxType_b4c35f0bd68d4e22, Sizes, Location, Design DEF Sizes, Location, Design

<1>c2dPFt2wnkXtyQNDdp.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE TypInv'
<2> USE ONLY <1>c2dPFt2wnkXtyQNDdp, Sizes, Location, Design
<2>1. CoreTypeOK' BY <1>DAer5nMFZX5hTBwIK9Pw, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED xsrc BY <1>WNyxetP94apaUcH13MSIPE, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. STypeOK' BY <2>2, <1>FOFtOay2erdyG, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, Location, Design DEF TypInv, Sizes, Location, Design
\* T2M-END R2M2007_PdRPR2Types_PCancelReg


<1> QED BY <1>c2dPFt2wnkXtyQNDdp, <1>FvIx9pxxE4xb, <1>NldbvddCWqF9w0UZlXekZiA, <1>HDXYcLtZEGtYwUtB6Dw89oatz, <1>ihHPRV4PwPLw, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PCancelReg_02_01 SHA 91b0dc8722b2d6c63246ebb86f81ca7a5836d72d72b3d101359dd3ccf38403c0
USE DEF V21_Inv_HitIdentity, V21_Inv_NoStrayAccess, V21_Inv_QuarNoReg, V21_Inv_SI7, V22_T_iv
HIDE DEF AuxType_b4c35f0bd68d4e22, AuxType_d3dd8b4090431094, Part_PCancelReg_01_02, V21_Inv_K7, V21_Inv_KReadIntegrity, V21_Inv_P_SI2, V21_Inv_P_SI5, V21_Inv_PrefcMatchesHolders, V21_SFollowOff
THEOREM Part_PCancelReg_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE (NoStrayAccess)' /\ (SI7)' /\ (HitIdentity)'
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

           ECancelLive(x) == ph[xp[x]][xr[x]] \in {"reg","sent"} /\ rg[xp[x]][xr[x]] = xg[x] /\ rx[xp[x]][xr[x]] = x


           ECancelFree(x) == led[xsrc[x]] \ {x} = {} /\ sled[xsrc[x]] = {} /\ ~KPinned(xsrc[x]) /\ (ECancelLive(x) \/ pst[xsrc[x]] = "drain")


           ECancelState(x) == IF ECancelFree(x) THEN "free" ELSE IF ECancelLive(x) THEN "drain" ELSE pst[xsrc[x]]

           \* T2M-LOCAL-VISIBILITY

           RP_RegPrelude == \A x \in Xids : iv'[x]="reg" =>
            xk[x]="wr" /\ (RP_Posted(x) \/ (iv[x]="reg" /\ xsrc'[x]=xsrc[x]))


           RP_RegSourceSafe == \A x \in Xids : iv'[x]="reg" => xsrc'[x] \in Pages /\ pst'[xsrc'[x]] # "quar"

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

           RPN_ECancelLive(x) == ph[xp[x]][xr[x]] \in {"reg","sent"} /\ rg[xp[x]][xr[x]] = xg[x] /\ rx[xp[x]][xr[x]] = x


           RPN_ECancelFree(x) == led[xsrc[x]] \ {x} = {} /\ sled[xsrc[x]] = {} /\ ~KPinned(xsrc[x]) /\ (RPN_ECancelLive(x) \/ pst[xsrc[x]] = "drain")


           RPN_ECancelState(x) == IF RPN_ECancelFree(x) THEN "free" ELSE IF RPN_ECancelLive(x) THEN "drain" ELSE pst[xsrc[x]]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_PinFacts, RP_PinKeep, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, ECancelLive, ECancelFree, ECancelState, RP_RegPrelude, RP_RegSourceSafe, RPNS_TransportNoStray, RPN_T_gen, RPN_T_rt, RPN_T_rp, RPN_T_rd, RPN_T_hp, RPN_T_hd, RPN_T_alive, RPN_T_nfail, RPN_T_torn, RPN_T_kpin, RPN_T_kfly, RPN_T_krs, RPN_T_ph, RPN_T_rg, RPN_T_rpg, RPN_T_rpe, RPN_T_rx, RPN_T_rhit, RPN_T_pst, RPN_T_pr, RPN_T_pgn, RPN_T_plt, RPN_T_ptl, RPN_T_pvis, RPN_T_led, RPN_T_sfly, RPN_T_sled, RPN_T_prefc, RPN_T_pqp, RPN_T_xr, RPN_T_xg, RPN_T_xk, RPN_T_xp, RPN_T_xd, RPN_T_xsrc, RPN_T_xdst, RPN_T_xnt, RPN_T_hw, RPN_T_hok, RPN_T_iv, RPN_T_xst, RPN_T_xlt, RPN_T_nx, RPN_T_net, RPN_T_drep, RPN_T_crep, RPN_T_dsucc, RPN_T_gbad, RPN_Types, RPN_ECancelLive, RPN_ECancelFree, RPN_ECancelState

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


<1>MbCc4CzCSalzbBsO3RNc2ShSc.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>MbCc4CzCSalzbBsO3RNc2ShSc, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>MbCc4CzCSalzbBsO3RNc2ShSc, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, NewGen, PCancelReg, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Z94ryuFbO8ZdzazJHu0APa.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE HitIdentity'
 BY ONLY <1>Z94ryuFbO8ZdzazJHu0APa, Sizes, Location, Design, <1>MbCc4CzCSalzbBsO3RNc2ShSc, <1>UbRyVd7pIbH8AblyNEO DEF Sizes, Location, Design

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


<1>aezC4VEn0nHtycCKSP.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow, NEW q \in Pages, KPinned(q)
 PROVE RP_PinKeep(q)
<2> USE ONLY <1>aezC4VEn0nHtycCKSP, Sizes, Location, Design
<2>1. RP_PinFacts(q) BY <1>sTGmGejCTusB, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RP_PageTypes BY <1>dlRLZLJP8YIdC37, Sizes, Location, Design DEF Sizes, Location, Design
<2>25. K2 /\ K3 /\ K4 /\ K5 BY V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>26. iv[x]="reg" /\ xk[x]="wr" BY Design, SMTT(10), Sizes, Location DEF PCancelReg, Sizes, Location, Design
<2>265. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>aezC4VEn0nHtycCKSP, V22_T_nx, SMTT(5)

<2>27. x<nx /\ xsrc[x] \in Pages BY <2>25, <2>26, <2>265, Sizes, SMTT(10), Location, Design DEF K2, InitPage, Xids, Sizes, Location, Design
<2>28. pst[xsrc[x]] \in {"priv","drain","quar"}
 BY <2>25, <2>26, <2>27, SMTT(10), Sizes, Location, Design DEF K4, K5, InitPage, OwnedBy, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <2>28, Design, Sizes, SMTT(10), Location DEF RP_PinKeep, RP_PinFacts, RP_PageTypes, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, AfterEv, EvidenceAt, FreeOrDrain, GiveUpTo, GiveUpToN, PCancelReg, PEnd, PageTo, PinBlocks, ghV, instV, kV, recV, rtV, xV, KPinned, IsP, IsD, NoWriteInto, Writing, InFl, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qGKvGQVGG5Kq1qzFrAEGMY.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE UNCHANGED <<kpin,krs,kfly,xdst>>
 BY ONLY <1>qGKvGQVGG5Kq1qzFrAEGMY, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, FreeOrDrain, GiveUpTo, GiveUpToN, PCancelReg, PEnd, PageTo, PinBlocks, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kFoY7QWQyZvdDPu5v.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>kFoY7QWQyZvdDPu5v, Sizes, Location, Design
<2>1. \A q \in Pages : KPinned(q) => RP_PinKeep(q)
 BY <1>aezC4VEn0nHtycCKSP, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,kfly,xdst>> BY <1>qGKvGQVGG5Kq1qzFrAEGMY, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>kFoY7QWQyZvdDPu5v, <2>2, V22_T_xdst, SMTT(5)

<2>4. QED BY <2>1, <2>2, <2>3, <1>VtlCqCAE0X2qQ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>RXig2BJKOut28.        
  ASSUME NEW x \in Xids, PCancelReg(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>RXig2BJKOut28, Sizes, Location, Design, ZenonT(5) DEF EvidenceAt, PCancelReg, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1527_PdRPPP_PdPCancelRegFrames

\* T2M-SCOPE R2M1528_PdRPPP_PdCell_PCancelReg_K17

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


<1>sisXnvJZE.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE /\ iv[x] = "reg" /\ xk[x] = "wr" /\ x < nx /\ hw[x] = "none"
       /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xp[x] \in PInst /\ xd[x] \in DInst
       /\ xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
       /\ x \in led[xsrc[x]] /\ OwnedBy(xsrc[x],xr[x],xg[x])
<2> USE ONLY <1>sisXnvJZE, Sizes, Location, Design
 <2>1. K1 /\ K2 /\ K3 /\ K4 /\ K5 /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. iv[x] = "reg" /\ xk[x] = "wr"
  BY Design, SMTT(5), Sizes, Location DEF PCancelReg, Sizes, Location, Design
 <2>3. x < nx /\ hw[x] = "none"
  BY <2>1, <2>2, Sizes, SMTT(5), Location, Design DEF K2, K3, SHJS, Xids, Sizes, Location, Design
 <2>4. xr[x] \in Rq /\ xg[x] \in Gens /\ xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>3, <1>xbWa623J, Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>1, <2>2, <2>3, SMTT(5), Sizes, Location, Design DEF K2, InitPage, ExpPage, InitInst, ExpInst, Sizes, Location, Design
 <2>6. QED BY <2>1, <2>2, <2>3, <2>4, <2>5, SMTT(5), Sizes, Location, Design DEF K4, K5, InitPage, ExpPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nYpzjcGZ3s.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE /\ iv' = [iv EXCEPT ![x] = "nopost"]
       /\ ph' = IF ECancelLive(x) THEN [ph EXCEPT ![xp[x]][xr[x]] = "end"] ELSE ph
       /\ PageTo(xsrc[x],ECancelState(x),pqp[xsrc[x]],led[xsrc[x]] \ {x},sled[xsrc[x]])
<2> USE ONLY <1>nYpzjcGZ3s, Sizes, Location, Design
 <2>1. pst[xsrc[x]] \in {"priv","drain","quar"}
  BY <1>sisXnvJZE, Sizes, Location, Design DEF OwnedBy, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, SMTT(5), Sizes, Location DEF PCancelReg, ECancelLive, ECancelState, ECancelFree, EvidenceAt, AfterEv, PinBlocks, PageTo, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uHpx9q.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A y \in Xids : iv'[y] = IF y=x THEN "nopost" ELSE iv[y]
<2> USE ONLY <1>uHpx9q, Sizes, Location, Design
 <2>1. fr1A BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, SMTT(5), Sizes, Location, Design DEF fr1A, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IJmeqqKU.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : pst'[q] = IF q=xsrc[x] THEN (ECancelState(x)) ELSE pst[q]
<2> USE ONLY <1>IJmeqqKU, Sizes, Location, Design
 <2>1. OyyWS BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, OyyWS, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YJjokdIY.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : led'[q] = IF q=xsrc[x] THEN (IF ECancelFree(x) THEN {} ELSE led[q] \ {x}) ELSE led[q]
<2> USE ONLY <1>YJjokdIY, Sizes, Location, Design
 <2>1. dcfPK BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>nYpzjcGZ3s, <1>sisXnvJZE, SMTT(5), Sizes, Location, Design DEF PageTo, ECancelState, ECancelFree, dcfPK, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>O885p3y1k0.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE K2'
<2> USE ONLY <1>O885p3y1k0, Sizes, Location, Design
<2>1. K2 /\ AEZsS /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<gen,hd,hok,hp,hw,nx,xd,xdst,xg,xk,xlt,xnt,xp,xr,xsrc,xst>>
 BY <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>sisXnvJZE, <1>uHpx9q, Design, Sizes, Location, SMTT(5) DEF DInst, ECancelFree, ECancelLive, ECancelState, ExpInst, ExpPage, Gens, InitInst, InitPage, Inst, K2, NL, PInst, AEZsS, SHJS, Xids, Sizes, Location, Design
\* T2M-END R2M1538_PdRPPP_PdE_PCancelReg_K2

\* T2M-SCOPE R2M1539_PdRPPP_PdE_PCancelReg_K3

<1>gjEEivXIMK.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE K3'
<2> USE ONLY <1>gjEEivXIMK, Sizes, Location, Design
<2>1. K3
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K3, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<hok,hw,xk,xlt,xnt,xst>>
 BY <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>sisXnvJZE, <1>uHpx9q, Design, Sizes, Location, SMTT(5) DEF CqeHw, DInst, ECancelFree, ECancelLive, ECancelState, Gens, InFl, Inst, K3, NL, PInst, Xids, Sizes, Location, Design
\* T2M-END R2M1539_PdRPPP_PdE_PCancelReg_K3

\* T2M-SCOPE R2M1540_PdRPPP_PdE_PCancelReg_K4

<1>xR1lgmgG24.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE K4'
<2> USE ONLY <1>xR1lgmgG24, Sizes, Location, Design
<2>1. K4 /\ K2 /\ K3 /\ K5 /\ K8 /\ dcfPK /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<nx,xdst,xk,xsrc,xst>>
 BY <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>sisXnvJZE, <1>YJjokdIY, <1>uHpx9q, Design, Sizes, Location, SMTT(5) DEF Active, CqeHw, DInst, ECancelFree, ECancelLive, ECancelState, ExpInst, ExpPage, Gens, InFl, InitInst, InitPage, Inst, IsD, IsP, K2, K3, K4, K5, K8, NL, OwnedBy, PInst, dcfPK, SHJS, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1540_PdRPPP_PdE_PCancelReg_K4

\* T2M-SCOPE R2M1541_PdRPPP_PdE_PCancelReg_K5

<1>cXcCCoEoAMWmn7X2i.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE QuarNoReg'
<2> USE ONLY <1>cXcCCoEoAMWmn7X2i, Sizes, Location, Design
<2>1. QuarNoReg /\ K2 /\ K4 /\ K8 /\ dcfPK
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_K2, V21_Inv_K4, V21_Inv_K8, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<>>
 BY <1>RXig2BJKOut28, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>sisXnvJZE, <1>YJjokdIY, <1>IJmeqqKU, <1>uHpx9q, Design, Sizes, Location, SMTT(5) DEF Active, DInst, ECancelFree, ECancelLive, ECancelState, ExpInst, ExpPage, Gens, InitInst, InitPage, Inst, IsD, IsP, K2, K4, K8, NL, OwnedBy, PInst, QuarNoReg, dcfPK, Tag, Xids, Sizes, Location, Design
\* T2M-END R2M1547_PdRPPP_PdE_PCancelReg_QuarNoReg

\* T2M-SCOPE R2M1548_PdRPPP_PdE_PCancelReg_S5

<1>rM9laWHrMxKQ.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
  PROVE K2'
  BY ONLY <1>rM9laWHrMxKQ, Sizes, Location, Design, <1>O885p3y1k0, V21_Inv_K2 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>E2ij1kbCgmdL.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
  PROVE K3'
  BY ONLY <1>E2ij1kbCgmdL, Sizes, Location, Design, <1>gjEEivXIMK, V21_Inv_K3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tnkmgb7aH3LN.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
  PROVE K4'
  BY ONLY <1>tnkmgb7aH3LN, Sizes, Location, Design, <1>xR1lgmgG24, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UcbSzJGdrn21W9Yedgd.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>UcbSzJGdrn21W9Yedgd, Sizes, Location, Design, <1>cXcCCoEoAMWmn7X2i, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1549_PdRPPdPAgg_PCancelReg


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


<1>hdnlQNJtBq1wVh37iyFDY.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE RP_RegPrelude
<2> USE ONLY <1>hdnlQNJtBq1wVh37iyFDY, Sizes, Location, Design
<2>1. K3
 BY ONLY <1>hdnlQNJtBq1wVh37iyFDY, V21_Inv_K3, Sizes, Location, Design, SMTT(5)
<2>ivType. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
 BY ONLY <1>hdnlQNJtBq1wVh37iyFDY, V22_T_iv, SMTT(5)
<2>effect. UNCHANGED xsrc /\ iv'=[iv EXCEPT ![x]="nopost"]
 BY ONLY <1>hdnlQNJtBq1wVh37iyFDY, ZenonT(5) DEF PCancelReg
<2>2. UNCHANGED xsrc /\ (\A y \in Xids : iv'[y]="reg" => iv[y]="reg")
 BY ONLY <1>hdnlQNJtBq1wVh37iyFDY, <2>ivType, <2>effect, SMTT(5)
<2>3. \A y \in Xids : iv'[y]="reg" => xk[y]="wr" /\ iv[y]="reg" /\ xsrc'[y]=xsrc[y]
 BY ONLY <2>1, <2>2, SMTT(5) DEF K3
<2>4. QED BY ONLY <2>3, SMTT(5) DEF RP_RegPrelude

\* T2M-LOCAL-VISIBILITY

<1>glS2WJMyCZg7oA8r.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE K1'
<2> USE ONLY <1>glS2WJMyCZg7oA8r, Sizes, Location, Design
<2>1. K1 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K1, EvidenceAt, NewGen, PCancelReg, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gtQP46a7BYHaVRtH.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE K2'
 BY ONLY <1>gtQP46a7BYHaVRtH, Sizes, Location, Design, <1>rM9laWHrMxKQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DRaEXXNNyCQ94W4K.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE K3'
 BY ONLY <1>DRaEXXNNyCQ94W4K, Sizes, Location, Design, <1>E2ij1kbCgmdL DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pA80uYSgSaP9Mj04.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE K4'
 BY ONLY <1>pA80uYSgSaP9Mj04, Sizes, Location, Design, <1>tnkmgb7aH3LN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k4I1J6Bl20OY6czBzL4jvXc.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>k4I1J6Bl20OY6czBzL4jvXc, Sizes, Location, Design, <1>UcbSzJGdrn21W9Yedgd DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fEbwJGvtzXbREqJ2.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE nx' \in 1..(MX+1)
<2> USE ONLY <1>fEbwJGvtzXbREqJ2, Sizes, Location, Design
<2>1. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>fEbwJGvtzXbREqJ2, V22_T_nx, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF Xids, EvidenceAt, NewGen, PCancelReg, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>W63po3ho0GKCEp.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE SI7'
<2> USE ONLY <1>W63po3ho0GKCEp, Sizes, Location, Design
<2>1. RP_RegSourceSafe BY <1>glS2WJMyCZg7oA8r, <1>gtQP46a7BYHaVRtH, <1>DRaEXXNNyCQ94W4K, <1>pA80uYSgSaP9Mj04, <1>k4I1J6Bl20OY6czBzL4jvXc, <1>fEbwJGvtzXbREqJ2, <1>NU8zGD7bQ5u9BXIjl, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>hdnlQNJtBq1wVh37iyFDY, <1>KvDgRwgd9SE, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1876_PdRPSI7_PCancelReg


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

<1>RF8x4wFcPvB2.        
  ASSUME NEW x \in Xids, PinInv, x < nx
  PROVE xr[x] \in Rq /\ xg[x] \in Gens /\ xp[x] \in PInst /\ xd[x] \in DInst
    /\ ExpInst(x) \in Inst /\ InitInst(x) \in Inst
<2> USE ONLY <1>RF8x4wFcPvB2, Sizes, Location, Design
<2>1. K1 /\ K2 /\ RPN_T_nx
  BY <1>xefsaV8GL9Rd3I, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
<2>0. ~(x >= nx)
  BY <2>1, Sizes, SMT, Location, Design DEF RPN_T_nx, Xids, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
    /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, <2>0, Zenon, Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>3. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. QED
  BY <2>2, <2>3, Sizes, SMT, Location, Design DEF ExpInst, InitInst, PInst, DInst, Inst, NL, Sizes, Location, Design

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


<1>umbSQES3TJU8sRAeL.        
  ASSUME NEW x \in Xids, PCancelReg(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>umbSQES3TJU8sRAeL, Sizes, Location, Design, ZenonT(5) DEF EvidenceAt, PCancelReg, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M2100_PdRPNPP_PdPCancelRegFrames


<1>IjaIbWM1Q4ofw.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE /\ iv[x] = "reg" /\ xk[x] = "wr" /\ x < nx /\ hw[x] = "none"
       /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xp[x] \in PInst /\ xd[x] \in DInst
       /\ xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
       /\ x \in led[xsrc[x]] /\ OwnedBy(xsrc[x],xr[x],xg[x])
<2> USE ONLY <1>IjaIbWM1Q4ofw, Sizes, Location, Design
 <2>1. K1 /\ K2 /\ K3 /\ K4 /\ K5 /\ RPN_T_nx
  BY <1>xefsaV8GL9Rd3I, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. iv[x] = "reg" /\ xk[x] = "wr"
  BY Design, SMTT(5), Sizes, Location DEF PCancelReg, Sizes, Location, Design
 <2>3. x < nx /\ hw[x] = "none"
  BY <2>1, <2>2, Sizes, SMTT(5), Location, Design DEF K2, K3, RPN_T_nx, Xids, Sizes, Location, Design
 <2>4. xr[x] \in Rq /\ xg[x] \in Gens /\ xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>3, <1>RF8x4wFcPvB2, Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>1, <2>2, <2>3, SMTT(5), Sizes, Location, Design DEF K2, InitPage, ExpPage, InitInst, ExpInst, Sizes, Location, Design
 <2>6. QED BY <2>1, <2>2, <2>3, <2>4, <2>5, SMTT(5), Sizes, Location, Design DEF K4, K5, InitPage, ExpPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>o1IwF2Gnp7ze83.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE /\ iv' = [iv EXCEPT ![x] = "nopost"]
       /\ ph' = IF RPN_ECancelLive(x) THEN [ph EXCEPT ![xp[x]][xr[x]] = "end"] ELSE ph
       /\ PageTo(xsrc[x],RPN_ECancelState(x),pqp[xsrc[x]],led[xsrc[x]] \ {x},sled[xsrc[x]])
<2> USE ONLY <1>o1IwF2Gnp7ze83, Sizes, Location, Design
 <2>1. pst[xsrc[x]] \in {"priv","drain","quar"}
  BY <1>IjaIbWM1Q4ofw, Sizes, Location, Design DEF OwnedBy, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, SMTT(5), Sizes, Location DEF PCancelReg, RPN_ECancelLive, RPN_ECancelState, RPN_ECancelFree, EvidenceAt, AfterEv, PinBlocks, PageTo, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m6o4zMpiqup5.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : pst'[q] = IF q=xsrc[x] THEN (RPN_ECancelState(x)) ELSE pst[q]
<2> USE ONLY <1>m6o4zMpiqup5, Sizes, Location, Design
 <2>1. RPN_T_pst BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>o1IwF2Gnp7ze83, <1>IjaIbWM1Q4ofw, SMTT(5), Sizes, Location, Design DEF PageTo, RPN_ECancelState, RPN_ECancelFree, RPN_T_pst, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>s59Kt1u2y3C.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : pr'[q] = IF q=xsrc[x] THEN (IF RPN_ECancelFree(x) THEN 0 ELSE pr[q]) ELSE pr[q]
<2> USE ONLY <1>s59Kt1u2y3C, Sizes, Location, Design
 <2>1. RPN_T_pr BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>o1IwF2Gnp7ze83, <1>IjaIbWM1Q4ofw, SMTT(5), Sizes, Location, Design DEF PageTo, RPN_ECancelState, RPN_ECancelFree, RPN_T_pr, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>F6shcYP2M8kJ.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : pgn'[q] = IF q=xsrc[x] THEN (IF RPN_ECancelFree(x) THEN 0 ELSE pgn[q]) ELSE pgn[q]
<2> USE ONLY <1>F6shcYP2M8kJ, Sizes, Location, Design
 <2>1. RPN_T_pgn BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>o1IwF2Gnp7ze83, <1>IjaIbWM1Q4ofw, SMTT(5), Sizes, Location, Design DEF PageTo, RPN_ECancelState, RPN_ECancelFree, RPN_T_pgn, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HldVnp7IJj3H.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : plt'[q] = IF q=xsrc[x] THEN (IF RPN_ECancelFree(x) THEN 0 ELSE plt[q]) ELSE plt[q]
<2> USE ONLY <1>HldVnp7IJj3H, Sizes, Location, Design
 <2>1. RPN_T_plt BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>o1IwF2Gnp7ze83, <1>IjaIbWM1Q4ofw, SMTT(5), Sizes, Location, Design DEF PageTo, RPN_ECancelState, RPN_ECancelFree, RPN_T_plt, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XO1ydDq0wrhJ.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : led'[q] = IF q=xsrc[x] THEN (IF RPN_ECancelFree(x) THEN {} ELSE led[q] \ {x}) ELSE led[q]
<2> USE ONLY <1>XO1ydDq0wrhJ, Sizes, Location, Design
 <2>1. RPN_T_led BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>o1IwF2Gnp7ze83, <1>IjaIbWM1Q4ofw, SMTT(5), Sizes, Location, Design DEF PageTo, RPN_ECancelState, RPN_ECancelFree, RPN_T_led, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>f56SVMt0jEoMZ.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : sled'[q] = IF q=xsrc[x] THEN (IF RPN_ECancelFree(x) THEN {} ELSE sled[q]) ELSE sled[q]
<2> USE ONLY <1>f56SVMt0jEoMZ, Sizes, Location, Design
 <2>1. RPN_T_sled BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>o1IwF2Gnp7ze83, <1>IjaIbWM1Q4ofw, SMTT(5), Sizes, Location, Design DEF PageTo, RPN_ECancelState, RPN_ECancelFree, RPN_T_sled, OwnedBy, Sizes, Location, Design
\* T2M-END R2M2101_PdRPNPP_PdECancelFacts


<1>QzVZx8vOMoVCfk6RI.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE \A q \in Pages : (led'[q] # {} \/ sfly[q] # {} \/ KPinned(q)) =>
   pst'[q] \in {pst[q],"drain","quar"} /\ pr'[q]=pr[q] /\ pgn'[q]=pgn[q] /\ plt'[q]=plt[q]
<2> USE ONLY <1>QzVZx8vOMoVCfk6RI, Sizes, Location, Design
 <2>1. K6 BY V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED BY <2>1, <1>XO1ydDq0wrhJ, <1>m6o4zMpiqup5, <1>s59Kt1u2y3C, <1>F6shcYP2M8kJ, <1>HldVnp7IJj3H, SMTT(5), Sizes, Location, Design DEF RPN_ECancelState, RPN_ECancelFree, K6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MN8Pba4V34x3Ca.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE /\ \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
       /\ \A q \in Pages : UNCHANGED GrownP(q)
<2> USE ONLY <1>MN8Pba4V34x3Ca, Sizes, Location, Design
 <2>1. UNCHANGED <<rpg,xsrc>> BY <1>umbSQES3TJU8sRAeL, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. \A q \in Pages : IsD(Loc(q)) => UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
  BY <1>IjaIbWM1Q4ofw, <1>m6o4zMpiqup5, <1>s59Kt1u2y3C, <1>F6shcYP2M8kJ, <1>HldVnp7IJj3H, <1>XO1ydDq0wrhJ, <1>f56SVMt0jEoMZ, Sizes, SMTT(5), Location, Design DEF IsD, PInst, DInst, NL, Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF GrownP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Lqu35WiAy49xD0MnGuL.        
 ASSUME NEW x \in Xids, NEW y \in Xids, PinInv, PCancelReg(x), Writing(y)
 PROVE UNCHANGED <<pst[xdst[y]],pr[xdst[y]],pgn[xdst[y]]>>
<2> USE ONLY <1>Lqu35WiAy49xD0MnGuL, Sizes, Location, Design
 <2>1. K1 /\ K2 /\ K3 /\ RPN_T_nx BY <1>xefsaV8GL9Rd3I, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. y < nx /\ xdst[y] \in Pages
  BY <2>1, <1>QfMLlZ4MHHW0bUMKWZ, <1>FhsnoZB8I8RxAoKXN5IC, Sizes, Location, Design DEF Writing, Sizes, Location, Design
 <2>3. Loc(xdst[y]) \in DInst BY <2>2, <1>uOE5j5p, Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. QED BY <2>2, <2>3, <1>MN8Pba4V34x3Ca, <1>umbSQES3TJU8sRAeL, Sizes, SMTT(5), Location, Design DEF IsD, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>peeyaPho3fHNJ9FRQ.        
 ASSUME NEW x \in Xids, NEW y \in Xids, PinInv, PCancelReg(x), hw[y] = "fly"
 PROVE pst'[xsrc[y]] \in {pst[xsrc[y]],"drain","quar"} /\ pr'[xsrc[y]] = pr[xsrc[y]] /\ pgn'[xsrc[y]] = pgn[xsrc[y]]
<2> USE ONLY <1>peeyaPho3fHNJ9FRQ, Sizes, Location, Design
 <2>1. xsrc[y] \in Pages /\ y \in led[xsrc[y]]
  BY <1>gyQ97LfIbobkgLjDB, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. K3 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. y # x
  BY <1>IjaIbWM1Q4ofw, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. y \in led'[xsrc[y]]
  BY <2>1, <2>3, <1>XO1ydDq0wrhJ, SMTT(5), Sizes, Location, Design DEF RPN_ECancelFree, Sizes, Location, Design
 <2>5. QED BY <2>1, <2>4, <1>QzVZx8vOMoVCfk6RI, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2102_PdRPNPP_PdECancelSafety

\* T2M-SCOPE R2M2103_PdRPNPP_PdE_PCancelReg_NoFreeUnderRead
\* T2M-BODY R2M2103_PdRPNPP_PdE_PCancelReg_NoFreeUnderRead

\* T2M-END R2M2103_PdRPNPP_PdE_PCancelReg_NoFreeUnderRead

\* T2M-SCOPE R2M2104_PdRPNPP_PdE_PCancelReg_NoStrayAccess
\* T2M-BODY R2M2104_PdRPNPP_PdE_PCancelReg_NoStrayAccess
\* T2M-LOCAL-VISIBILITY

<1>nbEK7NtfnuIX6HeAurgOsmVZb.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
 PROVE RPNS_TransportNoStray'
<2> USE ONLY <1>nbEK7NtfnuIX6HeAurgOsmVZb, Sizes, Location, Design
<2>1. RPNS_TransportNoStray /\ K14 BY V21_Inv_BaseSafety, V21_Inv_K14, V21_Inv_NoStrayAccess, V21_Inv_Safety, Sizes, Location, Design DEF Safety, BaseSafety, NoStrayAccess, RPNS_TransportNoStray, Sizes, Location, Design
<2>2. UNCHANGED <<hw,xdst,xsrc,xr,xg,sfly,kfly,kpin,krs>> BY <1>umbSQES3TJU8sRAeL, Sizes, Location, Design DEF instV, kV, Sizes, Location, Design
<2>3. (\A y \in Xids : Writing(y) => Held(xdst[y],y))'
 BY <2>1, <2>2, <1>Lqu35WiAy49xD0MnGuL, SMTT(5), Sizes, Location, Design DEF RPNS_TransportNoStray, Held, Writing, InFl, Sizes, Location, Design
<2>4. (\A y \in Xids : hw[y] = "fly" => Held(xsrc[y],y))'
 BY <2>1, <2>2, <1>peeyaPho3fHNJ9FRQ, SMTT(5), Sizes, Location, Design DEF RPNS_TransportNoStray, Held, Sizes, Location, Design
<2>5. (\A q \in Pages : \A t \in sfly[q] :
 (pst[q] \in {"priv","drain","quar"} /\ pr[q] = t[1] /\ pgn[q] = t[2]) \/ (pst[q] = "shared" /\ IsD(Loc(q))))'
 BY <2>1, <2>2, <1>QzVZx8vOMoVCfk6RI, <1>IjaIbWM1Q4ofw, <1>m6o4zMpiqup5, SMTT(5), Sizes, Location, Design DEF RPNS_TransportNoStray, OwnedBy, Sizes, Location, Design
<2>7. QED BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF RPNS_TransportNoStray, Sizes, Location, Design
\* T2M-END R2M2104_PdRPNPP_PdE_PCancelReg_NoStrayAccess


<1>SUOgWb9TyhHJ3weGYTXTP8F2.        
 ASSUME NEW x \in Xids, PinInv, PCancelReg(x), SFollow
 PROVE NoStrayAccess'
<2> USE ONLY <1>SUOgWb9TyhHJ3weGYTXTP8F2, Sizes, Location, Design
<2>1. RPNS_TransportNoStray' BY <1>nbEK7NtfnuIX6HeAurgOsmVZb, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. NoFreeUnderRead' BY <1>kFoY7QWQyZvdDPu5v, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<kfly,kpin,krs>> BY <1>qGKvGQVGG5Kq1qzFrAEGMY, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. K14 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF NoStrayAccess, RPNS_TransportNoStray, NoFreeUnderRead, K14, Sizes, Location, Design
\* T2M-END R2M2105_PdRPStray_PCancelReg


<1> QED BY <1>SUOgWb9TyhHJ3weGYTXTP8F2, <1>W63po3ho0GKCEp, <1>Z94ryuFbO8ZdzazJHu0APa, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF P_PagePoolsDisjoint, Part_PCancelReg_02_01, V21_Inv_BaseSafety, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K14, V21_Inv_K15, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K8, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_QuarNoReg, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_hw, V22_T_iv, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rg, V22_T_sfly, V22_T_sled, V22_T_xdst
====
