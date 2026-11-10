---- MODULE PdFinalAction_HwIssue ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_9ef278c147c12b12, PdFinalAuxType_3f8733edd2407792, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_HwIssue_01

\* Complete original body PdFinalPart_HwIssue_03_01 SHA 28eb5d44db9e8df32e3ae9e3f50c145a70012b688afc16acd987fa251e2b6ec9
HIDE DEF AuxType_3f8733edd2407792, AuxType_9ef278c147c12b12, ExactTypeBridge, Group_HwIssue_01, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_HwIssue_02_01, Part_HwIssue_02_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_K12, V21_Inv_K13, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K4, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SInd, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sprefc, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc
THEOREM Part_HwIssue_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE (SI8)' /\ (ReadOwnLanded)' /\ (EntryQuarantineDisjoint)' /\ (K3)' /\ (K10)' /\ (K1)' /\ (K5)' /\ (K9)' /\ (K11)' /\ (K14)' /\ (S1)' /\ (S4)' /\ (OneReply)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE PicQNkhs(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           UNRhKDF(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           x4aVJ652V(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           pONKJ3(x) == IF x4aVJ652V(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           flYh_aDX(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           zp_PIk4svxWLB(x) == x \in sentry /\ ~flYh_aDX(x) /\
            ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           jpr2xpt8(p) == spst[p]="priv" /\ sown[p] \in Rq /\ (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           LVIWHG(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           gaiU_p1(p) == (jpr2xpt8(p) \/ spst[p] \in {"drain","dup"}) /\ ~LVIWHG(p) /\ sready[p] /\ ~(\E x \in sentry' : p \in xsrcP'[x])


           n1a4h1qj(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
            spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           Zxt3uAWx0s == xsrcS'=[x \in Xids |-> IF x4aVJ652V(x) THEN (IF pONKJ3(x) \in SPages /\ spst[pONKJ3(x)]="shared" THEN {pONKJ3(x)} ELSE {}) ELSE xsrcS[x]]


           x3u8USZ8BP == xsrcP'=[x \in Xids |-> IF x4aVJ652V(x) THEN (IF pONKJ3(x) \in SPages /\ spst[pONKJ3(x)]="priv" THEN {pONKJ3(x)} ELSE {}) ELSE xsrcP[x]]


           XiXzxLeogqQ == sentry'=(sentry \cup {x \in Xids : x4aVJ652V(x)}) \ {x \in Xids : flYh_aDX(x) \/ zp_PIk4svxWLB(x)}


           cube8JL9My == squar'=squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : zp_PIk4svxWLB(x)}})


           gsRtJP8qi == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           PfTvb9KsRvdD == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           RO_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           RO_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           RO_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           RO_Src(x) == IF RO_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           RO_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           RO_Quarantine(x) == x \in sentry /\ ~RO_Close(x) /\
            ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           RO_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\ (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           RO_Pin(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           RO_Drop(p) == (RO_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RO_Pin(p) /\ sready[p] /\ ~(\E x \in sentry' : p \in xsrcP'[x])


           RO_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
            spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           RO_E_xsrcS == xsrcS'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="shared" THEN {RO_Src(x)} ELSE {}) ELSE xsrcS[x]]


           RO_E_xsrcP == xsrcP'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="priv" THEN {RO_Src(x)} ELSE {}) ELSE xsrcP[x]]


           RO_E_sentry == sentry'=(sentry \cup {x \in Xids : RO_Posted(x)}) \ {x \in Xids : RO_Close(x) \/ RO_Quarantine(x)}


           RO_E_squar == squar'=squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RO_Quarantine(x)}})


           RO_E_smap == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           RO_E_schoice == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           RO_E_dpreOK == dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop" THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") => (IF hw[x]="issued" THEN xprefixOK[x] ELSE RO_Valid(x)) ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]


           wOTr_ == gen \in [Rq -> 0..MG]


           Qjrp == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           vdfp == rp \in [Rq -> {0} \cup Inst]


           Gi91 == rd \in [Rq -> {0} \cup Inst]


           f9Jo == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           qC4t == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           dfknOma == alive \in [Inst -> BOOLEAN]


           TiBl9dL == nfail \in 0..MaxFail


           nvVdwJ == torn \in [Inst -> SUBSET Inst]


           kyOog2 == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           UUdTOK == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           dMRAk == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           lwx7 == ph \in [Inst -> [Rq -> PhSet]]


           azLu == rg \in [Inst -> [Rq -> 0..MG]]


           T2_wJ == rpg \in [Inst -> [Rq -> 0..NP]]


           DRkCp == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           u6eb == rx \in [Inst -> [Rq -> 0..MX]]


           WFFocH == rhit \in [Inst -> [Rq -> BOOLEAN]]


           mWgRR == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           voSc == pr \in [Pages -> 0..NR]


           ejARA == pgn \in [Pages -> 0..MG]


           nhDFh == plt \in [Pages -> 0..PS]


           Oet5P == ptl \in [Pages -> -1..PS]


           toA96a == pvis \in [Pages -> BOOLEAN]


           CQcwS == led \in [Pages -> SUBSET Xids]


           pgoLyw == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           gwX1nH == sled \in [Pages -> SUBSET (Rq \X Gens)]


           uhaZUCa == prefc \in [Pages -> 0..NR]


           j9ZB2 == pqp \in [Pages -> {0} \cup Inst]


           tOrh == xr \in [Xids -> 0..NR]


           oZ1G == xg \in [Xids -> 0..MG]


           TMQx == xk \in [Xids -> {"none", "wr", "rd"}]


           vvyr == xp \in [Xids -> {0} \cup Inst]


           FBnj == xd \in [Xids -> {0} \cup Inst]


           Sbgpxn == xsrc \in [Xids -> 0..NP]


           tP64Zt == xdst \in [Xids -> 0..NP]


           Rl_wH == xnt \in [Xids -> 0..PS]


           JojO == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           NFMkE == hok \in [Xids -> BOOLEAN]


           vQ8m == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           tMnUG == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           Og_ZB == xlt \in [Xids -> 0..PS]


           NHqB == nx \in 1..(MX + 1)


           j95de == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           jnT8ZH == drep \in [Rq -> [Gens -> 0..2]]


           fikvOb == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           wBRWE5u == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           Le6TxG == gbad \in BOOLEAN


           soyHJ == wOTr_ /\ Qjrp /\ vdfp /\ Gi91 /\ f9Jo /\ qC4t /\ dfknOma /\ TiBl9dL /\ nvVdwJ /\ kyOog2 /\ UUdTOK /\ dMRAk /\ lwx7 /\ azLu /\ T2_wJ /\ DRkCp /\ u6eb /\ WFFocH /\ mWgRR /\ voSc /\ ejARA /\ nhDFh /\ Oet5P /\ toA96a /\ CQcwS /\ pgoLyw /\ gwX1nH /\ uhaZUCa /\ j9ZB2 /\ tOrh /\ oZ1G /\ TMQx /\ vvyr /\ FBnj /\ Sbgpxn /\ tP64Zt /\ Rl_wH /\ JojO /\ NFMkE /\ vQ8m /\ tMnUG /\ Og_ZB /\ NHqB /\ j95de /\ jnT8ZH /\ fikvOb /\ wBRWE5u /\ Le6TxG

           \* T2M-LOCAL-VISIBILITY

           EkingyFJ82(x) ==
             xk[x] = "wr" /\ hw[x] = "fly" /\ hw' = [hw EXCEPT ![x] = "issued"] /\ \E ok \in BOOLEAN : hok' = [hok EXCEPT ![x] = ok]

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

           e3h4Oyw0g7(x) ==
             xk[x] = "wr" /\ hw[x] = "fly" /\ hw' = [hw EXCEPT ![x] = "issued"] /\ \E ok \in BOOLEAN : hok' = [hok EXCEPT ![x] = ok]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Zxt3uAWx0s, x3u8USZ8BP, XiXzxLeogqQ, cube8JL9My, gsRtJP8qi, PfTvb9KsRvdD, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_dpreOK, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ, EkingyFJ82, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, e3h4Oyw0g7

<1>cwygPFvwHoczY.        
 ASSUME B2, SFollow
 PROVE Zxt3uAWx0s
 BY ONLY <1>cwygPFvwHoczY, Sizes, Location, Design, ZenonT(10) DEF SFollow, Zxt3uAWx0s, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>Gd2HPOF0RVYJt.        
 ASSUME B2, SFollow
 PROVE x3u8USZ8BP
 BY ONLY <1>Gd2HPOF0RVYJt, Sizes, Location, Design, ZenonT(10) DEF SFollow, x3u8USZ8BP, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>HwTcZ0S4gasFui.        
 ASSUME B2, SFollow
 PROVE XiXzxLeogqQ
 BY ONLY <1>HwTcZ0S4gasFui, Sizes, Location, Design, ZenonT(10) DEF SFollow, XiXzxLeogqQ, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>TOIEvhKztkZU7.        
 ASSUME B2, SFollow
 PROVE cube8JL9My
 BY ONLY <1>TOIEvhKztkZU7, Sizes, Location, Design, ZenonT(10) DEF SFollow, cube8JL9My, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>oPciMlf6Iubx.        
 ASSUME B2, SFollow
 PROVE gsRtJP8qi
 BY ONLY <1>oPciMlf6Iubx, Sizes, Location, Design, ZenonT(10) DEF SFollow, gsRtJP8qi, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>AHYkU73mfqzQD5t.        
 ASSUME B2, SFollow
 PROVE PfTvb9KsRvdD
 BY ONLY <1>AHYkU73mfqzQD5t, Sizes, Location, Design, ZenonT(10) DEF SFollow, PfTvb9KsRvdD, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>cQRSNCkI9c6.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>cQRSNCkI9c6, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design


<1>M20Oc0Xr.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~x4aVJ652V(x)
 BY ONLY <1>M20Oc0Xr, Sizes, Location, Design, SMTT(10) DEF x4aVJ652V, Pages, Sizes, Location, Design


<1>QPMjP2YgSfrqb.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
<2> USE ONLY <1>QPMjP2YgSfrqb, Sizes, Location, Design
<2>1. STypeOK BY V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY ONLY <1>QPMjP2YgSfrqb, <2>2, SMTT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. gsRtJP8qi /\ PfTvb9KsRvdD /\ Zxt3uAWx0s /\ x3u8USZ8BP /\ (\A x \in Xids : ~x4aVJ652V(x))
 BY <2>3, <1>oPciMlf6Iubx, <1>AHYkU73mfqzQD5t, <1>cwygPFvwHoczY, <1>Gd2HPOF0RVYJt, <1>M20Oc0Xr, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED rg BY ONLY <1>QPMjP2YgSfrqb, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. /\ smap \in [PInst -> [Rq -> {0} \cup SPages]]
       /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>QPMjP2YgSfrqb, V22_T_schoice, V22_T_smap, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

 <3>4. /\ smap' = [i \in PInst |-> [r \in Rq |-> smap[i][r]]]
       /\ schoice' = [i \in PInst |-> [r \in Rq |-> schoice[i][r]]]
       /\ xsrcS' = [x \in Xids |-> xsrcS[x]] /\ xsrcP' = [x \in Xids |-> xsrcP[x]]
 BY ONLY <3>1, <3>2, SMTT(20), Sizes, Location, Design DEF gsRtJP8qi, PfTvb9KsRvdD, Zxt3uAWx0s, x3u8USZ8BP, Sizes, Location, Design
 <3>5. QED BY ONLY <3>3, <3>4, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>vWo5OSv.        
 ASSUME PinInv, B2
 PROVE /\ spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
       /\ rpgS \subseteq PInst \X Rq \X Gens \X SPages
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
       /\ sentry \subseteq Xids /\ squar \subseteq Xids \X SPages
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY <1>vWo5OSv, V22_T_rpgS, V22_T_sentry, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

<1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg,xsrc>>
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy, Sizes, Location, Design
<2>1. EntryQuarantineDisjoint BY V21_Inv_EntryQuarantineDisjoint, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
<2>3. CASE B2
 <3>1. XiXzxLeogqQ /\ cube8JL9My /\ (\A x \in Xids : ~x4aVJ652V(x))
 BY <2>3, <1>HwTcZ0S4gasFui, <1>TOIEvhKztkZU7, <1>M20Oc0Xr, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED xsrcS BY <1>QPMjP2YgSfrqb, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. sentry \subseteq Xids BY <2>3, <1>vWo5OSv, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. \A x \in sentry' : x \in sentry /\ ~zp_PIk4svxWLB(x)
 BY <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF XiXzxLeogqQ, Sizes, Location, Design
 <3>5. \A x \in sentry' : \A p \in xsrcS'[x] : <<x,p>> \notin squar'
 BY <2>1, <2>3, <3>1, <3>2, <3>3, <3>4, SMTT(20), Sizes, Location, Design DEF EntryQuarantineDisjoint, cube8JL9My, Sizes, Location, Design
 <3>6. QED BY <3>5, <2>3, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>LgyNGh39S6Hly656PtK3zMRqVawmRlWt.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>LgyNGh39S6Hly656PtK3zMRqVawmRlWt, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF HwIssue, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy, Sizes, Location, Design DEF Sizes, Location, Design


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>je.        
 S4 /\ UNCHANGED <<alive, nfail>> => S4'
 BY IsaT(10), Sizes, Location, Design DEF S4, Sizes, Location, Design
\* T2M-END R2M0344_PdPF_S4


<1>yYI.        
 K14 /\ UNCHANGED <<gen, kfly, kpin, krs>> => K14'
 BY IsaT(10), Sizes, Location, Design DEF K14, Sizes, Location, Design
\* T2M-END R2M0355_PdPF_K14


<1>XnYly5EW.        
 OneReply /\ UNCHANGED <<crep, drep>> => OneReply'
 BY IsaT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
\* T2M-END R2M0348_PdPF_OneReply


<1>Wu.        
 K1 /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>> => K1'
 BY IsaT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M0353_PdPF_K1


<1>ps.        
 S1 /\ UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>> => S1'
 BY IsaT(10), Sizes, Location, Design DEF Active, ExpInst, S1, Sizes, Location, Design
\* T2M-END R2M0341_PdPF_S1

\* T2M-SCOPE R2M0346_PdPF_S6

<1>rd.        
 K5 /\ UNCHANGED <<led, pgn, pr, pst, xg, xr>> => K5'
 BY IsaT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0334_PdPF_K5


<1>tpP.        
 K11 /\ UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>> => K11'
 BY IsaT(10), Sizes, Location, Design DEF K11, Sizes, Location, Design
\* T2M-END R2M0337_PdPF_K11


<1>Dv.        
 K9 /\ UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>> => K9'
 BY IsaT(10), Sizes, Location, Design DEF Active, K9, Sizes, Location, Design
\* T2M-END R2M0335_PdPF_K9


<1>B9Cj523MIJtOhKn.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xp, xr, xsrc, xst>>
 BY ONLY <1>B9Cj523MIJtOhKn, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF HwIssue, ghV, instV, kV, pgV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cNO7SCvYI4.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE K1'
<2> USE ONLY <1>cNO7SCvYI4, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ca9TsWzKpe.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE K5'
<2> USE ONLY <1>ca9TsWzKpe, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hN1TG14Fbb.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE K9'
<2> USE ONLY <1>hN1TG14Fbb, Sizes, Location, Design
<2>1. K9
 BY V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Dv, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>usjZEaXCHLo.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE K11'
<2> USE ONLY <1>usjZEaXCHLo, Sizes, Location, Design
<2>1. K11
 BY V21_Inv_K11, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>tpP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BPbwWwoauZD.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE K14'
<2> USE ONLY <1>BPbwWwoauZD, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PQyfE0WRSG.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE S1'
<2> USE ONLY <1>PQyfE0WRSG, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>V9XDXddhMa.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE S4'
<2> USE ONLY <1>V9XDXddhMa, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iSxzGLDWuQ8MIMvy.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE OneReply'
<2> USE ONLY <1>iSxzGLDWuQ8MIMvy, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m0crpwxTDdjmI.        
 ASSUME B2, SFollow
 PROVE RO_E_xsrcS
 BY ONLY <1>m0crpwxTDdjmI, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_xsrcS, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ifwDg0IoVKTvz.        
 ASSUME B2, SFollow
 PROVE RO_E_xsrcP
 BY ONLY <1>ifwDg0IoVKTvz, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_xsrcP, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oVMEMsT8gqQqbk.        
 ASSUME B2, SFollow
 PROVE RO_E_sentry
 BY ONLY <1>oVMEMsT8gqQqbk, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_sentry, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lIuyiSzJ58zq2.        
 ASSUME B2, SFollow
 PROVE RO_E_squar
 BY ONLY <1>lIuyiSzJ58zq2, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_squar, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kcdhaxe1yPn5.        
 ASSUME B2, SFollow
 PROVE RO_E_smap
 BY ONLY <1>kcdhaxe1yPn5, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_smap, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FuwCbPxDgseJUUg.        
 ASSUME B2, SFollow
 PROVE RO_E_schoice
 BY ONLY <1>FuwCbPxDgseJUUg, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_schoice, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kgOzghpuDBjlN1.        
 ASSUME B2, SFollow
 PROVE RO_E_dpreOK
 BY ONLY <1>kgOzghpuDBjlN1, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_dpreOK, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pDDs2iPJ6v1.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>pDDs2iPJ6v1, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eav3Mlg8.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~RO_Posted(x)
 BY ONLY <1>eav3Mlg8, Sizes, Location, Design, SMTT(10) DEF RO_Posted, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J0yx6oHL5UyrV.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
<2> USE ONLY <1>J0yx6oHL5UyrV, Sizes, Location, Design
<2>1. STypeOK BY V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY ONLY <1>J0yx6oHL5UyrV, <2>2, SMTT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RO_E_smap /\ RO_E_schoice /\ RO_E_xsrcS /\ RO_E_xsrcP /\ (\A x \in Xids : ~RO_Posted(x))
 BY <2>3, <1>kcdhaxe1yPn5, <1>FuwCbPxDgseJUUg, <1>m0crpwxTDdjmI, <1>ifwDg0IoVKTvz, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED rg
 BY <1>J0yx6oHL5UyrV, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. /\ smap \in [PInst -> [Rq -> {0} \cup SPages]]
       /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>J0yx6oHL5UyrV, V22_T_schoice, V22_T_smap, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

 <3>4. /\ smap' = [i \in PInst |-> [r \in Rq |-> smap[i][r]]]
       /\ schoice' = [i \in PInst |-> [r \in Rq |-> schoice[i][r]]]
       /\ xsrcS' = [x \in Xids |-> xsrcS[x]] /\ xsrcP' = [x \in Xids |-> xsrcP[x]]
 BY ONLY <3>1, <3>2, SMTT(20), Sizes, Location, Design DEF RO_E_smap, RO_E_schoice, RO_E_xsrcS, RO_E_xsrcP, Sizes, Location, Design
 <3>5. QED BY ONLY <3>3, <3>4, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>G62OMB7v6XF.        
 ASSUME PinInv, B2, NEW x \in Xids, hw[x]="fly"
 PROVE RO_Valid(x)
<2> USE ONLY <1>G62OMB7v6XF, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ SendOwnLanded
 BY V21_Inv_NoEvictUnderRDMA, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF RO_Valid, NoEvictUnderRDMA, SAccess, SendOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RDpDVaE3CTJB.        
 ASSUME PinInv, SFollow, B2, \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
 PROVE \A p \in Pages : dpreOK[p] => dpreOK'[p]
<2> USE ONLY <1>RDpDVaE3CTJB, Sizes, Location, Design
<2>1. RO_E_dpreOK /\ SI4 BY <1>kgOzghpuDBjlN1, <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A x \in Xids : hw[x] \in {"fly","issued"} => (IF hw[x]="issued" THEN xprefixOK[x] ELSE RO_Valid(x))
 BY <2>1, <1>G62OMB7v6XF, SMTT(10), Sizes, Location, Design DEF SI4, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_dpreOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>umw00Yrfg.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rpg>>,
        \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
 PROVE B2 => \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} => dpreOK'[rpg'[j][r]]
<2> USE ONLY <1>umw00Yrfg, Sizes, Location, Design
<2>1. ReadOwnLanded BY V21_Inv_ReadOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE B2
 <3>1. \A p \in Pages : dpreOK[p] => dpreOK'[p] BY <2>3, <1>RDpDVaE3CTJB, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF ReadOwnLanded, BaseReadOwnLanded, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>f2Leyy7poQD1fIQ.        
 ASSUME B2, SFollow, NEW x \in Xids, RO_Quarantine(x)
 PROVE \A p \in xsrcS[x] : <<x,p>> \in squar'
<2> USE ONLY <1>f2Leyy7poQD1fIQ, Sizes, Location, Design
<2>1. RO_E_squar BY <1>lIuyiSzJ58zq2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x \in {y \in Xids : RO_Quarantine(y)} BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. {<<x,p>> : p \in xsrcS[x]} \in {{<<y,p>> : p \in xsrcS[y]} : y \in {y \in Xids : RO_Quarantine(y)}}
 BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in xsrcS[x]
       PROVE <<x,p>> \in squar'
 <3>1. <<x,p>> \in {<<x,q>> : q \in xsrcS[x]} BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>3, <3>1, Design, ZenonT(10), Sizes, Location DEF RO_E_squar, Sizes, Location, Design
<2>5. QED BY <2>4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bneczW3Qjs8bDyTc.        
 ASSUME B2, SFollow, NEW x \in Xids, ~RO_Close(x),
        x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
 PROVE x \in sentry' \/ (\A p \in xsrcS[x] : <<x,p>> \in squar')
<2> USE ONLY <1>bneczW3Qjs8bDyTc, Sizes, Location, Design
<2>1. RO_E_sentry /\ RO_E_squar BY <1>oVMEMsT8gqQqbk, <1>lIuyiSzJ58zq2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE x \in sentry /\ ~RO_Quarantine(x)
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_sentry, Sizes, Location, Design
<2>3. CASE RO_Quarantine(x)
 BY <2>3, <1>f2Leyy7poQD1fIQ, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. CASE x \notin sentry
 BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF RO_E_squar, Sizes, Location, Design
<2>5. QED BY <2>2, <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yYTbap2jtpor.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,xk,xsrcS>>,
        \A x \in Xids : xst'[x]="posted" => xst[x]="posted"
 PROVE SI8'
<2> USE ONLY <1>yYTbap2jtpor, Sizes, Location, Design
<2>1. SI8 BY V21_Inv_SI8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>3. CASE B2
 <3>1. ASSUME NEW x \in Xids, xk'[x]="rd", xst'[x]="posted"
        PROVE x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
  <4>1. xk[x]="rd" /\ xst[x]="posted" BY <3>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
  BY <2>1, <2>3, <4>1, ZenonT(10), Sizes, Location, Design DEF SI8, Sizes, Location, Design
  <4>3. ~RO_Close(x) BY <3>1, <4>1, SMTT(10), Sizes, Location, Design DEF RO_Close, Sizes, Location, Design
  <4>4. QED BY <2>3, <4>2, <4>3, <1>bneczW3Qjs8bDyTc, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>3, <3>1, Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2185_PdROSharedShape

\* T2M-SCOPE R2M2186_PdRORefSafety
\* T2M-BODY R2M2186_PdRORefSafety
\* T2M-LOCAL-VISIBILITY

<1>HhMrMp15zYlf7C8MYlk.        
 ASSUME NEW x \in Xids, HwIssue(x)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>HhMrMp15zYlf7C8MYlk, Sizes, Location, Design, Design, ZenonT(10) DEF HwIssue, ghV, instV, kV, pgV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DhxPPeVm5R1C9XAFd8KjB.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>DhxPPeVm5R1C9XAFd8KjB, Sizes, Location, Design, <1>HhMrMp15zYlf7C8MYlk, <1>J0yx6oHL5UyrV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uePpaNAN44zk5fo.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x)
 PROVE \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
<2> USE ONLY <1>uePpaNAN44zk5fo, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>uePpaNAN44zk5fo, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwIssue, ghV, instV, kV, pgV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Wa2kKjf574e5y0xbTrLc.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x)
 PROVE \A x \in Xids : xst'[x]="posted" => xst[x]="posted"
<2> USE ONLY <1>Wa2kKjf574e5y0xbTrLc, Sizes, Location, Design
<2>1. xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Wa2kKjf574e5y0xbTrLc, V22_T_xst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwIssue, ghV, instV, kV, pgV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>A5I6vHeddkQ.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE SI8'
 BY ONLY <1>A5I6vHeddkQ, Sizes, Location, Design, <1>HhMrMp15zYlf7C8MYlk, <1>DhxPPeVm5R1C9XAFd8KjB, <1>Wa2kKjf574e5y0xbTrLc, <1>yYTbap2jtpor DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OJpowx54MQ.         TypInv => soyHJ
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, soyHJ, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>C7LOumUXHk.        
  ASSUME NEW x \in Xids, HwIssue(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>C7LOumUXHk, Sizes, Location, Design, Zenon DEF HwIssue, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Wr6HHtUC7Le.        
  ASSUME NEW x \in Xids, HwIssue(x)
  PROVE EkingyFJ82(x)
  BY ONLY <1>Wr6HHtUC7Le, Sizes, Location, Design, Design, Zenon DEF HwIssue, EkingyFJ82, Sizes, Location, Design
\* T2M-END R2M2240_PdROBase_PdBHwIssueControl


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>UJq2WJpcSh.        
  ASSUME NEW x \in Xids, HwIssue(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>UJq2WJpcSh, Sizes, Location, Design, Zenon DEF HwIssue, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HrN22e7o4xA.        
  ASSUME NEW x \in Xids, HwIssue(x)
  PROVE e3h4Oyw0g7(x)
  BY ONLY <1>HrN22e7o4xA, Sizes, Location, Design, Design, Zenon DEF HwIssue, e3h4Oyw0g7, Sizes, Location, Design
\* T2M-END R2M2312_PdROOld_PP_PdBHwIssueControl


<1>Ys6Jp7O.        
  ASSUME NEW x \in Xids, PinInv, HwIssue(x)
  PROVE K3'
<2> USE ONLY <1>Ys6Jp7O, Sizes, Location, Design
<2>1. K3 /\ DpA4 /\ fr1A /\ DnMxp
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K3, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. e3h4Oyw0g7(x) /\ UNCHANGED <<iv, xk, xlt, xnt, xst>>
  BY <1>HrN22e7o4xA, <1>UJq2WJpcSh, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, Sizes, SMT, Location DEF e3h4Oyw0g7, CqeHw, InFl, K3, DnMxp, DpA4, fr1A, Tag, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>B5t8LoDx.        
  ASSUME NEW x \in Xids, PinInv, HwIssue(x)
  PROVE K10'
<2> USE ONLY <1>B5t8LoDx, Sizes, Location, Design
<2>1. K10 /\ DpA4 /\ fr1A /\ DnMxp
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K10, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. e3h4Oyw0g7(x) /\ UNCHANGED <<nx, pgn, ph, pr, pst, ptl, rg, xdst, xg, xlt, xr>>
  BY <1>HrN22e7o4xA, <1>UJq2WJpcSh, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, Sizes, SMT, Location DEF e3h4Oyw0g7, K10, OwnedBy, DnMxp, DpA4, fr1A, Tag, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QS28PqwR8.        
  ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
  PROVE K3'
  BY ONLY <1>QS28PqwR8, Sizes, Location, Design, <1>Ys6Jp7O, V21_Inv_K3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Nwba7d8hQX.        
  ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
  PROVE K10'
  BY ONLY <1>Nwba7d8hQX, Sizes, Location, Design, <1>B5t8LoDx, V21_Inv_K10 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BFl2j11lepRaX38BE.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE K10'
 BY ONLY <1>BFl2j11lepRaX38BE, Sizes, Location, Design, <1>Nwba7d8hQX DEF Sizes, Location, Design
\* T2M-END R2M2315_PdROFinal_HwIssue_K10

\* T2M-SCOPE R2M2316_PdROFinal_HwIssue_K16

<1>FujKMmxuBBzh3i4j.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE K3'
 BY ONLY <1>FujKMmxuBBzh3i4j, Sizes, Location, Design, <1>QS28PqwR8 DEF Sizes, Location, Design
\* T2M-END R2M2318_PdROFinal_HwIssue_K3

\* T2M-SCOPE R2M2319_PdROFinal_HwIssue_S5

<1>d9901H7ce8FyOIdT6e.        
  ASSUME NEW x \in Xids, PinInv, HwIssue(x)
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>d9901H7ce8FyOIdT6e, Sizes, Location, Design
<2>1. BaseReadOwnLanded /\ JojO /\ vQ8m /\ NFMkE
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, soyHJ, BaseSafety, Sizes, Location, Design
<2>2. EkingyFJ82(x) /\ UNCHANGED <<pgn, ph, pr, pst, ptl, pvis, rg, rhit, rpg, xdst>>
  BY <1>Wr6HHtUC7Le, <1>C7LOumUXHk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, Sizes, SMT, Location DEF EkingyFJ82, InFl, NoWriteInto, BaseReadOwnLanded, NFMkE, JojO, vQ8m, Tag, Writing, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>glqZQEQx9NUMR0vXmqHGo.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE ReadOwnLanded'
<2> USE ONLY <1>glqZQEQx9NUMR0vXmqHGo, Sizes, Location, Design
<2>1. BaseReadOwnLanded' BY <1>d9901H7ce8FyOIdT6e, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 => \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} => dpreOK'[rpg'[j][r]]
 BY <1>HhMrMp15zYlf7C8MYlk, <1>uePpaNAN44zk5fo, <1>umw00Yrfg, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF ReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M2663_PdROSafety_HwIssue_ReadOwnLanded

\* T2M-SCOPE R2M2664_PdROSafety_HwIssue_SealOnlyLanded

<1> QED BY <1>A5I6vHeddkQ, <1>glqZQEQx9NUMR0vXmqHGo, <1>LgyNGh39S6Hly656PtK3zMRqVawmRlWt, <1>FujKMmxuBBzh3i4j, <1>BFl2j11lepRaX38BE, <1>cNO7SCvYI4, <1>ca9TsWzKpe, <1>hN1TG14Fbb, <1>usjZEaXCHLo, <1>BPbwWwoauZD, <1>PQyfE0WRSG, <1>V9XDXddhMa, <1>iSxzGLDWuQ8MIMvy, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_HwIssue_03_02 SHA 237d78e08edb4afc5ec7f0b22333df1d8e3b5df94ee6924d081bdd7774adcfa3
USE DEF V21_Inv_GenFiltered, V21_Inv_K13, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K4, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_S2, V21_Inv_S3, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_iv, V22_T_nx, V22_T_xdst
HIDE DEF Part_HwIssue_03_01, V21_Inv_EntryQuarantineDisjoint, V21_Inv_K10, V21_Inv_K11, V21_Inv_K14, V21_Inv_K5, V21_Inv_K9, V21_Inv_NoEvictUnderRDMA, V21_Inv_OneReply, V21_Inv_S1, V21_Inv_S4, V21_Inv_SI8, V22_T_rpgS, V22_T_sentry, V22_T_spst, V22_T_squar, V22_T_xst
THEOREM Part_HwIssue_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE (P_SI3)' /\ (PrivateMapOwner)' /\ (SealOnlyLanded)' /\ (SI7)' /\ (K2)' /\ (K16)' /\ (S5)' /\ (K4)' /\ (K6)' /\ (K7)' /\ (K8)' /\ (K13)' /\ (K17)' /\ (S2)' /\ (S3)' /\ (S6)' /\ (GenFiltered)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE PicQNkhs(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           UNRhKDF(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           x4aVJ652V(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           pONKJ3(x) == IF x4aVJ652V(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           flYh_aDX(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           zp_PIk4svxWLB(x) == x \in sentry /\ ~flYh_aDX(x) /\
            ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           jpr2xpt8(p) == spst[p]="priv" /\ sown[p] \in Rq /\ (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           LVIWHG(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           gaiU_p1(p) == (jpr2xpt8(p) \/ spst[p] \in {"drain","dup"}) /\ ~LVIWHG(p) /\ sready[p] /\ ~(\E x \in sentry' : p \in xsrcP'[x])


           n1a4h1qj(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
            spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           Zxt3uAWx0s == xsrcS'=[x \in Xids |-> IF x4aVJ652V(x) THEN (IF pONKJ3(x) \in SPages /\ spst[pONKJ3(x)]="shared" THEN {pONKJ3(x)} ELSE {}) ELSE xsrcS[x]]


           x3u8USZ8BP == xsrcP'=[x \in Xids |-> IF x4aVJ652V(x) THEN (IF pONKJ3(x) \in SPages /\ spst[pONKJ3(x)]="priv" THEN {pONKJ3(x)} ELSE {}) ELSE xsrcP[x]]


           gsRtJP8qi == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           PfTvb9KsRvdD == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           Lysb3rxXC == spst'=[p \in SPages |-> IF \E x \in Xids : zp_PIk4svxWLB(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF gaiU_p1(p) THEN "free" ELSE IF jpr2xpt8(p) THEN "drain" ELSE spst[p]]


           RO_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           RO_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           RO_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           RO_Src(x) == IF RO_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           RO_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           RO_Quarantine(x) == x \in sentry /\ ~RO_Close(x) /\
            ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           RO_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\ (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           RO_Pin(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           RO_Drop(p) == (RO_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RO_Pin(p) /\ sready[p] /\ ~(\E x \in sentry' : p \in xsrcP'[x])


           RO_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
            spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           RO_PinGrows == /\ \A p \in SPages : SPin(p) => RO_Pin(p)
                          /\ \A h \in rpgS : SHPin(h) => RO_HPin(h)


           RO_E_rpgS == rpgS'={h \in rpgS : RO_HLive(h) \/ (RO_HPin(h) /\ Mut # "unrefBeforeKDone")}


           RO_E_sentry == sentry'=(sentry \cup {x \in Xids : RO_Posted(x)}) \ {x \in Xids : RO_Close(x) \/ RO_Quarantine(x)}


           RO_E_spst == spst'=[p \in SPages |-> IF \E x \in Xids : RO_Quarantine(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF RO_Drop(p) THEN "free" ELSE IF RO_Ended(p) THEN "drain" ELSE spst[p]]


           wOTr_ == gen \in [Rq -> 0..MG]


           Qjrp == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           vdfp == rp \in [Rq -> {0} \cup Inst]


           Gi91 == rd \in [Rq -> {0} \cup Inst]


           f9Jo == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           qC4t == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           dfknOma == alive \in [Inst -> BOOLEAN]


           TiBl9dL == nfail \in 0..MaxFail


           nvVdwJ == torn \in [Inst -> SUBSET Inst]


           kyOog2 == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           UUdTOK == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           dMRAk == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           lwx7 == ph \in [Inst -> [Rq -> PhSet]]


           azLu == rg \in [Inst -> [Rq -> 0..MG]]


           T2_wJ == rpg \in [Inst -> [Rq -> 0..NP]]


           DRkCp == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           u6eb == rx \in [Inst -> [Rq -> 0..MX]]


           WFFocH == rhit \in [Inst -> [Rq -> BOOLEAN]]


           mWgRR == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           voSc == pr \in [Pages -> 0..NR]


           ejARA == pgn \in [Pages -> 0..MG]


           nhDFh == plt \in [Pages -> 0..PS]


           Oet5P == ptl \in [Pages -> -1..PS]


           toA96a == pvis \in [Pages -> BOOLEAN]


           CQcwS == led \in [Pages -> SUBSET Xids]


           pgoLyw == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           gwX1nH == sled \in [Pages -> SUBSET (Rq \X Gens)]


           uhaZUCa == prefc \in [Pages -> 0..NR]


           j9ZB2 == pqp \in [Pages -> {0} \cup Inst]


           tOrh == xr \in [Xids -> 0..NR]


           oZ1G == xg \in [Xids -> 0..MG]


           TMQx == xk \in [Xids -> {"none", "wr", "rd"}]


           vvyr == xp \in [Xids -> {0} \cup Inst]


           FBnj == xd \in [Xids -> {0} \cup Inst]


           Sbgpxn == xsrc \in [Xids -> 0..NP]


           tP64Zt == xdst \in [Xids -> 0..NP]


           Rl_wH == xnt \in [Xids -> 0..PS]


           JojO == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           NFMkE == hok \in [Xids -> BOOLEAN]


           vQ8m == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           tMnUG == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           Og_ZB == xlt \in [Xids -> 0..PS]


           NHqB == nx \in 1..(MX + 1)


           j95de == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           jnT8ZH == drep \in [Rq -> [Gens -> 0..2]]


           fikvOb == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           wBRWE5u == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           Le6TxG == gbad \in BOOLEAN


           soyHJ == wOTr_ /\ Qjrp /\ vdfp /\ Gi91 /\ f9Jo /\ qC4t /\ dfknOma /\ TiBl9dL /\ nvVdwJ /\ kyOog2 /\ UUdTOK /\ dMRAk /\ lwx7 /\ azLu /\ T2_wJ /\ DRkCp /\ u6eb /\ WFFocH /\ mWgRR /\ voSc /\ ejARA /\ nhDFh /\ Oet5P /\ toA96a /\ CQcwS /\ pgoLyw /\ gwX1nH /\ uhaZUCa /\ j9ZB2 /\ tOrh /\ oZ1G /\ TMQx /\ vvyr /\ FBnj /\ Sbgpxn /\ tP64Zt /\ Rl_wH /\ JojO /\ NFMkE /\ vQ8m /\ tMnUG /\ Og_ZB /\ NHqB /\ j95de /\ jnT8ZH /\ fikvOb /\ wBRWE5u /\ Le6TxG

           \* T2M-LOCAL-VISIBILITY

           EkingyFJ82(x) ==
             xk[x] = "wr" /\ hw[x] = "fly" /\ hw' = [hw EXCEPT ![x] = "issued"] /\ \E ok \in BOOLEAN : hok' = [hok EXCEPT ![x] = ok]

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

           e3h4Oyw0g7(x) ==
             xk[x] = "wr" /\ hw[x] = "fly" /\ hw' = [hw EXCEPT ![x] = "issued"] /\ \E ok \in BOOLEAN : hok' = [hok EXCEPT ![x] = ok]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Zxt3uAWx0s, x3u8USZ8BP, gsRtJP8qi, PfTvb9KsRvdD, Lysb3rxXC, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_sentry, RO_E_spst, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ, EkingyFJ82, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, e3h4Oyw0g7

<1>cwygPFvwHoczY.        
 ASSUME B2, SFollow
 PROVE Zxt3uAWx0s
 BY ONLY <1>cwygPFvwHoczY, Sizes, Location, Design, ZenonT(10) DEF SFollow, Zxt3uAWx0s, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>Gd2HPOF0RVYJt.        
 ASSUME B2, SFollow
 PROVE x3u8USZ8BP
 BY ONLY <1>Gd2HPOF0RVYJt, Sizes, Location, Design, ZenonT(10) DEF SFollow, x3u8USZ8BP, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>oPciMlf6Iubx.        
 ASSUME B2, SFollow
 PROVE gsRtJP8qi
 BY ONLY <1>oPciMlf6Iubx, Sizes, Location, Design, ZenonT(10) DEF SFollow, gsRtJP8qi, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>AHYkU73mfqzQD5t.        
 ASSUME B2, SFollow
 PROVE PfTvb9KsRvdD
 BY ONLY <1>AHYkU73mfqzQD5t, Sizes, Location, Design, ZenonT(10) DEF SFollow, PfTvb9KsRvdD, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>uUDp3u4e5PqL.        
 ASSUME B2, SFollow
 PROVE Lysb3rxXC
 BY ONLY <1>uUDp3u4e5PqL, Sizes, Location, Design, ZenonT(10) DEF SFollow, Lysb3rxXC, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>rsuLN.         SFollow => UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design


<1>M20Oc0Xr.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~x4aVJ652V(x)
 BY ONLY <1>M20Oc0Xr, Sizes, Location, Design, SMTT(10) DEF x4aVJ652V, Pages, Sizes, Location, Design


<1>QPMjP2YgSfrqb.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
<2> USE ONLY <1>QPMjP2YgSfrqb, Sizes, Location, Design
<2>1. STypeOK BY V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY ONLY <1>QPMjP2YgSfrqb, <2>2, SMTT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. gsRtJP8qi /\ PfTvb9KsRvdD /\ Zxt3uAWx0s /\ x3u8USZ8BP /\ (\A x \in Xids : ~x4aVJ652V(x))
 BY <2>3, <1>oPciMlf6Iubx, <1>AHYkU73mfqzQD5t, <1>cwygPFvwHoczY, <1>Gd2HPOF0RVYJt, <1>M20Oc0Xr, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED rg BY ONLY <1>QPMjP2YgSfrqb, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. /\ smap \in [PInst -> [Rq -> {0} \cup SPages]]
       /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>QPMjP2YgSfrqb, V22_T_schoice, V22_T_smap, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

 <3>4. /\ smap' = [i \in PInst |-> [r \in Rq |-> smap[i][r]]]
       /\ schoice' = [i \in PInst |-> [r \in Rq |-> schoice[i][r]]]
       /\ xsrcS' = [x \in Xids |-> xsrcS[x]] /\ xsrcP' = [x \in Xids |-> xsrcP[x]]
 BY ONLY <3>1, <3>2, SMTT(20), Sizes, Location, Design DEF gsRtJP8qi, PfTvb9KsRvdD, Zxt3uAWx0s, x3u8USZ8BP, Sizes, Location, Design
 <3>5. QED BY ONLY <3>3, <3>4, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>Ehr2pMdg5uoVBObEEj2Ppij.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg,xsrc>>
 PROVE PrivateMapOwner'
<2> USE ONLY <1>Ehr2pMdg5uoVBObEEj2Ppij, Sizes, Location, Design
<2>1. PrivateMapOwner BY V21_Inv_PrivateMapOwner, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF PrivateMapOwner, Sizes, Location, Design
<2>3. CASE B2
 <3>1. UNCHANGED <<smap,sown,sgen>> BY <1>QPMjP2YgSfrqb, <1>rsuLN, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. Lysb3rxXC BY <2>3, <1>uUDp3u4e5PqL, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A p \in SPages : spst'[p]="priv" => spst[p]="priv"
 BY <3>2, SMTT(10), Sizes, Location, Design DEF Lysb3rxXC, Sizes, Location, Design
 <3>4. QED BY <2>3, <2>1, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF PrivateMapOwner, Active, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>m6DR7irIX9iHD5j7bFi62FNU.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE PrivateMapOwner'
<2> USE ONLY <1>m6DR7irIX9iHD5j7bFi62FNU, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF HwIssue, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>Ehr2pMdg5uoVBObEEj2Ppij, Sizes, Location, Design DEF Sizes, Location, Design


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

<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Tq.        
 S3 /\ UNCHANGED <<torn>> => S3'
 BY IsaT(10), Sizes, Location, Design DEF S3, Sizes, Location, Design
\* T2M-END R2M0343_PdPF_S3

\* T2M-SCOPE R2M0451_PdPF_B2OffInit

<1>Af.        
 S2 /\ UNCHANGED <<nx, xg, xr>> => S2'
 BY IsaT(10), Sizes, Location, Design DEF S2, Sizes, Location, Design
\* T2M-END R2M0342_PdPF_S2


<1>ujEUqBpYoFz.        
 GenFiltered /\ UNCHANGED <<gbad>> => GenFiltered'
 BY IsaT(10), Sizes, Location, Design DEF GenFiltered, Sizes, Location, Design
\* T2M-END R2M0347_PdPF_GenFiltered


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


<1>pJ.        
 K4 /\ UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>> => K4'
 BY IsaT(10), Sizes, Location, Design DEF ExpPage, InitPage, K4, Sizes, Location, Design
\* T2M-END R2M0333_PdPF_K4


<1>IM.        
 K6 /\ UNCHANGED <<gen, pgn, pr, pst, sfly, sled>> => K6'
 BY IsaT(10), Sizes, Location, Design DEF K6, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0372_PdPF_K6


<1>Gk.        
 K7 /\ UNCHANGED <<gen, kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>> => K7'
 BY IsaT(10), Sizes, Location, Design DEF Active, GrownP, K7, KPinned, Maps, NHits, Sizes, Location, Design
\* T2M-END R2M0374_PdPF_K7


<1>J7.        
 K8 /\ UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, ph, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>> => K8'
 BY IsaT(10), Sizes, Location, Design DEF Active, K8, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0379_PdPF_K8


<1>B9Cj523MIJtOhKn.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xp, xr, xsrc, xst>>
 BY ONLY <1>B9Cj523MIJtOhKn, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF HwIssue, ghV, instV, kV, pgV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aZfPhdNljj.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE K4'
<2> USE ONLY <1>aZfPhdNljj, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VKRA1lMvjU.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE K6'
<2> USE ONLY <1>VKRA1lMvjU, Sizes, Location, Design
<2>1. K6
 BY V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, pgn, pr, pst, sfly, sled>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>IM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>um3QLnKQdq.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE K7'
<2> USE ONLY <1>um3QLnKQdq, Sizes, Location, Design
<2>1. K7
 BY V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Gk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iMjVTD9F69.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE K8'
<2> USE ONLY <1>iMjVTD9F69, Sizes, Location, Design
<2>1. K8
 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, ph, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>J7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>a1A1Tp0h8UG.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE K13'
<2> USE ONLY <1>a1A1Tp0h8UG, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zuEjsbCCA5j.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE K17'
<2> USE ONLY <1>zuEjsbCCA5j, Sizes, Location, Design
<2>1. K17
 BY V21_Inv_K17, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpg>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aXu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T3kq5O90JI.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE S2'
<2> USE ONLY <1>T3kq5O90JI, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AAjvfXCpDw.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE S3'
<2> USE ONLY <1>AAjvfXCpDw, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ulnmk2jxOX.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE S6'
<2> USE ONLY <1>Ulnmk2jxOX, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YogY1OtnROaMWA9Vl8s.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>YogY1OtnROaMWA9Vl8s, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H0Dre0I9dt5V.        
 ASSUME B2, SFollow
 PROVE RO_E_rpgS
 BY ONLY <1>H0Dre0I9dt5V, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_rpgS, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oVMEMsT8gqQqbk.        
 ASSUME B2, SFollow
 PROVE RO_E_sentry
 BY ONLY <1>oVMEMsT8gqQqbk, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_sentry, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LQE0C5CV3kHl.        
 ASSUME B2, SFollow
 PROVE RO_E_spst
 BY ONLY <1>LQE0C5CV3kHl, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_spst, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pDDs2iPJ6v1.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>pDDs2iPJ6v1, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jGg3R.         SFollow => UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eav3Mlg8.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~RO_Posted(x)
 BY ONLY <1>eav3Mlg8, Sizes, Location, Design, SMTT(10) DEF RO_Posted, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rUEzU8wbH.        
 ASSUME UNCHANGED <<kpin,krs>>
 PROVE RO_PinGrows
 BY ONLY <1>rUEzU8wbH, Sizes, Location, Design, SMTT(10) DEF RO_PinGrows, SPin, SHPin, RO_Pin, RO_HPin, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yFQ846plk6kJ.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg>>, RO_PinGrows
 PROVE UNCHANGED rpgS
<2> USE ONLY <1>yFQ846plk6kJ, Sizes, Location, Design
<2>1. CASE ~B2
 BY ONLY <1>yFQ846plk6kJ, <2>1, SMTT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI1 /\ RO_E_rpgS BY <2>2, <1>pDDs2iPJ6v1, <1>H0Dre0I9dt5V, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <3>1, Design, IsaT(20), Sizes, Location DEF SI1, RO_E_rpgS, RO_HLive, RO_PinGrows, Active, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JJE0Tfox9Q.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg>>, RO_PinGrows
 PROVE UNCHANGED spst
<2> USE ONLY <1>JJE0Tfox9Q, Sizes, Location, Design
<2>1. CASE ~B2
 BY <2>1, ZenonT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI2 /\ SI4 /\ STypeOK /\ RO_E_spst BY <2>2, <1>pDDs2iPJ6v1, <1>LQE0C5CV3kHl, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A p \in SPages : ~RO_Ended(p)
 BY <3>1, SMTT(10), Sizes, Location, Design DEF SI2, RO_Ended, Active, Sizes, Location, Design
 <3>3. \A p \in SPages : ~RO_Drop(p)
 BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SI2, RO_Drop, RO_PinGrows, Sizes, Location, Design
 <3>4. \A p \in SPages : spst'[p]=spst[p]
 BY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF SI4, RO_E_spst, Sizes, Location, Design
 <3>5. QED BY ONLY <3>1, <3>4, SMTT(20), Sizes, Location, Design DEF RO_E_spst, STypeOK, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2182_PdROFollow


<1>FZld0iMu.        
 ASSUME PinInv, UNCHANGED <<kpin,krs,spst,sdata,swrite,skey,sown,sgen,rpgS>>
 PROVE P_SI3'
 BY ONLY <1>FZld0iMu, Sizes, Location, Design, SMTT(10), V21_Inv_P_SI3 DEF P_SI3, SI3, SData, SHeld, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cg3ikpihvVLpb3qO.        
 ASSUME PinInv, NEW x \in Xids, iv[x]="reg"
 PROVE xsrc[x] \in Pages /\ pst[xsrc[x]] # "quar"
<2> USE ONLY <1>cg3ikpihvVLpb3qO, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ QuarNoReg
 BY V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>cg3ikpihvVLpb3qO, V22_T_nx, SMTT(5)

<2>3. x<nx /\ xk[x]="wr" BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, K3, Xids, Sizes, Location, Design
<2>4. xsrc[x] \in Pages /\ Loc(xsrc[x])=xp[x] /\ xp[x] \in PInst
 BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K1, K2, InitPage, InitInst, Sizes, Location, Design
<2>5. x \in led[xsrc[x]] BY <2>1, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF K4, InitPage, Sizes, Location, Design
<2>6. QED BY <2>1, <2>4, <2>5, Sizes, SMTT(10), Location, Design DEF QuarNoReg, IsP, PInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FVK4MYGoOHs3gti.        
 ASSUME PinInv, UNCHANGED xsrc,
        \A x \in Xids : iv'[x]="reg" => iv[x]="reg",
        \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
 PROVE \A x \in Xids : iv'[x]="reg" => ~RO_Quarantine(x)
 BY ONLY <1>FVK4MYGoOHs3gti, Sizes, Location, Design, <1>cg3ikpihvVLpb3qO, SMTT(10) DEF RO_Quarantine, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dhSsfJA1lMG4.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,xk>>,
        \A x \in Xids : iv'[x]="reg" => iv[x]="reg",
        \A x \in Xids : iv'[x]="reg" => ~RO_Quarantine(x)
 PROVE SI7'
<2> USE ONLY <1>dhSsfJA1lMG4, Sizes, Location, Design
<2>1. SI7 /\ K3 BY V21_Inv_K3, V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF SI7, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RO_E_sentry /\ (\A x \in Xids : ~RO_Posted(x)) BY <2>3, <1>oVMEMsT8gqQqbk, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF SI7, K3, RO_E_sentry, RO_Close, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HhMrMp15zYlf7C8MYlk.        
 ASSUME NEW x \in Xids, HwIssue(x)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>HhMrMp15zYlf7C8MYlk, Sizes, Location, Design, Design, ZenonT(10) DEF HwIssue, ghV, instV, kV, pgV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>caHWrrmOgeZHUCNW.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x)
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>caHWrrmOgeZHUCNW, Sizes, Location, Design, Design, SMTT(10) DEF HwIssue, ghV, instV, kV, pgV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XeoU6Qth7MNv8q0iRc.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE UNCHANGED <<spst,rpgS>>
 BY ONLY <1>XeoU6Qth7MNv8q0iRc, Sizes, Location, Design, <1>HhMrMp15zYlf7C8MYlk, <1>caHWrrmOgeZHUCNW, <1>rUEzU8wbH, <1>JJE0Tfox9Q, <1>yFQ846plk6kJ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BFpMV6LDZaCdLbYUr.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x)
 PROVE \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
<2> USE ONLY <1>BFpMV6LDZaCdLbYUr, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>BFpMV6LDZaCdLbYUr, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwIssue, ghV, instV, kV, pgV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lZcGOjgY9yP6jytMO.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x)
 PROVE \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
<2> USE ONLY <1>lZcGOjgY9yP6jytMO, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>lZcGOjgY9yP6jytMO, V22_T_iv, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF HwIssue, ghV, instV, kV, pgV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>W3wE5bnXEWL.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE SI7'
 BY ONLY <1>W3wE5bnXEWL, Sizes, Location, Design, <1>HhMrMp15zYlf7C8MYlk, <1>lZcGOjgY9yP6jytMO, <1>BFpMV6LDZaCdLbYUr, <1>FVK4MYGoOHs3gti, <1>dhSsfJA1lMG4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TML5tQFzJJa.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE P_SI3'
 BY ONLY <1>TML5tQFzJJa, Sizes, Location, Design, <1>caHWrrmOgeZHUCNW, <1>XeoU6Qth7MNv8q0iRc, <1>jGg3R, <1>FZld0iMu DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OJpowx54MQ.         TypInv => soyHJ
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, soyHJ, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>C7LOumUXHk.        
  ASSUME NEW x \in Xids, HwIssue(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>C7LOumUXHk, Sizes, Location, Design, Zenon DEF HwIssue, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Wr6HHtUC7Le.        
  ASSUME NEW x \in Xids, HwIssue(x)
  PROVE EkingyFJ82(x)
  BY ONLY <1>Wr6HHtUC7Le, Sizes, Location, Design, Design, Zenon DEF HwIssue, EkingyFJ82, Sizes, Location, Design
\* T2M-END R2M2240_PdROBase_PdBHwIssueControl


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>UJq2WJpcSh.        
  ASSUME NEW x \in Xids, HwIssue(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>UJq2WJpcSh, Sizes, Location, Design, Zenon DEF HwIssue, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HrN22e7o4xA.        
  ASSUME NEW x \in Xids, HwIssue(x)
  PROVE e3h4Oyw0g7(x)
  BY ONLY <1>HrN22e7o4xA, Sizes, Location, Design, Design, Zenon DEF HwIssue, e3h4Oyw0g7, Sizes, Location, Design
\* T2M-END R2M2312_PdROOld_PP_PdBHwIssueControl


<1>n8mjdCa.        
  ASSUME NEW x \in Xids, PinInv, HwIssue(x)
  PROVE K2'
<2> USE ONLY <1>n8mjdCa, Sizes, Location, Design
<2>1. K2 /\ DpA4 /\ DnMxp
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. e3h4Oyw0g7(x) /\ UNCHANGED <<gen, hd, hp, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>HrN22e7o4xA, <1>UJq2WJpcSh, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF e3h4Oyw0g7, K2, DpA4, DnMxp, ExpInst, ExpPage, InitInst, InitPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NsRu2ymK.        
  ASSUME NEW x \in Xids, PinInv, HwIssue(x)
  PROVE K16'
<2> USE ONLY <1>NsRu2ymK, Sizes, Location, Design
<2>1. K16 /\ DpA4 /\ fr1A /\ DnMxp
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. e3h4Oyw0g7(x) /\ UNCHANGED <<led, pgn, ph, plt, pr, pst, ptl, rg, rpg, sfly, sled, xdst>>
  BY <1>HrN22e7o4xA, <1>UJq2WJpcSh, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, Sizes, SMT, Location DEF e3h4Oyw0g7, GrownP, InFl, K16, NoWriteInto, DnMxp, DpA4, fr1A, Tag, Writing, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ujbYfvE.        
  ASSUME NEW x \in Xids, PinInv, HwIssue(x)
  PROVE S5'
<2> USE ONLY <1>ujbYfvE, Sizes, Location, Design
<2>1. S5 /\ DpA4 /\ fr1A /\ DnMxp
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_S5, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. e3h4Oyw0g7(x) /\ UNCHANGED <<iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
  BY <1>HrN22e7o4xA, <1>UJq2WJpcSh, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, Sizes, SMT, Location DEF e3h4Oyw0g7, S5, DnMxp, DpA4, fr1A, Tag, Sizes, Location, Design
\* T2M-END R2M2313_PdROOld_PP_PdBHwIssueSteps

\* T2M-SCOPE R2M2314_PdROOld_PdPAgg_HwIssue
\* T2M-BODY R2M2314_PdROOld_PdPAgg_HwIssue
\* T2M-LOCAL-VISIBILITY

<1>cC1f718wU.        
  ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
  PROVE K2'
  BY ONLY <1>cC1f718wU, Sizes, Location, Design, <1>n8mjdCa, V21_Inv_K2 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>b7H5VosqVp.        
  ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
  PROVE K16'
  BY ONLY <1>b7H5VosqVp, Sizes, Location, Design, <1>NsRu2ymK, V21_Inv_K16 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kFgZSUuF9.        
  ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
  PROVE S5'
  BY ONLY <1>kFgZSUuF9, Sizes, Location, Design, <1>ujbYfvE, V21_Inv_S5 DEF Sizes, Location, Design
\* T2M-END R2M2314_PdROOld_PdPAgg_HwIssue

\* T2M-SCOPE R2M2315_PdROFinal_HwIssue_K10
\* T2M-BODY R2M2315_PdROFinal_HwIssue_K10
\* T2M-LOCAL-VISIBILITY

<1>ByBFT7qZ6XUwksFS8.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE K16'
 BY ONLY <1>ByBFT7qZ6XUwksFS8, Sizes, Location, Design, <1>b7H5VosqVp DEF Sizes, Location, Design
\* T2M-END R2M2316_PdROFinal_HwIssue_K16

\* T2M-SCOPE R2M2317_PdROFinal_HwIssue_K2

<1>WiEIlmJgzyBaB6kN.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE K2'
 BY ONLY <1>WiEIlmJgzyBaB6kN, Sizes, Location, Design, <1>cC1f718wU DEF Sizes, Location, Design
\* T2M-END R2M2317_PdROFinal_HwIssue_K2

\* T2M-SCOPE R2M2318_PdROFinal_HwIssue_K3

<1>z90izWp0LZyiJWR9.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE S5'
 BY ONLY <1>z90izWp0LZyiJWR9, Sizes, Location, Design, <1>kFgZSUuF9 DEF Sizes, Location, Design
\* T2M-END R2M2319_PdROFinal_HwIssue_S5


<1>JIakYa66KcoYhIHmg5y.        
  ASSUME NEW x \in Xids, PinInv, HwIssue(x)
  PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>JIakYa66KcoYhIHmg5y, Sizes, Location, Design
<2>1. BaseSealOnlyLanded /\ JojO /\ vQ8m /\ NFMkE
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, soyHJ, BaseSafety, Sizes, Location, Design
<2>2. EkingyFJ82(x) /\ UNCHANGED <<pst, ptl, xdst>>
  BY <1>Wr6HHtUC7Le, <1>C7LOumUXHk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, Sizes, SMT, Location DEF EkingyFJ82, InFl, NoWriteInto, BaseSealOnlyLanded, NFMkE, JojO, vQ8m, Tag, Writing, Sizes, Location, Design
\* T2M-END R2M2662_PdROBase_PdBHwIssueSteps


<1>rK7G73X0Gck1dpM8wCNYsa.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE SealOnlyLanded'
<2> USE ONLY <1>rK7G73X0Gck1dpM8wCNYsa, Sizes, Location, Design
<2>1. BaseSealOnlyLanded' BY <1>JIakYa66KcoYhIHmg5y, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>rK7G73X0Gck1dpM8wCNYsa, <1>HhMrMp15zYlf7C8MYlk, V22_T_xdst, SMTT(5)

<2>3. SharedImmutable' BY <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, Location, Design DEF SealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M2664_PdROSafety_HwIssue_SealOnlyLanded

\* T2M-SCOPE R2M2665_PdROSafety_HwIssue_SendOwnLanded

<1> QED BY <1>TML5tQFzJJa, <1>m6DR7irIX9iHD5j7bFi62FNU, <1>rK7G73X0Gck1dpM8wCNYsa, <1>W3wE5bnXEWL, <1>WiEIlmJgzyBaB6kN, <1>ByBFT7qZ6XUwksFS8, <1>z90izWp0LZyiJWR9, <1>aZfPhdNljj, <1>VKRA1lMvjU, <1>um3QLnKQdq, <1>iMjVTD9F69, <1>a1A1Tp0h8UG, <1>zuEjsbCCA5j, <1>T3kq5O90JI, <1>AAjvfXCpDw, <1>Ulnmk2jxOX, <1>YogY1OtnROaMWA9Vl8s, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_HwIssue SHA 1d40fe546bce558fd3713478cd5e0e2464e6dc1fed83b187ef63125c10c4317d
USE DEF ShapeNetFrame
HIDE DEF Part_HwIssue_03_02, V21_Inv_BaseSafety, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K13, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_S2, V21_Inv_S3, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_iv, V22_T_nx, V22_T_pst, V22_T_schoice, V22_T_smap, V22_T_xdst, V22_T_xsrcP, V22_T_xsrcS
LEMMA ShapeEffect_HwIssue ==
 ASSUME NEW x \in Xids, Sizes, Design, HwIssue(x)
 PROVE net'=net
 BY ONLY HwIssue(x), Sizes, Design, SMTT(5) DEF HwIssue, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_HwIssue ==
 ASSUME NEW x \in Xids, Sizes, Design, IndInv, MessageShape, HwIssue(x)
 PROVE MessageShape'
 BY ONLY Sizes, Design, HwIssue(x), MessageShape, ShapeEffect_HwIssue, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_HwIssue SHA e40c7ec736c19a8dfc3fb8e7da3e9e4688ded7d1bcf0cdc1ec69a5223cc9fb0d
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_HwIssue, ShapeNetFrame
THEOREM DomainKeep_HwIssue ==
 ASSUME NEW x \in Xids, Sizes, Location, Design, PinInv, HwIssue(x)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, HwIssue(x), ShapeEffect_HwIssue
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_HwIssue_04 SHA c0ec69f2efb1881ddd0288d612aac0c481a5d26dab3735fb05b194b10d65d6ff
USE DEF V21_Inv_P_B2OffInit, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst
HIDE DEF ShapeEffect_HwIssue, V21_Inv_MsgXDomain
THEOREM Group_HwIssue_04 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE (ReplyTruth)' /\ (QuarNeverMapped)' /\ (QuarNoReg)' /\ (SharedImmutable)' /\ (P_B2OffInit)' /\ (MsgXDomain)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
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

<1>ukltfVMS0COkpmVIXai9TNs.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>ukltfVMS0COkpmVIXai9TNs, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ukltfVMS0COkpmVIXai9TNs, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF HwIssue, ghV, instV, kV, pgV, recV, rtV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Yv6jCEdj8RwLW1km4.        
  ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>Yv6jCEdj8RwLW1km4, Sizes, Location, Design, DomainKeep_HwIssue, SMTT(5)
\* T2M-END R2M0293_PdPDomain_HwIssue


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>m948gxWe0.        
 P_B2OffInit /\ UNCHANGED <<dedupSeen, dpreOK, hitSeen, rpgS, schoice, sdata, sentry, sgen, skey, smap, sown, sprefc, spst, squar, sready, swrite, xprefixOK, xsrcP, xsrcS>> => P_B2OffInit'
 BY IsaT(10), Sizes, Location, Design DEF P_B2OffInit, SInit, Sizes, Location, Design
\* T2M-END R2M0451_PdPF_B2OffInit


<1>BBQUQLHXJe.        
 ReplyTruth /\ UNCHANGED <<crep, dsucc>> => ReplyTruth'
 BY IsaT(10), Sizes, Location, Design DEF ReplyTruth, Sizes, Location, Design
\* T2M-END R2M0349_PdPF_ReplyTruth


<1>agy0tgaoa.        
 QuarNoReg /\ UNCHANGED <<iv, led, pst>> => QuarNoReg'
 BY IsaT(10), Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
\* T2M-END R2M0351_PdPF_QuarNoReg


<1>CHHI4E3y3uZD9LA.        
 QuarNeverMapped /\ UNCHANGED <<ph, pst, rpg>> => QuarNeverMapped'
 BY IsaT(10), Sizes, Location, Design DEF Active, QuarNeverMapped, Sizes, Location, Design
\* T2M-END R2M0350_PdPF_QuarNeverMapped


<1>B9Cj523MIJtOhKn.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xp, xr, xsrc, xst>>
 BY ONLY <1>B9Cj523MIJtOhKn, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF HwIssue, ghV, instV, kV, pgV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WQ7IxZ9w87qYhqqvt2.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>WQ7IxZ9w87qYhqqvt2, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t3jlYPBXVHDqGyDwQpErpFK.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE QuarNeverMapped'
<2> USE ONLY <1>t3jlYPBXVHDqGyDwQpErpFK, Sizes, Location, Design
<2>1. QuarNeverMapped
 BY V21_Inv_QuarNeverMapped, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ph, pst, rpg>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>CHHI4E3y3uZD9LA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sN3Vi6ejYHnzgtPzf.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE QuarNoReg'
<2> USE ONLY <1>sN3Vi6ejYHnzgtPzf, Sizes, Location, Design
<2>1. QuarNoReg
 BY V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, pst>>
 BY <1>B9Cj523MIJtOhKn, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>agy0tgaoa, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>X0rWvIrD7gbSGzr7W.        
 ASSUME NEW x \in Xids, PinInv, HwIssue(x), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>X0rWvIrD7gbSGzr7W, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0476_PdPOff_HwIssue


<1> QED BY <1>WQ7IxZ9w87qYhqqvt2, <1>t3jlYPBXVHDqGyDwQpErpFK, <1>sN3Vi6ejYHnzgtPzf, <1>ukltfVMS0COkpmVIXai9TNs, <1>X0rWvIrD7gbSGzr7W, <1>Yv6jCEdj8RwLW1km4, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Group_HwIssue_01, Part_HwIssue_02_01, Part_HwIssue_02_02, Part_HwIssue_03_01, Part_HwIssue_03_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_HwIssue
HIDE DEF DomainKeep_HwIssue, V21_Inv_P_B2OffInit, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst

THEOREM Step_HwIssue ==
 ASSUME NEW x \in Xids, Sizes, Location, Design, PinInv, HwIssue(x), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Xids, Sizes, Location, Design, PinInv, HwIssue(u), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Group_HwIssue_01, Part_HwIssue_02_01, Part_HwIssue_02_02, Part_HwIssue_03_01, Part_HwIssue_03_02, Group_HwIssue_04, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Group_HwIssue_01, Part_HwIssue_02_01, Part_HwIssue_02_02, Part_HwIssue_03_01, Part_HwIssue_03_02, Group_HwIssue_04, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, HwIssue(x), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, HwIssue(x), ShapeKeep_HwIssue, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
