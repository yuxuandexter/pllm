---- MODULE PdFinalAction_DRecvNotice ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_31e485d4b745184b, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_DRecvNotice_02

\* Complete original body PdFinalPart_DRecvNotice_03_01 SHA 88fa28a45fe352bac9653a55768ab50993d82b158299b48d20c710e5fd35cd4c
HIDE DEF AuxType_31e485d4b745184b, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_DRecvNotice_01_01, Part_DRecvNotice_01_02, Part_DRecvNotice_02_01, Part_DRecvNotice_02_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K6, V21_Inv_K7, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_kfly, V22_T_kpin, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS
THEOREM Part_DRecvNotice_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE (P_SI4)' /\ (NoEvictUnderRDMA)' /\ (HitIdentity)' /\ (P_SI1)' /\ (P_SI3)' /\ (P_SI6)' /\ (S6)' /\ (QuarNoReg)' /\ (K5)' /\ (K11)' /\ (SI7)' /\ (SI8)'
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

           RD_RdOpenBack == \A x \in Xids : (xk'[x]="rd" /\ xst'[x]="posted") => (xk[x]="rd" /\ xst[x]="posted")

           \* T2M-LOCAL-VISIBILITY

           RD_XKeysFrame == UNCHANGED <<xsrc,xp,xr,xg,xk,nx>>

           RD_EntryRange == \A x \in sentry : IF xk[x]="wr" THEN iv'[x] \in {"reg","posted","failret","cqe","nopost"}
                                          ELSE xst'[x] \in {"posted","landed","failed"}


           RD_Controls == /\ \A x \in Xids : iv'[x] # iv[x] => iv[x]="none"
                          /\ \A x \in Xids : xst'[x] # xst[x] => xk[x]="wr"

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

           BTBfRMeQb_J0vm_XK(x) == Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]] = xg[x] /\ rx[xd[x]][xr[x]] = x



           sSdYINXW9cenl3Nk4yf(x) ==
             (hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x]
              /\ xst' = [xst EXCEPT ![x] = "landed"]
              /\ EvidenceAt(xdst[x],x) /\ UNCHANGED <<ph,drep,net>>)
             \/
             (~hok[x] /\ pst[xdst[x]] \in {"priv","drain"} /\ x \in led[xdst[x]]
              /\ PageTo(xdst[x],"quar",xp[x],led[xdst[x]],sled[xdst[x]])
              /\ UNCHANGED xst
              /\ ph' = (IF BTBfRMeQb_J0vm_XK(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph)
              /\ drep' = (IF BTBfRMeQb_J0vm_XK(x) THEN [drep EXCEPT ![xr[x]][xg[x]] = Bump(@)] ELSE drep)
              /\ net' = (IF BTBfRMeQb_J0vm_XK(x) THEN net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)} ELSE net))


           \* T2M-LOCAL-VISIBILITY

           IdWaPue2LgYScE == \A i \in Inst, r \in Rq :
             /\ (ph[i][r] # "none" => ph'[i][r] # "none")
             /\ (Active(i,r)' => Active(i,r))


           \* T2M-LOCAL-VISIBILITY

           RD_RegSafe == \A x \in Xids : iv'[x]="reg" => iv[x]="reg" /\ pst'[xsrc[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_Q2, RD_EQUpdate, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_RdOpenBack, RD_XKeysFrame, RD_EntryRange, RD_Controls, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, BTBfRMeQb_J0vm_XK, sSdYINXW9cenl3Nk4yf, IdWaPue2LgYScE, RD_RegSafe

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


<1>i01Ccdwf6XS1pFDnjldaJ.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>i01Ccdwf6XS1pFDnjldaJ, Sizes, Location, Design, SMTT(10) DEF DRecvNotice, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tiTTAcZPhIoD9vPXlK.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>tiTTAcZPhIoD9vPXlK, Sizes, Location, Design
<2>1. K1 /\ K2 /\ RD_PhType /\ RD_NxType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), V21_Inv_K1, V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xst[x]="posted"
 BY SMTT(10), Sizes, Location, Design DEF DRecvNotice, Sizes, Location, Design
<2>3. x < nx /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x]<=gen[xr[x]] /\ xd[x]=hd[xr[x]][xg[x]]
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K2, RD_NxType, Xids, Sizes, Location, Design
<2>4. xd[x] \in DInst
 BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>5. QED BY <2>1, <2>4, <1>i01Ccdwf6XS1pFDnjldaJ, Sizes, SMTT(10), Location, Design DEF DRecvNotice, instV, kV, rtV, RD_PFrame, PInst, DInst, Inst, NL, RD_PhType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>C788vgYkupuSOi2BKBzl1Mt8gm5i.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>C788vgYkupuSOi2BKBzl1Mt8gm5i, Sizes, Location, Design
<2>1. UNCHANGED <<xsrc,hw,xr,xg>>
 BY SMTT(10), Sizes, Location, Design DEF DRecvNotice, instV, kV, rtV, Sizes, Location, Design
<2>2. RD_PFrame BY <1>tiTTAcZPhIoD9vPXlK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>HJqiycb18Jq3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>mdcit9nafy2s98F.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE P_SI4'
<2> USE ONLY <1>mdcit9nafy2s98F, Sizes, Location, Design
<2>1. RD_XKeysFrame /\ UNCHANGED hw /\ RD_PFrame
 BY <1>tiTTAcZPhIoD9vPXlK, SMTT(10), Sizes, Location, Design DEF DRecvNotice, instV, kV, rtV, RD_XKeysFrame, Sizes, Location, Design
<2>2. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}] /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>mdcit9nafy2s98F, V22_T_iv, V22_T_xst, SMTT(5)

<2>3. RD_Controls
 BY <2>2, SMTT(10), Sizes, Location, Design DEF DRecvNotice, instV, kV, rtV, RD_Controls, Sizes, Location, Design
<2>4. CASE B2 BY <2>1, <2>3, <2>4, <1>xURm4FKOBGVsLMRCdjs, <1>FnDxdfjQ9, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. CASE ~B2 BY <2>5, SMTT(10), Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>rPfvtrSvKjOdZvU.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE SI8'
<2> USE ONLY <1>rPfvtrSvKjOdZvU, Sizes, Location, Design
<2>1. UNCHANGED xsrc
 BY <1>i01Ccdwf6XS1pFDnjldaJ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xk \in [Xids -> {"none","wr","rd"}] /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>rPfvtrSvKjOdZvU, V22_T_xk, V22_T_xst, SMTT(5)

<2>3. RD_RdOpenBack
 BY <2>2, SMTT(10), Sizes, Location, Design DEF DRecvNotice, instV, kV, rtV, RD_RdOpenBack, Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>XSpO6sXnRte, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>YCVSne9VEwvX9nn.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE P_SI1'
 BY ONLY <1>YCVSne9VEwvX9nn, Sizes, Location, Design, <1>tiTTAcZPhIoD9vPXlK, <1>i01Ccdwf6XS1pFDnjldaJ, <1>VDsAIqq0, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JmZ9jPT6Q5mmwHa.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE P_SI3'
 BY ONLY <1>JmZ9jPT6Q5mmwHa, Sizes, Location, Design, <1>tiTTAcZPhIoD9vPXlK, <1>i01Ccdwf6XS1pFDnjldaJ, <1>FPQA7M3w, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VxskQOUA9Shmons.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE P_SI6'
 BY ONLY <1>VxskQOUA9Shmons, Sizes, Location, Design, <1>tiTTAcZPhIoD9vPXlK, <1>i01Ccdwf6XS1pFDnjldaJ, <1>TUh8WMSa, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WiRVAAw1RTB2kDd8GHPM12J.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE HitIdentity'
 BY ONLY <1>WiRVAAw1RTB2kDd8GHPM12J, Sizes, Location, Design, <1>tiTTAcZPhIoD9vPXlK, <1>i01Ccdwf6XS1pFDnjldaJ, <1>ueaxxwWI, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M0939_PdRDBatch_DRecvNotice


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>qA3zinQPD7c581.        
  ASSUME NEW x \in Xids, DRecvNotice(x)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>qA3zinQPD7c581, Sizes, Location, Design, ZenonT(5) DEF DRecvNotice, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1164_PdRDLegacy_PP_PdDRecvNoticeFrames

\* T2M-SCOPE R2M1165_PdRDLegacy_PP_PdCell_DRecvNotice_K17

<1>KeUX3AwuU5dZGL50.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>NEegLqmCti8ylSLRCJ.        
  ASSUME NEW x \in Xids, SHJS, K2, x < nx
  PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>NEegLqmCti8ylSLRCJ, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, SHJS, Xids, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>oRMobcZtnEacZOSYh60.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst /\ (IsP(Loc(p)) <=> ~IsD(Loc(p)))
  BY ONLY <1>oRMobcZtnEacZOSYh60, Sizes, Location, Design, Location, Sizes, SMTT(10) DEF IsP, IsD, Inst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M1123_PdRDLegacy_PP_D2Finite_PdFactsA


<1>vj160z9HQTZJ.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted"
  PROVE /\ x < nx /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>vj160z9HQTZJ, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, SHJS, Xids, Sizes, Location, Design
<2>3. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
       /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>1, <2>2, <1>NEegLqmCti8ylSLRCJ, SMTT(10), Sizes, Location, Design DEF ExpPage, ExpInst, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>e7mVrXuBvS.        
  ASSUME NEW x \in Xids, NEW m \in net, PinInv, m.t = "notice", m.x = x
  PROVE /\ m.ok = hok[x] /\ m.pg = xlt[x] /\ iv[x] = "cqe"
        /\ (m.ok => hw[x] = "stop")
<2> USE ONLY <1>e7mVrXuBvS, Sizes, Location, Design
<2>1. K12
  BY SMTT(10), V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. m.ok = hok[x] /\ m.pg = xlt[x] /\ iv[x] = "cqe" /\ hw[x] \in CqeHw(x)
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>3. QED BY <2>2, Design, SMTT(10), Sizes, Location DEF CqeHw, Sizes, Location, Design
\* T2M-END R2M1168_PdRDLegacy_PP_PdD2TransferFacts


<1>dvIjBkI1i7SObU8.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE /\ xk[x] = "wr" /\ xst[x] = "posted" /\ x < nx
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>dvIjBkI1i7SObU8, Sizes, Location, Design
<2>1. xk[x] = "wr" /\ xst[x] = "posted"
  BY SMTT(10), Sizes, Location, Design DEF DRecvNotice, Sizes, Location, Design
<2>2. QED BY <2>1, <1>vj160z9HQTZJ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>XaKy7shL9QHppnmU.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE sSdYINXW9cenl3Nk4yf(x)
<2> USE ONLY <1>XaKy7shL9QHppnmU, Sizes, Location, Design
<2>1. \A m \in net : (m.t = "notice" /\ m.x = x) =>
          m.ok = hok[x] /\ m.pg = xlt[x] /\ (m.ok => hw[x] = "stop")
  BY <1>e7mVrXuBvS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, ZenonT(10), Sizes, Location DEF DRecvNotice, sSdYINXW9cenl3Nk4yf, BTBfRMeQb_J0vm_XK, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>eFBhETPjx8yDCpPS.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE sSdYINXW9cenl3Nk4yf(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY ONLY <1>eFBhETPjx8yDCpPS, Sizes, Location, Design, <1>XaKy7shL9QHppnmU, <1>qA3zinQPD7c581, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1169_PdRDLegacy_PP_PdD2DRecvNoticeEffect


<1>d5xQ1GACS6Dx.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K11'
<2> USE ONLY <1>d5xQ1GACS6Dx, Sizes, Location, Design
<2>1. K11 /\ Q1j7VI /\ dcfPK /\ SHJS /\ vS7em /\ AydA /\ bFwlN /\ IwCp /\ OyyWS /\ rO4YE /\ Xc_ngV /\ h9WLgd /\ OfQy9 /\ Uzgo58 /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K11, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. sSdYINXW9cenl3Nk4yf(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>eFBhETPjx8yDCpPS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>dvIjBkI1i7SObU8, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, BTBfRMeQb_J0vm_XK, sSdYINXW9cenl3Nk4yf, EvidenceAt, IsD, IsP, K11, PageTo, PinBlocks, Q1j7VI, dcfPK, SHJS, vS7em, AydA, bFwlN, IwCp, OyyWS, rO4YE, Xc_ngV, h9WLgd, OfQy9, Uzgo58, PD2ZN, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M1175_PdRDLegacy_PP_PdD2DRecvNotice_K11


<1>uAKhE82VBgV.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K5'
<2> USE ONLY <1>uAKhE82VBgV, Sizes, Location, Design
<2>1. K5 /\ Q1j7VI /\ dcfPK /\ vS7em /\ AydA /\ bFwlN /\ IwCp /\ OyyWS /\ h9WLgd /\ CXAy /\ a1R5 /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. sSdYINXW9cenl3Nk4yf(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>eFBhETPjx8yDCpPS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>dvIjBkI1i7SObU8, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, BTBfRMeQb_J0vm_XK, sSdYINXW9cenl3Nk4yf, EvidenceAt, IsD, IsP, K5, OwnedBy, PageTo, PinBlocks, Q1j7VI, dcfPK, vS7em, AydA, bFwlN, IwCp, OyyWS, h9WLgd, CXAy, a1R5, PD2ZN, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M1182_PdRDLegacy_PP_PdD2DRecvNotice_K5

\* T2M-SCOPE R2M1183_PdRDLegacy_PP_PdD2DRecvNotice_K6

<1>HDnS8QCp62wCWeOh.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE \A p \in Pages : IsP(Loc(p)) => UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<2> USE ONLY <1>HDnS8QCp62wCWeOh, Sizes, Location, Design
<2>1. OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ dcfPK /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_KStruct, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, QLAWp, Sizes, Location, Design
<2>2. sSdYINXW9cenl3Nk4yf(x) /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
  BY <1>dvIjBkI1i7SObU8, <1>eFBhETPjx8yDCpPS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW p \in Pages, IsP(Loc(p)) PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<3>1. p # xdst[x]
  BY <2>2, <2>3, <1>KeUX3AwuU5dZGL50, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <3>1, SMTT(10), Sizes, Location, Design DEF sSdYINXW9cenl3Nk4yf, PageTo, EvidenceAt, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>LEMBcGzM1tmY9K3zjD.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE QuarNoReg'
<2> USE ONLY <1>LEMBcGzM1tmY9K3zjD, Sizes, Location, Design
<2>1. QuarNoReg /\ UNCHANGED iv
  BY <1>qA3zinQPD7c581, SMTT(10), V21_Inv_QuarNoReg, V21_Inv_Safety, Sizes, Location, Design DEF Safety, Sizes, Location, Design
<2>2. \A p \in Pages : IsP(Loc(p)) => UNCHANGED <<pst[p],led[p]>>
  BY <1>HDnS8QCp62wCWeOh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
\* T2M-END R2M1191_PdRDLegacy_PP_PdD2DRecvNotice_QuarNoReg


<1>TB7ekH.        
  ASSUME PinInv, IdWaPue2LgYScE, UNCHANGED <<nx,rg,rx,xd,xdst,xg,xk,xp,xr,xsrc>>
  PROVE S6'
<2> USE ONLY <1>TB7ekH, Sizes, Location, Design
<2>1. S6 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K2, V21_Inv_S6, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. \A y \in Xids : (y < nx /\ InitPage(y) # 0) => xr[y] \in Rq /\ InitInst(y) \in Inst
  BY <2>1, <1>NEegLqmCti8ylSLRCJ, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF IdWaPue2LgYScE, S6, InitInst, InitPage, Sizes, Location, Design
\* T2M-END R2M1192_PdRDLegacy_PP_PdD2PhaseFacts


<1>h5lgm2bCDr8EmZWxVJm90d.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE IdWaPue2LgYScE
<2> USE ONLY <1>h5lgm2bCDr8EmZWxVJm90d, Sizes, Location, Design
<2>1. AydA /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>UwwC5LVwQr, <1>dvIjBkI1i7SObU8, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. sSdYINXW9cenl3Nk4yf(x)
  BY <1>eFBhETPjx8yDCpPS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF sSdYINXW9cenl3Nk4yf, BTBfRMeQb_J0vm_XK, IdWaPue2LgYScE, AydA, Active, Sizes, Location, Design
\* T2M-END R2M1193_PdRDLegacy_PP_PdD2DRecvNoticePhases

\* T2M-SCOPE R2M1194_PdRDLegacy_PP_PdD2DRecvNotice_S1
\* T2M-BODY R2M1194_PdRDLegacy_PP_PdD2DRecvNotice_S1
\* T2M-LOCAL-VISIBILITY

<1>i0DlGOexFct.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE S6'
<2> USE ONLY <1>i0DlGOexFct, Sizes, Location, Design
<2>1. IdWaPue2LgYScE /\ UNCHANGED <<nx,rg,rx,xd,xdst,xg,xk,xp,xr,xsrc>>
  BY <1>h5lgm2bCDr8EmZWxVJm90d, <1>qA3zinQPD7c581, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>TB7ekH, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1196_PdRDLegacy_PP_PdD2DRecvNotice_S6


<1>NHU61CLl9mlNJ.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE K5'
  BY ONLY <1>NHU61CLl9mlNJ, Sizes, Location, Design, <1>uAKhE82VBgV, V21_Inv_K5 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>L7lyBpK3haKyZC.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE K11'
  BY ONLY <1>L7lyBpK3haKyZC, Sizes, Location, Design, <1>d5xQ1GACS6Dx, V21_Inv_K11 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>EEJVSi4QiF1sy.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE S6'
  BY ONLY <1>EEJVSi4QiF1sy, Sizes, Location, Design, <1>i0DlGOexFct, V21_Inv_S6 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>KbYN9uojgG1asB5Yez5w.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>KbYN9uojgG1asB5Yez5w, Sizes, Location, Design, <1>LEMBcGzM1tmY9K3zjD, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1197_PdRDLegacy_PdPAgg_DRecvNotice


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


<1>PDRp9IIrq34NJSj.        
 ASSUME NEW x \in Xids, DRecvNotice(x)
 PROVE \E v : pst'=[pst EXCEPT ![xdst[x]]=v]
 BY ONLY <1>PDRp9IIrq34NJSj, Sizes, Location, Design, ZenonT(10) DEF DRecvNotice, EvidenceAt, PageTo, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oEsmkmAn7AZbc.        
 ASSUME NEW x \in Xids, NEW p \in Pages, PinInv, DRecvNotice(x), p # xdst[x]
 PROVE pst'[p]=pst[p]
<2> USE ONLY <1>oEsmkmAn7AZbc, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 BY <1>R3YtSwiPG37j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>PDRp9IIrq34NJSj, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1372_PdRDR2Notice


<1>RfTFw80ocbXvGBLhJsJUXX.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE RD_RegSafe
<2> USE ONLY <1>RfTFw80ocbXvGBLhJsJUXX, Sizes, Location, Design
<2> DEFINE FX_REG_E == iv'=iv /\ (\E s : pst'=[pst EXCEPT ![xdst[x]]=s])
<2> HIDE DEF FX_REG_E
<2>fx. FX_REG_E
 BY ONLY <1>RfTFw80ocbXvGBLhJsJUXX, ZenonT(10) DEF FX_REG_E, DRecvNotice, EvidenceAt, PageTo
<2>1. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 BY ONLY <1>RfTFw80ocbXvGBLhJsJUXX, <1>R3YtSwiPG37j, SMTT(5)
<2>fiv. iv'=iv
 BY ONLY <2>fx, ZenonT(5) DEF FX_REG_E
<2>2. \A z \in Xids : iv'[z]="reg" => iv[z]="reg"
 BY ONLY <2>1, <2>fiv, SMTT(5)
<2>3. ASSUME NEW y \in Xids, iv'[y]="reg" PROVE pst'[xsrc[y]] # "quar"
 <3>1. iv[y]="reg" BY ONLY <2>3, <2>2, SMTT(5)
 <3>2. y<nx /\ xk[y]="wr" /\ xsrc[y] \in Pages /\ IsP(Loc(xsrc[y])) /\ y \in led[xsrc[y]] /\ pst[xsrc[y]] # "quar"
 BY ONLY <1>RfTFw80ocbXvGBLhJsJUXX, <2>3, <3>1, <1>XdqzW5jl, SMTT(5)
 <3>dall. \A x \in Xids : xdst[x] \in Pages => IsD(Loc(xdst[x]))
  BY ONLY <1>RfTFw80ocbXvGBLhJsJUXX, <1>b8FOS7RlDgygbk6kJ4t, SMTT(5)
 <3>locType. NPI \in Int /\ Loc(xsrc[y]) \in Int
  BY ONLY <3>2, Sizes, Location, SMTT(5) DEF Sizes, Location, KPages, Inst, NL
 <3>other. xsrc[y] # xdst[x]
  BY ONLY <1>RfTFw80ocbXvGBLhJsJUXX, <2>3, <3>2, <3>dall, <3>locType, SMTT(5) DEF IsP, IsD
 <3>pst. \E s : pst'=[pst EXCEPT ![xdst[x]]=s]
  BY ONLY <2>fx, ZenonT(5) DEF FX_REG_E
 <3>frame. pst'[xsrc[y]]=pst[xsrc[y]]
  BY ONLY <2>1, <3>2, <3>other, <3>pst, SMTT(5)
 <3>qed. QED BY ONLY <3>2, <3>frame, SMTT(5)
<2>4. RD_RegSafe BY ONLY <2>2, <2>3, SMTT(5) DEF RD_RegSafe
<2>5. QED BY ONLY <2>4, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>pyaGqsTUCgTqCyWprr.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE SI7'
 BY ONLY <1>pyaGqsTUCgTqCyWprr, Sizes, Location, Design, <1>RfTFw80ocbXvGBLhJsJUXX, <1>lsjuoBt9NWo, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1373_PdRDR2SI7_DRecvNotice


<1> QED BY <1>mdcit9nafy2s98F, <1>C788vgYkupuSOi2BKBzl1Mt8gm5i, <1>WiRVAAw1RTB2kDd8GHPM12J, <1>YCVSne9VEwvX9nn, <1>JmZ9jPT6Q5mmwHa, <1>VxskQOUA9Shmons, <1>EEJVSi4QiF1sy, <1>KbYN9uojgG1asB5Yez5w, <1>NHU61CLl9mlNJ, <1>L7lyBpK3haKyZC, <1>pyaGqsTUCgTqCyWprr, <1>rPfvtrSvKjOdZvU, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DRecvNotice_03_02 SHA 386f887dc12f8a208154dd4ede876c37b5f9d2b96febae1f02caffcd58f22759
USE DEF V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K13, V21_Inv_K16, V21_Inv_K6, V21_Inv_K7, V21_Inv_K9, V21_Inv_PrefcMatchesHolders, V21_Inv_S1, V21_Inv_S5, V21_Inv_SendOwnLanded, V22_T_rpgS, V22_T_sentry, V22_T_squar, V22_T_xsrcS
HIDE DEF Part_DRecvNotice_03_01, V21_Inv_HitIdentity, V21_Inv_K11, V21_Inv_K5, V21_Inv_NoEvictUnderRDMA, V21_Inv_QuarNoReg, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V22_T_iv, V22_T_krs, V22_T_nx, V22_T_ph, V22_T_pst, V22_T_rg, V22_T_xk, V22_T_xst
THEOREM Part_DRecvNotice_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE (K16)' /\ (K10)' /\ (K12)' /\ (S5)' /\ (K13)' /\ (S1)' /\ (K1)' /\ (K4)' /\ (PrefcMatchesHolders)' /\ (K2)' /\ (K3)' /\ (K6)' /\ (SendOwnLanded)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RD_SFrame == UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>


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

           RD_SendShared == B2 => \A x \in Xids : hw[x]="fly" => \A p \in xsrcS[x] \cup xsrcP[x] :
                sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])

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

           PdJrO(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])



           IVktI(m) == m.t = "hello" => m.fr \in Inst



           VawcR(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))



           njcW8(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))



           dJpcb(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])



           Y8U_7(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])



           Hdijl(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")



           AL7Oa(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)



           jjAuj(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))



           CsPNLN(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))



           wuoDNx7(m) ==
             /\ PdJrO(m)
             /\ IVktI(m)
             /\ VawcR(m)
             /\ njcW8(m)
             /\ dJpcb(m)
             /\ Y8U_7(m)
             /\ Hdijl(m)
             /\ AL7Oa(m)
             /\ jjAuj(m)
             /\ CsPNLN(m)


           \* T2M-LOCAL-VISIBILITY

           SbBYu4pWxTHT(j,r,g,ok) ==
             /\ ph' = [ph EXCEPT ![j][r] = "end"]
             /\ drep' = [drep EXCEPT ![r][g] = 1]
             /\ dsucc' = IF ok THEN [dsucc EXCEPT ![r][g] = TRUE] ELSE dsucc
             /\ UNCHANGED <<rg,hd,crep>> /\ ~gbad'


           \* T2M-LOCAL-VISIBILITY

           BTBfRMeQb_J0vm_XK(x) == Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]] = xg[x] /\ rx[xd[x]][xr[x]] = x



           sSdYINXW9cenl3Nk4yf(x) ==
             (hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x]
              /\ xst' = [xst EXCEPT ![x] = "landed"]
              /\ EvidenceAt(xdst[x],x) /\ UNCHANGED <<ph,drep,net>>)
             \/
             (~hok[x] /\ pst[xdst[x]] \in {"priv","drain"} /\ x \in led[xdst[x]]
              /\ PageTo(xdst[x],"quar",xp[x],led[xdst[x]],sled[xdst[x]])
              /\ UNCHANGED xst
              /\ ph' = (IF BTBfRMeQb_J0vm_XK(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph)
              /\ drep' = (IF BTBfRMeQb_J0vm_XK(x) THEN [drep EXCEPT ![xr[x]][xg[x]] = Bump(@)] ELSE drep)
              /\ net' = (IF BTBfRMeQb_J0vm_XK(x) THEN net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)} ELSE net))


           \* T2M-LOCAL-VISIBILITY

           ZBFFHaM3V9TMhB1Sx(x) == BTBfRMeQb_J0vm_XK(x) /\ ~hok[x]


           \* T2M-LOCAL-VISIBILITY

           IdWaPue2LgYScE == \A i \in Inst, r \in Rq :
             /\ (ph[i][r] # "none" => ph'[i][r] # "none")
             /\ (Active(i,r)' => Active(i,r))


           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_SendShared, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, wuoDNx7, SbBYu4pWxTHT, BTBfRMeQb_J0vm_XK, sSdYINXW9cenl3Nk4yf, ZBFFHaM3V9TMhB1Sx, IdWaPue2LgYScE

<1>ivFfcVr6Rc1eHuIs8.         B2 /\ SFollow => RD_HUpdate /\ RD_MUpdate /\ RD_XUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_HUpdate, RD_MUpdate, RD_XUpdate, RD_HPin, RD_HLive, RD_Posted, RD_Src, Sizes, Location, Design


<1>lQA2.         PinInv => STypeOK /\ (B2 => SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6)
 BY SMTT(10), V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uaJsMuSZCFU.         SFollow => RD_SFrame
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_SFrame, sV, Sizes, Location, Design

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

<1>CN0mZYNfgIVf1Nqh.        
  BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>> => BaseSendOwnLanded'
  BY SMTT(5), Sizes, Location, Design DEF BaseSendOwnLanded, SendOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tk6tX8t1tfNesh.        
  ASSUME NEW x \in Xids, DRecvNotice(x)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>Tk6tX8t1tfNesh, Sizes, Location, Design, ZenonT(5) DEF DRecvNotice, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H9FRCJOVVK7RWr8JsvSjvR.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>H9FRCJOVVK7RWr8JsvSjvR, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>>
  BY SMTT(5), <1>Tk6tX8t1tfNesh, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, SendOwnLanded, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>CN0mZYNfgIVf1Nqh, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0916_PdRDPort_PdDRecvNoticeFrames


<1>OvT2n3AHaSfm9f1WqOsT2HJ23.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE SendOwnLanded'
<2> USE ONLY <1>OvT2n3AHaSfm9f1WqOsT2HJ23, Sizes, Location, Design
<2>1. UNCHANGED <<xsrc,hw,xr,xg>>
 BY SMTT(10), Sizes, Location, Design DEF DRecvNotice, instV, kV, rtV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>H9FRCJOVVK7RWr8JsvSjvR, <1>BeoqOTbNFxOyFnZ, <1>UukBaziv337, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>hNWD3xAneCS5LxtdwwCRnYSwsKxJtGL.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>hNWD3xAneCS5LxtdwwCRnYSwsKxJtGL, Sizes, Location, Design, <1>RWvTkqQsVDwnRge2Q5E0XkOXe, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>laJZVswepl.         K12 <=> (\A m \in net : wuoDNx7(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>zYALeEc.         (\A m \in net' : wuoDNx7(m)') => K12'
  BY ZenonT(5), Sizes, Location, Design DEF K12, wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, Sizes, Location, Design
\* T2M-END R2M1109_PdRDLegacy_PP_PdMessagePred


<1>qA3zinQPD7c581.        
  ASSUME NEW x \in Xids, DRecvNotice(x)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>qA3zinQPD7c581, Sizes, Location, Design, ZenonT(5) DEF DRecvNotice, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1164_PdRDLegacy_PP_PdDRecvNoticeFrames

\* T2M-SCOPE R2M1165_PdRDLegacy_PP_PdCell_DRecvNotice_K17

<1>KeUX3AwuU5dZGL50.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>NEegLqmCti8ylSLRCJ.        
  ASSUME NEW x \in Xids, SHJS, K2, x < nx
  PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>NEegLqmCti8ylSLRCJ, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, SHJS, Xids, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>oRMobcZtnEacZOSYh60.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst /\ (IsP(Loc(p)) <=> ~IsD(Loc(p)))
  BY ONLY <1>oRMobcZtnEacZOSYh60, Sizes, Location, Design, Location, Sizes, SMTT(10) DEF IsP, IsD, Inst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M1123_PdRDLegacy_PP_D2Finite_PdFactsA


<1>A0pfkf7m3VQpQ.        
  ASSUME PinInv
  PROVE \A u \in Rq, g \in Gens : drep[u][g] = 1 => hd[u][g] \in Inst
<2> USE ONLY <1>A0pfkf7m3VQpQ, Sizes, Location, Design
<2>1. K1 /\ AEZsS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. \A u \in Rq, g \in Gens : drep[u][g] = 1 => g <= gen[u]
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K1, AEZsS, Gens, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>ZEkgOWKiWFnqgZ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW g \in Gens, NEW ok \in BOOLEAN,
         K13, Q1j7VI, MuHyNw3, AydA, nNeM,
         drep[r][g] = 0, hd[r][g] = j, rg[j][r] = g,
         \A u \in Rq, h \in Gens : drep[u][h] = 1 => hd[u][h] \in Inst,
         SbBYu4pWxTHT(j,r,g,ok)
  PROVE K13'
<2> USE ONLY <1>ZEkgOWKiWFnqgZ, Sizes, Location, Design
<2>1. ASSUME NEW u \in Rq, NEW h \in Gens
       PROVE /\ drep'[u][h] <= 1
             /\ (dsucc'[u][h] => drep'[u][h] = 1)
             /\ (crep'[u][h] = "ok" => dsucc'[u][h])
             /\ crep'[u][h] # "two"
             /\ (drep'[u][h] = 1 => (rg'[hd'[u][h]][u] > h \/
                   (rg'[hd'[u][h]][u] = h /\ ph'[hd'[u][h]][u] = "end")))
<3>1. CASE u = r /\ h = g
  BY <3>1, SMTT(10), Sizes, Location, Design DEF K13, SbBYu4pWxTHT, Q1j7VI, MuHyNw3, AydA, Sizes, Location, Design
<3>2. CASE u # r \/ h # g
<4>1. drep'[u][h] = drep[u][h] /\ dsucc'[u][h] = dsucc[u][h]
  BY <3>2, SMTT(10), Sizes, Location, Design DEF SbBYu4pWxTHT, Q1j7VI, MuHyNw3, Sizes, Location, Design
<4>2. drep[u][h] = 1 => hd[u][h] \in Inst /\ (ph[hd[u][h]][u] = "end" => ph'[hd[u][h]][u] = "end")
  BY <3>2, SMTT(10), Sizes, Location, Design DEF SbBYu4pWxTHT, AydA, Sizes, Location, Design
<4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF K13, SbBYu4pWxTHT, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K13, SbBYu4pWxTHT, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>LNzZvPPaTR5r.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW g \in Gens, NEW ok \in BOOLEAN,
         NEW m, wuoDNx7(m), Q1j7VI, MuHyNw3, drep[r][g] = 0,
         SbBYu4pWxTHT(j,r,g,ok),
         UNCHANGED <<gen,hp,nx,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok>>
  PROVE wuoDNx7(m)'
<2> USE ONLY <1>LNzZvPPaTR5r, Sizes, Location, Design
<2>1. m.t = "reply" => m.r \in Rq /\ m.g \in Gens /\ (m.r # r \/ m.g # g)
  BY SMTT(10), Sizes, Location, Design DEF wuoDNx7, PdJrO, CsPNLN, Sizes, Location, Design
<2>2. CsPNLN(m)'
  BY <2>1, SMTT(10), Sizes, Location, Design DEF wuoDNx7, CsPNLN, SbBYu4pWxTHT, Q1j7VI, MuHyNw3, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, SbBYu4pWxTHT, CqeHw, Sizes, Location, Design
\* T2M-END R2M1132_PdRDLegacy_PP_PdD2History


<1>vj160z9HQTZJ.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted"
  PROVE /\ x < nx /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>vj160z9HQTZJ, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, SHJS, Xids, Sizes, Location, Design
<2>3. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
       /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>1, <2>2, <1>NEegLqmCti8ylSLRCJ, SMTT(10), Sizes, Location, Design DEF ExpPage, ExpInst, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>e7mVrXuBvS.        
  ASSUME NEW x \in Xids, NEW m \in net, PinInv, m.t = "notice", m.x = x
  PROVE /\ m.ok = hok[x] /\ m.pg = xlt[x] /\ iv[x] = "cqe"
        /\ (m.ok => hw[x] = "stop")
<2> USE ONLY <1>e7mVrXuBvS, Sizes, Location, Design
<2>1. K12
  BY SMTT(10), V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. m.ok = hok[x] /\ m.pg = xlt[x] /\ iv[x] = "cqe" /\ hw[x] \in CqeHw(x)
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>3. QED BY <2>2, Design, SMTT(10), Sizes, Location DEF CqeHw, Sizes, Location, Design
\* T2M-END R2M1168_PdRDLegacy_PP_PdD2TransferFacts


<1>dvIjBkI1i7SObU8.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE /\ xk[x] = "wr" /\ xst[x] = "posted" /\ x < nx
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>dvIjBkI1i7SObU8, Sizes, Location, Design
<2>1. xk[x] = "wr" /\ xst[x] = "posted"
  BY SMTT(10), Sizes, Location, Design DEF DRecvNotice, Sizes, Location, Design
<2>2. QED BY <2>1, <1>vj160z9HQTZJ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>XaKy7shL9QHppnmU.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE sSdYINXW9cenl3Nk4yf(x)
<2> USE ONLY <1>XaKy7shL9QHppnmU, Sizes, Location, Design
<2>1. \A m \in net : (m.t = "notice" /\ m.x = x) =>
          m.ok = hok[x] /\ m.pg = xlt[x] /\ (m.ok => hw[x] = "stop")
  BY <1>e7mVrXuBvS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, ZenonT(10), Sizes, Location DEF DRecvNotice, sSdYINXW9cenl3Nk4yf, BTBfRMeQb_J0vm_XK, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>eFBhETPjx8yDCpPS.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE sSdYINXW9cenl3Nk4yf(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY ONLY <1>eFBhETPjx8yDCpPS, Sizes, Location, Design, <1>XaKy7shL9QHppnmU, <1>qA3zinQPD7c581, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1169_PdRDLegacy_PP_PdD2DRecvNoticeEffect


<1>MVW9xxBvt0WJKBVEdzCA80zlkXx.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xd[x] = hd[xr[x]][xg[x]]
        /\ UNCHANGED <<rg,hd,crep,dsucc,gen,hp,nx,xp,xd,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok>>
        /\ IF ZBFFHaM3V9TMhB1Sx(x)
            THEN /\ drep[xr[x]][xg[x]] = 0 /\ SbBYu4pWxTHT(xd[x],xr[x],xg[x],FALSE)
                 /\ net' = net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)}
            ELSE /\ UNCHANGED <<ph,drep,net,gbad>>
<2> USE ONLY <1>MVW9xxBvt0WJKBVEdzCA80zlkXx, Sizes, Location, Design
<2>1. K9 /\ ~gbad /\ Q1j7VI
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_GenFiltered, V21_Inv_K9, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, GenFiltered, QLAWp, Sizes, Location, Design
<2>2. sSdYINXW9cenl3Nk4yf(x) /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xd[x] = hd[xr[x]][xg[x]]
       /\ UNCHANGED <<rg,hd,crep,dsucc,gen,hp,nx,xp,xd,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok,gbad>>
  BY <1>dvIjBkI1i7SObU8, <1>eFBhETPjx8yDCpPS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ZBFFHaM3V9TMhB1Sx(x) => drep[xr[x]][xg[x]] = 0
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF ZBFFHaM3V9TMhB1Sx, BTBfRMeQb_J0vm_XK, K9, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF sSdYINXW9cenl3Nk4yf, ZBFFHaM3V9TMhB1Sx, SbBYu4pWxTHT, Bump, Sizes, Location, Design
\* T2M-END R2M1170_PdRDLegacy_PP_PdD2DRecvNoticeHistory


<1>mW5ZCRkyGuC.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K1'
<2> USE ONLY <1>mW5ZCRkyGuC, Sizes, Location, Design
<2>1. K1 /\ AEZsS /\ Q1j7VI /\ MuHyNw3
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,crep,dsucc>>
       /\ (drep' = drep \/ drep' = [drep EXCEPT ![xr[x]][xg[x]] = 1])
  BY <1>dvIjBkI1i7SObU8, <1>eFBhETPjx8yDCpPS, <1>MVW9xxBvt0WJKBVEdzCA80zlkXx, SMTT(10), Sizes, Location, Design DEF SbBYu4pWxTHT, Sizes, Location, Design
<2>3. \A u \in Rq, g \in Gens : g > gen[u] => drep'[u][g] = 0 /\ ~dsucc'[u][g]
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K1, AEZsS, Q1j7VI, MuHyNw3, Gens, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M1171_PdRDLegacy_PP_PdD2DRecvNotice_K1


<1>fBTGp3gdOszjP.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted",
    Active(xd[x],xr[x]), rg[xd[x]][xr[x]] = xg[x], rx[xd[x]][xr[x]] = x
  PROVE ph[xd[x]][xr[x]] = "wait" /\ ~rhit[xd[x]][xr[x]] /\ rpg[xd[x]][xr[x]] = xdst[x]
<2> USE ONLY <1>fBTGp3gdOszjP, Sizes, Location, Design
<2>1. K2 /\ K8 /\ K9 /\ S5 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K2, V21_Inv_K8, V21_Inv_K9, V21_Inv_S5, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. x < nx /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>vj160z9HQTZJ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. Mode = "push" /\ x # 0
  BY <2>1, <2>2, <1>NEegLqmCti8ylSLRCJ, Design, Sizes, SMTT(10), Location DEF Xids, Sizes, Location, Design
<2>4. ~rhit[xd[x]][xr[x]]
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K9, Active, Sizes, Location, Design
<2>5. ph[xd[x]][xr[x]] \notin {"run","ovl"}
  BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
<2>6. ph[xd[x]][xr[x]] = "wait"
  BY <2>1, <2>2, <2>3, <2>5, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
<2>7. QED BY <2>1, <2>2, <2>3, <2>4, <2>6, SMTT(10), Sizes, Location, Design DEF K9, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>D1k57trjBKUUruRsd.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted"
  PROVE x \in led[xdst[x]]
<2> USE ONLY <1>D1k57trjBKUUruRsd, Sizes, Location, Design
<2>1. K4 /\ x < nx
  BY <1>vj160z9HQTZJ, SMTT(10), V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>SY1y26kNnOdJrAu.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted"
  PROVE x < nx /\ ExpPage(x) = xdst[x] /\ xdst[x] \in Pages
        /\ (InitPage(x) \in Pages => InitPage(x) # xdst[x])
<2> USE ONLY <1>SY1y26kNnOdJrAu, Sizes, Location, Design
<2>1. K2 /\ SHJS /\ x < nx /\ xp[x] \in PInst /\ xd[x] \in DInst
       /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <1>UwwC5LVwQr, <1>vj160z9HQTZJ, SMTT(10), V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. InitPage(x) # 0 => Loc(InitPage(x)) = xp[x]
  BY <2>1, <1>NEegLqmCti8ylSLRCJ, SMTT(10), Sizes, Location, Design DEF InitInst, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>KeUX3AwuU5dZGL50, Sizes, SMTT(10), Location, Design DEF Pages, ExpPage, Sizes, Location, Design
\* T2M-END R2M1172_PdRDLegacy_PP_PdD2PostedWait


<1>rbg3awZLl0A9mK4wrM.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE ZBFFHaM3V9TMhB1Sx(x) => ph[xd[x]][xr[x]] = "wait"
  BY ONLY <1>rbg3awZLl0A9mK4wrM, Sizes, Location, Design, <1>dvIjBkI1i7SObU8, <1>fBTGp3gdOszjP, SMTT(10) DEF ZBFFHaM3V9TMhB1Sx, BTBfRMeQb_J0vm_XK, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>EII3AU0DHGk32WXVUtY.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE \A i \in Inst, u \in Rq :
    (ph'[i][u] \in {"run","ovl"} <=> ph[i][u] \in {"run","ovl"})
<2> USE ONLY <1>EII3AU0DHGk32WXVUtY, Sizes, Location, Design
<2>1. AydA /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>UwwC5LVwQr, <1>dvIjBkI1i7SObU8, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ZBFFHaM3V9TMhB1Sx(x) => ph[xd[x]][xr[x]] = "wait"
  BY <1>rbg3awZLl0A9mK4wrM, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ph' = IF ZBFFHaM3V9TMhB1Sx(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
  BY <1>MVW9xxBvt0WJKBVEdzCA80zlkXx, SMTT(10), Sizes, Location, Design DEF SbBYu4pWxTHT, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF AydA, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>ejY4FYSdfyKMJrPoXO5f.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE \A p \in Pages : p # xdst[x] => UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<2> USE ONLY <1>ejY4FYSdfyKMJrPoXO5f, Sizes, Location, Design
<2>1. OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ dcfPK /\ h9WLgd /\ sSdYINXW9cenl3Nk4yf(x)
  BY <1>UwwC5LVwQr, <1>eFBhETPjx8yDCpPS, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF sSdYINXW9cenl3Nk4yf, PageTo, EvidenceAt, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, Sizes, Location, Design
\* T2M-END R2M1173_PdRDLegacy_PP_PdD2DRecvNoticeReadPhases

\* T2M-SCOPE R2M1174_PdRDLegacy_PP_PdD2DRecvNotice_K10
\* T2M-BODY R2M1174_PdRDLegacy_PP_PdD2DRecvNotice_K10
\* T2M-LOCAL-VISIBILITY

<1>kDE7SdowuYwF.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K10'
<2> USE ONLY <1>kDE7SdowuYwF, Sizes, Location, Design
<2>1. K10 /\ K2 /\ SHJS /\ OyyWS /\ IwCp /\ vS7em
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K10, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. sSdYINXW9cenl3Nk4yf(x) /\ UNCHANGED <<nx,xdst,xr,xg,hw,hok,xlt,rg,ptl>>
  BY <1>eFBhETPjx8yDCpPS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW y \in Xids, y < nx', xdst'[y] \in Pages,
    OwnedBy(xdst[y],xr[y],xg[y])',
    ~(ph'[Loc(xdst'[y])][xr'[y]] \in {"run","ovl"} /\ rg'[Loc(xdst'[y])][xr'[y]] = xg'[y])
  PROVE ptl'[xdst'[y]] = (IF hw'[y] = "stop" /\ hok'[y] THEN xlt'[y] ELSE 0)
<3>1. y < nx /\ xdst[y] \in Pages /\ OwnedBy(xdst[y],xr[y],xg[y])
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF sSdYINXW9cenl3Nk4yf, PageTo, EvidenceAt, AfterEv, OwnedBy, OyyWS, IwCp, vS7em, Sizes, Location, Design
<3>2. xr[y] \in Rq /\ Loc(xdst[y]) \in Inst
  BY <2>1, <3>1, <1>NEegLqmCti8ylSLRCJ, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. ~(ph[Loc(xdst[y])][xr[y]] \in {"run","ovl"} /\ rg[Loc(xdst[y])][xr[y]] = xg[y])
  BY <2>2, <2>3, <3>1, <3>2, <1>EII3AU0DHGk32WXVUtY, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>4. QED BY <2>1, <2>2, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF K10, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K10, Sizes, Location, Design
\* T2M-END R2M1174_PdRDLegacy_PP_PdD2DRecvNotice_K10


<1>KuFzZLwcCuFd.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K12'
<2> USE ONLY <1>KuFzZLwcCuFd, Sizes, Location, Design
<2>1. K12 /\ Q1j7VI /\ MuHyNw3
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. CASE ZBFFHaM3V9TMhB1Sx(x)
<3>1. \A m \in net : wuoDNx7(m)'
  BY <2>1, <2>2, <1>MVW9xxBvt0WJKBVEdzCA80zlkXx, <1>laJZVswepl, <1>LNzZvPPaTR5r, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. wuoDNx7(Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE))'
  BY <2>1, <2>2, <1>MVW9xxBvt0WJKBVEdzCA80zlkXx, SMTT(10), Sizes, Location, Design DEF SbBYu4pWxTHT, Q1j7VI, Msg, wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, Sizes, Location, Design
<3>3. QED BY <2>2, <3>1, <3>2, <1>MVW9xxBvt0WJKBVEdzCA80zlkXx, <1>zYALeEc, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE ~ZBFFHaM3V9TMhB1Sx(x)
  BY <2>1, <2>3, <1>MVW9xxBvt0WJKBVEdzCA80zlkXx, SMTT(10), Sizes, Location, Design DEF K12, CqeHw, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1176_PdRDLegacy_PP_PdD2DRecvNotice_K12

\* T2M-SCOPE R2M1177_PdRDLegacy_PP_PdD2DRecvNotice_K13

<1>gSTArAxx4cBX.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K13'
<2> USE ONLY <1>gSTArAxx4cBX, Sizes, Location, Design
<2>0. K13 /\ Q1j7VI /\ MuHyNw3 /\ AydA /\ nNeM
       /\ \A u \in Rq, h \in Gens : drep[u][h] = 1 => hd[u][h] \in Inst
  BY <1>UwwC5LVwQr, <1>A0pfkf7m3VQpQ, SMTT(10), V21_Inv_K13, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>1. CASE ZBFFHaM3V9TMhB1Sx(x)
  BY <2>0, <2>1, <1>MVW9xxBvt0WJKBVEdzCA80zlkXx, <1>ZEkgOWKiWFnqgZ, SMTT(10), Sizes, Location, Design DEF ZBFFHaM3V9TMhB1Sx, BTBfRMeQb_J0vm_XK, Sizes, Location, Design
<2>2. CASE ~ZBFFHaM3V9TMhB1Sx(x)
<3>1. K13 /\ UNCHANGED <<ph,drep,dsucc,rg,hd,crep,gbad>>
  BY <2>2, <1>MVW9xxBvt0WJKBVEdzCA80zlkXx, SMTT(10), V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED BY <3>1, SMTT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1177_PdRDLegacy_PP_PdD2DRecvNotice_K13

\* T2M-SCOPE R2M1178_PdRDLegacy_PP_PdD2DRecvNotice_K16

<1>rOK5nQ2GKkXt.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K16'
<2> USE ONLY <1>rOK5nQ2GKkXt, Sizes, Location, Design
<2>1. K16 /\ OyyWS /\ IwCp /\ vS7em /\ x \in led[xdst[x]]
  BY <1>UwwC5LVwQr, <1>dvIjBkI1i7SObU8, <1>D1k57trjBKUUruRsd, SMTT(10), V21_Inv_K16, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. sSdYINXW9cenl3Nk4yf(x) /\ UNCHANGED <<rpg,rg,ptl,sfly,hw,xdst>>
  BY <1>eFBhETPjx8yDCpPS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW p \in Pages, GrownP(p)'
       PROVE /\ ph'[Loc(p)][pr'[p]] \in {"run","ovl"} /\ rg'[Loc(p)][pr'[p]] = pgn'[p]
             /\ led'[p] = {} /\ sled'[p] = {} /\ sfly'[p] = {}
             /\ plt'[p] = ptl'[p] /\ ptl'[p] \in {0,1} /\ NoWriteInto(p)'
<3>1. GrownP(p) /\ UNCHANGED <<pr[p],pgn[p]>>
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF GrownP, sSdYINXW9cenl3Nk4yf, PageTo, EvidenceAt, AfterEv, OyyWS, IwCp, vS7em, Sizes, Location, Design
<3>2. p # xdst[x] /\ pr[p] \in Rq /\ Loc(p) \in Inst
  BY <2>1, <3>1, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location, Design DEF K16, GrownP, Sizes, Location, Design
<3>3. UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
  BY <3>2, <1>ejY4FYSdfyKMJrPoXO5f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>4. ph'[Loc(p)][pr'[p]] \in {"run","ovl"}
  BY <2>1, <3>1, <3>2, <1>EII3AU0DHGk32WXVUtY, SMTT(10), Sizes, Location, Design DEF K16, Sizes, Location, Design
<3>5. QED BY <2>1, <2>2, <3>1, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF K16, NoWriteInto, Writing, InFl, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K16, Sizes, Location, Design
\* T2M-END R2M1178_PdRDLegacy_PP_PdD2DRecvNotice_K16


<1>o2Qbyuaplea.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K2'
<2> USE ONLY <1>o2Qbyuaplea, Sizes, Location, Design
<2>1. K2 /\ Q1j7VI /\ AEZsS /\ RwXY /\ DnMxp /\ O0Gm /\ DpA4 /\ fr1A /\ dcfPK /\ SHJS /\ vS7em /\ AydA /\ bFwlN /\ IwCp /\ OyyWS /\ h9WLgd /\ C4fb /\ JjZ1PO /\ CXAy /\ ok5g /\ OfQy9 /\ PwcfA /\ vdyX /\ a1R5 /\ Uzgo58 /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. sSdYINXW9cenl3Nk4yf(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>eFBhETPjx8yDCpPS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>dvIjBkI1i7SObU8, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, BTBfRMeQb_J0vm_XK, sSdYINXW9cenl3Nk4yf, EvidenceAt, ExpInst, ExpPage, InitInst, InitPage, IsD, IsP, K2, PageTo, PinBlocks, Q1j7VI, AEZsS, RwXY, DnMxp, O0Gm, DpA4, fr1A, dcfPK, SHJS, vS7em, AydA, bFwlN, IwCp, OyyWS, h9WLgd, C4fb, JjZ1PO, CXAy, ok5g, OfQy9, PwcfA, vdyX, a1R5, Uzgo58, PD2ZN, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M1179_PdRDLegacy_PP_PdD2DRecvNotice_K2

\* T2M-SCOPE R2M1180_PdRDLegacy_PP_PdD2DRecvNotice_K3

<1>flU3f6d7nXr.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K3'
<2> USE ONLY <1>flU3f6d7nXr, Sizes, Location, Design
<2>1. K3 /\ K2 /\ Q1j7VI /\ AEZsS /\ RwXY /\ DnMxp /\ O0Gm /\ DpA4 /\ fr1A /\ dcfPK /\ SHJS /\ vS7em /\ AydA /\ bFwlN /\ IwCp /\ OyyWS /\ h9WLgd /\ C4fb /\ JjZ1PO /\ CXAy /\ ok5g /\ OfQy9 /\ PwcfA /\ vdyX /\ a1R5 /\ Uzgo58 /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K3, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. sSdYINXW9cenl3Nk4yf(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>eFBhETPjx8yDCpPS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>dvIjBkI1i7SObU8, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, CqeHw, BTBfRMeQb_J0vm_XK, sSdYINXW9cenl3Nk4yf, EvidenceAt, ExpInst, ExpPage, InFl, InitInst, InitPage, IsD, IsP, K2, K3, PageTo, PinBlocks, Q1j7VI, AEZsS, RwXY, DnMxp, O0Gm, DpA4, fr1A, dcfPK, SHJS, vS7em, AydA, bFwlN, IwCp, OyyWS, h9WLgd, C4fb, JjZ1PO, CXAy, ok5g, OfQy9, PwcfA, vdyX, a1R5, Uzgo58, PD2ZN, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M1180_PdRDLegacy_PP_PdD2DRecvNotice_K3

\* T2M-SCOPE R2M1181_PdRDLegacy_PP_PdD2DRecvNotice_K4

<1>Pwn2dcQjCej.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K4'
<2> USE ONLY <1>Pwn2dcQjCej, Sizes, Location, Design
<2>1. K2 /\ K7 /\ K4 /\ SHJS /\ dcfPK /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K2, V21_Inv_K4, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xst[x] = "posted" /\ x < nx /\ ExpPage(x) = xdst[x] /\ xdst[x] \in Pages
       /\ (InitPage(x) \in Pages => InitPage(x) # xdst[x])
  BY <1>dvIjBkI1i7SObU8, <1>SY1y26kNnOdJrAu, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>0. pst[xdst[x]] # "free"
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K4, K7, ExpPage, Sizes, Location, Design
<2>3. UNCHANGED <<nx,iv,xr,xg,xk,xp,xd,xsrc,xdst>>
       /\ ((UNCHANGED <<led,xst>>) \/
            (led' = [led EXCEPT ![xdst[x]] = @ \ {x}] /\ xst' = [xst EXCEPT ![x] = "landed"]))
  BY <2>0, <2>1, <2>2, <1>eFBhETPjx8yDCpPS, Design, SMTT(10), Sizes, Location DEF sSdYINXW9cenl3Nk4yf, EvidenceAt, PageTo, AfterEv, dcfPK, Sizes, Location, Design
<2>4. ASSUME NEW y \in Xids, y < nx'
       PROVE /\ ((y \in led'[ExpPage(y)']) <=> xst'[y] = "posted")
             /\ (InitPage(y)' \in Pages => ((y \in led'[InitPage(y)']) <=> iv'[y] \in {"reg","posted","failret"}))
<3>1. CASE y = x
  BY <2>1, <2>2, <2>3, <2>4, <3>1, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, InitPage, dcfPK, PD2ZN, Sizes, Location, Design
<3>2. CASE y # x
<4>1. ExpPage(y) \in Pages /\ ExpPage(y)' = ExpPage(y) /\ InitPage(y)' = InitPage(y)
  BY <2>1, <2>3, <2>4, <1>NEegLqmCti8ylSLRCJ, SMTT(10), Sizes, Location, Design DEF ExpPage, InitPage, Sizes, Location, Design
<4>2. \A p \in Pages : (y \in led'[p]) <=> (y \in led[p])
  BY <2>1, <2>2, <2>3, <2>4, <3>2, SMTT(10), Sizes, Location, Design DEF dcfPK, Sizes, Location, Design
<4>3. xst'[y] = xst[y] /\ iv'[y] = iv[y]
  BY <2>1, <2>3, <2>4, <3>2, SMTT(10), Sizes, Location, Design DEF PD2ZN, Sizes, Location, Design
<4>4. QED BY <2>1, <2>3, <2>4, <4>1, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF K4, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. ASSUME NEW p \in Pages, NEW y \in led'[p]
       PROVE y < nx' /\ (p = ExpPage(y)' \/ p = InitPage(y)')
<3>1. y \in led[p]
  BY <2>1, <2>3, <2>5, SMTT(10), Sizes, Location, Design DEF dcfPK, Sizes, Location, Design
<3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, InitPage, Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K4, Sizes, Location, Design
\* T2M-END R2M1181_PdRDLegacy_PP_PdD2DRecvNotice_K4

\* T2M-SCOPE R2M1182_PdRDLegacy_PP_PdD2DRecvNotice_K5

<1>bHUsXY6qP7b.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K6'
<2> USE ONLY <1>bHUsXY6qP7b, Sizes, Location, Design
<2>1. K6 /\ Q1j7VI /\ AEZsS /\ dcfPK /\ vS7em /\ AydA /\ bFwlN /\ IwCp /\ OyyWS /\ Xc_ngV /\ h9WLgd /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. sSdYINXW9cenl3Nk4yf(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>eFBhETPjx8yDCpPS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>dvIjBkI1i7SObU8, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, BTBfRMeQb_J0vm_XK, sSdYINXW9cenl3Nk4yf, EvidenceAt, IsD, IsP, K6, OwnedBy, PageTo, PinBlocks, Q1j7VI, AEZsS, dcfPK, vS7em, AydA, bFwlN, IwCp, OyyWS, Xc_ngV, h9WLgd, PD2ZN, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M1183_PdRDLegacy_PP_PdD2DRecvNotice_K6


<1>mutS44.        
  ASSUME PinInv, IdWaPue2LgYScE, UNCHANGED <<nx,rg,rx,xd,xg,xk,xp,xr>>
  PROVE S1'
<2> USE ONLY <1>mutS44, Sizes, Location, Design
<2>1. S1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K2, V21_Inv_S1, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. \A y \in Xids : y < nx => xr[y] \in Rq /\ ExpInst(y) \in Inst
  BY <2>1, <1>NEegLqmCti8ylSLRCJ, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF IdWaPue2LgYScE, S1, ExpInst, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>h5lgm2bCDr8EmZWxVJm90d.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE IdWaPue2LgYScE
<2> USE ONLY <1>h5lgm2bCDr8EmZWxVJm90d, Sizes, Location, Design
<2>1. AydA /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>UwwC5LVwQr, <1>dvIjBkI1i7SObU8, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. sSdYINXW9cenl3Nk4yf(x)
  BY <1>eFBhETPjx8yDCpPS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF sSdYINXW9cenl3Nk4yf, BTBfRMeQb_J0vm_XK, IdWaPue2LgYScE, AydA, Active, Sizes, Location, Design
\* T2M-END R2M1193_PdRDLegacy_PP_PdD2DRecvNoticePhases

\* T2M-SCOPE R2M1194_PdRDLegacy_PP_PdD2DRecvNotice_S1
\* T2M-BODY R2M1194_PdRDLegacy_PP_PdD2DRecvNotice_S1
\* T2M-LOCAL-VISIBILITY

<1>AnPbZl3DUbH.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE S1'
<2> USE ONLY <1>AnPbZl3DUbH, Sizes, Location, Design
<2>1. IdWaPue2LgYScE /\ UNCHANGED <<nx,rg,rx,xd,xg,xk,xp,xr>>
  BY <1>h5lgm2bCDr8EmZWxVJm90d, <1>qA3zinQPD7c581, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>mutS44, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1194_PdRDLegacy_PP_PdD2DRecvNotice_S1


<1>T3SNPNOu5wf.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE S5'
<2> USE ONLY <1>T3SNPNOu5wf, Sizes, Location, Design
<2>1. S5 /\ PD2ZN /\ xst[x] = "posted"
  BY <1>UwwC5LVwQr, <1>dvIjBkI1i7SObU8, SMTT(10), V21_Inv_S5, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<nx,rx,rhit,xdst,rpg,xr,xg,rg,hw,hok,xlt,xnt,iv>>
  BY <1>qA3zinQPD7c581, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A y \in Xids : y # x => xst'[y] = xst[y]
  BY <2>1, <1>eFBhETPjx8yDCpPS, SMTT(10), Sizes, Location, Design DEF sSdYINXW9cenl3Nk4yf, PD2ZN, Sizes, Location, Design
<2>4. ASSUME NEW i \in DInst, NEW u \in Rq, ph'[i][u] \in {"run","ovl"}, ~rhit'[i][u]
       PROVE LET y == rx'[i][u] IN
         /\ y \in Xids /\ y < nx' /\ xdst'[y] = rpg'[i][u] /\ xr'[y] = u /\ xg'[y] = rg'[i][u]
         /\ hw'[y] = "stop" /\ hok'[y] /\ xlt'[y] = xnt'[y]
         /\ (Mode = "push" => xst'[y] = "landed") /\ (Mode = "pull" => iv'[y] = "cqe")
<3>1. ph[i][u] \in {"run","ovl"} /\ ~rhit[i][u]
  BY <2>2, <2>4, <1>EII3AU0DHGk32WXVUtY, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. Mode = "push" => rx[i][u] # x
  BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
<3>3. QED BY <2>1, <2>2, <2>3, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
\* T2M-END R2M1195_PdRDLegacy_PP_PdD2DRecvNotice_S5


<1>uYgkeXwQxlB20.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE K1'
  BY ONLY <1>uYgkeXwQxlB20, Sizes, Location, Design, <1>mW5ZCRkyGuC, V21_Inv_K1 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>xw8NrFIVEfcMJ.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE K2'
  BY ONLY <1>xw8NrFIVEfcMJ, Sizes, Location, Design, <1>o2Qbyuaplea, V21_Inv_K2 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>PDccH7KMXAWsH.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE K3'
  BY ONLY <1>PDccH7KMXAWsH, Sizes, Location, Design, <1>flU3f6d7nXr, V21_Inv_K3 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>RuRttyIEAuEGV.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE K4'
  BY ONLY <1>RuRttyIEAuEGV, Sizes, Location, Design, <1>Pwn2dcQjCej, V21_Inv_K4 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>dxifH44mXVIPv.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE K6'
  BY ONLY <1>dxifH44mXVIPv, Sizes, Location, Design, <1>bHUsXY6qP7b, V21_Inv_K6 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>VFiFPiMgVUFwpz.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE K10'
  BY ONLY <1>VFiFPiMgVUFwpz, Sizes, Location, Design, <1>kDE7SdowuYwF, V21_Inv_K10 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>uxFAyBCuRLD9IV.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE K12'
  BY ONLY <1>uxFAyBCuRLD9IV, Sizes, Location, Design, <1>KuFzZLwcCuFd, V21_Inv_K12 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>dh49LH3K5TyOGO.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE K13'
  BY ONLY <1>dh49LH3K5TyOGO, Sizes, Location, Design, <1>gSTArAxx4cBX, V21_Inv_K13 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>MeAYl9761wgFb2.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE K16'
  BY ONLY <1>MeAYl9761wgFb2, Sizes, Location, Design, <1>rOK5nQ2GKkXt, V21_Inv_K16 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>A3Yc4oCwaPon5.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE S1'
  BY ONLY <1>A3Yc4oCwaPon5, Sizes, Location, Design, <1>AnPbZl3DUbH, V21_Inv_S1 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>kjeN0Y4PV2a0m.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE S5'
  BY ONLY <1>kjeN0Y4PV2a0m, Sizes, Location, Design, <1>T3SNPNOu5wf, V21_Inv_S5 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>MeAYl9761wgFb2, <1>VFiFPiMgVUFwpz, <1>uxFAyBCuRLD9IV, <1>kjeN0Y4PV2a0m, <1>dh49LH3K5TyOGO, <1>A3Yc4oCwaPon5, <1>uYgkeXwQxlB20, <1>RuRttyIEAuEGV, <1>hNWD3xAneCS5LxtdwwCRnYSwsKxJtGL, <1>xw8NrFIVEfcMJ, <1>PDccH7KMXAWsH, <1>dxifH44mXVIPv, <1>OvT2n3AHaSfm9f1WqOsT2HJ23, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_DRecvNotice SHA 5e54da20065f8934677a8e03d94f16d7d9ffef93dfee1d4ff6a70025a7e801de
USE DEF Shape_T_xd, Shape_T_xg, Shape_T_xr
HIDE DEF Part_DRecvNotice_03_02, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_S1, V21_Inv_S5, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V22_T_rpgS, V22_T_sentry, V22_T_squar, V22_T_xsrcS
LEMMA ShapeEffect_DRecvNotice ==
 ASSUME NEW x \in Xids, Sizes, Design, DRecvNotice(x)
 PROVE net' \subseteq net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)}
 BY ONLY DRecvNotice(x), Sizes, Design, SMTT(5) DEF DRecvNotice, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_DRecvNotice ==
 ASSUME NEW x \in Xids, Sizes, Design, IndInv, MessageShape, DRecvNotice(x)
 PROVE MessageShape'
<1>1. net' \subseteq net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)}
 BY ONLY Sizes, Design, DRecvNotice(x), ShapeEffect_DRecvNotice
<1>2. xd \in [Xids -> {0} \cup Inst] /\ xg \in [Xids -> 0..MG] /\ xr \in [Xids -> 0..NR]
 BY ONLY IndInv, Shape_T_xd, Shape_T_xg, Shape_T_xr
<1>3. QED
 BY ONLY <1>1, <1>2, IndInv, MessageShape, Sizes, SMTT(10)
 DEF MessageShape, Msg, MsgT, Sizes, Rq, Gens, Xids, Pages, Inst, NL, PInst, DInst

\* Complete original body PdDomain_DRecvNotice SHA 596bfb831275f7a3ea38c22cd2bae9c201fcd8763d8ac0e8f16034824aa10e74
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_DRecvNotice, Shape_T_xd, Shape_T_xg, Shape_T_xr
THEOREM DomainKeep_DRecvNotice ==
 ASSUME NEW x \in Xids, Sizes, Location, Design, PinInv, DRecvNotice(x)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net' \subseteq net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)}
 BY ONLY Sizes, Location, Design, PinInv, DRecvNotice(x), ShapeEffect_DRecvNotice
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_DRecvNotice_04 SHA c65b63d7547938be85dc4aa903f0c911ca269557bb2264a0fb9d9bb83a8d48a8
USE DEF V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_K8, V21_Inv_K9, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_DRecvNotice, V21_Inv_MsgXDomain
THEOREM Group_DRecvNotice_04 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE (OneReply)' /\ (PrivateMapOwner)' /\ (EntryQuarantineDisjoint)' /\ (K17)' /\ (K14)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (GenFiltered)' /\ (ReplyTruth)' /\ (SharedImmutable)' /\ (P_B2OffInit)' /\ (MsgXDomain)'
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

<1> HIDE DEF XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Ex6xsGb, ez8hZbQN7k, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp

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


<1>wltyWkcWlQJxJXi8Nn.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
 PROVE ez8hZbQN7k /\ UNCHANGED xsrc
<2> HIDE DEF DRecvNotice, ez8hZbQN7k, CoreTypeOK, STypeOK
<2>effect. xk[x]="wr" /\ UNCHANGED <<rg,xsrc>> /\
           (ph'=ph \/ ph'=[ph EXCEPT ![xd[x]][xr[x]]="end"])
 BY ONLY <1>wltyWkcWlQJxJXi8Nn, ZenonT(5) DEF DRecvNotice
<2>types. ph \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>wltyWkcWlQJxJXi8Nn, V22_T_ph, SMTT(5)
<2>dest. xd[x] \in DInst
 BY ONLY <1>wltyWkcWlQJxJXi8Nn, <1>vx9OnCyVIC, <2>effect, Sizes, Location, Design, SMTT(5)
<2>other. \A i \in PInst : i \in Inst /\ i # xd[x]
 BY ONLY <1>HsRNXPeY1C, <2>dest, Sizes, Location, Design, SMTT(5)
<2>phPoint. \A i \in PInst,r \in Rq : ph'[i][r]=ph[i][r]
 BY ONLY <2>effect, <2>types, <2>other, SMTT(5)
<2>qed. QED BY ONLY <2>effect, <2>phPoint, SMTT(5) DEF ez8hZbQN7k


<1>T0SCIhPJfU0zlocsyMx44RjqeBouD7Iesnpy.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x) /\ SFollow
 PROVE EntryQuarantineDisjoint'
 BY ONLY <1>T0SCIhPJfU0zlocsyMx44RjqeBouD7Iesnpy, Sizes, Location, Design, <1>wltyWkcWlQJxJXi8Nn, <1>IGL3qfJM DEF Sizes, Location, Design


<1>PNYGfe9V9GgHova18i3aopsckHfq.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x) /\ SFollow
 PROVE PrivateMapOwner'
 BY ONLY <1>PNYGfe9V9GgHova18i3aopsckHfq, Sizes, Location, Design, <1>wltyWkcWlQJxJXi8Nn, <1>YccZP1lf DEF Sizes, Location, Design


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

<1>LpGtctQZZYFnw461D8fAoVnIuz5.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>LpGtctQZZYFnw461D8fAoVnIuz5, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>LpGtctQZZYFnw461D8fAoVnIuz5, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF DRecvNotice, instV, kV, rtV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aVudlC0L4i3Mtq5bBfoff.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>aVudlC0L4i3Mtq5bBfoff, Sizes, Location, Design, DomainKeep_DRecvNotice, SMTT(5)
\* T2M-END R2M0280_PdPDomain_DRecvNotice


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


<1>krjyKN4PVT0TXgoJWdW.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, kfly, kpin, krs, nfail, nx, torn, xg, xr>>
 BY ONLY <1>krjyKN4PVT0TXgoJWdW, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF DRecvNotice, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Mln8vMzcKQCdqNe.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE K14'
<2> USE ONLY <1>Mln8vMzcKQCdqNe, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>krjyKN4PVT0TXgoJWdW, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KSKUjWO5EKdAgc.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE S2'
<2> USE ONLY <1>KSKUjWO5EKdAgc, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>krjyKN4PVT0TXgoJWdW, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iMdsLrRVOI4OOO.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE S3'
<2> USE ONLY <1>iMdsLrRVOI4OOO, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>krjyKN4PVT0TXgoJWdW, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TPxzHReZNQ5FLI.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE S4'
<2> USE ONLY <1>TPxzHReZNQ5FLI, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>krjyKN4PVT0TXgoJWdW, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ym1ZnsJ7IeggD000fJr3G6b.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>ym1ZnsJ7IeggD000fJr3G6b, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>krjyKN4PVT0TXgoJWdW, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZzrQbT5Kxm7e7Jgn74OQnJ.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>ZzrQbT5Kxm7e7Jgn74OQnJ, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>krjyKN4PVT0TXgoJWdW, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0370_PdPFrames_DRecvNotice

\* T2M-SCOPE R2M0464_PdPOff_DRecvNotice

<1>vR6jXl4ReFoxQFMLhgTEp.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>vR6jXl4ReFoxQFMLhgTEp, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0464_PdPOff_DRecvNotice


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>Jy0Yhh.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1110_PdRDLegacy_PP_PdMsgBase


<1>S6Z6rLBco7pL.        
  ASSUME K17, c02OO, UNCHANGED <<kpin,krs,rg,rpg>>,
         \A j \in Inst, u \in Rq : ph[j][u] \in {"run","ovl","end"} => ph'[j][u] \in {"run","ovl","end"}
  PROVE K17'
<2> USE ONLY <1>S6Z6rLBco7pL, Sizes, Location, Design
<2>1. SUFFICES ASSUME NEW j \in Inst, NEW s \in KSlots,
                     NEW e \in krs'[j][s], kpin'[j][s], e[4] \in {2,3}
                PROVE rg'[j][e[1]] > e[2] \/
                  (rg'[j][e[1]] = e[2] /\ ph'[j][e[1]] \in {"run","ovl","end"} /\ rpg'[j][e[1]] # e[3])
  BY SMTT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
<2>2. kpin[j][s] /\ e \in krs[j][s] /\ e[1] \in Rq
  BY <2>1, SMTT(10), Sizes, Location, Design DEF c02OO, Sizes, Location, Design
<2>3. rg[j][e[1]] > e[2] \/
       (rg[j][e[1]] = e[2] /\ ph[j][e[1]] \in {"run","ovl","end"} /\ rpg[j][e[1]] # e[3])
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1112_PdRDLegacy_PP_PdK17PhaseClosure


<1>qA3zinQPD7c581.        
  ASSUME NEW x \in Xids, DRecvNotice(x)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>qA3zinQPD7c581, Sizes, Location, Design, ZenonT(5) DEF DRecvNotice, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1164_PdRDLegacy_PP_PdDRecvNoticeFrames

\* T2M-SCOPE R2M1165_PdRDLegacy_PP_PdCell_DRecvNotice_K17

<1>z6IT9Co6f8r4.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K17'
<2> USE ONLY <1>z6IT9Co6f8r4, Sizes, Location, Design
<2>1. K17 /\ c02OO /\ AydA /\ C4fb /\ a1R5 /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K17, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,rg,rpg>>
  BY <1>qA3zinQPD7c581, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A a \in Inst, u \in Rq : ph[a][u] \in {"run","ovl","end"} => ph'[a][u] \in {"run","ovl","end"}
  BY <2>1, SMTT(10), Sizes, Location, Design DEF DRecvNotice, AydA, C4fb, JjZ1PO, a1R5, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>S6Z6rLBco7pL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1165_PdRDLegacy_PP_PdCell_DRecvNotice_K17


<1>iQGAp6rWOISLd.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, IsD(j), Active(j,r)
  PROVE rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
<2> USE ONLY <1>iQGAp6rWOISLd, Sizes, Location, Design
<2>1. K8 /\ K9 /\ j \in DInst
  BY Sizes, SMTT(10), V21_Inv_K8, V21_Inv_K9, Location, Design DEF IsD, Inst, DInst, NL, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>OkHaBqshrpAuN.        
  ASSUME NEW r \in Rq, NEW g \in Gens, OneReply, Q1j7VI,
         drep[r][g] = 0, UNCHANGED crep,
         drep' = [drep EXCEPT ![r][g] = Bump(drep[r][g])]
  PROVE OneReply'
<2> USE ONLY <1>OkHaBqshrpAuN, Sizes, Location, Design
<2>1. drep' = [drep EXCEPT ![r][g] = 1]
  BY SMTT(10), Sizes, Location, Design DEF Bump, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF OneReply, Q1j7VI, Sizes, Location, Design
\* T2M-END R2M1115_PdRDLegacy_PP_PdOneReplyIncrement


<1>Yb2LSqnZoe.        
  ASSUME NEW x \in Xids, PinInv, xst[x] = "posted"
  PROVE x < nx /\ xd[x] \in DInst /\ xr[x] \in Rq /\ xg[x] \in Gens
<2> USE ONLY <1>Yb2LSqnZoe, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, SHJS, Xids, Sizes, Location, Design
<2>3. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, SHJS, Xids, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M1166_PdRDLegacy_PP_PdPostedDFields

\* T2M-SCOPE R2M1167_PdRDLegacy_PP_PdCell_DRecvNotice_OneReply

<1>CFblZhgsDEnJW558X.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE OneReply'
<2> USE ONLY <1>CFblZhgsDEnJW558X, Sizes, Location, Design
<2>1. OneReply /\ Q1j7VI
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_OneReply, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, Sizes, Location, Design
<2>2. xst[x] = "posted" /\ UNCHANGED crep
        /\ ((drep' = drep) \/
             (Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]] = xg[x]
               /\ drep' = [drep EXCEPT ![xr[x]][xg[x]] = Bump(drep[xr[x]][xg[x]])]))
  BY <1>qA3zinQPD7c581, SMTT(10), Sizes, Location, Design DEF DRecvNotice, Sizes, Location, Design
<2>3. xd[x] \in DInst /\ xr[x] \in Rq /\ xg[x] \in Gens
  BY <2>2, <1>Yb2LSqnZoe, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. CASE drep' = drep
  BY <2>1, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
<2>5. CASE drep' # drep
  <3>1. Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]] = xg[x]
          /\ drep' = [drep EXCEPT ![xr[x]][xg[x]] = Bump(drep[xr[x]][xg[x]])]
    BY <2>2, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. drep[xr[x]][xg[x]] = 0
    BY <2>3, <3>1, <1>iQGAp6rWOISLd, <1>Jy0Yhh, Sizes, SMTT(10), Location, Design DEF IsD, DInst, Inst, NL, Sizes, Location, Design
  <3>3. QED BY <2>1, <2>2, <2>3, <3>1, <3>2, <1>OkHaBqshrpAuN, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1167_PdRDLegacy_PP_PdCell_DRecvNotice_OneReply


<1>Qusnqf6NX5kt9y.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE K17'
  BY ONLY <1>Qusnqf6NX5kt9y, Sizes, Location, Design, <1>z6IT9Co6f8r4, V21_Inv_K17 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>Kdctfl2xYYiChb970wr.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE OneReply'
  BY ONLY <1>Kdctfl2xYYiChb970wr, Sizes, Location, Design, <1>CFblZhgsDEnJW558X, V21_Inv_OneReply DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>Kdctfl2xYYiChb970wr, <1>PNYGfe9V9GgHova18i3aopsckHfq, <1>T0SCIhPJfU0zlocsyMx44RjqeBouD7Iesnpy, <1>Qusnqf6NX5kt9y, <1>Mln8vMzcKQCdqNe, <1>KSKUjWO5EKdAgc, <1>iMdsLrRVOI4OOO, <1>TPxzHReZNQ5FLI, <1>ym1ZnsJ7IeggD000fJr3G6b, <1>ZzrQbT5Kxm7e7Jgn74OQnJ, <1>LpGtctQZZYFnw461D8fAoVnIuz5, <1>vR6jXl4ReFoxQFMLhgTEp, <1>aVudlC0L4i3Mtq5bBfoff, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_DRecvNotice_01_01, Part_DRecvNotice_01_02, Part_DRecvNotice_02_01, Part_DRecvNotice_02_02, Part_DRecvNotice_03_01, Part_DRecvNotice_03_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_DRecvNotice
HIDE DEF DomainKeep_DRecvNotice, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_K8, V21_Inv_K9, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_DRecvNotice ==
 ASSUME NEW x \in Xids, Sizes, Location, Design, PinInv, DRecvNotice(x), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Xids, Sizes, Location, Design, PinInv, DRecvNotice(u), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_DRecvNotice_01_01, Part_DRecvNotice_01_02, Part_DRecvNotice_02_01, Part_DRecvNotice_02_02, Part_DRecvNotice_03_01, Part_DRecvNotice_03_02, Group_DRecvNotice_04, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_DRecvNotice_01_01, Part_DRecvNotice_01_02, Part_DRecvNotice_02_01, Part_DRecvNotice_02_02, Part_DRecvNotice_03_01, Part_DRecvNotice_03_02, Group_DRecvNotice_04, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, DRecvNotice(x), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, DRecvNotice(x), ShapeKeep_DRecvNotice, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
