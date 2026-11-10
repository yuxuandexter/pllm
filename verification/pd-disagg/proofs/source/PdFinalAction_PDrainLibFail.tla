---- MODULE PdFinalAction_PDrainLibFail ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_d3dd8b4090431094, PdFinalAuxType_8329c94b73925111, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PDrainLibFail_01

\* Complete original body PdFinalPart_PDrainLibFail_02_02 SHA 3c6e357365d19669266c46925ca3832a19427ff9c00df1f8c67a3c5f2004d245
HIDE DEF AuxType_8329c94b73925111, AuxType_d3dd8b4090431094, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_PDrainLibFail_01_01, Part_PDrainLibFail_01_02, Part_PDrainLibFail_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_K6, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI5, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuietConservation, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SInd, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_PDrainLibFail_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE (SI7)' /\ (SendOwnLanded)' /\ (NoEvictUnderRDMA)' /\ (K7)' /\ (P_SI1)' /\ (K4)' /\ (K5)' /\ (K9)' /\ (K11)' /\ (K12)' /\ (K16)' /\ (QuarNeverMapped)' /\ (QuarNoReg)' /\ (P_SI6)' /\ (SI8)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RP_New(i,r) == rg'[i][r] # rg[i][r]


           RP_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           RP_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           RP_H2(unused) == {h \in rpgS : RP_HLive(h) \/ (RP_HPin(h) /\ Mut # "unrefBeforeKDone")}


           RP_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           RP_Src(x) == IF RP_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           RP_SX(unused) == [x \in Xids |-> IF RP_Posted(x) THEN (IF RP_Src(x) \in SPages /\ spst[RP_Src(x)]="shared" THEN {RP_Src(x)} ELSE {}) ELSE xsrcS[x]]


           RP_PX(unused) == [x \in Xids |-> IF RP_Posted(x) THEN (IF RP_Src(x) \in SPages /\ spst[RP_Src(x)]="priv" THEN {RP_Src(x)} ELSE {}) ELSE xsrcP[x]]


           RP_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           RP_Quarantine(x) == x \in sentry /\ ~RP_Close(x) /\
                     ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           RP_E2(unused) == (sentry \cup {x \in Xids : RP_Posted(x)}) \ {x \in Xids : RP_Close(x) \/ RP_Quarantine(x)}


           RP_Q2(unused) == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
                                   UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RP_Quarantine(x)}})


           RP_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\
                    (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           RP_Pin2(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           RP_Drop(p) == (RP_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RP_Pin2(p) /\ sready[p] /\ ~(\E x \in RP_E2(0) : p \in RP_PX(0)[x])


           RP_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
                    spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           RP_SFollowEffect == /\ rpgS'=RP_H2(0) /\ xsrcS'=RP_SX(0) /\ xsrcP'=RP_PX(0) /\ sentry'=RP_E2(0) /\ squar'=RP_Q2(0)
                /\ sprefc'=[p \in SPages |-> sprefc[p]+SRefR(RP_H2(0),p)-SRefR(rpgS,p)
                                    +SRefE(RP_E2(0),RP_SX(0),p)-SRefE(sentry,xsrcS,p)+SRefQ(RP_Q2(0),p)-SRefQ(squar,p)]
                /\ smap'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN 0 ELSE smap[i][r]]]
                /\ schoice'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN FALSE ELSE schoice[i][r]]]
                /\ spst'=[p \in SPages |-> IF \E x \in Xids : RP_Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                                    ELSE IF RP_Drop(p) THEN "free" ELSE IF RP_Ended(p) THEN "drain" ELSE spst[p]]
                /\ xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RP_Valid(x) ELSE xprefixOK[x]]
                /\ dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                                    THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                                          (IF hw[x]="issued" THEN xprefixOK[x] ELSE RP_Valid(x))
                                    ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
                /\ UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>

           \* T2M-LOCAL-VISIBILITY

           RP_NewFlyFromReg == \A x \in Xids : hw'[x]="fly" => hw[x]="fly" \/ iv[x]="reg"


           RP_SharedSend == IF ~B2 THEN TRUE ELSE \A x \in Xids : hw[x]="fly" =>
            \A p \in xsrcS[x] \cup xsrcP[x] : sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])

           \* T2M-LOCAL-VISIBILITY

           RP_RecordProgress == \A i \in PInst,r \in Rq :
            (Active(i,r)' /\ rg'[i][r]=rg[i][r]) => Active(i,r)

           \* T2M-LOCAL-VISIBILITY

           RP_GenMonotone == \A i \in PInst,r \in Rq : rg'[i][r] \in Nat /\ rg'[i][r]>=rg[i][r]


           RP_KPhaseProgress == \A i \in PInst,r \in Rq :
            (rg'[i][r]=rg[i][r] /\ ph[i][r] \in {"ready","reg","sent","exp","end"}) =>
            ph'[i][r] \in {"ready","reg","sent","exp","end"}

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

           OjcUPgq(p) ==
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


           RP_RecordReady == B2 => \A i \in PInst,r \in Rq :
            ph'[i][r] \in {"reg","sent","exp"} => rg'[i][r]=rg[i][r] /\ SSendReady(i,r)


           RP_NoneFrame == \A i \in PInst,r \in Rq : ph'[i][r]="none" => ph[i][r]="none" /\ rg'[i][r]=rg[i][r]

           \* T2M-LOCAL-VISIBILITY

           RP_RegPrelude == \A x \in Xids : iv'[x]="reg" =>
            xk[x]="wr" /\ (RP_Posted(x) \/ (iv[x]="reg" /\ xsrc'[x]=xsrc[x]))


           RP_RegSourceSafe == \A x \in Xids : iv'[x]="reg" => xsrc'[x] \in Pages /\ pst'[xsrc'[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_NewFlyFromReg, RP_SharedSend, RP_RecordProgress, RP_GenMonotone, RP_KPhaseProgress, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, OjcUPgq, RP_RecordReady, RP_NoneFrame, RP_RegPrelude, RP_RegSourceSafe

<1>PKl1lJKpXGVI0yrZ8.        
 ASSUME B2, SFollow
 PROVE RP_SFollowEffect
<2> HIDE DEF SFollow, RP_SFollowEffect, V22_FH2, V22_FSX, V22_FPX, V22_FE2, V22_FQ2, V22_FDrop, V22_FEnded, V22_FQuarantine
<2>hAlias. RP_H2(0)=V22_FH2
 BY ONLY SMTT(5) DEF RP_H2, RP_HLive, RP_HPin, V22_FH2, V22_FHLive, V22_FHPin
<2>sxAlias. RP_SX(0)=V22_FSX
 BY ONLY SMTT(5) DEF RP_SX, RP_Posted, RP_Src, V22_FSX, V22_FPosted, V22_FSrc
<2>pxAlias. RP_PX(0)=V22_FPX
 BY ONLY SMTT(5) DEF RP_PX, RP_Posted, RP_Src, V22_FPX, V22_FPosted, V22_FSrc
<2>eAlias. RP_E2(0)=V22_FE2
 BY ONLY SMTT(5) DEF RP_E2, RP_Posted, RP_Close, RP_Quarantine, V22_FE2, V22_FPosted, V22_FClose, V22_FQuarantine
<2>qAlias. RP_Q2(0)=V22_FQ2
 BY ONLY SMTT(5) DEF RP_Q2, RP_Quarantine, RP_Close, V22_FQ2, V22_FQuarantine, V22_FClose
<2>statusAlias. \A p \in SPages : RP_Ended(p)=V22_FEnded(p) /\ RP_Drop(p)=V22_FDrop(p)
 BY ONLY <2>pxAlias, <2>eAlias, SMTT(5) DEF RP_Ended, RP_Drop, RP_Pin2, V22_FEnded, V22_FDrop, V22_FPin2
<2>quarantineAlias. \A x \in Xids : RP_Quarantine(x)=V22_FQuarantine(x)
 BY ONLY SMTT(5) DEF RP_Quarantine, RP_Close, V22_FQuarantine, V22_FClose
<2>holders. rpgS'=RP_H2(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>hAlias, V22_SF_Holders, SMTT(5) DEF V22_SF_Holders
<2>sourceShared. xsrcS'=RP_SX(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>sxAlias, V22_SF_SourceShared, SMTT(5) DEF V22_SF_SourceShared
<2>sourcePrivate. xsrcP'=RP_PX(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>pxAlias, V22_SF_SourcePrivate, SMTT(5) DEF V22_SF_SourcePrivate
<2>sentry. sentry'=RP_E2(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>eAlias, V22_SF_Sentry, SMTT(5) DEF V22_SF_Sentry
<2>squar. squar'=RP_Q2(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>qAlias, V22_SF_Squar, SMTT(5) DEF V22_SF_Squar
<2>refcount. sprefc'=[p \in SPages |-> sprefc[p]+SRefR(RP_H2(0),p)-SRefR(rpgS,p)
                      +SRefE(RP_E2(0),RP_SX(0),p)-SRefE(sentry,xsrcS,p)+SRefQ(RP_Q2(0),p)-SRefQ(squar,p)]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>hAlias, <2>sxAlias, <2>eAlias, <2>qAlias, V22_SF_RefCount, SMTT(5) DEF V22_SF_RefCount
<2>map. smap'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN 0 ELSE smap[i][r]]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, V22_SF_Map, SMTT(5) DEF RP_New, V22_SF_Map
<2>choice. schoice'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN FALSE ELSE schoice[i][r]]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, V22_SF_Choice, SMTT(5) DEF RP_New, V22_SF_Choice
<2>status. spst'=[p \in SPages |-> IF \E x \in Xids : RP_Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                      ELSE IF RP_Drop(p) THEN "free" ELSE IF RP_Ended(p) THEN "drain" ELSE spst[p]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>statusAlias, <2>quarantineAlias, V22_SF_Status, SMTT(5) DEF V22_SF_Status
<2>prefix. xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RP_Valid(x) ELSE xprefixOK[x]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, ZenonT(10) DEF SFollow, RP_Valid
<2>dpre. dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                      THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                         (IF hw[x]="issued" THEN xprefixOK[x] ELSE RP_Valid(x))
                      ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, ZenonT(10) DEF SFollow, RP_Valid
<2>static. UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, V22_SF_Static, SMTT(5) DEF V22_SF_Static
<2>qed. QED
 BY ONLY <2>holders, <2>sourceShared, <2>sourcePrivate, <2>sentry, <2>squar,
         <2>refcount, <2>map, <2>choice, <2>status, <2>prefix, <2>dpre, <2>static, SMTT(5) DEF RP_SFollowEffect

\* T2M-LOCAL-VISIBILITY

<1>zfqXeNpr8ate3.        
 ASSUME SFollow
 PROVE UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ONLY <1>zfqXeNpr8ate3, Sizes, Location, Design, ZenonT(10), V21_SFollowStatic DEF sV, Sizes, Location, Design
\* T2M-END R2M1392_PdRPFollowProjection


<1>Ua3eOhQVTzEuP0Q.        
 ASSUME NEW p \in SPages, B2, SFollow, SI4, spst[p]="shared"
 PROVE spst'[p]="shared"
<2> USE ONLY <1>Ua3eOhQVTzEuP0Q, Sizes, Location, Design
<2>1. \A x \in Xids : xsrcP[x]={} BY Sizes, Location, Design DEF SI4, Sizes, Location, Design
<2>2. QED BY <2>1, <1>PKl1lJKpXGVI0yrZ8, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_Drop, RP_Ended, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>irl4UaCCkNMPiRRv.        
 ASSUME NEW p \in SPages, B2, SFollow, spst'[p]="shared"
 PROVE spst[p]="shared"
 BY ONLY <1>irl4UaCCkNMPiRRv, Sizes, Location, Design, <1>PKl1lJKpXGVI0yrZ8, SMTT(10) DEF RP_SFollowEffect, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZXxq7ZUlh0hBhsql.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~RP_Posted(x)
 BY ONLY <1>ZXxq7ZUlh0hBhsql, Sizes, Location, Design, Sizes, SMTT(10) DEF RP_Posted, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KReYXg7MU3qwoztWhw.        
 ASSUME NEW x \in Xids, B2, SFollow, RP_Quarantine(x)
 PROVE \A p \in xsrcS[x] : <<x,p>> \in squar'
<2> USE ONLY <1>KReYXg7MU3qwoztWhw, Sizes, Location, Design
<2>1. squar'=RP_Q2(0) BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF RP_SFollowEffect, Sizes, Location, Design
<2>2. ASSUME NEW p \in xsrcS[x]
       PROVE <<x,p>> \in squar'
 <3>1. x \in {y \in Xids : RP_Quarantine(y)} BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. {<<x,q>> : q \in xsrcS[x]} \in {{<<y,q>> : q \in xsrcS[y]} : y \in {y \in Xids : RP_Quarantine(y)}}
  BY <3>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. <<x,p>> \in {<<x,q>> : q \in xsrcS[x]} BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY <2>1, <3>2, <3>3, Design, SMTT(10), Sizes, Location DEF RP_Q2, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cBA7rB8Q9U8gRHfGK.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,xk,xst>>
 PROVE SI8'
<2> USE ONLY <1>cBA7rB8Q9U8gRHfGK, Sizes, Location, Design
<2>1. SI8 /\ xsrcS \in [Xids -> SUBSET SPages]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>cBA7rB8Q9U8gRHfGK, V22_T_xsrcS, V21_Inv_SI8, Sizes, Location, Design, SMTT(5)

<2>2. CASE ~B2
 BY <2>2, Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>3. CASE B2
 <3>1. \A x \in Xids : ~RP_Posted(x) BY <1>ZXxq7ZUlh0hBhsql, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. xsrcS'=xsrcS /\ squar \subseteq squar'
  BY <2>1, <2>3, <3>1, <1>PKl1lJKpXGVI0yrZ8, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_SX, RP_Q2, Sizes, Location, Design
 <3>3. ASSUME NEW x \in Xids, xk'[x]="rd", xst'[x]="posted"
        PROVE x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
  <4>1. x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
   BY <2>1, <2>3, <3>3, Sizes, Location, Design DEF SI8, Sizes, Location, Design
  <4>2. ~RP_Close(x) BY <3>3, Sizes, Location, Design DEF RP_Close, Sizes, Location, Design
  <4>3. (x \in sentry /\ ~RP_Quarantine(x)) => x \in sentry'
   BY <2>3, <4>2, <1>PKl1lJKpXGVI0yrZ8, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_E2, Sizes, Location, Design
  <4>4. RP_Quarantine(x) => \A p \in xsrcS[x] : <<x,p>> \in squar'
   BY <2>3, <1>KReYXg7MU3qwoztWhw, Sizes, Location, Design DEF Sizes, Location, Design
  <4>5. QED BY <3>2, <4>1, <4>3, <4>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY <2>3, <3>3, Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1393_PdRPSharedCore


<1>ESBouXiucduyoSgqYf8M.        
 ASSUME PinInv, B2, SFollow, UNCHANGED xsrc
 PROVE UNCHANGED <<xsrcS,xsrcP>> /\ sentry' \subseteq sentry
<2> USE ONLY <1>ESBouXiucduyoSgqYf8M, Sizes, Location, Design
<2>1. \A x \in Xids : ~RP_Posted(x) BY <1>ZXxq7ZUlh0hBhsql, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ESBouXiucduyoSgqYf8M, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

<2>3. QED BY <2>1, <2>2, <1>PKl1lJKpXGVI0yrZ8, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_SX, RP_PX, RP_E2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>M8HwZu9jwGkBjbpUA.        
 ASSUME B2, SFollow
 PROVE \A h \in squar' : h \in squar \/ h[1] \in sentry
<2> USE ONLY <1>M8HwZu9jwGkBjbpUA, Sizes, Location, Design
<2>1. squar'=RP_Q2(0) BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF RP_SFollowEffect, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF RP_Q2, RP_Quarantine, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yQBGvxyGQhN0w6pz3gh.        
 ASSUME PinInv, B2, SFollow, UNCHANGED xsrc, RP_NewFlyFromReg
 PROVE \A x \in Xids : SAccess(x)' => SAccess(x)
<2> USE ONLY <1>yQBGvxyGQhN0w6pz3gh, Sizes, Location, Design
<2>1. sentry' \subseteq sentry BY <1>ESBouXiucduyoSgqYf8M, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. SI7 BY V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A h \in squar' : h \in squar \/ h[1] \in sentry
 BY <1>M8HwZu9jwGkBjbpUA, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF SAccess, SI7, RP_NewFlyFromReg, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fCaVnnRiNeSrXN4lcQ3A.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,xr,xg>>, RP_NewFlyFromReg
 PROVE NoEvictUnderRDMA' /\ RP_SharedSend'
<2> USE ONLY <1>fCaVnnRiNeSrXN4lcQ3A, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ SharedImmutable /\ (B2 => SI4) /\ STypeOK
 BY V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI4, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. UNCHANGED <<skey,sdata,swrite>> BY <1>zfqXeNpr8ate3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE ~B2
 BY <2>3, Sizes, Location, Design DEF NoEvictUnderRDMA, RP_SharedSend, Sizes, Location, Design
<2>4. CASE B2
 <3>1. UNCHANGED <<xsrcS,xsrcP>> BY <2>4, <1>ESBouXiucduyoSgqYf8M, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A x \in Xids : SAccess(x)' => SAccess(x)
  BY <2>4, <1>yQBGvxyGQhN0w6pz3gh, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A x \in Xids : xsrcP'[x]={}
  BY <2>1, <2>4, <3>1, Sizes, Location, Design DEF SI4, Sizes, Location, Design
 <3>4. \A x \in Xids : SAccess(x)' => \A p \in xsrcS'[x] :
   spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x]) /\ sdata'[p] /\ ~swrite'[p]
  <4>1. ASSUME NEW x \in Xids, SAccess(x)', NEW p \in xsrcS'[x]
         PROVE spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x]) /\ sdata'[p] /\ ~swrite'[p]
   <5>1. SAccess(x) /\ p \in xsrcS[x] /\ p \in SPages
    BY <2>1, <3>1, <3>2, <4>1, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
   <5>2. spst[p]="shared" /\ skey[p]=STok(xr[x],xg[x]) /\ sdata[p] /\ ~swrite[p]
    BY <2>1, <2>4, <5>1, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, SharedImmutable, Sizes, Location, Design
   <5>3. QED BY <2>1, <2>2, <2>4, <5>1, <5>2, <1>Ua3eOhQVTzEuP0Q, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. QED BY <4>1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>5. QED BY <2>4, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, RP_SharedSend, SAccess, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1394_PdRPSharedAccess


<1>VvQ1Ee6d0oQ6xs7i583aUhr1q.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE UNCHANGED <<xsrc,xr,xg>> /\ RP_NewFlyFromReg
<2> USE ONLY <1>VvQ1Ee6d0oQ6xs7i583aUhr1q, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>VvQ1Ee6d0oQ6xs7i583aUhr1q, V22_T_hw, SMTT(5)

<2>2. QED BY <2>1, Design, SMTT(10), Sizes, Location DEF RP_NewFlyFromReg, EvidenceAt, PDrainLibFail, PDrainLibFailBroken, PDrainLibFailSafe, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hoPeOQNPi9k79ip6pdzV2aEP5f.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE NoEvictUnderRDMA' /\ RP_SharedSend'
 BY ONLY <1>hoPeOQNPi9k79ip6pdzV2aEP5f, Sizes, Location, Design, <1>VvQ1Ee6d0oQ6xs7i583aUhr1q, <1>fCaVnnRiNeSrXN4lcQ3A DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zSTjZpsndy91RTw9CITextXYz86aw9.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>zSTjZpsndy91RTw9CITextXYz86aw9, Sizes, Location, Design, <1>hoPeOQNPi9k79ip6pdzV2aEP5f DEF Sizes, Location, Design
\* T2M-END R2M1397_PdRPAccess_PDrainLibFail


<1>z91uDrKVH4PBOpq3hcKm.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>z91uDrKVH4PBOpq3hcKm, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PDrainLibFail, PDrainLibFailBroken, PDrainLibFailSafe, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LpZJM1jKAnh2ElE4IT1r53pEI8M4.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>LpZJM1jKAnh2ElE4IT1r53pEI8M4, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>LpZJM1jKAnh2ElE4IT1r53pEI8M4, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, PDrainLibFail, PDrainLibFailBroken, PDrainLibFailSafe, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Rb5RIKkdZdzJcI5mTTRC.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE UNCHANGED <<xsrc,xk,xst>>
 BY ONLY <1>Rb5RIKkdZdzJcI5mTTRC, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PDrainLibFail, PDrainLibFailBroken, PDrainLibFailSafe, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WcRAN2ul6wWzabo3N.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE SI8'
 BY ONLY <1>WcRAN2ul6wWzabo3N, Sizes, Location, Design, <1>Rb5RIKkdZdzJcI5mTTRC, <1>cBA7rB8Q9U8gRHfGK DEF Sizes, Location, Design
\* T2M-END R2M1418_PdRPShared_PDrainLibFail


<1>sP1gMFHuwAB.        
 ASSUME PinInv, SFollow, UNCHANGED <<kpin,krs>>, RP_RecordProgress, RP_GenMonotone, RP_KPhaseProgress
 PROVE P_SI6'
<2> HIDE DEF SFollow, CoreTypeOK, STypeOK, RP_SFollowEffect, V22_FH2
<2>old. (B2 => SI1 /\ SI6)
 BY ONLY <1>sP1gMFHuwAB, V21_Inv_P_SI1, V21_Inv_P_SI6, Sizes, Location, Design, SMTT(5) DEF P_SI1, P_SI6
<2>types. krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0,1,2,3,4})]] /\
           rg \in [Inst -> [Rq -> 0..MG]] /\ rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)
 BY ONLY <1>sP1gMFHuwAB, V22_T_krs, V22_T_rg, V22_T_rpgS, SMTT(5)
<2>domains. PInst \subseteq Inst /\ Gens \subseteq Nat /\ 0..MG \subseteq Nat
 BY ONLY Sizes, SMTT(5) DEF Sizes, PInst, Inst, NL, Gens
<2>order. ASSUME NEW oldgen \in Nat, NEW newgen \in Nat, NEW entrygen \in Nat,
                 newgen>=oldgen, oldgen>=entrygen
          PROVE newgen>=entrygen /\ (newgen=entrygen => oldgen=entrygen)
 BY ONLY <2>order, SMTT(5)
<2>off. CASE ~B2
 BY ONLY <2>off, SMTT(5) DEF P_SI6
<2>on. CASE B2
 <3>entry. ASSUME NEW i \in PInst, NEW k \in KSlots, kpin'[i][k], NEW e \in krs'[i][k], e[3] \in SPages
          PROVE /\ rg'[i][e[1]]>=e[2]
                /\ (rg'[i][e[1]]=e[2] => schoice'[i][e[1]] /\ ph'[i][e[1]] \in {"ready","reg","sent","exp","end"})
                /\ (e[4]=1 /\ rg'[i][e[1]]=e[2] /\ Active(i,e[1])' => smap'[i][e[1]]=e[3])
  <4>domain. e[1] \in Rq /\ e[2] \in Gens /\ kpin[i][k] /\ e \in krs[i][k]
   BY ONLY <1>sP1gMFHuwAB, <2>types, <2>domains, <3>entry, SMTT(5)
  <4>before. rg[i][e[1]]>=e[2] /\
     (rg[i][e[1]]=e[2] => schoice[i][e[1]] /\ ph[i][e[1]] \in {"ready","reg","sent","exp","end"}) /\
     ((e[4]=1 /\ rg[i][e[1]]=e[2] /\ Active(i,e[1])) => smap[i][e[1]]=e[3])
   BY ONLY <2>old, <2>on, <3>entry, <4>domain, SMTT(5) DEF SI6
  <4>numbers. rg[i][e[1]] \in Nat /\ rg'[i][e[1]] \in Nat /\ e[2] \in Nat /\ rg'[i][e[1]]>=rg[i][e[1]]
   BY ONLY <1>sP1gMFHuwAB, <2>types, <2>domains, <3>entry, <4>domain, SMTT(5) DEF RP_GenMonotone
  <4>ordered. rg'[i][e[1]]>=e[2] /\ (rg'[i][e[1]]=e[2] => rg[i][e[1]]=e[2])
   BY ONLY <2>order, <4>before, <4>numbers, SMTT(5)
  <4>map. rg'[i][e[1]]=e[2] => smap'[i][e[1]]=smap[i][e[1]]
   BY ONLY <1>sP1gMFHuwAB, <2>on, <3>entry, <4>domain, <4>ordered, V22_SF_MapPoint, SMTT(5) DEF V22_SF_MapPoint
  <4>choice. rg'[i][e[1]]=e[2] => schoice'[i][e[1]]=schoice[i][e[1]]
   BY ONLY <1>sP1gMFHuwAB, <2>on, <3>entry, <4>domain, <4>ordered, V22_SF_Choice, SMTT(5) DEF V22_SF_Choice
  <4>phase. rg'[i][e[1]]=e[2] => ph'[i][e[1]] \in {"ready","reg","sent","exp","end"}
   BY ONLY <1>sP1gMFHuwAB, <3>entry, <4>domain, <4>before, <4>ordered, SMTT(5) DEF RP_KPhaseProgress
  <4>active. (rg'[i][e[1]]=e[2] /\ Active(i,e[1])') => Active(i,e[1])
   BY ONLY <1>sP1gMFHuwAB, <3>entry, <4>domain, <4>ordered, SMTT(5) DEF RP_RecordProgress
  <4>qed. QED BY ONLY <4>before, <4>ordered, <4>map, <4>choice, <4>phase, <4>active, SMTT(5)
 <3>holder. ASSUME NEW h \in rpgS', rg'[h[1]][h[2]]=h[3], Active(h[1],h[2])'
           PROVE smap'[h[1]][h[2]]=h[4]
  <4>member. h \in rpgS
   BY ONLY <1>sP1gMFHuwAB, <2>on, <3>holder, V22_SF_Holders, SMTT(5) DEF V22_SF_Holders, V22_FH2
  <4>domain. h[1] \in PInst /\ h[2] \in Rq /\ h[3] \in Gens /\ h[4] \in SPages
   BY ONLY <2>types, <4>member, SMTT(5)
  <4>split. (rg[h[1]][h[2]]=h[3] /\ Active(h[1],h[2]) /\ smap[h[1]][h[2]]=h[4]) \/ SHPin(h)
   BY ONLY <2>old, <2>on, <4>member, SMTT(5) DEF SI1
  <4>lower. rg[h[1]][h[2]]>=h[3]
   <5>direct. CASE rg[h[1]][h[2]]=h[3]
    BY ONLY <5>direct, <4>domain, <2>domains, SMTT(5)
   <5>pin. CASE SHPin(h)
    <6>slot. PICK k \in KSlots : kpin[h[1]][k] /\ \E e \in krs[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]
     BY ONLY <5>pin, SMTT(5) DEF SHPin
    <6>entry. PICK e \in krs[h[1]][k] : kpin[h[1]][k] /\ e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]
     BY ONLY <6>slot, SMTT(5)
    <6>qed. QED BY ONLY <2>old, <2>on, <4>domain, <6>entry, SMTT(5) DEF SI6
   <5>qed. QED BY ONLY <4>split, <5>direct, <5>pin, SMTT(5)
  <4>numbers. rg[h[1]][h[2]] \in Nat /\ rg'[h[1]][h[2]] \in Nat /\ h[3] \in Nat /\ rg'[h[1]][h[2]]>=rg[h[1]][h[2]]
   BY ONLY <1>sP1gMFHuwAB, <2>types, <2>domains, <4>domain, SMTT(5) DEF RP_GenMonotone
  <4>same. rg[h[1]][h[2]]=h[3]
   BY ONLY <2>order, <3>holder, <4>numbers, <4>lower, SMTT(5)
  <4>active. Active(h[1],h[2])
   BY ONLY <1>sP1gMFHuwAB, <3>holder, <4>domain, <4>same, SMTT(5) DEF RP_RecordProgress
  <4>before. smap[h[1]][h[2]]=h[4]
   BY ONLY <2>old, <2>on, <4>member, <4>same, <4>active, SMTT(5) DEF SI6
  <4>qed. QED
   BY ONLY <1>sP1gMFHuwAB, <2>on, <3>holder, <4>domain, <4>same, <4>before, V22_SF_MapPoint, SMTT(5) DEF V22_SF_MapPoint
 <3>qed. QED BY ONLY <2>on, <3>entry, <3>holder, SMTT(5) DEF P_SI6, SI6
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

\* T2M-END R2M1413_PdRPSI6


<1>vM76o05eTBf8rma0Tm8FTGblk.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE RP_GenMonotone /\ RP_KPhaseProgress
<2> USE ONLY <1>vM76o05eTBf8rma0Tm8FTGblk, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>vM76o05eTBf8rma0Tm8FTGblk, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_GenMonotone, RP_KPhaseProgress, PInst, Inst, NL, EvidenceAt, PDrainLibFail, PDrainLibFailBroken, PDrainLibFailSafe, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Nm5qMo9Qvsxz9H7OY.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE P_SI6'
 BY ONLY <1>Nm5qMo9Qvsxz9H7OY, Sizes, Location, Design, <1>z91uDrKVH4PBOpq3hcKm, <1>LpZJM1jKAnh2ElE4IT1r53pEI8M4, <1>vM76o05eTBf8rma0Tm8FTGblk, <1>sP1gMFHuwAB DEF Sizes, Location, Design
\* T2M-END R2M1419_PdRPExtra_PDrainLibFail


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>Ug4VwS.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1459_PdRPPP_PdMsgBase


<1>vQJzBLUzrPuIfufn.        
  ASSUME NEW p \in Pages, PDrainLibFail(p)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>vQJzBLUzrPuIfufn, Sizes, Location, Design, ZenonT(5) DEF PDrainLibFail, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, PDrainLibFailSafe, PDrainLibFailBroken, Sizes, Location, Design
\* T2M-END R2M1550_PdRPPP_PdPDrainLibFailFrames

\* T2M-SCOPE R2M1552_PdRPPP_PdPDrainLibFailStepsSupport
\* T2M-BODY R2M1552_PdRPPP_PdPDrainLibFailStepsSupport
\* T2M-LOCAL-VISIBILITY

<1>SNPHIgYK.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p)
  PROVE /\ pst[p] = "drain"
        /\ pst' = [pst EXCEPT ![p] = "quar"]
        /\ UNCHANGED <<pr,pgn,plt,led,sled,prefc>>
        /\ \E x \in led[p] : /\ xk[x] = "wr" /\ xsrc[x] = p /\ iv[x] = "failret"
                            /\ pqp' = [pqp EXCEPT ![p] = xd[x]]
                            /\ net' = net \cup {Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)}
<2> USE ONLY <1>SNPHIgYK, Sizes, Location, Design
<2>1. dcfPK /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(10), Sizes, Location DEF PDrainLibFail, PageTo, GiveUpTo, GiveUpToN, dcfPK, h9WLgd, PDrainLibFailSafe, PDrainLibFailBroken, Sizes, Location, Design
\* T2M-END R2M1552_PdRPPP_PdPDrainLibFailStepsSupport

\* T2M-SCOPE R2M1553_PdRPPP_PdCell_PDrainLibFail_K10
\* T2M-BODY R2M1553_PdRPPP_PdCell_PDrainLibFail_K10
\* T2M-LOCAL-VISIBILITY

<1>eODlmBDehG7GF3.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p)
  PROVE K11'
<2> USE ONLY <1>eODlmBDehG7GF3, Sizes, Location, Design
<2>1. K11 /\ dcfPK /\ SHJS /\ vRZWI /\ OyyWS /\ rO4YE /\ Xc_ngV /\ h9WLgd /\ OfQy9 /\ Uzgo58
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K11, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. pst[p] = "drain" /\ pst' = [pst EXCEPT ![p] = "quar"]
        /\ UNCHANGED <<pr,pgn,plt,led,sled,prefc,rtV,instV,recV,ptl,pvis,sfly,xV,ghV>>
  BY <1>SNPHIgYK, <1>vQJzBLUzrPuIfufn, SMTT(10), Sizes, Location, Design DEF rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
<2>3. PICK x \in led[p] : /\ xk[x] = "wr" /\ xsrc[x] = p /\ iv[x] = "failret"
                        /\ pqp' = [pqp EXCEPT ![p] = xd[x]]
                        /\ net' = net \cup {Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)}
  BY <1>SNPHIgYK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Sizes, Design, Location, <1>Ug4VwS, SMTT(10) DEF K11, dcfPK, SHJS, vRZWI, OyyWS, rO4YE, Xc_ngV, h9WLgd, OfQy9, Uzgo58, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
\* T2M-END R2M1554_PdRPPP_PdCell_PDrainLibFail_K11

\* T2M-SCOPE R2M1555_PdRPPP_PdCell_PDrainLibFail_K12

<1>eWwx44EIR4QSvS.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p)
  PROVE K12'
<2> USE ONLY <1>eWwx44EIR4QSvS, Sizes, Location, Design
<2> DEFINE MI(m) ==
         /\ m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])
         /\ m.t = "hello" => m.fr \in Inst
         /\ m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                            ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))
         /\ m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                              /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))
         /\ m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                              /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])
         /\ m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                               /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])
         /\ m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")
         /\ m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)
         /\ m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                               /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))
         /\ m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))
<2>old. K12 /\ K2 /\ K4
 BY ONLY <1>eWwx44EIR4QSvS, V21_Inv_K12, V21_Inv_K2, V21_Inv_K4, Sizes, Location, Design, SMTT(5)
<2>type. led \in [Pages -> SUBSET Xids] /\ nx \in Int

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>eWwx44EIR4QSvS, V22_T_led, V22_T_nx, SMTT(5)

<2>frame. UNCHANGED <<gen,hd,hp,nx,xr,xg,xd,xdst,xsrc,xlt,iv,hw,hok,xk,drep,dsucc>>
 BY ONLY <1>eWwx44EIR4QSvS, <1>vQJzBLUzrPuIfufn, Sizes, Location, Design, SMTT(5)
<2>effect. PICK x \in led[p] : iv[x]="failret" /\ net'=net \cup {Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)}
 BY ONLY <1>eWwx44EIR4QSvS, <1>SNPHIgYK, Sizes, Location, Design, SMTT(5)
<2>index. x \in Xids /\ x \in Int /\ x<nx
 <3>domain. x \in Xids
  BY ONLY <1>eWwx44EIR4QSvS, <2>type, <2>effect, SMTT(5)
 <3>allocated. x<nx
  BY ONLY <1>eWwx44EIR4QSvS, <2>old, <2>effect, SMTT(5) DEF K4
 <3>qed. QED BY ONLY <3>domain, <3>allocated, SMTT(5) DEF Xids
<2>generation. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x]<=gen[xr[x]]
 BY ONLY <2>type, <2>old, <2>index, SMTT(5) DEF K2
<2>existing. ASSUME NEW m \in net PROVE MI(m)'
 BY ONLY <2>old, <2>frame, <2>existing, SMTT(5) DEF K12, MI, CqeHw
<2>new. ASSUME NEW m, m=Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)
        PROVE MI(m)'
 BY ONLY <2>new, <2>frame, <2>generation, SMTT(5) DEF MI, Msg
<2>message. ASSUME NEW m \in net' PROVE MI(m)'
 <3>old. CASE m \in net
  BY ONLY <2>existing, <3>old, SMTT(5)
 <3>new. CASE m=Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)
  BY ONLY <2>new, <3>new, SMTT(5)
 <3>qed. QED BY ONLY <2>effect, <2>message, <3>old, <3>new, SMTT(5)
<2>qed. QED BY ONLY <2>message, ZenonT(5) DEF K12, MI

\* T2M-END R2M1555_PdRPPP_PdCell_PDrainLibFail_K12

\* T2M-SCOPE R2M1556_PdRPPP_PdCell_PDrainLibFail_K16

<1>FxWdQ2rp7EoZKd.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p)
  PROVE K16'
<2> USE ONLY <1>FxWdQ2rp7EoZKd, Sizes, Location, Design
<2>1. K16 /\ DpA4 /\ dcfPK /\ vS7em /\ AydA /\ bFwlN /\ vRZWI /\ IwCp /\ OyyWS /\ rO4YE /\ nNeM /\ q1Ohy /\ Xc_ngV /\ h9WLgd /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. pst[p] = "drain" /\ pst' = [pst EXCEPT ![p] = "quar"]
        /\ UNCHANGED <<pr,pgn,plt,led,sled,prefc,rtV,instV,recV,ptl,pvis,sfly,xV,ghV>>
  BY <1>SNPHIgYK, <1>vQJzBLUzrPuIfufn, SMTT(10), Sizes, Location, Design DEF rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
<2>3. PICK x \in led[p] : /\ xk[x] = "wr" /\ xsrc[x] = p /\ iv[x] = "failret"
                        /\ pqp' = [pqp EXCEPT ![p] = xd[x]]
                        /\ net' = net \cup {Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)}
  BY <1>SNPHIgYK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Sizes, Design, Location, <1>Ug4VwS, SMTT(10) DEF GrownP, InFl, IsD, K16, NoWriteInto, DpA4, dcfPK, vS7em, AydA, bFwlN, vRZWI, IwCp, OyyWS, rO4YE, nNeM, q1Ohy, Xc_ngV, h9WLgd, JjZ1PO, Writing, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
\* T2M-END R2M1556_PdRPPP_PdCell_PDrainLibFail_K16

\* T2M-SCOPE R2M1557_PdRPPP_PdCell_PDrainLibFail_K4

<1>xLKF2FXd4bZlB.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p)
  PROVE K4'
<2> USE ONLY <1>xLKF2FXd4bZlB, Sizes, Location, Design
<2>1. K4 /\ fr1A /\ dcfPK /\ SHJS /\ vRZWI /\ OyyWS /\ h9WLgd /\ JjZ1PO /\ ok5g /\ Uzgo58 /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K4, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. pst[p] = "drain" /\ pst' = [pst EXCEPT ![p] = "quar"]
        /\ UNCHANGED <<pr,pgn,plt,led,sled,prefc,rtV,instV,recV,ptl,pvis,sfly,xV,ghV>>
  BY <1>SNPHIgYK, <1>vQJzBLUzrPuIfufn, SMTT(10), Sizes, Location, Design DEF rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
<2>3. PICK x \in led[p] : /\ xk[x] = "wr" /\ xsrc[x] = p /\ iv[x] = "failret"
                        /\ pqp' = [pqp EXCEPT ![p] = xd[x]]
                        /\ net' = net \cup {Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)}
  BY <1>SNPHIgYK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Sizes, Design, Location, <1>Ug4VwS, SMTT(10) DEF ExpPage, InitPage, K4, fr1A, dcfPK, SHJS, vRZWI, OyyWS, h9WLgd, JjZ1PO, ok5g, Uzgo58, PD2ZN, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
\* T2M-END R2M1557_PdRPPP_PdCell_PDrainLibFail_K4

\* T2M-SCOPE R2M1558_PdRPPP_PdCell_PDrainLibFail_K5

<1>jyQVYcJ4bP1AK.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p)
  PROVE K5'
<2> USE ONLY <1>jyQVYcJ4bP1AK, Sizes, Location, Design
<2>1. K5 /\ dcfPK /\ vS7em /\ vRZWI /\ IwCp /\ OyyWS /\ h9WLgd /\ CXAy /\ a1R5
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. pst[p] = "drain" /\ pst' = [pst EXCEPT ![p] = "quar"]
        /\ UNCHANGED <<pr,pgn,plt,led,sled,prefc,rtV,instV,recV,ptl,pvis,sfly,xV,ghV>>
  BY <1>SNPHIgYK, <1>vQJzBLUzrPuIfufn, SMTT(10), Sizes, Location, Design DEF rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
<2>3. PICK x \in led[p] : /\ xk[x] = "wr" /\ xsrc[x] = p /\ iv[x] = "failret"
                        /\ pqp' = [pqp EXCEPT ![p] = xd[x]]
                        /\ net' = net \cup {Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)}
  BY <1>SNPHIgYK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Sizes, Design, Location, <1>Ug4VwS, SMTT(10) DEF K5, OwnedBy, dcfPK, vS7em, vRZWI, IwCp, OyyWS, h9WLgd, CXAy, a1R5, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
\* T2M-END R2M1558_PdRPPP_PdCell_PDrainLibFail_K5


<1>jRfmn.         K7 <=> \A p \in Pages : OjcUPgq(p)
  BY ZenonT(10), Sizes, Location, Design DEF K7, OjcUPgq, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d4BZsgEKv.         K7' <=> \A p \in Pages : OjcUPgq(p)'
  BY ZenonT(10), Sizes, Location, Design DEF K7, OjcUPgq, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iD8NH5iaR.        
  UNCHANGED <<ph,rpg>> => \A i,r,p : Maps(i,r,p)' = Maps(i,r,p)
  BY ZenonT(10), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZYWtfi2oR.        
  UNCHANGED <<ph,rhit,rpg>> => \A p : NHits(p)' = NHits(p)
  BY ZenonT(10), Sizes, Location, Design DEF NHits, Sizes, Location, Design
\* T2M-END R2M1560_PdRPPP_PdPageObservationFrame


<1>yQvsqFULBF9YV.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p)
  PROVE K7'
<2> USE ONLY <1>yQvsqFULBF9YV, Sizes, Location, Design
<2>1. K7 /\ K1 /\ K2 /\ K4 /\ dcfPK /\ OyyWS /\ vRZWI
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K4, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. pst[p] = "drain" /\ pst' = [pst EXCEPT ![p] = "quar"]
        /\ UNCHANGED <<pr,pgn,plt,led,sled,prefc,rtV,instV,recV,ptl,pvis,sfly,xV,ghV>>
  BY <1>SNPHIgYK, <1>vQJzBLUzrPuIfufn, SMTT(10), Sizes, Location, Design DEF rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
<2>3. PICK x \in led[p] : /\ xk[x] = "wr" /\ xsrc[x] = p /\ iv[x] = "failret"
                        /\ pqp' = [pqp EXCEPT ![p] = xd[x]]
                        /\ net' = net \cup {Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)}
  BY <1>SNPHIgYK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. x \in Xids /\ x < nx
  BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K4, dcfPK, Sizes, Location, Design
<2>5. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>6. xd[x] \in Inst
  BY <2>1, <2>5, Sizes, SMTT(10), Location, Design DEF K1, DInst, Inst, NL, Sizes, Location, Design
<2>7. SUFFICES ASSUME NEW q \in Pages PROVE OjcUPgq(q)'
  BY <1>d4BZsgEKv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>8. OjcUPgq(q)
  BY <2>1, <1>jRfmn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>9. QED
  <3>1. (ptl[q] >= 0)'
    BY <2>1, <2>2, <2>3, <2>6, <2>8, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, KPinned, OyyWS, vRZWI, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
  <3>2. (pst[q] = "free" => (pr[q] = 0 /\ pgn[q] = 0 /\ plt[q] = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ prefc[q] = 0 /\ pqp[q] = 0))'
    BY <2>1, <2>2, <2>3, <2>6, <2>8, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, KPinned, OyyWS, vRZWI, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
  <3>3. (pst[q] \in {"priv", "drain", "quar"} => (pr[q] \in Rq /\ pgn[q] \in Gens /\ pgn[q] <= gen[pr[q]]))'
    BY <2>1, <2>2, <2>3, <2>6, <2>8, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, KPinned, OyyWS, vRZWI, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
  <3>4. (pst[q] = "quar" => pqp[q] \in Inst)'
    BY <2>1, <2>2, <2>3, <2>6, <2>8, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, KPinned, OyyWS, vRZWI, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
  <3>5. (pst[q] # "quar" => pqp[q] = 0)'
    BY <2>1, <2>2, <2>3, <2>6, <2>8, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, KPinned, OyyWS, vRZWI, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
  <3>6. (pst[q] # "shared" => prefc[q] = 0)'
    BY <2>1, <2>2, <2>3, <2>6, <2>8, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, KPinned, OyyWS, vRZWI, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
  <3>7. (pst[q] = "shared" => (IsD(Loc(q)) /\ led[q] = {} /\ ptl[q] = PS /\ prefc[q] = NHits(q)))'
    BY <2>1, <2>2, <2>3, <2>6, <2>8, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, KPinned, OyyWS, vRZWI, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
  <3>8. (pst[q] = "drain" => (led[q] # {} \/ sled[q] # {} \/ KPinned(q)))'
    BY <2>1, <2>2, <2>3, <2>6, <2>8, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, KPinned, OyyWS, vRZWI, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
  <3>9. (pst[q] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(q), r, q))'
    BY <2>1, <2>2, <2>3, <2>6, <2>8, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, KPinned, OyyWS, vRZWI, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
  <3>10. (pst[q] = "priv" => ( (Maps(Loc(q), pr[q], q) /\ rg[Loc(q)][pr[q]] = pgn[q] /\ ~rhit[Loc(q)][pr[q]]) \/ GrownP(q)))'
    BY <2>1, <2>2, <2>3, <2>6, <2>8, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF OjcUPgq, GrownP, KPinned, OyyWS, vRZWI, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
  <3>11. QED BY <3>1, <3>2, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9, <3>10, ZenonT(10), Sizes, Location, Design DEF OjcUPgq, Sizes, Location, Design
\* T2M-END R2M1561_PdRPPP_PdCell_PDrainLibFail_K7


<1>UVsLQ21enOujJ.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p)
  PROVE K9'
<2> USE ONLY <1>UVsLQ21enOujJ, Sizes, Location, Design
<2>1. K9 /\ K7 /\ K8 /\ K16 /\ Q1j7VI /\ AEZsS /\ RwXY /\ O0Gm /\ DpA4 /\ fr1A /\ m1zx9S /\ c02OO /\ dcfPK /\ SHJS /\ vS7em /\ AydA /\ bFwlN /\ vRZWI /\ IwCp /\ p1YmMe5 /\ OyyWS /\ rO4YE /\ Bq5Edl /\ nNeM /\ EYS1sP /\ E1MnW /\ q1Ohy /\ QC9Q /\ Xc_ngV /\ h9WLgd /\ JjZ1PO /\ CXAy /\ OfQy9 /\ a1R5 /\ Uzgo58
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. pst[p] = "drain" /\ pst' = [pst EXCEPT ![p] = "quar"]
        /\ UNCHANGED <<pr,pgn,plt,led,sled,prefc,rtV,instV,recV,ptl,pvis,sfly,xV,ghV>>
  BY <1>SNPHIgYK, <1>vQJzBLUzrPuIfufn, SMTT(10), Sizes, Location, Design DEF rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
<2>3. PICK x \in led[p] : /\ xk[x] = "wr" /\ xsrc[x] = p /\ iv[x] = "failret"
                        /\ pqp' = [pqp EXCEPT ![p] = xd[x]]
                        /\ net' = net \cup {Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)}
  BY <1>SNPHIgYK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Sizes, Design, Location, <1>Ug4VwS, SMTT(10) DEF Active, GrownP, InFl, IsD, IsP, K16, K7, K8, K9, KPinned, Maps, NHits, NoWriteInto, OwnedBy, Q1j7VI, AEZsS, RwXY, O0Gm, DpA4, fr1A, m1zx9S, c02OO, dcfPK, SHJS, vS7em, AydA, bFwlN, vRZWI, IwCp, p1YmMe5, OyyWS, rO4YE, Bq5Edl, nNeM, EYS1sP, E1MnW, q1Ohy, QC9Q, Xc_ngV, h9WLgd, JjZ1PO, CXAy, OfQy9, a1R5, Uzgo58, Writing, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
\* T2M-END R2M1563_PdRPPP_PdCell_PDrainLibFail_K9

\* T2M-SCOPE R2M1564_PdRPPP_PdCell_PDrainLibFail_QuarNeverMapped

<1>TTf4N2M2ZrLBPMmDNPCQXU2UXq.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>TTf4N2M2ZrLBPMmDNPCQXU2UXq, Sizes, Location, Design
<2>1. QuarNeverMapped /\ K7 /\ K8 /\ K16 /\ AEZsS /\ RwXY /\ O0Gm /\ DpA4 /\ fr1A /\ m1zx9S /\ c02OO /\ dcfPK /\ SHJS /\ vS7em /\ AydA /\ bFwlN /\ vRZWI /\ IwCp /\ p1YmMe5 /\ OyyWS /\ rO4YE /\ nNeM /\ EYS1sP /\ E1MnW /\ q1Ohy /\ QC9Q /\ Xc_ngV /\ h9WLgd /\ JjZ1PO /\ CXAy /\ OfQy9 /\ a1R5 /\ Uzgo58
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K16, V21_Inv_K7, V21_Inv_K8, V21_Inv_QuarNeverMapped, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. pst[p] = "drain" /\ pst' = [pst EXCEPT ![p] = "quar"]
        /\ UNCHANGED <<pr,pgn,plt,led,sled,prefc,rtV,instV,recV,ptl,pvis,sfly,xV,ghV>>
  BY <1>SNPHIgYK, <1>vQJzBLUzrPuIfufn, SMTT(10), Sizes, Location, Design DEF rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
<2>3. PICK x \in led[p] : /\ xk[x] = "wr" /\ xsrc[x] = p /\ iv[x] = "failret"
                        /\ pqp' = [pqp EXCEPT ![p] = xd[x]]
                        /\ net' = net \cup {Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)}
  BY <1>SNPHIgYK, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Sizes, Design, Location, <1>Ug4VwS, SMTT(10) DEF Active, GrownP, InFl, IsD, IsP, K16, K7, K8, KPinned, Maps, NHits, NoWriteInto, OwnedBy, QuarNeverMapped, AEZsS, RwXY, O0Gm, DpA4, fr1A, m1zx9S, c02OO, dcfPK, SHJS, vS7em, AydA, bFwlN, vRZWI, IwCp, p1YmMe5, OyyWS, rO4YE, nNeM, EYS1sP, E1MnW, q1Ohy, QC9Q, Xc_ngV, h9WLgd, JjZ1PO, CXAy, OfQy9, a1R5, Uzgo58, Writing, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
\* T2M-END R2M1564_PdRPPP_PdCell_PDrainLibFail_QuarNeverMapped

\* T2M-SCOPE R2M1565_PdRPPP_PdCell_PDrainLibFail_QuarNoReg

<1>UbWzubaMfn8b5pJJCOTd.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p)
  PROVE QuarNoReg'
<2> USE ONLY <1>UbWzubaMfn8b5pJJCOTd, Sizes, Location, Design
<2>old. QuarNoReg /\ K4 /\ K5 /\ S2
 BY ONLY <1>UbWzubaMfn8b5pJJCOTd, V21_Inv_QuarNoReg, V21_Inv_K4, V21_Inv_K5, V21_Inv_S2, Sizes, Location, Design, SMTT(5)
<2>type. led \in [Pages -> SUBSET Xids] /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>UbWzubaMfn8b5pJJCOTd, V22_T_led, V22_T_pst, SMTT(5)

<2>frame. UNCHANGED <<led,iv>>
 BY ONLY <1>UbWzubaMfn8b5pJJCOTd, <1>vQJzBLUzrPuIfufn, <1>SNPHIgYK, Sizes, Location, Design, SMTT(5)
<2>effect. pst'=[pst EXCEPT ![p]="quar"]
 BY ONLY <1>UbWzubaMfn8b5pJJCOTd, <1>SNPHIgYK, Sizes, Location, Design, SMTT(5)
<2>witness. PICK x \in led[p] : iv[x]="failret"
 BY ONLY <1>UbWzubaMfn8b5pJJCOTd, <1>SNPHIgYK, Sizes, Location, Design, SMTT(5)
<2>singleton. ASSUME NEW y \in led[p] PROVE y=x
 <3>indices. x \in Xids /\ y \in Xids
  BY ONLY <1>UbWzubaMfn8b5pJJCOTd, <2>type, <2>witness, <2>singleton, SMTT(5)
 <3>allocated. x<nx /\ y<nx
  BY ONLY <1>UbWzubaMfn8b5pJJCOTd, <2>old, <2>witness, <2>singleton, SMTT(5) DEF K4
 <3>owners. OwnedBy(p,xr[x],xg[x]) /\ OwnedBy(p,xr[y],xg[y])
  BY ONLY <1>UbWzubaMfn8b5pJJCOTd, <2>old, <2>witness, <2>singleton, SMTT(5) DEF K5
 <3>same. xr[x]=xr[y] /\ xg[x]=xg[y]
  BY ONLY <3>owners, SMTT(5) DEF OwnedBy
 <3>qed. QED BY ONLY <2>old, <3>indices, <3>allocated, <3>same, SMTT(5) DEF S2
<2>page. ASSUME NEW q \in Pages, IsP(Loc(q)), pst'[q]="quar", NEW y \in led'[q]
         PROVE iv'[y] # "reg"
 <3>same. CASE q=p
  BY ONLY <2>page, <3>same, <2>singleton, <2>witness, <2>frame, SMTT(5)
 <3>other. CASE q # p
  <4>state. pst[q]="quar"
   BY ONLY <2>page, <3>other, <2>type, <2>effect, SMTT(5)
  <4>qed. QED BY ONLY <2>page, <2>old, <2>frame, <4>state, SMTT(5) DEF QuarNoReg
 <3>qed. QED BY ONLY <3>same, <3>other, SMTT(5)
<2>qed. QED BY ONLY <2>page, SMTT(5) DEF QuarNoReg

\* T2M-END R2M1565_PdRPPP_PdCell_PDrainLibFail_QuarNoReg


<1>GYgqKizBcHZ7hK5.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
  PROVE K4'
  BY ONLY <1>GYgqKizBcHZ7hK5, Sizes, Location, Design, <1>xLKF2FXd4bZlB, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HL5IBrmyzcBjIvs.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
  PROVE K5'
  BY ONLY <1>HL5IBrmyzcBjIvs, Sizes, Location, Design, <1>jyQVYcJ4bP1AK, V21_Inv_K5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FHhD4ElRIbZ6vXY.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
  PROVE K7'
  BY ONLY <1>FHhD4ElRIbZ6vXY, Sizes, Location, Design, <1>yQvsqFULBF9YV, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DSJLh3XqONTGxrB.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
  PROVE K9'
  BY ONLY <1>DSJLh3XqONTGxrB, Sizes, Location, Design, <1>UVsLQ21enOujJ, V21_Inv_K9 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cPuVYxVbX37q9P0o.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
  PROVE K11'
  BY ONLY <1>cPuVYxVbX37q9P0o, Sizes, Location, Design, <1>eODlmBDehG7GF3, V21_Inv_K11 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Mg89VaKobFU1sSk4.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
  PROVE K12'
  BY ONLY <1>Mg89VaKobFU1sSk4, Sizes, Location, Design, <1>eWwx44EIR4QSvS, V21_Inv_K12 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WdjprE56TE0SCsgi.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
  PROVE K16'
  BY ONLY <1>WdjprE56TE0SCsgi, Sizes, Location, Design, <1>FxWdQ2rp7EoZKd, V21_Inv_K16 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eifenHhFZ7gwoEfai4U1QgP2noxB.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>eifenHhFZ7gwoEfai4U1QgP2noxB, Sizes, Location, Design, <1>TTf4N2M2ZrLBPMmDNPCQXU2UXq, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zsWly5AFMx8A7KcZTO2HTB.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>zsWly5AFMx8A7KcZTO2HTB, Sizes, Location, Design, <1>UbWzubaMfn8b5pJJCOTd, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1566_PdRPPdPAgg_PDrainLibFail


<1>o0ug5dmdGVA.        
 ASSUME PinInv, SFollow, UNCHANGED <<kpin,krs,gen>>, RP_RecordProgress, RP_RecordReady, RP_NoneFrame
 PROVE P_SI1'
<2> USE ONLY <1>o0ug5dmdGVA, Sizes, Location, Design
<2>1. (B2 => SI1 /\ SI4) /\ STypeOK
 BY V21_Inv_P_SI1, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI4, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF P_SI1, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RP_SFollowEffect BY <2>3, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A i \in PInst,r \in Rq :
  /\ (ph'[i][r]="none" => smap'[i][r]=0 /\ ~schoice'[i][r])
  /\ (smap'[i][r] # 0 => schoice'[i][r] /\ Loc(smap'[i][r])=i)
 BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF SI1, RP_SFollowEffect, RP_New, RP_NoneFrame, Sizes, Location, Design
 <3>3. \A i \in PInst,r \in Rq :
   (Active(i,r)' /\ smap'[i][r] \in SPages /\ spst'[smap'[i][r]]="shared") => SH(i,r,rg'[i][r],smap'[i][r]) \in rpgS'
  <4>1. ASSUME NEW i \in PInst, NEW r \in Rq,
         Active(i,r)', smap'[i][r] \in SPages, spst'[smap'[i][r]]="shared"
         PROVE SH(i,r,rg'[i][r],smap'[i][r]) \in rpgS'
   <5>1. rg'[i][r]=rg[i][r] /\ smap'[i][r]=smap[i][r]
    BY <3>1, <4>1, Sizes, SMTT(10), Location, Design DEF RP_SFollowEffect, RP_New, SPages, Sizes, Location, Design
   <5>2. Active(i,r) /\ spst[smap[i][r]]="shared"
    BY <2>3, <4>1, <5>1, <1>irl4UaCCkNMPiRRv, Sizes, Location, Design DEF RP_RecordProgress, Sizes, Location, Design
   <5>3. SH(i,r,rg[i][r],smap[i][r]) \in rpgS
    BY <2>1, <2>3, <4>1, <5>1, <5>2, Sizes, Location, Design DEF SI1, Sizes, Location, Design
   <5>4. RP_HLive(SH(i,r,rg'[i][r],smap'[i][r]))
    BY <4>1, SMTT(10), Sizes, Location, Design DEF RP_HLive, SH, Active, Sizes, Location, Design
   <5>5. QED BY <3>1, <5>1, <5>3, <5>4, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_H2, Sizes, Location, Design
  <4>2. QED BY <4>1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. \A i \in PInst,r \in Rq : ph'[i][r] \in {"reg","sent","exp"} => SSendReady(i,r)'
  <4>1. ASSUME NEW i \in PInst, NEW r \in Rq, ph'[i][r] \in {"reg","sent","exp"}
         PROVE SSendReady(i,r)'
   <5>1. rg'[i][r]=rg[i][r] /\ SSendReady(i,r)
    BY <2>3, <4>1, Sizes, Location, Design DEF RP_RecordReady, Sizes, Location, Design
   <5>2. smap'[i][r]=smap[i][r] /\ schoice'[i][r]=schoice[i][r]
    BY <3>1, <5>1, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_New, Sizes, Location, Design
   <5>3. smap[i][r] # 0 => smap[i][r] \in SPages /\ spst[smap[i][r]]="shared"
    BY <2>1, <5>1, Design, SMTT(10), Sizes, Location DEF STypeOK, SSendReady, Sizes, Location, Design
   <5>4. QED BY <2>1, <2>3, <5>1, <5>2, <5>3, <1>Ua3eOhQVTzEuP0Q, SMTT(10), Sizes, Location, Design DEF SSendReady, Sizes, Location, Design
  <4>2. QED BY <4>1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>5. \A h \in rpgS' :
  /\ Loc(h[4])=h[1] /\ h[3]<=gen'[h[2]]
  /\ (rg'[h[1]][h[2]]=h[3] /\ Active(h[1],h[2])' /\ smap'[h[1]][h[2]]=h[4]) \/ SHPin(h)'
  <4>1. ASSUME NEW h \in rpgS'
         PROVE /\ Loc(h[4])=h[1] /\ h[3]<=gen'[h[2]]
               /\ (rg'[h[1]][h[2]]=h[3] /\ Active(h[1],h[2])' /\ smap'[h[1]][h[2]]=h[4]) \/ SHPin(h)'
   <5>1. h \in rpgS /\ (RP_HLive(h) \/ RP_HPin(h))
    BY <3>1, <4>1, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_H2, Sizes, Location, Design
   <5>2. h[1] \in PInst /\ h[2] \in Rq
    BY <2>1, <5>1, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
   <5>3. Loc(h[4])=h[1] /\ h[3]<=gen[h[2]]
         /\ ((rg[h[1]][h[2]]=h[3] /\ Active(h[1],h[2]) /\ smap[h[1]][h[2]]=h[4]) \/ SHPin(h))
    BY <2>1, <2>3, <5>1, Sizes, Location, Design DEF SI1, Sizes, Location, Design
   <5>4. SHPin(h) <=> RP_HPin(h)
    BY SMTT(10), Sizes, Location, Design DEF SHPin, RP_HPin, Sizes, Location, Design
   <5>5. QED BY <3>1, <5>1, <5>2, <5>3, <5>4, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_New, RP_HLive, RP_HPin, SHPin, Active, Sizes, Location, Design
  <4>2. QED BY <4>1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>6. QED BY <2>3, <3>2, <3>3, <3>4, <3>5, Sizes, Location, Design DEF P_SI1, SI1, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1786_PdRPSI1


<1>loozsNsy0AKQrMtUZSpJbJ5Kill.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE UNCHANGED gen /\ RP_RecordReady /\ RP_NoneFrame
<2> USE ONLY <1>loozsNsy0AKQrMtUZSpJbJ5Kill, Sizes, Location, Design
<2>1. B2 => \A j \in PInst,u \in Rq : ph[j][u] \in {"reg","sent","exp"} => SSendReady(j,u)
 BY V21_Inv_P_SI1, Sizes, Location, Design DEF P_SI1, SI1, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>loozsNsy0AKQrMtUZSpJbJ5Kill, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_RecordReady, RP_NoneFrame, PInst, Inst, NL, EvidenceAt, PDrainLibFail, PDrainLibFailBroken, PDrainLibFailSafe, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YQz20TtdhpvnCuJpt.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE P_SI1'
 BY ONLY <1>YQz20TtdhpvnCuJpt, Sizes, Location, Design, <1>loozsNsy0AKQrMtUZSpJbJ5Kill, <1>LpZJM1jKAnh2ElE4IT1r53pEI8M4, <1>z91uDrKVH4PBOpq3hcKm, <1>o0ug5dmdGVA DEF Sizes, Location, Design
\* T2M-END R2M1792_PdRPSI1_PDrainLibFail


<1>gbQIouqx69WSspdCjDpG.        
  BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>> => BaseSendOwnLanded'
  BY SMTT(5), Sizes, Location, Design DEF BaseSendOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yvMqr6rZY3gLa0vSYvAK.        
  ASSUME NEW p \in Pages, PDrainLibFail(p)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>yvMqr6rZY3gLa0vSYvAK, Sizes, Location, Design, ZenonT(5) DEF PDrainLibFail, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, PDrainLibFailSafe, PDrainLibFailBroken, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H9JVAFo2LuLNBj2Kak5wyA0tQmvc.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p)
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>H9JVAFo2LuLNBj2Kak5wyA0tQmvc, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>>
  BY SMTT(5), <1>yvMqr6rZY3gLa0vSYvAK, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, ReadOwnLanded, SealOnlyLanded, SendOwnLanded, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>gbQIouqx69WSspdCjDpG, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1878_PdRPBPP_PdPDrainLibFailFrames

\* T2M-SCOPE R2M1880_PdRPBPP_PdPDrainLibFailStepsSupport
\* T2M-BODY R2M1880_PdRPBPP_PdPDrainLibFailStepsSupport
\* T2M-LOCAL-VISIBILITY

<1>wOtJFHlp4bX4qAsPAcp1XtZ6gCt.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE SendOwnLanded'
 BY ONLY <1>wOtJFHlp4bX4qAsPAcp1XtZ6gCt, Sizes, Location, Design, <1>H9JVAFo2LuLNBj2Kak5wyA0tQmvc, <1>hoPeOQNPi9k79ip6pdzV2aEP5f DEF SendOwnLanded, RP_SharedSend, Sizes, Location, Design
\* T2M-END R2M1883_PdRPSafety_PDrainLibFail


<1>NU8zGD7bQ5u9BXIjl.        
 ASSUME K1', K2', K3', K4', QuarNoReg', nx' \in 1..(MX+1)
 PROVE RP_RegSourceSafe
<2> USE ONLY <1>NU8zGD7bQ5u9BXIjl, Sizes, Location, Design
<2>1. ASSUME NEW x \in Xids, iv'[x]="reg"
       PROVE xsrc'[x] \in Pages /\ pst'[xsrc'[x]] # "quar"
 <3>1. x<nx' /\ xk'[x]="wr" /\ xst'[x]="posted"
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, K3, Xids, Sizes, Location, Design
 <3>2. xr'[x] \in Rq /\ xg'[x] \in Gens /\ xg'[x]<=gen'[xr'[x]] /\ xp'[x]=hp'[xr'[x]][xg'[x]]
       /\ xsrc'[x] \in Pages /\ Loc(xsrc'[x])=xp'[x]
  BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF K2, InitPage, InitInst, Sizes, Location, Design
 <3>3. xp'[x] \in PInst /\ IsP(Loc(xsrc'[x]))
  BY <3>2, Sizes, SMTT(10), Location, Design DEF K1, PInst, IsP, Sizes, Location, Design
 <3>4. x \in led'[xsrc'[x]]
  BY <2>1, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF K4, InitPage, Sizes, Location, Design
 <3>5. QED BY <2>1, <3>2, <3>3, <3>4, Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF RP_RegSourceSafe, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KvDgRwgd9SE.        
 ASSUME PinInv, SFollow, RP_RegPrelude, RP_RegSourceSafe
 PROVE SI7'
<2> USE ONLY <1>KvDgRwgd9SE, Sizes, Location, Design
<2>1. SI7 BY V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF SI7, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RP_SFollowEffect BY <2>3, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW x \in Xids, iv'[x]="reg"
        PROVE x \in sentry'
  <4>1. xk[x]="wr" /\ (RP_Posted(x) \/ (iv[x]="reg" /\ xsrc'[x]=xsrc[x]))
   BY <3>2, Sizes, Location, Design DEF RP_RegPrelude, Sizes, Location, Design
  <4>2. x \in sentry \/ RP_Posted(x)
   BY <2>1, <2>3, <3>2, <4>1, Sizes, Location, Design DEF SI7, Sizes, Location, Design
  <4>3. ~RP_Close(x) /\ ~RP_Quarantine(x)
   BY <3>2, <4>1, Sizes, SMTT(10), Location, Design DEF RP_RegSourceSafe, RP_Posted, RP_Close, RP_Quarantine, Pages, Sizes, Location, Design
  <4>4. QED BY <3>1, <3>2, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_E2, Sizes, Location, Design
 <3>3. QED BY <2>3, <3>2, Sizes, Location, Design DEF SI7, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1819_PdRPSI7


<1>lxSC2A36quEnlKOJdqfAaJZz.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE RP_RegPrelude
<2> USE ONLY <1>lxSC2A36quEnlKOJdqfAaJZz, Sizes, Location, Design
<2>1. K3
 BY ONLY <1>lxSC2A36quEnlKOJdqfAaJZz, V21_Inv_K3, Sizes, Location, Design, SMTT(5)
<2>2. UNCHANGED xsrc /\ (\A y \in Xids : iv'[y]="reg" => iv[y]="reg")
 BY ONLY <1>lxSC2A36quEnlKOJdqfAaJZz, SMTT(10) DEF PDrainLibFail, xV, PDrainLibFailBroken, PDrainLibFailSafe
<2>3. \A y \in Xids : iv'[y]="reg" => xk[y]="wr" /\ iv[y]="reg" /\ xsrc'[y]=xsrc[y]
 BY ONLY <2>1, <2>2, SMTT(5) DEF K3
<2>4. QED BY ONLY <2>3, SMTT(5) DEF RP_RegPrelude

\* T2M-LOCAL-VISIBILITY

<1>JJvvJSHZU7tMsbYrM5X.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE K1'
<2> USE ONLY <1>JJvvJSHZU7tMsbYrM5X, Sizes, Location, Design
<2>1. K1 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K1, EvidenceAt, PDrainLibFail, PDrainLibFailBroken, PDrainLibFailSafe, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vBFMADCxq6PPik6LjLN.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE K2'
<2> USE ONLY <1>vBFMADCxq6PPik6LjLN, Sizes, Location, Design
<2>1. K2 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K2, InitPage, ExpPage, InitInst, ExpInst, EvidenceAt, PDrainLibFail, PDrainLibFailBroken, PDrainLibFailSafe, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D17QQ2vQvKEfjH9FtBY.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE K3'
<2> USE ONLY <1>D17QQ2vQvKEfjH9FtBY, Sizes, Location, Design
<2>1. K3 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF K3, CqeHw, InFl, EvidenceAt, PDrainLibFail, PDrainLibFailBroken, PDrainLibFailSafe, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nZVxQjFilMxLMKF3Ce2.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE K4'
 BY ONLY <1>nZVxQjFilMxLMKF3Ce2, Sizes, Location, Design, <1>GYgqKizBcHZ7hK5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QLf4hoaEOnTwdesbXsaAfmCsup.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>QLf4hoaEOnTwdesbXsaAfmCsup, Sizes, Location, Design, <1>zsWly5AFMx8A7KcZTO2HTB DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>v9JNQdXVoc4lxKzFKaw.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE nx' \in 1..(MX+1)
<2> USE ONLY <1>v9JNQdXVoc4lxKzFKaw, Sizes, Location, Design
<2>1. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>v9JNQdXVoc4lxKzFKaw, V22_T_nx, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF Xids, EvidenceAt, PDrainLibFail, PDrainLibFailBroken, PDrainLibFailSafe, PEnd, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FIodf3SNlVezTbT9C.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE SI7'
<2> USE ONLY <1>FIodf3SNlVezTbT9C, Sizes, Location, Design
<2>1. RP_RegSourceSafe BY <1>JJvvJSHZU7tMsbYrM5X, <1>vBFMADCxq6PPik6LjLN, <1>D17QQ2vQvKEfjH9FtBY, <1>nZVxQjFilMxLMKF3Ce2, <1>QLf4hoaEOnTwdesbXsaAfmCsup, <1>v9JNQdXVoc4lxKzFKaw, <1>NU8zGD7bQ5u9BXIjl, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>lxSC2A36quEnlKOJdqfAaJZz, <1>KvDgRwgd9SE, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1884_PdRPSI7_PDrainLibFail


<1> QED BY <1>FIodf3SNlVezTbT9C, <1>wOtJFHlp4bX4qAsPAcp1XtZ6gCt, <1>zSTjZpsndy91RTw9CITextXYz86aw9, <1>FHhD4ElRIbZ6vXY, <1>YQz20TtdhpvnCuJpt, <1>GYgqKizBcHZ7hK5, <1>HL5IBrmyzcBjIvs, <1>DSJLh3XqONTGxrB, <1>cPuVYxVbX37q9P0o, <1>Mg89VaKobFU1sSk4, <1>WdjprE56TE0SCsgi, <1>eifenHhFZ7gwoEfai4U1QgP2noxB, <1>zsWly5AFMx8A7KcZTO2HTB, <1>Nm5qMo9Qvsxz9H7OY, <1>WcRAN2ul6wWzabo3N, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_PDrainLibFail SHA 8c7c76a9806576aea3679c7a4d09252b882515f924bfddb1cd3696442825aa36
USE DEF PinnedPrivateLocation, Shape_T_led, Shape_T_xd, Shape_T_xg, Shape_T_xr
HIDE DEF Part_PDrainLibFail_02_02, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K11, V21_Inv_K12, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI4, V21_Inv_P_SI6, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReadOwnLanded, V21_Inv_S2, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapPoint, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_hw, V22_T_krs, V22_T_led, V22_T_nx, V22_T_ph, V22_T_pst, V22_T_rg, V22_T_rpgS, V22_T_xsrcP, V22_T_xsrcS
LEMMA ShapeEffect_PDrainLibFail ==
 ASSUME NEW p \in Pages, Sizes, Design, PDrainLibFail(p)
 PROVE \E x \in led[p] : net'=net \cup {Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)}
 BY ONLY PDrainLibFail(p), Sizes, Design, SMTT(5) DEF PDrainLibFail, PDrainLibFailSafe, PDrainLibFailBroken, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_PDrainLibFail ==
 ASSUME NEW p \in Pages, Sizes, Design, IndInv, MessageShape, PDrainLibFail(p)
 PROVE MessageShape'
<1>1. \E x \in led[p] : net'=net \cup {Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)}
 BY ONLY Sizes, Design, PDrainLibFail(p), ShapeEffect_PDrainLibFail
<1>2. led \in [Pages -> SUBSET Xids] /\ xd \in [Xids -> {0} \cup Inst] /\ xg \in [Xids -> 0..MG] /\ xr \in [Xids -> 0..NR]
 BY ONLY IndInv, Shape_T_led, Shape_T_xd, Shape_T_xg, Shape_T_xr
<1>3. QED
 BY ONLY <1>1, <1>2, IndInv, MessageShape, Sizes, PinnedPrivateLocation, SMTT(10)
 DEF MessageShape, Msg, MsgT, Sizes, Rq, Gens, Xids, Pages, Inst, NL, PInst, DInst

\* Complete original body PdDomain_PDrainLibFail SHA 0fa7d7777c6cd524d4bdbb899b56cd39888ddb40b2ff41ac955fda6461c56dfd
USE DEF V21_Inv_MsgXDomain
HIDE DEF PinnedPrivateLocation, ShapeKeep_PDrainLibFail, Shape_T_led, Shape_T_xd, Shape_T_xg, Shape_T_xr
THEOREM DomainKeep_PDrainLibFail ==
 ASSUME NEW p \in Pages, Sizes, Location, Design, PinInv, PDrainLibFail(p)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. \E x \in led[p] : net'=net \cup {Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)}
 BY ONLY Sizes, Location, Design, PinInv, PDrainLibFail(p), ShapeEffect_PDrainLibFail
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_PDrainLibFail_03 SHA 2125a19cfb6f3bcec235594b2f69874d106bed2800ef46abf68a2b0911d8f158
USE DEF V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K13, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_STypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst
HIDE DEF ShapeEffect_PDrainLibFail, V21_Inv_MsgXDomain
THEOREM Group_PDrainLibFail_03 ==
 ASSUME Sizes, Location, Design,
        NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE (K1)' /\ (K2)' /\ (K3)' /\ (K13)' /\ (K14)' /\ (K17)' /\ (S1)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (S5)' /\ (S6)' /\ (GenFiltered)' /\ (OneReply)' /\ (ReplyTruth)' /\ (SharedImmutable)' /\ (EntryQuarantineDisjoint)' /\ (P_B2OffInit)' /\ (MsgXDomain)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE SKXMH9(i,r) == rg'[i][r] # rg[i][r]


           YoZCNdW(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           yRiuUrmy(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           o2PqE(unused) == {h \in rpgS : yRiuUrmy(h) \/ (YoZCNdW(h) /\ Mut # "unrefBeforeKDone")}


           xGwcBEcmY(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           rd1IZu(x) == IF xGwcBEcmY(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           SuEEX(unused) == [x \in Xids |-> IF xGwcBEcmY(x) THEN (IF rd1IZu(x) \in SPages /\ spst[rd1IZu(x)]="shared" THEN {rd1IZu(x)} ELSE {}) ELSE xsrcS[x]]


           XjZJP(unused) == [x \in Xids |-> IF xGwcBEcmY(x) THEN (IF rd1IZu(x) \in SPages /\ spst[rd1IZu(x)]="priv" THEN {rd1IZu(x)} ELSE {}) ELSE xsrcP[x]]


           csjI5RPR(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           ZdeEe4zmp3uag(x) == x \in sentry /\ ~csjI5RPR(x) /\
                     ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           vLn7d(unused) == (sentry \cup {x \in Xids : xGwcBEcmY(x)}) \ {x \in Xids : csjI5RPR(x) \/ ZdeEe4zmp3uag(x)}


           dLu17(unused) == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
                                   UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : ZdeEe4zmp3uag(x)}})


           NXhXrvU9(p) == spst[p]="priv" /\ sown[p] \in Rq /\
                    (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           i08nRBE(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           K9XTdyW(p) == (NXhXrvU9(p) \/ spst[p] \in {"drain","dup"}) /\ ~i08nRBE(p) /\ sready[p] /\ ~(\E x \in vLn7d(0) : p \in XjZJP(0)[x])


           JBL3tE9j(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
                    spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           vuZd9ejUPGa3lV56 == /\ rpgS'=o2PqE(0) /\ xsrcS'=SuEEX(0) /\ xsrcP'=XjZJP(0) /\ sentry'=vLn7d(0) /\ squar'=dLu17(0)
                /\ sprefc'=[p \in SPages |-> sprefc[p]+SRefR(o2PqE(0),p)-SRefR(rpgS,p)
                                    +SRefE(vLn7d(0),SuEEX(0),p)-SRefE(sentry,xsrcS,p)+SRefQ(dLu17(0),p)-SRefQ(squar,p)]
                /\ smap'=[i \in PInst |-> [r \in Rq |-> IF SKXMH9(i,r) THEN 0 ELSE smap[i][r]]]
                /\ schoice'=[i \in PInst |-> [r \in Rq |-> IF SKXMH9(i,r) THEN FALSE ELSE schoice[i][r]]]
                /\ spst'=[p \in SPages |-> IF \E x \in Xids : ZdeEe4zmp3uag(x) /\ p \in xsrcP[x] THEN "quar"
                                    ELSE IF K9XTdyW(p) THEN "free" ELSE IF NXhXrvU9(p) THEN "drain" ELSE spst[p]]
                /\ xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN JBL3tE9j(x) ELSE xprefixOK[x]]
                /\ dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                                    THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                                          (IF hw[x]="issued" THEN xprefixOK[x] ELSE JBL3tE9j(x))
                                    ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
                /\ UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>


<1> HIDE DEF SKXMH9, YoZCNdW, yRiuUrmy, o2PqE, xGwcBEcmY, rd1IZu, SuEEX, XjZJP, csjI5RPR, ZdeEe4zmp3uag, vLn7d, dLu17, NXhXrvU9, i08nRBE, K9XTdyW, JBL3tE9j, vuZd9ejUPGa3lV56

<1>pd2OFU6YkaUFY95tm.        
 ASSUME B2, SFollow
 PROVE vuZd9ejUPGa3lV56
 BY ONLY <1>pd2OFU6YkaUFY95tm, Sizes, Location, Design, ZenonT(10) DEF SFollow, vuZd9ejUPGa3lV56, SKXMH9, YoZCNdW, yRiuUrmy, o2PqE, xGwcBEcmY, rd1IZu, SuEEX, XjZJP, csjI5RPR, ZdeEe4zmp3uag, vLn7d, dLu17, NXhXrvU9, i08nRBE, K9XTdyW, JBL3tE9j, Sizes, Location, Design


<1>WgHhghZX0y.        
 ASSUME PinInv, SFollow
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>WgHhghZX0y, Sizes, Location, Design
<2>1. EntryQuarantineDisjoint /\ STypeOK /\ (B2 => SI4 /\ SI5)
 BY V21_Inv_EntryQuarantineDisjoint, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI4, P_SI5, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
<2>3. CASE B2
 <3>1. vuZd9ejUPGa3lV56 BY <2>3, <1>pd2OFU6YkaUFY95tm, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW x \in sentry', NEW p \in xsrcS'[x]
        PROVE <<x,p>> \notin squar'
  <4>1. x \in Xids /\ ~ZdeEe4zmp3uag(x) /\ (x \in sentry \/ xGwcBEcmY(x))
   BY <2>1, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF STypeOK, vuZd9ejUPGa3lV56, vLn7d, Sizes, Location, Design
  <4>2. CASE xGwcBEcmY(x)
   <5>1. xsrcS[x]={}
    BY <2>1, <2>3, <4>1, <4>2, Sizes, SMTT(10), Location, Design DEF SI4, xGwcBEcmY, Pages, Sizes, Location, Design
   <5>2. <<x,p>> \notin squar
    BY <2>1, <2>3, <5>1, SMTT(10), Sizes, Location, Design DEF SI5, Sizes, Location, Design
   <5>3. QED BY <3>1, <4>1, <5>2, SMTT(10), Sizes, Location, Design DEF vuZd9ejUPGa3lV56, dLu17, Sizes, Location, Design
  <4>3. CASE ~xGwcBEcmY(x)
   <5>1. x \in sentry /\ p \in xsrcS[x]
    BY <3>1, <3>2, <4>1, <4>3, SMTT(10), Sizes, Location, Design DEF vuZd9ejUPGa3lV56, SuEEX, Sizes, Location, Design
   <5>2. <<x,p>> \notin squar
    BY <2>1, <2>3, <5>1, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
   <5>3. QED BY <3>1, <4>1, <5>2, SMTT(10), Sizes, Location, Design DEF vuZd9ejUPGa3lV56, dLu17, Sizes, Location, Design
  <4>4. QED BY <4>2, <4>3, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>3, <3>2, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>lEkUkjjITHMGqIBqciDG6OBWyueF8sdtwKhlQv.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE EntryQuarantineDisjoint'
 BY ONLY <1>lEkUkjjITHMGqIBqciDG6OBWyueF8sdtwKhlQv, Sizes, Location, Design, <1>WgHhghZX0y DEF Sizes, Location, Design


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

<1>iJegEU6SrRk1cI1pt2DWgt60Y1Rzb.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>iJegEU6SrRk1cI1pt2DWgt60Y1Rzb, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>iJegEU6SrRk1cI1pt2DWgt60Y1Rzb, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF PDrainLibFail, PDrainLibFailBroken, PDrainLibFailSafe, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LfBEVKjsSjWWEX2GiMbcBFR.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>LfBEVKjsSjWWEX2GiMbcBFR, Sizes, Location, Design, DomainKeep_PDrainLibFail, SMTT(5)
\* T2M-END R2M0304_PdPDomain_PDrainLibFail


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


<1>XnYly5EW.        
 OneReply /\ UNCHANGED <<crep, drep>> => OneReply'
 BY IsaT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
\* T2M-END R2M0348_PdPF_OneReply


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


<1>ps.        
 S1 /\ UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>> => S1'
 BY IsaT(10), Sizes, Location, Design DEF Active, ExpInst, S1, Sizes, Location, Design
\* T2M-END R2M0341_PdPF_S1

\* T2M-SCOPE R2M0346_PdPF_S6

<1>sk.        
 S6 /\ UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>> => S6'
 BY IsaT(10), Sizes, Location, Design DEF Active, InitInst, InitPage, S6, Sizes, Location, Design
\* T2M-END R2M0346_PdPF_S6


<1>aXu.        
 K17 /\ UNCHANGED <<kpin, krs, ph, rg, rpg>> => K17'
 BY IsaT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
\* T2M-END R2M0340_PdPF_K17


<1>s6g.        
 K13 /\ UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>> => K13'
 BY IsaT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design
\* T2M-END R2M0354_PdPF_K13


<1>Po.        
 S5 /\ UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>> => S5'
 BY IsaT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
\* T2M-END R2M0345_PdPF_S5


<1>KTRX9SQiQqzKRw6VT46Rr.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ph, rd, rg, rhit, rp, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PDrainLibFail, PDrainLibFailBroken, PDrainLibFailSafe, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IATryIRvDpfootmj.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE K1'
<2> USE ONLY <1>IATryIRvDpfootmj, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>C2a8jUk64JiJaiEI.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE K2'
<2> USE ONLY <1>C2a8jUk64JiJaiEI, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zODuxhD94ic2Lrry.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE K3'
<2> USE ONLY <1>zODuxhD94ic2Lrry, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VjKKWQvLPoEvVmzvS.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE K13'
<2> USE ONLY <1>VjKKWQvLPoEvVmzvS, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Flfhty2WAX3jNw17D.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE K14'
<2> USE ONLY <1>Flfhty2WAX3jNw17D, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wzfUBtWCcFcCtIqbV.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE K17'
<2> USE ONLY <1>wzfUBtWCcFcCtIqbV, Sizes, Location, Design
<2>1. K17
 BY V21_Inv_K17, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpg>>
 BY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aXu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VthGtwmYRlf7h7rF.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE S1'
<2> USE ONLY <1>VthGtwmYRlf7h7rF, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>e5Xdndq4xUAzsNOu.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE S2'
<2> USE ONLY <1>e5Xdndq4xUAzsNOu, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TsERkjIYJIVUteog.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE S3'
<2> USE ONLY <1>TsERkjIYJIVUteog, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JZAhDMTbsENKVWiU.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE S4'
<2> USE ONLY <1>JZAhDMTbsENKVWiU, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>C0tQHABippyq5mbZ.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE S5'
<2> USE ONLY <1>C0tQHABippyq5mbZ, Sizes, Location, Design
<2>1. S5
 BY V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
 BY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Po, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CzO9C4GMBmxeVqc8.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE S6'
<2> USE ONLY <1>CzO9C4GMBmxeVqc8, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bR9hDscn97rlgLnKocnEUbiZN.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>bR9hDscn97rlgLnKocnEUbiZN, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gv8rShF80jDiFdopRFkrQ3.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE OneReply'
<2> USE ONLY <1>gv8rShF80jDiFdopRFkrQ3, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uhJe4X7MVrpbgBBZg2boVpA4.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>uhJe4X7MVrpbgBBZg2boVpA4, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>KTRX9SQiQqzKRw6VT46Rr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0401_PdPFrames_PDrainLibFail

\* T2M-SCOPE R2M0486_PdPOff_PDrainLibFail

<1>IN2bZ7ugZLoj0wbUFA7Bc2s.        
 ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>IN2bZ7ugZLoj0wbUFA7Bc2s, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0486_PdPOff_PDrainLibFail


<1> QED BY <1>IATryIRvDpfootmj, <1>C2a8jUk64JiJaiEI, <1>zODuxhD94ic2Lrry, <1>VjKKWQvLPoEvVmzvS, <1>Flfhty2WAX3jNw17D, <1>wzfUBtWCcFcCtIqbV, <1>VthGtwmYRlf7h7rF, <1>e5Xdndq4xUAzsNOu, <1>TsERkjIYJIVUteog, <1>JZAhDMTbsENKVWiU, <1>C0tQHABippyq5mbZ, <1>CzO9C4GMBmxeVqc8, <1>bR9hDscn97rlgLnKocnEUbiZN, <1>gv8rShF80jDiFdopRFkrQ3, <1>uhJe4X7MVrpbgBBZg2boVpA4, <1>iJegEU6SrRk1cI1pt2DWgt60Y1Rzb, <1>lEkUkjjITHMGqIBqciDG6OBWyueF8sdtwKhlQv, <1>IN2bZ7ugZLoj0wbUFA7Bc2s, <1>LfBEVKjsSjWWEX2GiMbcBFR, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_PDrainLibFail_01_01, Part_PDrainLibFail_01_02, Part_PDrainLibFail_02_01, Part_PDrainLibFail_02_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_PDrainLibFail
HIDE DEF DomainKeep_PDrainLibFail, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K13, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_STypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst

THEOREM Step_PDrainLibFail ==
 ASSUME NEW p \in Pages, Sizes, Location, Design, PinInv, PDrainLibFail(p), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Pages, Sizes, Location, Design, PinInv, PDrainLibFail(u), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_PDrainLibFail_01_01, Part_PDrainLibFail_01_02, Part_PDrainLibFail_02_01, Part_PDrainLibFail_02_02, Group_PDrainLibFail_03, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_PDrainLibFail_01_01, Part_PDrainLibFail_01_02, Part_PDrainLibFail_02_01, Part_PDrainLibFail_02_02, Group_PDrainLibFail_03, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, PDrainLibFail(p), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, PDrainLibFail(p), ShapeKeep_PDrainLibFail, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
