---- MODULE PdFinalAction_DBadLen ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_ef40c909f9f48a73, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_DBadLen_01

\* Complete original body PdFinalPart_DBadLen_02_02 SHA c9bc1515102196f3f6b1ee930faac0d138b425b12e064288e97ad388c8fc9313
HIDE DEF AuxType_ef40c909f9f48a73, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_DBadLen_01_01, Part_DBadLen_01_02, Part_DBadLen_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K11, V21_Inv_K13, V21_Inv_K16, V21_Inv_K17, V21_Inv_K5, V21_Inv_K6, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S3, V21_Inv_S4, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SendOwnLanded, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_plt, V22_T_pqp, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xsrc, V22_T_xst
THEOREM Part_DBadLen_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE (P_SI5)' /\ (NoFreeUnderRead)' /\ (P_SI2)' /\ (SharedLedRef)' /\ (SealOnlyLanded)' /\ (NoEvictUnderRDMA)'
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

           RD_HoldersShared == /\ \A h \in rpgS : spst[h[4]]="shared"
                               /\ \A x \in sentry : \A p \in xsrcS[x] : spst[p]="shared"
                               /\ \A h \in squar : spst[h[2]]="shared"

           \* T2M-LOCAL-VISIBILITY

           RD_NoStop == \A x \in Xids : ~(hw[x] \in {"fly","issued"} /\ hw'[x]="stop")

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

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_HoldersShared, RD_NoStop, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, eTGFkYYLEEr9b, AKc36xQrbcwQ8AX, RD_RegSafe, RD_KeyOnSource, RD_StopBack, RD_SI5Quar, RD_SI5Stop, RD_SI5Map

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

<1>Er7u1MEVt2m49DZA9nL.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>Er7u1MEVt2m49DZA9nL, Sizes, Location, Design
<2>1. BaseSealOnlyLanded /\ ZCaSEo /\ ychB /\ ZpUxx /\ PwqP6 /\ vn9M /\ jyWjj /\ gv2_ /\ X6zX5 /\ vwKWM /\ a4GqBP /\ bpmgv4 /\ H3aTc
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, TEJtP, BaseSafety, SealOnlyLanded, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>zmK3iQq0h2S, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, eTGFkYYLEEr9b, AKc36xQrbcwQ8AX, EvidenceAt, InFl, IsD, IsP, NoWriteInto, PageTo, PinBlocks, BaseSealOnlyLanded, ZCaSEo, ychB, ZpUxx, PwqP6, vn9M, jyWjj, gv2_, X6zX5, vwKWM, a4GqBP, bpmgv4, H3aTc, Tag, Writing, KPages, SealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M0761_PdRDPort_PdD2DBadLen_SealOnlyLanded


<1>H4rrlj4EsCG7luarvRyhSZGM.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>H4rrlj4EsCG7luarvRyhSZGM, Sizes, Location, Design
<2>1. UNCHANGED <<xsrc,hw,xr,xg>>
 BY SMTT(10), Sizes, Location, Design DEF DBadLen, instV, kV, rtV, Sizes, Location, Design
<2>2. RD_PFrame BY <1>PZwAFbI3NvLbkB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>HJqiycb18Jq3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>b2U44XQwM7wjElENlcKKUGx.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE NoFreeUnderRead'
 BY ONLY <1>b2U44XQwM7wjElENlcKKUGx, Sizes, Location, Design, <1>SxrFhIlXoGDVlwyFg03Z, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>gZF8uIPEh0dtxDvJI9689B.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE SealOnlyLanded'
<2> USE ONLY <1>gZF8uIPEh0dtxDvJI9689B, Sizes, Location, Design
<2>1. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>PZwAFbI3NvLbkB, <1>cWwDAKjttBLjXenz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>Er7u1MEVt2m49DZA9nL, <1>TTpKhOymx73KMovRt1O, <1>ca3ak7RUGjY, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>okKvk1pKwoRMHZTLJq2c.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE SharedLedRef'
<2> USE ONLY <1>okKvk1pKwoRMHZTLJq2c, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>PZwAFbI3NvLbkB, <1>GIFCQUBwzFDYx3LF2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>WNuC2jkOhy0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>weTrroSCbTK.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE P_SI2'
 BY ONLY <1>weTrroSCbTK, Sizes, Location, Design, <1>PZwAFbI3NvLbkB, <1>GIFCQUBwzFDYx3LF2, <1>HQkX8HBDKVM, SMTT(10) DEF Sizes, Location, Design



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

<1>YdH8I1wJ1hL3TvF2x8.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE RD_RegSafe
<2> USE ONLY <1>YdH8I1wJ1hL3TvF2x8, Sizes, Location, Design
<2> HIDE DEF PinInv, CoreTypeOK, STypeOK, SFollow
<2>iv. iv'=iv
 BY ONLY <1>YdH8I1wJ1hL3TvF2x8, SMTT(5) DEF DBadLen
<2>oldq. pst[xdst[x]] \in {"priv","drain"}
 BY ONLY <1>YdH8I1wJ1hL3TvF2x8, SMTT(5) DEF DBadLen
<2>page. \E s \in {"free","drain",pst[xdst[x]]} : pst'=[pst EXCEPT ![xdst[x]]=s]
 BY ONLY <1>YdH8I1wJ1hL3TvF2x8, SMTT(5) DEF DBadLen, EvidenceAt, PageTo, AfterEv
<2>types. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 BY ONLY <1>YdH8I1wJ1hL3TvF2x8, V22_T_pst, SMTT(5)
<2>safe. ASSUME NEW y \in Xids, iv'[y]="reg" PROVE iv[y]="reg" /\ pst'[xsrc[y]] # "quar"
 <3>old. iv[y]="reg"
  BY ONLY <2>safe, <2>iv, SMTT(5)
 <3>source. xsrc[y] \in Pages /\ pst[xsrc[y]] # "quar"
  BY ONLY <1>YdH8I1wJ1hL3TvF2x8, <2>safe, <3>old, <1>XdqzW5jl, SMTT(5)
 <3>new. pst'[xsrc[y]] # "quar"
  BY ONLY <2>oldq, <2>page, <2>types, <3>source, SMTT(5)
 <3>qed. QED BY ONLY <3>old, <3>new, SMTT(5)
<2>qed. QED BY ONLY <2>safe, SMTT(5) DEF RD_RegSafe

\* T2M-LOCAL-VISIBILITY

<1>O1T0jJ637c6.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), B2
 PROVE RD_KeyOnSource
<2> USE ONLY <1>O1T0jJ637c6, Sizes, Location, Design
<2> HIDE DEF PinInv, STypeOK, CoreTypeOK
<2>types. /\ xr \in [Xids -> 0..NR] /\ xg \in [Xids -> 0..MG]
           /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
           /\ nx \in 1..(MX+1)
 BY ONLY <1>O1T0jJ637c6, V22_T_xr, V22_T_xg, V22_T_xsrcS, V22_T_xsrcP, V22_T_nx, SMTT(5)
<2>si4. SI4
 BY ONLY <1>O1T0jJ637c6, <1>lQA2, SMTT(5)
<2>old. \A x \in Xids : xsrcS[x] \cup xsrcP[x] # {} => x # nx
 BY ONLY <2>types, <2>si4, SMTT(5) DEF SI4, Xids
<2>keys. \A x \in Xids : x # nx => xr'[x]=xr[x] /\ xg'[x]=xg[x]
 BY ONLY <1>O1T0jJ637c6, <2>types, SMTT(5) DEF DRecvReq, xV
<2>qed. QED BY ONLY <2>old, <2>keys, SMTT(5) DEF RD_KeyOnSource

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


<1>VGTG3g2jF4TYdY.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE P_SI5'
<2> USE ONLY <1>VGTG3g2jF4TYdY, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K8 /\ K9 /\ K10 /\ K7 /\ QuarNoReg /\ CoreTypeOK
 BY ONLY <1>VGTG3g2jF4TYdY, Sizes, Location, Design, SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_P_SI5, V21_Inv_QuarNoReg DEF Sizes, Location, Design
<2>4. RD_RegSafe BY ONLY <1>VGTG3g2jF4TYdY, Sizes, Location, Design, <1>YdH8I1wJ1hL3TvF2x8, SMTT(10) DEF Sizes, Location, Design
<2>5. RD_PFrame /\ UNCHANGED xsrc
 BY ONLY <1>VGTG3g2jF4TYdY, Sizes, Location, Design, <1>PZwAFbI3NvLbkB, <1>GIFCQUBwzFDYx3LF2, SMTT(10) DEF Sizes, Location, Design
<2>si5Frame. UNCHANGED <<hw,nx,xr,xg>>
 BY ONLY <1>VGTG3g2jF4TYdY, ZenonT(5) DEF DBadLen, rtV, instV, kV, recV, pgV, xV, ghV
<2>6. RD_NoStop /\ nx' \in Int /\ nx' >= nx
 <3>nxType. nx \in 1..(MX+1)
  BY ONLY <1>VGTG3g2jF4TYdY, V22_T_nx, SMTT(5)
 <3>integer. nx \in Int
  BY ONLY <3>nxType, Sizes, SMTT(5) DEF Sizes
 <3>stop. RD_NoStop
  BY ONLY <2>si5Frame, SMTT(5) DEF RD_NoStop
 <3>qed. QED BY ONLY <2>si5Frame, <3>integer, <3>stop, SMTT(5)
<2>7. B2 => RD_KeyOnSource
 BY ONLY <2>si5Frame, SMTT(5) DEF RD_KeyOnSource
<2>8. S1 /\ S2 /\ S5 /\ S6
 BY ONLY <1>VGTG3g2jF4TYdY, Sizes, Location, Design, SMTT(10), V21_Inv_P_SI5, V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6 DEF Sizes, Location, Design
<2>SBFrame. UNCHANGED <<hw,hok,xdst,xr,xg>>
 BY ONLY <1>VGTG3g2jF4TYdY, SMTT(10), Sizes, Location, Design DEF DBadLen, xV, rtV, instV, recV, pgV, ghV, kV, Sizes, Location, Design
<2>SBTypes. /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
        /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>VGTG3g2jF4TYdY, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>SBMaps. \A i \in Inst,q \in Rq : Active(i,q) /\ ~rhit[i][q] => pst[rpg[i][q]]="priv"
 BY ONLY <1>VGTG3g2jF4TYdY, SMTT(10), V21_Inv_K8, V21_Inv_P_SI5, Sizes, Location, Design DEF K8, Sizes, Location, Design
<2>SBPage. ASSUME NEW p \in Pages, pst'[p] \in {"priv","drain","quar"}
        PROVE pst[p] \in {"priv","drain","quar"} /\ pr'[p]=pr[p] /\ pgn'[p]=pgn[p]
 BY ONLY <1>VGTG3g2jF4TYdY, <2>SBTypes, <2>SBMaps, <2>SBPage, Design, Sizes, Location, SMTT(10) DEF DBadLen, EvidenceAt, PageTo, instV, kV, rtV, PageToG, GTo, IsD, IsP, PInst, DInst, Inst, NL, GrownOf, GiveUpTo, FreeOrDrain, Active, Rq, GiveUpToN, AfterEv, GFr, GrownOwn, Sizes, Location, Design
<2>9. RD_StopBack
 BY ONLY <2>SBFrame, <2>SBPage, SMTT(10), Sizes, Location, Design DEF RD_StopBack, Held, Sizes, Location, Design
<2>10. QED BY ONLY <1>VGTG3g2jF4TYdY, Sizes, Location, Design, <2>4, <2>5, <2>6, <2>7, <2>9, <1>QYS9t7p6Fr, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1354_PdRDR2SI5_DBadLen


<1> QED BY <1>VGTG3g2jF4TYdY, <1>b2U44XQwM7wjElENlcKKUGx, <1>weTrroSCbTK, <1>okKvk1pKwoRMHZTLJq2c, <1>gZF8uIPEh0dtxDvJI9689B, <1>H4rrlj4EsCG7luarvRyhSZGM, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DBadLen_03_01 SHA f43fa07e5ee827f3ccb0bb3b5033cc89807d7a5349be01b2729f5973900c5ae3
USE DEF V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K13, V21_Inv_K16, V21_Inv_OneReply, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_SI7, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_Static, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_sdata, V22_T_sgen, V22_T_skey, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_sready, V22_T_swrite, V22_T_xprefixOK
HIDE DEF P_PagePoolsDisjoint, Part_DBadLen_02_02, V21_Inv_HitIdentity, V21_Inv_K14, V21_Inv_K15, V21_Inv_K7, V21_Inv_KStruct, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_S2, V21_Inv_S6, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_SFollowOff, V22_T_pgn, V22_T_pr, V22_T_xg, V22_T_xr
THEOREM Part_DBadLen_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE (K16)' /\ (K10)' /\ (S5)' /\ (S1)' /\ (K13)' /\ (K1)' /\ (K4)' /\ (K2)' /\ (K3)' /\ (QuarNeverMapped)' /\ (SI7)' /\ (OneReply)' /\ (PrivateMapOwner)'
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

           PhaseRefinesD2 == \A i \in Inst, r \in Rq :
             /\ (ph[i][r] # "none" => ph'[i][r] # "none")
             /\ (Active(i,r)' => Active(i,r))

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

<1> HIDE DEF XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Ex6xsGb, ez8hZbQN7k, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, EndHistoryD2, DBadLenD2Live, DBadLenD2Update, DBadLenD2Ends, PhaseRefinesD2, RD_Posted, RD_Close, RD_Quarantine, RD_E2, RD_Q2, RD_EQUpdate, RD_RegSafe

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

<1>vx9OnCyVIC.        
 PinInv => \A x \in Xids : xk[x] # "none" => xp[x] \in PInst /\ xd[x] \in DInst
<2>1. PinInv => K1 /\ K2 BY V21_Inv_K1, V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K1, K2, Sizes, Location, Design


<1>rQhZD7DcasZpNE.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x)
 PROVE ez8hZbQN7k /\ UNCHANGED xsrc
<2> HIDE DEF DBadLen, ez8hZbQN7k, CoreTypeOK, STypeOK
<2>effect. xk[x]="wr" /\ UNCHANGED <<rg,xsrc>> /\
           (ph'=ph \/ ph'=[ph EXCEPT ![xd[x]][xr[x]]="end"])
 BY ONLY <1>rQhZD7DcasZpNE, ZenonT(5) DEF DBadLen
<2>types. ph \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>rQhZD7DcasZpNE, V22_T_ph, SMTT(5)
<2>dest. xd[x] \in DInst
 BY ONLY <1>rQhZD7DcasZpNE, <1>vx9OnCyVIC, <2>effect, Sizes, Location, Design, SMTT(5)
<2>other. \A i \in PInst : i \in Inst /\ i # xd[x]
 BY ONLY <1>HsRNXPeY1C, <2>dest, Sizes, Location, Design, SMTT(5)
<2>phPoint. \A i \in PInst,r \in Rq : ph'[i][r]=ph[i][r]
 BY ONLY <2>effect, <2>types, <2>other, SMTT(5)
<2>qed. QED BY ONLY <2>effect, <2>phPoint, SMTT(5) DEF ez8hZbQN7k


<1>d2AIrmKb0bO0uRC1BJteifLH.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x) /\ SFollow
 PROVE PrivateMapOwner'
 BY ONLY <1>d2AIrmKb0bO0uRC1BJteifLH, Sizes, Location, Design, <1>rQhZD7DcasZpNE, <1>YccZP1lf DEF Sizes, Location, Design


<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Uj0mi4.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M0003_PP_PdMsgBase


<1>CAMMNqAjcE.        
  ASSUME NEW x \in Xids, DBadLen(x)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>CAMMNqAjcE, Sizes, Location, Design, ZenonT(5) DEF DBadLen, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M0078_PP_PdDBadLenFrames

\* T2M-SCOPE R2M0079_PP_PdCell_DBadLen_K17

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


<1>IItGkP3qJ7.        
  ASSUME NEW x \in Xids, PinInv, xst[x] = "posted"
  PROVE x < nx /\ xd[x] \in DInst /\ xr[x] \in Rq /\ xg[x] \in Gens
<2> USE ONLY <1>IItGkP3qJ7, Sizes, Location, Design
<2>1. K1 /\ K2 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, T_nx, Xids, Sizes, Location, Design
<2>3. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, T_nx, Xids, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M0080_PP_PdPostedDFields

\* T2M-SCOPE R2M0081_PP_PdCell_DBadLen_OneReply

<1>RdJ4FcjAnUEJq.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE OneReply'
<2> USE ONLY <1>RdJ4FcjAnUEJq, Sizes, Location, Design
<2>1. OneReply /\ T_drep
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_OneReply, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, Types, Sizes, Location, Design
<2>2. xst[x] = "posted" /\ UNCHANGED crep
        /\ ((drep' = drep) \/
             (Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]] = xg[x]
               /\ drep' = [drep EXCEPT ![xr[x]][xg[x]] = Bump(drep[xr[x]][xg[x]])]))
  BY <1>CAMMNqAjcE, SMTT(10), Sizes, Location, Design DEF DBadLen, Sizes, Location, Design
<2>3. xd[x] \in DInst /\ xr[x] \in Rq /\ xg[x] \in Gens
  BY <2>2, <1>IItGkP3qJ7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. CASE drep' = drep
  BY <2>1, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
<2>5. CASE drep' # drep
  <3>1. Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]] = xg[x]
          /\ drep' = [drep EXCEPT ![xr[x]][xg[x]] = Bump(drep[xr[x]][xg[x]])]
    BY <2>2, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. drep[xr[x]][xg[x]] = 0
    BY <2>3, <3>1, <1>rSd71WtIxzIDx, <1>Uj0mi4, Sizes, SMTT(10), Location, Design DEF IsD, DInst, Inst, NL, Sizes, Location, Design
  <3>3. QED BY <2>1, <2>2, <2>3, <3>1, <3>2, <1>WApKzFi3BukFo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0081_PP_PdCell_DBadLen_OneReply


<1>NhYNztiJuG4YZnw3.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

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


<1>joViX15.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K1'
<2> USE ONLY <1>joViX15, Sizes, Location, Design
<2>1. K1 /\ T_gen /\ T_drep /\ T_dsucc
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K1, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,crep,dsucc>>
       /\ (drep' = drep \/ drep' = [drep EXCEPT ![xr[x]][xg[x]] = 1])
  BY <1>VDNUfUFbOs8, <1>PPzebV6t3aTD, <1>GlEXF11A7V5icV91UFNnuvl, SMTT(10), Sizes, Location, Design DEF EndHistoryD2, Sizes, Location, Design
<2>3. \A u \in Rq, g \in Gens : g > gen[u] => drep'[u][g] = 0 /\ ~dsucc'[u][g]
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K1, T_gen, T_drep, T_dsucc, Gens, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M0085_PP_PdD2DBadLen_K1


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

<1>AqvvUB7R8RZUEFk.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted"
  PROVE x < nx /\ ExpPage(x) = xdst[x] /\ xdst[x] \in Pages
        /\ (InitPage(x) \in Pages => InitPage(x) # xdst[x])
<2> USE ONLY <1>AqvvUB7R8RZUEFk, Sizes, Location, Design
<2>1. K2 /\ T_nx /\ x < nx /\ xp[x] \in PInst /\ xd[x] \in DInst
       /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <1>g4u1JVDPkX, <1>OO9RrVKYrV9C, SMTT(10), V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. InitPage(x) # 0 => Loc(InitPage(x)) = xp[x]
  BY <2>1, <1>hIc7A2XTHSqetfrLIb, SMTT(10), Sizes, Location, Design DEF InitInst, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>NhYNztiJuG4YZnw3, Sizes, SMTT(10), Location, Design DEF Pages, ExpPage, Sizes, Location, Design
\* T2M-END R2M0086_PP_PdD2PostedWait


<1>qeP18jmrZ6QNq5.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE DBadLenD2Ends(x) => ph[xd[x]][xr[x]] = "wait"
  BY ONLY <1>qeP18jmrZ6QNq5, Sizes, Location, Design, <1>VDNUfUFbOs8, <1>vTqWXG3ODs5kR, SMTT(10) DEF DBadLenD2Ends, DBadLenD2Live, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JfVg3vDjj12RJHd.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE \A i \in Inst, u \in Rq :
    (ph'[i][u] \in {"run","ovl"} <=> ph[i][u] \in {"run","ovl"})
<2> USE ONLY <1>JfVg3vDjj12RJHd, Sizes, Location, Design
<2>1. T_ph /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>g4u1JVDPkX, <1>VDNUfUFbOs8, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. DBadLenD2Ends(x) => ph[xd[x]][xr[x]] = "wait"
  BY <1>qeP18jmrZ6QNq5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ph' = IF DBadLenD2Ends(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
  BY <1>GlEXF11A7V5icV91UFNnuvl, SMTT(10), Sizes, Location, Design DEF EndHistoryD2, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF T_ph, Sizes, Location, Design

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

<1>RoyTVV4B.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K10'
<2> USE ONLY <1>RoyTVV4B, Sizes, Location, Design
<2>1. K10 /\ K2 /\ T_nx /\ T_pst /\ T_pr /\ T_pgn
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K10, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. DBadLenD2Update(x) /\ UNCHANGED <<nx,xdst,xr,xg,hw,hok,xlt,rg,ptl>>
  BY <1>PPzebV6t3aTD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW y \in Xids, y < nx', xdst'[y] \in Pages,
    OwnedBy(xdst[y],xr[y],xg[y])',
    ~(ph'[Loc(xdst'[y])][xr'[y]] \in {"run","ovl"} /\ rg'[Loc(xdst'[y])][xr'[y]] = xg'[y])
  PROVE ptl'[xdst'[y]] = (IF hw'[y] = "stop" /\ hok'[y] THEN xlt'[y] ELSE 0)
<3>1. y < nx /\ xdst[y] \in Pages /\ OwnedBy(xdst[y],xr[y],xg[y])
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF DBadLenD2Update, PageTo, EvidenceAt, AfterEv, OwnedBy, T_pst, T_pr, T_pgn, Sizes, Location, Design
<3>2. xr[y] \in Rq /\ Loc(xdst[y]) \in Inst
  BY <2>1, <3>1, <1>hIc7A2XTHSqetfrLIb, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. ~(ph[Loc(xdst[y])][xr[y]] \in {"run","ovl"} /\ rg[Loc(xdst[y])][xr[y]] = xg[y])
  BY <2>2, <2>3, <3>1, <3>2, <1>JfVg3vDjj12RJHd, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>4. QED BY <2>1, <2>2, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF K10, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K10, Sizes, Location, Design
\* T2M-END R2M0088_PP_PdD2DBadLen_K10


<1>EPu7NEbm.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K13'
<2> USE ONLY <1>EPu7NEbm, Sizes, Location, Design
<2>0. K13 /\ T_drep /\ T_dsucc /\ T_ph /\ T_rg
       /\ \A u \in Rq, h \in Gens : drep[u][h] = 1 => hd[u][h] \in Inst
  BY <1>g4u1JVDPkX, <1>Bo9O5fy73pPrd, SMTT(10), V21_Inv_K13, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>1. CASE DBadLenD2Ends(x)
  BY <2>0, <2>1, <1>GlEXF11A7V5icV91UFNnuvl, <1>K8c8qqk9sFM1re, SMTT(10), Sizes, Location, Design DEF DBadLenD2Ends, DBadLenD2Live, Sizes, Location, Design
<2>2. CASE ~DBadLenD2Ends(x)
<3>1. K13 /\ UNCHANGED <<ph,drep,dsucc,rg,hd,crep,gbad>>
  BY <2>2, <1>GlEXF11A7V5icV91UFNnuvl, SMTT(10), V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED BY <3>1, SMTT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0091_PP_PdD2DBadLen_K13

\* T2M-SCOPE R2M0092_PP_PdD2DBadLen_K16

<1>t7pcrom4.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K16'
<2> USE ONLY <1>t7pcrom4, Sizes, Location, Design
<2>1. K16 /\ T_pst /\ T_pr /\ T_pgn /\ x \in led[xdst[x]]
  BY <1>g4u1JVDPkX, <1>VDNUfUFbOs8, <1>gWp6JY7RoGTE1WT6I, SMTT(10), V21_Inv_K16, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. DBadLenD2Update(x) /\ UNCHANGED <<rpg,rg,ptl,sfly,hw,xdst>>
  BY <1>PPzebV6t3aTD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW p \in Pages, GrownP(p)'
       PROVE /\ ph'[Loc(p)][pr'[p]] \in {"run","ovl"} /\ rg'[Loc(p)][pr'[p]] = pgn'[p]
             /\ led'[p] = {} /\ sled'[p] = {} /\ sfly'[p] = {}
             /\ plt'[p] = ptl'[p] /\ ptl'[p] \in {0,1} /\ NoWriteInto(p)'
<3>1. GrownP(p) /\ UNCHANGED <<pr[p],pgn[p]>>
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF GrownP, DBadLenD2Update, PageTo, EvidenceAt, AfterEv, T_pst, T_pr, T_pgn, Sizes, Location, Design
<3>2. p # xdst[x] /\ pr[p] \in Rq /\ Loc(p) \in Inst
  BY <2>1, <3>1, <1>EOiGKjIWK8pM0MY8kYs, SMTT(10), Sizes, Location, Design DEF K16, GrownP, Sizes, Location, Design
<3>3. UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
  BY <3>2, <1>eWzDzSOZGUhEzv6B, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>4. ph'[Loc(p)][pr'[p]] \in {"run","ovl"}
  BY <2>1, <3>1, <3>2, <1>JfVg3vDjj12RJHd, SMTT(10), Sizes, Location, Design DEF K16, Sizes, Location, Design
<3>5. QED BY <2>1, <2>2, <3>1, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF K16, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K16, Sizes, Location, Design
\* T2M-END R2M0092_PP_PdD2DBadLen_K16


<1>kZp6e5N.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K2'
<2> USE ONLY <1>kZp6e5N, Sizes, Location, Design
<2>1. K2 /\ T_drep /\ T_gen /\ T_hd /\ T_hok /\ T_hp /\ T_hw /\ T_iv /\ T_led /\ T_nx /\ T_pgn /\ T_ph /\ T_plt /\ T_pr /\ T_pst /\ T_sled /\ T_xd /\ T_xdst /\ T_xg /\ T_xk /\ T_xlt /\ T_xnt /\ T_xp /\ T_xr /\ T_xsrc /\ T_xst
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. DBadLenD2Update(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>PPzebV6t3aTD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>VDNUfUFbOs8, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, DBadLenD2Live, DBadLenD2Update, EvidenceAt, ExpInst, ExpPage, InitInst, InitPage, IsD, IsP, K2, PageTo, PinBlocks, T_drep, T_gen, T_hd, T_hok, T_hp, T_hw, T_iv, T_led, T_nx, T_pgn, T_ph, T_plt, T_pr, T_pst, T_sled, T_xd, T_xdst, T_xg, T_xk, T_xlt, T_xnt, T_xp, T_xr, T_xsrc, T_xst, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0093_PP_PdD2DBadLen_K2

\* T2M-SCOPE R2M0094_PP_PdD2DBadLen_K3

<1>p3E9Naq.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K3'
<2> USE ONLY <1>p3E9Naq, Sizes, Location, Design
<2>1. K3 /\ K2 /\ T_drep /\ T_gen /\ T_hd /\ T_hok /\ T_hp /\ T_hw /\ T_iv /\ T_led /\ T_nx /\ T_pgn /\ T_ph /\ T_plt /\ T_pr /\ T_pst /\ T_sled /\ T_xd /\ T_xdst /\ T_xg /\ T_xk /\ T_xlt /\ T_xnt /\ T_xp /\ T_xr /\ T_xsrc /\ T_xst
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K3, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. DBadLenD2Update(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>PPzebV6t3aTD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>VDNUfUFbOs8, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, CqeHw, DBadLenD2Live, DBadLenD2Update, EvidenceAt, ExpInst, ExpPage, InFl, InitInst, InitPage, IsD, IsP, K2, K3, PageTo, PinBlocks, T_drep, T_gen, T_hd, T_hok, T_hp, T_hw, T_iv, T_led, T_nx, T_pgn, T_ph, T_plt, T_pr, T_pst, T_sled, T_xd, T_xdst, T_xg, T_xk, T_xlt, T_xnt, T_xp, T_xr, T_xsrc, T_xst, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0094_PP_PdD2DBadLen_K3

\* T2M-SCOPE R2M0095_PP_PdD2DBadLen_K4

<1>nAhGjH4.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K4'
<2> USE ONLY <1>nAhGjH4, Sizes, Location, Design
<2>1. K2 /\ K4 /\ T_nx /\ T_led /\ T_xst
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K2, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. xst[x] = "posted" /\ x < nx /\ ExpPage(x) = xdst[x] /\ xdst[x] \in Pages
       /\ (InitPage(x) \in Pages => InitPage(x) # xdst[x])
  BY <1>VDNUfUFbOs8, <1>AqvvUB7R8RZUEFk, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<nx,iv,xr,xg,xk,xp,xd,xsrc,xdst>>
       /\ ((UNCHANGED <<led,xst>>) \/
            (led' = [led EXCEPT ![xdst[x]] = @ \ {x}] /\ xst' = [xst EXCEPT ![x] = "failed"]))
  BY <2>1, <1>PPzebV6t3aTD, Design, SMTT(10), Sizes, Location DEF DBadLenD2Update, EvidenceAt, PageTo, AfterEv, T_led, Sizes, Location, Design
<2>4. ASSUME NEW y \in Xids, y < nx'
       PROVE /\ ((y \in led'[ExpPage(y)']) <=> xst'[y] = "posted")
             /\ (InitPage(y)' \in Pages => ((y \in led'[InitPage(y)']) <=> iv'[y] \in {"reg","posted","failret"}))
<3>1. CASE y = x
  BY <2>1, <2>2, <2>3, <2>4, <3>1, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, InitPage, T_led, T_xst, Sizes, Location, Design
<3>2. CASE y # x
<4>1. ExpPage(y) \in Pages /\ ExpPage(y)' = ExpPage(y) /\ InitPage(y)' = InitPage(y)
  BY <2>1, <2>3, <2>4, <1>hIc7A2XTHSqetfrLIb, SMTT(10), Sizes, Location, Design DEF ExpPage, InitPage, Sizes, Location, Design
<4>2. \A p \in Pages : (y \in led'[p]) <=> (y \in led[p])
  BY <2>1, <2>2, <2>3, <2>4, <3>2, SMTT(10), Sizes, Location, Design DEF T_led, Sizes, Location, Design
<4>3. xst'[y] = xst[y] /\ iv'[y] = iv[y]
  BY <2>1, <2>3, <2>4, <3>2, SMTT(10), Sizes, Location, Design DEF T_xst, Sizes, Location, Design
<4>4. QED BY <2>1, <2>3, <2>4, <4>1, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF K4, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. ASSUME NEW p \in Pages, NEW y \in led'[p]
       PROVE y < nx' /\ (p = ExpPage(y)' \/ p = InitPage(y)')
<3>1. y \in led[p]
  BY <2>1, <2>3, <2>5, SMTT(10), Sizes, Location, Design DEF T_led, Sizes, Location, Design
<3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, InitPage, Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K4, Sizes, Location, Design
\* T2M-END R2M0095_PP_PdD2DBadLen_K4

\* T2M-SCOPE R2M0096_PP_PdD2DBadLen_K5

<1>I59s5QD4FdSrkTiNqSFo.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>I59s5QD4FdSrkTiNqSFo, Sizes, Location, Design
<2>1. QuarNeverMapped /\ K8 /\ K9 /\ T_drep /\ T_gen /\ T_hd /\ T_hp /\ T_iv /\ T_led /\ T_nx /\ T_pgn /\ T_ph /\ T_plt /\ T_pr /\ T_pst /\ T_ptl /\ T_pvis /\ T_rg /\ T_rhit /\ T_rpe /\ T_rpg /\ T_rx /\ T_sfly /\ T_sled /\ T_xdst /\ T_xg /\ T_xlt /\ T_xr /\ T_xsrc /\ T_xst
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_QuarNeverMapped, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, Sizes, Location, Design
<2>2. DBadLenD2Update(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>PPzebV6t3aTD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW d2v0 \in Inst, NEW d2v1 \in Rq PROVE ((Active(d2v0, d2v1) /\ rpg[d2v0][d2v1] \in Pages) => pst[rpg[d2v0][d2v1]] # "quar")'
BY <2>3, <2>1, <2>2, <1>VDNUfUFbOs8, Design, Location, Sizes, SMTT(10) DEF Active, AfterEv, Bump, DBadLenD2Live, DBadLenD2Update, EvidenceAt, IsD, IsP, K8, K9, OwnedBy, PageTo, PinBlocks, QuarNeverMapped, T_drep, T_gen, T_hd, T_hp, T_iv, T_led, T_nx, T_pgn, T_ph, T_plt, T_pr, T_pst, T_ptl, T_pvis, T_rg, T_rhit, T_rpe, T_rpg, T_rx, T_sfly, T_sled, T_xdst, T_xg, T_xlt, T_xr, T_xsrc, T_xst, Tag, KPages, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF QuarNeverMapped, Sizes, Location, Design
\* T2M-END R2M0104_PP_PdD2DBadLen_QuarNeverMapped

\* T2M-SCOPE R2M0105_PP_PdD2DBadLen_QuarNoReg

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

<1>v2a5G11z6EmKjrAdJO.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE PhaseRefinesD2
<2> USE ONLY <1>v2a5G11z6EmKjrAdJO, Sizes, Location, Design
<2>1. T_ph /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>g4u1JVDPkX, <1>VDNUfUFbOs8, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. DBadLenD2Update(x)
  BY <1>PPzebV6t3aTD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF DBadLenD2Update, DBadLenD2Live, PhaseRefinesD2, T_ph, Active, Sizes, Location, Design
\* T2M-END R2M0107_PP_PdD2DBadLenPhases

\* T2M-SCOPE R2M0108_PP_PdD2DBadLen_S1
\* T2M-BODY R2M0108_PP_PdD2DBadLen_S1
\* T2M-LOCAL-VISIBILITY

<1>w5NwcWY.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE S1'
<2> USE ONLY <1>w5NwcWY, Sizes, Location, Design
<2>1. PhaseRefinesD2 /\ UNCHANGED <<nx,rg,rx,xd,xg,xk,xp,xr>>
  BY <1>v2a5G11z6EmKjrAdJO, <1>CAMMNqAjcE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>toZlrA, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0108_PP_PdD2DBadLen_S1


<1>lo94Wm7.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE S5'
<2> USE ONLY <1>lo94Wm7, Sizes, Location, Design
<2>1. S5 /\ T_xst /\ xst[x] = "posted"
  BY <1>g4u1JVDPkX, <1>VDNUfUFbOs8, SMTT(10), V21_Inv_S5, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. UNCHANGED <<nx,rx,rhit,xdst,rpg,xr,xg,rg,hw,hok,xlt,xnt,iv>>
  BY <1>CAMMNqAjcE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A y \in Xids : y # x => xst'[y] = xst[y]
  BY <2>1, <1>PPzebV6t3aTD, SMTT(10), Sizes, Location, Design DEF DBadLenD2Update, T_xst, Sizes, Location, Design
<2>4. ASSUME NEW i \in DInst, NEW u \in Rq, ph'[i][u] \in {"run","ovl"}, ~rhit'[i][u]
       PROVE LET y == rx'[i][u] IN
         /\ y \in Xids /\ y < nx' /\ xdst'[y] = rpg'[i][u] /\ xr'[y] = u /\ xg'[y] = rg'[i][u]
         /\ hw'[y] = "stop" /\ hok'[y] /\ xlt'[y] = xnt'[y]
         /\ (Mode = "push" => xst'[y] = "landed") /\ (Mode = "pull" => iv'[y] = "cqe")
<3>1. ph[i][u] \in {"run","ovl"} /\ ~rhit[i][u]
  BY <2>2, <2>4, <1>JfVg3vDjj12RJHd, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. Mode = "push" => rx[i][u] # x
  BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
<3>3. QED BY <2>1, <2>2, <2>3, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
\* T2M-END R2M0109_PP_PdD2DBadLen_S5


<1>Z89aRLihD.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K1'
  BY ONLY <1>Z89aRLihD, Sizes, Location, Design, <1>joViX15, V21_Inv_K1 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>STrQOmpjc.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K2'
  BY ONLY <1>STrQOmpjc, Sizes, Location, Design, <1>kZp6e5N, V21_Inv_K2 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>DtMy48iEX.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K3'
  BY ONLY <1>DtMy48iEX, Sizes, Location, Design, <1>p3E9Naq, V21_Inv_K3 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>aGGDivxdz.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K4'
  BY ONLY <1>aGGDivxdz, Sizes, Location, Design, <1>nAhGjH4, V21_Inv_K4 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>J1RYq9DHC0.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K10'
  BY ONLY <1>J1RYq9DHC0, Sizes, Location, Design, <1>RoyTVV4B, V21_Inv_K10 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>LwwXfMNDV6.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K13'
  BY ONLY <1>LwwXfMNDV6, Sizes, Location, Design, <1>EPu7NEbm, V21_Inv_K13 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>w51J6hMINk.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K16'
  BY ONLY <1>w51J6hMINk, Sizes, Location, Design, <1>t7pcrom4, V21_Inv_K16 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>UbKtKZ4Zt.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE S1'
  BY ONLY <1>UbKtKZ4Zt, Sizes, Location, Design, <1>w5NwcWY, V21_Inv_S1 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>okRvDP5Qp.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE S5'
  BY ONLY <1>okRvDP5Qp, Sizes, Location, Design, <1>lo94Wm7, V21_Inv_S5 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>bmHkkeu9W1FgFak.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE OneReply'
  BY ONLY <1>bmHkkeu9W1FgFak, Sizes, Location, Design, <1>RdJ4FcjAnUEJq, V21_Inv_OneReply DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>rQqaeHFA0cuJs98xzg20Pw.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>rQqaeHFA0cuJs98xzg20Pw, Sizes, Location, Design, <1>I59s5QD4FdSrkTiNqSFo, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design


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


<1>YdH8I1wJ1hL3TvF2x8.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE RD_RegSafe
<2> USE ONLY <1>YdH8I1wJ1hL3TvF2x8, Sizes, Location, Design
<2> DEFINE FX_REG_E == iv'=iv /\ (\E s : pst'=[pst EXCEPT ![xdst[x]]=s])
<2> HIDE DEF FX_REG_E
<2>fx. FX_REG_E
 BY ONLY <1>YdH8I1wJ1hL3TvF2x8, ZenonT(10) DEF FX_REG_E, DBadLen, EvidenceAt, PageTo
<2>1. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 BY ONLY <1>YdH8I1wJ1hL3TvF2x8, <1>R3YtSwiPG37j, SMTT(5)
<2>fiv. iv'=iv
 BY ONLY <2>fx, ZenonT(5) DEF FX_REG_E
<2>2. \A z \in Xids : iv'[z]="reg" => iv[z]="reg"
 BY ONLY <2>1, <2>fiv, SMTT(5)
<2>3. ASSUME NEW y \in Xids, iv'[y]="reg" PROVE pst'[xsrc[y]] # "quar"
 <3>1. iv[y]="reg" BY ONLY <2>3, <2>2, SMTT(5)
 <3>2. y<nx /\ xk[y]="wr" /\ xsrc[y] \in Pages /\ IsP(Loc(xsrc[y])) /\ y \in led[xsrc[y]] /\ pst[xsrc[y]] # "quar"
 BY ONLY <1>YdH8I1wJ1hL3TvF2x8, <2>3, <3>1, <1>XdqzW5jl, SMTT(5)
 <3>dall. \A x \in Xids : xdst[x] \in Pages => IsD(Loc(xdst[x]))
  BY ONLY <1>YdH8I1wJ1hL3TvF2x8, <1>b8FOS7RlDgygbk6kJ4t, SMTT(5)
 <3>locType. NPI \in Int /\ Loc(xsrc[y]) \in Int
  BY ONLY <3>2, Sizes, Location, SMTT(5) DEF Sizes, Location, KPages, Inst, NL
 <3>other. xsrc[y] # xdst[x]
  BY ONLY <1>YdH8I1wJ1hL3TvF2x8, <2>3, <3>2, <3>dall, <3>locType, SMTT(5) DEF IsP, IsD
 <3>pst. \E s : pst'=[pst EXCEPT ![xdst[x]]=s]
  BY ONLY <2>fx, ZenonT(5) DEF FX_REG_E
 <3>frame. pst'[xsrc[y]]=pst[xsrc[y]]
  BY ONLY <2>1, <3>2, <3>other, <3>pst, SMTT(5)
 <3>qed. QED BY ONLY <3>2, <3>frame, SMTT(5)
<2>4. RD_RegSafe BY ONLY <2>2, <2>3, SMTT(5) DEF RD_RegSafe
<2>5. QED BY ONLY <2>4, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>RdDrObLxdI8imi.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE SI7'
 BY ONLY <1>RdDrObLxdI8imi, Sizes, Location, Design, <1>YdH8I1wJ1hL3TvF2x8, <1>lsjuoBt9NWo, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1353_PdRDR2SI7_DBadLen


<1> QED BY <1>w51J6hMINk, <1>J1RYq9DHC0, <1>okRvDP5Qp, <1>UbKtKZ4Zt, <1>LwwXfMNDV6, <1>Z89aRLihD, <1>aGGDivxdz, <1>STrQOmpjc, <1>DtMy48iEX, <1>rQqaeHFA0cuJs98xzg20Pw, <1>RdDrObLxdI8imi, <1>bmHkkeu9W1FgFak, <1>d2AIrmKb0bO0uRC1BJteifLH, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DBadLen_03_02 SHA 87308aa5868714f7d78c7bec08e3423c33f0e7be44743463bc18e2885032534f
USE DEF V21_Inv_HitIdentity, V21_Inv_K11, V21_Inv_K5, V21_Inv_K6, V21_Inv_KStruct, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_S6, V21_Inv_SI8, V21_Inv_SendOwnLanded, V21_SFollowOff, V22_T_xk, V22_T_xst
HIDE DEF Part_DBadLen_03_01, V21_Inv_EntryQuarantineDisjoint, V21_Inv_K10, V21_Inv_K13, V21_Inv_K16, V21_Inv_K3, V21_Inv_K4, V21_Inv_K8, V21_Inv_OneReply, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_S1, V21_Inv_S5, V21_Inv_SI7, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_Static, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_iv, V22_T_kpin, V22_T_pst, V22_T_schoice, V22_T_sdata, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP
THEOREM Part_DBadLen_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE (HitIdentity)' /\ (P_SI1)' /\ (P_SI3)' /\ (P_SI6)' /\ (K12)' /\ (S6)' /\ (QuarNoReg)' /\ (PrefcMatchesHolders)' /\ (SendOwnLanded)' /\ (K5)' /\ (K6)' /\ (K11)' /\ (SI8)'
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

           PhaseRefinesD2 == \A i \in Inst, r \in Rq :
             /\ (ph[i][r] # "none" => ph'[i][r] # "none")
             /\ (Active(i,r)' => Active(i,r))

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

           RD_RdOpenBack == \A x \in Xids : (xk'[x]="rd" /\ xst'[x]="posted") => (xk[x]="rd" /\ xst[x]="posted")

           \* T2M-LOCAL-VISIBILITY

           RD_SendShared == B2 => \A x \in Xids : hw[x]="fly" => \A p \in xsrcS[x] \cup xsrcP[x] :
                sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, MsgC1, MsgC2, MsgC3, MsgC4, MsgC5, MsgC6, MsgC7, MsgC8, MsgC9, MsgC10, MsgSafe, EndHistoryD2, DBadLenD2Live, DBadLenD2Update, DBadLenD2Ends, PhaseRefinesD2, RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_RdOpenBack, RD_SendShared

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SXJT0yI47i.         K12 <=> (\A m \in net : MsgSafe(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, MsgSafe, MsgC1, MsgC2, MsgC3, MsgC4, MsgC5, MsgC6, MsgC7, MsgC8, MsgC9, MsgC10, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>j4cViHN.         (\A m \in net' : MsgSafe(m)') => K12'
  BY ZenonT(5), Sizes, Location, Design DEF K12, MsgSafe, MsgC1, MsgC2, MsgC3, MsgC4, MsgC5, MsgC6, MsgC7, MsgC8, MsgC9, MsgC10, Sizes, Location, Design
\* T2M-END R2M0002_PP_PdMessagePred


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


<1>rt9eR4Mc.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K11'
<2> USE ONLY <1>rt9eR4Mc, Sizes, Location, Design
<2>1. K11 /\ T_drep /\ T_led /\ T_nx /\ T_pgn /\ T_ph /\ T_plt /\ T_pr /\ T_pst /\ T_ptl /\ T_sfly /\ T_sled /\ T_xlt /\ T_xsrc /\ T_xst
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K11, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. DBadLenD2Update(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>PPzebV6t3aTD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>VDNUfUFbOs8, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, DBadLenD2Live, DBadLenD2Update, EvidenceAt, IsD, IsP, K11, PageTo, PinBlocks, T_drep, T_led, T_nx, T_pgn, T_ph, T_plt, T_pr, T_pst, T_ptl, T_sfly, T_sled, T_xlt, T_xsrc, T_xst, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0089_PP_PdD2DBadLen_K11


<1>a0mILM7E.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K12'
<2> USE ONLY <1>a0mILM7E, Sizes, Location, Design
<2>1. K12 /\ T_drep /\ T_dsucc
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. CASE DBadLenD2Ends(x)
<3>1. \A m \in net : MsgSafe(m)'
  BY <2>1, <2>2, <1>GlEXF11A7V5icV91UFNnuvl, <1>SXJT0yI47i, <1>VRWNag5kokxc, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. MsgSafe(Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE))'
  BY <2>1, <2>2, <1>GlEXF11A7V5icV91UFNnuvl, SMTT(10), Sizes, Location, Design DEF EndHistoryD2, T_drep, Msg, MsgSafe, MsgC1, MsgC2, MsgC3, MsgC4, MsgC5, MsgC6, MsgC7, MsgC8, MsgC9, MsgC10, Sizes, Location, Design
<3>3. QED BY <2>2, <3>1, <3>2, <1>GlEXF11A7V5icV91UFNnuvl, <1>j4cViHN, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE ~DBadLenD2Ends(x)
  BY <2>1, <2>3, <1>GlEXF11A7V5icV91UFNnuvl, SMTT(10), Sizes, Location, Design DEF K12, CqeHw, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0090_PP_PdD2DBadLen_K12

\* T2M-SCOPE R2M0091_PP_PdD2DBadLen_K13

<1>Maz8xHI.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K5'
<2> USE ONLY <1>Maz8xHI, Sizes, Location, Design
<2>1. K5 /\ T_drep /\ T_led /\ T_pgn /\ T_ph /\ T_plt /\ T_pr /\ T_pst /\ T_sled /\ T_xg /\ T_xr /\ T_xst
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. DBadLenD2Update(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>PPzebV6t3aTD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>VDNUfUFbOs8, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, DBadLenD2Live, DBadLenD2Update, EvidenceAt, IsD, IsP, K5, OwnedBy, PageTo, PinBlocks, T_drep, T_led, T_pgn, T_ph, T_plt, T_pr, T_pst, T_sled, T_xg, T_xr, T_xst, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0096_PP_PdD2DBadLen_K5

\* T2M-SCOPE R2M0097_PP_PdD2DBadLen_K6

<1>FrH6aCW.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K6'
<2> USE ONLY <1>FrH6aCW, Sizes, Location, Design
<2>1. K6 /\ T_drep /\ T_gen /\ T_led /\ T_pgn /\ T_ph /\ T_plt /\ T_pr /\ T_pst /\ T_sfly /\ T_sled /\ T_xst
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. DBadLenD2Update(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>PPzebV6t3aTD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>VDNUfUFbOs8, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, DBadLenD2Live, DBadLenD2Update, EvidenceAt, IsD, IsP, K6, OwnedBy, PageTo, PinBlocks, T_drep, T_gen, T_led, T_pgn, T_ph, T_plt, T_pr, T_pst, T_sfly, T_sled, T_xst, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0097_PP_PdD2DBadLen_K6


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

<1>UwIiY9QqkewGKl.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE QuarNoReg'
<2> USE ONLY <1>UwIiY9QqkewGKl, Sizes, Location, Design
<2>1. QuarNoReg /\ UNCHANGED iv
  BY <1>CAMMNqAjcE, SMTT(10), V21_Inv_QuarNoReg, V21_Inv_Safety, Sizes, Location, Design DEF Safety, Sizes, Location, Design
<2>2. \A p \in Pages : IsP(Loc(p)) => UNCHANGED <<pst[p],led[p]>>
  BY <1>VYJmvTtThaAe, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
\* T2M-END R2M0105_PP_PdD2DBadLen_QuarNoReg


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


<1>v2a5G11z6EmKjrAdJO.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE PhaseRefinesD2
<2> USE ONLY <1>v2a5G11z6EmKjrAdJO, Sizes, Location, Design
<2>1. T_ph /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>g4u1JVDPkX, <1>VDNUfUFbOs8, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. DBadLenD2Update(x)
  BY <1>PPzebV6t3aTD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF DBadLenD2Update, DBadLenD2Live, PhaseRefinesD2, T_ph, Active, Sizes, Location, Design
\* T2M-END R2M0107_PP_PdD2DBadLenPhases

\* T2M-SCOPE R2M0108_PP_PdD2DBadLen_S1
\* T2M-BODY R2M0108_PP_PdD2DBadLen_S1
\* T2M-LOCAL-VISIBILITY

<1>Cstf9pA.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE S6'
<2> USE ONLY <1>Cstf9pA, Sizes, Location, Design
<2>1. PhaseRefinesD2 /\ UNCHANGED <<nx,rg,rx,xd,xdst,xg,xk,xp,xr,xsrc>>
  BY <1>v2a5G11z6EmKjrAdJO, <1>CAMMNqAjcE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>uZpuWA, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0110_PP_PdD2DBadLen_S6


<1>F9sA8AFVB.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K5'
  BY ONLY <1>F9sA8AFVB, Sizes, Location, Design, <1>Maz8xHI, V21_Inv_K5 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>o1BnlSYtD.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K6'
  BY ONLY <1>o1BnlSYtD, Sizes, Location, Design, <1>FrH6aCW, V21_Inv_K6 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>aFzeavMUKF.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K11'
  BY ONLY <1>aFzeavMUKF, Sizes, Location, Design, <1>rt9eR4Mc, V21_Inv_K11 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>fkyvgDl7qR.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K12'
  BY ONLY <1>fkyvgDl7qR, Sizes, Location, Design, <1>a0mILM7E, V21_Inv_K12 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>cWaDVEnmk.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE S6'
  BY ONLY <1>cWaDVEnmk, Sizes, Location, Design, <1>Cstf9pA, V21_Inv_S6 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>ELoqdeGWshHFh3pl.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>ELoqdeGWshHFh3pl, Sizes, Location, Design, <1>UwIiY9QqkewGKl, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M0111_PdPAgg_DBadLen


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

<1>CN0mZYNfgIVf1Nqh.        
  BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>> => BaseSendOwnLanded'
  BY SMTT(5), Sizes, Location, Design DEF BaseSendOwnLanded, SendOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dEpIubzbA3.        
  ASSUME NEW x \in Xids, DBadLen(x)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>dEpIubzbA3, Sizes, Location, Design, ZenonT(5) DEF DBadLen, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dDyXqmktyiLLORJfic.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>dDyXqmktyiLLORJfic, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>>
  BY SMTT(5), <1>dEpIubzbA3, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, SendOwnLanded, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>CN0mZYNfgIVf1Nqh, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0736_PdRDPort_PdDBadLenFrames


<1>WkC9Zs73eQOwFrOJKOM5t.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE SendOwnLanded'
<2> USE ONLY <1>WkC9Zs73eQOwFrOJKOM5t, Sizes, Location, Design
<2>1. UNCHANGED <<xsrc,hw,xr,xg>>
 BY SMTT(10), Sizes, Location, Design DEF DBadLen, instV, kV, rtV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>dDyXqmktyiLLORJfic, <1>BeoqOTbNFxOyFnZ, <1>UukBaziv337, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>vghErt6ZDWcE5bVevuFJq8HOT4K.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>vghErt6ZDWcE5bVevuFJq8HOT4K, Sizes, Location, Design, <1>RWvTkqQsVDwnRge2Q5E0XkOXe, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>bunmiOYzTm0.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE SI8'
<2> USE ONLY <1>bunmiOYzTm0, Sizes, Location, Design
<2>1. UNCHANGED xsrc
 BY <1>GIFCQUBwzFDYx3LF2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xk \in [Xids -> {"none","wr","rd"}] /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>bunmiOYzTm0, V22_T_xk, V22_T_xst, SMTT(5)

<2>3. RD_RdOpenBack
 BY <2>2, SMTT(10), Sizes, Location, Design DEF DBadLen, instV, kV, rtV, RD_RdOpenBack, Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>XSpO6sXnRte, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>jnv6sjJwAZH.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE P_SI1'
 BY ONLY <1>jnv6sjJwAZH, Sizes, Location, Design, <1>PZwAFbI3NvLbkB, <1>GIFCQUBwzFDYx3LF2, <1>VDsAIqq0, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JSU8unM9Z9k.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE P_SI3'
 BY ONLY <1>JSU8unM9Z9k, Sizes, Location, Design, <1>PZwAFbI3NvLbkB, <1>GIFCQUBwzFDYx3LF2, <1>FPQA7M3w, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MamGKlSeRAC.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE P_SI6'
 BY ONLY <1>MamGKlSeRAC, Sizes, Location, Design, <1>PZwAFbI3NvLbkB, <1>GIFCQUBwzFDYx3LF2, <1>TUh8WMSa, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FjVLDcfxlEdxQOClyz2.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE HitIdentity'
 BY ONLY <1>FjVLDcfxlEdxQOClyz2, Sizes, Location, Design, <1>PZwAFbI3NvLbkB, <1>GIFCQUBwzFDYx3LF2, <1>ueaxxwWI, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M0762_PdRDBatch_DBadLen


<1> QED BY <1>FjVLDcfxlEdxQOClyz2, <1>jnv6sjJwAZH, <1>JSU8unM9Z9k, <1>MamGKlSeRAC, <1>fkyvgDl7qR, <1>cWaDVEnmk, <1>ELoqdeGWshHFh3pl, <1>vghErt6ZDWcE5bVevuFJq8HOT4K, <1>WkC9Zs73eQOwFrOJKOM5t, <1>F9sA8AFVB, <1>o1BnlSYtD, <1>aFzeavMUKF, <1>bunmiOYzTm0, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_DBadLen SHA ac96641c2d6c1a0e157d3444de38beec18779198c7d204a6e9c0e9cc14a8833e
USE DEF Shape_T_xd, Shape_T_xg, Shape_T_xr
HIDE DEF Part_DBadLen_03_02, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K11, V21_Inv_K12, V21_Inv_K2, V21_Inv_K5, V21_Inv_K6, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNoReg, V21_Inv_S6, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V22_T_krs, V22_T_nx, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_sentry, V22_T_squar, V22_T_xk, V22_T_xsrcS, V22_T_xst
LEMMA ShapeEffect_DBadLen ==
 ASSUME NEW x \in Xids, Sizes, Design, DBadLen(x)
 PROVE net' \subseteq net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)}
 BY ONLY DBadLen(x), Sizes, Design, SMTT(5) DEF DBadLen, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_DBadLen ==
 ASSUME NEW x \in Xids, Sizes, Design, IndInv, MessageShape, DBadLen(x)
 PROVE MessageShape'
<1>1. net' \subseteq net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)}
 BY ONLY Sizes, Design, DBadLen(x), ShapeEffect_DBadLen
<1>2. xd \in [Xids -> {0} \cup Inst] /\ xg \in [Xids -> 0..MG] /\ xr \in [Xids -> 0..NR]
 BY ONLY IndInv, Shape_T_xd, Shape_T_xg, Shape_T_xr
<1>3. QED
 BY ONLY <1>1, <1>2, IndInv, MessageShape, Sizes, SMTT(10)
 DEF MessageShape, Msg, MsgT, Sizes, Rq, Gens, Xids, Pages, Inst, NL, PInst, DInst

\* Complete original body PdDomain_DBadLen SHA af9646e6ab312db0327d8568a5ca3c2198b6eb8d0b9457ac60c92ad12953df5c
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_DBadLen, Shape_T_xd, Shape_T_xg, Shape_T_xr
THEOREM DomainKeep_DBadLen ==
 ASSUME NEW x \in Xids, Sizes, Location, Design, PinInv, DBadLen(x)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net' \subseteq net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)}
 BY ONLY Sizes, Location, Design, PinInv, DBadLen(x), ShapeEffect_DBadLen
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_DBadLen_04 SHA a36778fe7dabdd4892f1ddbe69fcbc86d04944f132e21f614a939fa711482147
USE DEF V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_STypeOK, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_DBadLen, V21_Inv_MsgXDomain
THEOREM Group_DBadLen_04 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE (EntryQuarantineDisjoint)' /\ (K17)' /\ (K14)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (GenFiltered)' /\ (ReplyTruth)' /\ (SharedImmutable)' /\ (P_B2OffInit)' /\ (MsgXDomain)'
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


<1>rQhZD7DcasZpNE.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x)
 PROVE ez8hZbQN7k /\ UNCHANGED xsrc
<2> HIDE DEF DBadLen, ez8hZbQN7k, CoreTypeOK, STypeOK
<2>effect. xk[x]="wr" /\ UNCHANGED <<rg,xsrc>> /\
           (ph'=ph \/ ph'=[ph EXCEPT ![xd[x]][xr[x]]="end"])
 BY ONLY <1>rQhZD7DcasZpNE, ZenonT(5) DEF DBadLen
<2>types. ph \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>rQhZD7DcasZpNE, V22_T_ph, SMTT(5)
<2>dest. xd[x] \in DInst
 BY ONLY <1>rQhZD7DcasZpNE, <1>vx9OnCyVIC, <2>effect, Sizes, Location, Design, SMTT(5)
<2>other. \A i \in PInst : i \in Inst /\ i # xd[x]
 BY ONLY <1>HsRNXPeY1C, <2>dest, Sizes, Location, Design, SMTT(5)
<2>phPoint. \A i \in PInst,r \in Rq : ph'[i][r]=ph[i][r]
 BY ONLY <2>effect, <2>types, <2>other, SMTT(5)
<2>qed. QED BY ONLY <2>effect, <2>phPoint, SMTT(5) DEF ez8hZbQN7k


<1>ONi7HvH099LZ1ixF80uZwtbYVxBchQQu.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x) /\ SFollow
 PROVE EntryQuarantineDisjoint'
 BY ONLY <1>ONi7HvH099LZ1ixF80uZwtbYVxBchQQu, Sizes, Location, Design, <1>rQhZD7DcasZpNE, <1>IGL3qfJM DEF Sizes, Location, Design


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

<1>KTfm1Vyx0tgdDCUGdFXaF6u.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>KTfm1Vyx0tgdDCUGdFXaF6u, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>KTfm1Vyx0tgdDCUGdFXaF6u, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF DBadLen, instV, kV, rtV, Sizes, Location, Design
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


<1>CAMMNqAjcE.        
  ASSUME NEW x \in Xids, DBadLen(x)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>CAMMNqAjcE, Sizes, Location, Design, ZenonT(5) DEF DBadLen, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M0078_PP_PdDBadLenFrames

\* T2M-SCOPE R2M0079_PP_PdCell_DBadLen_K17

<1>xVMLcfo1.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE K17'
<2> USE ONLY <1>xVMLcfo1, Sizes, Location, Design
<2>1. K17 /\ T_krs /\ T_ph /\ T_xd /\ T_xr /\ T_xdst
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K17, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,rg,rpg>>
  BY <1>CAMMNqAjcE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A a \in Inst, u \in Rq : ph[a][u] \in {"run","ovl","end"} => ph'[a][u] \in {"run","ovl","end"}
  BY <2>1, SMTT(10), Sizes, Location, Design DEF DBadLen, T_ph, T_xd, T_xdst, T_xr, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>OtwOsU0RJ4Qs, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0079_PP_PdCell_DBadLen_K17


<1>lXUeT5khUF.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE K17'
  BY ONLY <1>lXUeT5khUF, Sizes, Location, Design, <1>xVMLcfo1, V21_Inv_K17 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>X3HipoFZN2TfPzj9D.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>X3HipoFZN2TfPzj9D, Sizes, Location, Design, DomainKeep_DBadLen, SMTT(5)
\* T2M-END R2M0270_PdPDomain_DBadLen


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


<1>zXOrJizwOuSS8XP.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, kfly, kpin, krs, nfail, nx, torn, xg, xr>>
 BY ONLY <1>zXOrJizwOuSS8XP, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF DBadLen, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rH1RD239yay.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE K14'
<2> USE ONLY <1>rH1RD239yay, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>zXOrJizwOuSS8XP, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DFjcJaKzNy.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE S2'
<2> USE ONLY <1>DFjcJaKzNy, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>zXOrJizwOuSS8XP, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HYrhTw8ucv.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE S3'
<2> USE ONLY <1>HYrhTw8ucv, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>zXOrJizwOuSS8XP, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lawtPSpFSf.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE S4'
<2> USE ONLY <1>lawtPSpFSf, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>zXOrJizwOuSS8XP, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZRu3xWtB8tygAShCeCe.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>ZRu3xWtB8tygAShCeCe, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>zXOrJizwOuSS8XP, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T04R6HZKRC6OrsmQ8e.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>T04R6HZKRC6OrsmQ8e, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>zXOrJizwOuSS8XP, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0359_PdPFrames_DBadLen

\* T2M-SCOPE R2M0455_PdPOff_DBadLen

<1>hP4T6MI3ZMQTPcqD5.        
 ASSUME NEW x \in Xids, PinInv, DBadLen(x), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>hP4T6MI3ZMQTPcqD5, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0455_PdPOff_DBadLen


<1> QED BY <1>ONi7HvH099LZ1ixF80uZwtbYVxBchQQu, <1>lXUeT5khUF, <1>rH1RD239yay, <1>DFjcJaKzNy, <1>HYrhTw8ucv, <1>lawtPSpFSf, <1>ZRu3xWtB8tygAShCeCe, <1>T04R6HZKRC6OrsmQ8e, <1>KTfm1Vyx0tgdDCUGdFXaF6u, <1>hP4T6MI3ZMQTPcqD5, <1>X3HipoFZN2TfPzj9D, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_DBadLen_01_01, Part_DBadLen_01_02, Part_DBadLen_02_01, Part_DBadLen_02_02, Part_DBadLen_03_01, Part_DBadLen_03_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_DBadLen
HIDE DEF DomainKeep_DBadLen, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_STypeOK, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_DBadLen ==
 ASSUME NEW x \in Xids, Sizes, Location, Design, PinInv, DBadLen(x), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Xids, Sizes, Location, Design, PinInv, DBadLen(u), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_DBadLen_01_01, Part_DBadLen_01_02, Part_DBadLen_02_01, Part_DBadLen_02_02, Part_DBadLen_03_01, Part_DBadLen_03_02, Group_DBadLen_04, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_DBadLen_01_01, Part_DBadLen_01_02, Part_DBadLen_02_01, Part_DBadLen_02_02, Part_DBadLen_03_01, Part_DBadLen_03_02, Group_DBadLen_04, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, DBadLen(x), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, DBadLen(x), ShapeKeep_DBadLen, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
