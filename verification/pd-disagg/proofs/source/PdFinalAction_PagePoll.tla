---- MODULE PdFinalAction_PagePoll ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_d3dd8b4090431094, PdFinalAuxType_05b61b8856908043, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PagePoll_01

\* Complete original body PdFinalPart_PagePoll_02_02 SHA 7c4620717ccd1899c873db1eb6d760e14a83ef44a12d6944d487166deedc5299
HIDE DEF AuxType_05b61b8856908043, AuxType_d3dd8b4090431094, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_PagePoll_01_01, Part_PagePoll_01_02, Part_PagePoll_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_K6, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI5, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuietConservation, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SquarFrame, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_kfly, V22_T_kpin, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_PagePoll_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE (SI7)' /\ (ReadOwnLanded)' /\ (SealOnlyLanded)' /\ (K4)' /\ (K5)' /\ (K8)' /\ (K9)' /\ (K10)' /\ (K11)' /\ (K16)' /\ (QuarNeverMapped)' /\ (QuarNoReg)' /\ (P_SI4)' /\ (P_SI6)'
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

           PollFreeA(p,t) == pst[p] = "drain" /\ led[p] = {} /\ sled[p] \ {t} = {} /\ ~KPinned(p)


           PollEffectA(p,t) ==
             /\ t \in sled[p] /\ t \notin sfly[p]
             /\ ~(ph[Loc(p)][t[1]] \in {"pre","run","ovl"} /\ rg[Loc(p)][t[1]] = t[2])
             /\ pst' = [pst EXCEPT ![p] = IF PollFreeA(p,t) THEN "free" ELSE @]
             /\ pr' = [pr EXCEPT ![p] = IF PollFreeA(p,t) THEN 0 ELSE @]
             /\ pgn' = [pgn EXCEPT ![p] = IF PollFreeA(p,t) THEN 0 ELSE @]
             /\ plt' = [plt EXCEPT ![p] = IF PollFreeA(p,t) THEN 0 ELSE @]
             /\ sled' = [sled EXCEPT ![p] = @ \ {t}]

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

           RPB_PollFreeA(p,t) == pst[p] = "drain" /\ led[p] = {} /\ sled[p] \ {t} = {} /\ ~KPinned(p)


           RPB_PollEffectA(p,t) ==
             /\ t \in sled[p] /\ t \notin sfly[p]
             /\ ~(ph[Loc(p)][t[1]] \in {"pre","run","ovl"} /\ rg[Loc(p)][t[1]] = t[2])
             /\ pst' = [pst EXCEPT ![p] = IF RPB_PollFreeA(p,t) THEN "free" ELSE @]
             /\ pr' = [pr EXCEPT ![p] = IF RPB_PollFreeA(p,t) THEN 0 ELSE @]
             /\ pgn' = [pgn EXCEPT ![p] = IF RPB_PollFreeA(p,t) THEN 0 ELSE @]
             /\ plt' = [plt EXCEPT ![p] = IF RPB_PollFreeA(p,t) THEN 0 ELSE @]
             /\ sled' = [sled EXCEPT ![p] = @ \ {t}]

           \* T2M-LOCAL-VISIBILITY

           RP_RegPrelude == \A x \in Xids : iv'[x]="reg" =>
            xk[x]="wr" /\ (RP_Posted(x) \/ (iv[x]="reg" /\ xsrc'[x]=xsrc[x]))


           RP_RegSourceSafe == \A x \in Xids : iv'[x]="reg" => xsrc'[x] \in Pages /\ pst'[xsrc'[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

           RP2_TransportFrame == UNCHANGED <<xsrc,xr,xg,xp,xk,xst,nx>>


           RP2_EntryProgress == \A x \in Xids : iv[x] \in {"reg","posted","failret"} => iv'[x] \in {"reg","posted","failret","cqe","nopost"}


           RP2_HardwareProgress ==
            /\ \A x \in Xids : hw'[x]="fly" => (hw[x]="fly" \/ iv[x]="reg") /\ ~RP_Close(x)
            /\ \A x \in Xids : hw'[x] \in {"issued","stop"} => hw'[x]=hw[x]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_GenMonotone, RP_KPhaseProgress, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, PollFreeA, PollEffectA, RP_NoNewStop, RP_DReadFrame, RP_SharedRead, RPB_T_gen, RPB_T_rt, RPB_T_rp, RPB_T_rd, RPB_T_hp, RPB_T_hd, RPB_T_alive, RPB_T_nfail, RPB_T_torn, RPB_T_kpin, RPB_T_kfly, RPB_T_krs, RPB_T_ph, RPB_T_rg, RPB_T_rpg, RPB_T_rpe, RPB_T_rx, RPB_T_rhit, RPB_T_pst, RPB_T_pr, RPB_T_pgn, RPB_T_plt, RPB_T_ptl, RPB_T_pvis, RPB_T_led, RPB_T_sfly, RPB_T_sled, RPB_T_prefc, RPB_T_pqp, RPB_T_xr, RPB_T_xg, RPB_T_xk, RPB_T_xp, RPB_T_xd, RPB_T_xsrc, RPB_T_xdst, RPB_T_xnt, RPB_T_hw, RPB_T_hok, RPB_T_iv, RPB_T_xst, RPB_T_xlt, RPB_T_nx, RPB_T_net, RPB_T_drep, RPB_T_crep, RPB_T_dsucc, RPB_T_gbad, RPB_Types, RPB_PollFreeA, RPB_PollEffectA, RP_RegPrelude, RP_RegSourceSafe, RP2_TransportFrame, RP2_EntryProgress, RP2_HardwareProgress

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

<1>OI8KhdE3E6diGHP.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>OI8KhdE3E6diGHP, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PagePoll, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UYckTev6UJGvKfIiCFDE4ek.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>UYckTev6UJGvKfIiCFDE4ek, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>UYckTev6UJGvKfIiCFDE4ek, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, PEnd, PagePoll, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

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


<1>wFY49dvtWzBlYfkwc3hU.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE RP_GenMonotone /\ RP_KPhaseProgress
<2> USE ONLY <1>wFY49dvtWzBlYfkwc3hU, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>wFY49dvtWzBlYfkwc3hU, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_GenMonotone, RP_KPhaseProgress, PInst, Inst, NL, EvidenceAt, PEnd, PagePoll, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>x2RKV1EGQqVh.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE P_SI6'
 BY ONLY <1>x2RKV1EGQqVh, Sizes, Location, Design, <1>OI8KhdE3E6diGHP, <1>UYckTev6UJGvKfIiCFDE4ek, <1>wFY49dvtWzBlYfkwc3hU, <1>sP1gMFHuwAB DEF Sizes, Location, Design
\* T2M-END R2M1443_PdRPExtra_PagePoll


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>ztnr6iAa3fuRil.        
  ASSUME NEW x \in Xids, SHJS, K2, InFl(x)
  PROVE x < nx
  BY ONLY <1>ztnr6iAa3fuRil, Sizes, Location, Design, SMT DEF SHJS, Xids, K2, InFl, Sizes, Location, Design



<1>msaCiIFaNrC6o7cs.        
  ASSUME NEW x \in Xids, SHJS, K1, K2, K3, InFl(x)
  PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>msaCiIFaNrC6o7cs, Sizes, Location, Design
<2>1. x < nx
  BY <1>ztnr6iAa3fuRil, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMT, Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M1152_PdRDLegacy_PP_PdDataLemmas


<1>ImL4YAUizwx.        
  ASSUME NEW x \in Xids, PinInv, InFl(x)
  PROVE xdst[x] \in Pages /\ x \in led[xdst[x]]
<2> USE ONLY <1>ImL4YAUizwx, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. x < nx /\ xdst[x] \in Pages
  BY <2>1, <1>ztnr6iAa3fuRil, <1>msaCiIFaNrC6o7cs, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K2, K3, K4, InFl, ExpPage, InitPage, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>jgHIH5Q17K7.        
  ASSUME NEW x \in Xids, PinInv, hw[x] = "fly"
  PROVE xsrc[x] \in Pages /\ Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>jgHIH5Q17K7, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, <1>ztnr6iAa3fuRil, SMTT(10), Sizes, Location, Design DEF InFl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M1153_PdRDLegacy_PP_PdDDataA


<1>W8x9RPsXDtat.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p)
  PROVE /\ \E t \in sled[p] : PollEffectA(p,t)
        /\ UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
<2> USE ONLY <1>W8x9RPsXDtat, Sizes, Location, Design
<2>1. K7 /\ OyyWS /\ dcfPK /\ h9WLgd /\ p1YmMe5 /\ vRZWI /\ IwCp /\ vS7em /\ bFwlN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(10), Sizes, Location DEF PagePoll, PageTo, AfterEv, PinBlocks, PollFreeA, PollEffectA, K7, OyyWS, dcfPK, h9WLgd, p1YmMe5, vRZWI, IwCp, vS7em, bFwlN, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TWJzdO91hp.        
  ASSUME NEW p \in Pages, NEW t \in sled[p], PinInv, PollEffectA(p,t)
  PROVE \A i \in Inst, r \in Rq :
        (ph[i][r] \in {"pre","run","ovl"} /\ rpg[i][r] = p) => Tag(r,rg[i][r]) # t
<2> USE ONLY <1>TWJzdO91hp, Sizes, Location, Design
<2>1. K8
  BY SMTT(10), V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A i \in Inst, r \in Rq :
      (ph[i][r] \in {"pre","run","ovl"} /\ rpg[i][r] = p) => Loc(p) = i
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, Active, Sizes, Location, Design
<2>3. QED
  BY <2>2, SMTT(10), Sizes, Location, Design DEF PollEffectA, Tag, Sizes, Location, Design
\* T2M-END R2M1777_PdRPPP_PdPagePollEffectsA


<1>Pz6TSTi4.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p)
  PROVE K4'
<2> USE ONLY <1>Pz6TSTi4, Sizes, Location, Design
<2>1. K4 /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K4, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ \E t \in sled[p] : PollEffectA(p,t)
        /\ UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
  BY <1>W8x9RPsXDtat, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>TWJzdO91hp, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF DInst, ExpPage, InitPage, Inst, IsD, IsP, K4, KPinned, NL, PollEffectA, PollFreeA, h9WLgd, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aNwSfEZ9.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p)
  PROVE K5'
<2> USE ONLY <1>aNwSfEZ9, Sizes, Location, Design
<2>1. K5 /\ vS7em /\ IwCp /\ OyyWS /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ \E t \in sled[p] : PollEffectA(p,t)
        /\ UNCHANGED <<led, xg, xr>>
  BY <1>W8x9RPsXDtat, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>TWJzdO91hp, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K5, KPinned, NL, OwnedBy, PollEffectA, PollFreeA, vS7em, IwCp, OyyWS, h9WLgd, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UCmq3B6R.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p)
  PROVE K8'
<2> USE ONLY <1>UCmq3B6R, Sizes, Location, Design
<2>1. K8 /\ K9 /\ vS7em /\ bFwlN /\ IwCp /\ OyyWS /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ \E t \in sled[p] : PollEffectA(p,t)
        /\ UNCHANGED <<drep, gen, hd, hp, iv, led, nx, ph, ptl, pvis, rg, rhit, rpe, rpg, rx, sfly, xdst, xg, xlt, xr, xsrc>>
  BY <1>W8x9RPsXDtat, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>TWJzdO91hp, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF Active, DInst, Inst, IsD, IsP, K8, K9, KPinned, NL, OwnedBy, PollEffectA, PollFreeA, vS7em, bFwlN, IwCp, OyyWS, h9WLgd, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RPvDSI7h.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p)
  PROVE K9'
<2> USE ONLY <1>RPvDSI7h, Sizes, Location, Design
<2>1. K9 /\ K8 /\ vS7em /\ bFwlN /\ IwCp /\ OyyWS /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ \E t \in sled[p] : PollEffectA(p,t)
        /\ UNCHANGED <<drep, gen, hd, hp, iv, led, nx, ph, ptl, pvis, rg, rhit, rpe, rpg, rx, sfly, xdst, xg, xlt, xr, xsrc>>
  BY <1>W8x9RPsXDtat, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>TWJzdO91hp, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF Active, DInst, Inst, IsD, IsP, K8, K9, KPinned, NL, OwnedBy, PollEffectA, PollFreeA, vS7em, bFwlN, IwCp, OyyWS, h9WLgd, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HyzeU8ilI.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p)
  PROVE K10'
<2> USE ONLY <1>HyzeU8ilI, Sizes, Location, Design
<2>1. K10 /\ vS7em /\ IwCp /\ OyyWS /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K10, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ \E t \in sled[p] : PollEffectA(p,t)
        /\ UNCHANGED <<hok, hw, nx, ph, ptl, rg, xdst, xg, xlt, xr>>
  BY <1>W8x9RPsXDtat, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>TWJzdO91hp, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K10, KPinned, NL, OwnedBy, PollEffectA, PollFreeA, vS7em, IwCp, OyyWS, h9WLgd, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gUUa2pP7r.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p)
  PROVE K11'
<2> USE ONLY <1>gUUa2pP7r, Sizes, Location, Design
<2>1. K11 /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K11, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ \E t \in sled[p] : PollEffectA(p,t)
        /\ UNCHANGED <<led, nx, ptl, sfly, xlt, xsrc>>
  BY <1>W8x9RPsXDtat, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>TWJzdO91hp, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K11, KPinned, NL, PollEffectA, PollFreeA, h9WLgd, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>P0SqPzjgn.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p)
  PROVE K16'
<2> USE ONLY <1>P0SqPzjgn, Sizes, Location, Design
<2>1. K16 /\ vS7em /\ bFwlN /\ IwCp /\ OyyWS /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ \E t \in sled[p] : PollEffectA(p,t)
        /\ UNCHANGED <<hw, led, ph, ptl, rg, rpg, sfly, xdst>>
  BY <1>W8x9RPsXDtat, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>TWJzdO91hp, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF DInst, GrownP, InFl, Inst, IsD, IsP, K16, KPinned, NL, NoWriteInto, PollEffectA, PollFreeA, vS7em, bFwlN, IwCp, OyyWS, h9WLgd, Tag, Writing, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>goKGQzJcZaW7ZgGPJdwDy.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>goKGQzJcZaW7ZgGPJdwDy, Sizes, Location, Design
<2>1. QuarNeverMapped /\ K7 /\ vS7em /\ bFwlN /\ IwCp /\ OyyWS /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K7, V21_Inv_QuarNeverMapped, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. /\ \E t \in sled[p] : PollEffectA(p,t)
        /\ UNCHANGED <<gen, kpin, krs, led, ph, pqp, prefc, ptl, rg, rhit, rpg, sfly>>
  BY <1>W8x9RPsXDtat, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>TWJzdO91hp, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF Active, DInst, GrownP, Inst, IsD, IsP, K7, KPinned, Maps, NHits, NL, PollEffectA, PollFreeA, QuarNeverMapped, vS7em, bFwlN, IwCp, OyyWS, h9WLgd, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KVXdvDkC2uLLNxd.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p)
  PROVE QuarNoReg'
<2> USE ONLY <1>KVXdvDkC2uLLNxd, Sizes, Location, Design
<2>1. QuarNoReg /\ OyyWS /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_KStruct, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. /\ \E t \in sled[p] : PollEffectA(p,t)
        /\ UNCHANGED <<iv, led>>
  BY <1>W8x9RPsXDtat, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>TWJzdO91hp, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, KPinned, NL, PollEffectA, PollFreeA, QuarNoReg, OyyWS, h9WLgd, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M1784_PdRPPP_PdPagePollStepsA

\* T2M-SCOPE R2M1785_PdRPPdPAgg_PagePoll
\* T2M-BODY R2M1785_PdRPPdPAgg_PagePoll
\* T2M-LOCAL-VISIBILITY

<1>xoiYDznKuS.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
  PROVE K4'
  BY ONLY <1>xoiYDznKuS, Sizes, Location, Design, <1>Pz6TSTi4, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ljzjoBl5IE.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
  PROVE K5'
  BY ONLY <1>ljzjoBl5IE, Sizes, Location, Design, <1>aNwSfEZ9, V21_Inv_K5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xSLV78iJc7.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
  PROVE K8'
  BY ONLY <1>xSLV78iJc7, Sizes, Location, Design, <1>UCmq3B6R, V21_Inv_K8 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>I5iuhFvuof.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
  PROVE K9'
  BY ONLY <1>I5iuhFvuof, Sizes, Location, Design, <1>RPvDSI7h, V21_Inv_K9 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xDp1wliobXl.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
  PROVE K10'
  BY ONLY <1>xDp1wliobXl, Sizes, Location, Design, <1>HyzeU8ilI, V21_Inv_K10 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dXnFF47550p.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
  PROVE K11'
  BY ONLY <1>dXnFF47550p, Sizes, Location, Design, <1>gUUa2pP7r, V21_Inv_K11 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MgMy4feSV7Z.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
  PROVE K16'
  BY ONLY <1>MgMy4feSV7Z, Sizes, Location, Design, <1>P0SqPzjgn, V21_Inv_K16 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JE67kSt5mpMwZnGY3yTKQaG.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>JE67kSt5mpMwZnGY3yTKQaG, Sizes, Location, Design, <1>goKGQzJcZaW7ZgGPJdwDy, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PvUQbi6guxZ317I1U.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>PvUQbi6guxZ317I1U, Sizes, Location, Design, <1>KVXdvDkC2uLLNxd, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1785_PdRPPdPAgg_PagePoll


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


<1>DIziGTe8a4gABIxSsL.        
  ASSUME NEW x \in Xids, RPB_T_nx, K2, InFl(x)
  PROVE x < nx
  BY ONLY <1>DIziGTe8a4gABIxSsL, Sizes, Location, Design, SMT DEF RPB_T_nx, Xids, K2, InFl, Sizes, Location, Design


<1>J72XCq3Z8HYKSkYvVAkA.        
  ASSUME NEW x \in Xids, RPB_T_nx, K1, K2, K3, InFl(x)
  PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>J72XCq3Z8HYKSkYvVAkA, Sizes, Location, Design
<2>1. x < nx
  BY <1>DIziGTe8a4gABIxSsL, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMT, Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M1963_PdRPBPP_PdDataLemmas

\* T2M-SCOPE R2M1964_PdRPBPP_PdDDataA
\* T2M-BODY R2M1964_PdRPBPP_PdDDataA
\* T2M-LOCAL-VISIBILITY

<1>Pck97ZHPglIDyRd.        
  ASSUME NEW x \in Xids, PinInv, InFl(x)
  PROVE xdst[x] \in Pages /\ x \in led[xdst[x]]
<2> USE ONLY <1>Pck97ZHPglIDyRd, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ RPB_T_nx
  BY <1>IXEagMJyQryQes, SMTT(5), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
<2>2. x < nx /\ xdst[x] \in Pages
  BY <2>1, <1>DIziGTe8a4gABIxSsL, <1>J72XCq3Z8HYKSkYvVAkA, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(5), Sizes, Location DEF K2, K3, K4, InFl, ExpPage, InitPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Xy2mmssxjqBogWO.        
  ASSUME NEW x \in Xids, PinInv, hw[x] = "fly"
  PROVE xsrc[x] \in Pages /\ Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>Xy2mmssxjqBogWO, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ RPB_T_nx
  BY <1>IXEagMJyQryQes, SMTT(5), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, <1>DIziGTe8a4gABIxSsL, SMTT(5), Sizes, Location, Design DEF InFl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(5), Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M1964_PdRPBPP_PdDDataA


<1>k6FyScXRBpGJtzdd.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p)
  PROVE /\ \E t \in sled[p] : RPB_PollEffectA(p,t)
        /\ UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
<2> USE ONLY <1>k6FyScXRBpGJtzdd, Sizes, Location, Design
<2>1. K7 /\ RPB_T_pst /\ RPB_T_led /\ RPB_T_sled /\ RPB_T_prefc /\ RPB_T_pqp /\ RPB_T_pr /\ RPB_T_pgn /\ RPB_T_plt
  BY <1>IXEagMJyQryQes, SMTT(5), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(5), Sizes, Location DEF PagePoll, PageTo, AfterEv, PinBlocks, RPB_PollFreeA, RPB_PollEffectA, K7, RPB_T_pst, RPB_T_led, RPB_T_sled, RPB_T_prefc, RPB_T_pqp, RPB_T_pr, RPB_T_pgn, RPB_T_plt, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TrhjqWXQOC8DmM.        
  ASSUME NEW p \in Pages, NEW t \in sled[p], PinInv, RPB_PollEffectA(p,t)
  PROVE \A i \in Inst, r \in Rq :
        (ph[i][r] \in {"pre","run","ovl"} /\ rpg[i][r] = p) => Tag(r,rg[i][r]) # t
<2> USE ONLY <1>TrhjqWXQOC8DmM, Sizes, Location, Design
<2>1. K8
  BY SMTT(5), V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A i \in Inst, r \in Rq :
      (ph[i][r] \in {"pre","run","ovl"} /\ rpg[i][r] = p) => Loc(p) = i
  BY <2>1, SMTT(5), Sizes, Location, Design DEF K8, Active, Sizes, Location, Design
<2>3. QED
  BY <2>2, SMTT(5), Sizes, Location, Design DEF RPB_PollEffectA, Tag, Sizes, Location, Design
\* T2M-END R2M1965_PdRPBPP_PdPagePollEffectsA


<1>e38l6c52skeRTPGF2qjedwZ.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p)
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>e38l6c52skeRTPGF2qjedwZ, Sizes, Location, Design
<2>1. BaseReadOwnLanded /\ K7 /\ K8 /\ K9 /\ RPB_T_pgn /\ RPB_T_plt /\ RPB_T_pr /\ RPB_T_pst /\ RPB_T_sled
  BY <1>IXEagMJyQryQes, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, RPB_Types, BaseSafety, ReadOwnLanded, SealOnlyLanded, SendOwnLanded, Sizes, Location, Design
<2>2. /\ \E t \in sled[p] : RPB_PollEffectA(p,t)
        /\ UNCHANGED <<drep, gen, hd, hp, hw, iv, kpin, krs, led, nx, ph, pqp, prefc, ptl, pvis, rg, rhit, rpe, rpg, rx, sfly, xdst, xg, xlt, xr, xsrc>>
  BY <1>k6FyScXRBpGJtzdd, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>TrhjqWXQOC8DmM, <1>Pck97ZHPglIDyRd, <1>Xy2mmssxjqBogWO, Design, Location, Sizes, SMTT(5) DEF Active, DInst, GrownP, InFl, Inst, IsD, IsP, K7, K8, K9, KPinned, Maps, NHits, NL, NoWriteInto, OwnedBy, RPB_PollEffectA, RPB_PollFreeA, BaseReadOwnLanded, RPB_T_pgn, RPB_T_plt, RPB_T_pr, RPB_T_pst, RPB_T_sled, Tag, Writing, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TeTX4IbaPZhnzvpSLhuBtz65.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p)
  PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>TeTX4IbaPZhnzvpSLhuBtz65, Sizes, Location, Design
<2>1. BaseSealOnlyLanded /\ RPB_T_pst /\ RPB_T_sled
  BY <1>IXEagMJyQryQes, SMTT(5), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, RPB_Types, BaseSafety, ReadOwnLanded, SealOnlyLanded, SendOwnLanded, Sizes, Location, Design
<2>2. /\ \E t \in sled[p] : RPB_PollEffectA(p,t)
        /\ UNCHANGED <<hw, ptl, xdst>>
  BY <1>k6FyScXRBpGJtzdd, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>TrhjqWXQOC8DmM, <1>Pck97ZHPglIDyRd, <1>Xy2mmssxjqBogWO, Design, Location, Sizes, SMTT(5) DEF DInst, InFl, Inst, IsD, IsP, KPinned, NL, NoWriteInto, RPB_PollEffectA, RPB_PollFreeA, BaseSealOnlyLanded, RPB_T_pst, RPB_T_sled, Tag, Writing, KPages, Sizes, Location, Design
\* T2M-END R2M1973_PdRPBPP_PdPagePollStepsA


<1>Jnfg7RSnWSIiEt9nXJ.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE RP_NoNewStop /\ RP_DReadFrame /\ UNCHANGED xdst
<2> USE ONLY <1>Jnfg7RSnWSIiEt9nXJ, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rpg \in [Inst -> [Rq -> 0..NP]] /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Jnfg7RSnWSIiEt9nXJ, V22_T_hw, V22_T_ph, V22_T_rpg, SMTT(5)

<2>2. K1 /\ K3 BY V21_Inv_K1, V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_NoNewStop, RP_DReadFrame, DInst, PInst, Inst, NL, IsP, IsD, K1, K3, EvidenceAt, PEnd, PagePoll, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hYb2DrzmJJwjVVuuC38.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE RP_SharedRead'
 BY ONLY <1>hYb2DrzmJJwjVVuuC38, Sizes, Location, Design, <1>Jnfg7RSnWSIiEt9nXJ, <1>PtfM7z6NmcjVW9qw5I DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zJKOySAwDOiyAy0J1g.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>zJKOySAwDOiyAy0J1g, Sizes, Location, Design
<2>1. UNCHANGED xdst BY <1>Jnfg7RSnWSIiEt9nXJ, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xdst' \in [Xids -> 0..NP] 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>zJKOySAwDOiyAy0J1g, <2>1, V22_T_xdst, SMTT(5)

<2>3. QED BY <2>2, <1>GEiwvO5S4Wv9uAOYEb8qtLWYsu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vjNavQ398kTr9lr3h5kU6n.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE ReadOwnLanded'
 BY ONLY <1>vjNavQ398kTr9lr3h5kU6n, Sizes, Location, Design, <1>e38l6c52skeRTPGF2qjedwZ, <1>hYb2DrzmJJwjVVuuC38 DEF ReadOwnLanded, RP_SharedRead, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QvXnkZ3nX0TS309ZvUClCGW.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE SealOnlyLanded'
 BY ONLY <1>QvXnkZ3nX0TS309ZvUClCGW, Sizes, Location, Design, <1>TeTX4IbaPZhnzvpSLhuBtz65, <1>zJKOySAwDOiyAy0J1g DEF SealOnlyLanded, Sizes, Location, Design

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


<1>ozX1JyPZagaOWSJZkcK.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE RP_RegPrelude
<2> USE ONLY <1>ozX1JyPZagaOWSJZkcK, Sizes, Location, Design
<2>1. K3
 BY ONLY <1>ozX1JyPZagaOWSJZkcK, V21_Inv_K3, Sizes, Location, Design, SMTT(5)
<2>2. UNCHANGED xsrc /\ (\A y \in Xids : iv'[y]="reg" => iv[y]="reg")
 BY ONLY <1>ozX1JyPZagaOWSJZkcK, SMTT(10) DEF PagePoll, xV
<2>3. \A y \in Xids : iv'[y]="reg" => xk[y]="wr" /\ iv[y]="reg" /\ xsrc'[y]=xsrc[y]
 BY ONLY <2>1, <2>2, SMTT(5) DEF K3
<2>4. QED BY ONLY <2>3, SMTT(5) DEF RP_RegPrelude

\* T2M-LOCAL-VISIBILITY

<1>iHY5jYAZC1TUEj.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE K1'
<2> USE ONLY <1>iHY5jYAZC1TUEj, Sizes, Location, Design
<2>1. K1 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K1, EvidenceAt, PEnd, PagePoll, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>b9IdhAYo9K3FPF.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE K2'
<2> USE ONLY <1>b9IdhAYo9K3FPF, Sizes, Location, Design
<2>1. K2 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K2, InitPage, ExpPage, InitInst, ExpInst, EvidenceAt, PEnd, PagePoll, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WL9iRIWFsAuPyG.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE K3'
<2> USE ONLY <1>WL9iRIWFsAuPyG, Sizes, Location, Design
<2>1. K3 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K3, CqeHw, InFl, EvidenceAt, PEnd, PagePoll, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YNwu57uBEORf9i.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE K4'
 BY ONLY <1>YNwu57uBEORf9i, Sizes, Location, Design, <1>xoiYDznKuS DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k9Jxibf7eaRIboe0mUwp4.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>k9Jxibf7eaRIboe0mUwp4, Sizes, Location, Design, <1>PvUQbi6guxZ317I1U DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RRRPJ32XK4iB8K.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE nx' \in 1..(MX+1)
<2> USE ONLY <1>RRRPJ32XK4iB8K, Sizes, Location, Design
<2>1. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>RRRPJ32XK4iB8K, V22_T_nx, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF Xids, EvidenceAt, PEnd, PagePoll, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WoNLMKunsQrz.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE SI7'
<2> USE ONLY <1>WoNLMKunsQrz, Sizes, Location, Design
<2>1. RP_RegSourceSafe BY <1>iHY5jYAZC1TUEj, <1>b9IdhAYo9K3FPF, <1>WL9iRIWFsAuPyG, <1>YNwu57uBEORf9i, <1>k9Jxibf7eaRIboe0mUwp4, <1>RRRPJ32XK4iB8K, <1>NU8zGD7bQ5u9BXIjl, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>ozX1JyPZagaOWSJZkcK, <1>KvDgRwgd9SE, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1975_PdRPSI7_PagePoll


<1>CZs0zteS9nPA.        
 ASSUME PinInv, SFollow, RP2_TransportFrame, RP2_EntryProgress, RP2_HardwareProgress
 PROVE P_SI4'
<2> USE ONLY <1>CZs0zteS9nPA, Sizes, Location, Design
<2>1. (B2 => SI4 /\ SI7) /\ STypeOK
 BY V21_Inv_P_SI4, V21_Inv_SI7, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>3. CASE B2
 <3>1. UNCHANGED <<xsrcS,xsrcP>> /\ sentry' \subseteq sentry
  BY <2>3, <1>ESBouXiucduyoSgqYf8M, Sizes, Location, Design DEF RP2_TransportFrame, Sizes, Location, Design
 <3>2. RP_SFollowEffect BY <2>3, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A x \in Xids : xprefixOK'[x]=xprefixOK[x]
  BY <3>2, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP2_HardwareProgress, Sizes, Location, Design
 <3>4. ASSUME NEW x \in Xids
        PROVE /\ xsrcS'[x] \cap xsrcP'[x]={}
              /\ Cardinality(xsrcS'[x] \cup xsrcP'[x])<=1
              /\ xsrcP'[x]={}
              /\ (xsrcS'[x] # {} => x<nx' /\ xsrc'[x] \in Pages)
              /\ \A p \in xsrcS'[x] : Loc(p)=xp'[x]
              /\ (x \in sentry' => x<nx' /\ xsrc'[x] \in Pages /\ (IF xk'[x]="wr" THEN iv'[x] \in {"reg","posted","failret"} ELSE xst'[x]="posted"))
              /\ (hw'[x]="fly" => x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar'))
              /\ (x \in sentry' => \A p \in xsrcS'[x] : spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x]))
              /\ (hw'[x] \in {"issued","stop"} => xprefixOK'[x])
  <4>1. x \in sentry' => ~RP_Close(x)
   BY <3>2, <3>4, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_E2, Sizes, Location, Design
  <4>2. hw'[x]="fly" => x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
   BY <2>1, <2>3, <3>4, SMTT(10), Sizes, Location, Design DEF SI4, SI7, RP2_HardwareProgress, Sizes, Location, Design
  <4>3. squar \subseteq squar'
   BY <3>2, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_Q2, Sizes, Location, Design
  <4>4. (hw'[x]="fly" /\ x \in sentry /\ ~RP_Quarantine(x)) => x \in sentry'
   BY <3>2, <3>4, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_E2, RP2_HardwareProgress, Sizes, Location, Design
  <4>5. RP_Quarantine(x) => \A p \in xsrcS[x] : <<x,p>> \in squar'
   BY <2>3, <3>4, <1>KReYXg7MU3qwoztWhw, Sizes, Location, Design DEF Sizes, Location, Design
  <4>6. x \in sentry' => \A p \in xsrcS'[x] : spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x])
   <5>1. ASSUME x \in sentry', NEW p \in xsrcS'[x]
          PROVE spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x])
    <6>1. p \in SPages /\ spst[p]="shared" /\ skey[p]=STok(xr[x],xg[x])
     BY <2>1, <2>3, <3>1, <3>4, <5>1, SMTT(10), Sizes, Location, Design DEF STypeOK, SI4, Sizes, Location, Design
    <6>2. QED BY <2>1, <2>3, <3>2, <6>1, <1>Ua3eOhQVTzEuP0Q, SMTT(10), Sizes, Location, Design DEF RP2_TransportFrame, RP_SFollowEffect, Sizes, Location, Design
   <5>2. QED BY <5>1, Sizes, Location, Design DEF Sizes, Location, Design
  <4>7. QED BY <2>1, <2>3, <3>1, <3>3, <3>4, <4>1, <4>2, <4>3, <4>4, <4>5, <4>6, SMTT(10), Sizes, Location, Design DEF SI4, RP2_TransportFrame, RP2_EntryProgress, RP2_HardwareProgress, RP_Close, Sizes, Location, Design
 <3>5. QED BY <2>3, <3>4, Sizes, Location, Design DEF P_SI4, SI4, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1980_PdRPR2Transport


<1>X27lmMRPOxExgxcCzN87mC7YaoKV1.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE RP2_TransportFrame /\ RP2_EntryProgress /\ RP2_HardwareProgress
<2> USE ONLY <1>X27lmMRPOxExgxcCzN87mC7YaoKV1, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","failret","cqe","nopost"}]
       /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>X27lmMRPOxExgxcCzN87mC7YaoKV1, V22_T_hw, V22_T_iv, SMTT(5)

<2>2. \A y \in Xids :
       /\ (hw[y]="fly" => xst[y]="posted" /\ iv[y] \in {"posted","failret"})
       /\ (iv[y]="reg" => hw[y]="none" /\ xk[y]="wr" /\ xst[y]="posted")
 BY SMTT(10), V21_Inv_K3, Sizes, Location, Design DEF K3, InFl, Sizes, Location, Design
<2>3. RP2_TransportFrame
 BY Design, ZenonT(10), Sizes, Location DEF RP2_TransportFrame, EvidenceAt, PEnd, PagePoll, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. RP2_EntryProgress
 BY <2>1, Design, SMTT(10), Sizes, Location DEF RP2_EntryProgress, EvidenceAt, PEnd, PagePoll, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>5. RP2_HardwareProgress
 BY <2>1, <2>2, <2>3, Design, SMTT(10), Sizes, Location DEF RP2_HardwareProgress, RP_Close, RP2_TransportFrame, Torn, EvidenceAt, PEnd, PagePoll, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>6. QED BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bJmFsRO3ukekW.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE P_SI4'
 BY ONLY <1>bJmFsRO3ukekW, Sizes, Location, Design, <1>X27lmMRPOxExgxcCzN87mC7YaoKV1, <1>CZs0zteS9nPA DEF Sizes, Location, Design
\* T2M-END R2M1993_PdRPR2Transport_PagePoll


<1> QED BY <1>WoNLMKunsQrz, <1>vjNavQ398kTr9lr3h5kU6n, <1>QvXnkZ3nX0TS309ZvUClCGW, <1>xoiYDznKuS, <1>ljzjoBl5IE, <1>xSLV78iJc7, <1>I5iuhFvuof, <1>xDp1wliobXl, <1>dXnFF47550p, <1>MgMy4feSV7Z, <1>JE67kSt5mpMwZnGY3yTKQaG, <1>PvUQbi6guxZ317I1U, <1>bJmFsRO3ukekW, <1>x2RKV1EGQqVh, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_PagePoll SHA df6d6322685c3bba174034c37481b97a4735862e85abad6a3816c4d3e46b395e
USE DEF ShapeNetFrame
HIDE DEF Part_PagePoll_02_02, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_P_SI1, V21_Inv_P_SI4, V21_Inv_P_SI6, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReadOwnLanded, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapPoint, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_hw, V22_T_iv, V22_T_krs, V22_T_nx, V22_T_ph, V22_T_rg, V22_T_rpg, V22_T_rpgS, V22_T_xdst, V22_T_xsrcP, V22_T_xsrcS
LEMMA ShapeEffect_PagePoll ==
 ASSUME NEW p \in Pages, Sizes, Design, PagePoll(p)
 PROVE net'=net
 BY ONLY PagePoll(p), Sizes, Design, SMTT(5) DEF PagePoll, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_PagePoll ==
 ASSUME NEW p \in Pages, Sizes, Design, IndInv, MessageShape, PagePoll(p)
 PROVE MessageShape'
 BY ONLY Sizes, Design, PagePoll(p), MessageShape, ShapeEffect_PagePoll, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_PagePoll SHA 725952b15595bb3a26339ec3543229c7f0e75ecc831a0990db21dae235f78912
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_PagePoll, ShapeNetFrame
THEOREM DomainKeep_PagePoll ==
 ASSUME NEW p \in Pages, Sizes, Location, Design, PinInv, PagePoll(p)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, PagePoll(p), ShapeEffect_PagePoll
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_PagePoll_03 SHA 48f2b8c88142c550cd3e813c3c90bcba4c3e25ce4b78a61b47b87b869bfe7e15
USE DEF V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_PrivateMapOwner, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V21_Inv_STypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_ph, V22_T_rg, V22_T_xdst, V22_T_xsrcS
HIDE DEF ShapeEffect_PagePoll, V21_Inv_MsgXDomain
THEOREM Group_PagePoll_03 ==
 ASSUME Sizes, Location, Design,
        NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE (SI8)' /\ (PrivateMapOwner)' /\ (K1)' /\ (K2)' /\ (K3)' /\ (K12)' /\ (K13)' /\ (K14)' /\ (K17)' /\ (S1)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (S5)' /\ (S6)' /\ (GenFiltered)' /\ (OneReply)' /\ (ReplyTruth)' /\ (SharedImmutable)' /\ (EntryQuarantineDisjoint)' /\ (P_B2OffInit)' /\ (MsgXDomain)'
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

<1> HIDE DEF SKXMH9, YoZCNdW, yRiuUrmy, o2PqE, xGwcBEcmY, rd1IZu, SuEEX, XjZJP, csjI5RPR, ZdeEe4zmp3uag, vLn7d, dLu17, NXhXrvU9, i08nRBE, K9XTdyW, JBL3tE9j, vuZd9ejUPGa3lV56, P28Z9h_alpV7bpoxO, RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect

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


<1>tLLCQuzM3MqrHzFWhttRdkN.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE P28Z9h_alpV7bpoxO
<2> USE ONLY <1>tLLCQuzM3MqrHzFWhttRdkN, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>tLLCQuzM3MqrHzFWhttRdkN, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF P28Z9h_alpV7bpoxO, Active, PInst, Inst, NL, EvidenceAt, PEnd, PagePoll, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design


<1>sKwJUNsTq3S8Bnp7QUKM3E3ha.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE PrivateMapOwner'
 BY ONLY <1>sKwJUNsTq3S8Bnp7QUKM3E3ha, Sizes, Location, Design, <1>tLLCQuzM3MqrHzFWhttRdkN, <1>RcA1VC7hI8 DEF Sizes, Location, Design


<1>mQ009qcktkSn4e4ldlfOhIAfVUI0e8dKq.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE EntryQuarantineDisjoint'
 BY ONLY <1>mQ009qcktkSn4e4ldlfOhIAfVUI0e8dKq, Sizes, Location, Design, <1>WgHhghZX0y DEF Sizes, Location, Design


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

<1>W8a81A8iGqELjjs0RxwsTJYO.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>W8a81A8iGqELjjs0RxwsTJYO, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>W8a81A8iGqELjjs0RxwsTJYO, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF PagePoll, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gHqtyDRf89lpJiB3zM.        
  ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>gHqtyDRf89lpJiB3zM, Sizes, Location, Design, DomainKeep_PagePoll, SMTT(5)
\* T2M-END R2M0319_PdPDomain_PagePoll


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


<1>ps.        
 S1 /\ UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>> => S1'
 BY IsaT(10), Sizes, Location, Design DEF Active, ExpInst, S1, Sizes, Location, Design
\* T2M-END R2M0341_PdPF_S1

\* T2M-SCOPE R2M0346_PdPF_S6

<1>sk.        
 S6 /\ UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>> => S6'
 BY IsaT(10), Sizes, Location, Design DEF Active, InitInst, InitPage, S6, Sizes, Location, Design
\* T2M-END R2M0346_PdPF_S6


<1>aXu.        
 K17 /\ UNCHANGED <<kpin, krs, ph, rg, rpg>> => K17'
 BY IsaT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
\* T2M-END R2M0340_PdPF_K17


<1>s6g.        
 K13 /\ UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>> => K13'
 BY IsaT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design
\* T2M-END R2M0354_PdPF_K13


<1>ui5.        
 K12 /\ UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>> => K12'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, K12, Sizes, Location, Design
\* T2M-END R2M0362_PdPF_K12


<1>Po.        
 S5 /\ UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>> => S5'
 BY IsaT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
\* T2M-END R2M0345_PdPF_S5


<1>twykQeAlKEjxh8JA.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, rd, rg, rhit, rp, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>twykQeAlKEjxh8JA, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PagePoll, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>i0kdg0EIRDz.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE K1'
<2> USE ONLY <1>i0kdg0EIRDz, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k4ylwptQsDX.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE K2'
<2> USE ONLY <1>k4ylwptQsDX, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CHiQKP7v6g2.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE K3'
<2> USE ONLY <1>CHiQKP7v6g2, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HGNTDp8MlEQP.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE K12'
<2> USE ONLY <1>HGNTDp8MlEQP, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GgFePLmnGMS9.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE K13'
<2> USE ONLY <1>GgFePLmnGMS9, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BzoS8mSFS98a.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE K14'
<2> USE ONLY <1>BzoS8mSFS98a, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PsYkGN0tTBk7.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE K17'
<2> USE ONLY <1>PsYkGN0tTBk7, Sizes, Location, Design
<2>1. K17
 BY V21_Inv_K17, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpg>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aXu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>A2F0xPLV8Gs.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE S1'
<2> USE ONLY <1>A2F0xPLV8Gs, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uZZ1JAACbYy.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE S2'
<2> USE ONLY <1>uZZ1JAACbYy, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g6KjGn14iNK.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE S3'
<2> USE ONLY <1>g6KjGn14iNK, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>izbVGYBg9mc.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE S4'
<2> USE ONLY <1>izbVGYBg9mc, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nkI2m6bk6d5.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE S5'
<2> USE ONLY <1>nkI2m6bk6d5, Sizes, Location, Design
<2>1. S5
 BY V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Po, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>epZWGLbXihp.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE S6'
<2> USE ONLY <1>epZWGLbXihp, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Cq5qHYTRf2xz99793Mxc.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>Cq5qHYTRf2xz99793Mxc, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jS97UgNaZ9iFSiXzh.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE OneReply'
<2> USE ONLY <1>jS97UgNaZ9iFSiXzh, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qaszPELPFw3pEhL03j5.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>qaszPELPFw3pEhL03j5, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>twykQeAlKEjxh8JA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CYH0YYIl3WaYk9QbM5.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>CYH0YYIl3WaYk9QbM5, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0501_PdPOff_PagePoll


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


<1>d3d97NdFIYU043a.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE UNCHANGED <<xsrc,xk,xst>>
 BY ONLY <1>d3d97NdFIYU043a, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PagePoll, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t5boUNntgbt9.        
 ASSUME NEW p \in Pages, PinInv, PagePoll(p), SFollow
 PROVE SI8'
 BY ONLY <1>t5boUNntgbt9, Sizes, Location, Design, <1>d3d97NdFIYU043a, <1>cBA7rB8Q9U8gRHfGK DEF Sizes, Location, Design
\* T2M-END R2M1442_PdRPShared_PagePoll


<1> QED BY <1>t5boUNntgbt9, <1>sKwJUNsTq3S8Bnp7QUKM3E3ha, <1>i0kdg0EIRDz, <1>k4ylwptQsDX, <1>CHiQKP7v6g2, <1>HGNTDp8MlEQP, <1>GgFePLmnGMS9, <1>BzoS8mSFS98a, <1>PsYkGN0tTBk7, <1>A2F0xPLV8Gs, <1>uZZ1JAACbYy, <1>g6KjGn14iNK, <1>izbVGYBg9mc, <1>nkI2m6bk6d5, <1>epZWGLbXihp, <1>Cq5qHYTRf2xz99793Mxc, <1>jS97UgNaZ9iFSiXzh, <1>qaszPELPFw3pEhL03j5, <1>W8a81A8iGqELjjs0RxwsTJYO, <1>mQ009qcktkSn4e4ldlfOhIAfVUI0e8dKq, <1>CYH0YYIl3WaYk9QbM5, <1>gHqtyDRf89lpJiB3zM, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_PagePoll_01_01, Part_PagePoll_01_02, Part_PagePoll_02_01, Part_PagePoll_02_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_PagePoll
HIDE DEF DomainKeep_PagePoll, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_PrivateMapOwner, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V21_Inv_STypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_ph, V22_T_rg, V22_T_xdst, V22_T_xsrcS

THEOREM Step_PagePoll ==
 ASSUME NEW p \in Pages, Sizes, Location, Design, PinInv, PagePoll(p), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Pages, Sizes, Location, Design, PinInv, PagePoll(u), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_PagePoll_01_01, Part_PagePoll_01_02, Part_PagePoll_02_01, Part_PagePoll_02_02, Group_PagePoll_03, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_PagePoll_01_01, Part_PagePoll_01_02, Part_PagePoll_02_01, Part_PagePoll_02_02, Group_PagePoll_03, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, PagePoll(p), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, PagePoll(p), ShapeKeep_PagePoll, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
