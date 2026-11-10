---- MODULE PdActionSlice_DReadDone_05 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdFinalAuxType_dc8120345fba5649, PdSharedRefCounts, PdShapeBase, PdActionSlice_DReadDone_04

\* Complete original body PdFinalPart_DReadDone_03_02 SHA 24d60dc4063715f6feed858dd0a09d34baedb9f890316e10994df04390f16bf4
HIDE DEF AuxType_dc8120345fba5649, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_DReadDone_01_01, Part_DReadDone_01_02, Part_DReadDone_02_01, Part_DReadDone_02_02, Part_DReadDone_03_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_PostSharedRefZero, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SharedRefZero, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_DReadDone_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE (ReadOwnLanded)' /\ (K9)' /\ (S5)'
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

           D2Finite_K8AtA(i,r) ==
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


           D2Finite_K9AtA(j,r) ==
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


           EndHistoryD2(j,r,g,ok) ==
             /\ ph' = [ph EXCEPT ![j][r] = "end"]
             /\ drep' = [drep EXCEPT ![r][g] = 1]
             /\ dsucc' = IF ok THEN [dsucc EXCEPT ![r][g] = TRUE] ELSE dsucc
             /\ UNCHANGED <<rg,hd,crep>> /\ ~gbad'

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

           McO6Nv_c6YAPZXLgH(j,r) == LET q == rpg[j][r] x == rx[j][r] g == rg[j][r] IN
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

           DcZc_hAn59KNFt(j,r) == DReadDone(j,r) /\ ~hok[rx[j][r]]

           \* T2M-LOCAL-VISIBILITY

           qR2mWTT_fHP9WN4t34et1(j,r) ==
             /\ led[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {} /\ PageTo(rpg[j][r],FreeOrDrain(rpg[j][r]),0,{},{})
             /\ UNCHANGED <<ptl,pvis,sfly,kpin,kfly,krs,hw,xr,xg,xk,xsrc,xdst,xnt,xlt,hok,xst,nx>>

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, DReadDoneD2Update, DReadFailureD2, DReadFailureD2D2Pages, D2Finite_K8AtA, D2Finite_K9AtA, EndHistoryD2, RD_PhType, RD_RgType, RD_NxType, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_NoStop, RD_ReadBack, RD_ReadPart, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, McO6Nv_c6YAPZXLgH, DcZc_hAn59KNFt, qR2mWTT_fHP9WN4t34et1

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>GHtNmHuQStIh4bm0.         K8 <=> (\A i \in Inst, r \in Rq : D2Finite_K8AtA(i,r))
  BY SMTT(10), Sizes, Location, Design DEF K8, D2Finite_K8AtA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>X2XKrCyY6pX7gvFs.         K9 <=> (\A j \in DInst, r \in Rq : D2Finite_K9AtA(j,r))
  BY SMTT(10), Sizes, Location, Design DEF K9, D2Finite_K9AtA, Sizes, Location, Design
\* T2M-END R2M0031_PP_D2Finite_PdConjPointsA


<1>ghgIFVqCVs8ek9FNFZp.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW i \in Inst, NEW u \in Rq,
         PinInv, IsD(j), Active(j,r), Active(i,u), ~rhit[i][u], i # j \/ u # r
  PROVE rpg[i][u] \in Pages /\ rpg[i][u] # rpg[j][r] /\ rpg[i][u] \notin GrownOf(j,r)
<2> USE ONLY <1>ghgIFVqCVs8ek9FNFZp, Sizes, Location, Design
<2>1. K8 /\ K9 /\ j \in DInst
  BY <1>NhYNztiJuG4YZnw3, SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[i][u] \in Pages /\ Loc(rpg[i][u]) = i /\ pst[rpg[i][u]] = "priv" /\ pr[rpg[i][u]] = u
       /\ Loc(rpg[j][r]) = j /\ (~rhit[j][r] => pr[rpg[j][r]] = r)
  BY <2>1, <1>hWIfUWYvOn8Z2juQygjL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rhit[j][r] => pst[rpg[j][r]] = "shared"
  BY <2>1, <1>hdKFcEtMtN5Ml4Qsk, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<2>4. rpg[i][u] # rpg[j][r]
  BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF GrownOf, Sizes, Location, Design
\* T2M-END R2M0058_PP_PdD2Separation


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

<1>SfOorOsXmEAT4B5Vttdg.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE \A p \in Pages :
       /\ NHits(p)' = NHits(p)
       /\ (GrownP(p)' <=> GrownP(p))
       /\ \A v \in Rq : (Maps(Loc(p),v,p)' <=> Maps(Loc(p),v,p))
<2> USE ONLY <1>SfOorOsXmEAT4B5Vttdg, Sizes, Location, Design
<2>1. UNCHANGED <<pst,pr,pgn,rg,rpg,rhit>>
  BY <1>gyDL4BFCHPcjRplQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ~rhit[j][r] /\ T_ph /\ ph' = [ph EXCEPT ![j][r] = "run"]
  BY <1>mZNjhqJJlxOdnw, <1>gyDL4BFCHPcjRplQ, <1>g4u1JVDPkX, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>3. \A p \in Pages :
       {v \in Rq : ph'[Loc(p)][v] \in {"run","ovl"} /\ rhit'[Loc(p)][v] /\ rpg'[Loc(p)][v] = p}
       = {v \in Rq : ph[Loc(p)][v] \in {"run","ovl"} /\ rhit[Loc(p)][v] /\ rpg[Loc(p)][v] = p}
  BY <2>1, <2>2, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location, Design DEF T_ph, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>3, <1>rJeLah8cVHTBVuSgN, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location, Design DEF NHits, GrownP, Maps, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UKLMqADZaALCmWfQ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE Mode = "pull" /\ iv[rx[j][r]] = "cqe"
  BY ONLY <1>UKLMqADZaALCmWfQ, Sizes, Location, Design, SMTT(10) DEF DReadDone, Sizes, Location, Design
\* T2M-END R2M0192_PP_PdD2ReadSuccessMasks

\* T2M-SCOPE R2M0193_PP_PdD2ReadSuccess_K10
\* T2M-BODY R2M0193_PP_PdD2ReadSuccess_K10
\* T2M-LOCAL-VISIBILITY

<1>ORTHs2JlnWkAcZnx67UEbhpjI.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE \A i \in Inst, u \in Rq :
    (Active(i,u) /\ ~rhit[i][u] /\ (i # j \/ u # r)) =>
    LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p],sfly[p],sled[p]>>
<2> USE ONLY <1>ORTHs2JlnWkAcZnx67UEbhpjI, Sizes, Location, Design
<2>1. T_pst /\ T_pr /\ T_pgn /\ T_plt /\ T_led /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. DReadFailureD2D2Pages(j,r) /\ IsD(j) /\ Active(j,r) /\ rpg[j][r] \in Pages /\ UNCHANGED rpg
  BY <1>r9VnjyvowyN2IgSWXdGcCcO, <1>EaWYLyjWElDP5Z0dLp, <1>r8mxQYcJL4G4mA1a6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW u \in Rq, Active(i,u), ~rhit[i][u], i # j \/ u # r
       PROVE LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p],sfly[p],sled[p]>>
<3>1. rpg[i][u] \in Pages /\ rpg[i][u] # rpg[j][r] /\ rpg[i][u] \notin GrownOf(j,r)
  BY <2>2, <2>3, <1>ghgIFVqCVs8ek9FNFZp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <3>1, SMTT(10), Sizes, Location, Design DEF DReadFailureD2D2Pages, PageTo, PageToG, GrownOwn, GFr, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uh3nhVpgLXBTvnxYQFs.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE \A p \in Pages : pst[p] = "shared" => pst'[p] = "shared"
<2> USE ONLY <1>uh3nhVpgLXBTvnxYQFs, Sizes, Location, Design
<2>1. K9 /\ K8 /\ T_pst /\ j \in DInst /\ IsD(j) /\ Active(j,r)
  BY <1>g4u1JVDPkX, <1>EaWYLyjWElDP5Z0dLp, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. ~rhit[j][r] /\ pst[rpg[j][r]] = "priv"
  BY <1>EaWYLyjWElDP5Z0dLp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. DReadFailureD2D2Pages(j,r)
  BY <1>r9VnjyvowyN2IgSWXdGcCcO, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in Pages, pst[p] = "shared" PROVE pst'[p] = "shared"
<3>1. p \notin GrownOf(j,r) /\ (p = rpg[j][r] => rhit[j][r])
  BY <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF GrownOf, Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <2>3, <3>1, <2>4, SMTT(10), Sizes, Location, Design DEF DReadFailureD2D2Pages, PageTo, PageToG, T_pst, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OLKS3ogwfZH7o9xO9Iw.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE /\ ph'[j][r] = "end"
        /\ \A i \in Inst, u \in Rq : (i # j \/ u # r) => ph'[i][u] = ph[i][u]
        /\ \A i \in Inst, u \in Rq : Active(i,u)' => Active(i,u) /\ (i # j \/ u # r)
<2> USE ONLY <1>OLKS3ogwfZH7o9xO9Iw, Sizes, Location, Design
<2>1. T_ph /\ ph' = [ph EXCEPT ![j][r] = "end"]
  BY <1>g4u1JVDPkX, <1>Fjbx06FqCsyvFgnLH92k, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF T_ph, Active, Sizes, Location, Design
\* T2M-END R2M0195_PP_PdD2DReadFailureD2Readers

\* T2M-SCOPE R2M0196_PP_PdD2DReadFailureD2_K10
\* T2M-BODY R2M0196_PP_PdD2DReadFailureD2_K10
\* T2M-LOCAL-VISIBILITY

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


<1>Mqq78ErNVXyfIxFjUClC8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE \A i \in DInst, u \in Rq :
    (Active(i,u) /\ rhit[i][u] /\ (i # j \/ u # r)) => Tag(u,rg[i][u]) \in sled'[rpg[i][u]]
<2> USE ONLY <1>Mqq78ErNVXyfIxFjUClC8, Sizes, Location, Design
<2>1. K8 /\ K9 /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. DReadFailureD2D2Pages(j,r) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
       /\ (~rhit[j][r] => pst[rpg[j][r]] = "priv") /\ ~rhit[j][r]
  BY <2>1, <1>r9VnjyvowyN2IgSWXdGcCcO, <1>EaWYLyjWElDP5Z0dLp, <1>hWIfUWYvOn8Z2juQygjL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in DInst, NEW u \in Rq, Active(i,u), rhit[i][u], i # j \/ u # r
       PROVE Tag(u,rg[i][u]) \in sled'[rpg[i][u]]
<3>1. i \in Inst /\ rpg[i][u] \in Pages /\ Loc(rpg[i][u]) = i
       /\ pst[rpg[i][u]] = "shared" /\ Tag(u,rg[i][u]) \in sled[rpg[i][u]]
  BY <2>1, <2>3, <1>NhYNztiJuG4YZnw3, <1>hWIfUWYvOn8Z2juQygjL, <1>hdKFcEtMtN5Ml4Qsk, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<3>2. rpg[i][u] \notin GrownOf(j,r)
       /\ (rpg[i][u] = rpg[j][r] => rhit[j][r] /\ u # r /\ Tag(u,rg[i][u]) # Tag(r,rg[j][r]))
  BY <2>2, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF GrownOf, Tag, Sizes, Location, Design
<3>3. QED BY <2>1, <2>2, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF DReadFailureD2D2Pages, PageTo, PageToG, T_sled, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TvK5jy4v1RBaSi.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE K9'
<2> USE ONLY <1>TvK5jy4v1RBaSi, Sizes, Location, Design
<2>1. K8 /\ K9 /\ T_drep /\ T_ph
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. EndHistoryD2(j,r,rg[j][r],FALSE) /\ rg[j][r] \in Gens /\ IsD(j) /\ Active(j,r)
       /\ UNCHANGED <<rg,rpg,rx,rhit,iv,nx,xdst,xr,xg>>
  BY <1>qSzpNunGFMzZoZOq6XCdYp8V2y, <1>EaWYLyjWElDP5Z0dLp, <1>r8mxQYcJL4G4mA1a6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hd[r][rg[j][r]] = j
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K8, Active, Sizes, Location, Design
<2>4. ASSUME NEW i \in DInst, NEW u \in Rq PROVE D2Finite_K9AtA(i,u)'
<3>1. i \in Inst /\ IsD(i) /\ D2Finite_K9AtA(i,u) /\ D2Finite_K8AtA(i,u)
  BY <2>1, <1>X2XKrCyY6pX7gvFs, <1>GHtNmHuQStIh4bm0, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE i = j /\ u = r
  BY <3>2, <2>1, <2>2, <1>OLKS3ogwfZH7o9xO9Iw, SMTT(10), Sizes, Location, Design DEF D2Finite_K9AtA, EndHistoryD2, T_drep, Active, Sizes, Location, Design
<3>3. CASE i # j \/ u # r
<4>1. ph'[i][u] = ph[i][u]
  BY <3>1, <3>3, <1>OLKS3ogwfZH7o9xO9Iw, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. ph[i][u] # "none" => rg[i][u] \in Gens /\ (u # r \/ rg[i][u] # rg[j][r])
  BY <3>1, <3>3, <2>3, SMTT(10), Sizes, Location, Design DEF D2Finite_K8AtA, Sizes, Location, Design
<4>3. ph[i][u] # "none" => drep'[u][rg[i][u]] = drep[u][rg[i][u]]
  BY <4>2, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF EndHistoryD2, T_drep, Sizes, Location, Design
<4>4. Active(i,u) /\ ~rhit[i][u] =>
       LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p],sfly[p],sled[p]>>
  BY <3>1, <3>3, <1>ORTHs2JlnWkAcZnx67UEbhpjI, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>5. (ph[i][u] \in {"run","ovl"} /\ rhit[i][u]) =>
         pst'[rpg[i][u]] = "shared" /\ Tag(u,rg[i][u]) \in sled'[rpg[i][u]]
  BY <3>1, <3>3, <1>uh3nhVpgLXBTvnxYQFs, <1>Mqq78ErNVXyfIxFjUClC8, SMTT(10), Sizes, Location, Design DEF D2Finite_K8AtA, D2Finite_K9AtA, Active, Sizes, Location, Design
<4>6. QED BY <2>2, <3>1, <4>1, <4>3, <4>4, <4>5, SMTT(10), Sizes, Location, Design DEF D2Finite_K9AtA, Active, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF K9, D2Finite_K9AtA, Sizes, Location, Design
\* T2M-END R2M0219_PP_PdD2DReadFailureD2_K9


<1>vbTv4YRwwQfv.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE K9'
<2> USE ONLY <1>vbTv4YRwwQfv, Sizes, Location, Design
<2>1. K9 /\ K8 /\ T_ph /\ T_plt /\ T_pvis /\ T_sfly /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<drep, gen, hd, hp, iv, led, nx, pgn, pr, pst, ptl, rg, rhit, rpe, rpg, rx, xdst, xg, xlt, xr, xsrc>>
  BY <1>gyDL4BFCHPcjRplQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>mZNjhqJJlxOdnw, <1>vOs0aO70tmslbxUvmi1VYj11A, Design, Location, Sizes, SMTT(10) DEF Active, DInst, Inst, IsD, IsP, K8, K9, NL, OwnedBy, T_ph, T_plt, T_pvis, T_sfly, T_sled, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0224_PP_PdD2ReadSuccess_K9


<1>MZrYN8lTN.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K9'
<2> USE ONLY <1>MZrYN8lTN, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
  BY <2>1, <1>vbTv4YRwwQfv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>TvK5jy4v1RBaSi, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0225_PP_PdD2DReadDone_K9


<1>Ybt4ho1H6wa0.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE S5'
<2> USE ONLY <1>Ybt4ho1H6wa0, Sizes, Location, Design
<2>1. S5 /\ T_ph
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_S5, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<hok, hw, iv, nx, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
  BY <1>gyDL4BFCHPcjRplQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>mZNjhqJJlxOdnw, <1>rJeLah8cVHTBVuSgN, <1>SfOorOsXmEAT4B5Vttdg, <1>UKLMqADZaALCmWfQ, <1>vOs0aO70tmslbxUvmi1VYj11A, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, NL, S5, T_ph, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0233_PP_PdD2ReadSuccess_S5


<1>L6dCZ4tcclRlvT.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE S5'
<2> USE ONLY <1>L6dCZ4tcclRlvT, Sizes, Location, Design
<2>1. S5 /\ UNCHANGED <<rg,rhit,rpg,rx,nx,xdst,xr,xg,hw,hok,xlt,xnt,xst,iv>>
  BY <1>r8mxQYcJL4G4mA1a6, SMTT(10), V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A i \in DInst, u \in Rq : ph'[i][u] \in {"run","ovl"} => ph[i][u] = ph'[i][u]
  BY <1>OLKS3ogwfZH7o9xO9Iw, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
\* T2M-END R2M0234_PP_PdD2DReadFailureD2_S5

\* T2M-SCOPE R2M0235_PP_PdD2DReadDone_S5

<1>Q7O61XK5m.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE S5'
<2> USE ONLY <1>Q7O61XK5m, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
  BY <2>1, <1>Ybt4ho1H6wa0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>L6dCZ4tcclRlvT, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0235_PP_PdD2DReadDone_S5


<1>XfingoCFUPI.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE K9'
  BY ONLY <1>XfingoCFUPI, Sizes, Location, Design, <1>MZrYN8lTN, V21_Inv_K9 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>hnvGU40Y8fZ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE S5'
  BY ONLY <1>hnvGU40Y8fZ, Sizes, Location, Design, <1>Q7O61XK5m, V21_Inv_S5 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>EnXJwndWG1D4vkee.         PinInv => RD_PhType /\ RD_RgType /\ RD_NxType
<2>project. CoreTypeOK => RD_PhType /\ RD_RgType /\ RD_NxType
 BY ONLY ZenonT(5) DEF CoreTypeOK, RD_PhType, RD_RgType, RD_NxType
<2>qed. QED BY ONLY <2>project, V21_Inv_BaseTypeOK, Sizes, Location, Design, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>lQA2.         PinInv => STypeOK /\ (B2 => SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6)
 BY SMTT(10), V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>TYhlAtBIHfhkB1.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, SFollow, RD_NoStop,
        ph'=[ph EXCEPT ![j][r]="run"], UNCHANGED rpg,
        rpg[j][r] \in Pages, pst[rpg[j][r]] # "free", B2 => dpreOK[rpg[j][r]]
 PROVE RD_ReadPart'
<2> USE ONLY <1>TYhlAtBIHfhkB1, Sizes, Location, Design
<2>1. RD_PhType /\ RD_ReadPart
 BY <1>EnXJwndWG1D4vkee, V21_Inv_BaseSafety, V21_Inv_ReadOwnLanded, V21_Inv_Safety, Sizes, Location, Design DEF Safety, BaseSafety, ReadOwnLanded, RD_ReadPart, Sizes, Location, Design
<2>2. \A p \in Pages : pst[p] # "free" => dpreOK'[p]=dpreOK[p]
 BY <1>YCfapvemrZ4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A i \in DInst,t \in Rq : ph[i][t] \in {"run","ovl"} => rpg[i][t] \in Pages /\ pst[rpg[i][t]] # "free"
 BY <1>N1pr8s7uSKK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, Sizes, SMTT(10), Location, Design DEF RD_ReadPart, RD_PhType, DInst, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sLcEPlD0yKVy2TBCw.        
 ASSUME PinInv, NEW q \in Pages, NEW x \in Xids,
        hw[x]="stop", hok[x], xdst[x]=q, Held(q,x)
 PROVE B2 => dpreOK[q]
 BY ONLY <1>sLcEPlD0yKVy2TBCw, Sizes, Location, Design, <1>lQA2, SMTT(10) DEF SI5, Sizes, Location, Design
\* T2M-END R2M0828_PdRDReadLaunch


<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

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

<1>jEpjrevi4yov.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DReadDone(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, rd, rg, rhit, rp, rpe, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>jEpjrevi4yov, Sizes, Location, Design, ZenonT(5) DEF DReadDone, DStartRun, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lj6TLHCRSebC4evFzFNGyYT.        
  ASSUME NEW S, NEW T, NEW f \in [S -> SUBSET T], NEW q \in S, NEW e, f[q] = {}
  PROVE [f EXCEPT ![q] = @ \cup {e}] = [f EXCEPT ![q] = {e}]
<2> USE ONLY <1>lj6TLHCRSebC4evFzFNGyYT, Sizes, Location, Design
<2>1. f[q] \cup {e} = {e}
  BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY ONLY <2>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0837_PdRDPort_D2Finite_PdEmptyUnionA


<1>kIY9yVDTy6Cnr.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE LET q == rpg[j][r] x == rx[j][r] g == rg[j][r] IN
        /\ j \in DInst /\ Mode = "pull" /\ ph[j][r] = "rd"
        /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r]
        /\ ~rhit[j][r] /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
        /\ x \in Xids /\ x < nx /\ xr[x] = r /\ xg[x] = g /\ xdst[x] = q
        /\ iv[x] = "cqe" /\ hw[x] = "stop" /\ xlt[x] = xnt[x] /\ xnt[x] = NTok(r,g)
        /\ led[q] = {} /\ sfly[q] = {} /\ sled[q] = {}
        /\ (hok[x] => ptl[q] = NTok(r,g))
<2> USE ONLY <1>kIY9yVDTy6Cnr, Sizes, Location, Design
<2>1. K2 /\ K3 /\ K8 /\ K9 /\ K10 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. IsD(j) /\ Mode = "pull" /\ ph[j][r] = "rd" /\ iv[rx[j][r]] = "cqe" /\ led[rpg[j][r]] = {}
  BY SMTT(10), Sizes, Location, Design DEF DReadDone, Sizes, Location, Design
<2>3. j \in DInst /\ Active(j,r) /\ ~rhit[j][r]
  BY <2>1, <2>2, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Active, K9, Sizes, Location, Design
<2>4. rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ rg[j][r] \in Gens /\ rg[j][r] <= gen[r]
       /\ pst[rpg[j][r]] = "priv" /\ pr[rpg[j][r]] = r /\ pgn[rpg[j][r]] = rg[j][r]
  BY <2>1, <2>2, <2>3, <1>VBlwMBLC5pBW9rEeNkh7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. rx[j][r] \in Xids /\ rx[j][r] < nx /\ xr[rx[j][r]] = r /\ xg[rx[j][r]] = rg[j][r]
       /\ xdst[rx[j][r]] = rpg[j][r] /\ sfly[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {}
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K9, Sizes, Location, Design
<2>6. hw[rx[j][r]] = "stop" /\ xlt[rx[j][r]] = xnt[rx[j][r]] /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <2>1, <2>2, <2>5, Design, SMTT(10), Sizes, Location DEF K2, K3, CqeHw, XX2v, Xids, Sizes, Location, Design
<2>7. hok[rx[j][r]] => ptl[rpg[j][r]] = NTok(r,rg[j][r])
  BY <2>1, <2>2, <2>4, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF K10, OwnedBy, Sizes, Location, Design
<2>8. QED BY <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EcclSb9YoHpDCL.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE McO6Nv_c6YAPZXLgH(j,r)
        /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,
                       xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,xst,nx,crep,dsucc,gbad>>
<2> USE ONLY <1>EcclSb9YoHpDCL, Sizes, Location, Design
<2>1. sBjpCf /\ a4GqBP /\ vn9M /\ jyWjj /\ eWP7z1
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. rpg[j][r] \in Pages /\ sfly[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {}
       /\ hw[rx[j][r]] = "stop" /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <1>kIY9yVDTy6Cnr, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>lj6TLHCRSebC4evFzFNGyYT, <1>jEpjrevi4yov, Design, SMTT(10), Sizes, Location DEF DReadDone, DStartRun, McO6Nv_c6YAPZXLgH, sBjpCf, a4GqBP, vn9M, jyWjj, eWP7z1, rtV, instV, kV, xV, Sizes, Location, Design
\* T2M-END R2M0838_PdRDPort_PdD2DReadDoneEffect


<1>oDwSckhynVYFiD.        
  ASSUME NEW x \in Xids, XX2v, K2, InFl(x)
  PROVE x < nx
  BY ONLY <1>oDwSckhynVYFiD, Sizes, Location, Design, SMT DEF XX2v, Xids, K2, InFl, Sizes, Location, Design


<1>ThNFqMwTGztK7JQd.        
  ASSUME NEW x \in Xids, XX2v, K1, K2, K3, InFl(x)
  PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>ThNFqMwTGztK7JQd, Sizes, Location, Design
<2>1. x < nx
  BY <1>oDwSckhynVYFiD, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMT, Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M0812_PdRDPort_PdDataLemmas


<1>O9SoSenAySWDpORQrWKf.        
  ASSUME NEW x \in Xids, PinInv, InFl(x)
  PROVE xdst[x] \in Pages /\ x \in led[xdst[x]]
<2> USE ONLY <1>O9SoSenAySWDpORQrWKf, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. x < nx /\ xdst[x] \in Pages
  BY <2>1, <1>oDwSckhynVYFiD, <1>ThNFqMwTGztK7JQd, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K2, K3, K4, InFl, ExpPage, InitPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ngiVG0SkAxP8yIHAPwqKeYSMS.        
  ASSUME NEW p \in Pages, PinInv, led[p] = {}
  PROVE NoWriteInto(p)
<2> USE ONLY <1>ngiVG0SkAxP8yIHAPwqKeYSMS, Sizes, Location, Design
<2>1. \A x \in Xids : InFl(x) => x \in led[xdst[x]]
  BY <1>O9SoSenAySWDpORQrWKf, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMTT(10), Sizes, Location, Design DEF NoWriteInto, Writing, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VDFvZRjLzHX2GC.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE LET q == rpg[j][r] g == rg[j][r] x == rx[j][r] IN
    /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens
    /\ ~rhit[j][r] /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
    /\ x \in Xids /\ x < nx /\ xr[x] = r /\ xg[x] = g /\ xdst[x] = q
    /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x]
    /\ xnt[x] = NTok(r,g) /\ ptl[q] = NTok(r,g)
    /\ led[q] = {} /\ sfly[q] = {} /\ sled[q] = {}
  BY ONLY <1>VDFvZRjLzHX2GC, Sizes, Location, Design, <1>kIY9yVDTy6Cnr, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g9EPmcwgRLVuQIlj.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, pqp, pr, prefc, pst, ptl, rd, rg, rhit, rp, rpe, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>g9EPmcwgRLVuQIlj, Sizes, Location, Design, <1>kIY9yVDTy6Cnr, <1>EcclSb9YoHpDCL, SMTT(10) DEF McO6Nv_c6YAPZXLgH, Sizes, Location, Design
\* T2M-END R2M0841_PdRDPort_PdD2ReadSuccessEffects

\* T2M-SCOPE R2M0842_PdRDPort_PdD2ReadSuccessMasks
\* T2M-BODY R2M0842_PdRDPort_PdD2ReadSuccessMasks

\* T2M-END R2M0842_PdRDPort_PdD2ReadSuccessMasks


<1>H6vDv84Wz3n8J.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, IsD(j), Active(j,r)
  PROVE rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
<2> USE ONLY <1>H6vDv84Wz3n8J, Sizes, Location, Design
<2>1. K8 /\ K9 /\ j \in DInst
  BY Sizes, SMTT(10), V21_Inv_K8, V21_Inv_K9, Location, Design DEF IsD, Inst, DInst, NL, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
\* T2M-END R2M0697_PdRDPort_PdOneReplyIncrement


<1>AIrVl6ABaL7hnYjOk.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DcZc_hAn59KNFt(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>AIrVl6ABaL7hnYjOk, Sizes, Location, Design, SMTT(10) DEF DcZc_hAn59KNFt, DReadDone, rtV, instV, kV, xV, ghV, Sizes, Location, Design
\* T2M-END R2M0844_PdRDPort_PdD2ReadFailureFrames


<1>pLBLLi4oDOdXB3CYG2.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r)
  PROVE /\ IsD(j) /\ j \in DInst /\ Active(j,r)
        /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
        /\ rg[j][r] \in Gens /\ rg[j][r] <= gen[r]
        /\ drep[r][rg[j][r]] = 0 /\ ~rhit[j][r] /\ pst[rpg[j][r]] = "priv" /\ ph[j][r] = "rd"
<2> USE ONLY <1>pLBLLi4oDOdXB3CYG2, Sizes, Location, Design
<2>1. IsD(j) /\ Active(j,r) /\ K8 /\ K9 /\ ph[j][r] = "rd"
  BY SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF DcZc_hAn59KNFt, DReadDone, DReadDone, Active, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>VBlwMBLC5pBW9rEeNkh7, <1>H6vDv84Wz3n8J, <1>KUUrHEFvbxmFhGeG2, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bCxw50P8VEAVmGuxZNCA.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DcZc_hAn59KNFt(j,r)
  PROVE /\ ph' = [ph EXCEPT ![j][r] = "end"]
        /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(drep[r][rg[j][r]])]
        /\ UNCHANGED dsucc
        /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,crep,rg,rpg,rpe,rx,rhit>>
  BY ONLY <1>bCxw50P8VEAVmGuxZNCA, Sizes, Location, Design, SMTT(10) DEF DcZc_hAn59KNFt, DReadDone, DReadDone, rtV, instV, kV, recV, pgV, xV, ghV, vars, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YjUnL4ZcGhjtXEJn1jqm9r5.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r)
  PROVE qR2mWTT_fHP9WN4t34et1(j,r)
<2> USE ONLY <1>YjUnL4ZcGhjtXEJn1jqm9r5, Sizes, Location, Design
<2>1. DReadDone(j,r) /\ ~hok[rx[j][r]]
  BY SMTT(10), Sizes, Location, Design DEF DcZc_hAn59KNFt, Sizes, Location, Design
<2>2. QED BY <2>1, <1>kIY9yVDTy6Cnr, <1>EcclSb9YoHpDCL, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, qR2mWTT_fHP9WN4t34et1, Sizes, Location, Design
\* T2M-END R2M0845_PdRDPort_PdD2DReadFailureD2Effect


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


<1>DNluPZO0xRHaDt97OYIJ4GMKZ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r)
  PROVE \A i \in Inst, u \in Rq :
    (Active(i,u) /\ ~rhit[i][u] /\ (i # j \/ u # r)) =>
    LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p],sfly[p],sled[p]>>
<2> USE ONLY <1>DNluPZO0xRHaDt97OYIJ4GMKZ, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ ZpUxx /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. qR2mWTT_fHP9WN4t34et1(j,r) /\ IsD(j) /\ Active(j,r) /\ rpg[j][r] \in Pages /\ UNCHANGED rpg
  BY <1>YjUnL4ZcGhjtXEJn1jqm9r5, <1>pLBLLi4oDOdXB3CYG2, <1>AIrVl6ABaL7hnYjOk, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW u \in Rq, Active(i,u), ~rhit[i][u], i # j \/ u # r
       PROVE LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p],sfly[p],sled[p]>>
<3>1. rpg[i][u] \in Pages /\ rpg[i][u] # rpg[j][r] /\ rpg[i][u] \notin GrownOf(j,r)
  BY <2>2, <2>3, <1>na9LdMalL6sEH2Qpz6d, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <3>1, SMTT(10), Sizes, Location, Design DEF qR2mWTT_fHP9WN4t34et1, PageTo, PageToG, GrownOwn, GFr, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AUP84omgoO0jI3z9GLT.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r)
  PROVE \A p \in Pages : pst[p] = "shared" => pst'[p] = "shared"
<2> USE ONLY <1>AUP84omgoO0jI3z9GLT, Sizes, Location, Design
<2>1. K9 /\ K8 /\ X6zX5 /\ j \in DInst /\ IsD(j) /\ Active(j,r)
  BY <1>TLVER4XMUn, <1>pLBLLi4oDOdXB3CYG2, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. ~rhit[j][r] /\ pst[rpg[j][r]] = "priv"
  BY <1>pLBLLi4oDOdXB3CYG2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. qR2mWTT_fHP9WN4t34et1(j,r)
  BY <1>YjUnL4ZcGhjtXEJn1jqm9r5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in Pages, pst[p] = "shared" PROVE pst'[p] = "shared"
<3>1. p \notin GrownOf(j,r) /\ (p = rpg[j][r] => rhit[j][r])
  BY <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF GrownOf, Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <2>3, <3>1, <2>4, SMTT(10), Sizes, Location, Design DEF qR2mWTT_fHP9WN4t34et1, PageTo, PageToG, X6zX5, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>umx7C6iF0heKculEsLT.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r)
  PROVE /\ ph'[j][r] = "end"
        /\ \A i \in Inst, u \in Rq : (i # j \/ u # r) => ph'[i][u] = ph[i][u]
        /\ \A i \in Inst, u \in Rq : Active(i,u)' => Active(i,u) /\ (i # j \/ u # r)
<2> USE ONLY <1>umx7C6iF0heKculEsLT, Sizes, Location, Design
<2>1. vn9M /\ ph' = [ph EXCEPT ![j][r] = "end"]
  BY <1>TLVER4XMUn, <1>bCxw50P8VEAVmGuxZNCA, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF vn9M, Active, Sizes, Location, Design
\* T2M-END R2M0864_PdRDPort_PdD2DReadFailureD2Readers

\* T2M-SCOPE R2M0865_PdRDPort_PdD2DReadFailureD2_K8
\* T2M-BODY R2M0865_PdRDPort_PdD2DReadFailureD2_K8
\* T2M-LOCAL-VISIBILITY

<1>AUpmq70XsUuGG1lkjnZMzap.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>AUpmq70XsUuGG1lkjnZMzap, Sizes, Location, Design
<2>1. BaseReadOwnLanded /\ K8 /\ vn9M /\ jyWjj /\ eWP7z1 /\ sBjpCf /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, BaseSafety, ReadOwnLanded, Sizes, Location, Design
<2>2. /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<gen, hd, hp, hw, iv, led, nx, pgn, pr, pst, ptl, rg, rhit, rpe, rpg, rx, xdst, xg, xlt, xr, xsrc>>
  BY <1>g9EPmcwgRLVuQIlj, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>VDFvZRjLzHX2GC, <1>ngiVG0SkAxP8yIHAPwqKeYSMS, Design, Location, Sizes, SMTT(10) DEF Active, DInst, InFl, Inst, IsD, IsP, K8, NL, NoWriteInto, OwnedBy, BaseReadOwnLanded, vn9M, jyWjj, eWP7z1, sBjpCf, a4GqBP, Tag, Writing, KPages, ReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M0872_PdRDPort_PdD2ReadSuccess_ReadOwnLanded


<1>rcBpzpTkBdUjpepSTMS5JBKtC.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r)
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>rcBpzpTkBdUjpepSTMS5JBKtC, Sizes, Location, Design
<2>1. BaseReadOwnLanded
  BY SMTT(10), V21_Inv_BaseSafety, V21_Inv_ReadOwnLanded, V21_Inv_Safety, Sizes, Location, Design DEF Safety, BaseSafety, ReadOwnLanded, Sizes, Location, Design
<2>2. UNCHANGED <<rg,rpg,rhit,ptl,pvis,hw,xdst>>
  BY <1>AIrVl6ABaL7hnYjOk, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in DInst, NEW u \in Rq, ph'[i][u] \in {"run","ovl"}
       PROVE LET p == rpg[i][u] IN
         /\ p \in Pages
         /\ NoWriteInto(p)'
         /\ ((~rhit'[i][u] /\ pst'[p] = "priv" /\ pr'[p] = u /\ pgn'[p] = rg'[i][u] /\ ptl'[p] = NTok(u,rg'[i][u]) /\ pvis'[p])
             \/ (rhit'[i][u] /\ pst'[p] = "shared" /\ ptl'[p] = PS))
<3>1. i \in Inst /\ Active(i,u) /\ (i # j \/ u # r) /\ ph[i][u] \in {"run","ovl"}
  BY <2>3, <1>umx7C6iF0heKculEsLT, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <2>3, <3>1, <1>AUP84omgoO0jI3z9GLT, <1>DNluPZO0xRHaDt97OYIJ4GMKZ, SMTT(10), Sizes, Location, Design DEF BaseReadOwnLanded, NoWriteInto, Writing, InFl, ReadOwnLanded, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF BaseReadOwnLanded, ReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M0873_PdRDPort_PdD2DReadFailureD2_ReadOwnLanded

\* T2M-SCOPE R2M0874_PdRDPort_PdD2DReadDone_ReadOwnLanded

<1>tQ8aCJebW17UKHs6NwZR.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>tQ8aCJebW17UKHs6NwZR, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
  BY <2>1, <1>AUpmq70XsUuGG1lkjnZMzap, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>rcBpzpTkBdUjpepSTMS5JBKtC, SMTT(10), Sizes, Location, Design DEF DcZc_hAn59KNFt, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0874_PdRDPort_PdD2DReadDone_ReadOwnLanded


<1>V3iLA6DZsVRsdMoyRGsRfoa.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE ReadOwnLanded'
<2> USE ONLY <1>V3iLA6DZsVRsdMoyRGsRfoa, Sizes, Location, Design
<2>1. RD_NoStop /\ RD_PhType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), Sizes, Location, Design DEF DReadDone, xV, RD_NoStop, Sizes, Location, Design
<2>2. CASE hok[rx[j][r]]
<3>1. rpg[j][r] \in Pages /\ pst[rpg[j][r]]="priv" /\
       rx[j][r] \in Xids /\ hw[rx[j][r]]="stop" /\ hok[rx[j][r]] /\ xdst[rx[j][r]]=rpg[j][r] /\ Held(rpg[j][r],rx[j][r])
 BY <2>2, <1>VDFvZRjLzHX2GC, SMTT(10), Sizes, Location, Design DEF Held, Sizes, Location, Design
<3>2. B2 => dpreOK[rpg[j][r]]
 BY <3>1, <1>sLcEPlD0yKVy2TBCw, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. ph'=[ph EXCEPT ![j][r]="run"] /\ UNCHANGED rpg
 BY <2>2, <1>g9EPmcwgRLVuQIlj, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>4. QED BY <2>1, <3>1, <3>2, <3>3, <1>TYhlAtBIHfhkB1, <1>tQ8aCJebW17UKHs6NwZR, <1>RCKQzj633zU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE ~hok[rx[j][r]]
 <3>1. RD_ReadBack
 BY <2>1, <2>3, Sizes, SMTT(10), Location, Design DEF DReadDone, xV, RD_ReadBack, RD_PhType, DInst, Inst, NL, Sizes, Location, Design
 <3>2. QED BY <2>1, <3>1, <1>FQ5lBNYlCkhQTVYF, <1>tQ8aCJebW17UKHs6NwZR, <1>RCKQzj633zU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>V3iLA6DZsVRsdMoyRGsRfoa, <1>XfingoCFUPI, <1>hnvGU40Y8fZ, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF Part_DReadDone_03_02, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_ReadOwnLanded, V21_Inv_S5, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff
====
