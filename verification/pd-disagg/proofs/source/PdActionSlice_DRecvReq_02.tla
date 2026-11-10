---- MODULE PdActionSlice_DRecvReq_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_ba9b12f8121bcf2d, PdFinalInvProjections, PdFinalEffects, PdSharedRefCounts, PdFunctionFrames, PdShapeBase, PdActionSlice_DRecvReq_01

\* Complete original body PdFinalPart_DRecvReq_02_02 SHA 39b3dcb849dcd1cbb95bd50a8f60aaa397879de6b60a4ec683a629f173becbf5
HIDE DEF AuxType_ba9b12f8121bcf2d, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_DRecvReq_01_01, Part_DRecvReq_01_02, Part_DRecvReq_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K11, V21_Inv_K17, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoStrayAccess, V21_Inv_P_B2OffInit, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_PostSharedRefZero, V22_SF_Holders, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SharedRefZero, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_pvis, V22_T_rd, V22_T_rp, V22_T_rpe, V22_T_rpgS, V22_T_rt, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xsrc, V22_T_xst
THEOREM Part_DRecvReq_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE (K7)' /\ (KReadIntegrity)' /\ (QuarNeverMapped)' /\ (K1)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RD_PFrame == /\ \A i \in PInst, r \in Rq : ph'[i][r]=ph[i][r] /\ rg'[i][r]=rg[i][r]
                        /\ UNCHANGED <<kpin,krs>>

           RD_SFrame == UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>


           RD_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]

           RD_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}

           RD_HUpdate == rpgS'={h \in rpgS : RD_HLive(h) \/ (RD_HPin(h) /\ Mut # "unrefBeforeKDone")}

           RD_MUpdate == /\ smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]
                        /\ schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]

           RD_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0

           RD_Src(x) == IF RD_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0

           RD_XUpdate == /\ xsrcS'=[x \in Xids |-> IF RD_Posted(x) THEN (IF RD_Src(x) \in SPages /\ spst[RD_Src(x)]="shared" THEN {RD_Src(x)} ELSE {}) ELSE xsrcS[x]]
                        /\ xsrcP'=[x \in Xids |-> IF RD_Posted(x) THEN (IF RD_Src(x) \in SPages /\ spst[RD_Src(x)]="priv" THEN {RD_Src(x)} ELSE {}) ELSE xsrcP[x]]

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

           PdJrO(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])



           IVktI(m) == m.t = "hello" => m.fr \in Inst



           VawcR(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))



           njcW8(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))



           dJpcb(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])



           Y8U_7(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])



           Hdijl(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")



           AL7Oa(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)



           jjAuj(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))



           CsPNLN(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))



           wuoDNx7(m) ==
             /\ PdJrO(m)
             /\ IVktI(m)
             /\ VawcR(m)
             /\ njcW8(m)
             /\ dJpcb(m)
             /\ Y8U_7(m)
             /\ Hdijl(m)
             /\ AL7Oa(m)
             /\ jjAuj(m)
             /\ CsPNLN(m)


           \* T2M-LOCAL-VISIBILITY

           rDYgNVy(i,r) == LET p == rpg[i][r]
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



           kJnEemH(j,r) == LET q == rpg[j][r]
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



           V0HEdR3F(p) == {r \in Rq : ph[Loc(p)][r] \in {"run","ovl"} /\ rhit[Loc(p)][r] /\ rpg[Loc(p)][r] = p}


           \* T2M-LOCAL-VISIBILITY

           ZpkvInB7i(j,r,p) == ph'[j][r] = "run" /\ rpg'[j][r] = p



           c2K3U3v4RXi(j,r,p) == ph'[j][r] = "wait" /\ rpg'[j][r] = p



           SmpG0jqOnd(j,r,p) ==
             /\ pst'[p] = IF c2K3U3v4RXi(j,r,p) THEN "priv" ELSE pst[p]
             /\ pr'[p] = IF c2K3U3v4RXi(j,r,p) THEN r ELSE pr[p]
             /\ pgn'[p] = IF c2K3U3v4RXi(j,r,p) THEN rg'[j][r] ELSE pgn[p]
             /\ plt'[p] = IF c2K3U3v4RXi(j,r,p) THEN 0 ELSE plt[p]
             /\ ptl'[p] = IF c2K3U3v4RXi(j,r,p) THEN 0 ELSE ptl[p]
             /\ led'[p] = IF c2K3U3v4RXi(j,r,p) /\ Mode = "push" THEN {nx} ELSE led[p]
             /\ prefc'[p] = IF ZpkvInB7i(j,r,p) THEN prefc[p]+1 ELSE prefc[p]
             /\ sled'[p] = IF ZpkvInB7i(j,r,p) THEN sled[p] \cup {Tag(r,rg'[j][r])} ELSE sled[p]
             /\ sfly'[p] = IF ZpkvInB7i(j,r,p) THEN sfly[p] \cup {Tag(r,rg'[j][r])} ELSE sfly[p]
             /\ pqp'[p] = pqp[p]
             /\ (c2K3U3v4RXi(j,r,p) => pst[p] = "free" /\ Loc(p) = j)
             /\ (ZpkvInB7i(j,r,p) => pst[p] = "shared" /\ Loc(p) = j)


           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, wuoDNx7, rDYgNVy, kJnEemH, Mzvo7bvWxtFIDq, V0HEdR3F, ZpkvInB7i, c2K3U3v4RXi, SmpG0jqOnd

<1>dbfJSAnRudgsXK.         B2 /\ SFollow => RD_SUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_SUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_Posted, RD_Src, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ivFfcVr6Rc1eHuIs8.         B2 /\ SFollow => RD_HUpdate /\ RD_MUpdate /\ RD_XUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_HUpdate, RD_MUpdate, RD_XUpdate, RD_HPin, RD_HLive, RD_Posted, RD_Src, Sizes, Location, Design


<1>EnXJwndWG1D4vkee.         PinInv => RD_PhType /\ RD_RgType /\ RD_NxType
<2> HIDE DEF CoreTypeOK, STypeOK
<2>part0. PinInv => RD_PhType
 BY ONLY V22_T_ph, SMTT(5) DEF RD_PhType
<2>part1. PinInv => RD_RgType
 BY ONLY V22_T_rg, SMTT(5) DEF RD_RgType
<2>part2. PinInv => RD_NxType
 BY ONLY V22_T_nx, SMTT(5) DEF RD_NxType
<2>qed. QED BY ONLY <2>part0, <2>part1, <2>part2, SMTT(5)

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

<1>YSvRDxZGd.        
 ASSUME PinInv, SFollow, RD_PFrame
 PROVE UNCHANGED rpgS
<2> USE ONLY <1>YSvRDxZGd, Sizes, Location, Design
<2>1. STypeOK /\ (B2 => SI1)
 BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <1>lQA2, SMTT(10) DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <2>2, <2>2, SMTT(10), V21_SFollowOff DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. \A h \in rpgS : h[1] \in PInst /\ h[2] \in Rq
 BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <2>3, <2>1, SMTT(10) DEF STypeOK, Sizes, Location, Design
 <3>2. \A h \in rpgS :
       (rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}) \/
       (\E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4])
 BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <2>3, <2>1, <2>3, <3>1, SMTT(10) DEF SI1, RD_PFrame, Active, SHPin, Sizes, Location, Design
 <3>3. rpgS' \subseteq rpgS
 BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <2>3, <2>3, <1>ivFfcVr6Rc1eHuIs8, ZenonT(10) DEF RD_HUpdate, Sizes, Location, Design
 <3>4. ASSUME NEW h \in rpgS PROVE h \in rpgS'
  <4>1. (rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}) \/
       (\E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4])
  BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <2>3, <3>2, SMTT(10) DEF Sizes, Location, Design
  <4>2. QED BY <2>3, <4>1, <1>ivFfcVr6Rc1eHuIs8, Design, SMTT(10), Sizes, Location DEF RD_HUpdate, RD_HPin, RD_HLive, Sizes, Location, Design
 <3>5. QED BY <3>3, <3>4, ZenonT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zMokmOdGw.        
 ASSUME PinInv, SFollow, RD_PFrame
 PROVE UNCHANGED <<smap,schoice>>
<2> HIDE DEF CoreTypeOK, STypeOK, SFollow
<2>off. CASE ~B2
 BY ONLY <1>zMokmOdGw, <2>off, V22_SF_Off, SMTT(5) DEF sV
<2>on. CASE B2
 <3>rg. \A i \in PInst, r \in Rq : rg'[i][r]=rg[i][r]
  BY ONLY <1>zMokmOdGw, SMTT(5) DEF RD_PFrame
 <3>smapType. smap \in [PInst -> [Rq -> {0} \cup SPages]]
  BY ONLY <1>zMokmOdGw, V22_T_smap, SMTT(5)
 <3>smapEffect. smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]
  BY ONLY <1>zMokmOdGw, <2>on, V22_SF_Map, SMTT(5)
 <3>smapEta. [i \in PInst |-> [r \in Rq |-> smap[i][r]]]=smap
  BY ONLY <3>smapType, V22_MatrixEta, SMTT(5)
 <3>smapFrame. UNCHANGED smap
  BY ONLY <3>smapEffect, <3>smapEta, <3>rg, SMTT(5)
 <3>schoiceType. schoice \in [PInst -> [Rq -> BOOLEAN]]
  BY ONLY <1>zMokmOdGw, V22_T_schoice, SMTT(5)
 <3>schoiceEffect. schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]
  BY ONLY <1>zMokmOdGw, <2>on, V22_SF_Choice, SMTT(5)
 <3>schoiceEta. [i \in PInst |-> [r \in Rq |-> schoice[i][r]]]=schoice
  BY ONLY <3>schoiceType, V22_MatrixEta, SMTT(5)
 <3>schoiceFrame. UNCHANGED schoice
  BY ONLY <3>schoiceEffect, <3>schoiceEta, <3>rg, SMTT(5)
 <3>qed. QED BY ONLY <3>smapFrame, <3>schoiceFrame, SMTT(5)
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>cIrFCXuTtPxBU.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE UNCHANGED <<xsrcS,xsrcP>>
<2> HIDE DEF CoreTypeOK, STypeOK, SFollow, V22_FPosted, V22_FSX, V22_FPX, V22_FSrc
<2>off. CASE ~B2
 BY ONLY <1>cIrFCXuTtPxBU, <2>off, V22_SF_Off, SMTT(5) DEF sV
<2>on. CASE B2
 <3>pageDomain. 0 \notin Pages
  BY ONLY Sizes, SMTT(5) DEF Sizes, Pages
 <3>noPosted. \A x \in Xids : ~V22_FPosted(x)
  BY ONLY <1>cIrFCXuTtPxBU, <3>pageDomain, SMTT(5) DEF V22_FPosted
 <3>xsrcSType. xsrcS \in [Xids -> SUBSET SPages]
  BY ONLY <1>cIrFCXuTtPxBU, V22_T_xsrcS, SMTT(5)
 <3>xsrcSEffect. xsrcS'=V22_FSX
  BY ONLY <1>cIrFCXuTtPxBU, <2>on, V22_SF_SourceShared, SMTT(5)
 <3>xsrcSEta. [x \in Xids |-> xsrcS[x]]=xsrcS
  BY ONLY <3>xsrcSType, V22_FunctionEta, SMTT(5)
 <3>xsrcSFrame. UNCHANGED xsrcS
  BY ONLY <3>xsrcSEffect, <3>xsrcSEta, <3>noPosted, SMTT(5) DEF V22_FSX
 <3>xsrcPType. xsrcP \in [Xids -> SUBSET SPages]
  BY ONLY <1>cIrFCXuTtPxBU, V22_T_xsrcP, SMTT(5)
 <3>xsrcPEffect. xsrcP'=V22_FPX
  BY ONLY <1>cIrFCXuTtPxBU, <2>on, V22_SF_SourcePrivate, SMTT(5)
 <3>xsrcPEta. [x \in Xids |-> xsrcP[x]]=xsrcP
  BY ONLY <3>xsrcPType, V22_FunctionEta, SMTT(5)
 <3>xsrcPFrame. UNCHANGED xsrcP
  BY ONLY <3>xsrcPEffect, <3>xsrcPEta, <3>noPosted, SMTT(5) DEF V22_FPX
 <3>qed. QED BY ONLY <3>xsrcSFrame, <3>xsrcPFrame, SMTT(5)
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>dCj1oPpXLfODIy.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY ONLY <1>dCj1oPpXLfODIy, Sizes, Location, Design, <1>uaJsMuSZCFU, <1>fIPaydrEb, <1>YSvRDxZGd, <1>zMokmOdGw, <1>cIrFCXuTtPxBU, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>llETZGACL.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,gen>>
 PROVE SMapIntegrity'
<2> USE ONLY <1>llETZGACL, Sizes, Location, Design
<2>1. SMapIntegrity /\ STypeOK
 BY SMTT(10), V21_Inv_KReadIntegrity, V21_Inv_STypeOK, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF SMapIntegrity, RD_PFrame, RD_SFrame, STypeOK, Active, Sizes, Location, Design

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


<1>ESCk6pb406w.         BaseKReadIntegrity' /\ SMapIntegrity' => KReadIntegrity'
 BY SMTT(10), Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M0733_PdRDSharedSafety


<1>iClYwlQaVPhEdnbosn.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>iClYwlQaVPhEdnbosn, Sizes, Location, Design, SMTT(10) DEF DRecvReq, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dKYsfmWiThR9rkh.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>dKYsfmWiThR9rkh, Sizes, Location, Design
<2>1. RD_PhType /\ RD_RgType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>iClYwlQaVPhEdnbosn, Sizes, SMTT(10), Location, Design DEF DRecvReq, instV, kV, rtV, xV, RD_PFrame, PInst, DInst, Inst, NL, IsD, RD_PhType, RD_RgType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pqilHI05hK5xehelc.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE xdst' \in [Xids -> 0..NP]
<2> USE ONLY <1>pqilHI05hK5xehelc, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP] /\ rpg \in [Inst -> [Rq -> 0..NP]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>pqilHI05hK5xehelc, V22_T_rpg, V22_T_xdst, SMTT(5)

<2>2. QED BY <2>1, Sizes, SMTT(10), Location, Design DEF DRecvReq, instV, kV, rtV, xV, Pages, Sizes, Location, Design
\* T2M-END R2M0940_PdRDEffects_DRecvReq


<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VLROWBcOqe16ENnb.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qATejwlthlvQ0RBs.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<rtV, instV, crep, dsucc>>
  BY ONLY <1>qATejwlthlvQ0RBs, Sizes, Location, Design, Design, Zenon DEF DRecvReq, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TfbBw4J1UlUiS0.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,torn,nfail,kpin,kfly,krs,crep,dsucc,pqp,xsrc,xlt,hw,hok,iv>>
  BY ONLY <1>TfbBw4J1UlUiS0, Sizes, Location, Design, Design, <1>qATejwlthlvQ0RBs, SMTT(10) DEF DRecvReq, rtV, instV, kV, xV, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aCcmVax.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW x \in Xids, PinInv, DRecvReq(j,r), x # nx
  PROVE UNCHANGED <<xr[x],xg[x],xk[x],xp[x],xd[x],xsrc[x],xdst[x],xnt[x],xst[x],xlt[x],hw[x],hok[x],iv[x]>>
<2> USE ONLY <1>aCcmVax, Sizes, Location, Design
<2>1. ZhBZ /\ HiUz /\ qcWy /\ I3KH /\ Vikm /\ bpmgv4 /\ loK6p /\ H3aTc
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY Design, <2>1, <1>TfbBw4J1UlUiS0, SMTT(10), Sizes, Location DEF DRecvReq, xV, ZhBZ, HiUz, qcWy, I3KH, Vikm, bpmgv4, loK6p, H3aTc, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uLQaF6cD31.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, pst[p] # "free", PinInv, DRecvReq(j,r)
  PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p]>>
<2> USE ONLY <1>uLQaF6cD31, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ vwKWM /\ eWP7z1 /\ ZpUxx
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, KPages, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nMxh4NOX.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, IsP(Loc(p)), PinInv, DRecvReq(j,r)
  PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p],sfly[p],sled[p]>>
<2> USE ONLY <1>nMxh4NOX, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ vwKWM /\ eWP7z1 /\ ZpUxx /\ sBjpCf /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, KPages, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yVqu69BTzD.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE \A p \in Pages : UNCHANGED NoWriteInto(p)
<2> USE ONLY <1>yVqu69BTzD, Sizes, Location, Design
<2>1. K2 /\ XX2v /\ UNCHANGED hw
  BY <1>TfbBw4J1UlUiS0, <1>TLVER4XMUn, SMTT(10), V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A x \in Xids : InFl(x) => x < nx /\ x # nx
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, InFl, Xids, XX2v, Sizes, Location, Design
<2>3. \A x \in Xids : InFl(x) => UNCHANGED xdst[x]
  BY <2>2, <1>aCcmVax, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF NoWriteInto, Writing, InFl, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rmWLiwaYg.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K15'
<2> USE ONLY <1>rmWLiwaYg, Sizes, Location, Design
<2>1. K14 /\ K15 /\ NoFreeUnderRead /\ tqQeS /\ UNCHANGED <<kpin,krs>>
  BY <1>TfbBw4J1UlUiS0, <1>TLVER4XMUn, SMTT(10), V21_Inv_K14, V21_Inv_K15, V21_Inv_NoFreeUnderRead, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, TEJtP, Sizes, Location, Design
<2>2. ASSUME NEW i \in Inst, NEW s \in KSlots, kpin'[i][s], NEW e \in krs'[i][s], e[3] \in Pages
       PROVE KData(i,e)' /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]] = {}) /\ (IsP(i) => sled'[e[3]] = {})
<3>1. e[3] \in Pages /\ Loc(e[3]) = i /\ pst[e[3]] # "free" /\ KData(i,e)
       /\ ((IsD(i) /\ e[4] # 1) => led[e[3]] = {}) /\ (IsP(i) => sled[e[3]] = {})
  BY <2>2, P_PagePoolsDisjoint, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K14, K15, NoFreeUnderRead, KHeld, tqQeS, Sizes, Location, Design
<3>2. UNCHANGED <<ptl[e[3]],pvis[e[3]],plt[e[3]],led[e[3]],NoWriteInto(e[3])>>
  BY <2>2, <3>1, <1>uLQaF6cD31, <1>yVqu69BTzD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. (~IsD(i) => IsP(i)) /\ (IsP(i) => UNCHANGED <<sfly[e[3]],sled[e[3]]>>)
  BY <2>2, <3>1, <1>nMxh4NOX, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>4. QED BY <2>2, P_PagePoolsDisjoint, <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF KData, Sizes, Location, Design
<2>3. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>dKYsfmWiThR9rkh, <1>pqilHI05hK5xehelc, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>3, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <1>iClYwlQaVPhEdnbosn, <2>4, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>2, SMTT(10), V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF K15, TEJtP, tqQeS, KPages, Sizes, Location, Design
\* T2M-END R2M0982_PdRDPort_PdD2DRecvReq_K15

\* T2M-SCOPE R2M0983_PdRDPort_PdD2DRecvReq_NoFreeUnderRead

<1>UCrkZhbNhpAGY4SU3ILlB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE NoFreeUnderRead'
<2> USE ONLY <1>UCrkZhbNhpAGY4SU3ILlB, Sizes, Location, Design
<2>1. NoFreeUnderRead /\ tqQeS /\ UNCHANGED <<kpin,krs>>
  BY <1>TfbBw4J1UlUiS0, <1>TLVER4XMUn, SMTT(10), V21_Inv_NoFreeUnderRead, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, TEJtP, Sizes, Location, Design
<2>2. ASSUME NEW i \in Inst, NEW s \in KSlots, kpin'[i][s], NEW e \in krs'[i][s], e[3] \in Pages
       PROVE KHeld(e)'
<3>1. e[3] \in Pages /\ KHeld(e) /\ pst[e[3]] # "free"
  BY <2>2, P_PagePoolsDisjoint, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF NoFreeUnderRead, KHeld, tqQeS, Sizes, Location, Design
<3>2. QED BY <2>2, P_PagePoolsDisjoint, <3>1, <1>uLQaF6cD31, SMTT(10), Sizes, Location, Design DEF KHeld, Sizes, Location, Design
<2>3. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>dKYsfmWiThR9rkh, <1>pqilHI05hK5xehelc, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>3, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. RD_SFrame /\ UNCHANGED spst
 BY <2>5, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED BY <2>6, <1>iClYwlQaVPhEdnbosn, <2>4, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>2, SMTT(10), V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF NoFreeUnderRead, TEJtP, tqQeS, KPages, RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M0983_PdRDPort_PdD2DRecvReq_NoFreeUnderRead

\* T2M-SCOPE R2M0984_PdRDPort_PdD2DRecvReq_KReadIntegrity

<1>Z9kQ5Oz4ZVrYKWIMO4ME.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE BaseKReadIntegrity'
<2> USE ONLY <1>Z9kQ5Oz4ZVrYKWIMO4ME, Sizes, Location, Design
<2>1. K14 /\ UNCHANGED <<kpin,kfly,krs>>
  BY <1>TfbBw4J1UlUiS0, SMTT(10), V21_Inv_K14, V21_Inv_KReadIntegrity, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>2. K15' /\ NoFreeUnderRead'
  BY <1>rmWLiwaYg, <1>UCrkZhbNhpAGY4SU3ILlB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_SFrame /\ UNCHANGED spst
 BY <2>3, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF BaseKReadIntegrity, K14, K15, NoFreeUnderRead, KReadIntegrity, RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M0984_PdRDPort_PdD2DRecvReq_KReadIntegrity


<1>QSVYIiIVaVPUCXfEkEWSjtu.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>QSVYIiIVaVPUCXfEkEWSjtu, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>Z9kQ5Oz4ZVrYKWIMO4ME, <1>llETZGACL, <1>ESCk6pb406w, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>laJZVswepl.         K12 <=> (\A m \in net : wuoDNx7(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>nvc1L3TxUa51Uyr5.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<rtV, instV, crep, dsucc>>
  BY ONLY <1>nvc1L3TxUa51Uyr5, Sizes, Location, Design, Design, Zenon DEF DRecvReq, DResetLedger, Sizes, Location, Design
\* T2M-END R2M1198_PdRDLegacy_PP_PdDRecvReqFrames

\* T2M-SCOPE R2M1199_PdRDLegacy_PP_PdCell_DRecvReq_GenFiltered
\* T2M-BODY R2M1199_PdRDLegacy_PP_PdCell_DRecvReq_GenFiltered
\* T2M-LOCAL-VISIBILITY

<1>gKMjz.         K8 <=> \A i \in Inst, r \in Rq : rDYgNVy(i,r)
  BY ZenonT(10), Sizes, Location, Design DEF K8, rDYgNVy, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>pfyfm.         K9 <=> \A j \in DInst, r \in Rq : kJnEemH(j,r)
  BY ZenonT(10), Sizes, Location, Design DEF K9, kJnEemH, Sizes, Location, Design
\* T2M-END R2M1114_PdRDLegacy_PP_PdPointPredicates


<1>euFIjtPFLtHTQoq.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE IsD(j) /\ \E m \in net :
          /\ m.t = "req" /\ m.to = j /\ m.r = r /\ NewGen(j,r,m.g)
          /\ (drep' = drep \/ drep' = [drep EXCEPT ![r][m.g] = Bump(drep[r][m.g])])
  BY ONLY <1>euFIjtPFLtHTQoq, Sizes, Location, Design, Design, ZenonT(10) DEF DRecvReq, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>mB5vW8NPOnMGB6.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r
  PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
<2> USE ONLY <1>mB5vW8NPOnMGB6, Sizes, Location, Design
<2>1. K1 /\ K12
  BY SMTT(10), V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. wuoDNx7(m)
  BY <2>1, <1>laJZVswepl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. m.g \in Gens /\ m.g <= gen[r] /\ (j = hp[r][m.g] \/ j = hd[r][m.g])
  BY <2>2, SMTT(10), Sizes, Location, Design DEF wuoDNx7, PdJrO, VawcR, Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, SMTT(10), Location, Design DEF K1, IsD, PInst, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>DW9I8xbFt1rBgo.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r, NewGen(j,r,m.g)
  PROVE drep[r][m.g] = 0
<2> USE ONLY <1>DW9I8xbFt1rBgo, Sizes, Location, Design
<2>1. K8 /\ K13 /\ OneReply /\ Q1j7VI /\ nNeM /\ Mut = "none"
  BY <1>UwwC5LVwQr, Design, SMTT(10), V21_Inv_K13, V21_Inv_K8, V21_Inv_OneReply, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location DEF Safety, QLAWp, Sizes, Location, Design
<2>2. m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
  BY <1>mB5vW8NPOnMGB6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rDYgNVy(j,r) /\ drep[r][m.g] \in {0,1}
 <3>1. rDYgNVy(j,r)
  BY ONLY <1>DW9I8xbFt1rBgo, <2>1, <1>gKMjz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. drep[r][m.g] \in 0..2
  BY ONLY <1>DW9I8xbFt1rBgo, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Q1j7VI, Sizes, Location, Design
 <3>3. drep[r][m.g] <= 1
  BY ONLY <1>DW9I8xbFt1rBgo, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
 <3>4. QED BY ONLY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. drep[r][m.g] = 1 => rg[j][r] >= m.g
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K13, nNeM, Gens, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF rDYgNVy, NewGen, nNeM, Gens, Sizes, Location, Design
\* T2M-END R2M1200_PdRDLegacy_PP_PdDRecvHistory

\* T2M-SCOPE R2M1201_PdRDLegacy_PP_PdCell_DRecvReq_K1
\* T2M-BODY R2M1201_PdRDLegacy_PP_PdCell_DRecvReq_K1
\* T2M-LOCAL-VISIBILITY

<1>k37CBDXf.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K1'
<2> USE ONLY <1>k37CBDXf, Sizes, Location, Design
<2>1. K1 /\ AEZsS /\ Q1j7VI
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<gen,rt,rp,rd,hp,hd,crep,dsucc>>
  BY <1>nvc1L3TxUa51Uyr5, SMTT(10), Sizes, Location, Design DEF rtV, Sizes, Location, Design
<2>3. PICK m \in net :
          /\ IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r /\ NewGen(j,r,m.g)
          /\ (drep' = drep \/ drep' = [drep EXCEPT ![r][m.g] = Bump(drep[r][m.g])])
  BY <1>euFIjtPFLtHTQoq, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. m.g \in Gens /\ m.g <= gen[r]
  BY <2>3, <1>mB5vW8NPOnMGB6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. \A u \in Rq, g \in Gens : g > gen[u] => drep'[u][g] = 0
  BY <2>1, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF K1, AEZsS, Q1j7VI, Gens, Sizes, Location, Design
<2>6. QED BY <2>1, <2>2, <2>5, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M1201_PdRDLegacy_PP_PdCell_DRecvReq_K1


<1>KeUX3AwuU5dZGL50.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>oRMobcZtnEacZOSYh60.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst /\ (IsP(Loc(p)) <=> ~IsD(Loc(p)))
  BY ONLY <1>oRMobcZtnEacZOSYh60, Sizes, Location, Design, Location, Sizes, SMTT(10) DEF IsP, IsD, Inst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M1123_PdRDLegacy_PP_D2Finite_PdFactsA


<1>VnRgHUqOOVql.        
  ASSUME PinInv
  PROVE \A p \in Pages : pst[p] = "free" =>
          led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0
  BY ONLY <1>VnRgHUqOOVql, Sizes, Location, Design, SMTT(10), V21_Inv_K7, V21_Inv_KStruct DEF KStruct, K7, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>z4BWdv.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r
  PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
        /\ m.pe = hp[r][m.g] /\ m.pe \in PInst /\ m.pe \in Inst
<2> USE ONLY <1>z4BWdv, Sizes, Location, Design
<2>1. K1 /\ K12
  BY SMTT(10), V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
  BY <1>mB5vW8NPOnMGB6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hp[r][m.g] \in PInst /\ hd[r][m.g] \in DInst
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. wuoDNx7(m)
  BY <2>1, <1>laJZVswepl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. hp[r][m.g] # j /\ hp[r][m.g] \in Inst
  BY <2>3, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF wuoDNx7, VawcR, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>HfQyCD4BSreUP8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,torn,nfail,kpin,kfly,krs,crep,dsucc,pqp,xsrc,xlt,hw,hok,iv>>
  BY ONLY <1>HfQyCD4BSreUP8, Sizes, Location, Design, Design, <1>nvc1L3TxUa51Uyr5, SMTT(10) DEF DRecvReq, rtV, instV, kV, xV, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>v7DLb.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE nx' = nx \/ (nx' = nx+1 /\ Mode = "push" /\ nx \in Xids)
<2> USE ONLY <1>v7DLb, Sizes, Location, Design
<2>1. SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, Sizes, SMTT(10), Location DEF DRecvReq, xV, SHJS, Xids, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>xCdYilU.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW x \in Xids, PinInv, DRecvReq(j,r), x # nx
  PROVE UNCHANGED <<xr[x],xg[x],xk[x],xp[x],xd[x],xsrc[x],xdst[x],xnt[x],xst[x],xlt[x],hw[x],hok[x],iv[x]>>
<2> USE ONLY <1>xCdYilU, Sizes, Location, Design
<2>1. a1R5 /\ CXAy /\ ok5g /\ vdyX /\ C4fb /\ JjZ1PO /\ PwcfA /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, <1>HfQyCD4BSreUP8, SMTT(10), Sizes, Location DEF DRecvReq, xV, a1R5, CXAy, ok5g, vdyX, C4fb, JjZ1PO, PwcfA, PD2ZN, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>B37skkIj1S.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, pst[p] # "free", PinInv, DRecvReq(j,r)
  PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p]>>
<2> USE ONLY <1>B37skkIj1S, Sizes, Location, Design
<2>1. OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ rO4YE /\ Bq5Edl /\ dcfPK
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, KPages, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Tkbhb1zYD90L.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, pst[p] # "shared", PinInv, DRecvReq(j,r)
  PROVE UNCHANGED <<sfly[p],sled[p]>>
<2> USE ONLY <1>Tkbhb1zYD90L, Sizes, Location, Design
<2>1. OyyWS /\ Xc_ngV /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, OyyWS, Xc_ngV, h9WLgd, KPages, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>UsePDI6tTnB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE ~Active(j,r) /\ IsD(j) /\ j \in DInst
  BY ONLY <1>UsePDI6tTnB, Sizes, Location, Design, Design, <1>KeUX3AwuU5dZGL50, SMTT(10) DEF DRecvReq, NewGen, Active, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>moCLPnsjoLgIky.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW i \in Inst, NEW u \in Rq,
         PinInv, DRecvReq(j,r), i # j \/ u # r
  PROVE UNCHANGED <<ph[i][u],rg[i][u],rpg[i][u],rpe[i][u],rx[i][u],rhit[i][u]>>
<2> USE ONLY <1>moCLPnsjoLgIky, Sizes, Location, Design
<2>1. AydA /\ nNeM /\ q1Ohy /\ E1MnW /\ QC9Q /\ EYS1sP
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>JH5GHkPGhmvIbdBka.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE /\ rg'[j][r] \in Gens /\ rg'[j][r] <= gen[r] /\ rg'[j][r] > rg[j][r]
        /\ hd[r][rg'[j][r]] = j /\ rpe'[j][r] = hp[r][rg'[j][r]]
        /\ ph'[j][r] \in {"run","wait","end"}
        /\ drep[r][rg'[j][r]] = 0
        /\ drep' = IF ph'[j][r] = "end" THEN [drep EXCEPT ![r][rg'[j][r]] = 1] ELSE drep
<2> USE ONLY <1>JH5GHkPGhmvIbdBka, Sizes, Location, Design
<2>1. AydA /\ nNeM /\ E1MnW /\ Q1j7VI /\ K8 /\ Mut = "none"
  BY <1>UwwC5LVwQr, Design, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location DEF QLAWp, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r /\ NewGen(j,r,m.g)) =>
       m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g] /\ m.pe = hp[r][m.g] /\ m.g > rg[j][r] /\ drep[r][m.g] = 0
<3>1. ASSUME NEW m \in net, IsD(j), m.t = "req", m.to = j, m.r = r, NewGen(j,r,m.g)
       PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g] /\ m.pe = hp[r][m.g] /\ m.g > rg[j][r] /\ drep[r][m.g] = 0
<4>1. m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g] /\ m.pe = hp[r][m.g] /\ drep[r][m.g] = 0
  BY <3>1, <1>z4BWdv, <1>DW9I8xbFt1rBgo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. QED BY <2>1, <3>1, <4>1, Sizes, SMTT(10), Location, Design DEF K8, NewGen, Gens, Sizes, Location, Design
<3>2. QED BY <3>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY Design, <2>1, <2>2, SMTT(10), Sizes, Location DEF DRecvReq, AydA, nNeM, E1MnW, Q1j7VI, Bump, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Q2gy2JksROC6Za.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE /\ (ph'[j][r] = "run" => rhit'[j][r] /\ rpg'[j][r] \in Pages /\ Loc(rpg'[j][r]) = j /\ pst[rpg'[j][r]] = "shared" /\ rx'[j][r] = 0)
        /\ (ph'[j][r] = "wait" => ~rhit'[j][r] /\ rpg'[j][r] \in Pages /\ Loc(rpg'[j][r]) = j /\ pst[rpg'[j][r]] = "free"
                                   /\ pst'[rpg'[j][r]] = "priv" /\ pr'[rpg'[j][r]] = r /\ pgn'[rpg'[j][r]] = rg'[j][r])
        /\ (ph'[j][r] = "end" => ~rhit'[j][r] /\ rpg'[j][r] = 0 /\ rx'[j][r] = 0)
<2> USE ONLY <1>Q2gy2JksROC6Za, Sizes, Location, Design
<2>1. AydA /\ nNeM /\ q1Ohy /\ EYS1sP /\ QC9Q /\ OyyWS /\ IwCp /\ vS7em
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, AydA, nNeM, q1Ohy, EYS1sP, QC9Q, OyyWS, IwCp, vS7em, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>W0TBbuDVvccC.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE kJnEemH(j,r)'
<2> HIDE DEF CoreTypeOK, STypeOK, DRecvReq, kJnEemH, DResetLedger
<2>types. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]
       /\ rpg \in [Inst -> [Rq -> 0..NP]] /\ rx \in [Inst -> [Rq -> 0..MX]]
       /\ rhit \in [Inst -> [Rq -> BOOLEAN]]
 BY ONLY <1>W0TBbuDVvccC, V22_T_ph, V22_T_rg, V22_T_rpg, V22_T_rx, V22_T_rhit, SMTT(5)
<2>phase. rg'[j][r] \in Gens /\ ph'[j][r] \in {"run","wait","end"}
       /\ drep[r][rg'[j][r]] = 0
       /\ drep' = IF ph'[j][r] = "end" THEN [drep EXCEPT ![r][rg'[j][r]] = 1] ELSE drep
 BY ONLY <1>W0TBbuDVvccC, <1>JH5GHkPGhmvIbdBka, Sizes, Location, Design, SMTT(5)
<2>classification.
       /\ (ph'[j][r] = "run" => rhit'[j][r] /\ rpg'[j][r] \in Pages /\ pst[rpg'[j][r]] = "shared" /\ rx'[j][r] = 0)
       /\ (ph'[j][r] = "wait" => ~rhit'[j][r] /\ rpg'[j][r] \in Pages /\ pst[rpg'[j][r]] = "free")
       /\ (ph'[j][r] = "end" => ~rhit'[j][r])
 BY ONLY <1>W0TBbuDVvccC, <1>Q2gy2JksROC6Za, Sizes, Location, Design, SMTT(5)
<2>reply.
       /\ (Active(j,r)' => drep'[r][rg'[j][r]]=0)
       /\ (ph'[j][r]="end" => drep'[r][rg'[j][r]]=1)
 BY ONLY <1>W0TBbuDVvccC, <2>phase, V22_T_drep, SMTT(5) DEF Active
<2>run.
 ph'[j][r]="run" => pst'[rpg'[j][r]]="shared" /\ Tag(r,rg'[j][r]) \in sled'[rpg'[j][r]]
 BY ONLY <1>W0TBbuDVvccC, <2>types, <2>classification, V22_T_sled, SMTT(10) DEF DRecvReq, Tag
<2>allocate.
 ph'[j][r]="wait" =>
       /\ plt'=[plt EXCEPT ![rpg'[j][r]]=0] /\ ptl'=[ptl EXCEPT ![rpg'[j][r]]=0]
       /\ UNCHANGED <<sled,sfly>>
       /\ (Mode="pull" => rx'[j][r]=0 /\ led'=DResetLedger(j,r))
 BY ONLY <1>W0TBbuDVvccC, <2>types, <2>classification, SMTT(10) DEF DRecvReq
<2>emptyOld.
 ph'[j][r]="wait" => led[rpg'[j][r]]={} /\ sled[rpg'[j][r]]={} /\ sfly[rpg'[j][r]]={}
 BY ONLY <1>W0TBbuDVvccC, <2>classification, <1>VnRgHUqOOVql, Sizes, Location, Design, SMTT(5)
<2>pushEffects.
 ph'[j][r]="wait" /\ Mode="push" =>
       /\ nx<=MX /\ nx'=nx+1 /\ rx'[j][r]=nx
       /\ xdst'=[xdst EXCEPT ![nx]=rpg'[j][r]]
       /\ xr'=[xr EXCEPT ![nx]=r] /\ xg'=[xg EXCEPT ![nx]=rg'[j][r]]
 BY ONLY <1>W0TBbuDVvccC, <2>types, <2>classification, SMTT(10) DEF DRecvReq
<2>pushDomain.
 ph'[j][r]="wait" /\ Mode="push" => rx'[j][r] \in Xids /\ rx'[j][r]<nx'
 BY ONLY <1>W0TBbuDVvccC, <2>pushEffects, V22_T_nx, Sizes, SMTT(5) DEF Xids, Sizes
<2>pushDestination.
 ph'[j][r]="wait" /\ Mode="push" => xdst'[rx'[j][r]]=rpg'[j][r]
 BY ONLY <1>W0TBbuDVvccC, <2>pushEffects, <2>pushDomain, V22_T_xdst, SMTT(5)
<2>pushIdentity.
 ph'[j][r]="wait" /\ Mode="push" => xr'[rx'[j][r]]=r /\ xg'[rx'[j][r]]=rg'[j][r]
 BY ONLY <1>W0TBbuDVvccC, <2>pushEffects, <2>pushDomain, V22_T_xr, V22_T_xg, SMTT(5)
<2>waitPage.
 ph'[j][r]="wait" => sled'[rpg'[j][r]]={} /\ sfly'[rpg'[j][r]]={} /\ plt'[rpg'[j][r]]=0 /\ ptl'[rpg'[j][r]]=0
 BY ONLY <1>W0TBbuDVvccC, <2>allocate, <2>emptyOld, <2>classification, V22_T_plt, V22_T_ptl, SMTT(5)
<2>cleanLedger. DResetLedger(j,r)=led
 BY ONLY Design, SMTT(5) DEF DResetLedger, Design
<2>pull.
 ph'[j][r]="wait" /\ Mode="pull" => rx'[j][r]=0 /\ led'[rpg'[j][r]]={}
 BY ONLY <2>allocate, <2>emptyOld, <2>cleanLedger, SMTT(5)
<2>qed. QED
 BY ONLY <2>phase, <2>classification, <2>reply, <2>run, <2>pushDomain,
         <2>pushDestination, <2>pushIdentity, <2>waitPage, <2>pull, SMTT(5) DEF kJnEemH, Tag

<1>xK6oc7uine4Wbbfzq.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r)
  PROVE sled[p] \subseteq sled'[p]
<2> USE ONLY <1>xK6oc7uine4Wbbfzq, Sizes, Location, Design
<2>1. h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, h9WLgd, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>NWsgMst3O8GDDY7.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r), pst[p] = "priv"
  PROVE pr[p] \in Rq /\ Loc(p) \in Inst /\ (Loc(p) # j \/ pr[p] # r)
<2> USE ONLY <1>NWsgMst3O8GDDY7, Sizes, Location, Design
<2>1. K7 /\ K16 /\ ~Active(j,r) /\ IsD(j)
  BY <1>UsePDI6tTnB, SMTT(10), V21_Inv_K16, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location, Design DEF K7, K16, GrownP, Active, Maps, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>GdXCb3icEbkWz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r), pst'[p] = "priv", pst[p] # "priv"
  PROVE /\ Loc(p) = j /\ rpg'[j][r] = p /\ pr'[p] = r /\ pgn'[p] = rg'[j][r]
        /\ ph'[j][r] = "wait" /\ ~rhit'[j][r]
<2> USE ONLY <1>GdXCb3icEbkWz, Sizes, Location, Design
<2>1. OyyWS /\ IwCp /\ vS7em /\ nNeM /\ q1Ohy /\ AydA /\ EYS1sP
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, OyyWS, IwCp, vS7em, nNeM, q1Ohy, AydA, EYS1sP, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Huh3FCXz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K8'
<2> USE ONLY <1>Huh3FCXz, Sizes, Location, Design
<2>1. SHJS /\ K8 /\ K9 /\ K2 /\ ~Active(j,r) /\ IsD(j)
  BY <1>UwwC5LVwQr, <1>UsePDI6tTnB, SMTT(10), V21_Inv_K2, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ASSUME NEW i \in Inst, NEW u \in Rq PROVE rDYgNVy(i,u)'
<3>1. rDYgNVy(i,u) /\ UNCHANGED <<gen,hp,hd,iv>>
  BY <2>1, <1>gKMjz, <1>HfQyCD4BSreUP8, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE i = j /\ u = r
  BY <3>2, <2>1, <1>JH5GHkPGhmvIbdBka, <1>Q2gy2JksROC6Za, <1>HfQyCD4BSreUP8, <1>B37skkIj1S, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF rDYgNVy, Active, OwnedBy, Sizes, Location, Design
<3>3. CASE i # j \/ u # r
<4>1. UNCHANGED <<ph[i][u],rg[i][u],rpg[i][u],rpe[i][u],rx[i][u],rhit[i][u]>>
  BY <3>3, <1>moCLPnsjoLgIky, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. Active(i,u) /\ ~rhit[i][u] => rpg[i][u] \in Pages /\ pst[rpg[i][u]] = "priv"
  BY <3>1, SMTT(10), Sizes, Location, Design DEF rDYgNVy, Sizes, Location, Design
<4>3. Active(i,u) /\ ~rhit[i][u] => UNCHANGED <<pst[rpg[i][u]],pr[rpg[i][u]],pgn[rpg[i][u]],plt[rpg[i][u]],ptl[rpg[i][u]],led[rpg[i][u]],sled[rpg[i][u]],sfly[rpg[i][u]]>>
  BY <4>1, <4>2, <1>B37skkIj1S, <1>Tkbhb1zYD90L, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>4. ph[i][u] \in {"reg","sent","exp"} => rx[i][u] \in Xids /\ rx[i][u] < nx /\ rx[i][u] # nx
  BY <2>1, <3>1, Sizes, SMTT(10), Location, Design DEF rDYgNVy, SHJS, Xids, Sizes, Location, Design
<4>5. ph[i][u] \in {"reg","sent","exp"} => UNCHANGED <<xsrc[rx[i][u]],xr[rx[i][u]],xg[rx[i][u]],xlt[rx[i][u]]>>
  BY <4>1, <4>4, <1>xCdYilU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>6. QED BY <2>1, <3>1, <4>1, <4>3, <4>4, <4>5, <1>v7DLb, <1>HfQyCD4BSreUP8, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF rDYgNVy, Active, OwnedBy, SHJS, Xids, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF K8, rDYgNVy, Sizes, Location, Design
\* T2M-END R2M1225_PdRDLegacy_PP_PdD2DRecvReq_K8

\* T2M-SCOPE R2M1226_PdRDLegacy_PP_PdD2DRecvReq_K9

<1>rEF7vLk2.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K9'
<2> USE ONLY <1>rEF7vLk2, Sizes, Location, Design
<2>1. K8 /\ K9 /\ SHJS /\ Q1j7VI /\ UNCHANGED iv
  BY <1>UwwC5LVwQr, <1>HfQyCD4BSreUP8, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ASSUME NEW i \in DInst, NEW u \in Rq PROVE kJnEemH(i,u)'
<3>1. i \in Inst /\ IsD(i) /\ rDYgNVy(i,u) /\ kJnEemH(i,u)
  BY <2>1, <1>gKMjz, <1>pfyfm, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE i = j /\ u = r
  BY <3>2, <1>W0TBbuDVvccC, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. CASE i # j \/ u # r
<4>1. UNCHANGED <<ph[i][u],rg[i][u],rpg[i][u],rpe[i][u],rx[i][u],rhit[i][u]>>
  BY <3>1, <3>3, <1>moCLPnsjoLgIky, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. ph[i][u] # "none" => rg[i][u] \in Gens /\ (u # r \/ rg[i][u] # rg'[j][r])
  BY <3>1, <3>3, <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF rDYgNVy, Sizes, Location, Design
<4>3. ph[i][u] # "none" => drep'[u][rg[i][u]] = drep[u][rg[i][u]]
  BY <2>1, <4>2, <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF Q1j7VI, Sizes, Location, Design
<4>4. Active(i,u) /\ ~rhit[i][u] => rpg[i][u] \in Pages /\ pst[rpg[i][u]] = "priv"
  BY <3>1, SMTT(10), Sizes, Location, Design DEF rDYgNVy, Sizes, Location, Design
<4>5. Active(i,u) /\ ~rhit[i][u] => UNCHANGED <<pst[rpg[i][u]],pr[rpg[i][u]],pgn[rpg[i][u]],plt[rpg[i][u]],ptl[rpg[i][u]],pvis[rpg[i][u]],led[rpg[i][u]],sled[rpg[i][u]],sfly[rpg[i][u]]>>
  BY <4>1, <4>4, <1>B37skkIj1S, <1>Tkbhb1zYD90L, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>6. ph[i][u] \in {"run","ovl"} /\ rhit[i][u] => pst'[rpg[i][u]] = "shared" /\ Tag(u,rg[i][u]) \in sled'[rpg[i][u]]
  BY <3>1, <1>xK6oc7uine4Wbbfzq, <1>B37skkIj1S, SMTT(10), Sizes, Location, Design DEF rDYgNVy, kJnEemH, Active, Sizes, Location, Design
<4>7. (ph[i][u] = "rd" \/ (ph[i][u] = "wait" /\ Mode = "push")) => rx[i][u] \in Xids /\ rx[i][u] < nx /\ rx[i][u] # nx
  BY <3>1, SMTT(10), Sizes, Location, Design DEF kJnEemH, Sizes, Location, Design
<4>8. (ph[i][u] = "rd" \/ (ph[i][u] = "wait" /\ Mode = "push")) => UNCHANGED <<xdst[rx[i][u]],xr[rx[i][u]],xg[rx[i][u]]>>
  BY <3>1, <4>1, <4>7, <1>xCdYilU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>9. QED BY <2>1, <3>1, <4>1, <4>3, <4>5, <4>6, <4>7, <4>8, <1>v7DLb, SMTT(10), Sizes, Location, Design DEF kJnEemH, Active, SHJS, Xids, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF K9, kJnEemH, Sizes, Location, Design
\* T2M-END R2M1226_PdRDLegacy_PP_PdD2DRecvReq_K9


<1>dAtRYH0YjKosmHUi.         K7 <=> (\A p \in Pages : Mzvo7bvWxtFIDq(p))
  BY SMTT(10), Sizes, Location, Design DEF K7, Mzvo7bvWxtFIDq, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

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


<1>dEWYO7aNds.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW s \in Pages, NEW p \in Pages,
         AydA, q1Ohy, EYS1sP, Loc(s) = j, ~Active(j,r),
         ph' = [ph EXCEPT ![j][r] = "run"], rhit' = [rhit EXCEPT ![j][r] = TRUE], rpg' = [rpg EXCEPT ![j][r] = s]
  PROVE NHits(p)' = IF p = s THEN NHits(p)+1 ELSE NHits(p)
<2> USE ONLY <1>dEWYO7aNds, Sizes, Location, Design
<2>1. V0HEdR3F(p)' = IF p = s THEN V0HEdR3F(p) \cup {r} ELSE V0HEdR3F(p)
  BY <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location, Design DEF V0HEdR3F, AydA, q1Ohy, EYS1sP, Active, Sizes, Location, Design
<2>2. p = s => r \notin V0HEdR3F(p)
  BY SMTT(10), Sizes, Location, Design DEF V0HEdR3F, Active, Sizes, Location, Design
<2>3. IsFiniteSet(V0HEdR3F(p))
  BY <1>e8W7H4aBj, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, FS_AddElement, SMTT(10), Sizes, Location, Design DEF NHits, V0HEdR3F, Sizes, Location, Design
\* T2M-END R2M1223_PdRDLegacy_PP_PdD2RecvHits


<1>PZTW2O5fVVC9e.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r)
  PROVE SmpG0jqOnd(j,r,p)
<2> USE ONLY <1>PZTW2O5fVVC9e, Sizes, Location, Design
<2>1. OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ rO4YE /\ dcfPK /\ p1YmMe5 /\ h9WLgd /\ Xc_ngV /\ vRZWI /\ AydA /\ q1Ohy /\ nNeM
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY <2>1, Design, SMTT(10), Sizes, Location DEF DRecvReq, SmpG0jqOnd, c2K3U3v4RXi, ZpkvInB7i, OyyWS, IwCp, vS7em, bFwlN, rO4YE, dcfPK, p1YmMe5, h9WLgd, Xc_ngV, vRZWI, AydA, q1Ohy, nNeM, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>FzF0AuPOx38.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r)
  PROVE NHits(p)' = IF ZpkvInB7i(j,r,p) THEN NHits(p)+1 ELSE NHits(p)
<2> USE ONLY <1>FzF0AuPOx38, Sizes, Location, Design
<2>1. AydA /\ q1Ohy /\ EYS1sP /\ ~Active(j,r)
  BY <1>UwwC5LVwQr, <1>UsePDI6tTnB, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. CASE ph'[j][r] = "run"
<3>1. rpg'[j][r] \in Pages /\ Loc(rpg'[j][r]) = j
       /\ ph' = [ph EXCEPT ![j][r] = "run"] /\ rhit' = [rhit EXCEPT ![j][r] = TRUE]
       /\ rpg' = [rpg EXCEPT ![j][r] = rpg'[j][r]]
  BY Design, <2>1, <2>2, SMTT(10), Sizes, Location DEF DRecvReq, AydA, q1Ohy, DResetLedger, Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <3>1, <1>dEWYO7aNds, SMTT(10), Sizes, Location, Design DEF ZpkvInB7i, Sizes, Location, Design
<2>3. CASE ph'[j][r] # "run"
<3>1. V0HEdR3F(p)' = V0HEdR3F(p)
  BY Design, <2>1, <2>3, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location DEF DRecvReq, V0HEdR3F, Active, AydA, q1Ohy, EYS1sP, DResetLedger, Sizes, Location, Design
<3>2. QED BY <2>3, <3>1, ZenonT(10), Sizes, Location, Design DEF NHits, V0HEdR3F, ZpkvInB7i, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1224_PdRDLegacy_PP_PdD2RecvPages


<1>QufgPx8P.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K7'
<2> USE ONLY <1>QufgPx8P, Sizes, Location, Design
<2>1. K7 /\ OyyWS /\ p1YmMe5 /\ UNCHANGED <<gen,kpin,krs>>
  BY <1>UwwC5LVwQr, <1>HfQyCD4BSreUP8, SMTT(10), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. K8' /\ K9' /\ \A i \in Inst, u \in Rq : Active(i,u)' => pst'[rpg'[i][u]] \in {"priv","shared"}
  BY <1>Huh3FCXz, <1>rEF7vLk2, <1>tQi56mwLzRWttTQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW p \in Pages PROVE Mzvo7bvWxtFIDq(p)'
<3>1. Mzvo7bvWxtFIDq(p) /\ SmpG0jqOnd(j,r,p)
  BY <2>1, <1>dAtRYH0YjKosmHUi, <1>PZTW2O5fVVC9e, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. NHits(p)' = IF ZpkvInB7i(j,r,p) THEN NHits(p)+1 ELSE NHits(p)
  BY <1>FzF0AuPOx38, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. UNCHANGED KPinned(p)
  BY <2>1, ZenonT(10), Sizes, Location, Design DEF KPinned, Sizes, Location, Design
<3>4. (ptl[p] >= 0)'
  BY <2>1, <3>1, <3>2, <3>3, <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF SmpG0jqOnd, ZpkvInB7i, c2K3U3v4RXi, Mzvo7bvWxtFIDq, Sizes, Location, Design
<3>5. ( pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0))'
  BY <2>1, <3>1, <3>2, <3>3, <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF SmpG0jqOnd, ZpkvInB7i, c2K3U3v4RXi, Mzvo7bvWxtFIDq, Sizes, Location, Design
<3>6. (pst[p] \in {"priv","drain","quar"} => (pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]]))'
  BY <2>1, <3>1, <3>2, <3>3, <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF SmpG0jqOnd, ZpkvInB7i, c2K3U3v4RXi, Mzvo7bvWxtFIDq, Sizes, Location, Design
<3>7. (pst[p] = "quar" => pqp[p] \in Inst)'
  BY <2>1, <3>1, <3>2, <3>3, <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF SmpG0jqOnd, ZpkvInB7i, c2K3U3v4RXi, Mzvo7bvWxtFIDq, Sizes, Location, Design
<3>8. (pst[p] # "quar" => pqp[p] = 0)'
  BY <2>1, <3>1, <3>2, <3>3, <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF SmpG0jqOnd, ZpkvInB7i, c2K3U3v4RXi, Mzvo7bvWxtFIDq, Sizes, Location, Design
<3>9. (pst[p] # "shared" => prefc[p] = 0)'
  BY <2>1, <3>1, <3>2, <3>3, <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF SmpG0jqOnd, ZpkvInB7i, c2K3U3v4RXi, Mzvo7bvWxtFIDq, Sizes, Location, Design
<3>10. (pst[p] = "shared" => (IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p)))'
  BY <2>1, <3>1, <3>2, <3>3, <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF SmpG0jqOnd, ZpkvInB7i, c2K3U3v4RXi, Mzvo7bvWxtFIDq, Sizes, Location, Design
<3>11. (pst[p] = "drain" => (led[p] # {} \/ sled[p] # {} \/ KPinned(p)))'
  BY <2>1, <3>1, <3>2, <3>3, <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF SmpG0jqOnd, ZpkvInB7i, c2K3U3v4RXi, Mzvo7bvWxtFIDq, Sizes, Location, Design
<3>12. (pst[p] \in {"drain","quar"} => \A u \in Rq : ~Maps(Loc(p),u,p))'
  BY ONLY <2>2, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design
<3>13. (pst[p] = "priv" => (Maps(Loc(p),pr[p],p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]]) \/ GrownP(p))'
<4>1. CASE pst'[p] # "priv"
  BY <4>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. CASE pst'[p] = "priv" /\ pst[p] # "priv"
  BY <4>2, <1>GdXCb3icEbkWz, SMTT(10), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design
<4>3. CASE pst'[p] = "priv" /\ pst[p] = "priv"
<5>1. pr[p] \in Rq /\ Loc(p) \in Inst /\ (Loc(p) # j \/ pr[p] # r)
       /\ UNCHANGED <<pr[p],pgn[p]>>
  BY <4>3, <1>B37skkIj1S, <1>NWsgMst3O8GDDY7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<5>2. UNCHANGED <<ph[Loc(p)][pr[p]],rg[Loc(p)][pr[p]],rpg[Loc(p)][pr[p]],rhit[Loc(p)][pr[p]]>>
  BY <5>1, <1>moCLPnsjoLgIky, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<5>3. QED BY <3>1, <4>3, <5>1, <5>2, SMTT(10), Sizes, Location, Design DEF Mzvo7bvWxtFIDq, Maps, Active, GrownP, Sizes, Location, Design
<4>4. QED BY <4>1, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>14. QED BY <3>4, <3>5, <3>6, <3>7, <3>8, <3>9, <3>10, <3>11, <3>12, <3>13, SMTT(10), Sizes, Location, Design DEF Mzvo7bvWxtFIDq, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K7, Mzvo7bvWxtFIDq, Sizes, Location, Design
\* T2M-END R2M1227_PdRDLegacy_PP_PdD2DRecvReq_K7


<1>jdh27iIU37vIUsaWZzxsj.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>jdh27iIU37vIUsaWZzxsj, Sizes, Location, Design
<2>1. K8' /\ K9'
  BY <1>Huh3FCXz, <1>rEF7vLk2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>tQi56mwLzRWttTQ, SMTT(10), Sizes, Location, Design DEF QuarNeverMapped, Active, Maps, Sizes, Location, Design
\* T2M-END R2M1228_PdRDLegacy_PP_PdD2DRecvReq_QuarNeverMapped


<1>xqkM7dybzw.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K1'
  BY ONLY <1>xqkM7dybzw, Sizes, Location, Design, <1>k37CBDXf, V21_Inv_K1 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>DmTGviiie8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K7'
  BY ONLY <1>DmTGviiie8, Sizes, Location, Design, <1>QufgPx8P, V21_Inv_K7 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>HhrfQ56PG4NrRCSdGgJcjB6.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>HhrfQ56PG4NrRCSdGgJcjB6, Sizes, Location, Design, <1>jdh27iIU37vIUsaWZzxsj, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>DmTGviiie8, <1>QSVYIiIVaVPUCXfEkEWSjtu, <1>HhrfQ56PG4NrRCSdGgJcjB6, <1>xqkM7dybzw, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DRecvReq_03_01 SHA b659c8f24c56a9b59e5d43af1126e0c4c8fe64b614ef5ca3f1e3974b0eaf6ff4
USE DEF PositiveNatFact, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K3, V21_Inv_S1, V21_Inv_S6, V21_Inv_SendOwnLanded
HIDE DEF P_PagePoolsDisjoint, Part_DRecvReq_02_02, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_QuarNeverMapped, V22_FunctionEta, V22_MatrixEta, V22_SF_Choice, V22_SF_Map, V22_SF_Off, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_T_drep, V22_T_plt, V22_T_ptl, V22_T_rhit, V22_T_rpg, V22_T_rx, V22_T_schoice, V22_T_sled, V22_T_smap, V22_T_xdst, V22_T_xg, V22_T_xr, V22_T_xsrcP, V22_T_xsrcS
THEOREM Part_DRecvReq_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE (K10)' /\ (K9)' /\ (K8)' /\ (K13)' /\ (S1)' /\ (S6)' /\ (SendOwnLanded)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RD_PFrame == /\ \A i \in PInst, r \in Rq : ph'[i][r]=ph[i][r] /\ rg'[i][r]=rg[i][r]
                        /\ UNCHANGED <<kpin,krs>>

           RD_SFrame == UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>


           RD_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]

           RD_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}

           RD_HUpdate == rpgS'={h \in rpgS : RD_HLive(h) \/ (RD_HPin(h) /\ Mut # "unrefBeforeKDone")}

           RD_MUpdate == /\ smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]
                        /\ schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]

           RD_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0

           RD_Src(x) == IF RD_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0

           RD_XUpdate == /\ xsrcS'=[x \in Xids |-> IF RD_Posted(x) THEN (IF RD_Src(x) \in SPages /\ spst[RD_Src(x)]="shared" THEN {RD_Src(x)} ELSE {}) ELSE xsrcS[x]]
                        /\ xsrcP'=[x \in Xids |-> IF RD_Posted(x) THEN (IF RD_Src(x) \in SPages /\ spst[RD_Src(x)]="priv" THEN {RD_Src(x)} ELSE {}) ELSE xsrcP[x]]

           RD_PhType == ph \in [Inst -> [Rq -> PhSet]]

           RD_RgType == rg \in [Inst -> [Rq -> 0..MG]]

           RD_NxType == nx \in 1..(MX+1)
           \* T2M-LOCAL-VISIBILITY

           RD_SendShared == B2 => \A x \in Xids : hw[x]="fly" => \A p \in xsrcS[x] \cup xsrcP[x] :
                sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])

           RD_KeyOnSource == \A x \in Xids : xsrcS[x] \cup xsrcP[x] # {} => xr'[x]=xr[x] /\ xg'[x]=xg[x]

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

           PdJrO(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])



           IVktI(m) == m.t = "hello" => m.fr \in Inst



           VawcR(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))



           njcW8(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))



           dJpcb(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])



           Y8U_7(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])



           Hdijl(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")



           AL7Oa(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)



           jjAuj(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))



           CsPNLN(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))



           wuoDNx7(m) ==
             /\ PdJrO(m)
             /\ IVktI(m)
             /\ VawcR(m)
             /\ njcW8(m)
             /\ dJpcb(m)
             /\ Y8U_7(m)
             /\ Hdijl(m)
             /\ AL7Oa(m)
             /\ jjAuj(m)
             /\ CsPNLN(m)


           \* T2M-LOCAL-VISIBILITY

           rDYgNVy(i,r) == LET p == rpg[i][r]
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



           kJnEemH(j,r) == LET q == rpg[j][r]
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

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_PhType, RD_RgType, RD_NxType, RD_SendShared, RD_KeyOnSource, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, wuoDNx7, rDYgNVy, kJnEemH

<1>ivFfcVr6Rc1eHuIs8.         B2 /\ SFollow => RD_HUpdate /\ RD_MUpdate /\ RD_XUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_HUpdate, RD_MUpdate, RD_XUpdate, RD_HPin, RD_HLive, RD_Posted, RD_Src, Sizes, Location, Design


<1>EnXJwndWG1D4vkee.         PinInv => RD_PhType /\ RD_RgType /\ RD_NxType
<2> HIDE DEF CoreTypeOK, STypeOK
<2>part0. PinInv => RD_PhType
 BY ONLY V22_T_ph, SMTT(5) DEF RD_PhType
<2>part1. PinInv => RD_RgType
 BY ONLY V22_T_rg, SMTT(5) DEF RD_RgType
<2>part2. PinInv => RD_NxType
 BY ONLY V22_T_nx, SMTT(5) DEF RD_NxType
<2>qed. QED BY ONLY <2>part0, <2>part1, <2>part2, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>lQA2.         PinInv => STypeOK /\ (B2 => SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6)
 BY SMTT(10), V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uaJsMuSZCFU.         SFollow => RD_SFrame
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_SFrame, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cIrFCXuTtPxBU.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE UNCHANGED <<xsrcS,xsrcP>>
<2> USE ONLY <1>cIrFCXuTtPxBU, Sizes, Location, Design
<2>1. STypeOK /\ xsrc \in [Xids -> 0..NP]
 <3>project. CoreTypeOK => xsrc \in [Xids -> 0..NP]
  BY ONLY ZenonT(5) DEF CoreTypeOK
 <3>base. CoreTypeOK /\ STypeOK
  BY ONLY <1>cIrFCXuTtPxBU, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design, SMTT(5)
 <3>qed. QED BY ONLY <3>project, <3>base, SMTT(5)
<2>2. CASE ~B2
 BY ONLY <1>cIrFCXuTtPxBU, Sizes, Location, Design, <2>2, <2>2, SMTT(10), V21_SFollowOff DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. \A x \in Xids : ~(xsrc'[x] \in Pages /\ xsrc[x]=0)
 BY ONLY <1>cIrFCXuTtPxBU, Sizes, Location, Design, <2>3, Sizes, SMTT(10) DEF Pages, Sizes, Location, Design
 <3>2. xsrcS'=[x \in Xids |-> xsrcS[x]] /\ xsrcP'=[x \in Xids |-> xsrcP[x]]
 BY ONLY <1>cIrFCXuTtPxBU, Sizes, Location, Design, <2>3, <2>3, <3>1, <1>ivFfcVr6Rc1eHuIs8, SMTT(10) DEF RD_XUpdate, RD_Posted, Sizes, Location, Design
 <3>3. QED BY <2>1, <3>2, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0682_PdRDSharedBase


<1>UukBaziv337.         BaseSendOwnLanded' /\ RD_SendShared' => SendOwnLanded'
 BY SMTT(10), Sizes, Location, Design DEF SendOwnLanded, RD_SendShared, Sizes, Location, Design
\* T2M-LOCAL-VISIBILITY

<1>CJQYCaOh.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,hw>>, RD_KeyOnSource
 PROVE RD_SendShared'
<2> USE ONLY <1>CJQYCaOh, Sizes, Location, Design
<2>1. RD_SendShared BY SMTT(10), V21_Inv_SendOwnLanded, Sizes, Location, Design DEF SendOwnLanded, RD_SendShared, Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<xsrcS,xsrcP>>
 BY <1>uaJsMuSZCFU, <1>cIrFCXuTtPxBU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_SendShared, RD_SFrame, RD_KeyOnSource, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>O1T0jJ637c6.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), B2
 PROVE RD_KeyOnSource
<2> USE ONLY <1>O1T0jJ637c6, Sizes, Location, Design
<2>1. SI4 /\ STypeOK /\ xr \in [Xids -> 0..NR] /\ xg \in [Xids -> 0..MG]

<3>fxType. CoreTypeOK => xr \in [Xids -> 0..NR] /\ xg \in [Xids -> 0..MG]
 BY ONLY ZenonT(5) DEF CoreTypeOK
<3>fxCore. CoreTypeOK
 BY ONLY <1>O1T0jJ637c6, V21_Inv_BaseTypeOK, Sizes, Location, Design, SMTT(5)
<3>fxShared. SI4 /\ STypeOK
 BY ONLY <1>O1T0jJ637c6, <1>lQA2, SMTT(5)
<3>fxDone. QED BY ONLY <3>fxType, <3>fxCore, <3>fxShared, SMTT(5)
<2>2. \A x \in Xids : xsrcS[x] \cup xsrcP[x] # {} => x # nx
 BY <2>1, SMTT(10), Sizes, Location, Design DEF SI4, STypeOK, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF DRecvReq, xV, RD_KeyOnSource, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iClYwlQaVPhEdnbosn.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>iClYwlQaVPhEdnbosn, Sizes, Location, Design, SMTT(10) DEF DRecvReq, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dKYsfmWiThR9rkh.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE RD_PFrame
<2> HIDE DEF DRecvReq, RD_PFrame, CoreTypeOK
<2>guard. IsD(j)
 BY ONLY <1>dKYsfmWiThR9rkh, ZenonT(5) DEF DRecvReq
<2>kernelFrame. UNCHANGED <<kpin,krs>>
 BY ONLY <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, Sizes, Location, Design, SMTT(5)
<2>rgEffect. \E m \in net : rg'=[rg EXCEPT ![j][r]=m.g]
 BY ONLY <1>dKYsfmWiThR9rkh, ZenonT(5) DEF DRecvReq
<2>phEffect. ph'=[ph EXCEPT ![j][r]="run"] \/
             ph'=[ph EXCEPT ![j][r]="wait"] \/
             ph'=[ph EXCEPT ![j][r]="end"]
 BY ONLY <1>dKYsfmWiThR9rkh, ZenonT(5) DEF DRecvReq
<2>types. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]
 BY ONLY <1>dKYsfmWiThR9rkh, V22_T_ph, V22_T_rg, SMTT(5)
<2>sizes. NPI \in Nat \ {0} /\ NDI \in Nat \ {0}
 BY ONLY Sizes, ZenonT(5) DEF Sizes
<2>integers. NPI \in Int /\ NDI \in Int /\ NDI >= 1
 BY ONLY <2>sizes, PositiveNatFact, SMTT(5)
<2>other. \A i \in PInst : i \in Inst /\ i # j
 BY ONLY <1>dKYsfmWiThR9rkh, <2>guard, <2>integers, SMTT(5) DEF PInst, Inst, NL, IsD
<2>phPoint. \A i \in PInst,u \in Rq : ph'[i][u]=ph[i][u]
 BY ONLY <2>phEffect, <2>types, <2>other, SMTT(5)
<2>rgPoint. \A i \in PInst,u \in Rq : rg'[i][u]=rg[i][u]
 BY ONLY <2>rgEffect, <2>types, <2>other, SMTT(5)
<2>qed. QED BY ONLY <2>kernelFrame, <2>phPoint, <2>rgPoint, SMTT(5) DEF RD_PFrame

\* T2M-LOCAL-VISIBILITY

<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VLROWBcOqe16ENnb.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>COZbdUc0j3ifgnaCHg.        
  ASSUME NEW x \in Xids, XX2v, K2, x < nx
  PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>COZbdUc0j3ifgnaCHg, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, XX2v, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qATejwlthlvQ0RBs.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<rtV, instV, crep, dsucc>>
  BY ONLY <1>qATejwlthlvQ0RBs, Sizes, Location, Design, Design, Zenon DEF DRecvReq, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TfbBw4J1UlUiS0.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,torn,nfail,kpin,kfly,krs,crep,dsucc,pqp,xsrc,xlt,hw,hok,iv>>
  BY ONLY <1>TfbBw4J1UlUiS0, Sizes, Location, Design, Design, <1>qATejwlthlvQ0RBs, SMTT(10) DEF DRecvReq, rtV, instV, kV, xV, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nMxh4NOX.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, IsP(Loc(p)), PinInv, DRecvReq(j,r)
  PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p],sfly[p],sled[p]>>
<2> USE ONLY <1>nMxh4NOX, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ vwKWM /\ eWP7z1 /\ ZpUxx /\ sBjpCf /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, KPages, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OPKB1ZoTEtROgPWe7kb.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>OPKB1ZoTEtROgPWe7kb, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ K1 /\ K2 /\ K3 /\ XX2v /\ UNCHANGED <<hw,xsrc,xlt>>
  BY <1>TLVER4XMUn, <1>TfbBw4J1UlUiS0, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, TEJtP, BaseSafety, SendOwnLanded, Sizes, Location, Design
<2>2. ASSUME NEW x \in Xids, hw'[x] = "fly"
       PROVE ptl'[xsrc'[x]] = xlt'[x] /\ sfly'[xsrc'[x]] = {}
<3>1. x < nx /\ xk[x] \in {"wr","rd"} /\ iv[x] \notin {"none","nopost"}
  BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF K2, K3, InFl, XX2v, Xids, Sizes, Location, Design
<3>2. xsrc[x] \in Pages /\ IsP(Loc(xsrc[x]))
  BY <2>1, <3>1, <1>COZbdUc0j3ifgnaCHg, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF K2, InitPage, ExpPage, InitInst, ExpInst, K1, Sizes, Location, Design
<3>3. QED BY <2>1, <2>2, <3>2, <1>nMxh4NOX, SMTT(10), Sizes, Location, Design DEF BaseSendOwnLanded, SendOwnLanded, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF BaseSendOwnLanded, SendOwnLanded, Sizes, Location, Design
\* T2M-END R2M1000_PdRDPort_PdD2DRecvReq_SendOwnLanded


<1>VT7jSBCi7E3L5iRSiP9Nbc.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE SendOwnLanded'
<2> USE ONLY <1>VT7jSBCi7E3L5iRSiP9Nbc, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,hw>>
 BY <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, SMTT(10), Sizes, Location, Design DEF DRecvReq, xV, Sizes, Location, Design
<2>2. CASE B2
 BY <2>1, <2>2, <1>O1T0jJ637c6, <1>CJQYCaOh, <1>OPKB1ZoTEtROgPWe7kb, <1>UukBaziv337, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE ~B2 BY <2>3, <1>OPKB1ZoTEtROgPWe7kb, SMTT(10), Sizes, Location, Design DEF SendOwnLanded, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>laJZVswepl.         K12 <=> (\A m \in net : wuoDNx7(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Jy0Yhh.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1110_PdRDLegacy_PP_PdMsgBase


<1>nvc1L3TxUa51Uyr5.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<rtV, instV, crep, dsucc>>
  BY ONLY <1>nvc1L3TxUa51Uyr5, Sizes, Location, Design, Design, Zenon DEF DRecvReq, DResetLedger, Sizes, Location, Design
\* T2M-END R2M1198_PdRDLegacy_PP_PdDRecvReqFrames

\* T2M-SCOPE R2M1199_PdRDLegacy_PP_PdCell_DRecvReq_GenFiltered
\* T2M-BODY R2M1199_PdRDLegacy_PP_PdCell_DRecvReq_GenFiltered
\* T2M-LOCAL-VISIBILITY

<1>If9WIcvqArDXsccwr.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE GenFiltered'
<2> USE ONLY <1>If9WIcvqArDXsccwr, Sizes, Location, Design
<2>1. GenFiltered /\ qvLUP /\ nNeM /\ Mut = "none"
  BY <1>UwwC5LVwQr, Design, SMTT(10), V21_Inv_GenFiltered, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location DEF Safety, QLAWp, Sizes, Location, Design
<2>2. PICK m \in net : NewGen(j,r,m.g) /\ gbad' = (gbad \/ (ph[j][r] = "end" /\ m.g <= rg[j][r]))
  BY Design, ZenonT(10), Sizes, Location DEF DRecvReq, DResetLedger, Sizes, Location, Design
<2>3. m.g \in 0..MG /\ rg[j][r] \in 0..MG
  BY <2>1, <2>2, <1>Jy0Yhh, Sizes, SMTT(10), Location, Design DEF qvLUP, nNeM, Sizes, Location, Design
<2>4. ~(ph[j][r] = "end" /\ m.g <= rg[j][r])
  BY <2>1, <2>2, <2>3, Sizes, SMTT(10), Location, Design DEF NewGen, Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF GenFiltered, Sizes, Location, Design
\* T2M-END R2M1199_PdRDLegacy_PP_PdCell_DRecvReq_GenFiltered


<1>gKMjz.         K8 <=> \A i \in Inst, r \in Rq : rDYgNVy(i,r)
  BY ZenonT(10), Sizes, Location, Design DEF K8, rDYgNVy, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>pfyfm.         K9 <=> \A j \in DInst, r \in Rq : kJnEemH(j,r)
  BY ZenonT(10), Sizes, Location, Design DEF K9, kJnEemH, Sizes, Location, Design
\* T2M-END R2M1114_PdRDLegacy_PP_PdPointPredicates


<1>euFIjtPFLtHTQoq.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE IsD(j) /\ \E m \in net :
          /\ m.t = "req" /\ m.to = j /\ m.r = r /\ NewGen(j,r,m.g)
          /\ (drep' = drep \/ drep' = [drep EXCEPT ![r][m.g] = Bump(drep[r][m.g])])
  BY ONLY <1>euFIjtPFLtHTQoq, Sizes, Location, Design, Design, ZenonT(10) DEF DRecvReq, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>mB5vW8NPOnMGB6.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r
  PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
<2> USE ONLY <1>mB5vW8NPOnMGB6, Sizes, Location, Design
<2>1. K1 /\ K12
  BY SMTT(10), V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. wuoDNx7(m)
  BY <2>1, <1>laJZVswepl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. m.g \in Gens /\ m.g <= gen[r] /\ (j = hp[r][m.g] \/ j = hd[r][m.g])
  BY <2>2, SMTT(10), Sizes, Location, Design DEF wuoDNx7, PdJrO, VawcR, Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, SMTT(10), Location, Design DEF K1, IsD, PInst, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>DW9I8xbFt1rBgo.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r, NewGen(j,r,m.g)
  PROVE drep[r][m.g] = 0
<2> USE ONLY <1>DW9I8xbFt1rBgo, Sizes, Location, Design
<2>1. K8 /\ K13 /\ OneReply /\ Q1j7VI /\ nNeM /\ Mut = "none"
  BY <1>UwwC5LVwQr, Design, SMTT(10), V21_Inv_K13, V21_Inv_K8, V21_Inv_OneReply, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location DEF Safety, QLAWp, Sizes, Location, Design
<2>2. m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
  BY <1>mB5vW8NPOnMGB6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rDYgNVy(j,r) /\ drep[r][m.g] \in {0,1}
 <3>1. rDYgNVy(j,r)
  BY ONLY <1>DW9I8xbFt1rBgo, <2>1, <1>gKMjz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. drep[r][m.g] \in 0..2
  BY ONLY <1>DW9I8xbFt1rBgo, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Q1j7VI, Sizes, Location, Design
 <3>3. drep[r][m.g] <= 1
  BY ONLY <1>DW9I8xbFt1rBgo, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
 <3>4. QED BY ONLY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. drep[r][m.g] = 1 => rg[j][r] >= m.g
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K13, nNeM, Gens, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF rDYgNVy, NewGen, nNeM, Gens, Sizes, Location, Design
\* T2M-END R2M1200_PdRDLegacy_PP_PdDRecvHistory

\* T2M-SCOPE R2M1201_PdRDLegacy_PP_PdCell_DRecvReq_K1
\* T2M-BODY R2M1201_PdRDLegacy_PP_PdCell_DRecvReq_K1
\* T2M-LOCAL-VISIBILITY

<1>OkHaBqshrpAuN.        
  ASSUME NEW r \in Rq, NEW g \in Gens, OneReply, Q1j7VI,
         drep[r][g] = 0, UNCHANGED crep,
         drep' = [drep EXCEPT ![r][g] = Bump(drep[r][g])]
  PROVE OneReply'
<2> USE ONLY <1>OkHaBqshrpAuN, Sizes, Location, Design
<2>1. drep' = [drep EXCEPT ![r][g] = 1]
  BY SMTT(10), Sizes, Location, Design DEF Bump, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF OneReply, Q1j7VI, Sizes, Location, Design
\* T2M-END R2M1115_PdRDLegacy_PP_PdOneReplyIncrement


<1>EAJmZ9BjoJYsTz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE OneReply'
<2> USE ONLY <1>EAJmZ9BjoJYsTz, Sizes, Location, Design
<2>1. OneReply /\ Q1j7VI
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_OneReply, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, Sizes, Location, Design
<2>2. UNCHANGED crep
  BY <1>nvc1L3TxUa51Uyr5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net :
          /\ IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r /\ NewGen(j,r,m.g)
          /\ (drep' = drep \/ drep' = [drep EXCEPT ![r][m.g] = Bump(drep[r][m.g])])
  BY <1>euFIjtPFLtHTQoq, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. m.g \in Gens /\ drep[r][m.g] = 0
  BY <2>3, <1>mB5vW8NPOnMGB6, <1>DW9I8xbFt1rBgo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. CASE drep' = drep
  BY <2>1, <2>2, <2>5, SMTT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
<2>6. CASE drep' # drep
  BY <2>1, <2>2, <2>3, <2>4, <2>6, <1>OkHaBqshrpAuN, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED BY <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1204_PdRDLegacy_PP_PdCell_DRecvReq_OneReply


<1>KeUX3AwuU5dZGL50.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>NEegLqmCti8ylSLRCJ.        
  ASSUME NEW x \in Xids, SHJS, K2, x < nx
  PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>NEegLqmCti8ylSLRCJ, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, SHJS, Xids, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>oRMobcZtnEacZOSYh60.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst /\ (IsP(Loc(p)) <=> ~IsD(Loc(p)))
  BY ONLY <1>oRMobcZtnEacZOSYh60, Sizes, Location, Design, Location, Sizes, SMTT(10) DEF IsP, IsD, Inst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M1123_PdRDLegacy_PP_D2Finite_PdFactsA


<1>VnRgHUqOOVql.        
  ASSUME PinInv
  PROVE \A p \in Pages : pst[p] = "free" =>
          led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0
  BY ONLY <1>VnRgHUqOOVql, Sizes, Location, Design, SMTT(10), V21_Inv_K7, V21_Inv_KStruct DEF KStruct, K7, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>z4BWdv.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r
  PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
        /\ m.pe = hp[r][m.g] /\ m.pe \in PInst /\ m.pe \in Inst
<2> USE ONLY <1>z4BWdv, Sizes, Location, Design
<2>1. K1 /\ K12
  BY SMTT(10), V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
  BY <1>mB5vW8NPOnMGB6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hp[r][m.g] \in PInst /\ hd[r][m.g] \in DInst
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. wuoDNx7(m)
  BY <2>1, <1>laJZVswepl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. hp[r][m.g] # j /\ hp[r][m.g] \in Inst
  BY <2>3, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF wuoDNx7, VawcR, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>HfQyCD4BSreUP8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,torn,nfail,kpin,kfly,krs,crep,dsucc,pqp,xsrc,xlt,hw,hok,iv>>
  BY ONLY <1>HfQyCD4BSreUP8, Sizes, Location, Design, Design, <1>nvc1L3TxUa51Uyr5, SMTT(10) DEF DRecvReq, rtV, instV, kV, xV, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>v7DLb.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE nx' = nx \/ (nx' = nx+1 /\ Mode = "push" /\ nx \in Xids)
<2> USE ONLY <1>v7DLb, Sizes, Location, Design
<2>1. SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, Sizes, SMTT(10), Location DEF DRecvReq, xV, SHJS, Xids, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>xCdYilU.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW x \in Xids, PinInv, DRecvReq(j,r), x # nx
  PROVE UNCHANGED <<xr[x],xg[x],xk[x],xp[x],xd[x],xsrc[x],xdst[x],xnt[x],xst[x],xlt[x],hw[x],hok[x],iv[x]>>
<2> USE ONLY <1>xCdYilU, Sizes, Location, Design
<2>1. a1R5 /\ CXAy /\ ok5g /\ vdyX /\ C4fb /\ JjZ1PO /\ PwcfA /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, <1>HfQyCD4BSreUP8, SMTT(10), Sizes, Location DEF DRecvReq, xV, a1R5, CXAy, ok5g, vdyX, C4fb, JjZ1PO, PwcfA, PD2ZN, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>QZj3uy1ir.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), nx' = nx+1
  PROVE /\ nx \in Xids /\ Mode = "push"
        /\ xr'[nx] = r /\ xg'[nx] \in Gens /\ xg'[nx] <= gen[r]
        /\ xk'[nx] = "wr" /\ xp'[nx] = hp[r][xg'[nx]] /\ xd'[nx] = hd[r][xg'[nx]] /\ xd'[nx] = j
        /\ xnt'[nx] = NTok(r,xg'[nx]) /\ xst'[nx] = "posted"
        /\ xdst'[nx] \in Pages /\ Loc(xdst'[nx]) = j /\ pst[xdst'[nx]] = "free"
        /\ xsrc'[nx] = 0 /\ xlt'[nx] = 0 /\ hw'[nx] = "none" /\ ~hok'[nx] /\ iv'[nx] = "none"
<2> USE ONLY <1>QZj3uy1ir, Sizes, Location, Design
<2>1. K2 /\ SHJS /\ a1R5 /\ CXAy /\ ok5g /\ vdyX /\ C4fb /\ JjZ1PO /\ PwcfA /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. nx \in Xids /\ Mode = "push"
  BY <1>v7DLb, <2>1, SMTT(10), Sizes, Location, Design DEF SHJS, Sizes, Location, Design
<2>3. xsrc[nx] = 0 /\ xlt[nx] = 0 /\ hw[nx] = "none" /\ ~hok[nx] /\ iv[nx] = "none"
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, SHJS, Xids, Sizes, Location, Design
<2>4. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g] /\ m.pe = hp[r][m.g]
  BY <1>z4BWdv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY Design, <2>1, <2>2, <2>3, <2>4, <1>HfQyCD4BSreUP8, SMTT(10), Sizes, Location DEF DRecvReq, xV, SHJS, a1R5, CXAy, ok5g, vdyX, C4fb, JjZ1PO, PwcfA, PD2ZN, DResetLedger, Sizes, Location, Design
\* T2M-END R2M1209_PdRDLegacy_PP_PdD2RecvProjection

\* T2M-SCOPE R2M1210_PdRDLegacy_PP_PdD2RecvPageMasks
\* T2M-BODY R2M1210_PdRDLegacy_PP_PdD2RecvPageMasks
\* T2M-LOCAL-VISIBILITY

<1>B37skkIj1S.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, pst[p] # "free", PinInv, DRecvReq(j,r)
  PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p]>>
<2> USE ONLY <1>B37skkIj1S, Sizes, Location, Design
<2>1. OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ rO4YE /\ Bq5Edl /\ dcfPK
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, KPages, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Tkbhb1zYD90L.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, pst[p] # "shared", PinInv, DRecvReq(j,r)
  PROVE UNCHANGED <<sfly[p],sled[p]>>
<2> USE ONLY <1>Tkbhb1zYD90L, Sizes, Location, Design
<2>1. OyyWS /\ Xc_ngV /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, OyyWS, Xc_ngV, h9WLgd, KPages, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>F5CbSbT4sCpD.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r), pst[p] = "free"
  PROVE pst'[p] \in {"free","priv"}
<2> USE ONLY <1>F5CbSbT4sCpD, Sizes, Location, Design
<2>1. OyyWS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, OyyWS, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>UsePDI6tTnB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE ~Active(j,r) /\ IsD(j) /\ j \in DInst
  BY ONLY <1>UsePDI6tTnB, Sizes, Location, Design, Design, <1>KeUX3AwuU5dZGL50, SMTT(10) DEF DRecvReq, NewGen, Active, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>moCLPnsjoLgIky.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW i \in Inst, NEW u \in Rq,
         PinInv, DRecvReq(j,r), i # j \/ u # r
  PROVE UNCHANGED <<ph[i][u],rg[i][u],rpg[i][u],rpe[i][u],rx[i][u],rhit[i][u]>>
<2> USE ONLY <1>moCLPnsjoLgIky, Sizes, Location, Design
<2>1. AydA /\ nNeM /\ q1Ohy /\ E1MnW /\ QC9Q /\ EYS1sP
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>JH5GHkPGhmvIbdBka.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE /\ rg'[j][r] \in Gens /\ rg'[j][r] <= gen[r] /\ rg'[j][r] > rg[j][r]
        /\ hd[r][rg'[j][r]] = j /\ rpe'[j][r] = hp[r][rg'[j][r]]
        /\ ph'[j][r] \in {"run","wait","end"}
        /\ drep[r][rg'[j][r]] = 0
        /\ drep' = IF ph'[j][r] = "end" THEN [drep EXCEPT ![r][rg'[j][r]] = 1] ELSE drep
<2> USE ONLY <1>JH5GHkPGhmvIbdBka, Sizes, Location, Design
<2>1. AydA /\ nNeM /\ E1MnW /\ Q1j7VI /\ K8 /\ Mut = "none"
  BY <1>UwwC5LVwQr, Design, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location DEF QLAWp, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r /\ NewGen(j,r,m.g)) =>
       m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g] /\ m.pe = hp[r][m.g] /\ m.g > rg[j][r] /\ drep[r][m.g] = 0
<3>1. ASSUME NEW m \in net, IsD(j), m.t = "req", m.to = j, m.r = r, NewGen(j,r,m.g)
       PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g] /\ m.pe = hp[r][m.g] /\ m.g > rg[j][r] /\ drep[r][m.g] = 0
<4>1. m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g] /\ m.pe = hp[r][m.g] /\ drep[r][m.g] = 0
  BY <3>1, <1>z4BWdv, <1>DW9I8xbFt1rBgo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. QED BY <2>1, <3>1, <4>1, Sizes, SMTT(10), Location, Design DEF K8, NewGen, Gens, Sizes, Location, Design
<3>2. QED BY <3>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY Design, <2>1, <2>2, SMTT(10), Sizes, Location DEF DRecvReq, AydA, nNeM, E1MnW, Q1j7VI, Bump, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Q2gy2JksROC6Za.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE /\ (ph'[j][r] = "run" => rhit'[j][r] /\ rpg'[j][r] \in Pages /\ Loc(rpg'[j][r]) = j /\ pst[rpg'[j][r]] = "shared" /\ rx'[j][r] = 0)
        /\ (ph'[j][r] = "wait" => ~rhit'[j][r] /\ rpg'[j][r] \in Pages /\ Loc(rpg'[j][r]) = j /\ pst[rpg'[j][r]] = "free"
                                   /\ pst'[rpg'[j][r]] = "priv" /\ pr'[rpg'[j][r]] = r /\ pgn'[rpg'[j][r]] = rg'[j][r])
        /\ (ph'[j][r] = "end" => ~rhit'[j][r] /\ rpg'[j][r] = 0 /\ rx'[j][r] = 0)
<2> USE ONLY <1>Q2gy2JksROC6Za, Sizes, Location, Design
<2>1. AydA /\ nNeM /\ q1Ohy /\ EYS1sP /\ QC9Q /\ OyyWS /\ IwCp /\ vS7em
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, AydA, nNeM, q1Ohy, EYS1sP, QC9Q, OyyWS, IwCp, vS7em, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>W0TBbuDVvccC.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE kJnEemH(j,r)'
<2> USE ONLY <1>W0TBbuDVvccC, Sizes, Location, Design
<2>1. AydA /\ nNeM /\ q1Ohy /\ EYS1sP /\ QC9Q /\ OyyWS /\ bFwlN /\ rO4YE /\ h9WLgd /\ Xc_ngV /\ dcfPK /\ a1R5 /\ CXAy /\ JjZ1PO /\ SHJS /\ Q1j7VI
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. rg'[j][r] \in Gens /\ ph'[j][r] \in {"run","wait","end"}
        /\ drep[r][rg'[j][r]] = 0
        /\ drep' = IF ph'[j][r] = "end" THEN [drep EXCEPT ![r][rg'[j][r]] = 1] ELSE drep
  BY <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>VnRgHUqOOVql, <1>Q2gy2JksROC6Za, Design, Sizes, SMTT(10), Location DEF kJnEemH, DRecvReq, Active, Tag, xV, Xids, AydA, nNeM, q1Ohy, EYS1sP, QC9Q, OyyWS, bFwlN, rO4YE, h9WLgd, Xc_ngV, dcfPK, a1R5, CXAy, JjZ1PO, SHJS, Q1j7VI, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>xK6oc7uine4Wbbfzq.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r)
  PROVE sled[p] \subseteq sled'[p]
<2> USE ONLY <1>xK6oc7uine4Wbbfzq, Sizes, Location, Design
<2>1. h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, h9WLgd, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>pzaIRbvLLJzNst.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), nx' = nx+1
  PROVE xg'[nx] = rg'[j][r] /\ rx'[j][r] = nx /\ ph'[j][r] = "wait" /\ ~rhit'[j][r]
<2> USE ONLY <1>pzaIRbvLLJzNst, Sizes, Location, Design
<2>1. SHJS /\ CXAy /\ nNeM /\ QC9Q /\ AydA /\ EYS1sP
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. nx \in Xids
  BY <2>1, <1>v7DLb, SMTT(10), Sizes, Location, Design DEF SHJS, Sizes, Location, Design
<2>3. QED BY Design, <2>1, <2>2, SMTT(10), Sizes, Location DEF DRecvReq, xV, SHJS, CXAy, nNeM, QC9Q, AydA, EYS1sP, DResetLedger, Sizes, Location, Design
\* T2M-END R2M1211_PdRDLegacy_PP_PdD2RecvRecord

\* T2M-SCOPE R2M1212_PdRDLegacy_PP_PdD2RecvPrivate
\* T2M-BODY R2M1212_PdRDLegacy_PP_PdD2RecvPrivate
\* T2M-LOCAL-VISIBILITY

<1>GdXCb3icEbkWz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r), pst'[p] = "priv", pst[p] # "priv"
  PROVE /\ Loc(p) = j /\ rpg'[j][r] = p /\ pr'[p] = r /\ pgn'[p] = rg'[j][r]
        /\ ph'[j][r] = "wait" /\ ~rhit'[j][r]
<2> USE ONLY <1>GdXCb3icEbkWz, Sizes, Location, Design
<2>1. OyyWS /\ IwCp /\ vS7em /\ nNeM /\ q1Ohy /\ AydA /\ EYS1sP
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, OyyWS, IwCp, vS7em, nNeM, q1Ohy, AydA, EYS1sP, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>QXeVhPr9Qm8tApeV.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW x \in Xids, PinInv, DRecvReq(j,r),
         x < nx, xdst[x] \in Pages, Loc(xdst[x]) = j, xr[x] = r
  PROVE xg[x] <= rg[j][r]
<2> USE ONLY <1>QXeVhPr9Qm8tApeV, Sizes, Location, Design
<2>1. K2 /\ S1 /\ S6 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K2, V21_Inv_S1, V21_Inv_S6, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xk[x] \in {"wr","rd"}
  BY <2>1, Design, <1>NEegLqmCti8ylSLRCJ, SMTT(10), Sizes, Location DEF Sizes, Location, Design
<2>3. CASE xk[x] = "wr"
  BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K2, S1, ExpInst, ExpPage, Sizes, Location, Design
<2>4. CASE xk[x] = "rd"
<3>1. InitPage(x) # 0 /\ InitInst(x) = j
  BY <2>1, <2>4, Sizes, SMTT(10), Location, Design DEF K2, InitInst, InitPage, Pages, Sizes, Location, Design
<3>2. QED BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF S6, InitInst, Sizes, Location, Design
<2>5. QED BY <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>YohK94Gpme9.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW x \in Xids, PinInv, DRecvReq(j,r),
         x < nx, xdst[x] \in Pages, OwnedBy(xdst[x],xr[x],xg[x])'
  PROVE OwnedBy(xdst[x],xr[x],xg[x])
<2> USE ONLY <1>YohK94Gpme9, Sizes, Location, Design
<2>0. nNeM /\ CXAy
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>1. UNCHANGED <<xdst[x],xr[x],xg[x]>>
  BY <1>xCdYilU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE pst[xdst[x]] # "free"
  BY <2>1, <2>2, <1>B37skkIj1S, SMTT(10), Sizes, Location, Design DEF OwnedBy, Sizes, Location, Design
<2>3. CASE pst[xdst[x]] = "free"
<3>1. pst'[xdst[x]] = "priv" /\ pr'[xdst[x]] = r /\ pgn'[xdst[x]] = rg'[j][r] /\ Loc(xdst[x]) = j
  BY <2>1, <2>3, <1>F5CbSbT4sCpD, <1>GdXCb3icEbkWz, SMTT(10), Sizes, Location, Design DEF OwnedBy, Sizes, Location, Design
<3>2. xr[x] = r /\ xg[x] = rg'[j][r]
  BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF OwnedBy, Sizes, Location, Design
<3>3. xg[x] <= rg[j][r] /\ rg'[j][r] > rg[j][r]
  BY <3>1, <3>2, <1>QXeVhPr9Qm8tApeV, <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>4. QED BY <2>0, <3>2, <3>3, Sizes, SMTT(10), Location, Design DEF nNeM, CXAy, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1213_PdRDLegacy_PP_PdD2RecvOldOwned

\* T2M-SCOPE R2M1214_PdRDLegacy_PP_PdD2DRecvReq_K10
\* T2M-BODY R2M1214_PdRDLegacy_PP_PdD2DRecvReq_K10
\* T2M-LOCAL-VISIBILITY

<1>pa2LynQnU.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K10'
<2> USE ONLY <1>pa2LynQnU, Sizes, Location, Design
<2>1. K10 /\ K2 /\ SHJS /\ rO4YE /\ OyyWS /\ JjZ1PO /\ q1Ohy /\ AydA /\ ~Active(j,r)
  BY <1>UwwC5LVwQr, <1>UsePDI6tTnB, SMTT(10), V21_Inv_K10, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ASSUME NEW x \in Xids, x < nx', xdst'[x] \in Pages, OwnedBy(xdst[x],xr[x],xg[x])',
    ~(ph'[Loc(xdst'[x])][xr'[x]] \in {"run","ovl"} /\ rg'[Loc(xdst'[x])][xr'[x]] = xg'[x])
       PROVE ptl'[xdst'[x]] = (IF hw'[x] = "stop" /\ hok'[x] THEN xlt'[x] ELSE 0)
<3>1. CASE x < nx
<4>1. UNCHANGED <<xdst[x],xr[x],xg[x],hw[x],hok[x],xlt[x]>>
  BY <3>1, <1>xCdYilU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. OwnedBy(xdst[x],xr[x],xg[x]) /\ xdst[x] \in Pages /\ xr[x] \in Rq /\ Loc(xdst[x]) \in Inst
  BY <2>1, <2>2, <3>1, <4>1, <1>YohK94Gpme9, <1>NEegLqmCti8ylSLRCJ, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location, Design DEF K2, Sizes, Location, Design
<4>3. ~(ph[Loc(xdst[x])][xr[x]] \in {"run","ovl"} /\ rg[Loc(xdst[x])][xr[x]] = xg[x])
  BY <2>1, <2>2, <4>1, <4>2, <1>moCLPnsjoLgIky, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<4>4. QED BY <2>1, <2>2, <3>1, <4>1, <4>2, <4>3, <1>B37skkIj1S, SMTT(10), Sizes, Location, Design DEF K10, OwnedBy, Sizes, Location, Design
<3>2. CASE x >= nx
<4>1. x = nx /\ nx' = nx+1
  BY <2>1, <2>2, <3>2, <1>v7DLb, Sizes, SMTT(10), Location, Design DEF SHJS, Xids, Sizes, Location, Design
<4>2. xdst'[x] = rpg'[j][r] /\ ph'[j][r] = "wait"
  BY Design, <2>1, <4>1, SMTT(10), Sizes, Location DEF DRecvReq, SHJS, JjZ1PO, q1Ohy, AydA, xV, DResetLedger, Sizes, Location, Design
<4>3. ptl'[rpg'[j][r]] = 0
  BY Design, <2>1, <4>2, SMTT(10), Sizes, Location DEF DRecvReq, rO4YE, OyyWS, q1Ohy, AydA, DResetLedger, Sizes, Location, Design
<4>4. QED BY <4>1, <4>2, <4>3, <1>QZj3uy1ir, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. QED BY <2>1, <3>1, <3>2, Sizes, SMTT(10), Location, Design DEF SHJS, Xids, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF K10, Sizes, Location, Design
\* T2M-END R2M1214_PdRDLegacy_PP_PdD2DRecvReq_K10

\* T2M-SCOPE R2M1215_PdRDLegacy_PP_PdD2DRecvReq_K11

<1>zD1w9AfQe.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K13'
<2> USE ONLY <1>zD1w9AfQe, Sizes, Location, Design
<2>1. K1 /\ K8 /\ K13 /\ AEZsS /\ Q1j7VI /\ nNeM /\ AydA
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K13, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ~gbad' /\ OneReply' /\ UNCHANGED <<crep,dsucc,hd>>
  BY <1>If9WIcvqArDXsccwr, <1>EAJmZ9BjoJYsTz, <1>HfQyCD4BSreUP8, SMTT(10), Sizes, Location, Design DEF GenFiltered, Sizes, Location, Design
<2>3. rg'[j][r] \in Gens /\ rg'[j][r] > rg[j][r] /\ hd[r][rg'[j][r]] = j /\ ph'[j][r] \in {"run","wait","end"}
       /\ drep' = IF ph'[j][r] = "end" THEN [drep EXCEPT ![r][rg'[j][r]] = 1] ELSE drep
  BY <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW u \in Rq, NEW g \in Gens PROVE
        /\ dsucc'[u][g] => drep'[u][g] = 1
        /\ crep'[u][g] = "ok" => dsucc'[u][g]
        /\ crep'[u][g] # "two"
        /\ drep'[u][g] = 1 => (rg'[hd'[u][g]][u] > g \/ (rg'[hd'[u][g]][u] = g /\ ph'[hd'[u][g]][u] = "end"))
<3>1. dsucc'[u][g] => drep'[u][g] = 1
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K13, Q1j7VI, Sizes, Location, Design
<3>2. (crep'[u][g] = "ok" => dsucc'[u][g]) /\ crep'[u][g] # "two"
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design
<3>3. ASSUME drep'[u][g] = 1
       PROVE rg'[hd'[u][g]][u] > g \/ (rg'[hd'[u][g]][u] = g /\ ph'[hd'[u][g]][u] = "end")
<4>1. CASE u = r /\ g = rg'[j][r]
  BY <2>1, <2>2, <2>3, <3>3, <4>1, <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF Q1j7VI, Sizes, Location, Design
<4>2. CASE u # r \/ g # rg'[j][r]
<5>1. drep[u][g] = 1 /\ g <= gen[u] /\ hd[u][g] \in Inst
  BY <2>1, <2>2, <2>3, <3>3, <4>2, <1>KeUX3AwuU5dZGL50, Sizes, SMTT(10), Location, Design DEF K1, Q1j7VI, AEZsS, Gens, Sizes, Location, Design
<5>2. CASE hd[u][g] = j /\ u = r
  BY <2>1, <2>2, <2>3, <5>1, <5>2, Sizes, SMTT(10), Location, Design DEF K13, nNeM, Gens, Sizes, Location, Design
<5>3. CASE hd[u][g] # j \/ u # r
  BY <2>1, <2>2, <5>1, <5>3, <1>moCLPnsjoLgIky, SMTT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design
<5>4. QED BY <5>2, <5>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>4. QED BY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF K13, OneReply, Sizes, Location, Design
\* T2M-END R2M1216_PdRDLegacy_PP_PdD2DRecvReq_K13

\* T2M-SCOPE R2M1217_PdRDLegacy_PP_PdD2DRecvReq_K16

<1>Huh3FCXz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K8'
<2> USE ONLY <1>Huh3FCXz, Sizes, Location, Design
<2>1. SHJS /\ K8 /\ K9 /\ K2 /\ ~Active(j,r) /\ IsD(j)
  BY <1>UwwC5LVwQr, <1>UsePDI6tTnB, SMTT(10), V21_Inv_K2, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ASSUME NEW i \in Inst, NEW u \in Rq PROVE rDYgNVy(i,u)'
<3>1. rDYgNVy(i,u) /\ UNCHANGED <<gen,hp,hd,iv>>
  BY <2>1, <1>gKMjz, <1>HfQyCD4BSreUP8, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE i = j /\ u = r
  BY <3>2, <2>1, <1>JH5GHkPGhmvIbdBka, <1>Q2gy2JksROC6Za, <1>HfQyCD4BSreUP8, <1>B37skkIj1S, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF rDYgNVy, Active, OwnedBy, Sizes, Location, Design
<3>3. CASE i # j \/ u # r
<4>1. UNCHANGED <<ph[i][u],rg[i][u],rpg[i][u],rpe[i][u],rx[i][u],rhit[i][u]>>
  BY <3>3, <1>moCLPnsjoLgIky, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. Active(i,u) /\ ~rhit[i][u] => rpg[i][u] \in Pages /\ pst[rpg[i][u]] = "priv"
  BY <3>1, SMTT(10), Sizes, Location, Design DEF rDYgNVy, Sizes, Location, Design
<4>3. Active(i,u) /\ ~rhit[i][u] => UNCHANGED <<pst[rpg[i][u]],pr[rpg[i][u]],pgn[rpg[i][u]],plt[rpg[i][u]],ptl[rpg[i][u]],led[rpg[i][u]],sled[rpg[i][u]],sfly[rpg[i][u]]>>
  BY <4>1, <4>2, <1>B37skkIj1S, <1>Tkbhb1zYD90L, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>4. ph[i][u] \in {"reg","sent","exp"} => rx[i][u] \in Xids /\ rx[i][u] < nx /\ rx[i][u] # nx
  BY <2>1, <3>1, Sizes, SMTT(10), Location, Design DEF rDYgNVy, SHJS, Xids, Sizes, Location, Design
<4>5. ph[i][u] \in {"reg","sent","exp"} => UNCHANGED <<xsrc[rx[i][u]],xr[rx[i][u]],xg[rx[i][u]],xlt[rx[i][u]]>>
  BY <4>1, <4>4, <1>xCdYilU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>6. QED BY <2>1, <3>1, <4>1, <4>3, <4>4, <4>5, <1>v7DLb, <1>HfQyCD4BSreUP8, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF rDYgNVy, Active, OwnedBy, SHJS, Xids, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF K8, rDYgNVy, Sizes, Location, Design
\* T2M-END R2M1225_PdRDLegacy_PP_PdD2DRecvReq_K8

\* T2M-SCOPE R2M1226_PdRDLegacy_PP_PdD2DRecvReq_K9

<1>rEF7vLk2.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K9'
<2> USE ONLY <1>rEF7vLk2, Sizes, Location, Design
<2>1. K8 /\ K9 /\ SHJS /\ Q1j7VI /\ UNCHANGED iv
  BY <1>UwwC5LVwQr, <1>HfQyCD4BSreUP8, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ASSUME NEW i \in DInst, NEW u \in Rq PROVE kJnEemH(i,u)'
<3>1. i \in Inst /\ IsD(i) /\ rDYgNVy(i,u) /\ kJnEemH(i,u)
  BY <2>1, <1>gKMjz, <1>pfyfm, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE i = j /\ u = r
  BY <3>2, <1>W0TBbuDVvccC, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. CASE i # j \/ u # r
<4>1. UNCHANGED <<ph[i][u],rg[i][u],rpg[i][u],rpe[i][u],rx[i][u],rhit[i][u]>>
  BY <3>1, <3>3, <1>moCLPnsjoLgIky, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. ph[i][u] # "none" => rg[i][u] \in Gens /\ (u # r \/ rg[i][u] # rg'[j][r])
  BY <3>1, <3>3, <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF rDYgNVy, Sizes, Location, Design
<4>3. ph[i][u] # "none" => drep'[u][rg[i][u]] = drep[u][rg[i][u]]
  BY <2>1, <4>2, <1>JH5GHkPGhmvIbdBka, SMTT(10), Sizes, Location, Design DEF Q1j7VI, Sizes, Location, Design
<4>4. Active(i,u) /\ ~rhit[i][u] => rpg[i][u] \in Pages /\ pst[rpg[i][u]] = "priv"
  BY <3>1, SMTT(10), Sizes, Location, Design DEF rDYgNVy, Sizes, Location, Design
<4>5. Active(i,u) /\ ~rhit[i][u] => UNCHANGED <<pst[rpg[i][u]],pr[rpg[i][u]],pgn[rpg[i][u]],plt[rpg[i][u]],ptl[rpg[i][u]],pvis[rpg[i][u]],led[rpg[i][u]],sled[rpg[i][u]],sfly[rpg[i][u]]>>
  BY <4>1, <4>4, <1>B37skkIj1S, <1>Tkbhb1zYD90L, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>6. ph[i][u] \in {"run","ovl"} /\ rhit[i][u] => pst'[rpg[i][u]] = "shared" /\ Tag(u,rg[i][u]) \in sled'[rpg[i][u]]
  BY <3>1, <1>xK6oc7uine4Wbbfzq, <1>B37skkIj1S, SMTT(10), Sizes, Location, Design DEF rDYgNVy, kJnEemH, Active, Sizes, Location, Design
<4>7. (ph[i][u] = "rd" \/ (ph[i][u] = "wait" /\ Mode = "push")) => rx[i][u] \in Xids /\ rx[i][u] < nx /\ rx[i][u] # nx
  BY <3>1, SMTT(10), Sizes, Location, Design DEF kJnEemH, Sizes, Location, Design
<4>8. (ph[i][u] = "rd" \/ (ph[i][u] = "wait" /\ Mode = "push")) => UNCHANGED <<xdst[rx[i][u]],xr[rx[i][u]],xg[rx[i][u]]>>
  BY <3>1, <4>1, <4>7, <1>xCdYilU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>9. QED BY <2>1, <3>1, <4>1, <4>3, <4>5, <4>6, <4>7, <4>8, <1>v7DLb, SMTT(10), Sizes, Location, Design DEF kJnEemH, Active, SHJS, Xids, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF K9, kJnEemH, Sizes, Location, Design
\* T2M-END R2M1226_PdRDLegacy_PP_PdD2DRecvReq_K9


<1>jhjNQdJ0.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE S1'
<2> USE ONLY <1>jhjNQdJ0, Sizes, Location, Design
<2>1. S1 /\ K1 /\ K2 /\ SHJS /\ nNeM /\ CXAy
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_S1, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ASSUME NEW x \in Xids, x < nx', (TRUE)'
       PROVE /\ ph'[ExpInst(x)'][xr'[x]] # "none" /\ rg'[ExpInst(x)'][xr'[x]] >= xg'[x]
             /\ (rg'[ExpInst(x)'][xr'[x]] = xg'[x] /\ Active(ExpInst(x),xr[x])') => rx'[ExpInst(x)'][xr'[x]] = x
<3>1. CASE x < nx
<4>1. UNCHANGED <<xr[x],xg[x],xk[x],xp[x],xd[x],xsrc[x],xdst[x]>>
  BY <3>1, <1>xCdYilU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. xr[x] \in Rq /\ ExpInst(x) \in Inst /\ ph[ExpInst(x)][xr[x]] # "none" /\ rg[ExpInst(x)][xr[x]] >= xg[x]
  BY <2>1, <2>2, <3>1, <4>1, <1>NEegLqmCti8ylSLRCJ, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF S1, K1, K2, ExpInst, InitInst, ExpPage, InitPage, Sizes, Location, Design
<4>3. CASE ExpInst(x) = j /\ xr[x] = r
  BY <2>1, <4>1, <4>2, <4>3, <1>JH5GHkPGhmvIbdBka, Sizes, SMTT(10), Location, Design DEF ExpInst, Active, nNeM, CXAy, Gens, Sizes, Location, Design
<4>4. CASE ExpInst(x) # j \/ xr[x] # r
  BY <2>1, <2>2, <3>1, <4>1, <4>2, <4>4, <1>moCLPnsjoLgIky, SMTT(10), Sizes, Location, Design DEF S1, ExpInst, Active, InitPage, Sizes, Location, Design
<4>5. QED BY <4>3, <4>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE x >= nx
<4>1. x = nx /\ nx' = nx+1
  BY <2>1, <2>2, <3>2, <1>v7DLb, Sizes, SMTT(10), Location, Design DEF SHJS, Xids, Sizes, Location, Design
<4>2. QED BY <2>2, <4>1, <1>QZj3uy1ir, <1>pzaIRbvLLJzNst, Sizes, SMTT(10), Location, Design DEF ExpInst, InitInst, InitPage, Active, Gens, Sizes, Location, Design
<3>3. QED BY <2>1, <3>1, <3>2, Sizes, SMTT(10), Location, Design DEF SHJS, Xids, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF S1, Sizes, Location, Design
\* T2M-END R2M1230_PdRDLegacy_PP_PdD2DRecvReq_S1

\* T2M-SCOPE R2M1231_PdRDLegacy_PP_PdD2DRecvReq_S5

<1>sagx6NTY.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE S6'
<2> USE ONLY <1>sagx6NTY, Sizes, Location, Design
<2>1. S6 /\ K1 /\ K2 /\ SHJS /\ nNeM /\ CXAy
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_S6, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ASSUME NEW x \in Xids, x < nx', (InitPage(x) # 0)'
       PROVE /\ ph'[InitInst(x)'][xr'[x]] # "none" /\ rg'[InitInst(x)'][xr'[x]] >= xg'[x]
             /\ (rg'[InitInst(x)'][xr'[x]] = xg'[x] /\ Active(InitInst(x),xr[x])') => rx'[InitInst(x)'][xr'[x]] = x
<3>1. CASE x < nx
<4>1. UNCHANGED <<xr[x],xg[x],xk[x],xp[x],xd[x],xsrc[x],xdst[x]>>
  BY <3>1, <1>xCdYilU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. xr[x] \in Rq /\ InitInst(x) \in Inst /\ ph[InitInst(x)][xr[x]] # "none" /\ rg[InitInst(x)][xr[x]] >= xg[x]
  BY <2>1, <2>2, <3>1, <4>1, <1>NEegLqmCti8ylSLRCJ, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF S6, K1, K2, ExpInst, InitInst, ExpPage, InitPage, Sizes, Location, Design
<4>3. CASE InitInst(x) = j /\ xr[x] = r
  BY <2>1, <4>1, <4>2, <4>3, <1>JH5GHkPGhmvIbdBka, Sizes, SMTT(10), Location, Design DEF InitInst, Active, nNeM, CXAy, Gens, Sizes, Location, Design
<4>4. CASE InitInst(x) # j \/ xr[x] # r
  BY <2>1, <2>2, <3>1, <4>1, <4>2, <4>4, <1>moCLPnsjoLgIky, SMTT(10), Sizes, Location, Design DEF S6, InitInst, Active, InitPage, Sizes, Location, Design
<4>5. QED BY <4>3, <4>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE x >= nx
<4>1. x = nx /\ nx' = nx+1
  BY <2>1, <2>2, <3>2, <1>v7DLb, Sizes, SMTT(10), Location, Design DEF SHJS, Xids, Sizes, Location, Design
<4>2. QED BY <2>2, <4>1, <1>QZj3uy1ir, <1>pzaIRbvLLJzNst, Sizes, SMTT(10), Location, Design DEF ExpInst, InitInst, InitPage, Active, Gens, Sizes, Location, Design
<3>3. QED BY <2>1, <3>1, <3>2, Sizes, SMTT(10), Location, Design DEF SHJS, Xids, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF S6, Sizes, Location, Design
\* T2M-END R2M1232_PdRDLegacy_PP_PdD2DRecvReq_S6


<1>Wl7uRK1yHa.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K8'
  BY ONLY <1>Wl7uRK1yHa, Sizes, Location, Design, <1>Huh3FCXz, V21_Inv_K8 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>eCwKeDSx9O.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K9'
  BY ONLY <1>eCwKeDSx9O, Sizes, Location, Design, <1>rEF7vLk2, V21_Inv_K9 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>i3kKzD8FgUv.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K10'
  BY ONLY <1>i3kKzD8FgUv, Sizes, Location, Design, <1>pa2LynQnU, V21_Inv_K10 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>AVuB4TKc3wp.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K13'
  BY ONLY <1>AVuB4TKc3wp, Sizes, Location, Design, <1>zD1w9AfQe, V21_Inv_K13 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>kTHJhY52Xa.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE S1'
  BY ONLY <1>kTHJhY52Xa, Sizes, Location, Design, <1>jhjNQdJ0, V21_Inv_S1 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>gomMBB8DE5.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE S6'
  BY ONLY <1>gomMBB8DE5, Sizes, Location, Design, <1>sagx6NTY, V21_Inv_S6 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>i3kKzD8FgUv, <1>eCwKeDSx9O, <1>Wl7uRK1yHa, <1>AVuB4TKc3wp, <1>kTHJhY52Xa, <1>gomMBB8DE5, <1>VT7jSBCi7E3L5iRSiP9Nbc, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DRecvReq_03_02 SHA ab5f86d1d1a648057d46880a77b5ffd01a06e41cffa1811339ce08e85420deb5
USE DEF P_PagePoolsDisjoint, V21_Inv_K14, V21_Inv_K15, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_PrefcMatchesHolders, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V22_T_rpg, V22_T_rpgS, V22_T_sentry, V22_T_squar, V22_T_xdst, V22_T_xsrcS
HIDE DEF Part_DRecvReq_03_01, PositiveNatFact, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K3, V21_Inv_K7, V21_Inv_KStruct, V21_Inv_S1, V21_Inv_S6, V21_Inv_SendOwnLanded
THEOREM Part_DRecvReq_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE (SharedLedRef)' /\ (ReadOwnLanded)' /\ (NoFreeUnderRead)' /\ (K15)' /\ (SealOnlyLanded)' /\ (NoEvictUnderRDMA)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RD_PFrame == /\ \A i \in PInst, r \in Rq : ph'[i][r]=ph[i][r] /\ rg'[i][r]=rg[i][r]
                        /\ UNCHANGED <<kpin,krs>>

           RD_SFrame == UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>


           RD_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]

           RD_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}

           RD_HUpdate == rpgS'={h \in rpgS : RD_HLive(h) \/ (RD_HPin(h) /\ Mut # "unrefBeforeKDone")}

           RD_MUpdate == /\ smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]
                        /\ schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]

           RD_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0

           RD_Src(x) == IF RD_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0

           RD_XUpdate == /\ xsrcS'=[x \in Xids |-> IF RD_Posted(x) THEN (IF RD_Src(x) \in SPages /\ spst[RD_Src(x)]="shared" THEN {RD_Src(x)} ELSE {}) ELSE xsrcS[x]]
                        /\ xsrcP'=[x \in Xids |-> IF RD_Posted(x) THEN (IF RD_Src(x) \in SPages /\ spst[RD_Src(x)]="priv" THEN {RD_Src(x)} ELSE {}) ELSE xsrcP[x]]

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

           RD_RefDelta == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)
            +SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

           \* T2M-LOCAL-VISIBILITY

           RD_HolderTypes == /\ rpgS \subseteq (PInst \X Rq \X Gens \X SPages)
                             /\ sentry \subseteq Xids
                             /\ squar \subseteq (Xids \X SPages)

           RD_Q2 == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
                                   UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RD_Quarantine(x)}})

           RD_EQUpdate == sentry'=RD_E2 /\ squar'=RD_Q2

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

           RD_KeyOnSource == \A x \in Xids : xsrcS[x] \cup xsrcP[x] # {} => xr'[x]=xr[x] /\ xg'[x]=xg[x]

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

           jwtl0(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])


           SGcCC(m) == m.t = "hello" => m.fr \in Inst


           q_NsQ(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))


           vP96R(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))


           w5FT2(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])


           QA0WX(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])


           mO95d(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")


           xrQPm(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)


           dzHFn(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))


           lG5iqS(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))


           oAjKAqK(m) ==
             /\ jwtl0(m)
             /\ SGcCC(m)
             /\ q_NsQ(m)
             /\ vP96R(m)
             /\ w5FT2(m)
             /\ QA0WX(m)
             /\ mO95d(m)
             /\ xrQPm(m)
             /\ dzHFn(m)
             /\ lG5iqS(m)

           \* T2M-LOCAL-VISIBILITY

           NYtGQ_z(i,r) == LET p == rpg[i][r]
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


           ReadOwnPointD2(i,u) ==
             LET q == rpg[i][u] IN
                    /\ q \in Pages /\ NoWriteInto(q)
                    /\ \/ ~rhit[i][u] /\ pst[q] = "priv" /\ pr[q] = u /\ pgn[q] = rg[i][u] /\ ptl[q] = NTok(u,rg[i][u]) /\ pvis[q]
                       \/ rhit[i][u] /\ pst[q] = "shared" /\ ptl[q] = PS

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_NoStop, RD_ReadBack, RD_ReadPart, RD_KeyOnSource, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, jwtl0, SGcCC, q_NsQ, vP96R, w5FT2, QA0WX, mO95d, xrQPm, dzHFn, lG5iqS, oAjKAqK, NYtGQ_z, ReadOwnPointD2

<1>dbfJSAnRudgsXK.         B2 /\ SFollow => RD_SUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_SUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_Posted, RD_Src, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ivFfcVr6Rc1eHuIs8.         B2 /\ SFollow => RD_HUpdate /\ RD_MUpdate /\ RD_XUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_HUpdate, RD_MUpdate, RD_XUpdate, RD_HPin, RD_HLive, RD_Posted, RD_Src, Sizes, Location, Design


<1>EnXJwndWG1D4vkee.         PinInv => RD_PhType /\ RD_RgType /\ RD_NxType
<2> HIDE DEF CoreTypeOK, STypeOK
<2>part0. PinInv => RD_PhType
 BY ONLY V22_T_ph, SMTT(5) DEF RD_PhType
<2>part1. PinInv => RD_RgType
 BY ONLY V22_T_rg, SMTT(5) DEF RD_RgType
<2>part2. PinInv => RD_NxType
 BY ONLY V22_T_nx, SMTT(5) DEF RD_NxType
<2>qed. QED BY ONLY <2>part0, <2>part1, <2>part2, SMTT(5)

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

<1>YSvRDxZGd.        
 ASSUME PinInv, SFollow, RD_PFrame
 PROVE UNCHANGED rpgS
<2> USE ONLY <1>YSvRDxZGd, Sizes, Location, Design
<2>1. STypeOK /\ (B2 => SI1)
 BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <1>lQA2, SMTT(10) DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <2>2, <2>2, SMTT(10), V21_SFollowOff DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. \A h \in rpgS : h[1] \in PInst /\ h[2] \in Rq
 BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <2>3, <2>1, SMTT(10) DEF STypeOK, Sizes, Location, Design
 <3>2. \A h \in rpgS :
       (rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}) \/
       (\E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4])
 BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <2>3, <2>1, <2>3, <3>1, SMTT(10) DEF SI1, RD_PFrame, Active, SHPin, Sizes, Location, Design
 <3>3. rpgS' \subseteq rpgS
 BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <2>3, <2>3, <1>ivFfcVr6Rc1eHuIs8, ZenonT(10) DEF RD_HUpdate, Sizes, Location, Design
 <3>4. ASSUME NEW h \in rpgS PROVE h \in rpgS'
  <4>1. (rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}) \/
       (\E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4])
  BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <2>3, <3>2, SMTT(10) DEF Sizes, Location, Design
  <4>2. QED BY <2>3, <4>1, <1>ivFfcVr6Rc1eHuIs8, Design, SMTT(10), Sizes, Location DEF RD_HUpdate, RD_HPin, RD_HLive, Sizes, Location, Design
 <3>5. QED BY <3>3, <3>4, ZenonT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zMokmOdGw.        
 ASSUME PinInv, SFollow, RD_PFrame
 PROVE UNCHANGED <<smap,schoice>>
<2> USE ONLY <1>zMokmOdGw, Sizes, Location, Design
<2>1. STypeOK BY <1>lQA2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY ONLY <1>zMokmOdGw, Sizes, Location, Design, <2>2, <2>2, SMTT(10), V21_SFollowOff DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. smap' = [i \in PInst |-> [r \in Rq |-> smap[i][r]]] /\
        schoice' = [i \in PInst |-> [r \in Rq |-> schoice[i][r]]]
 BY ONLY <1>zMokmOdGw, Sizes, Location, Design, <2>3, <2>3, <1>ivFfcVr6Rc1eHuIs8, SMTT(10) DEF RD_MUpdate, RD_PFrame, Sizes, Location, Design
 <3>types. /\ smap \in [PInst -> [Rq -> {0} \cup SPages]]
             /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
  BY ONLY <1>zMokmOdGw, V22_T_smap, V22_T_schoice, SMTT(5)
  DEF V22_T_smap, V22_T_schoice
 <3>maps. /\ [i \in PInst |-> [r \in Rq |-> smap[i][r]]] = smap
            /\ [i \in PInst |-> [r \in Rq |-> schoice[i][r]]] = schoice
  BY ONLY <3>types, V22_MatrixEta, SMTT(5) DEF V22_MatrixEta
 <3>2. QED BY ONLY <3>1, <3>maps, SMTT(5)
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cIrFCXuTtPxBU.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE UNCHANGED <<xsrcS,xsrcP>>
<2> USE ONLY <1>cIrFCXuTtPxBU, Sizes, Location, Design
<2>1. STypeOK /\ xsrc \in [Xids -> 0..NP]
 <3>project. CoreTypeOK => xsrc \in [Xids -> 0..NP]
  BY ONLY ZenonT(5) DEF CoreTypeOK
 <3>base. CoreTypeOK /\ STypeOK
  BY ONLY <1>cIrFCXuTtPxBU, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design, SMTT(5)
 <3>qed. QED BY ONLY <3>project, <3>base, SMTT(5)
<2>2. CASE ~B2
 BY ONLY <1>cIrFCXuTtPxBU, Sizes, Location, Design, <2>2, <2>2, SMTT(10), V21_SFollowOff DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. \A x \in Xids : ~(xsrc'[x] \in Pages /\ xsrc[x]=0)
 BY ONLY <1>cIrFCXuTtPxBU, Sizes, Location, Design, <2>3, Sizes, SMTT(10) DEF Pages, Sizes, Location, Design
 <3>2. xsrcS'=[x \in Xids |-> xsrcS[x]] /\ xsrcP'=[x \in Xids |-> xsrcP[x]]
 BY ONLY <1>cIrFCXuTtPxBU, Sizes, Location, Design, <2>3, <2>3, <3>1, <1>ivFfcVr6Rc1eHuIs8, SMTT(10) DEF RD_XUpdate, RD_Posted, Sizes, Location, Design
 <3>3. QED BY <2>1, <3>2, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0682_PdRDSharedBase


<1>sWUiUol.        
 ASSUME NEW A, NEW B, NEW C, NEW D,
        IsFiniteSet(A), IsFiniteSet(B), IsFiniteSet(C), IsFiniteSet(D)
 PROVE IsFiniteSet(A \X B \X C \X D)
<2> USE ONLY <1>sWUiUol, Sizes, Location, Design
<2>1. IsFiniteSet(A \X B)
 BY FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet((A \X B) \X C)
 BY <2>1, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet(((A \X B) \X C) \X D)
 BY <2>2, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. A \X B \X C \X D \subseteq {<<t[1][1][1],t[1][1][2],t[1][2],t[2]>> : t \in (((A \X B) \X C) \X D)}
 <3>1. ASSUME NEW u \in A \X B \X C \X D
        PROVE u \in {<<t[1][1][1],t[1][1][2],t[1][2],t[2]>> : t \in (((A \X B) \X C) \X D)}
  <4>1. u = <<u[1],u[2],u[3],u[4]>> /\ u[1] \in A /\ u[2] \in B /\ u[3] \in C /\ u[4] \in D
  BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. <<<<<<u[1],u[2]>>,u[3]>>,u[4]>> \in (((A \X B) \X C) \X D)
  BY <4>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <3>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. IsFiniteSet({<<t[1][1][1],t[1][1][2],t[1][2],t[2]>> : t \in (((A \X B) \X C) \X D)})
 BY <2>3, FS_Image, IsaT(10), SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yXEVXb54O9q5W.        
 IsFiniteSet(PInst) /\ IsFiniteSet(Rq) /\ IsFiniteSet(Gens) /\ IsFiniteSet(SPages) /\ IsFiniteSet(Xids)
 BY Sizes, FS_Interval, SMTT(10), Location, Design DEF PInst, Rq, Gens, SPages, Xids, Sizes, Location, Design
\* T2M-END R2M0683_PdRDFinite


<1>SExsPOAumjk344.         B2 /\ SFollow => RD_RefDelta
 BY ZenonT(10), Sizes, Location, Design DEF RD_RefDelta, SFollow, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cPqz9TtB.        
 ASSUME NEW H, NEW E, NEW Q, NEW X, IsFiniteSet(H), IsFiniteSet(E), IsFiniteSet(Q), NEW p
 PROVE SRefR(H,p) \in Nat /\ SRefE(E,X,p) \in Nat /\ SRefQ(Q,p) \in Nat
<2> USE ONLY <1>cPqz9TtB, Sizes, Location, Design
<2>1. IsFiniteSet({h \in H : h[4]=p}) BY FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet({x \in E : p \in X[x]}) BY FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet({h \in Q : h[2]=p}) BY FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design


<1>x1ffOQE1KPtJ.        
 ASSUME PrefcMatchesHolders, RD_RefDelta,
        IsFiniteSet(rpgS), IsFiniteSet(sentry), IsFiniteSet(squar),
        IsFiniteSet(rpgS'), IsFiniteSet(sentry'), IsFiniteSet(squar')
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>x1ffOQE1KPtJ, Sizes, Location, Design
<2>1. ASSUME NEW p \in SPages PROVE
        SRefR(rpgS,p) \in Nat /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefQ(squar,p) \in Nat /\
        SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat
 BY <1>cPqz9TtB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, RD_RefDelta, Sizes, Location, Design
\* T2M-END R2M0684_PdRDRefCount


<1>y69bbnw8OExl0j.         B2 /\ SFollow => RD_EQUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_EQUpdate, RD_E2, RD_Q2, RD_Close, RD_Quarantine, RD_Posted, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aGGTPadibFyx5jUm6wA.        
 ASSUME NEW H, NEW E, NEW Q, H \subseteq (PInst \X Rq \X Gens \X SPages), E \subseteq Xids, Q \subseteq (Xids \X SPages)
 PROVE IsFiniteSet(H) /\ IsFiniteSet(E) /\ IsFiniteSet(Q)
<2> USE ONLY <1>aGGTPadibFyx5jUm6wA, Sizes, Location, Design
<2>1. IsFiniteSet(PInst \X Rq \X Gens \X SPages)
 BY <1>yXEVXb54O9q5W, <1>sWUiUol, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet(Xids \X SPages)
 BY <1>yXEVXb54O9q5W, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yXEVXb54O9q5W, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>euftvuGfUGzVhYLlW.        
 ASSUME PinInv, SFollow
 PROVE RD_HolderTypes'
<2> USE ONLY <1>euftvuGfUGzVhYLlW, Sizes, Location, Design
<2>1. RD_HolderTypes /\ xsrcS \in [Xids -> SUBSET SPages]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>euftvuGfUGzVhYLlW, V22_T_rpgS, V22_T_sentry, V22_T_squar, V22_T_xsrcS, SMTT(5) DEF RD_HolderTypes

<2>2. CASE ~B2
 BY <2>1, <2>2, ZenonT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, RD_HolderTypes, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RD_HUpdate /\ RD_EQUpdate
 BY <2>3, <1>ivFfcVr6Rc1eHuIs8, <1>y69bbnw8OExl0j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. rpgS' \subseteq rpgS /\ sentry' \subseteq sentry \cup Xids
 BY <3>1, SMTT(10), Sizes, Location, Design DEF RD_HUpdate, RD_EQUpdate, RD_E2, Sizes, Location, Design
 <3>3. squar' \subseteq (Xids \X SPages)
 BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF RD_HolderTypes, RD_EQUpdate, RD_Q2, Sizes, Location, Design
 <3>4. QED BY <2>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF RD_HolderTypes, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RWvTkqQsVDwnRge2Q5E0XkOXe.        
 ASSUME PinInv, SFollow
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>RWvTkqQsVDwnRge2Q5E0XkOXe, Sizes, Location, Design
<2>1. PrefcMatchesHolders /\ RD_HolderTypes /\ RD_HolderTypes'
 BY <1>lQA2, <1>euftvuGfUGzVhYLlW, SMTT(10), V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF STypeOK, RD_HolderTypes, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. IsFiniteSet(rpgS) /\ IsFiniteSet(sentry) /\ IsFiniteSet(squar) /\ IsFiniteSet(rpgS') /\ IsFiniteSet(sentry') /\ IsFiniteSet(squar')
 BY <2>1, <1>aGGTPadibFyx5jUm6wA, SMTT(10), Sizes, Location, Design DEF RD_HolderTypes, Sizes, Location, Design
<2>3. CASE ~B2
 BY <2>3, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>4. CASE B2
 <3>1. RD_RefDelta BY <2>4, <1>SExsPOAumjk344, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>2, <3>1, <1>x1ffOQE1KPtJ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0685_PdRDHolderTypes


<1>dCj1oPpXLfODIy.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY ONLY <1>dCj1oPpXLfODIy, Sizes, Location, Design, <1>uaJsMuSZCFU, <1>fIPaydrEb, <1>YSvRDxZGd, <1>zMokmOdGw, <1>cIrFCXuTtPxBU, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FPQA7M3w.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,gen>>
 PROVE P_SI3'
<2> USE ONLY <1>FPQA7M3w, Sizes, Location, Design
<2>1. P_SI3
 BY SMTT(10), V21_Inv_P_SI3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF P_SI3, SI3, RD_PFrame, RD_SFrame, SData, SHeld, Sizes, Location, Design

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

<1>IhhNBTxyzZz.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc, B2
 PROVE sentry' \subseteq sentry /\
       \A h \in squar' : h \in squar \/ (h[1] \in sentry /\ h[1] \in Xids /\ h[2] \in xsrcS[h[1]])
<2> USE ONLY <1>IhhNBTxyzZz, Sizes, Location, Design
<2>1. RD_EQUpdate /\ sentry \subseteq Xids /\ squar \subseteq (Xids \X SPages)
 BY <1>y69bbnw8OExl0j, <1>lQA2, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
<2>2. \A x \in Xids : ~RD_Posted(x)
 BY Sizes, SMTT(10), Location, Design DEF RD_Posted, Pages, Sizes, Location, Design
<2>3. sentry' \subseteq sentry
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_E2, Sizes, Location, Design
<2>4. \A h \in squar' : h \in squar \/ (h[1] \in sentry /\ h[1] \in Xids /\ h[2] \in xsrcS[h[1]])
 BY <2>1, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_Q2, RD_Quarantine, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WVSoMLTftzUA.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,hw>>, B2
 PROVE \A x \in Xids : SAccess(x)' => SAccess(x)
<2> USE ONLY <1>WVSoMLTftzUA, Sizes, Location, Design
<2>1. sentry' \subseteq sentry /\
       \A h \in squar' : h \in squar \/ (h[1] \in sentry /\ h[1] \in Xids /\ h[2] \in xsrcS[h[1]])
 BY <1>IhhNBTxyzZz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF SAccess, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JVh1GjbLzR.        
 ASSUME B2, SI3', PrefcMatchesHolders', RD_HolderTypes'
 PROVE SharedLedRef'
<2> USE ONLY <1>JVh1GjbLzR, Sizes, Location, Design
<2>1. IsFiniteSet(rpgS') /\ IsFiniteSet(sentry') /\ IsFiniteSet(squar')
 BY <1>aGGTPadibFyx5jUm6wA, SMTT(10), Sizes, Location, Design DEF RD_HolderTypes, Sizes, Location, Design
<2>2. ASSUME NEW p \in SPages PROVE
       /\ ((spst'[p]="shared" /\ (SRefE(sentry',xsrcS',p)>0 \/ SPin(p)')) \/ SRefQ(squar',p)>0) => sprefc'[p]>=1
       /\ sprefc'[p]>=SRefQ(squar',p)
 <3>1. SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat
 BY <2>1, <1>cPqz9TtB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. (spst'[p]="shared" /\ SPin(p)') => \E h \in rpgS' : h[4]=p
 BY SMTT(10), Sizes, Location, Design DEF SI3, SPin, SH, Sizes, Location, Design
 <3>3. IsFiniteSet({h \in rpgS' : h[4]=p})
 BY <2>1, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. (spst'[p]="shared" /\ SPin(p)') => SRefR(rpgS',p)>=1
  <4>positiveCard. ASSUME NEW S, IsFiniteSet(S), S # {}
                   PROVE Cardinality(S)>=1
   <5>natural. Cardinality(S) \in Nat BY ONLY <4>positiveCard, FS_CardinalityType, SMTT(5)
   <5>nonzero. Cardinality(S) # 0 BY ONLY <4>positiveCard, FS_EmptySet, SMTT(5)
   <5>qed. QED BY ONLY <5>natural, <5>nonzero, SMTT(5)
  <4>nonempty. (spst'[p]="shared" /\ SPin(p)') => {h \in rpgS' : h[4]=p} # {}
   BY ONLY <3>2, SMTT(5)
  <4>qed. QED BY ONLY <3>3, <4>nonempty, <4>positiveCard, SMTT(5) DEF SRefR
 <3>5. QED
  <4>sumBounds. ASSUME NEW a \in Nat, NEW b \in Nat, NEW c \in Nat, NEW total, total=a+b+c
               PROVE total>=c /\ ((a>=1 \/ b>0 \/ c>0) => total>=1)
   <5>integer. a \in Int /\ b \in Int /\ c \in Int BY ONLY <4>sumBounds, SMTT(5)
   <5>nonnegative. a>=0 /\ b>=0 /\ c>=0 BY ONLY <4>sumBounds, SMTT(5)
   <5>qed. QED BY ONLY <4>sumBounds, <5>integer, <5>nonnegative, SMTT(5)
  <4>count. sprefc'[p]=SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
   BY ONLY <1>JVh1GjbLzR, <2>2, SMTT(5) DEF PrefcMatchesHolders
  <4>bounds. sprefc'[p]>=SRefQ(squar',p) /\
    ((SRefR(rpgS',p)>=1 \/ SRefE(sentry',xsrcS',p)>0 \/ SRefQ(squar',p)>0) => sprefc'[p]>=1)
   BY ONLY <3>1, <4>count, <4>sumBounds, SMTT(5)
  <4>qed. QED BY ONLY <3>4, <4>bounds, SMTT(5)
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WNuC2jkOhy0.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,gen>>
 PROVE SharedLedRef'
<2> USE ONLY <1>WNuC2jkOhy0, Sizes, Location, Design
<2>1. P_SI3' /\ PrefcMatchesHolders' /\ RD_HolderTypes'
 BY <1>FPQA7M3w, <1>RWvTkqQsVDwnRge2Q5E0XkOXe, <1>euftvuGfUGzVhYLlW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE B2
 BY <2>1, <2>2, <1>JVh1GjbLzR, SMTT(10), Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. CASE ~B2 BY <2>3, SMTT(10), Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


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


<1>TTpKhOymx73KMovRt1O.        
 ASSUME PinInv, SFollow, RD_PFrame, xdst' \in [Xids -> 0..NP]
 PROVE SharedImmutable'
<2> USE ONLY <1>TTpKhOymx73KMovRt1O, Sizes, Location, Design
<2>1. SharedImmutable /\ UNCHANGED spst /\ RD_SFrame
 BY <1>fIPaydrEb, <1>uaJsMuSZCFU, SMTT(10), V21_Inv_SharedImmutable, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A p \in SPages : NoWriteInto(p)'
 BY Sizes, SMTT(10), Location, Design DEF NoWriteInto, Writing, SPages, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF SharedImmutable, RD_SFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ca3ak7RUGjY.         BaseSealOnlyLanded' /\ SharedImmutable' => SealOnlyLanded'
 BY SMTT(10), Sizes, Location, Design DEF SealOnlyLanded, Sizes, Location, Design
\* T2M-LOCAL-VISIBILITY

<1>PIVyLKpCaUC.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,hw>>, RD_KeyOnSource
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>PIVyLKpCaUC, Sizes, Location, Design
<2>1. NoEvictUnderRDMA BY SMTT(10), V21_Inv_NoEvictUnderRDMA, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. B2 => \A x \in Xids : SAccess(x)' => SAccess(x)
 BY <1>WVSoMLTftzUA, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, RD_SFrame, RD_KeyOnSource, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>O1T0jJ637c6.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), B2
 PROVE RD_KeyOnSource
<2> USE ONLY <1>O1T0jJ637c6, Sizes, Location, Design
<2>1. SI4 /\ STypeOK /\ xr \in [Xids -> 0..NR] /\ xg \in [Xids -> 0..MG]
 BY <1>lQA2, SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF CoreTypeOK, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. \A x \in Xids : xsrcS[x] \cup xsrcP[x] # {} => x # nx
 BY <2>1, SMTT(10), Sizes, Location, Design DEF SI4, STypeOK, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF DRecvReq, xV, RD_KeyOnSource, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iClYwlQaVPhEdnbosn.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>iClYwlQaVPhEdnbosn, Sizes, Location, Design, SMTT(10) DEF DRecvReq, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dKYsfmWiThR9rkh.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>dKYsfmWiThR9rkh, Sizes, Location, Design
<2>1. RD_PhType /\ RD_RgType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>iClYwlQaVPhEdnbosn, Sizes, SMTT(10), Location, Design DEF DRecvReq, instV, kV, rtV, xV, RD_PFrame, PInst, DInst, Inst, NL, IsD, RD_PhType, RD_RgType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pqilHI05hK5xehelc.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE xdst' \in [Xids -> 0..NP]
<2> USE ONLY <1>pqilHI05hK5xehelc, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP] /\ rpg \in [Inst -> [Rq -> 0..NP]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>pqilHI05hK5xehelc, V22_T_rpg, V22_T_xdst, SMTT(5)

<2>2. QED BY <2>1, Sizes, SMTT(10), Location, Design DEF DRecvReq, instV, kV, rtV, xV, Pages, Sizes, Location, Design
\* T2M-END R2M0940_PdRDEffects_DRecvReq


<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jEmp1841Mb.         K12 <=> (\A m \in net : oAjKAqK(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, oAjKAqK, jwtl0, SGcCC, q_NsQ, vP96R, w5FT2, QA0WX, mO95d, xrQPm, dzHFn, lG5iqS, Sizes, Location, Design
\* T2M-END R2M0692_PdRDPort_PdMessagePred


<1>VLROWBcOqe16ENnb.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qATejwlthlvQ0RBs.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<rtV, instV, crep, dsucc>>
  BY ONLY <1>qATejwlthlvQ0RBs, Sizes, Location, Design, Design, Zenon DEF DRecvReq, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TBPMq.         K8 <=> \A i \in Inst, r \in Rq : NYtGQ_z(i,r)
  BY ZenonT(10), Sizes, Location, Design DEF K8, NYtGQ_z, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H0jGXTuTrAsK1g.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r
  PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
<2> USE ONLY <1>H0jGXTuTrAsK1g, Sizes, Location, Design
<2>1. K1 /\ K12
  BY SMTT(10), V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. oAjKAqK(m)
  BY <2>1, <1>jEmp1841Mb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. m.g \in Gens /\ m.g <= gen[r] /\ (j = hp[r][m.g] \/ j = hd[r][m.g])
  BY <2>2, SMTT(10), Sizes, Location, Design DEF oAjKAqK, jwtl0, q_NsQ, Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, SMTT(10), Location, Design DEF K1, IsD, PInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KVa2EpgPLBbWuB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r, NewGen(j,r,m.g)
  PROVE drep[r][m.g] = 0
<2> USE ONLY <1>KVa2EpgPLBbWuB, Sizes, Location, Design
<2>1. K8 /\ K13 /\ OneReply /\ ZCaSEo /\ oGG7 /\ Mut = "none"
  BY <1>TLVER4XMUn, Design, SMTT(10), V21_Inv_K13, V21_Inv_K8, V21_Inv_OneReply, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location DEF Safety, TEJtP, Sizes, Location, Design
<2>2. m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
  BY <1>H0jGXTuTrAsK1g, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. NYtGQ_z(j,r) /\ drep[r][m.g] \in {0,1}
 <3>1. NYtGQ_z(j,r)
  BY ONLY <1>KVa2EpgPLBbWuB, <2>1, <1>TBPMq, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. drep[r][m.g] \in 0..2
  BY ONLY <1>KVa2EpgPLBbWuB, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF ZCaSEo, Sizes, Location, Design
 <3>3. drep[r][m.g] <= 1
  BY ONLY <1>KVa2EpgPLBbWuB, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
 <3>4. QED BY ONLY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. drep[r][m.g] = 1 => rg[j][r] >= m.g
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K13, oGG7, Gens, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF NYtGQ_z, NewGen, oGG7, Gens, Sizes, Location, Design
\* T2M-END R2M0942_PdRDPort_PdDRecvHistory

\* T2M-SCOPE R2M0943_PdRDPort_PdD2RecvFacts

<1>ZNHDxv.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r
  PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
        /\ m.pe = hp[r][m.g] /\ m.pe \in PInst /\ m.pe \in Inst
<2> USE ONLY <1>ZNHDxv, Sizes, Location, Design
<2>1. K1 /\ K12
  BY SMTT(10), V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
  BY <1>H0jGXTuTrAsK1g, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hp[r][m.g] \in PInst /\ hd[r][m.g] \in DInst
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. oAjKAqK(m)
  BY <2>1, <1>jEmp1841Mb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. hp[r][m.g] # j /\ hp[r][m.g] \in Inst
  BY <2>3, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF oAjKAqK, q_NsQ, Sizes, Location, Design
\* T2M-END R2M0943_PdRDPort_PdD2RecvFacts

\* T2M-SCOPE R2M0944_PdRDPort_PdD2RecvProjection
\* T2M-BODY R2M0944_PdRDPort_PdD2RecvProjection
\* T2M-LOCAL-VISIBILITY

<1>TfbBw4J1UlUiS0.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,torn,nfail,kpin,kfly,krs,crep,dsucc,pqp,xsrc,xlt,hw,hok,iv>>
  BY ONLY <1>TfbBw4J1UlUiS0, Sizes, Location, Design, Design, <1>qATejwlthlvQ0RBs, SMTT(10) DEF DRecvReq, rtV, instV, kV, xV, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aCcmVax.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW x \in Xids, PinInv, DRecvReq(j,r), x # nx
  PROVE UNCHANGED <<xr[x],xg[x],xk[x],xp[x],xd[x],xsrc[x],xdst[x],xnt[x],xst[x],xlt[x],hw[x],hok[x],iv[x]>>
<2> USE ONLY <1>aCcmVax, Sizes, Location, Design
<2>1. ZhBZ /\ HiUz /\ qcWy /\ I3KH /\ Vikm /\ bpmgv4 /\ loK6p /\ H3aTc
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY Design, <2>1, <1>TfbBw4J1UlUiS0, SMTT(10), Sizes, Location DEF DRecvReq, xV, ZhBZ, HiUz, qcWy, I3KH, Vikm, bpmgv4, loK6p, H3aTc, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uLQaF6cD31.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, pst[p] # "free", PinInv, DRecvReq(j,r)
  PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p]>>
<2> USE ONLY <1>uLQaF6cD31, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ vwKWM /\ eWP7z1 /\ ZpUxx
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, KPages, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nMxh4NOX.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, IsP(Loc(p)), PinInv, DRecvReq(j,r)
  PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p],sfly[p],sled[p]>>
<2> USE ONLY <1>nMxh4NOX, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ vwKWM /\ eWP7z1 /\ ZpUxx /\ sBjpCf /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, KPages, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KfBi80V4MHFgLR.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r)
  PROVE (pst'[p] = "shared") <=> (pst[p] = "shared")
<2> USE ONLY <1>KfBi80V4MHFgLR, Sizes, Location, Design
<2>1. X6zX5
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, X6zX5, KPages, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yVqu69BTzD.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE \A p \in Pages : UNCHANGED NoWriteInto(p)
<2> USE ONLY <1>yVqu69BTzD, Sizes, Location, Design
<2>1. K2 /\ XX2v /\ UNCHANGED hw
  BY <1>TfbBw4J1UlUiS0, <1>TLVER4XMUn, SMTT(10), V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A x \in Xids : InFl(x) => x < nx /\ x # nx
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, InFl, Xids, XX2v, Sizes, Location, Design
<2>3. \A x \in Xids : InFl(x) => UNCHANGED xdst[x]
  BY <2>2, <1>aCcmVax, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF NoWriteInto, Writing, InFl, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Z3yjjRjJ9aqZ9d.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW i \in Inst, NEW u \in Rq,
         PinInv, DRecvReq(j,r), i # j \/ u # r
  PROVE UNCHANGED <<ph[i][u],rg[i][u],rpg[i][u],rpe[i][u],rx[i][u],rhit[i][u]>>
<2> USE ONLY <1>Z3yjjRjJ9aqZ9d, Sizes, Location, Design
<2>1. vn9M /\ oGG7 /\ bNpAu /\ fdIJv /\ sld6 /\ BDN6_c
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oXOtvpFZaCj4WHDXT.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE /\ rg'[j][r] \in Gens /\ rg'[j][r] <= gen[r] /\ rg'[j][r] > rg[j][r]
        /\ hd[r][rg'[j][r]] = j /\ rpe'[j][r] = hp[r][rg'[j][r]]
        /\ ph'[j][r] \in {"run","wait","end"}
        /\ drep[r][rg'[j][r]] = 0
        /\ drep' = IF ph'[j][r] = "end" THEN [drep EXCEPT ![r][rg'[j][r]] = 1] ELSE drep
<2> USE ONLY <1>oXOtvpFZaCj4WHDXT, Sizes, Location, Design
<2>1. vn9M /\ oGG7 /\ fdIJv /\ ZCaSEo /\ K8 /\ Mut = "none"
  BY <1>TLVER4XMUn, Design, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r /\ NewGen(j,r,m.g)) =>
       m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g] /\ m.pe = hp[r][m.g] /\ m.g > rg[j][r] /\ drep[r][m.g] = 0
<3>1. ASSUME NEW m \in net, IsD(j), m.t = "req", m.to = j, m.r = r, NewGen(j,r,m.g)
       PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g] /\ m.pe = hp[r][m.g] /\ m.g > rg[j][r] /\ drep[r][m.g] = 0
<4>1. m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g] /\ m.pe = hp[r][m.g] /\ drep[r][m.g] = 0
  BY <3>1, <1>ZNHDxv, <1>KVa2EpgPLBbWuB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. QED BY <2>1, <3>1, <4>1, Sizes, SMTT(10), Location, Design DEF K8, NewGen, Gens, Sizes, Location, Design
<3>2. QED BY <3>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY Design, <2>1, <2>2, SMTT(10), Sizes, Location DEF DRecvReq, vn9M, oGG7, fdIJv, ZCaSEo, Bump, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xJf1H0DQi6JlMB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE /\ (ph'[j][r] = "run" => rhit'[j][r] /\ rpg'[j][r] \in Pages /\ Loc(rpg'[j][r]) = j /\ pst[rpg'[j][r]] = "shared" /\ rx'[j][r] = 0)
        /\ (ph'[j][r] = "wait" => ~rhit'[j][r] /\ rpg'[j][r] \in Pages /\ Loc(rpg'[j][r]) = j /\ pst[rpg'[j][r]] = "free"
                                   /\ pst'[rpg'[j][r]] = "priv" /\ pr'[rpg'[j][r]] = r /\ pgn'[rpg'[j][r]] = rg'[j][r])
        /\ (ph'[j][r] = "end" => ~rhit'[j][r] /\ rpg'[j][r] = 0 /\ rx'[j][r] = 0)
<2> USE ONLY <1>xJf1H0DQi6JlMB, Sizes, Location, Design
<2>1. vn9M /\ oGG7 /\ bNpAu /\ BDN6_c /\ sld6 /\ X6zX5 /\ gv2_ /\ PwqP6
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, vn9M, oGG7, bNpAu, BDN6_c, sld6, X6zX5, gv2_, PwqP6, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rmWLiwaYg.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K15'
<2> USE ONLY <1>rmWLiwaYg, Sizes, Location, Design
<2>1. K14 /\ K15 /\ NoFreeUnderRead /\ tqQeS /\ UNCHANGED <<kpin,krs>>
  BY <1>TfbBw4J1UlUiS0, <1>TLVER4XMUn, SMTT(10), V21_Inv_K14, V21_Inv_K15, V21_Inv_NoFreeUnderRead, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, TEJtP, Sizes, Location, Design
<2>2. ASSUME NEW i \in Inst, NEW s \in KSlots, kpin'[i][s], NEW e \in krs'[i][s], e[3] \in Pages
       PROVE KData(i,e)' /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]] = {}) /\ (IsP(i) => sled'[e[3]] = {})
<3>1. e[3] \in Pages /\ Loc(e[3]) = i /\ pst[e[3]] # "free" /\ KData(i,e)
       /\ ((IsD(i) /\ e[4] # 1) => led[e[3]] = {}) /\ (IsP(i) => sled[e[3]] = {})
  BY <2>2, P_PagePoolsDisjoint, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K14, K15, NoFreeUnderRead, KHeld, tqQeS, Sizes, Location, Design
<3>2. UNCHANGED <<ptl[e[3]],pvis[e[3]],plt[e[3]],led[e[3]],NoWriteInto(e[3])>>
  BY <2>2, <3>1, <1>uLQaF6cD31, <1>yVqu69BTzD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. (~IsD(i) => IsP(i)) /\ (IsP(i) => UNCHANGED <<sfly[e[3]],sled[e[3]]>>)
  BY <2>2, <3>1, <1>nMxh4NOX, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>4. QED BY <2>2, P_PagePoolsDisjoint, <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF KData, Sizes, Location, Design
<2>3. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>dKYsfmWiThR9rkh, <1>pqilHI05hK5xehelc, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>3, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <1>iClYwlQaVPhEdnbosn, <2>4, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>2, SMTT(10), V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF K15, TEJtP, tqQeS, KPages, Sizes, Location, Design
\* T2M-END R2M0982_PdRDPort_PdD2DRecvReq_K15

\* T2M-SCOPE R2M0983_PdRDPort_PdD2DRecvReq_NoFreeUnderRead

<1>UCrkZhbNhpAGY4SU3ILlB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE NoFreeUnderRead'
<2> USE ONLY <1>UCrkZhbNhpAGY4SU3ILlB, Sizes, Location, Design
<2>1. NoFreeUnderRead /\ tqQeS /\ UNCHANGED <<kpin,krs>>
  BY <1>TfbBw4J1UlUiS0, <1>TLVER4XMUn, SMTT(10), V21_Inv_NoFreeUnderRead, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, TEJtP, Sizes, Location, Design
<2>2. ASSUME NEW i \in Inst, NEW s \in KSlots, kpin'[i][s], NEW e \in krs'[i][s], e[3] \in Pages
       PROVE KHeld(e)'
<3>1. e[3] \in Pages /\ KHeld(e) /\ pst[e[3]] # "free"
  BY <2>2, P_PagePoolsDisjoint, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF NoFreeUnderRead, KHeld, tqQeS, Sizes, Location, Design
<3>2. QED BY <2>2, P_PagePoolsDisjoint, <3>1, <1>uLQaF6cD31, SMTT(10), Sizes, Location, Design DEF KHeld, Sizes, Location, Design
<2>3. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>dKYsfmWiThR9rkh, <1>pqilHI05hK5xehelc, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>3, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. RD_SFrame /\ UNCHANGED spst
 BY <2>5, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED BY <2>6, <1>iClYwlQaVPhEdnbosn, <2>4, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>2, SMTT(10), V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF NoFreeUnderRead, TEJtP, tqQeS, KPages, RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M0983_PdRDPort_PdD2DRecvReq_NoFreeUnderRead

\* T2M-SCOPE R2M0984_PdRDPort_PdD2DRecvReq_KReadIntegrity

<1>SIIIpL3S0fuOmDT527X.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>SIIIpL3S0fuOmDT527X, Sizes, Location, Design
<2>1. BaseReadOwnLanded /\ BaseSealOnlyLanded
  BY SMTT(10), V21_Inv_BaseSafety, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, Sizes, Location, Design DEF Safety, BaseSafety, ReadOwnLanded, SealOnlyLanded, Sizes, Location, Design
<2>2. ASSUME NEW i \in DInst, NEW u \in Rq, ph'[i][u] \in {"run","ovl"}
       PROVE ReadOwnPointD2(i,u)'
<3>1. i \in Inst
  BY <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE i=j /\ u=r
<4>1. rhit'[j][r] /\ rpg'[j][r] \in Pages /\ pst[rpg'[j][r]] = "shared"
  BY <2>2, <3>2, <1>xJf1H0DQi6JlMB, <1>oXOtvpFZaCj4WHDXT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. QED BY <2>1, <2>2, <3>2, <4>1, <1>uLQaF6cD31, <1>yVqu69BTzD, SMTT(10), Sizes, Location, Design DEF ReadOwnPointD2, BaseSealOnlyLanded, SealOnlyLanded, Sizes, Location, Design
<3>3. CASE i#j \/ u#r
<4>1. UNCHANGED <<ph[i][u],rg[i][u],rpg[i][u],rhit[i][u]>>
  BY <3>1, <3>3, <1>Z3yjjRjJ9aqZ9d, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. rpg[i][u] \in Pages /\ pst[rpg[i][u]] \in {"priv","shared"}
  BY <2>1, <2>2, <4>1, SMTT(10), Sizes, Location, Design DEF ReadOwnPointD2, BaseReadOwnLanded, ReadOwnLanded, Sizes, Location, Design
<4>3. QED BY <2>1, <2>2, <3>3, <4>1, <4>2, <1>uLQaF6cD31, <1>yVqu69BTzD, SMTT(10), Sizes, Location, Design DEF ReadOwnPointD2, BaseReadOwnLanded, ReadOwnLanded, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF ReadOwnPointD2, BaseReadOwnLanded, ReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M0998_PdRDPort_PdD2DRecvReq_ReadOwnLanded


<1>wwX3YHHxS0UOR1uiAGEl.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>wwX3YHHxS0UOR1uiAGEl, Sizes, Location, Design
<2>1. BaseSealOnlyLanded
  BY SMTT(10), V21_Inv_BaseSafety, V21_Inv_Safety, V21_Inv_SealOnlyLanded, Sizes, Location, Design DEF Safety, BaseSafety, SealOnlyLanded, Sizes, Location, Design
<2>2. \A p \in Pages : pst'[p] = "shared" => pst[p] = "shared" /\ UNCHANGED <<ptl[p],NoWriteInto(p)>>
  BY <1>KfBi80V4MHFgLR, <1>uLQaF6cD31, <1>yVqu69BTzD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF BaseSealOnlyLanded, SealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M0999_PdRDPort_PdD2DRecvReq_SealOnlyLanded

\* T2M-SCOPE R2M1000_PdRDPort_PdD2DRecvReq_SendOwnLanded

<1>CMy0K3LTidZe.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE K15'
 BY ONLY <1>CMy0K3LTidZe, Sizes, Location, Design, <1>rmWLiwaYg, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>BTH3JNvhtjkDcvn7kVpkLBWt7.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>BTH3JNvhtjkDcvn7kVpkLBWt7, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,hw>>
 BY <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, SMTT(10), Sizes, Location, Design DEF DRecvReq, xV, Sizes, Location, Design
<2>2. CASE B2
 BY <2>1, <2>2, <1>O1T0jJ637c6, <1>PIVyLKpCaUC, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE ~B2 BY <2>3, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>k59vrzLmtx4N6Doz2xhjQ1pZ.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE NoFreeUnderRead'
 BY ONLY <1>k59vrzLmtx4N6Doz2xhjQ1pZ, Sizes, Location, Design, <1>UCrkZhbNhpAGY4SU3ILlB, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>CWjfpvLp9Voi77COcLi0Ee.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE ReadOwnLanded'
<2> USE ONLY <1>CWjfpvLp9Voi77COcLi0Ee, Sizes, Location, Design
<2>1. RD_PhType /\ rpg \in [Inst -> [Rq -> 0..NP]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>CWjfpvLp9Voi77COcLi0Ee, V22_T_ph, V22_T_rpg, SMTT(5) DEF RD_PhType

<2>2. RD_NoStop /\ (B2 => RD_ReadBack)
 BY <2>1, Sizes, SMTT(10), Location, Design DEF DRecvReq, instV, kV, rtV, xV, RD_NoStop, RD_ReadBack, RD_PhType, DInst, Inst, NL, Sizes, Location, Design
<2>3. QED BY <2>2, <1>SIIIpL3S0fuOmDT527X, <1>FQ5lBNYlCkhQTVYF, <1>RCKQzj633zU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>yUQOLEPJ6PZG5TBa9XKKyUX.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE SealOnlyLanded'
<2> USE ONLY <1>yUQOLEPJ6PZG5TBa9XKKyUX, Sizes, Location, Design
<2>1. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>dKYsfmWiThR9rkh, <1>pqilHI05hK5xehelc, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>wwX3YHHxS0UOR1uiAGEl, <1>TTpKhOymx73KMovRt1O, <1>ca3ak7RUGjY, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>VmwPtP0uj9GMPeq2iNMzL.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE SharedLedRef'
<2> USE ONLY <1>VmwPtP0uj9GMPeq2iNMzL, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>WNuC2jkOhy0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>VmwPtP0uj9GMPeq2iNMzL, <1>CWjfpvLp9Voi77COcLi0Ee, <1>k59vrzLmtx4N6Doz2xhjQ1pZ, <1>CMy0K3LTidZe, <1>yUQOLEPJ6PZG5TBa9XKKyUX, <1>BTH3JNvhtjkDcvn7kVpkLBWt7, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF P_PagePoolsDisjoint, Part_DRecvReq_03_02, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K2, V21_Inv_K8, V21_Inv_K9, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_OneReply, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_ReadOwnLanded, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_Inv_TypeOK, V21_SFollowOff, V22_T_nx, V22_T_ph, V22_T_rg, V22_T_rpg, V22_T_rpgS, V22_T_sentry, V22_T_squar, V22_T_xdst, V22_T_xsrcS
====
