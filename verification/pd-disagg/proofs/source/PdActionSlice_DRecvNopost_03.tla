---- MODULE PdActionSlice_DRecvNopost_03 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_4cf173485b87d54f, PdFinalInvProjections, PdFinalEffects, PdSizeFacts, PdShapeBase, PdActionSlice_DRecvNopost_02

\* Complete original body PdFinalPart_DRecvNopost_02_01 SHA 714056060217bad8dd6bd1987606ddf95d6281876a125c5b42ed70416f108ea4
HIDE DEF AuxType_4cf173485b87d54f, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_DRecvNopost_01_01, Part_DRecvNopost_01_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K11, V21_Inv_K15, V21_Inv_K17, V21_Inv_K5, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_SI7, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_Off, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SizeParameterTypes, V22_SizeProductBound, V22_SizeRangeFacts, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sfly, V22_T_sled, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc
THEOREM Part_DRecvNopost_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE (P_SI3)' /\ (P_SI6)' /\ (K4)' /\ (K2)' /\ (K6)' /\ (K7)' /\ (K16)' /\ (S5)' /\ (SI8)' /\ (PrivateMapOwner)' /\ (K13)' /\ (K14)' /\ (S4)' /\ (S6)' /\ (GenFiltered)'
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

           RD_RdOpenBack == \A x \in Xids : (xk'[x]="rd" /\ xst'[x]="posted") => (xk[x]="rd" /\ xst[x]="posted")

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

           QchrF(p) ==
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



           ceHpLbR5HIr(x) == LET p == xdst[x] IN
               pst[p] = "drain" /\ led[p] \ {x} = {} /\ sled[p] = {} /\ ~KPinned(p)



           la_ki7li_iL7z(x) == LET p == xdst[x] IN
             /\ pst' = [pst EXCEPT ![p] = IF ceHpLbR5HIr(x) THEN "free" ELSE @]
             /\ pr' = [pr EXCEPT ![p] = IF ceHpLbR5HIr(x) THEN 0 ELSE @]
             /\ pgn' = [pgn EXCEPT ![p] = IF ceHpLbR5HIr(x) THEN 0 ELSE @]
             /\ plt' = [plt EXCEPT ![p] = IF ceHpLbR5HIr(x) THEN 0 ELSE @]
             /\ led' = [led EXCEPT ![p] = @ \ {x}]
             /\ xst' = [xst EXCEPT ![x] = "revoked"]


           \* T2M-LOCAL-VISIBILITY

           nn1wCGoepjf_(p,L,S) == pst[p] = "drain" /\ L = {} /\ S = {} /\ ~KPinned(p)



           IacXDbxCyeEFSi(p,L,S) ==
             /\ L \subseteq led[p] /\ S \subseteq sled[p] /\ sfly[p] \subseteq S
             /\ led' = [led EXCEPT ![p] = L]
             /\ sled' = [sled EXCEPT ![p] = S]
             /\ pst' = [pst EXCEPT ![p] = IF nn1wCGoepjf_(p,L,S) THEN "free" ELSE @]
             /\ pr' = [pr EXCEPT ![p] = IF nn1wCGoepjf_(p,L,S) THEN 0 ELSE @]
             /\ pgn' = [pgn EXCEPT ![p] = IF nn1wCGoepjf_(p,L,S) THEN 0 ELSE @]
             /\ plt' = [plt EXCEPT ![p] = IF nn1wCGoepjf_(p,L,S) THEN 0 ELSE @]
             /\ UNCHANGED <<ptl,sfly,prefc,pqp,gen,ph,rg,rhit,rpg,kpin,krs>>


           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Ex6xsGb, ez8hZbQN7k, RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_Q2, RD_EQUpdate, RD_RdOpenBack, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, QchrF, ceHpLbR5HIr, la_ki7li_iL7z, nn1wCGoepjf_, IacXDbxCyeEFSi

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


<1>FucRHugzSvH45SIUQE.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
 PROVE ez8hZbQN7k /\ UNCHANGED xsrc
<2> USE ONLY <1>FucRHugzSvH45SIUQE, Sizes, Location, Design
<2>1. Ex6xsGb /\ (\A x \in Xids : xk[x] # "none" => xp[x] \in PInst /\ xd[x] \in DInst)
 BY <1>rC6T, <1>vx9OnCyVIC, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>HsRNXPeY1C, Sizes, Design, SMTT(10), Location DEF ez8hZbQN7k, AfterEv, DRecvNopost, EvidenceAt, KPinned, KSlots, PageTo, PinBlocks, ghV, instV, kV, recV, rtV, PInst, Ex6xsGb, Sizes, Location, Design


<1>ZcqCqpPTSSZV7v4rSBzLuguhwARW.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x) /\ SFollow
 PROVE PrivateMapOwner'
 BY ONLY <1>ZcqCqpPTSSZV7v4rSBzLuguhwARW, Sizes, Location, Design, <1>FucRHugzSvH45SIUQE, <1>YccZP1lf DEF Sizes, Location, Design


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>je.        
 S4 /\ UNCHANGED <<alive, nfail>> => S4'
 BY IsaT(10), Sizes, Location, Design DEF S4, Sizes, Location, Design
\* T2M-END R2M0344_PdPF_S4


<1>yYI.        
 K14 /\ UNCHANGED <<gen, kfly, kpin, krs>> => K14'
 BY IsaT(10), Sizes, Location, Design DEF K14, Sizes, Location, Design
\* T2M-END R2M0355_PdPF_K14


<1>ujEUqBpYoFz.        
 GenFiltered /\ UNCHANGED <<gbad>> => GenFiltered'
 BY IsaT(10), Sizes, Location, Design DEF GenFiltered, Sizes, Location, Design
\* T2M-END R2M0347_PdPF_GenFiltered


<1>sk.        
 S6 /\ UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>> => S6'
 BY IsaT(10), Sizes, Location, Design DEF Active, InitInst, InitPage, S6, Sizes, Location, Design
\* T2M-END R2M0346_PdPF_S6


<1>s6g.        
 K13 /\ UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>> => K13'
 BY IsaT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design
\* T2M-END R2M0354_PdPF_K13


<1>qwG2OTwwfkJZyI7a4ni.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, rd, rg, rp, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xp, xr, xsrc>>
 BY ONLY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF DRecvNopost, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qnQbuGVoPjwwxmR.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE K13'
<2> USE ONLY <1>qnQbuGVoPjwwxmR, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HAiyhDlzHWg1gQB.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE K14'
<2> USE ONLY <1>HAiyhDlzHWg1gQB, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nQFqWhouuB67rj.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE S4'
<2> USE ONLY <1>nQFqWhouuB67rj, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WQILNEfM10QVbu.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE S6'
<2> USE ONLY <1>WQILNEfM10QVbu, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Elpiupk4bNwAJj8N4mxFk3W.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>Elpiupk4bNwAJj8N4mxFk3W, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

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


<1>HTeEgT30WI5cH9vvom9sB.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>HTeEgT30WI5cH9vvom9sB, Sizes, Location, Design, SMTT(10) DEF DRecvNopost, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JedbHIfCfZIYLNzS4q.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>JedbHIfCfZIYLNzS4q, Sizes, Location, Design
<2>1. RD_PhType /\ RD_RgType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>HTeEgT30WI5cH9vvom9sB, Sizes, SMTT(10), Location, Design DEF DRecvNopost, ghV, instV, kV, recV, rtV, RD_PFrame, PInst, DInst, Inst, NL, IsD, RD_PhType, RD_RgType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pePpAXqK92Lqe4L.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE SI8'
<2> USE ONLY <1>pePpAXqK92Lqe4L, Sizes, Location, Design
<2>1. UNCHANGED xsrc
 BY <1>HTeEgT30WI5cH9vvom9sB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xk \in [Xids -> {"none","wr","rd"}] /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>pePpAXqK92Lqe4L, V22_T_xk, V22_T_xst, SMTT(5)

<2>3. RD_RdOpenBack
 BY <2>2, SMTT(10), Sizes, Location, Design DEF DRecvNopost, ghV, instV, kV, recV, rtV, RD_RdOpenBack, Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>XSpO6sXnRte, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>FeykMimaof27QOR.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE P_SI3'
 BY ONLY <1>FeykMimaof27QOR, Sizes, Location, Design, <1>JedbHIfCfZIYLNzS4q, <1>HTeEgT30WI5cH9vvom9sB, <1>FPQA7M3w, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yhqRPvl8KDeHf6H.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE P_SI6'
 BY ONLY <1>yhqRPvl8KDeHf6H, Sizes, Location, Design, <1>JedbHIfCfZIYLNzS4q, <1>HTeEgT30WI5cH9vvom9sB, <1>TUh8WMSa, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>QbOjhpE.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design


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

<1>U8gvLhr.         K7 <=> (\A p \in Pages : QchrF(p))
  BY SMTT(10), Sizes, Location, Design DEF K7, QchrF, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>ztnr6iAa3fuRil.        
  ASSUME NEW x \in Xids, SHJS, K2, InFl(x)
  PROVE x < nx
  BY ONLY <1>ztnr6iAa3fuRil, Sizes, Location, Design, SMT DEF SHJS, Xids, K2, InFl, Sizes, Location, Design



<1>msaCiIFaNrC6o7cs.        
  ASSUME NEW x \in Xids, SHJS, K1, K2, K3, InFl(x)
  PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>msaCiIFaNrC6o7cs, Sizes, Location, Design
<2>1. x < nx
  BY <1>ztnr6iAa3fuRil, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMT, Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M1152_PdRDLegacy_PP_PdDataLemmas


<1>ImL4YAUizwx.        
  ASSUME NEW x \in Xids, PinInv, InFl(x)
  PROVE xdst[x] \in Pages /\ x \in led[xdst[x]]
<2> USE ONLY <1>ImL4YAUizwx, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. x < nx /\ xdst[x] \in Pages
  BY <2>1, <1>ztnr6iAa3fuRil, <1>msaCiIFaNrC6o7cs, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K2, K3, K4, InFl, ExpPage, InitPage, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>jgHIH5Q17K7.        
  ASSUME NEW x \in Xids, PinInv, hw[x] = "fly"
  PROVE xsrc[x] \in Pages /\ Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>jgHIH5Q17K7, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, <1>ztnr6iAa3fuRil, SMTT(10), Sizes, Location, Design DEF InFl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M1153_PdRDLegacy_PP_PdDDataA


<1>HAf1afl7XEIWE2.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE /\ Mode = "push" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ x < nx /\ xdst[x] \in Pages /\ x \in led[xdst[x]]
        /\ iv[x] = "nopost" /\ hw[x] = "none"
<2> USE ONLY <1>HAf1afl7XEIWE2, Sizes, Location, Design
<2>1. K2 /\ K3 /\ K4 /\ K12 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. Mode = "push" /\ xk[x] = "wr" /\ xst[x] = "posted"
          /\ \E m \in net : m.t = "nopost" /\ m.x = x
  BY SMTT(10), Sizes, Location, Design DEF DRecvNopost, Sizes, Location, Design
<2>3. x < nx /\ xdst[x] \in Pages
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, SHJS, Xids, ExpPage, Sizes, Location, Design
<2>4. iv[x] = "nopost"
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>5. hw[x] = "none" /\ x \in led[xdst[x]]
  BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF K3, K4, ExpPage, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>isLn0Ly5maVjJw9yKWQhl.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE xsrc[x] # xdst[x]
<2> USE ONLY <1>isLn0Ly5maVjJw9yKWQhl, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. x < nx /\ xk[x] = "wr" /\ xdst[x] \in Pages
  BY <1>HAf1afl7XEIWE2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>2, <1>xyjZthgxd, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. Loc(xdst[x]) = xd[x]
       /\ (xsrc[x] # 0 => xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x])
  BY <2>1, <2>2, <1>xyjZthgxd, SMTT(10), Sizes, Location, Design DEF ExpPage, InitPage, ExpInst, InitInst, Sizes, Location, Design
<2>5. QED
  BY <2>2, <2>3, <2>4, <1>QbOjhpE, Sizes, SMTT(10), Location, Design DEF Pages, Sizes, Location, Design
\* T2M-END R2M1151_PdRDLegacy_PP_PdDRecvNopostFactsA


<1>LCKGW1iMOUB8BVR.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE /\ la_ki7li_iL7z(x)
        /\ UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
<2> USE ONLY <1>LCKGW1iMOUB8BVR, Sizes, Location, Design
<2>1. K7 /\ OyyWS /\ dcfPK /\ h9WLgd /\ p1YmMe5 /\ vRZWI /\ IwCp /\ vS7em /\ bFwlN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xdst[x] \in Pages /\ x \in led[xdst[x]]
  BY <1>HAf1afl7XEIWE2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF DRecvNopost, EvidenceAt, PageTo, AfterEv, PinBlocks, ceHpLbR5HIr, la_ki7li_iL7z, K7, OyyWS, dcfPK, h9WLgd, p1YmMe5, vRZWI, IwCp, vS7em, bFwlN, rtV, instV, kV, recV, ghV, Sizes, Location, Design
\* T2M-END R2M1154_PdRDLegacy_PP_PdDRecvNopostEffectsA


<1>Qxo687MkXr.        
  ASSUME NEW p \in Pages, QchrF(p), UNCHANGED <<ptl[p], pst[p], pr[p], pgn[p], plt[p], led[p], sled[p], sfly[p], prefc[p], pqp[p], gen, ph, rg, rhit, rpg, kpin, krs>>
  PROVE QchrF(p)'
  BY ONLY <1>Qxo687MkXr, Sizes, Location, Design, Zenon DEF QchrF, Active, Maps, GrownP, KPinned, NHits, Sizes, Location, Design
\* T2M-END R2M1156_PdRDLegacy_PP_PdK7FrameA


<1>Ezc7eQPmaTsMSb.        
  ASSUME UNCHANGED <<pst,pr,rpg,ph,rhit,rg,kpin,krs>>
  PROVE \A p \in Pages :
          /\ UNCHANGED <<GrownP(p), NHits(p), KPinned(p)>>
          /\ \A r \in Rq : UNCHANGED Maps(Loc(p),r,p)
  BY ONLY <1>Ezc7eQPmaTsMSb, Sizes, Location, Design, Zenon DEF GrownP, NHits, KPinned, Maps, Active, Sizes, Location, Design
\* T2M-END R2M1157_PdRDLegacy_PP_PdK7StructureA


<1>QJwwBwX5woFaVIyc.        
  ASSUME NEW p \in Pages, NEW L, NEW S, PinInv, IacXDbxCyeEFSi(p,L,S)
  PROVE K7'
<2> USE ONLY <1>QJwwBwX5woFaVIyc, Sizes, Location, Design
<2>1. K7 /\ dcfPK /\ h9WLgd /\ OyyWS /\ IwCp /\ vS7em /\ bFwlN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ASSUME NEW q \in Pages PROVE QchrF(q)'
<3>1. QchrF(q)
  BY <2>1, <1>U8gvLhr, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE q # p
<4>1. UNCHANGED <<ptl[q],pst[q],pr[q],pgn[q],plt[q],led[q],sled[q],sfly[q],prefc[q],pqp[q],gen,ph,rg,rhit,rpg,kpin,krs>>
  BY <3>2, <2>1, SMTT(10), Sizes, Location, Design DEF IacXDbxCyeEFSi, dcfPK, h9WLgd, OyyWS, IwCp, vS7em, bFwlN, Sizes, Location, Design
<4>2. QED
  BY <3>1, <4>1, <1>Qxo687MkXr, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. CASE q = p /\ nn1wCGoepjf_(p,L,S)
  BY <3>3, <3>1, <2>1, SMTT(10), Sizes, Location, Design DEF IacXDbxCyeEFSi, nn1wCGoepjf_, QchrF, dcfPK, h9WLgd, OyyWS, IwCp, vS7em, bFwlN, Sizes, Location, Design
<3>4. CASE q = p /\ ~nn1wCGoepjf_(p,L,S)
<4>1. UNCHANGED <<pst,pr,pgn,plt,ptl,sfly,prefc,pqp,gen,ph,rg,rhit,rpg,kpin,krs>>
  BY <3>4, <2>1, SMTT(10), Sizes, Location, Design DEF IacXDbxCyeEFSi, OyyWS, IwCp, vS7em, bFwlN, Sizes, Location, Design
<4>2. UNCHANGED <<GrownP(p),NHits(p),KPinned(p)>>
       /\ \A r \in Rq : UNCHANGED Maps(Loc(p),r,p)
  BY <4>1, <1>Ezc7eQPmaTsMSb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>3. led'[p] = L /\ sled'[p] = S
  BY <2>1, SMTT(10), Sizes, Location, Design DEF IacXDbxCyeEFSi, dcfPK, h9WLgd, Sizes, Location, Design
<4>4. QED
  BY <3>4, <3>1, <4>1, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF IacXDbxCyeEFSi, nn1wCGoepjf_, QchrF, Sizes, Location, Design
<3>5. QED
  BY <3>2, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>2, SMTT(10), Sizes, Location, Design DEF K7, QchrF, Sizes, Location, Design
\* T2M-END R2M1158_PdRDLegacy_PP_PdCleanupK7A


<1>qguWr4cGFSr.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE K2'
<2> USE ONLY <1>qguWr4cGFSr, Sizes, Location, Design
<2>1. K2 /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. la_ki7li_iL7z(x) /\ UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>LCKGW1iMOUB8BVR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>HAf1afl7XEIWE2, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF DInst, ExpInst, ExpPage, InitInst, InitPage, Inst, IsD, IsP, K2, KPinned, NL, ceHpLbR5HIr, la_ki7li_iL7z, PD2ZN, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>MLzDFRPV8Wd.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE K4'
<2> USE ONLY <1>MLzDFRPV8Wd, Sizes, Location, Design
<2>1. K4 /\ K1 /\ K2 /\ SHJS /\ dcfPK /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K2, V21_Inv_K4, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. la_ki7li_iL7z(x) /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hok, hp, hw, iv, nx, rd, rp, rt, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>LCKGW1iMOUB8BVR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>HAf1afl7XEIWE2, <1>isLn0Ly5maVjJw9yKWQhl, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF SHJS, Xids, DInst, ExpInst, ExpPage, InitInst, InitPage, Inst, IsD, IsP, K1, K2, K4, KPinned, NL, ceHpLbR5HIr, la_ki7li_iL7z, dcfPK, PD2ZN, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>NjLTieJVTqS.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE K6'
<2> USE ONLY <1>NjLTieJVTqS, Sizes, Location, Design
<2>1. K6 /\ vS7em /\ IwCp /\ OyyWS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. la_ki7li_iL7z(x) /\ UNCHANGED <<gen, sfly, sled>>
  BY <1>LCKGW1iMOUB8BVR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>HAf1afl7XEIWE2, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K6, KPinned, NL, ceHpLbR5HIr, la_ki7li_iL7z, OwnedBy, vS7em, IwCp, OyyWS, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>UJbVvHOop29.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE K7'
<2> USE ONLY <1>UJbVvHOop29, Sizes, Location, Design
<2>1. K6 /\ dcfPK /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K6, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xdst[x] \in Pages
  BY <1>HAf1afl7XEIWE2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IacXDbxCyeEFSi(xdst[x],led[xdst[x]] \ {x},sled[xdst[x]])
  BY <2>1, <2>2, <1>LCKGW1iMOUB8BVR, SMTT(10), Sizes, Location, Design DEF K6, la_ki7li_iL7z, ceHpLbR5HIr, IacXDbxCyeEFSi, nn1wCGoepjf_, dcfPK, h9WLgd, Sizes, Location, Design
<2>4. QED
  BY <2>2, <2>3, <1>QJwwBwX5woFaVIyc, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>dlhpqzku2oWE.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE K16'
<2> USE ONLY <1>dlhpqzku2oWE, Sizes, Location, Design
<2>1. K16 /\ dcfPK /\ vS7em /\ bFwlN /\ IwCp /\ OyyWS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. la_ki7li_iL7z(x) /\ UNCHANGED <<hw, ph, ptl, rg, rpg, sfly, sled, xdst>>
  BY <1>LCKGW1iMOUB8BVR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>HAf1afl7XEIWE2, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF DInst, GrownP, InFl, Inst, IsD, IsP, K16, KPinned, NL, NoWriteInto, ceHpLbR5HIr, la_ki7li_iL7z, dcfPK, vS7em, bFwlN, IwCp, OyyWS, Tag, Writing, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>p8T6i5uTc7w.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE S5'
<2> USE ONLY <1>p8T6i5uTc7w, Sizes, Location, Design
<2>1. S5 /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_S5, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. la_ki7li_iL7z(x) /\ UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr>>
  BY <1>LCKGW1iMOUB8BVR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>HAf1afl7XEIWE2, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, KPinned, NL, ceHpLbR5HIr, la_ki7li_iL7z, S5, PD2ZN, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>XTQzzDg7oHOfx.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
  PROVE K2'
  BY ONLY <1>XTQzzDg7oHOfx, Sizes, Location, Design, <1>qguWr4cGFSr, V21_Inv_K2 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>TCkIHelxpVcRs.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
  PROVE K4'
  BY ONLY <1>TCkIHelxpVcRs, Sizes, Location, Design, <1>MLzDFRPV8Wd, V21_Inv_K4 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>qTsXXdUJvl6Xa.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
  PROVE K6'
  BY ONLY <1>qTsXXdUJvl6Xa, Sizes, Location, Design, <1>NjLTieJVTqS, V21_Inv_K6 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>KxlqwGuFcm8T0.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
  PROVE K7'
  BY ONLY <1>KxlqwGuFcm8T0, Sizes, Location, Design, <1>UJbVvHOop29, V21_Inv_K7 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>yFF3vcGrUzCXGX.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
  PROVE K16'
  BY ONLY <1>yFF3vcGrUzCXGX, Sizes, Location, Design, <1>dlhpqzku2oWE, V21_Inv_K16 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>jVJlPndkja4R2.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
  PROVE S5'
  BY ONLY <1>jVJlPndkja4R2, Sizes, Location, Design, <1>p8T6i5uTc7w, V21_Inv_S5 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>FeykMimaof27QOR, <1>yhqRPvl8KDeHf6H, <1>TCkIHelxpVcRs, <1>XTQzzDg7oHOfx, <1>qTsXXdUJvl6Xa, <1>KxlqwGuFcm8T0, <1>yFF3vcGrUzCXGX, <1>jVJlPndkja4R2, <1>pePpAXqK92Lqe4L, <1>ZcqCqpPTSSZV7v4rSBzLuguhwARW, <1>qnQbuGVoPjwwxmR, <1>HAiyhDlzHWg1gQB, <1>nQFqWhouuB67rj, <1>WQILNEfM10QVbu, <1>Elpiupk4bNwAJj8N4mxFk3W, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF Part_DRecvNopost_02_01, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K6, V21_Inv_K7, V21_Inv_KStruct, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_Static, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_nx, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xk, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
====
