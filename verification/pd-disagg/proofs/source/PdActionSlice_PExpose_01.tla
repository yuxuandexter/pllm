---- MODULE PdActionSlice_PExpose_01 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, Integers, TLAPS, PdFinalAuxType_027d8d9d83cf40b0, PdFinalAuxType_0cd814f5e0dc64c0, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalPart_PExpose_01_01 SHA b6d40acf5139ac51d1d0b6ec4e35e3e317cf067e6f98802387188057013fceba
HIDE DEF AuxType_027d8d9d83cf40b0, AuxType_0cd814f5e0dc64c0, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_plt, V22_T_pqp, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xprefixOK, V22_T_xsrcP
THEOREM Part_PExpose_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE (P_SI5)'
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


           RP_RegPrelude == \A x \in Xids : iv'[x]="reg" =>
            xk[x]="wr" /\ (RP_Posted(x) \/ (iv[x]="reg" /\ xsrc'[x]=xsrc[x]))


           RP_RegSourceSafe == \A x \in Xids : iv'[x]="reg" => xsrc'[x] \in Pages /\ pst'[xsrc'[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

           RP_NoNewStop == \A x \in Xids : hw[x] \in {"fly","issued"} => hw'[x] # "stop"


           RP_DReadFrame == \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} =>
            ph[j][r] \in {"run","ovl"} /\ rpg'[j][r]=rpg[j][r]


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


<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, RP_RegPrelude, RP_RegSourceSafe, RP_NoNewStop, RP_DReadFrame, RP2_PublishInfo, RP2_UnpostedFrame, RP2_PublishNoFly, RP2_NewEntryState, RP_QSnapshot, RP2_StoppedHeldBack, RP2_PrivatePhaseStep, RP2_SI5Q, RP2_SI5D, RP2_SI5P, RP2_DHeldBack

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
        /\ xst[q] = "landed" => (hw[q] = "stop" /\ hok[q] /\ xlt[q] = xnt[q])   \* transfer-length consistency: landed only if lt = plan
        /\ (xk[q] = "rd" /\ iv[q] \notin {"none", "nopost"}) => xlt[q] = xnt[q]   \* transfer-length consistency: in pull, D issues READ only if lt = plan
        /\ xst[q] = "failed" => IF xk[q] = "wr" THEN (hw[q] = "stop" /\ hok[q] /\ xlt[q] # xnt[q])   \* in push, failed comes only from BAD_LEN
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

<1>Q79TVY04iCAi2wxu.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>Q79TVY04iCAi2wxu, Sizes, Location, Design, <1>FAhRqWhWMg74cq, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1621_PdRPPdPAgg_PExpose


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

<1>oItEBPvm4xMyvmQnAt.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE RP_RegPrelude
<2> HIDE DEF PExpose, RP_RegPrelude, RP_Posted, K2, K3, CoreTypeOK
<2>old. K2 /\ K3
 BY ONLY <1>oItEBPvm4xMyvmQnAt, V21_Inv_K2, V21_Inv_K3, Sizes, Location, Design, SMTT(5)
<2>types. nx \in 1..(MX+1) /\ xsrc \in [Xids -> 0..NP]
 BY ONLY <1>oItEBPvm4xMyvmQnAt, V22_T_nx, V22_T_xsrc, SMTT(5)
<2>effect. nx<=MX /\ xsrc'=[xsrc EXCEPT ![nx]=rpg[i][r]] /\ UNCHANGED iv
 BY ONLY <1>oItEBPvm4xMyvmQnAt, ZenonT(5) DEF PExpose
<2>fresh_id. nx \in Xids
 BY ONLY <2>types, <2>effect, SMTT(5) DEF Xids
<2>fresh. iv[nx]="none"
 BY ONLY <2>old, <2>fresh_id, <2>types, SMTT(5) DEF K2
<2>reg. \A y \in Xids : iv[y]="reg" => xk[y]="wr"
 BY ONLY <2>old, SMTT(5) DEF K3
<2>each. ASSUME NEW y \in Xids, iv'[y]="reg"
 PROVE xk[y]="wr" /\ (RP_Posted(y) \/ (iv[y]="reg" /\ xsrc'[y]=xsrc[y]))
 <3>apart. y # nx /\ iv[y]="reg" /\ xk[y]="wr"
  BY ONLY <2>each, <2>fresh, <2>reg, <2>effect, SMTT(5)
 <3>frame. xsrc'[y]=xsrc[y]
  BY ONLY <2>each, <3>apart, <2>effect, <2>types, SMTT(5)
 <3>qed. QED BY ONLY <3>apart, <3>frame, SMTT(5)
<2>qed. QED BY ONLY <2>each, SMTT(5) DEF RP_RegPrelude

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

<1>IBl04sqx8asAwVJT9rUNW.        
 ASSUME PinInv, B2, NEW x \in Xids, xsrcS[x] # {}
 PROVE ~RP_Posted(x)
<2> USE ONLY <1>IBl04sqx8asAwVJT9rUNW, Sizes, Location, Design
<2>1. SI4 BY V21_Inv_P_SI4, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, SMTT(10), Location, Design DEF SI4, RP_Posted, Pages, Sizes, Location, Design

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
<2> HIDE DEF SFollow, RP_SFollowEffect, STypeOK, CoreTypeOK, SI4, SI5, V22_FQ2, V22_FQuarantine, RP2_SI5Q
<2>old. SI4 /\ SI5
 BY ONLY <1>DCepNdVmjsMeB, V21_Inv_P_SI4, V21_Inv_P_SI5, Sizes, Location, Design, SMTT(5) DEF P_SI4, P_SI5
<2>types. squar \subseteq Xids \X SPages /\ xsrcS \in [Xids -> SUBSET SPages] /\ nx \in 1..(MX+1)
 BY ONLY <1>DCepNdVmjsMeB, V22_T_squar, V22_T_xsrcS, V22_T_nx, SMTT(5)
<2>effect. squar'=V22_FQ2
 BY ONLY <1>DCepNdVmjsMeB, V22_SF_Squar, SMTT(5)
<2>static. UNCHANGED skey
 BY ONLY <1>DCepNdVmjsMeB, V22_SF_Static, SMTT(5)
<2>snapshot. RP_QSnapshot'
 BY ONLY <1>DCepNdVmjsMeB, <1>lfr647sex40IaADeU2, Sizes, Location, Design, SMTT(5)
<2>each. ASSUME NEW h \in squar'
 PROVE h[1]<nx' /\ h[2] \in xsrcS'[h[1]] /\ spst'[h[2]]="shared" /\ skey'[h[2]]=STok(xr'[h[1]],xg'[h[1]]) /\ iv'[h[1]] # "reg"
 <3>origin. h \in squar \/ (h \in Xids \X SPages /\ V22_FQuarantine(h[1]) /\ h[2] \in xsrcS[h[1]])
  <4>old_pair. CASE h \in squar
   BY ONLY <4>old_pair, SMTT(5)
  <4>new_pair. CASE h \notin squar
   <5>pick_x. PICK x \in Xids : V22_FQuarantine(x) /\ (\E p \in xsrcS[x] : h = <<x,p>>)
    BY ONLY <2>each, <4>new_pair, <2>effect, SMTT(5) DEF V22_FQ2
   <5>pick_p. PICK p \in xsrcS[x] : h = <<x,p>>
    BY ONLY <5>pick_x, ZenonT(5)
   <5>ptype. p \in SPages
    BY ONLY <2>types, <5>pick_x, <5>pick_p, SMTT(5)
   <5>qed. QED BY ONLY <5>pick_x, <5>pick_p, <5>ptype, SMTT(5)
  <4>qed. QED BY ONLY <4>old_pair, <4>new_pair, SMTT(5)
 <3>before. h[1] \in Xids /\ h[2] \in SPages /\ h[1]<nx /\ h[2] \in xsrcS[h[1]] /\ spst[h[2]]="shared" /\ skey[h[2]]=STok(xr[h[1]],xg[h[1]])
  BY ONLY <2>old, <2>types, <3>origin, SMTT(5) DEF SI4, SI5, V22_FQuarantine
 <3>not_posted. ~RP_Posted(h[1])
  BY ONLY <1>DCepNdVmjsMeB, <3>before, <1>IBl04sqx8asAwVJT9rUNW, Sizes, Location, Design, SMTT(5)
 <3>frame. UNCHANGED <<iv[h[1]],xr[h[1]],xg[h[1]],xsrc[h[1]],xk[h[1]]>>
  BY ONLY <1>DCepNdVmjsMeB, <3>before, <3>not_posted, ZenonT(5) DEF RP2_UnpostedFrame
 <3>not_reg. iv'[h[1]] # "reg"
  <4>old_pair. CASE h \in squar
   BY ONLY <4>old_pair, <2>old, <3>frame, SMTT(5) DEF SI5
  <4>new_pair. CASE h \notin squar
   BY ONLY <1>DCepNdVmjsMeB, <4>new_pair, <3>origin, <3>frame, SMTT(5) DEF V22_FQuarantine, RP_RegPrelude, RP_RegSourceSafe
  <4>qed. QED BY ONLY <4>old_pair, <4>new_pair, SMTT(5)
 <3>bound. h[1]<nx'
  BY ONLY <1>DCepNdVmjsMeB, <2>types, <3>before, SMTT(5) DEF Xids
 <3>shared. spst'[h[2]]="shared"
  BY ONLY <1>DCepNdVmjsMeB, <2>old, <3>before, <1>Ua3eOhQVTzEuP0Q, Sizes, Location, Design, SMTT(5)
 <3>qed. QED BY ONLY <2>each, <2>snapshot, <2>static, <3>before, <3>frame, <3>not_reg, <3>bound, <3>shared, SMTT(5) DEF RP_QSnapshot
<2>qed. QED BY ONLY <2>each, SMTT(5) DEF RP2_SI5Q

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


<1>o0dg9VutBjB65H7f3n99.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow, B2
 PROVE RP2_PrivatePhaseStep
<2> USE ONLY <1>o0dg9VutBjB65H7f3n99, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>o0dg9VutBjB65H7f3n99, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. SSendReady(i,r)
 BY Design, SMTT(10), Sizes, Location DEF PExpose, SendReady, Sizes, Location, Design
<2>3. smap[i][r]=0 \/ spst[smap[i][r]]="shared"
 BY <2>2, Design, SMTT(10), Sizes, Location DEF SSendReady, Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, Design, SMTT(10), Location DEF RP2_PrivatePhaseStep, Active, SPages, Inst, PInst, NL, EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xEKhwtCInUXo2gjm33JGZ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE RP2_StoppedHeldBack
<2> USE ONLY <1>xEKhwtCInUXo2gjm33JGZ, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>xEKhwtCInUXo2gjm33JGZ, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>2. \A q \in Pages : Loc(q) \in Int
 BY Location, Sizes, SMTT(10), Design DEF KPages, Inst, NL, Sizes, Location, Design
<2>3. rpg[i][r] \in Pages /\ Loc(rpg[i][r])=i /\ IsP(i)
 BY Sizes, Design, SMTT(10), V21_Inv_K8, Location DEF K8, Active, PExpose, SendReady, Sizes, Location, Design
<2>4. RP2_DHeldBack
 BY <2>1, <2>2, <2>3, Sizes, Design, SMTT(10), Location DEF RP2_DHeldBack, IsP, IsD, NL, EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>5. K2 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>55. nx \in 1..(MX+1) /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 /\ xr \in [Xids -> 0..NR] /\ xg \in [Xids -> 0..MG] /\ xdst \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>xEKhwtCInUXo2gjm33JGZ, V22_T_hw, V22_T_nx, V22_T_xdst, V22_T_xg, V22_T_xr, SMTT(5)

<2>6. nx \in Xids /\ hw[nx]="none"
 BY <2>5, <2>55, Sizes, SMTT(10), Location, Design DEF PExpose, K2, Xids, Sizes, Location, Design
<2>7. QED BY <2>1, <2>4, <2>55, <2>6, Design, Sizes, SMTT(10), Location DEF RP2_StoppedHeldBack, RP2_DHeldBack, Held, PExpose, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>e93Y74nS4ZEB.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE P_SI5'
<2> USE ONLY <1>e93Y74nS4ZEB, Sizes, Location, Design
<2>1. RP_RegSourceSafe BY <1>V9sVgPYhuNoep, <1>JVmwBUr8JdLjl, <1>w3rSi9XIkrLs7, <1>mfykL8whsaWQs, <1>yx0nKNPJxas2jO060zO7, <1>YmYs2za0y8hVG, <1>NU8zGD7bQ5u9BXIjl, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 => RP2_PrivatePhaseStep BY <1>o0dg9VutBjB65H7f3n99, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>j4RKPg9jdfM4wkcoZMxYW, <1>oItEBPvm4xMyvmQnAt, <1>xEKhwtCInUXo2gjm33JGZ,
 <1>XrmgB1IfP8VN9H4WT, <1>YmYs2za0y8hVG, <1>nwtTavMq8af03RrXUlAK6g, <1>T94f38JZrxOV, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1856_PdRPR2PublishSI5_PExpose


<1> QED BY <1>e93Y74nS4ZEB, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PExpose_01_02 SHA 07c5360b128394ba1eb0830b23d90643b12d3a749dd94560830e7686c3a60351
USE DEF AuxType_027d8d9d83cf40b0, AuxType_0cd814f5e0dc64c0, V21_Inv_K10, V21_Inv_K11, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable
HIDE DEF Part_PExpose_01_01, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_QuarNoReg, V21_Inv_STypeOK, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Status, V22_T_iv, V22_T_nx, V22_T_pgn, V22_T_pr, V22_T_pst, V22_T_rg, V22_T_squar, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xsrcS, V22_T_xst
THEOREM Part_PExpose_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE (TypInv)' /\ (K10)' /\ (K4)' /\ (K11)' /\ (SealOnlyLanded)'
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


           RP_NoNewStop == \A x \in Xids : hw[x] \in {"fly","issued"} => hw'[x] # "stop"


           RP_DReadFrame == \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} =>
            ph[j][r] \in {"run","ovl"} /\ rpg'[j][r]=rpg[j][r]


<1> HIDE DEF AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, RP_NoNewStop, RP_DReadFrame

<1>s12kzN51xWp6X.        
 ASSUME PinInv, SFollow
 PROVE STypeOK'
 BY ONLY <1>s12kzN51xWp6X, AuxType_027d8d9d83cf40b0, Sizes, Location, Design DEF Sizes, Location, Design

<1>tFEZaVYyNmzlIQiQc.          
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE CoreTypeOK'
 BY ONLY <1>tFEZaVYyNmzlIQiQc, AuxType_0cd814f5e0dc64c0, Sizes, Location, Design DEF Sizes, Location, Design

<1>DYuQhPQWbOte6lZ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE TypInv'
<2> USE ONLY <1>DYuQhPQWbOte6lZ, Sizes, Location, Design
<2>1. CoreTypeOK' BY <1>tFEZaVYyNmzlIQiQc, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK' BY <1>s12kzN51xWp6X, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF TypInv, Sizes, Location, Design


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>Ih1ajIm6Hk.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpose(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xdst>>
  BY ONLY <1>Ih1ajIm6Hk, Sizes, Location, Design, ZenonT(5) DEF PExpose, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1599_PdRPPP_PdPExposeFrames

\* T2M-SCOPE R2M1600_PdRPPP_PdCell_PExpose_K17

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

<1>Xw0pIkEX.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE K10'
<2> USE ONLY <1>Xw0pIkEX, Sizes, Location, Design
 <2>1. K10 /\ SHJS BY <1>UwwC5LVwQr, V21_Inv_K10, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. UNCHANGED <<hok,hw,pgn,pr,pst,ptl,rg,xdst>> BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. SUFFICES ASSUME NEW y \in Xids, y < nx', xdst'[y] \in Pages,
   OwnedBy(xdst[y],xr[y],xg[y])',
   ~(ph'[Loc(xdst'[y])][xr'[y]] \in {"run","ovl"} /\ rg'[Loc(xdst'[y])][xr'[y]] = xg'[y])
  PROVE ptl'[xdst'[y]] = IF hw'[y] = "stop" /\ hok'[y] THEN xlt'[y] ELSE 0
  BY SMTT(5), Sizes, Location, Design DEF K10, Sizes, Location, Design
 <2>4. y < nx
  BY <2>1, <2>3, <1>ZdV92Gb, <1>xC8kiZQuzgOmmvX, Sizes, SMTT(5), Location, Design DEF SHJS, Xids, Pages, Sizes, Location, Design
 <2>5. xr[y] \in Rq /\ xdst[y] \in Pages /\ Loc(xdst[y]) \in Inst
  BY <2>2, <2>3, <2>4, <1>xbWa623J, <1>jc4Pk2myFy, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>6. QED BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>eTAcW7uqoDSN9Gg, <1>OIfz603b0, SMTT(5), Sizes, Location, Design DEF K10, OwnedBy, Sizes, Location, Design
\* T2M-END R2M1606_PdRPPP_PdE_PExpose_K10

\* T2M-SCOPE R2M1607_PdRPPP_PdE_PExpose_K11

<1>Tbc5QPlk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE K11'
<2> USE ONLY <1>Tbc5QPlk, Sizes, Location, Design
<2>1. K11 /\ K2 /\ dcfPK /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K11, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<ptl,sfly,sled>>
 BY <1>Ih1ajIm6Hk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>tXbUxPjAN, <1>KbDs6OZlcp, <1>RwuD0jsb, <1>MiGwosYWa, <1>ZdV92Gb, <1>SrUXhoss, Design, Sizes, Location, SMTT(5) DEF ExpInst, ExpPage, InitInst, InitPage, K11, K2, dcfPK, SHJS, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1607_PdRPPP_PdE_PExpose_K11

\* T2M-SCOPE R2M1608_PdRPPP_PdE_PExpose_K13

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

<1>xdNI6XKhB.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K4'
  BY ONLY <1>xdNI6XKhB, Sizes, Location, Design, <1>ICCzuYD, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CBxN2AkXkg.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K10'
  BY ONLY <1>CBxN2AkXkg, Sizes, Location, Design, <1>Xw0pIkEX, V21_Inv_K10 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UCzh7JT7mC.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K11'
  BY ONLY <1>UCzh7JT7mC, Sizes, Location, Design, <1>Tbc5QPlk, V21_Inv_K11 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>BsoOldIBMlJorYWeym8sG.        
  BaseSealOnlyLanded /\ UNCHANGED <<hw, pst, ptl, xdst>> => BaseSealOnlyLanded'
  BY SMTT(5), Sizes, Location, Design DEF InFl, NoWriteInto, BaseSealOnlyLanded, Writing, Sizes, Location, Design
\* T2M-END R2M1827_PdRPBPP_PdMsgBase


<1>WInKQmqqKOJdsT.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpose(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xdst>>
  BY ONLY <1>WInKQmqqKOJdsT, Sizes, Location, Design, ZenonT(5) DEF PExpose, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TCKlUZnzYOrvtKhuMbI84PW.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
  PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>TCKlUZnzYOrvtKhuMbI84PW, Sizes, Location, Design
<2>1. BaseSealOnlyLanded /\ UNCHANGED <<hw, pst, ptl, xdst>>
  BY SMTT(5), <1>WInKQmqqKOJdsT, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, ReadOwnLanded, SealOnlyLanded, SendOwnLanded, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>BsoOldIBMlJorYWeym8sG, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1828_PdRPBPP_PdPExposeFrames


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

<1>pBzeCowkclHcXibSG.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>pBzeCowkclHcXibSG, Sizes, Location, Design
<2>1. UNCHANGED xdst BY <1>XrmgB1IfP8VN9H4WT, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xdst' \in [Xids -> 0..NP] 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>pBzeCowkclHcXibSG, <2>1, V22_T_xdst, SMTT(5)

<2>3. QED BY <2>2, <1>GEiwvO5S4Wv9uAOYEb8qtLWYsu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WmiyDdroskIOpYpDypxhqk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE SealOnlyLanded'
 BY ONLY <1>WmiyDdroskIOpYpDypxhqk, Sizes, Location, Design, <1>TCKlUZnzYOrvtKhuMbI84PW, <1>pBzeCowkclHcXibSG DEF SealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M1834_PdRPSafety_PExpose


<1> QED BY <1>DYuQhPQWbOte6lZ, <1>CBxN2AkXkg, <1>xdNI6XKhB, <1>UCzh7JT7mC, <1>WmiyDdroskIOpYpDypxhqk, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PExpose_02_01 SHA 4a4d43e0fc8d8359bc31650d9de00d1d89589c95af4ae8fe93ab79de7eb55ce5
USE DEF P_PagePoolsDisjoint, V21_Inv_HitIdentity, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K7, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNoReg, V21_Inv_STypeOK, V21_SFollowOff, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Status, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rg, V22_T_sfly, V22_T_sled
HIDE DEF AuxType_027d8d9d83cf40b0, AuxType_0cd814f5e0dc64c0, Part_PExpose_01_02, V21_Inv_K10, V21_Inv_K11, V21_Inv_K4, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V22_SF_SharedOrigin, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_rpg
THEOREM Part_PExpose_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE (QuietConservation)' /\ (NoStrayAccess)' /\ (QuarNoReg)' /\ (P_SI1)' /\ (HitIdentity)'
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


           RP_RecordReady == B2 => \A i \in PInst,r \in Rq :
            ph'[i][r] \in {"reg","sent","exp"} => rg'[i][r]=rg[i][r] /\ SSendReady(i,r)


           RP_NoneFrame == \A i \in PInst,r \in Rq : ph'[i][r]="none" => ph[i][r]="none" /\ rg'[i][r]=rg[i][r]

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


<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_T_spst, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, RP_PinFacts, RP_PinKeep, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, RP_RecordReady, RP_NoneFrame, RPNS_TransportNoStray, RPN_T_gen, RPN_T_rt, RPN_T_rp, RPN_T_rd, RPN_T_hp, RPN_T_hd, RPN_T_alive, RPN_T_nfail, RPN_T_torn, RPN_T_kpin, RPN_T_kfly, RPN_T_krs, RPN_T_ph, RPN_T_rg, RPN_T_rpg, RPN_T_rpe, RPN_T_rx, RPN_T_rhit, RPN_T_pst, RPN_T_pr, RPN_T_pgn, RPN_T_plt, RPN_T_ptl, RPN_T_pvis, RPN_T_led, RPN_T_sfly, RPN_T_sled, RPN_T_prefc, RPN_T_pqp, RPN_T_xr, RPN_T_xg, RPN_T_xk, RPN_T_xp, RPN_T_xd, RPN_T_xsrc, RPN_T_xdst, RPN_T_xnt, RPN_T_hw, RPN_T_hok, RPN_T_iv, RPN_T_xst, RPN_T_xlt, RPN_T_nx, RPN_T_net, RPN_T_drep, RPN_T_crep, RPN_T_dsucc, RPN_T_gbad, RPN_Types, RPN_BK8At

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


<1>uA3WqSbIQGcGz0.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>uA3WqSbIQGcGz0, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PMDi8Vu9CKhkh13PFUlwD6TrGOD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>PMDi8Vu9CKhkh13PFUlwD6TrGOD, Sizes, Location, Design, <1>AnajBeZS7htcLkTpZ8C91mxOHTa DEF Sizes, Location, Design

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

<1>IKT6ahFHlPOIGVVb76i.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE HitIdentity'
 BY ONLY <1>IKT6ahFHlPOIGVVb76i, Sizes, Location, Design, <1>nwtTavMq8af03RrXUlAK6g, <1>UbRyVd7pIbH8AblyNEO DEF Sizes, Location, Design
\* T2M-END R2M1422_PdRPShared_PExpose


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

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>Ih1ajIm6Hk.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpose(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xdst>>
  BY ONLY <1>Ih1ajIm6Hk, Sizes, Location, Design, ZenonT(5) DEF PExpose, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1599_PdRPPP_PdPExposeFrames

\* T2M-SCOPE R2M1600_PdRPPP_PdCell_PExpose_K17

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


<1>FqDCj2wrwD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A q \in Pages : IsD(Loc(q)) => led'[q] = led[q]
 BY ONLY <1>FqDCj2wrwD, Sizes, Location, Design, <1>tXbUxPjAN, <1>KbDs6OZlcp, <1>SrUXhoss, Sizes, SMTT(5) DEF IsP, IsD, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1605_PdRPPP_PdEExposeTransfers

\* T2M-SCOPE R2M1606_PdRPPP_PdE_PExpose_K10
\* T2M-BODY R2M1606_PdRPPP_PdE_PExpose_K10
\* T2M-LOCAL-VISIBILITY

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

<1>mr90hd8Kh.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K7'
  BY ONLY <1>mr90hd8Kh, Sizes, Location, Design, <1>hcEaTJ6, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oazR9gPz87.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE K16'
  BY ONLY <1>oazR9gPz87, Sizes, Location, Design, <1>coHSaphU, V21_Inv_K16 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>y9b7PpvDpbqubPaK.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>y9b7PpvDpbqubPaK, Sizes, Location, Design, <1>FAhRqWhWMg74cq, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1621_PdRPPdPAgg_PExpose


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

<1>DEgREjynmLY.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE P_SI1'
 BY ONLY <1>DEgREjynmLY, Sizes, Location, Design, <1>qB39FMP124WaPnid5gQg1, <1>nwtTavMq8af03RrXUlAK6g, <1>uA3WqSbIQGcGz0, <1>o0ug5dmdGVA DEF Sizes, Location, Design
\* T2M-END R2M1796_PdRPSI1_PExpose


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


<1>Sc5B8pDcpfhxLLxmsZXn.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE RP_PT_pst'
<2> USE ONLY <1>Sc5B8pDcpfhxLLxmsZXn, Sizes, Location, Design
<2>1. RP_PT_pst BY <1>dlRLZLJP8YIdC37, Sizes, Location, Design DEF RP_PageTypes, Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_PT_pst, EvidenceAt, PEnd, PExpose, PageTo, SendReady, ghV, instV, kV, recV, rtV, xV, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, AfterEv, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>moXH0mjoJ4sDnKlBxkEztzUgf.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE QuietConservation'
 BY ONLY <1>moXH0mjoJ4sDnKlBxkEztzUgf, Sizes, Location, Design, <1>qB39FMP124WaPnid5gQg1, <1>DEgREjynmLY, <1>PMDi8Vu9CKhkh13PFUlwD6TrGOD, <1>mr90hd8Kh, <1>oazR9gPz87, <1>Sc5B8pDcpfhxLLxmsZXn, <1>eLjdrc1PhqLC DEF Sizes, Location, Design
\* T2M-END R2M1797_PdRPQuiet_PExpose


<1>xefsaV8GL9Rd3I.         TypInv => RPN_Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, RPN_Types, RPN_T_gen, RPN_T_rt, RPN_T_rp, RPN_T_rd, RPN_T_hp, RPN_T_hd, RPN_T_alive, RPN_T_nfail, RPN_T_torn, RPN_T_kpin, RPN_T_kfly, RPN_T_krs, RPN_T_ph, RPN_T_rg, RPN_T_rpg, RPN_T_rpe, RPN_T_rx, RPN_T_rhit, RPN_T_pst, RPN_T_pr, RPN_T_pgn, RPN_T_plt, RPN_T_ptl, RPN_T_pvis, RPN_T_led, RPN_T_sfly, RPN_T_sled, RPN_T_prefc, RPN_T_pqp, RPN_T_xr, RPN_T_xg, RPN_T_xk, RPN_T_xp, RPN_T_xd, RPN_T_xsrc, RPN_T_xdst, RPN_T_xnt, RPN_T_hw, RPN_T_hok, RPN_T_iv, RPN_T_xst, RPN_T_xlt, RPN_T_nx, RPN_T_net, RPN_T_drep, RPN_T_crep, RPN_T_dsucc, RPN_T_gbad, Sizes, Location, Design
\* T2M-END R2M2084_PdRPNPP_PdProofBase


<1>BOF4qLjmO.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE RPN_BK8At(i,r)
  BY ONLY <1>BOF4qLjmO, Sizes, Location, Design DEF K8, RPN_BK8At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ObOgm6OmqbZQwj.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpose(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xdst>>
  BY ONLY <1>ObOgm6OmqbZQwj, Sizes, Location, Design, ZenonT(5) DEF PExpose, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M2127_PdRPNPP_PdPExposeFrames


<1>ZrzFBdVBQD0tQ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE Mode = "pull" /\ IsP(i) /\ ph[i][r] = "ready" /\ nx <= MX /\ nx \in Xids
<2> USE ONLY <1>ZrzFBdVBQD0tQ, Sizes, Location, Design
 <2>1. RPN_T_nx BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, Sizes, SMTT(5), Location DEF PExpose, SendReady, RPN_T_nx, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fyNCcTPa2ESb0J.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ hp[r][rg[i][r]] = i /\ hd[r][rg[i][r]] = rpe[i][r]
       /\ led[rpg[i][r]] = {} /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
       /\ rx[i][r] = 0 /\ plt[rpg[i][r]] = ptl[rpg[i][r]] /\ ptl[rpg[i][r]] \in PLens(r,rg[i][r])
       /\ LtOf(i,r) = ptl[rpg[i][r]]
<2> USE ONLY <1>fyNCcTPa2ESb0J, Sizes, Location, Design
 <2>1. K8 /\ K1 /\ ph[i][r] = "ready" /\ IsP(i)
  BY <1>ZrzFBdVBQD0tQ, V21_Inv_K1, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. RPN_BK8At(i,r) BY <2>1, <1>BOF4qLjmO, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>2, <2>1, SMTT(5), Sizes, Location, Design DEF RPN_BK8At, Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, SMTT(5), Sizes, Location, Design DEF RPN_BK8At, K1, Active, OwnedBy, LtOf, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jd9kioFnjju.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xr'[y] = IF y=nx THEN r ELSE xr[y]
<2> USE ONLY <1>jd9kioFnjju, Sizes, Location, Design
 <2>1. RPN_T_xr BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, RPN_T_xr, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jLrSn9kXpX8.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xg'[y] = IF y=nx THEN rg[i][r] ELSE xg[y]
<2> USE ONLY <1>jLrSn9kXpX8, Sizes, Location, Design
 <2>1. RPN_T_xg BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, RPN_T_xg, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WAuA9lLcsZH0p.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE \A y \in Xids : xsrc'[y] = IF y=nx THEN rpg[i][r] ELSE xsrc[y]
<2> USE ONLY <1>WAuA9lLcsZH0p, Sizes, Location, Design
 <2>1. RPN_T_xsrc BY <1>xefsaV8GL9Rd3I, V21_Inv_TypeOK, Sizes, Location, Design DEF RPN_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF PExpose, RPN_T_xsrc, Sizes, Location, Design
\* T2M-END R2M2128_PdRPNPP_PdEExposeFacts

\* T2M-SCOPE R2M2129_PdRPNPP_PdE_PExpose_NoStrayAccess
\* T2M-BODY R2M2129_PdRPNPP_PdE_PExpose_NoStrayAccess
\* T2M-LOCAL-VISIBILITY

<1>sRQSEtCqQ54Uw9tOUufFlO.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE RPNS_TransportNoStray'
<2> USE ONLY <1>sRQSEtCqQ54Uw9tOUufFlO, Sizes, Location, Design
<2>1. RPNS_TransportNoStray /\ K2 /\ K3 /\ RPN_T_krs
 BY <1>xefsaV8GL9Rd3I, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K3, V21_Inv_NoStrayAccess, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, RPN_Types, BaseSafety, NoStrayAccess, RPNS_TransportNoStray, Sizes, Location, Design
<2>2. UNCHANGED <<hw,kfly,krs,pgn,pr,pst,sfly,xdst>>
 BY <1>ObOgm6OmqbZQwj, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>ZrzFBdVBQD0tQ, <1>fyNCcTPa2ESb0J, <1>jLrSn9kXpX8, <1>jd9kioFnjju, <1>WAuA9lLcsZH0p, Design, Sizes, Location, SMTT(5) DEF CqeHw, ExpInst, ExpPage, Held, InFl, InitInst, InitPage, IsD, K2, K3, KHeld, KSlots, RPNS_TransportNoStray, RPN_T_krs, Writing, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M2129_PdRPNPP_PdE_PExpose_NoStrayAccess


<1>a4KywlCEyPJgTPKWzNJf9.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r), SFollow
 PROVE NoStrayAccess'
<2> USE ONLY <1>a4KywlCEyPJgTPKWzNJf9, Sizes, Location, Design
<2>1. RPNS_TransportNoStray' BY <1>sRQSEtCqQ54Uw9tOUufFlO, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. NoFreeUnderRead' BY <1>pYEkxNAC9r60Hs, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<kfly,kpin,krs>> BY <1>kDJidVXkyu5HBL6pn1r, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. K14 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF NoStrayAccess, RPNS_TransportNoStray, NoFreeUnderRead, K14, Sizes, Location, Design
\* T2M-END R2M2130_PdRPStray_PExpose


<1> QED BY <1>moXH0mjoJ4sDnKlBxkEztzUgf, <1>a4KywlCEyPJgTPKWzNJf9, <1>y9b7PpvDpbqubPaK, <1>DEgREjynmLY, <1>IKT6ahFHlPOIGVVb76i, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF P_PagePoolsDisjoint, Part_PExpose_02_01, V21_Inv_BaseSafety, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNoReg, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rg, V22_T_sfly, V22_T_sled, V22_T_xdst
====
