---- MODULE PdFinalAction_DReadDone ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdFinalAuxType_dc8120345fba5649, PdSharedRefCounts, PdShapeBase, PdActionSlice_DReadDone_06

\* Complete original body PdFinalPart_DReadDone_04_02 SHA f186570a8122c25ffec52ad8042c0ca9ce4f065c67c562d56d4ca9a646559ce4
HIDE DEF AuxType_dc8120345fba5649, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_DReadDone_01_01, Part_DReadDone_01_02, Part_DReadDone_02_01, Part_DReadDone_02_02, Part_DReadDone_03_01, Part_DReadDone_03_02, Part_DReadDone_04_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_K5, V21_Inv_K6, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_PostSharedRefZero, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SharedRefZero, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_kfly, V22_T_kpin, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS
THEOREM Part_DReadDone_04_02 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE (P_SI4)' /\ (K11)' /\ (NoEvictUnderRDMA)' /\ (SendOwnLanded)' /\ (HitIdentity)' /\ (P_SI1)' /\ (P_SI3)' /\ (P_SI6)' /\ (SI8)'
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

           RD_RdOpenBack == \A x \in Xids : (xk'[x]="rd" /\ xst'[x]="posted") => (xk[x]="rd" /\ xst[x]="posted")

           \* T2M-LOCAL-VISIBILITY

           RD_XKeysFrame == UNCHANGED <<xsrc,xp,xr,xg,xk,nx>>

           RD_EntryRange == \A x \in sentry : IF xk[x]="wr" THEN iv'[x] \in {"reg","posted","failret","cqe","nopost"}
                                          ELSE xst'[x] \in {"posted","landed","failed"}


           RD_Controls == /\ \A x \in Xids : iv'[x] # iv[x] => iv[x]="none"
                          /\ \A x \in Xids : xst'[x] # xst[x] => xk[x]="wr"

           \* T2M-LOCAL-VISIBILITY

           RD_SendShared == B2 => \A x \in Xids : hw[x]="fly" => \A p \in xsrcS[x] \cup xsrcP[x] :
                sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])

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

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, DReadDoneD2Update, DReadFailureD2, DReadFailureD2D2Pages, RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_Q2, RD_EQUpdate, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_RdOpenBack, RD_XKeysFrame, RD_EntryRange, RD_Controls, RD_SendShared, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, McO6Nv_c6YAPZXLgH

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

<1>r9VnjyvowyN2IgSWXdGcCcO.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE DReadFailureD2D2Pages(j,r)
<2> USE ONLY <1>r9VnjyvowyN2IgSWXdGcCcO, Sizes, Location, Design
<2>1. DReadDone(j,r) /\ ~hok[rx[j][r]]
  BY SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>2. QED BY <2>1, <1>mT2NTTJH9Dviy, <1>snu4CBQvJChu7i, SMTT(10), Sizes, Location, Design DEF DReadDoneD2Update, DReadFailureD2D2Pages, Sizes, Location, Design
\* T2M-END R2M0188_PP_PdD2DReadFailureD2Effect


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

<1>GQ61RXhYEbdvj.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE K11'
<2> USE ONLY <1>GQ61RXhYEbdvj, Sizes, Location, Design
<2>1. K11 /\ T_sfly /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K11, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<led, nx, ptl, xlt, xsrc>>
  BY <1>gyDL4BFCHPcjRplQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>mZNjhqJJlxOdnw, <1>vOs0aO70tmslbxUvmi1VYj11A, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K11, NL, T_sfly, T_sled, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0198_PP_PdD2ReadSuccess_K11


<1>EAtViJQ8RvDQYIz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE K11'
<2> USE ONLY <1>EAtViJQ8RvDQYIz, Sizes, Location, Design
<2>1. K11 /\ K7 /\ K16 /\ T_gen /\ T_hw /\ T_kpin /\ T_krs /\ T_led /\ T_nx /\ T_pgn /\ T_ph /\ T_plt /\ T_pqp /\ T_pr /\ T_prefc /\ T_pst /\ T_ptl /\ T_rg /\ T_rhit /\ T_rpg /\ T_sfly /\ T_sled /\ T_xdst /\ T_xlt /\ T_xsrc
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K11, V21_Inv_K16, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. IsD(j) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
  BY <1>EaWYLyjWElDP5Z0dLp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. DReadFailureD2D2Pages(j,r)
  BY <1>r9VnjyvowyN2IgSWXdGcCcO, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Location, Sizes, SMTT(10) DEF DReadFailureD2D2Pages, Active, FreeOrDrain, GFr, GTo, GiveUpTo, GiveUpToN, GrownOf, GrownOwn, GrownP, InFl, IsD, IsP, K11, K16, K7, KPinned, Maps, NHits, NoWriteInto, PageTo, PageToG, PinBlocks, T_gen, T_hw, T_kpin, T_krs, T_led, T_nx, T_pgn, T_ph, T_plt, T_pqp, T_pr, T_prefc, T_pst, T_ptl, T_rg, T_rhit, T_rpg, T_sfly, T_sled, T_xdst, T_xlt, T_xsrc, Tag, Writing, KPages, Sizes, Location, Design
\* T2M-END R2M0199_PP_PdD2DReadFailureD2_K11

\* T2M-SCOPE R2M0200_PP_PdD2DReadDone_K11

<1>HTzsuG6aF2.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K11'
<2> USE ONLY <1>HTzsuG6aF2, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
  BY <2>1, <1>GQ61RXhYEbdvj, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>EAtViJQ8RvDQYIz, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0200_PP_PdD2DReadDone_K11


<1>XmjPD7v3dXK7.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE K11'
  BY ONLY <1>XmjPD7v3dXK7, Sizes, Location, Design, <1>HTzsuG6aF2, V21_Inv_K11 DEF Sizes, Location, Design


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


<1>y69bbnw8OExl0j.         B2 /\ SFollow => RD_EQUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_EQUpdate, RD_E2, RD_Q2, RD_Close, RD_Quarantine, RD_Posted, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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

<1>TUh8WMSa.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,gen>>
 PROVE P_SI6'
<2> USE ONLY <1>TUh8WMSa, Sizes, Location, Design
<2>1. P_SI6 /\ STypeOK /\ CoreTypeOK
 BY SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0,1,2,3,4})]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>TUh8WMSa, V22_T_krs, SMTT(5)

<2>4. PInst \subseteq Inst
 BY Sizes, SMTT(10), Location, Design DEF PInst, Inst, NL, Sizes, Location, Design
<2>5. \A i \in PInst,k \in KSlots : \A e \in krs[i][k] : e[1] \in Rq
 BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A h \in rpgS : h[1] \in PInst /\ h[2] \in Rq
 BY <2>1, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
<2>7. QED BY <2>1, <2>2, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF P_SI6, SI6, RD_PFrame, RD_SFrame, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ueaxxwWI.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,gen>>
 PROVE HitIdentity'
<2> USE ONLY <1>ueaxxwWI, Sizes, Location, Design
<2>1. HitIdentity /\ STypeOK
 BY SMTT(10), V21_Inv_HitIdentity, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF HitIdentity, RD_PFrame, RD_SFrame, STypeOK, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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

<1>HJqiycb18Jq3.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,hw,xr,xg>>
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>HJqiycb18Jq3, Sizes, Location, Design
<2>1. NoEvictUnderRDMA
 BY SMTT(10), V21_Inv_NoEvictUnderRDMA, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. B2 => \A x \in Xids : SAccess(x)' => SAccess(x)
 BY <1>WVSoMLTftzUA, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, RD_SFrame, Sizes, Location, Design
\* T2M-END R2M0727_PdRDSharedAccess


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

<1>XSpO6sXnRte.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc, RD_RdOpenBack
 PROVE SI8'
<2> USE ONLY <1>XSpO6sXnRte, Sizes, Location, Design
<2>1. SI8 /\ UNCHANGED <<xsrcS,xsrcP>>
 BY <1>cIrFCXuTtPxBU, SMTT(10), V21_Inv_SI8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY <2>2, SMTT(10), Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>3. CASE B2
 <3>1. squar \subseteq squar'
 BY <2>3, <1>WNRe9PPHkoFy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW x \in Xids, xk'[x]="rd", xst'[x]="posted"
        PROVE x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
  <4>1. xk[x]="rd" /\ xst[x]="posted" /\ ~RD_Close(x)
  BY <3>2, SMTT(10), Sizes, Location, Design DEF RD_RdOpenBack, RD_Close, Sizes, Location, Design
  <4>2. x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
  BY <2>1, <2>3, <4>1, SMTT(10), Sizes, Location, Design DEF SI8, Sizes, Location, Design
  <4>3. QED BY <2>1, <2>3, <3>1, <4>1, <4>2, <1>vyedVpubW3KMqNND, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>3, <3>2, SMTT(10), Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0730_PdRDSharedTransfer


<1>xURm4FKOBGVsLMRCdjs.        
 ASSUME PinInv, RD_Controls
 PROVE (B2 => RD_EntryRange) /\ (\A x \in Xids : hw[x]="fly" => ~RD_Close(x))
<2> USE ONLY <1>xURm4FKOBGVsLMRCdjs, Sizes, Location, Design
<2>1. (B2 => SI4) /\ K3 /\ STypeOK BY <1>lQA2, SMTT(10), V21_Inv_K3, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. B2 => RD_EntryRange
 BY <2>1, SMTT(10), Sizes, Location, Design DEF SI4, RD_Controls, RD_EntryRange, STypeOK, Sizes, Location, Design
<2>3. \A x \in Xids : hw[x]="fly" => ~RD_Close(x)
 BY <2>1, SMTT(10), Sizes, Location, Design DEF K3, RD_Controls, RD_Close, CqeHw, InFl, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

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

<1>FnDxdfjQ9.        
 ASSUME PinInv, SFollow, RD_PFrame, RD_XKeysFrame, UNCHANGED hw, RD_EntryRange,
        \A x \in Xids : hw[x]="fly" => ~RD_Close(x)
 PROVE P_SI4'
<2> USE ONLY <1>FnDxdfjQ9, Sizes, Location, Design
<2>1. P_SI4 /\ STypeOK
 BY SMTT(10), V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF RD_XKeysFrame, Sizes, Location, Design
<2>3. UNCHANGED xprefixOK BY <1>pKZHVuY8rKqV, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. CASE ~B2 BY <2>4, SMTT(10), Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>5. CASE B2
 <3>1. \A x \in sentry' : x \in sentry /\
           (IF xk[x]="wr" THEN iv'[x] \in {"reg","posted","failret"} ELSE xst'[x]="posted")
 BY <2>5, <1>ZILTCH9iBT8cyR, SMTT(10), Sizes, Location, Design DEF RD_XKeysFrame, Sizes, Location, Design
 <3>2. squar \subseteq squar' BY <2>5, <1>WNRe9PPHkoFy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A x \in Xids : hw'[x]="fly" => x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
 BY <2>1, <2>2, <2>5, <3>2, <1>vyedVpubW3KMqNND, SMTT(10), Sizes, Location, Design DEF P_SI4, SI4, RD_XKeysFrame, Sizes, Location, Design
 <3>4. QED BY <2>1, <2>2, <2>3, <2>5, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF P_SI4, SI4, RD_XKeysFrame, RD_SFrame, Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0731_PdRDSharedProtocol


<1>BeoqOTbNFxOyFnZ.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,hw,xr,xg>>
 PROVE RD_SendShared'
<2> USE ONLY <1>BeoqOTbNFxOyFnZ, Sizes, Location, Design
<2>1. RD_SendShared
 BY SMTT(10), V21_Inv_SendOwnLanded, Sizes, Location, Design DEF SendOwnLanded, RD_SendShared, Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<xsrcS,xsrcP>>
 BY <1>uaJsMuSZCFU, <1>cIrFCXuTtPxBU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_SendShared, RD_SFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UukBaziv337.         BaseSendOwnLanded' /\ RD_SendShared' => SendOwnLanded'
 BY SMTT(10), Sizes, Location, Design DEF SendOwnLanded, RD_SendShared, Sizes, Location, Design
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


<1>Ww5O1O6vt7jgx1lTtKEZ.        
  ASSUME NEW x \in Xids, PinInv, hw[x] = "fly"
  PROVE xsrc[x] \in Pages /\ Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>Ww5O1O6vt7jgx1lTtKEZ, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, <1>oDwSckhynVYFiD, SMTT(10), Sizes, Location, Design DEF InFl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M0840_PdRDPort_D2Finite_PdDDataA


<1>LWIMIqaB87HnIvUmNwQT.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>LWIMIqaB87HnIvUmNwQT, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ sBjpCf
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, TEJtP, BaseSafety, SendOwnLanded, Sizes, Location, Design
<2>2. McO6Nv_c6YAPZXLgH(j,r) /\ j \in DInst /\ Loc(rpg[j][r]) = j
       /\ UNCHANGED <<hw,xsrc,xlt,ptl>>
  BY <1>kIY9yVDTy6Cnr, <1>EcclSb9YoHpDCL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW y \in Xids, hw'[y] = "fly"
       PROVE ptl'[xsrc'[y]] = xlt'[y] /\ sfly'[xsrc'[y]] = {}
<3>1. hw[y] = "fly" /\ xsrc[y] \in Pages /\ Loc(xsrc[y]) \in PInst
  BY <2>2, <2>3, <1>Ww5O1O6vt7jgx1lTtKEZ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. xsrc[y] # rpg[j][r]
  BY <2>2, <3>1, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. sfly'[xsrc[y]] = sfly[xsrc[y]]
  BY <2>1, <2>2, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, sBjpCf, Sizes, Location, Design
<3>4. QED BY <2>1, <2>2, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF BaseSendOwnLanded, SendOwnLanded, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF BaseSendOwnLanded, SendOwnLanded, Sizes, Location, Design
\* T2M-END R2M0877_PdRDPort_PdD2DReadDone_SendOwnLanded


<1>d6mTCDP3Wsx20bkBBVeGRtqID6.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>d6mTCDP3Wsx20bkBBVeGRtqID6, Sizes, Location, Design
<2>1. UNCHANGED <<xsrc,hw,xr,xg>>
 BY SMTT(10), Sizes, Location, Design DEF DReadDone, DStartRun, instV, kV, rtV, xV, Sizes, Location, Design
<2>2. RD_PFrame BY <1>jTmU8ydKd4OG2hXX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>HJqiycb18Jq3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>cCojnVFBK65mO5dFxBWKFxv.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE SendOwnLanded'
<2> USE ONLY <1>cCojnVFBK65mO5dFxBWKFxv, Sizes, Location, Design
<2>1. UNCHANGED <<xsrc,hw,xr,xg>>
 BY SMTT(10), Sizes, Location, Design DEF DReadDone, DStartRun, instV, kV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>LWIMIqaB87HnIvUmNwQT, <1>BeoqOTbNFxOyFnZ, <1>UukBaziv337, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>t6IAUHLZnjp4r.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE P_SI4'
<2> USE ONLY <1>t6IAUHLZnjp4r, Sizes, Location, Design
<2>1. RD_XKeysFrame /\ UNCHANGED hw /\ RD_PFrame
 BY ONLY <1>t6IAUHLZnjp4r, Sizes, Location, Design, <1>jTmU8ydKd4OG2hXX, SMTT(10) DEF DReadDone, DStartRun, instV, kV, rtV, xV, RD_XKeysFrame, Sizes, Location, Design
<2>2. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}] /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>t6IAUHLZnjp4r, V22_T_iv, V22_T_xst, SMTT(5)

<2>3. RD_Controls
 BY ONLY <1>t6IAUHLZnjp4r, Sizes, Location, Design, <2>2, SMTT(10) DEF DReadDone, DStartRun, instV, kV, rtV, xV, RD_Controls, Sizes, Location, Design
<2>4. CASE B2 BY <2>1, <2>3, <2>4, <1>xURm4FKOBGVsLMRCdjs, <1>FnDxdfjQ9, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. CASE ~B2 BY <2>5, SMTT(10), Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>ADl8jJ1YmvQy4.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE SI8'
<2> USE ONLY <1>ADl8jJ1YmvQy4, Sizes, Location, Design
<2>1. UNCHANGED xsrc
 BY ONLY <1>ADl8jJ1YmvQy4, Sizes, Location, Design, <1>MZgzQY9fuchN3wZK3Gm, SMTT(10) DEF Sizes, Location, Design
<2>2. xk \in [Xids -> {"none","wr","rd"}] /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ADl8jJ1YmvQy4, V22_T_xk, V22_T_xst, SMTT(5)

<2>3. RD_RdOpenBack
 BY ONLY <1>ADl8jJ1YmvQy4, Sizes, Location, Design, <2>2, SMTT(10) DEF DReadDone, DStartRun, instV, kV, rtV, xV, RD_RdOpenBack, Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>XSpO6sXnRte, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>G6EE1dZoeatdj.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE P_SI1'
 BY ONLY <1>G6EE1dZoeatdj, Sizes, Location, Design, <1>jTmU8ydKd4OG2hXX, <1>MZgzQY9fuchN3wZK3Gm, <1>VDsAIqq0, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tr1RRVVmyA6qL.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE P_SI3'
 BY ONLY <1>tr1RRVVmyA6qL, Sizes, Location, Design, <1>jTmU8ydKd4OG2hXX, <1>MZgzQY9fuchN3wZK3Gm, <1>FPQA7M3w, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cAZQcSUrVVdkU.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE P_SI6'
 BY ONLY <1>cAZQcSUrVVdkU, Sizes, Location, Design, <1>jTmU8ydKd4OG2hXX, <1>MZgzQY9fuchN3wZK3Gm, <1>TUh8WMSa, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>giIaAQvH4zofJ6PMOwIlb.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE HitIdentity'
 BY ONLY <1>giIaAQvH4zofJ6PMOwIlb, Sizes, Location, Design, <1>jTmU8ydKd4OG2hXX, <1>MZgzQY9fuchN3wZK3Gm, <1>ueaxxwWI, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M0878_PdRDBatch_DReadDone


<1> QED BY <1>t6IAUHLZnjp4r, <1>XmjPD7v3dXK7, <1>d6mTCDP3Wsx20bkBBVeGRtqID6, <1>cCojnVFBK65mO5dFxBWKFxv, <1>giIaAQvH4zofJ6PMOwIlb, <1>G6EE1dZoeatdj, <1>tr1RRVVmyA6qL, <1>cAZQcSUrVVdkU, <1>ADl8jJ1YmvQy4, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_DReadDone SHA 091d7c3db8716368ff718d58be3ba8df5a2588824955a57d531222c6528e02bb
USE DEF Shape_T_rg
HIDE DEF Part_DReadDone_04_02, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V22_T_iv, V22_T_krs, V22_T_nx, V22_T_ph, V22_T_rg, V22_T_xk, V22_T_xst
LEMMA ShapeEffect_DReadDone ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Design, DReadDone(j,r)
 PROVE net' \subseteq net \cup {Msg("reply",j,0,r,rg[j][r],0,0,0,FALSE)}
 BY ONLY DReadDone(j,r), Sizes, Design, SMTT(5) DEF DReadDone, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_DReadDone ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Design, IndInv, MessageShape, DReadDone(j,r)
 PROVE MessageShape'
<1>1. net' \subseteq net \cup {Msg("reply",j,0,r,rg[j][r],0,0,0,FALSE)}
 BY ONLY Sizes, Design, DReadDone(j,r), ShapeEffect_DReadDone
<1>2. rg \in [Inst -> [Rq -> 0..MG]]
 BY ONLY IndInv, Shape_T_rg
<1>3. QED
 BY ONLY <1>1, <1>2, IndInv, MessageShape, Sizes, SMTT(10)
 DEF MessageShape, Msg, MsgT, Sizes, Rq, Gens, Xids, Pages, Inst, NL, PInst, DInst

\* Complete original body PdDomain_DReadDone SHA eaa280e550ae084bae1790f21b25d7a3c427d85cd2f52a824ea4f951177cc018
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_DReadDone, Shape_T_rg
THEOREM DomainKeep_DReadDone ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, DReadDone(j,r)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net' \subseteq net \cup {Msg("reply",j,0,r,rg[j][r],0,0,0,FALSE)}
 BY ONLY Sizes, Location, Design, PinInv, DReadDone(j,r), ShapeEffect_DReadDone
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_DReadDone_05 SHA 3a7888a9a26c132488caa0ab34dfc5206f7ca93fcbca532eb029793d339bbc92
USE DEF V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_K9, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_DReadDone, V21_Inv_MsgXDomain
THEOREM Group_DReadDone_05 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE (PrivateMapOwner)' /\ (EntryQuarantineDisjoint)' /\ (OneReply)' /\ (K17)' /\ (K2)' /\ (K3)' /\ (K14)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (GenFiltered)' /\ (ReplyTruth)' /\ (SharedImmutable)' /\ (P_B2OffInit)' /\ (MsgXDomain)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE XDML1U9 == spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]

           tlO9iBs == sown \in [SPages -> 0..NR]

           QBnU7cB == sgen \in [SPages -> 0..MG]

           iGX8myh == skey \in [SPages -> 0..2]

           lFqpdWPov == swrite \in [SPages -> BOOLEAN]

           ymH9PIO1 == sdata \in [SPages -> BOOLEAN]

           fPjFBORLz == sready \in [SPages -> BOOLEAN]

           F1sonJDZX == sprefc \in [SPages -> 0..(NPI*NR*MG+MX)]

           PROpiGS == smap \in [PInst -> [Rq -> {0} \cup SPages]]

           ZvLl9MXuDe == schoice \in [PInst -> [Rq -> BOOLEAN]]

           UocQWXW == rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)

           DS5PFCAl == xsrcS \in [Xids -> SUBSET SPages]

           adGzfibq == xsrcP \in [Xids -> SUBSET SPages]

           xquGDY0L5 == sentry \in SUBSET Xids

           Ik68hrHx == squar \in SUBSET (Xids \X SPages)

           cqEVxOCSG2bV == xprefixOK \in [Xids -> BOOLEAN]

           bUx1Ft3v1 == dpreOK \in [Pages -> BOOLEAN]

           gDlQbBc2EG == hitSeen \in BOOLEAN

           BDe_IdWz8uGR == dedupSeen \in BOOLEAN

           Ex6xsGb == /\ rg \in [Inst -> [Rq -> 0..MG]] /\ ph \in [Inst -> [Rq -> PhSet]]
            /\ kpin \in [Inst -> [KSlots -> BOOLEAN]] /\ krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0,1,2,3,4})]]
            /\ xdst \in [Xids -> 0..NP]


           ez8hZbQN7k == \A i \in PInst, r \in Rq : ph'[i][r]=ph[i][r] /\ rg'[i][r]=rg[i][r]


           T_gen == gen \in [Rq -> 0..MG]


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

<1> HIDE DEF XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Ex6xsGb, ez8hZbQN7k, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types

<1>HsRNXPeY1C.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design


<1>rC6T.         PinInv => STypeOK /\ CoreTypeOK /\ Ex6xsGb /\ XDML1U9 /\ tlO9iBs /\ QBnU7cB /\ iGX8myh /\ lFqpdWPov /\ ymH9PIO1 /\ fPjFBORLz /\ F1sonJDZX /\ PROpiGS /\ ZvLl9MXuDe /\ UocQWXW /\ DS5PFCAl /\ adGzfibq /\ xquGDY0L5 /\ Ik68hrHx /\ cqEVxOCSG2bV /\ bUx1Ft3v1 /\ gDlQbBc2EG /\ BDe_IdWz8uGR
<2> HIDE DEF CoreTypeOK, STypeOK
<2>part0. PinInv => STypeOK
 BY ONLY V21_Inv_STypeOK, Sizes, Location, Design, SMTT(5)
<2>part1. PinInv => CoreTypeOK
 BY ONLY V21_Inv_BaseTypeOK, Sizes, Location, Design, SMTT(5)
<2>part2. PinInv => Ex6xsGb
 BY ONLY V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_xdst, SMTT(5) DEF Ex6xsGb
<2>part3. PinInv => XDML1U9
 BY ONLY V22_T_spst, SMTT(5) DEF XDML1U9
<2>part4. PinInv => tlO9iBs
 BY ONLY V22_T_sown, SMTT(5) DEF tlO9iBs
<2>part5. PinInv => QBnU7cB
 BY ONLY V22_T_sgen, SMTT(5) DEF QBnU7cB
<2>part6. PinInv => iGX8myh
 BY ONLY V22_T_skey, SMTT(5) DEF iGX8myh
<2>part7. PinInv => lFqpdWPov
 BY ONLY V22_T_swrite, SMTT(5) DEF lFqpdWPov
<2>part8. PinInv => ymH9PIO1
 BY ONLY V22_T_sdata, SMTT(5) DEF ymH9PIO1
<2>part9. PinInv => fPjFBORLz
 BY ONLY V22_T_sready, SMTT(5) DEF fPjFBORLz
<2>part10. PinInv => F1sonJDZX
 BY ONLY V22_T_sprefc, SMTT(5) DEF F1sonJDZX
<2>part11. PinInv => PROpiGS
 BY ONLY V22_T_smap, SMTT(5) DEF PROpiGS
<2>part12. PinInv => ZvLl9MXuDe
 BY ONLY V22_T_schoice, SMTT(5) DEF ZvLl9MXuDe
<2>part13. PinInv => UocQWXW
 BY ONLY V22_T_rpgS, SMTT(5) DEF UocQWXW
<2>part14. PinInv => DS5PFCAl
 BY ONLY V22_T_xsrcS, SMTT(5) DEF DS5PFCAl
<2>part15. PinInv => adGzfibq
 BY ONLY V22_T_xsrcP, SMTT(5) DEF adGzfibq
<2>part16. PinInv => xquGDY0L5
 BY ONLY V22_T_sentry, SMTT(5) DEF xquGDY0L5
<2>part17. PinInv => Ik68hrHx
 BY ONLY V22_T_squar, SMTT(5) DEF Ik68hrHx
<2>part18. PinInv => cqEVxOCSG2bV
 BY ONLY V22_T_xprefixOK, SMTT(5) DEF cqEVxOCSG2bV
<2>part19. PinInv => bUx1Ft3v1
 BY ONLY V22_T_dpreOK, SMTT(5) DEF bUx1Ft3v1
<2>part20. PinInv => gDlQbBc2EG
 BY ONLY V22_T_hitSeen, SMTT(5) DEF gDlQbBc2EG
<2>part21. PinInv => BDe_IdWz8uGR
 BY ONLY V22_T_dedupSeen, SMTT(5) DEF BDe_IdWz8uGR
<2>qed. QED BY ONLY <2>part0, <2>part1, <2>part2, <2>part3, <2>part4, <2>part5, <2>part6, <2>part7, <2>part8, <2>part9, <2>part10, <2>part11, <2>part12, <2>part13, <2>part14, <2>part15, <2>part16, <2>part17, <2>part18, <2>part19, <2>part20, <2>part21, SMTT(5)

<1>HPPdcIR.         PinInv => PrivateMapOwner /\ EntryQuarantineDisjoint
 BY V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, Sizes, Location, Design DEF Sizes, Location, Design


<1>YccZP1lf.        
 ASSUME PinInv, SFollow, ez8hZbQN7k
 PROVE PrivateMapOwner'
<2> HIDE DEF SFollow, CoreTypeOK, STypeOK, ez8hZbQN7k
<2>old. PrivateMapOwner
 BY ONLY <1>YccZP1lf, V21_Inv_PrivateMapOwner, Sizes, Location, Design, SMTT(5)
<2>off. CASE ~B2
 BY ONLY <2>off, SMTT(5) DEF PrivateMapOwner
<2>on. CASE B2
 <3>static. UNCHANGED <<sown,sgen>>
  BY ONLY <1>YccZP1lf, V22_SF_Static, SMTT(5) DEF V22_SF_Static
 <3>each. ASSUME NEW i \in PInst, NEW r \in Rq,
                 Active(i,r)', smap'[i][r] \in SPages, spst'[smap'[i][r]]="priv"
          PROVE sown'[smap'[i][r]]=r /\ sgen'[smap'[i][r]]=rg'[i][r]
  <4>frame. ph'[i][r]=ph[i][r] /\ rg'[i][r]=rg[i][r]
   BY ONLY <1>YccZP1lf, <3>each, SMTT(5) DEF ez8hZbQN7k
  <4>map. smap'[i][r]=smap[i][r]
   BY ONLY <1>YccZP1lf, <2>on, <3>each, <4>frame, V22_SF_MapPoint, SMTT(5) DEF V22_SF_MapPoint
  <4>active. Active(i,r)
   BY ONLY <3>each, <4>frame, SMTT(5) DEF Active
  <4>origin. spst[smap'[i][r]]="priv"
   BY ONLY <1>YccZP1lf, <2>on, <3>each, V22_SF_PrivateOrigin, SMTT(5) DEF V22_SF_PrivateOrigin
  <4>owner. sown[smap[i][r]]=r /\ sgen[smap[i][r]]=rg[i][r]
   BY ONLY <2>old, <2>on, <3>each, <4>map, <4>active, <4>origin, SMTT(5) DEF PrivateMapOwner
  <4>qed. QED BY ONLY <3>static, <4>frame, <4>map, <4>owner, SMTT(5)
 <3>qed. QED BY ONLY <2>on, <3>each, SMTT(5) DEF PrivateMapOwner
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

<1>IGL3qfJM.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE EntryQuarantineDisjoint'
<2> HIDE DEF SFollow, CoreTypeOK, STypeOK
<2>old. EntryQuarantineDisjoint
 BY ONLY <1>IGL3qfJM, V21_Inv_EntryQuarantineDisjoint, Sizes, Location, Design, SMTT(5)
<2>zero. 0 \notin Pages
 BY ONLY Sizes, SMTT(5) DEF Pages, Sizes
<2> DEFINE DQ_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0
           DQ_Src(x) == IF DQ_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0
           DQ_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}
           DQ_Quarantine(x) == x \in sentry /\ ~DQ_Close(x) /\
             ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))
           DQ_SX == [x \in Xids |-> IF DQ_Posted(x) THEN
             (IF DQ_Src(x) \in SPages /\ spst[DQ_Src(x)]="shared" THEN {DQ_Src(x)} ELSE {}) ELSE xsrcS[x]]
           DQ_E == (sentry \cup {x \in Xids : DQ_Posted(x)}) \ {x \in Xids : DQ_Close(x) \/ DQ_Quarantine(x)}
           DQ_Q == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
             UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : DQ_Quarantine(x)}})
<2> HIDE DEF DQ_Posted, DQ_Src, DQ_Close, DQ_Quarantine, DQ_SX, DQ_E, DQ_Q
<2>off. CASE ~B2
 BY ONLY <2>off, SMTT(5) DEF EntryQuarantineDisjoint
<2>on. CASE B2
 <3>noNew. \A x \in Xids : ~DQ_Posted(x)
  BY ONLY <1>IGL3qfJM, <2>zero, SMTT(5) DEF DQ_Posted
 <3>sentry. sentry'=DQ_E
  BY ONLY <1>IGL3qfJM, <2>on, V22_SF_Sentry, SMTT(5)
  DEF V22_SF_Sentry, V22_FE2, V22_FPosted, V22_FClose, V22_FQuarantine, DQ_E, DQ_Posted, DQ_Close, DQ_Quarantine
 <3>source. xsrcS'=DQ_SX
  BY ONLY <1>IGL3qfJM, <2>on, V22_SF_SourceShared, SMTT(5)
  DEF V22_SF_SourceShared, V22_FSX, V22_FPosted, V22_FSrc, DQ_SX, DQ_Posted, DQ_Src
 <3>squar. squar'=DQ_Q
  BY ONLY <1>IGL3qfJM, <2>on, V22_SF_Squar, SMTT(5)
  DEF V22_SF_Squar, V22_FQ2, V22_FQuarantine, V22_FClose, DQ_Q, DQ_Quarantine, DQ_Close
 <3>type. sentry \subseteq Xids
  BY ONLY <1>IGL3qfJM, V22_T_sentry, SMTT(5)
 <3>member. \A x \in sentry' : x \in sentry /\ x \in Xids /\ ~DQ_Quarantine(x)
  BY ONLY <3>noNew, <3>sentry, <3>type, SMTT(5) DEF DQ_E
 <3>each. ASSUME NEW x \in sentry', NEW p \in xsrcS'[x]
          PROVE <<x,p>> \notin squar'
  <4>oldX. x \in sentry /\ x \in Xids /\ ~DQ_Quarantine(x)
   BY ONLY <3>member, <3>each, SMTT(5)
  <4>oldP. p \in xsrcS[x]
   BY ONLY <3>noNew, <3>source, <3>each, <4>oldX, SMTT(5) DEF DQ_SX
  <4>oldPair. <<x,p>> \notin squar
   BY ONLY <2>old, <2>on, <4>oldX, <4>oldP, SMTT(5) DEF EntryQuarantineDisjoint
  <4>qed. QED BY ONLY <3>squar, <4>oldX, <4>oldPair, SMTT(5) DEF DQ_Q
 <3>qed. QED BY ONLY <2>on, <3>each, SMTT(5) DEF EntryQuarantineDisjoint
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

<1>vx9OnCyVIC.        
 PinInv => \A x \in Xids : xk[x] # "none" => xp[x] \in PInst /\ xd[x] \in DInst
<2>1. PinInv => K1 /\ K2 BY V21_Inv_K1, V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K1, K2, Sizes, Location, Design


<1>eH7iJ4qTJ4mvhJ49.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
 PROVE ez8hZbQN7k /\ UNCHANGED xsrc
<2> HIDE DEF DReadDone, ez8hZbQN7k, CoreTypeOK
<2>side. IsD(j)
 BY ONLY <1>eH7iJ4qTJ4mvhJ49, ZenonT(5) DEF DReadDone
<2>effect. (ph'=[ph EXCEPT ![j][r]="run"] \/ ph'=[ph EXCEPT ![j][r]="end"]) /\ UNCHANGED <<rg,xsrc>>
 BY ONLY <1>eH7iJ4qTJ4mvhJ49, ZenonT(5) DEF DReadDone, DStartRun, xV
<2>type. ph \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>eH7iJ4qTJ4mvhJ49, V22_T_ph, SMTT(5)
<2>domain. PInst \subseteq Inst /\ (\A i \in PInst : i # j)
 BY ONLY <2>side, Sizes, SMTT(5) DEF IsD, PInst, Inst, NL, Sizes
<2>each. \A i \in PInst, u \in Rq : ph'[i][u]=ph[i][u]
 BY ONLY <2>type, <2>effect, <2>domain, SMTT(5)
<2>qed. QED BY ONLY <2>effect, <2>each, SMTT(5) DEF ez8hZbQN7k



<1>alVJlFp3Qj6XwUaJsR31YeQn5tLybieoSm.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r) /\ SFollow
 PROVE EntryQuarantineDisjoint'
 BY ONLY <1>alVJlFp3Qj6XwUaJsR31YeQn5tLybieoSm, Sizes, Location, Design, <1>eH7iJ4qTJ4mvhJ49, <1>IGL3qfJM DEF Sizes, Location, Design


<1>d4qVSOrXScSGjn0r3KS5kPwz3W.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r) /\ SFollow
 PROVE PrivateMapOwner'
 BY ONLY <1>d4qVSOrXScSGjn0r3KS5kPwz3W, Sizes, Location, Design, <1>eH7iJ4qTJ4mvhJ49, <1>YccZP1lf DEF Sizes, Location, Design


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

<1>J5sqHCglSnilgsheIiMKuhGvj.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>J5sqHCglSnilgsheIiMKuhGvj, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>J5sqHCglSnilgsheIiMKuhGvj, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF DReadDone, instV, kV, rtV, xV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OtwOsU0RJ4Qs.        
  ASSUME K17, T_krs, UNCHANGED <<kpin,krs,rg,rpg>>,
         \A j \in Inst, u \in Rq : ph[j][u] \in {"run","ovl","end"} => ph'[j][u] \in {"run","ovl","end"}
  PROVE K17'
<2> USE ONLY <1>OtwOsU0RJ4Qs, Sizes, Location, Design
<2>1. SUFFICES ASSUME NEW j \in Inst, NEW s \in KSlots,
                     NEW e \in krs'[j][s], kpin'[j][s], e[4] \in {2,3}
                PROVE rg'[j][e[1]] > e[2] \/
                  (rg'[j][e[1]] = e[2] /\ ph'[j][e[1]] \in {"run","ovl","end"} /\ rpg'[j][e[1]] # e[3])
  BY SMTT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
<2>2. kpin[j][s] /\ e \in krs[j][s] /\ e[1] \in Rq
  BY <2>1, SMTT(10), Sizes, Location, Design DEF T_krs, Sizes, Location, Design
<2>3. rg[j][e[1]] > e[2] \/
       (rg[j][e[1]] = e[2] /\ ph[j][e[1]] \in {"run","ovl","end"} /\ rpg[j][e[1]] # e[3])
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0045_PP_PdK17PhaseClosure


<1>x4G59zhOcWUl.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DReadDone(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, rd, rg, rhit, rp, rpe, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>x4G59zhOcWUl, Sizes, Location, Design, ZenonT(5) DEF DReadDone, DStartRun, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M0182_PP_PdDReadDoneFrames

\* T2M-SCOPE R2M0183_PP_PdCell_DReadDone_K17

<1>KoJcVXaZ0K.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K17'
<2> USE ONLY <1>KoJcVXaZ0K, Sizes, Location, Design
<2>1. K17 /\ T_krs /\ T_ph /\ T_xd /\ T_xr /\ T_xdst
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K17, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,rg,rpg>>
  BY <1>x4G59zhOcWUl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A a \in Inst, u \in Rq : ph[a][u] \in {"run","ovl","end"} => ph'[a][u] \in {"run","ovl","end"}
  BY <2>1, SMTT(10), Sizes, Location, Design DEF DReadDone, DStartRun, T_ph, T_xd, T_xdst, T_xr, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>OtwOsU0RJ4Qs, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0183_PP_PdCell_DReadDone_K17


<1>rSd71WtIxzIDx.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, IsD(j), Active(j,r)
  PROVE rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
<2> USE ONLY <1>rSd71WtIxzIDx, Sizes, Location, Design
<2>1. K8 /\ K9 /\ j \in DInst
  BY Sizes, SMTT(10), V21_Inv_K8, V21_Inv_K9, Location, Design DEF IsD, Inst, DInst, NL, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WApKzFi3BukFo.        
  ASSUME NEW r \in Rq, NEW g \in Gens, OneReply, T_drep,
         drep[r][g] = 0, UNCHANGED crep,
         drep' = [drep EXCEPT ![r][g] = Bump(drep[r][g])]
  PROVE OneReply'
<2> USE ONLY <1>WApKzFi3BukFo, Sizes, Location, Design
<2>1. drep' = [drep EXCEPT ![r][g] = 1]
  BY SMTT(10), Sizes, Location, Design DEF Bump, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF OneReply, T_drep, Sizes, Location, Design
\* T2M-END R2M0047_PP_PdOneReplyIncrement


<1>lRIxPgOJSnlgjwP.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE OneReply'
<2> USE ONLY <1>lRIxPgOJSnlgjwP, Sizes, Location, Design
<2>1. OneReply /\ T_drep
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_OneReply, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, Types, Sizes, Location, Design
<2>2. IsD(j) /\ Active(j,r) /\ UNCHANGED crep
        /\ ((drep' = drep) \/ (drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(drep[r][rg[j][r]])]))
  BY <1>x4G59zhOcWUl, SMTT(10), Sizes, Location, Design DEF DReadDone, Active, Sizes, Location, Design
<2>3. rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
  BY <2>2, <1>rSd71WtIxzIDx, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. CASE drep' = drep
  BY <2>1, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
<2>5. CASE drep' # drep
  BY <2>1, <2>2, <2>3, <2>5, <1>WApKzFi3BukFo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0184_PP_PdCell_DReadDone_OneReply


<1>paVBhCM0F1tQ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE K17'
  BY ONLY <1>paVBhCM0F1tQ, Sizes, Location, Design, <1>KoJcVXaZ0K, V21_Inv_K17 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>BjriK5ROmWlDvYc31.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE OneReply'
  BY ONLY <1>BjriK5ROmWlDvYc31, Sizes, Location, Design, <1>lRIxPgOJSnlgjwP, V21_Inv_OneReply DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>dn32aB8t3H2dvZBgdcP.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>dn32aB8t3H2dvZBgdcP, Sizes, Location, Design, DomainKeep_DReadDone, SMTT(5)
\* T2M-END R2M0277_PdPDomain_DReadDone


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


<1>ve.        
 K3 /\ UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>> => K3'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, InFl, K3, Sizes, Location, Design
\* T2M-END R2M0332_PdPF_K3


<1>PH.        
 K2 /\ UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>> => K2'
 BY IsaT(10), Sizes, Location, Design DEF ExpInst, ExpPage, InitInst, InitPage, K2, Sizes, Location, Design
\* T2M-END R2M0357_PdPF_K2


<1>tL69kl3sgN6napwsF.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>tL69kl3sgN6napwsF, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF DReadDone, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OGOIHDwYsf5g.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE K2'
<2> USE ONLY <1>OGOIHDwYsf5g, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>tL69kl3sgN6napwsF, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rQFuXCeXDiJU.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE K3'
<2> USE ONLY <1>rQFuXCeXDiJU, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>tL69kl3sgN6napwsF, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rga8Nj8qKsoUg.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE K14'
<2> USE ONLY <1>rga8Nj8qKsoUg, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>tL69kl3sgN6napwsF, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>efkFsrEfpv9u.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE S2'
<2> USE ONLY <1>efkFsrEfpv9u, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>tL69kl3sgN6napwsF, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XeFQBMG7eHQL.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE S3'
<2> USE ONLY <1>XeFQBMG7eHQL, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>tL69kl3sgN6napwsF, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>s9PikExXAC70.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE S4'
<2> USE ONLY <1>s9PikExXAC70, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>tL69kl3sgN6napwsF, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fmWP6Ijk877PDGFHgFyk5.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>fmWP6Ijk877PDGFHgFyk5, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>tL69kl3sgN6napwsF, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>j9jRepoZdaw621UQrVKu.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>j9jRepoZdaw621UQrVKu, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>tL69kl3sgN6napwsF, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0367_PdPFrames_DReadDone

\* T2M-SCOPE R2M0461_PdPOff_DReadDone

<1>B1pZ0aPxZSu1bAOwEyc.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>B1pZ0aPxZSu1bAOwEyc, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0461_PdPOff_DReadDone


<1> QED BY <1>d4qVSOrXScSGjn0r3KS5kPwz3W, <1>alVJlFp3Qj6XwUaJsR31YeQn5tLybieoSm, <1>BjriK5ROmWlDvYc31, <1>paVBhCM0F1tQ, <1>OGOIHDwYsf5g, <1>rQFuXCeXDiJU, <1>rga8Nj8qKsoUg, <1>efkFsrEfpv9u, <1>XeFQBMG7eHQL, <1>s9PikExXAC70, <1>fmWP6Ijk877PDGFHgFyk5, <1>j9jRepoZdaw621UQrVKu, <1>J5sqHCglSnilgsheIiMKuhGvj, <1>B1pZ0aPxZSu1bAOwEyc, <1>dn32aB8t3H2dvZBgdcP, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_DReadDone_01_01, Part_DReadDone_01_02, Part_DReadDone_02_01, Part_DReadDone_02_02, Part_DReadDone_03_01, Part_DReadDone_03_02, Part_DReadDone_04_01, Part_DReadDone_04_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_DReadDone
HIDE DEF DomainKeep_DReadDone, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_K9, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_DReadDone ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, DReadDone(j,r), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, NEW v \in Rq, Sizes, Location, Design, PinInv, DReadDone(u,v), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_DReadDone_01_01, Part_DReadDone_01_02, Part_DReadDone_02_01, Part_DReadDone_02_02, Part_DReadDone_03_01, Part_DReadDone_03_02, Part_DReadDone_04_01, Part_DReadDone_04_02, Group_DReadDone_05, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_DReadDone_01_01, Part_DReadDone_01_02, Part_DReadDone_02_01, Part_DReadDone_02_02, Part_DReadDone_03_01, Part_DReadDone_03_02, Part_DReadDone_04_01, Part_DReadDone_04_02, Group_DReadDone_05, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, DReadDone(j,r), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, DReadDone(j,r), ShapeKeep_DReadDone, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
