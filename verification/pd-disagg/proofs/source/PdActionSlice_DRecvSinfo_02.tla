---- MODULE PdActionSlice_DRecvSinfo_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_483df3501ce352ae, PdFinalInvProjections, PdFinalEffects, PdFunctionFrames, PdShapeBase, PdActionSlice_DRecvSinfo_01

\* Complete original body PdFinalPart_DRecvSinfo_02_02 SHA 6053f3768cb1a4472e4c037242eae3b9939444eee26818726bb9630a6b5e0aed
HIDE DEF AuxType_483df3501ce352ae, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_DRecvSinfo_01_01, Part_DRecvSinfo_01_02, Part_DRecvSinfo_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_K6, V21_Inv_KReadIntegrity, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S3, V21_Inv_S4, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_FunctionEta, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_MatrixEta, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_DRecvSinfo_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE (K7)' /\ (K12)' /\ (K10)' /\ (S6)' /\ (K4)' /\ (K13)' /\ (K2)' /\ (K5)' /\ (K8)' /\ (K11)' /\ (K16)' /\ (S1)' /\ (S5)' /\ (GenFiltered)' /\ (QuarNoReg)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE T_gen == gen \in [Rq -> 0..MG]


           T_rt == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           T_rp == rp \in [Rq -> {0} \cup Inst]


           T_rd == rd \in [Rq -> {0} \cup Inst]


           T_hp == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           T_hd == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           T_alive == alive \in [Inst -> BOOLEAN]


           T_nfail == nfail \in 0..MaxFail


           T_torn == torn \in [Inst -> SUBSET Inst]


           T_kpin == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           T_kfly == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           T_krs == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           T_ph == ph \in [Inst -> [Rq -> PhSet]]


           T_rg == rg \in [Inst -> [Rq -> 0..MG]]


           T_rpg == rpg \in [Inst -> [Rq -> 0..NP]]


           T_rpe == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           T_rx == rx \in [Inst -> [Rq -> 0..MX]]


           T_rhit == rhit \in [Inst -> [Rq -> BOOLEAN]]


           T_pst == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           T_pr == pr \in [Pages -> 0..NR]


           T_pgn == pgn \in [Pages -> 0..MG]


           T_plt == plt \in [Pages -> 0..PS]


           T_ptl == ptl \in [Pages -> -1..PS]


           T_pvis == pvis \in [Pages -> BOOLEAN]


           T_led == led \in [Pages -> SUBSET Xids]


           T_sfly == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           T_sled == sled \in [Pages -> SUBSET (Rq \X Gens)]


           T_prefc == prefc \in [Pages -> 0..NR]


           T_pqp == pqp \in [Pages -> {0} \cup Inst]


           T_xr == xr \in [Xids -> 0..NR]


           T_xg == xg \in [Xids -> 0..MG]


           T_xk == xk \in [Xids -> {"none", "wr", "rd"}]


           T_xp == xp \in [Xids -> {0} \cup Inst]


           T_xd == xd \in [Xids -> {0} \cup Inst]


           T_xsrc == xsrc \in [Xids -> 0..NP]


           T_xdst == xdst \in [Xids -> 0..NP]


           T_xnt == xnt \in [Xids -> 0..PS]


           T_hw == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           T_hok == hok \in [Xids -> BOOLEAN]


           T_iv == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           T_xst == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           T_xlt == xlt \in [Xids -> 0..PS]


           T_nx == nx \in 1..(MX + 1)


           T_net == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           T_drep == drep \in [Rq -> [Gens -> 0..2]]


           T_crep == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           T_dsucc == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           T_gbad == gbad \in BOOLEAN


           Types == T_gen /\ T_rt /\ T_rp /\ T_rd /\ T_hp /\ T_hd /\ T_alive /\ T_nfail /\ T_torn /\ T_kpin /\ T_kfly /\ T_krs /\ T_ph /\ T_rg /\ T_rpg /\ T_rpe /\ T_rx /\ T_rhit /\ T_pst /\ T_pr /\ T_pgn /\ T_plt /\ T_ptl /\ T_pvis /\ T_led /\ T_sfly /\ T_sled /\ T_prefc /\ T_pqp /\ T_xr /\ T_xg /\ T_xk /\ T_xp /\ T_xd /\ T_xsrc /\ T_xdst /\ T_xnt /\ T_hw /\ T_hok /\ T_iv /\ T_xst /\ T_xlt /\ T_nx /\ T_net /\ T_drep /\ T_crep /\ T_dsucc /\ T_gbad

           \* T2M-LOCAL-VISIBILITY

           MsgC1(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])


           MsgC2(m) == m.t = "hello" => m.fr \in Inst


           MsgC3(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))


           MsgC4(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))


           MsgC5(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])


           MsgC6(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])


           MsgC7(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")


           MsgC8(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)


           MsgC9(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))


           MsgC10(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))


           MsgSafe(m) ==
             /\ MsgC1(m)
             /\ MsgC2(m)
             /\ MsgC3(m)
             /\ MsgC4(m)
             /\ MsgC5(m)
             /\ MsgC6(m)
             /\ MsgC7(m)
             /\ MsgC8(m)
             /\ MsgC9(m)
             /\ MsgC10(m)

           \* T2M-LOCAL-VISIBILITY

           CSinfoUpdate(j,r,m) ==
             /\ m \in net /\ m.t = "sinfo" /\ m.to = j /\ m.r = r /\ m.g = rg[j][r]
             /\ m.x \in Xids /\ iv[m.x] = "none" /\ m.pe = NTok(r,rg[j][r])
             /\ iv' = [iv EXCEPT ![m.x] = "posted"]
             /\ hw' = [hw EXCEPT ![m.x] = IF Torn(m.x) THEN "stop" ELSE "fly"]
             /\ hok' = [hok EXCEPT ![m.x] = FALSE]
             /\ xdst' = [xdst EXCEPT ![m.x] = rpg[j][r]]
             /\ led' = [led EXCEPT ![rpg[j][r]] = @ \cup {m.x}]
             /\ ph' = [ph EXCEPT ![j][r] = "rd"]
             /\ rx' = [rx EXCEPT ![j][r] = m.x]
             /\ gbad' = gbad

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

           pNoIu82GK8uw(j,r,m) ==
             /\ m \in net /\ m.t = "sinfo" /\ m.to = j /\ m.r = r /\ m.g = rg[j][r]
             /\ m.x \in Xids /\ iv[m.x] = "none" /\ m.pe = NTok(r,rg[j][r])
             /\ iv' = [iv EXCEPT ![m.x] = "posted"]
             /\ hw' = [hw EXCEPT ![m.x] = IF Torn(m.x) THEN "stop" ELSE "fly"]
             /\ hok' = [hok EXCEPT ![m.x] = FALSE]
             /\ xdst' = [xdst EXCEPT ![m.x] = rpg[j][r]]
             /\ led' = [led EXCEPT ![rpg[j][r]] = @ \cup {m.x}]
             /\ ph' = [ph EXCEPT ![j][r] = "rd"]
             /\ rx' = [rx EXCEPT ![j][r] = m.x]
             /\ gbad' = gbad


           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, MsgC1, MsgC2, MsgC3, MsgC4, MsgC5, MsgC6, MsgC7, MsgC8, MsgC9, MsgC10, MsgSafe, CSinfoUpdate, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, pNoIu82GK8uw

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SXJT0yI47i.         K12 <=> (\A m \in net : MsgSafe(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, MsgSafe, MsgC1, MsgC2, MsgC3, MsgC4, MsgC5, MsgC6, MsgC7, MsgC8, MsgC9, MsgC10, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>j4cViHN.         (\A m \in net' : MsgSafe(m)') => K12'
  BY ZenonT(5), Sizes, Location, Design DEF K12, MsgSafe, MsgC1, MsgC2, MsgC3, MsgC4, MsgC5, MsgC6, MsgC7, MsgC8, MsgC9, MsgC10, Sizes, Location, Design
\* T2M-END R2M0002_PP_PdMessagePred


<1>er8h7LTgB.        
  ASSUME NEW m, MsgC1(m), UNCHANGED <<gen>>
  PROVE MsgC1(m)'
  BY ONLY <1>er8h7LTgB, Sizes, Location, Design, SMT DEF MsgC1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qR3zi2Kot.        
  ASSUME NEW m, MsgC2(m), UNCHANGED <<>>
  PROVE MsgC2(m)'
  BY ONLY <1>qR3zi2Kot, Sizes, Location, Design, SMT DEF MsgC2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iwCbGtypi.        
  ASSUME NEW m, MsgC3(m), UNCHANGED <<hd, hp>>
  PROVE MsgC3(m)'
  BY ONLY <1>iwCbGtypi, Sizes, Location, Design, SMT DEF MsgC3, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>riDVFru1C.        
  ASSUME NEW m, MsgC5(m), UNCHANGED <<hd, hp, nx, xg, xlt, xr, xsrc>>
  PROVE MsgC5(m)'
  BY ONLY <1>riDVFru1C, Sizes, Location, Design, SMT DEF MsgC5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>K5z0brpMw.        
  ASSUME NEW m, MsgC8(m), UNCHANGED <<nx, xg, xr>>
  PROVE MsgC8(m)'
  BY ONLY <1>K5z0brpMw, Sizes, Location, Design, SMT DEF MsgC8, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cCAxb5Pyj9.        
  ASSUME NEW m, MsgC10(m), UNCHANGED <<drep, dsucc, hd>>
  PROVE MsgC10(m)'
  BY ONLY <1>cCAxb5Pyj9, Sizes, Location, Design, SMT DEF MsgC10, Sizes, Location, Design
\* T2M-END R2M0238_PK4_PdBFrames

\* T2M-SCOPE R2M0239_PK4_PdCMsgDomain
\* T2M-BODY R2M0239_PK4_PdCMsgDomain
\* T2M-LOCAL-VISIBILITY

<1>A3cRtHRvDJny.        
  ASSUME MsgXDomain, NEW m \in net,
    m.t \in {"sinfo","notice","nopost","revoke","relsrc"}
  PROVE m.x \in Xids
  BY ONLY <1>A3cRtHRvDJny, Sizes, Location, Design, SMT DEF MsgXDomain, Sizes, Location, Design

\* MsgU => domain is a proposal obligation, not assumed or asserted here.
\* T2M-END R2M0239_PK4_PdCMsgDomain


<1>hGI1IatZgQevWTj.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvSinfo(j, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hp, kfly, kpin, krs, net, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>hGI1IatZgQevWTj, Sizes, Location, Design, Design, SMT DEF DRecvSinfo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HGddHrbFlItsL1EO.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
  PROVE /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : CSinfoUpdate(j,r,m)
        /\ UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hp, kfly, kpin, krs, net, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
<2> USE ONLY <1>HGddHrbFlItsL1EO, Sizes, Location, Design
<2>1. T_gbad
  BY <1>g4u1JVDPkX, SMT, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMT, Sizes, Location DEF DRecvSinfo, CSinfoUpdate, GenOK, T_gbad, rtV, instV, kV, ghV, Sizes, Location, Design
\* T2M-END R2M0240_PK4_PdCDRecvSinfoSupport


<1>FFcqtWUZwO4tdeorlzG73u0y.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, MsgXDomain, DRecvSinfo(j,r)
  PROVE K12'
<2> USE ONLY <1>FFcqtWUZwO4tdeorlzG73u0y, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW m \in net' PROVE MsgSafe(m)'
  BY <1>j4cViHN, Sizes, Location, Design DEF Sizes, Location, Design
<2>1. K12 /\ net' = net
  BY <1>hGI1IatZgQevWTj, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. MsgSafe(m)
  BY <2>1, <1>SXJT0yI47i, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. m.t \in {"sinfo","notice","nopost","revoke","relsrc"} => m.x \in Xids
  BY <2>1, <1>A3cRtHRvDJny, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. K3 /\ T_hw /\ T_hok /\ T_iv /\ T_xdst
  BY <1>g4u1JVDPkX, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>5. PICK srcmsg \in net : CSinfoUpdate(j,r,srcmsg)
  BY <1>HGddHrbFlItsL1EO, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. Mode = "pull"
  BY <1>HGddHrbFlItsL1EO, Sizes, Location, Design DEF Sizes, Location, Design
<2>11. MsgC1(m)'
<3>1. UNCHANGED <<gen>>
  BY <1>hGI1IatZgQevWTj, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED
  BY <2>2, <3>1, <1>er8h7LTgB, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
<2>12. MsgC2(m)'
<3>1. UNCHANGED <<>>
  BY <1>hGI1IatZgQevWTj, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED
  BY <2>2, <3>1, <1>qR3zi2Kot, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
<2>13. MsgC3(m)'
<3>1. UNCHANGED <<hd, hp>>
  BY <1>hGI1IatZgQevWTj, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED
  BY <2>2, <3>1, <1>iwCbGtypi, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
<2>14. MsgC4(m)'
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <2>6, <1>HGddHrbFlItsL1EO, SMT, Sizes, Location, Design DEF MsgC4, MsgSafe, CSinfoUpdate, T_hw, T_hok, T_iv, T_xdst, CqeHw, Sizes, Location, Design
<2>15. MsgC5(m)'
<3>1. UNCHANGED <<hd, hp, nx, xg, xlt, xr, xsrc>>
  BY <1>hGI1IatZgQevWTj, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED
  BY <2>2, <3>1, <1>riDVFru1C, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
<2>16. MsgC6(m)'
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <2>6, <1>HGddHrbFlItsL1EO, SMT, Sizes, Location, Design DEF MsgC6, MsgSafe, CSinfoUpdate, T_hw, T_hok, T_iv, T_xdst, CqeHw, Sizes, Location, Design
<2>17. MsgC7(m)'
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <2>6, <1>HGddHrbFlItsL1EO, SMT, Sizes, Location, Design DEF MsgC7, MsgSafe, CSinfoUpdate, T_hw, T_hok, T_iv, T_xdst, CqeHw, Sizes, Location, Design
<2>18. MsgC8(m)'
<3>1. UNCHANGED <<nx, xg, xr>>
  BY <1>hGI1IatZgQevWTj, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED
  BY <2>2, <3>1, <1>K5z0brpMw, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
<2>19. MsgC9(m)'
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <2>6, <1>HGddHrbFlItsL1EO, SMT, Sizes, Location, Design DEF MsgC9, MsgSafe, CSinfoUpdate, T_hw, T_hok, T_iv, T_xdst, CqeHw, Sizes, Location, Design
<2>20. MsgC10(m)'
<3>1. UNCHANGED <<drep, dsucc, hd>>
  BY <1>hGI1IatZgQevWTj, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED
  BY <2>2, <3>1, <1>cCAxb5Pyj9, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
<2>21. QED
  BY <2>11, <2>12, <2>13, <2>14, <2>15, <2>16, <2>17, <2>18, <2>19, <2>20, Sizes, Location, Design DEF MsgSafe, Sizes, Location, Design
\* T2M-END R2M0241_PK4_PdCDRecvSinfoK12Conditional

\* T2M-SCOPE R2M0242_PdPCell_DRecvSinfo_K12
\* T2M-BODY R2M0242_PdPCell_DRecvSinfo_K12
\* T2M-LOCAL-VISIBILITY

<1>aJVAftl78ENfK.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE K12'
  BY ONLY <1>aJVAftl78ENfK, Sizes, Location, Design, <1>FFcqtWUZwO4tdeorlzG73u0y, V21_Inv_K12, V21_Inv_MsgXDomain DEF Sizes, Location, Design
\* T2M-END R2M0242_PdPCell_DRecvSinfo_K12


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>QbOjhpE.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>WRZelxHnppm.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, Active(i,r)
  PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (~rhit[i][r] => pst[rpg[i][r]] = "priv" /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r])
        /\ (IsP(i) => ~rhit[i][r])
        /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  BY ONLY <1>WRZelxHnppm, Sizes, Location, Design, SMTT(10) DEF K8, Active, OwnedBy, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>RBrOukm1.        
  ASSUME NEW i \in DInst, NEW r \in Rq, K9, rhit[i][r]
  PROVE /\ ph[i][r] \in {"run","ovl","end"}
        /\ (ph[i][r] \in {"run","ovl"} => pst[rpg[i][r]] = "shared" /\ Tag(r,rg[i][r]) \in sled[rpg[i][r]])
  BY ONLY <1>RBrOukm1, Sizes, Location, Design, Zenon DEF K9, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>xyjZthgxd.        
  ASSUME NEW x \in Xids, SHJS, K2, x < nx
  PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>xyjZthgxd, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, SHJS, Xids, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>AFcHzNPRx8.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst /\ (IsP(Loc(p)) <=> ~IsD(Loc(p)))
  BY ONLY <1>AFcHzNPRx8, Sizes, Location, Design, Location, Sizes, SMTT(10) DEF IsP, IsD, Inst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M1150_PdRDLegacy_PP_PdFactsA


<1>WzFDhp8XtrsI9c.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
  PROVE /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : pNoIu82GK8uw(j,r,m)
        /\ UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hp, kfly, kpin, krs, net, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
<2> USE ONLY <1>WzFDhp8XtrsI9c, Sizes, Location, Design
<2>1. MZsmqs
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(10), Sizes, Location DEF DRecvSinfo, pNoIu82GK8uw, GenOK, MZsmqs, rtV, instV, kV, ghV, Sizes, Location, Design
\* T2M-END R2M1234_PdRDLegacy_PP_PdDRecvSinfoEffectsA


<1>e4pV84f.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
  PROVE LET q == rpg[j][r] g == rg[j][r] IN
        /\ j \in DInst /\ q \in Pages /\ Loc(q) = j
        /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
        /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
        /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
<2> USE ONLY <1>e4pV84f, Sizes, Location, Design
<2>1. K8 /\ K9
  BY SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Mode = "pull" /\ j \in DInst /\ ph[j][r] = "wait"
  BY <1>WzFDhp8XtrsI9c, <1>QbOjhpE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ~rhit[j][r]
  BY <2>1, <2>2, <1>RBrOukm1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, <1>WRZelxHnppm, SMTT(10), Sizes, Location, Design DEF K9, Active, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>oBC1kRJSR.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m,
         PinInv, DRecvSinfo(j,r), pNoIu82GK8uw(j,r,m)
  PROVE /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
        /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
        /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
<2> USE ONLY <1>oBC1kRJSR, Sizes, Location, Design
<2>1. K2 /\ K3 /\ K12 /\ SHJS /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. Mode = "pull" /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
        /\ iv[m.x] = "none" /\ xlt[m.x] = NTok(r,rg[j][r])
  BY <2>1, <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF K12, pNoIu82GK8uw, Sizes, Location, Design
<2>3. xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xdst[m.x] = 0 /\ xst[m.x] # "none"
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, SHJS, Xids, InitPage, Sizes, Location, Design
<2>4. hw[m.x] = "none" /\ xst[m.x] = "posted"
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K3, PD2ZN, Sizes, Location, Design
<2>5. QED
  BY <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>g0zJ9ylLNdSB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m,
         PinInv, DRecvSinfo(j,r), pNoIu82GK8uw(j,r,m)
  PROVE xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst
        /\ xsrc[m.x] # rpg[j][r]
<2> USE ONLY <1>g0zJ9ylLNdSB, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K8 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r] /\ xk[m.x] = "rd"
  BY <1>oBC1kRJSR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hd[r][rg[j][r]] = j /\ hp[r][rg[j][r]] \in PInst
  BY <2>1, <1>e4pV84f, <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF K1, K8, Sizes, Location, Design
<2>4. xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst
  BY <2>1, <2>2, <2>3, <1>xyjZthgxd, SMTT(10), Sizes, Location, Design DEF ExpPage, ExpInst, Sizes, Location, Design
<2>5. QED
  BY <2>4, <1>e4pV84f, <1>QbOjhpE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1235_PdRDLegacy_PP_PdSinfoFactsA


<1>JyPvhibmp.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
  PROVE \A i \in Inst, v \in Rq :
      /\ (Active(i,v)' <=> Active(i,v))
      /\ ((ph'[i][v] \in {"run","ovl"}) <=> (ph[i][v] \in {"run","ovl"}))
      /\ ((ph'[i][v] = "end") <=> (ph[i][v] = "end"))
      /\ ((ph'[i][v] = "none") <=> (ph[i][v] = "none"))
<2> USE ONLY <1>JyPvhibmp, Sizes, Location, Design
<2>1. AydA
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "rd"]
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF pNoIu82GK8uw, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF AydA, Active, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>jtkQDeB8OOOX.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
  PROVE \A p \in Pages :
      /\ UNCHANGED <<NHits(p),GrownP(p),KPinned(p)>>
      /\ \A v \in Rq : (Maps(Loc(p),v,p)' <=> Maps(Loc(p),v,p))
<2> USE ONLY <1>jtkQDeB8OOOX, Sizes, Location, Design
<2>1. UNCHANGED <<pst,pr,pgn,rg,rpg,rhit,kpin,krs>>
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A p \in Pages :
       {v \in Rq : ph'[Loc(p)][v] \in {"run","ovl"} /\ rhit'[Loc(p)][v] /\ rpg'[Loc(p)][v] = p}
       = {v \in Rq : ph[Loc(p)][v] \in {"run","ovl"} /\ rhit[Loc(p)][v] /\ rpg[Loc(p)][v] = p}
  BY <2>1, <1>JyPvhibmp, <1>AFcHzNPRx8, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>JyPvhibmp, <1>AFcHzNPRx8, SMTT(10), Sizes, Location, Design DEF NHits, GrownP, KPinned, Maps, Sizes, Location, Design
\* T2M-END R2M1236_PdRDLegacy_PP_PdSinfoMasksA

\* T2M-SCOPE R2M1237_PdRDLegacy_PP_PdSinfoKernelA

<1>RXtttzmEcPVKdl.        
  ASSUME NEW S, NEW T, NEW f \in [S -> SUBSET T], NEW q \in S, NEW e, f[q] = {}
  PROVE [f EXCEPT ![q] = @ \cup {e}] = [f EXCEPT ![q] = {e}]
<2> USE ONLY <1>RXtttzmEcPVKdl, Sizes, Location, Design
<2>1. f[q] \cup {e} = {e}
  BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY ONLY <2>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1238_PdRDLegacy_PP_PdEmptyUnionA


<1>aDO2TYVlpr.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE K2'
<2> USE ONLY <1>aDO2TYVlpr, Sizes, Location, Design
<2>1. SHJS /\ K2 /\ K1 /\ K3 /\ K8 /\ K9 /\ K12 /\ DnMxp /\ DpA4 /\ fr1A /\ dcfPK /\ AydA /\ QC9Q /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : pNoIu82GK8uw(j,r,m)
        /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hp, net, nx, pgn, plt, pr, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : pNoIu82GK8uw(j,r,m)
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
       /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
       /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
       /\ xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst /\ xsrc[m.x] # rpg[j][r]
  BY <2>3, <1>oBC1kRJSR, <1>g0zJ9ylLNdSB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. LET q == rpg[j][r] g == rg[j][r] IN
       /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
       /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
       /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
  BY <1>e4pV84f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, Design, Location, Sizes, SMTT(10) DEF Active, CqeHw, DInst, ExpInst, ExpPage, InFl, InitInst, InitPage, Inst, IsD, IsP, K2, NL, OwnedBy, pNoIu82GK8uw, DnMxp, DpA4, fr1A, dcfPK, AydA, QC9Q, JjZ1PO, Tag, Pages, SHJS, Xids, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>vVDLoRc4DG.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE K4'
<2> USE ONLY <1>vVDLoRc4DG, Sizes, Location, Design
<2>1. SHJS /\ K4 /\ K2 /\ K3 /\ K8 /\ K9 /\ K12 /\ DnMxp /\ DpA4 /\ fr1A /\ dcfPK /\ AydA /\ QC9Q /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : pNoIu82GK8uw(j,r,m)
        /\ UNCHANGED <<drep, dsucc, gen, hd, hp, net, nx, pgn, plt, pr, pst, ptl, pvis, rg, rhit, rpe, rpg, sfly, sled, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : pNoIu82GK8uw(j,r,m)
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
       /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
       /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
       /\ xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst /\ xsrc[m.x] # rpg[j][r]
  BY <2>3, <1>oBC1kRJSR, <1>g0zJ9ylLNdSB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. LET q == rpg[j][r] g == rg[j][r] IN
       /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
       /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
       /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
  BY <1>e4pV84f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A y \in Xids :
       /\ ExpPage(y)' = ExpPage(y)
       /\ (y # m.x => (InitPage(y)' = InitPage(y) /\ iv'[y] = iv[y]))
       /\ xst'[y] = xst[y]
  BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF pNoIu82GK8uw, ExpPage, InitPage, JjZ1PO, fr1A, Sizes, Location, Design
<2>7. InitPage(m.x)' = rpg[j][r] /\ iv'[m.x] = "posted"
  BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF pNoIu82GK8uw, InitPage, JjZ1PO, fr1A, Sizes, Location, Design
<2>8. led' = [led EXCEPT ![rpg[j][r]] = {m.x}]
  BY <2>1, <2>3, <2>4, <2>5, <1>RXtttzmEcPVKdl, SMTT(10), Sizes, Location, Design DEF pNoIu82GK8uw, dcfPK, Sizes, Location, Design
<2>9. ExpPage(m.x) # rpg[j][r] /\ InitPage(m.x) = 0 /\ 0 \notin Pages
  BY <2>4, Sizes, SMTT(10), Location, Design DEF ExpPage, InitPage, Pages, Sizes, Location, Design
<2>10. \A y \in Xids : y < nx => ExpPage(y) \in Pages
  BY <2>1, <1>xyjZthgxd, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>11. QED
  BY <2>1, <2>2, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, SMTT(10), Sizes, Location, Design DEF K4, dcfPK, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>GQNwZQkoPm.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE K5'
<2> USE ONLY <1>GQNwZQkoPm, Sizes, Location, Design
<2>1. K5 /\ K8 /\ K9 /\ K12 /\ DnMxp /\ DpA4 /\ fr1A /\ dcfPK /\ AydA /\ QC9Q /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K12, V21_Inv_K5, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : pNoIu82GK8uw(j,r,m)
        /\ UNCHANGED <<drep, dsucc, gen, hd, hp, net, nx, pgn, plt, pr, pst, ptl, pvis, rg, rhit, rpe, rpg, sfly, sled, xg, xk, xlt, xr, xsrc>>
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : pNoIu82GK8uw(j,r,m)
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
       /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
       /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
       /\ xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst /\ xsrc[m.x] # rpg[j][r]
  BY <2>3, <1>oBC1kRJSR, <1>g0zJ9ylLNdSB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. LET q == rpg[j][r] g == rg[j][r] IN
       /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
       /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
       /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
  BY <1>e4pV84f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, Design, Location, Sizes, SMTT(10) DEF Active, CqeHw, DInst, Inst, IsD, IsP, K5, NL, OwnedBy, pNoIu82GK8uw, DnMxp, DpA4, fr1A, dcfPK, AydA, QC9Q, JjZ1PO, Tag, Pages, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>TwXx7ZDWvz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE K7'
<2> USE ONLY <1>TwXx7ZDWvz, Sizes, Location, Design
<2>1. K7 /\ K8 /\ K9 /\ K12 /\ DnMxp /\ DpA4 /\ fr1A /\ dcfPK /\ AydA /\ QC9Q /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K12, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : pNoIu82GK8uw(j,r,m)
        /\ UNCHANGED <<drep, dsucc, gen, hd, hp, kpin, krs, net, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rg, rhit, rpe, rpg, sfly, sled, xg, xk, xlt, xr, xsrc>>
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : pNoIu82GK8uw(j,r,m)
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
       /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
       /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
       /\ xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst /\ xsrc[m.x] # rpg[j][r]
  BY <2>3, <1>oBC1kRJSR, <1>g0zJ9ylLNdSB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. LET q == rpg[j][r] g == rg[j][r] IN
       /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
       /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
       /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
  BY <1>e4pV84f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>jtkQDeB8OOOX, SMTT(10), Sizes, Location, Design DEF K7, pNoIu82GK8uw, dcfPK, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Di0bPVZeqR.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE K8'
<2> USE ONLY <1>Di0bPVZeqR, Sizes, Location, Design
<2>old. K8
 BY ONLY <1>Di0bPVZeqR, V21_Inv_K8, Sizes, Location, Design, SMTT(5)
<2>type. ph \in [Inst -> [Rq -> PhSet]] /\ rx \in [Inst -> [Rq -> 0..MX]] /\ led \in [Pages -> SUBSET Xids]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Di0bPVZeqR, V22_T_led, V22_T_ph, V22_T_rx, SMTT(5)

<2>control. Mode="pull" /\ IsD(j) /\ ph[j][r]="wait"
 BY ONLY <1>Di0bPVZeqR, <1>WzFDhp8XtrsI9c, Sizes, Location, Design, SMTT(5)
<2>witness. PICK m \in net : pNoIu82GK8uw(j,r,m)
 BY ONLY <1>Di0bPVZeqR, <1>WzFDhp8XtrsI9c, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<gen,hd,hp,nx,pgn,plt,pr,pst,ptl,pvis,rg,rhit,rpe,rpg,sfly,sled,xd,xg,xk,xlt,xnt,xp,xr,xsrc,xst>>
 BY ONLY <1>Di0bPVZeqR, <1>WzFDhp8XtrsI9c, Sizes, Location, Design, SMTT(5)
<2>destination. rpg[j][r] \in Pages /\ Loc(rpg[j][r])=j /\ pr[rpg[j][r]]=r /\ led[rpg[j][r]]={} /\ ~rhit[j][r]
 BY ONLY <1>Di0bPVZeqR, <1>e4pV84f, Sizes, Location, Design, SMTT(5)
<2>transfer. m.x \in Xids /\ xsrc[m.x] # rpg[j][r]
 BY ONLY <1>Di0bPVZeqR, <2>witness, <1>oBC1kRJSR, <1>g0zJ9ylLNdSB, Sizes, Location, Design, SMTT(5)
<2>effect. ph'=[ph EXCEPT ![j][r]="rd"] /\ rx'=[rx EXCEPT ![j][r]=m.x]
             /\ led'=[led EXCEPT ![rpg[j][r]]=@ \cup {m.x}]
 BY ONLY <2>witness, SMTT(5) DEF pNoIu82GK8uw
<2> DEFINE Rec(a,b) == LET p == rpg[a][b]
            g == rg[a][b]
            t == Tag(b, g)
            x == rx[a][b]
        IN
        /\ IsP(a) => (ph[a][b] \in {"none", "pre", "ready", "reg", "sent", "exp", "end"} /\ ~rhit[a][b])
        /\ IsD(a) => ph[a][b] \in {"none", "wait", "rd", "run", "ovl", "end"}
        /\ ph[a][b] = "none" => (g = 0 /\ p = 0 /\ x = 0 /\ ~rhit[a][b])
        /\ ph[a][b] # "none" => (g \in Gens /\ g <= gen[b])
        /\ ph[a][b] # "none" /\ IsP(a) => (hp[b][g] = a /\ rpe[a][b] = hd[b][g])
        /\ ph[a][b] # "none" /\ IsD(a) => (hd[b][g] = a /\ rpe[a][b] = hp[b][g])
        /\ Active(a, b) => (p \in Pages /\ Loc(p) = a)
        /\ Active(a, b) /\ ~rhit[a][b] => OwnedBy(p, b, g) /\ pst[p] = "priv"
        /\ ph[a][b] = "pre" => (x = 0 /\ led[p] = {} /\ sled[p] = {t} /\ sfly[p] \subseteq {t} /\ plt[p] = 0
                                /\ (IF t \in sfly[p] THEN ptl[p] = 0 ELSE ptl[p] \in PLens(b, g)))
        /\ ph[a][b] = "ready" => (x = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(b, g))
        /\ ph[a][b] = "reg" => (Mode = "push" /\ PReg /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = b /\ xg[x] = g
                                /\ iv[x] = "reg" /\ sled[p] = {} /\ sfly[p] = {}
                                /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(b, g) /\ xlt[x] = ptl[p])
        /\ ph[a][b] = "sent" => (Mode = "push" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = b /\ xg[x] = g
                                 /\ iv[x] \in {"posted", "cqe", "failret"} /\ sled[p] = {} /\ sfly[p] = {}
                                 /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(b, g) /\ xlt[x] = ptl[p])
        /\ ph[a][b] = "exp" => (Mode = "pull" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = b /\ xg[x] = g
                                /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(b, g) /\ xlt[x] = ptl[p])
<2> HIDE DEF Rec
<2>at. ASSUME NEW a \in Inst, NEW b \in Rq PROVE Rec(a,b)'
 <3>before. Rec(a,b) BY ONLY <2>old, SMTT(5) DEF K8, Rec
 <3>same. CASE a=j /\ b=r
  <4>update. ph'[a][b]="rd" /\ rx'[a][b]=m.x
   BY ONLY <3>same, <2>effect, <2>type, SMTT(5)
  <4>qed. QED BY ONLY <3>same, <3>before, <4>update, <2>control, <2>frame, SMTT(5) DEF Rec, Active, OwnedBy
 <3>other. CASE a # j \/ b # r
  <4>recordframe. ph'[a][b]=ph[a][b] /\ rx'[a][b]=rx[a][b]
   BY ONLY <3>other, <2>effect, <2>type, SMTT(5)
  <4>pageframe. ASSUME ph[a][b] \in {"pre","ready"}
   PROVE led'[rpg[a][b]]=led[rpg[a][b]]
   <5>producer. IsP(a)
    BY ONLY <4>pageframe, <3>before, Sizes, SMTT(5) DEF Rec, IsP, IsD, Inst, NL, Sizes
   <5>page. rpg[a][b] \in Pages /\ Loc(rpg[a][b])=a
    BY ONLY <4>pageframe, <3>before, SMTT(5) DEF Rec, Active
   <5>integers. a \in Int /\ j \in Int /\ NPI \in Int
    BY ONLY <2>at, <1>Di0bPVZeqR, Sizes, SMTT(5) DEF Inst, NL, Sizes
   <5>apart. rpg[a][b] # rpg[j][r]
    BY ONLY <5>page, <5>producer, <5>integers, <2>control, <2>destination, SMTT(5) DEF IsP, IsD
   <5>qed. QED BY ONLY <2>type, <2>effect, <5>page, <5>apart, SMTT(5)
  <4>qed. QED BY ONLY <3>before, <4>recordframe, <4>pageframe, <2>control, <2>frame, SMTT(5) DEF Rec, Active, OwnedBy
 <3>qed. QED BY ONLY <3>same, <3>other, SMTT(5)
<2>qed. QED BY ONLY <2>at, SMTT(5) DEF K8, Rec

\* T2M-LOCAL-VISIBILITY

<1>iGOlHEqUrKl.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE K10'
<2> USE ONLY <1>iGOlHEqUrKl, Sizes, Location, Design
<2>1. SHJS /\ S2 /\ K10 /\ K1 /\ K2 /\ S1 /\ S2 /\ S6 /\ K8 /\ K9 /\ K12 /\ DnMxp /\ DpA4 /\ fr1A /\ dcfPK /\ AydA /\ QC9Q /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K10, V21_Inv_K12, V21_Inv_K2, V21_Inv_K8, V21_Inv_K9, V21_Inv_S1, V21_Inv_S2, V21_Inv_S6, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : pNoIu82GK8uw(j,r,m)
        /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hp, net, nx, pgn, plt, pr, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : pNoIu82GK8uw(j,r,m)
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
       /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
       /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
       /\ xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst /\ xsrc[m.x] # rpg[j][r]
  BY <2>3, <1>oBC1kRJSR, <1>g0zJ9ylLNdSB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. LET q == rpg[j][r] g == rg[j][r] IN
       /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
       /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
       /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
  BY <1>e4pV84f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A y \in Xids : y < nx => (xr[y] \in Rq /\ (xdst[y] \in Pages => Loc(xdst[y]) \in Inst))
  BY <2>1, <1>xyjZthgxd, <1>AFcHzNPRx8, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <2>6, <1>JyPvhibmp, SMTT(10), Sizes, Location, Design DEF K10, pNoIu82GK8uw, OwnedBy, DnMxp, DpA4, JjZ1PO, AydA, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>yWqpnHnbnin.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE K11'
<2> USE ONLY <1>yWqpnHnbnin, Sizes, Location, Design
<2>old. K11
 BY ONLY <1>yWqpnHnbnin, V21_Inv_K11, Sizes, Location, Design, SMTT(5)
<2>type. led \in [Pages -> SUBSET Xids]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>yWqpnHnbnin, V22_T_led, SMTT(5)

<2>control. Mode="pull" /\ IsD(j) /\ ph[j][r]="wait"
 BY ONLY <1>yWqpnHnbnin, <1>WzFDhp8XtrsI9c, Sizes, Location, Design, SMTT(5)
<2>witness. PICK m \in net : pNoIu82GK8uw(j,r,m)
 BY ONLY <1>yWqpnHnbnin, <1>WzFDhp8XtrsI9c, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<gen,hd,hp,nx,pgn,plt,pr,pst,ptl,pvis,rg,rhit,rpe,rpg,sfly,sled,xd,xg,xk,xlt,xnt,xp,xr,xsrc,xst>>
 BY ONLY <1>yWqpnHnbnin, <1>WzFDhp8XtrsI9c, Sizes, Location, Design, SMTT(5)
<2>destination. rpg[j][r] \in Pages /\ Loc(rpg[j][r])=j /\ pr[rpg[j][r]]=r /\ led[rpg[j][r]]={} /\ ~rhit[j][r]
 BY ONLY <1>yWqpnHnbnin, <1>e4pV84f, Sizes, Location, Design, SMTT(5)
<2>transfer. m.x \in Xids /\ xsrc[m.x] # rpg[j][r]
 BY ONLY <1>yWqpnHnbnin, <2>witness, <1>oBC1kRJSR, <1>g0zJ9ylLNdSB, Sizes, Location, Design, SMTT(5)
<2>effect. ph'=[ph EXCEPT ![j][r]="rd"] /\ rx'=[rx EXCEPT ![j][r]=m.x]
             /\ led'=[led EXCEPT ![rpg[j][r]]=@ \cup {m.x}]
 BY ONLY <2>witness, SMTT(5) DEF pNoIu82GK8uw
<2>at. ASSUME NEW y \in Xids, y<nx', xsrc'[y] \in Pages, y \in led'[xsrc'[y]]
 PROVE ptl'[xsrc'[y]]=xlt'[y] /\ sfly'[xsrc'[y]]={} /\ sled'[xsrc'[y]]={}
 <3>domain. y<nx /\ xsrc[y] \in Pages
  BY ONLY <2>at, <2>frame, SMTT(5)
 <3>oldmember. y \in led[xsrc[y]]
  <4>samepage. CASE xsrc[y]=rpg[j][r]
   <5>apart. y # m.x BY ONLY <4>samepage, <2>transfer, SMTT(5)
   <5>qed. QED BY ONLY <2>at, <2>frame, <4>samepage, <5>apart, <2>effect, <2>type, <3>domain, SMTT(5)
  <4>otherpage. CASE xsrc[y] # rpg[j][r]
   BY ONLY <2>at, <2>frame, <4>otherpage, <2>effect, <2>type, <3>domain, SMTT(5)
  <4>qed. QED BY ONLY <4>samepage, <4>otherpage, SMTT(5)
 <3>before. ptl[xsrc[y]]=xlt[y] /\ sfly[xsrc[y]]={} /\ sled[xsrc[y]]={}
  BY ONLY <2>old, <3>domain, <3>oldmember, SMTT(5) DEF K11
 <3>qed. QED BY ONLY <3>before, <2>frame, SMTT(5)
<2>qed. QED BY ONLY <2>at, SMTT(5) DEF K11

\* T2M-LOCAL-VISIBILITY

<1>VriblWi7Q4r.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE K13'
<2> USE ONLY <1>VriblWi7Q4r, Sizes, Location, Design
<2>1. K1 /\ AEZsS /\ K13 /\ MZsmqs /\ AydA
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K13, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : pNoIu82GK8uw(j,r,m)
        /\ UNCHANGED <<crep, drep, dsucc, hd, rg>>
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : pNoIu82GK8uw(j,r,m)
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
       /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
       /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
       /\ xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst /\ xsrc[m.x] # rpg[j][r]
  BY <2>3, <1>oBC1kRJSR, <1>g0zJ9ylLNdSB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. LET q == rpg[j][r] g == rg[j][r] IN
       /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
       /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
       /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
  BY <1>e4pV84f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A v \in Rq, g \in Gens : drep[v][g] = 1 => hd[v][g] \in Inst
  BY <2>1, <1>QbOjhpE, Sizes, SMTT(10), Location, Design DEF K1, AEZsS, Gens, Sizes, Location, Design
<2>7. UNCHANGED gbad
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF pNoIu82GK8uw, Sizes, Location, Design
<2>8. QED
  BY <2>1, <2>2, <2>6, <2>7, <1>JyPvhibmp, SMTT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>vq6QvwpQpWv.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE K16'
<2> USE ONLY <1>vq6QvwpQpWv, Sizes, Location, Design
<2>old. K16
 BY ONLY <1>vq6QvwpQpWv, V21_Inv_K16, Sizes, Location, Design, SMTT(5)
<2>type. ph \in [Inst -> [Rq -> PhSet]] /\ led \in [Pages -> SUBSET Xids] /\ hw \in [Xids -> {"none","fly","issued","stop"}] /\ xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>vq6QvwpQpWv, V22_T_hw, V22_T_led, V22_T_ph, V22_T_xdst, SMTT(5)

<2>control. Mode="pull" /\ IsD(j) /\ ph[j][r]="wait"
 BY ONLY <1>vq6QvwpQpWv, <1>WzFDhp8XtrsI9c, Sizes, Location, Design, SMTT(5)
<2>witness. PICK m \in net : pNoIu82GK8uw(j,r,m)
 BY ONLY <1>vq6QvwpQpWv, <1>WzFDhp8XtrsI9c, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<gen,hd,hp,nx,pgn,plt,pr,pst,ptl,pvis,rg,rhit,rpe,rpg,sfly,sled,xd,xg,xk,xlt,xnt,xp,xr,xsrc,xst>>
 BY ONLY <1>vq6QvwpQpWv, <1>WzFDhp8XtrsI9c, Sizes, Location, Design, SMTT(5)
<2>destination. rpg[j][r] \in Pages /\ Loc(rpg[j][r])=j /\ pr[rpg[j][r]]=r /\ led[rpg[j][r]]={} /\ ~rhit[j][r]
 BY ONLY <1>vq6QvwpQpWv, <1>e4pV84f, Sizes, Location, Design, SMTT(5)
<2>transfer. m.x \in Xids /\ xsrc[m.x] # rpg[j][r]
 BY ONLY <1>vq6QvwpQpWv, <2>witness, <1>oBC1kRJSR, <1>g0zJ9ylLNdSB, Sizes, Location, Design, SMTT(5)
<2>effect. ph'=[ph EXCEPT ![j][r]="rd"] /\ rx'=[rx EXCEPT ![j][r]=m.x]
             /\ led'=[led EXCEPT ![rpg[j][r]]=@ \cup {m.x}]
 BY ONLY <2>witness, SMTT(5) DEF pNoIu82GK8uw
<2>hardware. xdst'[m.x]=rpg[j][r] /\ (\A y \in Xids : y # m.x => hw'[y]=hw[y] /\ xdst'[y]=xdst[y])
 <3>effect. hw'=[hw EXCEPT ![m.x]=IF Torn(m.x) THEN "stop" ELSE "fly"] /\ xdst'=[xdst EXCEPT ![m.x]=rpg[j][r]]
  BY ONLY <2>witness, SMTT(5) DEF pNoIu82GK8uw
 <3>qed. QED BY ONLY <3>effect, <2>type, <2>transfer, SMTT(5)
<2>at. ASSUME NEW p \in Pages, GrownP(p)'
 PROVE /\ ph'[Loc(p)][pr'[p]] \in {"run","ovl"} /\ rg'[Loc(p)][pr'[p]]=pgn'[p]
       /\ led'[p]={} /\ sled'[p]={} /\ sfly'[p]={}
       /\ plt'[p]=ptl'[p] /\ ptl'[p] \in {0,1}
       /\ NoWriteInto(p)'
 <3>grown. GrownP(p) BY ONLY <2>at, <2>frame, SMTT(5) DEF GrownP
 <3>old. ph[Loc(p)][pr[p]] \in {"run","ovl"} /\ rg[Loc(p)][pr[p]]=pgn[p]
          /\ led[p]={} /\ sled[p]={} /\ sfly[p]={}
          /\ plt[p]=ptl[p] /\ ptl[p] \in {0,1} /\ NoWriteInto(p)
  BY ONLY <2>old, <3>grown, SMTT(5) DEF K16
 <3>domain. Loc(p) \in Inst /\ pr[p] \in Rq
  BY ONLY <2>at, <3>grown, Location, SMTT(5) DEF GrownP, Location, KPages
 <3>pageapart. p # rpg[j][r]
  BY ONLY <3>grown, <2>destination, SMTT(5) DEF GrownP
 <3>slotapart. Loc(p) # j \/ pr[p] # r
  BY ONLY <3>old, <2>control, SMTT(5)
 <3>recordframe. ph'[Loc(p)][pr[p]]=ph[Loc(p)][pr[p]]
  BY ONLY <3>domain, <3>slotapart, <2>effect, <2>type, SMTT(5)
 <3>ledger. led'[p]=led[p]
  BY ONLY <3>pageapart, <2>effect, <2>type, SMTT(5)
 <3>nowrite. NoWriteInto(p)'
  <4>writer. ASSUME NEW y \in Xids, Writing(y)' PROVE xdst'[y] # p
   <5>same. CASE y=m.x BY ONLY <5>same, <2>hardware, <3>pageapart, SMTT(5)
   <5>other. CASE y # m.x
    <6>oldwrite. Writing(y) BY ONLY <4>writer, <5>other, <2>hardware, SMTT(5) DEF Writing, InFl
    <6>oldapart. xdst[y] # p BY ONLY <3>old, <6>oldwrite, SMTT(5) DEF NoWriteInto
    <6>qed. QED BY ONLY <5>other, <2>hardware, <6>oldapart, SMTT(5)
   <5>qed. QED BY ONLY <5>same, <5>other, SMTT(5)
  <4>qed. QED BY ONLY <4>writer, SMTT(5) DEF NoWriteInto
 <3>qed. QED BY ONLY <3>old, <3>recordframe, <3>ledger, <3>nowrite, <2>frame, SMTT(5)
<2>qed. QED BY ONLY <2>at, SMTT(5) DEF K16

\* T2M-LOCAL-VISIBILITY

<1>wzlGY97h9a.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE S1'
<2> USE ONLY <1>wzlGY97h9a, Sizes, Location, Design
<2>1. K1 /\ SHJS /\ S1 /\ K2 /\ K12 /\ DnMxp /\ DpA4 /\ fr1A /\ AydA /\ QC9Q /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K12, V21_Inv_K2, V21_Inv_S1, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : pNoIu82GK8uw(j,r,m)
        /\ UNCHANGED <<drep, dsucc, gen, hd, hp, net, nx, rg, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : pNoIu82GK8uw(j,r,m)
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
       /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
       /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
       /\ xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst /\ xsrc[m.x] # rpg[j][r]
  BY <2>3, <1>oBC1kRJSR, <1>g0zJ9ylLNdSB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. LET q == rpg[j][r] g == rg[j][r] IN
       /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
       /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
       /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
  BY <1>e4pV84f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A x \in Xids : x < nx => (xr[x] \in Rq /\ ExpInst(x) \in PInst)
  BY <2>1, <2>2, <1>xyjZthgxd, SMTT(10), Sizes, Location, Design DEF K1, ExpInst, Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <2>6, <1>QbOjhpE, SMTT(10), Sizes, Location, Design DEF S1, pNoIu82GK8uw, AydA, QC9Q, ExpInst, Active, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>ppJXzXiF5q.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE S5'
<2> USE ONLY <1>ppJXzXiF5q, Sizes, Location, Design
<2>1. S5 /\ K9 /\ DnMxp /\ DpA4 /\ fr1A /\ dcfPK /\ AydA /\ QC9Q /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K9, V21_Inv_S5, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : pNoIu82GK8uw(j,r,m)
        /\ UNCHANGED <<drep, nx, plt, pst, ptl, pvis, rg, rhit, rpg, sfly, sled, xg, xlt, xnt, xr, xst>>
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : pNoIu82GK8uw(j,r,m)
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
       /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
       /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
       /\ xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst /\ xsrc[m.x] # rpg[j][r]
  BY <2>3, <1>oBC1kRJSR, <1>g0zJ9ylLNdSB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. LET q == rpg[j][r] g == rg[j][r] IN
       /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
       /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
       /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
  BY <1>e4pV84f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, Design, Location, Sizes, SMTT(10) DEF Active, DInst, Inst, IsD, IsP, K9, NL, S5, pNoIu82GK8uw, DnMxp, DpA4, fr1A, dcfPK, AydA, QC9Q, JjZ1PO, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>lCJ38fPXIS.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE S6'
<2> USE ONLY <1>lCJ38fPXIS, Sizes, Location, Design
<2>1. SHJS /\ S2 /\ S6 /\ K1 /\ K2 /\ K8 /\ K12 /\ DnMxp /\ DpA4 /\ fr1A /\ dcfPK /\ AydA /\ QC9Q /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K12, V21_Inv_K2, V21_Inv_K8, V21_Inv_S2, V21_Inv_S6, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : pNoIu82GK8uw(j,r,m)
        /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hp, net, nx, pgn, plt, pr, pst, ptl, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : pNoIu82GK8uw(j,r,m)
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
       /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
       /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
       /\ xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst /\ xsrc[m.x] # rpg[j][r]
  BY <2>3, <1>oBC1kRJSR, <1>g0zJ9ylLNdSB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. LET q == rpg[j][r] g == rg[j][r] IN
       /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
       /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
       /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
  BY <1>e4pV84f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A y \in Xids : y < nx => (xr[y] \in Rq /\ (InitPage(y) # 0 => InitInst(y) \in Inst))
  BY <2>1, <1>xyjZthgxd, <1>AFcHzNPRx8, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. \A y \in Xids :
       /\ InitInst(y)' = InitInst(y) /\ xr'[y] = xr[y] /\ xg'[y] = xg[y]
       /\ (y # m.x => InitPage(y)' = InitPage(y))
  BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF pNoIu82GK8uw, InitInst, InitPage, JjZ1PO, Sizes, Location, Design
<2>8. \A i \in Inst, v \in Rq : rx'[i][v] = IF i = j /\ v = r THEN m.x ELSE rx[i][v]
  BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF pNoIu82GK8uw, QC9Q, Sizes, Location, Design
<2>9. InitInst(m.x) = j /\ InitPage(m.x) = 0 /\ InitPage(m.x)' = rpg[j][r]
  BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF InitInst, InitPage, pNoIu82GK8uw, JjZ1PO, Sizes, Location, Design
<2>10. \A y \in Xids : (y < nx /\ y # m.x) => (xr[y] # r \/ xg[y] # rg[j][r])
  BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF S2, Sizes, Location, Design
<2>11. /\ rg' = rg /\ nx' = nx
        /\ ph'[j][r] = "rd" /\ rx'[j][r] = m.x
  BY <2>1, <2>2, <2>3, <2>8, SMTT(10), Sizes, Location, Design DEF pNoIu82GK8uw, AydA, Sizes, Location, Design
<2>12. \A y \in Xids : (y < nx /\ y # m.x /\ InitPage(y)' # 0) =>
       /\ InitInst(y) \in Inst /\ xr[y] \in Rq
       /\ ph[InitInst(y)][xr[y]] # "none"
       /\ rg[InitInst(y)][xr[y]] >= xg[y]
       /\ (rg[InitInst(y)][xr[y]] = xg[y] /\ Active(InitInst(y),xr[y])) => rx[InitInst(y)][xr[y]] = y
  BY <2>1, <2>6, <2>7, SMTT(10), Sizes, Location, Design DEF S6, Sizes, Location, Design
<2>13. \A y \in Xids : (y < nx /\ y # m.x /\ InitPage(y)' # 0) =>
       /\ ph'[InitInst(y)'][xr'[y]] # "none"
       /\ rg'[InitInst(y)'][xr'[y]] >= xg'[y]
       /\ (rg'[InitInst(y)'][xr'[y]] = xg'[y] /\ Active(InitInst(y),xr[y])') => rx'[InitInst(y)'][xr'[y]] = y
  BY <2>7, <2>8, <2>10, <2>11, <2>12, <1>JyPvhibmp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>14. \A y \in Xids : y = m.x =>
       /\ ph'[InitInst(y)'][xr'[y]] # "none"
       /\ rg'[InitInst(y)'][xr'[y]] >= xg'[y]
       /\ (rg'[InitInst(y)'][xr'[y]] = xg'[y] /\ Active(InitInst(y),xr[y])') => rx'[InitInst(y)'][xr'[y]] = y
  BY <2>4, <2>5, <2>7, <2>9, <2>11, Sizes, SMTT(10), Location, Design DEF Gens, Sizes, Location, Design
<2>15. QED
  BY <2>11, <2>13, <2>14, SMTT(10), Sizes, Location, Design DEF S6, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>j286x3GqHzoswfqshwG.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE GenFiltered'
<2> USE ONLY <1>j286x3GqHzoswfqshwG, Sizes, Location, Design
<2>1. GenFiltered /\ MZsmqs
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_GenFiltered, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : pNoIu82GK8uw(j,r,m)
        /\ UNCHANGED <<>>
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : pNoIu82GK8uw(j,r,m)
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
       /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
       /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
       /\ xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst /\ xsrc[m.x] # rpg[j][r]
  BY <2>3, <1>oBC1kRJSR, <1>g0zJ9ylLNdSB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. LET q == rpg[j][r] g == rg[j][r] IN
       /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
       /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
       /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
  BY <1>e4pV84f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, Design, Location, Sizes, SMTT(10) DEF DInst, GenFiltered, Inst, IsD, IsP, NL, pNoIu82GK8uw, MZsmqs, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>G58DcDCTiGkJcIco5.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE QuarNoReg'
<2> USE ONLY <1>G58DcDCTiGkJcIco5, Sizes, Location, Design
<2>1. QuarNoReg /\ K8 /\ K9 /\ fr1A /\ dcfPK /\ AydA /\ QC9Q /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : pNoIu82GK8uw(j,r,m)
        /\ UNCHANGED <<drep, gen, hd, hp, nx, pgn, plt, pr, pst, ptl, pvis, rg, rhit, rpe, rpg, sfly, sled, xg, xlt, xr, xsrc>>
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : pNoIu82GK8uw(j,r,m)
  BY <1>WzFDhp8XtrsI9c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
       /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
       /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
       /\ xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst /\ xsrc[m.x] # rpg[j][r]
  BY <2>3, <1>oBC1kRJSR, <1>g0zJ9ylLNdSB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. LET q == rpg[j][r] g == rg[j][r] IN
       /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
       /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
       /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
  BY <1>e4pV84f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, Design, Location, Sizes, SMTT(10) DEF Active, DInst, Inst, IsD, IsP, K8, K9, NL, OwnedBy, QuarNoReg, pNoIu82GK8uw, fr1A, dcfPK, AydA, QC9Q, JjZ1PO, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M1239_PdRDLegacy_PP_PdDRecvSinfoStepsA

\* T2M-SCOPE R2M1240_PdRDLegacy_PdPAgg_DRecvSinfo
\* T2M-BODY R2M1240_PdRDLegacy_PdPAgg_DRecvSinfo
\* T2M-LOCAL-VISIBILITY

<1>O87FhrzKddqB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE K2'
  BY ONLY <1>O87FhrzKddqB, Sizes, Location, Design, <1>aDO2TYVlpr, V21_Inv_K2 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>k7aQqcwgdn67.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE K4'
  BY ONLY <1>k7aQqcwgdn67, Sizes, Location, Design, <1>vVDLoRc4DG, V21_Inv_K4 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>HQelwVU9RBQH.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE K5'
  BY ONLY <1>HQelwVU9RBQH, Sizes, Location, Design, <1>GQNwZQkoPm, V21_Inv_K5 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>rFD5BiLvl1LC.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE K7'
  BY ONLY <1>rFD5BiLvl1LC, Sizes, Location, Design, <1>TwXx7ZDWvz, V21_Inv_K7 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>zlknFVnAzJbj.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE K8'
  BY ONLY <1>zlknFVnAzJbj, Sizes, Location, Design, <1>Di0bPVZeqR, V21_Inv_K8 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>ILPQeyqw6xXsO.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE K10'
  BY ONLY <1>ILPQeyqw6xXsO, Sizes, Location, Design, <1>iGOlHEqUrKl, V21_Inv_K10 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>LYShNUdl3MqKW.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE K11'
  BY ONLY <1>LYShNUdl3MqKW, Sizes, Location, Design, <1>yWqpnHnbnin, V21_Inv_K11 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>t5s3fPY8EGZ2x.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE K13'
  BY ONLY <1>t5s3fPY8EGZ2x, Sizes, Location, Design, <1>VriblWi7Q4r, V21_Inv_K13 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>ayFfT1hJ40Ujt.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE K16'
  BY ONLY <1>ayFfT1hJ40Ujt, Sizes, Location, Design, <1>vq6QvwpQpWv, V21_Inv_K16 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>BmzmE4fgb7sz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE S1'
  BY ONLY <1>BmzmE4fgb7sz, Sizes, Location, Design, <1>wzlGY97h9a, V21_Inv_S1 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>CQsMUggTnsOv.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE S5'
  BY ONLY <1>CQsMUggTnsOv, Sizes, Location, Design, <1>ppJXzXiF5q, V21_Inv_S5 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>K3UKmjaSHhQX.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE S6'
  BY ONLY <1>K3UKmjaSHhQX, Sizes, Location, Design, <1>lCJ38fPXIS, V21_Inv_S6 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>H2vH1ehkuOAlnpo6vtac0.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE GenFiltered'
  BY ONLY <1>H2vH1ehkuOAlnpo6vtac0, Sizes, Location, Design, <1>j286x3GqHzoswfqshwG, V21_Inv_GenFiltered DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>ZAmd4S6RXSC4bLCjTWt.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>ZAmd4S6RXSC4bLCjTWt, Sizes, Location, Design, <1>G58DcDCTiGkJcIco5, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1240_PdRDLegacy_PdPAgg_DRecvSinfo


<1> QED BY <1>rFD5BiLvl1LC, <1>aJVAftl78ENfK, <1>ILPQeyqw6xXsO, <1>K3UKmjaSHhQX, <1>k7aQqcwgdn67, <1>t5s3fPY8EGZ2x, <1>O87FhrzKddqB, <1>HQelwVU9RBQH, <1>zlknFVnAzJbj, <1>LYShNUdl3MqKW, <1>ayFfT1hJ40Ujt, <1>BmzmE4fgb7sz, <1>CQsMUggTnsOv, <1>H2vH1ehkuOAlnpo6vtac0, <1>ZAmd4S6RXSC4bLCjTWt, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF Part_DRecvSinfo_02_02, V21_Inv_BaseSafety, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_QuarNoReg, V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V22_T_hw, V22_T_led, V22_T_ph, V22_T_rx, V22_T_xdst
====
