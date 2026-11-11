---- MODULE PdActionSlice_DReadDone_03 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdFinalAuxType_dc8120345fba5649, PdSharedRefCounts, PdShapeBase, PdActionSlice_DReadDone_02

\* Complete original body PdFinalPart_DReadDone_02_01 SHA 9bc2e9525127699991ac18f6c5d8b7d2c23c887e8fb921d0bfa2dd0744b562a2
HIDE DEF AuxType_dc8120345fba5649, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_DReadDone_01_01, Part_DReadDone_01_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_K5, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_PostSharedRefZero, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SharedRefZero, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_DReadDone_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE (K7)' /\ (K16)' /\ (SI7)'
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

           D2Finite_K7AtA(p) ==
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

           HitSetD2(p) == {r \in Rq : ph[Loc(p)][r] \in {"run","ovl"} /\ rhit[Loc(p)][r] /\ rpg[Loc(p)][r] = p}

           \* T2M-LOCAL-VISIBILITY

           RD_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0

           RD_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}

           RD_Quarantine(x) == x \in sentry /\ ~RD_Close(x) /\
                     ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))

           RD_E2 == (sentry \cup {x \in Xids : RD_Posted(x)}) \ {x \in Xids : RD_Close(x) \/ RD_Quarantine(x)}

           RD_Q2 == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
                                   UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RD_Quarantine(x)}})

           RD_EQUpdate == sentry'=RD_E2 /\ squar'=RD_Q2

           \* T2M-LOCAL-VISIBILITY

           RD_RegSafe == \A x \in Xids : iv'[x]="reg" => iv[x]="reg" /\ pst'[xsrc[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, DReadDoneD2Update, DReadFailureD2, DReadFailureD2D2Pages, D2Finite_K7AtA, D2Finite_K8AtA, D2Finite_K9AtA, EndHistoryD2, HitSetD2, RD_Posted, RD_Close, RD_Quarantine, RD_E2, RD_Q2, RD_EQUpdate, RD_RegSafe

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


<1>bTttSfPnMTdwuzkZ.         K7 <=> (\A p \in Pages : D2Finite_K7AtA(p))
  BY SMTT(10), Sizes, Location, Design DEF K7, D2Finite_K7AtA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>rdUyQLY28o3yM.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE K16'
<2> USE ONLY <1>rdUyQLY28o3yM, Sizes, Location, Design
<2>1. K16 /\ T_ph /\ T_plt /\ T_sfly /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<hw, led, pgn, pr, pst, ptl, rg, rpg, xdst>>
  BY <1>gyDL4BFCHPcjRplQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>mZNjhqJJlxOdnw, <1>vOs0aO70tmslbxUvmi1VYj11A, Design, Location, Sizes, SMTT(10) DEF DInst, GrownP, InFl, Inst, IsD, IsP, K16, NL, NoWriteInto, T_ph, T_plt, T_sfly, T_sled, Tag, Writing, KPages, Sizes, Location, Design
\* T2M-END R2M0207_PP_PdD2ReadSuccess_K16


<1>KYrPj3jwyx7re46.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE K16'
<2> USE ONLY <1>KYrPj3jwyx7re46, Sizes, Location, Design
<2>1. K8 /\ K9 /\ K16 /\ T_pst /\ T_pr /\ T_pgn /\ T_plt /\ T_led /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K16, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. DReadFailureD2D2Pages(j,r) /\ IsD(j) /\ Active(j,r) /\ rpg[j][r] \in Pages /\ j \in DInst
       /\ UNCHANGED <<rpg,rg,ptl,sfly,hw,xdst>>
  BY <1>EaWYLyjWElDP5Z0dLp, <1>r9VnjyvowyN2IgSWXdGcCcO, <1>r8mxQYcJL4G4mA1a6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (rhit[j][r] => pst[rpg[j][r]] = "shared") /\ (~rhit[j][r] => pst[rpg[j][r]] = "priv")
  BY <2>1, <2>2, <1>hWIfUWYvOn8Z2juQygjL, <1>hdKFcEtMtN5Ml4Qsk, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<2>4. GrownOf(j,r) = {}
  BY <2>1, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, DReadDone, K16, GrownOf, GrownP, Sizes, Location, Design
<2>5. ASSUME NEW p \in Pages, GrownP(p)'
       PROVE /\ ph'[Loc(p)][pr'[p]] \in {"run","ovl"} /\ rg'[Loc(p)][pr'[p]] = pgn'[p]
             /\ led'[p] = {} /\ sled'[p] = {} /\ sfly'[p] = {}
             /\ plt'[p] = ptl'[p] /\ ptl'[p] \in {0,1} /\ NoWriteInto(p)'
<3>1. pst'[p] = "priv"
  BY <2>5, SMTT(10), Sizes, Location, Design DEF GrownP, Sizes, Location, Design
<3>2. p # rpg[j][r] /\ p \notin GrownOf(j,r)
       /\ UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
  BY <2>1, <2>2, <2>3, <2>4, <3>1, Design, SMTT(10), Sizes, Location DEF DReadFailureD2D2Pages, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, Sizes, Location, Design
<3>3. GrownP(p) /\ pr[p] \in Rq /\ Loc(p) \in Inst
  BY <2>2, <2>5, <3>2, Location, SMTT(10), Sizes, Design DEF GrownP, KPages, Sizes, Location, Design
<3>4. Loc(p) # j \/ pr[p] # r
  BY <2>1, <2>2, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF K16, GrownP, GrownOf, Sizes, Location, Design
<3>5. ph'[Loc(p)][pr[p]] = ph[Loc(p)][pr[p]]
  BY <3>3, <3>4, <1>OLKS3ogwfZH7o9xO9Iw, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>6. QED BY <2>1, <2>2, <3>2, <3>3, <3>5, SMTT(10), Sizes, Location, Design DEF K16, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>6. QED BY <2>5, SMTT(10), Sizes, Location, Design DEF K16, Sizes, Location, Design
\* T2M-END R2M0208_PP_PdD2DReadFailureD2_K16

\* T2M-SCOPE R2M0209_PP_PdD2DReadDone_K16

<1>x4RqucQv5z.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K16'
<2> USE ONLY <1>x4RqucQv5z, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
  BY <2>1, <1>rdUyQLY28o3yM, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>KYrPj3jwyx7re46, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0209_PP_PdD2DReadDone_K16


<1>ny2ZrNU7X.        
  ASSUME NEW p \in Pages
  PROVE IsFiniteSet(HitSetD2(p)) /\ Cardinality(HitSetD2(p)) \in 0..NR
<2> USE ONLY <1>ny2ZrNU7X, Sizes, Location, Design
<2>0. NR \in Int /\ 1 \in Int /\ 1 <= NR
  BY Sizes, SMTT(10), Location, Design DEF Sizes, Location, Design
<2>1. IsFiniteSet(Rq) /\ Cardinality(Rq) = NR
  BY ONLY <2>0, FS_Interval, IsaT(10), Sizes, Location, Design DEF Rq, Sizes, Location, Design
<2>2. IsFiniteSet(HitSetD2(p)) /\ Cardinality(HitSetD2(p)) <= NR
  BY <2>1, FS_Subset, SMTT(10), Sizes, Location, Design DEF HitSetD2, Sizes, Location, Design
<2>3. QED BY <2>2, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YjYMhraA.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages,
         T_ph, T_rpg, T_rhit, ph' = [ph EXCEPT ![j][r] = "end"], UNCHANGED <<rpg,rhit>>
  PROVE HitSetD2(p)' = IF Loc(p) = j /\ rpg[j][r] = p THEN HitSetD2(p) \ {r} ELSE HitSetD2(p)
  BY ONLY <1>YjYMhraA, Sizes, Location, Design, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10) DEF HitSetD2, T_ph, T_rpg, T_rhit, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EbNblr17Hf.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages,
         T_ph, T_rpg, T_rhit, ph' = [ph EXCEPT ![j][r] = "end"], UNCHANGED <<rpg,rhit>>
  PROVE NHits(p)' = IF Loc(p) = j /\ rpg[j][r] = p /\ ph[j][r] \in {"run","ovl"} /\ rhit[j][r]
                      THEN NHits(p) - 1 ELSE NHits(p)
<2> USE ONLY <1>EbNblr17Hf, Sizes, Location, Design
<2>1. HitSetD2(p)' = IF Loc(p) = j /\ rpg[j][r] = p THEN HitSetD2(p) \ {r} ELSE HitSetD2(p)
  BY <1>YjYMhraA, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet(HitSetD2(p))
  BY <1>ny2ZrNU7X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, FS_RemoveElement, SMTT(10), Sizes, Location, Design DEF HitSetD2, NHits, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yQy6OV5Ihd636rM.        
  ASSUME K8', K9'
  PROVE \A i \in Inst, u \in Rq : Active(i,u)' => pst'[rpg'[i][u]] \in {"priv","shared"}
<2> USE ONLY <1>yQy6OV5Ihd636rM, Sizes, Location, Design
<2>1. ASSUME NEW i \in Inst, NEW u \in Rq, Active(i,u)'
       PROVE pst'[rpg'[i][u]] \in {"priv","shared"}
<3>1. ~rhit'[i][u] => pst'[rpg'[i][u]] = "priv"
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, Active, Sizes, Location, Design
<3>2. rhit'[i][u] => i \in DInst /\ ph'[i][u] \in {"run","ovl"} /\ pst'[rpg'[i][u]] = "shared"
  BY <2>1, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0073_PP_PdD2Hits


<1>hEhAOoScr53F.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE K7'
<2> USE ONLY <1>hEhAOoScr53F, Sizes, Location, Design
<2>1. K7 /\ K8 /\ K9 /\ T_ph /\ T_plt /\ T_pvis /\ T_sfly /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<drep, gen, hd, hp, iv, kpin, krs, led, nx, pgn, pqp, pr, prefc, pst, ptl, rg, rhit, rpe, rpg, rx, xdst, xg, xlt, xr, xsrc>>
  BY <1>gyDL4BFCHPcjRplQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>mZNjhqJJlxOdnw, <1>rJeLah8cVHTBVuSgN, <1>SfOorOsXmEAT4B5Vttdg, <1>UKLMqADZaALCmWfQ, <1>vOs0aO70tmslbxUvmi1VYj11A, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K7, K8, K9, KPinned, NL, OwnedBy, T_ph, T_plt, T_pvis, T_sfly, T_sled, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0217_PP_PdD2ReadSuccess_K7


<1>cmwY99yqbb1abw.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE K8'
<2> USE ONLY <1>cmwY99yqbb1abw, Sizes, Location, Design
<2>1. K8 /\ T_ph
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. UNCHANGED <<gen,hp,hd,rg,rpg,rpe,rx,rhit,nx,xsrc,xr,xg,iv,xlt>>
  BY <1>r8mxQYcJL4G4mA1a6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsD(j) /\ Active(j,r)
  BY <1>EaWYLyjWElDP5Z0dLp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW i \in Inst, NEW u \in Rq PROVE D2Finite_K8AtA(i,u)'
<3>1. D2Finite_K8AtA(i,u)
  BY <2>1, <1>GHtNmHuQStIh4bm0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE i = j /\ u = r
  BY <3>2, <2>2, <2>3, <3>1, <1>OLKS3ogwfZH7o9xO9Iw, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF D2Finite_K8AtA, Active, Sizes, Location, Design
<3>3. CASE i # j \/ u # r
<4>1. ph'[i][u] = ph[i][u]
  BY <3>3, <1>OLKS3ogwfZH7o9xO9Iw, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. Active(i,u) /\ ~rhit[i][u] =>
       LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],led[p],sfly[p],sled[p]>>
  BY <3>3, <1>ORTHs2JlnWkAcZnx67UEbhpjI, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>3. QED BY <2>2, <3>1, <4>1, <4>2, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF D2Finite_K8AtA, Active, OwnedBy, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF K8, D2Finite_K8AtA, Sizes, Location, Design
\* T2M-END R2M0218_PP_PdD2DReadFailureD2_K8


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


<1>Mg8FW7X4C19Keb.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE K7'
<2> USE ONLY <1>Mg8FW7X4C19Keb, Sizes, Location, Design
<2>1. K6 /\ K7 /\ K8 /\ K9 /\ K16 /\ T_pst /\ T_pr /\ T_pgn /\ T_plt /\ T_led /\ T_sled /\ T_prefc /\ T_pqp /\ T_ph /\ T_rpg /\ T_rhit
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K16, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. DReadFailureD2D2Pages(j,r) /\ IsD(j) /\ j \in DInst /\ Active(j,r) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ ~rhit[j][r]
       /\ ph' = [ph EXCEPT ![j][r] = "end"] /\ UNCHANGED <<gen,rg,rpg,rhit,kpin,krs>>
  BY <1>r9VnjyvowyN2IgSWXdGcCcO, <1>EaWYLyjWElDP5Z0dLp, <1>Fjbx06FqCsyvFgnLH92k, <1>r8mxQYcJL4G4mA1a6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (~rhit[j][r] => pst[rpg[j][r]] = "priv" /\ pr[rpg[j][r]] = r /\ pgn[rpg[j][r]] = rg[j][r])
       /\ (rhit[j][r] => pst[rpg[j][r]] = "shared" /\ ph[j][r] \in {"run","ovl"})
  BY <2>1, <2>2, <1>hWIfUWYvOn8Z2juQygjL, <1>hdKFcEtMtN5Ml4Qsk, SMTT(10), Sizes, Location, Design DEF K9, Active, Sizes, Location, Design
<2>4. K8' /\ K9' /\ \A i \in Inst, u \in Rq : Active(i,u)' => pst'[rpg'[i][u]] \in {"priv","shared"}
  BY <1>cmwY99yqbb1abw, <1>TvK5jy4v1RBaSi, <1>yQy6OV5Ihd636rM, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. ASSUME NEW p \in Pages PROVE D2Finite_K7AtA(p)'
<3>1. D2Finite_K7AtA(p)
  BY <2>1, <1>bTttSfPnMTdwuzkZ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. NHits(p)' = IF p = rpg[j][r] /\ rhit[j][r] THEN NHits(p) - 1 ELSE NHits(p)
  BY <2>1, <2>2, <2>3, <1>EbNblr17Hf, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. UNCHANGED KPinned(p)
  BY <2>2, SMTT(10), Sizes, Location, Design DEF KPinned, Sizes, Location, Design
<3>4. (ptl[p] >= 0)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, <3>3, Design, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location DEF DReadFailureD2D2Pages, D2Finite_K7AtA, K6, K16, GrownP, GrownOf, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, Active, Maps, Tag, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, Sizes, Location, Design
<3>5. (pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {}
                               /\ prefc[p] = 0 /\ pqp[p] = 0))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, <3>3, Design, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location DEF DReadFailureD2D2Pages, D2Finite_K7AtA, K6, K16, GrownP, GrownOf, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, Active, Maps, Tag, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, Sizes, Location, Design
<3>6. (pst[p] \in {"priv", "drain", "quar"} => (pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]]))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, <3>3, Design, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location DEF DReadFailureD2D2Pages, D2Finite_K7AtA, K6, K16, GrownP, GrownOf, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, Active, Maps, Tag, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, Sizes, Location, Design
<3>7. (pst[p] = "quar" => pqp[p] \in Inst)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, <3>3, Design, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location DEF DReadFailureD2D2Pages, D2Finite_K7AtA, K6, K16, GrownP, GrownOf, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, Active, Maps, Tag, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, Sizes, Location, Design
<3>8. (pst[p] # "quar" => pqp[p] = 0)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, <3>3, Design, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location DEF DReadFailureD2D2Pages, D2Finite_K7AtA, K6, K16, GrownP, GrownOf, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, Active, Maps, Tag, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, Sizes, Location, Design
<3>9. (pst[p] # "shared" => prefc[p] = 0)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, <3>3, Design, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location DEF DReadFailureD2D2Pages, D2Finite_K7AtA, K6, K16, GrownP, GrownOf, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, Active, Maps, Tag, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, Sizes, Location, Design
<3>10. (pst[p] = "shared" => (IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p)))'
<4>1. pst'[p] = "shared" => pst[p] = "shared"
  BY <2>1, <2>2, <2>3, Design, SMTT(10), Sizes, Location DEF DReadFailureD2D2Pages, PageTo, PageToG, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, GrownOf, T_pst, Sizes, Location, Design
<4>2. pst'[p] = "shared" => led'[p] = led[p] /\ ptl'[p] = ptl[p]
  BY <2>1, <2>2, <2>3, <4>1, Design, SMTT(10), Sizes, Location DEF DReadFailureD2D2Pages, PageTo, PageToG, T_pst, T_led, Sizes, Location, Design
<4>3. pst'[p] = "shared" => prefc'[p] = (IF p = rpg[j][r] /\ rhit[j][r] THEN prefc[p] - 1 ELSE prefc[p])
  BY <2>1, <2>2, <2>3, <4>1, Design, SMTT(10), Sizes, Location DEF DReadFailureD2D2Pages, PageTo, PageToG, T_prefc, Sizes, Location, Design
<4>4. QED BY <3>1, <3>2, <4>1, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF D2Finite_K7AtA, Sizes, Location, Design
<3>11. (pst[p] = "drain" => (led[p] # {} \/ sled[p] # {} \/ KPinned(p))   )'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, <3>3, Design, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location DEF DReadFailureD2D2Pages, D2Finite_K7AtA, K6, K16, GrownP, GrownOf, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, Active, Maps, Tag, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, Sizes, Location, Design
<3>12. (pst[p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(p), r, p))'
  BY ONLY <2>4, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location, Design DEF Active, Maps, Sizes, Location, Design
<3>13. (pst[p] = "priv" => \/ (Maps(Loc(p), pr[p], p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]])
                              \/ GrownP(p))'
<4>1. pst'[p] = "priv" => pst[p] = "priv" /\ p # rpg[j][r] /\ UNCHANGED <<pr[p],pgn[p]>>
  BY <2>1, <2>2, <2>3, Design, SMTT(10), Sizes, Location DEF DReadFailureD2D2Pages, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, T_pst, T_pr, T_pgn, Sizes, Location, Design
<4>2. pst'[p] = "priv" => pr[p] \in Rq /\ Loc(p) \in Inst
  BY <3>1, <4>1, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location, Design DEF D2Finite_K7AtA, Sizes, Location, Design
<4>3. (pst'[p] = "priv" /\ Maps(Loc(p),pr[p],p)) => Maps(Loc(p),pr[p],p)'
  BY <2>2, <4>1, <4>2, <1>OLKS3ogwfZH7o9xO9Iw, SMTT(10), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design
<4>4. (pst'[p] = "priv" /\ GrownP(p)) => GrownP(p)'
  BY <2>2, <4>1, SMTT(10), Sizes, Location, Design DEF GrownP, Sizes, Location, Design
<4>5. QED BY <2>2, <3>1, <4>1, <4>3, <4>4, SMTT(10), Sizes, Location, Design DEF D2Finite_K7AtA, Sizes, Location, Design
<3>14. QED BY <3>4, <3>5, <3>6, <3>7, <3>8, <3>9, <3>10, <3>11, <3>12, <3>13, SMTT(10), Sizes, Location, Design DEF D2Finite_K7AtA, Sizes, Location, Design
<2>6. QED BY <2>5, SMTT(10), Sizes, Location, Design DEF K7, D2Finite_K7AtA, Sizes, Location, Design
\* T2M-END R2M0220_PP_PdD2DReadFailureD2_K7

\* T2M-SCOPE R2M0221_PP_PdD2DReadDone_K7

<1>FUj9f2BP4.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K7'
<2> USE ONLY <1>FUj9f2BP4, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
  BY <2>1, <1>hEhAOoScr53F, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>Mg8FW7X4C19Keb, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0221_PP_PdD2DReadDone_K7


<1>ZLM3EtVXU0O.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE K7'
  BY ONLY <1>ZLM3EtVXU0O, Sizes, Location, Design, <1>FUj9f2BP4, V21_Inv_K7 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>hB0RMVEIMsPk.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE K16'
  BY ONLY <1>hB0RMVEIMsPk, Sizes, Location, Design, <1>x4RqucQv5z, V21_Inv_K16 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>y69bbnw8OExl0j.         B2 /\ SFollow => RD_EQUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_EQUpdate, RD_E2, RD_Q2, RD_Close, RD_Quarantine, RD_Posted, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qmmnGcYLb5h.         PinInv => CoreTypeOK
 BY ZenonT(10), V21_Inv_BaseTypeOK, Sizes, Location, Design DEF Sizes, Location, Design


<1>R3YtSwiPG37j.        
 PinInv => iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY V22_T_iv, V22_T_pst, SMTT(5)

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

<1>lsjuoBt9NWo.        
 ASSUME PinInv, SFollow, RD_RegSafe
 PROVE SI7'
<2> USE ONLY <1>lsjuoBt9NWo, Sizes, Location, Design
<2>1. SI7 /\ K3
 BY SMTT(10), V21_Inv_K3, V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, SMTT(10), Sizes, Location, Design DEF SI7, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RD_EQUpdate BY <2>3, <1>y69bbnw8OExl0j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW x \in Xids, iv'[x]="reg" PROVE x \in sentry'
  <4>1. iv[x]="reg" /\ pst'[xsrc[x]] # "quar" /\ xk[x]="wr" /\ x \in sentry
  BY <2>1, <2>3, <3>2, SMTT(10), Sizes, Location, Design DEF RD_RegSafe, SI7, K3, Sizes, Location, Design
  <4>2. ~RD_Close(x) /\ ~RD_Quarantine(x)
  BY <3>2, <4>1, SMTT(10), Sizes, Location, Design DEF RD_Close, RD_Quarantine, Sizes, Location, Design
  <4>3. QED BY <3>1, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_E2, Sizes, Location, Design
 <3>3. QED BY <3>2, SMTT(10), Sizes, Location, Design DEF SI7, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1349_PdRDRegPreserve


<1>x4WW4KvjrwlhpC0mD6ri.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE RD_RegSafe
<2> USE ONLY <1>x4WW4KvjrwlhpC0mD6ri, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 BY <1>R3YtSwiPG37j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
 BY <2>1, SMTT(10), Sizes, Location, Design DEF DReadDone, DStartRun, PageTo, instV, kV, rtV, xV, Sizes, Location, Design
<2>3. ASSUME NEW y \in Xids, iv'[y]="reg" PROVE pst'[xsrc[y]] # "quar"
 <3>1. iv[y]="reg" BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. y<nx /\ xk[y]="wr" /\ xsrc[y] \in Pages /\ IsP(Loc(xsrc[y])) /\ y \in led[xsrc[y]] /\ pst[xsrc[y]] # "quar"
 BY <3>1, <1>XdqzW5jl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3a. \A i \in Inst,u \in Rq : Active(i,u) => rpg[i][u] \in Pages /\ Loc(rpg[i][u])=i
 BY <1>eCzjL4PMdcNbssJhsk, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3b. \A x \in Xids : xdst[x] \in Pages => IsD(Loc(xdst[x]))
 BY <1>b8FOS7RlDgygbk6kJ4t, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>1, <2>3, <3>1, <3>2, <3>3a, <3>3b, Design, Sizes, Location, SMTT(20) DEF DReadDone, DStartRun, PageTo, instV, kV, rtV, xV, PageToG, GTo, Active, Held, OwnedBy, IsD, IsP, PInst, DInst, Inst, NL, GrownOf, GiveUpTo, FreeOrDrain, GiveUpToN, AfterEv, GFr, Rq, Gens, Xids, Sizes, Location, Design
<2>4. RD_RegSafe BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF RD_RegSafe, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uSfmESBbBuiqaWIs.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE SI7'
 BY ONLY <1>uSfmESBbBuiqaWIs, Sizes, Location, Design, <1>x4WW4KvjrwlhpC0mD6ri, <1>lsjuoBt9NWo, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1366_PdRDR2SI7_DReadDone


<1> QED BY <1>ZLM3EtVXU0O, <1>hB0RMVEIMsPk, <1>uSfmESBbBuiqaWIs, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DReadDone_02_02 SHA 33e64873e22a89757efb6f6421345323c0503687c19d263e2ff9f98bf4ebc3f9
USE DEF AuxType_dc8120345fba5649, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6, V21_Inv_STypeOK, V21_SFollowOff, V22_T_dpreOK, V22_T_pgn, V22_T_ph, V22_T_pr, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF Part_DReadDone_02_01, V21_Inv_GenFiltered, V21_Inv_K16, V21_Inv_K6, V21_Inv_SI7
THEOREM Part_DReadDone_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE (TypInv)' /\ (P_SI5)' /\ (K8)' /\ (SharedLedRef)'
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


           RD_PFrame == /\ \A i \in PInst, r \in Rq : ph'[i][r]=ph[i][r] /\ rg'[i][r]=rg[i][r]
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

           RD_NoStop == \A x \in Xids : ~(hw[x] \in {"fly","issued"} /\ hw'[x]="stop")

           X6zX5 == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           gv2_ == pr \in [Pages -> 0..NR]


           PwqP6 == pgn \in [Pages -> 0..MG]


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

           RD_RegSafe == \A x \in Xids : iv'[x]="reg" => iv[x]="reg" /\ pst'[xsrc[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

           RD_KeyOnSource == \A x \in Xids : xsrcS[x] \cup xsrcP[x] # {} => xr'[x]=xr[x] /\ xg'[x]=xg[x]

           \* T2M-LOCAL-VISIBILITY

           RD_StopBack == \A x \in Xids : (hw'[x]="stop" /\ hok'[x] /\ xdst'[x] \in Pages /\ Held(xdst[x],x)') =>
               hw[x]="stop" /\ hok[x] /\ xdst'[x]=xdst[x] /\ Held(xdst[x],x)

           RD_SI5Quar == \A h \in squar : h[1]<nx /\ h[2] \in xsrcS[h[1]] /\ spst[h[2]]="shared" /\ skey[h[2]]=STok(xr[h[1]],xg[h[1]]) /\ iv[h[1]] # "reg"

           RD_SI5Stop == \A x \in Xids : (hw[x]="stop" /\ hok[x] /\ xdst[x] \in Pages /\ Held(xdst[x],x)) => dpreOK[xdst[x]]

           RD_SI5Map == \A i \in PInst,r \in Rq : (Active(i,r) /\ smap[i][r] \in SPages /\ spst[smap[i][r]]="priv") => ph[i][r] \in {"pre","ready"}

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, DReadDoneD2Update, DReadFailureD2, DReadFailureD2D2Pages, D2Finite_K8AtA, RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_STypeRest, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_NoStop, X6zX5, gv2_, PwqP6, McO6Nv_c6YAPZXLgH, RD_RegSafe, RD_KeyOnSource, RD_StopBack, RD_SI5Quar, RD_SI5Stop, RD_SI5Map

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

<1>cmwY99yqbb1abw.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE K8'
<2> USE ONLY <1>cmwY99yqbb1abw, Sizes, Location, Design
<2>1. K8 /\ T_ph
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. UNCHANGED <<gen,hp,hd,rg,rpg,rpe,rx,rhit,nx,xsrc,xr,xg,iv,xlt>>
  BY <1>r8mxQYcJL4G4mA1a6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsD(j) /\ Active(j,r)
  BY <1>EaWYLyjWElDP5Z0dLp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW i \in Inst, NEW u \in Rq PROVE D2Finite_K8AtA(i,u)'
<3>1. D2Finite_K8AtA(i,u)
  BY <2>1, <1>GHtNmHuQStIh4bm0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE i = j /\ u = r
  BY <3>2, <2>2, <2>3, <3>1, <1>OLKS3ogwfZH7o9xO9Iw, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF D2Finite_K8AtA, Active, Sizes, Location, Design
<3>3. CASE i # j \/ u # r
<4>1. ph'[i][u] = ph[i][u]
  BY <3>3, <1>OLKS3ogwfZH7o9xO9Iw, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. Active(i,u) /\ ~rhit[i][u] =>
       LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],led[p],sfly[p],sled[p]>>
  BY <3>3, <1>ORTHs2JlnWkAcZnx67UEbhpjI, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>3. QED BY <2>2, <3>1, <4>1, <4>2, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF D2Finite_K8AtA, Active, OwnedBy, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF K8, D2Finite_K8AtA, Sizes, Location, Design
\* T2M-END R2M0218_PP_PdD2DReadFailureD2_K8


<1>izuXtyZHP49T.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE K8'
<2> USE ONLY <1>izuXtyZHP49T, Sizes, Location, Design
<2>1. K8 /\ T_ph /\ T_plt /\ T_sfly /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, pr, pst, ptl, rg, rhit, rpe, rpg, rx, xg, xlt, xr, xsrc>>
  BY <1>gyDL4BFCHPcjRplQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>mZNjhqJJlxOdnw, <1>vOs0aO70tmslbxUvmi1VYj11A, Design, Location, Sizes, SMTT(10) DEF Active, DInst, Inst, IsD, IsP, K8, NL, OwnedBy, T_ph, T_plt, T_sfly, T_sled, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0222_PP_PdD2ReadSuccess_K8


<1>m9jQy4Xp0.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K8'
<2> USE ONLY <1>m9jQy4Xp0, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
  BY <2>1, <1>izuXtyZHP49T, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>cmwY99yqbb1abw, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0223_PP_PdD2DReadDone_K8


<1>RuZ1FBE5N29.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE K8'
  BY ONLY <1>RuZ1FBE5N29, Sizes, Location, Design, <1>m9jQy4Xp0, V21_Inv_K8 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

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
 <3>2. QED
  <4>1. smap \in [PInst -> [Rq -> {0} \cup SPages]]
   BY ONLY <2>1, ZenonT(10) DEF STypeOK
  <4>2. schoice \in [PInst -> [Rq -> BOOLEAN]]
   BY ONLY <2>1, ZenonT(10) DEF STypeOK
  <4>3. smap' = smap
   BY ONLY <3>1, <4>1, SMTT(10)
  <4>4. schoice' = schoice
   BY ONLY <3>1, <4>2, SMTT(10)
  <4>5. QED BY ONLY <4>3, <4>4, SMTT(10)
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
  BY ONLY <1>c0gZZhOiBg4Hvw4, <2>1, <2>3, <1>HyTxass4cKRoY43Ha, <1>mmyDIW0RP, V22_T_xprefixOK, SMTT(5) DEF RD_XPrefixUpdate

 <3>6. dpreOK' \in [Pages -> BOOLEAN]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>c0gZZhOiBg4Hvw4, <2>1, <2>3, <1>HyTxass4cKRoY43Ha, <1>mmyDIW0RP, V22_T_dpreOK, SMTT(5) DEF RD_DPreUpdate

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

<1>MZgzQY9fuchN3wZK3Gm.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>MZgzQY9fuchN3wZK3Gm, Sizes, Location, Design, SMTT(10) DEF DReadDone, DStartRun, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jTmU8ydKd4OG2hXX.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>jTmU8ydKd4OG2hXX, Sizes, Location, Design
<2>1. RD_PhType /\ RD_RgType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>MZgzQY9fuchN3wZK3Gm, Sizes, SMTT(10), Location, Design DEF DReadDone, DStartRun, instV, kV, rtV, xV, RD_PFrame, PInst, DInst, Inst, NL, IsD, RD_PhType, RD_RgType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ctCrL1fkkFQ3S.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE CoreTypeOK'
 BY ONLY <1>ctCrL1fkkFQ3S, AuxType_dc8120345fba5649, Sizes, Location, Design DEF Sizes, Location, Design

<1>h9caojsWccDynMeh.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE TypInv'
<2> USE ONLY <1>h9caojsWccDynMeh, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED xsrc
 BY <1>jTmU8ydKd4OG2hXX, <1>MZgzQY9fuchN3wZK3Gm, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK'
 BY <2>1, <1>NDQyqiufWt5zT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, <1>ctCrL1fkkFQ3S, SMTT(10), Sizes, Location, Design DEF TypInv, Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>SUZb07U7qj6m8hr2NkpOHK.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE SharedLedRef'
<2> USE ONLY <1>SUZb07U7qj6m8hr2NkpOHK, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>jTmU8ydKd4OG2hXX, <1>MZgzQY9fuchN3wZK3Gm, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>WNuC2jkOhy0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>qmmnGcYLb5h.         PinInv => CoreTypeOK
 BY ZenonT(10), V21_Inv_BaseTypeOK, Sizes, Location, Design DEF Sizes, Location, Design


<1>R3YtSwiPG37j.        
 PinInv => iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY V22_T_iv, V22_T_pst, SMTT(5)

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


<1>XdqzW5jl.        
 ASSUME PinInv, NEW x \in Xids, iv[x]="reg"
 PROVE x<nx /\ xk[x]="wr" /\ xsrc[x] \in Pages /\ IsP(Loc(xsrc[x])) /\ x \in led[xsrc[x]] /\ pst[xsrc[x]] # "quar"
<2> USE ONLY <1>XdqzW5jl, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ QuarNoReg /\ CoreTypeOK
 BY SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x<nx /\ xk[x]="wr"
 BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, K3, CoreTypeOK, Xids, Sizes, Location, Design
<2>3. xsrc[x] \in Pages /\ Loc(xsrc[x])=xp[x] /\ xp[x] \in PInst
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, K2, InitPage, InitInst, Sizes, Location, Design
<2>4. x \in led[xsrc[x]]
 BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K4, InitPage, Sizes, Location, Design
<2>5. IsP(Loc(xsrc[x])) /\ pst[xsrc[x]] # "quar"
 BY <2>1, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF IsP, PInst, QuarNoReg, Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>x4WW4KvjrwlhpC0mD6ri.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE RD_RegSafe
<2> USE ONLY <1>x4WW4KvjrwlhpC0mD6ri, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 BY <1>R3YtSwiPG37j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
 BY <2>1, SMTT(10), Sizes, Location, Design DEF DReadDone, DStartRun, PageTo, instV, kV, rtV, xV, Sizes, Location, Design
<2>3. ASSUME NEW y \in Xids, iv'[y]="reg" PROVE pst'[xsrc[y]] # "quar"
 <3>1. iv[y]="reg" BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. y<nx /\ xk[y]="wr" /\ xsrc[y] \in Pages /\ IsP(Loc(xsrc[y])) /\ y \in led[xsrc[y]] /\ pst[xsrc[y]] # "quar"
 BY <3>1, <1>XdqzW5jl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3a. \A i \in Inst,u \in Rq : Active(i,u) => rpg[i][u] \in Pages /\ Loc(rpg[i][u])=i
 BY <1>eCzjL4PMdcNbssJhsk, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3b. \A x \in Xids : xdst[x] \in Pages => IsD(Loc(xdst[x]))
 BY <1>b8FOS7RlDgygbk6kJ4t, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>1, <2>3, <3>1, <3>2, <3>3a, <3>3b, Design, Sizes, Location, SMTT(20) DEF DReadDone, DStartRun, PageTo, instV, kV, rtV, xV, PageToG, GTo, Active, Held, OwnedBy, IsD, IsP, PInst, DInst, Inst, NL, GrownOf, GiveUpTo, FreeOrDrain, GiveUpToN, AfterEv, GFr, Rq, Gens, Xids, Sizes, Location, Design
<2>4. RD_RegSafe BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF RD_RegSafe, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

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


<1>xjHNUxk4V59WADtg.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE P_SI5'
<2> USE ONLY <1>xjHNUxk4V59WADtg, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K8 /\ K9 /\ K10 /\ K7 /\ QuarNoReg /\ CoreTypeOK
 BY SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_RegSafe BY <1>x4WW4KvjrwlhpC0mD6ri, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. RD_PFrame /\ UNCHANGED xsrc
 BY <1>jTmU8ydKd4OG2hXX, <1>MZgzQY9fuchN3wZK3Gm, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. RD_NoStop /\ nx' \in Int /\ nx' >= nx
 <3>1. UNCHANGED <<hw,nx>>
  BY ONLY <1>xjHNUxk4V59WADtg, SMTT(20), Sizes, Location, Design DEF DReadDone, xV, Sizes, Location, Design
 <3>2. nx \in Int
  
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>xjHNUxk4V59WADtg, V22_T_nx, SMTT(5)

 <3>3. RD_NoStop
  BY ONLY <3>1, SMTT(20), Sizes, Location, Design DEF RD_NoStop, Sizes, Location, Design
 <3>4. QED BY ONLY <3>1, <3>2, <3>3, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. B2 => RD_KeyOnSource
 <3>1. UNCHANGED <<xr,xg>>
  BY ONLY <1>xjHNUxk4V59WADtg, <1>O1T0jJ637c6, SMTT(20), Sizes, Location, Design DEF DReadDone, xV, Sizes, Location, Design
 <3>2. QED BY ONLY <3>1, SMTT(20), Sizes, Location, Design DEF RD_KeyOnSource, Sizes, Location, Design
<2>8. S1 /\ S2 /\ S5 /\ S6
 BY SMTT(10), V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>9a. X6zX5 /\ gv2_ /\ PwqP6
 BY <2>1, ZenonT(10), Sizes, Location, Design DEF CoreTypeOK, X6zX5, gv2_, PwqP6, Sizes, Location, Design
<2>SBFrame. UNCHANGED <<hw,hok,xdst,xr,xg>>
 BY ONLY <1>xjHNUxk4V59WADtg, SMTT(10), Sizes, Location, Design DEF DReadDone, xV, rtV, instV, recV, pgV, ghV, kV, Sizes, Location, Design
<2>SBTypes. /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
        /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>xjHNUxk4V59WADtg, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>SBMaps. \A i \in Inst,q \in Rq : Active(i,q) /\ ~rhit[i][q] => pst[rpg[i][q]]="priv"
 BY ONLY <1>xjHNUxk4V59WADtg, SMTT(10), V21_Inv_K8, V21_Inv_P_SI5, Sizes, Location, Design DEF K8, Sizes, Location, Design
<2>SBPage. ASSUME NEW p \in Pages, pst'[p] \in {"priv","drain","quar"}
        PROVE pst[p] \in {"priv","drain","quar"} /\ pr'[p]=pr[p] /\ pgn'[p]=pgn[p]
 <3> DEFINE FX_SB_E == IsD(j) /\ ph[j][r]="rd" /\ (UNCHANGED <<pst,pr,pgn>> \/ (\E s : pst'=[pst EXCEPT ![rpg[j][r]]=s] /\
                 (IF s="free" THEN pr'=[pr EXCEPT ![rpg[j][r]]=0] /\ pgn'=[pgn EXCEPT ![rpg[j][r]]=0]
                  ELSE UNCHANGED <<pr,pgn>>)))
 <3> HIDE DEF FX_SB_E
 <3>fx. FX_SB_E
  BY ONLY <1>xjHNUxk4V59WADtg, ZenonT(10) DEF DReadDone, PageTo, FX_SB_E
 <3>guard. IsD(j) /\ ph[j][r]="rd"
  BY ONLY <3>fx, ZenonT(5) DEF FX_SB_E
 <3>jd. j \in DInst
  BY ONLY <1>xjHNUxk4V59WADtg, <3>guard, Sizes, SMTT(5) DEF IsD, DInst, Inst, NL, Sizes
 <3>hit. \A i \in DInst, q \in Rq : rhit[i][q] => ph[i][q] \in {"run","ovl","end"}
  BY ONLY <2>1, ZenonT(5) DEF K9
 <3>active. Active(j,r) /\ ~rhit[j][r]
  BY ONLY <1>xjHNUxk4V59WADtg, <3>guard, <3>jd, <3>hit, SMTT(5) DEF Active
 <3>oldpage. pst[rpg[j][r]]="priv"
  BY ONLY <1>xjHNUxk4V59WADtg, <2>SBMaps, <3>active, SMTT(5)
 <3>same. CASE p=rpg[j][r]
  BY ONLY <2>SBPage, <2>SBTypes, <3>same, <3>oldpage, <3>fx, SMTT(5) DEF FX_SB_E
 <3>other. CASE p#rpg[j][r]
  BY ONLY <2>SBPage, <2>SBTypes, <3>other, <3>fx, SMTT(5) DEF FX_SB_E
 <3>qed. QED BY ONLY <3>same, <3>other, SMTT(5)
<2>9. RD_StopBack
 BY ONLY <2>SBFrame, <2>SBPage, SMTT(10), Sizes, Location, Design DEF RD_StopBack, Held, Sizes, Location, Design
<2>10. QED BY <2>4, <2>5, <2>6, <2>7, <2>9, <1>QYS9t7p6Fr, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1367_PdRDR2SI5_DReadDone


<1> QED BY <1>h9caojsWccDynMeh, <1>xjHNUxk4V59WADtg, <1>RuZ1FBE5N29, <1>SUZb07U7qj6m8hr2NkpOHK, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF AuxType_dc8120345fba5649, Part_DReadDone_02_02, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNoReg, V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V22_T_dpreOK, V22_T_iv, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_pr, V22_T_pst, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
====
