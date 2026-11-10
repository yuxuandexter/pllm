---- MODULE PdActionSlice_DSinfoBadLen_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_5454ba58ce6cf21d, PdFinalInvProjections, PdFinalEffects, PdSharedRefCounts, PdFunctionFrames, PdShapeBase, PdActionSlice_DSinfoBadLen_01

\* Complete original body PdFinalPart_DSinfoBadLen_01_02 SHA 5892887519695cac45fa26293345e285d679477de169b6ee32615635b0a98223
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_DSinfoBadLen_01_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K13, V21_Inv_K17, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_FunctionEta, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_MatrixEta, V22_PostSharedRefZero, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SharedRefZero, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_DSinfoBadLen_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE (TypInv)' /\ (NoStrayAccess)' /\ (KReadIntegrity)'
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

           DSinfoBadLenD2Pages(j,r) ==
             /\ led[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {} /\ PageTo(rpg[j][r],FreeOrDrain(rpg[j][r]),0,{},{})
             /\ UNCHANGED <<ptl,pvis,sfly,kpin,kfly,krs,hw,xr,xg,xk,xsrc,xdst,xnt,xlt,hok,xst,nx>>

           \* T2M-LOCAL-VISIBILITY

           NoPostUpdate == \E x \in Xids : x < nx /\ iv[x] = "none" /\ iv' = [iv EXCEPT ![x] = "nopost"]


           K3At(x) ==
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


<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_STypeRest, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, DSinfoBadLenD2Pages, NoPostUpdate, K3At

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


<1>ESCk6pb406w.         BaseKReadIntegrity' /\ SMapIntegrity' => KReadIntegrity'
 BY SMTT(10), Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M0733_PdRDSharedSafety


<1>wxufcYcLTlWllXSu4MzCYh.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>wxufcYcLTlWllXSu4MzCYh, Sizes, Location, Design, SMTT(10) DEF DSinfoBadLen, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>K9O2hjEUFQLZEtRayAd.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>K9O2hjEUFQLZEtRayAd, Sizes, Location, Design
<2>1. RD_PhType /\ RD_RgType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>wxufcYcLTlWllXSu4MzCYh, Sizes, SMTT(10), Location, Design DEF DSinfoBadLen, instV, kV, rtV, RD_PFrame, PInst, DInst, Inst, NL, IsD, RD_PhType, RD_RgType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SXgBxrImDkUZQ3edLZkzu.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE xdst' \in [Xids -> 0..NP]
<2> USE ONLY <1>SXgBxrImDkUZQ3edLZkzu, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>SXgBxrImDkUZQ3edLZkzu, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY SMTT(10), Sizes, Location, Design DEF DSinfoBadLen, instV, kV, rtV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1019_PdRDEffects_DSinfoBadLen


<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>quknSm.        
  K14 /\ UNCHANGED <<gen, kfly, kpin, krs>> => K14'
  BY SMTT(5), Sizes, Location, Design DEF K14, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ifRGm5FgdlQgywE.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DSinfoBadLen(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>ifRGm5FgdlQgywE, Sizes, Location, Design, ZenonT(5) DEF DSinfoBadLen, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Y6uC2WBaZMk8x.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE K14'
<2> USE ONLY <1>Y6uC2WBaZMk8x, Sizes, Location, Design
<2>1. K14 /\ UNCHANGED <<gen, kfly, kpin, krs>>
  BY SMTT(5), <1>ifRGm5FgdlQgywE, V21_Inv_BaseSafety, V21_Inv_K14, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>quknSm, Sizes, Location, Design DEF Sizes, Location, Design

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

<1>H6vDv84Wz3n8J.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, IsD(j), Active(j,r)
  PROVE rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
<2> USE ONLY <1>H6vDv84Wz3n8J, Sizes, Location, Design
<2>1. K8 /\ K9 /\ j \in DInst
  BY Sizes, SMTT(10), V21_Inv_K8, V21_Inv_K9, Location, Design DEF IsD, Inst, DInst, NL, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
\* T2M-END R2M0697_PdRDPort_PdOneReplyIncrement


<1>vzIw7gdmQ5thZh8W.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE /\ IsD(j) /\ j \in DInst /\ Active(j,r)
        /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
        /\ rg[j][r] \in Gens /\ rg[j][r] <= gen[r]
        /\ drep[r][rg[j][r]] = 0 /\ ~rhit[j][r] /\ pst[rpg[j][r]] = "priv" /\ ph[j][r] = "wait"
<2> USE ONLY <1>vzIw7gdmQ5thZh8W, Sizes, Location, Design
<2>1. IsD(j) /\ Active(j,r) /\ K8 /\ K9 /\ ph[j][r] = "wait"
  BY SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF DSinfoBadLen, Active, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>VBlwMBLC5pBW9rEeNkh7, <1>H6vDv84Wz3n8J, <1>KUUrHEFvbxmFhGeG2, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ObOWfCF8avamwwQyGGrWP.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DSinfoBadLen(j,r)
  PROVE DSinfoBadLenD2Pages(j,r)
  BY ONLY <1>ObOWfCF8avamwwQyGGrWP, Sizes, Location, Design, Design, SMTT(10) DEF DSinfoBadLenD2Pages, DSinfoBadLen, rtV, instV, kV, recV, pgV, xV, ghV, vars, Sizes, Location, Design
\* T2M-END R2M1021_PdRDPort_PdD2DSinfoBadLenEffect


<1>OoVmc4OKE664BJeRb.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE /\ led' = led /\ sled' = sled
        /\ \A p \in Pages : sled'[p] \subseteq sled[p]
<2> USE ONLY <1>OoVmc4OKE664BJeRb, Sizes, Location, Design
<2>1. ZpUxx /\ a4GqBP /\ rpg[j][r] \in Pages
  BY <1>vzIw7gdmQ5thZh8W, <1>TLVER4XMUn, SMTT(10), V21_Inv_KStruct, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, KStruct, Sizes, Location, Design
<2>2. DSinfoBadLenD2Pages(j,r)
  BY <1>ObOWfCF8avamwwQyGGrWP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF DSinfoBadLenD2Pages, PageTo, PageToG, GrownOwn, GFr, GTo, GrownOf, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, ZpUxx, a4GqBP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZWvVrtJlXRkg1WcqgdZ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE \A p \in Pages : KPinned(p) =>
          /\ UNCHANGED <<pr[p],pgn[p]>>
          /\ (pst[p] = "shared" => pst'[p] = "shared")
          /\ (pst[p] \in {"priv","drain","quar","shared"} => pst'[p] \in {"priv","drain","quar","shared"})
<2> USE ONLY <1>ZWvVrtJlXRkg1WcqgdZ, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ rpg[j][r] \in Pages /\ j \in DInst /\ K9 /\ K8 /\ Active(j,r)
  BY <1>vzIw7gdmQ5thZh8W, <1>TLVER4XMUn, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. DSinfoBadLenD2Pages(j,r)
  BY <1>ObOWfCF8avamwwQyGGrWP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ~rhit[j][r] /\ pst[rpg[j][r]] = "priv"
  BY <1>vzIw7gdmQ5thZh8W, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in Pages, KPinned(p)
       PROVE /\ UNCHANGED <<pr[p],pgn[p]>>
             /\ (pst[p] = "shared" => pst'[p] = "shared")
             /\ (pst[p] \in {"priv","drain","quar","shared"} => pst'[p] \in {"priv","drain","quar","shared"})
  BY <2>4, <2>1, <2>2, <2>3, Design, SMTT(10), Sizes, Location DEF DSinfoBadLenD2Pages, PageTo, PageToG, GrownOwn, GFr, GTo, GrownOf, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, X6zX5, gv2_, PwqP6, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>M7U8EGNWs4e3KbI87.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE \A p \in Pages : IsP(Loc(p)) => UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<2> USE ONLY <1>M7U8EGNWs4e3KbI87, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ ZpUxx /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. IsD(j) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
  BY <1>vzIw7gdmQ5thZh8W, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. DSinfoBadLenD2Pages(j,r)
  BY <1>ObOWfCF8avamwwQyGGrWP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in Pages, IsP(Loc(p)) PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<3>1. p # rpg[j][r] /\ p \notin GrownOf(j,r)
  BY <2>4, <2>2, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF GrownOf, Sizes, Location, Design
<3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF DSinfoBadLenD2Pages, PageTo, PageToG, GrownOwn, GFr, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1022_PdRDPort_PdD2DSinfoBadLenMasks


<1>sQi5n8lhuzheP.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
  PROVE K15'
<2> USE ONLY <1>sQi5n8lhuzheP, Sizes, Location, Design
<2>1. K14 /\ K15 /\ tqQeS
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K14, V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,ptl,pvis,sfly,hw,xdst>>
  BY <1>ifRGm5FgdlQgywE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. led' = led /\ \A p \in Pages : sled'[p] \subseteq sled[p]
  BY <1>OoVmc4OKE664BJeRb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW i \in Inst, NEW s \in KSlots, kpin'[i][s], NEW e \in krs'[i][s], e[3] \in Pages
       PROVE /\ KData(i,e)'
             /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]] = {})
             /\ (IsP(i) => sled'[e[3]] = {})
<3>1. e[3] \in Pages /\ Loc(e[3]) = i /\ KData(i,e)
       /\ ((IsD(i) /\ e[4] # 1) => led[e[3]] = {})
       /\ (IsP(i) => sled[e[3]] = {})
  BY <2>4, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K14, K15, tqQeS, Sizes, Location, Design
<3>2. ~IsD(i) => IsP(i) /\ plt'[e[3]] = plt[e[3]]
  BY <2>4, <3>1, <1>M7U8EGNWs4e3KbI87, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. QED BY <2>4, P_PagePoolsDisjoint, <3>1, <3>2, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF KData, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>5. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>K9O2hjEUFQLZEtRayAd, <1>SXgBxrImDkUZQ3edLZkzu, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>5, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED BY <1>wxufcYcLTlWllXSu4MzCYh, <2>6, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>4, SMTT(10), V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF K15, TEJtP, tqQeS, KPages, Sizes, Location, Design
\* T2M-END R2M1023_PdRDPort_PdD2DSinfoBadLen_K15

\* T2M-SCOPE R2M1024_PdRDPort_PdD2DSinfoBadLen_NoFreeUnderRead

<1>V83lwaNOzUAREkh3nGqeeddU7.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
  PROVE NoFreeUnderRead'
<2> USE ONLY <1>V83lwaNOzUAREkh3nGqeeddU7, Sizes, Location, Design
<2>1. NoFreeUnderRead /\ K14 /\ tqQeS
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K14, V21_Inv_NoFreeUnderRead, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, TEJtP, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs>>
  BY <1>ifRGm5FgdlQgywE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW s \in KSlots, kpin'[i][s], NEW e \in krs'[i][s], e[3] \in Pages
       PROVE KHeld(e)'
<3>1. e[3] \in Pages /\ Loc(e[3]) = i /\ KHeld(e) /\ KPinned(e[3])
  BY <2>3, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF NoFreeUnderRead, K14, tqQeS, KPinned, Sizes, Location, Design
<3>2. QED BY <2>3, P_PagePoolsDisjoint, <3>1, <1>ZWvVrtJlXRkg1WcqgdZ, SMTT(10), Sizes, Location, Design DEF KHeld, Sizes, Location, Design
<2>4. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>K9O2hjEUFQLZEtRayAd, <1>SXgBxrImDkUZQ3edLZkzu, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>4, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>K9O2hjEUFQLZEtRayAd, <1>wxufcYcLTlWllXSu4MzCYh, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. RD_SFrame /\ UNCHANGED spst
 BY <2>6, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>8. QED BY <2>7, <1>wxufcYcLTlWllXSu4MzCYh, <2>5, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>3, SMTT(10), V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF NoFreeUnderRead, TEJtP, tqQeS, KPages, RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M1024_PdRDPort_PdD2DSinfoBadLen_NoFreeUnderRead

\* T2M-SCOPE R2M1025_PdRDPort_PdD2DSinfoBadLen_KReadIntegrity

<1>Awf2pGXiWlEubEtuPuEDdiT7.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
  PROVE BaseKReadIntegrity'
<2> USE ONLY <1>Awf2pGXiWlEubEtuPuEDdiT7, Sizes, Location, Design
<2>1. K14 /\ UNCHANGED <<kpin,kfly,krs>>
  BY <1>ifRGm5FgdlQgywE, SMTT(10), V21_Inv_K14, V21_Inv_KReadIntegrity, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>2. K15' /\ NoFreeUnderRead'
  BY <1>sQi5n8lhuzheP, <1>V83lwaNOzUAREkh3nGqeeddU7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>K9O2hjEUFQLZEtRayAd, <1>wxufcYcLTlWllXSu4MzCYh, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_SFrame /\ UNCHANGED spst
 BY <2>3, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF BaseKReadIntegrity, K14, K15, NoFreeUnderRead, KReadIntegrity, RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M1025_PdRDPort_PdD2DSinfoBadLen_KReadIntegrity


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


<1>vWbis7otYYt.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE NoPostUpdate
<2> USE ONLY <1>vWbis7otYYt, Sizes, Location, Design
<2>1. K12
  BY SMTT(10), V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. PICK m \in net : m.t = "sinfo" /\ m.x \in Xids /\ iv[m.x] = "none"
          /\ iv' = [iv EXCEPT ![m.x] = "nopost"]
  BY SMTT(10), Sizes, Location, Design DEF DSinfoBadLen, Sizes, Location, Design
<2>3. m.x < nx
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF NoPostUpdate, Sizes, Location, Design
\* T2M-END R2M1027_PdRDPort_PdD2DSinfoNoPost


<1>p7q72n.        
  ASSUME K2, LGvs, XX2v, NoPostUpdate, UNCHANGED <<gen, hd, hok, hp, hw, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  PROVE K2'
  BY ONLY <1>p7q72n, Sizes, Location, Design, SMTT(5) DEF NoPostUpdate, LGvs, XX2v, ExpInst, ExpPage, Gens, InitInst, InitPage, K2, NTok, PLens, Pages, Rq, Xids, KPages, Sizes, Location, Design
\* T2M-END R2M1028_PdRDPort_PdNP_NoPost_K2


<1>wT6WKALsSZnW.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE K2'
<2> USE ONLY <1>wT6WKALsSZnW, Sizes, Location, Design
<2>1. K2 /\ LGvs /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. NoPostUpdate /\ UNCHANGED <<gen,hd,hok,hp,hw,nx,xd,xdst,xg,xk,xlt,xnt,xp,xr,xsrc,xst>>
  BY <1>vWbis7otYYt, <1>ifRGm5FgdlQgywE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>p7q72n, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1029_PdRDPort_PdD2DSinfoBadLen_K2


<1>MBQqQy2fOZCzlY.        
  ASSUME LGvs, NoPostUpdate
  PROVE \A x \in Xids : iv'[x] = iv[x] \/ (iv[x] = "none" /\ iv'[x] = "nopost")
  BY ONLY <1>MBQqQy2fOZCzlY, Sizes, Location, Design, SMTT(5) DEF LGvs, NoPostUpdate, Sizes, Location, Design
\* T2M-END R2M1030_PdRDPort_PdNP_NoPostPointValues

\* T2M-SCOPE R2M1031_PdRDPort_PdNP_NoPost_K3
\* T2M-BODY R2M1031_PdRDPort_PdNP_NoPost_K3

<1>K5Ex8b.        
  ASSUME K3, LGvs, XX2v, NoPostUpdate, UNCHANGED <<hok, hw, xk, xlt, xnt, xst>>
  PROVE K3'
<2> USE ONLY <1>K5Ex8b, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW x \in Xids PROVE K3At(x)'
  BY SMTT(5), Sizes, Location, Design DEF K3, K3At, Sizes, Location, Design
<2>1. K3At(x)
  BY SMTT(5), Sizes, Location, Design DEF K3, K3At, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>MBQqQy2fOZCzlY, SMTT(5), Sizes, Location, Design DEF K3At, CqeHw, InFl, Sizes, Location, Design
\* T2M-END R2M1031_PdRDPort_PdNP_NoPost_K3


<1>wUn1uIPVcPYw.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE K3'
<2> USE ONLY <1>wUn1uIPVcPYw, Sizes, Location, Design
<2>1. K3 /\ LGvs /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. NoPostUpdate /\ UNCHANGED <<hok,hw,xk,xlt,xnt,xst>>
  BY <1>vWbis7otYYt, <1>ifRGm5FgdlQgywE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>K5Ex8b, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1032_PdRDPort_PdD2DSinfoBadLen_K3


<1>DlrD7B.        
  ASSUME K4, LGvs, XX2v, NoPostUpdate, UNCHANGED <<led, nx, xdst, xk, xsrc, xst>>
  PROVE K4'
  BY ONLY <1>DlrD7B, Sizes, Location, Design, SMTT(5) DEF NoPostUpdate, LGvs, XX2v, ExpPage, InitPage, K4, Pages, Xids, Sizes, Location, Design
\* T2M-END R2M1033_PdRDPort_PdNP_NoPost_K4


<1>WSteHpV5NWpT.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE K4'
<2> USE ONLY <1>WSteHpV5NWpT, Sizes, Location, Design
<2>1. K4 /\ LGvs /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. NoPostUpdate /\ UNCHANGED <<nx,xdst,xk,xsrc,xst>>
  BY <1>vWbis7otYYt, <1>ifRGm5FgdlQgywE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED led
  BY <1>OoVmc4OKE664BJeRb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>DlrD7B, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1034_PdRDPort_PdD2DSinfoBadLen_K4


<1>i5fgRkTWTPS8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE K5'
<2> USE ONLY <1>i5fgRkTWTPS8, Sizes, Location, Design
<2>1. K5 /\ K7 /\ K16 /\ ItYdB /\ ychB /\ MDTwQr /\ tqQeS /\ ZpUxx /\ PwqP6 /\ vn9M /\ jyWjj /\ xhIfp /\ gv2_ /\ AtabIBD /\ X6zX5 /\ vwKWM /\ oGG7 /\ BDN6_c /\ bNpAu /\ sBjpCf /\ a4GqBP /\ bpmgv4 /\ HiUz /\ ZhBZ
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_K5, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, BaseSafety, Sizes, Location, Design
<2>2. IsD(j) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
  BY <1>vzIw7gdmQ5thZh8W, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. DSinfoBadLenD2Pages(j,r)
  BY <1>ObOWfCF8avamwwQyGGrWP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Location, Sizes, SMTT(10) DEF DSinfoBadLenD2Pages, Active, FreeOrDrain, GFr, GTo, GiveUpTo, GiveUpToN, GrownOf, GrownOwn, GrownP, InFl, IsD, IsP, K16, K5, K7, KPinned, Maps, NHits, NoWriteInto, OwnedBy, PageTo, PageToG, PinBlocks, ItYdB, ychB, MDTwQr, tqQeS, ZpUxx, PwqP6, vn9M, jyWjj, xhIfp, gv2_, AtabIBD, X6zX5, vwKWM, oGG7, BDN6_c, bNpAu, sBjpCf, a4GqBP, bpmgv4, HiUz, ZhBZ, Tag, Writing, KPages, Sizes, Location, Design
\* T2M-END R2M1035_PdRDPort_PdD2DSinfoBadLen_K5

\* T2M-SCOPE R2M1036_PdRDPort_PdD2DSinfoBadLen_K6

<1>md6ohgsFbDFm.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE K6'
<2> USE ONLY <1>md6ohgsFbDFm, Sizes, Location, Design
<2>1. K9 /\ K8 /\ K6 /\ K16 /\ sBjpCf /\ a4GqBP /\ X6zX5 /\ gv2_ /\ PwqP6
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K16, V21_Inv_K6, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. IsD(j) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ (~rhit[j][r] /\ pst[rpg[j][r]] = "priv")
  BY <2>1, <1>vzIw7gdmQ5thZh8W, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. DSinfoBadLenD2Pages(j,r)
  BY <1>ObOWfCF8avamwwQyGGrWP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A p \in GrownOf(j,r) : sled[p] = {}
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K16, GrownOf, GrownP, Sizes, Location, Design
<2>5. UNCHANGED <<gen,sfly,sled>> /\ \A p \in Pages : sled'[p] \subseteq sled[p]
  BY <1>ifRGm5FgdlQgywE, <1>OoVmc4OKE664BJeRb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A p \in Pages : sfly'[p] \subseteq sled'[p]
  BY <2>1, <2>5, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
<2>7. ASSUME NEW p \in Pages, NEW t \in sled'[p]
       PROVE t[2] <= gen'[t[1]] /\ (OwnedBy(p,t[1],t[2])' \/ (pst'[p] = "shared" /\ IsD(Loc(p))))
<3>1. t \in sled[p] /\ p \notin GrownOf(j,r)
       /\ t[2] <= gen[t[1]] /\ (OwnedBy(p,t[1],t[2]) \/ (pst[p] = "shared" /\ IsD(Loc(p))))
  BY <2>1, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
<3>2. QED
  BY <2>1, <2>2, <2>3, <2>5, <3>1, Design, SMTT(10), Sizes, Location DEF DSinfoBadLenD2Pages, OwnedBy, PageTo, PageToG, GrownOwn, GFr, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, X6zX5, gv2_, PwqP6, a4GqBP, Sizes, Location, Design
<2>8. QED BY <2>6, <2>7, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
\* T2M-END R2M1036_PdRDPort_PdD2DSinfoBadLen_K6


<1>D0PAksEEZKYDe7WEmTJnCqn.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
  PROVE NoStrayAccess'
<2> USE ONLY <1>D0PAksEEZKYDe7WEmTJnCqn, Sizes, Location, Design
<2>1. K2' /\ K3' /\ K4' /\ K5' /\ K6' /\ K14' /\ NoFreeUnderRead'
  BY <1>wT6WKALsSZnW, <1>wUn1uIPVcPYw, <1>WSteHpV5NWpT, <1>i5fgRkTWTPS8, <1>md6ohgsFbDFm, <1>Y6uC2WBaZMk8x, <1>V83lwaNOzUAREkh3nGqeeddU7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. XX2v /\ UNCHANGED nx
  BY <1>TLVER4XMUn, <1>ifRGm5FgdlQgywE, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>3. XX2v' BY <2>2, SMTT(10), Sizes, Location, Design DEF XX2v, Sizes, Location, Design
<2>4. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>K9O2hjEUFQLZEtRayAd, <1>wxufcYcLTlWllXSu4MzCYh, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. RD_SFrame /\ UNCHANGED spst
 BY <2>4, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>5, <2>1, <2>3, <1>xsKh4bJsAP9m1TA2xXe, SMTT(10), Sizes, Location, Design DEF RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M1037_PdRDPort_PdD2DSinfoBadLen_NoStrayAccess


<1>ZwjAqCz8J3RMQGso.          
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE CoreTypeOK'
 BY ONLY <1>ZwjAqCz8J3RMQGso, AuxType_5454ba58ce6cf21d, Sizes, Location, Design DEF Sizes, Location, Design

<1>P9tS8pJYHeaLODymGcSwc4AHqbv.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>P9tS8pJYHeaLODymGcSwc4AHqbv, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>K9O2hjEUFQLZEtRayAd, <1>wxufcYcLTlWllXSu4MzCYh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>Awf2pGXiWlEubEtuPuEDdiT7, <1>llETZGACL, <1>ESCk6pb406w, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>pBYhX4CMv2vfLgDkaZwN8XlepI.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE NoStrayAccess'
 BY ONLY <1>pBYhX4CMv2vfLgDkaZwN8XlepI, Sizes, Location, Design, <1>D0PAksEEZKYDe7WEmTJnCqn, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>QGepRpSyWw8o54QwCSF.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE TypInv'
<2> USE ONLY <1>QGepRpSyWw8o54QwCSF, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED xsrc
 BY <1>K9O2hjEUFQLZEtRayAd, <1>wxufcYcLTlWllXSu4MzCYh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK'
 BY <2>1, <1>NDQyqiufWt5zT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, <1>ZwjAqCz8J3RMQGso, SMTT(10), Sizes, Location, Design DEF TypInv, Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>QGepRpSyWw8o54QwCSF, <1>pBYhX4CMv2vfLgDkaZwN8XlepI, <1>P9tS8pJYHeaLODymGcSwc4AHqbv, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF AuxType_5454ba58ce6cf21d, P_PagePoolsDisjoint, Part_DSinfoBadLen_01_02, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_K12, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V22_T_dpreOK, V22_T_nx, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
====
