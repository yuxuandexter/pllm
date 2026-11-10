---- MODULE PdActionSlice_DRecvSinfo_01 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_483df3501ce352ae, PdFinalInvProjections, PdFinalEffects, PdFunctionFrames, PdShapeBase

\* Complete original body PdFinalPart_DRecvSinfo_01_01 SHA ca42e254cd0461a26ccf6dbea96a0766845e9c4aef1de6251331a6b8be2adf37
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K11, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K6, V21_Inv_K7, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_FunctionEta, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_DRecvSinfo_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE (TypInv)' /\ (QuietConservation)' /\ (P_SI2)' /\ (SharedLedRef)' /\ (NoStrayAccess)' /\ (NoEvictUnderRDMA)' /\ (SharedImmutable)'
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

           SinfoUpdateA(j,r,m) ==
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

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_STypeRest, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_HoldersShared, RD_QuietPart, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, SinfoUpdateA

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
<2>1. smap \in [PInst -> [Rq -> {0} \cup SPages]] /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
 BY ONLY <1>zMokmOdGw, V22_T_smap, V22_T_schoice, SMTT(5)
<2>2. CASE ~B2
 BY ONLY <1>zMokmOdGw, Sizes, Location, Design, <2>2, <2>2, SMTT(10), V21_SFollowOff DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. smap' = [i \in PInst |-> [r \in Rq |-> smap[i][r]]] /\
        schoice' = [i \in PInst |-> [r \in Rq |-> schoice[i][r]]]
 BY ONLY <1>zMokmOdGw, Sizes, Location, Design, <2>3, <2>3, <1>ivFfcVr6Rc1eHuIs8, SMTT(10) DEF RD_MUpdate, RD_PFrame, Sizes, Location, Design
 <3>map. [i \in PInst |-> [r \in Rq |-> smap[i][r]]] = smap
 BY ONLY <2>1, V22_MatrixEta, SMTT(5) DEF V22_MatrixEta
 <3>choice. [i \in PInst |-> [r \in Rq |-> schoice[i][r]]] = schoice
 BY ONLY <2>1, V22_MatrixEta, SMTT(5) DEF V22_MatrixEta
 <3>2. QED BY ONLY <3>1, <3>map, <3>choice, SMTT(5)
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


<1>TTpKhOymx73KMovRt1O.        
 ASSUME PinInv, SFollow, RD_PFrame, xdst' \in [Xids -> 0..NP]
 PROVE SharedImmutable'
<2> USE ONLY <1>TTpKhOymx73KMovRt1O, Sizes, Location, Design
<2>1. SharedImmutable /\ UNCHANGED spst /\ RD_SFrame
 BY <1>fIPaydrEb, <1>uaJsMuSZCFU, SMTT(10), V21_Inv_SharedImmutable, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A p \in SPages : NoWriteInto(p)'
 BY Sizes, SMTT(10), Location, Design DEF NoWriteInto, Writing, SPages, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF SharedImmutable, RD_SFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mD6mxs7tm9qowNmTYYGY.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>mD6mxs7tm9qowNmTYYGY, Sizes, Location, Design, SMTT(10) DEF DRecvSinfo, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aoOPHCrHANXLXCdEt.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>aoOPHCrHANXLXCdEt, Sizes, Location, Design
<2>1. RD_PhType /\ RD_RgType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>mD6mxs7tm9qowNmTYYGY, Sizes, SMTT(10), Location, Design DEF DRecvSinfo, instV, kV, rtV, RD_PFrame, PInst, DInst, Inst, NL, IsD, RD_PhType, RD_RgType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OQARa50EOjeTui9tkeC.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE xdst' \in [Xids -> 0..NP]
<2> USE ONLY <1>OQARa50EOjeTui9tkeC, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP] /\ rpg \in [Inst -> [Rq -> 0..NP]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>OQARa50EOjeTui9tkeC, V22_T_rpg, V22_T_xdst, SMTT(5)

<2>2. QED BY <2>1, Sizes, SMTT(10), Location, Design DEF DRecvSinfo, instV, kV, rtV, Pages, Sizes, Location, Design
\* T2M-END R2M1003_PdRDEffects_DRecvSinfo


<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JPlcx3f.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>q2QyUi1oSBW.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, Active(i,r)
  PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (~rhit[i][r] => pst[rpg[i][r]] = "priv" /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r])
        /\ (IsP(i) => ~rhit[i][r])
        /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  BY ONLY <1>q2QyUi1oSBW, Sizes, Location, Design, SMTT(10) DEF K8, Active, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hmZBL0hE.        
  ASSUME NEW i \in DInst, NEW r \in Rq, K9, rhit[i][r]
  PROVE /\ ph[i][r] \in {"run","ovl","end"}
        /\ (ph[i][r] \in {"run","ovl"} => pst[rpg[i][r]] = "shared" /\ Tag(r,rg[i][r]) \in sled[rpg[i][r]])
  BY ONLY <1>hmZBL0hE, Sizes, Location, Design, Zenon DEF K9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TyMeTUsFo.        
  ASSUME NEW x \in Xids, XX2v, K2, x < nx
  PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>TyMeTUsFo, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, XX2v, Xids, Sizes, Location, Design
\* T2M-END R2M0814_PdRDPort_PdFactsA

\* T2M-SCOPE R2M0819_PdRDPort_PdTypeProofs

<1>fKJsgwXHCSpm1X.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
  PROVE /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : SinfoUpdateA(j,r,m)
        /\ UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hp, kfly, kpin, krs, net, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
<2> USE ONLY <1>fKJsgwXHCSpm1X, Sizes, Location, Design
<2>1. kmCLbA
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(10), Sizes, Location DEF DRecvSinfo, SinfoUpdateA, GenOK, kmCLbA, rtV, instV, kV, ghV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BU5tZLd.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
  PROVE LET q == rpg[j][r] g == rg[j][r] IN
        /\ j \in DInst /\ q \in Pages /\ Loc(q) = j
        /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
        /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
        /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
<2> USE ONLY <1>BU5tZLd, Sizes, Location, Design
<2>1. K8 /\ K9
  BY SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Mode = "pull" /\ j \in DInst /\ ph[j][r] = "wait"
  BY <1>fKJsgwXHCSpm1X, <1>JPlcx3f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ~rhit[j][r]
  BY <2>1, <2>2, <1>hmZBL0hE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, <1>q2QyUi1oSBW, SMTT(10), Sizes, Location, Design DEF K9, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xnDb8PmON.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m,
         PinInv, DRecvSinfo(j,r), SinfoUpdateA(j,r,m)
  PROVE /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
        /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
        /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
<2> USE ONLY <1>xnDb8PmON, Sizes, Location, Design
<2>1. K2 /\ K3 /\ K12 /\ XX2v /\ H3aTc
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. Mode = "pull" /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
        /\ iv[m.x] = "none" /\ xlt[m.x] = NTok(r,rg[j][r])
  BY <2>1, <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF K12, SinfoUpdateA, Sizes, Location, Design
<2>3. xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xdst[m.x] = 0 /\ xst[m.x] # "none"
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, XX2v, Xids, InitPage, Sizes, Location, Design
<2>4. hw[m.x] = "none" /\ xst[m.x] = "posted"
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K3, H3aTc, Sizes, Location, Design
<2>5. QED
  BY <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>v4SBPcFxsJaB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m,
         PinInv, DRecvSinfo(j,r), SinfoUpdateA(j,r,m)
  PROVE xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst
        /\ xsrc[m.x] # rpg[j][r]
<2> USE ONLY <1>v4SBPcFxsJaB, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K8 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r] /\ xk[m.x] = "rd"
  BY <1>xnDb8PmON, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hd[r][rg[j][r]] = j /\ hp[r][rg[j][r]] \in PInst
  BY <2>1, <1>BU5tZLd, <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF K1, K8, Sizes, Location, Design
<2>4. xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst
  BY <2>1, <2>2, <2>3, <1>TyMeTUsFo, SMTT(10), Sizes, Location, Design DEF ExpPage, ExpInst, Sizes, Location, Design
<2>5. QED
  BY <2>4, <1>BU5tZLd, <1>JPlcx3f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1006_PdRDPort_PdSinfoFactsA


<1>B4kulQ8eFlKGBC0KsUUEE.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r), SFollow
  PROVE NoStrayAccess'
<2> USE ONLY <1>B4kulQ8eFlKGBC0KsUUEE, Sizes, Location, Design
<2>1. NoStrayAccess /\ K2 /\ K4 /\ K5 /\ K8 /\ K9 /\ K12 /\ tBG7n /\ ychB /\ LGvs /\ ZpUxx /\ vn9M /\ sld6 /\ bpmgv4
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K12, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K8, V21_Inv_K9, V21_Inv_NoStrayAccess, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : SinfoUpdateA(j,r,m)
        /\ UNCHANGED <<drep, dsucc, gen, hd, hp, kfly, krs, net, nx, pgn, plt, pr, pst, ptl, pvis, rg, rhit, rpe, rpg, sfly, sled, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : SinfoUpdateA(j,r,m)
  BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
       /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
       /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
       /\ xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst /\ xsrc[m.x] # rpg[j][r]
  BY <2>3, <1>xnDb8PmON, <1>v4SBPcFxsJaB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. LET q == rpg[j][r] g == rg[j][r] IN
       /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
       /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
       /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
  BY <1>BU5tZLd, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>aoOPHCrHANXLXCdEt, <1>mD6mxs7tm9qowNmTYYGY, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. RD_SFrame /\ UNCHANGED spst
 BY <2>6, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>update. \A x \in Xids :
 /\ hw'[x]=IF x=m.x THEN (IF Torn(m.x) THEN "stop" ELSE "fly") ELSE hw[x]
 /\ xdst'[x]=IF x=m.x THEN rpg[j][r] ELSE xdst[x]
 BY ONLY <2>1, <2>3, <2>4, SMTT(5) DEF SinfoUpdateA, ychB, bpmgv4
<2>source. Held(xsrc[m.x],m.x)
 BY ONLY <2>1, <2>4, SMTT(5) DEF K4, K5, ExpPage, OwnedBy, Held
<2>dest. Held(rpg[j][r],m.x)
 BY ONLY <2>4, <2>5, SMTT(5) DEF Held
<2>write. ASSUME NEW x \in Xids PROVE Writing(x)' => Held(xdst[x],x)'
 <3>changed. CASE x=m.x
  BY ONLY <2>write, <3>changed, <2>update, <2>dest, <2>2, SMTT(5) DEF Held
 <3>other. CASE x # m.x
  BY ONLY <2>write, <3>other, <2>update, <2>1, <2>2, SMTT(5) DEF NoStrayAccess, Writing, InFl, Held
 <3>qed. QED BY ONLY <3>changed, <3>other, SMTT(5)
<2>read. ASSUME NEW x \in Xids PROVE hw'[x]="fly" => Held(xsrc[x],x)'
 <3>changed. CASE x=m.x
  BY ONLY <3>changed, <2>source, <2>2, SMTT(5) DEF Held
 <3>other. CASE x # m.x
  BY ONLY <2>read, <3>other, <2>update, <2>1, <2>2, SMTT(5) DEF NoStrayAccess, Held
 <3>qed. QED BY ONLY <3>changed, <3>other, SMTT(5)
<2>stream. \A p \in Pages : \A t \in sfly'[p] :
 (pst'[p] \in {"priv","drain","quar"} /\ pr'[p]=t[1] /\ pgn'[p]=t[2]) \/ (pst'[p]="shared" /\ IsD(Loc(p)))
 BY ONLY <2>1, <2>2, SMTT(5) DEF NoStrayAccess
<2>kernel. \A i \in Inst, k \in KSlots : kfly'[i][k] => \A e \in krs'[i][k] : KHeld(e)'
 BY ONLY <2>1, <2>2, <2>7, SMTT(5) DEF NoStrayAccess, KHeld, SHeld, RD_SFrame
<2>8. QED BY ONLY <2>write, <2>read, <2>stream, <2>kernel, SMTT(5) DEF NoStrayAccess
\* T2M-LOCAL-VISIBILITY

<1>whTbmv9Aq4uaPKu4tY2FaH5M8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r), SFollow
  PROVE BaseQuietConservation'
<2> USE ONLY <1>whTbmv9Aq4uaPKu4tY2FaH5M8, Sizes, Location, Design
<2>1. BaseQuietConservation /\ ZpUxx /\ vn9M
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_QuietConservation, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, TEJtP, BaseSafety, QuietConservation, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : SinfoUpdateA(j,r,m)
        /\ UNCHANGED <<kpin, krs, prefc, pst, sled>>
  BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : SinfoUpdateA(j,r,m)
  BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
       /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
       /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
       /\ xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst /\ xsrc[m.x] # rpg[j][r]
  BY <2>3, <1>xnDb8PmON, <1>v4SBPcFxsJaB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. LET q == rpg[j][r] g == rg[j][r] IN
       /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
       /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
       /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
  BY <1>BU5tZLd, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, Design, Location, Sizes, SMTT(10) DEF Active, DInst, Inst, IsD, IsP, KPinned, NL, Quiet, BaseQuietConservation, SinfoUpdateA, ZpUxx, vn9M, Tag, KPages, QuietConservation, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>C5njpw4kT4K6EQ.          
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE CoreTypeOK'
 BY ONLY <1>C5njpw4kT4K6EQ, AuxType_483df3501ce352ae, Sizes, Location, Design DEF Sizes, Location, Design

<1>e1BDbxTNyM.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
 PROVE \E m \in net : SinfoUpdateA(j,r,m) /\ m.x \in Xids /\ xk[m.x]="rd" /\ xst[m.x]="posted" /\ hw[m.x]="none"
<2> USE ONLY <1>e1BDbxTNyM, Sizes, Location, Design
<2>1. PICK m \in net : SinfoUpdateA(j,r,m)
 BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xk[m.x]="rd" /\ xst[m.x]="posted" /\ hw[m.x]="none" /\ m.x \in Xids
 BY <2>1, <1>xnDb8PmON, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>libUgBxTBgs7.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>libUgBxTBgs7, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ SI8 /\ STypeOK /\ (B2 => SI4) /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 BY <1>lQA2, SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_SI8, V21_Inv_STypeOK, Sizes, Location, Design DEF CoreTypeOK, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. RD_PFrame /\ UNCHANGED <<xsrc,xr,xg>>
 BY <1>aoOPHCrHANXLXCdEt, <1>mD6mxs7tm9qowNmTYYGY, <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RD_SFrame /\ UNCHANGED <<spst,xsrcS,xsrcP>>
 BY <2>2, <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. PICK m \in net : SinfoUpdateA(j,r,m) /\ m.x \in Xids /\ xk[m.x]="rd" /\ xst[m.x]="posted" /\ hw[m.x]="none"
 BY <1>e1BDbxTNyM, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. B2 => sentry' \subseteq sentry /\
       \A h \in squar' : h \in squar \/ (h[1] \in sentry /\ h[1] \in Xids /\ h[2] \in xsrcS[h[1]])
 BY <2>2, <1>IhhNBTxyzZz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. B2 => \A x \in Xids : (SAccess(x)' /\ xsrcS[x] \cup xsrcP[x] # {}) => SAccess(x)
 BY <2>1, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF SAccess, SI4, SI8, SinfoUpdateA, STypeOK, Sizes, Location, Design
<2>7. QED BY <2>1, <2>3, <2>6, <2>2, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, RD_SFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SnwvSPUrRQlpW4gl5Gi2Y4IZdiY.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>SnwvSPUrRQlpW4gl5Gi2Y4IZdiY, Sizes, Location, Design, <1>libUgBxTBgs7, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>xI83qikqyJgNLDP27PkFdzTZ.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE NoStrayAccess'
 BY ONLY <1>xI83qikqyJgNLDP27PkFdzTZ, Sizes, Location, Design, <1>B4kulQ8eFlKGBC0KsUUEE, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>XkcaIXRc9KRi3uiFTZBfVBjgmmP8.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE QuietConservation'
<2> USE ONLY <1>XkcaIXRc9KRi3uiFTZBfVBjgmmP8, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>aoOPHCrHANXLXCdEt, <1>mD6mxs7tm9qowNmTYYGY, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>whTbmv9Aq4uaPKu4tY2FaH5M8, <1>gyoQxsy4xeJWLmNfm, <1>vRoxPLY0ZtTb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>t93zT7zAODsWsludp.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE TypInv'
<2> USE ONLY <1>t93zT7zAODsWsludp, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED xsrc
 BY <1>aoOPHCrHANXLXCdEt, <1>mD6mxs7tm9qowNmTYYGY, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK'
 BY <2>1, <1>NDQyqiufWt5zT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, <1>C5njpw4kT4K6EQ, SMTT(10), Sizes, Location, Design DEF TypInv, Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>hqqAleXDfn8BttHPeaCj8phnWi.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>hqqAleXDfn8BttHPeaCj8phnWi, Sizes, Location, Design
<2>1. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>aoOPHCrHANXLXCdEt, <1>OQARa50EOjeTui9tkeC, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>TTpKhOymx73KMovRt1O, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>xSd1xcLOVnTSBPXKtaNI87e.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE SharedLedRef'
<2> USE ONLY <1>xSd1xcLOVnTSBPXKtaNI87e, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>aoOPHCrHANXLXCdEt, <1>mD6mxs7tm9qowNmTYYGY, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>WNuC2jkOhy0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>X6NTPWObsQnNqs.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE P_SI2'
 BY ONLY <1>X6NTPWObsQnNqs, Sizes, Location, Design, <1>aoOPHCrHANXLXCdEt, <1>mD6mxs7tm9qowNmTYYGY, <1>HQkX8HBDKVM, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>t93zT7zAODsWsludp, <1>XkcaIXRc9KRi3uiFTZBfVBjgmmP8, <1>X6NTPWObsQnNqs, <1>xSd1xcLOVnTSBPXKtaNI87e, <1>xI83qikqyJgNLDP27PkFdzTZ, <1>SnwvSPUrRQlpW4gl5Gi2Y4IZdiY, <1>hqqAleXDfn8BttHPeaCj8phnWi, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DRecvSinfo_01_02 SHA 112d66764ae3025422a1ab4e4e749591c4f5b51211434579bef929621c916d34
USE DEF P_PagePoolsDisjoint, V21_Inv_K10, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_K7, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_QuarNoReg, V21_Inv_S3, V21_Inv_SealOnlyLanded, V22_SF_Choice, V22_SF_Map, V22_SF_Off, V22_T_hok, V22_T_hw, V22_T_iv, V22_T_pst, V22_T_xst
HIDE DEF AuxType_483df3501ce352ae, Part_DRecvSinfo_01_01, V21_Inv_HitIdentity, V21_Inv_K5, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoStrayAccess, V21_Inv_PrefcMatchesHolders, V21_Inv_QuietConservation, V22_MatrixEta, V22_T_dpreOK, V22_T_rpgS, V22_T_sentry, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
THEOREM Part_DRecvSinfo_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE (KReadIntegrity)' /\ (P_SI5)' /\ (P_SI4)' /\ (K15)' /\ (SealOnlyLanded)' /\ (NoFreeUnderRead)'
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

           SinfoUpdateA(j,r,m) ==
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

           RD_NoStop == \A x \in Xids : ~(hw[x] \in {"fly","issued"} /\ hw'[x]="stop")

           RD_R2HardwareTypes ==
            /\ hw \in [Xids -> {"none", "fly", "issued", "stop"}] /\ hok \in [Xids -> BOOLEAN]
            /\ iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
            /\ xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]
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

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_Q2, RD_EQUpdate, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_KeyOnSource, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, SinfoUpdateA, RD_NoStop, RD_R2HardwareTypes, RD_EntryRange, RD_SI4Keys, RD_PrefixBack, RD_CoverBack, RD_RegSafe, RD_StopBack, RD_SI5Quar, RD_SI5Stop, RD_SI5Map

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
<2> HIDE DEF PinInv, STypeOK, CoreTypeOK, SFollow, RD_MUpdate, RD_PFrame
<2>map_type. smap \in [PInst -> [Rq -> {0} \cup SPages]]
 BY ONLY <1>zMokmOdGw, V22_T_smap, SMTT(5)
<2>choice_type. schoice \in [PInst -> [Rq -> BOOLEAN]]
 BY ONLY <1>zMokmOdGw, V22_T_schoice, SMTT(5)
<2>rg_frame. \A i \in PInst, r \in Rq : rg'[i][r]=rg[i][r]
 BY ONLY <1>zMokmOdGw, ZenonT(5) DEF RD_PFrame
<2>off. CASE ~B2
 BY ONLY <1>zMokmOdGw, <2>off, V22_SF_Off, ZenonT(5) DEF sV
<2>on. CASE B2
 <3>map_effect. smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]
  BY ONLY <1>zMokmOdGw, <2>on, V22_SF_Map, SMTT(5)
 <3>choice_effect. schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]
  BY ONLY <1>zMokmOdGw, <2>on, V22_SF_Choice, SMTT(5)
 <3>map_same. smap'=smap
  BY ONLY <2>map_type, <2>rg_frame, <3>map_effect, SMTT(5)
 <3>choice_same. schoice'=schoice
  BY ONLY <2>choice_type, <2>rg_frame, <3>choice_effect, SMTT(5)
 <3>qed. QED BY ONLY <3>map_same, <3>choice_same, SMTT(5)
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

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

<1>TTpKhOymx73KMovRt1O.        
 ASSUME PinInv, SFollow, RD_PFrame, xdst' \in [Xids -> 0..NP]
 PROVE SharedImmutable'
<2> USE ONLY <1>TTpKhOymx73KMovRt1O, Sizes, Location, Design
<2>1. SharedImmutable /\ UNCHANGED spst /\ RD_SFrame
 BY <1>fIPaydrEb, <1>uaJsMuSZCFU, SMTT(10), V21_Inv_SharedImmutable, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A p \in SPages : NoWriteInto(p)'
 BY Sizes, SMTT(10), Location, Design DEF NoWriteInto, Writing, SPages, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF SharedImmutable, RD_SFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ca3ak7RUGjY.         BaseSealOnlyLanded' /\ SharedImmutable' => SealOnlyLanded'
 BY SMTT(10), Sizes, Location, Design DEF SealOnlyLanded, Sizes, Location, Design
\* T2M-LOCAL-VISIBILITY

<1>ESCk6pb406w.         BaseKReadIntegrity' /\ SMapIntegrity' => KReadIntegrity'
 BY SMTT(10), Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M0733_PdRDSharedSafety


<1>mD6mxs7tm9qowNmTYYGY.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>mD6mxs7tm9qowNmTYYGY, Sizes, Location, Design, SMTT(10) DEF DRecvSinfo, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aoOPHCrHANXLXCdEt.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>aoOPHCrHANXLXCdEt, Sizes, Location, Design
<2>1. RD_PhType /\ RD_RgType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>mD6mxs7tm9qowNmTYYGY, Sizes, SMTT(10), Location, Design DEF DRecvSinfo, instV, kV, rtV, RD_PFrame, PInst, DInst, Inst, NL, IsD, RD_PhType, RD_RgType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OQARa50EOjeTui9tkeC.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE xdst' \in [Xids -> 0..NP]
<2> USE ONLY <1>OQARa50EOjeTui9tkeC, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP] /\ rpg \in [Inst -> [Rq -> 0..NP]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>OQARa50EOjeTui9tkeC, V22_T_rpg, V22_T_xdst, SMTT(5)

<2>2. QED BY <2>1, Sizes, SMTT(10), Location, Design DEF DRecvSinfo, instV, kV, rtV, Pages, Sizes, Location, Design
\* T2M-END R2M1003_PdRDEffects_DRecvSinfo


<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EAwHPOZbsR.        
  ASSUME NEW r, NEW g
  PROVE NTok(r,g) \in Nat \ {0}
  BY ONLY <1>EAwHPOZbsR, Sizes, Location, Design, Sizes, SMT DEF NTok, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yn0Qts6.        
  K14 /\ UNCHANGED <<gen, kfly, kpin, krs>> => K14'
  BY SMTT(10), Sizes, Location, Design DEF K14, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bVJpsRL2CYXpUQFGgqL.        
  NoFreeUnderRead /\ UNCHANGED <<kpin, krs, pgn, pr, pst, spst, sown, sgen, skey, sdata, swrite>> => NoFreeUnderRead'
  BY Zenon, Sizes, Location, Design DEF KHeld, NoFreeUnderRead, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M0810_PdRDPort_PdDFrames

\* T2M-SCOPE R2M0813_PdRDPort_PdDDataA

<1>JPlcx3f.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>q2QyUi1oSBW.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, Active(i,r)
  PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (~rhit[i][r] => pst[rpg[i][r]] = "priv" /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r])
        /\ (IsP(i) => ~rhit[i][r])
        /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  BY ONLY <1>q2QyUi1oSBW, Sizes, Location, Design, SMTT(10) DEF K8, Active, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hmZBL0hE.        
  ASSUME NEW i \in DInst, NEW r \in Rq, K9, rhit[i][r]
  PROVE /\ ph[i][r] \in {"run","ovl","end"}
        /\ (ph[i][r] \in {"run","ovl"} => pst[rpg[i][r]] = "shared" /\ Tag(r,rg[i][r]) \in sled[rpg[i][r]])
  BY ONLY <1>hmZBL0hE, Sizes, Location, Design, Zenon DEF K9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TyMeTUsFo.        
  ASSUME NEW x \in Xids, XX2v, K2, x < nx
  PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>TyMeTUsFo, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, XX2v, Xids, Sizes, Location, Design
\* T2M-END R2M0814_PdRDPort_PdFactsA

\* T2M-SCOPE R2M0819_PdRDPort_PdTypeProofs

<1>lpERRf1zlgfCn.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvSinfo(j, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hp, kfly, kpin, krs, net, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>lpERRf1zlgfCn, Sizes, Location, Design, Design, SMTT(10) DEF DRecvSinfo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IB9X2MMLUeo.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r), SFollow
  PROVE K14'
<2> USE ONLY <1>IB9X2MMLUeo, Sizes, Location, Design
<2>1. K14 /\ UNCHANGED <<gen, kfly, kpin, krs>>
  BY <1>lpERRf1zlgfCn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K14, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>yn0Qts6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KCse5CQrEfKC1Q7fjHNxhiB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r), SFollow
  PROVE NoFreeUnderRead'
<2> USE ONLY <1>KCse5CQrEfKC1Q7fjHNxhiB, Sizes, Location, Design
<2>1. NoFreeUnderRead /\ UNCHANGED <<kpin, krs, pgn, pr, pst>>
  BY <1>lpERRf1zlgfCn, SMTT(10), V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, Sizes, Location, Design
<2>2. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>aoOPHCrHANXLXCdEt, <1>OQARa50EOjeTui9tkeC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>2, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>aoOPHCrHANXLXCdEt, <1>mD6mxs7tm9qowNmTYYGY, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. RD_SFrame /\ UNCHANGED spst
 BY <2>4, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>5, <2>3, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>1, <1>bVJpsRL2CYXpUQFGgqL, SMTT(10), V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, tqQeS, KPages, NoFreeUnderRead, RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M1004_PdRDPort_PdDRecvSinfoFramesA


<1>fKJsgwXHCSpm1X.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
  PROVE /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : SinfoUpdateA(j,r,m)
        /\ UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hp, kfly, kpin, krs, net, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
<2> USE ONLY <1>fKJsgwXHCSpm1X, Sizes, Location, Design
<2>1. kmCLbA
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(10), Sizes, Location DEF DRecvSinfo, SinfoUpdateA, GenOK, kmCLbA, rtV, instV, kV, ghV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BU5tZLd.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
  PROVE LET q == rpg[j][r] g == rg[j][r] IN
        /\ j \in DInst /\ q \in Pages /\ Loc(q) = j
        /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
        /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
        /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
<2> USE ONLY <1>BU5tZLd, Sizes, Location, Design
<2>1. K8 /\ K9
  BY SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Mode = "pull" /\ j \in DInst /\ ph[j][r] = "wait"
  BY <1>fKJsgwXHCSpm1X, <1>JPlcx3f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ~rhit[j][r]
  BY <2>1, <2>2, <1>hmZBL0hE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, <1>q2QyUi1oSBW, SMTT(10), Sizes, Location, Design DEF K9, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xnDb8PmON.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m,
         PinInv, DRecvSinfo(j,r), SinfoUpdateA(j,r,m)
  PROVE /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
        /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
        /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
<2> USE ONLY <1>xnDb8PmON, Sizes, Location, Design
<2>1. K2 /\ K3 /\ K12 /\ XX2v /\ H3aTc
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. Mode = "pull" /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
        /\ iv[m.x] = "none" /\ xlt[m.x] = NTok(r,rg[j][r])
  BY <2>1, <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF K12, SinfoUpdateA, Sizes, Location, Design
<2>3. xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xdst[m.x] = 0 /\ xst[m.x] # "none"
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, XX2v, Xids, InitPage, Sizes, Location, Design
<2>4. hw[m.x] = "none" /\ xst[m.x] = "posted"
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K3, H3aTc, Sizes, Location, Design
<2>5. QED
  BY <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>v4SBPcFxsJaB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m,
         PinInv, DRecvSinfo(j,r), SinfoUpdateA(j,r,m)
  PROVE xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst
        /\ xsrc[m.x] # rpg[j][r]
<2> USE ONLY <1>v4SBPcFxsJaB, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K8 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r] /\ xk[m.x] = "rd"
  BY <1>xnDb8PmON, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hd[r][rg[j][r]] = j /\ hp[r][rg[j][r]] \in PInst
  BY <2>1, <1>BU5tZLd, <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF K1, K8, Sizes, Location, Design
<2>4. xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst
  BY <2>1, <2>2, <2>3, <1>TyMeTUsFo, SMTT(10), Sizes, Location, Design DEF ExpPage, ExpInst, Sizes, Location, Design
<2>5. QED
  BY <2>4, <1>BU5tZLd, <1>JPlcx3f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1006_PdRDPort_PdSinfoFactsA


<1>yFvPLIUk9w9o2m1.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages,
         PinInv, DRecvSinfo(j,r), p # rpg[j][r], NoWriteInto(p)
  PROVE NoWriteInto(p)'
<2> USE ONLY <1>yFvPLIUk9w9o2m1, Sizes, Location, Design
<2>1. ychB /\ bpmgv4
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF SinfoUpdateA, ychB, bpmgv4, NoWriteInto, Writing, InFl, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cmyshTYf63iIia3y.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
  PROVE \A i \in Inst, s \in KSlots : kpin[i][s] => \A e \in krs[i][s] : e[3] # rpg[j][r]
<2> USE ONLY <1>cmyshTYf63iIia3y, Sizes, Location, Design
<2>1. K14 /\ K15 /\ K17 /\ NoFreeUnderRead /\ tqQeS
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_NoFreeUnderRead, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, TEJtP, Sizes, Location, Design
<2>2. rpg[j][r] \in Pages /\ j \in DInst /\ Loc(rpg[j][r]) = j /\ pst[rpg[j][r]] = "priv"
      /\ pr[rpg[j][r]] = r /\ pgn[rpg[j][r]] = rg[j][r] /\ ptl[rpg[j][r]] = 0
  BY <1>BU5tZLd, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW s \in KSlots, kpin[i][s],
             NEW e \in krs[i][s], e[3] = rpg[j][r]
      PROVE FALSE
<3>1. i = j /\ e[1] \in Rq /\ e[2] \in Gens /\ e[4] \in {0,1,2,3} /\ KHeld(e) /\ KData(i,e)
  BY P_PagePoolsDisjoint, <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K14, K15, NoFreeUnderRead, tqQeS, Sizes, Location, Design
<3>2. e[4] # 1 /\ e[1] = r /\ e[2] = rg[j][r]
  BY P_PagePoolsDisjoint, <2>2, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF KHeld, Sizes, Location, Design
<3>3. CASE e[4] \in {2,3}
  BY <3>3, <2>1, <2>3, <3>1, <3>2, Sizes, SMTT(10), Location, Design DEF K17, Gens, Sizes, Location, Design
<3>4. CASE e[4] = 0
  BY P_PagePoolsDisjoint, <3>4, <2>2, <2>3, <3>1, <3>2, <1>JPlcx3f, <1>EAwHPOZbsR, SMTT(10), Sizes, Location, Design DEF KData, Sizes, Location, Design
<3>5. QED
  BY <3>1, <3>2, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OToo3Uuh0pXd1pM3cX1V.         K14' /\ K15' /\ NoFreeUnderRead' => BaseKReadIntegrity'
  BY SMTT(10), Sizes, Location, Design DEF K14, K15, NoFreeUnderRead, BaseKReadIntegrity, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M1008_PdRDPort_PdSinfoKernelA

\* T2M-SCOPE R2M1009_PdRDPort_PdDRecvSinfoStepsA

<1>DMoX52wzbvP.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE K15'
<2> USE ONLY <1>DMoX52wzbvP, Sizes, Location, Design
<2>1. K15 /\ tqQeS /\ ZpUxx
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,ptl,plt,sfly,pvis,sled>>
  BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW s \in KSlots, kpin[i][s], NEW e \in krs[i][s], e[3] \in Pages
      PROVE KData(i,e)' /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]] = {}) /\ (IsP(i) => sled'[e[3]] = {})
<3>1. e[3] \in Pages /\ e[3] # rpg[j][r] /\ KData(i,e)
      /\ ((IsD(i) /\ e[4] # 1) => led[e[3]] = {}) /\ (IsP(i) => sled[e[3]] = {})
  BY <2>3, <2>1, <2>3, <1>cmyshTYf63iIia3y, SMTT(10), Sizes, Location, Design DEF K15, tqQeS, Sizes, Location, Design
<3>2. NoWriteInto(e[3])'
  BY <2>3, P_PagePoolsDisjoint, <3>1, <1>yFvPLIUk9w9o2m1, SMTT(10), Sizes, Location, Design DEF KData, Sizes, Location, Design
<3>3. led'[e[3]] = led[e[3]]
  BY <2>3, <2>1, <3>1, <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF SinfoUpdateA, ZpUxx, Sizes, Location, Design
<3>4. QED
  BY <2>3, P_PagePoolsDisjoint, <2>2, <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF KData, Sizes, Location, Design
<2>4. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>aoOPHCrHANXLXCdEt, <1>OQARa50EOjeTui9tkeC, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>4, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>5, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>2, <2>3, SMTT(10), V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF K15, TEJtP, tqQeS, KPages, Sizes, Location, Design
\* T2M-LOCAL-VISIBILITY

<1>InNUVH5SjPL5IkTRKtjiZV.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r), SFollow
  PROVE BaseSealOnlyLanded'
<2> HIDE DEF DRecvSinfo, NoWriteInto, CoreTypeOK, BaseSealOnlyLanded, BaseReadOwnLanded
<2>types. hw \in [Xids -> {"none","fly","issued","stop"}] /\ xdst \in [Xids -> 0..NP]
 /\ ph \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>InNUVH5SjPL5IkTRKtjiZV, V22_T_hw, V22_T_xdst, V22_T_ph, SMTT(5)
<2>destination. rpg[j][r] \in Pages /\ Loc(rpg[j][r])=j /\ pst[rpg[j][r]]="priv" /\ pr[rpg[j][r]]=r
 BY ONLY <1>InNUVH5SjPL5IkTRKtjiZV, <1>BU5tZLd, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<rpg,rhit,pst,pr,pgn,rg,ptl,pvis>>
 BY ONLY <1>InNUVH5SjPL5IkTRKtjiZV, ZenonT(5) DEF DRecvSinfo
<2>witness. PICK m \in net : m.x \in Xids /\
 hw'=[hw EXCEPT ![m.x]=IF Torn(m.x) THEN "stop" ELSE "fly"] /\
 xdst'=[xdst EXCEPT ![m.x]=rpg[j][r]] /\ ph'=[ph EXCEPT ![j][r]="rd"]
 BY ONLY <1>InNUVH5SjPL5IkTRKtjiZV, ZenonT(5) DEF DRecvSinfo
<2>nw_keep. ASSUME NEW p \in Pages, p # rpg[j][r], NoWriteInto(p)
 PROVE NoWriteInto(p)'
 <3>each. ASSUME NEW x \in Xids, Writing(x)' PROVE xdst'[x] # p
  <4>same. CASE x=m.x
   BY ONLY <2>nw_keep, <3>each, <4>same, <2>witness, <2>types, SMTT(5)
  <4>other. CASE x # m.x
   <5>pointframe. UNCHANGED <<hw[x],xdst[x]>>
    BY ONLY <3>each, <4>other, <2>witness, <2>types, SMTT(5)
   <5>qed. QED BY ONLY <2>nw_keep, <3>each, <5>pointframe, SMTT(5) DEF NoWriteInto, Writing, InFl
  <4>qed. QED BY ONLY <4>same, <4>other, SMTT(5)
 <3>qed. QED BY ONLY <3>each, SMTT(5) DEF NoWriteInto
<2>old. BaseSealOnlyLanded
 BY ONLY <1>InNUVH5SjPL5IkTRKtjiZV, V21_Inv_SealOnlyLanded, Sizes, Location, Design, SMTT(5) DEF SealOnlyLanded
<2>each. ASSUME NEW p \in Pages, pst'[p]="shared"
 PROVE ptl'[p]=PS /\ NoWriteInto(p)'
 <3>was. pst[p]="shared" /\ ptl[p]=PS /\ NoWriteInto(p)
  BY ONLY <2>each, <2>frame, <2>old, SMTT(5) DEF BaseSealOnlyLanded
 <3>apart. p # rpg[j][r]
  BY ONLY <3>was, <2>destination, SMTT(5)
 <3>qed. QED BY ONLY <2>each, <3>was, <3>apart, <2>nw_keep, <2>frame, SMTT(5)
<2>qed. QED BY ONLY <2>each, SMTT(5) DEF BaseSealOnlyLanded

\* T2M-LOCAL-VISIBILITY

<1>EKY82UFnB2hLayMDiGyehU.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE BaseKReadIntegrity'
<2> USE ONLY <1>EKY82UFnB2hLayMDiGyehU, Sizes, Location, Design
<2>1. K14' /\ K15' /\ NoFreeUnderRead'
  BY <1>IB9X2MMLUeo, <1>DMoX52wzbvP, <1>KCse5CQrEfKC1Q7fjHNxhiB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>aoOPHCrHANXLXCdEt, <1>mD6mxs7tm9qowNmTYYGY, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RD_SFrame /\ UNCHANGED spst
 BY <2>2, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>3, <2>1, <1>OToo3Uuh0pXd1pM3cX1V, SMTT(10), Sizes, Location, Design DEF RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M1009_PdRDPort_PdDRecvSinfoStepsA


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

<1>e1BDbxTNyM.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
 PROVE \E m \in net : SinfoUpdateA(j,r,m) /\ m.x \in Xids /\ xk[m.x]="rd" /\ xst[m.x]="posted" /\ hw[m.x]="none"
<2> USE ONLY <1>e1BDbxTNyM, Sizes, Location, Design
<2>1. PICK m \in net : SinfoUpdateA(j,r,m)
 BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xk[m.x]="rd" /\ xst[m.x]="posted" /\ hw[m.x]="none" /\ m.x \in Xids
 BY <2>1, <1>xnDb8PmON, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FMLcSnAH7zzGlI.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE K15'
 BY ONLY <1>FMLcSnAH7zzGlI, Sizes, Location, Design, <1>DMoX52wzbvP, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>XH6n1gIJfet1R9FdfOQieZdXY.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>XH6n1gIJfet1R9FdfOQieZdXY, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>aoOPHCrHANXLXCdEt, <1>mD6mxs7tm9qowNmTYYGY, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>EKY82UFnB2hLayMDiGyehU, <1>llETZGACL, <1>ESCk6pb406w, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>xoFtUJf6XVFyx9CTrlDvy4C9FK.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE NoFreeUnderRead'
 BY ONLY <1>xoFtUJf6XVFyx9CTrlDvy4C9FK, Sizes, Location, Design, <1>KCse5CQrEfKC1Q7fjHNxhiB, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>zOZtrbTWV87KGeBpDrFx2mbKp.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE SealOnlyLanded'
<2> USE ONLY <1>zOZtrbTWV87KGeBpDrFx2mbKp, Sizes, Location, Design
<2>1. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>aoOPHCrHANXLXCdEt, <1>OQARa50EOjeTui9tkeC, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>InNUVH5SjPL5IkTRKtjiZV, <1>TTpKhOymx73KMovRt1O, <1>ca3ak7RUGjY, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>qmmnGcYLb5h.         PinInv => CoreTypeOK
 BY ZenonT(10), V21_Inv_BaseTypeOK, Sizes, Location, Design DEF Sizes, Location, Design


<1>R3YtSwiPG37j.        
 PinInv => iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY V22_T_iv, V22_T_pst, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>qn3V9VgQ3IT7UNf9kUAxnv.         PinInv => RD_R2HardwareTypes
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY V22_T_hok, V22_T_hw, V22_T_iv, V22_T_xst, SMTT(5) DEF RD_R2HardwareTypes

\* T2M-END R2M0977_PdRDR2Types


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

<1>dCbPH94gfk8s.        
 ASSUME PinInv, SFollow, \A x \in Xids : ~(hw[x]="fly" /\ hw'[x] \in {"issued","stop"})
 PROVE UNCHANGED xprefixOK
<2> USE ONLY <1>dCbPH94gfk8s, Sizes, Location, Design
<2>1. STypeOK BY <1>lQA2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, SMTT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>3. CASE B2 BY <2>1, <2>3, <1>HyTxass4cKRoY43Ha, SMTT(10), Sizes, Location, Design DEF RD_XPrefixUpdate, STypeOK, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1346_PdRDR2SI4Base


<1>dKfD1F52jdTVvs6JE.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE P_SI4'
<2> USE ONLY <1>dKfD1F52jdTVvs6JE, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,xr,xg,xp,xk,nx,xst>>
 BY <1>aoOPHCrHANXLXCdEt, <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. (B2 => SI4) /\ K3 /\ S3 /\ STypeOK /\ CoreTypeOK
 BY <1>lQA2, SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_K3, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_S3, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2a. RD_R2HardwareTypes BY <1>qn3V9VgQ3IT7UNf9kUAxnv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : SinfoUpdateA(j,r,m) /\ m.x \in Xids /\ xk[m.x]="rd" /\ xst[m.x]="posted" /\ hw[m.x]="none"
 BY <1>e1BDbxTNyM, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ~Torn(m.x)
 BY <2>2, <2>3, Design, SMTT(10), Sizes, Location DEF S3, Torn, Sizes, Location, Design
<2>5. RD_SI4Keys BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF RD_SI4Keys, CoreTypeOK, Sizes, Location, Design
<2>6. B2 => RD_EntryRange
 BY <2>1, <2>2, <2>2a, <2>3, SMTT(10), Sizes, Location, Design DEF RD_EntryRange, SI4, SinfoUpdateA, STypeOK, RD_R2HardwareTypes, Sizes, Location, Design
<2>7. \A x \in Xids : ~(hw[x]="fly" /\ hw'[x] \in {"issued","stop"})
 BY <2>2a, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF SinfoUpdateA, RD_R2HardwareTypes, Sizes, Location, Design
<2>8. RD_PrefixBack BY <2>2a, <2>3, <2>4, <2>7, <1>dCbPH94gfk8s, SMTT(10), Sizes, Location, Design DEF RD_PrefixBack, SinfoUpdateA, RD_R2HardwareTypes, Sizes, Location, Design
<2>9. RD_CoverBack
 BY <2>1, <2>2, <2>2a, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF RD_CoverBack, RD_Close, SinfoUpdateA, RD_R2HardwareTypes, K3, CqeHw, InFl, Sizes, Location, Design
<2>10. CASE B2 BY <2>1, <2>5, <2>6, <2>8, <2>9, <2>10, <1>O0v6w7ZUTgX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>11. CASE ~B2 BY <2>11, SMTT(10), Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>12. QED BY <2>10, <2>11, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1348_PdRDR2SI4_DRecvSinfo


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

<1>TOr4fKrYmpv8zPUO1Lc04.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE RD_RegSafe
<2> USE ONLY <1>TOr4fKrYmpv8zPUO1Lc04, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 BY <1>R3YtSwiPG37j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
 BY <2>1, SMTT(10), Sizes, Location, Design DEF DRecvSinfo, instV, kV, rtV, Sizes, Location, Design
<2>3. ASSUME NEW y \in Xids, iv'[y]="reg" PROVE pst'[xsrc[y]] # "quar"
 <3>1. iv[y]="reg" BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. y<nx /\ xk[y]="wr" /\ xsrc[y] \in Pages /\ IsP(Loc(xsrc[y])) /\ y \in led[xsrc[y]] /\ pst[xsrc[y]] # "quar"
 BY <3>1, <1>XdqzW5jl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3a. \A i \in Inst,u \in Rq : Active(i,u) => rpg[i][u] \in Pages /\ Loc(rpg[i][u])=i
 BY <1>eCzjL4PMdcNbssJhsk, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3b. \A x \in Xids : xdst[x] \in Pages => IsD(Loc(xdst[x]))
 BY <1>b8FOS7RlDgygbk6kJ4t, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>1, <2>3, <3>1, <3>2, <3>3a, <3>3b, Design, Sizes, Location, SMTT(20) DEF DRecvSinfo, instV, kV, rtV, PageToG, GTo, Active, Held, OwnedBy, IsD, IsP, PInst, DInst, Inst, NL, GrownOf, GiveUpTo, FreeOrDrain, GiveUpToN, AfterEv, GFr, Rq, Gens, Xids, Sizes, Location, Design
<2>4. RD_RegSafe BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF RD_RegSafe, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

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


<1>UNTqZHx36Q56B9Uxv.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE P_SI5'
<2> USE ONLY <1>UNTqZHx36Q56B9Uxv, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K8 /\ K9 /\ K10 /\ K7 /\ QuarNoReg /\ CoreTypeOK
 BY SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_RegSafe BY <1>TOr4fKrYmpv8zPUO1Lc04, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. RD_PFrame /\ UNCHANGED xsrc
 BY <1>aoOPHCrHANXLXCdEt, <1>mD6mxs7tm9qowNmTYYGY, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3a. RD_R2HardwareTypes /\ xdst \in [Xids -> 0..NP] /\ nx \in 1..(MX+1)
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>UNTqZHx36Q56B9Uxv, V22_T_hok, V22_T_hw, V22_T_iv, V22_T_nx, V22_T_xdst, V22_T_xst, SMTT(5) DEF RD_R2HardwareTypes

<2>3b. PICK m \in net : SinfoUpdateA(j,r,m) /\ m.x \in Xids /\ xk[m.x]="rd" /\ xst[m.x]="posted" /\ hw[m.x]="none"
 BY <1>e1BDbxTNyM, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3c. UNCHANGED <<pst,pr,pgn,xr,xg,nx>> BY <1>fKJsgwXHCSpm1X, ZenonT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. RD_NoStop /\ nx' \in Int /\ nx' >= nx
 BY <2>3a, <2>3b, <2>3c, Sizes, SMTT(10), Location, Design DEF RD_NoStop, SinfoUpdateA, RD_R2HardwareTypes, Sizes, Location, Design
<2>7. B2 => RD_KeyOnSource BY <2>3c, SMTT(10), Sizes, Location, Design DEF RD_KeyOnSource, Sizes, Location, Design
<2>9. RD_StopBack
 BY <2>3a, <2>3b, <2>3c, SMTT(20), Sizes, Location, Design DEF RD_StopBack, Held, SinfoUpdateA, RD_R2HardwareTypes, Sizes, Location, Design
<2>10. QED BY <2>4, <2>5, <2>6, <2>7, <2>9, <1>QYS9t7p6Fr, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1379_PdRDR2SI5_DRecvSinfo


<1> QED BY <1>XH6n1gIJfet1R9FdfOQieZdXY, <1>UNTqZHx36Q56B9Uxv, <1>dKfD1F52jdTVvs6JE, <1>FMLcSnAH7zzGlI, <1>zOZtrbTWV87KGeBpDrFx2mbKp, <1>xoFtUJf6XVFyx9CTrlDvy4C9FK, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DRecvSinfo_02_01 SHA 28c1efb153842d9e79fe4d2e59489088e55fbb8df8e02fb7203c16d2d0ecab02
USE DEF V21_Inv_HitIdentity, V21_Inv_K11, V21_Inv_NoEvictUnderRDMA, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_ReadOwnLanded, V21_Inv_SendOwnLanded, V22_T_krs, V22_T_rpgS, V22_T_sentry, V22_T_squar, V22_T_xsrcS
HIDE DEF P_PagePoolsDisjoint, Part_DRecvSinfo_01_02, V21_Inv_K10, V21_Inv_K14, V21_Inv_K15, V21_Inv_K7, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_QuarNoReg, V21_Inv_S3, V21_Inv_SealOnlyLanded, V22_T_hok, V22_T_iv, V22_T_pst, V22_T_rpg, V22_T_xst
THEOREM Part_DRecvSinfo_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE (ReadOwnLanded)' /\ (SendOwnLanded)' /\ (HitIdentity)' /\ (P_SI1)' /\ (P_SI3)' /\ (P_SI6)' /\ (PrefcMatchesHolders)' /\ (K3)' /\ (K9)' /\ (K17)' /\ (QuarNeverMapped)'
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

           RD_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
                    spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])

           RD_XPrefixUpdate == xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RD_Valid(x) ELSE xprefixOK[x]]

           RD_DPreUpdate == dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                                    THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                                          (IF hw[x]="issued" THEN xprefixOK[x] ELSE RD_Valid(x))
                                    ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
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

           SinfoUpdateA(j,r,m) ==
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

           RD_NoStop == \A x \in Xids : ~(hw[x] \in {"fly","issued"} /\ hw'[x]="stop")

           RD_ReadBack == \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} =>
                          ph[j][r] \in {"run","ovl"} /\ rpg'[j][r]=rpg[j][r]

           RD_ReadPart == B2 => \A j \in DInst,r \in Rq : ph[j][r] \in {"run","ovl"} => dpreOK[rpg[j][r]]

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

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_SendShared, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, SinfoUpdateA, RD_NoStop, RD_ReadBack, RD_ReadPart, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, pNoIu82GK8uw

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
<2> HIDE DEF PinInv, STypeOK, CoreTypeOK, SFollow, RD_MUpdate, RD_PFrame
<2>map_type. smap \in [PInst -> [Rq -> {0} \cup SPages]]
 BY ONLY <1>zMokmOdGw, V22_T_smap, SMTT(5)
<2>choice_type. schoice \in [PInst -> [Rq -> BOOLEAN]]
 BY ONLY <1>zMokmOdGw, V22_T_schoice, SMTT(5)
<2>rg_frame. \A i \in PInst, r \in Rq : rg'[i][r]=rg[i][r]
 BY ONLY <1>zMokmOdGw, ZenonT(5) DEF RD_PFrame
<2>off. CASE ~B2
 BY ONLY <1>zMokmOdGw, <2>off, V22_SF_Off, ZenonT(5) DEF sV
<2>on. CASE B2
 <3>map_effect. smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]
  BY ONLY <1>zMokmOdGw, <2>on, V22_SF_Map, SMTT(5)
 <3>choice_effect. schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]
  BY ONLY <1>zMokmOdGw, <2>on, V22_SF_Choice, SMTT(5)
 <3>map_same. smap'=smap
  BY ONLY <2>map_type, <2>rg_frame, <3>map_effect, SMTT(5)
 <3>choice_same. schoice'=schoice
  BY ONLY <2>choice_type, <2>rg_frame, <3>choice_effect, SMTT(5)
 <3>qed. QED BY ONLY <3>map_same, <3>choice_same, SMTT(5)
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

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

<1>UukBaziv337.         BaseSendOwnLanded' /\ RD_SendShared' => SendOwnLanded'
 BY SMTT(10), Sizes, Location, Design DEF SendOwnLanded, RD_SendShared, Sizes, Location, Design
\* T2M-LOCAL-VISIBILITY

<1>d8fotYKuE.        
 ASSUME PinInv, B2, NEW x \in Xids, xk[x]="rd", xst[x]="posted"
 PROVE \A p \in xsrcS[x] \cup xsrcP[x] : sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])
<2> USE ONLY <1>d8fotYKuE, Sizes, Location, Design
<2>1. SI8 /\ SI4 /\ NoEvictUnderRDMA /\ SharedImmutable /\ STypeOK
 BY <1>lQA2, SMTT(10), V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. xsrcP[x]={} /\ xsrcS[x] \subseteq SPages
 BY <2>1, SMTT(10), Sizes, Location, Design DEF SI4, STypeOK, Sizes, Location, Design
<2>3. ASSUME NEW p \in xsrcS[x] \cup xsrcP[x]
       PROVE sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])
 <3>1. p \in xsrcS[x] /\ p \in SPages /\ SAccess(x)
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF SI8, SAccess, Sizes, Location, Design
 <3>2. QED BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, SharedImmutable, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1001_PdRDSourceKeys


<1>mD6mxs7tm9qowNmTYYGY.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>mD6mxs7tm9qowNmTYYGY, Sizes, Location, Design, SMTT(10) DEF DRecvSinfo, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aoOPHCrHANXLXCdEt.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>aoOPHCrHANXLXCdEt, Sizes, Location, Design
<2>1. RD_PhType /\ RD_RgType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>mD6mxs7tm9qowNmTYYGY, Sizes, SMTT(10), Location, Design DEF DRecvSinfo, instV, kV, rtV, RD_PFrame, PInst, DInst, Inst, NL, IsD, RD_PhType, RD_RgType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JPlcx3f.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>q2QyUi1oSBW.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, Active(i,r)
  PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (~rhit[i][r] => pst[rpg[i][r]] = "priv" /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r])
        /\ (IsP(i) => ~rhit[i][r])
        /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  BY ONLY <1>q2QyUi1oSBW, Sizes, Location, Design, SMTT(10) DEF K8, Active, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hmZBL0hE.        
  ASSUME NEW i \in DInst, NEW r \in Rq, K9, rhit[i][r]
  PROVE /\ ph[i][r] \in {"run","ovl","end"}
        /\ (ph[i][r] \in {"run","ovl"} => pst[rpg[i][r]] = "shared" /\ Tag(r,rg[i][r]) \in sled[rpg[i][r]])
  BY ONLY <1>hmZBL0hE, Sizes, Location, Design, Zenon DEF K9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TyMeTUsFo.        
  ASSUME NEW x \in Xids, XX2v, K2, x < nx
  PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>TyMeTUsFo, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, XX2v, Xids, Sizes, Location, Design
\* T2M-END R2M0814_PdRDPort_PdFactsA

\* T2M-SCOPE R2M0819_PdRDPort_PdTypeProofs

<1>fKJsgwXHCSpm1X.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
  PROVE /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : SinfoUpdateA(j,r,m)
        /\ UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hp, kfly, kpin, krs, net, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
<2> USE ONLY <1>fKJsgwXHCSpm1X, Sizes, Location, Design
<2>1. kmCLbA
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(10), Sizes, Location DEF DRecvSinfo, SinfoUpdateA, GenOK, kmCLbA, rtV, instV, kV, ghV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BU5tZLd.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
  PROVE LET q == rpg[j][r] g == rg[j][r] IN
        /\ j \in DInst /\ q \in Pages /\ Loc(q) = j
        /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
        /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
        /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
<2> USE ONLY <1>BU5tZLd, Sizes, Location, Design
<2>1. K8 /\ K9
  BY SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Mode = "pull" /\ j \in DInst /\ ph[j][r] = "wait"
  BY <1>fKJsgwXHCSpm1X, <1>JPlcx3f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ~rhit[j][r]
  BY <2>1, <2>2, <1>hmZBL0hE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, <1>q2QyUi1oSBW, SMTT(10), Sizes, Location, Design DEF K9, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xnDb8PmON.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m,
         PinInv, DRecvSinfo(j,r), SinfoUpdateA(j,r,m)
  PROVE /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
        /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
        /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
<2> USE ONLY <1>xnDb8PmON, Sizes, Location, Design
<2>1. K2 /\ K3 /\ K12 /\ XX2v /\ H3aTc
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. Mode = "pull" /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
        /\ iv[m.x] = "none" /\ xlt[m.x] = NTok(r,rg[j][r])
  BY <2>1, <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF K12, SinfoUpdateA, Sizes, Location, Design
<2>3. xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xdst[m.x] = 0 /\ xst[m.x] # "none"
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, XX2v, Xids, InitPage, Sizes, Location, Design
<2>4. hw[m.x] = "none" /\ xst[m.x] = "posted"
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K3, H3aTc, Sizes, Location, Design
<2>5. QED
  BY <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>v4SBPcFxsJaB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m,
         PinInv, DRecvSinfo(j,r), SinfoUpdateA(j,r,m)
  PROVE xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst
        /\ xsrc[m.x] # rpg[j][r]
<2> USE ONLY <1>v4SBPcFxsJaB, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K8 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r] /\ xk[m.x] = "rd"
  BY <1>xnDb8PmON, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hd[r][rg[j][r]] = j /\ hp[r][rg[j][r]] \in PInst
  BY <2>1, <1>BU5tZLd, <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF K1, K8, Sizes, Location, Design
<2>4. xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst
  BY <2>1, <2>2, <2>3, <1>TyMeTUsFo, SMTT(10), Sizes, Location, Design DEF ExpPage, ExpInst, Sizes, Location, Design
<2>5. QED
  BY <2>4, <1>BU5tZLd, <1>JPlcx3f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1006_PdRDPort_PdSinfoFactsA


<1>GhhfIqfRTVMR3YmYATdo4.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r), SFollow
  PROVE BaseReadOwnLanded'
<2> HIDE DEF DRecvSinfo, NoWriteInto, CoreTypeOK, BaseSealOnlyLanded, BaseReadOwnLanded
<2>types. hw \in [Xids -> {"none","fly","issued","stop"}] /\ xdst \in [Xids -> 0..NP]
 /\ ph \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>GhhfIqfRTVMR3YmYATdo4, V22_T_hw, V22_T_xdst, V22_T_ph, SMTT(5)
<2>destination. rpg[j][r] \in Pages /\ Loc(rpg[j][r])=j /\ pst[rpg[j][r]]="priv" /\ pr[rpg[j][r]]=r
 BY ONLY <1>GhhfIqfRTVMR3YmYATdo4, <1>BU5tZLd, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<rpg,rhit,pst,pr,pgn,rg,ptl,pvis>>
 BY ONLY <1>GhhfIqfRTVMR3YmYATdo4, ZenonT(5) DEF DRecvSinfo
<2>witness. PICK m \in net : m.x \in Xids /\
 hw'=[hw EXCEPT ![m.x]=IF Torn(m.x) THEN "stop" ELSE "fly"] /\
 xdst'=[xdst EXCEPT ![m.x]=rpg[j][r]] /\ ph'=[ph EXCEPT ![j][r]="rd"]
 BY ONLY <1>GhhfIqfRTVMR3YmYATdo4, ZenonT(5) DEF DRecvSinfo
<2>nw_keep. ASSUME NEW p \in Pages, p # rpg[j][r], NoWriteInto(p)
 PROVE NoWriteInto(p)'
 <3>each. ASSUME NEW x \in Xids, Writing(x)' PROVE xdst'[x] # p
  <4>same. CASE x=m.x
   BY ONLY <2>nw_keep, <3>each, <4>same, <2>witness, <2>types, SMTT(5)
  <4>other. CASE x # m.x
   <5>pointframe. UNCHANGED <<hw[x],xdst[x]>>
    BY ONLY <3>each, <4>other, <2>witness, <2>types, SMTT(5)
   <5>qed. QED BY ONLY <2>nw_keep, <3>each, <5>pointframe, SMTT(5) DEF NoWriteInto, Writing, InFl
  <4>qed. QED BY ONLY <4>same, <4>other, SMTT(5)
 <3>qed. QED BY ONLY <3>each, SMTT(5) DEF NoWriteInto
<2> DEFINE Rec(a,b) == LET q == rpg[a][b] IN
 /\ q \in Pages /\ NoWriteInto(q)
 /\ \/ ~rhit[a][b] /\ pst[q]="priv" /\ pr[q]=b /\ pgn[q]=rg[a][b] /\ ptl[q]=NTok(b,rg[a][b]) /\ pvis[q]
    \/ rhit[a][b] /\ pst[q]="shared" /\ ptl[q]=PS
<2> HIDE DEF Rec, K8
<2>old. BaseReadOwnLanded /\ K8
 BY ONLY <1>GhhfIqfRTVMR3YmYATdo4, V21_Inv_ReadOwnLanded, V21_Inv_K8, Sizes, Location, Design, SMTT(5) DEF ReadOwnLanded
<2>domain. DInst \subseteq Inst
 BY ONLY Sizes, SMTT(5) DEF DInst, Inst, NL, Sizes
<2>each. ASSUME NEW a \in DInst, NEW b \in Rq, ph'[a][b] \in {"run","ovl"}
 PROVE Rec(a,b)'
 <3>oldphase. ph[a][b]=ph'[a][b] /\ (a # j \/ b # r)
  BY ONLY <1>GhhfIqfRTVMR3YmYATdo4, <2>each, <2>domain, <2>witness, <2>types, SMTT(5)
 <3>was. Rec(a,b)
  BY ONLY <2>each, <3>oldphase, <2>old, SMTT(5) DEF Rec, BaseReadOwnLanded
 <3>location. Loc(rpg[a][b])=a
  BY ONLY <2>each, <3>oldphase, <2>domain, <2>old, SMTT(5) DEF K8, Active
 <3>apart. rpg[a][b] # rpg[j][r]
  BY ONLY <3>was, <3>location, <3>oldphase, <2>destination, SMTT(5) DEF Rec
 <3>nowrite. NoWriteInto(rpg[a][b])'
  BY ONLY <3>was, <3>apart, <2>nw_keep, <2>frame, SMTT(5) DEF Rec
 <3>qed. QED BY ONLY <3>was, <3>nowrite, <2>frame, SMTT(5) DEF Rec
<2>qed. QED BY ONLY <2>each, SMTT(5) DEF BaseReadOwnLanded, Rec

\* T2M-LOCAL-VISIBILITY

<1>bEWlnFjXclQY6bNuEinmL.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r), SFollow
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>bEWlnFjXclQY6bNuEinmL, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ K2 /\ K3 /\ K4 /\ K11 /\ K12 /\ tBG7n /\ ychB /\ LGvs /\ ZpUxx /\ bpmgv4
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K11, V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, BaseSafety, SendOwnLanded, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : SinfoUpdateA(j,r,m)
        /\ UNCHANGED <<drep, dsucc, gen, hd, hp, net, nx, ptl, sfly, sled, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : SinfoUpdateA(j,r,m)
  BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. /\ m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[j][r]
       /\ xk[m.x] = "rd" /\ xnt[m.x] = NTok(r,rg[j][r]) /\ xlt[m.x] = NTok(r,rg[j][r])
       /\ xdst[m.x] = 0 /\ iv[m.x] = "none" /\ hw[m.x] = "none" /\ xst[m.x] = "posted"
       /\ xd[m.x] = j /\ xsrc[m.x] \in Pages /\ Loc(xsrc[m.x]) \in PInst /\ xsrc[m.x] # rpg[j][r]
  BY <2>3, <1>xnDb8PmON, <1>v4SBPcFxsJaB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. LET q == rpg[j][r] g == rg[j][r] IN
       /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r] /\ ~rhit[j][r]
       /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
       /\ rx[j][r] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0
  BY <1>BU5tZLd, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, Design, Location, Sizes, SMTT(10) DEF CqeHw, DInst, ExpInst, ExpPage, InFl, InitInst, InitPage, Inst, IsD, IsP, K11, K12, K2, K3, K4, NL, BaseSendOwnLanded, SinfoUpdateA, tBG7n, ychB, LGvs, ZpUxx, bpmgv4, Tag, KPages, SendOwnLanded, Sizes, Location, Design

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


<1>e1BDbxTNyM.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
 PROVE \E m \in net : SinfoUpdateA(j,r,m) /\ m.x \in Xids /\ xk[m.x]="rd" /\ xst[m.x]="posted" /\ hw[m.x]="none"
<2> USE ONLY <1>e1BDbxTNyM, Sizes, Location, Design
<2>1. PICK m \in net : SinfoUpdateA(j,r,m)
 BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xk[m.x]="rd" /\ xst[m.x]="posted" /\ hw[m.x]="none" /\ m.x \in Xids
 BY <2>1, <1>xnDb8PmON, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jshvGt7ng.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE RD_SendShared'
<2> USE ONLY <1>jshvGt7ng, Sizes, Location, Design
<2>1. RD_SendShared /\ STypeOK /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 BY <1>lQA2, SMTT(10), V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF CoreTypeOK, Safety, BaseSafety, SendOwnLanded, RD_SendShared, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<xsrcS,xsrcP,xr,xg>>
 BY <1>uaJsMuSZCFU, <1>cIrFCXuTtPxBU, <1>mD6mxs7tm9qowNmTYYGY, <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : SinfoUpdateA(j,r,m) /\ m.x \in Xids /\ xk[m.x]="rd" /\ xst[m.x]="posted" /\ hw[m.x]="none"
 BY <1>e1BDbxTNyM, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. B2 => \A p \in xsrcS[m.x] \cup xsrcP[m.x] : sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[m.x],xg[m.x])
 BY <2>3, <1>d8fotYKuE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF RD_SendShared, RD_SFrame, SinfoUpdateA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xmtH4Yg2cHZ9b.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE RD_ReadPart'
<2> USE ONLY <1>xmtH4Yg2cHZ9b, Sizes, Location, Design
<2>1. RD_PhType /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>xmtH4Yg2cHZ9b, V22_T_hw, V22_T_ph, SMTT(5) DEF RD_PhType

<2>2. PICK m \in net : SinfoUpdateA(j,r,m) /\ m.x \in Xids /\ xk[m.x]="rd" /\ xst[m.x]="posted" /\ hw[m.x]="none"
 BY <1>e1BDbxTNyM, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RD_NoStop /\ RD_ReadBack
 BY <2>1, <2>2, <1>fKJsgwXHCSpm1X, Sizes, SMTT(10), Location, Design DEF RD_NoStop, RD_ReadBack, RD_PhType, SinfoUpdateA, DInst, Inst, NL, Sizes, Location, Design
<2>4. QED BY <2>3, <1>FQ5lBNYlCkhQTVYF, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1011_PdRDSinfoShared


<1>U82KkeTaWMN9zx6kspmp0588.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE ReadOwnLanded'
 BY ONLY <1>U82KkeTaWMN9zx6kspmp0588, Sizes, Location, Design, <1>xmtH4Yg2cHZ9b, <1>RCKQzj633zU, <1>GhhfIqfRTVMR3YmYATdo4, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>kqFKPpavHoTaRWdPZLKa5XKL.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE SendOwnLanded'
 BY ONLY <1>kqFKPpavHoTaRWdPZLKa5XKL, Sizes, Location, Design, <1>jshvGt7ng, <1>UukBaziv337, <1>bEWlnFjXclQY6bNuEinmL, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>RfpdXVNuF9HLA2nVOp5lV8kOiwO5WU.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>RfpdXVNuF9HLA2nVOp5lV8kOiwO5WU, Sizes, Location, Design, <1>RWvTkqQsVDwnRge2Q5E0XkOXe, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>I3yLpp2zYdpi0Y.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE P_SI1'
 BY ONLY <1>I3yLpp2zYdpi0Y, Sizes, Location, Design, <1>aoOPHCrHANXLXCdEt, <1>mD6mxs7tm9qowNmTYYGY, <1>VDsAIqq0, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>u466JDGLvLkgLa.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE P_SI3'
 BY ONLY <1>u466JDGLvLkgLa, Sizes, Location, Design, <1>aoOPHCrHANXLXCdEt, <1>mD6mxs7tm9qowNmTYYGY, <1>FPQA7M3w, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rkTp18UMCHHc00.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE P_SI6'
 BY ONLY <1>rkTp18UMCHHc00, Sizes, Location, Design, <1>aoOPHCrHANXLXCdEt, <1>mD6mxs7tm9qowNmTYYGY, <1>TUh8WMSa, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Z9gVEDxyVMOkwyZRkJ4hCr.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
 PROVE HitIdentity'
 BY ONLY <1>Z9gVEDxyVMOkwyZRkJ4hCr, Sizes, Location, Design, <1>aoOPHCrHANXLXCdEt, <1>mD6mxs7tm9qowNmTYYGY, <1>ueaxxwWI, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1012_PdRDBatch_DRecvSinfo


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


<1>mDx6Eyqoqa.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE K3'
<2> USE ONLY <1>mDx6Eyqoqa, Sizes, Location, Design
<2>1. K3 /\ K2 /\ K12 /\ DnMxp /\ DpA4 /\ fr1A /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : pNoIu82GK8uw(j,r,m)
        /\ UNCHANGED <<drep, dsucc, gen, hd, hp, net, nx, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
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
  BY <2>1, <2>2, <2>3, <2>4, <2>5, Design, Location, Sizes, SMTT(10) DEF CqeHw, DInst, ExpInst, ExpPage, InFl, InitInst, InitPage, Inst, IsD, IsP, K3, NL, pNoIu82GK8uw, DnMxp, DpA4, fr1A, JjZ1PO, Tag, Pages, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>J71jdvvCZG.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE K9'
<2> USE ONLY <1>J71jdvvCZG, Sizes, Location, Design
<2>1. K9 /\ K8 /\ K12 /\ DnMxp /\ DpA4 /\ fr1A /\ dcfPK /\ AydA /\ QC9Q /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K12, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
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
  BY <2>1, <2>2, <2>3, <2>4, <2>5, Design, Location, Sizes, SMTT(10) DEF Active, CqeHw, DInst, Inst, IsD, IsP, K12, K8, K9, NL, OwnedBy, pNoIu82GK8uw, DnMxp, DpA4, fr1A, dcfPK, AydA, QC9Q, JjZ1PO, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>m2pPflWCnVR.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE K17'
<2> USE ONLY <1>m2pPflWCnVR, Sizes, Location, Design
<2>1. K17 /\ c02OO /\ AydA
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K17, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : pNoIu82GK8uw(j,r,m)
        /\ UNCHANGED <<kpin, krs, rg, rpg>>
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
  BY <2>1, <2>2, <2>3, <2>4, <2>5, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K17, NL, pNoIu82GK8uw, c02OO, AydA, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>yLBATEZE7zJ5rDxSy7c4cca.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>yLBATEZE7zJ5rDxSy7c4cca, Sizes, Location, Design
<2>1. QuarNeverMapped /\ AydA
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_KStruct, V21_Inv_QuarNeverMapped, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : pNoIu82GK8uw(j,r,m)
        /\ UNCHANGED <<pst, rpg>>
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
  BY <2>1, <2>2, <2>3, <2>4, <2>5, Design, Location, Sizes, SMTT(10) DEF Active, DInst, Inst, IsD, IsP, NL, QuarNeverMapped, pNoIu82GK8uw, AydA, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Pcrx9UCAeBYC.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE K3'
  BY ONLY <1>Pcrx9UCAeBYC, Sizes, Location, Design, <1>mDx6Eyqoqa, V21_Inv_K3 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>JJhs4fVuevb1.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE K9'
  BY ONLY <1>JJhs4fVuevb1, Sizes, Location, Design, <1>J71jdvvCZG, V21_Inv_K9 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>huaSSfV1EGn3u.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE K17'
  BY ONLY <1>huaSSfV1EGn3u, Sizes, Location, Design, <1>m2pPflWCnVR, V21_Inv_K17 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>J8xMBxIivlAlaxM2if0QYGvWI.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>J8xMBxIivlAlaxM2if0QYGvWI, Sizes, Location, Design, <1>yLBATEZE7zJ5rDxSy7c4cca, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>U82KkeTaWMN9zx6kspmp0588, <1>kqFKPpavHoTaRWdPZLKa5XKL, <1>Z9gVEDxyVMOkwyZRkJ4hCr, <1>I3yLpp2zYdpi0Y, <1>u466JDGLvLkgLa, <1>rkTp18UMCHHc00, <1>RfpdXVNuF9HLA2nVOp5lV8kOiwO5WU, <1>Pcrx9UCAeBYC, <1>JJhs4fVuevb1, <1>huaSSfV1EGn3u, <1>J8xMBxIivlAlaxM2if0QYGvWI, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF Part_DRecvSinfo_02_01, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K11, V21_Inv_K12, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_ReadOwnLanded, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V22_SF_Choice, V22_SF_Map, V22_SF_Off, V22_T_hw, V22_T_krs, V22_T_nx, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_squar, V22_T_xdst, V22_T_xsrcS
====
