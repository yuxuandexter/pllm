---- MODULE PdActionSlice_DBadLen_01 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_ef40c909f9f48a73, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalPart_DBadLen_01_01 SHA ba6ce4c759064447a17bdf3c9961861d5c19c5700ee0ca5f483b39518eeebd6c
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_K10, V21_Inv_K11, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_K3, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sprefc, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xst
THEOREM Part_DBadLen_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DBadLen(x), SFollow
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

           eTGFkYYLEEr9b(x) == Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]] = xg[x] /\ rx[xd[x]][xr[x]] = x


           AKc36xQrbcwQ8AX(x) ==
             /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] # xnt[x]
             /\ pst[xdst[x]] \in {"priv","drain"} /\ x \in led[xdst[x]]
             /\ xst' = [xst EXCEPT ![x] = "failed"]
             /\ ph' = IF eTGFkYYLEEr9b(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
             /\ drep' = IF eTGFkYYLEEr9b(x) THEN [drep EXCEPT ![xr[x]][xg[x]] = Bump(@)] ELSE drep
             /\ net' = IF eTGFkYYLEEr9b(x) THEN net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)} ELSE net
             /\ IF eTGFkYYLEEr9b(x)
                 THEN PageTo(xdst[x], IF led[xdst[x]] \ {x} = {} /\ sled[xdst[x]] = {} /\ ~PinBlocks(xdst[x]) THEN "free" ELSE "drain",0,led[xdst[x]] \ {x},sled[xdst[x]])
                 ELSE EvidenceAt(xdst[x],x)

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


           Z4FEHDiV(p) == {r \in Rq : ph[Loc(p)][r] \in {"run","ovl"} /\ rhit[Loc(p)][r] /\ rpg[Loc(p)][r] = p}

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


           HoSCDpWKyuLoNX(i,r) ==
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


           s8ce_E0A1Xv4Za(j,r) ==
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


           OflDeL3pGNUY(j,r,g,ok) ==
             /\ ph' = [ph EXCEPT ![j][r] = "end"]
             /\ drep' = [drep EXCEPT ![r][g] = 1]
             /\ dsucc' = IF ok THEN [dsucc EXCEPT ![r][g] = TRUE] ELSE dsucc
             /\ UNCHANGED <<rg,hd,crep>> /\ ~gbad'
           \* T2M-END R2M0717_PdRDPort_PdD2History


           Vf1r7JJAw7avw(x) == eTGFkYYLEEr9b(x)

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_HoldersShared, RD_QuietPart, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, eTGFkYYLEEr9b, AKc36xQrbcwQ8AX, aOcOdkv, Z4FEHDiV, QEH7_FW0L_tkj5, HoSCDpWKyuLoNX, s8ce_E0A1Xv4Za, OflDeL3pGNUY, Vf1r7JJAw7avw

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
 <3>2. QED BY <2>1, <3>1, FS_EmptySet, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, SRefR, SRefE, SRefQ, Sizes, Location, Design
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


<1>GIFCQUBwzFDYx3LF2.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>GIFCQUBwzFDYx3LF2, Sizes, Location, Design, SMTT(10) DEF DBadLen, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PZwAFbI3NvLbkB.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>PZwAFbI3NvLbkB, Sizes, Location, Design
<2>1. K1 /\ K2 /\ RD_PhType /\ RD_NxType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), V21_Inv_K1, V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xst[x]="posted"
 BY SMTT(10), Sizes, Location, Design DEF DBadLen, Sizes, Location, Design
<2>3. x < nx /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x]<=gen[xr[x]] /\ xd[x]=hd[xr[x]][xg[x]]
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K2, RD_NxType, Xids, Sizes, Location, Design
<2>4. xd[x] \in DInst
 BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>5. QED BY <2>1, <2>4, <1>GIFCQUBwzFDYx3LF2, Sizes, SMTT(10), Location, Design DEF DBadLen, instV, kV, rtV, RD_PFrame, PInst, DInst, Inst, NL, RD_PhType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dEpIubzbA3.        
  ASSUME NEW x \in Xids, DBadLen(x)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>dEpIubzbA3, Sizes, Location, Design, ZenonT(5) DEF DBadLen, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

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

<1>a7brl53Vj8juJwTyCLo.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst /\ (IsP(Loc(p)) <=> ~IsD(Loc(p)))
  BY ONLY <1>a7brl53Vj8juJwTyCLo, Sizes, Location, Design, Location, Sizes, SMTT(10) DEF IsP, IsD, Inst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M0695_PdRDPort_D2Finite_PdFactsA


<1>nbt9Ybbxl0y3.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted"
  PROVE /\ x < nx /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>nbt9Ybbxl0y3, Sizes, Location, Design
<2>1. K1 /\ K2 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, XX2v, Xids, Sizes, Location, Design
<2>3. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
       /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>1, <2>2, <1>COZbdUc0j3ifgnaCHg, SMTT(10), Sizes, Location, Design DEF ExpPage, ExpInst, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t2nskagTic.        
  ASSUME NEW x \in Xids, NEW m \in net, PinInv, m.t = "notice", m.x = x
  PROVE /\ m.ok = hok[x] /\ m.pg = xlt[x] /\ iv[x] = "cqe"
        /\ (m.ok => hw[x] = "stop")
<2> USE ONLY <1>t2nskagTic, Sizes, Location, Design
<2>1. K12
  BY SMTT(10), V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. m.ok = hok[x] /\ m.pg = xlt[x] /\ iv[x] = "cqe" /\ hw[x] \in CqeHw(x)
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>3. QED BY <2>2, Design, SMTT(10), Sizes, Location DEF CqeHw, Sizes, Location, Design
\* T2M-END R2M0737_PdRDPort_PdD2TransferFacts

\* T2M-SCOPE R2M0746_PdRDPort_PdD2PostedWait
\* T2M-BODY R2M0746_PdRDPort_PdD2PostedWait
\* T2M-LOCAL-VISIBILITY

<1>D98Z8wkbCmwqJ.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted",
    Active(xd[x],xr[x]), rg[xd[x]][xr[x]] = xg[x], rx[xd[x]][xr[x]] = x
  PROVE ph[xd[x]][xr[x]] = "wait" /\ ~rhit[xd[x]][xr[x]] /\ rpg[xd[x]][xr[x]] = xdst[x]
<2> USE ONLY <1>D98Z8wkbCmwqJ, Sizes, Location, Design
<2>1. K2 /\ K8 /\ K9 /\ S5 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K2, V21_Inv_K8, V21_Inv_K9, V21_Inv_S5, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. x < nx /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>nbt9Ybbxl0y3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. Mode = "push" /\ x # 0
  BY <2>1, <2>2, <1>COZbdUc0j3ifgnaCHg, Design, Sizes, SMTT(10), Location DEF Xids, Sizes, Location, Design
<2>4. ~rhit[xd[x]][xr[x]]
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K9, Active, Sizes, Location, Design
<2>5. ph[xd[x]][xr[x]] \notin {"run","ovl"}
  BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
<2>6. ph[xd[x]][xr[x]] = "wait"
  BY <2>1, <2>2, <2>3, <2>5, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
<2>7. QED BY <2>1, <2>2, <2>3, <2>4, <2>6, SMTT(10), Sizes, Location, Design DEF K9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cpLCmY4HCHSRk7KFz.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted"
  PROVE x \in led[xdst[x]]
<2> USE ONLY <1>cpLCmY4HCHSRk7KFz, Sizes, Location, Design
<2>1. K4 /\ x < nx
  BY <1>nbt9Ybbxl0y3, SMTT(10), V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Yc7JMe4E.        
  ASSUME NEW x \in Xids, NEW i \in Inst, NEW u \in Rq, PinInv,
    xk[x] = "wr", xst[x] = "posted", Active(i,u), rpg[i][u] = xdst[x]
  PROVE i = xd[x] /\ u = xr[x] /\ rg[i][u] = xg[x] /\ rx[i][u] = x
        /\ ph[i][u] = "wait" /\ ~rhit[i][u]
<2> USE ONLY <1>Yc7JMe4E, Sizes, Location, Design
<2>1. K5 /\ K7 /\ K8 /\ K9 /\ S1
       /\ x < nx /\ xr[x] \in Rq /\ xd[x] \in DInst
       /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ x \in led[xdst[x]]
  BY <1>nbt9Ybbxl0y3, <1>cpLCmY4HCHSRk7KFz, SMTT(10), V21_Inv_K5, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Loc(rpg[i][u]) = i /\ i = xd[x] /\ i \in DInst
  BY <2>1, <1>VBlwMBLC5pBW9rEeNkh7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ~rhit[i][u]
  BY <2>1, <2>2, <1>KUUrHEFvbxmFhGeG2, SMTT(10), Sizes, Location, Design DEF K7, Active, Sizes, Location, Design
<2>4. u = xr[x] /\ rg[i][u] = xg[x]
  BY <2>1, <2>3, <1>VBlwMBLC5pBW9rEeNkh7, SMTT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
<2>5. rx[i][u] = x
  BY <2>1, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF S1, ExpInst, Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>4, <2>5, <1>D98Z8wkbCmwqJ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0753_PdRDPort_PdD2PostedMap


<1>zmK3iQq0h2S.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE /\ xk[x] = "wr" /\ xst[x] = "posted" /\ x < nx
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>zmK3iQq0h2S, Sizes, Location, Design
<2>1. xk[x] = "wr" /\ xst[x] = "posted"
  BY SMTT(10), Sizes, Location, Design DEF DBadLen, Sizes, Location, Design
<2>2. QED BY <2>1, <1>nbt9Ybbxl0y3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xDQlMm2aVfSh.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE AKc36xQrbcwQ8AX(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
<2> USE ONLY <1>xDQlMm2aVfSh, Sizes, Location, Design
<2>1. \A m \in net : (m.t = "notice" /\ m.x = x) =>
          m.ok = hok[x] /\ m.pg = xlt[x] /\ (m.ok => hw[x] = "stop")
  BY <1>t2nskagTic, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(10), Sizes, Location DEF DBadLen, AKc36xQrbcwQ8AX, eTGFkYYLEEr9b, rtV, instV, kV, Sizes, Location, Design
\* T2M-END R2M0738_PdRDPort_PdD2DBadLenEffect


<1>YbQclmR0JDs.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE CoreTypeOK'
 BY ONLY <1>YbQclmR0JDs, AuxType_ef40c909f9f48a73, Sizes, Location, Design DEF Sizes, Location, Design

<1>lc4kxcv9SWsj.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE \A p \in Pages : IsP(Loc(p)) => UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<2> USE ONLY <1>lc4kxcv9SWsj, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ ZpUxx /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x) /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
  BY <1>zmK3iQq0h2S, <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW p \in Pages, IsP(Loc(p)) PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<3>1. p # xdst[x]
  BY <2>2, <2>3, <1>VLROWBcOqe16ENnb, <1>a7brl53Vj8juJwTyCLo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <3>1, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, PageTo, EvidenceAt, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>U0Ie9feVXl4YxDPCVC.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE \A p \in Pages : led'[p] \subseteq led[p] /\ sled'[p] \subseteq sled[p]
<2> USE ONLY <1>U0Ie9feVXl4YxDPCVC, Sizes, Location, Design
<2>1. ZpUxx /\ a4GqBP /\ AKc36xQrbcwQ8AX(x)
  BY <1>TLVER4XMUn, <1>xDQlMm2aVfSh, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, PageTo, EvidenceAt, ZpUxx, a4GqBP, Sizes, Location, Design
\* T2M-END R2M0740_PdRDPort_PdD2DBadLenMasks


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

<1>cWXfndb9.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages,
         vn9M, bNpAu, BDN6_c, ph' = [ph EXCEPT ![j][r] = "end"], UNCHANGED <<rpg,rhit>>
  PROVE Z4FEHDiV(p)' = IF Loc(p) = j /\ rpg[j][r] = p THEN Z4FEHDiV(p) \ {r} ELSE Z4FEHDiV(p)
  BY ONLY <1>cWXfndb9, Sizes, Location, Design, <1>a7brl53Vj8juJwTyCLo, SMTT(10) DEF Z4FEHDiV, vn9M, bNpAu, BDN6_c, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BPUXhwTtTG.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages,
         vn9M, bNpAu, BDN6_c, ph' = [ph EXCEPT ![j][r] = "end"], UNCHANGED <<rpg,rhit>>
  PROVE NHits(p)' = IF Loc(p) = j /\ rpg[j][r] = p /\ ph[j][r] \in {"run","ovl"} /\ rhit[j][r]
                      THEN NHits(p) - 1 ELSE NHits(p)
<2> USE ONLY <1>BPUXhwTtTG, Sizes, Location, Design
<2>1. Z4FEHDiV(p)' = IF Loc(p) = j /\ rpg[j][r] = p THEN Z4FEHDiV(p) \ {r} ELSE Z4FEHDiV(p)
  BY <1>cWXfndb9, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet(Z4FEHDiV(p))
  BY <1>f8BuFvgvx, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, FS_RemoveElement, SMTT(10), Sizes, Location, Design DEF Z4FEHDiV, NHits, Sizes, Location, Design

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


<1>HVvqKKhcQc7sOKbQ.         K7 <=> (\A p \in Pages : QEH7_FW0L_tkj5(p))
  BY SMTT(10), Sizes, Location, Design DEF K7, QEH7_FW0L_tkj5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tN2gAjpdxiCVVcem.         K8 <=> (\A i \in Inst, r \in Rq : HoSCDpWKyuLoNX(i,r))
  BY SMTT(10), Sizes, Location, Design DEF K8, HoSCDpWKyuLoNX, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eJ0kUuS2QxCAFitu.         K9 <=> (\A j \in DInst, r \in Rq : s8ce_E0A1Xv4Za(j,r))
  BY SMTT(10), Sizes, Location, Design DEF K9, s8ce_E0A1Xv4Za, Sizes, Location, Design
\* T2M-END R2M0713_PdRDPort_D2Finite_PdConjPointsA


<1>jIevr1VElrYj3BsJBl6F2YZ.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xd[x] = hd[xr[x]][xg[x]]
        /\ UNCHANGED <<rg,hd,crep,dsucc,gen,hp,nx,xp,xd,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok>>
        /\ IF Vf1r7JJAw7avw(x)
            THEN /\ drep[xr[x]][xg[x]] = 0 /\ OflDeL3pGNUY(xd[x],xr[x],xg[x],FALSE)
                 /\ net' = net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)}
            ELSE /\ UNCHANGED <<ph,drep,net,gbad>>
<2> USE ONLY <1>jIevr1VElrYj3BsJBl6F2YZ, Sizes, Location, Design
<2>1. K9 /\ ~gbad /\ ZCaSEo
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_GenFiltered, V21_Inv_K9, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, GenFiltered, TEJtP, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x) /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xd[x] = hd[xr[x]][xg[x]]
       /\ UNCHANGED <<rg,hd,crep,dsucc,gen,hp,nx,xp,xd,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok,gbad>>
  BY <1>zmK3iQq0h2S, <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. Vf1r7JJAw7avw(x) => drep[xr[x]][xg[x]] = 0
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Vf1r7JJAw7avw, eTGFkYYLEEr9b, K9, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, Vf1r7JJAw7avw, OflDeL3pGNUY, Bump, Sizes, Location, Design
\* T2M-END R2M0751_PdRDPort_PdD2DBadLenHistory


<1>ZgbDSrdIZ0xTZD.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE Vf1r7JJAw7avw(x) => ph[xd[x]][xr[x]] = "wait"
  BY ONLY <1>ZgbDSrdIZ0xTZD, Sizes, Location, Design, <1>zmK3iQq0h2S, <1>D98Z8wkbCmwqJ, SMTT(10) DEF Vf1r7JJAw7avw, eTGFkYYLEEr9b, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jjete92OJenGWbP.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE \A i \in Inst, u \in Rq :
    (ph'[i][u] \in {"run","ovl"} <=> ph[i][u] \in {"run","ovl"})
<2> USE ONLY <1>jjete92OJenGWbP, Sizes, Location, Design
<2>1. vn9M /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>TLVER4XMUn, <1>zmK3iQq0h2S, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. Vf1r7JJAw7avw(x) => ph[xd[x]][xr[x]] = "wait"
  BY <1>ZgbDSrdIZ0xTZD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ph' = IF Vf1r7JJAw7avw(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
  BY <1>jIevr1VElrYj3BsJBl6F2YZ, SMTT(10), Sizes, Location, Design DEF OflDeL3pGNUY, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF vn9M, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RZaGpEWqsOZtr1Kx.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE \A p \in Pages : p # xdst[x] => UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<2> USE ONLY <1>RZaGpEWqsOZtr1Kx, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ ZpUxx /\ a4GqBP /\ AKc36xQrbcwQ8AX(x)
  BY <1>TLVER4XMUn, <1>xDQlMm2aVfSh, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, PageTo, EvidenceAt, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, Sizes, Location, Design
\* T2M-END R2M0752_PdRDPort_PdD2DBadLenReadPhases

\* T2M-SCOPE R2M0754_PdRDPort_PdD2DBadLenActivePages

<1>P0Q6iRIS3glk4wC4CgR5r.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE /\ ph' = (IF Vf1r7JJAw7avw(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph)
        /\ (Vf1r7JJAw7avw(x) => ph'[xd[x]][xr[x]] = "end")
        /\ \A i \in Inst, u \in Rq : Active(i,u)' => Active(i,u) /\ ph'[i][u] = ph[i][u]
<2> USE ONLY <1>P0Q6iRIS3glk4wC4CgR5r, Sizes, Location, Design
<2>1. vn9M /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>TLVER4XMUn, <1>zmK3iQq0h2S, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. ph' = IF Vf1r7JJAw7avw(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
  BY <1>jIevr1VElrYj3BsJBl6F2YZ, SMTT(10), Sizes, Location, Design DEF OflDeL3pGNUY, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Active, vn9M, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EjfSo2YsvKGHuIYvW.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE \A i \in Inst, u \in Rq : Active(i,u)' =>
    LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],sled[p]>>
<2> USE ONLY <1>EjfSo2YsvKGHuIYvW, Sizes, Location, Design
<2>1. K8 /\ X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x) /\ xk[x] = "wr" /\ xst[x] = "posted"
       /\ UNCHANGED <<rpg,rg,rhit>>
  BY <1>zmK3iQq0h2S, <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW u \in Rq, Active(i,u)'
       PROVE LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],sled[p]>>
<3>1. Active(i,u) /\ ph'[i][u] = ph[i][u] /\ rpg[i][u] \in Pages
  BY <2>1, <2>3, <1>P0Q6iRIS3glk4wC4CgR5r, <1>VBlwMBLC5pBW9rEeNkh7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE rpg[i][u] # xdst[x]
  BY <2>2, <3>1, <3>2, <1>RZaGpEWqsOZtr1Kx, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. CASE rpg[i][u] = xdst[x]
<4>1. i = xd[x] /\ u = xr[x] /\ rg[i][u] = xg[x] /\ rx[i][u] = x
       /\ ph[i][u] = "wait" /\ ~rhit[i][u] /\ pst[rpg[i][u]] = "priv"
  BY <2>1, <2>2, <3>1, <3>3, <1>Yc7JMe4E, <1>VBlwMBLC5pBW9rEeNkh7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. ~Vf1r7JJAw7avw(x)
  BY <2>3, <4>1, <1>P0Q6iRIS3glk4wC4CgR5r, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<4>3. QED BY <2>1, <2>2, <3>3, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF Vf1r7JJAw7avw, eTGFkYYLEEr9b, AKc36xQrbcwQ8AX, EvidenceAt, PageTo, AfterEv, Active, X6zX5, gv2_, PwqP6, jyWjj, a4GqBP, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0754_PdRDPort_PdD2DBadLenActivePages


<1>PiExOn9.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K8'
<2> USE ONLY <1>PiExOn9, Sizes, Location, Design
<2>1. K8 /\ vn9M /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>TLVER4XMUn, <1>zmK3iQq0h2S, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. UNCHANGED <<gen,hp,hd,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,nx,xsrc,xr,xg,iv,xlt>>
  BY <1>dEpIubzbA3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW u \in Rq PROVE HoSCDpWKyuLoNX(i,u)'
<3>1. HoSCDpWKyuLoNX(i,u)
  BY <2>1, <1>tN2gAjpdxiCVVcem, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. IsP(i) => ph'[i][u] = ph[i][u]
  BY <2>1, <1>P0Q6iRIS3glk4wC4CgR5r, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF vn9M, Sizes, Location, Design
<3>3. QED BY <2>1, <2>2, <3>1, <3>2, <1>P0Q6iRIS3glk4wC4CgR5r, <1>ZgbDSrdIZ0xTZD, <1>EjfSo2YsvKGHuIYvW, <1>lc4kxcv9SWsj, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF HoSCDpWKyuLoNX, Active, OwnedBy, vn9M, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K8, HoSCDpWKyuLoNX, Sizes, Location, Design
\* T2M-END R2M0755_PdRDPort_PdD2DBadLen_K8

\* T2M-SCOPE R2M0756_PdRDPort_PdD2DBadLen_K9

<1>KvONDEW.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K9'
<2> USE ONLY <1>KvONDEW, Sizes, Location, Design
<2>1. K8 /\ K9 /\ ZCaSEo /\ vn9M
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ hd[xr[x]][xg[x]] = xd[x]
       /\ UNCHANGED <<rg,rpg,rx,rhit,iv,nx,xdst,xr,xg,ptl,pvis,sfly>>
  BY <1>zmK3iQq0h2S, <1>dEpIubzbA3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. Vf1r7JJAw7avw(x) =>
       rg[xd[x]][xr[x]] = xg[x] /\ ~rhit[xd[x]][xr[x]] /\ OflDeL3pGNUY(xd[x],xr[x],xg[x],FALSE)
  BY <1>zmK3iQq0h2S, <1>jIevr1VElrYj3BsJBl6F2YZ, <1>D98Z8wkbCmwqJ, SMTT(10), Sizes, Location, Design DEF Vf1r7JJAw7avw, eTGFkYYLEEr9b, Sizes, Location, Design
<2>4. ASSUME NEW i \in DInst, NEW u \in Rq PROVE s8ce_E0A1Xv4Za(i,u)'
<3>1. i \in Inst /\ IsD(i) /\ HoSCDpWKyuLoNX(i,u) /\ s8ce_E0A1Xv4Za(i,u)
  BY <2>1, <1>VLROWBcOqe16ENnb, <1>tN2gAjpdxiCVVcem, <1>eJ0kUuS2QxCAFitu, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE Vf1r7JJAw7avw(x) /\ i = xd[x] /\ u = xr[x]
  BY <2>1, <2>2, <2>3, <3>2, SMTT(10), Sizes, Location, Design DEF s8ce_E0A1Xv4Za, OflDeL3pGNUY, vn9M, ZCaSEo, Active, Sizes, Location, Design
<3>3. CASE ~Vf1r7JJAw7avw(x) \/ i # xd[x] \/ u # xr[x]
<4>1. ph'[i][u] = ph[i][u]
  BY <2>1, <3>1, <3>3, <1>P0Q6iRIS3glk4wC4CgR5r, SMTT(10), Sizes, Location, Design DEF vn9M, Sizes, Location, Design
<4>2. (Vf1r7JJAw7avw(x) /\ ph[i][u] # "none") =>
       rg[i][u] \in Gens /\ (u # xr[x] \/ rg[i][u] # xg[x])
  BY <2>2, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF HoSCDpWKyuLoNX, Sizes, Location, Design
<4>3. ph[i][u] # "none" => drep'[u][rg[i][u]] = drep[u][rg[i][u]]
  BY <2>1, <2>3, <4>2, <1>jIevr1VElrYj3BsJBl6F2YZ, SMTT(10), Sizes, Location, Design DEF OflDeL3pGNUY, ZCaSEo, Sizes, Location, Design
<4>4. Active(i,u) =>
       LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],sled[p]>>
  BY <3>1, <4>1, <1>EjfSo2YsvKGHuIYvW, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<4>5. Active(i,u) => led'[rpg[i][u]] \subseteq led[rpg[i][u]]
  BY <3>1, <1>U0Ie9feVXl4YxDPCVC, SMTT(10), Sizes, Location, Design DEF HoSCDpWKyuLoNX, Active, Sizes, Location, Design
<4>6. QED BY <2>2, <3>1, <4>1, <4>3, <4>4, <4>5, SMTT(10), Sizes, Location, Design DEF s8ce_E0A1Xv4Za, Active, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF K9, s8ce_E0A1Xv4Za, Sizes, Location, Design
\* T2M-END R2M0756_PdRDPort_PdD2DBadLen_K9


<1>Ab6ZZ4w.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K7'
<2> USE ONLY <1>Ab6ZZ4w, Sizes, Location, Design
<2>1. K6 /\ K7 /\ K8 /\ K9 /\ K16 /\ X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ ZpUxx /\ a4GqBP /\ sBjpCf /\ AtabIBD /\ xhIfp /\ vn9M /\ bNpAu /\ BDN6_c
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K16, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x) /\ xd[x] \in Inst /\ xp[x] \in Inst /\ xr[x] \in Rq /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
       /\ UNCHANGED <<gen,rg,rpg,rhit,kpin,krs,ptl,sfly>>
  BY <1>xDQlMm2aVfSh, <1>zmK3iQq0h2S, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. Vf1r7JJAw7avw(x) => (~rhit[xd[x]][xr[x]] /\ ph[xd[x]][xr[x]] = "wait" /\ rpg[xd[x]][xr[x]] = xdst[x])
  BY <1>zmK3iQq0h2S, <1>D98Z8wkbCmwqJ, SMTT(10), Sizes, Location, Design DEF Vf1r7JJAw7avw, eTGFkYYLEEr9b, Sizes, Location, Design
<2>4. ph' = IF Vf1r7JJAw7avw(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
  BY <1>P0Q6iRIS3glk4wC4CgR5r, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. K8' /\ K9' /\ \A i \in Inst, u \in Rq : Active(i,u)' => pst'[rpg'[i][u]] \in {"priv","shared"}
  BY <1>PiExOn9, <1>KvONDEW, <1>VZ4mgVjlIllcY1w, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. ASSUME NEW p \in Pages PROVE QEH7_FW0L_tkj5(p)'
<3>1. QEH7_FW0L_tkj5(p)
  BY <2>1, <1>HVvqKKhcQc7sOKbQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. UNCHANGED <<NHits(p), KPinned(p)>>
<4>1. CASE Vf1r7JJAw7avw(x)
  BY <4>1, <2>1, <2>2, <2>3, <2>4, <1>BPUXhwTtTG, SMTT(10), Sizes, Location, Design DEF KPinned, Sizes, Location, Design
<4>2. CASE ~Vf1r7JJAw7avw(x)
<5>1. UNCHANGED <<ph,rpg,rhit,kpin,krs>>
  BY <4>2, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<5>2. QED BY <5>1, ZenonT(10), Sizes, Location, Design DEF KPinned, NHits, Sizes, Location, Design
<4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. (ptl[p] >= 0)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF AKc36xQrbcwQ8AX, eTGFkYYLEEr9b, Vf1r7JJAw7avw, QEH7_FW0L_tkj5, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, AtabIBD, xhIfp, vn9M, bNpAu, BDN6_c, Sizes, Location, Design
<3>4. (pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF AKc36xQrbcwQ8AX, eTGFkYYLEEr9b, Vf1r7JJAw7avw, QEH7_FW0L_tkj5, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, AtabIBD, xhIfp, vn9M, bNpAu, BDN6_c, Sizes, Location, Design
<3>5. (pst[p] \in {"priv","drain","quar"} => pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]])'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF AKc36xQrbcwQ8AX, eTGFkYYLEEr9b, Vf1r7JJAw7avw, QEH7_FW0L_tkj5, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, AtabIBD, xhIfp, vn9M, bNpAu, BDN6_c, Sizes, Location, Design
<3>6. (pst[p] = "quar" => pqp[p] \in Inst)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF AKc36xQrbcwQ8AX, eTGFkYYLEEr9b, Vf1r7JJAw7avw, QEH7_FW0L_tkj5, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, AtabIBD, xhIfp, vn9M, bNpAu, BDN6_c, Sizes, Location, Design
<3>7. (pst[p] # "quar" => pqp[p] = 0)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF AKc36xQrbcwQ8AX, eTGFkYYLEEr9b, Vf1r7JJAw7avw, QEH7_FW0L_tkj5, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, AtabIBD, xhIfp, vn9M, bNpAu, BDN6_c, Sizes, Location, Design
<3>8. (pst[p] # "shared" => prefc[p] = 0)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF AKc36xQrbcwQ8AX, eTGFkYYLEEr9b, Vf1r7JJAw7avw, QEH7_FW0L_tkj5, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, AtabIBD, xhIfp, vn9M, bNpAu, BDN6_c, Sizes, Location, Design
<3>9. (pst[p] = "shared" => IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF AKc36xQrbcwQ8AX, eTGFkYYLEEr9b, Vf1r7JJAw7avw, QEH7_FW0L_tkj5, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, AtabIBD, xhIfp, vn9M, bNpAu, BDN6_c, Sizes, Location, Design
<3>10. (pst[p] = "drain" => led[p] # {} \/ sled[p] # {} \/ KPinned(p))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF AKc36xQrbcwQ8AX, eTGFkYYLEEr9b, Vf1r7JJAw7avw, QEH7_FW0L_tkj5, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, AtabIBD, xhIfp, vn9M, bNpAu, BDN6_c, Sizes, Location, Design
<3>11. (pst[p] \in {"drain","quar"} => \A r \in Rq : ~Maps(Loc(p),r,p))'
  BY ONLY <2>5, <1>a7brl53Vj8juJwTyCLo, SMTT(10), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design
<3>12. (pst[p] = "priv" => (Maps(Loc(p),pr[p],p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]]) \/ GrownP(p))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, <1>a7brl53Vj8juJwTyCLo, SMTT(10), Sizes, Location DEF AKc36xQrbcwQ8AX, eTGFkYYLEEr9b, Vf1r7JJAw7avw, QEH7_FW0L_tkj5, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, AtabIBD, xhIfp, vn9M, bNpAu, BDN6_c, Sizes, Location, Design
<3>13. QED BY <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9, <3>10, <3>11, <3>12, SMTT(10), Sizes, Location, Design DEF QEH7_FW0L_tkj5, Sizes, Location, Design
<2>7. QED BY <2>6, SMTT(10), Sizes, Location, Design DEF K7, QEH7_FW0L_tkj5, Sizes, Location, Design
\* T2M-END R2M0757_PdRDPort_PdD2DBadLen_K7


<1>Z6UepKIS.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K16'
<2> USE ONLY <1>Z6UepKIS, Sizes, Location, Design
<2>1. K16 /\ X6zX5 /\ gv2_ /\ PwqP6 /\ x \in led[xdst[x]]
  BY <1>TLVER4XMUn, <1>zmK3iQq0h2S, <1>cpLCmY4HCHSRk7KFz, SMTT(10), V21_Inv_K16, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x) /\ UNCHANGED <<rpg,rg,ptl,sfly,hw,xdst>>
  BY <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW p \in Pages, GrownP(p)'
       PROVE /\ ph'[Loc(p)][pr'[p]] \in {"run","ovl"} /\ rg'[Loc(p)][pr'[p]] = pgn'[p]
             /\ led'[p] = {} /\ sled'[p] = {} /\ sfly'[p] = {}
             /\ plt'[p] = ptl'[p] /\ ptl'[p] \in {0,1} /\ NoWriteInto(p)'
<3>1. GrownP(p) /\ UNCHANGED <<pr[p],pgn[p]>>
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF GrownP, AKc36xQrbcwQ8AX, PageTo, EvidenceAt, AfterEv, X6zX5, gv2_, PwqP6, Sizes, Location, Design
<3>2. p # xdst[x] /\ pr[p] \in Rq /\ Loc(p) \in Inst
  BY <2>1, <3>1, <1>a7brl53Vj8juJwTyCLo, SMTT(10), Sizes, Location, Design DEF K16, GrownP, Sizes, Location, Design
<3>3. UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
  BY <3>2, <1>RZaGpEWqsOZtr1Kx, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>4. ph'[Loc(p)][pr'[p]] \in {"run","ovl"}
  BY <2>1, <3>1, <3>2, <1>jjete92OJenGWbP, SMTT(10), Sizes, Location, Design DEF K16, Sizes, Location, Design
<3>5. QED BY <2>1, <2>2, <3>1, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF K16, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K16, Sizes, Location, Design
\* T2M-END R2M0758_PdRDPort_PdD2DBadLen_K16


<1>Xt9zRkw674taNigS11l8av.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE BaseQuietConservation'
<2> USE ONLY <1>Xt9zRkw674taNigS11l8av, Sizes, Location, Design
<2>1. K7' /\ K16' /\ CoreTypeOK'
  BY <1>Ab6ZZ4w, <1>Z6UepKIS, <1>YbQclmR0JDs, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. X6zX5'
  BY <2>1, SMTT(10), Sizes, Location, Design DEF TypInv, TEJtP, X6zX5, CoreTypeOK, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pPQDVcRFd1wkMRkdnBX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0759_PdRDPort_PdD2DBadLen_QuietConservation


<1>X8EKYui6lwgpdvx9Lcvejsddj.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE QuietConservation'
<2> USE ONLY <1>X8EKYui6lwgpdvx9Lcvejsddj, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>PZwAFbI3NvLbkB, <1>GIFCQUBwzFDYx3LF2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>Xt9zRkw674taNigS11l8av, <1>gyoQxsy4xeJWLmNfm, <1>vRoxPLY0ZtTb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>X8EKYui6lwgpdvx9Lcvejsddj, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DBadLen_01_02 SHA 2cb5334f12092c00e318999234801503ba6b3859e25a2cdc63ddc5d9e21ffe75
USE DEF P_PagePoolsDisjoint, V21_Inv_BaseSafety, V21_Inv_K14, V21_Inv_K15, V21_Inv_K3, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_Strengthen, V22_T_dpreOK, V22_T_iv, V22_T_sprefc, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xst
HIDE DEF Part_DBadLen_01_01, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K16, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_S1, V21_Inv_S5
THEOREM Part_DBadLen_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE (TypInv)' /\ (NoStrayAccess)' /\ (KReadIntegrity)' /\ (K15)' /\ (P_SI4)'
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

           RD_XKeysFrame == UNCHANGED <<xsrc,xp,xr,xg,xk,nx>>

           RD_EntryRange == \A x \in sentry : IF xk[x]="wr" THEN iv'[x] \in {"reg","posted","failret","cqe","nopost"}
                                          ELSE xst'[x] \in {"posted","landed","failed"}


           RD_Controls == /\ \A x \in Xids : iv'[x] # iv[x] => iv[x]="none"
                          /\ \A x \in Xids : xst'[x] # xst[x] => xk[x]="wr"

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

           eTGFkYYLEEr9b(x) == Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]] = xg[x] /\ rx[xd[x]][xr[x]] = x


           AKc36xQrbcwQ8AX(x) ==
             /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] # xnt[x]
             /\ pst[xdst[x]] \in {"priv","drain"} /\ x \in led[xdst[x]]
             /\ xst' = [xst EXCEPT ![x] = "failed"]
             /\ ph' = IF eTGFkYYLEEr9b(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
             /\ drep' = IF eTGFkYYLEEr9b(x) THEN [drep EXCEPT ![xr[x]][xg[x]] = Bump(@)] ELSE drep
             /\ net' = IF eTGFkYYLEEr9b(x) THEN net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)} ELSE net
             /\ IF eTGFkYYLEEr9b(x)
                 THEN PageTo(xdst[x], IF led[xdst[x]] \ {x} = {} /\ sled[xdst[x]] = {} /\ ~PinBlocks(xdst[x]) THEN "free" ELSE "drain",0,led[xdst[x]] \ {x},sled[xdst[x]])
                 ELSE EvidenceAt(xdst[x],x)

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_STypeRest, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_XKeysFrame, RD_EntryRange, RD_Controls, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, eTGFkYYLEEr9b, AKc36xQrbcwQ8AX

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


<1>ESCk6pb406w.         BaseKReadIntegrity' /\ SMapIntegrity' => KReadIntegrity'
 BY SMTT(10), Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M0733_PdRDSharedSafety


<1>GIFCQUBwzFDYx3LF2.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>GIFCQUBwzFDYx3LF2, Sizes, Location, Design, SMTT(10) DEF DBadLen, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PZwAFbI3NvLbkB.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>PZwAFbI3NvLbkB, Sizes, Location, Design
<2>1. K1 /\ K2 /\ RD_PhType /\ RD_NxType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), V21_Inv_K1, V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xst[x]="posted"
 BY SMTT(10), Sizes, Location, Design DEF DBadLen, Sizes, Location, Design
<2>3. x < nx /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x]<=gen[xr[x]] /\ xd[x]=hd[xr[x]][xg[x]]
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K2, RD_NxType, Xids, Sizes, Location, Design
<2>4. xd[x] \in DInst
 BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>5. QED BY <2>1, <2>4, <1>GIFCQUBwzFDYx3LF2, Sizes, SMTT(10), Location, Design DEF DBadLen, instV, kV, rtV, RD_PFrame, PInst, DInst, Inst, NL, RD_PhType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cWwDAKjttBLjXenz.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE xdst' \in [Xids -> 0..NP]
<2> USE ONLY <1>cWwDAKjttBLjXenz, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>cWwDAKjttBLjXenz, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY SMTT(10), Sizes, Location, Design DEF DBadLen, instV, kV, rtV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0735_PdRDEffects_DBadLen


<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dEpIubzbA3.        
  ASSUME NEW x \in Xids, DBadLen(x)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>dEpIubzbA3, Sizes, Location, Design, ZenonT(5) DEF DBadLen, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

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

<1>a7brl53Vj8juJwTyCLo.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst /\ (IsP(Loc(p)) <=> ~IsD(Loc(p)))
  BY ONLY <1>a7brl53Vj8juJwTyCLo, Sizes, Location, Design, Location, Sizes, SMTT(10) DEF IsP, IsD, Inst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M0695_PdRDPort_D2Finite_PdFactsA


<1>nbt9Ybbxl0y3.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted"
  PROVE /\ x < nx /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>nbt9Ybbxl0y3, Sizes, Location, Design
<2>1. K1 /\ K2 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, XX2v, Xids, Sizes, Location, Design
<2>3. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
       /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>1, <2>2, <1>COZbdUc0j3ifgnaCHg, SMTT(10), Sizes, Location, Design DEF ExpPage, ExpInst, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t2nskagTic.        
  ASSUME NEW x \in Xids, NEW m \in net, PinInv, m.t = "notice", m.x = x
  PROVE /\ m.ok = hok[x] /\ m.pg = xlt[x] /\ iv[x] = "cqe"
        /\ (m.ok => hw[x] = "stop")
<2> USE ONLY <1>t2nskagTic, Sizes, Location, Design
<2>1. K12
  BY SMTT(10), V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. m.ok = hok[x] /\ m.pg = xlt[x] /\ iv[x] = "cqe" /\ hw[x] \in CqeHw(x)
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>3. QED BY <2>2, Design, SMTT(10), Sizes, Location DEF CqeHw, Sizes, Location, Design
\* T2M-END R2M0737_PdRDPort_PdD2TransferFacts

\* T2M-SCOPE R2M0746_PdRDPort_PdD2PostedWait
\* T2M-BODY R2M0746_PdRDPort_PdD2PostedWait
\* T2M-LOCAL-VISIBILITY

<1>r76pWOW0AA02FmU.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted"
  PROVE x < nx /\ ExpPage(x) = xdst[x] /\ xdst[x] \in Pages
        /\ (InitPage(x) \in Pages => InitPage(x) # xdst[x])
<2> USE ONLY <1>r76pWOW0AA02FmU, Sizes, Location, Design
<2>1. K2 /\ XX2v /\ x < nx /\ xp[x] \in PInst /\ xd[x] \in DInst
       /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <1>TLVER4XMUn, <1>nbt9Ybbxl0y3, SMTT(10), V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. InitPage(x) # 0 => Loc(InitPage(x)) = xp[x]
  BY <2>1, <1>COZbdUc0j3ifgnaCHg, SMTT(10), Sizes, Location, Design DEF InitInst, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>VLROWBcOqe16ENnb, Sizes, SMTT(10), Location, Design DEF Pages, ExpPage, Sizes, Location, Design
\* T2M-END R2M0746_PdRDPort_PdD2PostedWait

\* T2M-SCOPE R2M0753_PdRDPort_PdD2PostedMap
\* T2M-BODY R2M0753_PdRDPort_PdD2PostedMap
\* T2M-LOCAL-VISIBILITY

<1>zmK3iQq0h2S.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE /\ xk[x] = "wr" /\ xst[x] = "posted" /\ x < nx
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>zmK3iQq0h2S, Sizes, Location, Design
<2>1. xk[x] = "wr" /\ xst[x] = "posted"
  BY SMTT(10), Sizes, Location, Design DEF DBadLen, Sizes, Location, Design
<2>2. QED BY <2>1, <1>nbt9Ybbxl0y3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xDQlMm2aVfSh.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE AKc36xQrbcwQ8AX(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
<2> USE ONLY <1>xDQlMm2aVfSh, Sizes, Location, Design
<2>1. \A m \in net : (m.t = "notice" /\ m.x = x) =>
          m.ok = hok[x] /\ m.pg = xlt[x] /\ (m.ok => hw[x] = "stop")
  BY <1>t2nskagTic, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(10), Sizes, Location DEF DBadLen, AKc36xQrbcwQ8AX, eTGFkYYLEEr9b, rtV, instV, kV, Sizes, Location, Design
\* T2M-END R2M0738_PdRDPort_PdD2DBadLenEffect


<1>YbQclmR0JDs.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE CoreTypeOK'
 BY ONLY <1>YbQclmR0JDs, AuxType_ef40c909f9f48a73, Sizes, Location, Design DEF Sizes, Location, Design

<1>HdotSqD70t7FOB.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE \A p \in Pages : KPinned(p) =>
    /\ UNCHANGED <<pr[p],pgn[p]>>
    /\ (pst[p] = "shared" => pst'[p] = "shared")
    /\ (pst[p] \in {"priv","drain","quar","shared"} => pst'[p] \in {"priv","drain","quar","shared"})
<2> USE ONLY <1>HdotSqD70t7FOB, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ xdst[x] \in Pages /\ AKc36xQrbcwQ8AX(x)
  BY <1>TLVER4XMUn, <1>zmK3iQq0h2S, <1>xDQlMm2aVfSh, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. ASSUME NEW p \in Pages, KPinned(p)
       PROVE /\ UNCHANGED <<pr[p],pgn[p]>>
             /\ (pst[p] = "shared" => pst'[p] = "shared")
             /\ (pst[p] \in {"priv","drain","quar","shared"} => pst'[p] \in {"priv","drain","quar","shared"})
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF AKc36xQrbcwQ8AX, eTGFkYYLEEr9b, PageTo, EvidenceAt, AfterEv, PinBlocks, X6zX5, gv2_, PwqP6, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lc4kxcv9SWsj.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE \A p \in Pages : IsP(Loc(p)) => UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<2> USE ONLY <1>lc4kxcv9SWsj, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ ZpUxx /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x) /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
  BY <1>zmK3iQq0h2S, <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW p \in Pages, IsP(Loc(p)) PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<3>1. p # xdst[x]
  BY <2>2, <2>3, <1>VLROWBcOqe16ENnb, <1>a7brl53Vj8juJwTyCLo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <3>1, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, PageTo, EvidenceAt, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>U0Ie9feVXl4YxDPCVC.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE \A p \in Pages : led'[p] \subseteq led[p] /\ sled'[p] \subseteq sled[p]
<2> USE ONLY <1>U0Ie9feVXl4YxDPCVC, Sizes, Location, Design
<2>1. ZpUxx /\ a4GqBP /\ AKc36xQrbcwQ8AX(x)
  BY <1>TLVER4XMUn, <1>xDQlMm2aVfSh, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, PageTo, EvidenceAt, ZpUxx, a4GqBP, Sizes, Location, Design
\* T2M-END R2M0740_PdRDPort_PdD2DBadLenMasks


<1>XbA21ZLD.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K15'
<2> USE ONLY <1>XbA21ZLD, Sizes, Location, Design
<2>1. K14 /\ K15 /\ tqQeS
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K14, V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,ptl,pvis,sfly,hw,xdst>>
  BY <1>dEpIubzbA3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A p \in Pages : led'[p] \subseteq led[p] /\ sled'[p] \subseteq sled[p]
  BY <1>U0Ie9feVXl4YxDPCVC, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW i \in Inst, NEW s \in KSlots, kpin'[i][s], NEW e \in krs'[i][s], e[3] \in Pages
       PROVE /\ KData(i,e)'
             /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]] = {})
             /\ (IsP(i) => sled'[e[3]] = {})
<3>1. e[3] \in Pages /\ Loc(e[3]) = i /\ KData(i,e)
       /\ ((IsD(i) /\ e[4] # 1) => led[e[3]] = {})
       /\ (IsP(i) => sled[e[3]] = {})
  BY <2>4, <2>4, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K14, K15, tqQeS, Sizes, Location, Design
<3>2. ~IsD(i) => IsP(i) /\ plt'[e[3]] = plt[e[3]]
  BY <2>4, <3>1, <1>lc4kxcv9SWsj, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. QED BY <2>4, P_PagePoolsDisjoint, <3>1, <3>2, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF KData, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>5. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>PZwAFbI3NvLbkB, <1>cWwDAKjttBLjXenz, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>5, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED BY <1>GIFCQUBwzFDYx3LF2, <2>6, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>4, SMTT(10), V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF K15, TEJtP, tqQeS, KPages, Sizes, Location, Design
\* T2M-END R2M0741_PdRDPort_PdD2DBadLen_K15

\* T2M-SCOPE R2M0742_PdRDPort_PdD2DBadLen_NoFreeUnderRead

<1>SxrFhIlXoGDVlwyFg03Z.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE NoFreeUnderRead'
<2> USE ONLY <1>SxrFhIlXoGDVlwyFg03Z, Sizes, Location, Design
<2>1. NoFreeUnderRead /\ K14 /\ tqQeS
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K14, V21_Inv_NoFreeUnderRead, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, TEJtP, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs>>
  BY <1>dEpIubzbA3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW s \in KSlots, kpin'[i][s], NEW e \in krs'[i][s], e[3] \in Pages
       PROVE KHeld(e)'
<3>1. e[3] \in Pages /\ Loc(e[3]) = i /\ KHeld(e) /\ KPinned(e[3])
  BY <2>3, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF NoFreeUnderRead, K14, tqQeS, KPinned, Sizes, Location, Design
<3>2. QED BY <2>3, P_PagePoolsDisjoint, <3>1, <1>HdotSqD70t7FOB, SMTT(10), Sizes, Location, Design DEF KHeld, Sizes, Location, Design
<2>4. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>PZwAFbI3NvLbkB, <1>cWwDAKjttBLjXenz, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>4, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>PZwAFbI3NvLbkB, <1>GIFCQUBwzFDYx3LF2, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. RD_SFrame /\ UNCHANGED spst
 BY <2>6, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>8. QED BY <2>7, <1>GIFCQUBwzFDYx3LF2, <2>5, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>3, SMTT(10), V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF NoFreeUnderRead, TEJtP, tqQeS, KPages, RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M0742_PdRDPort_PdD2DBadLen_NoFreeUnderRead

\* T2M-SCOPE R2M0743_PdRDPort_PdD2DBadLen_KReadIntegrity

<1>vay8TmdSMDl2nN0Ls05.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE BaseKReadIntegrity'
<2> USE ONLY <1>vay8TmdSMDl2nN0Ls05, Sizes, Location, Design
<2>1. K14 /\ UNCHANGED <<kpin,kfly,krs>>
  BY <1>dEpIubzbA3, SMTT(10), V21_Inv_K14, V21_Inv_KReadIntegrity, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>2. K15' /\ NoFreeUnderRead'
  BY <1>XbA21ZLD, <1>SxrFhIlXoGDVlwyFg03Z, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>PZwAFbI3NvLbkB, <1>GIFCQUBwzFDYx3LF2, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_SFrame /\ UNCHANGED spst
 BY <2>3, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF BaseKReadIntegrity, K14, K15, NoFreeUnderRead, KReadIntegrity, RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M0743_PdRDPort_PdD2DBadLen_KReadIntegrity


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


<1>feVgFnM.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K2'
<2> USE ONLY <1>feVgFnM, Sizes, Location, Design
<2>1. K2 /\ ZCaSEo /\ ItYdB /\ gnQB /\ tBG7n /\ RLaS /\ ychB /\ LGvs /\ ZpUxx /\ XX2v /\ PwqP6 /\ vn9M /\ jyWjj /\ gv2_ /\ X6zX5 /\ a4GqBP /\ Vikm /\ bpmgv4 /\ HiUz /\ qcWy /\ uq0GF /\ loK6p /\ I3KH /\ ZhBZ /\ KbhysL /\ H3aTc
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, BaseSafety, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>zmK3iQq0h2S, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, eTGFkYYLEEr9b, AKc36xQrbcwQ8AX, EvidenceAt, ExpInst, ExpPage, InitInst, InitPage, IsD, IsP, K2, PageTo, PinBlocks, ZCaSEo, ItYdB, gnQB, tBG7n, RLaS, ychB, LGvs, ZpUxx, XX2v, PwqP6, vn9M, jyWjj, gv2_, X6zX5, a4GqBP, Vikm, bpmgv4, HiUz, qcWy, uq0GF, loK6p, I3KH, ZhBZ, KbhysL, H3aTc, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0744_PdRDPort_PdD2DBadLen_K2

\* T2M-SCOPE R2M0745_PdRDPort_PdD2DBadLen_K3

<1>ymH3eZH.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K3'
<2> USE ONLY <1>ymH3eZH, Sizes, Location, Design
<2>1. K3 /\ K2 /\ ZCaSEo /\ ItYdB /\ gnQB /\ tBG7n /\ RLaS /\ ychB /\ LGvs /\ ZpUxx /\ XX2v /\ PwqP6 /\ vn9M /\ jyWjj /\ gv2_ /\ X6zX5 /\ a4GqBP /\ Vikm /\ bpmgv4 /\ HiUz /\ qcWy /\ uq0GF /\ loK6p /\ I3KH /\ ZhBZ /\ KbhysL /\ H3aTc
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K3, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, BaseSafety, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>zmK3iQq0h2S, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, CqeHw, eTGFkYYLEEr9b, AKc36xQrbcwQ8AX, EvidenceAt, ExpInst, ExpPage, InFl, InitInst, InitPage, IsD, IsP, K2, K3, PageTo, PinBlocks, ZCaSEo, ItYdB, gnQB, tBG7n, RLaS, ychB, LGvs, ZpUxx, XX2v, PwqP6, vn9M, jyWjj, gv2_, X6zX5, a4GqBP, Vikm, bpmgv4, HiUz, qcWy, uq0GF, loK6p, I3KH, ZhBZ, KbhysL, H3aTc, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0745_PdRDPort_PdD2DBadLen_K3

\* T2M-SCOPE R2M0747_PdRDPort_PdD2DBadLen_K4

<1>pCtG6Es.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K4'
<2> USE ONLY <1>pCtG6Es, Sizes, Location, Design
<2>1. K2 /\ K4 /\ XX2v /\ ZpUxx /\ H3aTc
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K2, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. xst[x] = "posted" /\ x < nx /\ ExpPage(x) = xdst[x] /\ xdst[x] \in Pages
       /\ (InitPage(x) \in Pages => InitPage(x) # xdst[x])
  BY <1>zmK3iQq0h2S, <1>r76pWOW0AA02FmU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<nx,iv,xr,xg,xk,xp,xd,xsrc,xdst>>
       /\ ((UNCHANGED <<led,xst>>) \/
            (led' = [led EXCEPT ![xdst[x]] = @ \ {x}] /\ xst' = [xst EXCEPT ![x] = "failed"]))
  BY <2>1, <1>xDQlMm2aVfSh, Design, SMTT(10), Sizes, Location DEF AKc36xQrbcwQ8AX, EvidenceAt, PageTo, AfterEv, ZpUxx, Sizes, Location, Design
<2>4. ASSUME NEW y \in Xids, y < nx'
       PROVE /\ ((y \in led'[ExpPage(y)']) <=> xst'[y] = "posted")
             /\ (InitPage(y)' \in Pages => ((y \in led'[InitPage(y)']) <=> iv'[y] \in {"reg","posted","failret"}))
<3>1. CASE y = x
  BY <2>1, <2>2, <2>3, <2>4, <3>1, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, InitPage, ZpUxx, H3aTc, Sizes, Location, Design
<3>2. CASE y # x
<4>1. ExpPage(y) \in Pages /\ ExpPage(y)' = ExpPage(y) /\ InitPage(y)' = InitPage(y)
  BY <2>1, <2>3, <2>4, <1>COZbdUc0j3ifgnaCHg, SMTT(10), Sizes, Location, Design DEF ExpPage, InitPage, Sizes, Location, Design
<4>2. \A p \in Pages : (y \in led'[p]) <=> (y \in led[p])
  BY <2>1, <2>2, <2>3, <2>4, <3>2, SMTT(10), Sizes, Location, Design DEF ZpUxx, Sizes, Location, Design
<4>3. xst'[y] = xst[y] /\ iv'[y] = iv[y]
  BY <2>1, <2>3, <2>4, <3>2, SMTT(10), Sizes, Location, Design DEF H3aTc, Sizes, Location, Design
<4>4. QED BY <2>1, <2>3, <2>4, <4>1, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF K4, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. ASSUME NEW p \in Pages, NEW y \in led'[p]
       PROVE y < nx' /\ (p = ExpPage(y)' \/ p = InitPage(y)')
<3>1. y \in led[p]
  BY <2>1, <2>3, <2>5, SMTT(10), Sizes, Location, Design DEF ZpUxx, Sizes, Location, Design
<3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, InitPage, Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K4, Sizes, Location, Design
\* T2M-END R2M0747_PdRDPort_PdD2DBadLen_K4

\* T2M-SCOPE R2M0748_PdRDPort_PdD2DBadLen_K5

<1>cwSSDlz.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K5'
<2> USE ONLY <1>cwSSDlz, Sizes, Location, Design
<2>1. K5 /\ ZCaSEo /\ ZpUxx /\ PwqP6 /\ vn9M /\ jyWjj /\ gv2_ /\ X6zX5 /\ a4GqBP /\ HiUz /\ ZhBZ /\ H3aTc
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, BaseSafety, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>zmK3iQq0h2S, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, eTGFkYYLEEr9b, AKc36xQrbcwQ8AX, EvidenceAt, IsD, IsP, K5, OwnedBy, PageTo, PinBlocks, ZCaSEo, ZpUxx, PwqP6, vn9M, jyWjj, gv2_, X6zX5, a4GqBP, HiUz, ZhBZ, H3aTc, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0748_PdRDPort_PdD2DBadLen_K5

\* T2M-SCOPE R2M0749_PdRDPort_PdD2DBadLen_K6

<1>OkFbOFK.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K6'
<2> USE ONLY <1>OkFbOFK, Sizes, Location, Design
<2>1. K6 /\ ZCaSEo /\ ItYdB /\ ZpUxx /\ PwqP6 /\ vn9M /\ jyWjj /\ gv2_ /\ X6zX5 /\ sBjpCf /\ a4GqBP /\ H3aTc
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, BaseSafety, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>zmK3iQq0h2S, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, eTGFkYYLEEr9b, AKc36xQrbcwQ8AX, EvidenceAt, IsD, IsP, K6, OwnedBy, PageTo, PinBlocks, ZCaSEo, ItYdB, ZpUxx, PwqP6, vn9M, jyWjj, gv2_, X6zX5, sBjpCf, a4GqBP, H3aTc, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0749_PdRDPort_PdD2DBadLen_K6


<1>XaO9rsnqdrSr1uH5EQ.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE NoStrayAccess'
<2> USE ONLY <1>XaO9rsnqdrSr1uH5EQ, Sizes, Location, Design
<2>1. K2' /\ K3' /\ K4' /\ K5' /\ K6' /\ NoFreeUnderRead'
  BY <1>feVgFnM, <1>ymH3eZH, <1>pCtG6Es, <1>cwSSDlz, <1>OkFbOFK, <1>SxrFhIlXoGDVlwyFg03Z, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. K14' /\ XX2v'
  BY <1>TLVER4XMUn, <1>dEpIubzbA3, SMTT(10), V21_Inv_K14, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, K14, XX2v, Sizes, Location, Design
<2>3. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>PZwAFbI3NvLbkB, <1>GIFCQUBwzFDYx3LF2, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_SFrame /\ UNCHANGED spst
 BY <2>3, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, <2>1, <2>2, <1>xsKh4bJsAP9m1TA2xXe, SMTT(10), Sizes, Location, Design DEF RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M0750_PdRDPort_PdD2DBadLen_NoStrayAccess


<1>zSpmflDxdkO.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE K15'
 BY ONLY <1>zSpmflDxdkO, Sizes, Location, Design, <1>XbA21ZLD, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>bzfnHI21UfapJHtlJsEzOl.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>bzfnHI21UfapJHtlJsEzOl, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>PZwAFbI3NvLbkB, <1>GIFCQUBwzFDYx3LF2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>vay8TmdSMDl2nN0Ls05, <1>llETZGACL, <1>ESCk6pb406w, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>a6PjKQKUfiiAXgiKQZhFf.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE NoStrayAccess'
 BY ONLY <1>a6PjKQKUfiiAXgiKQZhFf, Sizes, Location, Design, <1>XaO9rsnqdrSr1uH5EQ, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>cffjpvAJ9SMyHE.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE TypInv'
<2> USE ONLY <1>cffjpvAJ9SMyHE, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED xsrc
 BY <1>PZwAFbI3NvLbkB, <1>GIFCQUBwzFDYx3LF2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK'
 BY <2>1, <1>NDQyqiufWt5zT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, <1>YbQclmR0JDs, SMTT(10), Sizes, Location, Design DEF TypInv, Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>Ss2CDZ5k0pE.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE P_SI4'
<2> USE ONLY <1>Ss2CDZ5k0pE, Sizes, Location, Design
<2>1. RD_XKeysFrame /\ UNCHANGED hw /\ RD_PFrame
 BY <1>PZwAFbI3NvLbkB, SMTT(10), Sizes, Location, Design DEF DBadLen, instV, kV, rtV, RD_XKeysFrame, Sizes, Location, Design
<2>2. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}] /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Ss2CDZ5k0pE, V22_T_iv, V22_T_xst, SMTT(5)

<2>3. RD_Controls
 BY <2>2, SMTT(10), Sizes, Location, Design DEF DBadLen, instV, kV, rtV, RD_Controls, Sizes, Location, Design
<2>4. CASE B2 BY <2>1, <2>3, <2>4, <1>xURm4FKOBGVsLMRCdjs, <1>FnDxdfjQ9, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. CASE ~B2 BY <2>5, SMTT(10), Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>cffjpvAJ9SMyHE, <1>a6PjKQKUfiiAXgiKQZhFf, <1>bzfnHI21UfapJHtlJsEzOl, <1>zSpmflDxdkO, <1>Ss2CDZ5k0pE, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DBadLen_02_01 SHA c2f7b591b060801d70d84c703dfab663ffcd382827a304314ec77e85f9690016
USE DEF V21_Inv_GenFiltered, V21_Inv_K16, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_ReadOwnLanded, V21_Inv_S1, V21_Inv_S5, V22_T_rpg
HIDE DEF AuxType_ef40c909f9f48a73, P_PagePoolsDisjoint, Part_DBadLen_01_02, V21_Inv_K14, V21_Inv_K15, V21_Inv_K3, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_PrefcMatchesHolders, V21_Inv_Strengthen, V22_T_dpreOK, V22_T_iv, V22_T_nx, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_DBadLen_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE (K7)' /\ (ReadOwnLanded)' /\ (K8)' /\ (K9)'
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

           EndHistoryD2(j,r,g,ok) ==
             /\ ph' = [ph EXCEPT ![j][r] = "end"]
             /\ drep' = [drep EXCEPT ![r][g] = 1]
             /\ dsucc' = IF ok THEN [dsucc EXCEPT ![r][g] = TRUE] ELSE dsucc
             /\ UNCHANGED <<rg,hd,crep>> /\ ~gbad'

           \* T2M-LOCAL-VISIBILITY

           DBadLenD2Live(x) == Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]] = xg[x] /\ rx[xd[x]][xr[x]] = x


           DBadLenD2Update(x) ==
             /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] # xnt[x]
             /\ pst[xdst[x]] \in {"priv","drain"} /\ x \in led[xdst[x]]
             /\ xst' = [xst EXCEPT ![x] = "failed"]
             /\ ph' = IF DBadLenD2Live(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
             /\ drep' = IF DBadLenD2Live(x) THEN [drep EXCEPT ![xr[x]][xg[x]] = Bump(@)] ELSE drep
             /\ net' = IF DBadLenD2Live(x) THEN net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)} ELSE net
             /\ IF DBadLenD2Live(x)
                 THEN PageTo(xdst[x], IF led[xdst[x]] \ {x} = {} /\ sled[xdst[x]] = {} /\ ~PinBlocks(xdst[x]) THEN "free" ELSE "drain",0,led[xdst[x]] \ {x},sled[xdst[x]])
                 ELSE EvidenceAt(xdst[x],x)

           \* T2M-LOCAL-VISIBILITY

           DBadLenD2Ends(x) == DBadLenD2Live(x)

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


           HitSetD2(p) == {r \in Rq : ph[Loc(p)][r] \in {"run","ovl"} /\ rhit[Loc(p)][r] /\ rpg[Loc(p)][r] = p}

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

           eTGFkYYLEEr9b(x) == Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]] = xg[x] /\ rx[xd[x]][xr[x]] = x


           AKc36xQrbcwQ8AX(x) ==
             /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] # xnt[x]
             /\ pst[xdst[x]] \in {"priv","drain"} /\ x \in led[xdst[x]]
             /\ xst' = [xst EXCEPT ![x] = "failed"]
             /\ ph' = IF eTGFkYYLEEr9b(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
             /\ drep' = IF eTGFkYYLEEr9b(x) THEN [drep EXCEPT ![xr[x]][xg[x]] = Bump(@)] ELSE drep
             /\ net' = IF eTGFkYYLEEr9b(x) THEN net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)} ELSE net
             /\ IF eTGFkYYLEEr9b(x)
                 THEN PageTo(xdst[x], IF led[xdst[x]] \ {x} = {} /\ sled[xdst[x]] = {} /\ ~PinBlocks(xdst[x]) THEN "free" ELSE "drain",0,led[xdst[x]] \ {x},sled[xdst[x]])
                 ELSE EvidenceAt(xdst[x],x)

           \* T2M-LOCAL-VISIBILITY

           OflDeL3pGNUY(j,r,g,ok) ==
             /\ ph' = [ph EXCEPT ![j][r] = "end"]
             /\ drep' = [drep EXCEPT ![r][g] = 1]
             /\ dsucc' = IF ok THEN [dsucc EXCEPT ![r][g] = TRUE] ELSE dsucc
             /\ UNCHANGED <<rg,hd,crep>> /\ ~gbad'
           \* T2M-END R2M0717_PdRDPort_PdD2History


           Vf1r7JJAw7avw(x) == eTGFkYYLEEr9b(x)

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, EndHistoryD2, DBadLenD2Live, DBadLenD2Update, DBadLenD2Ends, D2Finite_K7AtA, D2Finite_K8AtA, D2Finite_K9AtA, HitSetD2, RD_PhType, RD_RgType, RD_NxType, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_NoStop, RD_ReadBack, RD_ReadPart, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, eTGFkYYLEEr9b, AKc36xQrbcwQ8AX, OflDeL3pGNUY, Vf1r7JJAw7avw

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CAMMNqAjcE.        
  ASSUME NEW x \in Xids, DBadLen(x)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>CAMMNqAjcE, Sizes, Location, Design, ZenonT(5) DEF DBadLen, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M0078_PP_PdDBadLenFrames

\* T2M-SCOPE R2M0079_PP_PdCell_DBadLen_K17

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


<1>OO9RrVKYrV9C.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted"
  PROVE /\ x < nx /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>OO9RrVKYrV9C, Sizes, Location, Design
<2>1. K1 /\ K2 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, T_nx, Xids, Sizes, Location, Design
<2>3. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
       /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>1, <2>2, <1>hIc7A2XTHSqetfrLIb, SMTT(10), Sizes, Location, Design DEF ExpPage, ExpInst, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MAbiK9oN37.        
  ASSUME NEW x \in Xids, NEW m \in net, PinInv, m.t = "notice", m.x = x
  PROVE /\ m.ok = hok[x] /\ m.pg = xlt[x] /\ iv[x] = "cqe"
        /\ (m.ok => hw[x] = "stop")
<2> USE ONLY <1>MAbiK9oN37, Sizes, Location, Design
<2>1. K12
  BY SMTT(10), V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. m.ok = hok[x] /\ m.pg = xlt[x] /\ iv[x] = "cqe" /\ hw[x] \in CqeHw(x)
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>3. QED BY <2>2, Design, SMTT(10), Sizes, Location DEF CqeHw, Sizes, Location, Design
\* T2M-END R2M0082_PP_PdD2TransferFacts


<1>VDNUfUFbOs8.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE /\ xk[x] = "wr" /\ xst[x] = "posted" /\ x < nx
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>VDNUfUFbOs8, Sizes, Location, Design
<2>1. xk[x] = "wr" /\ xst[x] = "posted"
  BY SMTT(10), Sizes, Location, Design DEF DBadLen, Sizes, Location, Design
<2>2. QED BY <2>1, <1>OO9RrVKYrV9C, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PPzebV6t3aTD.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE DBadLenD2Update(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
<2> USE ONLY <1>PPzebV6t3aTD, Sizes, Location, Design
<2>1. \A m \in net : (m.t = "notice" /\ m.x = x) =>
          m.ok = hok[x] /\ m.pg = xlt[x] /\ (m.ok => hw[x] = "stop")
  BY <1>MAbiK9oN37, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(10), Sizes, Location DEF DBadLen, DBadLenD2Update, DBadLenD2Live, rtV, instV, kV, Sizes, Location, Design
\* T2M-END R2M0083_PP_PdD2DBadLenEffect


<1>GlEXF11A7V5icV91UFNnuvl.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xd[x] = hd[xr[x]][xg[x]]
        /\ UNCHANGED <<rg,hd,crep,dsucc,gen,hp,nx,xp,xd,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok>>
        /\ IF DBadLenD2Ends(x)
            THEN /\ drep[xr[x]][xg[x]] = 0 /\ EndHistoryD2(xd[x],xr[x],xg[x],FALSE)
                 /\ net' = net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)}
            ELSE /\ UNCHANGED <<ph,drep,net,gbad>>
<2> USE ONLY <1>GlEXF11A7V5icV91UFNnuvl, Sizes, Location, Design
<2>1. K9 /\ ~gbad /\ T_drep
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_GenFiltered, V21_Inv_K9, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, GenFiltered, Types, Sizes, Location, Design
<2>2. DBadLenD2Update(x) /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xd[x] = hd[xr[x]][xg[x]]
       /\ UNCHANGED <<rg,hd,crep,dsucc,gen,hp,nx,xp,xd,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok,gbad>>
  BY <1>VDNUfUFbOs8, <1>PPzebV6t3aTD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. DBadLenD2Ends(x) => drep[xr[x]][xg[x]] = 0
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF DBadLenD2Ends, DBadLenD2Live, K9, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF DBadLenD2Update, DBadLenD2Ends, EndHistoryD2, Bump, Sizes, Location, Design
\* T2M-END R2M0084_PP_PdD2DBadLenHistory


<1>vTqWXG3ODs5kR.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted",
    Active(xd[x],xr[x]), rg[xd[x]][xr[x]] = xg[x], rx[xd[x]][xr[x]] = x
  PROVE ph[xd[x]][xr[x]] = "wait" /\ ~rhit[xd[x]][xr[x]] /\ rpg[xd[x]][xr[x]] = xdst[x]
<2> USE ONLY <1>vTqWXG3ODs5kR, Sizes, Location, Design
<2>1. K2 /\ K8 /\ K9 /\ S5 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K2, V21_Inv_K8, V21_Inv_K9, V21_Inv_S5, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. x < nx /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>OO9RrVKYrV9C, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. Mode = "push" /\ x # 0
  BY <2>1, <2>2, <1>hIc7A2XTHSqetfrLIb, Design, Sizes, SMTT(10), Location DEF Xids, Sizes, Location, Design
<2>4. ~rhit[xd[x]][xr[x]]
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K9, Active, Sizes, Location, Design
<2>5. ph[xd[x]][xr[x]] \notin {"run","ovl"}
  BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
<2>6. ph[xd[x]][xr[x]] = "wait"
  BY <2>1, <2>2, <2>3, <2>5, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
<2>7. QED BY <2>1, <2>2, <2>3, <2>4, <2>6, SMTT(10), Sizes, Location, Design DEF K9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gWp6JY7RoGTE1WT6I.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted"
  PROVE x \in led[xdst[x]]
<2> USE ONLY <1>gWp6JY7RoGTE1WT6I, Sizes, Location, Design
<2>1. K4 /\ x < nx
  BY <1>OO9RrVKYrV9C, SMTT(10), V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qeP18jmrZ6QNq5.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE DBadLenD2Ends(x) => ph[xd[x]][xr[x]] = "wait"
  BY ONLY <1>qeP18jmrZ6QNq5, Sizes, Location, Design, <1>VDNUfUFbOs8, <1>vTqWXG3ODs5kR, SMTT(10) DEF DBadLenD2Ends, DBadLenD2Live, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eWzDzSOZGUhEzv6B.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE \A p \in Pages : p # xdst[x] => UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<2> USE ONLY <1>eWzDzSOZGUhEzv6B, Sizes, Location, Design
<2>1. T_pst /\ T_pr /\ T_pgn /\ T_plt /\ T_led /\ T_sled /\ DBadLenD2Update(x)
  BY <1>g4u1JVDPkX, <1>PPzebV6t3aTD, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF DBadLenD2Update, PageTo, EvidenceAt, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, Sizes, Location, Design
\* T2M-END R2M0087_PP_PdD2DBadLenReadPhases

\* T2M-SCOPE R2M0088_PP_PdD2DBadLen_K10
\* T2M-BODY R2M0088_PP_PdD2DBadLen_K10
\* T2M-LOCAL-VISIBILITY

<1>bTttSfPnMTdwuzkZ.         K7 <=> (\A p \in Pages : D2Finite_K7AtA(p))
  BY SMTT(10), Sizes, Location, Design DEF K7, D2Finite_K7AtA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GHtNmHuQStIh4bm0.         K8 <=> (\A i \in Inst, r \in Rq : D2Finite_K8AtA(i,r))
  BY SMTT(10), Sizes, Location, Design DEF K8, D2Finite_K8AtA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>X2XKrCyY6pX7gvFs.         K9 <=> (\A j \in DInst, r \in Rq : D2Finite_K9AtA(j,r))
  BY SMTT(10), Sizes, Location, Design DEF K9, D2Finite_K9AtA, Sizes, Location, Design
\* T2M-END R2M0031_PP_D2Finite_PdConjPointsA


<1>SI8N3Ces.        
  ASSUME NEW x \in Xids, NEW i \in Inst, NEW u \in Rq, PinInv,
    xk[x] = "wr", xst[x] = "posted", Active(i,u), rpg[i][u] = xdst[x]
  PROVE i = xd[x] /\ u = xr[x] /\ rg[i][u] = xg[x] /\ rx[i][u] = x
        /\ ph[i][u] = "wait" /\ ~rhit[i][u]
<2> USE ONLY <1>SI8N3Ces, Sizes, Location, Design
<2>1. K5 /\ K7 /\ K8 /\ K9 /\ S1
       /\ x < nx /\ xr[x] \in Rq /\ xd[x] \in DInst
       /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ x \in led[xdst[x]]
  BY <1>OO9RrVKYrV9C, <1>gWp6JY7RoGTE1WT6I, SMTT(10), V21_Inv_K5, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Loc(rpg[i][u]) = i /\ i = xd[x] /\ i \in DInst
  BY <2>1, <1>hWIfUWYvOn8Z2juQygjL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ~rhit[i][u]
  BY <2>1, <2>2, <1>hdKFcEtMtN5Ml4Qsk, SMTT(10), Sizes, Location, Design DEF K7, Active, Sizes, Location, Design
<2>4. u = xr[x] /\ rg[i][u] = xg[x]
  BY <2>1, <2>3, <1>hWIfUWYvOn8Z2juQygjL, SMTT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
<2>5. rx[i][u] = x
  BY <2>1, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF S1, ExpInst, Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>4, <2>5, <1>vTqWXG3ODs5kR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0098_PP_PdD2PostedMap


<1>XZuux5wYqLrNWpbsUfx8b.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE /\ ph' = (IF DBadLenD2Ends(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph)
        /\ (DBadLenD2Ends(x) => ph'[xd[x]][xr[x]] = "end")
        /\ \A i \in Inst, u \in Rq : Active(i,u)' => Active(i,u) /\ ph'[i][u] = ph[i][u]
<2> USE ONLY <1>XZuux5wYqLrNWpbsUfx8b, Sizes, Location, Design
<2>1. T_ph /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>g4u1JVDPkX, <1>VDNUfUFbOs8, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. ph' = IF DBadLenD2Ends(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
  BY <1>GlEXF11A7V5icV91UFNnuvl, SMTT(10), Sizes, Location, Design DEF EndHistoryD2, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Active, T_ph, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YEOENnAJq1hid9CtX.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE \A i \in Inst, u \in Rq : Active(i,u)' =>
    LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],sled[p]>>
<2> USE ONLY <1>YEOENnAJq1hid9CtX, Sizes, Location, Design
<2>1. K8 /\ T_pst /\ T_pr /\ T_pgn /\ T_plt /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. DBadLenD2Update(x) /\ xk[x] = "wr" /\ xst[x] = "posted"
       /\ UNCHANGED <<rpg,rg,rhit>>
  BY <1>VDNUfUFbOs8, <1>PPzebV6t3aTD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW u \in Rq, Active(i,u)'
       PROVE LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],sled[p]>>
<3>1. Active(i,u) /\ ph'[i][u] = ph[i][u] /\ rpg[i][u] \in Pages
  BY <2>1, <2>3, <1>XZuux5wYqLrNWpbsUfx8b, <1>hWIfUWYvOn8Z2juQygjL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE rpg[i][u] # xdst[x]
  BY <2>2, <3>1, <3>2, <1>eWzDzSOZGUhEzv6B, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. CASE rpg[i][u] = xdst[x]
<4>1. i = xd[x] /\ u = xr[x] /\ rg[i][u] = xg[x] /\ rx[i][u] = x
       /\ ph[i][u] = "wait" /\ ~rhit[i][u] /\ pst[rpg[i][u]] = "priv"
  BY <2>1, <2>2, <3>1, <3>3, <1>SI8N3Ces, <1>hWIfUWYvOn8Z2juQygjL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. ~DBadLenD2Ends(x)
  BY <2>3, <4>1, <1>XZuux5wYqLrNWpbsUfx8b, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<4>3. QED BY <2>1, <2>2, <3>3, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF DBadLenD2Ends, DBadLenD2Live, DBadLenD2Update, EvidenceAt, PageTo, AfterEv, Active, T_pst, T_pr, T_pgn, T_plt, T_sled, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0099_PP_PdD2DBadLenActivePages


<1>VYJmvTtThaAe.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE \A p \in Pages : IsP(Loc(p)) => UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<2> USE ONLY <1>VYJmvTtThaAe, Sizes, Location, Design
<2>1. T_pst /\ T_pr /\ T_pgn /\ T_plt /\ T_led /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. DBadLenD2Update(x) /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
  BY <1>VDNUfUFbOs8, <1>PPzebV6t3aTD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW p \in Pages, IsP(Loc(p)) PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<3>1. p # xdst[x]
  BY <2>2, <2>3, <1>NhYNztiJuG4YZnw3, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <3>1, SMTT(10), Sizes, Location, Design DEF DBadLenD2Update, PageTo, EvidenceAt, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ErgRWq47k62nglSLpM.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE \A p \in Pages : led'[p] \subseteq led[p] /\ sled'[p] \subseteq sled[p]
<2> USE ONLY <1>ErgRWq47k62nglSLpM, Sizes, Location, Design
<2>1. T_led /\ T_sled /\ DBadLenD2Update(x)
  BY <1>g4u1JVDPkX, <1>PPzebV6t3aTD, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF DBadLenD2Update, PageTo, EvidenceAt, T_led, T_sled, Sizes, Location, Design
\* T2M-END R2M0100_PP_PdD2DBadLenMasks


<1>sjTK2g9.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K8'
<2> USE ONLY <1>sjTK2g9, Sizes, Location, Design
<2>1. K8 /\ T_ph /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>g4u1JVDPkX, <1>VDNUfUFbOs8, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. UNCHANGED <<gen,hp,hd,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,nx,xsrc,xr,xg,iv,xlt>>
  BY <1>CAMMNqAjcE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW u \in Rq PROVE D2Finite_K8AtA(i,u)'
<3>1. D2Finite_K8AtA(i,u)
  BY <2>1, <1>GHtNmHuQStIh4bm0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. IsP(i) => ph'[i][u] = ph[i][u]
  BY <2>1, <1>XZuux5wYqLrNWpbsUfx8b, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF T_ph, Sizes, Location, Design
<3>3. QED BY <2>1, <2>2, <3>1, <3>2, <1>XZuux5wYqLrNWpbsUfx8b, <1>qeP18jmrZ6QNq5, <1>YEOENnAJq1hid9CtX, <1>VYJmvTtThaAe, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF D2Finite_K8AtA, Active, OwnedBy, T_ph, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K8, D2Finite_K8AtA, Sizes, Location, Design
\* T2M-END R2M0101_PP_PdD2DBadLen_K8

\* T2M-SCOPE R2M0102_PP_PdD2DBadLen_K9

<1>BXf3Odi.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K9'
<2> USE ONLY <1>BXf3Odi, Sizes, Location, Design
<2>1. K8 /\ K9 /\ T_drep /\ T_ph
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ hd[xr[x]][xg[x]] = xd[x]
       /\ UNCHANGED <<rg,rpg,rx,rhit,iv,nx,xdst,xr,xg,ptl,pvis,sfly>>
  BY <1>VDNUfUFbOs8, <1>CAMMNqAjcE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. DBadLenD2Ends(x) =>
       rg[xd[x]][xr[x]] = xg[x] /\ ~rhit[xd[x]][xr[x]] /\ EndHistoryD2(xd[x],xr[x],xg[x],FALSE)
  BY <1>VDNUfUFbOs8, <1>GlEXF11A7V5icV91UFNnuvl, <1>vTqWXG3ODs5kR, SMTT(10), Sizes, Location, Design DEF DBadLenD2Ends, DBadLenD2Live, Sizes, Location, Design
<2>4. ASSUME NEW i \in DInst, NEW u \in Rq PROVE D2Finite_K9AtA(i,u)'
<3>1. i \in Inst /\ IsD(i) /\ D2Finite_K8AtA(i,u) /\ D2Finite_K9AtA(i,u)
  BY <2>1, <1>NhYNztiJuG4YZnw3, <1>GHtNmHuQStIh4bm0, <1>X2XKrCyY6pX7gvFs, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE DBadLenD2Ends(x) /\ i = xd[x] /\ u = xr[x]
  BY <2>1, <2>2, <2>3, <3>2, SMTT(10), Sizes, Location, Design DEF D2Finite_K9AtA, EndHistoryD2, T_ph, T_drep, Active, Sizes, Location, Design
<3>3. CASE ~DBadLenD2Ends(x) \/ i # xd[x] \/ u # xr[x]
<4>1. ph'[i][u] = ph[i][u]
  BY <2>1, <3>1, <3>3, <1>XZuux5wYqLrNWpbsUfx8b, SMTT(10), Sizes, Location, Design DEF T_ph, Sizes, Location, Design
<4>2. (DBadLenD2Ends(x) /\ ph[i][u] # "none") =>
       rg[i][u] \in Gens /\ (u # xr[x] \/ rg[i][u] # xg[x])
  BY <2>2, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF D2Finite_K8AtA, Sizes, Location, Design
<4>3. ph[i][u] # "none" => drep'[u][rg[i][u]] = drep[u][rg[i][u]]
  BY <2>1, <2>3, <4>2, <1>GlEXF11A7V5icV91UFNnuvl, SMTT(10), Sizes, Location, Design DEF EndHistoryD2, T_drep, Sizes, Location, Design
<4>4. Active(i,u) =>
       LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],sled[p]>>
  BY <3>1, <4>1, <1>YEOENnAJq1hid9CtX, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<4>5. Active(i,u) => led'[rpg[i][u]] \subseteq led[rpg[i][u]]
  BY <3>1, <1>ErgRWq47k62nglSLpM, SMTT(10), Sizes, Location, Design DEF D2Finite_K8AtA, Active, Sizes, Location, Design
<4>6. QED BY <2>2, <3>1, <4>1, <4>3, <4>4, <4>5, SMTT(10), Sizes, Location, Design DEF D2Finite_K9AtA, Active, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF K9, D2Finite_K9AtA, Sizes, Location, Design
\* T2M-END R2M0102_PP_PdD2DBadLen_K9


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


<1>MqFsdhG.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K7'
<2> USE ONLY <1>MqFsdhG, Sizes, Location, Design
<2>1. K6 /\ K7 /\ K8 /\ K9 /\ K16 /\ T_pst /\ T_pr /\ T_pgn /\ T_plt /\ T_led /\ T_sled /\ T_sfly /\ T_prefc /\ T_pqp /\ T_ph /\ T_rpg /\ T_rhit
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K16, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. DBadLenD2Update(x) /\ xd[x] \in Inst /\ xp[x] \in Inst /\ xr[x] \in Rq /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
       /\ UNCHANGED <<gen,rg,rpg,rhit,kpin,krs,ptl,sfly>>
  BY <1>PPzebV6t3aTD, <1>VDNUfUFbOs8, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. DBadLenD2Ends(x) => (~rhit[xd[x]][xr[x]] /\ ph[xd[x]][xr[x]] = "wait" /\ rpg[xd[x]][xr[x]] = xdst[x])
  BY <1>VDNUfUFbOs8, <1>vTqWXG3ODs5kR, SMTT(10), Sizes, Location, Design DEF DBadLenD2Ends, DBadLenD2Live, Sizes, Location, Design
<2>4. ph' = IF DBadLenD2Ends(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
  BY <1>XZuux5wYqLrNWpbsUfx8b, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. K8' /\ K9' /\ \A i \in Inst, u \in Rq : Active(i,u)' => pst'[rpg'[i][u]] \in {"priv","shared"}
  BY <1>sjTK2g9, <1>BXf3Odi, <1>yQy6OV5Ihd636rM, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. ASSUME NEW p \in Pages PROVE D2Finite_K7AtA(p)'
<3>1. D2Finite_K7AtA(p)
  BY <2>1, <1>bTttSfPnMTdwuzkZ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. UNCHANGED <<NHits(p), KPinned(p)>>
<4>1. CASE DBadLenD2Ends(x)
  BY <4>1, <2>1, <2>2, <2>3, <2>4, <1>EbNblr17Hf, SMTT(10), Sizes, Location, Design DEF KPinned, Sizes, Location, Design
<4>2. CASE ~DBadLenD2Ends(x)
<5>1. UNCHANGED <<ph,rpg,rhit,kpin,krs>>
  BY <4>2, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<5>2. QED BY <5>1, ZenonT(10), Sizes, Location, Design DEF KPinned, NHits, Sizes, Location, Design
<4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. (ptl[p] >= 0)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF DBadLenD2Update, DBadLenD2Live, DBadLenD2Ends, D2Finite_K7AtA, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, T_rpg, T_rhit, Sizes, Location, Design
<3>4. (pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF DBadLenD2Update, DBadLenD2Live, DBadLenD2Ends, D2Finite_K7AtA, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, T_rpg, T_rhit, Sizes, Location, Design
<3>5. (pst[p] \in {"priv","drain","quar"} => pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]])'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF DBadLenD2Update, DBadLenD2Live, DBadLenD2Ends, D2Finite_K7AtA, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, T_rpg, T_rhit, Sizes, Location, Design
<3>6. (pst[p] = "quar" => pqp[p] \in Inst)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF DBadLenD2Update, DBadLenD2Live, DBadLenD2Ends, D2Finite_K7AtA, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, T_rpg, T_rhit, Sizes, Location, Design
<3>7. (pst[p] # "quar" => pqp[p] = 0)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF DBadLenD2Update, DBadLenD2Live, DBadLenD2Ends, D2Finite_K7AtA, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, T_rpg, T_rhit, Sizes, Location, Design
<3>8. (pst[p] # "shared" => prefc[p] = 0)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF DBadLenD2Update, DBadLenD2Live, DBadLenD2Ends, D2Finite_K7AtA, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, T_rpg, T_rhit, Sizes, Location, Design
<3>9. (pst[p] = "shared" => IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF DBadLenD2Update, DBadLenD2Live, DBadLenD2Ends, D2Finite_K7AtA, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, T_rpg, T_rhit, Sizes, Location, Design
<3>10. (pst[p] = "drain" => led[p] # {} \/ sled[p] # {} \/ KPinned(p))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF DBadLenD2Update, DBadLenD2Live, DBadLenD2Ends, D2Finite_K7AtA, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, T_rpg, T_rhit, Sizes, Location, Design
<3>11. (pst[p] \in {"drain","quar"} => \A r \in Rq : ~Maps(Loc(p),r,p))'
  BY ONLY <2>5, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design
<3>12. (pst[p] = "priv" => (Maps(Loc(p),pr[p],p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]]) \/ GrownP(p))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location DEF DBadLenD2Update, DBadLenD2Live, DBadLenD2Ends, D2Finite_K7AtA, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, T_pst, T_pr, T_pgn, T_plt, T_led, T_sled, T_prefc, T_pqp, T_ph, T_rpg, T_rhit, Sizes, Location, Design
<3>13. QED BY <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9, <3>10, <3>11, <3>12, SMTT(10), Sizes, Location, Design DEF D2Finite_K7AtA, Sizes, Location, Design
<2>7. QED BY <2>6, SMTT(10), Sizes, Location, Design DEF K7, D2Finite_K7AtA, Sizes, Location, Design
\* T2M-END R2M0103_PP_PdD2DBadLen_K7


<1>zuMj43kyt.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K7'
  BY ONLY <1>zuMj43kyt, Sizes, Location, Design, <1>MqFsdhG, V21_Inv_K7 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>IOGKyxi6F.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K8'
  BY ONLY <1>IOGKyxi6F, Sizes, Location, Design, <1>sjTK2g9, V21_Inv_K8 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>a4AuvOolS.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K9'
  BY ONLY <1>a4AuvOolS, Sizes, Location, Design, <1>BXf3Odi, V21_Inv_K9 DEF Sizes, Location, Design


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


<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dEpIubzbA3.        
  ASSUME NEW x \in Xids, DBadLen(x)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>dEpIubzbA3, Sizes, Location, Design, ZenonT(5) DEF DBadLen, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

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

<1>nbt9Ybbxl0y3.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted"
  PROVE /\ x < nx /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>nbt9Ybbxl0y3, Sizes, Location, Design
<2>1. K1 /\ K2 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, XX2v, Xids, Sizes, Location, Design
<2>3. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
       /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>1, <2>2, <1>COZbdUc0j3ifgnaCHg, SMTT(10), Sizes, Location, Design DEF ExpPage, ExpInst, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t2nskagTic.        
  ASSUME NEW x \in Xids, NEW m \in net, PinInv, m.t = "notice", m.x = x
  PROVE /\ m.ok = hok[x] /\ m.pg = xlt[x] /\ iv[x] = "cqe"
        /\ (m.ok => hw[x] = "stop")
<2> USE ONLY <1>t2nskagTic, Sizes, Location, Design
<2>1. K12
  BY SMTT(10), V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. m.ok = hok[x] /\ m.pg = xlt[x] /\ iv[x] = "cqe" /\ hw[x] \in CqeHw(x)
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>3. QED BY <2>2, Design, SMTT(10), Sizes, Location DEF CqeHw, Sizes, Location, Design
\* T2M-END R2M0737_PdRDPort_PdD2TransferFacts

\* T2M-SCOPE R2M0746_PdRDPort_PdD2PostedWait
\* T2M-BODY R2M0746_PdRDPort_PdD2PostedWait
\* T2M-LOCAL-VISIBILITY

<1>D98Z8wkbCmwqJ.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted",
    Active(xd[x],xr[x]), rg[xd[x]][xr[x]] = xg[x], rx[xd[x]][xr[x]] = x
  PROVE ph[xd[x]][xr[x]] = "wait" /\ ~rhit[xd[x]][xr[x]] /\ rpg[xd[x]][xr[x]] = xdst[x]
<2> USE ONLY <1>D98Z8wkbCmwqJ, Sizes, Location, Design
<2>1. K2 /\ K8 /\ K9 /\ S5 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K2, V21_Inv_K8, V21_Inv_K9, V21_Inv_S5, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. x < nx /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>nbt9Ybbxl0y3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. Mode = "push" /\ x # 0
  BY <2>1, <2>2, <1>COZbdUc0j3ifgnaCHg, Design, Sizes, SMTT(10), Location DEF Xids, Sizes, Location, Design
<2>4. ~rhit[xd[x]][xr[x]]
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K9, Active, Sizes, Location, Design
<2>5. ph[xd[x]][xr[x]] \notin {"run","ovl"}
  BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
<2>6. ph[xd[x]][xr[x]] = "wait"
  BY <2>1, <2>2, <2>3, <2>5, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
<2>7. QED BY <2>1, <2>2, <2>3, <2>4, <2>6, SMTT(10), Sizes, Location, Design DEF K9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cpLCmY4HCHSRk7KFz.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted"
  PROVE x \in led[xdst[x]]
<2> USE ONLY <1>cpLCmY4HCHSRk7KFz, Sizes, Location, Design
<2>1. K4 /\ x < nx
  BY <1>nbt9Ybbxl0y3, SMTT(10), V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RNUPQC9Tmgio7.        
  ASSUME NEW j \in DInst, NEW r \in Rq, PinInv, ph[j][r] \in {"run","ovl"}
  PROVE rpg[j][r] \in Pages /\ led[rpg[j][r]] = {}
<2> USE ONLY <1>RNUPQC9Tmgio7, Sizes, Location, Design
<2>1. K7 /\ K8 /\ K9 /\ j \in Inst
  BY <1>VLROWBcOqe16ENnb, SMTT(10), V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[j][r] \in Pages /\ (rhit[j][r] => pst[rpg[j][r]] = "shared")
  BY <2>1, <1>VBlwMBLC5pBW9rEeNkh7, <1>KUUrHEFvbxmFhGeG2, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K7, K9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zmK3iQq0h2S.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE /\ xk[x] = "wr" /\ xst[x] = "posted" /\ x < nx
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>zmK3iQq0h2S, Sizes, Location, Design
<2>1. xk[x] = "wr" /\ xst[x] = "posted"
  BY SMTT(10), Sizes, Location, Design DEF DBadLen, Sizes, Location, Design
<2>2. QED BY <2>1, <1>nbt9Ybbxl0y3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xDQlMm2aVfSh.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE AKc36xQrbcwQ8AX(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
<2> USE ONLY <1>xDQlMm2aVfSh, Sizes, Location, Design
<2>1. \A m \in net : (m.t = "notice" /\ m.x = x) =>
          m.ok = hok[x] /\ m.pg = xlt[x] /\ (m.ok => hw[x] = "stop")
  BY <1>t2nskagTic, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(10), Sizes, Location DEF DBadLen, AKc36xQrbcwQ8AX, eTGFkYYLEEr9b, rtV, instV, kV, Sizes, Location, Design
\* T2M-END R2M0738_PdRDPort_PdD2DBadLenEffect


<1>jIevr1VElrYj3BsJBl6F2YZ.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xd[x] = hd[xr[x]][xg[x]]
        /\ UNCHANGED <<rg,hd,crep,dsucc,gen,hp,nx,xp,xd,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok>>
        /\ IF Vf1r7JJAw7avw(x)
            THEN /\ drep[xr[x]][xg[x]] = 0 /\ OflDeL3pGNUY(xd[x],xr[x],xg[x],FALSE)
                 /\ net' = net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)}
            ELSE /\ UNCHANGED <<ph,drep,net,gbad>>
<2> USE ONLY <1>jIevr1VElrYj3BsJBl6F2YZ, Sizes, Location, Design
<2>1. K9 /\ ~gbad /\ ZCaSEo
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_GenFiltered, V21_Inv_K9, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, GenFiltered, TEJtP, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x) /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xd[x] = hd[xr[x]][xg[x]]
       /\ UNCHANGED <<rg,hd,crep,dsucc,gen,hp,nx,xp,xd,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok,gbad>>
  BY <1>zmK3iQq0h2S, <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. Vf1r7JJAw7avw(x) => drep[xr[x]][xg[x]] = 0
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Vf1r7JJAw7avw, eTGFkYYLEEr9b, K9, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, Vf1r7JJAw7avw, OflDeL3pGNUY, Bump, Sizes, Location, Design
\* T2M-END R2M0751_PdRDPort_PdD2DBadLenHistory


<1>ZgbDSrdIZ0xTZD.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE Vf1r7JJAw7avw(x) => ph[xd[x]][xr[x]] = "wait"
  BY ONLY <1>ZgbDSrdIZ0xTZD, Sizes, Location, Design, <1>zmK3iQq0h2S, <1>D98Z8wkbCmwqJ, SMTT(10) DEF Vf1r7JJAw7avw, eTGFkYYLEEr9b, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jjete92OJenGWbP.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE \A i \in Inst, u \in Rq :
    (ph'[i][u] \in {"run","ovl"} <=> ph[i][u] \in {"run","ovl"})
<2> USE ONLY <1>jjete92OJenGWbP, Sizes, Location, Design
<2>1. vn9M /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>TLVER4XMUn, <1>zmK3iQq0h2S, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. Vf1r7JJAw7avw(x) => ph[xd[x]][xr[x]] = "wait"
  BY <1>ZgbDSrdIZ0xTZD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ph' = IF Vf1r7JJAw7avw(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
  BY <1>jIevr1VElrYj3BsJBl6F2YZ, SMTT(10), Sizes, Location, Design DEF OflDeL3pGNUY, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF vn9M, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RZaGpEWqsOZtr1Kx.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE \A p \in Pages : p # xdst[x] => UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<2> USE ONLY <1>RZaGpEWqsOZtr1Kx, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ ZpUxx /\ a4GqBP /\ AKc36xQrbcwQ8AX(x)
  BY <1>TLVER4XMUn, <1>xDQlMm2aVfSh, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, PageTo, EvidenceAt, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, Sizes, Location, Design
\* T2M-END R2M0752_PdRDPort_PdD2DBadLenReadPhases

\* T2M-SCOPE R2M0754_PdRDPort_PdD2DBadLenActivePages

<1>IsoGDnm5vUDugV7kFt.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>IsoGDnm5vUDugV7kFt, Sizes, Location, Design
<2>1. BaseReadOwnLanded /\ x \in led[xdst[x]]
  BY <1>zmK3iQq0h2S, <1>cpLCmY4HCHSRk7KFz, SMTT(10), V21_Inv_BaseSafety, V21_Inv_ReadOwnLanded, V21_Inv_Safety, Sizes, Location, Design DEF Safety, BaseSafety, ReadOwnLanded, Sizes, Location, Design
<2>2. UNCHANGED <<rg,rpg,rhit,ptl,pvis,hw,xdst>>
  BY <1>dEpIubzbA3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in DInst, NEW u \in Rq, ph'[i][u] \in {"run","ovl"}
       PROVE LET p == rpg[i][u] IN
         /\ p \in Pages /\ NoWriteInto(p)'
         /\ ((~rhit'[i][u] /\ pst'[p] = "priv" /\ pr'[p] = u /\ pgn'[p] = rg'[i][u] /\ ptl'[p] = NTok(u,rg'[i][u]) /\ pvis'[p])
              \/ (rhit'[i][u] /\ pst'[p] = "shared" /\ ptl'[p] = PS))
<3>1. ph[i][u] \in {"run","ovl"}
  BY <2>3, <1>jjete92OJenGWbP, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. rpg[i][u] \in Pages /\ rpg[i][u] # xdst[x]
  BY <2>1, <3>1, <1>RNUPQC9Tmgio7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. QED BY <2>1, <2>2, <3>1, <3>2, <1>RZaGpEWqsOZtr1Kx, SMTT(10), Sizes, Location, Design DEF BaseReadOwnLanded, NoWriteInto, Writing, InFl, ReadOwnLanded, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF BaseReadOwnLanded, ReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M0760_PdRDPort_PdD2DBadLen_ReadOwnLanded


<1>gDNdCcgguKDZuRcXqFDJy.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE ReadOwnLanded'
<2> USE ONLY <1>gDNdCcgguKDZuRcXqFDJy, Sizes, Location, Design
<2>1. RD_PhType /\ rpg \in [Inst -> [Rq -> 0..NP]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>gDNdCcgguKDZuRcXqFDJy, V22_T_ph, V22_T_rpg, SMTT(5) DEF RD_PhType

<2>2. RD_NoStop /\ (B2 => RD_ReadBack)
 BY <2>1, Sizes, SMTT(10), Location, Design DEF DBadLen, instV, kV, rtV, RD_NoStop, RD_ReadBack, RD_PhType, DInst, Inst, NL, Sizes, Location, Design
<2>3. QED BY <2>2, <1>IsoGDnm5vUDugV7kFt, <1>FQ5lBNYlCkhQTVYF, <1>RCKQzj633zU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>zuMj43kyt, <1>gDNdCcgguKDZuRcXqFDJy, <1>IOGKyxi6F, <1>a4AuvOolS, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF Part_DBadLen_02_01, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K12, V21_Inv_K16, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_ReadOwnLanded, V21_Inv_S1, V21_Inv_S5, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_TypeOK, V21_SFollowOff, V22_T_ph, V22_T_rpg
====
