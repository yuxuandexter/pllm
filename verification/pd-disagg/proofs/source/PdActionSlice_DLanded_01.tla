---- MODULE PdActionSlice_DLanded_01 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_a4f012cb1d798492, PdFinalInvProjections, PdFinalEffects, PdSharedRefCounts, PdShapeBase

\* Complete original body PdFinalPart_DLanded_01_01 SHA dac3c784295aa507547e5611fb54c7789b886a46e07a10f9faec909ca1b56d09
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K17, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SharedRefZero, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_DLanded_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE (QuietConservation)' /\ (TypInv)' /\ (P_SI2)' /\ (SharedLedRef)' /\ (NoFreeUnderRead)' /\ (NoEvictUnderRDMA)' /\ (K14)' /\ (S3)'
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

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_STypeRest, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_HoldersShared, RD_QuietPart, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP

<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Tq.        
 S3 /\ UNCHANGED <<torn>> => S3'
 BY IsaT(10), Sizes, Location, Design DEF S3, Sizes, Location, Design
\* T2M-END R2M0343_PdPF_S3

\* T2M-SCOPE R2M0451_PdPF_B2OffInit

<1>yYI.        
 K14 /\ UNCHANGED <<gen, kfly, kpin, krs>> => K14'
 BY IsaT(10), Sizes, Location, Design DEF K14, Sizes, Location, Design
\* T2M-END R2M0355_PdPF_K14


<1>wuYoKzZvEb5Qe7K.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, pr, pst, rd, rp, rt, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>wuYoKzZvEb5Qe7K, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF DLanded, ghV, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qfl4TPG1BTQ.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE K14'
<2> USE ONLY <1>qfl4TPG1BTQ, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>wuYoKzZvEb5Qe7K, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aj0Xx1asWM.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE S3'
<2> USE ONLY <1>aj0Xx1asWM, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>wuYoKzZvEb5Qe7K, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

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


<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>bVJpsRL2CYXpUQFGgqL.        
  NoFreeUnderRead /\ UNCHANGED <<kpin, krs, pgn, pr, pst, spst, sown, sgen, skey, sdata, swrite>> => NoFreeUnderRead'
  BY Zenon, Sizes, Location, Design DEF KHeld, NoFreeUnderRead, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M0810_PdRDPort_PdDFrames

\* T2M-SCOPE R2M0813_PdRDPort_PdDDataA

<1>AWFFjTo6SB1.        
  ASSUME NEW x \in Xids, PinInv, InFl(x)
  PROVE xdst[x] \in Pages /\ x \in led[xdst[x]]
<2> USE ONLY <1>AWFFjTo6SB1, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. x < nx /\ xdst[x] \in Pages
  BY <2>1, <1>oDwSckhynVYFiD, <1>ThNFqMwTGztK7JQd, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K2, K3, K4, InFl, ExpPage, InitPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NuSIx1y2uK32CyDD.        
  ASSUME NEW p \in Pages, PinInv, led[p] = {}
  PROVE NoWriteInto(p)
<2> USE ONLY <1>NuSIx1y2uK32CyDD, Sizes, Location, Design
<2>1. \A x \in Xids : InFl(x) => x \in led[xdst[x]]
  BY <1>AWFFjTo6SB1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMTT(10), Sizes, Location, Design DEF NoWriteInto, Writing, Sizes, Location, Design

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

<1>aMMn8xSvyMnzQXEFO.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r)
  PROVE CoreTypeOK'
 BY ONLY <1>aMMn8xSvyMnzQXEFO, AuxType_a4f012cb1d798492, Sizes, Location, Design DEF Sizes, Location, Design

<1>bkyGATUr0vcVLt4PU.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>bkyGATUr0vcVLt4PU, Sizes, Location, Design, SMTT(10) DEF DLanded, DStartRun, ghV, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AyFZXtA2a8EI99.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>AyFZXtA2a8EI99, Sizes, Location, Design
<2>1. RD_PhType /\ RD_RgType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>bkyGATUr0vcVLt4PU, Sizes, SMTT(10), Location, Design DEF DLanded, DStartRun, ghV, instV, kV, rtV, xV, RD_PFrame, PInst, DInst, Inst, NL, IsD, RD_PhType, RD_RgType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OF0rOpdQVBEO6qIx.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE xdst' \in [Xids -> 0..NP]
<2> USE ONLY <1>OF0rOpdQVBEO6qIx, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>OF0rOpdQVBEO6qIx, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY SMTT(10), Sizes, Location, Design DEF DLanded, DStartRun, ghV, instV, kV, rtV, xV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0822_PdRDEffects_DLanded


<1>y4m1I7tPqNv9bU.        
  ASSUME NEW S, NEW T, NEW f \in [S -> SUBSET T], NEW q \in S, NEW e, f[q] = {}
  PROVE [f EXCEPT ![q] = @ \cup {e}] = [f EXCEPT ![q] = {e}]
<2> USE ONLY <1>y4m1I7tPqNv9bU, Sizes, Location, Design
<2>1. f[q] \cup {e} = {e}
  BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY ONLY <2>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0824_PdRDPort_PdEmptyUnionA


<1>MtPTtDtVPP.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DLanded(j, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, pqp, pr, prefc, pst, ptl, rd, rg, rhit, rp, rpe, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>MtPTtDtVPP, Sizes, Location, Design, Design, SMTT(10) DEF DLanded, DStartRun, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wtsUHB5HA3mFZklKzuYd.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r), SFollow
  PROVE NoFreeUnderRead'
<2> USE ONLY <1>wtsUHB5HA3mFZklKzuYd, Sizes, Location, Design
<2>1. NoFreeUnderRead /\ UNCHANGED <<kpin, krs, pgn, pr, pst>>
  BY <1>MtPTtDtVPP, SMTT(10), V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, Sizes, Location, Design
<2>2. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>AyFZXtA2a8EI99, <1>OF0rOpdQVBEO6qIx, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>2, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>AyFZXtA2a8EI99, <1>bkyGATUr0vcVLt4PU, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. RD_SFrame /\ UNCHANGED spst
 BY <2>4, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>5, <2>3, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>1, <1>bVJpsRL2CYXpUQFGgqL, SMTT(10), V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, tqQeS, KPages, NoFreeUnderRead, RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M0823_PdRDPort_PdDLandedFramesA

\* T2M-SCOPE R2M0825_PdRDPort_PdDLandedEffectsA

<1>ZXCkHiYbm.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r)
  PROVE LET q == rpg[j][r] g == rg[j][r] x == rx[j][r] IN
    /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens
    /\ ~rhit[j][r] /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
    /\ x \in Xids /\ x < nx /\ xr[x] = r /\ xg[x] = g /\ xdst[x] = q
    /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x]
    /\ xnt[x] = NTok(r,g) /\ ptl[q] = NTok(r,g)
    /\ led[q] = {} /\ sfly[q] = {} /\ sled[q] = {}
<2> USE ONLY <1>ZXCkHiYbm, Sizes, Location, Design
<2>1. K2 /\ K3 /\ K8 /\ K9 /\ K10 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. j \in DInst /\ ph[j][r] = "wait" /\ Mode = "push"
          /\ rx[j][r] \in Xids /\ xst[rx[j][r]] = "landed" /\ led[rpg[j][r]] = {}
  BY Sizes, SMTT(10), Location, Design DEF DLanded, IsD, DInst, Inst, NL, Sizes, Location, Design
<2>3. rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ rg[j][r] \in Gens
          /\ ~rhit[j][r] /\ pst[rpg[j][r]] = "priv"
          /\ pr[rpg[j][r]] = r /\ pgn[rpg[j][r]] = rg[j][r]
  BY <2>1, <2>2, <1>q2QyUi1oSBW, <1>hmZBL0hE, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<2>4. rx[j][r] < nx /\ xr[rx[j][r]] = r /\ xg[rx[j][r]] = rg[j][r]
          /\ xdst[rx[j][r]] = rpg[j][r] /\ sfly[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {}
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K9, Sizes, Location, Design
<2>5. hw[rx[j][r]] = "stop" /\ hok[rx[j][r]] /\ xlt[rx[j][r]] = xnt[rx[j][r]]
          /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <2>1, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF K2, K3, XX2v, Xids, Sizes, Location, Design
<2>6. ptl[rpg[j][r]] = NTok(r,rg[j][r])
  BY <2>1, <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K10, OwnedBy, Sizes, Location, Design
<2>7. QED
  BY <2>2, <2>3, <2>4, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wDdz8YcmhDU.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r)
  PROVE /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, pqp, pr, prefc, pst, ptl, rd, rg, rhit, rp, rpe, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
<2> USE ONLY <1>wDdz8YcmhDU, Sizes, Location, Design
<2>1. rpg[j][r] \in Pages /\ sBjpCf /\ a4GqBP /\ vn9M /\ jyWjj /\ eWP7z1 /\ sfly[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {}
       /\ hw[rx[j][r]] = "stop" /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <1>ZXCkHiYbm, <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = xnt[rx[j][r]]]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = IF Flush /\ hw[rx[j][r]] = "stop" THEN TRUE ELSE @]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = @ \cup {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = @ \cup {Tag(r,rg[j][r])}]
  BY Zenon, Sizes, Location, Design DEF DLanded, DStartRun, Sizes, Location, Design
<2>3. plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
  BY ONLY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF jyWjj, eWP7z1, Sizes, Location, Design
<2>4. sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
  BY <2>1, <2>2, <1>y4m1I7tPqNv9bU, SMTT(10), Sizes, Location, Design DEF sBjpCf, Tag, Sizes, Location, Design
<2>5. sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
  BY <2>1, <2>2, <1>y4m1I7tPqNv9bU, SMTT(10), Sizes, Location, Design DEF a4GqBP, Tag, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>3, <2>4, <2>5, <1>MtPTtDtVPP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0825_PdRDPort_PdDLandedEffectsA

\* T2M-SCOPE R2M0826_PdRDPort_PdDLandedMasksA
\* T2M-BODY R2M0826_PdRDPort_PdDLandedMasksA

\* T2M-END R2M0826_PdRDPort_PdDLandedMasksA

\* T2M-SCOPE R2M0827_PdRDPort_PdDLandedStepsA
\* T2M-BODY R2M0827_PdRDPort_PdDLandedStepsA
\* T2M-LOCAL-VISIBILITY

<1>GC2khBBps3H4uvXSPqZDGG.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r), SFollow
  PROVE BaseQuietConservation'
<2> USE ONLY <1>GC2khBBps3H4uvXSPqZDGG, Sizes, Location, Design
<2>1. BaseQuietConservation /\ vn9M /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_QuietConservation, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, TEJtP, BaseSafety, QuietConservation, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<kpin, krs, led, prefc, pst>>
  BY <1>wDdz8YcmhDU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>ZXCkHiYbm, <1>NuSIx1y2uK32CyDD, Design, Location, Sizes, SMTT(10) DEF Active, DInst, Inst, IsD, IsP, KPinned, NL, Quiet, BaseQuietConservation, vn9M, a4GqBP, Tag, KPages, QuietConservation, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uzt9aEg5BrVY28eToZf8fq2A.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>uzt9aEg5BrVY28eToZf8fq2A, Sizes, Location, Design
<2>1. UNCHANGED <<xsrc,hw,xr,xg>>
 BY SMTT(10), Sizes, Location, Design DEF DLanded, DStartRun, ghV, instV, kV, rtV, xV, Sizes, Location, Design
<2>2. RD_PFrame BY <1>AyFZXtA2a8EI99, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>HJqiycb18Jq3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>r7JN5D1N1GAi8hCeeTRBQGD.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE NoFreeUnderRead'
 BY ONLY <1>r7JN5D1N1GAi8hCeeTRBQGD, Sizes, Location, Design, <1>wtsUHB5HA3mFZklKzuYd, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>CtPBjlrn693AUfEm6uPtjspXB.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE QuietConservation'
<2> USE ONLY <1>CtPBjlrn693AUfEm6uPtjspXB, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>AyFZXtA2a8EI99, <1>bkyGATUr0vcVLt4PU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>GC2khBBps3H4uvXSPqZDGG, <1>gyoQxsy4xeJWLmNfm, <1>vRoxPLY0ZtTb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>u4UYGeXnFO9z03.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE TypInv'
<2> USE ONLY <1>u4UYGeXnFO9z03, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED xsrc
 BY <1>AyFZXtA2a8EI99, <1>bkyGATUr0vcVLt4PU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK'
 BY <2>1, <1>NDQyqiufWt5zT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, <1>aMMn8xSvyMnzQXEFO, SMTT(10), Sizes, Location, Design DEF TypInv, Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>tU0C5tuibgsKhE8jFdku.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE SharedLedRef'
<2> USE ONLY <1>tU0C5tuibgsKhE8jFdku, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>AyFZXtA2a8EI99, <1>bkyGATUr0vcVLt4PU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>WNuC2jkOhy0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>IVNEhmJJMna.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE P_SI2'
 BY ONLY <1>IVNEhmJJMna, Sizes, Location, Design, <1>AyFZXtA2a8EI99, <1>bkyGATUr0vcVLt4PU, <1>HQkX8HBDKVM, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>CtPBjlrn693AUfEm6uPtjspXB, <1>u4UYGeXnFO9z03, <1>IVNEhmJJMna, <1>tU0C5tuibgsKhE8jFdku, <1>r7JN5D1N1GAi8hCeeTRBQGD, <1>uzt9aEg5BrVY28eToZf8fq2A, <1>qfl4TPG1BTQ, <1>aj0Xx1asWM, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DLanded_01_02 SHA b8ddc193018b96256b98a0a480f0784a80ab3d10bb29d62bc099db140ee0ea56
USE DEF V21_Inv_K7, V21_Inv_KReadIntegrity, V21_Inv_NoStrayAccess, V21_Inv_QuarNoReg, V21_Inv_ReadOwnLanded, V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6, V21_Inv_SendOwnLanded, V22_SF_Choice, V22_SF_Map, V22_SF_Off, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_T_iv, V22_T_pst, V22_T_xst
HIDE DEF AuxType_a4f012cb1d798492, Part_DLanded_01_01, V21_Inv_HitIdentity, V21_Inv_NoEvictUnderRDMA, V21_Inv_PrefcMatchesHolders, V21_Inv_QuietConservation, V21_Inv_S3, V21_SFollowStatic, V22_PostSharedRefZero, V22_T_dpreOK, V22_T_rpgS, V22_T_sentry, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_xprefixOK
THEOREM Part_DLanded_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE (P_SI5)' /\ (KReadIntegrity)' /\ (NoStrayAccess)' /\ (K15)' /\ (P_SI4)' /\ (ReadOwnLanded)' /\ (SendOwnLanded)'
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

           RD_NoStop == \A x \in Xids : ~(hw[x] \in {"fly","issued"} /\ hw'[x]="stop")

           RD_ReadPart == B2 => \A j \in DInst,r \in Rq : ph[j][r] \in {"run","ovl"} => dpreOK[rpg[j][r]]

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

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_Q2, RD_EQUpdate, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_XKeysFrame, RD_EntryRange, RD_Controls, RD_SendShared, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, RD_NoStop, RD_ReadPart, RD_RegSafe, RD_KeyOnSource, RD_StopBack, RD_SI5Quar, RD_SI5Stop, RD_SI5Map

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
<2> HIDE DEF CoreTypeOK, STypeOK, SFollow, V22_FPosted, V22_FSX, V22_FPX, V22_FSrc
<2>off. CASE ~B2
 BY ONLY <1>zMokmOdGw, <2>off, V22_SF_Off, SMTT(5) DEF sV
<2>on. CASE B2
 <3>rg. \A i \in PInst, r \in Rq : rg'[i][r]=rg[i][r]
  BY ONLY <1>zMokmOdGw, SMTT(5) DEF RD_PFrame
 <3>smapType. smap \in [PInst -> [Rq -> {0} \cup SPages]]
  BY ONLY <1>zMokmOdGw, V22_T_smap, SMTT(5)
 <3>smapEffect. smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]
  BY ONLY <1>zMokmOdGw, <2>on, V22_SF_Map, SMTT(5)
 <3>smapFrame. UNCHANGED smap
  BY ONLY <3>smapType, <3>smapEffect, <3>rg, SMTT(5)
 <3>schoiceType. schoice \in [PInst -> [Rq -> BOOLEAN]]
  BY ONLY <1>zMokmOdGw, V22_T_schoice, SMTT(5)
 <3>schoiceEffect. schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]
  BY ONLY <1>zMokmOdGw, <2>on, V22_SF_Choice, SMTT(5)
 <3>schoiceFrame. UNCHANGED schoice
  BY ONLY <3>schoiceType, <3>schoiceEffect, <3>rg, SMTT(5)
 <3>qed. QED BY ONLY <3>smapFrame, <3>schoiceFrame, SMTT(5)
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>cIrFCXuTtPxBU.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE UNCHANGED <<xsrcS,xsrcP>>
<2> HIDE DEF CoreTypeOK, STypeOK, SFollow, V22_FPosted, V22_FSX, V22_FPX, V22_FSrc
<2>off. CASE ~B2
 BY ONLY <1>cIrFCXuTtPxBU, <2>off, V22_SF_Off, SMTT(5) DEF sV
<2>on. CASE B2
 <3>pageDomain. 0 \notin Pages
  BY ONLY Sizes, SMTT(5) DEF Sizes, Pages
 <3>noPosted. \A x \in Xids : ~V22_FPosted(x)
  BY ONLY <1>cIrFCXuTtPxBU, <3>pageDomain, SMTT(5) DEF V22_FPosted
 <3>xsrcSType. xsrcS \in [Xids -> SUBSET SPages]
  BY ONLY <1>cIrFCXuTtPxBU, V22_T_xsrcS, SMTT(5)
 <3>xsrcSEffect. xsrcS'=V22_FSX
  BY ONLY <1>cIrFCXuTtPxBU, <2>on, V22_SF_SourceShared, SMTT(5)
 <3>xsrcSFrame. UNCHANGED xsrcS
  BY ONLY <3>xsrcSType, <3>xsrcSEffect, <3>noPosted, SMTT(5) DEF V22_FSX
 <3>xsrcPType. xsrcP \in [Xids -> SUBSET SPages]
  BY ONLY <1>cIrFCXuTtPxBU, V22_T_xsrcP, SMTT(5)
 <3>xsrcPEffect. xsrcP'=V22_FPX
  BY ONLY <1>cIrFCXuTtPxBU, <2>on, V22_SF_SourcePrivate, SMTT(5)
 <3>xsrcPFrame. UNCHANGED xsrcP
  BY ONLY <3>xsrcPType, <3>xsrcPEffect, <3>noPosted, SMTT(5) DEF V22_FPX
 <3>qed. QED BY ONLY <3>xsrcSFrame, <3>xsrcPFrame, SMTT(5)
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

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

<1>ESCk6pb406w.         BaseKReadIntegrity' /\ SMapIntegrity' => KReadIntegrity'
 BY SMTT(10), Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M0733_PdRDSharedSafety


<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>AWFFjTo6SB1.        
  ASSUME NEW x \in Xids, PinInv, InFl(x)
  PROVE xdst[x] \in Pages /\ x \in led[xdst[x]]
<2> USE ONLY <1>AWFFjTo6SB1, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. x < nx /\ xdst[x] \in Pages
  BY <2>1, <1>oDwSckhynVYFiD, <1>ThNFqMwTGztK7JQd, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K2, K3, K4, InFl, ExpPage, InitPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NuSIx1y2uK32CyDD.        
  ASSUME NEW p \in Pages, PinInv, led[p] = {}
  PROVE NoWriteInto(p)
<2> USE ONLY <1>NuSIx1y2uK32CyDD, Sizes, Location, Design
<2>1. \A x \in Xids : InFl(x) => x \in led[xdst[x]]
  BY <1>AWFFjTo6SB1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMTT(10), Sizes, Location, Design DEF NoWriteInto, Writing, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k95sG3dQ7zL.        
  ASSUME NEW x \in Xids, PinInv, hw[x] = "fly"
  PROVE xsrc[x] \in Pages /\ Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>k95sG3dQ7zL, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, <1>oDwSckhynVYFiD, SMTT(10), Sizes, Location, Design DEF InFl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M0813_PdRDPort_PdDDataA

\* T2M-SCOPE R2M0814_PdRDPort_PdFactsA

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


<1>bkyGATUr0vcVLt4PU.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>bkyGATUr0vcVLt4PU, Sizes, Location, Design, SMTT(10) DEF DLanded, DStartRun, ghV, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AyFZXtA2a8EI99.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>AyFZXtA2a8EI99, Sizes, Location, Design
<2>1. RD_PhType /\ RD_RgType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>bkyGATUr0vcVLt4PU, Sizes, SMTT(10), Location, Design DEF DLanded, DStartRun, ghV, instV, kV, rtV, xV, RD_PFrame, PInst, DInst, Inst, NL, IsD, RD_PhType, RD_RgType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OF0rOpdQVBEO6qIx.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE xdst' \in [Xids -> 0..NP]
<2> USE ONLY <1>OF0rOpdQVBEO6qIx, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>OF0rOpdQVBEO6qIx, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY SMTT(10), Sizes, Location, Design DEF DLanded, DStartRun, ghV, instV, kV, rtV, xV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0822_PdRDEffects_DLanded


<1>y4m1I7tPqNv9bU.        
  ASSUME NEW S, NEW T, NEW f \in [S -> SUBSET T], NEW q \in S, NEW e, f[q] = {}
  PROVE [f EXCEPT ![q] = @ \cup {e}] = [f EXCEPT ![q] = {e}]
<2> USE ONLY <1>y4m1I7tPqNv9bU, Sizes, Location, Design
<2>1. f[q] \cup {e} = {e}
  BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY ONLY <2>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0824_PdRDPort_PdEmptyUnionA


<1>MtPTtDtVPP.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DLanded(j, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, pqp, pr, prefc, pst, ptl, rd, rg, rhit, rp, rpe, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>MtPTtDtVPP, Sizes, Location, Design, Design, SMTT(10) DEF DLanded, DStartRun, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZXCkHiYbm.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r)
  PROVE LET q == rpg[j][r] g == rg[j][r] x == rx[j][r] IN
    /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens
    /\ ~rhit[j][r] /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
    /\ x \in Xids /\ x < nx /\ xr[x] = r /\ xg[x] = g /\ xdst[x] = q
    /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x]
    /\ xnt[x] = NTok(r,g) /\ ptl[q] = NTok(r,g)
    /\ led[q] = {} /\ sfly[q] = {} /\ sled[q] = {}
<2> USE ONLY <1>ZXCkHiYbm, Sizes, Location, Design
<2>1. K2 /\ K3 /\ K8 /\ K9 /\ K10 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. j \in DInst /\ ph[j][r] = "wait" /\ Mode = "push"
          /\ rx[j][r] \in Xids /\ xst[rx[j][r]] = "landed" /\ led[rpg[j][r]] = {}
  BY Sizes, SMTT(10), Location, Design DEF DLanded, IsD, DInst, Inst, NL, Sizes, Location, Design
<2>3. rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ rg[j][r] \in Gens
          /\ ~rhit[j][r] /\ pst[rpg[j][r]] = "priv"
          /\ pr[rpg[j][r]] = r /\ pgn[rpg[j][r]] = rg[j][r]
  BY <2>1, <2>2, <1>q2QyUi1oSBW, <1>hmZBL0hE, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<2>4. rx[j][r] < nx /\ xr[rx[j][r]] = r /\ xg[rx[j][r]] = rg[j][r]
          /\ xdst[rx[j][r]] = rpg[j][r] /\ sfly[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {}
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K9, Sizes, Location, Design
<2>5. hw[rx[j][r]] = "stop" /\ hok[rx[j][r]] /\ xlt[rx[j][r]] = xnt[rx[j][r]]
          /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <2>1, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF K2, K3, XX2v, Xids, Sizes, Location, Design
<2>6. ptl[rpg[j][r]] = NTok(r,rg[j][r])
  BY <2>1, <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K10, OwnedBy, Sizes, Location, Design
<2>7. QED
  BY <2>2, <2>3, <2>4, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wDdz8YcmhDU.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r)
  PROVE /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, pqp, pr, prefc, pst, ptl, rd, rg, rhit, rp, rpe, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
<2> USE ONLY <1>wDdz8YcmhDU, Sizes, Location, Design
<2>1. rpg[j][r] \in Pages /\ sBjpCf /\ a4GqBP /\ vn9M /\ jyWjj /\ eWP7z1 /\ sfly[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {}
       /\ hw[rx[j][r]] = "stop" /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <1>ZXCkHiYbm, <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = xnt[rx[j][r]]]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = IF Flush /\ hw[rx[j][r]] = "stop" THEN TRUE ELSE @]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = @ \cup {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = @ \cup {Tag(r,rg[j][r])}]
  BY Zenon, Sizes, Location, Design DEF DLanded, DStartRun, Sizes, Location, Design
<2>3. plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
  BY ONLY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF jyWjj, eWP7z1, Sizes, Location, Design
<2>4. sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
  BY <2>1, <2>2, <1>y4m1I7tPqNv9bU, SMTT(10), Sizes, Location, Design DEF sBjpCf, Tag, Sizes, Location, Design
<2>5. sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
  BY <2>1, <2>2, <1>y4m1I7tPqNv9bU, SMTT(10), Sizes, Location, Design DEF a4GqBP, Tag, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>3, <2>4, <2>5, <1>MtPTtDtVPP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0825_PdRDPort_PdDLandedEffectsA

\* T2M-SCOPE R2M0826_PdRDPort_PdDLandedMasksA
\* T2M-BODY R2M0826_PdRDPort_PdDLandedMasksA

\* T2M-END R2M0826_PdRDPort_PdDLandedMasksA

\* T2M-SCOPE R2M0827_PdRDPort_PdDLandedStepsA
\* T2M-BODY R2M0827_PdRDPort_PdDLandedStepsA
\* T2M-LOCAL-VISIBILITY

<1>Mkyc3wYc.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r), SFollow
  PROVE K15'
<2> USE ONLY <1>Mkyc3wYc, Sizes, Location, Design
<2>1. K15 /\ K14 /\ tqQeS /\ jyWjj /\ eWP7z1 /\ sBjpCf /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K14, V21_Inv_K15, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<gen, hw, kfly, kpin, krs, led, ptl, xdst>>
  BY <1>wDdz8YcmhDU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>AyFZXtA2a8EI99, <1>OF0rOpdQVBEO6qIx, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>3, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>4, <1>TLVER4XMUn, P_PagePoolsDisjoint, P_PagePoolsDisjoint, <2>1, <2>2, <1>ZXCkHiYbm, <1>NuSIx1y2uK32CyDD, Design, Location, Sizes, SMTT(10), V21_Inv_K14, V21_Inv_K15, V21_Inv_TypeOK DEF DInst, InFl, Inst, IsD, IsP, K14, K15, KData, NL, NoWriteInto, tqQeS, jyWjj, eWP7z1, sBjpCf, a4GqBP, Tag, Writing, KPages, TEJtP, tqQeS, KPages, Sizes, Location, Design
\* T2M-LOCAL-VISIBILITY

<1>gG243YQU1S2Pr0AizY.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r), SFollow
  PROVE NoStrayAccess'
<2> USE ONLY <1>gG243YQU1S2Pr0AizY, Sizes, Location, Design
<2>1. NoStrayAccess /\ sBjpCf
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_KStruct, V21_Inv_NoStrayAccess, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, TEJtP, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<hw, kfly, krs, pgn, pr, pst, xdst, xg, xr, xsrc>>
  BY <1>wDdz8YcmhDU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>AyFZXtA2a8EI99, <1>bkyGATUr0vcVLt4PU, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_SFrame /\ UNCHANGED spst
 BY <2>3, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>4, P_PagePoolsDisjoint, <2>1, <2>2, <1>ZXCkHiYbm, <1>NuSIx1y2uK32CyDD, Design, Location, Sizes, SMTT(10) DEF DInst, Held, InFl, Inst, IsD, IsP, KHeld, NL, NoStrayAccess, sBjpCf, Tag, Writing, KPages, RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-LOCAL-VISIBILITY

<1>Cncywz1LtXx0WvIWwZ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r), SFollow
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>Cncywz1LtXx0WvIWwZ, Sizes, Location, Design
<2>1. BaseReadOwnLanded /\ K8 /\ vn9M /\ jyWjj /\ eWP7z1 /\ sBjpCf /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, BaseSafety, ReadOwnLanded, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<gen, hd, hp, hw, iv, led, nx, pgn, pr, pst, ptl, rg, rhit, rpe, rpg, rx, xdst, xg, xlt, xr, xsrc>>
  BY <1>wDdz8YcmhDU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>ZXCkHiYbm, <1>NuSIx1y2uK32CyDD, Design, Location, Sizes, SMTT(10) DEF Active, DInst, InFl, Inst, IsD, IsP, K8, NL, NoWriteInto, OwnedBy, BaseReadOwnLanded, vn9M, jyWjj, eWP7z1, sBjpCf, a4GqBP, Tag, Writing, KPages, ReadOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cq6aU2xbau5RLwe8ds.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>cq6aU2xbau5RLwe8ds, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ sBjpCf
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, TEJtP, BaseSafety, SendOwnLanded, Sizes, Location, Design
<2>2. UNCHANGED <<hw,ptl,xsrc,xlt>>
  BY <1>wDdz8YcmhDU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ j \in DInst
      /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
  BY <1>wDdz8YcmhDU, <1>ZXCkHiYbm, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW x \in Xids, hw[x] = "fly"
      PROVE (ptl[xsrc[x]] = xlt[x] /\ sfly[xsrc[x]] = {})'
<3>1. xsrc[x] \in Pages /\ Loc(xsrc[x]) \in PInst
  BY <2>4, <1>k95sG3dQ7zL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. xsrc[x] # rpg[j][r]
  BY <3>1, <2>3, <1>JPlcx3f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. QED
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF BaseSendOwnLanded, sBjpCf, SendOwnLanded, Sizes, Location, Design
<2>5. QED
  BY <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF BaseSendOwnLanded, SendOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KRB9a7fDoVSRiZ2J7DS.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r), SFollow
  PROVE BaseKReadIntegrity'
<2> USE ONLY <1>KRB9a7fDoVSRiZ2J7DS, Sizes, Location, Design
<2>1. BaseKReadIntegrity /\ K14 /\ tqQeS /\ jyWjj /\ eWP7z1 /\ sBjpCf
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K14, V21_Inv_KReadIntegrity, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, BaseSafety, KReadIntegrity, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<gen, hw, kfly, kpin, krs, pgn, pr, pst, ptl, xdst>>
  BY <1>wDdz8YcmhDU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>AyFZXtA2a8EI99, <1>bkyGATUr0vcVLt4PU, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_SFrame /\ UNCHANGED spst
 BY <2>3, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>4, P_PagePoolsDisjoint, <2>1, <2>2, <1>ZXCkHiYbm, <1>NuSIx1y2uK32CyDD, Design, Location, Sizes, SMTT(10) DEF DInst, InFl, Inst, IsD, IsP, K14, KData, KHeld, BaseKReadIntegrity, NL, NoWriteInto, tqQeS, jyWjj, eWP7z1, sBjpCf, Tag, Writing, KPages, KReadIntegrity, RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M0827_PdRDPort_PdDLandedStepsA


<1>jqvB6a5byXb.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE K15'
 BY ONLY <1>jqvB6a5byXb, Sizes, Location, Design, <1>Mkyc3wYc, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>N91sCjrJ1ToR6zGXnFWDl2.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>N91sCjrJ1ToR6zGXnFWDl2, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>AyFZXtA2a8EI99, <1>bkyGATUr0vcVLt4PU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>KRB9a7fDoVSRiZ2J7DS, <1>llETZGACL, <1>ESCk6pb406w, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>Oqq80e1pA2H4hZeP62fbw.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE NoStrayAccess'
 BY ONLY <1>Oqq80e1pA2H4hZeP62fbw, Sizes, Location, Design, <1>gG243YQU1S2Pr0AizY, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>iFb7Jns3mGYUwGrwEqhK7.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE ReadOwnLanded'
<2> USE ONLY <1>iFb7Jns3mGYUwGrwEqhK7, Sizes, Location, Design
<2>1. RD_NoStop /\ RD_PhType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), Sizes, Location, Design DEF DLanded, xV, RD_NoStop, Sizes, Location, Design
<2>2. ReadOwnLanded'
<3>1. rpg[j][r] \in Pages /\ pst[rpg[j][r]]="priv" /\
       rx[j][r] \in Xids /\ hw[rx[j][r]]="stop" /\ hok[rx[j][r]] /\ xdst[rx[j][r]]=rpg[j][r] /\ Held(rpg[j][r],rx[j][r])
 BY <1>ZXCkHiYbm, SMTT(10), Sizes, Location, Design DEF Held, Sizes, Location, Design
<3>2. B2 => dpreOK[rpg[j][r]]
 BY <3>1, <1>sLcEPlD0yKVy2TBCw, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. ph'=[ph EXCEPT ![j][r]="run"] /\ UNCHANGED rpg
 BY <1>wDdz8YcmhDU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>4. QED BY <2>1, <3>1, <3>2, <3>3, <1>TYhlAtBIHfhkB1, <1>Cncywz1LtXx0WvIWwZ, <1>RCKQzj633zU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>bDrAipZPtNJ0XAFpZFjBj.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE SendOwnLanded'
<2> USE ONLY <1>bDrAipZPtNJ0XAFpZFjBj, Sizes, Location, Design
<2>1. UNCHANGED <<xsrc,hw,xr,xg>>
 BY SMTT(10), Sizes, Location, Design DEF DLanded, DStartRun, ghV, instV, kV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>cq6aU2xbau5RLwe8ds, <1>BeoqOTbNFxOyFnZ, <1>UukBaziv337, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>SfYBKdCLTrP.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE P_SI4'
<2> USE ONLY <1>SfYBKdCLTrP, Sizes, Location, Design
<2>1. RD_XKeysFrame /\ UNCHANGED hw /\ RD_PFrame
 BY <1>AyFZXtA2a8EI99, SMTT(10), Sizes, Location, Design DEF DLanded, DStartRun, ghV, instV, kV, rtV, xV, RD_XKeysFrame, Sizes, Location, Design
<2>2. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}] /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>SfYBKdCLTrP, V22_T_iv, V22_T_xst, SMTT(5)

<2>3. RD_Controls
 BY <2>2, SMTT(10), Sizes, Location, Design DEF DLanded, DStartRun, ghV, instV, kV, rtV, xV, RD_Controls, Sizes, Location, Design
<2>4. CASE B2 BY <2>1, <2>3, <2>4, <1>xURm4FKOBGVsLMRCdjs, <1>FnDxdfjQ9, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. CASE ~B2 BY <2>5, SMTT(10), Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



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

<1>n1cYs4XV6XrcSLVJzP.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE RD_RegSafe
<2> USE ONLY <1>n1cYs4XV6XrcSLVJzP, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 BY <1>R3YtSwiPG37j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
 BY <2>1, SMTT(10), Sizes, Location, Design DEF DLanded, DStartRun, ghV, instV, kV, rtV, xV, Sizes, Location, Design
<2>3. ASSUME NEW y \in Xids, iv'[y]="reg" PROVE pst'[xsrc[y]] # "quar"
 <3>1. iv[y]="reg" BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. y<nx /\ xk[y]="wr" /\ xsrc[y] \in Pages /\ IsP(Loc(xsrc[y])) /\ y \in led[xsrc[y]] /\ pst[xsrc[y]] # "quar"
 BY <3>1, <1>XdqzW5jl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3a. \A i \in Inst,u \in Rq : Active(i,u) => rpg[i][u] \in Pages /\ Loc(rpg[i][u])=i
 BY <1>eCzjL4PMdcNbssJhsk, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3b. \A x \in Xids : xdst[x] \in Pages => IsD(Loc(xdst[x]))
 BY <1>b8FOS7RlDgygbk6kJ4t, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>1, <2>3, <3>1, <3>2, <3>3a, <3>3b, Design, Sizes, Location, SMTT(20) DEF DLanded, DStartRun, ghV, instV, kV, rtV, xV, PageToG, GTo, Active, Held, OwnedBy, IsD, IsP, PInst, DInst, Inst, NL, GrownOf, GiveUpTo, FreeOrDrain, GiveUpToN, AfterEv, GFr, Rq, Gens, Xids, Sizes, Location, Design
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


<1>TfeeFuxZ7YW0sg.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE P_SI5'
<2> USE ONLY <1>TfeeFuxZ7YW0sg, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K8 /\ K9 /\ K10 /\ K7 /\ QuarNoReg /\ CoreTypeOK
 BY SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_RegSafe BY <1>n1cYs4XV6XrcSLVJzP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. RD_PFrame /\ UNCHANGED xsrc
 BY <1>AyFZXtA2a8EI99, <1>bkyGATUr0vcVLt4PU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. RD_NoStop /\ nx' \in Int /\ nx' >= nx
 <3>1. UNCHANGED xV
  BY ONLY <1>TfeeFuxZ7YW0sg, ZenonT(10) DEF DLanded
 <3>2. hw' = hw /\ nx' = nx
  BY ONLY <3>1, SMTT(10) DEF xV
 <3>3. nx \in 1..(MX + 1)
  BY ONLY <2>1, ZenonT(10) DEF CoreTypeOK
 <3>4. QED BY ONLY <3>2, <3>3, SMTT(10) DEF RD_NoStop
<2>7. B2 => RD_KeyOnSource
 <3>1. UNCHANGED xV
  BY ONLY <1>TfeeFuxZ7YW0sg, ZenonT(10) DEF DLanded
 <3>2. xr' = xr /\ xg' = xg
  BY ONLY <3>1, SMTT(10) DEF xV
 <3>3. QED BY ONLY <3>2, SMTT(10) DEF RD_KeyOnSource
<2>8. S1 /\ S2 /\ S5 /\ S6
 BY SMTT(10), V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>9. RD_StopBack
 <3>1. UNCHANGED <<hw,hok,xdst,pst,pr,pgn,xr,xg>>
  BY ONLY <1>TfeeFuxZ7YW0sg, SMTT(20), Sizes, Location, Design DEF DLanded, xV, Sizes, Location, Design
 <3>2. QED BY ONLY <3>1, SMTT(20), Sizes, Location, Design DEF RD_StopBack, Held, Sizes, Location, Design
<2>10. QED BY <2>4, <2>5, <2>6, <2>7, <2>9, <1>QYS9t7p6Fr, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1363_PdRDR2SI5_DLanded


<1> QED BY <1>TfeeFuxZ7YW0sg, <1>N91sCjrJ1ToR6zGXnFWDl2, <1>Oqq80e1pA2H4hZeP62fbw, <1>jqvB6a5byXb, <1>SfYBKdCLTrP, <1>iFb7Jns3mGYUwGrwEqhK7, <1>bDrAipZPtNJ0XAFpZFjBj, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DLanded_02_01 SHA e9837e180be645b00aad2eaf12345de7f78dd6df7ec56b81193cf5fbfa793ace
USE DEF V21_Inv_K12, V21_Inv_K13, V21_Inv_K5, V21_Inv_K6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_SI7, V21_SFollowStatic, V22_T_rpgS, V22_T_sentry, V22_T_squar
HIDE DEF P_PagePoolsDisjoint, Part_DLanded_01_02, V21_Inv_K14, V21_Inv_K15, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_ReadOwnLanded, V21_Inv_S2, V21_Inv_SendOwnLanded, V22_SF_Choice, V22_SF_Map, V22_SF_Off, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_T_ph, V22_T_rg, V22_T_schoice, V22_T_smap, V22_T_xdst, V22_T_xsrcP, V22_T_xst
THEOREM Part_DLanded_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE (K7)' /\ (S5)' /\ (S6)' /\ (K6)' /\ (K9)' /\ (QuarNeverMapped)' /\ (S1)' /\ (PrefcMatchesHolders)' /\ (K13)' /\ (SI7)' /\ (K1)' /\ (K2)' /\ (K3)' /\ (K5)' /\ (K12)'
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

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_RegSafe

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

<1>tN6YwjI47CiT6OAO.        
  ASSUME NEW p \in Pages, PinInv, led[p] = {}
  PROVE NoWriteInto(p)
<2> USE ONLY <1>tN6YwjI47CiT6OAO, Sizes, Location, Design
<2>1. \A x \in Xids : InFl(x) => x \in led[xdst[x]]
  BY <1>FoVmm99nysy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMTT(10), Sizes, Location, Design DEF NoWriteInto, Writing, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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

<1>TegZ91zYA.        
  ASSUME NEW x \in Xids, T_nx, K2, x < nx
  PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>TegZ91zYA, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, T_nx, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q1lCRjxq1W.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst /\ (IsP(Loc(p)) <=> ~IsD(Loc(p)))
  BY ONLY <1>Q1lCRjxq1W, Sizes, Location, Design, Location, Sizes, SMTT(10) DEF IsP, IsD, Inst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M0167_PP_PdFactsA


<1>PbvLQ2EDSu.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DLanded(j, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, pqp, pr, prefc, pst, ptl, rd, rg, rhit, rp, rpe, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>PbvLQ2EDSu, Sizes, Location, Design, Design, SMTT(10) DEF DLanded, DStartRun, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M0173_PP_PdDLandedFramesA

\* T2M-SCOPE R2M0174_PP_PdEmptyUnionA

<1>ygx6SKwdgThAZU.        
  ASSUME NEW S, NEW T, NEW f \in [S -> SUBSET T], NEW q \in S, NEW e, f[q] = {}
  PROVE [f EXCEPT ![q] = @ \cup {e}] = [f EXCEPT ![q] = {e}]
<2> USE ONLY <1>ygx6SKwdgThAZU, Sizes, Location, Design
<2>1. f[q] \cup {e} = {e}
  BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY ONLY <2>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0174_PP_PdEmptyUnionA

\* T2M-SCOPE R2M0175_PP_PdDLandedEffectsA

<1>DyXstYVv8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r)
  PROVE LET q == rpg[j][r] g == rg[j][r] x == rx[j][r] IN
    /\ j \in DInst /\ q \in Pages /\ Loc(q) = j /\ g \in Gens
    /\ ~rhit[j][r] /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
    /\ x \in Xids /\ x < nx /\ xr[x] = r /\ xg[x] = g /\ xdst[x] = q
    /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x]
    /\ xnt[x] = NTok(r,g) /\ ptl[q] = NTok(r,g)
    /\ led[q] = {} /\ sfly[q] = {} /\ sled[q] = {}
<2> USE ONLY <1>DyXstYVv8, Sizes, Location, Design
<2>1. K2 /\ K3 /\ K8 /\ K9 /\ K10 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. j \in DInst /\ ph[j][r] = "wait" /\ Mode = "push"
          /\ rx[j][r] \in Xids /\ xst[rx[j][r]] = "landed" /\ led[rpg[j][r]] = {}
  BY Sizes, SMTT(10), Location, Design DEF DLanded, IsD, DInst, Inst, NL, Sizes, Location, Design
<2>3. rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ rg[j][r] \in Gens
          /\ ~rhit[j][r] /\ pst[rpg[j][r]] = "priv"
          /\ pr[rpg[j][r]] = r /\ pgn[rpg[j][r]] = rg[j][r]
  BY <2>1, <2>2, <1>nAk0eQnWcTP, <1>tkgKH5TP, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<2>4. rx[j][r] < nx /\ xr[rx[j][r]] = r /\ xg[rx[j][r]] = rg[j][r]
          /\ xdst[rx[j][r]] = rpg[j][r] /\ sfly[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {}
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K9, Sizes, Location, Design
<2>5. hw[rx[j][r]] = "stop" /\ hok[rx[j][r]] /\ xlt[rx[j][r]] = xnt[rx[j][r]]
          /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <2>1, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF K2, K3, T_nx, Xids, Sizes, Location, Design
<2>6. ptl[rpg[j][r]] = NTok(r,rg[j][r])
  BY <2>1, <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K10, OwnedBy, Sizes, Location, Design
<2>7. QED
  BY <2>2, <2>3, <2>4, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fd4q1KPbqca.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r)
  PROVE /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, pqp, pr, prefc, pst, ptl, rd, rg, rhit, rp, rpe, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
<2> USE ONLY <1>fd4q1KPbqca, Sizes, Location, Design
<2>1. rpg[j][r] \in Pages /\ T_sfly /\ T_sled /\ T_ph /\ T_plt /\ T_pvis /\ sfly[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {}
       /\ hw[rx[j][r]] = "stop" /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <1>DyXstYVv8, <1>g4u1JVDPkX, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = xnt[rx[j][r]]]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = IF Flush /\ hw[rx[j][r]] = "stop" THEN TRUE ELSE @]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = @ \cup {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = @ \cup {Tag(r,rg[j][r])}]
  BY Zenon, Sizes, Location, Design DEF DLanded, DStartRun, Sizes, Location, Design
<2>3. plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
  BY ONLY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF T_plt, T_pvis, Sizes, Location, Design
<2>4. sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
  BY <2>1, <2>2, <1>ygx6SKwdgThAZU, SMTT(10), Sizes, Location, Design DEF T_sfly, Tag, Sizes, Location, Design
<2>5. sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
  BY <2>1, <2>2, <1>ygx6SKwdgThAZU, SMTT(10), Sizes, Location, Design DEF T_sled, Tag, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>3, <2>4, <2>5, <1>PbvLQ2EDSu, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0175_PP_PdDLandedEffectsA

\* T2M-SCOPE R2M0176_PP_PdDLandedMasksA
\* T2M-BODY R2M0176_PP_PdDLandedMasksA
\* T2M-LOCAL-VISIBILITY

<1>qUOzvLVcE39o.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r)
  PROVE \A i \in Inst, v \in Rq :
       /\ (Active(i,v)' <=> Active(i,v))
       /\ ((ph'[i][v] = "none") <=> (ph[i][v] = "none"))
       /\ ((ph'[i][v] = "end") <=> (ph[i][v] = "end"))
       /\ (ph[i][v] \in {"run","ovl"} => ph'[i][v] \in {"run","ovl"})
       /\ ((i # j \/ v # r) => ph'[i][v] = ph[i][v])
<2> USE ONLY <1>qUOzvLVcE39o, Sizes, Location, Design
<2>1. T_ph
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
  BY <1>fd4q1KPbqca, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF T_ph, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hRvHb6EQRZPXGYy.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r)
  PROVE \A p \in Pages :
       /\ NHits(p)' = NHits(p)
       /\ (GrownP(p)' <=> GrownP(p))
       /\ \A v \in Rq : (Maps(Loc(p),v,p)' <=> Maps(Loc(p),v,p))
<2> USE ONLY <1>hRvHb6EQRZPXGYy, Sizes, Location, Design
<2>1. UNCHANGED <<pst,pr,pgn,rg,rpg,rhit>>
  BY <1>fd4q1KPbqca, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ~rhit[j][r] /\ T_ph /\ ph' = [ph EXCEPT ![j][r] = "run"]
  BY <1>DyXstYVv8, <1>fd4q1KPbqca, <1>g4u1JVDPkX, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>3. \A p \in Pages :
       {v \in Rq : ph'[Loc(p)][v] \in {"run","ovl"} /\ rhit'[Loc(p)][v] /\ rpg'[Loc(p)][v] = p}
       = {v \in Rq : ph[Loc(p)][v] \in {"run","ovl"} /\ rhit[Loc(p)][v] /\ rpg[Loc(p)][v] = p}
  BY <2>1, <2>2, <1>Q1lCRjxq1W, SMTT(10), Sizes, Location, Design DEF T_ph, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>3, <1>qUOzvLVcE39o, <1>Q1lCRjxq1W, SMTT(10), Sizes, Location, Design DEF NHits, GrownP, Maps, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>j1TGdneFbq2.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r)
  PROVE Mode = "push" /\ xst[rx[j][r]] = "landed"
  BY ONLY <1>j1TGdneFbq2, Sizes, Location, Design, Zenon DEF DLanded, Sizes, Location, Design
\* T2M-END R2M0176_PP_PdDLandedMasksA

\* T2M-SCOPE R2M0177_PP_PdDLandedStepsA
\* T2M-BODY R2M0177_PP_PdDLandedStepsA
\* T2M-LOCAL-VISIBILITY

<1>oXbkW6f.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r)
  PROVE K6'
<2> USE ONLY <1>oXbkW6f, Sizes, Location, Design
<2>1. K6 /\ K7 /\ T_sfly /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<gen, pgn, pr, pst>>
  BY <1>fd4q1KPbqca, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rpg[j][r] \in Pages /\ pst[rpg[j][r]] = "priv"
       /\ pr[rpg[j][r]] = r /\ pgn[rpg[j][r]] = rg[j][r]
       /\ rg[j][r] <= gen[r]
  BY <2>1, <1>DyXstYVv8, SMTT(10), Sizes, Location, Design DEF K7, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, <1>DyXstYVv8, <1>tN6YwjI47CiT6OAO, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K6, NL, OwnedBy, T_sfly, T_sled, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GdyU63K.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r)
  PROVE K7'
<2> USE ONLY <1>GdyU63K, Sizes, Location, Design
<2>1. K7 /\ K8 /\ K9 /\ T_ph /\ T_plt /\ T_pvis /\ T_sfly /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<drep, gen, hd, hp, iv, kpin, krs, led, nx, pgn, pqp, pr, prefc, pst, ptl, rg, rhit, rpe, rpg, rx, xdst, xg, xlt, xr, xsrc>>
  BY <1>fd4q1KPbqca, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>DyXstYVv8, <1>qUOzvLVcE39o, <1>hRvHb6EQRZPXGYy, <1>j1TGdneFbq2, <1>tN6YwjI47CiT6OAO, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K7, K8, K9, KPinned, NL, OwnedBy, T_ph, T_plt, T_pvis, T_sfly, T_sled, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PggwwLN.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r)
  PROVE K9'
<2> USE ONLY <1>PggwwLN, Sizes, Location, Design
<2>1. K9 /\ K8 /\ T_ph /\ T_plt /\ T_pvis /\ T_sfly /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<drep, gen, hd, hp, iv, led, nx, pgn, pr, pst, ptl, rg, rhit, rpe, rpg, rx, xdst, xg, xlt, xr, xsrc>>
  BY <1>fd4q1KPbqca, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>DyXstYVv8, <1>tN6YwjI47CiT6OAO, Design, Location, Sizes, SMTT(10) DEF Active, DInst, Inst, IsD, IsP, K8, K9, NL, OwnedBy, T_ph, T_plt, T_pvis, T_sfly, T_sled, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uCtvI09C.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r)
  PROVE K13'
<2> USE ONLY <1>uCtvI09C, Sizes, Location, Design
<2>1. K13 /\ K1 /\ T_gen /\ T_ph /\ T_hd
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K13, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<crep, drep, dsucc, gbad, hd, rg>>
  BY <1>fd4q1KPbqca, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A v \in Rq, g \in Gens : drep[v][g] = 1 => hd[v][g] \in Inst
  BY <2>1, <1>GVmnLkn, Sizes, SMTT(10), Location, Design DEF K1, T_gen, Gens, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, <1>qUOzvLVcE39o, SMTT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tmszzFn.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r)
  PROVE S1'
<2> USE ONLY <1>tmszzFn, Sizes, Location, Design
<2>1. S1 /\ K1 /\ K2 /\ T_nx /\ T_ph
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K2, V21_Inv_S1, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<nx, rg, rx, xd, xg, xk, xp, xr>>
  BY <1>fd4q1KPbqca, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A x \in Xids : x < nx => (xr[x] \in Rq /\ ExpInst(x) \in Inst)
  BY <2>1, <1>TegZ91zYA, <1>Q1lCRjxq1W, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, <1>qUOzvLVcE39o, SMTT(10), Sizes, Location, Design DEF S1, ExpInst, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QNeAS7u.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r)
  PROVE S5'
<2> USE ONLY <1>QNeAS7u, Sizes, Location, Design
<2>1. S5 /\ T_ph
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_S5, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<hok, hw, iv, nx, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
  BY <1>fd4q1KPbqca, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>DyXstYVv8, <1>qUOzvLVcE39o, <1>hRvHb6EQRZPXGYy, <1>j1TGdneFbq2, <1>tN6YwjI47CiT6OAO, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, NL, S5, T_ph, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ABWO8iE.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r)
  PROVE S6'
<2> USE ONLY <1>ABWO8iE, Sizes, Location, Design
<2>1. S6 /\ K1 /\ K2 /\ T_nx /\ T_ph
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K2, V21_Inv_S6, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<nx, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
  BY <1>fd4q1KPbqca, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>DyXstYVv8, <1>qUOzvLVcE39o, <1>hRvHb6EQRZPXGYy, <1>j1TGdneFbq2, <1>tN6YwjI47CiT6OAO, Design, Location, Sizes, SMTT(10) DEF K1, K2, T_nx, Xids, ExpPage, InitPage, InitInst, ExpInst, Active, DInst, Inst, IsD, IsP, NL, S6, T_ph, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>S1DC2OVHgIUcdEgGenXr.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>S1DC2OVHgIUcdEgGenXr, Sizes, Location, Design
<2>1. QuarNeverMapped /\ T_ph
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_KStruct, V21_Inv_QuarNeverMapped, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, Types, Sizes, Location, Design
<2>2. /\ ph[j][r] = "wait" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<pst, rpg>>
  BY <1>fd4q1KPbqca, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>DyXstYVv8, <1>tN6YwjI47CiT6OAO, Design, Location, Sizes, SMTT(10) DEF Active, DInst, Inst, IsD, IsP, NL, QuarNeverMapped, T_ph, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0177_PP_PdDLandedStepsA

\* T2M-SCOPE R2M0178_PdPAgg_DLanded
\* T2M-BODY R2M0178_PdPAgg_DLanded
\* T2M-LOCAL-VISIBILITY

<1>Cohc8nTek.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
  PROVE K6'
  BY ONLY <1>Cohc8nTek, Sizes, Location, Design, <1>oXbkW6f, V21_Inv_K6 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>U1T9LwkUf.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
  PROVE K7'
  BY ONLY <1>U1T9LwkUf, Sizes, Location, Design, <1>GdyU63K, V21_Inv_K7 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>WrEyccslx.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
  PROVE K9'
  BY ONLY <1>WrEyccslx, Sizes, Location, Design, <1>PggwwLN, V21_Inv_K9 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>E96hNTg1X9.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
  PROVE K13'
  BY ONLY <1>E96hNTg1X9, Sizes, Location, Design, <1>uCtvI09C, V21_Inv_K13 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>RqUD9uzh6.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
  PROVE S1'
  BY ONLY <1>RqUD9uzh6, Sizes, Location, Design, <1>tmszzFn, V21_Inv_S1 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>zXgMojlRB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
  PROVE S5'
  BY ONLY <1>zXgMojlRB, Sizes, Location, Design, <1>QNeAS7u, V21_Inv_S5 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>ZEI8wEmh7.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
  PROVE S6'
  BY ONLY <1>ZEI8wEmh7, Sizes, Location, Design, <1>ABWO8iE, V21_Inv_S6 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>HfdRd4mWa1yvv2EuaF6vIi.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>HfdRd4mWa1yvv2EuaF6vIi, Sizes, Location, Design, <1>S1DC2OVHgIUcdEgGenXr, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design
\* T2M-END R2M0178_PdPAgg_DLanded


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Wu.        
 K1 /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>> => K1'
 BY IsaT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M0353_PdPF_K1


<1>ve.        
 K3 /\ UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>> => K3'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, InFl, K3, Sizes, Location, Design
\* T2M-END R2M0332_PdPF_K3


<1>PH.        
 K2 /\ UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>> => K2'
 BY IsaT(10), Sizes, Location, Design DEF ExpInst, ExpPage, InitInst, InitPage, K2, Sizes, Location, Design
\* T2M-END R2M0357_PdPF_K2


<1>ui5.        
 K12 /\ UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>> => K12'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, K12, Sizes, Location, Design
\* T2M-END R2M0362_PdPF_K12


<1>rd.        
 K5 /\ UNCHANGED <<led, pgn, pr, pst, xg, xr>> => K5'
 BY IsaT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0334_PdPF_K5


<1>wuYoKzZvEb5Qe7K.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, pr, pst, rd, rp, rt, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>wuYoKzZvEb5Qe7K, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF DLanded, ghV, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NDeFkNhD0f.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE K1'
<2> USE ONLY <1>NDeFkNhD0f, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>wuYoKzZvEb5Qe7K, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Wn9zUIz2PE.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE K2'
<2> USE ONLY <1>Wn9zUIz2PE, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>wuYoKzZvEb5Qe7K, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZQuX0tzfJP.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE K3'
<2> USE ONLY <1>ZQuX0tzfJP, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>wuYoKzZvEb5Qe7K, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EDUYr3nvdl.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE K5'
<2> USE ONLY <1>EDUYr3nvdl, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>wuYoKzZvEb5Qe7K, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sJTTTawCHK2.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE K12'
<2> USE ONLY <1>sJTTTawCHK2, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>wuYoKzZvEb5Qe7K, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

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


<1>OkG1oWXNx1O2WqxJ9JMIGHR8vfx.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>OkG1oWXNx1O2WqxJ9JMIGHR8vfx, Sizes, Location, Design, <1>RWvTkqQsVDwnRge2Q5E0XkOXe, SMTT(10) DEF Sizes, Location, Design



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
 BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, K3, CoreTypeOK, Xids, Sizes, Location, Design
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


<1>n1cYs4XV6XrcSLVJzP.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE RD_RegSafe
<2> USE ONLY <1>n1cYs4XV6XrcSLVJzP, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 BY <1>R3YtSwiPG37j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
 BY <2>1, SMTT(10), Sizes, Location, Design DEF DLanded, DStartRun, ghV, instV, kV, rtV, xV, Sizes, Location, Design
<2>3. ASSUME NEW y \in Xids, iv'[y]="reg" PROVE pst'[xsrc[y]] # "quar"
 <3>1. iv[y]="reg" BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. y<nx /\ xk[y]="wr" /\ xsrc[y] \in Pages /\ IsP(Loc(xsrc[y])) /\ y \in led[xsrc[y]] /\ pst[xsrc[y]] # "quar"
 BY <3>1, <1>XdqzW5jl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3a. \A i \in Inst,u \in Rq : Active(i,u) => rpg[i][u] \in Pages /\ Loc(rpg[i][u])=i
 BY <1>eCzjL4PMdcNbssJhsk, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3b. \A x \in Xids : xdst[x] \in Pages => IsD(Loc(xdst[x]))
 BY <1>b8FOS7RlDgygbk6kJ4t, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>1, <2>3, <3>1, <3>2, <3>3a, <3>3b, Design, Sizes, Location, SMTT(20) DEF DLanded, DStartRun, ghV, instV, kV, rtV, xV, PageToG, GTo, Active, Held, OwnedBy, IsD, IsP, PInst, DInst, Inst, NL, GrownOf, GiveUpTo, FreeOrDrain, GiveUpToN, AfterEv, GFr, Rq, Gens, Xids, Sizes, Location, Design
<2>4. RD_RegSafe BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF RD_RegSafe, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mxltqpMQnDTAhh.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j,r), SFollow
 PROVE SI7'
 BY ONLY <1>mxltqpMQnDTAhh, Sizes, Location, Design, <1>n1cYs4XV6XrcSLVJzP, <1>lsjuoBt9NWo, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1362_PdRDR2SI7_DLanded


<1> QED BY <1>U1T9LwkUf, <1>zXgMojlRB, <1>ZEI8wEmh7, <1>Cohc8nTek, <1>WrEyccslx, <1>HfdRd4mWa1yvv2EuaF6vIi, <1>RqUD9uzh6, <1>OkG1oWXNx1O2WqxJ9JMIGHR8vfx, <1>E96hNTg1X9, <1>mxltqpMQnDTAhh, <1>NDeFkNhD0f, <1>Wn9zUIz2PE, <1>ZQuX0tzfJP, <1>EDUYr3nvdl, <1>sJTTTawCHK2, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF Part_DLanded_02_01, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K10, V21_Inv_K12, V21_Inv_K13, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_S1, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_T_iv, V22_T_nx, V22_T_pst, V22_T_rpgS, V22_T_sentry, V22_T_squar, V22_T_xsrcS
====
