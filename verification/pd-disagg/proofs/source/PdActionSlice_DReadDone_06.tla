---- MODULE PdActionSlice_DReadDone_06 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdFinalAuxType_dc8120345fba5649, PdSharedRefCounts, PdShapeBase, PdActionSlice_DReadDone_05

\* Complete original body PdFinalPart_DReadDone_04_01 SHA a7603d8de61bc70fa0cb020cf1556e4c2648e9194a703c91207a45d1cd24aa6a
HIDE DEF AuxType_dc8120345fba5649, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_DReadDone_01_01, Part_DReadDone_01_02, Part_DReadDone_02_01, Part_DReadDone_02_02, Part_DReadDone_03_01, Part_DReadDone_03_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K11, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_PostSharedRefZero, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SharedRefZero, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_DReadDone_04_01 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE (K6)' /\ (K12)' /\ (K13)' /\ (K4)' /\ (QuarNoReg)' /\ (K1)' /\ (K5)' /\ (S1)' /\ (S6)'
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

           DReadDoneD2Update(j,r) == LET q == rpg[j][r] x == rx[j][r] g == rg[j][r] IN
             IF hok[x]
             THEN /\ ph' = [ph EXCEPT ![j][r] = "run"]
                  /\ plt' = [plt EXCEPT ![q] = NTok(r,g)] /\ pvis' = [pvis EXCEPT ![q] = TRUE]
                  /\ sfly' = [sfly EXCEPT ![q] = {Tag(r,g)}] /\ sled' = [sled EXCEPT ![q] = {Tag(r,g)}]
                  /\ UNCHANGED <<pst,pr,pgn,led,prefc,pqp,drep,net>>
             ELSE /\ ph' = [ph EXCEPT ![j][r] = "end"]
                  /\ PageTo(q,FreeOrDrain(q),0,{},{})
                  /\ drep' = [drep EXCEPT ![r][g] = Bump(@)]
                  /\ net' = net \cup {Msg("reply",j,0,r,g,0,0,0,FALSE)}
                  /\ UNCHANGED <<sfly,pvis>>

           \* T2M-LOCAL-VISIBILITY

           DReadFailureD2(j,r) == DReadDone(j,r) /\ ~hok[rx[j][r]]

           \* T2M-LOCAL-VISIBILITY

           DReadFailureD2D2Pages(j,r) ==
             /\ led[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {} /\ PageTo(rpg[j][r],FreeOrDrain(rpg[j][r]),0,{},{})
             /\ UNCHANGED <<ptl,pvis,sfly,kpin,kfly,krs,hw,xr,xg,xk,xsrc,xdst,xnt,xlt,hok,xst,nx>>

           \* T2M-LOCAL-VISIBILITY

           EndHistoryD2(j,r,g,ok) ==
             /\ ph' = [ph EXCEPT ![j][r] = "end"]
             /\ drep' = [drep EXCEPT ![r][g] = 1]
             /\ dsucc' = IF ok THEN [dsucc EXCEPT ![r][g] = TRUE] ELSE dsucc
             /\ UNCHANGED <<rg,hd,crep>> /\ ~gbad'

           \* T2M-LOCAL-VISIBILITY

           DReadFailureD2D2Added(j,r) == {Msg("reply",j,0,r,rg[j][r],0,0,0,FALSE)}

           \* T2M-LOCAL-VISIBILITY

           PhaseRefinesD2 == \A i \in Inst, r \in Rq :
             /\ (ph[i][r] # "none" => ph'[i][r] # "none")
             /\ (Active(i,r)' => Active(i,r))

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, MsgC1, MsgC2, MsgC3, MsgC4, MsgC5, MsgC6, MsgC7, MsgC8, MsgC9, MsgC10, MsgSafe, DReadDoneD2Update, DReadFailureD2, DReadFailureD2D2Pages, EndHistoryD2, DReadFailureD2D2Added, PhaseRefinesD2

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SXJT0yI47i.         K12 <=> (\A m \in net : MsgSafe(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, MsgSafe, MsgC1, MsgC2, MsgC3, MsgC4, MsgC5, MsgC6, MsgC7, MsgC8, MsgC9, MsgC10, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>j4cViHN.         (\A m \in net' : MsgSafe(m)') => K12'
  BY ZenonT(5), Sizes, Location, Design DEF K12, MsgSafe, MsgC1, MsgC2, MsgC3, MsgC4, MsgC5, MsgC6, MsgC7, MsgC8, MsgC9, MsgC10, Sizes, Location, Design
\* T2M-END R2M0002_PP_PdMessagePred


<1>x4G59zhOcWUl.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DReadDone(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, rd, rg, rhit, rp, rpe, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>x4G59zhOcWUl, Sizes, Location, Design, ZenonT(5) DEF DReadDone, DStartRun, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M0182_PP_PdDReadDoneFrames

\* T2M-SCOPE R2M0183_PP_PdCell_DReadDone_K17

<1>rSd71WtIxzIDx.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, IsD(j), Active(j,r)
  PROVE rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
<2> USE ONLY <1>rSd71WtIxzIDx, Sizes, Location, Design
<2>1. K8 /\ K9 /\ j \in DInst
  BY Sizes, SMTT(10), V21_Inv_K8, V21_Inv_K9, Location, Design DEF IsD, Inst, DInst, NL, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NhYNztiJuG4YZnw3.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hWIfUWYvOn8Z2juQygjL.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, Active(i,r)
  PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (~rhit[i][r] => pst[rpg[i][r]] = "priv" /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r])
        /\ (IsP(i) => ~rhit[i][r])
        /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  BY ONLY <1>hWIfUWYvOn8Z2juQygjL, Sizes, Location, Design, SMTT(10) DEF K8, Active, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hdKFcEtMtN5Ml4Qsk.        
  ASSUME NEW i \in DInst, NEW r \in Rq, K9, rhit[i][r]
  PROVE /\ ph[i][r] \in {"run","ovl","end"}
        /\ (ph[i][r] \in {"run","ovl"} => pst[rpg[i][r]] = "shared" /\ Tag(r,rg[i][r]) \in sled[rpg[i][r]])
  BY ONLY <1>hdKFcEtMtN5Ml4Qsk, Sizes, Location, Design, Zenon DEF K9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hIc7A2XTHSqetfrLIb.        
  ASSUME NEW x \in Xids, T_nx, K2, x < nx
  PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>hIc7A2XTHSqetfrLIb, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, T_nx, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EOiGKjIWK8pM0MY8kYs.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst /\ (IsP(Loc(p)) <=> ~IsD(Loc(p)))
  BY ONLY <1>EOiGKjIWK8pM0MY8kYs, Sizes, Location, Design, Location, Sizes, SMTT(10) DEF IsP, IsD, Inst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M0027_PP_D2Finite_PdFactsA


<1>zARAd9CsuAvsRNbT4TtduPZ.        
  ASSUME NEW S, NEW T, NEW f \in [S -> SUBSET T], NEW q \in S, NEW e, f[q] = {}
  PROVE [f EXCEPT ![q] = @ \cup {e}] = [f EXCEPT ![q] = {e}]
<2> USE ONLY <1>zARAd9CsuAvsRNbT4TtduPZ, Sizes, Location, Design
<2>1. f[q] \cup {e} = {e}
  BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY ONLY <2>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0185_PP_D2Finite_PdEmptyUnionA


<1>mT2NTTJH9Dviy.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE LET q == rpg[j][r] x == rx[j][r] g == rg[j][r] IN
        /\ j \in DInst /\ Mode = "pull" /\ ph[j][r] = "rd"
        /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r]
        /\ ~rhit[j][r] /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
        /\ x \in Xids /\ x < nx /\ xr[x] = r /\ xg[x] = g /\ xdst[x] = q
        /\ iv[x] = "cqe" /\ hw[x] = "stop" /\ xlt[x] = xnt[x] /\ xnt[x] = NTok(r,g)
        /\ led[q] = {} /\ sfly[q] = {} /\ sled[q] = {}
        /\ (hok[x] => ptl[q] = NTok(r,g))
<2> USE ONLY <1>mT2NTTJH9Dviy, Sizes, Location, Design
<2>1. K2 /\ K3 /\ K8 /\ K9 /\ K10 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. IsD(j) /\ Mode = "pull" /\ ph[j][r] = "rd" /\ iv[rx[j][r]] = "cqe" /\ led[rpg[j][r]] = {}
  BY SMTT(10), Sizes, Location, Design DEF DReadDone, Sizes, Location, Design
<2>3. j \in DInst /\ Active(j,r) /\ ~rhit[j][r]
  BY <2>1, <2>2, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF Active, K9, Sizes, Location, Design
<2>4. rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ rg[j][r] \in Gens /\ rg[j][r] <= gen[r]
       /\ pst[rpg[j][r]] = "priv" /\ pr[rpg[j][r]] = r /\ pgn[rpg[j][r]] = rg[j][r]
  BY <2>1, <2>2, <2>3, <1>hWIfUWYvOn8Z2juQygjL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. rx[j][r] \in Xids /\ rx[j][r] < nx /\ xr[rx[j][r]] = r /\ xg[rx[j][r]] = rg[j][r]
       /\ xdst[rx[j][r]] = rpg[j][r] /\ sfly[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {}
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K9, Sizes, Location, Design
<2>6. hw[rx[j][r]] = "stop" /\ xlt[rx[j][r]] = xnt[rx[j][r]] /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <2>1, <2>2, <2>5, Design, SMTT(10), Sizes, Location DEF K2, K3, CqeHw, T_nx, Xids, Sizes, Location, Design
<2>7. hok[rx[j][r]] => ptl[rpg[j][r]] = NTok(r,rg[j][r])
  BY <2>1, <2>2, <2>4, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF K10, OwnedBy, Sizes, Location, Design
<2>8. QED BY <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>snu4CBQvJChu7i.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE DReadDoneD2Update(j,r)
        /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,
                       xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,xst,nx,crep,dsucc,gbad>>
<2> USE ONLY <1>snu4CBQvJChu7i, Sizes, Location, Design
<2>1. T_sfly /\ T_sled /\ T_ph /\ T_plt /\ T_pvis
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. rpg[j][r] \in Pages /\ sfly[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {}
       /\ hw[rx[j][r]] = "stop" /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <1>mT2NTTJH9Dviy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>zARAd9CsuAvsRNbT4TtduPZ, <1>x4G59zhOcWUl, Design, SMTT(10), Sizes, Location DEF DReadDone, DStartRun, DReadDoneD2Update, T_sfly, T_sled, T_ph, T_plt, T_pvis, rtV, instV, kV, xV, Sizes, Location, Design
\* T2M-END R2M0186_PP_PdD2DReadDoneEffect


<1>r8mxQYcJL4G4mA1a6.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DReadFailureD2(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>r8mxQYcJL4G4mA1a6, Sizes, Location, Design, SMTT(10) DEF DReadFailureD2, DReadDone, rtV, instV, kV, xV, ghV, Sizes, Location, Design
\* T2M-END R2M0187_PP_PdD2ReadFailureFrames


<1>EaWYLyjWElDP5Z0dLp.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE /\ IsD(j) /\ j \in DInst /\ Active(j,r)
        /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
        /\ rg[j][r] \in Gens /\ rg[j][r] <= gen[r]
        /\ drep[r][rg[j][r]] = 0 /\ ~rhit[j][r] /\ pst[rpg[j][r]] = "priv" /\ ph[j][r] = "rd"
<2> USE ONLY <1>EaWYLyjWElDP5Z0dLp, Sizes, Location, Design
<2>1. IsD(j) /\ Active(j,r) /\ K8 /\ K9 /\ ph[j][r] = "rd"
  BY SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF DReadFailureD2, DReadDone, DReadDone, Active, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>hWIfUWYvOn8Z2juQygjL, <1>rSd71WtIxzIDx, <1>hdKFcEtMtN5Ml4Qsk, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Fjbx06FqCsyvFgnLH92k.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DReadFailureD2(j,r)
  PROVE /\ ph' = [ph EXCEPT ![j][r] = "end"]
        /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(drep[r][rg[j][r]])]
        /\ UNCHANGED dsucc
        /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,crep,rg,rpg,rpe,rx,rhit>>
  BY ONLY <1>Fjbx06FqCsyvFgnLH92k, Sizes, Location, Design, SMTT(10) DEF DReadFailureD2, DReadDone, DReadDone, rtV, instV, kV, recV, pgV, xV, ghV, vars, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r9VnjyvowyN2IgSWXdGcCcO.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE DReadFailureD2D2Pages(j,r)
<2> USE ONLY <1>r9VnjyvowyN2IgSWXdGcCcO, Sizes, Location, Design
<2>1. DReadDone(j,r) /\ ~hok[rx[j][r]]
  BY SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>2. QED BY <2>1, <1>mT2NTTJH9Dviy, <1>snu4CBQvJChu7i, SMTT(10), Sizes, Location, Design DEF DReadDoneD2Update, DReadFailureD2D2Pages, Sizes, Location, Design
\* T2M-END R2M0188_PP_PdD2DReadFailureD2Effect


<1>CI9JpNRSxrMoU7.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE K1'
<2> USE ONLY <1>CI9JpNRSxrMoU7, Sizes, Location, Design
<2>1. K1 /\ T_gen /\ T_drep /\ T_dsucc
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K1, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. rg[j][r] \in Gens /\ rg[j][r] <= gen[r]
  BY <1>EaWYLyjWElDP5Z0dLp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(drep[r][rg[j][r]])]
       /\ UNCHANGED dsucc
       /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,crep>>
  BY <1>Fjbx06FqCsyvFgnLH92k, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A u \in Rq, g \in Gens : g > gen[u] => drep'[u][g] = 0 /\ ~dsucc'[u][g]
  BY <2>1, <2>2, <2>3, Sizes, SMTT(10), Location, Design DEF K1, T_gen, T_drep, T_dsucc, Gens, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M0189_PP_PdD2DReadFailureD2_K1

\* T2M-SCOPE R2M0190_PP_PdD2DReadDone_K1
\* T2M-BODY R2M0190_PP_PdD2DReadDone_K1
\* T2M-LOCAL-VISIBILITY

<1>FAdV1HEDV.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K1'
<2> USE ONLY <1>FAdV1HEDV, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
<3>1. K1
  BY SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF Strengthen, Safety, BaseSafety, Sizes, Location, Design
<3>2. UNCHANGED <<gen,rt,rp,rd,hp,hd,crep,drep,dsucc>>
  BY <2>1, <1>snu4CBQvJChu7i, SMTT(10), Sizes, Location, Design DEF DReadDoneD2Update, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>CI9JpNRSxrMoU7, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0190_PP_PdD2DReadDone_K1


<1>ABWOhPPrdJelZ4.        
  ASSUME NEW x \in Xids, T_nx, K2, InFl(x)
  PROVE x < nx
  BY ONLY <1>ABWOhPPrdJelZ4, Sizes, Location, Design, SMT DEF T_nx, Xids, K2, InFl, Sizes, Location, Design


<1>FKA3I6SAeRtA49GD.        
  ASSUME NEW x \in Xids, T_nx, K1, K2, K3, InFl(x)
  PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>FKA3I6SAeRtA49GD, Sizes, Location, Design
<2>1. x < nx
  BY <1>ABWOhPPrdJelZ4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMT, Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M0028_PP_PdDataLemmas


<1>L6Tf5v8Y2nuUEHEzBedz.        
  ASSUME NEW x \in Xids, PinInv, InFl(x)
  PROVE xdst[x] \in Pages /\ x \in led[xdst[x]]
<2> USE ONLY <1>L6Tf5v8Y2nuUEHEzBedz, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. x < nx /\ xdst[x] \in Pages
  BY <2>1, <1>ABWOhPPrdJelZ4, <1>FKA3I6SAeRtA49GD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K2, K3, K4, InFl, ExpPage, InitPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vOs0aO70tmslbxUvmi1VYj11A.        
  ASSUME NEW p \in Pages, PinInv, led[p] = {}
  PROVE NoWriteInto(p)
<2> USE ONLY <1>vOs0aO70tmslbxUvmi1VYj11A, Sizes, Location, Design
<2>1. \A x \in Xids : InFl(x) => x \in led[xdst[x]]
  BY <1>L6Tf5v8Y2nuUEHEzBedz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMTT(10), Sizes, Location, Design DEF NoWriteInto, Writing, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mZNjhqJJlxOdnw.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE LET q == rpg[j][r] g == rg[j][r] x == rx[j][r] IN
    /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens
    /\ ~rhit[j][r] /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
    /\ x \in Xids /\ x < nx /\ xr[x] = r /\ xg[x] = g /\ xdst[x] = q
    /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x]
    /\ xnt[x] = NTok(r,g) /\ ptl[q] = NTok(r,g)
    /\ led[q] = {} /\ sfly[q] = {} /\ sled[q] = {}
  BY ONLY <1>mZNjhqJJlxOdnw, Sizes, Location, Design, <1>mT2NTTJH9Dviy, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gyDL4BFCHPcjRplQ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, pqp, pr, prefc, pst, ptl, rd, rg, rhit, rp, rpe, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>gyDL4BFCHPcjRplQ, Sizes, Location, Design, <1>mT2NTTJH9Dviy, <1>snu4CBQvJChu7i, SMTT(10) DEF DReadDoneD2Update, Sizes, Location, Design
\* T2M-END R2M0191_PP_PdD2ReadSuccessEffects

\* T2M-SCOPE R2M0192_PP_PdD2ReadSuccessMasks
\* T2M-BODY R2M0192_PP_PdD2ReadSuccessMasks
\* T2M-LOCAL-VISIBILITY

<1>rJeLah8cVHTBVuSgN.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE \A i \in Inst, v \in Rq :
       /\ (Active(i,v)' <=> Active(i,v))
       /\ ((ph'[i][v] = "none") <=> (ph[i][v] = "none"))
       /\ ((ph'[i][v] = "end") <=> (ph[i][v] = "end"))
       /\ (ph[i][v] \in {"run","ovl"} => ph'[i][v] \in {"run","ovl"})
       /\ ((i # j \/ v # r) => ph'[i][v] = ph[i][v])
<2> USE ONLY <1>rJeLah8cVHTBVuSgN, Sizes, Location, Design
<2>1. T_ph
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
  BY <1>gyDL4BFCHPcjRplQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF T_ph, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iqVE15v0xS4DhqK2Phn.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE /\ led' = led /\ sled' = sled
        /\ \A p \in Pages : sled'[p] \subseteq sled[p]
<2> USE ONLY <1>iqVE15v0xS4DhqK2Phn, Sizes, Location, Design
<2>1. T_led /\ T_sled /\ rpg[j][r] \in Pages
  BY <1>EaWYLyjWElDP5Z0dLp, <1>g4u1JVDPkX, SMTT(10), V21_Inv_KStruct, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, KStruct, Sizes, Location, Design
<2>2. DReadFailureD2D2Pages(j,r)
  BY <1>r9VnjyvowyN2IgSWXdGcCcO, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF DReadFailureD2D2Pages, PageTo, PageToG, GrownOwn, GFr, GTo, GrownOf, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, T_led, T_sled, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uuUafuSSbGy2s1uP81y.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE \A p \in Pages : IsP(Loc(p)) => UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<2> USE ONLY <1>uuUafuSSbGy2s1uP81y, Sizes, Location, Design
<2>1. T_pst /\ T_pr /\ T_pgn /\ T_plt /\ T_led /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. IsD(j) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
  BY <1>EaWYLyjWElDP5Z0dLp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. DReadFailureD2D2Pages(j,r)
  BY <1>r9VnjyvowyN2IgSWXdGcCcO, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in Pages, IsP(Loc(p)) PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<3>1. p # rpg[j][r] /\ p \notin GrownOf(j,r)
  BY <2>4, <2>2, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF GrownOf, Sizes, Location, Design
<3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF DReadFailureD2D2Pages, PageTo, PageToG, GrownOwn, GFr, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0194_PP_PdD2DReadFailureD2Masks


<1>mQqDr8oUgWm.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, IsD(j), Active(j,r), Mode = "push", rx[j][r] \in Xids
  PROVE rx[j][r] < nx /\ xr[rx[j][r]] = r /\ xg[rx[j][r]] = rg[j][r]
<2> USE ONLY <1>mQqDr8oUgWm, Sizes, Location, Design
<2>1. K8 /\ K9 /\ S5 /\ j \in DInst
  BY <1>NhYNztiJuG4YZnw3, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ph[j][r] \in {"wait","run","ovl"}
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
<2>3. ~rhit[j][r]
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K9, Xids, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K9, S5, Sizes, Location, Design
\* T2M-END R2M0064_PP_PdD2RevokeFacts


<1>Bo9O5fy73pPrd.        
  ASSUME PinInv
  PROVE \A u \in Rq, g \in Gens : drep[u][g] = 1 => hd[u][g] \in Inst
<2> USE ONLY <1>Bo9O5fy73pPrd, Sizes, Location, Design
<2>1. K1 /\ T_gen
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K1, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. \A u \in Rq, g \in Gens : drep[u][g] = 1 => g <= gen[u]
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K1, T_gen, Gens, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>K8c8qqk9sFM1re.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW g \in Gens, NEW ok \in BOOLEAN,
         K13, T_drep, T_dsucc, T_ph, T_rg,
         drep[r][g] = 0, hd[r][g] = j, rg[j][r] = g,
         \A u \in Rq, h \in Gens : drep[u][h] = 1 => hd[u][h] \in Inst,
         EndHistoryD2(j,r,g,ok)
  PROVE K13'
<2> USE ONLY <1>K8c8qqk9sFM1re, Sizes, Location, Design
<2>1. ASSUME NEW u \in Rq, NEW h \in Gens
       PROVE /\ drep'[u][h] <= 1
             /\ (dsucc'[u][h] => drep'[u][h] = 1)
             /\ (crep'[u][h] = "ok" => dsucc'[u][h])
             /\ crep'[u][h] # "two"
             /\ (drep'[u][h] = 1 => (rg'[hd'[u][h]][u] > h \/
                   (rg'[hd'[u][h]][u] = h /\ ph'[hd'[u][h]][u] = "end")))
<3>1. CASE u = r /\ h = g
  BY <3>1, SMTT(10), Sizes, Location, Design DEF K13, EndHistoryD2, T_drep, T_dsucc, T_ph, Sizes, Location, Design
<3>2. CASE u # r \/ h # g
<4>1. drep'[u][h] = drep[u][h] /\ dsucc'[u][h] = dsucc[u][h]
  BY <3>2, SMTT(10), Sizes, Location, Design DEF EndHistoryD2, T_drep, T_dsucc, Sizes, Location, Design
<4>2. drep[u][h] = 1 => hd[u][h] \in Inst /\ (ph[hd[u][h]][u] = "end" => ph'[hd[u][h]][u] = "end")
  BY <3>2, SMTT(10), Sizes, Location, Design DEF EndHistoryD2, T_ph, Sizes, Location, Design
<4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF K13, EndHistoryD2, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K13, EndHistoryD2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VRWNag5kokxc.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW g \in Gens, NEW ok \in BOOLEAN,
         NEW m, MsgSafe(m), T_drep, T_dsucc, drep[r][g] = 0,
         EndHistoryD2(j,r,g,ok),
         UNCHANGED <<gen,hp,nx,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok>>
  PROVE MsgSafe(m)'
<2> USE ONLY <1>VRWNag5kokxc, Sizes, Location, Design
<2>1. m.t = "reply" => m.r \in Rq /\ m.g \in Gens /\ (m.r # r \/ m.g # g)
  BY SMTT(10), Sizes, Location, Design DEF MsgSafe, MsgC1, MsgC10, Sizes, Location, Design
<2>2. MsgC10(m)'
  BY <2>1, SMTT(10), Sizes, Location, Design DEF MsgSafe, MsgC10, EndHistoryD2, T_drep, T_dsucc, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF MsgSafe, MsgC1, MsgC2, MsgC3, MsgC4, MsgC5, MsgC6, MsgC7, MsgC8, MsgC9, EndHistoryD2, CqeHw, Sizes, Location, Design
\* T2M-END R2M0062_PP_PdD2History


<1>qSzpNunGFMzZoZOq6XCdYp8V2y.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE EndHistoryD2(j,r,rg[j][r],FALSE)
<2> USE ONLY <1>qSzpNunGFMzZoZOq6XCdYp8V2y, Sizes, Location, Design
<2>1. drep[r][rg[j][r]] = 0
  BY <1>EaWYLyjWElDP5Z0dLp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ph' = [ph EXCEPT ![j][r] = "end"]
       /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(drep[r][rg[j][r]])]
       /\ UNCHANGED dsucc
       /\ UNCHANGED <<rg,hd,crep>>
  BY <1>Fjbx06FqCsyvFgnLH92k, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ~gbad'
  BY Design, SMTT(10), V21_Inv_GenFiltered, V21_Inv_Safety, Sizes, Location DEF DReadFailureD2, DReadDone, Safety, GenFiltered, ghV, rtV, instV, kV, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF EndHistoryD2, Bump, Sizes, Location, Design
\* T2M-END R2M0201_PP_PdD2DReadFailureD2History


<1>p8yAecdJfI5ngLM.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE K12'
<2> USE ONLY <1>p8yAecdJfI5ngLM, Sizes, Location, Design
<2>1. K8 /\ K12 /\ T_drep /\ T_dsucc
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K12, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. rg[j][r] \in Gens /\ rg[j][r] <= gen[r] /\ drep[r][rg[j][r]] = 0 /\ IsD(j) /\ Active(j,r)
  BY <1>EaWYLyjWElDP5Z0dLp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hd[r][rg[j][r]] = j
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K8, Active, Sizes, Location, Design
<2>4. EndHistoryD2(j,r,rg[j][r],FALSE)
       /\ UNCHANGED <<gen,hp,nx,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok>>
  BY <1>qSzpNunGFMzZoZOq6XCdYp8V2y, <1>r8mxQYcJL4G4mA1a6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. net' = net \cup DReadFailureD2D2Added(j,r)
  BY SMTT(10), Sizes, Location, Design DEF DReadFailureD2, DReadDone, DReadFailureD2D2Added, Sizes, Location, Design
<2>6. \A m \in net : MsgSafe(m)'
  BY <2>1, <2>2, <2>4, <1>SXJT0yI47i, <1>VRWNag5kokxc, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. (Mode = "push" /\ rx[j][r] \in Xids) =>
       rx[j][r] < nx /\ xr[rx[j][r]] = r /\ xg[rx[j][r]] = rg[j][r]
  BY <2>2, <1>mQqDr8oUgWm, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>8. ASSUME NEW m \in DReadFailureD2D2Added(j,r) PROVE MsgSafe(m)'
  BY <2>1, <2>2, <2>3, <2>4, <2>7, SMTT(10), Sizes, Location, Design DEF DReadFailureD2D2Added, EndHistoryD2, T_drep, T_dsucc, Msg, MsgSafe, MsgC1, MsgC2, MsgC3, MsgC4, MsgC5, MsgC6, MsgC7, MsgC8, MsgC9, MsgC10, Sizes, Location, Design
<2>9. QED BY <2>5, <2>6, <2>8, <1>j4cViHN, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0202_PP_PdD2DReadFailureD2_K12


<1>sIxEImgC8b.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K12'
<2> USE ONLY <1>sIxEImgC8b, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
<3>1. K12
  BY SMTT(10), V21_Inv_BaseSafety, V21_Inv_K12, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF Strengthen, Safety, BaseSafety, Sizes, Location, Design
<3>2. UNCHANGED <<net,gen,hp,hd,nx,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok,drep,dsucc>>
  BY <2>1, <1>snu4CBQvJChu7i, SMTT(10), Sizes, Location, Design DEF DReadDoneD2Update, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF K12, CqeHw, Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>p8yAecdJfI5ngLM, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0203_PP_PdD2DReadDone_K12


<1>zsrKF1x0Lsl4M.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE K13'
<2> USE ONLY <1>zsrKF1x0Lsl4M, Sizes, Location, Design
<2>1. K13 /\ K1 /\ T_gen /\ T_ph /\ T_hd
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K13, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<crep, drep, dsucc, gbad, hd, rg>>
  BY <1>gyDL4BFCHPcjRplQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A v \in Rq, g \in Gens : drep[v][g] = 1 => hd[v][g] \in Inst
  BY <2>1, <1>NhYNztiJuG4YZnw3, Sizes, SMTT(10), Location, Design DEF K1, T_gen, Gens, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, <1>rJeLah8cVHTBVuSgN, SMTT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design
\* T2M-END R2M0204_PP_PdD2ReadSuccess_K13


<1>cXuqn2nP44JJlTY.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE K13'
<2> USE ONLY <1>cXuqn2nP44JJlTY, Sizes, Location, Design
<2>1. K8 /\ K13 /\ T_drep /\ T_dsucc /\ T_ph /\ T_rg
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K13, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. IsD(j) /\ Active(j,r) /\ rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
  BY <1>EaWYLyjWElDP5Z0dLp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hd[r][rg[j][r]] = j
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K8, Active, Sizes, Location, Design
<2>4. EndHistoryD2(j,r,rg[j][r],FALSE)
  BY <1>qSzpNunGFMzZoZOq6XCdYp8V2y, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, <1>Bo9O5fy73pPrd, <1>K8c8qqk9sFM1re, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0205_PP_PdD2DReadFailureD2_K13

\* T2M-SCOPE R2M0206_PP_PdD2DReadDone_K13

<1>GEpst8iy2n.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K13'
<2> USE ONLY <1>GEpst8iy2n, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
  BY <2>1, <1>zsrKF1x0Lsl4M, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>cXuqn2nP44JJlTY, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0206_PP_PdD2DReadDone_K13


<1>YnBKoZATz15brf.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE K4'
<2> USE ONLY <1>YnBKoZATz15brf, Sizes, Location, Design
<2>1. K4 /\ UNCHANGED <<iv,nx,xdst,xk,xsrc,xst>>
  BY <1>r8mxQYcJL4G4mA1a6, SMTT(10), V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED led
  BY <1>iqVE15v0xS4DhqK2Phn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, InitPage, Sizes, Location, Design
\* T2M-END R2M0210_PP_PdD2DReadFailureD2_K4

\* T2M-SCOPE R2M0211_PP_PdD2DReadDone_K4
\* T2M-BODY R2M0211_PP_PdD2DReadDone_K4
\* T2M-LOCAL-VISIBILITY

<1>ACqbAq1fW.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K4'
<2> USE ONLY <1>ACqbAq1fW, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
<3>1. K4
  BY SMTT(10), V21_Inv_BaseSafety, V21_Inv_K4, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF Strengthen, Safety, BaseSafety, Sizes, Location, Design
<3>2. UNCHANGED <<nx,iv,xk,xdst,xsrc,xst,led>>
  BY <2>1, <1>snu4CBQvJChu7i, SMTT(10), Sizes, Location, Design DEF DReadDoneD2Update, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, InitPage, Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>YnBKoZATz15brf, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0211_PP_PdD2DReadDone_K4

\* T2M-SCOPE R2M0212_PP_PdD2DReadFailureD2_K5

<1>rQlpmeoiCf5uSU.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE K5'
<2> USE ONLY <1>rQlpmeoiCf5uSU, Sizes, Location, Design
<2>1. K5 /\ K7 /\ K16 /\ T_gen /\ T_hw /\ T_kpin /\ T_krs /\ T_led /\ T_pgn /\ T_ph /\ T_plt /\ T_pqp /\ T_pr /\ T_prefc /\ T_pst /\ T_ptl /\ T_rg /\ T_rhit /\ T_rpg /\ T_sfly /\ T_sled /\ T_xdst /\ T_xg /\ T_xr
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_K5, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. IsD(j) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
  BY <1>EaWYLyjWElDP5Z0dLp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. DReadFailureD2D2Pages(j,r)
  BY <1>r9VnjyvowyN2IgSWXdGcCcO, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Location, Sizes, SMTT(10) DEF DReadFailureD2D2Pages, Active, FreeOrDrain, GFr, GTo, GiveUpTo, GiveUpToN, GrownOf, GrownOwn, GrownP, InFl, IsD, IsP, K16, K5, K7, KPinned, Maps, NHits, NoWriteInto, OwnedBy, PageTo, PageToG, PinBlocks, T_gen, T_hw, T_kpin, T_krs, T_led, T_pgn, T_ph, T_plt, T_pqp, T_pr, T_prefc, T_pst, T_ptl, T_rg, T_rhit, T_rpg, T_sfly, T_sled, T_xdst, T_xg, T_xr, Tag, Writing, KPages, Sizes, Location, Design
\* T2M-END R2M0212_PP_PdD2DReadFailureD2_K5

\* T2M-SCOPE R2M0213_PP_PdD2DReadDone_K5
\* T2M-BODY R2M0213_PP_PdD2DReadDone_K5
\* T2M-LOCAL-VISIBILITY

<1>a7QzQAFMv.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K5'
<2> USE ONLY <1>a7QzQAFMv, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
<3>1. K5
  BY SMTT(10), V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF Strengthen, Safety, BaseSafety, Sizes, Location, Design
<3>2. UNCHANGED <<pst,pr,pgn,led,xr,xg>>
  BY <2>1, <1>snu4CBQvJChu7i, SMTT(10), Sizes, Location, Design DEF DReadDoneD2Update, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>rQlpmeoiCf5uSU, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0213_PP_PdD2DReadDone_K5


<1>JrCzdBUETkwq.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE K6'
<2> USE ONLY <1>JrCzdBUETkwq, Sizes, Location, Design
<2>1. K6 /\ K7 /\ T_sfly /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<gen, pgn, pr, pst>>
  BY <1>gyDL4BFCHPcjRplQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rpg[j][r] \in Pages /\ pst[rpg[j][r]] = "priv"
       /\ pr[rpg[j][r]] = r /\ pgn[rpg[j][r]] = rg[j][r]
       /\ rg[j][r] <= gen[r]
  BY <2>1, <1>mZNjhqJJlxOdnw, SMTT(10), Sizes, Location, Design DEF K7, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, <1>mZNjhqJJlxOdnw, <1>vOs0aO70tmslbxUvmi1VYj11A, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K6, NL, OwnedBy, T_sfly, T_sled, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0214_PP_PdD2ReadSuccess_K6


<1>mkhI5BD218qgcl.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE K6'
<2> USE ONLY <1>mkhI5BD218qgcl, Sizes, Location, Design
<2>1. K9 /\ K8 /\ K6 /\ K16 /\ T_sfly /\ T_sled /\ T_pst /\ T_pr /\ T_pgn
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K16, V21_Inv_K6, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. IsD(j) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ (~rhit[j][r] /\ pst[rpg[j][r]] = "priv")
  BY <2>1, <1>EaWYLyjWElDP5Z0dLp, <1>hWIfUWYvOn8Z2juQygjL, SMTT(10), Sizes, Location, Design DEF K9, DReadFailureD2, DReadDone, Active, Sizes, Location, Design
<2>3. DReadFailureD2D2Pages(j,r)
  BY <1>r9VnjyvowyN2IgSWXdGcCcO, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A p \in GrownOf(j,r) : sled[p] = {}
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K16, GrownOf, GrownP, Sizes, Location, Design
<2>5. UNCHANGED <<gen,sfly,sled>> /\ \A p \in Pages : sled'[p] \subseteq sled[p]
  BY <1>r8mxQYcJL4G4mA1a6, <1>iqVE15v0xS4DhqK2Phn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A p \in Pages : sfly'[p] \subseteq sled'[p]
  BY <2>1, <2>5, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
<2>7. ASSUME NEW p \in Pages, NEW t \in sled'[p]
       PROVE t[2] <= gen'[t[1]] /\ (OwnedBy(p,t[1],t[2])' \/ (pst'[p] = "shared" /\ IsD(Loc(p))))
<3>1. t \in sled[p] /\ p \notin GrownOf(j,r)
       /\ t[2] <= gen[t[1]] /\ (OwnedBy(p,t[1],t[2]) \/ (pst[p] = "shared" /\ IsD(Loc(p))))
  BY <2>1, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
<3>2. QED
  BY <2>1, <2>2, <2>3, <2>5, <3>1, Design, SMTT(10), Sizes, Location DEF DReadFailureD2D2Pages, OwnedBy, PageTo, PageToG, GrownOwn, GFr, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, T_pst, T_pr, T_pgn, T_sled, Sizes, Location, Design
<2>8. QED BY <2>6, <2>7, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
\* T2M-END R2M0215_PP_PdD2DReadFailureD2_K6

\* T2M-SCOPE R2M0216_PP_PdD2DReadDone_K6

<1>psPB1WciR.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K6'
<2> USE ONLY <1>psPB1WciR, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
  BY <2>1, <1>JrCzdBUETkwq, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>mkhI5BD218qgcl, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0216_PP_PdD2DReadDone_K6


<1>F7FlgBbuunRxbUBCo42cV.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE QuarNoReg'
<2> USE ONLY <1>F7FlgBbuunRxbUBCo42cV, Sizes, Location, Design
<2>1. QuarNoReg /\ UNCHANGED iv
  BY <1>r8mxQYcJL4G4mA1a6, SMTT(10), V21_Inv_QuarNoReg, V21_Inv_Safety, Sizes, Location, Design DEF Safety, Sizes, Location, Design
<2>2. \A p \in Pages : IsP(Loc(p)) => UNCHANGED <<pst[p],led[p]>>
  BY <1>uuUafuSSbGy2s1uP81y, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
\* T2M-END R2M0229_PP_PdD2DReadFailureD2_QuarNoReg

\* T2M-SCOPE R2M0230_PP_PdD2DReadDone_QuarNoReg
\* T2M-BODY R2M0230_PP_PdD2DReadDone_QuarNoReg
\* T2M-LOCAL-VISIBILITY

<1>GmJRdKmkI0VxhYKq.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE QuarNoReg'
<2> USE ONLY <1>GmJRdKmkI0VxhYKq, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
<3>1. QuarNoReg
  BY SMTT(10), V21_Inv_KStruct, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, Sizes, Location, Design
<3>2. UNCHANGED <<pst,led,iv,xsrc>>
  BY <2>1, <1>snu4CBQvJChu7i, SMTT(10), Sizes, Location, Design DEF DReadDoneD2Update, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>F7FlgBbuunRxbUBCo42cV, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0230_PP_PdD2DReadDone_QuarNoReg


<1>toZlrA.        
  ASSUME PinInv, PhaseRefinesD2, UNCHANGED <<nx,rg,rx,xd,xg,xk,xp,xr>>
  PROVE S1'
<2> USE ONLY <1>toZlrA, Sizes, Location, Design
<2>1. S1 /\ K2 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K2, V21_Inv_S1, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. \A y \in Xids : y < nx => xr[y] \in Rq /\ ExpInst(y) \in Inst
  BY <2>1, <1>hIc7A2XTHSqetfrLIb, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF PhaseRefinesD2, S1, ExpInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uZpuWA.        
  ASSUME PinInv, PhaseRefinesD2, UNCHANGED <<nx,rg,rx,xd,xdst,xg,xk,xp,xr,xsrc>>
  PROVE S6'
<2> USE ONLY <1>uZpuWA, Sizes, Location, Design
<2>1. S6 /\ K2 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K2, V21_Inv_S6, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. \A y \in Xids : (y < nx /\ InitPage(y) # 0) => xr[y] \in Rq /\ InitInst(y) \in Inst
  BY <2>1, <1>hIc7A2XTHSqetfrLIb, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF PhaseRefinesD2, S6, InitInst, InitPage, Sizes, Location, Design
\* T2M-END R2M0106_PP_PdD2PhaseFacts


<1>sS9QITtJI8YmGoePnxJf.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE PhaseRefinesD2
<2> USE ONLY <1>sS9QITtJI8YmGoePnxJf, Sizes, Location, Design
<2>1. T_ph /\ ph[j][r] = "rd"
  BY <1>g4u1JVDPkX, <1>mT2NTTJH9Dviy, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. DReadDoneD2Update(j,r)
  BY <1>snu4CBQvJChu7i, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF DReadDoneD2Update, PhaseRefinesD2, T_ph, Active, Sizes, Location, Design
\* T2M-END R2M0231_PP_PdD2DReadDonePhases

\* T2M-SCOPE R2M0232_PP_PdD2DReadDone_S1
\* T2M-BODY R2M0232_PP_PdD2DReadDone_S1
\* T2M-LOCAL-VISIBILITY

<1>eCvtIyQhF.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE S1'
<2> USE ONLY <1>eCvtIyQhF, Sizes, Location, Design
<2>1. PhaseRefinesD2 /\ UNCHANGED <<nx,rg,rx,xd,xg,xk,xp,xr>>
  BY <1>sS9QITtJI8YmGoePnxJf, <1>x4G59zhOcWUl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>toZlrA, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0232_PP_PdD2DReadDone_S1


<1>oYirWJyT7.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE S6'
<2> USE ONLY <1>oYirWJyT7, Sizes, Location, Design
<2>1. PhaseRefinesD2 /\ UNCHANGED <<nx,rg,rx,xd,xdst,xg,xk,xp,xr,xsrc>>
  BY <1>sS9QITtJI8YmGoePnxJf, <1>x4G59zhOcWUl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>uZpuWA, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0236_PP_PdD2DReadDone_S6


<1>OETt0FrWFIy.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE K1'
  BY ONLY <1>OETt0FrWFIy, Sizes, Location, Design, <1>FAdV1HEDV, V21_Inv_K1 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>OpjoZcfDiwr.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE K4'
  BY ONLY <1>OpjoZcfDiwr, Sizes, Location, Design, <1>ACqbAq1fW, V21_Inv_K4 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>bwa85SSdKa0.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE K5'
  BY ONLY <1>bwa85SSdKa0, Sizes, Location, Design, <1>a7QzQAFMv, V21_Inv_K5 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>i2DUzIHYBmM.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE K6'
  BY ONLY <1>i2DUzIHYBmM, Sizes, Location, Design, <1>psPB1WciR, V21_Inv_K6 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Z29iGloqbeCb.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE K12'
  BY ONLY <1>Z29iGloqbeCb, Sizes, Location, Design, <1>sIxEImgC8b, V21_Inv_K12 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>D7s2RF4brWeh.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE K13'
  BY ONLY <1>D7s2RF4brWeh, Sizes, Location, Design, <1>GEpst8iy2n, V21_Inv_K13 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>X6wnn6Lt7OV.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE S1'
  BY ONLY <1>X6wnn6Lt7OV, Sizes, Location, Design, <1>eCvtIyQhF, V21_Inv_S1 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>i8VjusrYJai.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE S6'
  BY ONLY <1>i8VjusrYJai, Sizes, Location, Design, <1>oYirWJyT7, V21_Inv_S6 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>JKC1J7xs46Wlbw6AlT.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>JKC1J7xs46Wlbw6AlT, Sizes, Location, Design, <1>GmJRdKmkI0VxhYKq, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M0237_PdPAgg_DReadDone


<1> QED BY <1>i2DUzIHYBmM, <1>Z29iGloqbeCb, <1>D7s2RF4brWeh, <1>OpjoZcfDiwr, <1>JKC1J7xs46Wlbw6AlT, <1>OETt0FrWFIy, <1>bwa85SSdKa0, <1>X6wnn6Lt7OV, <1>i8VjusrYJai, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF Part_DReadDone_04_01, V21_Inv_BaseSafety, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_QuarNoReg, V21_Inv_S1, V21_Inv_S5, V21_Inv_S6, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK
====
