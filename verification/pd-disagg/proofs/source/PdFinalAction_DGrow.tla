---- MODULE PdFinalAction_DGrow ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_0075e37f7f3c91ec, PdFinalInvProjections, PdFinalEffects, PdFunctionFrames, PdShapeBase, PdActionSlice_DGrow_03

\* Complete original body PdFinalPart_DGrow_02_02 SHA 986fa66b1e53616de2c8d1a26d786ae19584c35b759ec1df2cdb93972eab9d2e
HIDE DEF AuxType_0075e37f7f3c91ec, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_DGrow_01_01, Part_DGrow_01_02, Part_DGrow_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoStrayAccess, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S4, V21_Inv_S6, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V22_FunctionEta, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_MatrixEta, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Status, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xst
THEOREM Part_DGrow_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE (K5)' /\ (K6)' /\ (K9)' /\ (K11)' /\ (QuarNoReg)' /\ (PrefcMatchesHolders)' /\ (SI7)' /\ (K7)' /\ (K2)' /\ (K4)' /\ (K17)' /\ (S1)' /\ (S2)' /\ (S3)' /\ (S5)' /\ (GenFiltered)' /\ (OneReply)' /\ (SharedImmutable)'
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

           GrowEffectA(j,r,Q) ==
             /\ Q \subseteq Pages /\ Q # {}
             /\ \A q \in Q : Loc(q) = j /\ q # rpg[j][r] /\ pst[q] = "free"
             /\ pst' = [p \in Pages |-> IF p \in Q THEN "priv" ELSE pst[p]]
             /\ pr' = [p \in Pages |-> IF p \in Q THEN r ELSE pr[p]]
             /\ pgn' = [p \in Pages |-> IF p \in Q THEN rg[j][r] ELSE pgn[p]]
             /\ plt' = [p \in Pages |-> IF p \in Q THEN 0 ELSE plt[p]]
             /\ ptl' = [p \in Pages |-> IF p \in Q THEN 0 ELSE ptl[p]]
             /\ pvis' = [p \in Pages |-> IF p \in Q THEN FALSE ELSE pvis[p]]

           \* T2M-LOCAL-VISIBILITY

           K7AtA(p) ==
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

           RD_RegSafe == \A x \in Xids : iv'[x]="reg" => iv[x]="reg" /\ pst'[xsrc[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, GrowEffectA, K7AtA, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_RegSafe

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

<1>pGAN5jo4YFsYjSX4jyq0z.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>pGAN5jo4YFsYjSX4jyq0z, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>pGAN5jo4YFsYjSX4jyq0z, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF DGrow, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>FoVmm99nysy.        
  ASSUME NEW x \in Xids, PinInv, InFl(x)
  PROVE xdst[x] \in Pages /\ x \in led[xdst[x]]
<2> USE ONLY <1>FoVmm99nysy, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. x < nx /\ xdst[x] \in Pages
  BY <2>1, <1>ABWOhPPrdJelZ4, <1>FKA3I6SAeRtA49GD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K2, K3, K4, InFl, ExpPage, InitPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Mx5lhuuPDTR.        
  ASSUME NEW x \in Xids, PinInv, hw[x] = "fly"
  PROVE xsrc[x] \in Pages /\ Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>Mx5lhuuPDTR, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, <1>ABWOhPPrdJelZ4, SMTT(10), Sizes, Location, Design DEF InFl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M0166_PP_PdDDataA

\* T2M-SCOPE R2M0167_PP_PdFactsA

<1>GVmnLkn.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nAk0eQnWcTP.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, Active(i,r)
  PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (~rhit[i][r] => pst[rpg[i][r]] = "priv" /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r])
        /\ (IsP(i) => ~rhit[i][r])
        /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  BY ONLY <1>nAk0eQnWcTP, Sizes, Location, Design, SMTT(10) DEF K8, Active, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tkgKH5TP.        
  ASSUME NEW i \in DInst, NEW r \in Rq, K9, rhit[i][r]
  PROVE /\ ph[i][r] \in {"run","ovl","end"}
        /\ (ph[i][r] \in {"run","ovl"} => pst[rpg[i][r]] = "shared" /\ Tag(r,rg[i][r]) \in sled[rpg[i][r]])
  BY ONLY <1>tkgKH5TP, Sizes, Location, Design, Zenon DEF K9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HXbTwDyIL.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DGrow(j,r)
  PROVE /\ IsD(j) /\ ph[j][r] \in {"run","ovl"}
        /\ \E Q \in SUBSET Pages : GrowEffectA(j,r,Q)
        /\ UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, ph, pqp, prefc, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>HXbTwDyIL, Sizes, Location, Design, Design, SMTT(10) DEF DGrow, GrowEffectA, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iTqRzCwW6fW.        
  ASSUME NEW p \in Pages, PinInv, pst[p] = "free"
  PROVE \A i \in Inst, s \in KSlots : kpin[i][s] => \A e \in krs[i][s] : e[3] # p
  BY ONLY <1>iTqRzCwW6fW, Sizes, Location, Design, P_PagePoolsDisjoint, SMTT(10), V21_Inv_NoFreeUnderRead, V21_Inv_Safety DEF Safety, NoFreeUnderRead, KHeld, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qHkSKTbbK5y.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, Active(i,r)
  PROVE rpg[i][r] \in Pages /\ pst[rpg[i][r]] # "free"
<2> USE ONLY <1>qHkSKTbbK5y, Sizes, Location, Design
<2>1. K8 /\ K9
  BY SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[i][r] \in Pages /\ (rhit[i][r] \/ pst[rpg[i][r]] = "priv")
  BY <2>1, <1>nAk0eQnWcTP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rhit[i][r] => i \in DInst
  BY <2>1, <1>nAk0eQnWcTP, <1>GVmnLkn, Sizes, SMTT(10), Location, Design DEF IsP, IsD, Sizes, Location, Design
<2>4. rhit[i][r] => pst[rpg[i][r]] = "shared"
  BY <2>1, <2>3, <1>tkgKH5TP, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<2>5. QED
  BY <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0168_PP_PdDGrowEffectsA


<1>WXjjtWp.         K7 <=> (\A p \in Pages : K7AtA(p))
  BY SMTT(10), Sizes, Location, Design DEF K7, K7AtA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZF0VT48Mkx.        
  ASSUME NEW p \in Pages, K7AtA(p), UNCHANGED <<ptl[p], pst[p], pr[p], pgn[p], plt[p], led[p], sled[p], sfly[p], prefc[p], pqp[p], gen, ph, rg, rhit, rpg, kpin, krs>>
  PROVE K7AtA(p)'
  BY ONLY <1>ZF0VT48Mkx, Sizes, Location, Design, Zenon DEF K7AtA, Active, Maps, GrownP, KPinned, NHits, Sizes, Location, Design
\* T2M-END R2M0170_PP_PdK7FrameA


<1>WMMSx.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j, r)
  PROVE K5'
<2> USE ONLY <1>WMMSx, Sizes, Location, Design
<2>1. K5 /\ K7 /\ T_pgn /\ T_plt /\ T_pr /\ T_pst /\ T_ptl
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ IsD(j) /\ ph[j][r] \in {"run","ovl"}
        /\ \E Q \in SUBSET Pages : GrowEffectA(j,r,Q)
        /\ UNCHANGED <<gen, kpin, krs, led, ph, pqp, prefc, rg, rhit, rpg, sfly, sled, xg, xr>>
  BY <1>HXbTwDyIL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>qHkSKTbbK5y, <1>iTqRzCwW6fW, <1>FoVmm99nysy, <1>Mx5lhuuPDTR, Design, Location, Sizes, SMTT(10) DEF Active, DInst, GrowEffectA, GrownP, Inst, IsD, IsP, K5, K7, KPinned, Maps, NHits, NL, OwnedBy, T_pgn, T_plt, T_pr, T_pst, T_ptl, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tiTTX.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j, r)
  PROVE K6'
<2> USE ONLY <1>tiTTX, Sizes, Location, Design
<2>1. K6 /\ K7 /\ T_pgn /\ T_plt /\ T_pr /\ T_pst /\ T_ptl
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ IsD(j) /\ ph[j][r] \in {"run","ovl"}
        /\ \E Q \in SUBSET Pages : GrowEffectA(j,r,Q)
        /\ UNCHANGED <<gen, kpin, krs, led, ph, pqp, prefc, rg, rhit, rpg, sfly, sled>>
  BY <1>HXbTwDyIL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>qHkSKTbbK5y, <1>iTqRzCwW6fW, <1>FoVmm99nysy, <1>Mx5lhuuPDTR, Design, Location, Sizes, SMTT(10) DEF Active, DInst, GrowEffectA, GrownP, Inst, IsD, IsP, K6, K7, KPinned, Maps, NHits, NL, OwnedBy, T_pgn, T_plt, T_pr, T_pst, T_ptl, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YGQJt.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r)
  PROVE K7'
<2> USE ONLY <1>YGQJt, Sizes, Location, Design
<2>1. K7 /\ K8 /\ T_pst /\ T_pr /\ T_pgn /\ T_plt /\ T_ptl
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K7, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. IsD(j) /\ ph[j][r] \in {"run","ovl"}
       /\ UNCHANGED <<gen,kpin,krs,led,ph,pqp,prefc,rg,rhit,rpg,sfly,sled>>
  BY <1>HXbTwDyIL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK Q \in SUBSET Pages : GrowEffectA(j,r,Q)
  BY <1>HXbTwDyIL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. rg[j][r] \in Gens /\ rg[j][r] <= gen[r]
  BY <2>1, <2>2, <1>nAk0eQnWcTP, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<2>5. ASSUME NEW p \in Pages PROVE K7AtA(p)'
<3>1. K7AtA(p)
  BY <2>1, <1>WXjjtWp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE p \in Q
  BY <3>2, <2>2, <2>3, <2>4, <3>1, SMTT(10), Sizes, Location, Design DEF GrowEffectA, K7AtA, GrownP, Active, Maps, KPinned, NHits, Sizes, Location, Design
<3>3. CASE p \notin Q
<4>1. UNCHANGED <<ptl[p],pst[p],pr[p],pgn[p],plt[p],led[p],sled[p],sfly[p],prefc[p],pqp[p],gen,ph,rg,rhit,rpg,kpin,krs>>
  BY <3>3, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF GrowEffectA, Sizes, Location, Design
<4>2. QED
  BY <3>1, <4>1, <1>ZF0VT48Mkx, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>4. QED
  BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>5, SMTT(10), Sizes, Location, Design DEF K7, K7AtA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AN4lP.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j, r)
  PROVE K9'
<2> USE ONLY <1>AN4lP, Sizes, Location, Design
<2>1. K9 /\ K8 /\ T_pgn /\ T_plt /\ T_pr /\ T_pst /\ T_ptl /\ T_pvis
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ IsD(j) /\ ph[j][r] \in {"run","ovl"}
        /\ \E Q \in SUBSET Pages : GrowEffectA(j,r,Q)
        /\ UNCHANGED <<drep, gen, hd, hp, iv, led, nx, ph, rg, rhit, rpe, rpg, rx, sfly, sled, xdst, xg, xlt, xr, xsrc>>
  BY <1>HXbTwDyIL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>qHkSKTbbK5y, <1>iTqRzCwW6fW, <1>FoVmm99nysy, <1>Mx5lhuuPDTR, Design, Location, Sizes, SMTT(10) DEF Active, DInst, GrowEffectA, Inst, IsD, IsP, K8, K9, NL, OwnedBy, T_pgn, T_plt, T_pr, T_pst, T_ptl, T_pvis, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vYHud7.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j, r)
  PROVE K11'
<2> USE ONLY <1>vYHud7, Sizes, Location, Design
<2>1. K11 /\ K7 /\ T_pgn /\ T_plt /\ T_pr /\ T_pst /\ T_ptl
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K11, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ IsD(j) /\ ph[j][r] \in {"run","ovl"}
        /\ \E Q \in SUBSET Pages : GrowEffectA(j,r,Q)
        /\ UNCHANGED <<gen, kpin, krs, led, nx, ph, pqp, prefc, rg, rhit, rpg, sfly, sled, xlt, xsrc>>
  BY <1>HXbTwDyIL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>qHkSKTbbK5y, <1>iTqRzCwW6fW, <1>FoVmm99nysy, <1>Mx5lhuuPDTR, Design, Location, Sizes, SMTT(10) DEF Active, DInst, GrowEffectA, GrownP, Inst, IsD, IsP, K11, K7, KPinned, Maps, NHits, NL, T_pgn, T_plt, T_pr, T_pst, T_ptl, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OLdmmRSZNK3i.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j, r)
  PROVE QuarNoReg'
<2> USE ONLY <1>OLdmmRSZNK3i, Sizes, Location, Design
<2>1. QuarNoReg /\ T_pst
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_KStruct, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, Types, Sizes, Location, Design
<2>2. /\ IsD(j) /\ ph[j][r] \in {"run","ovl"}
        /\ \E Q \in SUBSET Pages : GrowEffectA(j,r,Q)
        /\ UNCHANGED <<iv, led>>
  BY <1>HXbTwDyIL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>qHkSKTbbK5y, <1>iTqRzCwW6fW, <1>FoVmm99nysy, <1>Mx5lhuuPDTR, Design, Location, Sizes, SMTT(10) DEF DInst, GrowEffectA, Inst, IsD, IsP, NL, QuarNoReg, T_pst, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0171_PP_PdDGrowStepsA

\* T2M-SCOPE R2M0172_PdPAgg_DGrow
\* T2M-BODY R2M0172_PdPAgg_DGrow
\* T2M-LOCAL-VISIBILITY

<1>kskQBSv.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
  PROVE K5'
  BY ONLY <1>kskQBSv, Sizes, Location, Design, <1>WMMSx, V21_Inv_K5 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>n1XVvS6.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
  PROVE K6'
  BY ONLY <1>n1XVvS6, Sizes, Location, Design, <1>tiTTX, V21_Inv_K6 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>RKLuf2B.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
  PROVE K7'
  BY ONLY <1>RKLuf2B, Sizes, Location, Design, <1>YGQJt, V21_Inv_K7 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>qB3SxVZ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
  PROVE K9'
  BY ONLY <1>qB3SxVZ, Sizes, Location, Design, <1>AN4lP, V21_Inv_K9 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>f5PCXiQl.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
  PROVE K11'
  BY ONLY <1>f5PCXiQl, Sizes, Location, Design, <1>vYHud7, V21_Inv_K11 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>hHKo8EVeI1gJx2.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>hHKo8EVeI1gJx2, Sizes, Location, Design, <1>OLdmmRSZNK3i, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M0172_PdPAgg_DGrow


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


<1>XnYly5EW.        
 OneReply /\ UNCHANGED <<crep, drep>> => OneReply'
 BY IsaT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
\* T2M-END R2M0348_PdPF_OneReply


<1>PH.        
 K2 /\ UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>> => K2'
 BY IsaT(10), Sizes, Location, Design DEF ExpInst, ExpPage, InitInst, InitPage, K2, Sizes, Location, Design
\* T2M-END R2M0357_PdPF_K2


<1>ps.        
 S1 /\ UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>> => S1'
 BY IsaT(10), Sizes, Location, Design DEF Active, ExpInst, S1, Sizes, Location, Design
\* T2M-END R2M0341_PdPF_S1

\* T2M-SCOPE R2M0346_PdPF_S6

<1>aXu.        
 K17 /\ UNCHANGED <<kpin, krs, ph, rg, rpg>> => K17'
 BY IsaT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
\* T2M-END R2M0340_PdPF_K17


<1>pJ.        
 K4 /\ UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>> => K4'
 BY IsaT(10), Sizes, Location, Design DEF ExpPage, InitPage, K4, Sizes, Location, Design
\* T2M-END R2M0333_PdPF_K4


<1>Po.        
 S5 /\ UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>> => S5'
 BY IsaT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
\* T2M-END R2M0345_PdPF_S5


<1>sMK4k9XRQLZt5.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, ph, rd, rg, rhit, rp, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>sMK4k9XRQLZt5, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF DGrow, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SpJNp4Cd.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE K2'
<2> USE ONLY <1>SpJNp4Cd, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>sMK4k9XRQLZt5, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d3KC906Z.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE K4'
<2> USE ONLY <1>d3KC906Z, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>sMK4k9XRQLZt5, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k1qXmIDgN.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE K17'
<2> USE ONLY <1>k1qXmIDgN, Sizes, Location, Design
<2>1. K17
 BY V21_Inv_K17, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpg>>
 BY <1>sMK4k9XRQLZt5, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aXu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ebxlfY8d.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE S1'
<2> USE ONLY <1>ebxlfY8d, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>sMK4k9XRQLZt5, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d0aZGQYz.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE S2'
<2> USE ONLY <1>d0aZGQYz, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>sMK4k9XRQLZt5, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zqUMLeQM.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE S3'
<2> USE ONLY <1>zqUMLeQM, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>sMK4k9XRQLZt5, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VVsrLU1x.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE S5'
<2> USE ONLY <1>VVsrLU1x, Sizes, Location, Design
<2>1. S5
 BY V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
 BY <1>sMK4k9XRQLZt5, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Po, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>INlDF93KhCwn8j42g.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>INlDF93KhCwn8j42g, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>sMK4k9XRQLZt5, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hmkO8qZxgYdN0O.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE OneReply'
<2> USE ONLY <1>hmkO8qZxgYdN0O, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>sMK4k9XRQLZt5, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ivFfcVr6Rc1eHuIs8.         B2 /\ SFollow => RD_HUpdate /\ RD_MUpdate /\ RD_XUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_HUpdate, RD_MUpdate, RD_XUpdate, RD_HPin, RD_HLive, RD_Posted, RD_Src, Sizes, Location, Design


<1>lQA2.         PinInv => STypeOK /\ (B2 => SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6)
 BY SMTT(10), V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>elSYwASV4YB1dEA4qYwxRxhuK.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>elSYwASV4YB1dEA4qYwxRxhuK, Sizes, Location, Design, <1>RWvTkqQsVDwnRge2Q5E0XkOXe, SMTT(10) DEF Sizes, Location, Design



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
<2> HIDE DEF CoreTypeOK, STypeOK
<2> USE ONLY <1>XdqzW5jl, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ QuarNoReg /\ nx \in 1..(MX+1)
 BY SMTT(10), V22_T_nx, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x<nx /\ xk[x]="wr"
 BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, K3, Xids, Sizes, Location, Design
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


<1>IsY2jbZxBPmwlEBr.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE RD_RegSafe
<2> USE ONLY <1>IsY2jbZxBPmwlEBr, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 BY <1>R3YtSwiPG37j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
 BY <2>1, SMTT(10), Sizes, Location, Design DEF DGrow, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>3. ASSUME NEW y \in Xids, iv'[y]="reg" PROVE pst'[xsrc[y]] # "quar"
 <3>1. iv[y]="reg" BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. y<nx /\ xk[y]="wr" /\ xsrc[y] \in Pages /\ IsP(Loc(xsrc[y])) /\ y \in led[xsrc[y]] /\ pst[xsrc[y]] # "quar"
 BY <3>1, <1>XdqzW5jl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3a. \A i \in Inst,u \in Rq : Active(i,u) => rpg[i][u] \in Pages /\ Loc(rpg[i][u])=i
 BY <1>eCzjL4PMdcNbssJhsk, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3b. \A x \in Xids : xdst[x] \in Pages => IsD(Loc(xdst[x]))
 BY <1>b8FOS7RlDgygbk6kJ4t, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>1, <2>3, <3>1, <3>2, <3>3a, <3>3b, Design, Sizes, Location, SMTT(20) DEF DGrow, ghV, instV, kV, recV, rtV, xV, PageToG, GTo, Active, Held, OwnedBy, IsD, IsP, PInst, DInst, Inst, NL, GrownOf, GiveUpTo, FreeOrDrain, GiveUpToN, AfterEv, GFr, Rq, Gens, Xids, Sizes, Location, Design
<2>4. RD_RegSafe BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF RD_RegSafe, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ETUhnZ0khoEi.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE SI7'
 BY ONLY <1>ETUhnZ0khoEi, Sizes, Location, Design, <1>IsY2jbZxBPmwlEBr, <1>lsjuoBt9NWo, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1360_PdRDR2SI7_DGrow


<1> QED BY <1>kskQBSv, <1>n1XVvS6, <1>qB3SxVZ, <1>f5PCXiQl, <1>hHKo8EVeI1gJx2, <1>elSYwASV4YB1dEA4qYwxRxhuK, <1>ETUhnZ0khoEi, <1>RKLuf2B, <1>SpJNp4Cd, <1>d3KC906Z, <1>k1qXmIDgN, <1>ebxlfY8d, <1>d0aZGQYz, <1>zqUMLeQM, <1>VVsrLU1x, <1>INlDF93KhCwn8j42g, <1>hmkO8qZxgYdN0O, <1>pGAN5jo4YFsYjSX4jyq0z, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_DGrow SHA 1100e8e52f1e3572645449ae34a6d8e2b10aae8929af7bbda1b111b3bb03cfd1
USE DEF ShapeNetFrame
HIDE DEF P_PagePoolsDisjoint, Part_DGrow_02_02, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K11, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_OneReply, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNoReg, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S5, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_iv, V22_T_nx, V22_T_pst, V22_T_rpgS, V22_T_sentry, V22_T_squar, V22_T_xdst, V22_T_xsrcS
LEMMA ShapeEffect_DGrow ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Design, DGrow(j,r)
 PROVE net'=net
 BY ONLY DGrow(j,r), Sizes, Design, SMTT(5) DEF DGrow, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_DGrow ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Design, IndInv, MessageShape, DGrow(j,r)
 PROVE MessageShape'
 BY ONLY Sizes, Design, DGrow(j,r), MessageShape, ShapeEffect_DGrow, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_DGrow SHA d14bfe56f4cde813a588aff04dc15e032707e309fd39b9159ebc63b9978dccd7
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_DGrow, ShapeNetFrame
THEOREM DomainKeep_DGrow ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, DGrow(j,r)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, DGrow(j,r), ShapeEffect_DGrow
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_DGrow_03 SHA dfa0540fb6eef3853c564fab1255836fc3a393089d4b77628823ee3b97a5d16c
USE DEF V21_Inv_P_B2OffInit, V21_SFollowOff
HIDE DEF ShapeEffect_DGrow, V21_Inv_MsgXDomain
THEOREM Group_DGrow_03 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE (P_B2OffInit)' /\ (MsgXDomain)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1>wv2gxWV49YaJHtl.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>wv2gxWV49YaJHtl, Sizes, Location, Design, DomainKeep_DGrow, SMTT(5)
\* T2M-END R2M0273_PdPDomain_DGrow


<1>m948gxWe0.        
 P_B2OffInit /\ UNCHANGED <<dedupSeen, dpreOK, hitSeen, rpgS, schoice, sdata, sentry, sgen, skey, smap, sown, sprefc, spst, squar, sready, swrite, xprefixOK, xsrcP, xsrcS>> => P_B2OffInit'
 BY IsaT(10), Sizes, Location, Design DEF P_B2OffInit, SInit, Sizes, Location, Design
\* T2M-END R2M0451_PdPF_B2OffInit


<1>yopUIFZ9s5vXPr8.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j,r), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>yopUIFZ9s5vXPr8, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0458_PdPOff_DGrow


<1> QED BY <1>yopUIFZ9s5vXPr8, <1>wv2gxWV49YaJHtl, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_DGrow_01_01, Part_DGrow_01_02, Part_DGrow_02_01, Part_DGrow_02_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_DGrow
HIDE DEF DomainKeep_DGrow, V21_Inv_P_B2OffInit, V21_SFollowOff

THEOREM Step_DGrow ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, DGrow(j,r), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, NEW v \in Rq, Sizes, Location, Design, PinInv, DGrow(u,v), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_DGrow_01_01, Part_DGrow_01_02, Part_DGrow_02_01, Part_DGrow_02_02, Group_DGrow_03, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_DGrow_01_01, Part_DGrow_01_02, Part_DGrow_02_01, Part_DGrow_02_02, Group_DGrow_03, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, DGrow(j,r), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, DGrow(j,r), ShapeKeep_DGrow, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
