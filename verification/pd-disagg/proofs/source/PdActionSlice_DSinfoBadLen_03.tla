---- MODULE PdActionSlice_DSinfoBadLen_03 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_5454ba58ce6cf21d, PdFinalInvProjections, PdFinalEffects, PdSharedRefCounts, PdFunctionFrames, PdShapeBase, PdActionSlice_DSinfoBadLen_02

\* Complete original body PdFinalPart_DSinfoBadLen_02_01 SHA f4591c4e0faa44af0947aa5cd7770f95cb1e1bb8900ea022e66d7a4903563555
HIDE DEF AuxType_5454ba58ce6cf21d, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_DSinfoBadLen_01_01, Part_DSinfoBadLen_01_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K13, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_FunctionEta, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_MatrixEta, V22_PostSharedRefZero, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SharedRefZero, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_DSinfoBadLen_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE (K7)' /\ (K15)' /\ (ReadOwnLanded)' /\ (K9)' /\ (QuarNeverMapped)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RD_PFrame == /\ \A i \in PInst, r \in Rq : ph'[i][r]=ph[i][r] /\ rg'[i][r]=rg[i][r]
                        /\ UNCHANGED <<kpin,krs>>

           RD_SFrame == UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>


           RD_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0

           RD_Src(x) == IF RD_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0

           RD_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}

           RD_Quarantine(x) == x \in sentry /\ ~RD_Close(x) /\
                     ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))

           RD_E2 == (sentry \cup {x \in Xids : RD_Posted(x)}) \ {x \in Xids : RD_Close(x) \/ RD_Quarantine(x)}

           RD_PX == [x \in Xids |-> IF RD_Posted(x) THEN (IF RD_Src(x) \in SPages /\ spst[RD_Src(x)]="priv" THEN {RD_Src(x)} ELSE {}) ELSE xsrcP[x]]

           RD_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\
                    (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")

           RD_Pin2(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p

           RD_Drop(p) == (RD_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RD_Pin2(p) /\ sready[p] /\ ~(\E x \in RD_E2 : p \in RD_PX[x])

           RD_SUpdate == spst'=[p \in SPages |-> IF \E x \in Xids : RD_Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                                    ELSE IF RD_Drop(p) THEN "free" ELSE IF RD_Ended(p) THEN "drain" ELSE spst[p]]
           \* T2M-LOCAL-VISIBILITY

           RD_PhType == ph \in [Inst -> [Rq -> PhSet]]

           RD_RgType == rg \in [Inst -> [Rq -> 0..MG]]

           RD_NxType == nx \in 1..(MX+1)
           \* T2M-LOCAL-VISIBILITY

           RD_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
                    spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])

           RD_XPrefixUpdate == xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RD_Valid(x) ELSE xprefixOK[x]]

           RD_DPreUpdate == dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                                    THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                                          (IF hw[x]="issued" THEN xprefixOK[x] ELSE RD_Valid(x))
                                    ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
           \* T2M-LOCAL-VISIBILITY

           RD_NoStop == \A x \in Xids : ~(hw[x] \in {"fly","issued"} /\ hw'[x]="stop")

           RD_ReadBack == \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} =>
                          ph[j][r] \in {"run","ovl"} /\ rpg'[j][r]=rpg[j][r]

           RD_ReadPart == B2 => \A j \in DInst,r \in Rq : ph[j][r] \in {"run","ovl"} => dpreOK[rpg[j][r]]

           \* T2M-LOCAL-VISIBILITY

           ItYdB == gen \in [Rq -> 0..MG]


           RIu4 == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           VTew == rp \in [Rq -> {0} \cup Inst]


           JTuv == rd \in [Rq -> {0} \cup Inst]


           RLaS == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           gnQB == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           txvQrA7 == alive \in [Inst -> BOOLEAN]


           lcBzRZJ == nfail \in 0..MaxFail


           AZlSME == torn \in [Inst -> SUBSET Inst]


           MDTwQr == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           Y4aUFf == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           tqQeS == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           vn9M == ph \in [Inst -> [Rq -> PhSet]]


           oGG7 == rg \in [Inst -> [Rq -> 0..MG]]


           bNpAu == rpg \in [Inst -> [Rq -> 0..NP]]


           fdIJv == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           sld6 == rx \in [Inst -> [Rq -> 0..MX]]


           BDN6_c == rhit \in [Inst -> [Rq -> BOOLEAN]]


           X6zX5 == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           gv2_ == pr \in [Pages -> 0..NR]


           PwqP6 == pgn \in [Pages -> 0..MG]


           jyWjj == plt \in [Pages -> 0..PS]


           vwKWM == ptl \in [Pages -> -1..PS]


           eWP7z1 == pvis \in [Pages -> BOOLEAN]


           ZpUxx == led \in [Pages -> SUBSET Xids]


           sBjpCf == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           a4GqBP == sled \in [Pages -> SUBSET (Rq \X Gens)]


           AtabIBD == prefc \in [Pages -> 0..NR]


           xhIfp == pqp \in [Pages -> {0} \cup Inst]


           ZhBZ == xr \in [Xids -> 0..NR]


           HiUz == xg \in [Xids -> 0..MG]


           qcWy == xk \in [Xids -> {"none", "wr", "rd"}]


           I3KH == xp \in [Xids -> {0} \cup Inst]


           Vikm == xd \in [Xids -> {0} \cup Inst]


           KbhysL == xsrc \in [Xids -> 0..NP]


           bpmgv4 == xdst \in [Xids -> 0..NP]


           loK6p == xnt \in [Xids -> 0..PS]


           ychB == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           tBG7n == hok \in [Xids -> BOOLEAN]


           LGvs == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           H3aTc == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           uq0GF == xlt \in [Xids -> 0..PS]


           XX2v == nx \in 1..(MX + 1)


           QdnU2 == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           ZCaSEo == drep \in [Rq -> [Gens -> 0..2]]


           WDYhkn == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           XIw5jsz == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           kmCLbA == gbad \in BOOLEAN


           TEJtP == ItYdB /\ RIu4 /\ VTew /\ JTuv /\ RLaS /\ gnQB /\ txvQrA7 /\ lcBzRZJ /\ AZlSME /\ MDTwQr /\ Y4aUFf /\ tqQeS /\ vn9M /\ oGG7 /\ bNpAu /\ fdIJv /\ sld6 /\ BDN6_c /\ X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ vwKWM /\ eWP7z1 /\ ZpUxx /\ sBjpCf /\ a4GqBP /\ AtabIBD /\ xhIfp /\ ZhBZ /\ HiUz /\ qcWy /\ I3KH /\ Vikm /\ KbhysL /\ bpmgv4 /\ loK6p /\ ychB /\ tBG7n /\ LGvs /\ H3aTc /\ uq0GF /\ XX2v /\ QdnU2 /\ ZCaSEo /\ WDYhkn /\ XIw5jsz /\ kmCLbA

           \* T2M-LOCAL-VISIBILITY

           DSinfoBadLenD2Pages(j,r) ==
             /\ led[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {} /\ PageTo(rpg[j][r],FreeOrDrain(rpg[j][r]),0,{},{})
             /\ UNCHANGED <<ptl,pvis,sfly,kpin,kfly,krs,hw,xr,xg,xk,xsrc,xdst,xnt,xlt,hok,xst,nx>>

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

           hMnyzFiJ2WDPM5bBaRN(j,r) ==
             /\ led[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {} /\ PageTo(rpg[j][r],FreeOrDrain(rpg[j][r]),0,{},{})
             /\ UNCHANGED <<ptl,pvis,sfly,kpin,kfly,krs,hw,xr,xg,xk,xsrc,xdst,xnt,xlt,hok,xst,nx>>


           \* T2M-LOCAL-VISIBILITY

           Mzvo7bvWxtFIDq(p) ==
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



           hcvRibaXkekYBw(i,r) ==
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



           XE3O9oulwAfsHB(j,r) ==
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



           SbBYu4pWxTHT(j,r,g,ok) ==
             /\ ph' = [ph EXCEPT ![j][r] = "end"]
             /\ drep' = [drep EXCEPT ![r][g] = 1]
             /\ dsucc' = IF ok THEN [dsucc EXCEPT ![r][g] = TRUE] ELSE dsucc
             /\ UNCHANGED <<rg,hd,crep>> /\ ~gbad'


           \* T2M-LOCAL-VISIBILITY

           Z0q_o_5gXYc9 == \E x \in Xids : x < nx /\ iv[x] = "none" /\ iv' = [iv EXCEPT ![x] = "nopost"]



           V0HEdR3F(p) == {r \in Rq : ph[Loc(p)][r] \in {"run","ovl"} /\ rhit[Loc(p)][r] /\ rpg[Loc(p)][r] = p}


           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_Posted, RD_Src, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_NoStop, RD_ReadBack, RD_ReadPart, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, DSinfoBadLenD2Pages, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, hMnyzFiJ2WDPM5bBaRN, Mzvo7bvWxtFIDq, hcvRibaXkekYBw, XE3O9oulwAfsHB, SbBYu4pWxTHT, Z0q_o_5gXYc9, V0HEdR3F

<1>dbfJSAnRudgsXK.         B2 /\ SFollow => RD_SUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_SUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_Posted, RD_Src, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EnXJwndWG1D4vkee.         PinInv => RD_PhType /\ RD_RgType /\ RD_NxType
<2>project. CoreTypeOK => RD_PhType /\ RD_RgType /\ RD_NxType
 BY ONLY ZenonT(5) DEF CoreTypeOK, RD_PhType, RD_RgType, RD_NxType
<2>qed. QED BY ONLY <2>project, V21_Inv_BaseTypeOK, Sizes, Location, Design, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>lQA2.         PinInv => STypeOK /\ (B2 => SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6)
 BY SMTT(10), V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uaJsMuSZCFU.         SFollow => RD_SFrame
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_SFrame, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MWG2x9W8WQcG1.         \A p \in SPages : Loc(p) \in PInst
 BY Location, SMTT(10), Sizes, Design DEF KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fIPaydrEb.        
 ASSUME PinInv, SFollow, RD_PFrame
 PROVE UNCHANGED spst
<2> USE ONLY <1>fIPaydrEb, Sizes, Location, Design
<2>1. STypeOK /\ (B2 => SI2 /\ SI4)
 BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <1>lQA2, SMTT(10) DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <2>2, <2>2, SMTT(10), V21_SFollowOff DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. \A x \in Xids : xsrcP[x]={}
 BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <2>3, <2>1, <2>3, SMTT(10) DEF SI4, Sizes, Location, Design
 <3>2. \A p \in SPages : spst[p]="priv" =>
        sown[p] \in Rq /\ rg'[Loc(p)][sown[p]]=sgen[p] /\ ph'[Loc(p)][sown[p]] # "end"
 BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <2>3, <2>1, <2>3, <1>MWG2x9W8WQcG1, SMTT(10) DEF SI2, RD_PFrame, Active, Sizes, Location, Design
 <3>3. \A p \in SPages : (spst[p] \in {"drain","dup"} /\ sready[p]) =>
        \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p
 BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <2>3, <2>1, <2>3, SMTT(10) DEF SI2, RD_PFrame, SPin, Sizes, Location, Design
 <3>4. ASSUME NEW p \in SPages PROVE spst'[p]=spst[p]
  <4>1. spst[p]="priv" => sown[p] \in Rq /\ rg'[Loc(p)][sown[p]]=sgen[p] /\ ph'[Loc(p)][sown[p]] # "end"
  BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <2>3, <3>2, SMTT(10) DEF Sizes, Location, Design
  <4>2. (spst[p] \in {"drain","dup"} /\ sready[p]) =>
        \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p
  BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <2>3, <3>3, SMTT(10) DEF Sizes, Location, Design
  <4>3. QED BY <2>3, <3>1, <4>1, <4>2, <1>dbfJSAnRudgsXK, SMTT(10), Sizes, Location, Design DEF RD_SUpdate, RD_Drop, RD_Ended, RD_Pin2, Sizes, Location, Design
 <3>5. DOMAIN spst'=SPages /\ spst' \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
 BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <2>3, <2>1, <2>3, <1>dbfJSAnRudgsXK, SMTT(10) DEF RD_SUpdate, STypeOK, Sizes, Location, Design
 <3>6. QED BY <2>1, <3>4, <3>5, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ObD2VNqtdYG.        
 ASSUME PinInv, SFollow, RD_PFrame, NEW e, e[3] \in SPages, KHeld(e)
 PROVE KHeld(e)'
<2> USE ONLY <1>ObD2VNqtdYG, Sizes, Location, Design
<2>1. UNCHANGED spst BY <1>fIPaydrEb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame BY <1>uaJsMuSZCFU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF KHeld, SHeld, RD_SFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JEVvpj4kOKQ.        
 ASSUME SFollow, NEW i, NEW e, e[3] \in SPages, KData(i,e), xdst' \in [Xids -> 0..NP]
 PROVE KData(i,e)'
<2> USE ONLY <1>JEVvpj4kOKQ, Sizes, Location, Design
<2>1. RD_SFrame BY <1>uaJsMuSZCFU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. NoWriteInto(e[3])'
 BY Sizes, SMTT(10), Location, Design DEF NoWriteInto, Writing, SPages, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF KData, SData, RD_SFrame, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>lkce2yg0h1tNEW.        
 ASSUME PinInv, SFollow, RD_PFrame, xdst' \in [Xids -> 0..NP]
 PROVE \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
<2> USE ONLY <1>lkce2yg0h1tNEW, Sizes, Location, Design
<2>1. K14 /\ K15 /\ NoFreeUnderRead /\ UNCHANGED <<kpin,krs>>
 BY SMTT(10), V21_Inv_K14, V21_Inv_K15, V21_Inv_NoFreeUnderRead, Sizes, Location, Design DEF RD_PFrame, Sizes, Location, Design
<2>2. ASSUME NEW i \in Inst, NEW s \in KSlots, kpin'[i][s], NEW e \in krs'[i][s], e[3] \in SPages
       PROVE KHeld(e)' /\ KData(i,e)' /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={}) /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 <3>1. KHeld(e) /\ KData(i,e) /\ IsP(i)
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF NoFreeUnderRead, K14, K15, Sizes, Location, Design
 <3>2. KHeld(e)' /\ KData(i,e)'
 BY <2>2, <3>1, <1>ObD2VNqtdYG, <1>JEVvpj4kOKQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. ~IsD(i) /\ e[3] \notin Pages
 BY <2>2, <3>1, Sizes, SMTT(10), Location, Design DEF IsP, IsD, PInst, DInst, Inst, NL, Pages, SPages, Sizes, Location, Design
 <3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0687_PdRDSharedFrames


<1>HyTxass4cKRoY43Ha.         B2 /\ SFollow => RD_XPrefixUpdate /\ RD_DPreUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_XPrefixUpdate, RD_DPreUpdate, RD_Valid, Sizes, Location, Design
\* T2M-LOCAL-VISIBILITY

<1>YCfapvemrZ4.        
 ASSUME PinInv, SFollow, RD_NoStop
 PROVE \A p \in Pages : pst[p] # "free" => dpreOK'[p]=dpreOK[p]
<2> USE ONLY <1>YCfapvemrZ4, Sizes, Location, Design
<2>1. STypeOK BY <1>lQA2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 <3>1. SFollow BY ONLY <1>YCfapvemrZ4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED sV BY ONLY <3>1, <2>2, SMTT(10), Sizes, Location, Design, V21_SFollowOff DEF Sizes, Location, Design
 <3>3. UNCHANGED dpreOK BY ONLY <3>2, SMTT(10), Sizes, Location, Design DEF sV, Sizes, Location, Design
 <3>4. QED BY ONLY <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE B2
 BY <2>1, <2>3, <1>HyTxass4cKRoY43Ha, SMTT(10), Sizes, Location, Design DEF STypeOK, RD_DPreUpdate, RD_NoStop, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>N1pr8s7uSKK.        
 ASSUME PinInv
 PROVE \A j \in DInst,r \in Rq : ph[j][r] \in {"run","ovl"} => rpg[j][r] \in Pages /\ pst[rpg[j][r]] # "free"
<2> USE ONLY <1>N1pr8s7uSKK, Sizes, Location, Design
<2>1. K8 /\ K9 BY SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. DInst \subseteq Inst /\ \A j \in DInst : IsD(j)
 BY Sizes, SMTT(10), Location, Design DEF DInst, Inst, NL, IsD, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FQ5lBNYlCkhQTVYF.        
 ASSUME PinInv, SFollow, RD_NoStop, B2 => RD_ReadBack
 PROVE RD_ReadPart'
<2> USE ONLY <1>FQ5lBNYlCkhQTVYF, Sizes, Location, Design
<2>1. RD_ReadPart BY SMTT(10), V21_Inv_ReadOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, RD_ReadPart, Sizes, Location, Design
<2>2. \A p \in Pages : pst[p] # "free" => dpreOK'[p]=dpreOK[p]
 BY <1>YCfapvemrZ4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A j \in DInst,r \in Rq : ph[j][r] \in {"run","ovl"} => rpg[j][r] \in Pages /\ pst[rpg[j][r]] # "free"
 BY <1>N1pr8s7uSKK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF RD_ReadPart, RD_ReadBack, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RCKQzj633zU.         BaseReadOwnLanded' /\ RD_ReadPart' => ReadOwnLanded'
 BY SMTT(10), Sizes, Location, Design DEF ReadOwnLanded, RD_ReadPart, Sizes, Location, Design
\* T2M-END R2M0732_PdRDSharedRead


<1>wxufcYcLTlWllXSu4MzCYh.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>wxufcYcLTlWllXSu4MzCYh, Sizes, Location, Design, SMTT(10) DEF DSinfoBadLen, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>K9O2hjEUFQLZEtRayAd.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>K9O2hjEUFQLZEtRayAd, Sizes, Location, Design
<2>1. RD_PhType /\ RD_RgType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>wxufcYcLTlWllXSu4MzCYh, Sizes, SMTT(10), Location, Design DEF DSinfoBadLen, instV, kV, rtV, RD_PFrame, PInst, DInst, Inst, NL, IsD, RD_PhType, RD_RgType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SXgBxrImDkUZQ3edLZkzu.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE xdst' \in [Xids -> 0..NP]
<2> USE ONLY <1>SXgBxrImDkUZQ3edLZkzu, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>SXgBxrImDkUZQ3edLZkzu, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY SMTT(10), Sizes, Location, Design DEF DSinfoBadLen, instV, kV, rtV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1019_PdRDEffects_DSinfoBadLen


<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ifRGm5FgdlQgywE.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DSinfoBadLen(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>ifRGm5FgdlQgywE, Sizes, Location, Design, ZenonT(5) DEF DSinfoBadLen, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VLROWBcOqe16ENnb.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VBlwMBLC5pBW9rEeNkh7.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, Active(i,r)
  PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (~rhit[i][r] => pst[rpg[i][r]] = "priv" /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r])
        /\ (IsP(i) => ~rhit[i][r])
        /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  BY ONLY <1>VBlwMBLC5pBW9rEeNkh7, Sizes, Location, Design, SMTT(10) DEF K8, Active, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KUUrHEFvbxmFhGeG2.        
  ASSUME NEW i \in DInst, NEW r \in Rq, K9, rhit[i][r]
  PROVE /\ ph[i][r] \in {"run","ovl","end"}
        /\ (ph[i][r] \in {"run","ovl"} => pst[rpg[i][r]] = "shared" /\ Tag(r,rg[i][r]) \in sled[rpg[i][r]])
  BY ONLY <1>KUUrHEFvbxmFhGeG2, Sizes, Location, Design, Zenon DEF K9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H6vDv84Wz3n8J.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, IsD(j), Active(j,r)
  PROVE rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
<2> USE ONLY <1>H6vDv84Wz3n8J, Sizes, Location, Design
<2>1. K8 /\ K9 /\ j \in DInst
  BY Sizes, SMTT(10), V21_Inv_K8, V21_Inv_K9, Location, Design DEF IsD, Inst, DInst, NL, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
\* T2M-END R2M0697_PdRDPort_PdOneReplyIncrement


<1>vzIw7gdmQ5thZh8W.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE /\ IsD(j) /\ j \in DInst /\ Active(j,r)
        /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
        /\ rg[j][r] \in Gens /\ rg[j][r] <= gen[r]
        /\ drep[r][rg[j][r]] = 0 /\ ~rhit[j][r] /\ pst[rpg[j][r]] = "priv" /\ ph[j][r] = "wait"
<2> USE ONLY <1>vzIw7gdmQ5thZh8W, Sizes, Location, Design
<2>1. IsD(j) /\ Active(j,r) /\ K8 /\ K9 /\ ph[j][r] = "wait"
  BY SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF DSinfoBadLen, Active, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>VBlwMBLC5pBW9rEeNkh7, <1>H6vDv84Wz3n8J, <1>KUUrHEFvbxmFhGeG2, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>R8nyUoLoMUaryHchfB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DSinfoBadLen(j,r)
  PROVE /\ ph' = [ph EXCEPT ![j][r] = "end"]
        /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(drep[r][rg[j][r]])]
        /\ UNCHANGED dsucc
        /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,crep,rg,rpg,rpe,rx,rhit>>
  BY ONLY <1>R8nyUoLoMUaryHchfB, Sizes, Location, Design, SMTT(10) DEF DSinfoBadLen, rtV, instV, kV, recV, pgV, xV, ghV, vars, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ObOWfCF8avamwwQyGGrWP.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DSinfoBadLen(j,r)
  PROVE DSinfoBadLenD2Pages(j,r)
  BY ONLY <1>ObOWfCF8avamwwQyGGrWP, Sizes, Location, Design, Design, SMTT(10) DEF DSinfoBadLenD2Pages, DSinfoBadLen, rtV, instV, kV, recV, pgV, xV, ghV, vars, Sizes, Location, Design
\* T2M-END R2M1021_PdRDPort_PdD2DSinfoBadLenEffect


<1>OoVmc4OKE664BJeRb.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE /\ led' = led /\ sled' = sled
        /\ \A p \in Pages : sled'[p] \subseteq sled[p]
<2> USE ONLY <1>OoVmc4OKE664BJeRb, Sizes, Location, Design
<2>1. ZpUxx /\ a4GqBP /\ rpg[j][r] \in Pages
  BY <1>vzIw7gdmQ5thZh8W, <1>TLVER4XMUn, SMTT(10), V21_Inv_KStruct, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, KStruct, Sizes, Location, Design
<2>2. DSinfoBadLenD2Pages(j,r)
  BY <1>ObOWfCF8avamwwQyGGrWP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF DSinfoBadLenD2Pages, PageTo, PageToG, GrownOwn, GFr, GTo, GrownOf, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, ZpUxx, a4GqBP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>M7U8EGNWs4e3KbI87.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE \A p \in Pages : IsP(Loc(p)) => UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<2> USE ONLY <1>M7U8EGNWs4e3KbI87, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ ZpUxx /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. IsD(j) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
  BY <1>vzIw7gdmQ5thZh8W, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. DSinfoBadLenD2Pages(j,r)
  BY <1>ObOWfCF8avamwwQyGGrWP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in Pages, IsP(Loc(p)) PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<3>1. p # rpg[j][r] /\ p \notin GrownOf(j,r)
  BY <2>4, <2>2, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF GrownOf, Sizes, Location, Design
<3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF DSinfoBadLenD2Pages, PageTo, PageToG, GrownOwn, GFr, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1022_PdRDPort_PdD2DSinfoBadLenMasks


<1>sQi5n8lhuzheP.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
  PROVE K15'
<2> USE ONLY <1>sQi5n8lhuzheP, Sizes, Location, Design
<2>1. K14 /\ K15 /\ tqQeS
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K14, V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,ptl,pvis,sfly,hw,xdst>>
  BY <1>ifRGm5FgdlQgywE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. led' = led /\ \A p \in Pages : sled'[p] \subseteq sled[p]
  BY <1>OoVmc4OKE664BJeRb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW i \in Inst, NEW s \in KSlots, kpin'[i][s], NEW e \in krs'[i][s], e[3] \in Pages
       PROVE /\ KData(i,e)'
             /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]] = {})
             /\ (IsP(i) => sled'[e[3]] = {})
<3>1. e[3] \in Pages /\ Loc(e[3]) = i /\ KData(i,e)
       /\ ((IsD(i) /\ e[4] # 1) => led[e[3]] = {})
       /\ (IsP(i) => sled[e[3]] = {})
  BY <2>4, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K14, K15, tqQeS, Sizes, Location, Design
<3>2. ~IsD(i) => IsP(i) /\ plt'[e[3]] = plt[e[3]]
  BY <2>4, <3>1, <1>M7U8EGNWs4e3KbI87, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. QED BY <2>4, P_PagePoolsDisjoint, <3>1, <3>2, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF KData, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>5. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>K9O2hjEUFQLZEtRayAd, <1>SXgBxrImDkUZQ3edLZkzu, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>5, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED BY <1>wxufcYcLTlWllXSu4MzCYh, <2>6, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>4, SMTT(10), V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF K15, TEJtP, tqQeS, KPages, Sizes, Location, Design
\* T2M-END R2M1023_PdRDPort_PdD2DSinfoBadLen_K15

\* T2M-SCOPE R2M1024_PdRDPort_PdD2DSinfoBadLen_NoFreeUnderRead

<1>na9LdMalL6sEH2Qpz6d.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW i \in Inst, NEW u \in Rq,
         PinInv, IsD(j), Active(j,r), Active(i,u), ~rhit[i][u], i # j \/ u # r
  PROVE rpg[i][u] \in Pages /\ rpg[i][u] # rpg[j][r] /\ rpg[i][u] \notin GrownOf(j,r)
<2> USE ONLY <1>na9LdMalL6sEH2Qpz6d, Sizes, Location, Design
<2>1. K8 /\ K9 /\ j \in DInst
  BY <1>VLROWBcOqe16ENnb, SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[i][u] \in Pages /\ Loc(rpg[i][u]) = i /\ pst[rpg[i][u]] = "priv" /\ pr[rpg[i][u]] = u
       /\ Loc(rpg[j][r]) = j /\ (~rhit[j][r] => pr[rpg[j][r]] = r)
  BY <2>1, <1>VBlwMBLC5pBW9rEeNkh7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rhit[j][r] => pst[rpg[j][r]] = "shared"
  BY <2>1, <1>KUUrHEFvbxmFhGeG2, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<2>4. rpg[i][u] # rpg[j][r]
  BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF GrownOf, Sizes, Location, Design
\* T2M-END R2M0714_PdRDPort_PdD2Separation


<1>vAi1NcaFg4RCIuOuXEXHPcY.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE \A i \in Inst, u \in Rq :
    (Active(i,u) /\ ~rhit[i][u] /\ (i # j \/ u # r)) =>
    LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p],sfly[p],sled[p]>>
<2> USE ONLY <1>vAi1NcaFg4RCIuOuXEXHPcY, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ ZpUxx /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. DSinfoBadLenD2Pages(j,r) /\ IsD(j) /\ Active(j,r) /\ rpg[j][r] \in Pages /\ UNCHANGED rpg
  BY <1>ObOWfCF8avamwwQyGGrWP, <1>vzIw7gdmQ5thZh8W, <1>ifRGm5FgdlQgywE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW u \in Rq, Active(i,u), ~rhit[i][u], i # j \/ u # r
       PROVE LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p],sfly[p],sled[p]>>
<3>1. rpg[i][u] \in Pages /\ rpg[i][u] # rpg[j][r] /\ rpg[i][u] \notin GrownOf(j,r)
  BY <2>2, <2>3, <1>na9LdMalL6sEH2Qpz6d, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <3>1, SMTT(10), Sizes, Location, Design DEF DSinfoBadLenD2Pages, PageTo, PageToG, GrownOwn, GFr, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uP09zN5tAIjOSW10E.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE \A p \in Pages : pst[p] = "shared" => pst'[p] = "shared"
<2> USE ONLY <1>uP09zN5tAIjOSW10E, Sizes, Location, Design
<2>1. K9 /\ K8 /\ X6zX5 /\ j \in DInst /\ IsD(j) /\ Active(j,r)
  BY <1>TLVER4XMUn, <1>vzIw7gdmQ5thZh8W, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. ~rhit[j][r] /\ pst[rpg[j][r]] = "priv"
  BY <1>vzIw7gdmQ5thZh8W, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. DSinfoBadLenD2Pages(j,r)
  BY <1>ObOWfCF8avamwwQyGGrWP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in Pages, pst[p] = "shared" PROVE pst'[p] = "shared"
<3>1. p \notin GrownOf(j,r) /\ (p = rpg[j][r] => rhit[j][r])
  BY <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF GrownOf, Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <2>3, <3>1, <2>4, SMTT(10), Sizes, Location, Design DEF DSinfoBadLenD2Pages, PageTo, PageToG, X6zX5, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ynNqmZCqrGF9Mboy4.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE /\ ph'[j][r] = "end"
        /\ \A i \in Inst, u \in Rq : (i # j \/ u # r) => ph'[i][u] = ph[i][u]
        /\ \A i \in Inst, u \in Rq : Active(i,u)' => Active(i,u) /\ (i # j \/ u # r)
<2> USE ONLY <1>ynNqmZCqrGF9Mboy4, Sizes, Location, Design
<2>1. vn9M /\ ph' = [ph EXCEPT ![j][r] = "end"]
  BY <1>TLVER4XMUn, <1>R8nyUoLoMUaryHchfB, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF vn9M, Active, Sizes, Location, Design
\* T2M-END R2M1039_PdRDPort_PdD2DSinfoBadLenReaders


<1>ICVA6kL1kKvtzMgoDoQM8oi.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>ICVA6kL1kKvtzMgoDoQM8oi, Sizes, Location, Design
<2>1. BaseReadOwnLanded
  BY SMTT(10), V21_Inv_BaseSafety, V21_Inv_ReadOwnLanded, V21_Inv_Safety, Sizes, Location, Design DEF Safety, BaseSafety, ReadOwnLanded, Sizes, Location, Design
<2>2. UNCHANGED <<rg,rpg,rhit,ptl,pvis,hw,xdst>>
  BY <1>ifRGm5FgdlQgywE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in DInst, NEW u \in Rq, ph'[i][u] \in {"run","ovl"}
       PROVE LET p == rpg[i][u] IN
         /\ p \in Pages
         /\ NoWriteInto(p)'
         /\ ((~rhit'[i][u] /\ pst'[p] = "priv" /\ pr'[p] = u /\ pgn'[p] = rg'[i][u] /\ ptl'[p] = NTok(u,rg'[i][u]) /\ pvis'[p])
             \/ (rhit'[i][u] /\ pst'[p] = "shared" /\ ptl'[p] = PS))
<3>1. i \in Inst /\ Active(i,u) /\ (i # j \/ u # r) /\ ph[i][u] \in {"run","ovl"}
  BY <2>3, <1>ynNqmZCqrGF9Mboy4, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <2>3, <3>1, <1>uP09zN5tAIjOSW10E, <1>vAi1NcaFg4RCIuOuXEXHPcY, SMTT(10), Sizes, Location, Design DEF BaseReadOwnLanded, NoWriteInto, Writing, InFl, ReadOwnLanded, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF BaseReadOwnLanded, ReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M1046_PdRDPort_PdD2DSinfoBadLen_ReadOwnLanded


<1>vT01kSHUI87T5LA5.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE K15'
 BY ONLY <1>vT01kSHUI87T5LA5, Sizes, Location, Design, <1>sQi5n8lhuzheP, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>PerL0R0jYjOv3D63JvV7zHEBOB.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE ReadOwnLanded'
<2> USE ONLY <1>PerL0R0jYjOv3D63JvV7zHEBOB, Sizes, Location, Design
<2>1. RD_PhType /\ rpg \in [Inst -> [Rq -> 0..NP]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>PerL0R0jYjOv3D63JvV7zHEBOB, V22_T_ph, V22_T_rpg, SMTT(5) DEF RD_PhType

<2>2. RD_NoStop /\ (B2 => RD_ReadBack)
 BY ONLY <1>PerL0R0jYjOv3D63JvV7zHEBOB, Sizes, Location, Design, <2>1, Sizes, SMTT(10) DEF DSinfoBadLen, instV, kV, rtV, RD_NoStop, RD_ReadBack, RD_PhType, DInst, Inst, NL, Sizes, Location, Design
<2>3. QED BY <2>2, <1>ICVA6kL1kKvtzMgoDoQM8oi, <1>FQ5lBNYlCkhQTVYF, <1>RCKQzj633zU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>THFFQ3HpENmgdOG.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DSinfoBadLen(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>THFFQ3HpENmgdOG, Sizes, Location, Design, ZenonT(5) DEF DSinfoBadLen, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1263_PdRDLegacy_PP_PdDSinfoBadLenFrames

\* T2M-SCOPE R2M1264_PdRDLegacy_PP_PdCell_DSinfoBadLen_K17

<1>iQGAp6rWOISLd.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, IsD(j), Active(j,r)
  PROVE rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
<2> USE ONLY <1>iQGAp6rWOISLd, Sizes, Location, Design
<2>1. K8 /\ K9 /\ j \in DInst
  BY Sizes, SMTT(10), V21_Inv_K8, V21_Inv_K9, Location, Design DEF IsD, Inst, DInst, NL, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>KeUX3AwuU5dZGL50.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>g8jy7gNFRfg8tk1s77xK.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, Active(i,r)
  PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (~rhit[i][r] => pst[rpg[i][r]] = "priv" /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r])
        /\ (IsP(i) => ~rhit[i][r])
        /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  BY ONLY <1>g8jy7gNFRfg8tk1s77xK, Sizes, Location, Design, SMTT(10) DEF K8, Active, OwnedBy, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>q1AhR7YJDkbhhVWM7.        
  ASSUME NEW i \in DInst, NEW r \in Rq, K9, rhit[i][r]
  PROVE /\ ph[i][r] \in {"run","ovl","end"}
        /\ (ph[i][r] \in {"run","ovl"} => pst[rpg[i][r]] = "shared" /\ Tag(r,rg[i][r]) \in sled[rpg[i][r]])
  BY ONLY <1>q1AhR7YJDkbhhVWM7, Sizes, Location, Design, Zenon DEF K9, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>oRMobcZtnEacZOSYh60.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst /\ (IsP(Loc(p)) <=> ~IsD(Loc(p)))
  BY ONLY <1>oRMobcZtnEacZOSYh60, Sizes, Location, Design, Location, Sizes, SMTT(10) DEF IsP, IsD, Inst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M1123_PdRDLegacy_PP_D2Finite_PdFactsA


<1>QatUNxQJA2x2vuUW.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE /\ IsD(j) /\ j \in DInst /\ Active(j,r)
        /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
        /\ rg[j][r] \in Gens /\ rg[j][r] <= gen[r]
        /\ drep[r][rg[j][r]] = 0 /\ ~rhit[j][r] /\ pst[rpg[j][r]] = "priv" /\ ph[j][r] = "wait"
<2> USE ONLY <1>QatUNxQJA2x2vuUW, Sizes, Location, Design
<2>1. IsD(j) /\ Active(j,r) /\ K8 /\ K9 /\ ph[j][r] = "wait"
  BY SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF DSinfoBadLen, Active, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>g8jy7gNFRfg8tk1s77xK, <1>iQGAp6rWOISLd, <1>q1AhR7YJDkbhhVWM7, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>JRq1Y7S67HYtc3WB7S.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DSinfoBadLen(j,r)
  PROVE /\ ph' = [ph EXCEPT ![j][r] = "end"]
        /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(drep[r][rg[j][r]])]
        /\ UNCHANGED dsucc
        /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,crep,rg,rpg,rpe,rx,rhit>>
  BY ONLY <1>JRq1Y7S67HYtc3WB7S, Sizes, Location, Design, SMTT(10) DEF DSinfoBadLen, rtV, instV, kV, recV, pgV, xV, ghV, vars, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>XwuJb49HEvdi3dsdtYv69.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DSinfoBadLen(j,r)
  PROVE hMnyzFiJ2WDPM5bBaRN(j,r)
  BY ONLY <1>XwuJb49HEvdi3dsdtYv69, Sizes, Location, Design, Design, SMTT(10) DEF hMnyzFiJ2WDPM5bBaRN, DSinfoBadLen, rtV, instV, kV, recV, pgV, xV, ghV, vars, Sizes, Location, Design
\* T2M-END R2M1268_PdRDLegacy_PP_PdD2DSinfoBadLenEffect


<1>dAtRYH0YjKosmHUi.         K7 <=> (\A p \in Pages : Mzvo7bvWxtFIDq(p))
  BY SMTT(10), Sizes, Location, Design DEF K7, Mzvo7bvWxtFIDq, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>VkgcRSrlUEaoNI3e.         K8 <=> (\A i \in Inst, r \in Rq : hcvRibaXkekYBw(i,r))
  BY SMTT(10), Sizes, Location, Design DEF K8, hcvRibaXkekYBw, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>h1VKw4hYuhMP9XeE.         K9 <=> (\A j \in DInst, r \in Rq : XE3O9oulwAfsHB(j,r))
  BY SMTT(10), Sizes, Location, Design DEF K9, XE3O9oulwAfsHB, Sizes, Location, Design
\* T2M-END R2M1127_PdRDLegacy_PP_D2Finite_PdConjPointsA


<1>rIevgckbhf1ljKiR5qD.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW i \in Inst, NEW u \in Rq,
         PinInv, IsD(j), Active(j,r), Active(i,u), ~rhit[i][u], i # j \/ u # r
  PROVE rpg[i][u] \in Pages /\ rpg[i][u] # rpg[j][r] /\ rpg[i][u] \notin GrownOf(j,r)
<2> USE ONLY <1>rIevgckbhf1ljKiR5qD, Sizes, Location, Design
<2>1. K8 /\ K9 /\ j \in DInst
  BY <1>KeUX3AwuU5dZGL50, SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[i][u] \in Pages /\ Loc(rpg[i][u]) = i /\ pst[rpg[i][u]] = "priv" /\ pr[rpg[i][u]] = u
       /\ Loc(rpg[j][r]) = j /\ (~rhit[j][r] => pr[rpg[j][r]] = r)
  BY <2>1, <1>g8jy7gNFRfg8tk1s77xK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rhit[j][r] => pst[rpg[j][r]] = "shared"
  BY <2>1, <1>q1AhR7YJDkbhhVWM7, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<2>4. rpg[i][u] # rpg[j][r]
  BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF GrownOf, Sizes, Location, Design
\* T2M-END R2M1128_PdRDLegacy_PP_PdD2Separation


<1>OxrbqLA0p4chkqkEsVpuxQ9.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE \A i \in Inst, u \in Rq :
    (Active(i,u) /\ ~rhit[i][u] /\ (i # j \/ u # r)) =>
    LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p],sfly[p],sled[p]>>
<2> USE ONLY <1>OxrbqLA0p4chkqkEsVpuxQ9, Sizes, Location, Design
<2>1. OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ dcfPK /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. hMnyzFiJ2WDPM5bBaRN(j,r) /\ IsD(j) /\ Active(j,r) /\ rpg[j][r] \in Pages /\ UNCHANGED rpg
  BY <1>XwuJb49HEvdi3dsdtYv69, <1>QatUNxQJA2x2vuUW, <1>THFFQ3HpENmgdOG, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW u \in Rq, Active(i,u), ~rhit[i][u], i # j \/ u # r
       PROVE LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p],sfly[p],sled[p]>>
<3>1. rpg[i][u] \in Pages /\ rpg[i][u] # rpg[j][r] /\ rpg[i][u] \notin GrownOf(j,r)
  BY <2>2, <2>3, <1>rIevgckbhf1ljKiR5qD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <3>1, SMTT(10), Sizes, Location, Design DEF hMnyzFiJ2WDPM5bBaRN, PageTo, PageToG, GrownOwn, GFr, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Q2tVqvlD3DmKQz1Xq.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE \A p \in Pages : pst[p] = "shared" => pst'[p] = "shared"
<2> USE ONLY <1>Q2tVqvlD3DmKQz1Xq, Sizes, Location, Design
<2>1. K9 /\ K8 /\ OyyWS /\ j \in DInst /\ IsD(j) /\ Active(j,r)
  BY <1>UwwC5LVwQr, <1>QatUNxQJA2x2vuUW, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ~rhit[j][r] /\ pst[rpg[j][r]] = "priv"
  BY <1>QatUNxQJA2x2vuUW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hMnyzFiJ2WDPM5bBaRN(j,r)
  BY <1>XwuJb49HEvdi3dsdtYv69, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in Pages, pst[p] = "shared" PROVE pst'[p] = "shared"
<3>1. p \notin GrownOf(j,r) /\ (p = rpg[j][r] => rhit[j][r])
  BY <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF GrownOf, Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <2>3, <3>1, <2>4, SMTT(10), Sizes, Location, Design DEF hMnyzFiJ2WDPM5bBaRN, PageTo, PageToG, OyyWS, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>ItDy61IzVfOrly5Y6.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE /\ ph'[j][r] = "end"
        /\ \A i \in Inst, u \in Rq : (i # j \/ u # r) => ph'[i][u] = ph[i][u]
        /\ \A i \in Inst, u \in Rq : Active(i,u)' => Active(i,u) /\ (i # j \/ u # r)
<2> USE ONLY <1>ItDy61IzVfOrly5Y6, Sizes, Location, Design
<2>1. AydA /\ ph' = [ph EXCEPT ![j][r] = "end"]
  BY <1>UwwC5LVwQr, <1>JRq1Y7S67HYtc3WB7S, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF AydA, Active, Sizes, Location, Design
\* T2M-END R2M1271_PdRDLegacy_PP_PdD2DSinfoBadLenReaders

\* T2M-SCOPE R2M1272_PdRDLegacy_PP_PdD2DSinfoBadLen_K10
\* T2M-BODY R2M1272_PdRDLegacy_PP_PdD2DSinfoBadLen_K10
\* T2M-LOCAL-VISIBILITY

<1>ty8m9AiIJ2W5jeO2KAPMdJ5F.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE SbBYu4pWxTHT(j,r,rg[j][r],FALSE)
<2> USE ONLY <1>ty8m9AiIJ2W5jeO2KAPMdJ5F, Sizes, Location, Design
<2>1. drep[r][rg[j][r]] = 0
  BY <1>QatUNxQJA2x2vuUW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ph' = [ph EXCEPT ![j][r] = "end"]
       /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(drep[r][rg[j][r]])]
       /\ UNCHANGED dsucc
       /\ UNCHANGED <<rg,hd,crep>>
  BY <1>JRq1Y7S67HYtc3WB7S, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ~gbad'
  BY Design, SMTT(10), V21_Inv_GenFiltered, V21_Inv_Safety, Sizes, Location DEF DSinfoBadLen, Safety, GenFiltered, ghV, rtV, instV, kV, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF SbBYu4pWxTHT, Bump, Sizes, Location, Design
\* T2M-END R2M1274_PdRDLegacy_PP_PdD2DSinfoBadLenHistory

\* T2M-SCOPE R2M1275_PdRDLegacy_PP_PdD2DSinfoBadLen_K13
\* T2M-BODY R2M1275_PdRDLegacy_PP_PdD2DSinfoBadLen_K13
\* T2M-LOCAL-VISIBILITY

<1>qpF3YggFbPkU1c.        
  ASSUME fr1A, Z0q_o_5gXYc9
  PROVE \A x \in Xids : iv[x] # "none" => iv'[x] = iv[x]
  BY ONLY <1>qpF3YggFbPkU1c, Sizes, Location, Design, SMTT(5) DEF fr1A, Z0q_o_5gXYc9, Sizes, Location, Design
\* T2M-END R2M1252_PdRDLegacy_PP_PdNP_NoPostOtherValues

\* T2M-SCOPE R2M1257_PdRDLegacy_PP_PdNP_NoPostNonReg

<1>XDeYAMMwjbH.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE Z0q_o_5gXYc9
<2> USE ONLY <1>XDeYAMMwjbH, Sizes, Location, Design
<2>1. K12
  BY SMTT(10), V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. PICK m \in net : m.t = "sinfo" /\ m.x \in Xids /\ iv[m.x] = "none"
          /\ iv' = [iv EXCEPT ![m.x] = "nopost"]
  BY SMTT(10), Sizes, Location, Design DEF DSinfoBadLen, Sizes, Location, Design
<2>3. m.x < nx
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Z0q_o_5gXYc9, Sizes, Location, Design
\* T2M-END R2M1277_PdRDLegacy_PP_PdD2DSinfoNoPost

\* T2M-SCOPE R2M1278_PdRDLegacy_PP_PdD2DSinfoBadLen_K2

<1>v9Z2TBPIYzrF.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE K8'
<2> USE ONLY <1>v9Z2TBPIYzrF, Sizes, Location, Design
<2>0. \A x \in Xids : iv[x] # "none" => iv'[x] = iv[x]
<3>1. Z0q_o_5gXYc9 /\ fr1A /\ SHJS
  BY <1>XDeYAMMwjbH, <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<3>2. QED BY <3>1, <1>qpF3YggFbPkU1c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>1. K8 /\ AydA
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<gen,hp,hd,rg,rpg,rpe,rx,rhit,nx,xsrc,xr,xg,xlt>>
  BY <1>THFFQ3HpENmgdOG, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsD(j) /\ Active(j,r)
  BY <1>QatUNxQJA2x2vuUW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW i \in Inst, NEW u \in Rq PROVE hcvRibaXkekYBw(i,u)'
<3>1. hcvRibaXkekYBw(i,u)
  BY <2>1, <1>VkgcRSrlUEaoNI3e, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE i = j /\ u = r
  BY <3>2, <2>2, <2>3, <3>1, <1>ItDy61IzVfOrly5Y6, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF hcvRibaXkekYBw, Active, Sizes, Location, Design
<3>3. CASE i # j \/ u # r
<4>1. ph'[i][u] = ph[i][u]
  BY <3>3, <1>ItDy61IzVfOrly5Y6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. Active(i,u) /\ ~rhit[i][u] =>
       LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],led[p],sfly[p],sled[p]>>
  BY <3>3, <1>OxrbqLA0p4chkqkEsVpuxQ9, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>3. QED BY <2>0, <2>2, <3>1, <4>1, <4>2, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF hcvRibaXkekYBw, Active, OwnedBy, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF K8, hcvRibaXkekYBw, Sizes, Location, Design
\* T2M-END R2M1283_PdRDLegacy_PP_PdD2DSinfoBadLen_K8


<1>LfLXKrMY4E9nAJ8AaGv.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE \A i \in DInst, u \in Rq :
    (Active(i,u) /\ rhit[i][u] /\ (i # j \/ u # r)) => Tag(u,rg[i][u]) \in sled'[rpg[i][u]]
<2> USE ONLY <1>LfLXKrMY4E9nAJ8AaGv, Sizes, Location, Design
<2>1. K8 /\ K9 /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. hMnyzFiJ2WDPM5bBaRN(j,r) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
       /\ (~rhit[j][r] => pst[rpg[j][r]] = "priv") /\ ~rhit[j][r]
  BY <2>1, <1>XwuJb49HEvdi3dsdtYv69, <1>QatUNxQJA2x2vuUW, <1>g8jy7gNFRfg8tk1s77xK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in DInst, NEW u \in Rq, Active(i,u), rhit[i][u], i # j \/ u # r
       PROVE Tag(u,rg[i][u]) \in sled'[rpg[i][u]]
<3>1. i \in Inst /\ rpg[i][u] \in Pages /\ Loc(rpg[i][u]) = i
       /\ pst[rpg[i][u]] = "shared" /\ Tag(u,rg[i][u]) \in sled[rpg[i][u]]
  BY <2>1, <2>3, <1>KeUX3AwuU5dZGL50, <1>g8jy7gNFRfg8tk1s77xK, <1>q1AhR7YJDkbhhVWM7, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<3>2. rpg[i][u] \notin GrownOf(j,r)
       /\ (rpg[i][u] = rpg[j][r] => rhit[j][r] /\ u # r /\ Tag(u,rg[i][u]) # Tag(r,rg[j][r]))
  BY <2>2, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF GrownOf, Tag, Sizes, Location, Design
<3>3. QED BY <2>1, <2>2, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF hMnyzFiJ2WDPM5bBaRN, PageTo, PageToG, h9WLgd, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>m6ceLnpmrDqW.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE K9'
<2> USE ONLY <1>m6ceLnpmrDqW, Sizes, Location, Design
<2>0. \A x \in Xids : iv[x] # "none" => iv'[x] = iv[x]
<3>1. Z0q_o_5gXYc9 /\ fr1A /\ SHJS
  BY <1>XDeYAMMwjbH, <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<3>2. QED BY <3>1, <1>qpF3YggFbPkU1c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>1. K8 /\ K9 /\ Q1j7VI /\ AydA
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. SbBYu4pWxTHT(j,r,rg[j][r],FALSE) /\ rg[j][r] \in Gens /\ IsD(j) /\ Active(j,r)
       /\ UNCHANGED <<rg,rpg,rx,rhit,nx,xdst,xr,xg>>
  BY <1>ty8m9AiIJ2W5jeO2KAPMdJ5F, <1>QatUNxQJA2x2vuUW, <1>THFFQ3HpENmgdOG, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hd[r][rg[j][r]] = j
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K8, Active, Sizes, Location, Design
<2>4. ASSUME NEW i \in DInst, NEW u \in Rq PROVE XE3O9oulwAfsHB(i,u)'
<3>1. i \in Inst /\ IsD(i) /\ XE3O9oulwAfsHB(i,u) /\ hcvRibaXkekYBw(i,u)
  BY <2>1, <1>h1VKw4hYuhMP9XeE, <1>VkgcRSrlUEaoNI3e, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE i = j /\ u = r
  BY <3>2, <2>1, <2>2, <1>ItDy61IzVfOrly5Y6, SMTT(10), Sizes, Location, Design DEF XE3O9oulwAfsHB, SbBYu4pWxTHT, Q1j7VI, Active, Sizes, Location, Design
<3>3. CASE i # j \/ u # r
<4>1. ph'[i][u] = ph[i][u]
  BY <3>1, <3>3, <1>ItDy61IzVfOrly5Y6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. ph[i][u] # "none" => rg[i][u] \in Gens /\ (u # r \/ rg[i][u] # rg[j][r])
  BY <3>1, <3>3, <2>3, SMTT(10), Sizes, Location, Design DEF hcvRibaXkekYBw, Sizes, Location, Design
<4>3. ph[i][u] # "none" => drep'[u][rg[i][u]] = drep[u][rg[i][u]]
  BY <4>2, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF SbBYu4pWxTHT, Q1j7VI, Sizes, Location, Design
<4>4. Active(i,u) /\ ~rhit[i][u] =>
       LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p],sfly[p],sled[p]>>
  BY <3>1, <3>3, <1>OxrbqLA0p4chkqkEsVpuxQ9, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>5. (ph[i][u] \in {"run","ovl"} /\ rhit[i][u]) =>
         pst'[rpg[i][u]] = "shared" /\ Tag(u,rg[i][u]) \in sled'[rpg[i][u]]
  BY <3>1, <3>3, <1>Q2tVqvlD3DmKQz1Xq, <1>LfLXKrMY4E9nAJ8AaGv, SMTT(10), Sizes, Location, Design DEF hcvRibaXkekYBw, XE3O9oulwAfsHB, Active, Sizes, Location, Design
<4>6. QED BY <2>0, <2>2, <3>1, <4>1, <4>3, <4>4, <4>5, SMTT(10), Sizes, Location, Design DEF XE3O9oulwAfsHB, Active, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF K9, XE3O9oulwAfsHB, Sizes, Location, Design
\* T2M-END R2M1284_PdRDLegacy_PP_PdD2DSinfoBadLen_K9


<1>e8W7H4aBj.        
  ASSUME NEW p \in Pages
  PROVE IsFiniteSet(V0HEdR3F(p)) /\ Cardinality(V0HEdR3F(p)) \in 0..NR
<2> USE ONLY <1>e8W7H4aBj, Sizes, Location, Design
<2>0. NR \in Int /\ 1 \in Int /\ 1 <= NR
  BY Sizes, SMTT(10), Location, Design DEF Sizes, Location, Design
<2>1. IsFiniteSet(Rq) /\ Cardinality(Rq) = NR
  BY ONLY <2>0, FS_Interval, IsaT(10), Sizes, Location, Design DEF Rq, Sizes, Location, Design
<2>2. IsFiniteSet(V0HEdR3F(p)) /\ Cardinality(V0HEdR3F(p)) <= NR
  BY <2>1, FS_Subset, SMTT(10), Sizes, Location, Design DEF V0HEdR3F, Sizes, Location, Design
<2>3. QED BY <2>2, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>oSWx5rNH.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages,
         AydA, q1Ohy, EYS1sP, ph' = [ph EXCEPT ![j][r] = "end"], UNCHANGED <<rpg,rhit>>
  PROVE V0HEdR3F(p)' = IF Loc(p) = j /\ rpg[j][r] = p THEN V0HEdR3F(p) \ {r} ELSE V0HEdR3F(p)
  BY ONLY <1>oSWx5rNH, Sizes, Location, Design, <1>oRMobcZtnEacZOSYh60, SMTT(10) DEF V0HEdR3F, AydA, q1Ohy, EYS1sP, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>nyNN4NJWMU.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages,
         AydA, q1Ohy, EYS1sP, ph' = [ph EXCEPT ![j][r] = "end"], UNCHANGED <<rpg,rhit>>
  PROVE NHits(p)' = IF Loc(p) = j /\ rpg[j][r] = p /\ ph[j][r] \in {"run","ovl"} /\ rhit[j][r]
                      THEN NHits(p) - 1 ELSE NHits(p)
<2> USE ONLY <1>nyNN4NJWMU, Sizes, Location, Design
<2>1. V0HEdR3F(p)' = IF Loc(p) = j /\ rpg[j][r] = p THEN V0HEdR3F(p) \ {r} ELSE V0HEdR3F(p)
  BY <1>oSWx5rNH, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet(V0HEdR3F(p))
  BY <1>e8W7H4aBj, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, FS_RemoveElement, SMTT(10), Sizes, Location, Design DEF V0HEdR3F, NHits, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>tQi56mwLzRWttTQ.        
  ASSUME K8', K9'
  PROVE \A i \in Inst, u \in Rq : Active(i,u)' => pst'[rpg'[i][u]] \in {"priv","shared"}
<2> USE ONLY <1>tQi56mwLzRWttTQ, Sizes, Location, Design
<2>1. ASSUME NEW i \in Inst, NEW u \in Rq, Active(i,u)'
       PROVE pst'[rpg'[i][u]] \in {"priv","shared"}
<3>1. ~rhit'[i][u] => pst'[rpg'[i][u]] = "priv"
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, Active, Sizes, Location, Design
<3>2. rhit'[i][u] => i \in DInst /\ ph'[i][u] \in {"run","ovl"} /\ pst'[rpg'[i][u]] = "shared"
  BY <2>1, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1143_PdRDLegacy_PP_PdD2Hits


<1>tIJ1bOxkaz0t.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE K7'
<2> USE ONLY <1>tIJ1bOxkaz0t, Sizes, Location, Design
<2>1. K6 /\ K7 /\ K8 /\ K9 /\ K16 /\ OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ dcfPK /\ h9WLgd /\ p1YmMe5 /\ vRZWI /\ AydA /\ q1Ohy /\ EYS1sP
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K16, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. hMnyzFiJ2WDPM5bBaRN(j,r) /\ IsD(j) /\ j \in DInst /\ Active(j,r) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ ~rhit[j][r]
       /\ ph' = [ph EXCEPT ![j][r] = "end"] /\ UNCHANGED <<gen,rg,rpg,rhit,kpin,krs>>
  BY <1>XwuJb49HEvdi3dsdtYv69, <1>QatUNxQJA2x2vuUW, <1>JRq1Y7S67HYtc3WB7S, <1>THFFQ3HpENmgdOG, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (~rhit[j][r] => pst[rpg[j][r]] = "priv" /\ pr[rpg[j][r]] = r /\ pgn[rpg[j][r]] = rg[j][r])
       /\ (rhit[j][r] => pst[rpg[j][r]] = "shared" /\ ph[j][r] \in {"run","ovl"})
  BY <2>1, <2>2, <1>g8jy7gNFRfg8tk1s77xK, <1>q1AhR7YJDkbhhVWM7, SMTT(10), Sizes, Location, Design DEF K9, Active, Sizes, Location, Design
<2>4. K8' /\ K9' /\ \A i \in Inst, u \in Rq : Active(i,u)' => pst'[rpg'[i][u]] \in {"priv","shared"}
  BY <1>v9Z2TBPIYzrF, <1>m6ceLnpmrDqW, <1>tQi56mwLzRWttTQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. ASSUME NEW p \in Pages PROVE Mzvo7bvWxtFIDq(p)'
<3>1. Mzvo7bvWxtFIDq(p)
  BY <2>1, <1>dAtRYH0YjKosmHUi, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. NHits(p)' = IF p = rpg[j][r] /\ rhit[j][r] THEN NHits(p) - 1 ELSE NHits(p)
  BY <2>1, <2>2, <2>3, <1>nyNN4NJWMU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. UNCHANGED KPinned(p)
  BY <2>2, SMTT(10), Sizes, Location, Design DEF KPinned, Sizes, Location, Design
<3>4. (ptl[p] >= 0)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, <3>3, Design, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location DEF hMnyzFiJ2WDPM5bBaRN, Mzvo7bvWxtFIDq, K6, K16, GrownP, GrownOf, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, Active, Maps, Tag, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, Sizes, Location, Design
<3>5. (pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {}
                               /\ prefc[p] = 0 /\ pqp[p] = 0))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, <3>3, Design, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location DEF hMnyzFiJ2WDPM5bBaRN, Mzvo7bvWxtFIDq, K6, K16, GrownP, GrownOf, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, Active, Maps, Tag, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, Sizes, Location, Design
<3>6. (pst[p] \in {"priv", "drain", "quar"} => (pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]]))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, <3>3, Design, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location DEF hMnyzFiJ2WDPM5bBaRN, Mzvo7bvWxtFIDq, K6, K16, GrownP, GrownOf, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, Active, Maps, Tag, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, Sizes, Location, Design
<3>7. (pst[p] = "quar" => pqp[p] \in Inst)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, <3>3, Design, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location DEF hMnyzFiJ2WDPM5bBaRN, Mzvo7bvWxtFIDq, K6, K16, GrownP, GrownOf, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, Active, Maps, Tag, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, Sizes, Location, Design
<3>8. (pst[p] # "quar" => pqp[p] = 0)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, <3>3, Design, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location DEF hMnyzFiJ2WDPM5bBaRN, Mzvo7bvWxtFIDq, K6, K16, GrownP, GrownOf, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, Active, Maps, Tag, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, Sizes, Location, Design
<3>9. (pst[p] # "shared" => prefc[p] = 0)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, <3>3, Design, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location DEF hMnyzFiJ2WDPM5bBaRN, Mzvo7bvWxtFIDq, K6, K16, GrownP, GrownOf, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, Active, Maps, Tag, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, Sizes, Location, Design
<3>10. (pst[p] = "shared" => (IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p)))'
<4>1. pst'[p] = "shared" => pst[p] = "shared"
  BY <2>1, <2>2, <2>3, Design, SMTT(10), Sizes, Location DEF hMnyzFiJ2WDPM5bBaRN, PageTo, PageToG, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, GrownOf, OyyWS, Sizes, Location, Design
<4>2. pst'[p] = "shared" => led'[p] = led[p] /\ ptl'[p] = ptl[p]
  BY <2>1, <2>2, <2>3, <4>1, Design, SMTT(10), Sizes, Location DEF hMnyzFiJ2WDPM5bBaRN, PageTo, PageToG, OyyWS, dcfPK, Sizes, Location, Design
<4>3. pst'[p] = "shared" => prefc'[p] = (IF p = rpg[j][r] /\ rhit[j][r] THEN prefc[p] - 1 ELSE prefc[p])
  BY <2>1, <2>2, <2>3, <4>1, Design, SMTT(10), Sizes, Location DEF hMnyzFiJ2WDPM5bBaRN, PageTo, PageToG, p1YmMe5, Sizes, Location, Design
<4>4. QED BY <3>1, <3>2, <4>1, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF Mzvo7bvWxtFIDq, Sizes, Location, Design
<3>11. (pst[p] = "drain" => (led[p] # {} \/ sled[p] # {} \/ KPinned(p))   )'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, <3>3, Design, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location DEF hMnyzFiJ2WDPM5bBaRN, Mzvo7bvWxtFIDq, K6, K16, GrownP, GrownOf, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, Active, Maps, Tag, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, Sizes, Location, Design
<3>12. (pst[p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(p), r, p))'
  BY ONLY <2>4, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location, Design DEF Active, Maps, Sizes, Location, Design
<3>13. (pst[p] = "priv" => \/ (Maps(Loc(p), pr[p], p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]])
                              \/ GrownP(p))'
<4>1. pst'[p] = "priv" => pst[p] = "priv" /\ p # rpg[j][r] /\ UNCHANGED <<pr[p],pgn[p]>>
  BY <2>1, <2>2, <2>3, Design, SMTT(10), Sizes, Location DEF hMnyzFiJ2WDPM5bBaRN, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, OyyWS, IwCp, vS7em, Sizes, Location, Design
<4>2. pst'[p] = "priv" => pr[p] \in Rq /\ Loc(p) \in Inst
  BY <3>1, <4>1, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location, Design DEF Mzvo7bvWxtFIDq, Sizes, Location, Design
<4>3. (pst'[p] = "priv" /\ Maps(Loc(p),pr[p],p)) => Maps(Loc(p),pr[p],p)'
  BY <2>2, <4>1, <4>2, <1>ItDy61IzVfOrly5Y6, SMTT(10), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design
<4>4. (pst'[p] = "priv" /\ GrownP(p)) => GrownP(p)'
  BY <2>2, <4>1, SMTT(10), Sizes, Location, Design DEF GrownP, Sizes, Location, Design
<4>5. QED BY <2>2, <3>1, <4>1, <4>3, <4>4, SMTT(10), Sizes, Location, Design DEF Mzvo7bvWxtFIDq, Sizes, Location, Design
<3>14. QED BY <3>4, <3>5, <3>6, <3>7, <3>8, <3>9, <3>10, <3>11, <3>12, <3>13, SMTT(10), Sizes, Location, Design DEF Mzvo7bvWxtFIDq, Sizes, Location, Design
<2>6. QED BY <2>5, SMTT(10), Sizes, Location, Design DEF K7, Mzvo7bvWxtFIDq, Sizes, Location, Design
\* T2M-END R2M1285_PdRDLegacy_PP_PdD2DSinfoBadLen_K7


<1>g0iUWkziD11DXR0wkkj1beZae.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>g0iUWkziD11DXR0wkkj1beZae, Sizes, Location, Design
<2>1. K8 /\ K9 /\ K8'
  BY <1>v9Z2TBPIYzrF, SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<rg,rpg,rhit>>
  BY <1>THFFQ3HpENmgdOG, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW u \in Rq, Active(i,u)', rpg'[i][u] \in Pages
       PROVE pst'[rpg'[i][u]] # "quar"
<3>1. Active(i,u) /\ (i # j \/ u # r)
  BY <2>3, <1>ItDy61IzVfOrly5Y6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. rhit[i][u] => i \in DInst /\ pst[rpg[i][u]] = "shared"
  BY <2>1, <3>1, <1>KeUX3AwuU5dZGL50, <1>g8jy7gNFRfg8tk1s77xK, <1>q1AhR7YJDkbhhVWM7, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<3>3. QED BY <2>1, <2>2, <2>3, <3>1, <3>2, <1>Q2tVqvlD3DmKQz1Xq, <1>g8jy7gNFRfg8tk1s77xK, SMTT(10), Sizes, Location, Design DEF K8, Active, OwnedBy, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF QuarNeverMapped, Sizes, Location, Design
\* T2M-END R2M1286_PdRDLegacy_PP_PdD2DSinfoBadLen_QuarNeverMapped


<1>EE6RpF1OwV3PaC.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
  PROVE K7'
  BY ONLY <1>EE6RpF1OwV3PaC, Sizes, Location, Design, <1>tIJ1bOxkaz0t, V21_Inv_K7 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>xFmB8MXric1vU8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
  PROVE K9'
  BY ONLY <1>xFmB8MXric1vU8, Sizes, Location, Design, <1>m6ceLnpmrDqW, V21_Inv_K9 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>sbUsSWBQRoh90eZ077C2o0kGSIW.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>sbUsSWBQRoh90eZ077C2o0kGSIW, Sizes, Location, Design, <1>g0iUWkziD11DXR0wkkj1beZae, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>EE6RpF1OwV3PaC, <1>vT01kSHUI87T5LA5, <1>PerL0R0jYjOv3D63JvV7zHEBOB, <1>xFmB8MXric1vU8, <1>sbUsSWBQRoh90eZ077C2o0kGSIW, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF P_PagePoolsDisjoint, Part_DSinfoBadLen_02_01, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_K12, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_QuarNeverMapped, V21_Inv_ReadOwnLanded, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_TypeOK, V21_SFollowOff, V22_T_ph, V22_T_rpg, V22_T_xdst
====
