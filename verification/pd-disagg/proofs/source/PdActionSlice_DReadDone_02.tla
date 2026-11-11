---- MODULE PdActionSlice_DReadDone_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdFinalAuxType_dc8120345fba5649, PdSharedRefCounts, PdShapeBase, PdActionSlice_DReadDone_01

\* Complete original body PdFinalPart_DReadDone_01_02 SHA 3edb9655496abe4eac0029b3c8c3b216ea0a1da72db6fb02ac12bc3d1be2c61b
HIDE DEF AuxType_dc8120345fba5649, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_DReadDone_01_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K17, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SendOwnLanded, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_PostSharedRefZero, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SharedRefZero, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_DReadDone_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE (NoStrayAccess)' /\ (KReadIntegrity)' /\ (K15)' /\ (SealOnlyLanded)'
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

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, McO6Nv_c6YAPZXLgH, DcZc_hAn59KNFt, qR2mWTT_fHP9WN4t34et1

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

<1>uYlRd.        
  K2 /\ UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>> => K2'
  BY SMTT(5), Sizes, Location, Design DEF ExpInst, ExpPage, InitInst, InitPage, K2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TGqWI.        
  K3 /\ UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>> => K3'
  BY SMTT(5), Sizes, Location, Design DEF CqeHw, InFl, K3, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>quknSm.        
  K14 /\ UNCHANGED <<gen, kfly, kpin, krs>> => K14'
  BY SMTT(5), Sizes, Location, Design DEF K14, Sizes, Location, Design

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

<1>rSFxxVFuK.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K2'
<2> USE ONLY <1>rSFxxVFuK, Sizes, Location, Design
<2>1. K2 /\ UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY SMTT(5), <1>jEpjrevi4yov, V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>uYlRd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T6aVnKYts.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K3'
<2> USE ONLY <1>T6aVnKYts, Sizes, Location, Design
<2>1. K3 /\ UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
  BY SMTT(5), <1>jEpjrevi4yov, V21_Inv_BaseSafety, V21_Inv_K3, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>TGqWI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bImmB3cZSW.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K14'
<2> USE ONLY <1>bImmB3cZSW, Sizes, Location, Design
<2>1. K14 /\ UNCHANGED <<gen, kfly, kpin, krs>>
  BY SMTT(5), <1>jEpjrevi4yov, V21_Inv_BaseSafety, V21_Inv_K14, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>quknSm, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0836_PdRDPort_PdDReadDoneFrames


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


<1>oddR39ulqq4So.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]], SFollow
  PROVE K15'
<2> USE ONLY <1>oddR39ulqq4So, Sizes, Location, Design
<2>1. K15 /\ K14 /\ tqQeS /\ jyWjj /\ eWP7z1 /\ sBjpCf /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K14, V21_Inv_K15, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<gen, hw, kfly, kpin, krs, led, ptl, xdst>>
  BY <1>g9EPmcwgRLVuQIlj, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RD_PFrame /\ xdst' \in [Xids -> 0..NP] /\ UNCHANGED <<xsrc,gen>>
 BY <1>jTmU8ydKd4OG2hXX, <1>WoF80JZHlF10RzyrmA, <1>MZgzQY9fuchN3wZK3Gm, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_SFrame /\ UNCHANGED spst
 BY <2>3, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>3, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>4, <2>5, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>1, <2>2, <1>VDFvZRjLzHX2GC, <1>ngiVG0SkAxP8yIHAPwqKeYSMS, Design, Location, Sizes, SMTT(10), V21_Inv_K14, V21_Inv_K15, V21_Inv_TypeOK DEF DInst, InFl, Inst, IsD, IsP, K14, K15, KData, NL, NoWriteInto, tqQeS, jyWjj, eWP7z1, sBjpCf, a4GqBP, Tag, Writing, KPages, RD_SFrame, SHeld, SData, TEJtP, tqQeS, KPages, Sizes, Location, Design
\* T2M-END R2M0843_PdRDPort_PdD2ReadSuccess_K15


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


<1>t22VxkC7fIGpNWHoDRi.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r)
  PROVE /\ led' = led /\ sled' = sled
        /\ \A p \in Pages : sled'[p] \subseteq sled[p]
<2> USE ONLY <1>t22VxkC7fIGpNWHoDRi, Sizes, Location, Design
<2>1. ZpUxx /\ a4GqBP /\ rpg[j][r] \in Pages
  BY <1>pLBLLi4oDOdXB3CYG2, <1>TLVER4XMUn, SMTT(10), V21_Inv_KStruct, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, KStruct, Sizes, Location, Design
<2>2. qR2mWTT_fHP9WN4t34et1(j,r)
  BY <1>YjUnL4ZcGhjtXEJn1jqm9r5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF qR2mWTT_fHP9WN4t34et1, PageTo, PageToG, GrownOwn, GFr, GTo, GrownOf, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, ZpUxx, a4GqBP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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

<1>b4cjPxyXSEFDkGhwshw.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r)
  PROVE \A p \in Pages : IsP(Loc(p)) => UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<2> USE ONLY <1>b4cjPxyXSEFDkGhwshw, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ ZpUxx /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. IsD(j) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
  BY <1>pLBLLi4oDOdXB3CYG2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. qR2mWTT_fHP9WN4t34et1(j,r)
  BY <1>YjUnL4ZcGhjtXEJn1jqm9r5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in Pages, IsP(Loc(p)) PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<3>1. p # rpg[j][r] /\ p \notin GrownOf(j,r)
  BY <2>4, <2>2, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF GrownOf, Sizes, Location, Design
<3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF qR2mWTT_fHP9WN4t34et1, PageTo, PageToG, GrownOwn, GFr, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0846_PdRDPort_PdD2DReadFailureD2Masks


<1>GgbMLBgfAcZgUKL.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r), SFollow
  PROVE K15'
<2> USE ONLY <1>GgbMLBgfAcZgUKL, Sizes, Location, Design
<2>0. DReadDone(j,r) BY Sizes, Location, Design DEF DcZc_hAn59KNFt, Sizes, Location, Design
<2>1. K14 /\ K15 /\ tqQeS
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K14, V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,ptl,pvis,sfly,hw,xdst>>
  BY <1>AIrVl6ABaL7hnYjOk, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. led' = led /\ \A p \in Pages : sled'[p] \subseteq sled[p]
  BY <1>t22VxkC7fIGpNWHoDRi, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW i \in Inst, NEW s \in KSlots, kpin'[i][s], NEW e \in krs'[i][s], e[3] \in Pages
       PROVE /\ KData(i,e)'
             /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]] = {})
             /\ (IsP(i) => sled'[e[3]] = {})
<3>1. e[3] \in Pages /\ Loc(e[3]) = i /\ KData(i,e)
       /\ ((IsD(i) /\ e[4] # 1) => led[e[3]] = {})
       /\ (IsP(i) => sled[e[3]] = {})
  BY <2>4, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K14, K15, tqQeS, Sizes, Location, Design
<3>2. ~IsD(i) => IsP(i) /\ plt'[e[3]] = plt[e[3]]
  BY <2>4, <3>1, <1>b4cjPxyXSEFDkGhwshw, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. QED BY <2>4, P_PagePoolsDisjoint, <3>1, <3>2, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF KData, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>5. RD_PFrame /\ xdst' \in [Xids -> 0..NP] /\ UNCHANGED <<xsrc,gen>>
 BY <1>jTmU8ydKd4OG2hXX, <1>WoF80JZHlF10RzyrmA, <1>MZgzQY9fuchN3wZK3Gm, <2>0, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. RD_SFrame /\ UNCHANGED spst
 BY <2>5, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>5, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>8. QED BY <2>1, <2>2, <2>6, <2>7, <1>TLVER4XMUn, <2>4, SMTT(10), V21_Inv_K14, V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF K15, RD_SFrame, SHeld, SData, TEJtP, tqQeS, KPages, Sizes, Location, Design
\* T2M-END R2M0847_PdRDPort_PdD2DReadFailureD2_K15

\* T2M-SCOPE R2M0848_PdRDPort_PdD2DReadDone_K15

<1>m9oLjevTQW.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE K15'
<2> USE ONLY <1>m9oLjevTQW, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
  BY <2>1, <1>oddR39ulqq4So, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>GgbMLBgfAcZgUKL, SMTT(10), Sizes, Location, Design DEF DcZc_hAn59KNFt, Sizes, Location, Design
<2>3. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>jTmU8ydKd4OG2hXX, <1>WoF80JZHlF10RzyrmA, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>3, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <1>MZgzQY9fuchN3wZK3Gm, <2>4, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>1, <2>2, SMTT(10), V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, tqQeS, KPages, K15, Sizes, Location, Design
\* T2M-END R2M0848_PdRDPort_PdD2DReadDone_K15


<1>ZMF71jE8xjNAxGoo7OVCMwH8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]], SFollow
  PROVE BaseKReadIntegrity'
<2> USE ONLY <1>ZMF71jE8xjNAxGoo7OVCMwH8, Sizes, Location, Design
<2>1. BaseKReadIntegrity /\ K14 /\ tqQeS /\ jyWjj /\ eWP7z1 /\ sBjpCf
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K14, V21_Inv_KReadIntegrity, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, BaseSafety, KReadIntegrity, Sizes, Location, Design
<2>2. /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<gen, hw, kfly, kpin, krs, pgn, pr, pst, ptl, xdst>>
  BY <1>g9EPmcwgRLVuQIlj, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RD_PFrame /\ xdst' \in [Xids -> 0..NP] /\ UNCHANGED <<xsrc,gen>>
 BY <1>jTmU8ydKd4OG2hXX, <1>WoF80JZHlF10RzyrmA, <1>MZgzQY9fuchN3wZK3Gm, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_SFrame /\ UNCHANGED spst
 BY <2>3, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>4, P_PagePoolsDisjoint, <2>1, <2>2, <1>VDFvZRjLzHX2GC, <1>ngiVG0SkAxP8yIHAPwqKeYSMS, Design, Location, Sizes, SMTT(10), V21_Inv_K14, V21_Inv_KReadIntegrity DEF DInst, InFl, Inst, IsD, IsP, K14, KData, KHeld, BaseKReadIntegrity, NL, NoWriteInto, tqQeS, jyWjj, eWP7z1, sBjpCf, Tag, Writing, KPages, KReadIntegrity, RD_SFrame, SHeld, SData, TEJtP, tqQeS, KPages, Sizes, Location, Design
\* T2M-END R2M0849_PdRDPort_PdD2ReadSuccess_KReadIntegrity


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

<1>rLtqmNUSrq22YkqbPgmPmyJcWB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r), SFollow
  PROVE BaseKReadIntegrity'
<2> USE ONLY <1>rLtqmNUSrq22YkqbPgmPmyJcWB, Sizes, Location, Design
<2>0. DReadDone(j,r) BY Sizes, Location, Design DEF DcZc_hAn59KNFt, Sizes, Location, Design
<2>1. K14 /\ UNCHANGED <<kpin,kfly,krs>>
  BY <1>AIrVl6ABaL7hnYjOk, SMTT(10), V21_Inv_K14, V21_Inv_KReadIntegrity, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>2. K15' /\ NoFreeUnderRead'
  BY <1>GgbMLBgfAcZgUKL, <1>TatAekdAzdwPUNOEhKOzq63W2es, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RD_PFrame /\ xdst' \in [Xids -> 0..NP] /\ UNCHANGED <<xsrc,gen>>
 BY <1>jTmU8ydKd4OG2hXX, <1>WoF80JZHlF10RzyrmA, <1>MZgzQY9fuchN3wZK3Gm, <2>0, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_SFrame /\ UNCHANGED spst
 BY <2>3, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, <2>1, <2>2, SMTT(10), V21_Inv_K14, V21_Inv_K15, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, Sizes, Location, Design DEF BaseKReadIntegrity, K14, K15, NoFreeUnderRead, KReadIntegrity, RD_SFrame, SHeld, SData, TEJtP, tqQeS, KPages, Sizes, Location, Design
\* T2M-END R2M0851_PdRDPort_PdD2DReadFailureD2_KReadIntegrity

\* T2M-SCOPE R2M0852_PdRDPort_PdD2DReadDone_KReadIntegrity

<1>IzV4EFQMljRP0oDMzX5ZY.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE BaseKReadIntegrity'
<2> USE ONLY <1>IzV4EFQMljRP0oDMzX5ZY, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
  BY <2>1, <1>ZMF71jE8xjNAxGoo7OVCMwH8, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>rLtqmNUSrq22YkqbPgmPmyJcWB, SMTT(10), Sizes, Location, Design DEF DcZc_hAn59KNFt, Sizes, Location, Design
<2>3. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>jTmU8ydKd4OG2hXX, <1>MZgzQY9fuchN3wZK3Gm, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_SFrame /\ UNCHANGED spst
 BY <2>3, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M0852_PdRDPort_PdD2DReadDone_KReadIntegrity


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


<1>bxerhyeCzmEyYo.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r)
  PROVE K4'
<2> USE ONLY <1>bxerhyeCzmEyYo, Sizes, Location, Design
<2>1. K4 /\ UNCHANGED <<iv,nx,xdst,xk,xsrc,xst>>
  BY <1>AIrVl6ABaL7hnYjOk, SMTT(10), V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED led
  BY <1>t22VxkC7fIGpNWHoDRi, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, InitPage, Sizes, Location, Design
\* T2M-END R2M0855_PdRDPort_PdD2DReadFailureD2_K4

\* T2M-SCOPE R2M0856_PdRDPort_PdD2DReadDone_K4
\* T2M-BODY R2M0856_PdRDPort_PdD2DReadDone_K4
\* T2M-LOCAL-VISIBILITY

<1>o0sRZ2I4s.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K4'
<2> USE ONLY <1>o0sRZ2I4s, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
<3>1. K4
  BY SMTT(10), V21_Inv_BaseSafety, V21_Inv_K4, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF Strengthen, Safety, BaseSafety, Sizes, Location, Design
<3>2. UNCHANGED <<nx,iv,xk,xdst,xsrc,xst,led>>
  BY <2>1, <1>EcclSb9YoHpDCL, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, InitPage, Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>bxerhyeCzmEyYo, SMTT(10), Sizes, Location, Design DEF DcZc_hAn59KNFt, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0856_PdRDPort_PdD2DReadDone_K4

\* T2M-SCOPE R2M0857_PdRDPort_PdD2DReadFailureD2_K5

<1>NJ7NOjKZxyHnKU.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r)
  PROVE K5'
<2> USE ONLY <1>NJ7NOjKZxyHnKU, Sizes, Location, Design
<2>1. K5 /\ K7 /\ K16 /\ ItYdB /\ ychB /\ MDTwQr /\ tqQeS /\ ZpUxx /\ PwqP6 /\ vn9M /\ jyWjj /\ xhIfp /\ gv2_ /\ AtabIBD /\ X6zX5 /\ vwKWM /\ oGG7 /\ BDN6_c /\ bNpAu /\ sBjpCf /\ a4GqBP /\ bpmgv4 /\ HiUz /\ ZhBZ
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_K5, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, BaseSafety, Sizes, Location, Design
<2>2. IsD(j) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
  BY <1>pLBLLi4oDOdXB3CYG2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. qR2mWTT_fHP9WN4t34et1(j,r)
  BY <1>YjUnL4ZcGhjtXEJn1jqm9r5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Location, Sizes, SMTT(10) DEF qR2mWTT_fHP9WN4t34et1, Active, FreeOrDrain, GFr, GTo, GiveUpTo, GiveUpToN, GrownOf, GrownOwn, GrownP, InFl, IsD, IsP, K16, K5, K7, KPinned, Maps, NHits, NoWriteInto, OwnedBy, PageTo, PageToG, PinBlocks, ItYdB, ychB, MDTwQr, tqQeS, ZpUxx, PwqP6, vn9M, jyWjj, xhIfp, gv2_, AtabIBD, X6zX5, vwKWM, oGG7, BDN6_c, bNpAu, sBjpCf, a4GqBP, bpmgv4, HiUz, ZhBZ, Tag, Writing, KPages, Sizes, Location, Design
\* T2M-END R2M0857_PdRDPort_PdD2DReadFailureD2_K5

\* T2M-SCOPE R2M0858_PdRDPort_PdD2DReadDone_K5
\* T2M-BODY R2M0858_PdRDPort_PdD2DReadDone_K5
\* T2M-LOCAL-VISIBILITY

<1>Q7ADpicMp.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K5'
<2> USE ONLY <1>Q7ADpicMp, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
<3>1. K5
  BY SMTT(10), V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF Strengthen, Safety, BaseSafety, Sizes, Location, Design
<3>2. UNCHANGED <<pst,pr,pgn,led,xr,xg>>
  BY <2>1, <1>EcclSb9YoHpDCL, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>NJ7NOjKZxyHnKU, SMTT(10), Sizes, Location, Design DEF DcZc_hAn59KNFt, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0858_PdRDPort_PdD2DReadDone_K5


<1>UhiZoHm305YC.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), hok[rx[j][r]]
  PROVE K6'
<2> USE ONLY <1>UhiZoHm305YC, Sizes, Location, Design
<2>1. K6 /\ K7 /\ sBjpCf /\ a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, BaseSafety, Sizes, Location, Design
<2>2. /\ ph[j][r] = "rd" /\ ph' = [ph EXCEPT ![j][r] = "run"]
        /\ plt' = [plt EXCEPT ![rpg[j][r]] = NTok(r,rg[j][r])]
        /\ pvis' = [pvis EXCEPT ![rpg[j][r]] = TRUE]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ sled' = [sled EXCEPT ![rpg[j][r]] = {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<gen, pgn, pr, pst>>
  BY <1>g9EPmcwgRLVuQIlj, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rpg[j][r] \in Pages /\ pst[rpg[j][r]] = "priv"
       /\ pr[rpg[j][r]] = r /\ pgn[rpg[j][r]] = rg[j][r]
       /\ rg[j][r] <= gen[r]
  BY <2>1, <1>VDFvZRjLzHX2GC, SMTT(10), Sizes, Location, Design DEF K7, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, <1>VDFvZRjLzHX2GC, <1>ngiVG0SkAxP8yIHAPwqKeYSMS, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K6, NL, OwnedBy, sBjpCf, a4GqBP, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0859_PdRDPort_PdD2ReadSuccess_K6


<1>ATj5tPxn3Lgn29.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r)
  PROVE K6'
<2> USE ONLY <1>ATj5tPxn3Lgn29, Sizes, Location, Design
<2>1. K9 /\ K8 /\ K6 /\ K16 /\ sBjpCf /\ a4GqBP /\ X6zX5 /\ gv2_ /\ PwqP6
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K16, V21_Inv_K6, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. IsD(j) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ (~rhit[j][r] /\ pst[rpg[j][r]] = "priv")
  BY <2>1, <1>pLBLLi4oDOdXB3CYG2, <1>VBlwMBLC5pBW9rEeNkh7, SMTT(10), Sizes, Location, Design DEF K9, DcZc_hAn59KNFt, DReadDone, Active, Sizes, Location, Design
<2>3. qR2mWTT_fHP9WN4t34et1(j,r)
  BY <1>YjUnL4ZcGhjtXEJn1jqm9r5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A p \in GrownOf(j,r) : sled[p] = {}
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K16, GrownOf, GrownP, Sizes, Location, Design
<2>5. UNCHANGED <<gen,sfly,sled>> /\ \A p \in Pages : sled'[p] \subseteq sled[p]
  BY <1>AIrVl6ABaL7hnYjOk, <1>t22VxkC7fIGpNWHoDRi, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A p \in Pages : sfly'[p] \subseteq sled'[p]
  BY <2>1, <2>5, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
<2>7. ASSUME NEW p \in Pages, NEW t \in sled'[p]
       PROVE t[2] <= gen'[t[1]] /\ (OwnedBy(p,t[1],t[2])' \/ (pst'[p] = "shared" /\ IsD(Loc(p))))
<3>1. t \in sled[p] /\ p \notin GrownOf(j,r)
       /\ t[2] <= gen[t[1]] /\ (OwnedBy(p,t[1],t[2]) \/ (pst[p] = "shared" /\ IsD(Loc(p))))
  BY <2>1, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
<3>2. QED
  BY <2>1, <2>2, <2>3, <2>5, <3>1, Design, SMTT(10), Sizes, Location DEF qR2mWTT_fHP9WN4t34et1, OwnedBy, PageTo, PageToG, GrownOwn, GFr, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, X6zX5, gv2_, PwqP6, a4GqBP, Sizes, Location, Design
<2>8. QED BY <2>6, <2>7, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
\* T2M-END R2M0860_PdRDPort_PdD2DReadFailureD2_K6

\* T2M-SCOPE R2M0861_PdRDPort_PdD2DReadDone_K6

<1>uQcAmwxpz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE K6'
<2> USE ONLY <1>uQcAmwxpz, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
  BY <2>1, <1>UhiZoHm305YC, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>ATj5tPxn3Lgn29, SMTT(10), Sizes, Location, Design DEF DcZc_hAn59KNFt, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0861_PdRDPort_PdD2DReadDone_K6


<1>gZCgI0gx1e3U89Rcttn0.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
  PROVE NoStrayAccess'
<2> USE ONLY <1>gZCgI0gx1e3U89Rcttn0, Sizes, Location, Design
<2>1. K2' /\ K3' /\ K4' /\ K5' /\ K6' /\ K14' /\ NoFreeUnderRead'
  BY <1>rSFxxVFuK, <1>T6aVnKYts, <1>o0sRZ2I4s, <1>Q7ADpicMp, <1>uQcAmwxpz, <1>bImmB3cZSW, <1>VFS7PT41oosEQqWIuU2Vdm, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. XX2v'
  BY <1>TLVER4XMUn, <1>jEpjrevi4yov, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, XX2v, Sizes, Location, Design
<2>3. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>jTmU8ydKd4OG2hXX, <1>MZgzQY9fuchN3wZK3Gm, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RD_SFrame /\ UNCHANGED spst
 BY <2>3, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, <2>1, <2>2, <1>xsKh4bJsAP9m1TA2xXe, SMTT(10), Sizes, Location, Design DEF RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M0862_PdRDPort_PdD2DReadDone_NoStrayAccess


<1>HnMTWMSxBdsPOUAgb7j9URflx1.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DcZc_hAn59KNFt(j,r)
  PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>HnMTWMSxBdsPOUAgb7j9URflx1, Sizes, Location, Design
<2>1. BaseSealOnlyLanded /\ K7 /\ K16 /\ ItYdB /\ ychB /\ MDTwQr /\ tqQeS /\ ZpUxx /\ PwqP6 /\ vn9M /\ jyWjj /\ xhIfp /\ gv2_ /\ AtabIBD /\ X6zX5 /\ vwKWM /\ oGG7 /\ BDN6_c /\ bNpAu /\ sBjpCf /\ a4GqBP /\ bpmgv4
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_K7, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, TEJtP, BaseSafety, SealOnlyLanded, Sizes, Location, Design
<2>2. IsD(j) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
  BY <1>pLBLLi4oDOdXB3CYG2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. qR2mWTT_fHP9WN4t34et1(j,r)
  BY <1>YjUnL4ZcGhjtXEJn1jqm9r5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Location, Sizes, SMTT(10) DEF qR2mWTT_fHP9WN4t34et1, Active, FreeOrDrain, GFr, GTo, GiveUpTo, GiveUpToN, GrownOf, GrownOwn, GrownP, InFl, IsD, IsP, K16, K7, KPinned, Maps, NHits, NoWriteInto, PageTo, PageToG, PinBlocks, BaseSealOnlyLanded, ItYdB, ychB, MDTwQr, tqQeS, ZpUxx, PwqP6, vn9M, jyWjj, xhIfp, gv2_, AtabIBD, X6zX5, vwKWM, oGG7, BDN6_c, bNpAu, sBjpCf, a4GqBP, bpmgv4, Tag, Writing, KPages, SealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M0875_PdRDPort_PdD2DReadFailureD2_SealOnlyLanded

\* T2M-SCOPE R2M0876_PdRDPort_PdD2DReadDone_SealOnlyLanded
\* T2M-BODY R2M0876_PdRDPort_PdD2DReadDone_SealOnlyLanded
\* T2M-LOCAL-VISIBILITY

<1>S3v7F61cPIYO3tlSpzizQ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>S3v7F61cPIYO3tlSpzizQ, Sizes, Location, Design
<2>1. CASE hok[rx[j][r]]
<3>1. BaseSealOnlyLanded
  BY SMTT(10), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, SealOnlyLanded, Sizes, Location, Design
<3>2. UNCHANGED <<pst,ptl,hw,xdst>>
  BY <2>1, <1>EcclSb9YoHpDCL, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF BaseSealOnlyLanded, NoWriteInto, Writing, InFl, SealOnlyLanded, Sizes, Location, Design
<2>2. CASE ~hok[rx[j][r]]
  BY <2>2, <1>HnMTWMSxBdsPOUAgb7j9URflx1, SMTT(10), Sizes, Location, Design DEF DcZc_hAn59KNFt, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0876_PdRDPort_PdD2DReadDone_SealOnlyLanded


<1>cryMpK48Z7ABh.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE K15'
 BY ONLY <1>cryMpK48Z7ABh, Sizes, Location, Design, <1>m9oLjevTQW, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>NpV2YeLxFxOJIFz1CazEG6fO.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>NpV2YeLxFxOJIFz1CazEG6fO, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>jTmU8ydKd4OG2hXX, <1>MZgzQY9fuchN3wZK3Gm, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>IzV4EFQMljRP0oDMzX5ZY, <1>llETZGACL, <1>ESCk6pb406w, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>AYlehqlHgAhg2pZQFn5XW0Y.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE NoStrayAccess'
 BY ONLY <1>AYlehqlHgAhg2pZQFn5XW0Y, Sizes, Location, Design, <1>gZCgI0gx1e3U89Rcttn0, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>fRdRrTaPKqgrZnPJVT8FtW5P.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r), SFollow
 PROVE SealOnlyLanded'
<2> USE ONLY <1>fRdRrTaPKqgrZnPJVT8FtW5P, Sizes, Location, Design
<2>1. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>jTmU8ydKd4OG2hXX, <1>WoF80JZHlF10RzyrmA, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>S3v7F61cPIYO3tlSpzizQ, <1>TTpKhOymx73KMovRt1O, <1>ca3ak7RUGjY, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>AYlehqlHgAhg2pZQFn5XW0Y, <1>NpV2YeLxFxOJIFz1CazEG6fO, <1>cryMpK48Z7ABh, <1>fRdRrTaPKqgrZnPJVT8FtW5P, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF P_PagePoolsDisjoint, Part_DReadDone_01_02, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K10, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V22_T_nx, V22_T_ph, V22_T_rg, V22_T_xdst
====
