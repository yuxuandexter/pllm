---- MODULE PdActionSlice_DRecvReq_01 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_ba9b12f8121bcf2d, PdFinalInvProjections, PdFinalEffects, PdSharedRefCounts, PdFunctionFrames, PdShapeBase

\* Complete original body PdFinalPart_DRecvReq_01_01 SHA 39a214767cd1887f03b23d069d5114f919b9a264361f40780404569cbc467c55
HIDE DEF AuxType_ba9b12f8121bcf2d, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K11, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_FunctionEta, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_MatrixEta, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SharedRefZero, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xst
THEOREM Part_DRecvReq_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE (QuietConservation)'
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

           RD_HoldersShared == /\ \A h \in rpgS : spst[h[4]]="shared"
                               /\ \A x \in sentry : \A p \in xsrcS[x] : spst[p]="shared"
                               /\ \A h \in squar : spst[h[2]]="shared"

           \* T2M-LOCAL-VISIBILITY

           RD_QuietPart == IF ~B2 THEN TRUE ELSE
            ((Quiet /\ sentry={} /\ \A p \in SPages : ~swrite[p] /\ (spst[p] \in {"priv","drain"} => sready[p]) /\ ~SPin(p)) =>
              \A p \in SPages : spst[p] \in {"free","quar"} \/ (spst[p]="shared" /\ sprefc[p]=SRefQ(squar,p)))

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

           Z4FEHDiV(p) == {r \in Rq : ph[Loc(p)][r] \in {"run","ovl"} /\ rhit[Loc(p)][r] /\ rpg[Loc(p)][r] = p}

           \* T2M-LOCAL-VISIBILITY

           aOcOdkv(p) ==
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


           n_qmBOy(j,r) == LET q == rpg[j][r]
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

           QEH7_FW0L_tkj5(p) ==
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


           RecvHitD2(j,r,p) == ph'[j][r] = "run" /\ rpg'[j][r] = p


           RecvAllocD2(j,r,p) == ph'[j][r] = "wait" /\ rpg'[j][r] = p


           RecvPageD2(j,r,p) ==
             /\ pst'[p] = IF RecvAllocD2(j,r,p) THEN "priv" ELSE pst[p]
             /\ pr'[p] = IF RecvAllocD2(j,r,p) THEN r ELSE pr[p]
             /\ pgn'[p] = IF RecvAllocD2(j,r,p) THEN rg'[j][r] ELSE pgn[p]
             /\ plt'[p] = IF RecvAllocD2(j,r,p) THEN 0 ELSE plt[p]
             /\ ptl'[p] = IF RecvAllocD2(j,r,p) THEN 0 ELSE ptl[p]
             /\ led'[p] = IF RecvAllocD2(j,r,p) /\ Mode = "push" THEN {nx} ELSE led[p]
             /\ prefc'[p] = IF RecvHitD2(j,r,p) THEN prefc[p]+1 ELSE prefc[p]
             /\ sled'[p] = IF RecvHitD2(j,r,p) THEN sled[p] \cup {Tag(r,rg'[j][r])} ELSE sled[p]
             /\ sfly'[p] = IF RecvHitD2(j,r,p) THEN sfly[p] \cup {Tag(r,rg'[j][r])} ELSE sfly[p]
             /\ pqp'[p] = pqp[p]
             /\ (RecvAllocD2(j,r,p) => pst[p] = "free" /\ Loc(p) = j)
             /\ (RecvHitD2(j,r,p) => pst[p] = "shared" /\ Loc(p) = j)

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_HoldersShared, RD_QuietPart, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, jwtl0, SGcCC, q_NsQ, vP96R, w5FT2, QA0WX, mO95d, xrQPm, dzHFn, lG5iqS, oAjKAqK, Z4FEHDiV, aOcOdkv, NYtGQ_z, n_qmBOy, QEH7_FW0L_tkj5, RecvHitD2, RecvAllocD2, RecvPageD2

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

<1>VDsAIqq0.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,gen>>
 PROVE P_SI1'
<2> USE ONLY <1>VDsAIqq0, Sizes, Location, Design
<2>1. P_SI1
 BY SMTT(10), V21_Inv_P_SI1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. STypeOK BY <1>lQA2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF P_SI1, SI1, RD_PFrame, RD_SFrame, STypeOK, Active, SHPin, SSendReady, Sizes, Location, Design

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

<1>snloOrk4YfoRJL4h.        
 ASSUME PinInv, B2
 PROVE RD_HoldersShared
<2> USE ONLY <1>snloOrk4YfoRJL4h, Sizes, Location, Design
<2>1. HitIdentity /\ SI4 /\ SI5 /\ STypeOK
 BY <1>lQA2, SMTT(10), V21_Inv_HitIdentity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF HitIdentity, SI4, SI5, STypeOK, RD_HoldersShared, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qWMyUX9lZx54y95qAG.        
 ASSUME PinInv, B2, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE RD_HoldersShared'
<2> USE ONLY <1>qWMyUX9lZx54y95qAG, Sizes, Location, Design
<2>1. RD_HoldersShared /\ STypeOK
 BY <1>snloOrk4YfoRJL4h, <1>lQA2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<spst,rpgS,xsrcS>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. sentry' \subseteq sentry /\
       \A h \in squar' : h \in squar \/ (h[1] \in sentry /\ h[1] \in Xids /\ h[2] \in xsrcS[h[1]])
 BY <1>IhhNBTxyzZz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF RD_HoldersShared, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XUajxLskutlx5HqSJv.        
 ASSUME PinInv, B2, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE \A p \in SPages : spst'[p] # "shared" => sprefc'[p]=0
<2> USE ONLY <1>XUajxLskutlx5HqSJv, Sizes, Location, Design
<2>1. RD_HoldersShared' /\ PrefcMatchesHolders'
 BY <1>qWMyUX9lZx54y95qAG, <1>RWvTkqQsVDwnRge2Q5E0XkOXe, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ASSUME NEW p \in SPages, spst'[p] # "shared" PROVE sprefc'[p]=0
 <3>1. {h \in rpgS' : h[4]=p}={} /\ {x \in sentry' : p \in xsrcS'[x]}={} /\ {h \in squar' : h[2]=p}={}
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_HoldersShared, Sizes, Location, Design
 <3>2. QED BY ONLY B2, p \in SPages, <2>1, <3>1,
        V22_PostSharedRefZero, SMTT(5) DEF V22_PostSharedRefZero
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HQkX8HBDKVM.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE P_SI2'
<2> USE ONLY <1>HQkX8HBDKVM, Sizes, Location, Design
<2>1. P_SI2 /\ STypeOK
 BY SMTT(10), V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. B2 => \A p \in SPages : spst'[p] # "shared" => sprefc'[p]=0
 BY <1>XUajxLskutlx5HqSJv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>MWG2x9W8WQcG1, SMTT(10), Sizes, Location, Design DEF P_SI2, SI2, RD_PFrame, RD_SFrame, Active, SPin, Sizes, Location, Design
\* T2M-END R2M0728_PdRDSharedZero


<1>SaSFo2TAkksV.        
 ASSUME B2, SI1', SI2', PrefcMatchesHolders', RD_HolderTypes',
        spst' \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
 PROVE RD_QuietPart'
<2> USE ONLY <1>SaSFo2TAkksV, Sizes, Location, Design
<2>0. \A p \in SPages : SRefQ(squar',p) \in Nat
 <3>1. IsFiniteSet(rpgS') /\ IsFiniteSet(sentry') /\ IsFiniteSet(squar')
  BY ONLY <1>SaSFo2TAkksV, <1>aGGTPadibFyx5jUm6wA, SMTT(20), Sizes, Location, Design DEF RD_HolderTypes, Sizes, Location, Design
 <3>2. QED BY ONLY <3>1, <1>cPqz9TtB, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>1. PInst \subseteq Inst BY Sizes, SMTT(10), Location, Design DEF PInst, Inst, NL, Sizes, Location, Design
<2>2. ASSUME Quiet', sentry'={}, \A p \in SPages : ~swrite'[p] /\ (spst'[p] \in {"priv","drain"} => sready'[p]) /\ ~SPin(p)'
       PROVE \A p \in SPages : spst'[p] \in {"free","quar"} \/ (spst'[p]="shared" /\ sprefc'[p]=SRefQ(squar',p))
 <3>1. \A h \in rpgS' : h[1] \in PInst /\ h[2] \in Rq /\ h[4] \in SPages
 BY SMTT(10), Sizes, Location, Design DEF RD_HolderTypes, Sizes, Location, Design
 <3>2. rpgS'={}
 BY <2>1, <2>2, <3>1, SMTT(10), Sizes, Location, Design DEF Quiet, SI1, SHPin, SPin, Sizes, Location, Design
 <3>3. \A p \in SPages : spst'[p] \notin {"priv","drain","dup"}
 BY <2>1, <2>2, <1>MWG2x9W8WQcG1, SMTT(10), Sizes, Location, Design DEF Quiet, SI2, Sizes, Location, Design
 <3>4. \A p \in SPages : SRefR(rpgS',p)=0 /\ SRefE(sentry',xsrcS',p)=0
 BY ONLY <2>2, <3>2, FS_EmptySet, SMTT(20), Sizes, Location, Design DEF SRefR, SRefE, Sizes, Location, Design
 <3>5. \A p \in SPages : sprefc'[p] = SRefR(rpgS',p) + SRefE(sentry',xsrcS',p) + SRefQ(squar',p)
 BY <1>SaSFo2TAkksV, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
 <3>6. \A p \in SPages : sprefc'[p]=SRefQ(squar',p)
 BY ONLY <2>0, <3>4, <3>5, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <3>7. QED BY <3>3, <3>6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF RD_QuietPart, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gyoQxsy4xeJWLmNfm.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,gen>>
 PROVE RD_QuietPart'
<2> USE ONLY <1>gyoQxsy4xeJWLmNfm, Sizes, Location, Design
<2>1. P_SI1' /\ P_SI2' /\ PrefcMatchesHolders' /\ RD_HolderTypes'
 BY <1>VDsAIqq0, <1>HQkX8HBDKVM, <1>RWvTkqQsVDwnRge2Q5E0XkOXe, <1>euftvuGfUGzVhYLlW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. spst' \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>gyoQxsy4xeJWLmNfm, <1>fIPaydrEb, <1>lQA2, V22_T_spst, SMTT(5)

<2>3. CASE B2 BY <2>1, <2>2, <2>3, <1>SaSFo2TAkksV, SMTT(10), Sizes, Location, Design DEF P_SI1, P_SI2, Sizes, Location, Design
<2>4. CASE ~B2 BY <2>4, SMTT(10), Sizes, Location, Design DEF RD_QuietPart, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vRoxPLY0ZtTb.         BaseQuietConservation' /\ RD_QuietPart' => QuietConservation'
 BY SMTT(10), Sizes, Location, Design DEF QuietConservation, RD_QuietPart, Sizes, Location, Design
\* T2M-END R2M0729_PdRDSharedConservation


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

<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jEmp1841Mb.         K12 <=> (\A m \in net : oAjKAqK(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, oAjKAqK, jwtl0, SGcCC, q_NsQ, vP96R, w5FT2, QA0WX, mO95d, xrQPm, dzHFn, lG5iqS, Sizes, Location, Design
\* T2M-END R2M0692_PdRDPort_PdMessagePred


<1>K1Rdt8.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jmSmRiUer8x2Pp.        
  /\ NP \in Nat /\ 0 \in 0..NP /\ 0 \in 0..NR /\ 0 \in 0..MG
  /\ 0 \in 0..PS /\ 0 \in -1..PS /\ 0 \in 0..MX /\ 0 \in 0..MaxFail
  /\ 1 \in 1..(MX+1) /\ 1 \in 0..PS /\ 1 \in -1..PS
  /\ 0 \notin Inst /\ 0 \notin Pages /\ 0 \notin Rq /\ 0 \notin Gens /\ 0 \notin Xids
  BY Sizes, SMTT(10), Location, Design DEF Inst, NL, Pages, Rq, Gens, Xids, Sizes, Location, Design
\* T2M-END R2M0702_PdRDPort_PdD2PageTypes


<1>VLROWBcOqe16ENnb.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>a7brl53Vj8juJwTyCLo.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst /\ (IsP(Loc(p)) <=> ~IsD(Loc(p)))
  BY ONLY <1>a7brl53Vj8juJwTyCLo, Sizes, Location, Design, Location, Sizes, SMTT(10) DEF IsP, IsD, Inst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M0695_PdRDPort_D2Finite_PdFactsA


<1>f8BuFvgvx.        
  ASSUME NEW p \in Pages
  PROVE IsFiniteSet(Z4FEHDiV(p)) /\ Cardinality(Z4FEHDiV(p)) \in 0..NR
<2> USE ONLY <1>f8BuFvgvx, Sizes, Location, Design
<2>0. NR \in Int /\ 1 \in Int /\ 1 <= NR
  BY Sizes, SMTT(10), Location, Design DEF Sizes, Location, Design
<2>1. IsFiniteSet(Rq) /\ Cardinality(Rq) = NR
  BY ONLY <2>0, FS_Interval, IsaT(10), Sizes, Location, Design DEF Rq, Sizes, Location, Design
<2>2. IsFiniteSet(Z4FEHDiV(p)) /\ Cardinality(Z4FEHDiV(p)) <= NR
  BY <2>1, FS_Subset, SMTT(10), Sizes, Location, Design DEF Z4FEHDiV, Sizes, Location, Design
<2>3. QED BY <2>2, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VZ4mgVjlIllcY1w.        
  ASSUME K8', K9'
  PROVE \A i \in Inst, u \in Rq : Active(i,u)' => pst'[rpg'[i][u]] \in {"priv","shared"}
<2> USE ONLY <1>VZ4mgVjlIllcY1w, Sizes, Location, Design
<2>1. ASSUME NEW i \in Inst, NEW u \in Rq, Active(i,u)'
       PROVE pst'[rpg'[i][u]] \in {"priv","shared"}
<3>1. ~rhit'[i][u] => pst'[rpg'[i][u]] = "priv"
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, Active, Sizes, Location, Design
<3>2. rhit'[i][u] => i \in DInst /\ ph'[i][u] \in {"run","ovl"} /\ pst'[rpg'[i][u]] = "shared"
  BY <2>1, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0701_PdRDPort_PdD2Hits


<1>qATejwlthlvQ0RBs.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<rtV, instV, crep, dsucc>>
  BY ONLY <1>qATejwlthlvQ0RBs, Sizes, Location, Design, Design, Zenon DEF DRecvReq, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TBPMq.         K8 <=> \A i \in Inst, r \in Rq : NYtGQ_z(i,r)
  BY ZenonT(10), Sizes, Location, Design DEF K8, NYtGQ_z, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sNPEL.         K9 <=> \A j \in DInst, r \in Rq : n_qmBOy(j,r)
  BY ZenonT(10), Sizes, Location, Design DEF K9, n_qmBOy, Sizes, Location, Design
\* T2M-END R2M0696_PdRDPort_PdPointPredicates


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

<1>P8wPGlIVJNzu.        
  ASSUME PinInv
  PROVE \A p \in Pages : pst[p] = "free" =>
          led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0
  BY ONLY <1>P8wPGlIVJNzu, Sizes, Location, Design, SMTT(10), V21_Inv_K7, V21_Inv_KStruct DEF KStruct, K7, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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

<1>Aa7MB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE nx' = nx \/ (nx' = nx+1 /\ Mode = "push" /\ nx \in Xids)
<2> USE ONLY <1>Aa7MB, Sizes, Location, Design
<2>1. XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY Design, <2>1, Sizes, SMTT(10), Location DEF DRecvReq, xV, XX2v, Xids, DResetLedger, Sizes, Location, Design

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

<1>aAoy6V4Uc4xO.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, pst[p] # "shared", PinInv, DRecvReq(j,r)
  PROVE UNCHANGED <<sfly[p],sled[p]>>
<2> USE ONLY <1>aAoy6V4Uc4xO, Sizes, Location, Design
<2>1. X6zX5 /\ sBjpCf /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, X6zX5, sBjpCf, a4GqBP, KPages, DResetLedger, Sizes, Location, Design

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

<1>lEBX83swSz4.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE ~Active(j,r) /\ IsD(j) /\ j \in DInst
  BY ONLY <1>lEBX83swSz4, Sizes, Location, Design, Design, <1>VLROWBcOqe16ENnb, SMTT(10) DEF DRecvReq, NewGen, Active, DResetLedger, Sizes, Location, Design

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

<1>Xem6tr36y8j7.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE n_qmBOy(j,r)'
<2> USE ONLY <1>Xem6tr36y8j7, Sizes, Location, Design
<2>1. vn9M /\ oGG7 /\ bNpAu /\ BDN6_c /\ sld6 /\ X6zX5 /\ jyWjj /\ vwKWM /\ a4GqBP /\ sBjpCf /\ ZpUxx /\ ZhBZ /\ HiUz /\ bpmgv4 /\ XX2v /\ ZCaSEo
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. rg'[j][r] \in Gens /\ ph'[j][r] \in {"run","wait","end"}
        /\ drep[r][rg'[j][r]] = 0
        /\ drep' = IF ph'[j][r] = "end" THEN [drep EXCEPT ![r][rg'[j][r]] = 1] ELSE drep
  BY <1>oXOtvpFZaCj4WHDXT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>P8wPGlIVJNzu, <1>xJf1H0DQi6JlMB, Design, Sizes, SMTT(10), Location DEF n_qmBOy, DRecvReq, Active, Tag, xV, Xids, vn9M, oGG7, bNpAu, BDN6_c, sld6, X6zX5, jyWjj, vwKWM, a4GqBP, sBjpCf, ZpUxx, ZhBZ, HiUz, bpmgv4, XX2v, ZCaSEo, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uskIjs1KVe1DatfIx.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r)
  PROVE sled[p] \subseteq sled'[p]
<2> USE ONLY <1>uskIjs1KVe1DatfIx, Sizes, Location, Design
<2>1. a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, a4GqBP, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0948_PdRDPort_PdD2RecvRecord


<1>nLtGsGcVjE.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW s \in Pages, NEW p \in Pages,
         vn9M, bNpAu, BDN6_c, Loc(s) = j, ~Active(j,r),
         ph' = [ph EXCEPT ![j][r] = "run"], rhit' = [rhit EXCEPT ![j][r] = TRUE], rpg' = [rpg EXCEPT ![j][r] = s]
  PROVE NHits(p)' = IF p = s THEN NHits(p)+1 ELSE NHits(p)
<2> USE ONLY <1>nLtGsGcVjE, Sizes, Location, Design
<2>1. Z4FEHDiV(p)' = IF p = s THEN Z4FEHDiV(p) \cup {r} ELSE Z4FEHDiV(p)
  BY <1>a7brl53Vj8juJwTyCLo, SMTT(10), Sizes, Location, Design DEF Z4FEHDiV, vn9M, bNpAu, BDN6_c, Active, Sizes, Location, Design
<2>2. p = s => r \notin Z4FEHDiV(p)
  BY SMTT(10), Sizes, Location, Design DEF Z4FEHDiV, Active, Sizes, Location, Design
<2>3. IsFiniteSet(Z4FEHDiV(p))
  BY <1>f8BuFvgvx, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, FS_AddElement, SMTT(10), Sizes, Location, Design DEF NHits, Z4FEHDiV, Sizes, Location, Design
\* T2M-END R2M0949_PdRDPort_PdD2RecvHits


<1>jjqZlGMItCh.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE X6zX5'
<2> USE ONLY <1>jjqZlGMItCh, Sizes, Location, Design
<2>1. X6zX5 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, X6zX5, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0957_PdRDPort_PdD2RecvType_pstD2


<1>kHFigj6Mp.         K7' <=> \A p \in Pages : aOcOdkv(p)'
  BY ZenonT(10), Sizes, Location, Design DEF K7, aOcOdkv, Sizes, Location, Design
\* T2M-END R2M0722_PdRDPort_PdPostPoints

\* T2M-SCOPE R2M0723_PdRDPort_PdQuietPostFromStructure
\* T2M-BODY R2M0723_PdRDPort_PdQuietPostFromStructure

<1>pPQDVcRFd1wkMRkdnBX.        
  ASSUME X6zX5', K7', K16'
  PROVE BaseQuietConservation'
<2> USE ONLY <1>pPQDVcRFd1wkMRkdnBX, Sizes, Location, Design
<2>1. SUFFICES ASSUME Quiet', NEW p \in Pages
                PROVE pst'[p] \in {"free","quar"} \/ (pst'[p] = "shared" /\ prefc'[p] = 0)
  BY SMTT(10), Sizes, Location, Design DEF BaseQuietConservation, QuietConservation, Sizes, Location, Design
<2>2. aOcOdkv(p)' /\ Loc(p) \in Inst
  BY <2>1, <1>kHFigj6Mp, Location, SMTT(10), Sizes, Design DEF KPages, Sizes, Location, Design
<2>3. ~GrownP(p)'
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF GrownP, K16, Quiet, Active, Sizes, Location, Design
<2>4. pst'[p] # "priv" /\ pst'[p] # "drain"
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF aOcOdkv, Quiet, Maps, Active, Sizes, Location, Design
<2>5. {r \in Rq : ph'[Loc(p)][r] \in {"run","ovl"} /\ rhit'[Loc(p)][r] /\ rpg'[Loc(p)][r] = p} = {}
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Quiet, Active, Sizes, Location, Design
<2>6. NHits(p)' = 0
  BY <2>1, <2>5, FS_EmptySet, SMTT(10), Sizes, Location, Design DEF NHits, Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>4, <2>6, SMTT(10), Sizes, Location, Design DEF aOcOdkv, X6zX5, Sizes, Location, Design
\* T2M-END R2M0723_PdRDPort_PdQuietPostFromStructure


<1>HVvqKKhcQc7sOKbQ.         K7 <=> (\A p \in Pages : QEH7_FW0L_tkj5(p))
  BY SMTT(10), Sizes, Location, Design DEF K7, QEH7_FW0L_tkj5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZDBUgmlrNskU8iE.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r), pst[p] = "priv"
  PROVE pr[p] \in Rq /\ Loc(p) \in Inst /\ (Loc(p) # j \/ pr[p] # r)
<2> USE ONLY <1>ZDBUgmlrNskU8iE, Sizes, Location, Design
<2>1. K7 /\ K16 /\ ~Active(j,r) /\ IsD(j)
  BY <1>lEBX83swSz4, SMTT(10), V21_Inv_K16, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>a7brl53Vj8juJwTyCLo, SMTT(10), Sizes, Location, Design DEF K7, K16, GrownP, Active, Maps, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JWqmfzK3mPTKP.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r), pst'[p] = "priv", pst[p] # "priv"
  PROVE /\ Loc(p) = j /\ rpg'[j][r] = p /\ pr'[p] = r /\ pgn'[p] = rg'[j][r]
        /\ ph'[j][r] = "wait" /\ ~rhit'[j][r]
<2> USE ONLY <1>JWqmfzK3mPTKP, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ oGG7 /\ bNpAu /\ vn9M /\ BDN6_c
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, X6zX5, gv2_, PwqP6, oGG7, bNpAu, vn9M, BDN6_c, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ybtQhNN8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r), GrownP(p)'
  PROVE GrownP(p) /\ UNCHANGED <<ph[Loc(p)][pr[p]],rg[Loc(p)][pr[p]],pr[p],rpg[Loc(p)][pr[p]]>>
<2> USE ONLY <1>ybtQhNN8, Sizes, Location, Design
<2>1. pst[p] = "priv"
  BY <1>JWqmfzK3mPTKP, SMTT(10), Sizes, Location, Design DEF GrownP, Sizes, Location, Design
<2>2. UNCHANGED <<pst[p],pr[p],pgn[p]>> /\ pr[p] \in Rq /\ Loc(p) \in Inst /\ (Loc(p) # j \/ pr[p] # r)
  BY <2>1, <1>uLQaF6cD31, <1>ZDBUgmlrNskU8iE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Z3yjjRjJ9aqZ9d, SMTT(10), Sizes, Location, Design DEF GrownP, Sizes, Location, Design
\* T2M-END R2M0991_PdRDPort_PdD2RecvPrivate


<1>zaZvITmsXpIAd.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r)
  PROVE RecvPageD2(j,r,p)
<2> USE ONLY <1>zaZvITmsXpIAd, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ vwKWM /\ ZpUxx /\ AtabIBD /\ a4GqBP /\ sBjpCf /\ xhIfp /\ vn9M /\ bNpAu /\ oGG7
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, Design, SMTT(10), Sizes, Location DEF DRecvReq, RecvPageD2, RecvAllocD2, RecvHitD2, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, ZpUxx, AtabIBD, a4GqBP, sBjpCf, xhIfp, vn9M, bNpAu, oGG7, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cUL6ja7BqtI.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r)
  PROVE NHits(p)' = IF RecvHitD2(j,r,p) THEN NHits(p)+1 ELSE NHits(p)
<2> USE ONLY <1>cUL6ja7BqtI, Sizes, Location, Design
<2>1. vn9M /\ bNpAu /\ BDN6_c /\ ~Active(j,r)
  BY <1>TLVER4XMUn, <1>lEBX83swSz4, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. CASE ph'[j][r] = "run"
<3>1. rpg'[j][r] \in Pages /\ Loc(rpg'[j][r]) = j
       /\ ph' = [ph EXCEPT ![j][r] = "run"] /\ rhit' = [rhit EXCEPT ![j][r] = TRUE]
       /\ rpg' = [rpg EXCEPT ![j][r] = rpg'[j][r]]
  BY Design, <2>1, <2>2, SMTT(10), Sizes, Location DEF DRecvReq, vn9M, bNpAu, DResetLedger, Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <3>1, <1>nLtGsGcVjE, SMTT(10), Sizes, Location, Design DEF RecvHitD2, Sizes, Location, Design
<2>3. CASE ph'[j][r] # "run"
<3>1. Z4FEHDiV(p)' = Z4FEHDiV(p)
  BY Design, <2>1, <2>3, <1>a7brl53Vj8juJwTyCLo, SMTT(10), Sizes, Location DEF DRecvReq, Z4FEHDiV, Active, vn9M, bNpAu, BDN6_c, DResetLedger, Sizes, Location, Design
<3>2. QED BY <2>3, <3>1, ZenonT(10), Sizes, Location, Design DEF NHits, Z4FEHDiV, RecvHitD2, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0992_PdRDPort_PdD2RecvPages


<1>L3t7Q6P3.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K8'
<2> USE ONLY <1>L3t7Q6P3, Sizes, Location, Design
<2>1. XX2v /\ K8 /\ K9 /\ K2 /\ ~Active(j,r) /\ IsD(j)
  BY <1>TLVER4XMUn, <1>lEBX83swSz4, SMTT(10), V21_Inv_K2, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. ASSUME NEW i \in Inst, NEW u \in Rq PROVE NYtGQ_z(i,u)'
<3>1. NYtGQ_z(i,u) /\ UNCHANGED <<gen,hp,hd,iv>>
  BY <2>1, <1>TBPMq, <1>TfbBw4J1UlUiS0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE i = j /\ u = r
  BY <3>2, <2>1, <1>oXOtvpFZaCj4WHDXT, <1>xJf1H0DQi6JlMB, <1>TfbBw4J1UlUiS0, <1>uLQaF6cD31, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF NYtGQ_z, Active, OwnedBy, Sizes, Location, Design
<3>3. CASE i # j \/ u # r
<4>1. UNCHANGED <<ph[i][u],rg[i][u],rpg[i][u],rpe[i][u],rx[i][u],rhit[i][u]>>
  BY <3>3, <1>Z3yjjRjJ9aqZ9d, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. Active(i,u) /\ ~rhit[i][u] => rpg[i][u] \in Pages /\ pst[rpg[i][u]] = "priv"
  BY <3>1, SMTT(10), Sizes, Location, Design DEF NYtGQ_z, Sizes, Location, Design
<4>3. Active(i,u) /\ ~rhit[i][u] => UNCHANGED <<pst[rpg[i][u]],pr[rpg[i][u]],pgn[rpg[i][u]],plt[rpg[i][u]],ptl[rpg[i][u]],led[rpg[i][u]],sled[rpg[i][u]],sfly[rpg[i][u]]>>
  BY <4>1, <4>2, <1>uLQaF6cD31, <1>aAoy6V4Uc4xO, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>4. ph[i][u] \in {"reg","sent","exp"} => rx[i][u] \in Xids /\ rx[i][u] < nx /\ rx[i][u] # nx
  BY <2>1, <3>1, Sizes, SMTT(10), Location, Design DEF NYtGQ_z, XX2v, Xids, Sizes, Location, Design
<4>5. ph[i][u] \in {"reg","sent","exp"} => UNCHANGED <<xsrc[rx[i][u]],xr[rx[i][u]],xg[rx[i][u]],xlt[rx[i][u]]>>
  BY <4>1, <4>4, <1>aCcmVax, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>6. QED BY <2>1, <3>1, <4>1, <4>3, <4>4, <4>5, <1>Aa7MB, <1>TfbBw4J1UlUiS0, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF NYtGQ_z, Active, OwnedBy, XX2v, Xids, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF K8, NYtGQ_z, Sizes, Location, Design
\* T2M-END R2M0993_PdRDPort_PdD2DRecvReq_K8

\* T2M-SCOPE R2M0994_PdRDPort_PdD2DRecvReq_K9

<1>lLRszOYG.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K9'
<2> USE ONLY <1>lLRszOYG, Sizes, Location, Design
<2>1. K8 /\ K9 /\ XX2v /\ ZCaSEo /\ UNCHANGED iv
  BY <1>TLVER4XMUn, <1>TfbBw4J1UlUiS0, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. ASSUME NEW i \in DInst, NEW u \in Rq PROVE n_qmBOy(i,u)'
<3>1. i \in Inst /\ IsD(i) /\ NYtGQ_z(i,u) /\ n_qmBOy(i,u)
  BY <2>1, <1>TBPMq, <1>sNPEL, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE i = j /\ u = r
  BY <3>2, <1>Xem6tr36y8j7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. CASE i # j \/ u # r
<4>1. UNCHANGED <<ph[i][u],rg[i][u],rpg[i][u],rpe[i][u],rx[i][u],rhit[i][u]>>
  BY <3>1, <3>3, <1>Z3yjjRjJ9aqZ9d, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. ph[i][u] # "none" => rg[i][u] \in Gens /\ (u # r \/ rg[i][u] # rg'[j][r])
  BY <3>1, <3>3, <1>oXOtvpFZaCj4WHDXT, SMTT(10), Sizes, Location, Design DEF NYtGQ_z, Sizes, Location, Design
<4>3. ph[i][u] # "none" => drep'[u][rg[i][u]] = drep[u][rg[i][u]]
  BY <2>1, <4>2, <1>oXOtvpFZaCj4WHDXT, SMTT(10), Sizes, Location, Design DEF ZCaSEo, Sizes, Location, Design
<4>4. Active(i,u) /\ ~rhit[i][u] => rpg[i][u] \in Pages /\ pst[rpg[i][u]] = "priv"
  BY <3>1, SMTT(10), Sizes, Location, Design DEF NYtGQ_z, Sizes, Location, Design
<4>5. Active(i,u) /\ ~rhit[i][u] => UNCHANGED <<pst[rpg[i][u]],pr[rpg[i][u]],pgn[rpg[i][u]],plt[rpg[i][u]],ptl[rpg[i][u]],pvis[rpg[i][u]],led[rpg[i][u]],sled[rpg[i][u]],sfly[rpg[i][u]]>>
  BY <4>1, <4>4, <1>uLQaF6cD31, <1>aAoy6V4Uc4xO, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>6. ph[i][u] \in {"run","ovl"} /\ rhit[i][u] => pst'[rpg[i][u]] = "shared" /\ Tag(u,rg[i][u]) \in sled'[rpg[i][u]]
  BY <3>1, <1>uskIjs1KVe1DatfIx, <1>uLQaF6cD31, SMTT(10), Sizes, Location, Design DEF NYtGQ_z, n_qmBOy, Active, Sizes, Location, Design
<4>7. (ph[i][u] = "rd" \/ (ph[i][u] = "wait" /\ Mode = "push")) => rx[i][u] \in Xids /\ rx[i][u] < nx /\ rx[i][u] # nx
  BY <3>1, SMTT(10), Sizes, Location, Design DEF n_qmBOy, Sizes, Location, Design
<4>8. (ph[i][u] = "rd" \/ (ph[i][u] = "wait" /\ Mode = "push")) => UNCHANGED <<xdst[rx[i][u]],xr[rx[i][u]],xg[rx[i][u]]>>
  BY <3>1, <4>1, <4>7, <1>aCcmVax, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>9. QED BY <2>1, <3>1, <4>1, <4>3, <4>5, <4>6, <4>7, <4>8, <1>Aa7MB, SMTT(10), Sizes, Location, Design DEF n_qmBOy, Active, XX2v, Xids, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF K9, n_qmBOy, Sizes, Location, Design
\* T2M-END R2M0994_PdRDPort_PdD2DRecvReq_K9


<1>DdGZDl0Z.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K7'
<2> USE ONLY <1>DdGZDl0Z, Sizes, Location, Design
<2>1. K7 /\ X6zX5 /\ AtabIBD /\ UNCHANGED <<gen,kpin,krs>>
  BY <1>TLVER4XMUn, <1>TfbBw4J1UlUiS0, SMTT(10), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. K8' /\ K9' /\ \A i \in Inst, u \in Rq : Active(i,u)' => pst'[rpg'[i][u]] \in {"priv","shared"}
  BY <1>L3t7Q6P3, <1>lLRszOYG, <1>VZ4mgVjlIllcY1w, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW p \in Pages PROVE QEH7_FW0L_tkj5(p)'
<3>1. QEH7_FW0L_tkj5(p) /\ RecvPageD2(j,r,p)
  BY <2>1, <1>HVvqKKhcQc7sOKbQ, <1>zaZvITmsXpIAd, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. NHits(p)' = IF RecvHitD2(j,r,p) THEN NHits(p)+1 ELSE NHits(p)
  BY <1>cUL6ja7BqtI, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. UNCHANGED KPinned(p)
  BY <2>1, ZenonT(10), Sizes, Location, Design DEF KPinned, Sizes, Location, Design
<3>4. (ptl[p] >= 0)'
  BY <2>1, <3>1, <3>2, <3>3, <1>oXOtvpFZaCj4WHDXT, SMTT(10), Sizes, Location, Design DEF RecvPageD2, RecvHitD2, RecvAllocD2, QEH7_FW0L_tkj5, Sizes, Location, Design
<3>5. ( pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0))'
  BY <2>1, <3>1, <3>2, <3>3, <1>oXOtvpFZaCj4WHDXT, SMTT(10), Sizes, Location, Design DEF RecvPageD2, RecvHitD2, RecvAllocD2, QEH7_FW0L_tkj5, Sizes, Location, Design
<3>6. (pst[p] \in {"priv","drain","quar"} => (pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]]))'
  BY <2>1, <3>1, <3>2, <3>3, <1>oXOtvpFZaCj4WHDXT, SMTT(10), Sizes, Location, Design DEF RecvPageD2, RecvHitD2, RecvAllocD2, QEH7_FW0L_tkj5, Sizes, Location, Design
<3>7. (pst[p] = "quar" => pqp[p] \in Inst)'
  BY <2>1, <3>1, <3>2, <3>3, <1>oXOtvpFZaCj4WHDXT, SMTT(10), Sizes, Location, Design DEF RecvPageD2, RecvHitD2, RecvAllocD2, QEH7_FW0L_tkj5, Sizes, Location, Design
<3>8. (pst[p] # "quar" => pqp[p] = 0)'
  BY <2>1, <3>1, <3>2, <3>3, <1>oXOtvpFZaCj4WHDXT, SMTT(10), Sizes, Location, Design DEF RecvPageD2, RecvHitD2, RecvAllocD2, QEH7_FW0L_tkj5, Sizes, Location, Design
<3>9. (pst[p] # "shared" => prefc[p] = 0)'
  BY <2>1, <3>1, <3>2, <3>3, <1>oXOtvpFZaCj4WHDXT, SMTT(10), Sizes, Location, Design DEF RecvPageD2, RecvHitD2, RecvAllocD2, QEH7_FW0L_tkj5, Sizes, Location, Design
<3>10. (pst[p] = "shared" => (IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p)))'
  BY <2>1, <3>1, <3>2, <3>3, <1>oXOtvpFZaCj4WHDXT, SMTT(10), Sizes, Location, Design DEF RecvPageD2, RecvHitD2, RecvAllocD2, QEH7_FW0L_tkj5, Sizes, Location, Design
<3>11. (pst[p] = "drain" => (led[p] # {} \/ sled[p] # {} \/ KPinned(p)))'
  BY <2>1, <3>1, <3>2, <3>3, <1>oXOtvpFZaCj4WHDXT, SMTT(10), Sizes, Location, Design DEF RecvPageD2, RecvHitD2, RecvAllocD2, QEH7_FW0L_tkj5, Sizes, Location, Design
<3>12. (pst[p] \in {"drain","quar"} => \A u \in Rq : ~Maps(Loc(p),u,p))'
  BY ONLY <2>2, <1>a7brl53Vj8juJwTyCLo, SMTT(10), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design
<3>13. (pst[p] = "priv" => (Maps(Loc(p),pr[p],p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]]) \/ GrownP(p))'
<4>1. CASE pst'[p] # "priv"
  BY <4>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. CASE pst'[p] = "priv" /\ pst[p] # "priv"
  BY <4>2, <1>JWqmfzK3mPTKP, SMTT(10), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design
<4>3. CASE pst'[p] = "priv" /\ pst[p] = "priv"
<5>1. pr[p] \in Rq /\ Loc(p) \in Inst /\ (Loc(p) # j \/ pr[p] # r)
       /\ UNCHANGED <<pr[p],pgn[p]>>
  BY <4>3, <1>uLQaF6cD31, <1>ZDBUgmlrNskU8iE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<5>2. UNCHANGED <<ph[Loc(p)][pr[p]],rg[Loc(p)][pr[p]],rpg[Loc(p)][pr[p]],rhit[Loc(p)][pr[p]]>>
  BY <5>1, <1>Z3yjjRjJ9aqZ9d, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<5>3. QED BY <3>1, <4>3, <5>1, <5>2, SMTT(10), Sizes, Location, Design DEF QEH7_FW0L_tkj5, Maps, Active, GrownP, Sizes, Location, Design
<4>4. QED BY <4>1, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>14. QED BY <3>4, <3>5, <3>6, <3>7, <3>8, <3>9, <3>10, <3>11, <3>12, <3>13, SMTT(10), Sizes, Location, Design DEF QEH7_FW0L_tkj5, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K7, QEH7_FW0L_tkj5, Sizes, Location, Design
\* T2M-END R2M0995_PdRDPort_PdD2DRecvReq_K7


<1>xI3iOsC55.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K16'
<2> USE ONLY <1>xI3iOsC55, Sizes, Location, Design
<2>1. K16
  BY SMTT(10), V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ASSUME NEW p \in Pages, GrownP(p)'
       PROVE /\ ph'[Loc(p)][pr'[p]] \in {"run","ovl"} /\ rg'[Loc(p)][pr'[p]] = pgn'[p]
             /\ led'[p] = {} /\ sled'[p] = {} /\ sfly'[p] = {}
             /\ plt'[p] = ptl'[p] /\ ptl'[p] \in {0,1} /\ NoWriteInto(p)'
<3>1. GrownP(p) /\ UNCHANGED <<ph[Loc(p)][pr[p]],rg[Loc(p)][pr[p]],pr[p],rpg[Loc(p)][pr[p]]>>
  BY <2>2, <1>ybtQhNN8, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. pst[p] = "priv"
  BY <3>1, SMTT(10), Sizes, Location, Design DEF GrownP, Sizes, Location, Design
<3>3. QED BY <2>1, <2>2, <3>1, <3>2, <1>uLQaF6cD31, <1>aAoy6V4Uc4xO, <1>yVqu69BTzD, SMTT(10), Sizes, Location, Design DEF K16, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF K16, Sizes, Location, Design
\* T2M-END R2M0996_PdRDPort_PdD2DRecvReq_K16


<1>CYwoXMBRbtgDX00QYm31u5D.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE BaseQuietConservation'
<2> USE ONLY <1>CYwoXMBRbtgDX00QYm31u5D, Sizes, Location, Design
<2>1. K7' /\ K16' /\ X6zX5'
  BY <1>DdGZDl0Z, <1>xI3iOsC55, <1>jjqZlGMItCh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>pPQDVcRFd1wkMRkdnBX, SMTT(10), Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
\* T2M-END R2M0997_PdRDPort_PdD2DRecvReq_QuietConservation


<1>XVj1oqB464y8xWh1fkDL994jXe.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE QuietConservation'
<2> USE ONLY <1>XVj1oqB464y8xWh1fkDL994jXe, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>CYwoXMBRbtgDX00QYm31u5D, <1>gyoQxsy4xeJWLmNfm, <1>vRoxPLY0ZtTb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>XVj1oqB464y8xWh1fkDL994jXe, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DRecvReq_01_02 SHA 2a7b6eaae5e42c97e68084b85b803757f676404c0d460b9bb6d6d2e2d9fec966
USE DEF AuxType_ba9b12f8121bcf2d, V22_T_dpreOK, V22_T_schoice, V22_T_smap, V22_T_sprefc, V22_T_xprefixOK, V22_T_xsrcP
HIDE DEF Part_DRecvReq_01_01, V21_Inv_K1, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K2, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_OneReply, V21_Inv_Safety, V21_Inv_TypeOK, V22_PostSharedRefZero
THEOREM Part_DRecvReq_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE (TypInv)' /\ (P_SI2)'
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

           RD_STypeRest ==
             /\ spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
             /\ sown \in [SPages -> 0..NR] /\ sgen \in [SPages -> 0..MG] /\ skey \in [SPages -> 0..2]
             /\ swrite \in [SPages -> BOOLEAN] /\ sdata \in [SPages -> BOOLEAN] /\ sready \in [SPages -> BOOLEAN]

             /\ smap \in [PInst -> [Rq -> {0} \cup SPages]] /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
             /\ rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)
             /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
             /\ sentry \in SUBSET Xids /\ squar \in SUBSET (Xids \X SPages)
             /\ xprefixOK \in [Xids -> BOOLEAN] /\ dpreOK \in [Pages -> BOOLEAN]
             /\ hitSeen \in BOOLEAN /\ dedupSeen \in BOOLEAN


           RD_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
                    spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])

           RD_XPrefixUpdate == xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RD_Valid(x) ELSE xprefixOK[x]]

           RD_DPreUpdate == dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                                    THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                                          (IF hw[x]="issued" THEN xprefixOK[x] ELSE RD_Valid(x))
                                    ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
           \* T2M-LOCAL-VISIBILITY

           RD_HoldersShared == /\ \A h \in rpgS : spst[h[4]]="shared"
                               /\ \A x \in sentry : \A p \in xsrcS[x] : spst[p]="shared"
                               /\ \A h \in squar : spst[h[2]]="shared"

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_STypeRest, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_HoldersShared

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
<3>fxType. CoreTypeOK => xsrc \in [Xids -> 0..NP]
 BY ONLY ZenonT(5) DEF CoreTypeOK
<3>fxCore. CoreTypeOK
 BY ONLY <1>cIrFCXuTtPxBU, V21_Inv_BaseTypeOK, Sizes, Location, Design, SMTT(5)
<3>fxShared. STypeOK
 BY ONLY <1>cIrFCXuTtPxBU, V21_Inv_STypeOK, Sizes, Location, Design, SMTT(5)
<3>fxDone. QED BY ONLY <3>fxType, <3>fxCore, <3>fxShared, SMTT(5)
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

<1>HyTxass4cKRoY43Ha.         B2 /\ SFollow => RD_XPrefixUpdate /\ RD_DPreUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_XPrefixUpdate, RD_DPreUpdate, RD_Valid, Sizes, Location, Design
\* T2M-LOCAL-VISIBILITY

<1>mmyDIW0RP.        
 ASSUME STypeOK, NEW x \in Xids
 PROVE RD_Valid(x) \in BOOLEAN
 BY ONLY <1>mmyDIW0RP, Sizes, Location, Design, SMTT(10) DEF STypeOK, RD_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hrFKh7axpajm.         RD_STypeRest' /\ sprefc' \in [SPages -> 0..(NPI*NR*MG+MX)] => STypeOK'
 BY SMTT(10), Sizes, Location, Design DEF RD_STypeRest, STypeOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>c0gZZhOiBg4Hvw4.        
 ASSUME PinInv, SFollow
 PROVE RD_STypeRest'
<2> USE ONLY <1>c0gZZhOiBg4Hvw4, Sizes, Location, Design
<2>1. STypeOK /\ RD_HolderTypes'
 BY <1>lQA2, <1>euftvuGfUGzVhYLlW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY <2>1, <2>2, ZenonT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, RD_STypeRest, STypeOK, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RD_SFrame /\ RD_SUpdate /\ RD_MUpdate /\ RD_XUpdate
 BY <2>3, <1>uaJsMuSZCFU, <1>dbfJSAnRudgsXK, <1>ivFfcVr6Rc1eHuIs8, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. spst' \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>c0gZZhOiBg4Hvw4, <2>1, <3>1, V22_T_spst, SMTT(5) DEF RD_SUpdate

 <3>3. smap' \in [PInst -> [Rq -> {0} \cup SPages]] /\ schoice' \in [PInst -> [Rq -> BOOLEAN]]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>c0gZZhOiBg4Hvw4, <2>1, <3>1, V22_T_schoice, V22_T_smap, SMTT(5) DEF RD_MUpdate

 <3>4. xsrcS' \in [Xids -> SUBSET SPages] /\ xsrcP' \in [Xids -> SUBSET SPages]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>c0gZZhOiBg4Hvw4, <2>1, <3>1, V22_T_xsrcP, V22_T_xsrcS, SMTT(5) DEF RD_XUpdate

 <3>5. xprefixOK' \in [Xids -> BOOLEAN]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>c0gZZhOiBg4Hvw4, <2>1, <2>3, <1>HyTxass4cKRoY43Ha, <1>mmyDIW0RP, V22_T_xprefixOK, SMTT(5) DEF RD_XPrefixUpdate, RD_Valid

 <3>6. dpreOK' \in [Pages -> BOOLEAN]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>c0gZZhOiBg4Hvw4, <2>1, <2>3, <1>HyTxass4cKRoY43Ha, <1>mmyDIW0RP, V22_T_dpreOK, V22_T_xprefixOK, SMTT(5) DEF RD_DPreUpdate, RD_Valid

 <3>7. QED BY <2>1, <3>1, <3>2, <3>3, <3>4, <3>5, <3>6, SMTT(10), Sizes, Location, Design DEF STypeOK, RD_STypeRest, RD_SFrame, RD_HolderTypes, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0686_PdRDSharedTypes


<1>PEnevEmtaL.        
 ASSUME NEW E, NEW Q, NEW E2, NEW Q2, NEW p,
        IsFiniteSet(E), IsFiniteSet(Q), E2 \subseteq E,
        Q2 \subseteq Q \cup ((E \ E2) \X {p})
 PROVE Cardinality(E2)+Cardinality(Q2)<=Cardinality(E)+Cardinality(Q)
<2> USE ONLY <1>PEnevEmtaL, Sizes, Location, Design
<2>1. IsFiniteSet(E2) /\ IsFiniteSet(E \ E2) /\ E \cap E2=E2
 BY FS_Subset, FS_Difference, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Cardinality(E \ E2)=Cardinality(E)-Cardinality(E2)
 BY <2>1, FS_Difference, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet(((E \ E2) \X {p})) /\ Cardinality(((E \ E2) \X {p}))<=Cardinality(E \ E2)
 BY <2>1, FS_Product, FS_Singleton, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. IsFiniteSet(Q \cup ((E \ E2) \X {p})) /\ IsFiniteSet(Q \cap ((E \ E2) \X {p}))
 BY <2>3, FS_Union, FS_Intersection, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. IsFiniteSet(Q2) /\ Cardinality(Q2)<=Cardinality(Q \cup ((E \ E2) \X {p}))
 BY <2>4, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. Cardinality(Q \cup ((E \ E2) \X {p}))=Cardinality(Q)+Cardinality(((E \ E2) \X {p}))-Cardinality(Q \cap ((E \ E2) \X {p}))
 BY <2>3, FS_Union, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. Cardinality(E) \in Nat /\ Cardinality(E2) \in Nat /\ Cardinality(Q) \in Nat /\ Cardinality(Q2) \in Nat /\
       Cardinality(E \ E2) \in Nat /\ Cardinality(((E \ E2) \X {p})) \in Nat /\
       Cardinality(Q \cup ((E \ E2) \X {p})) \in Nat /\ Cardinality(Q \cap ((E \ E2) \X {p})) \in Nat
 BY <2>1, <2>3, <2>4, <2>5, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>8. QED BY <2>2, <2>3, <2>5, <2>6, <2>7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XRWgJTae.        
 ASSUME B2, PinInv, SFollow, UNCHANGED xsrc, NEW p \in SPages
 PROVE SRefE(sentry',xsrcS',p)+SRefQ(squar',p)<=SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
<2> USE ONLY <1>XRWgJTae, Sizes, Location, Design
<2>1. RD_EQUpdate /\ STypeOK /\ UNCHANGED xsrcS
 BY <1>y69bbnw8OExl0j, <1>lQA2, <1>cIrFCXuTtPxBU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A x \in Xids : ~RD_Posted(x)
 BY Sizes, SMTT(10), Location, Design DEF RD_Posted, Pages, Sizes, Location, Design
<2>3. {x \in sentry' : p \in xsrcS'[x]} \subseteq {x \in sentry : p \in xsrcS[x]}
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_E2, Sizes, Location, Design
<2>4. {h \in squar' : h[2]=p} \subseteq {h \in squar : h[2]=p} \cup
       (({x \in sentry : p \in xsrcS[x]} \ {x \in sentry' : p \in xsrcS'[x]}) \X {p})
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_Q2, RD_E2, RD_Quarantine, STypeOK, Sizes, Location, Design
<2>5. IsFiniteSet(Xids) /\ IsFiniteSet(Xids \X SPages)
 BY <1>yXEVXb54O9q5W, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. IsFiniteSet(sentry) /\ IsFiniteSet(squar)
 BY <2>1, <2>5, FS_Subset, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
<2>7. IsFiniteSet({x \in sentry : p \in xsrcS[x]}) /\ IsFiniteSet({h \in squar : h[2]=p})
 BY <2>6, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>8. QED BY <2>3, <2>4, <2>7, <1>PEnevEmtaL, SMTT(10), Sizes, Location, Design DEF SRefE, SRefQ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yGAZy5dd1d.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE sprefc' \in [SPages -> 0..(NPI*NR*MG+MX)]
<2> USE ONLY <1>yGAZy5dd1d, Sizes, Location, Design
<2>1. STypeOK /\ PrefcMatchesHolders /\ PrefcMatchesHolders' /\ RD_HolderTypes'
 BY <1>lQA2, <1>RWvTkqQsVDwnRge2Q5E0XkOXe, <1>euftvuGfUGzVhYLlW, SMTT(10), V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. CASE ~B2
 <3>1. UNCHANGED sprefc BY ONLY <1>yGAZy5dd1d, <2>2, SMTT(10), Sizes, Location, Design, V21_SFollowOff DEF sV, Sizes, Location, Design
 <3>2. sprefc \in [SPages -> 0..(NPI*NR*MG+MX)] 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>yGAZy5dd1d, V22_T_sprefc, SMTT(5)

 <3>3. QED BY ONLY <3>1, <3>2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE B2
 <3>1. UNCHANGED rpgS /\ RD_RefDelta
 BY <2>3, <1>YSvRDxZGd, <1>SExsPOAumjk344, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. IsFiniteSet(rpgS) /\ IsFiniteSet(sentry) /\ IsFiniteSet(squar) /\ IsFiniteSet(rpgS') /\ IsFiniteSet(sentry') /\ IsFiniteSet(squar')
 <4>1. rpgS \subseteq (PInst \X Rq \X Gens \X SPages) /\ sentry \subseteq Xids /\ squar \subseteq (Xids \X SPages)
  
 <5> HIDE DEF CoreTypeOK, STypeOK
 <5>fields. QED
  BY ONLY <1>yGAZy5dd1d, V22_T_rpgS, V22_T_sentry, V22_T_squar, SMTT(5)

 <4>2. IsFiniteSet(rpgS) /\ IsFiniteSet(sentry) /\ IsFiniteSet(squar)
  BY ONLY <4>1, <1>aGGTPadibFyx5jUm6wA, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <4>3. IsFiniteSet(rpgS') /\ IsFiniteSet(sentry') /\ IsFiniteSet(squar')
  BY ONLY <2>1, <1>aGGTPadibFyx5jUm6wA, SMTT(20), Sizes, Location, Design DEF RD_HolderTypes, Sizes, Location, Design
 <4>4. QED BY ONLY <4>2, <4>3, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A p \in SPages : SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat /\
                              SRefR(rpgS,p) \in Nat /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefQ(squar,p) \in Nat
 BY <3>2, <1>cPqz9TtB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. \A p \in SPages : SRefE(sentry',xsrcS',p)+SRefQ(squar',p)<=SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
 BY <2>3, <1>XRWgJTae, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>5. \A p \in SPages : 0<=sprefc'[p] /\ sprefc'[p]<=sprefc[p]
 BY <2>1, <2>3, <3>1, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
 <3>6. QED BY <2>1, <2>3, <3>1, <3>3, <3>5, Sizes, SMTT(10), Location, Design DEF STypeOK, RD_RefDelta, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NDQyqiufWt5zT.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE STypeOK'
 BY ONLY <1>NDQyqiufWt5zT, Sizes, Location, Design, <1>c0gZZhOiBg4Hvw4, <1>yGAZy5dd1d, <1>hrFKh7axpajm, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M0688_PdRDBudget


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

<1>snloOrk4YfoRJL4h.        
 ASSUME PinInv, B2
 PROVE RD_HoldersShared
<2> USE ONLY <1>snloOrk4YfoRJL4h, Sizes, Location, Design
<2>1. HitIdentity /\ SI4 /\ SI5 /\ STypeOK
 BY <1>lQA2, SMTT(10), V21_Inv_HitIdentity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF HitIdentity, SI4, SI5, STypeOK, RD_HoldersShared, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qWMyUX9lZx54y95qAG.        
 ASSUME PinInv, B2, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE RD_HoldersShared'
<2> USE ONLY <1>qWMyUX9lZx54y95qAG, Sizes, Location, Design
<2>1. RD_HoldersShared /\ STypeOK
 BY <1>snloOrk4YfoRJL4h, <1>lQA2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<spst,rpgS,xsrcS>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. sentry' \subseteq sentry /\
       \A h \in squar' : h \in squar \/ (h[1] \in sentry /\ h[1] \in Xids /\ h[2] \in xsrcS[h[1]])
 BY <1>IhhNBTxyzZz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF RD_HoldersShared, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XUajxLskutlx5HqSJv.        
 ASSUME PinInv, B2, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE \A p \in SPages : spst'[p] # "shared" => sprefc'[p]=0
<2> USE ONLY <1>XUajxLskutlx5HqSJv, Sizes, Location, Design
<2>1. RD_HoldersShared' /\ PrefcMatchesHolders'
 BY <1>qWMyUX9lZx54y95qAG, <1>RWvTkqQsVDwnRge2Q5E0XkOXe, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ASSUME NEW p \in SPages, spst'[p] # "shared" PROVE sprefc'[p]=0
 <3>1. {h \in rpgS' : h[4]=p}={} /\ {x \in sentry' : p \in xsrcS'[x]}={} /\ {h \in squar' : h[2]=p}={}
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_HoldersShared, Sizes, Location, Design
 <3>counts. SRefR(rpgS',p)=0 /\ SRefE(sentry',xsrcS',p)=0 /\ SRefQ(squar',p)=0
  BY ONLY <3>1, FS_EmptySet, ZenonT(5) DEF SRefR, SRefE, SRefQ
 <3>value. sprefc'[p]=SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
  BY ONLY <1>XUajxLskutlx5HqSJv, <2>1, <2>2, SMTT(5) DEF PrefcMatchesHolders
 <3>2. QED BY ONLY <3>counts, <3>value, SMTT(5)
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HQkX8HBDKVM.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE P_SI2'
<2> USE ONLY <1>HQkX8HBDKVM, Sizes, Location, Design
<2>1. P_SI2 /\ STypeOK
 BY SMTT(10), V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. B2 => \A p \in SPages : spst'[p] # "shared" => sprefc'[p]=0
 BY <1>XUajxLskutlx5HqSJv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>MWG2x9W8WQcG1, SMTT(10), Sizes, Location, Design DEF P_SI2, SI2, RD_PFrame, RD_SFrame, Active, SPin, Sizes, Location, Design
\* T2M-END R2M0728_PdRDSharedZero


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

<1>qOdN50JBCGLL.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE CoreTypeOK'
 BY ONLY <1>qOdN50JBCGLL, AuxType_ba9b12f8121bcf2d, Sizes, Location, Design DEF Sizes, Location, Design

<1>gjArkDEY0Cq56Uk.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE TypInv'
<2> USE ONLY <1>gjArkDEY0Cq56Uk, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED xsrc
 BY <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK'
 BY <2>1, <1>NDQyqiufWt5zT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, <1>qOdN50JBCGLL, SMTT(10), Sizes, Location, Design DEF TypInv, Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>OARVE8smduP7.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE P_SI2'
 BY ONLY <1>OARVE8smduP7, Sizes, Location, Design, <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, <1>HQkX8HBDKVM, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>gjArkDEY0Cq56Uk, <1>OARVE8smduP7, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DRecvReq_02_01 SHA 3c3f2fbc756e967d8e7c7558f3064a9ce1a86335a09bf2d3ff30bf7d9dc4ebed
USE DEF P_PagePoolsDisjoint, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K10, V21_Inv_K12, V21_Inv_K14, V21_Inv_K15, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_QuarNoReg, V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V22_T_iv, V22_T_pgn, V22_T_pr, V22_T_pst, V22_T_rpg, V22_T_xdst, V22_T_xg, V22_T_xr
HIDE DEF AuxType_ba9b12f8121bcf2d, Part_DRecvReq_01_02, V21_Inv_HitIdentity, V21_Inv_PrefcMatchesHolders, V22_T_dpreOK, V22_T_rpgS, V22_T_sentry, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
THEOREM Part_DRecvReq_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE (NoStrayAccess)' /\ (P_SI5)' /\ (P_SI4)'
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

           K2RecvPointD2(x) ==
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

           \* T2M-LOCAL-VISIBILITY

           K3RecvPointD2(x) ==
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

           \* T2M-LOCAL-VISIBILITY

           RD_EntryRange == \A x \in sentry : IF xk[x]="wr" THEN iv'[x] \in {"reg","posted","failret","cqe","nopost"}
                                          ELSE xst'[x] \in {"posted","landed","failed"}


           RD_SI4Keys == /\ nx' \in Int /\ nx' >= nx
            /\ \A x \in Xids : (xsrcS[x] # {} \/ x \in sentry) => xp'[x]=xp[x] /\ xr'[x]=xr[x] /\ xg'[x]=xg[x] /\ xk'[x]=xk[x]

           RD_PrefixBack == /\ UNCHANGED xprefixOK
            /\ \A x \in Xids : hw'[x] \in {"issued","stop"} => hw[x] \in {"issued","stop"}

           RD_CoverBack == \A x \in Xids : hw'[x]="fly" => (hw[x]="fly" \/ (xk[x]="rd" /\ xst[x]="posted")) /\ ~RD_Close(x)

           \* T2M-LOCAL-VISIBILITY

           RD_RegSafe == \A x \in Xids : iv'[x]="reg" => iv[x]="reg" /\ pst'[xsrc[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

           RD_StopBack == \A x \in Xids : (hw'[x]="stop" /\ hok'[x] /\ xdst'[x] \in Pages /\ Held(xdst[x],x)') =>
               hw[x]="stop" /\ hok[x] /\ xdst'[x]=xdst[x] /\ Held(xdst[x],x)

           RD_SI5Quar == \A h \in squar : h[1]<nx /\ h[2] \in xsrcS[h[1]] /\ spst[h[2]]="shared" /\ skey[h[2]]=STok(xr[h[1]],xg[h[1]]) /\ iv[h[1]] # "reg"

           RD_SI5Stop == \A x \in Xids : (hw[x]="stop" /\ hok[x] /\ xdst[x] \in Pages /\ Held(xdst[x],x)) => dpreOK[xdst[x]]

           RD_SI5Map == \A i \in PInst,r \in Rq : (Active(i,r) /\ smap[i][r] \in SPages /\ spst[smap[i][r]]="priv") => ph[i][r] \in {"pre","ready"}

           \* T2M-LOCAL-VISIBILITY

           RD_R2ReqPageUpdate(j,r,m) ==
            /\ m.t="req" /\ m.to=j /\ m.r=r /\ NewGen(j,r,m.g)
            /\ (UNCHANGED <<pst,pr,pgn>> \/ \E q \in Pages :
                  pst'=[pst EXCEPT ![q]="priv"] /\ pr'=[pr EXCEPT ![q]=r] /\ pgn'=[pgn EXCEPT ![q]=m.g])

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_Q2, RD_EQUpdate, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_NoStop, RD_KeyOnSource, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, jwtl0, SGcCC, q_NsQ, vP96R, w5FT2, QA0WX, mO95d, xrQPm, dzHFn, lG5iqS, oAjKAqK, K2RecvPointD2, K3RecvPointD2, RD_EntryRange, RD_SI4Keys, RD_PrefixBack, RD_CoverBack, RD_RegSafe, RD_StopBack, RD_SI5Quar, RD_SI5Stop, RD_SI5Map, RD_R2ReqPageUpdate

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
 <3>2. smap \in [PInst -> [Rq -> {0} \cup SPages]]
  
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>zMokmOdGw, V22_T_smap, SMTT(5)

 <3>3. schoice \in [PInst -> [Rq -> BOOLEAN]]
  
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>zMokmOdGw, V22_T_schoice, SMTT(5)

 <3>4. smap'=smap BY ONLY <3>1, <3>2, SMTT(5)
 <3>5. schoice'=schoice BY ONLY <3>1, <3>3, SMTT(5)
 <3>6. QED BY ONLY <3>4, <3>5, SMTT(5)
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cIrFCXuTtPxBU.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE UNCHANGED <<xsrcS,xsrcP>>
<2> USE ONLY <1>cIrFCXuTtPxBU, Sizes, Location, Design
<2>1. STypeOK /\ xsrc \in [Xids -> 0..NP]
<3>fxType. CoreTypeOK => xsrc \in [Xids -> 0..NP]
 BY ONLY ZenonT(5) DEF CoreTypeOK
<3>fxCore. CoreTypeOK
 BY ONLY <1>cIrFCXuTtPxBU, V21_Inv_BaseTypeOK, Sizes, Location, Design, SMTT(5)
<3>fxShared. STypeOK
 BY ONLY <1>cIrFCXuTtPxBU, V21_Inv_STypeOK, Sizes, Location, Design, SMTT(5)
<3>fxDone. QED BY ONLY <3>fxType, <3>fxCore, <3>fxShared, SMTT(5)
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


<1>y69bbnw8OExl0j.         B2 /\ SFollow => RD_EQUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_EQUpdate, RD_E2, RD_Q2, RD_Close, RD_Quarantine, RD_Posted, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dCj1oPpXLfODIy.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY ONLY <1>dCj1oPpXLfODIy, Sizes, Location, Design, <1>uaJsMuSZCFU, <1>fIPaydrEb, <1>YSvRDxZGd, <1>zMokmOdGw, <1>cIrFCXuTtPxBU, SMTT(10) DEF Sizes, Location, Design

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

<1>WNRe9PPHkoFy.         B2 /\ SFollow => squar \subseteq squar'
 BY <1>y69bbnw8OExl0j, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_Q2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vyedVpubW3KMqNND.        
 ASSUME B2, SFollow, NEW x \in Xids, x \in sentry, ~RD_Close(x)
 PROVE x \in sentry' \/ (\A p \in xsrcS[x] : <<x,p>> \in squar')
<2> USE ONLY <1>vyedVpubW3KMqNND, Sizes, Location, Design
<2>1. RD_EQUpdate BY <1>y69bbnw8OExl0j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ~RD_Quarantine(x) => x \in sentry'
 BY <2>1, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_E2, Sizes, Location, Design
<2>3. RD_Quarantine(x) => \A p \in xsrcS[x] : <<x,p>> \in squar'
 <3>1. Mut # "sharedFailUnref" BY ONLY Design, SMTT(10), Sizes, Location DEF Sizes, Location, Design
 <3>2. squar' = squar \cup UNION {{<<y,p>> : p \in xsrcS[y]} : y \in {y \in Xids : RD_Quarantine(y)}}
  BY ONLY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_Q2, Sizes, Location, Design
 <3>3. ASSUME RD_Quarantine(x), NEW p \in xsrcS[x]
        PROVE <<x,p>> \in squar'
  <4>1. x \in {y \in Xids : RD_Quarantine(y)}
   BY ONLY <1>vyedVpubW3KMqNND, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. {<<x,q>> : q \in xsrcS[x]} \in {{<<y,q>> : q \in xsrcS[y]} : y \in {y \in Xids : RD_Quarantine(y)}}
   BY ONLY <4>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. <<x,p>> \in {<<x,q>> : q \in xsrcS[x]}
   BY ONLY <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>4. QED BY ONLY <3>2, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY ONLY <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

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

<1>O1T0jJ637c6.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), B2
 PROVE RD_KeyOnSource
<2> HIDE DEF CoreTypeOK, STypeOK, DRecvReq
<2>si4. SI4
 BY ONLY <1>O1T0jJ637c6, V21_Inv_P_SI4, Sizes, Location, Design, SMTT(5) DEF P_SI4
<2>types. xr \in [Xids -> 0..NR] /\ xg \in [Xids -> 0..MG] /\ nx \in 1..(MX+1)
 BY ONLY <1>O1T0jJ637c6, V22_T_xr, V22_T_xg, V22_T_nx, SMTT(5)
<2>existing. \A x \in Xids : xsrcS[x] \cup xsrcP[x] # {} => x # nx
 BY ONLY <2>si4, <2>types, Sizes, SMTT(5) DEF SI4, Xids, Sizes
<2>frame. \A x \in Xids : x # nx => xr'[x]=xr[x] /\ xg'[x]=xg[x]
 BY ONLY <1>O1T0jJ637c6, <2>types, SMTT(5) DEF DRecvReq, xV
<2>qed. QED BY ONLY <2>existing, <2>frame, SMTT(5) DEF RD_KeyOnSource

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


<1>quknSm.        
  K14 /\ UNCHANGED <<gen, kfly, kpin, krs>> => K14'
  BY SMTT(5), Sizes, Location, Design DEF K14, Sizes, Location, Design

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

<1>W9Xt61fok.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K14'
<2> USE ONLY <1>W9Xt61fok, Sizes, Location, Design
<2>1. K14 /\ UNCHANGED <<gen, kfly, kpin, krs>>
  BY <1>qATejwlthlvQ0RBs, V21_Inv_BaseSafety, V21_Inv_K14, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF rtV, instV, kV, Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>quknSm, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0941_PdRDPort_PdDRecvReqFrames


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

<1>P8wPGlIVJNzu.        
  ASSUME PinInv
  PROVE \A p \in Pages : pst[p] = "free" =>
          led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0
  BY ONLY <1>P8wPGlIVJNzu, Sizes, Location, Design, SMTT(10), V21_Inv_K7, V21_Inv_KStruct DEF KStruct, K7, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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

<1>Aa7MB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE nx' = nx \/ (nx' = nx+1 /\ Mode = "push" /\ nx \in Xids)
<2> USE ONLY <1>Aa7MB, Sizes, Location, Design
<2>1. XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY Design, <2>1, Sizes, SMTT(10), Location DEF DRecvReq, xV, XX2v, Xids, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GW2Ridkw0Uh7W.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), nx' = nx
  PROVE UNCHANGED xV
<2> USE ONLY <1>GW2Ridkw0Uh7W, Sizes, Location, Design
<2>1. XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, XX2v, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aCcmVax.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW x \in Xids, PinInv, DRecvReq(j,r), x # nx
  PROVE UNCHANGED <<xr[x],xg[x],xk[x],xp[x],xd[x],xsrc[x],xdst[x],xnt[x],xst[x],xlt[x],hw[x],hok[x],iv[x]>>
<2> USE ONLY <1>aCcmVax, Sizes, Location, Design
<2>1. ZhBZ /\ HiUz /\ qcWy /\ I3KH /\ Vikm /\ bpmgv4 /\ loK6p /\ H3aTc
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY Design, <2>1, <1>TfbBw4J1UlUiS0, SMTT(10), Sizes, Location DEF DRecvReq, xV, ZhBZ, HiUz, qcWy, I3KH, Vikm, bpmgv4, loK6p, H3aTc, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LvaLEbZHe.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), nx' = nx+1
  PROVE /\ nx \in Xids /\ Mode = "push"
        /\ xr'[nx] = r /\ xg'[nx] \in Gens /\ xg'[nx] <= gen[r]
        /\ xk'[nx] = "wr" /\ xp'[nx] = hp[r][xg'[nx]] /\ xd'[nx] = hd[r][xg'[nx]] /\ xd'[nx] = j
        /\ xnt'[nx] = NTok(r,xg'[nx]) /\ xst'[nx] = "posted"
        /\ xdst'[nx] \in Pages /\ Loc(xdst'[nx]) = j /\ pst[xdst'[nx]] = "free"
        /\ xsrc'[nx] = 0 /\ xlt'[nx] = 0 /\ hw'[nx] = "none" /\ ~hok'[nx] /\ iv'[nx] = "none"
<2> USE ONLY <1>LvaLEbZHe, Sizes, Location, Design
<2>1. K2 /\ XX2v /\ ZhBZ /\ HiUz /\ qcWy /\ I3KH /\ Vikm /\ bpmgv4 /\ loK6p /\ H3aTc
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. nx \in Xids /\ Mode = "push"
  BY <1>Aa7MB, <2>1, SMTT(10), Sizes, Location, Design DEF XX2v, Sizes, Location, Design
<2>3. xsrc[nx] = 0 /\ xlt[nx] = 0 /\ hw[nx] = "none" /\ ~hok[nx] /\ iv[nx] = "none"
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, XX2v, Xids, Sizes, Location, Design
<2>4. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g] /\ m.pe = hp[r][m.g]
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY Design, <2>1, <2>2, <2>3, <2>4, <1>TfbBw4J1UlUiS0, SMTT(10), Sizes, Location DEF DRecvReq, xV, XX2v, ZhBZ, HiUz, qcWy, I3KH, Vikm, bpmgv4, loK6p, H3aTc, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0944_PdRDPort_PdD2RecvProjection

\* T2M-SCOPE R2M0945_PdRDPort_PdD2RecvPageMasks
\* T2M-BODY R2M0945_PdRDPort_PdD2RecvPageMasks
\* T2M-LOCAL-VISIBILITY

<1>uLQaF6cD31.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, pst[p] # "free", PinInv, DRecvReq(j,r)
  PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p]>>
<2> USE ONLY <1>uLQaF6cD31, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ vwKWM /\ eWP7z1 /\ ZpUxx
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, KPages, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ePXVRO17SLCMdno.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r)
  PROVE sfly'[p] \subseteq sled'[p]
<2> USE ONLY <1>ePXVRO17SLCMdno, Sizes, Location, Design
<2>1. K6 /\ sBjpCf /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K6, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, K6, sBjpCf, a4GqBP, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ve10cCIIumsW.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, NEW x \in Xids, PinInv, DRecvReq(j,r), x < nx
  PROVE (x \in led'[p]) <=> (x \in led[p])
<2> USE ONLY <1>Ve10cCIIumsW, Sizes, Location, Design
<2>1. ZpUxx /\ XX2v /\ X6zX5 /\ (pst[p] = "free" => led[p] = {})
  BY <1>TLVER4XMUn, <1>P8wPGlIVJNzu, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, <1>P8wPGlIVJNzu, Design, SMTT(10), Sizes, Location DEF DRecvReq, ZpUxx, XX2v, X6zX5, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uTmlTEykyx6Z.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, NEW x \in led'[p], PinInv, DRecvReq(j,r)
  PROVE (x \in led[p]) \/
        (x = nx /\ nx' = nx+1 /\ xr'[x] = r /\ xg'[x] \in Gens /\ xdst'[x] = p /\ pst'[p] = "priv" /\ pr'[p] = r /\ pgn'[p] = xg'[x])
<2> USE ONLY <1>uTmlTEykyx6Z, Sizes, Location, Design
<2>1. XX2v /\ ZpUxx /\ X6zX5 /\ gv2_ /\ PwqP6 /\ ZhBZ /\ HiUz /\ bpmgv4
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) => m.g \in Gens
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>P8wPGlIVJNzu, Design, Sizes, SMTT(10), Location DEF DRecvReq, Xids, XX2v, ZpUxx, X6zX5, gv2_, PwqP6, ZhBZ, HiUz, bpmgv4, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AZnsmVkjsJdnuW.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), nx' = nx+1
  PROVE nx \in led'[xdst'[nx]]
<2> USE ONLY <1>AZnsmVkjsJdnuW, Sizes, Location, Design
<2>1. XX2v /\ ZpUxx /\ bpmgv4
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. nx \in Xids
  BY <2>1, <1>Aa7MB, SMTT(10), Sizes, Location, Design DEF XX2v, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF DRecvReq, xV, XX2v, ZpUxx, bpmgv4, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0945_PdRDPort_PdD2RecvPageMasks


<1>qmmnGcYLb5h.         PinInv => CoreTypeOK
 BY ZenonT(10), V21_Inv_BaseTypeOK, Sizes, Location, Design DEF Sizes, Location, Design


<1>R3YtSwiPG37j.        
 PinInv => iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY V22_T_iv, V22_T_pst, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>vPwSTNJzLq83jqa4dbP.        
 ASSUME PinInv
 PROVE \A x \in Xids : hw[x] # "none" => x<nx
<2> USE ONLY <1>vPwSTNJzLq83jqa4dbP, Sizes, Location, Design
<2>1. K2 /\ nx \in 1..(MX+1)
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>vPwSTNJzLq83jqa4dbP, V22_T_nx, V21_Inv_K2, Sizes, Location, Design, SMTT(5)

<2>2. QED BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, Xids, Sizes, Location, Design


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

<1>AXYHFi40nL25VQJTk.        
  ASSUME NEW x \in Xids, K2', K3', K4', XX2v', InFl(x)'
  PROVE /\ xdst'[x] \in Pages /\ x \in led'[xdst'[x]]
        /\ (hw'[x] = "fly" => xsrc'[x] \in Pages /\ x \in led'[xsrc'[x]])
<2> USE ONLY <1>AXYHFi40nL25VQJTk, Sizes, Location, Design
<2>1. x < nx'
  BY Sizes, SMTT(10), Location, Design DEF K2, XX2v, Xids, InFl, Sizes, Location, Design
<2>2. /\ xst'[x] = "posted"
       /\ iv'[x] \in {"posted","failret","cqe"}
       /\ (hw'[x] = "fly" => iv'[x] \in {"posted","failret"})
       /\ (xk'[x] = "rd" => iv'[x] \in {"posted","failret"})
  BY SMTT(10), Sizes, Location, Design DEF K3, InFl, Sizes, Location, Design
<2>3. ExpPage(x)' \in Pages /\ InitPage(x)' \in Pages /\ xk'[x] \in {"wr","rd"}
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K2, Sizes, Location, Design
<2>4. x \in led'[ExpPage(x)']
       /\ (iv'[x] \in {"posted","failret"} => x \in led'[InitPage(x)'])
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K4, Sizes, Location, Design
<2>5. QED BY <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF ExpPage, InitPage, Sizes, Location, Design


<1>xsKh4bJsAP9m1TA2xXe.        
  ASSUME K2', K3', K4', K5', K6', K14', XX2v', NoFreeUnderRead'
  PROVE NoStrayAccess'
<2> USE ONLY <1>xsKh4bJsAP9m1TA2xXe, Sizes, Location, Design
<2>1. \A x \in Xids : Writing(x)' => Held(xdst[x],x)'
  BY <1>AXYHFi40nL25VQJTk, SMTT(10), Sizes, Location, Design DEF Writing, K5, OwnedBy, Held, Sizes, Location, Design
<2>2. \A x \in Xids : hw'[x] = "fly" => Held(xsrc[x],x)'
  BY <1>AXYHFi40nL25VQJTk, SMTT(10), Sizes, Location, Design DEF InFl, K5, OwnedBy, Held, Sizes, Location, Design
<2>3. \A p \in Pages : \A t \in sfly'[p] :
       \/ pst'[p] \in {"priv","drain","quar"} /\ pr'[p] = t[1] /\ pgn'[p] = t[2]
       \/ pst'[p] = "shared" /\ IsD(Loc(p))
  BY SMTT(10), Sizes, Location, Design DEF K6, OwnedBy, Sizes, Location, Design
<2>4. \A i \in Inst, s \in KSlots : kfly'[i][s] => \A e \in krs'[i][s] : KHeld(e)'
  BY SMTT(10), Sizes, Location, Design DEF K14, NoFreeUnderRead, Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF NoStrayAccess, Sizes, Location, Design
\* T2M-END R2M0711_PdRDPort_PdD2SafetyFromStructure


<1>dszB6htB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K2'
<2> USE ONLY <1>dszB6htB, Sizes, Location, Design
<2>1. K2 /\ K2 /\ XX2v /\ UNCHANGED gen
  BY <1>TLVER4XMUn, <1>TfbBw4J1UlUiS0, SMTT(10), V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. nx' = nx \/ (nx' = nx+1 /\ Mode = "push" /\ nx \in Xids)
  BY <1>Aa7MB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW x \in Xids PROVE K2RecvPointD2(x)'
<3>1. CASE nx' = nx
  BY <3>1, <2>1, <1>TfbBw4J1UlUiS0, <1>GW2Ridkw0Uh7W, SMTT(10), Sizes, Location, Design DEF K2, K2RecvPointD2, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, xV, Sizes, Location, Design
<3>2. CASE nx' # nx /\ x # nx
<4>1. UNCHANGED <<xr[x],xg[x],xk[x],xp[x],xd[x],xsrc[x],xdst[x],xnt[x],xst[x],xlt[x],hw[x],hok[x],iv[x]>>
  BY <3>2, <1>aCcmVax, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. (x < nx <=> x < nx') /\ (x >= nx <=> x >= nx')
  BY ONLY <2>1, <2>2, <2>3, <3>2, Sizes, SMTT(10), Location, Design DEF XX2v, Xids, Sizes, Location, Design
<4>3. QED BY <2>1, <4>1, <4>2, <1>TfbBw4J1UlUiS0, SMTT(10), Sizes, Location, Design DEF K2, K2RecvPointD2, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, InitPage, ExpPage, InitInst, ExpInst, InFl, Sizes, Location, Design
<3>3. CASE nx' # nx /\ x = nx
<4>1. nx' = nx+1
  BY <2>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. QED BY <2>1, <2>2, <3>3, <4>1, <1>LvaLEbZHe, <1>TfbBw4J1UlUiS0, Sizes, SMTT(10), Location, Design DEF K2, K2RecvPointD2, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, InitPage, ExpPage, InitInst, ExpInst, InFl, XX2v, Xids, Sizes, Location, Design
<3>4. QED BY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K2, K2RecvPointD2, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, Sizes, Location, Design
\* T2M-END R2M0985_PdRDPort_PdD2DRecvReq_K2


<1>udqJbHmi.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K3'
<2> USE ONLY <1>udqJbHmi, Sizes, Location, Design
<2>1. K3 /\ K2 /\ XX2v /\ UNCHANGED gen
  BY <1>TLVER4XMUn, <1>TfbBw4J1UlUiS0, SMTT(10), V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. nx' = nx \/ (nx' = nx+1 /\ Mode = "push" /\ nx \in Xids)
  BY <1>Aa7MB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW x \in Xids PROVE K3RecvPointD2(x)'
<3>1. CASE nx' = nx
  BY <3>1, <2>1, <1>TfbBw4J1UlUiS0, <1>GW2Ridkw0Uh7W, SMTT(10), Sizes, Location, Design DEF K3, K3RecvPointD2, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, xV, Sizes, Location, Design
<3>2. CASE nx' # nx /\ x # nx
<4>1. UNCHANGED <<xr[x],xg[x],xk[x],xp[x],xd[x],xsrc[x],xdst[x],xnt[x],xst[x],xlt[x],hw[x],hok[x],iv[x]>>
  BY <3>2, <1>aCcmVax, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. x < nx <=> x < nx'
  BY <2>1, <2>2, <3>2, Sizes, SMTT(10), Location, Design DEF XX2v, Xids, Sizes, Location, Design
<4>3. QED BY <2>1, <4>1, <4>2, <1>TfbBw4J1UlUiS0, SMTT(10), Sizes, Location, Design DEF K3, K3RecvPointD2, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, InitPage, ExpPage, InitInst, ExpInst, InFl, Sizes, Location, Design
<3>3. CASE nx' # nx /\ x = nx
<4>1. nx' = nx+1
  BY <2>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. QED BY <2>1, <2>2, <3>3, <4>1, <1>LvaLEbZHe, <1>TfbBw4J1UlUiS0, Sizes, SMTT(10), Location, Design DEF K3, K3RecvPointD2, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, InitPage, ExpPage, InitInst, ExpInst, InFl, XX2v, Xids, Sizes, Location, Design
<3>4. QED BY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K3, K3RecvPointD2, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, Sizes, Location, Design
\* T2M-END R2M0986_PdRDPort_PdD2DRecvReq_K3


<1>RjF96UaA.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K4'
<2> USE ONLY <1>RjF96UaA, Sizes, Location, Design
<2>1. K2 /\ K4 /\ ZpUxx /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K2, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. ASSUME NEW x \in Xids, x < nx'
       PROVE /\ (x \in led'[ExpPage(x)']) <=> (xst'[x] = "posted")
             /\ InitPage(x)' \in Pages => ((x \in led'[InitPage(x)']) <=> (iv'[x] \in {"reg","posted","failret"}))
<3>1. CASE x < nx
<4>1. UNCHANGED <<xr[x],xg[x],xk[x],xp[x],xd[x],xsrc[x],xdst[x],xst[x],iv[x]>>
  BY <3>1, <1>aCcmVax, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. ExpPage(x) \in Pages
  BY <2>1, <3>1, Sizes, SMTT(10), Location, Design DEF K2, XX2v, Xids, Sizes, Location, Design
<4>3. QED BY <2>1, <2>2, <3>1, <4>1, <4>2, <1>Ve10cCIIumsW, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, InitPage, Sizes, Location, Design
<3>2. CASE x >= nx
<4>1. x = nx /\ nx' = nx+1
  BY <2>1, <2>2, <3>2, <1>Aa7MB, Sizes, SMTT(10), Location, Design DEF XX2v, Xids, Sizes, Location, Design
<4>2. QED BY <4>1, <1>LvaLEbZHe, <1>AZnsmVkjsJdnuW, Sizes, SMTT(10), Location, Design DEF ExpPage, InitPage, Pages, Sizes, Location, Design
<3>3. QED BY <2>1, <3>1, <3>2, Sizes, SMTT(10), Location, Design DEF XX2v, Xids, Sizes, Location, Design
<2>3. ASSUME NEW p \in Pages, NEW x \in led'[p]
       PROVE x < nx' /\ (p = ExpPage(x)' \/ p = InitPage(x)')
<3>1. CASE x \in led[p]
<4>1. x \in Xids /\ x < nx /\ (p = ExpPage(x) \/ p = InitPage(x))
  BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF K4, ZpUxx, Sizes, Location, Design
<4>2. QED BY <2>1, <4>1, <1>aCcmVax, <1>Aa7MB, Sizes, SMTT(10), Location, Design DEF ExpPage, InitPage, XX2v, Xids, Sizes, Location, Design
<3>2. CASE x \notin led[p]
<4>1. x = nx /\ nx' = nx+1 /\ xdst'[x] = p
  BY <3>2, <1>uTmlTEykyx6Z, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. QED BY <2>1, <4>1, <1>LvaLEbZHe, Sizes, SMTT(10), Location, Design DEF ExpPage, XX2v, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K4, Sizes, Location, Design
\* T2M-END R2M0987_PdRDPort_PdD2DRecvReq_K4

\* T2M-SCOPE R2M0988_PdRDPort_PdD2DRecvReq_K5

<1>oYc8T6Pp.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K5'
<2> USE ONLY <1>oYc8T6Pp, Sizes, Location, Design
<2>1. K5 /\ K4 /\ ZpUxx
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K4, V21_Inv_K5, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. ASSUME NEW p \in Pages, NEW x \in led'[p] PROVE OwnedBy(p,xr[x],xg[x])'
<3>1. CASE x \in led[p]
<4>1. x \in Xids /\ x < nx /\ OwnedBy(p,xr[x],xg[x]) /\ pst[p] # "free"
  BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF K4, K5, OwnedBy, ZpUxx, Sizes, Location, Design
<4>2. QED BY <4>1, <1>aCcmVax, <1>uLQaF6cD31, SMTT(10), Sizes, Location, Design DEF OwnedBy, Sizes, Location, Design
<3>2. CASE x \notin led[p]
  BY <3>2, <1>uTmlTEykyx6Z, SMTT(10), Sizes, Location, Design DEF OwnedBy, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF K5, Sizes, Location, Design
\* T2M-END R2M0988_PdRDPort_PdD2DRecvReq_K5

\* T2M-SCOPE R2M0989_PdRDPort_PdD2DRecvReq_K6

<1>VR1jTvyp.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K6'
<2> USE ONLY <1>VR1jTvyp, Sizes, Location, Design
<2>1. K6 /\ a4GqBP /\ sBjpCf /\ X6zX5 /\ gv2_ /\ PwqP6 /\ UNCHANGED gen
  BY <1>TLVER4XMUn, <1>TfbBw4J1UlUiS0, SMTT(10), V21_Inv_K6, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A p \in Pages : sfly'[p] \subseteq sled'[p]
  BY <1>ePXVRO17SLCMdno, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) => m.g \in Gens /\ m.g <= gen[r]
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in Pages, NEW t \in sled'[p]
       PROVE t[2] <= gen'[t[1]] /\ (OwnedBy(p,t[1],t[2])' \/ (pst'[p] = "shared" /\ IsD(Loc(p))))
<3>1. CASE t \in sled[p]
<4>1. pst[p] # "free" /\ t[2] <= gen[t[1]] /\ (OwnedBy(p,t[1],t[2]) \/ (pst[p] = "shared" /\ IsD(Loc(p))))
  BY <2>1, <3>1, <1>P8wPGlIVJNzu, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
<4>2. QED BY <2>1, <4>1, <1>uLQaF6cD31, SMTT(10), Sizes, Location, Design DEF OwnedBy, Sizes, Location, Design
<3>2. CASE t \notin sled[p]
  BY Design, <2>1, <2>3, <2>4, <3>2, SMTT(10), Sizes, Location DEF DRecvReq, a4GqBP, X6zX5, Tag, DResetLedger, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
\* T2M-END R2M0989_PdRDPort_PdD2DRecvReq_K6


<1>QRkvW9lvz7PylQp9D4m.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE NoStrayAccess'
<2> USE ONLY <1>QRkvW9lvz7PylQp9D4m, Sizes, Location, Design
<2>1. K2' /\ K3' /\ K4' /\ K5' /\ K6' /\ NoFreeUnderRead' /\ K14'
  BY <1>dszB6htB, <1>udqJbHmi, <1>RjF96UaA, <1>oYc8T6Pp, <1>VR1jTvyp, <1>UCrkZhbNhpAGY4SU3ILlB, <1>W9Xt61fok, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>3. XX2v'
  BY <2>2, <1>Aa7MB, Sizes, SMTT(10), Location, Design DEF XX2v, Xids, Sizes, Location, Design
<2>4. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. RD_SFrame /\ UNCHANGED spst
 BY <2>4, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>5, <2>1, <2>3, <1>xsKh4bJsAP9m1TA2xXe, SMTT(10), Sizes, Location, Design DEF RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M0990_PdRDPort_PdD2DRecvReq_NoStrayAccess


<1>vF0U73lrzCzCjMrtKSwBNT.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE NoStrayAccess'
 BY ONLY <1>vF0U73lrzCzCjMrtKSwBNT, Sizes, Location, Design, <1>QRkvW9lvz7PylQp9D4m, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>pKZHVuY8rKqV.        
 ASSUME PinInv, SFollow, UNCHANGED hw
 PROVE UNCHANGED xprefixOK
<2> USE ONLY <1>pKZHVuY8rKqV, Sizes, Location, Design
<2>1. STypeOK BY ONLY <1>pKZHVuY8rKqV, Sizes, Location, Design, <1>lQA2, SMTT(10) DEF Sizes, Location, Design
<2>2. CASE ~B2 BY ONLY <1>pKZHVuY8rKqV, Sizes, Location, Design, <2>2, <2>2, SMTT(10), V21_SFollowOff DEF sV, Sizes, Location, Design
<2>3. CASE B2 BY ONLY <1>pKZHVuY8rKqV, Sizes, Location, Design, <2>3, <2>1, <2>3, <1>HyTxass4cKRoY43Ha, SMTT(10) DEF STypeOK, RD_XPrefixUpdate, Sizes, Location, Design
<2>4. QED BY ONLY <1>pKZHVuY8rKqV, Sizes, Location, Design, <2>2, <2>3, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZILTCH9iBT8cyR.        
 ASSUME B2, PinInv, SFollow, UNCHANGED xsrc, RD_EntryRange
 PROVE \A x \in sentry' : x \in sentry /\
           (IF xk[x]="wr" THEN iv'[x] \in {"reg","posted","failret"} ELSE xst'[x]="posted")
<2> USE ONLY <1>ZILTCH9iBT8cyR, Sizes, Location, Design
<2>1. RD_EQUpdate /\ STypeOK
 BY <1>y69bbnw8OExl0j, <1>lQA2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, SMTT(10), Location, Design DEF RD_EQUpdate, RD_E2, RD_Posted, RD_Close, RD_EntryRange, STypeOK, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eCzjL4PMdcNbssJhsk.        
 ASSUME PinInv
 PROVE \A i \in Inst,r \in Rq : Active(i,r) => rpg[i][r] \in Pages /\ Loc(rpg[i][r])=i
 BY ONLY <1>eCzjL4PMdcNbssJhsk, Sizes, Location, Design, SMTT(10), V21_Inv_K8 DEF K8, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>b8FOS7RlDgygbk6kJ4t.        
 ASSUME PinInv
 PROVE \A x \in Xids : xdst[x] \in Pages => IsD(Loc(xdst[x]))
<2> USE ONLY <1>b8FOS7RlDgygbk6kJ4t, Sizes, Location, Design
<2>1. K1 /\ K2 /\ nx \in 1..(MX+1)
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>b8FOS7RlDgygbk6kJ4t, V22_T_nx, V21_Inv_K1, V21_Inv_K2, Sizes, Location, Design, SMTT(5)

<2>2. ASSUME NEW x \in Xids, xdst[x] \in Pages PROVE IsD(Loc(xdst[x]))
 <3>1. x<nx BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, Pages, Xids, Sizes, Location, Design
 <3>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x]<=gen[xr[x]] /\ xd[x]=hd[xr[x]][xg[x]] /\ Loc(xdst[x])=xd[x]
 BY <2>1, <2>2, <3>1, Design, Sizes, SMTT(10), Location DEF K2, Pages, ExpPage, ExpInst, InitPage, InitInst, Sizes, Location, Design
 <3>3. xd[x] \in DInst
  <4>fxRouter. \A g \in Gens : g <= gen[xr[x]] => hd[xr[x]][g] \in DInst
   BY ONLY <2>1, <3>2, ZenonT(5) DEF K1
  <4>fxGeneration. hd[xr[x]][xg[x]] \in DInst
   BY ONLY <3>2, <4>fxRouter, SMTT(5)
  <4>fxDone. QED BY ONLY <3>2, <4>fxGeneration, SMTT(5)
 <3>4. QED BY <3>2, <3>3, Sizes, SMTT(10), Location, Design DEF DInst, IsD, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qMRysA0Y1KQeN.        
 ASSUME PinInv, nx' \in Int, nx' >= nx
 PROVE \A x \in Xids : x<nx => x<nx'
<2> USE ONLY <1>qMRysA0Y1KQeN, Sizes, Location, Design
<2>1. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>qMRysA0Y1KQeN, V22_T_nx, SMTT(5)

<2>2. QED BY <2>1, Sizes, SMTT(10), Location, Design DEF Xids, Sizes, Location, Design
\* T2M-END R2M1345_PdRDR2Location


<1>O0v6w7ZUTgX.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED xsrc, RD_SI4Keys,
        RD_EntryRange, RD_PrefixBack, RD_CoverBack
 PROVE P_SI4'
<2> USE ONLY <1>O0v6w7ZUTgX, Sizes, Location, Design
<2>1. P_SI4 /\ SI8 /\ STypeOK
 BY SMTT(10), V21_Inv_P_SI4, V21_Inv_SI8, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2a. \A x \in Xids : x<nx => x<nx'
 BY <1>qMRysA0Y1KQeN, SMTT(10), Sizes, Location, Design DEF RD_SI4Keys, Sizes, Location, Design
<2>3. CASE ~B2 BY <2>3, SMTT(10), Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>4. CASE B2
 <3>1. \A x \in sentry' : x \in sentry /\
           (IF xk[x]="wr" THEN iv'[x] \in {"reg","posted","failret"} ELSE xst'[x]="posted")
 BY <2>4, <1>ZILTCH9iBT8cyR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. squar \subseteq squar' BY <2>4, <1>WNRe9PPHkoFy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. ASSUME NEW x \in Xids, hw'[x]="fly"
        PROVE x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
  <4>1. x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
  BY <2>1, <2>4, <3>3, SMTT(10), Sizes, Location, Design DEF RD_CoverBack, P_SI4, SI4, SI8, Sizes, Location, Design
  <4>2. ~RD_Close(x) BY <3>3, SMTT(10), Sizes, Location, Design DEF RD_CoverBack, Sizes, Location, Design
  <4>3. QED BY <2>2, <2>4, <3>2, <3>3, <4>1, <4>2, <1>vyedVpubW3KMqNND, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY <2>1, <2>2, <2>2a, <2>4, <3>1, <3>3, SMTT(20), Sizes, Location, Design DEF P_SI4, SI4, RD_SI4Keys, RD_SFrame, RD_PrefixBack, STypeOK, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NI8LNrVhbLzmK1T.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE P_SI4'
<2> USE ONLY <1>NI8LNrVhbLzmK1T, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,hw,iv>>
 BY <1>dKYsfmWiThR9rkh, <1>TfbBw4J1UlUiS0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. (B2 => SI4) /\ K3 /\ STypeOK
 BY <1>lQA2, SMTT(10), V21_Inv_K3, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>3. CASE ~B2 BY <2>3, SMTT(10), Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>4. CASE B2
 <3>1. \A x \in Xids : (xsrcS[x] # {} \/ x \in sentry) => x # nx
 BY <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF SI4, STypeOK, Sizes, Location, Design
 <3>2. RD_SI4Keys
 BY <3>1, <1>Aa7MB, <1>aCcmVax, <1>EnXJwndWG1D4vkee, Sizes, SMTT(10), Location, Design DEF RD_SI4Keys, RD_NxType, Sizes, Location, Design
 <3>3. RD_EntryRange
 BY <2>2, <2>4, <3>1, <1>aCcmVax, SMTT(10), Sizes, Location, Design DEF RD_EntryRange, SI4, STypeOK, Sizes, Location, Design
 <3>4. RD_PrefixBack BY <2>1, <1>pKZHVuY8rKqV, SMTT(10), Sizes, Location, Design DEF RD_PrefixBack, Sizes, Location, Design
 <3>4a. \A x \in Xids : hw[x]="fly" => x # nx
 BY <1>vPwSTNJzLq83jqa4dbP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>5. RD_CoverBack BY <2>1, <2>2, <3>4a, <1>aCcmVax, SMTT(10), Sizes, Location, Design DEF RD_CoverBack, RD_Close, K3, CqeHw, InFl, Sizes, Location, Design
 <3>6. QED BY <2>1, <3>2, <3>3, <3>4, <3>5, <1>O0v6w7ZUTgX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1347_PdRDR2SI4_DRecvReq


<1>XdqzW5jl.        
 ASSUME PinInv, NEW x \in Xids, iv[x]="reg"
 PROVE x<nx /\ xk[x]="wr" /\ xsrc[x] \in Pages /\ IsP(Loc(xsrc[x])) /\ x \in led[xsrc[x]] /\ pst[xsrc[x]] # "quar"
<2> USE ONLY <1>XdqzW5jl, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ QuarNoReg /\ CoreTypeOK
 BY SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x<nx /\ xk[x]="wr"
 <3>nx. nx \in 1..(MX+1)
  
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>XdqzW5jl, V22_T_nx, SMTT(5)

 <3>ints. x \in Int /\ nx \in Int
  BY ONLY <1>XdqzW5jl, <3>nx, SMTT(5) DEF Xids
 <3>fresh. \A z \in Xids : z>=nx => iv[z]="none"
  BY ONLY <2>1, ZenonT(5) DEF K2
 <3>allocated. x<nx
  BY ONLY <1>XdqzW5jl, <3>ints, <3>fresh, SMTT(5)
 <3>kind. xk[x]="wr"
  BY ONLY <1>XdqzW5jl, <2>1, SMTT(5) DEF K3
 <3>qed. QED BY ONLY <3>allocated, <3>kind, SMTT(5)
<2>3. xsrc[x] \in Pages /\ Loc(xsrc[x])=xp[x] /\ xp[x] \in PInst
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, K2, InitPage, InitInst, Sizes, Location, Design
<2>4. x \in led[xsrc[x]]
 BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K4, InitPage, Sizes, Location, Design
<2>5. IsP(Loc(xsrc[x])) /\ pst[xsrc[x]] # "quar"
 BY <2>1, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF IsP, PInst, QuarNoReg, Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LtS8BOkI8O0OfmUpHR9.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE RD_RegSafe
<2> USE ONLY <1>LtS8BOkI8O0OfmUpHR9, Sizes, Location, Design
<2> DEFINE FX_REG_E == iv'=iv /\ (pst'=pst \/ \E q \in Pages : pst'=[pst EXCEPT ![q]="priv"])
<2> HIDE DEF FX_REG_E
<2>fx. FX_REG_E
 BY ONLY <1>LtS8BOkI8O0OfmUpHR9, ZenonT(10) DEF FX_REG_E, DRecvReq, xV
<2>1. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 BY ONLY <1>LtS8BOkI8O0OfmUpHR9, <1>R3YtSwiPG37j, SMTT(5)
<2>fiv. iv'=iv
 BY ONLY <2>fx, ZenonT(5) DEF FX_REG_E
<2>2. \A z \in Xids : iv'[z]="reg" => iv[z]="reg"
 BY ONLY <2>1, <2>fiv, SMTT(5)
<2>3. ASSUME NEW y \in Xids, iv'[y]="reg" PROVE pst'[xsrc[y]] # "quar"
 <3>1. iv[y]="reg" BY ONLY <2>3, <2>2, SMTT(5)
 <3>2. y<nx /\ xk[y]="wr" /\ xsrc[y] \in Pages /\ IsP(Loc(xsrc[y])) /\ y \in led[xsrc[y]] /\ pst[xsrc[y]] # "quar"
 BY ONLY <1>LtS8BOkI8O0OfmUpHR9, <2>3, <3>1, <1>XdqzW5jl, SMTT(5)
 <3>pst. pst'=pst \/ \E q \in Pages : pst'=[pst EXCEPT ![q]="priv"]
  BY ONLY <2>fx, ZenonT(5) DEF FX_REG_E
 <3>qed. QED BY ONLY <2>1, <3>2, <3>pst, SMTT(5)
<2>4. RD_RegSafe BY ONLY <2>2, <2>3, SMTT(5) DEF RD_RegSafe
<2>5. QED BY ONLY <2>4, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>XBdE5iLtx.         P_SI5 => (B2 => RD_SI5Quar /\ RD_SI5Stop /\ RD_SI5Map)
 BY SMTT(10), Sizes, Location, Design DEF P_SI5, SI5, RD_SI5Quar, RD_SI5Stop, RD_SI5Map, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fErdwnjvr21LizP.        
 ASSUME B2, PinInv, SFollow, RD_PFrame, UNCHANGED xsrc, RD_KeyOnSource,
        nx' \in Int /\ nx' >= nx, RD_RegSafe
 PROVE RD_SI5Quar'
<2> USE ONLY <1>fErdwnjvr21LizP, Sizes, Location, Design
<2>1. P_SI5 /\ SI4 /\ STypeOK /\ RD_SI5Quar
 BY <1>lQA2, <1>XBdE5iLtx, SMTT(10), V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RD_EQUpdate BY <1>y69bbnw8OExl0j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3a. \A x \in Xids : x<nx => x<nx'
 BY <1>qMRysA0Y1KQeN, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW h \in squar' PROVE h[1]<nx' /\ h[2] \in xsrcS'[h[1]] /\ spst'[h[2]]="shared" /\ skey'[h[2]]=STok(xr'[h[1]],xg'[h[1]]) /\ iv'[h[1]] # "reg"
 <3>1. h \in squar \/ (h \in Xids \X SPages /\ h[1] \in sentry /\ h[2] \in xsrcS[h[1]] /\ RD_Quarantine(h[1]))
 BY <2>1, <2>3, <2>4, SMTT(20), Sizes, Location, Design DEF RD_EQUpdate, RD_Q2, RD_Quarantine, STypeOK, Sizes, Location, Design
 <3>2. h[1] \in Xids /\ h[2] \in SPages /\ h[1]<nx /\ h[2] \in xsrcS[h[1]] /\ spst[h[2]]="shared" /\ skey[h[2]]=STok(xr[h[1]],xg[h[1]])
 BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF RD_SI5Quar, SI4, STypeOK, Sizes, Location, Design
 <3>3. iv'[h[1]] # "reg"
 BY <2>1, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF RD_SI5Quar, RD_RegSafe, RD_Quarantine, Sizes, Location, Design
 <3>4. QED BY <2>2, <2>3a, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF RD_KeyOnSource, RD_SFrame, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF RD_SI5Quar, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jF87HmB4Cu8WHjr.        
 ASSUME B2, PinInv, SFollow, RD_NoStop, RD_StopBack
 PROVE RD_SI5Stop'
<2> USE ONLY <1>jF87HmB4Cu8WHjr, Sizes, Location, Design
<2>1. P_SI5 /\ RD_SI5Stop BY <1>XBdE5iLtx, SMTT(10), V21_Inv_P_SI5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A p \in Pages : pst[p] # "free" => dpreOK'[p]=dpreOK[p]
 BY <1>YCfapvemrZ4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_StopBack, RD_SI5Stop, Held, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>q8zxJ6ek1XjRPz.        
 ASSUME B2, PinInv, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE RD_SI5Map'
<2> USE ONLY <1>q8zxJ6ek1XjRPz, Sizes, Location, Design
<2>1. P_SI5 /\ RD_SI5Map BY <1>XBdE5iLtx, SMTT(10), V21_Inv_P_SI5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<spst,smap>> BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_PFrame, RD_SI5Map, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QYS9t7p6Fr.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED xsrc,
        B2 => RD_KeyOnSource /\ nx' \in Int /\ nx' >= nx /\ RD_RegSafe /\ RD_NoStop /\ RD_StopBack
 PROVE P_SI5'
<2> USE ONLY <1>QYS9t7p6Fr, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, SMTT(10), Sizes, Location, Design DEF P_SI5, Sizes, Location, Design
<2>2. CASE B2
 <3>1. RD_SI5Quar' /\ RD_SI5Stop' /\ RD_SI5Map'
 BY <2>2, <1>fErdwnjvr21LizP, <1>jF87HmB4Cu8WHjr, <1>q8zxJ6ek1XjRPz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>2, <3>1, SMTT(10), Sizes, Location, Design DEF P_SI5, SI5, RD_SI5Quar, RD_SI5Stop, RD_SI5Map, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1351_PdRDR2SI5Base


<1>IGf9qUEwdO.        
 ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
 PROVE IsD(j) /\ \E m \in net : RD_R2ReqPageUpdate(j,r,m)
 BY ONLY <1>IGf9qUEwdO, Sizes, Location, Design, ZenonT(10) DEF DRecvReq, RD_R2ReqPageUpdate, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gEGytK9AdLN8dJV.        
 ASSUME NEW j \in Inst, NEW r \in Rq, NEW x \in Xids, NEW m \in net,
        PinInv, IsD(j), m.t="req", m.to=j, m.r=r, NewGen(j,r,m.g),
        hw[x]="stop", xr[x]=r, xg[x]=m.g
 PROVE FALSE
<2> USE ONLY <1>gEGytK9AdLN8dJV, Sizes, Location, Design
<2>1. K2 /\ K3 /\ S1 /\ S6
 BY ZenonT(10), V21_Inv_K2, V21_Inv_K3, V21_Inv_S1, V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x<nx BY <1>vPwSTNJzLq83jqa4dbP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. m.g \in Gens /\ j=hd[r][m.g] BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. xd[x]=j /\ xk[x]=(IF Mode="push" THEN "wr" ELSE "rd")
 BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>5. ph[j][r] # "none" /\ rg[j][r] >= m.g
 <3>1. CASE Mode="push"
 BY <2>1, <2>2, <2>4, <3>1, SMTT(10), Sizes, Location, Design DEF S1, ExpInst, Sizes, Location, Design
 <3>2. CASE Mode="pull"
  <4>1. InitPage(x) # 0 BY <2>1, <2>2, <3>2, SMTT(10), Sizes, Location, Design DEF K2, K3, Sizes, Location, Design
  <4>2. QED BY <2>1, <2>2, <2>4, <3>2, <4>1, SMTT(10), Sizes, Location, Design DEF S6, InitInst, Sizes, Location, Design
 <3>3. QED BY <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF Sizes, Location, Design
<2>6. rg \in [Inst -> [Rq -> 0..MG]] 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>gEGytK9AdLN8dJV, V22_T_rg, SMTT(5)

<2>7. QED BY <2>3, <2>5, <2>6, Design, Sizes, SMTT(10), Location DEF NewGen, Gens, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FI7KvxKzEifu0.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
 PROVE RD_StopBack
<2> USE ONLY <1>FI7KvxKzEifu0, Sizes, Location, Design
<2>1. nx \in 1..(MX+1) /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
       /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>FI7KvxKzEifu0, V22_T_nx, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>2. UNCHANGED <<hw,hok>> BY <1>TfbBw4J1UlUiS0, ZenonT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : IsD(j) /\ RD_R2ReqPageUpdate(j,r,m)
 BY <1>IGf9qUEwdO, ZenonT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW x \in Xids, hw'[x]="stop", hok'[x], xdst'[x] \in Pages, Held(xdst[x],x)'
 PROVE hw[x]="stop" /\ hok[x] /\ xdst'[x]=xdst[x] /\ Held(xdst[x],x)
 <3>1. hw[x]="stop" /\ hok[x] BY <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. x<nx /\ x # nx BY <2>1, <3>1, <1>vPwSTNJzLq83jqa4dbP, Sizes, SMTT(10), Location, Design DEF Xids, Sizes, Location, Design
 <3>3. UNCHANGED <<xr[x],xg[x],xdst[x]>> BY <3>2, <1>aCcmVax, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. xdst[x] \in Pages BY <2>4, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>5. CASE UNCHANGED <<pst,pr,pgn>>
 BY <2>4, <3>1, <3>3, <3>5, SMTT(10), Sizes, Location, Design DEF Held, Sizes, Location, Design
 <3>6. CASE \E q \in Pages : pst'=[pst EXCEPT ![q]="priv"] /\ pr'=[pr EXCEPT ![q]=r] /\ pgn'=[pgn EXCEPT ![q]=m.g]
  <4>1. PICK q \in Pages : pst'=[pst EXCEPT ![q]="priv"] /\ pr'=[pr EXCEPT ![q]=r] /\ pgn'=[pgn EXCEPT ![q]=m.g]
  BY <3>6, ZenonT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. q # xdst[x]
   <5>1. ASSUME q=xdst[x] PROVE FALSE
    <6>1. xr[x]=r /\ xg[x]=m.g
    BY <2>1, <2>4, <3>3, <3>4, <4>1, <5>1, SMTT(10), Sizes, Location, Design DEF Held, Sizes, Location, Design
    <6>2. QED BY <2>3, <3>1, <6>1, <1>gEGytK9AdLN8dJV, SMTT(10), Sizes, Location, Design DEF RD_R2ReqPageUpdate, Sizes, Location, Design
   <5>2. QED BY <5>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. QED BY <2>1, <2>4, <3>1, <3>3, <3>4, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF Held, Sizes, Location, Design
 <3>7. QED BY <2>3, <3>5, <3>6, SMTT(10), Sizes, Location, Design DEF RD_R2ReqPageUpdate, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF RD_StopBack, Sizes, Location, Design
\* T2M-END R2M1375_PdRDR2Req


<1>iQ4NGPIiDX2RZQa.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE P_SI5'
<2> USE ONLY <1>iQ4NGPIiDX2RZQa, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K8 /\ K9 /\ K10 /\ K7 /\ QuarNoReg /\ CoreTypeOK
 BY SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_RegSafe BY <1>LtS8BOkI8O0OfmUpHR9, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. RD_PFrame /\ UNCHANGED xsrc
 BY <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. RD_NoStop /\ nx' \in Int /\ nx' >= nx
 <3>1. UNCHANGED hw /\ (nx'=nx \/ nx'=nx+1)
  BY ONLY <1>iQ4NGPIiDX2RZQa, SMTT(20), Sizes, Location, Design DEF DRecvReq, xV, Sizes, Location, Design
 <3>2. nx \in Int
  
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>iQ4NGPIiDX2RZQa, V22_T_nx, SMTT(5)

 <3>3. RD_NoStop
  BY ONLY <3>1, SMTT(20), Sizes, Location, Design DEF RD_NoStop, Sizes, Location, Design
 <3>4. QED BY ONLY <3>1, <3>2, <3>3, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. B2 => RD_KeyOnSource BY <1>O1T0jJ637c6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>8. S1 /\ S2 /\ S5 /\ S6
 BY SMTT(10), V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>9. RD_StopBack BY <1>FI7KvxKzEifu0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>10. QED BY <2>4, <2>5, <2>6, <2>7, <2>9, <1>QYS9t7p6Fr, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1377_PdRDR2SI5_DRecvReq


<1> QED BY <1>vF0U73lrzCzCjMrtKSwBNT, <1>iQ4NGPIiDX2RZQa, <1>NI8LNrVhbLzmK1T, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF P_PagePoolsDisjoint, Part_DRecvReq_02_01, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K10, V21_Inv_K12, V21_Inv_K14, V21_Inv_K15, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_QuarNoReg, V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V22_T_iv, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_pr, V22_T_pst, V22_T_rg, V22_T_rpg, V22_T_schoice, V22_T_smap, V22_T_xdst, V22_T_xg, V22_T_xr
====
