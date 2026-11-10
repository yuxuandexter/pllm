---- MODULE PdActionSlice_DRecvNotice_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_31e485d4b745184b, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_DRecvNotice_01

\* Complete original body PdFinalPart_DRecvNotice_02_01 SHA 4d5547644358f5505b6e664691412fc5c639133c25e520d3d1be865e40d9e98b
HIDE DEF AuxType_31e485d4b745184b, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_DRecvNotice_01_01, Part_DRecvNotice_01_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K11, V21_Inv_K13, V21_Inv_K17, V21_Inv_K3, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Holders, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_DRecvNotice_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE (K7)' /\ (NoFreeUnderRead)' /\ (ReadOwnLanded)' /\ (K8)'
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

           DRecvNoticeD2Live(x) == Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]] = xg[x] /\ rx[xd[x]][xr[x]] = x


           DRecvNoticeD2Update(x) ==
             (hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x]
              /\ xst' = [xst EXCEPT ![x] = "landed"]
              /\ EvidenceAt(xdst[x],x) /\ UNCHANGED <<ph,drep,net>>)
             \/
             (~hok[x] /\ pst[xdst[x]] \in {"priv","drain"} /\ x \in led[xdst[x]]
              /\ PageTo(xdst[x],"quar",xp[x],led[xdst[x]],sled[xdst[x]])
              /\ UNCHANGED xst
              /\ ph' = (IF DRecvNoticeD2Live(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph)
              /\ drep' = (IF DRecvNoticeD2Live(x) THEN [drep EXCEPT ![xr[x]][xg[x]] = Bump(@)] ELSE drep)
              /\ net' = (IF DRecvNoticeD2Live(x) THEN net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)} ELSE net))

           \* T2M-LOCAL-VISIBILITY

           OflDeL3pGNUY(j,r,g,ok) ==
             /\ ph' = [ph EXCEPT ![j][r] = "end"]
             /\ drep' = [drep EXCEPT ![r][g] = 1]
             /\ dsucc' = IF ok THEN [dsucc EXCEPT ![r][g] = TRUE] ELSE dsucc
             /\ UNCHANGED <<rg,hd,crep>> /\ ~gbad'
           \* T2M-END R2M0717_PdRDPort_PdD2History


           DRecvNoticeD2Ends(x) == DRecvNoticeD2Live(x) /\ ~hok[x]

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

           Mzvo7bvWxtFIDq(p) ==
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



           hcvRibaXkekYBw(i,r) ==
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



           XE3O9oulwAfsHB(j,r) ==
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



           V0HEdR3F(p) == {r \in Rq : ph[Loc(p)][r] \in {"run","ovl"} /\ rhit[Loc(p)][r] /\ rpg[Loc(p)][r] = p}


           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_NoStop, RD_ReadBack, RD_ReadPart, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, DRecvNoticeD2Live, DRecvNoticeD2Update, OflDeL3pGNUY, DRecvNoticeD2Ends, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, SbBYu4pWxTHT, BTBfRMeQb_J0vm_XK, sSdYINXW9cenl3Nk4yf, ZBFFHaM3V9TMhB1Sx, Mzvo7bvWxtFIDq, hcvRibaXkekYBw, XE3O9oulwAfsHB, V0HEdR3F

<1>dbfJSAnRudgsXK.         B2 /\ SFollow => RD_SUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_SUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_Posted, RD_Src, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ivFfcVr6Rc1eHuIs8.         B2 /\ SFollow => RD_HUpdate /\ RD_MUpdate /\ RD_XUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_HUpdate, RD_MUpdate, RD_XUpdate, RD_HPin, RD_HLive, RD_Posted, RD_Src, Sizes, Location, Design


<1>EnXJwndWG1D4vkee.         PinInv => RD_PhType /\ RD_RgType /\ RD_NxType
<2>project. CoreTypeOK => RD_PhType /\ RD_RgType /\ RD_NxType
 BY ONLY ZenonT(5) DEF CoreTypeOK, RD_PhType, RD_RgType, RD_NxType
<2>qed. QED BY ONLY <2>project, V21_Inv_BaseTypeOK, Sizes, Location, Design, SMTT(5)

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

<1>xrFrjLgvZ1eqYq9G3CqX.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE xdst' \in [Xids -> 0..NP]
<2> USE ONLY <1>xrFrjLgvZ1eqYq9G3CqX, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>xrFrjLgvZ1eqYq9G3CqX, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY SMTT(10), Sizes, Location, Design DEF DRecvNotice, instV, kV, rtV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0915_PdRDEffects_DRecvNotice


<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tk6tX8t1tfNesh.        
  ASSUME NEW x \in Xids, DRecvNotice(x)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>Tk6tX8t1tfNesh, Sizes, Location, Design, ZenonT(5) DEF DRecvNotice, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

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

<1>lt0ZWK5AVrcI0Xi.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE /\ xk[x] = "wr" /\ xst[x] = "posted" /\ x < nx
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>lt0ZWK5AVrcI0Xi, Sizes, Location, Design
<2>1. xk[x] = "wr" /\ xst[x] = "posted"
  BY SMTT(10), Sizes, Location, Design DEF DRecvNotice, Sizes, Location, Design
<2>2. QED BY <2>1, <1>nbt9Ybbxl0y3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NlsZ6C69htKO9fMg.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE DRecvNoticeD2Update(x)
<2> USE ONLY <1>NlsZ6C69htKO9fMg, Sizes, Location, Design
<2>1. \A m \in net : (m.t = "notice" /\ m.x = x) =>
          m.ok = hok[x] /\ m.pg = xlt[x] /\ (m.ok => hw[x] = "stop")
  BY <1>t2nskagTic, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, ZenonT(10), Sizes, Location DEF DRecvNotice, DRecvNoticeD2Update, DRecvNoticeD2Live, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wPqsSpqYqTFQXbbs.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE DRecvNoticeD2Update(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY ONLY <1>wPqsSpqYqTFQXbbs, Sizes, Location, Design, <1>NlsZ6C69htKO9fMg, <1>Tk6tX8t1tfNesh, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M0917_PdRDPort_PdD2DRecvNoticeEffect


<1>Yss7znsngNCxC9G2uH.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE \A p \in Pages : KPinned(p) =>
    /\ UNCHANGED <<pr[p],pgn[p]>>
    /\ (pst[p] = "shared" => pst'[p] = "shared")
    /\ (pst[p] \in {"priv","drain","quar","shared"} => pst'[p] \in {"priv","drain","quar","shared"})
<2> USE ONLY <1>Yss7znsngNCxC9G2uH, Sizes, Location, Design
<2>1. K7 /\ X6zX5 /\ gv2_ /\ PwqP6 /\ xdst[x] \in Pages /\ DRecvNoticeD2Update(x)
  BY <1>TLVER4XMUn, <1>lt0ZWK5AVrcI0Xi, <1>wPqsSpqYqTFQXbbs, SMTT(10), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. ASSUME NEW p \in Pages, KPinned(p)
       PROVE /\ UNCHANGED <<pr[p],pgn[p]>>
             /\ (pst[p] = "shared" => pst'[p] = "shared")
             /\ (pst[p] \in {"priv","drain","quar","shared"} => pst'[p] \in {"priv","drain","quar","shared"})
<3>1. PinBlocks(p)
  BY <2>2, Design, SMTT(10), Sizes, Location DEF PinBlocks, Sizes, Location, Design
<3>2. CASE p # xdst[x]
  BY <2>1, <2>2, <3>2, SMTT(10), Sizes, Location, Design DEF DRecvNoticeD2Update, PageTo, EvidenceAt, X6zX5, gv2_, PwqP6, Sizes, Location, Design
<3>3. CASE p = xdst[x]
<4>1. AfterEv(p,led[p] \ {x},sled[p]) = pst[p]
  BY <3>1, SMTT(10), Sizes, Location, Design DEF AfterEv, Sizes, Location, Design
<4>2. QED BY <2>1, <2>2, <3>3, <4>1, SMTT(10), Sizes, Location, Design DEF K7, DRecvNoticeD2Update, PageTo, EvidenceAt, X6zX5, gv2_, PwqP6, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TYgbZFIZT8ziHkyAmRYzV7N7.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE NoFreeUnderRead'
<2> USE ONLY <1>TYgbZFIZT8ziHkyAmRYzV7N7, Sizes, Location, Design
<2>1. NoFreeUnderRead /\ K14 /\ tqQeS
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K14, V21_Inv_NoFreeUnderRead, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, TEJtP, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs>>
  BY <1>Tk6tX8t1tfNesh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW s \in KSlots, kpin'[i][s], NEW e \in krs'[i][s], e[3] \in Pages
       PROVE KHeld(e)'
<3>1. e[3] \in Pages /\ Loc(e[3]) = i /\ KHeld(e) /\ KPinned(e[3])
  BY <2>3, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF NoFreeUnderRead, K14, tqQeS, KPinned, Sizes, Location, Design
<3>2. QED BY <2>3, P_PagePoolsDisjoint, <3>1, <1>Yss7znsngNCxC9G2uH, SMTT(10), Sizes, Location, Design DEF KHeld, Sizes, Location, Design
<2>4. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>tiTTAcZPhIoD9vPXlK, <1>xrFrjLgvZ1eqYq9G3CqX, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. \A i \in Inst,s \in KSlots : kpin'[i][s] => \A e \in krs'[i][s] : e[3] \in SPages =>
       /\ KHeld(e)'
       /\ KData(i,e)'
       /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
       /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>4, <1>lkce2yg0h1tNEW, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>tiTTAcZPhIoD9vPXlK, <1>i01Ccdwf6XS1pFDnjldaJ, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. RD_SFrame /\ UNCHANGED spst
 BY <2>6, <1>dCj1oPpXLfODIy, Sizes, Location, Design DEF Sizes, Location, Design
<2>8. QED BY <2>7, <1>i01Ccdwf6XS1pFDnjldaJ, <2>5, <1>TLVER4XMUn, P_PagePoolsDisjoint, <2>3, SMTT(10), V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF NoFreeUnderRead, TEJtP, tqQeS, KPages, RD_SFrame, SHeld, SData, Sizes, Location, Design
\* T2M-END R2M0921_PdRDPort_PdD2DRecvNotice_NoFreeUnderRead

\* T2M-SCOPE R2M0922_PdRDPort_PdD2DRecvNotice_KReadIntegrity

<1>CsigfnMf5iGvCDXfD5MuSgG0xCZ.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xd[x] = hd[xr[x]][xg[x]]
        /\ UNCHANGED <<rg,hd,crep,dsucc,gen,hp,nx,xp,xd,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok>>
        /\ IF DRecvNoticeD2Ends(x)
            THEN /\ drep[xr[x]][xg[x]] = 0 /\ OflDeL3pGNUY(xd[x],xr[x],xg[x],FALSE)
                 /\ net' = net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)}
            ELSE /\ UNCHANGED <<ph,drep,net,gbad>>
<2> USE ONLY <1>CsigfnMf5iGvCDXfD5MuSgG0xCZ, Sizes, Location, Design
<2>1. K9 /\ ~gbad /\ ZCaSEo
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_GenFiltered, V21_Inv_K9, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, GenFiltered, TEJtP, Sizes, Location, Design
<2>2. DRecvNoticeD2Update(x) /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xd[x] = hd[xr[x]][xg[x]]
       /\ UNCHANGED <<rg,hd,crep,dsucc,gen,hp,nx,xp,xd,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok,gbad>>
  BY <1>lt0ZWK5AVrcI0Xi, <1>wPqsSpqYqTFQXbbs, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. DRecvNoticeD2Ends(x) => drep[xr[x]][xg[x]] = 0
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF DRecvNoticeD2Ends, DRecvNoticeD2Live, K9, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF DRecvNoticeD2Update, DRecvNoticeD2Ends, OflDeL3pGNUY, Bump, Sizes, Location, Design
\* T2M-END R2M0929_PdRDPort_PdD2DRecvNoticeHistory


<1>XMshCrL8muTx3j2qEM.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE DRecvNoticeD2Ends(x) => ph[xd[x]][xr[x]] = "wait"
  BY ONLY <1>XMshCrL8muTx3j2qEM, Sizes, Location, Design, <1>lt0ZWK5AVrcI0Xi, <1>D98Z8wkbCmwqJ, SMTT(10) DEF DRecvNoticeD2Ends, DRecvNoticeD2Live, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MktGZz8mWx7YpBl5gxx.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE \A i \in Inst, u \in Rq :
    (ph'[i][u] \in {"run","ovl"} <=> ph[i][u] \in {"run","ovl"})
<2> USE ONLY <1>MktGZz8mWx7YpBl5gxx, Sizes, Location, Design
<2>1. vn9M /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>TLVER4XMUn, <1>lt0ZWK5AVrcI0Xi, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. DRecvNoticeD2Ends(x) => ph[xd[x]][xr[x]] = "wait"
  BY <1>XMshCrL8muTx3j2qEM, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ph' = IF DRecvNoticeD2Ends(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
  BY <1>CsigfnMf5iGvCDXfD5MuSgG0xCZ, SMTT(10), Sizes, Location, Design DEF OflDeL3pGNUY, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF vn9M, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zoV2Hleh4bIDDwfx0Naj.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE \A p \in Pages : p # xdst[x] => UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<2> USE ONLY <1>zoV2Hleh4bIDDwfx0Naj, Sizes, Location, Design
<2>1. X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ ZpUxx /\ a4GqBP /\ DRecvNoticeD2Update(x)
  BY <1>TLVER4XMUn, <1>wPqsSpqYqTFQXbbs, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF DRecvNoticeD2Update, PageTo, EvidenceAt, X6zX5, gv2_, PwqP6, jyWjj, ZpUxx, a4GqBP, Sizes, Location, Design
\* T2M-END R2M0930_PdRDPort_PdD2DRecvNoticeReadPhases

\* T2M-SCOPE R2M0931_PdRDPort_PdD2DRecvNoticeActivePages

<1>DuNqNQE4iIhbjRaCfmLKNC.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>DuNqNQE4iIhbjRaCfmLKNC, Sizes, Location, Design
<2>1. BaseReadOwnLanded /\ x \in led[xdst[x]]
  BY <1>lt0ZWK5AVrcI0Xi, <1>cpLCmY4HCHSRk7KFz, SMTT(10), V21_Inv_BaseSafety, V21_Inv_ReadOwnLanded, V21_Inv_Safety, Sizes, Location, Design DEF Safety, BaseSafety, ReadOwnLanded, Sizes, Location, Design
<2>2. UNCHANGED <<rg,rpg,rhit,ptl,pvis,hw,xdst>>
  BY <1>Tk6tX8t1tfNesh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in DInst, NEW u \in Rq, ph'[i][u] \in {"run","ovl"}
       PROVE LET p == rpg[i][u] IN
         /\ p \in Pages /\ NoWriteInto(p)'
         /\ ((~rhit'[i][u] /\ pst'[p] = "priv" /\ pr'[p] = u /\ pgn'[p] = rg'[i][u] /\ ptl'[p] = NTok(u,rg'[i][u]) /\ pvis'[p])
              \/ (rhit'[i][u] /\ pst'[p] = "shared" /\ ptl'[p] = PS))
<3>1. ph[i][u] \in {"run","ovl"}
  BY <2>3, <1>MktGZz8mWx7YpBl5gxx, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. rpg[i][u] \in Pages /\ rpg[i][u] # xdst[x]
  BY <2>1, <3>1, <1>RNUPQC9Tmgio7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. QED BY <2>1, <2>2, <3>1, <3>2, <1>zoV2Hleh4bIDDwfx0Naj, SMTT(10), Sizes, Location, Design DEF BaseReadOwnLanded, NoWriteInto, Writing, InFl, ReadOwnLanded, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF BaseReadOwnLanded, ReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M0937_PdRDPort_PdD2DRecvNotice_ReadOwnLanded


<1>hQuS3o37KsbOP0AXjqWdZlBS6CI.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE NoFreeUnderRead'
 BY ONLY <1>hQuS3o37KsbOP0AXjqWdZlBS6CI, Sizes, Location, Design, <1>TYgbZFIZT8ziHkyAmRYzV7N7, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>UXpAxG7JrA6uIgMLQSXXavy2n.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE ReadOwnLanded'
<2> USE ONLY <1>UXpAxG7JrA6uIgMLQSXXavy2n, Sizes, Location, Design
<2>1. RD_PhType /\ rpg \in [Inst -> [Rq -> 0..NP]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>UXpAxG7JrA6uIgMLQSXXavy2n, V22_T_ph, V22_T_rpg, SMTT(5) DEF RD_PhType

<2>2. RD_NoStop /\ (B2 => RD_ReadBack)
 BY <2>1, Sizes, SMTT(10), Location, Design DEF DRecvNotice, instV, kV, rtV, RD_NoStop, RD_ReadBack, RD_PhType, DInst, Inst, NL, Sizes, Location, Design
<2>3. QED BY <2>2, <1>DuNqNQE4iIhbjRaCfmLKNC, <1>FQ5lBNYlCkhQTVYF, <1>RCKQzj633zU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

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

<1>g8jy7gNFRfg8tk1s77xK.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, Active(i,r)
  PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (~rhit[i][r] => pst[rpg[i][r]] = "priv" /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r])
        /\ (IsP(i) => ~rhit[i][r])
        /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  BY ONLY <1>g8jy7gNFRfg8tk1s77xK, Sizes, Location, Design, SMTT(10) DEF K8, Active, OwnedBy, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>q1AhR7YJDkbhhVWM7.        
  ASSUME NEW i \in DInst, NEW r \in Rq, K9, rhit[i][r]
  PROVE /\ ph[i][r] \in {"run","ovl","end"}
        /\ (ph[i][r] \in {"run","ovl"} => pst[rpg[i][r]] = "shared" /\ Tag(r,rg[i][r]) \in sled[rpg[i][r]])
  BY ONLY <1>q1AhR7YJDkbhhVWM7, Sizes, Location, Design, Zenon DEF K9, Sizes, Location, Design


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

<1>rbg3awZLl0A9mK4wrM.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE ZBFFHaM3V9TMhB1Sx(x) => ph[xd[x]][xr[x]] = "wait"
  BY ONLY <1>rbg3awZLl0A9mK4wrM, Sizes, Location, Design, <1>dvIjBkI1i7SObU8, <1>fBTGp3gdOszjP, SMTT(10) DEF ZBFFHaM3V9TMhB1Sx, BTBfRMeQb_J0vm_XK, Sizes, Location, Design


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

<1>dAtRYH0YjKosmHUi.         K7 <=> (\A p \in Pages : Mzvo7bvWxtFIDq(p))
  BY SMTT(10), Sizes, Location, Design DEF K7, Mzvo7bvWxtFIDq, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>VkgcRSrlUEaoNI3e.         K8 <=> (\A i \in Inst, r \in Rq : hcvRibaXkekYBw(i,r))
  BY SMTT(10), Sizes, Location, Design DEF K8, hcvRibaXkekYBw, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>h1VKw4hYuhMP9XeE.         K9 <=> (\A j \in DInst, r \in Rq : XE3O9oulwAfsHB(j,r))
  BY SMTT(10), Sizes, Location, Design DEF K9, XE3O9oulwAfsHB, Sizes, Location, Design
\* T2M-END R2M1127_PdRDLegacy_PP_D2Finite_PdConjPointsA


<1>dyUTP0ny.        
  ASSUME NEW x \in Xids, NEW i \in Inst, NEW u \in Rq, PinInv,
    xk[x] = "wr", xst[x] = "posted", Active(i,u), rpg[i][u] = xdst[x]
  PROVE i = xd[x] /\ u = xr[x] /\ rg[i][u] = xg[x] /\ rx[i][u] = x
        /\ ph[i][u] = "wait" /\ ~rhit[i][u]
<2> USE ONLY <1>dyUTP0ny, Sizes, Location, Design
<2>1. K5 /\ K7 /\ K8 /\ K9 /\ S1
       /\ x < nx /\ xr[x] \in Rq /\ xd[x] \in DInst
       /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ x \in led[xdst[x]]
  BY <1>vj160z9HQTZJ, <1>D1k57trjBKUUruRsd, SMTT(10), V21_Inv_K5, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Loc(rpg[i][u]) = i /\ i = xd[x] /\ i \in DInst
  BY <2>1, <1>g8jy7gNFRfg8tk1s77xK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ~rhit[i][u]
  BY <2>1, <2>2, <1>q1AhR7YJDkbhhVWM7, SMTT(10), Sizes, Location, Design DEF K7, Active, Sizes, Location, Design
<2>4. u = xr[x] /\ rg[i][u] = xg[x]
  BY <2>1, <2>3, <1>g8jy7gNFRfg8tk1s77xK, SMTT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
<2>5. rx[i][u] = x
  BY <2>1, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF S1, ExpInst, Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>4, <2>5, <1>fBTGp3gdOszjP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1184_PdRDLegacy_PP_PdD2PostedMap


<1>mgp76Cc4rAUw3Jy0EjRqBtLW8.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE /\ ph' = (IF ZBFFHaM3V9TMhB1Sx(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph)
        /\ (ZBFFHaM3V9TMhB1Sx(x) => ph'[xd[x]][xr[x]] = "end")
        /\ \A i \in Inst, u \in Rq : Active(i,u)' => Active(i,u) /\ ph'[i][u] = ph[i][u]
<2> USE ONLY <1>mgp76Cc4rAUw3Jy0EjRqBtLW8, Sizes, Location, Design
<2>1. AydA /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>UwwC5LVwQr, <1>dvIjBkI1i7SObU8, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ph' = IF ZBFFHaM3V9TMhB1Sx(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
  BY <1>MVW9xxBvt0WJKBVEdzCA80zlkXx, SMTT(10), Sizes, Location, Design DEF SbBYu4pWxTHT, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Active, AydA, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>h4iUUFItr38NJP5jkym64.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE \A i \in Inst, u \in Rq : Active(i,u)' =>
    LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],sled[p]>>
<2> USE ONLY <1>h4iUUFItr38NJP5jkym64, Sizes, Location, Design
<2>1. K8 /\ OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. sSdYINXW9cenl3Nk4yf(x) /\ xk[x] = "wr" /\ xst[x] = "posted"
       /\ UNCHANGED <<rpg,rg,rhit>>
  BY <1>dvIjBkI1i7SObU8, <1>eFBhETPjx8yDCpPS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW u \in Rq, Active(i,u)'
       PROVE LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],sled[p]>>
<3>1. Active(i,u) /\ ph'[i][u] = ph[i][u] /\ rpg[i][u] \in Pages
  BY <2>1, <2>3, <1>mgp76Cc4rAUw3Jy0EjRqBtLW8, <1>g8jy7gNFRfg8tk1s77xK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE rpg[i][u] # xdst[x]
  BY <2>2, <3>1, <3>2, <1>ejY4FYSdfyKMJrPoXO5f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. CASE rpg[i][u] = xdst[x]
<4>1. i = xd[x] /\ u = xr[x] /\ rg[i][u] = xg[x] /\ rx[i][u] = x
       /\ ph[i][u] = "wait" /\ ~rhit[i][u] /\ pst[rpg[i][u]] = "priv"
  BY <2>1, <2>2, <3>1, <3>3, <1>dyUTP0ny, <1>g8jy7gNFRfg8tk1s77xK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. ~ZBFFHaM3V9TMhB1Sx(x)
  BY <2>3, <4>1, <1>mgp76Cc4rAUw3Jy0EjRqBtLW8, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<4>3. QED BY <2>1, <2>2, <3>3, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF ZBFFHaM3V9TMhB1Sx, BTBfRMeQb_J0vm_XK, sSdYINXW9cenl3Nk4yf, EvidenceAt, PageTo, AfterEv, Active, OyyWS, IwCp, vS7em, bFwlN, h9WLgd, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1185_PdRDLegacy_PP_PdD2DRecvNoticeActivePages


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

<1>mcJ6Lncmjoyomy7HU5zst5.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE \A p \in Pages : led'[p] \subseteq led[p] /\ sled'[p] \subseteq sled[p]
<2> USE ONLY <1>mcJ6Lncmjoyomy7HU5zst5, Sizes, Location, Design
<2>1. dcfPK /\ h9WLgd /\ sSdYINXW9cenl3Nk4yf(x)
  BY <1>UwwC5LVwQr, <1>eFBhETPjx8yDCpPS, SMTT(10), V21_Inv_KStruct, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, QLAWp, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF sSdYINXW9cenl3Nk4yf, PageTo, EvidenceAt, dcfPK, h9WLgd, Sizes, Location, Design
\* T2M-END R2M1186_PdRDLegacy_PP_PdD2DRecvNoticeMasks


<1>AWYj7yMXw0C.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K8'
<2> USE ONLY <1>AWYj7yMXw0C, Sizes, Location, Design
<2>1. K8 /\ AydA /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>UwwC5LVwQr, <1>dvIjBkI1i7SObU8, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<gen,hp,hd,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,nx,xsrc,xr,xg,iv,xlt>>
  BY <1>qA3zinQPD7c581, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW u \in Rq PROVE hcvRibaXkekYBw(i,u)'
<3>1. hcvRibaXkekYBw(i,u)
  BY <2>1, <1>VkgcRSrlUEaoNI3e, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. IsP(i) => ph'[i][u] = ph[i][u]
  BY <2>1, <1>mgp76Cc4rAUw3Jy0EjRqBtLW8, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF AydA, Sizes, Location, Design
<3>3. QED BY <2>1, <2>2, <3>1, <3>2, <1>mgp76Cc4rAUw3Jy0EjRqBtLW8, <1>rbg3awZLl0A9mK4wrM, <1>h4iUUFItr38NJP5jkym64, <1>HDnS8QCp62wCWeOh, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF hcvRibaXkekYBw, Active, OwnedBy, AydA, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K8, hcvRibaXkekYBw, Sizes, Location, Design
\* T2M-END R2M1187_PdRDLegacy_PP_PdD2DRecvNotice_K8

\* T2M-SCOPE R2M1188_PdRDLegacy_PP_PdD2DRecvNotice_K9

<1>rvPuGNUv6Xy.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K9'
<2> USE ONLY <1>rvPuGNUv6Xy, Sizes, Location, Design
<2>1. K8 /\ K9 /\ Q1j7VI /\ AydA
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ hd[xr[x]][xg[x]] = xd[x]
       /\ UNCHANGED <<rg,rpg,rx,rhit,iv,nx,xdst,xr,xg,ptl,pvis,sfly>>
  BY <1>dvIjBkI1i7SObU8, <1>qA3zinQPD7c581, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ZBFFHaM3V9TMhB1Sx(x) =>
       rg[xd[x]][xr[x]] = xg[x] /\ ~rhit[xd[x]][xr[x]] /\ SbBYu4pWxTHT(xd[x],xr[x],xg[x],FALSE)
  BY <1>dvIjBkI1i7SObU8, <1>MVW9xxBvt0WJKBVEdzCA80zlkXx, <1>fBTGp3gdOszjP, SMTT(10), Sizes, Location, Design DEF ZBFFHaM3V9TMhB1Sx, BTBfRMeQb_J0vm_XK, Sizes, Location, Design
<2>4. ASSUME NEW i \in DInst, NEW u \in Rq PROVE XE3O9oulwAfsHB(i,u)'
<3>1. i \in Inst /\ IsD(i) /\ hcvRibaXkekYBw(i,u) /\ XE3O9oulwAfsHB(i,u)
  BY <2>1, <1>KeUX3AwuU5dZGL50, <1>VkgcRSrlUEaoNI3e, <1>h1VKw4hYuhMP9XeE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE ZBFFHaM3V9TMhB1Sx(x) /\ i = xd[x] /\ u = xr[x]
  BY <2>1, <2>2, <2>3, <3>2, SMTT(10), Sizes, Location, Design DEF XE3O9oulwAfsHB, SbBYu4pWxTHT, AydA, Q1j7VI, Active, Sizes, Location, Design
<3>3. CASE ~ZBFFHaM3V9TMhB1Sx(x) \/ i # xd[x] \/ u # xr[x]
<4>1. ph'[i][u] = ph[i][u]
  BY <2>1, <3>1, <3>3, <1>mgp76Cc4rAUw3Jy0EjRqBtLW8, SMTT(10), Sizes, Location, Design DEF AydA, Sizes, Location, Design
<4>2. (ZBFFHaM3V9TMhB1Sx(x) /\ ph[i][u] # "none") =>
       rg[i][u] \in Gens /\ (u # xr[x] \/ rg[i][u] # xg[x])
  BY <2>2, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF hcvRibaXkekYBw, Sizes, Location, Design
<4>3. ph[i][u] # "none" => drep'[u][rg[i][u]] = drep[u][rg[i][u]]
  BY <2>1, <2>3, <4>2, <1>MVW9xxBvt0WJKBVEdzCA80zlkXx, SMTT(10), Sizes, Location, Design DEF SbBYu4pWxTHT, Q1j7VI, Sizes, Location, Design
<4>4. Active(i,u) =>
       LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],sled[p]>>
  BY <3>1, <4>1, <1>h4iUUFItr38NJP5jkym64, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<4>5. Active(i,u) => led'[rpg[i][u]] \subseteq led[rpg[i][u]]
  BY <3>1, <1>mcJ6Lncmjoyomy7HU5zst5, SMTT(10), Sizes, Location, Design DEF hcvRibaXkekYBw, Active, Sizes, Location, Design
<4>6. QED BY <2>2, <3>1, <4>1, <4>3, <4>4, <4>5, SMTT(10), Sizes, Location, Design DEF XE3O9oulwAfsHB, Active, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF K9, XE3O9oulwAfsHB, Sizes, Location, Design
\* T2M-END R2M1188_PdRDLegacy_PP_PdD2DRecvNotice_K9


<1>e8W7H4aBj.        
  ASSUME NEW p \in Pages
  PROVE IsFiniteSet(V0HEdR3F(p)) /\ Cardinality(V0HEdR3F(p)) \in 0..NR
<2> USE ONLY <1>e8W7H4aBj, Sizes, Location, Design
<2>0. NR \in Int /\ 1 \in Int /\ 1 <= NR
  BY Sizes, SMTT(10), Location, Design DEF Sizes, Location, Design
<2>1. IsFiniteSet(Rq) /\ Cardinality(Rq) = NR
  BY ONLY <2>0, FS_Interval, IsaT(10), Sizes, Location, Design DEF Rq, Sizes, Location, Design
<2>2. IsFiniteSet(V0HEdR3F(p)) /\ Cardinality(V0HEdR3F(p)) <= NR
  BY <2>1, FS_Subset, SMTT(10), Sizes, Location, Design DEF V0HEdR3F, Sizes, Location, Design
<2>3. QED BY <2>2, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>oSWx5rNH.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages,
         AydA, q1Ohy, EYS1sP, ph' = [ph EXCEPT ![j][r] = "end"], UNCHANGED <<rpg,rhit>>
  PROVE V0HEdR3F(p)' = IF Loc(p) = j /\ rpg[j][r] = p THEN V0HEdR3F(p) \ {r} ELSE V0HEdR3F(p)
  BY ONLY <1>oSWx5rNH, Sizes, Location, Design, <1>oRMobcZtnEacZOSYh60, SMTT(10) DEF V0HEdR3F, AydA, q1Ohy, EYS1sP, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>nyNN4NJWMU.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages,
         AydA, q1Ohy, EYS1sP, ph' = [ph EXCEPT ![j][r] = "end"], UNCHANGED <<rpg,rhit>>
  PROVE NHits(p)' = IF Loc(p) = j /\ rpg[j][r] = p /\ ph[j][r] \in {"run","ovl"} /\ rhit[j][r]
                      THEN NHits(p) - 1 ELSE NHits(p)
<2> USE ONLY <1>nyNN4NJWMU, Sizes, Location, Design
<2>1. V0HEdR3F(p)' = IF Loc(p) = j /\ rpg[j][r] = p THEN V0HEdR3F(p) \ {r} ELSE V0HEdR3F(p)
  BY <1>oSWx5rNH, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet(V0HEdR3F(p))
  BY <1>e8W7H4aBj, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, FS_RemoveElement, SMTT(10), Sizes, Location, Design DEF V0HEdR3F, NHits, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>tQi56mwLzRWttTQ.        
  ASSUME K8', K9'
  PROVE \A i \in Inst, u \in Rq : Active(i,u)' => pst'[rpg'[i][u]] \in {"priv","shared"}
<2> USE ONLY <1>tQi56mwLzRWttTQ, Sizes, Location, Design
<2>1. ASSUME NEW i \in Inst, NEW u \in Rq, Active(i,u)'
       PROVE pst'[rpg'[i][u]] \in {"priv","shared"}
<3>1. ~rhit'[i][u] => pst'[rpg'[i][u]] = "priv"
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, Active, Sizes, Location, Design
<3>2. rhit'[i][u] => i \in DInst /\ ph'[i][u] \in {"run","ovl"} /\ pst'[rpg'[i][u]] = "shared"
  BY <2>1, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1143_PdRDLegacy_PP_PdD2Hits


<1>s1Vn3isAHdS.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K7'
<2> USE ONLY <1>s1Vn3isAHdS, Sizes, Location, Design
<2>1. K6 /\ K7 /\ K8 /\ K9 /\ K16 /\ OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ dcfPK /\ h9WLgd /\ Xc_ngV /\ p1YmMe5 /\ vRZWI /\ AydA /\ q1Ohy /\ EYS1sP
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K16, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. sSdYINXW9cenl3Nk4yf(x) /\ xd[x] \in Inst /\ xp[x] \in Inst /\ xr[x] \in Rq /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
       /\ UNCHANGED <<gen,rg,rpg,rhit,kpin,krs,ptl,sfly>>
  BY <1>eFBhETPjx8yDCpPS, <1>dvIjBkI1i7SObU8, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ZBFFHaM3V9TMhB1Sx(x) => (~rhit[xd[x]][xr[x]] /\ ph[xd[x]][xr[x]] = "wait" /\ rpg[xd[x]][xr[x]] = xdst[x])
  BY <1>dvIjBkI1i7SObU8, <1>fBTGp3gdOszjP, SMTT(10), Sizes, Location, Design DEF ZBFFHaM3V9TMhB1Sx, BTBfRMeQb_J0vm_XK, Sizes, Location, Design
<2>4. ph' = IF ZBFFHaM3V9TMhB1Sx(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
  BY <1>mgp76Cc4rAUw3Jy0EjRqBtLW8, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. K8' /\ K9' /\ \A i \in Inst, u \in Rq : Active(i,u)' => pst'[rpg'[i][u]] \in {"priv","shared"}
  BY <1>AWYj7yMXw0C, <1>rvPuGNUv6Xy, <1>tQi56mwLzRWttTQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. ASSUME NEW p \in Pages PROVE Mzvo7bvWxtFIDq(p)'
<3>1. Mzvo7bvWxtFIDq(p)
  BY <2>1, <1>dAtRYH0YjKosmHUi, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. UNCHANGED <<NHits(p), KPinned(p)>>
<4>1. CASE ZBFFHaM3V9TMhB1Sx(x)
  BY <4>1, <2>1, <2>2, <2>3, <2>4, <1>nyNN4NJWMU, SMTT(10), Sizes, Location, Design DEF KPinned, Sizes, Location, Design
<4>2. CASE ~ZBFFHaM3V9TMhB1Sx(x)
<5>1. UNCHANGED <<ph,rpg,rhit,kpin,krs>>
  BY <4>2, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<5>2. QED BY <5>1, ZenonT(10), Sizes, Location, Design DEF KPinned, NHits, Sizes, Location, Design
<4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. (ptl[p] >= 0)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF sSdYINXW9cenl3Nk4yf, BTBfRMeQb_J0vm_XK, ZBFFHaM3V9TMhB1Sx, Mzvo7bvWxtFIDq, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, q1Ohy, EYS1sP, Sizes, Location, Design
<3>4. (pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF sSdYINXW9cenl3Nk4yf, BTBfRMeQb_J0vm_XK, ZBFFHaM3V9TMhB1Sx, Mzvo7bvWxtFIDq, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, q1Ohy, EYS1sP, Sizes, Location, Design
<3>5. (pst[p] \in {"priv","drain","quar"} => pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]])'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF sSdYINXW9cenl3Nk4yf, BTBfRMeQb_J0vm_XK, ZBFFHaM3V9TMhB1Sx, Mzvo7bvWxtFIDq, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, q1Ohy, EYS1sP, Sizes, Location, Design
<3>6. (pst[p] = "quar" => pqp[p] \in Inst)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF sSdYINXW9cenl3Nk4yf, BTBfRMeQb_J0vm_XK, ZBFFHaM3V9TMhB1Sx, Mzvo7bvWxtFIDq, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, q1Ohy, EYS1sP, Sizes, Location, Design
<3>7. (pst[p] # "quar" => pqp[p] = 0)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF sSdYINXW9cenl3Nk4yf, BTBfRMeQb_J0vm_XK, ZBFFHaM3V9TMhB1Sx, Mzvo7bvWxtFIDq, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, q1Ohy, EYS1sP, Sizes, Location, Design
<3>8. (pst[p] # "shared" => prefc[p] = 0)'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF sSdYINXW9cenl3Nk4yf, BTBfRMeQb_J0vm_XK, ZBFFHaM3V9TMhB1Sx, Mzvo7bvWxtFIDq, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, q1Ohy, EYS1sP, Sizes, Location, Design
<3>9. (pst[p] = "shared" => IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF sSdYINXW9cenl3Nk4yf, BTBfRMeQb_J0vm_XK, ZBFFHaM3V9TMhB1Sx, Mzvo7bvWxtFIDq, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, q1Ohy, EYS1sP, Sizes, Location, Design
<3>10. (pst[p] = "drain" => led[p] # {} \/ sled[p] # {} \/ KPinned(p))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF sSdYINXW9cenl3Nk4yf, BTBfRMeQb_J0vm_XK, ZBFFHaM3V9TMhB1Sx, Mzvo7bvWxtFIDq, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, q1Ohy, EYS1sP, Sizes, Location, Design
<3>11. (pst[p] \in {"drain","quar"} => \A r \in Rq : ~Maps(Loc(p),r,p))'
  BY ONLY <2>5, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design
<3>12. (pst[p] = "priv" => (Maps(Loc(p),pr[p],p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]]) \/ GrownP(p))'
  BY <2>1, <2>2, <2>3, <2>4, <3>1, <3>2, Design, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location DEF sSdYINXW9cenl3Nk4yf, BTBfRMeQb_J0vm_XK, ZBFFHaM3V9TMhB1Sx, Mzvo7bvWxtFIDq, K6, PageTo, EvidenceAt, AfterEv, PinBlocks, Active, Maps, GrownP, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, p1YmMe5, vRZWI, AydA, q1Ohy, EYS1sP, Sizes, Location, Design
<3>13. QED BY <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9, <3>10, <3>11, <3>12, SMTT(10), Sizes, Location, Design DEF Mzvo7bvWxtFIDq, Sizes, Location, Design
<2>7. QED BY <2>6, SMTT(10), Sizes, Location, Design DEF K7, Mzvo7bvWxtFIDq, Sizes, Location, Design
\* T2M-END R2M1189_PdRDLegacy_PP_PdD2DRecvNotice_K7

\* T2M-SCOPE R2M1190_PdRDLegacy_PP_PdD2DRecvNotice_QuarNeverMapped

<1>EmRyLX8Xh2XTZ.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE K7'
  BY ONLY <1>EmRyLX8Xh2XTZ, Sizes, Location, Design, <1>s1Vn3isAHdS, V21_Inv_K7 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>SvkJuiSbJOtvd.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE K8'
  BY ONLY <1>SvkJuiSbJOtvd, Sizes, Location, Design, <1>AWYj7yMXw0C, V21_Inv_K8 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>EmRyLX8Xh2XTZ, <1>hQuS3o37KsbOP0AXjqWdZlBS6CI, <1>UXpAxG7JrA6uIgMLQSXXavy2n, <1>SvkJuiSbJOtvd, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DRecvNotice_02_02 SHA 7c3f7feb976a538850d804804fe8145686aca6a54b748a4bccda7e2a030532fd
USE DEF V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K3, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_S2, V21_Inv_S6, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V22_T_iv, V22_T_nx, V22_T_pgn, V22_T_pr, V22_T_pst, V22_T_rg, V22_T_rpgS, V22_T_sentry, V22_T_squar
HIDE DEF P_PagePoolsDisjoint, Part_DRecvNotice_02_01, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K6, V21_Inv_NoFreeUnderRead, V21_Inv_ReadOwnLanded, V22_T_rpg
THEOREM Part_DRecvNotice_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE (P_SI5)' /\ (QuarNeverMapped)' /\ (P_SI2)' /\ (K9)' /\ (SealOnlyLanded)'
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

           DRecvNoticeD2Live(x) == Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]] = xg[x] /\ rx[xd[x]][xr[x]] = x


           DRecvNoticeD2Update(x) ==
             (hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x]
              /\ xst' = [xst EXCEPT ![x] = "landed"]
              /\ EvidenceAt(xdst[x],x) /\ UNCHANGED <<ph,drep,net>>)
             \/
             (~hok[x] /\ pst[xdst[x]] \in {"priv","drain"} /\ x \in led[xdst[x]]
              /\ PageTo(xdst[x],"quar",xp[x],led[xdst[x]],sled[xdst[x]])
              /\ UNCHANGED xst
              /\ ph' = (IF DRecvNoticeD2Live(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph)
              /\ drep' = (IF DRecvNoticeD2Live(x) THEN [drep EXCEPT ![xr[x]][xg[x]] = Bump(@)] ELSE drep)
              /\ net' = (IF DRecvNoticeD2Live(x) THEN net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)} ELSE net))

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

           hcvRibaXkekYBw(i,r) ==
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



           XE3O9oulwAfsHB(j,r) ==
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

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_HoldersShared, RD_NoStop, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, DRecvNoticeD2Live, DRecvNoticeD2Update, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, SbBYu4pWxTHT, BTBfRMeQb_J0vm_XK, sSdYINXW9cenl3Nk4yf, ZBFFHaM3V9TMhB1Sx, hcvRibaXkekYBw, XE3O9oulwAfsHB, RD_RegSafe, RD_KeyOnSource, RD_StopBack, RD_SI5Quar, RD_SI5Stop, RD_SI5Map

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

<1>xrFrjLgvZ1eqYq9G3CqX.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE xdst' \in [Xids -> 0..NP]
<2> USE ONLY <1>xrFrjLgvZ1eqYq9G3CqX, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>xrFrjLgvZ1eqYq9G3CqX, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY SMTT(10), Sizes, Location, Design DEF DRecvNotice, instV, kV, rtV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0915_PdRDEffects_DRecvNotice


<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tk6tX8t1tfNesh.        
  ASSUME NEW x \in Xids, DRecvNotice(x)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>Tk6tX8t1tfNesh, Sizes, Location, Design, ZenonT(5) DEF DRecvNotice, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

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

<1>lt0ZWK5AVrcI0Xi.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE /\ xk[x] = "wr" /\ xst[x] = "posted" /\ x < nx
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>lt0ZWK5AVrcI0Xi, Sizes, Location, Design
<2>1. xk[x] = "wr" /\ xst[x] = "posted"
  BY SMTT(10), Sizes, Location, Design DEF DRecvNotice, Sizes, Location, Design
<2>2. QED BY <2>1, <1>nbt9Ybbxl0y3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NlsZ6C69htKO9fMg.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE DRecvNoticeD2Update(x)
<2> USE ONLY <1>NlsZ6C69htKO9fMg, Sizes, Location, Design
<2>1. \A m \in net : (m.t = "notice" /\ m.x = x) =>
          m.ok = hok[x] /\ m.pg = xlt[x] /\ (m.ok => hw[x] = "stop")
  BY <1>t2nskagTic, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, ZenonT(10), Sizes, Location DEF DRecvNotice, DRecvNoticeD2Update, DRecvNoticeD2Live, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wPqsSpqYqTFQXbbs.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE DRecvNoticeD2Update(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY ONLY <1>wPqsSpqYqTFQXbbs, Sizes, Location, Design, <1>NlsZ6C69htKO9fMg, <1>Tk6tX8t1tfNesh, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M0917_PdRDPort_PdD2DRecvNoticeEffect


<1>kAP60kUJ35tNFIAAxNyE3ZE.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>kAP60kUJ35tNFIAAxNyE3ZE, Sizes, Location, Design
<2>1. BaseSealOnlyLanded /\ ZCaSEo /\ ychB /\ ZpUxx /\ PwqP6 /\ vn9M /\ jyWjj /\ gv2_ /\ X6zX5 /\ vwKWM /\ a4GqBP /\ bpmgv4 /\ H3aTc
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, TEJtP, BaseSafety, SealOnlyLanded, Sizes, Location, Design
<2>2. DRecvNoticeD2Update(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
  BY <1>wPqsSpqYqTFQXbbs, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>lt0ZWK5AVrcI0Xi, Design, Location, Sizes, SMTT(10) DEF AfterEv, Bump, DRecvNoticeD2Live, DRecvNoticeD2Update, EvidenceAt, InFl, IsD, IsP, NoWriteInto, PageTo, PinBlocks, BaseSealOnlyLanded, ZCaSEo, ychB, ZpUxx, PwqP6, vn9M, jyWjj, gv2_, X6zX5, vwKWM, a4GqBP, bpmgv4, H3aTc, Tag, Writing, KPages, SealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M0938_PdRDPort_PdD2DRecvNotice_SealOnlyLanded


<1>AItVhtyv4qB0PQiifemUXkluIj.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE SealOnlyLanded'
<2> USE ONLY <1>AItVhtyv4qB0PQiifemUXkluIj, Sizes, Location, Design
<2>1. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>tiTTAcZPhIoD9vPXlK, <1>xrFrjLgvZ1eqYq9G3CqX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>kAP60kUJ35tNFIAAxNyE3ZE, <1>TTpKhOymx73KMovRt1O, <1>ca3ak7RUGjY, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>i6APDu2QztFTwe9.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE P_SI2'
 BY ONLY <1>i6APDu2QztFTwe9, Sizes, Location, Design, <1>tiTTAcZPhIoD9vPXlK, <1>i01Ccdwf6XS1pFDnjldaJ, <1>HQkX8HBDKVM, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

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

<1>g8jy7gNFRfg8tk1s77xK.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, Active(i,r)
  PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (~rhit[i][r] => pst[rpg[i][r]] = "priv" /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r])
        /\ (IsP(i) => ~rhit[i][r])
        /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  BY ONLY <1>g8jy7gNFRfg8tk1s77xK, Sizes, Location, Design, SMTT(10) DEF K8, Active, OwnedBy, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>q1AhR7YJDkbhhVWM7.        
  ASSUME NEW i \in DInst, NEW r \in Rq, K9, rhit[i][r]
  PROVE /\ ph[i][r] \in {"run","ovl","end"}
        /\ (ph[i][r] \in {"run","ovl"} => pst[rpg[i][r]] = "shared" /\ Tag(r,rg[i][r]) \in sled[rpg[i][r]])
  BY ONLY <1>q1AhR7YJDkbhhVWM7, Sizes, Location, Design, Zenon DEF K9, Sizes, Location, Design


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

<1>rbg3awZLl0A9mK4wrM.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE ZBFFHaM3V9TMhB1Sx(x) => ph[xd[x]][xr[x]] = "wait"
  BY ONLY <1>rbg3awZLl0A9mK4wrM, Sizes, Location, Design, <1>dvIjBkI1i7SObU8, <1>fBTGp3gdOszjP, SMTT(10) DEF ZBFFHaM3V9TMhB1Sx, BTBfRMeQb_J0vm_XK, Sizes, Location, Design


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

<1>VkgcRSrlUEaoNI3e.         K8 <=> (\A i \in Inst, r \in Rq : hcvRibaXkekYBw(i,r))
  BY SMTT(10), Sizes, Location, Design DEF K8, hcvRibaXkekYBw, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>h1VKw4hYuhMP9XeE.         K9 <=> (\A j \in DInst, r \in Rq : XE3O9oulwAfsHB(j,r))
  BY SMTT(10), Sizes, Location, Design DEF K9, XE3O9oulwAfsHB, Sizes, Location, Design
\* T2M-END R2M1127_PdRDLegacy_PP_D2Finite_PdConjPointsA


<1>dyUTP0ny.        
  ASSUME NEW x \in Xids, NEW i \in Inst, NEW u \in Rq, PinInv,
    xk[x] = "wr", xst[x] = "posted", Active(i,u), rpg[i][u] = xdst[x]
  PROVE i = xd[x] /\ u = xr[x] /\ rg[i][u] = xg[x] /\ rx[i][u] = x
        /\ ph[i][u] = "wait" /\ ~rhit[i][u]
<2> USE ONLY <1>dyUTP0ny, Sizes, Location, Design
<2>1. K5 /\ K7 /\ K8 /\ K9 /\ S1
       /\ x < nx /\ xr[x] \in Rq /\ xd[x] \in DInst
       /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ x \in led[xdst[x]]
  BY <1>vj160z9HQTZJ, <1>D1k57trjBKUUruRsd, SMTT(10), V21_Inv_K5, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Loc(rpg[i][u]) = i /\ i = xd[x] /\ i \in DInst
  BY <2>1, <1>g8jy7gNFRfg8tk1s77xK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ~rhit[i][u]
  BY <2>1, <2>2, <1>q1AhR7YJDkbhhVWM7, SMTT(10), Sizes, Location, Design DEF K7, Active, Sizes, Location, Design
<2>4. u = xr[x] /\ rg[i][u] = xg[x]
  BY <2>1, <2>3, <1>g8jy7gNFRfg8tk1s77xK, SMTT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
<2>5. rx[i][u] = x
  BY <2>1, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF S1, ExpInst, Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>4, <2>5, <1>fBTGp3gdOszjP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1184_PdRDLegacy_PP_PdD2PostedMap


<1>mgp76Cc4rAUw3Jy0EjRqBtLW8.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE /\ ph' = (IF ZBFFHaM3V9TMhB1Sx(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph)
        /\ (ZBFFHaM3V9TMhB1Sx(x) => ph'[xd[x]][xr[x]] = "end")
        /\ \A i \in Inst, u \in Rq : Active(i,u)' => Active(i,u) /\ ph'[i][u] = ph[i][u]
<2> USE ONLY <1>mgp76Cc4rAUw3Jy0EjRqBtLW8, Sizes, Location, Design
<2>1. AydA /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>UwwC5LVwQr, <1>dvIjBkI1i7SObU8, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ph' = IF ZBFFHaM3V9TMhB1Sx(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
  BY <1>MVW9xxBvt0WJKBVEdzCA80zlkXx, SMTT(10), Sizes, Location, Design DEF SbBYu4pWxTHT, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Active, AydA, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>h4iUUFItr38NJP5jkym64.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE \A i \in Inst, u \in Rq : Active(i,u)' =>
    LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],sled[p]>>
<2> USE ONLY <1>h4iUUFItr38NJP5jkym64, Sizes, Location, Design
<2>1. K8 /\ OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. sSdYINXW9cenl3Nk4yf(x) /\ xk[x] = "wr" /\ xst[x] = "posted"
       /\ UNCHANGED <<rpg,rg,rhit>>
  BY <1>dvIjBkI1i7SObU8, <1>eFBhETPjx8yDCpPS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW u \in Rq, Active(i,u)'
       PROVE LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],sled[p]>>
<3>1. Active(i,u) /\ ph'[i][u] = ph[i][u] /\ rpg[i][u] \in Pages
  BY <2>1, <2>3, <1>mgp76Cc4rAUw3Jy0EjRqBtLW8, <1>g8jy7gNFRfg8tk1s77xK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE rpg[i][u] # xdst[x]
  BY <2>2, <3>1, <3>2, <1>ejY4FYSdfyKMJrPoXO5f, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. CASE rpg[i][u] = xdst[x]
<4>1. i = xd[x] /\ u = xr[x] /\ rg[i][u] = xg[x] /\ rx[i][u] = x
       /\ ph[i][u] = "wait" /\ ~rhit[i][u] /\ pst[rpg[i][u]] = "priv"
  BY <2>1, <2>2, <3>1, <3>3, <1>dyUTP0ny, <1>g8jy7gNFRfg8tk1s77xK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. ~ZBFFHaM3V9TMhB1Sx(x)
  BY <2>3, <4>1, <1>mgp76Cc4rAUw3Jy0EjRqBtLW8, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<4>3. QED BY <2>1, <2>2, <3>3, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF ZBFFHaM3V9TMhB1Sx, BTBfRMeQb_J0vm_XK, sSdYINXW9cenl3Nk4yf, EvidenceAt, PageTo, AfterEv, Active, OyyWS, IwCp, vS7em, bFwlN, h9WLgd, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1185_PdRDLegacy_PP_PdD2DRecvNoticeActivePages


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

<1>mcJ6Lncmjoyomy7HU5zst5.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE \A p \in Pages : led'[p] \subseteq led[p] /\ sled'[p] \subseteq sled[p]
<2> USE ONLY <1>mcJ6Lncmjoyomy7HU5zst5, Sizes, Location, Design
<2>1. dcfPK /\ h9WLgd /\ sSdYINXW9cenl3Nk4yf(x)
  BY <1>UwwC5LVwQr, <1>eFBhETPjx8yDCpPS, SMTT(10), V21_Inv_KStruct, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, QLAWp, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF sSdYINXW9cenl3Nk4yf, PageTo, EvidenceAt, dcfPK, h9WLgd, Sizes, Location, Design
\* T2M-END R2M1186_PdRDLegacy_PP_PdD2DRecvNoticeMasks


<1>AWYj7yMXw0C.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K8'
<2> USE ONLY <1>AWYj7yMXw0C, Sizes, Location, Design
<2>1. K8 /\ AydA /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq
  BY <1>UwwC5LVwQr, <1>dvIjBkI1i7SObU8, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<gen,hp,hd,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,nx,xsrc,xr,xg,iv,xlt>>
  BY <1>qA3zinQPD7c581, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW i \in Inst, NEW u \in Rq PROVE hcvRibaXkekYBw(i,u)'
<3>1. hcvRibaXkekYBw(i,u)
  BY <2>1, <1>VkgcRSrlUEaoNI3e, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. IsP(i) => ph'[i][u] = ph[i][u]
  BY <2>1, <1>mgp76Cc4rAUw3Jy0EjRqBtLW8, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF AydA, Sizes, Location, Design
<3>3. QED BY <2>1, <2>2, <3>1, <3>2, <1>mgp76Cc4rAUw3Jy0EjRqBtLW8, <1>rbg3awZLl0A9mK4wrM, <1>h4iUUFItr38NJP5jkym64, <1>HDnS8QCp62wCWeOh, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF hcvRibaXkekYBw, Active, OwnedBy, AydA, Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K8, hcvRibaXkekYBw, Sizes, Location, Design
\* T2M-END R2M1187_PdRDLegacy_PP_PdD2DRecvNotice_K8

\* T2M-SCOPE R2M1188_PdRDLegacy_PP_PdD2DRecvNotice_K9

<1>rvPuGNUv6Xy.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE K9'
<2> USE ONLY <1>rvPuGNUv6Xy, Sizes, Location, Design
<2>1. K8 /\ K9 /\ Q1j7VI /\ AydA
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xd[x] \in DInst /\ xd[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ hd[xr[x]][xg[x]] = xd[x]
       /\ UNCHANGED <<rg,rpg,rx,rhit,iv,nx,xdst,xr,xg,ptl,pvis,sfly>>
  BY <1>dvIjBkI1i7SObU8, <1>qA3zinQPD7c581, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ZBFFHaM3V9TMhB1Sx(x) =>
       rg[xd[x]][xr[x]] = xg[x] /\ ~rhit[xd[x]][xr[x]] /\ SbBYu4pWxTHT(xd[x],xr[x],xg[x],FALSE)
  BY <1>dvIjBkI1i7SObU8, <1>MVW9xxBvt0WJKBVEdzCA80zlkXx, <1>fBTGp3gdOszjP, SMTT(10), Sizes, Location, Design DEF ZBFFHaM3V9TMhB1Sx, BTBfRMeQb_J0vm_XK, Sizes, Location, Design
<2>4. ASSUME NEW i \in DInst, NEW u \in Rq PROVE XE3O9oulwAfsHB(i,u)'
<3>1. i \in Inst /\ IsD(i) /\ hcvRibaXkekYBw(i,u) /\ XE3O9oulwAfsHB(i,u)
  BY <2>1, <1>KeUX3AwuU5dZGL50, <1>VkgcRSrlUEaoNI3e, <1>h1VKw4hYuhMP9XeE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE ZBFFHaM3V9TMhB1Sx(x) /\ i = xd[x] /\ u = xr[x]
  BY <2>1, <2>2, <2>3, <3>2, SMTT(10), Sizes, Location, Design DEF XE3O9oulwAfsHB, SbBYu4pWxTHT, AydA, Q1j7VI, Active, Sizes, Location, Design
<3>3. CASE ~ZBFFHaM3V9TMhB1Sx(x) \/ i # xd[x] \/ u # xr[x]
<4>1. ph'[i][u] = ph[i][u]
  BY <2>1, <3>1, <3>3, <1>mgp76Cc4rAUw3Jy0EjRqBtLW8, SMTT(10), Sizes, Location, Design DEF AydA, Sizes, Location, Design
<4>2. (ZBFFHaM3V9TMhB1Sx(x) /\ ph[i][u] # "none") =>
       rg[i][u] \in Gens /\ (u # xr[x] \/ rg[i][u] # xg[x])
  BY <2>2, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF hcvRibaXkekYBw, Sizes, Location, Design
<4>3. ph[i][u] # "none" => drep'[u][rg[i][u]] = drep[u][rg[i][u]]
  BY <2>1, <2>3, <4>2, <1>MVW9xxBvt0WJKBVEdzCA80zlkXx, SMTT(10), Sizes, Location, Design DEF SbBYu4pWxTHT, Q1j7VI, Sizes, Location, Design
<4>4. Active(i,u) =>
       LET p == rpg[i][u] IN UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],sled[p]>>
  BY <3>1, <4>1, <1>h4iUUFItr38NJP5jkym64, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
<4>5. Active(i,u) => led'[rpg[i][u]] \subseteq led[rpg[i][u]]
  BY <3>1, <1>mcJ6Lncmjoyomy7HU5zst5, SMTT(10), Sizes, Location, Design DEF hcvRibaXkekYBw, Active, Sizes, Location, Design
<4>6. QED BY <2>2, <3>1, <4>1, <4>3, <4>4, <4>5, SMTT(10), Sizes, Location, Design DEF XE3O9oulwAfsHB, Active, Sizes, Location, Design
<3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF K9, XE3O9oulwAfsHB, Sizes, Location, Design
\* T2M-END R2M1188_PdRDLegacy_PP_PdD2DRecvNotice_K9


<1>tQi56mwLzRWttTQ.        
  ASSUME K8', K9'
  PROVE \A i \in Inst, u \in Rq : Active(i,u)' => pst'[rpg'[i][u]] \in {"priv","shared"}
<2> USE ONLY <1>tQi56mwLzRWttTQ, Sizes, Location, Design
<2>1. ASSUME NEW i \in Inst, NEW u \in Rq, Active(i,u)'
       PROVE pst'[rpg'[i][u]] \in {"priv","shared"}
<3>1. ~rhit'[i][u] => pst'[rpg'[i][u]] = "priv"
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, Active, Sizes, Location, Design
<3>2. rhit'[i][u] => i \in DInst /\ ph'[i][u] \in {"run","ovl"} /\ pst'[rpg'[i][u]] = "shared"
  BY <2>1, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1143_PdRDLegacy_PP_PdD2Hits


<1>CFsTNFXMXuWZtg4VmEwLx3UK.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>CFsTNFXMXuWZtg4VmEwLx3UK, Sizes, Location, Design
<2>1. K8' /\ K9'
  BY <1>AWYj7yMXw0C, <1>rvPuGNUv6Xy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A i \in Inst, u \in Rq : Active(i,u)' => pst'[rpg'[i][u]] \in {"priv","shared"}
  BY <2>1, <1>tQi56mwLzRWttTQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF QuarNeverMapped, Sizes, Location, Design
\* T2M-END R2M1190_PdRDLegacy_PP_PdD2DRecvNotice_QuarNeverMapped


<1>j4R0uZkxtdKzm.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE K9'
  BY ONLY <1>j4R0uZkxtdKzm, Sizes, Location, Design, <1>rvPuGNUv6Xy, V21_Inv_K9 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>CqF7IktfnyvOGHEyAIJ3cuKh2I.        
  ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>CqF7IktfnyvOGHEyAIJ3cuKh2I, Sizes, Location, Design, <1>CFsTNFXMXuWZtg4VmEwLx3UK, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design



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


<1>mdXavR3zpWRXmrEFQd.        
 ASSUME NEW x \in Xids, PinInv, DRecvNotice(x), SFollow
 PROVE P_SI5'
<2> USE ONLY <1>mdXavR3zpWRXmrEFQd, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K8 /\ K9 /\ K10 /\ K7 /\ QuarNoReg /\ CoreTypeOK
 BY ONLY <1>mdXavR3zpWRXmrEFQd, Sizes, Location, Design, SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_P_SI5, V21_Inv_QuarNoReg DEF Sizes, Location, Design
<2>4. RD_RegSafe BY ONLY <1>mdXavR3zpWRXmrEFQd, Sizes, Location, Design, <1>RfTFw80ocbXvGBLhJsJUXX, SMTT(10) DEF Sizes, Location, Design
<2>5. RD_PFrame /\ UNCHANGED xsrc
 BY ONLY <1>mdXavR3zpWRXmrEFQd, Sizes, Location, Design, <1>tiTTAcZPhIoD9vPXlK, <1>i01Ccdwf6XS1pFDnjldaJ, SMTT(10) DEF Sizes, Location, Design
<2>si5Frame. UNCHANGED <<hw,nx,xr,xg>>
 BY ONLY <1>mdXavR3zpWRXmrEFQd, ZenonT(5) DEF DRecvNotice, rtV, instV, kV, recV, pgV, xV, ghV
<2>6. RD_NoStop /\ nx' \in Int /\ nx' >= nx
 <3>nxType. nx \in 1..(MX+1)
  BY ONLY <1>mdXavR3zpWRXmrEFQd, V22_T_nx, SMTT(5)
 <3>integer. nx \in Int
  BY ONLY <3>nxType, Sizes, SMTT(5) DEF Sizes
 <3>stop. RD_NoStop
  BY ONLY <2>si5Frame, SMTT(5) DEF RD_NoStop
 <3>qed. QED BY ONLY <2>si5Frame, <3>integer, <3>stop, SMTT(5)
<2>7. B2 => RD_KeyOnSource
 BY ONLY <2>si5Frame, SMTT(5) DEF RD_KeyOnSource
<2>8. S1 /\ S2 /\ S5 /\ S6
 BY ONLY <1>mdXavR3zpWRXmrEFQd, Sizes, Location, Design, SMTT(10), V21_Inv_P_SI5, V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6 DEF Sizes, Location, Design
<2>SBFrame. UNCHANGED <<hw,hok,xdst,xr,xg>>
 BY ONLY <1>mdXavR3zpWRXmrEFQd, SMTT(10), Sizes, Location, Design DEF DRecvNotice, xV, rtV, instV, recV, pgV, ghV, kV, Sizes, Location, Design
<2>SBTypes. /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
        /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>mdXavR3zpWRXmrEFQd, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>SBMaps. \A i \in Inst,q \in Rq : Active(i,q) /\ ~rhit[i][q] => pst[rpg[i][q]]="priv"
 BY ONLY <1>mdXavR3zpWRXmrEFQd, SMTT(10), V21_Inv_K8, V21_Inv_P_SI5, Sizes, Location, Design DEF K8, Sizes, Location, Design
<2>SBPage. ASSUME NEW p \in Pages, pst'[p] \in {"priv","drain","quar"}
        PROVE pst[p] \in {"priv","drain","quar"} /\ pr'[p]=pr[p] /\ pgn'[p]=pgn[p]
 BY ONLY <1>mdXavR3zpWRXmrEFQd, <2>SBTypes, <2>SBMaps, <2>SBPage, Design, Sizes, Location, SMTT(10) DEF DRecvNotice, EvidenceAt, PageTo, instV, kV, rtV, PageToG, GTo, IsD, IsP, PInst, DInst, Inst, NL, GrownOf, GiveUpTo, FreeOrDrain, Active, Rq, GiveUpToN, AfterEv, GFr, GrownOwn, Sizes, Location, Design
<2>9. RD_StopBack
 BY ONLY <2>SBFrame, <2>SBPage, SMTT(10), Sizes, Location, Design DEF RD_StopBack, Held, Sizes, Location, Design
<2>10. QED BY ONLY <1>mdXavR3zpWRXmrEFQd, Sizes, Location, Design, <2>4, <2>5, <2>6, <2>7, <2>9, <1>QYS9t7p6Fr, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1374_PdRDR2SI5_DRecvNotice


<1> QED BY <1>mdXavR3zpWRXmrEFQd, <1>CqF7IktfnyvOGHEyAIJ3cuKh2I, <1>i6APDu2QztFTwe9, <1>j4R0uZkxtdKzm, <1>AItVhtyv4qB0PQiifemUXkluIj, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF Part_DRecvNotice_02_02, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V22_SF_Choice, V22_SF_Map, V22_SF_Off, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_T_iv, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_pr, V22_T_pst, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_squar, V22_T_xdst, V22_T_xsrcP, V22_T_xsrcS
====
