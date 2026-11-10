---- MODULE PdActionSlice_DReadDone_04 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdFinalAuxType_dc8120345fba5649, PdSharedRefCounts, PdShapeBase, PdActionSlice_DReadDone_03

\* Complete original body PdFinalPart_DReadDone_03_01 SHA 2fbf3984bef423624b7cd99210e2b7fb124c9171b067d7b19332418478b3fc43
HIDE DEF AuxType_dc8120345fba5649, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_DReadDone_01_01, Part_DReadDone_01_02, Part_DReadDone_02_01, Part_DReadDone_02_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K17, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S3, V21_Inv_S4, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SharedRefZero, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xst
THEOREM Part_DReadDone_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE (NoFreeUnderRead)' /\ (QuarNeverMapped)' /\ (P_SI2)' /\ (K10)'
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

           RD_HoldersShared == /\ \A h \in rpgS : spst[h[4]]="shared"
                               /\ \A x \in sentry : \A p \in xsrcS[x] : spst[p]="shared"
                               /\ \A h \in squar : spst[h[2]]="shared"

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

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, DReadDoneD2Update, DReadFailureD2, DReadFailureD2D2Pages, D2Finite_K8AtA, RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_HoldersShared, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, McO6Nv_c6YAPZXLgH, DcZc_hAn59KNFt, qR2mWTT_fHP9WN4t34et1

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

<1>RKk5pmZmFCm9V.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE K10'
<2> USE ONLY <1>RKk5pmZmFCm9V, Sizes, Location, Design
<2>1. K10 /\ K1 /\ K2 /\ T_nx /\ T_ph
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<hok, hw, nx, pgn, pr, pst, ptl, rg, xdst, xg, xlt, xr>>
  BY <1>gyDL4BFCHPcjRplQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>mZNjhqJJlxOdnw, <1>vOs0aO70tmslbxUvmi1VYj11A, Design, Location, Sizes, SMTT(10) DEF T_nx, Xids, K1, K2, ExpPage, InitPage, ExpInst, InitInst, DInst, Inst, IsD, IsP, K10, NL, OwnedBy, T_ph, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0193_PP_PdD2ReadSuccess_K10


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

<1>RdQnekxQPZ8GkOv.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE K10'
<2> USE ONLY <1>RdQnekxQPZ8GkOv, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K8 /\ K9 /\ K10 /\ S1 /\ S6 /\ S2 /\ S5 /\ T_nx /\ T_pst /\ T_pr /\ T_pgn
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_K8, V21_Inv_K9, V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. DReadFailureD2D2Pages(j,r) /\ IsD(j) /\ j \in DInst /\ Active(j,r) /\ rpg[j][r] \in Pages /\ ~rhit[j][r]
       /\ UNCHANGED <<nx,xr,xg,xdst,hw,hok,xlt,ptl,rg,rhit>>
  BY <1>EaWYLyjWElDP5Z0dLp, <1>r9VnjyvowyN2IgSWXdGcCcO, <1>r8mxQYcJL4G4mA1a6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>0. (~rhit[j][r] => pst[rpg[j][r]] = "priv") /\ (rhit[j][r] => pst[rpg[j][r]] = "shared")
  BY <2>1, <2>2, <1>hWIfUWYvOn8Z2juQygjL, <1>hdKFcEtMtN5Ml4Qsk, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<2>3. ASSUME NEW y \in Xids,
       y < nx' /\ xdst'[y] \in Pages /\ OwnedBy(xdst[y],xr[y],xg[y])',
       ~(ph'[Loc(xdst'[y])][xr'[y]] \in {"run","ovl"} /\ rg'[Loc(xdst'[y])][xr'[y]] = xg'[y])
       PROVE ptl'[xdst'[y]] = (IF hw'[y] = "stop" /\ hok'[y] THEN xlt'[y] ELSE 0)
<3>1. y < nx /\ xdst[y] \in Pages /\ OwnedBy(xdst[y],xr[y],xg[y])
  BY <2>0, <2>1, <2>2, <2>3, Design, SMTT(10), Sizes, Location DEF DReadFailureD2D2Pages, PageTo, PageToG, GrownOwn, GFr, GTo, GrownOf, T_pst, T_pr, T_pgn, OwnedBy, Sizes, Location, Design
<3>2. CASE ~(ph[Loc(xdst[y])][xr[y]] \in {"run","ovl"} /\ rg[Loc(xdst[y])][xr[y]] = xg[y])
  BY <2>1, <2>2, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF K10, Sizes, Location, Design
<3>3. CASE ph[Loc(xdst[y])][xr[y]] \in {"run","ovl"} /\ rg[Loc(xdst[y])][xr[y]] = xg[y]
<4>0. xr[y] \in Rq /\ Loc(xdst[y]) \in Inst
  BY <2>1, <3>1, <1>hIc7A2XTHSqetfrLIb, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>1. Loc(xdst[y]) = j /\ xr[y] = r /\ xg[y] = rg[j][r]
  BY <4>0, <2>1, <2>2, <2>3, <3>1, <3>3, <1>OLKS3ogwfZH7o9xO9Iw, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. ph[j][r] = "rd"
  BY <1>EaWYLyjWElDP5Z0dLp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>3. QED BY <3>3, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K10, Sizes, Location, Design
\* T2M-END R2M0196_PP_PdD2DReadFailureD2_K10

\* T2M-SCOPE R2M0197_PP_PdD2DReadDone_K10

<1>h2czYUoguJ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K10'
<2> USE ONLY <1>h2czYUoguJ, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
  BY <2>1, <1>RKk5pmZmFCm9V, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>RdQnekxQPZ8GkOv, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0197_PP_PdD2DReadDone_K10


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


<1>yJ0BDYU1MzBIZlAjv6R3jvAGz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE QuarNeverMapped'
<2> USE ONLY <1>yJ0BDYU1MzBIZlAjv6R3jvAGz, Sizes, Location, Design
<2>1. QuarNeverMapped /\ T_ph
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_KStruct, V21_Inv_QuarNeverMapped, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, Types, Sizes, Location, Design
<2>2. /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<pst, rpg>>
  BY <1>gyDL4BFCHPcjRplQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>mZNjhqJJlxOdnw, <1>vOs0aO70tmslbxUvmi1VYj11A, Design, Location, Sizes, SMTT(10) DEF Active, DInst, Inst, IsD, IsP, NL, QuarNeverMapped, T_ph, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0226_PP_PdD2ReadSuccess_QuarNeverMapped


<1>Gokv6Mrgyj5Z5cmqlWMvfIwF4iE.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFailureD2(j,r)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>Gokv6Mrgyj5Z5cmqlWMvfIwF4iE, Sizes, Location, Design
<2>1. K8 /\ K9 /\ K8'
  BY <1>cmwY99yqbb1abw, SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<rg,rpg,rhit>>
  BY <1>r8mxQYcJL4G4mA1a6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW u \in Rq, Active(i,u)', rpg'[i][u] \in Pages
       PROVE pst'[rpg'[i][u]] # "quar"
<3>1. Active(i,u) /\ (i # j \/ u # r)
  BY <2>3, <1>OLKS3ogwfZH7o9xO9Iw, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. rhit[i][u] => i \in DInst /\ pst[rpg[i][u]] = "shared"
  BY <2>1, <3>1, <1>NhYNztiJuG4YZnw3, <1>hWIfUWYvOn8Z2juQygjL, <1>hdKFcEtMtN5Ml4Qsk, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<3>3. QED BY <2>1, <2>2, <2>3, <3>1, <3>2, <1>uh3nhVpgLXBTvnxYQFs, <1>hWIfUWYvOn8Z2juQygjL, SMTT(10), Sizes, Location, Design DEF K8, Active, OwnedBy, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF QuarNeverMapped, Sizes, Location, Design
\* T2M-END R2M0227_PP_PdD2DReadFailureD2_QuarNeverMapped

\* T2M-SCOPE R2M0228_PP_PdD2DReadDone_QuarNeverMapped

<1>ejDlRHjjAJ56SEB2jAIuvx.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>ejDlRHjjAJ56SEB2jAIuvx, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
  BY <2>1, <1>yJ0BDYU1MzBIZlAjv6R3jvAGz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>Gokv6Mrgyj5Z5cmqlWMvfIwF4iE, SMTT(10), Sizes, Location, Design DEF DReadFailureD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0228_PP_PdD2DReadDone_QuarNeverMapped


<1>QErF8j5tZUEh.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE K10'
  BY ONLY <1>QErF8j5tZUEh, Sizes, Location, Design, <1>h2czYUoguJ, V21_Inv_K10 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>FcpomJoy93ugvIZdH8j8sV97.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>FcpomJoy93ugvIZdH8j8sV97, Sizes, Location, Design, <1>ejDlRHjjAJ56SEB2jAIuvx, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design


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
 <3>2. QED BY ONLY <2>1, <3>1, SMTT(20), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
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

<1>WoF80JZHlF10RzyrmA.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE xdst' \in [Xids -> 0..NP]
<2> USE ONLY <1>WoF80JZHlF10RzyrmA, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>WoF80JZHlF10RzyrmA, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY ONLY <1>WoF80JZHlF10RzyrmA, Sizes, Location, Design, SMTT(10) DEF DReadDone, DStartRun, instV, kV, rtV, xV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0835_PdRDEffects_DReadDone


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

<1>YjUnL4ZcGhjtXEJn1jqm9r5.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r)
  PROVE qR2mWTT_fHP9WN4t34et1(j,r)
<2> USE ONLY <1>YjUnL4ZcGhjtXEJn1jqm9r5, Sizes, Location, Design
<2>1. DReadDone(j,r) /\ ~hok[rx[j][r]]
  BY SMTT(10), Sizes, Location, Design DEF DcZc_hAn59KNFt, Sizes, Location, Design
<2>2. QED BY <2>1, <1>kIY9yVDTy6Cnr, <1>EcclSb9YoHpDCL, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, qR2mWTT_fHP9WN4t34et1, Sizes, Location, Design
\* T2M-END R2M0845_PdRDPort_PdD2DReadFailureD2Effect


<1>qBry2MNE7ptRSIr9WGpsP.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r)
  PROVE \A p \in Pages : KPinned(p) =>
          /\ UNCHANGED <<pr[p],pgn[p]>>
          /\ (pst[p] = "shared" => pst'[p] = "shared")
          /\ (pst[p] \in {"priv","drain","quar","shared"} => pst'[p] \in {"priv","drain","quar","shared"})
<2> USE ONLY <1>qBry2MNE7ptRSIr9WGpsP, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ rpg[j][r] \in Pages /\ j \in DInst /\ K9 /\ K8 /\ Active(j,r)
  BY <1>pLBLLi4oDOdXB3CYG2, <1>TLVER4XMUn, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. qR2mWTT_fHP9WN4t34et1(j,r)
  BY <1>YjUnL4ZcGhjtXEJn1jqm9r5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ~rhit[j][r] /\ pst[rpg[j][r]] = "priv"
  BY <1>pLBLLi4oDOdXB3CYG2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in Pages, KPinned(p)
       PROVE /\ UNCHANGED <<pr[p],pgn[p]>>
             /\ (pst[p] = "shared" => pst'[p] = "shared")
             /\ (pst[p] \in {"priv","drain","quar","shared"} => pst'[p] \in {"priv","drain","quar","shared"})
  BY <2>4, <2>1, <2>2, <2>3, Design, SMTT(10), Sizes, Location DEF qR2mWTT_fHP9WN4t34et1, PageTo, PageToG, GrownOwn, GFr, GTo, GrownOf, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, X6zX5, gv2_, PwqP6, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TatAekdAzdwPUNOEhKOzq63W2es.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r), SFollow
  PROVE NoFreeUnderRead'
<2> USE ONLY <1>TatAekdAzdwPUNOEhKOzq63W2es, Sizes, Location, Design
<2>0. DReadDone(j,r) BY Sizes, Location, Design DEF DcZc_hAn59KNFt, Sizes, Location, Design
<2>1. NoFreeUnderRead /\ K14 /\ tqQeS
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K14, V21_Inv_NoFreeUnderRead, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, TEJtP, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs>>
  BY <1>AIrVl6ABaL7hnYjOk, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW s \in KSlots, kpin'[i][s], NEW e \in krs'[i][s], e[3] \in Pages
       PROVE KHeld(e)'
<3>1. e[3] \in Pages /\ Loc(e[3]) = i /\ KHeld(e) /\ KPinned(e[3])
  BY <2>3, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF NoFreeUnderRead, K14, tqQeS, KPinned, Sizes, Location, Design
<3>2. QED BY <2>3, P_PagePoolsDisjoint, <3>1, <1>qBry2MNE7ptRSIr9WGpsP, SMTT(10), Sizes, Location, Design DEF KHeld, Sizes, Location, Design
<2>4. RD_PFrame /\ xdst' \in [Xids -> 0..NP] /\ UNCHANGED <<xsrc,gen>>
 BY <1>jTmU8ydKd4OG2hXX, <1>WoF80JZHlF10RzyrmA, <1>MZgzQY9fuchN3wZK3Gm, <2>0, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. RD_SFrame /\ UNCHANGED spst
 BY <2>4, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>4, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED BY <2>1, <2>2, <2>5, <2>6, <1>TLVER4XMUn, <2>3, SMTT(10), V21_Inv_K14, V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF NoFreeUnderRead, RD_SFrame, SHeld, SData, TEJtP, tqQeS, KPages, Sizes, Location, Design
\* T2M-END R2M0850_PdRDPort_PdD2DReadFailureD2_NoFreeUnderRead

\* T2M-SCOPE R2M0851_PdRDPort_PdD2DReadFailureD2_KReadIntegrity

<1>rXQ9XEmLnCAYkEX2aSSUNC9H5.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]], SFollow
  PROVE NoFreeUnderRead'
<2> USE ONLY <1>rXQ9XEmLnCAYkEX2aSSUNC9H5, Sizes, Location, Design
<2>1. NoFreeUnderRead /\ UNCHANGED <<pst,pr,pgn,kpin,krs>>
  BY <1>g9EPmcwgRLVuQIlj, SMTT(10), V21_Inv_NoFreeUnderRead, V21_Inv_Safety, Sizes, Location, Design DEF Safety, Sizes, Location, Design
<2>2. RD_PFrame /\ xdst' \in [Xids -> 0..NP] /\ UNCHANGED <<xsrc,gen>>
 BY <1>jTmU8ydKd4OG2hXX, <1>WoF80JZHlF10RzyrmA, <1>MZgzQY9fuchN3wZK3Gm, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RD_SFrame /\ UNCHANGED spst
 BY <2>2, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>2, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>1, SMTT(10), V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF NoFreeUnderRead, KHeld, RD_SFrame, SHeld, SData, TEJtP, tqQeS, KPages, Sizes, Location, Design
\* T2M-END R2M0853_PdRDPort_PdD2ReadSuccess_NoFreeUnderRead


<1>VFS7PT41oosEQqWIuU2Vdm.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE NoFreeUnderRead'
<2> USE ONLY <1>VFS7PT41oosEQqWIuU2Vdm, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
  BY <2>1, <1>rXQ9XEmLnCAYkEX2aSSUNC9H5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>TatAekdAzdwPUNOEhKOzq63W2es, SMTT(10), Sizes, Location, Design DEF DcZc_hAn59KNFt, Sizes, Location, Design
<2>3. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>jTmU8ydKd4OG2hXX, <1>WoF80JZHlF10RzyrmA, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>3, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>jTmU8ydKd4OG2hXX, <1>MZgzQY9fuchN3wZK3Gm, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. RD_SFrame /\ UNCHANGED spst
 BY <2>5, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED BY <2>6, <1>MZgzQY9fuchN3wZK3Gm, <2>4, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>1, <2>2, SMTT(10), V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, tqQeS, KPages, NoFreeUnderRead, RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M0854_PdRDPort_PdD2DReadDone_NoFreeUnderRead


<1>dESDgNgDfkUv2L1PFQS6pGKnY.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE NoFreeUnderRead'
 BY ONLY <1>dESDgNgDfkUv2L1PFQS6pGKnY, Sizes, Location, Design, <1>VFS7PT41oosEQqWIuU2Vdm, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>zvTLBpweXfqjm.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE P_SI2'
 BY ONLY <1>zvTLBpweXfqjm, Sizes, Location, Design, <1>jTmU8ydKd4OG2hXX, <1>MZgzQY9fuchN3wZK3Gm, <1>HQkX8HBDKVM, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>dESDgNgDfkUv2L1PFQS6pGKnY, <1>FcpomJoy93ugvIZdH8j8sV97, <1>zvTLBpweXfqjm, <1>QErF8j5tZUEh, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF P_PagePoolsDisjoint, Part_DReadDone_03_01, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K14, V21_Inv_K15, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V22_PostSharedRefZero, V22_T_nx, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_sentry, V22_T_squar, V22_T_xdst, V22_T_xsrcS
====
