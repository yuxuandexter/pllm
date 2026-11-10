---- MODULE PdFinalAction_KDone ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_9ef278c147c12b12, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalPart_KDone_01_01 SHA 9a3f61ac692d96658dfddab5066ecb499ec1a6c31a5f7a0ab7479d787a1ac6d0
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K15, V21_Inv_K17, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sprefc, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc
THEOREM Part_KDone_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE (QuietConservation)' /\ (TypInv)' /\ (P_SI4)' /\ (P_SI1)' /\ (P_SI6)' /\ (SI8)' /\ (P_B2OffInit)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RO_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           RO_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           RO_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           RO_Src(x) == IF RO_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           RO_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           RO_Quarantine(x) == x \in sentry /\ ~RO_Close(x) /\
            ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           RO_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\ (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           RO_Pin(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           RO_Drop(p) == (RO_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RO_Pin(p) /\ sready[p] /\ ~(\E x \in sentry' : p \in xsrcP'[x])


           RO_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
            spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           RO_E_rpgS == rpgS'={h \in rpgS : RO_HLive(h) \/ (RO_HPin(h) /\ Mut # "unrefBeforeKDone")}


           RO_E_xsrcS == xsrcS'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="shared" THEN {RO_Src(x)} ELSE {}) ELSE xsrcS[x]]


           RO_E_xsrcP == xsrcP'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="priv" THEN {RO_Src(x)} ELSE {}) ELSE xsrcP[x]]


           RO_E_sentry == sentry'=(sentry \cup {x \in Xids : RO_Posted(x)}) \ {x \in Xids : RO_Close(x) \/ RO_Quarantine(x)}


           RO_E_squar == squar'=squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RO_Quarantine(x)}})


           RO_E_smap == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           RO_E_schoice == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           RO_E_spst == spst'=[p \in SPages |-> IF \E x \in Xids : RO_Quarantine(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF RO_Drop(p) THEN "free" ELSE IF RO_Ended(p) THEN "drain" ELSE spst[p]]


           RO_E_xprefixOK == xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RO_Valid(x) ELSE xprefixOK[x]]


           RO_E_sprefc == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)+SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

           \* T2M-LOCAL-VISIBILITY

           RO_Flat(e) == <<e[1][1],e[1][2],e[2][1],e[2][2]>>

           \* T2M-LOCAL-VISIBILITY

           RO_StableStates == \A p \in SPages : spst[p] \notin {"drain","dup"} => spst'[p]=spst[p]

           \* T2M-LOCAL-VISIBILITY

           RO_ControlStep ==
            /\ \A x \in Xids : iv'[x]=iv[x] \/ iv'[x] \in {"cqe","failret"}
            /\ \A x \in Xids : xst'[x]=xst[x] \/ xst'[x] \in {"landed","failed"}
            /\ \A x \in Xids : hw'[x] \in {"issued","stop"} => hw[x] \in {"fly","issued","stop"}

           \* T2M-LOCAL-VISIBILITY

           UYpr1 == gen \in [Rq -> 0..MG]


           ZB9m == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           XjUj == rp \in [Rq -> {0} \cup Inst]


           RwpJ == rd \in [Rq -> {0} \cup Inst]


           J8zi == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           wHUB == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           IOOT2o9 == alive \in [Inst -> BOOLEAN]


           WCW_RIE == nfail \in 0..MaxFail


           qXm9o1 == torn \in [Inst -> SUBSET Inst]


           lx9I2z == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           Wjy2fg == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           DJuMb == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           r9d6 == ph \in [Inst -> [Rq -> PhSet]]


           V6LQ == rg \in [Inst -> [Rq -> 0..MG]]


           sufyJ == rpg \in [Inst -> [Rq -> 0..NP]]


           hGnPA == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           UuEG == rx \in [Inst -> [Rq -> 0..MX]]


           JHlYLg == rhit \in [Inst -> [Rq -> BOOLEAN]]


           GNsKg == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           d3cH == pr \in [Pages -> 0..NR]


           E5Zo2 == pgn \in [Pages -> 0..MG]


           ehoz3 == plt \in [Pages -> 0..PS]


           ZMkh8 == ptl \in [Pages -> -1..PS]


           b8LBGz == pvis \in [Pages -> BOOLEAN]


           hzt6H == led \in [Pages -> SUBSET Xids]


           LMfyK0 == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           BIdZ6_ == sled \in [Pages -> SUBSET (Rq \X Gens)]


           MSlzCY1 == prefc \in [Pages -> 0..NR]


           tdSC4 == pqp \in [Pages -> {0} \cup Inst]


           PqGK == xr \in [Xids -> 0..NR]


           wl8W == xg \in [Xids -> 0..MG]


           cy_Q == xk \in [Xids -> {"none", "wr", "rd"}]


           L4qc == xp \in [Xids -> {0} \cup Inst]


           bf5O == xd \in [Xids -> {0} \cup Inst]


           O4U_5z == xsrc \in [Xids -> 0..NP]


           Iwh80D == xdst \in [Xids -> 0..NP]


           lpGba == xnt \in [Xids -> 0..PS]


           xyhb == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           OyPI5 == hok \in [Xids -> BOOLEAN]


           U60c == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           xLHsX == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           Pl5Rz == xlt \in [Xids -> 0..PS]


           flJU == nx \in 1..(MX + 1)


           lHQee == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           oKZaCF == drep \in [Rq -> [Gens -> 0..2]]


           M1G19k == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           NO7ciLG == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           c1LgxC == gbad \in BOOLEAN


           BD3C0 == UYpr1 /\ ZB9m /\ XjUj /\ RwpJ /\ J8zi /\ wHUB /\ IOOT2o9 /\ WCW_RIE /\ qXm9o1 /\ lx9I2z /\ Wjy2fg /\ DJuMb /\ r9d6 /\ V6LQ /\ sufyJ /\ hGnPA /\ UuEG /\ JHlYLg /\ GNsKg /\ d3cH /\ E5Zo2 /\ ehoz3 /\ ZMkh8 /\ b8LBGz /\ hzt6H /\ LMfyK0 /\ BIdZ6_ /\ MSlzCY1 /\ tdSC4 /\ PqGK /\ wl8W /\ cy_Q /\ L4qc /\ bf5O /\ O4U_5z /\ Iwh80D /\ lpGba /\ xyhb /\ OyPI5 /\ U60c /\ xLHsX /\ Pl5Rz /\ flJU /\ lHQee /\ oKZaCF /\ M1G19k /\ NO7ciLG /\ c1LgxC

           \* T2M-LOCAL-VISIBILITY

           x5Ahk(i,s) == {p \in Pages :
             /\ p \in {e[3] : e \in krs[i][s]}
             /\ pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {}
             /\ ~ (\E b \in KSlots : b # s /\ kpin[i][b] /\ \E e \in krs[i][b] : e[3] = p)}

           \* T2M-LOCAL-VISIBILITY

           c5kg0CF(p) ==
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


<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_xprefixOK, RO_E_sprefc, RO_Flat, RO_StableStates, RO_ControlStep, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, BD3C0, x5Ahk, c5kg0CF

<1>m948gxWe0.        
 P_B2OffInit /\ UNCHANGED <<dedupSeen, dpreOK, hitSeen, rpgS, schoice, sdata, sentry, sgen, skey, smap, sown, sprefc, spst, squar, sready, swrite, xprefixOK, xsrcP, xsrcS>> => P_B2OffInit'
 BY IsaT(10), Sizes, Location, Design DEF P_B2OffInit, SInit, Sizes, Location, Design
\* T2M-END R2M0451_PdPF_B2OffInit


<1>VcIQgsSwpIeElen.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>VcIQgsSwpIeElen, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0478_PdPOff_KDone


<1>H0Dre0I9dt5V.        
 ASSUME B2, SFollow
 PROVE RO_E_rpgS
 BY ONLY <1>H0Dre0I9dt5V, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_rpgS, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m0crpwxTDdjmI.        
 ASSUME B2, SFollow
 PROVE RO_E_xsrcS
 BY ONLY <1>m0crpwxTDdjmI, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_xsrcS, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ifwDg0IoVKTvz.        
 ASSUME B2, SFollow
 PROVE RO_E_xsrcP
 BY ONLY <1>ifwDg0IoVKTvz, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_xsrcP, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oVMEMsT8gqQqbk.        
 ASSUME B2, SFollow
 PROVE RO_E_sentry
 BY ONLY <1>oVMEMsT8gqQqbk, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_sentry, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lIuyiSzJ58zq2.        
 ASSUME B2, SFollow
 PROVE RO_E_squar
 BY ONLY <1>lIuyiSzJ58zq2, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_squar, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kcdhaxe1yPn5.        
 ASSUME B2, SFollow
 PROVE RO_E_smap
 BY ONLY <1>kcdhaxe1yPn5, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_smap, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FuwCbPxDgseJUUg.        
 ASSUME B2, SFollow
 PROVE RO_E_schoice
 BY ONLY <1>FuwCbPxDgseJUUg, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_schoice, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LQE0C5CV3kHl.        
 ASSUME B2, SFollow
 PROVE RO_E_spst
 BY ONLY <1>LQE0C5CV3kHl, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_spst, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>icyzRs1WpaOrfYqB8.        
 ASSUME B2, SFollow
 PROVE RO_E_xprefixOK
 BY ONLY <1>icyzRs1WpaOrfYqB8, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_xprefixOK, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ugzpmKUcZ3Dcdb.        
 ASSUME B2, SFollow
 PROVE RO_E_sprefc
 BY ONLY <1>ugzpmKUcZ3Dcdb, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_sprefc, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pDDs2iPJ6v1.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>pDDs2iPJ6v1, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jGg3R.         SFollow => UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eav3Mlg8.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~RO_Posted(x)
 BY ONLY <1>eav3Mlg8, Sizes, Location, Design, SMTT(10) DEF RO_Posted, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J0yx6oHL5UyrV.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
<2> USE ONLY <1>J0yx6oHL5UyrV, Sizes, Location, Design
<2>1. STypeOK BY V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY ONLY <1>J0yx6oHL5UyrV, <2>2, SMTT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RO_E_smap /\ RO_E_schoice /\ RO_E_xsrcS /\ RO_E_xsrcP /\ (\A x \in Xids : ~RO_Posted(x))
 BY <2>3, <1>kcdhaxe1yPn5, <1>FuwCbPxDgseJUUg, <1>m0crpwxTDdjmI, <1>ifwDg0IoVKTvz, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED rg
 BY <1>J0yx6oHL5UyrV, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. /\ smap \in [PInst -> [Rq -> {0} \cup SPages]]
       /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>J0yx6oHL5UyrV, V22_T_schoice, V22_T_smap, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

 <3>4. /\ smap' = [i \in PInst |-> [r \in Rq |-> smap[i][r]]]
       /\ schoice' = [i \in PInst |-> [r \in Rq |-> schoice[i][r]]]
       /\ xsrcS' = [x \in Xids |-> xsrcS[x]] /\ xsrcP' = [x \in Xids |-> xsrcP[x]]
 BY ONLY <3>1, <3>2, SMTT(20), Sizes, Location, Design DEF RO_E_smap, RO_E_schoice, RO_E_xsrcS, RO_E_xsrcP, Sizes, Location, Design
 <3>5. QED BY ONLY <3>3, <3>4, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SvtT5da.        
 ASSUME PinInv, B2
 PROVE /\ spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
       /\ rpgS \subseteq PInst \X Rq \X Gens \X SPages
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
       /\ sentry \subseteq Xids /\ squar \subseteq Xids \X SPages
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY <1>SvtT5da, V22_T_rpgS, V22_T_sentry, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>L8DIG3nRD9Lv3.        
 IsFiniteSet(PInst) /\ IsFiniteSet(Rq) /\ IsFiniteSet(Gens) /\ IsFiniteSet(Xids) /\ IsFiniteSet(SPages)
 BY Sizes, FS_Interval, SMTT(10), Location, Design DEF PInst, Rq, Gens, Xids, SPages, Sizes, Location, Design


<1>ePMf4RNB21H.        
 IsFiniteSet(PInst \X Rq \X Gens \X SPages) /\ IsFiniteSet(Xids \X SPages)
<2>1. IsFiniteSet((PInst \X Rq) \X (Gens \X SPages)) /\ IsFiniteSet(Xids \X SPages)
 BY <1>L8DIG3nRD9Lv3, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. {RO_Flat(e) : e \in (PInst \X Rq) \X (Gens \X SPages)} = PInst \X Rq \X Gens \X SPages
 <3>1. ASSUME NEW e \in (PInst \X Rq) \X (Gens \X SPages)
        PROVE RO_Flat(e) \in PInst \X Rq \X Gens \X SPages
 BY SMTT(10), Sizes, Location, Design DEF RO_Flat, Sizes, Location, Design
 <3>2. ASSUME NEW e \in PInst \X Rq \X Gens \X SPages
        PROVE e \in {RO_Flat(t) : t \in (PInst \X Rq) \X (Gens \X SPages)}
  <4>1. <<<<e[1],e[2]>>,<<e[3],e[4]>>>> \in (PInst \X Rq) \X (Gens \X SPages)
   BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. RO_Flat(<<<<e[1],e[2]>>,<<e[3],e[4]>>>>)=e
   BY SMTT(10), Sizes, Location, Design DEF RO_Flat, Sizes, Location, Design
  <4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet({RO_Flat(e) : e \in (PInst \X Rq) \X (Gens \X SPages)})
 BY <2>1, FS_Image, IsaT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>l9BskpKB8.        
 ASSUME NEW U, IsFiniteSet(U), NEW V \in SUBSET U, NEW P(_)
 PROVE Cardinality({x \in V : P(x)}) \in Nat
<2> USE ONLY <1>l9BskpKB8, Sizes, Location, Design
<2>1. {x \in V : P(x)} \subseteq U BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet({x \in V : P(x)}) BY <2>1, FS_Subset, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, FS_CardinalityType, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Hl2eKc2VBkR40pk.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc
 PROVE /\ rpgS' \subseteq PInst \X Rq \X Gens \X SPages
       /\ sentry' \subseteq Xids
       /\ squar' \subseteq Xids \X SPages
<2> USE ONLY <1>Hl2eKc2VBkR40pk, Sizes, Location, Design
<2>1. RO_E_rpgS /\ RO_E_sentry /\ RO_E_squar /\ (\A x \in Xids : ~RO_Posted(x))
 BY <1>H0Dre0I9dt5V, <1>oVMEMsT8gqQqbk, <1>lIuyiSzJ58zq2, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpgS \subseteq PInst \X Rq \X Gens \X SPages /\ sentry \subseteq Xids
       /\ squar \subseteq Xids \X SPages /\ xsrcS \in [Xids -> SUBSET SPages]
 BY <1>SvtT5da, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rpgS' \subseteq PInst \X Rq \X Gens \X SPages
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_rpgS, Sizes, Location, Design
<2>4. sentry' \subseteq Xids
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_sentry, Sizes, Location, Design
<2>5. squar' \subseteq Xids \X SPages
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_squar, Sizes, Location, Design
<2>6. QED BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>x8eiSet.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc, NEW p \in SPages
 PROVE /\ SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
       /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
       /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
<2> USE ONLY <1>x8eiSet, Sizes, Location, Design
<2>1. rpgS \subseteq PInst \X Rq \X Gens \X SPages /\ sentry \subseteq Xids /\ squar \subseteq Xids \X SPages
 BY <1>SvtT5da, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpgS' \subseteq PInst \X Rq \X Gens \X SPages /\ sentry' \subseteq Xids /\ squar' \subseteq Xids \X SPages
 BY <1>Hl2eKc2VBkR40pk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ePMf4RNB21H, <1>L8DIG3nRD9Lv3, <1>l9BskpKB8, IsaT(20), Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BhJJoZwTfyo0ME.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>BhJJoZwTfyo0ME, Sizes, Location, Design
<2>1. CASE ~B2
 BY <2>1, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>2. CASE B2
 <3>1. PrefcMatchesHolders /\ RO_E_sprefc BY <2>2, <1>pDDs2iPJ6v1, <1>ugzpmKUcZ3Dcdb, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW p \in SPages
        PROVE sprefc'[p]=SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
  <4>1. SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
       /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
       /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
   BY <2>2, <1>x8eiSet, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. QED BY <2>2, <3>1, <4>1, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, RO_E_sprefc, Sizes, Location, Design
 <3>3. QED BY <3>2, <2>2, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2183_PdROFinite


<1>G62OMB7v6XF.        
 ASSUME PinInv, B2, NEW x \in Xids, hw[x]="fly"
 PROVE RO_Valid(x)
<2> USE ONLY <1>G62OMB7v6XF, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ SendOwnLanded
 BY V21_Inv_NoEvictUnderRDMA, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF RO_Valid, NoEvictUnderRDMA, SAccess, SendOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t3j82gaQX28rrhM3.        
 ASSUME PinInv, SFollow, B2, UNCHANGED <<ph,rg>>
 PROVE \A p \in SPages :
       /\ spst'[p] \in {spst[p],"free"}
       /\ spst[p] \notin {"drain","dup"} => spst'[p]=spst[p]
       /\ RO_Pin(p) => spst'[p]=spst[p]
<2> USE ONLY <1>t3j82gaQX28rrhM3, Sizes, Location, Design
<2>1. SI2 /\ SI4 /\ RO_E_spst BY <1>pDDs2iPJ6v1, <1>LQE0C5CV3kHl, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A p \in SPages : ~RO_Ended(p)
 BY <2>1, SMTT(10), Sizes, Location, Design DEF SI2, RO_Ended, Active, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF SI4, RO_E_spst, RO_Drop, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>f2Leyy7poQD1fIQ.        
 ASSUME B2, SFollow, NEW x \in Xids, RO_Quarantine(x)
 PROVE \A p \in xsrcS[x] : <<x,p>> \in squar'
<2> USE ONLY <1>f2Leyy7poQD1fIQ, Sizes, Location, Design
<2>1. RO_E_squar BY <1>lIuyiSzJ58zq2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x \in {y \in Xids : RO_Quarantine(y)} BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. {<<x,p>> : p \in xsrcS[x]} \in {{<<y,p>> : p \in xsrcS[y]} : y \in {y \in Xids : RO_Quarantine(y)}}
 BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in xsrcS[x]
       PROVE <<x,p>> \in squar'
 <3>1. <<x,p>> \in {<<x,q>> : q \in xsrcS[x]} BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>3, <3>1, Design, ZenonT(10), Sizes, Location DEF RO_E_squar, Sizes, Location, Design
<2>5. QED BY <2>4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bneczW3Qjs8bDyTc.        
 ASSUME B2, SFollow, NEW x \in Xids, ~RO_Close(x),
        x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
 PROVE x \in sentry' \/ (\A p \in xsrcS[x] : <<x,p>> \in squar')
<2> USE ONLY <1>bneczW3Qjs8bDyTc, Sizes, Location, Design
<2>1. RO_E_sentry /\ RO_E_squar BY <1>oVMEMsT8gqQqbk, <1>lIuyiSzJ58zq2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE x \in sentry /\ ~RO_Quarantine(x)
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_sentry, Sizes, Location, Design
<2>3. CASE RO_Quarantine(x)
 BY <2>3, <1>f2Leyy7poQD1fIQ, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. CASE x \notin sentry
 BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF RO_E_squar, Sizes, Location, Design
<2>5. QED BY <2>2, <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yYTbap2jtpor.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,xk,xsrcS>>,
        \A x \in Xids : xst'[x]="posted" => xst[x]="posted"
 PROVE SI8'
<2> USE ONLY <1>yYTbap2jtpor, Sizes, Location, Design
<2>1. SI8 BY V21_Inv_SI8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>3. CASE B2
 <3>1. ASSUME NEW x \in Xids, xk'[x]="rd", xst'[x]="posted"
        PROVE x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
  <4>1. xk[x]="rd" /\ xst[x]="posted" BY <3>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
  BY <2>1, <2>3, <4>1, ZenonT(10), Sizes, Location, Design DEF SI8, Sizes, Location, Design
  <4>3. ~RO_Close(x) BY <3>1, <4>1, SMTT(10), Sizes, Location, Design DEF RO_Close, Sizes, Location, Design
  <4>4. QED BY <2>3, <4>2, <4>3, <1>bneczW3Qjs8bDyTc, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>3, <3>1, Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2185_PdROSharedShape

\* T2M-SCOPE R2M2186_PdRORefSafety
\* T2M-BODY R2M2186_PdRORefSafety
\* T2M-LOCAL-VISIBILITY

<1>CHVOTlcrYdkDhqRGxLk.        
 ASSUME PinInv, B2
 PROVE /\ \A h \in rpgS : spst[h[4]]="shared"
       /\ \A x \in sentry : \A p \in xsrcS[x] : spst[p]="shared"
       /\ \A h \in squar : spst[h[2]]="shared"
<2> USE ONLY <1>CHVOTlcrYdkDhqRGxLk, Sizes, Location, Design
<2>1. HitIdentity /\ SI4 /\ SI5 /\ STypeOK BY <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF HitIdentity, SI4, SI5, STypeOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zIpzJmV4LXez8qoyL.        
 ASSUME PinInv, SFollow, B2, UNCHANGED <<xsrc,xsrcS>>, RO_StableStates
 PROVE /\ \A h \in rpgS' : spst'[h[4]]="shared"
       /\ \A x \in sentry' : \A p \in xsrcS'[x] : spst'[p]="shared"
       /\ \A h \in squar' : spst'[h[2]]="shared"
<2> USE ONLY <1>zIpzJmV4LXez8qoyL, Sizes, Location, Design
<2>1. RO_E_rpgS /\ RO_E_sentry /\ RO_E_squar /\ (\A x \in Xids : ~RO_Posted(x))
 BY <1>H0Dre0I9dt5V, <1>oVMEMsT8gqQqbk, <1>lIuyiSzJ58zq2, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK /\ (\A h \in rpgS : spst[h[4]]="shared")
       /\ (\A x \in sentry : \A p \in xsrcS[x] : spst[p]="shared")
       /\ (\A h \in squar : spst[h[2]]="shared")
 BY <1>CHVOTlcrYdkDhqRGxLk, <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_rpgS, RO_E_sentry, RO_E_squar, RO_Quarantine, STypeOK, RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tkIbKthZ8rm8L.        
 ASSUME PinInv, SFollow, B2, UNCHANGED <<xsrc,xsrcS>>, RO_StableStates, NEW p \in SPages, spst'[p] # "shared"
 PROVE sprefc'[p]=0
<2> USE ONLY <1>tkIbKthZ8rm8L, Sizes, Location, Design
<2>1. PrefcMatchesHolders' BY <1>BhJJoZwTfyo0ME, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. (\A h \in rpgS' : spst'[h[4]]="shared")
       /\ (\A x \in sentry' : \A q \in xsrcS'[x] : spst'[q]="shared")
       /\ (\A h \in squar' : spst'[h[2]]="shared")
 BY <1>zIpzJmV4LXez8qoyL, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. {h \in rpgS' : h[4]=p}={} /\ {x \in sentry' : p \in xsrcS'[x]}={} /\ {h \in squar' : h[2]=p}={}
 BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, FS_EmptySet, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, SRefR, SRefE, SRefQ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QH8yZT1818aXx2y5f.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, KDone(i,s)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>QH8yZT1818aXx2y5f, Sizes, Location, Design, Design, ZenonT(10) DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dubuQTZvH8Kxu3pHj4D.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>dubuQTZvH8Kxu3pHj4D, Sizes, Location, Design, <1>QH8yZT1818aXx2y5f, <1>J0yx6oHL5UyrV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gLrCjXEdT6xW8NC.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
 PROVE \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
<2> USE ONLY <1>gLrCjXEdT6xW8NC, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>gLrCjXEdT6xW8NC, V22_T_hw, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OOyEjNC6qYtXtiEGp9.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
 PROVE \A x \in Xids : xst'[x]="posted" => xst[x]="posted"
<2> USE ONLY <1>OOyEjNC6qYtXtiEGp9, Sizes, Location, Design
<2>1. xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>OOyEjNC6qYtXtiEGp9, V22_T_xst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xJRrtAIajLub7.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
 PROVE /\ \A z \in Xids : iv'[z]=iv[z] \/ iv'[z] \in {"cqe","failret"}
       /\ \A z \in Xids : xst'[z]=xst[z] \/ xst'[z] \in {"landed","failed"}
       /\ \A z \in Xids : hw'[z] \in {"issued","stop"} => hw[z] \in {"fly","issued","stop"}
<2> USE ONLY <1>xJRrtAIajLub7, Sizes, Location, Design
<2>1. K3 /\ hw \in [Xids -> {"none","fly","issued","stop"}]
       /\ iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
       /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>xJRrtAIajLub7, V22_T_hw, V22_T_iv, V22_T_xst, V21_Inv_K3, Sizes, Location, Design, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GQ5YmXqEwxByFqsGL.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
 PROVE \A z \in Xids : hw'[z]="fly" => ~RO_Close(z)
<2> USE ONLY <1>GQ5YmXqEwxByFqsGL, Sizes, Location, Design
<2>1. K3 /\ hw \in [Xids -> {"none","fly","issued","stop"}]
       /\ iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
       /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>GQ5YmXqEwxByFqsGL, V22_T_hw, V22_T_iv, V22_T_xst, V21_Inv_K3, Sizes, Location, Design, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KDone, ghV, recV, rtV, xV, RO_Close, K3, InFl, CqeHw, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WGApDWVa4zQXGvgef7CieVW7x.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>WGApDWVa4zQXGvgef7CieVW7x, Sizes, Location, Design, <1>QH8yZT1818aXx2y5f, <1>BhJJoZwTfyo0ME DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q2WMOAHXy.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE SI8'
 BY ONLY <1>Q2WMOAHXy, Sizes, Location, Design, <1>QH8yZT1818aXx2y5f, <1>dubuQTZvH8Kxu3pHj4D, <1>OOyEjNC6qYtXtiEGp9, <1>yYTbap2jtpor DEF Sizes, Location, Design
\* T2M-END R2M2487_PdROShared_KDone


<1>VjsXrQaxUcu9.        
 ASSUME PinInv, SFollow, B2, RO_ControlStep
 PROVE \A x \in Xids : hw'[x] \in {"issued","stop"} => xprefixOK'[x]
<2> USE ONLY <1>VjsXrQaxUcu9, Sizes, Location, Design
<2>1. SI4 /\ RO_E_xprefixOK BY <1>pDDs2iPJ6v1, <1>icyzRs1WpaOrfYqB8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>G62OMB7v6XF, SMTT(10), Sizes, Location, Design DEF SI4, RO_E_xprefixOK, RO_ControlStep, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RP8AheTgvoO.        
 ASSUME PinInv, SFollow, B2, UNCHANGED <<xsrc,xsrcS>>,
        \A x \in Xids : hw'[x]="fly" => hw[x]="fly",
        \A x \in Xids : hw'[x]="fly" => ~RO_Close(x)
 PROVE \A x \in Xids : hw'[x]="fly" => x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
<2> USE ONLY <1>RP8AheTgvoO, Sizes, Location, Design
<2>1. SI4 BY <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ASSUME NEW x \in Xids, hw'[x]="fly"
       PROVE x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
 <3>1. hw[x]="fly" /\ ~RO_Close(x) BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
 BY <2>1, <3>1, ZenonT(10), Sizes, Location, Design DEF SI4, Sizes, Location, Design
 <3>3. QED BY <3>1, <3>2, <1>bneczW3Qjs8bDyTc, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>S9kRK0leNkDm.        
 ASSUME PinInv, SFollow, RO_ControlStep,
        UNCHANGED <<xsrc,xsrcS,xsrcP,xk,xp,xr,xg,nx,skey>>, RO_StableStates,
        \A x \in Xids : hw'[x]="fly" => hw[x]="fly",
        \A x \in Xids : hw'[x]="fly" => ~RO_Close(x)
 PROVE P_SI4'
<2> USE ONLY <1>S9kRK0leNkDm, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI4 /\ STypeOK /\ RO_E_sentry /\ (\A x \in Xids : ~RO_Posted(x)) BY <2>2, <1>pDDs2iPJ6v1, <1>oVMEMsT8gqQqbk, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A x \in sentry' : x \in sentry /\ ~RO_Close(x) /\ ~RO_Quarantine(x)
 BY <3>1, SMTT(10), Sizes, Location, Design DEF RO_E_sentry, STypeOK, Sizes, Location, Design
 <3>3. \A x \in Xids : x \in sentry' => (IF xk'[x]="wr" THEN iv'[x] \in {"reg","posted","failret"} ELSE xst'[x]="posted")
 BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SI4, RO_Close, RO_ControlStep, Sizes, Location, Design
 <3>4. \A x \in Xids : hw'[x]="fly" => x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
 BY <2>2, <1>RP8AheTgvoO, Sizes, Location, Design DEF Sizes, Location, Design
 <3>5. \A x \in Xids : hw'[x] \in {"issued","stop"} => xprefixOK'[x]
 BY <2>2, <1>VjsXrQaxUcu9, Sizes, Location, Design DEF Sizes, Location, Design
 <3>6. QED BY <2>2, <3>1, <3>2, <3>3, <3>4, <3>5, SMTT(10), Sizes, Location, Design DEF P_SI4, SI4, STypeOK, RO_StableStates, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EjmNCRbt1.        
 ASSUME BaseQuietConservation', P_SI1', P_SI2', STypeOK', PrefcMatchesHolders'
 PROVE QuietConservation'
<2> USE ONLY <1>EjmNCRbt1, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF QuietConservation, Sizes, Location, Design
<2>2. CASE B2
 <3>1. ASSUME Quiet', sentry'={},
       \A p \in SPages : ~swrite'[p] /\ (spst'[p] \in {"priv","drain"} => sready'[p]) /\ ~SPin(p)'
       PROVE \A p \in SPages : spst'[p] \in {"free","quar"} \/ (spst'[p]="shared" /\ sprefc'[p]=SRefQ(squar',p))
  <4>1. PInst \subseteq Inst BY Sizes, SMTT(10), Location, Design DEF NL, PInst, Inst, DInst, Sizes, Location, Design
  <4>2. \A p \in SPages : spst'[p] \in {"free","quar","shared"}
  BY ONLY <1>EjmNCRbt1, Sizes, Location, Design, <2>2, <3>1, <2>2, <4>1, Location, SMTT(10) DEF P_SI2, SI2, STypeOK, Quiet, KPages, Sizes, Location, Design
  <4>3. rpgS'={}
  BY ONLY <1>EjmNCRbt1, Sizes, Location, Design, <2>2, <3>1, <2>2, <4>1, SMTT(10) DEF P_SI1, SI1, STypeOK, Quiet, SHPin, SPin, Sizes, Location, Design
  <4>4. \A p \in SPages : SRefR(rpgS',p)=0 /\ SRefE(sentry',xsrcS',p)=0
  BY ONLY <1>EjmNCRbt1, Sizes, Location, Design, <2>2, <3>1, <4>3, FS_EmptySet, SMTT(10) DEF SRefR, SRefE, Sizes, Location, Design
  <4>5. IsFiniteSet(squar') BY <1>L8DIG3nRD9Lv3, FS_Product, FS_Subset, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
  <4>6. \A p \in SPages : SRefQ(squar',p) \in Nat
  BY ONLY <1>EjmNCRbt1, Sizes, Location, Design, <2>2, <4>5, FS_Subset, FS_CardinalityType, SMTT(10) DEF SRefQ, Sizes, Location, Design
  <4>7. QED BY <3>1, <2>2, <4>2, <4>4, <4>6, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
 <3>2. QED BY <2>2, <3>1, Sizes, Location, Design DEF QuietConservation, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2192_PdROQuiet


<1>WAxd2hhfMM.        
 ASSUME PinInv
 PROVE TypInv => BD3C0
  BY ONLY <1>WAxd2hhfMM, Sizes, Location, Design, ZenonT(5) DEF TypInv, CoreTypeOK, BD3C0, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dWnul9PL.        
  ASSUME NEW I, NEW S, NEW B, NEW f \in [I -> [S -> B]],
         NEW i \in I, NEW s \in S, NEW v \in B
  , PinInv
 PROVE [f EXCEPT ![i][s] = v] \in [I -> [S -> B]]
  BY ONLY <1>dWnul9PL, Sizes, Location, Design, SMTT(5) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WZ5P7daa0hqI.        
 ASSUME PinInv
 PROVE BD3C0' => CoreTypeOK'
  BY ONLY <1>WZ5P7daa0hqI, Sizes, Location, Design, ZenonT(5) DEF TypInv, CoreTypeOK, BD3C0, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>joh6z3bMX.        
 PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2481_PdROK_PdProofBase


<1>rzFGTkPfv.        
 ASSUME PinInv
 PROVE /\ 0 \in 0..NR /\ 0 \in 0..MG /\ 0 \in 0..PS
  /\ 1 \in 0..PS /\ 1 \in -1..PS
  BY ONLY <1>rzFGTkPfv, Sizes, Location, Design, Sizes, SMT DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>i58pvIf.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, KDone(i,s)
  , PinInv
 PROVE /\ ~kfly[i][s]
        /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
        /\ krs' = [krs EXCEPT ![i][s] = {}]
        /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY ONLY <1>i58pvIf, Sizes, Location, Design, Design, SMT DEF KDone, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JH6mCA5.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, lx9I2z, KDone(i,s)
  , PinInv
 PROVE /\ pst' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pqp[p]]
  BY ONLY <1>JH6mCA5, Sizes, Location, Design, Design, SMT DEF KDone, x5Ahk, lx9I2z, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gRydeD0QeS.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, lx9I2z, DJuMb, K14, KDone(i,s)
  , PinInv
 PROVE \A a \in Inst, b \in KSlots : kpin'[a][b] =>
          /\ kpin[a][b] /\ krs'[a][b] = krs[a][b]
          /\ \A e \in krs'[a][b] : e[3] \notin x5Ahk(i,s)
<2> USE ONLY <1>gRydeD0QeS, Sizes, Location, Design
<2>1. /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
       /\ krs' = [krs EXCEPT ![i][s] = {}]
  BY <1>i58pvIf, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF lx9I2z, DJuMb, K14, x5Ahk, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qdu36EBPY.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, BD3C0, KDone(i,s)
  , PinInv
 PROVE CoreTypeOK'
<2> USE ONLY <1>qdu36EBPY, Sizes, Location, Design
<2>0. lx9I2z
  BY Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
<2>1. /\ ~kfly[i][s]
       /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
       /\ krs' = [krs EXCEPT ![i][s] = {}]
       /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY <1>i58pvIf, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. /\ pst' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN "free" ELSE pst[p]]
       /\ pr' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pr[p]]
       /\ pgn' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pgn[p]]
       /\ plt' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE plt[p]]
       /\ pqp' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pqp[p]]
  BY <2>0, <1>JH6mCA5, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UYpr1'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, UYpr1, rtV, recV, xV, ghV, Sizes, Location, Design
<2>4. ZB9m'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, ZB9m, rtV, recV, xV, ghV, Sizes, Location, Design
<2>5. XjUj'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, XjUj, rtV, recV, xV, ghV, Sizes, Location, Design
<2>6. RwpJ'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, RwpJ, rtV, recV, xV, ghV, Sizes, Location, Design
<2>7. J8zi'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, J8zi, rtV, recV, xV, ghV, Sizes, Location, Design
<2>8. wHUB'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, wHUB, rtV, recV, xV, ghV, Sizes, Location, Design
<2>9. IOOT2o9'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, IOOT2o9, rtV, recV, xV, ghV, Sizes, Location, Design
<2>10. WCW_RIE'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, WCW_RIE, rtV, recV, xV, ghV, Sizes, Location, Design
<2>11. qXm9o1'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, qXm9o1, rtV, recV, xV, ghV, Sizes, Location, Design
<2>12. lx9I2z'
  BY <2>1, <2>2, <1>dWnul9PL, SMT, Sizes, Location, Design DEF BD3C0, lx9I2z, rtV, recV, xV, ghV, Sizes, Location, Design
<2>13. Wjy2fg'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, Wjy2fg, rtV, recV, xV, ghV, Sizes, Location, Design
<2>14. DJuMb'
  BY <2>1, <2>2, <1>dWnul9PL, SMT, Sizes, Location, Design DEF BD3C0, DJuMb, rtV, recV, xV, ghV, Sizes, Location, Design
<2>15. r9d6'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, r9d6, rtV, recV, xV, ghV, Sizes, Location, Design
<2>16. V6LQ'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, V6LQ, rtV, recV, xV, ghV, Sizes, Location, Design
<2>17. sufyJ'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, sufyJ, rtV, recV, xV, ghV, Sizes, Location, Design
<2>18. hGnPA'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, hGnPA, rtV, recV, xV, ghV, Sizes, Location, Design
<2>19. UuEG'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, UuEG, rtV, recV, xV, ghV, Sizes, Location, Design
<2>20. JHlYLg'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, JHlYLg, rtV, recV, xV, ghV, Sizes, Location, Design
<2>21. GNsKg'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, GNsKg, rtV, recV, xV, ghV, Sizes, Location, Design
<2>22. d3cH'
  BY <2>1, <2>2, <1>rzFGTkPfv, SMT, Sizes, Location, Design DEF BD3C0, d3cH, rtV, recV, xV, ghV, Sizes, Location, Design
<2>23. E5Zo2'
  BY <2>1, <2>2, <1>rzFGTkPfv, SMT, Sizes, Location, Design DEF BD3C0, E5Zo2, rtV, recV, xV, ghV, Sizes, Location, Design
<2>24. ehoz3'
  BY <2>1, <2>2, <1>rzFGTkPfv, SMT, Sizes, Location, Design DEF BD3C0, ehoz3, rtV, recV, xV, ghV, Sizes, Location, Design
<2>25. ZMkh8'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, ZMkh8, rtV, recV, xV, ghV, Sizes, Location, Design
<2>26. b8LBGz'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, b8LBGz, rtV, recV, xV, ghV, Sizes, Location, Design
<2>27. hzt6H'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, hzt6H, rtV, recV, xV, ghV, Sizes, Location, Design
<2>28. LMfyK0'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, LMfyK0, rtV, recV, xV, ghV, Sizes, Location, Design
<2>29. BIdZ6_'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, BIdZ6_, rtV, recV, xV, ghV, Sizes, Location, Design
<2>30. MSlzCY1'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, MSlzCY1, rtV, recV, xV, ghV, Sizes, Location, Design
<2>31. tdSC4'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, tdSC4, rtV, recV, xV, ghV, Sizes, Location, Design
<2>32. PqGK'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, PqGK, rtV, recV, xV, ghV, Sizes, Location, Design
<2>33. wl8W'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, wl8W, rtV, recV, xV, ghV, Sizes, Location, Design
<2>34. cy_Q'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, cy_Q, rtV, recV, xV, ghV, Sizes, Location, Design
<2>35. L4qc'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, L4qc, rtV, recV, xV, ghV, Sizes, Location, Design
<2>36. bf5O'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, bf5O, rtV, recV, xV, ghV, Sizes, Location, Design
<2>37. O4U_5z'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, O4U_5z, rtV, recV, xV, ghV, Sizes, Location, Design
<2>38. Iwh80D'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, Iwh80D, rtV, recV, xV, ghV, Sizes, Location, Design
<2>39. lpGba'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, lpGba, rtV, recV, xV, ghV, Sizes, Location, Design
<2>40. xyhb'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, xyhb, rtV, recV, xV, ghV, Sizes, Location, Design
<2>41. OyPI5'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, OyPI5, rtV, recV, xV, ghV, Sizes, Location, Design
<2>42. U60c'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, U60c, rtV, recV, xV, ghV, Sizes, Location, Design
<2>43. xLHsX'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, xLHsX, rtV, recV, xV, ghV, Sizes, Location, Design
<2>44. Pl5Rz'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, Pl5Rz, rtV, recV, xV, ghV, Sizes, Location, Design
<2>45. flJU'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, flJU, rtV, recV, xV, ghV, Sizes, Location, Design
<2>46. lHQee'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, lHQee, rtV, recV, xV, ghV, Sizes, Location, Design
<2>47. oKZaCF'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, oKZaCF, rtV, recV, xV, ghV, Sizes, Location, Design
<2>48. M1G19k'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, M1G19k, rtV, recV, xV, ghV, Sizes, Location, Design
<2>49. NO7ciLG'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, NO7ciLG, rtV, recV, xV, ghV, Sizes, Location, Design
<2>50. c1LgxC'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF BD3C0, c1LgxC, rtV, recV, xV, ghV, Sizes, Location, Design
<2>99. QED
  BY <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, <2>12, <2>13, <2>14, <2>15, <2>16, <2>17, <2>18, <2>19, <2>20, <2>21, <2>22, <2>23, <2>24, <2>25, <2>26, <2>27, <2>28, <2>29, <2>30, <2>31, <2>32, <2>33, <2>34, <2>35, <2>36, <2>37, <2>38, <2>39, <2>40, <2>41, <2>42, <2>43, <2>44, <2>45, <2>46, <2>47, <2>48, <2>49, <2>50, <1>WZ5P7daa0hqI, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mn73mC.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, lx9I2z, K16, KDone(i,s)
  , PinInv
 PROVE K16'
<2> USE ONLY <1>mn73mC, Sizes, Location, Design
<2>1. /\ pst' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN "free" ELSE pst[p]]
       /\ pr' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pr[p]]
       /\ pgn' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pgn[p]]
       /\ plt' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE plt[p]]
  BY <1>JH6mCA5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<recV, ptl, pvis, led, sfly, sled, hw, xdst>>
  BY <1>i58pvIf, Sizes, Location, Design DEF xV, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K16, GrownP, NoWriteInto, Writing, InFl, recV, Sizes, Location, Design
\* T2M-END R2M2483_PdROK_PdDoneProofs


<1>L5KqW.        
 ASSUME PinInv
 PROVE K7 <=> \A p \in Pages : c5kg0CF(p)
  BY ONLY <1>L5KqW, Sizes, Location, Design, ZenonT(10) DEF K7, c5kg0CF, Sizes, Location, Design
\* T2M-END R2M2489_PdROK_PdPointPredicates


<1>Zcikb0X8c.        
 ASSUME PinInv
 PROVE K7' <=> \A p \in Pages : c5kg0CF(p)'
  BY ONLY <1>Zcikb0X8c, Sizes, Location, Design, ZenonT(10) DEF K7, c5kg0CF, Sizes, Location, Design
\* T2M-END R2M2490_PdROK_PdPostPoints


<1>HLh2fTSLw.        
 ASSUME PinInv
 PROVE UNCHANGED <<ph,rpg>> => \A i,r,p : Maps(i,r,p)' = Maps(i,r,p)
  BY ONLY <1>HLh2fTSLw, Sizes, Location, Design, ZenonT(10) DEF Maps, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YQ0Xzh6iU.        
 ASSUME PinInv
 PROVE UNCHANGED <<ph,rhit,rpg>> => \A p : NHits(p)' = NHits(p)
  BY ONLY <1>YQ0Xzh6iU, Sizes, Location, Design, ZenonT(10) DEF NHits, Sizes, Location, Design
\* T2M-END R2M2491_PdROK_PdPageObservationFrame


<1>H0J7s.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
  
 PROVE K7'
<2> USE ONLY <1>H0J7s, Sizes, Location, Design
<2>1. K7 /\ K6 /\ lx9I2z /\ DJuMb
  BY <1>joh6z3bMX, <1>WAxd2hhfMM, SMTT(10), V21_Inv_K6, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
<2>2. /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
       /\ krs' = [krs EXCEPT ![i][s] = {}]
       /\ UNCHANGED <<gen, ph, rg, rpg, rhit, ptl, led, sled, sfly, prefc>>
  BY <1>i58pvIf, SMTT(10), Sizes, Location, Design DEF rtV, recV, Sizes, Location, Design
<2>3. /\ pst' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN "free" ELSE pst[p]]
       /\ pr' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pr[p]]
       /\ pgn' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pgn[p]]
       /\ plt' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE plt[p]]
       /\ pqp' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pqp[p]]
  BY <2>1, <1>JH6mCA5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A p \in Pages :
  (pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {} /\ p \notin x5Ahk(i,s)) => KPinned(p)'
  BY <2>1, <2>2, Location, SMTT(10), Sizes, Design DEF K7, KPinned, x5Ahk, lx9I2z, DJuMb, KPages, Sizes, Location, Design
<2>5. \A p \in Pages : p \in x5Ahk(i,s) => pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {}
  BY SMTT(10), Sizes, Location, Design DEF x5Ahk, Sizes, Location, Design
<2>6. SUFFICES ASSUME NEW p \in Pages PROVE c5kg0CF(p)'
  BY <1>Zcikb0X8c, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. c5kg0CF(p) /\ sfly[p] \subseteq sled[p]
  BY <2>1, <1>L5KqW, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
<2>8. CASE p \in x5Ahk(i,s)
  BY <2>2, <2>3, <2>5, <2>7, <2>8, <1>HLh2fTSLw, <1>YQ0Xzh6iU, SMTT(10), Sizes, Location, Design DEF c5kg0CF, GrownP, Sizes, Location, Design
<2>9. CASE p \notin x5Ahk(i,s)
  <3>1. (ptl[p] >= 0)'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>HLh2fTSLw, <1>YQ0Xzh6iU, SMTT(10), Sizes, Location, Design DEF c5kg0CF, GrownP, Sizes, Location, Design
  <3>2. (pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0))'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>HLh2fTSLw, <1>YQ0Xzh6iU, SMTT(10), Sizes, Location, Design DEF c5kg0CF, GrownP, Sizes, Location, Design
  <3>3. (pst[p] \in {"priv", "drain", "quar"} => (pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]]))'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>HLh2fTSLw, <1>YQ0Xzh6iU, SMTT(10), Sizes, Location, Design DEF c5kg0CF, GrownP, Sizes, Location, Design
  <3>4. (pst[p] = "quar" => pqp[p] \in Inst)'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>HLh2fTSLw, <1>YQ0Xzh6iU, SMTT(10), Sizes, Location, Design DEF c5kg0CF, GrownP, Sizes, Location, Design
  <3>5. (pst[p] # "quar" => pqp[p] = 0)'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>HLh2fTSLw, <1>YQ0Xzh6iU, SMTT(10), Sizes, Location, Design DEF c5kg0CF, GrownP, Sizes, Location, Design
  <3>6. (pst[p] # "shared" => prefc[p] = 0)'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>HLh2fTSLw, <1>YQ0Xzh6iU, SMTT(10), Sizes, Location, Design DEF c5kg0CF, GrownP, Sizes, Location, Design
  <3>7. (pst[p] = "shared" => (IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p)))'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>HLh2fTSLw, <1>YQ0Xzh6iU, SMTT(10), Sizes, Location, Design DEF c5kg0CF, GrownP, Sizes, Location, Design
  <3>8. (pst[p] = "drain" => (led[p] # {} \/ sled[p] # {} \/ KPinned(p)))'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>HLh2fTSLw, <1>YQ0Xzh6iU, SMTT(10), Sizes, Location, Design DEF c5kg0CF, GrownP, Sizes, Location, Design
  <3>9. (pst[p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(p), r, p))'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>HLh2fTSLw, <1>YQ0Xzh6iU, SMTT(10), Sizes, Location, Design DEF c5kg0CF, GrownP, Sizes, Location, Design
  <3>10. (pst[p] = "priv" => ( (Maps(Loc(p), pr[p], p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]]) \/ GrownP(p)))'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>HLh2fTSLw, <1>YQ0Xzh6iU, SMTT(10), Sizes, Location, Design DEF c5kg0CF, GrownP, Sizes, Location, Design
  <3>11. QED BY <3>1, <3>2, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9, <3>10, ZenonT(10), Sizes, Location, Design DEF c5kg0CF, Sizes, Location, Design
<2>10. QED BY <2>8, <2>9, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2492_PdROK_PdCell_KDone_K7


<1>IbD9PSDdzeygZLFiTgL.        
  ASSUME GNsKg', K7', K16'
  , PinInv
 PROVE BaseQuietConservation'
<2> USE ONLY <1>IbD9PSDdzeygZLFiTgL, Sizes, Location, Design
<2>1. SUFFICES ASSUME Quiet', NEW p \in Pages
                PROVE pst'[p] \in {"free","quar"} \/ (pst'[p] = "shared" /\ prefc'[p] = 0)
  BY SMTT(10), Sizes, Location, Design DEF BaseQuietConservation, Sizes, Location, Design
<2>2. c5kg0CF(p)' /\ Loc(p) \in Inst
  BY <2>1, <1>Zcikb0X8c, Location, SMTT(10), Sizes, Design DEF KPages, Sizes, Location, Design
<2>3. ~GrownP(p)'
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF GrownP, K16, Quiet, Active, Sizes, Location, Design
<2>4. pst'[p] # "priv" /\ pst'[p] # "drain"
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF c5kg0CF, Quiet, Maps, Active, Sizes, Location, Design
<2>5. {r \in Rq : ph'[Loc(p)][r] \in {"run","ovl"} /\ rhit'[Loc(p)][r] /\ rpg'[Loc(p)][r] = p} = {}
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Quiet, Active, Sizes, Location, Design
<2>6. NHits(p)' = 0
  BY <2>1, <2>5, FS_EmptySet, SMTT(10), Sizes, Location, Design DEF NHits, Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>4, <2>6, SMTT(10), Sizes, Location, Design DEF c5kg0CF, GNsKg, Sizes, Location, Design
\* T2M-END R2M2493_PdROK_PdQuietPostFromStructure


<1>f0ySx42ilPeX5exPaxnl.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
  
 PROVE BaseQuietConservation'
<2> USE ONLY <1>f0ySx42ilPeX5exPaxnl, Sizes, Location, Design
<2>1. K16 /\ lx9I2z /\ GNsKg
  BY <1>joh6z3bMX, <1>WAxd2hhfMM, SMTT(10), V21_Inv_K16, V21_Inv_TypeOK, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
<2>2. K7' /\ K16'
  BY <2>1, <1>H0J7s, <1>mn73mC, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. pst' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN "free" ELSE pst[p]]
  BY <2>1, <1>JH6mCA5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. GNsKg'
  BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF GNsKg, Sizes, Location, Design
<2>5. QED
  BY <2>2, <2>4, <1>IbD9PSDdzeygZLFiTgL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2494_PdROK_PdCell_KDone_QuietConservation


<1>g4ukMt7rga0IPw.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE STypeOK'
 BY ONLY <1>g4ukMt7rga0IPw, AuxType_9ef278c147c12b12, Sizes, Location, Design DEF Sizes, Location, Design

<1>vKeXDMO2j.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE \A a \in Inst,b \in KSlots : kpin'[a][b] => kpin[a][b] /\ krs'[a][b]=krs[a][b]
 BY ONLY <1>vKeXDMO2j, Sizes, Location, Design, <1>gRydeD0QeS, <1>WAxd2hhfMM, V21_Inv_K14, V21_Inv_TypeOK DEF BD3C0, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CHCzj71Gp.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE RO_StableStates
<2> USE ONLY <1>CHCzj71Gp, Sizes, Location, Design
<2>1. CASE B2 BY <2>1, <1>QH8yZT1818aXx2y5f, <1>t3j82gaQX28rrhM3, Sizes, Location, Design DEF RO_StableStates, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, V21_SFollowOff, Sizes, Location, Design DEF sV, RO_StableStates, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Hj75RH6.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE P_SI1'
<2> USE ONLY <1>Hj75RH6, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI1, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI1 /\ SI6 /\ STypeOK /\ SMapIntegrity /\ RO_E_rpgS BY <2>2, <1>pDDs2iPJ6v1, <1>H0Dre0I9dt5V, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED <<ph,rg,gen,smap,schoice,skey,sready>>
 BY <1>QH8yZT1818aXx2y5f, <1>dubuQTZvH8Kxu3pHj4D, <1>jGg3R, <1>i58pvIf, Sizes, Location, Design DEF rtV, Sizes, Location, Design
 <3>3. RO_StableStates BY <1>CHCzj71Gp, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. \A j \in PInst,r \in Rq : (Active(j,r) /\ smap[j][r] \in SPages /\ spst[smap[j][r]]="shared") => SH(j,r,rg[j][r],smap[j][r]) \in rpgS'
 BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SI1, SH, RO_E_rpgS, RO_HLive, Active, Sizes, Location, Design
 <3>5. \A h \in rpgS' :
   /\ Loc(h[4])=h[1] /\ h[3]<=gen'[h[2]]
   /\ (rg'[h[1]][h[2]]=h[3] /\ Active(h[1],h[2])' /\ smap'[h[1]][h[2]]=h[4]) \/ SHPin(h)'
 BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SI1, SI6, RO_E_rpgS, RO_HLive, RO_HPin, Active, SHPin, Sizes, Location, Design
 <3>6. QED BY <2>2, <3>1, <3>2, <3>3, <3>4, <3>5, Design, SMTT(10), Sizes, Location DEF P_SI1, SI1, STypeOK, SSendReady, Active, RO_StableStates, SMapIntegrity, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FwJty6N.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE P_SI2'
<2> USE ONLY <1>FwJty6N, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI2, Sizes, Location, Design
<2>2. CASE B2
 <3>0. sentry' \subseteq Xids BY <2>2, <1>QH8yZT1818aXx2y5f, <1>Hl2eKc2VBkR40pk, Sizes, Location, Design DEF Sizes, Location, Design
 <3>1. SI2 /\ SI4 /\ STypeOK /\ RO_E_spst BY <2>2, <1>pDDs2iPJ6v1, <1>LQE0C5CV3kHl, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED <<ph,rg,smap,xsrc,xsrcS,xsrcP,sown,sgen,skey,swrite,sdata,sready>>
 BY <1>QH8yZT1818aXx2y5f, <1>dubuQTZvH8Kxu3pHj4D, <1>jGg3R, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. RO_StableStates BY <1>CHCzj71Gp, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. \A p \in SPages : ~RO_Ended(p) BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SI2, RO_Ended, Active, Sizes, Location, Design
 <3>5. \A p \in SPages : spst'[p] # "shared" => sprefc'[p]=0 BY <2>2, <3>2, <3>3, <1>tkIbKthZ8rm8L, Sizes, Location, Design DEF Sizes, Location, Design
 <3>6. \A p \in SPages :
    /\ spst'[p] \in {spst[p],"free"}
    /\ (spst'[p]="free" => ~swrite'[p])
    /\ (spst'[p] \in {"drain","dup"} => ~sready'[p] \/ SPin(p)')
 BY <3>0, <3>1, <3>2, <3>4, SMTT(10), Sizes, Location, Design DEF RO_E_spst, RO_Drop, RO_Pin, SI2, SI4, SPin, Sizes, Location, Design
 <3>7. QED BY <2>2, <3>1, <3>2, <3>3, <3>5, <3>6, SMTT(10), Sizes, Location, Design DEF P_SI2, SI2, Active, RO_StableStates, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZWbbeV8.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE P_SI6'
<2> USE ONLY <1>ZWbbeV8, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI6, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI6 /\ RO_E_rpgS BY <2>2, <1>pDDs2iPJ6v1, <1>H0Dre0I9dt5V, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A a \in Inst,b \in KSlots : kpin'[a][b] => kpin[a][b] /\ krs'[a][b]=krs[a][b] BY <1>vKeXDMO2j, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. UNCHANGED <<ph,rg,schoice,smap>> BY <1>QH8yZT1818aXx2y5f, <1>dubuQTZvH8Kxu3pHj4D, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY <2>2, <3>1, <3>2, <3>3, Sizes, SMTT(10), Location, Design DEF NL, P_SI6, SI6, RO_E_rpgS, Active, Inst, PInst, DInst, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GXM6di459.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE P_SI6'
BY ONLY <1>GXM6di459, Sizes, Location, Design, <1>ZWbbeV8 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iKzZ7ZhvR.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE P_SI4'
BY ONLY <1>iKzZ7ZhvR, Sizes, Location, Design, <1>CHCzj71Gp, <1>QH8yZT1818aXx2y5f, <1>dubuQTZvH8Kxu3pHj4D, <1>jGg3R, <1>xJRrtAIajLub7, <1>gLrCjXEdT6xW8NC, <1>GQ5YmXqEwxByFqsGL, <1>S9kRK0leNkDm DEF RO_StableStates, RO_ControlStep, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LDDK0ZuWQ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE P_SI1'
BY ONLY <1>LDDK0ZuWQ, Sizes, Location, Design, <1>Hj75RH6 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AdGBy0CGR.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE P_SI2'
BY ONLY <1>AdGBy0CGR, Sizes, Location, Design, <1>FwJty6N DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rIlQJo1WnjBSS98Z4u70pUa.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE QuietConservation'
<2> USE ONLY <1>rIlQJo1WnjBSS98Z4u70pUa, Sizes, Location, Design
<2>1. BaseQuietConservation' BY <1>f0ySx42ilPeX5exPaxnl, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. P_SI1' /\ P_SI2' /\ STypeOK' /\ PrefcMatchesHolders'
 BY <1>LDDK0ZuWQ, <1>AdGBy0CGR, <1>QH8yZT1818aXx2y5f, <1>g4ukMt7rga0IPw, <1>WGApDWVa4zQXGvgef7CieVW7x, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>EjmNCRbt1, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2495_PdROKernelShared_KDone


<1>gxK0FnRzioxn.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE TypInv'
<2> USE ONLY <1>gxK0FnRzioxn, Sizes, Location, Design
<2>1. CoreTypeOK' BY <1>qdu36EBPY, <1>WAxd2hhfMM, <1>joh6z3bMX, V21_Inv_BaseTypeOK, V21_Inv_TypeOK, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
<2>2. STypeOK' BY <1>QH8yZT1818aXx2y5f, <1>g4ukMt7rga0IPw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF TypInv, Sizes, Location, Design
\* T2M-END R2M2514_PdROKernel_KDone_TypeOK


<1> QED BY <1>rIlQJo1WnjBSS98Z4u70pUa, <1>gxK0FnRzioxn, <1>iKzZ7ZhvR, <1>LDDK0ZuWQ, <1>GXM6di459, <1>Q2WMOAHXy, <1>VcIQgsSwpIeElen, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_KDone_01_02 SHA 953b2b3b181139ee71423ef07cde42fd83f839a151c54fd1bce3a612f0658c2c
USE DEF V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K15, V21_Inv_K2, V21_Inv_K4, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, V22_T_hok, V22_T_kpin, V22_T_krs, V22_T_nx, V22_T_pgn, V22_T_pr, V22_T_pst
HIDE DEF AuxType_9ef278c147c12b12, Part_KDone_01_01, V21_Inv_BaseTypeOK, V21_Inv_K16, V21_Inv_K7, V21_Inv_P_B2OffInit, V21_Inv_SI8
THEOREM Part_KDone_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE (SharedLedRef)' /\ (P_SI2)' /\ (P_SI5)' /\ (KReadIntegrity)' /\ (NoEvictUnderRDMA)' /\ (SendOwnLanded)' /\ (HitIdentity)' /\ (NoStrayAccess)' /\ (PrefcMatchesHolders)' /\ (P_SI3)' /\ (ReadOwnLanded)' /\ (NoFreeUnderRead)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RO_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           RO_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           RO_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           RO_Src(x) == IF RO_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           RO_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           RO_Quarantine(x) == x \in sentry /\ ~RO_Close(x) /\
            ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           RO_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\ (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           RO_Pin(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           RO_Drop(p) == (RO_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RO_Pin(p) /\ sready[p] /\ ~(\E x \in sentry' : p \in xsrcP'[x])


           RO_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
            spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           RO_E_rpgS == rpgS'={h \in rpgS : RO_HLive(h) \/ (RO_HPin(h) /\ Mut # "unrefBeforeKDone")}


           RO_E_xsrcS == xsrcS'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="shared" THEN {RO_Src(x)} ELSE {}) ELSE xsrcS[x]]


           RO_E_xsrcP == xsrcP'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="priv" THEN {RO_Src(x)} ELSE {}) ELSE xsrcP[x]]


           RO_E_sentry == sentry'=(sentry \cup {x \in Xids : RO_Posted(x)}) \ {x \in Xids : RO_Close(x) \/ RO_Quarantine(x)}


           RO_E_squar == squar'=squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RO_Quarantine(x)}})


           RO_E_smap == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           RO_E_schoice == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           RO_E_spst == spst'=[p \in SPages |-> IF \E x \in Xids : RO_Quarantine(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF RO_Drop(p) THEN "free" ELSE IF RO_Ended(p) THEN "drain" ELSE spst[p]]


           RO_E_dpreOK == dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop" THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") => (IF hw[x]="issued" THEN xprefixOK[x] ELSE RO_Valid(x)) ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]


           RO_E_sprefc == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)+SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

           \* T2M-LOCAL-VISIBILITY

           RO_Flat(e) == <<e[1][1],e[1][2],e[2][1],e[2][2]>>

           \* T2M-LOCAL-VISIBILITY

           RO_StableStates == \A p \in SPages : spst[p] \notin {"drain","dup"} => spst'[p]=spst[p]

           \* T2M-LOCAL-VISIBILITY

           RO_ControlStep ==
            /\ \A x \in Xids : iv'[x]=iv[x] \/ iv'[x] \in {"cqe","failret"}
            /\ \A x \in Xids : xst'[x]=xst[x] \/ xst'[x] \in {"landed","failed"}
            /\ \A x \in Xids : hw'[x] \in {"issued","stop"} => hw[x] \in {"fly","issued","stop"}

           \* T2M-LOCAL-VISIBILITY

           UYpr1 == gen \in [Rq -> 0..MG]


           ZB9m == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           XjUj == rp \in [Rq -> {0} \cup Inst]


           RwpJ == rd \in [Rq -> {0} \cup Inst]


           J8zi == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           wHUB == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           IOOT2o9 == alive \in [Inst -> BOOLEAN]


           WCW_RIE == nfail \in 0..MaxFail


           qXm9o1 == torn \in [Inst -> SUBSET Inst]


           lx9I2z == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           Wjy2fg == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           DJuMb == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           r9d6 == ph \in [Inst -> [Rq -> PhSet]]


           V6LQ == rg \in [Inst -> [Rq -> 0..MG]]


           sufyJ == rpg \in [Inst -> [Rq -> 0..NP]]


           hGnPA == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           UuEG == rx \in [Inst -> [Rq -> 0..MX]]


           JHlYLg == rhit \in [Inst -> [Rq -> BOOLEAN]]


           GNsKg == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           d3cH == pr \in [Pages -> 0..NR]


           E5Zo2 == pgn \in [Pages -> 0..MG]


           ehoz3 == plt \in [Pages -> 0..PS]


           ZMkh8 == ptl \in [Pages -> -1..PS]


           b8LBGz == pvis \in [Pages -> BOOLEAN]


           hzt6H == led \in [Pages -> SUBSET Xids]


           LMfyK0 == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           BIdZ6_ == sled \in [Pages -> SUBSET (Rq \X Gens)]


           MSlzCY1 == prefc \in [Pages -> 0..NR]


           tdSC4 == pqp \in [Pages -> {0} \cup Inst]


           PqGK == xr \in [Xids -> 0..NR]


           wl8W == xg \in [Xids -> 0..MG]


           cy_Q == xk \in [Xids -> {"none", "wr", "rd"}]


           L4qc == xp \in [Xids -> {0} \cup Inst]


           bf5O == xd \in [Xids -> {0} \cup Inst]


           O4U_5z == xsrc \in [Xids -> 0..NP]


           Iwh80D == xdst \in [Xids -> 0..NP]


           lpGba == xnt \in [Xids -> 0..PS]


           xyhb == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           OyPI5 == hok \in [Xids -> BOOLEAN]


           U60c == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           xLHsX == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           Pl5Rz == xlt \in [Xids -> 0..PS]


           flJU == nx \in 1..(MX + 1)


           lHQee == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           oKZaCF == drep \in [Rq -> [Gens -> 0..2]]


           M1G19k == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           NO7ciLG == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           c1LgxC == gbad \in BOOLEAN


           BD3C0 == UYpr1 /\ ZB9m /\ XjUj /\ RwpJ /\ J8zi /\ wHUB /\ IOOT2o9 /\ WCW_RIE /\ qXm9o1 /\ lx9I2z /\ Wjy2fg /\ DJuMb /\ r9d6 /\ V6LQ /\ sufyJ /\ hGnPA /\ UuEG /\ JHlYLg /\ GNsKg /\ d3cH /\ E5Zo2 /\ ehoz3 /\ ZMkh8 /\ b8LBGz /\ hzt6H /\ LMfyK0 /\ BIdZ6_ /\ MSlzCY1 /\ tdSC4 /\ PqGK /\ wl8W /\ cy_Q /\ L4qc /\ bf5O /\ O4U_5z /\ Iwh80D /\ lpGba /\ xyhb /\ OyPI5 /\ U60c /\ xLHsX /\ Pl5Rz /\ flJU /\ lHQee /\ oKZaCF /\ M1G19k /\ NO7ciLG /\ c1LgxC

           \* T2M-LOCAL-VISIBILITY

           x5Ahk(i,s) == {p \in Pages :
             /\ p \in {e[3] : e \in krs[i][s]}
             /\ pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {}
             /\ ~ (\E b \in KSlots : b # s /\ kpin[i][b] /\ \E e \in krs[i][b] : e[3] = p)}

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_dpreOK, RO_E_sprefc, RO_Flat, RO_StableStates, RO_ControlStep, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, BD3C0, x5Ahk

<1>H0Dre0I9dt5V.        
 ASSUME B2, SFollow
 PROVE RO_E_rpgS
 BY ONLY <1>H0Dre0I9dt5V, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_rpgS, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m0crpwxTDdjmI.        
 ASSUME B2, SFollow
 PROVE RO_E_xsrcS
 BY ONLY <1>m0crpwxTDdjmI, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_xsrcS, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ifwDg0IoVKTvz.        
 ASSUME B2, SFollow
 PROVE RO_E_xsrcP
 BY ONLY <1>ifwDg0IoVKTvz, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_xsrcP, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oVMEMsT8gqQqbk.        
 ASSUME B2, SFollow
 PROVE RO_E_sentry
 BY ONLY <1>oVMEMsT8gqQqbk, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_sentry, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lIuyiSzJ58zq2.        
 ASSUME B2, SFollow
 PROVE RO_E_squar
 BY ONLY <1>lIuyiSzJ58zq2, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_squar, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kcdhaxe1yPn5.        
 ASSUME B2, SFollow
 PROVE RO_E_smap
 BY ONLY <1>kcdhaxe1yPn5, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_smap, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FuwCbPxDgseJUUg.        
 ASSUME B2, SFollow
 PROVE RO_E_schoice
 BY ONLY <1>FuwCbPxDgseJUUg, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_schoice, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LQE0C5CV3kHl.        
 ASSUME B2, SFollow
 PROVE RO_E_spst
 BY ONLY <1>LQE0C5CV3kHl, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_spst, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kgOzghpuDBjlN1.        
 ASSUME B2, SFollow
 PROVE RO_E_dpreOK
 BY ONLY <1>kgOzghpuDBjlN1, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_dpreOK, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ugzpmKUcZ3Dcdb.        
 ASSUME B2, SFollow
 PROVE RO_E_sprefc
 BY ONLY <1>ugzpmKUcZ3Dcdb, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_sprefc, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pDDs2iPJ6v1.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>pDDs2iPJ6v1, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jGg3R.         SFollow => UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eav3Mlg8.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~RO_Posted(x)
 BY ONLY <1>eav3Mlg8, Sizes, Location, Design, SMTT(10) DEF RO_Posted, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J0yx6oHL5UyrV.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
<2> USE ONLY <1>J0yx6oHL5UyrV, Sizes, Location, Design
<2>1. STypeOK BY V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY ONLY <1>J0yx6oHL5UyrV, <2>2, SMTT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RO_E_smap /\ RO_E_schoice /\ RO_E_xsrcS /\ RO_E_xsrcP /\ (\A x \in Xids : ~RO_Posted(x))
 BY <2>3, <1>kcdhaxe1yPn5, <1>FuwCbPxDgseJUUg, <1>m0crpwxTDdjmI, <1>ifwDg0IoVKTvz, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED rg
 BY <1>J0yx6oHL5UyrV, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. /\ smap \in [PInst -> [Rq -> {0} \cup SPages]]
       /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>J0yx6oHL5UyrV, V22_T_schoice, V22_T_smap, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

 <3>4. /\ smap' = [i \in PInst |-> [r \in Rq |-> smap[i][r]]]
       /\ schoice' = [i \in PInst |-> [r \in Rq |-> schoice[i][r]]]
       /\ xsrcS' = [x \in Xids |-> xsrcS[x]] /\ xsrcP' = [x \in Xids |-> xsrcP[x]]
 BY ONLY <3>1, <3>2, SMTT(20), Sizes, Location, Design DEF RO_E_smap, RO_E_schoice, RO_E_xsrcS, RO_E_xsrcP, Sizes, Location, Design
 <3>5. QED BY ONLY <3>3, <3>4, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SvtT5da.        
 ASSUME PinInv, B2
 PROVE /\ spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
       /\ rpgS \subseteq PInst \X Rq \X Gens \X SPages
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
       /\ sentry \subseteq Xids /\ squar \subseteq Xids \X SPages
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY <1>SvtT5da, V22_T_rpgS, V22_T_sentry, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>L8DIG3nRD9Lv3.        
 IsFiniteSet(PInst) /\ IsFiniteSet(Rq) /\ IsFiniteSet(Gens) /\ IsFiniteSet(Xids) /\ IsFiniteSet(SPages)
 BY Sizes, FS_Interval, SMTT(10), Location, Design DEF PInst, Rq, Gens, Xids, SPages, Sizes, Location, Design


<1>ePMf4RNB21H.        
 IsFiniteSet(PInst \X Rq \X Gens \X SPages) /\ IsFiniteSet(Xids \X SPages)
<2>1. IsFiniteSet((PInst \X Rq) \X (Gens \X SPages)) /\ IsFiniteSet(Xids \X SPages)
 BY <1>L8DIG3nRD9Lv3, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. {RO_Flat(e) : e \in (PInst \X Rq) \X (Gens \X SPages)} = PInst \X Rq \X Gens \X SPages
 <3>1. ASSUME NEW e \in (PInst \X Rq) \X (Gens \X SPages)
        PROVE RO_Flat(e) \in PInst \X Rq \X Gens \X SPages
 BY SMTT(10), Sizes, Location, Design DEF RO_Flat, Sizes, Location, Design
 <3>2. ASSUME NEW e \in PInst \X Rq \X Gens \X SPages
        PROVE e \in {RO_Flat(t) : t \in (PInst \X Rq) \X (Gens \X SPages)}
  <4>1. <<<<e[1],e[2]>>,<<e[3],e[4]>>>> \in (PInst \X Rq) \X (Gens \X SPages)
   BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. RO_Flat(<<<<e[1],e[2]>>,<<e[3],e[4]>>>>)=e
   BY SMTT(10), Sizes, Location, Design DEF RO_Flat, Sizes, Location, Design
  <4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet({RO_Flat(e) : e \in (PInst \X Rq) \X (Gens \X SPages)})
 BY <2>1, FS_Image, IsaT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>l9BskpKB8.        
 ASSUME NEW U, IsFiniteSet(U), NEW V \in SUBSET U, NEW P(_)
 PROVE Cardinality({x \in V : P(x)}) \in Nat
<2> USE ONLY <1>l9BskpKB8, Sizes, Location, Design
<2>1. {x \in V : P(x)} \subseteq U BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet({x \in V : P(x)}) BY <2>1, FS_Subset, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, FS_CardinalityType, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Hl2eKc2VBkR40pk.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc
 PROVE /\ rpgS' \subseteq PInst \X Rq \X Gens \X SPages
       /\ sentry' \subseteq Xids
       /\ squar' \subseteq Xids \X SPages
<2> USE ONLY <1>Hl2eKc2VBkR40pk, Sizes, Location, Design
<2>1. RO_E_rpgS /\ RO_E_sentry /\ RO_E_squar /\ (\A x \in Xids : ~RO_Posted(x))
 BY <1>H0Dre0I9dt5V, <1>oVMEMsT8gqQqbk, <1>lIuyiSzJ58zq2, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpgS \subseteq PInst \X Rq \X Gens \X SPages /\ sentry \subseteq Xids
       /\ squar \subseteq Xids \X SPages /\ xsrcS \in [Xids -> SUBSET SPages]
 BY <1>SvtT5da, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rpgS' \subseteq PInst \X Rq \X Gens \X SPages
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_rpgS, Sizes, Location, Design
<2>4. sentry' \subseteq Xids
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_sentry, Sizes, Location, Design
<2>5. squar' \subseteq Xids \X SPages
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_squar, Sizes, Location, Design
<2>6. QED BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>x8eiSet.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc, NEW p \in SPages
 PROVE /\ SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
       /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
       /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
<2> USE ONLY <1>x8eiSet, Sizes, Location, Design
<2>1. rpgS \subseteq PInst \X Rq \X Gens \X SPages /\ sentry \subseteq Xids /\ squar \subseteq Xids \X SPages
 BY <1>SvtT5da, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpgS' \subseteq PInst \X Rq \X Gens \X SPages /\ sentry' \subseteq Xids /\ squar' \subseteq Xids \X SPages
 BY <1>Hl2eKc2VBkR40pk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ePMf4RNB21H, <1>L8DIG3nRD9Lv3, <1>l9BskpKB8, IsaT(20), Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BhJJoZwTfyo0ME.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>BhJJoZwTfyo0ME, Sizes, Location, Design
<2>1. CASE ~B2
 BY <2>1, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>2. CASE B2
 <3>1. PrefcMatchesHolders /\ RO_E_sprefc BY <2>2, <1>pDDs2iPJ6v1, <1>ugzpmKUcZ3Dcdb, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW p \in SPages
        PROVE sprefc'[p]=SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
  <4>1. SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
       /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
       /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
   BY <2>2, <1>x8eiSet, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. QED BY <2>2, <3>1, <4>1, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, RO_E_sprefc, Sizes, Location, Design
 <3>3. QED BY <3>2, <2>2, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2183_PdROFinite


<1>G62OMB7v6XF.        
 ASSUME PinInv, B2, NEW x \in Xids, hw[x]="fly"
 PROVE RO_Valid(x)
<2> USE ONLY <1>G62OMB7v6XF, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ SendOwnLanded
 BY V21_Inv_NoEvictUnderRDMA, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF RO_Valid, NoEvictUnderRDMA, SAccess, SendOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RDpDVaE3CTJB.        
 ASSUME PinInv, SFollow, B2, \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
 PROVE \A p \in Pages : dpreOK[p] => dpreOK'[p]
<2> USE ONLY <1>RDpDVaE3CTJB, Sizes, Location, Design
<2>1. RO_E_dpreOK /\ SI4 BY <1>kgOzghpuDBjlN1, <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A x \in Xids : hw[x] \in {"fly","issued"} => (IF hw[x]="issued" THEN xprefixOK[x] ELSE RO_Valid(x))
 BY <2>1, <1>G62OMB7v6XF, SMTT(10), Sizes, Location, Design DEF SI4, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_dpreOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>umw00Yrfg.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rpg>>,
        \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
 PROVE B2 => \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} => dpreOK'[rpg'[j][r]]
<2> USE ONLY <1>umw00Yrfg, Sizes, Location, Design
<2>1. ReadOwnLanded BY V21_Inv_ReadOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE B2
 <3>1. \A p \in Pages : dpreOK[p] => dpreOK'[p] BY <2>3, <1>RDpDVaE3CTJB, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF ReadOwnLanded, BaseReadOwnLanded, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zfU9bzFS28ZT.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc,
        \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
 PROVE \A x \in Xids : SAccess(x)' => SAccess(x)
<2> USE ONLY <1>zfU9bzFS28ZT, Sizes, Location, Design
<2>1. RO_E_sentry /\ RO_E_squar /\ (\A x \in Xids : ~RO_Posted(x))
 BY <1>oVMEMsT8gqQqbk, <1>lIuyiSzJ58zq2, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK BY <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. sentry' \subseteq sentry
 BY <2>1, SMTT(10), Sizes, Location, Design DEF RO_E_sentry, Sizes, Location, Design
<2>4. \A h \in squar' : h \in squar \/ h[1] \in sentry
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_squar, RO_Quarantine, STypeOK, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF SAccess, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YraYIuuP0dXpCHZH.        
 ASSUME PinInv, SFollow,
        UNCHANGED <<xsrc,xsrcS,xsrcP,xr,xg,sown,sgen,skey>>, RO_StableStates,
        \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>YraYIuuP0dXpCHZH, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ (B2 => SI4) /\ STypeOK BY V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF NoEvictUnderRDMA, Sizes, Location, Design
<2>3. CASE B2
 <3>1. \A x \in Xids : SAccess(x)' => SAccess(x) BY <2>3, <1>zfU9bzFS28ZT, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, SI4, STypeOK, RO_StableStates, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BbgSGNWiNo6y.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg,smap,skey>>, RO_StableStates
 PROVE HitIdentity'
<2> USE ONLY <1>BbgSGNWiNo6y, Sizes, Location, Design
<2>1. HitIdentity /\ STypeOK BY V21_Inv_HitIdentity, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF HitIdentity, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RO_E_rpgS BY <2>3, <1>H0Dre0I9dt5V, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. rpgS' \subseteq rpgS BY <3>1, SMTT(10), Sizes, Location, Design DEF RO_E_rpgS, Sizes, Location, Design
 <3>3. QED BY <2>1, <2>3, <3>2, SMTT(10), Sizes, Location, Design DEF HitIdentity, Active, STypeOK, RO_StableStates, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Fjqj9qY9B4kZ.        
 ASSUME PinInv, UNCHANGED <<ph,smap>>, RO_StableStates
 PROVE SMapIntegrity'
 BY ONLY <1>Fjqj9qY9B4kZ, Sizes, Location, Design, SMTT(10), V21_Inv_KReadIntegrity DEF KReadIntegrity, SMapIntegrity, Active, RO_StableStates, Sizes, Location, Design
\* T2M-END R2M2184_PdROSharedSafety


<1>t3j82gaQX28rrhM3.        
 ASSUME PinInv, SFollow, B2, UNCHANGED <<ph,rg>>
 PROVE \A p \in SPages :
       /\ spst'[p] \in {spst[p],"free"}
       /\ spst[p] \notin {"drain","dup"} => spst'[p]=spst[p]
       /\ RO_Pin(p) => spst'[p]=spst[p]
<2> USE ONLY <1>t3j82gaQX28rrhM3, Sizes, Location, Design
<2>1. SI2 /\ SI4 /\ RO_E_spst BY <1>pDDs2iPJ6v1, <1>LQE0C5CV3kHl, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A p \in SPages : ~RO_Ended(p)
 BY <2>1, SMTT(10), Sizes, Location, Design DEF SI2, RO_Ended, Active, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF SI4, RO_E_spst, RO_Drop, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cg3ikpihvVLpb3qO.        
 ASSUME PinInv, NEW x \in Xids, iv[x]="reg"
 PROVE xsrc[x] \in Pages /\ pst[xsrc[x]] # "quar"
<2> USE ONLY <1>cg3ikpihvVLpb3qO, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ QuarNoReg
 BY V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>cg3ikpihvVLpb3qO, V22_T_nx, SMTT(5)

<2>3. x<nx /\ xk[x]="wr" BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, K3, Xids, Sizes, Location, Design
<2>4. xsrc[x] \in Pages /\ Loc(xsrc[x])=xp[x] /\ xp[x] \in PInst
 BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K1, K2, InitPage, InitInst, Sizes, Location, Design
<2>5. x \in led[xsrc[x]] BY <2>1, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF K4, InitPage, Sizes, Location, Design
<2>6. QED BY <2>1, <2>4, <2>5, Sizes, SMTT(10), Location, Design DEF QuarNoReg, IsP, PInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FVK4MYGoOHs3gti.        
 ASSUME PinInv, UNCHANGED xsrc,
        \A x \in Xids : iv'[x]="reg" => iv[x]="reg",
        \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
 PROVE \A x \in Xids : iv'[x]="reg" => ~RO_Quarantine(x)
 BY ONLY <1>FVK4MYGoOHs3gti, Sizes, Location, Design, <1>cg3ikpihvVLpb3qO, SMTT(10) DEF RO_Quarantine, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CHVOTlcrYdkDhqRGxLk.        
 ASSUME PinInv, B2
 PROVE /\ \A h \in rpgS : spst[h[4]]="shared"
       /\ \A x \in sentry : \A p \in xsrcS[x] : spst[p]="shared"
       /\ \A h \in squar : spst[h[2]]="shared"
<2> USE ONLY <1>CHVOTlcrYdkDhqRGxLk, Sizes, Location, Design
<2>1. HitIdentity /\ SI4 /\ SI5 /\ STypeOK BY <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF HitIdentity, SI4, SI5, STypeOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zIpzJmV4LXez8qoyL.        
 ASSUME PinInv, SFollow, B2, UNCHANGED <<xsrc,xsrcS>>, RO_StableStates
 PROVE /\ \A h \in rpgS' : spst'[h[4]]="shared"
       /\ \A x \in sentry' : \A p \in xsrcS'[x] : spst'[p]="shared"
       /\ \A h \in squar' : spst'[h[2]]="shared"
<2> USE ONLY <1>zIpzJmV4LXez8qoyL, Sizes, Location, Design
<2>1. RO_E_rpgS /\ RO_E_sentry /\ RO_E_squar /\ (\A x \in Xids : ~RO_Posted(x))
 BY <1>H0Dre0I9dt5V, <1>oVMEMsT8gqQqbk, <1>lIuyiSzJ58zq2, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK /\ (\A h \in rpgS : spst[h[4]]="shared")
       /\ (\A x \in sentry : \A p \in xsrcS[x] : spst[p]="shared")
       /\ (\A h \in squar : spst[h[2]]="shared")
 BY <1>CHVOTlcrYdkDhqRGxLk, <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_rpgS, RO_E_sentry, RO_E_squar, RO_Quarantine, STypeOK, RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tkIbKthZ8rm8L.        
 ASSUME PinInv, SFollow, B2, UNCHANGED <<xsrc,xsrcS>>, RO_StableStates, NEW p \in SPages, spst'[p] # "shared"
 PROVE sprefc'[p]=0
<2> USE ONLY <1>tkIbKthZ8rm8L, Sizes, Location, Design
<2>1. PrefcMatchesHolders' BY <1>BhJJoZwTfyo0ME, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. (\A h \in rpgS' : spst'[h[4]]="shared")
       /\ (\A x \in sentry' : \A q \in xsrcS'[x] : spst'[q]="shared")
       /\ (\A h \in squar' : spst'[h[2]]="shared")
 BY <1>zIpzJmV4LXez8qoyL, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. {h \in rpgS' : h[4]=p}={} /\ {x \in sentry' : p \in xsrcS'[x]}={} /\ {h \in squar' : h[2]=p}={}
 BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, FS_EmptySet, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, SRefR, SRefE, SRefQ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k9ruZkLVvpGveCVg.        
 ASSUME NEW S, IsFiniteSet(S), S # {}
 PROVE Cardinality(S)>0
 BY ONLY <1>k9ruZkLVvpGveCVg, Sizes, Location, Design, FS_EmptySet, FS_CardinalityType, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RMHRf5pN.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc, NEW p \in SPages
 PROVE /\ SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat
       /\ (\E h \in rpgS' : h[4]=p) => SRefR(rpgS',p)>0
<2> USE ONLY <1>RMHRf5pN, Sizes, Location, Design
<2>1. rpgS' \subseteq PInst \X Rq \X Gens \X SPages BY <1>Hl2eKc2VBkR40pk, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet({h \in rpgS' : h[4]=p}) BY <2>1, <1>ePMf4RNB21H, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (\E h \in rpgS' : h[4]=p) => {h \in rpgS' : h[4]=p} # {}
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. (\E h \in rpgS' : h[4]=p) => SRefR(rpgS',p)>0
 BY <2>2, <2>3, <1>k9ruZkLVvpGveCVg, SMTT(10), Sizes, Location, Design DEF SRefR, Sizes, Location, Design
<2>5. SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat
 BY <1>x8eiSet, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>W6ZEgSLf4BlQd7l9.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc, P_SI3'
 PROVE SharedLedRef'
<2> USE ONLY <1>W6ZEgSLf4BlQd7l9, Sizes, Location, Design
<2>1. PrefcMatchesHolders' BY <1>BhJJoZwTfyo0ME, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ASSUME NEW p \in SPages
       PROVE /\ ((spst'[p]="shared" /\ (SRefE(sentry',xsrcS',p)>0 \/ SPin(p)')) \/ SRefQ(squar',p)>0) => sprefc'[p]>=1
             /\ sprefc'[p]>=SRefQ(squar',p)
 <3>1. SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat
       /\ ((\E h \in rpgS' : h[4]=p) => SRefR(rpgS',p)>0)
 BY <1>RMHRf5pN, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. (spst'[p]="shared" /\ SPin(p)') => \E h \in rpgS' : h[4]=p
 BY SMTT(10), Sizes, Location, Design DEF P_SI3, SI3, SPin, SH, Sizes, Location, Design
 <3>3. sprefc'[p] = SRefR(rpgS',p) + SRefE(sentry',xsrcS',p) + SRefQ(squar',p)
  BY ONLY <1>W6ZEgSLf4BlQd7l9, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
 <3>4. QED
  <4>sumBounds. ASSUME NEW a \in Nat, NEW b \in Nat, NEW c \in Nat, NEW total, total=a+b+c
               PROVE total>=c /\ ((a>0 \/ b>0 \/ c>0) => total>=1)
   <5>integer. a \in Int /\ b \in Int /\ c \in Int
    BY ONLY <4>sumBounds, SMTT(5)
   <5>nonnegative. a>=0 /\ b>=0 /\ c>=0
    BY ONLY <4>sumBounds, SMTT(5)
   <5>qed. QED BY ONLY <4>sumBounds, <5>integer, <5>nonnegative, SMTT(5)
  <4>pin. (spst'[p]="shared" /\ SPin(p)') => SRefR(rpgS',p)>0
   BY ONLY <3>1, <3>2, SMTT(5)
  <4>bounds. sprefc'[p]>=SRefQ(squar',p) /\
    ((SRefR(rpgS',p)>0 \/ SRefE(sentry',xsrcS',p)>0 \/ SRefQ(squar',p)>0) => sprefc'[p]>=1)
   BY ONLY <3>1, <3>3, <4>sumBounds, SMTT(5)
  <4>qed. QED BY ONLY <4>pin, <4>bounds, SMTT(5)
<2>3. QED BY <2>2, Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QH8yZT1818aXx2y5f.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, KDone(i,s)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>QH8yZT1818aXx2y5f, Sizes, Location, Design, Design, ZenonT(10) DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dubuQTZvH8Kxu3pHj4D.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>dubuQTZvH8Kxu3pHj4D, Sizes, Location, Design, <1>QH8yZT1818aXx2y5f, <1>J0yx6oHL5UyrV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BVR7eTCSrVqQJ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
 PROVE \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
<2> USE ONLY <1>BVR7eTCSrVqQJ, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>BVR7eTCSrVqQJ, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gLrCjXEdT6xW8NC.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
 PROVE \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
<2> USE ONLY <1>gLrCjXEdT6xW8NC, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>gLrCjXEdT6xW8NC, V22_T_hw, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tlu0yHVIqjtDNQJ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
 PROVE \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
<2> USE ONLY <1>Tlu0yHVIqjtDNQJ, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Tlu0yHVIqjtDNQJ, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mmZlMvgdOS2HEFY.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
 PROVE \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
<2> USE ONLY <1>mmZlMvgdOS2HEFY, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>mmZlMvgdOS2HEFY, V22_T_iv, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xJRrtAIajLub7.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
 PROVE /\ \A z \in Xids : iv'[z]=iv[z] \/ iv'[z] \in {"cqe","failret"}
       /\ \A z \in Xids : xst'[z]=xst[z] \/ xst'[z] \in {"landed","failed"}
       /\ \A z \in Xids : hw'[z] \in {"issued","stop"} => hw[z] \in {"fly","issued","stop"}
<2> USE ONLY <1>xJRrtAIajLub7, Sizes, Location, Design
<2>1. K3 /\ hw \in [Xids -> {"none","fly","issued","stop"}]
       /\ iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
       /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>xJRrtAIajLub7, V22_T_hw, V22_T_iv, V22_T_xst, V21_Inv_K3, Sizes, Location, Design, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>somO4CT94uSb7vuN.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
 PROVE \A z \in Xids : (hw'[z]="stop" /\ hok'[z] /\ xdst[z] \in Pages /\ Held(xdst[z],z)') =>
       ((hw[z]="stop" /\ hok[z] /\ Held(xdst[z],z)) \/ hw[z] \in {"fly","issued"})
<2> USE ONLY <1>somO4CT94uSb7vuN, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
       /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
       /\ hw \in [Xids -> {"none","fly","issued","stop"}] /\ hok \in [Xids -> BOOLEAN]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>somO4CT94uSb7vuN, V22_T_hok, V22_T_hw, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KDone, ghV, recV, rtV, xV, Held, Sizes, Location, Design
\* T2M-END R2M2484_PdROEffects_KDone


<1>tyUY5MDbhEEvCeDX4yWX6fPCE.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>tyUY5MDbhEEvCeDX4yWX6fPCE, Sizes, Location, Design, <1>QH8yZT1818aXx2y5f, <1>BhJJoZwTfyo0ME DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>K49culthi.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrcS,xsrcP,xr,xg>>,
        \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
 PROVE IF ~B2 THEN TRUE ELSE \A x \in Xids : hw'[x]="fly" => \A p \in xsrcS'[x] \cup xsrcP'[x] :
       sdata'[p] /\ ~swrite'[p] /\ skey'[p]=STok(xr'[x],xg'[x])
<2> USE ONLY <1>K49culthi, Sizes, Location, Design
<2>1. SendOwnLanded BY V21_Inv_SendOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<sdata,swrite,skey>> BY <1>jGg3R, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF SendOwnLanded, Sizes, Location, Design
\* T2M-END R2M2187_PdROSharedControl


<1>LR4QDO8J.        
 ASSUME PinInv, SFollow, B2, NEW p \in Pages,
        \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
 PROVE dpreOK'[p]
<2> USE ONLY <1>LR4QDO8J, Sizes, Location, Design
<2>1. SI4 /\ RO_E_dpreOK BY <1>pDDs2iPJ6v1, <1>kgOzghpuDBjlN1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A x \in Xids : hw[x]="issued" => xprefixOK[x]
 BY <2>1, ZenonT(10), Sizes, Location, Design DEF SI4, Sizes, Location, Design
<2>3. \A x \in Xids : hw[x]="fly" => RO_Valid(x) BY <1>G62OMB7v6XF, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF RO_E_dpreOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cU8s9xOg0OyR.        
 ASSUME PinInv, SFollow, RO_ControlStep,
        UNCHANGED <<ph,rg,smap,xsrc,xsrcS,xsrcP,xr,xg,xk,xdst,nx,skey>>, RO_StableStates,
        \A x \in Xids : iv'[x]="reg" => ~RO_Quarantine(x),
        \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free"),
        \A x \in Xids : (hw'[x]="stop" /\ hok'[x] /\ xdst[x] \in Pages /\ Held(xdst[x],x)') =>
          ((hw[x]="stop" /\ hok[x] /\ Held(xdst[x],x)) \/ hw[x] \in {"fly","issued"})
 PROVE P_SI5'
<2> USE ONLY <1>cU8s9xOg0OyR, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI5, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI4 /\ SI5 /\ STypeOK /\ SMapIntegrity /\ RO_E_squar BY <2>2, <1>pDDs2iPJ6v1, <1>lIuyiSzJ58zq2, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A h \in squar' : h \in squar \/ (\E x \in Xids : \E p \in xsrcS[x] : h= <<x,p>> /\ RO_Quarantine(x))
 BY <3>1, SMTT(10), Sizes, Location, Design DEF RO_E_squar, Sizes, Location, Design
 <3>3. \A h \in squar' : h[1]<nx' /\ h[2] \in xsrcS'[h[1]] /\ spst'[h[2]]="shared" /\ skey'[h[2]]=STok(xr'[h[1]],xg'[h[1]]) /\ iv'[h[1]] # "reg"
 BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SI4, SI5, STypeOK, RO_Quarantine, RO_ControlStep, RO_StableStates, Sizes, Location, Design
 <3>4. \A x \in Xids : (hw'[x]="stop" /\ hok'[x] /\ xdst'[x] \in Pages /\ Held(xdst[x],x)') => dpreOK'[xdst'[x]]
 BY <2>2, <3>1, <1>LR4QDO8J, <1>RDpDVaE3CTJB, SMTT(10), Sizes, Location, Design DEF SI5, Sizes, Location, Design
 <3>5. QED BY <2>2, <3>1, <3>3, <3>4, ZenonT(10), Sizes, Location, Design DEF P_SI5, SI5, Active, RO_StableStates, SMapIntegrity, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2188_PdROSharedFive


<1>ovPRYrjqOLGlah.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE \A a \in Inst,b \in KSlots : kpin'[a][b] => \A e \in krs'[a][b] : e[3] \in SPages => (SHeld(e) => SHeld(e)')
<2> USE ONLY <1>ovPRYrjqOLGlah, Sizes, Location, Design
<2>1. K14 /\ kpin \in [Inst -> [KSlots -> BOOLEAN]] /\ krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0,1,2,3,4})]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ovPRYrjqOLGlah, V22_T_kpin, V22_T_krs, V21_Inv_K14, Sizes, Location, Design, SMTT(5)

<2>2. UNCHANGED <<ph,rg,sown,sgen>> BY <1>jGg3R, ZenonT(10), Sizes, Location, Design DEF KDone, recV, Sizes, Location, Design
<2>3. \A a \in Inst,b \in KSlots : kpin'[a][b] => kpin[a][b] /\ krs'[a][b]=krs[a][b]
 BY <2>1, Design, SMTT(10), Sizes, Location DEF KDone, K14, Sizes, Location, Design
<2>4. \A a \in Inst,b \in KSlots : kpin'[a][b] => \A e \in krs'[a][b] : e[3] \in SPages => B2 /\ a \in PInst /\ RO_Pin(e[3])
 BY <2>1, <2>3, Sizes, SMTT(10), Location, Design DEF NL, K14, IsP, PInst, Inst, DInst, RO_Pin, Sizes, Location, Design
<2>5. QED BY <2>2, <2>4, <1>t3j82gaQX28rrhM3, SMTT(10), Sizes, Location, Design DEF SHeld, Sizes, Location, Design
\* T2M-END R2M2480_PdROKernelShared


<1>WAxd2hhfMM.        
 ASSUME PinInv
 PROVE TypInv => BD3C0
  BY ONLY <1>WAxd2hhfMM, Sizes, Location, Design, ZenonT(5) DEF TypInv, CoreTypeOK, BD3C0, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>joh6z3bMX.        
 PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2481_PdROK_PdProofBase


<1>i58pvIf.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, KDone(i,s)
  , PinInv
 PROVE /\ ~kfly[i][s]
        /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
        /\ krs' = [krs EXCEPT ![i][s] = {}]
        /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY ONLY <1>i58pvIf, Sizes, Location, Design, Design, SMT DEF KDone, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JH6mCA5.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, lx9I2z, KDone(i,s)
  , PinInv
 PROVE /\ pst' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pqp[p]]
  BY ONLY <1>JH6mCA5, Sizes, Location, Design, Design, SMT DEF KDone, x5Ahk, lx9I2z, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gRydeD0QeS.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, lx9I2z, DJuMb, K14, KDone(i,s)
  , PinInv
 PROVE \A a \in Inst, b \in KSlots : kpin'[a][b] =>
          /\ kpin[a][b] /\ krs'[a][b] = krs[a][b]
          /\ \A e \in krs'[a][b] : e[3] \notin x5Ahk(i,s)
<2> USE ONLY <1>gRydeD0QeS, Sizes, Location, Design
<2>1. /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
       /\ krs' = [krs EXCEPT ![i][s] = {}]
  BY <1>i58pvIf, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF lx9I2z, DJuMb, K14, x5Ahk, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vdP9Vn.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, lx9I2z, Wjy2fg, DJuMb, K14, KDone(i,s)
  , PinInv
 PROVE K14'
<2> USE ONLY <1>vdP9Vn, Sizes, Location, Design
<2>1. /\ ~kfly[i][s]
       /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
       /\ krs' = [krs EXCEPT ![i][s] = {}]
       /\ UNCHANGED <<kfly, gen>>
  BY <1>i58pvIf, Sizes, Location, Design DEF rtV, Sizes, Location, Design
<2>2. \A a \in Inst, b \in KSlots : kfly'[a][b] => kpin'[a][b]
  BY <2>1, SMT, Sizes, Location, Design DEF lx9I2z, Wjy2fg, K14, Sizes, Location, Design
<2>3. \A a \in Inst, b \in KSlots : (krs'[a][b] # {}) <=> kpin'[a][b]
  BY <2>1, SMT, Sizes, Location, Design DEF lx9I2z, DJuMb, K14, Sizes, Location, Design
<2>4. \A a \in Inst, b \in KSlots : \A e \in krs'[a][b] :
        Loc(e[3]) = a /\ e[2] <= gen'[e[1]] /\ (IF e[3] \in SPages THEN B2 /\ IsP(a) /\ e[4] \in {1,4} ELSE e[4] \in {0,1,2,3} /\ (e[4] # 0 => IsD(a)))
  BY <2>1, SMT, Sizes, Location, Design DEF DJuMb, K14, Sizes, Location, Design
<2>5. QED
  BY <2>2, <2>3, <2>4, Sizes, Location, Design DEF K14, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VMmIU4jQER5sk10sAu.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, lx9I2z, DJuMb, K14, NoFreeUnderRead, KDone(i,s)
  , PinInv, SFollow
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>VMmIU4jQER5sk10sAu, Sizes, Location, Design
<2>1. \A a \in Inst, b \in KSlots : kpin'[a][b] =>
          /\ kpin[a][b] /\ krs'[a][b] = krs[a][b]
          /\ \A e \in krs'[a][b] : e[3] \notin x5Ahk(i,s)
  BY <1>gRydeD0QeS, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. /\ pst' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN "free" ELSE pst[p]]
       /\ pr' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pr[p]]
       /\ pgn' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pgn[p]]
  BY <1>JH6mCA5, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>ovPRYrjqOLGlah, SMT, Sizes, Location, Design DEF NoFreeUnderRead, KHeld, SHeld, DJuMb, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OcVhaGujg1P.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, lx9I2z, DJuMb, K14, KDone(i,s)
  , PinInv
 PROVE \A a \in Inst, b \in KSlots : kpin'[a][b] =>
    /\ kpin[a][b] /\ krs'[a][b] = krs[a][b]
    /\ \A e \in krs'[a][b] : e[3] \in Pages =>
       /\ pst'[e[3]] = pst[e[3]] /\ pr'[e[3]] = pr[e[3]]
       /\ pgn'[e[3]] = pgn[e[3]] /\ plt'[e[3]] = plt[e[3]]
<2> USE ONLY <1>OcVhaGujg1P, Sizes, Location, Design
<2>1. \A a \in Inst, b \in KSlots : kpin'[a][b] =>
          /\ kpin[a][b] /\ krs'[a][b] = krs[a][b]
          /\ \A e \in krs'[a][b] : e[3] \notin x5Ahk(i,s)
  BY <1>gRydeD0QeS, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. /\ pst' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN "free" ELSE pst[p]]
       /\ pr' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pr[p]]
       /\ pgn' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pgn[p]]
       /\ plt' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE plt[p]]
  BY <1>JH6mCA5, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF DJuMb, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>au6dOw.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, lx9I2z, DJuMb, K14, K15, KDone(i,s)
  , PinInv, SFollow
 PROVE K15'
<2> USE ONLY <1>au6dOw, Sizes, Location, Design
<2>1. \A a \in Inst, b \in KSlots : kpin'[a][b] =>
    /\ kpin[a][b] /\ krs'[a][b] = krs[a][b]
    /\ \A e \in krs'[a][b] : e[3] \in Pages => plt'[e[3]] = plt[e[3]]
  BY <1>OcVhaGujg1P, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ptl, pvis, led, sfly, sled, hw, xdst>>
  BY <1>i58pvIf, Sizes, Location, Design DEF xV, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>jGg3R, SMT, Sizes, Location, Design DEF K15, KData, SData, NoWriteInto, Writing, InFl, DJuMb, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vKeXDMO2j.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE \A a \in Inst,b \in KSlots : kpin'[a][b] => kpin[a][b] /\ krs'[a][b]=krs[a][b]
 BY ONLY <1>vKeXDMO2j, Sizes, Location, Design, <1>gRydeD0QeS, <1>WAxd2hhfMM, V21_Inv_K14, V21_Inv_TypeOK DEF BD3C0, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CHCzj71Gp.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE RO_StableStates
<2> USE ONLY <1>CHCzj71Gp, Sizes, Location, Design
<2>1. CASE B2 BY <2>1, <1>QH8yZT1818aXx2y5f, <1>t3j82gaQX28rrhM3, Sizes, Location, Design DEF RO_StableStates, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, V21_SFollowOff, Sizes, Location, Design DEF sV, RO_StableStates, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FwJty6N.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE P_SI2'
<2> USE ONLY <1>FwJty6N, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI2, Sizes, Location, Design
<2>2. CASE B2
 <3>0. sentry' \subseteq Xids BY <2>2, <1>QH8yZT1818aXx2y5f, <1>Hl2eKc2VBkR40pk, Sizes, Location, Design DEF Sizes, Location, Design
 <3>1. SI2 /\ SI4 /\ STypeOK /\ RO_E_spst BY <2>2, <1>pDDs2iPJ6v1, <1>LQE0C5CV3kHl, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED <<ph,rg,smap,xsrc,xsrcS,xsrcP,sown,sgen,skey,swrite,sdata,sready>>
 BY <1>QH8yZT1818aXx2y5f, <1>dubuQTZvH8Kxu3pHj4D, <1>jGg3R, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. RO_StableStates BY <1>CHCzj71Gp, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. \A p \in SPages : ~RO_Ended(p) BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SI2, RO_Ended, Active, Sizes, Location, Design
 <3>5. \A p \in SPages : spst'[p] # "shared" => sprefc'[p]=0 BY <2>2, <3>2, <3>3, <1>tkIbKthZ8rm8L, Sizes, Location, Design DEF Sizes, Location, Design
 <3>6. \A p \in SPages :
    /\ spst'[p] \in {spst[p],"free"}
    /\ (spst'[p]="free" => ~swrite'[p])
    /\ (spst'[p] \in {"drain","dup"} => ~sready'[p] \/ SPin(p)')
 BY <3>0, <3>1, <3>2, <3>4, SMTT(10), Sizes, Location, Design DEF RO_E_spst, RO_Drop, RO_Pin, SI2, SI4, SPin, Sizes, Location, Design
 <3>7. QED BY <2>2, <3>1, <3>2, <3>3, <3>5, <3>6, SMTT(10), Sizes, Location, Design DEF P_SI2, SI2, Active, RO_StableStates, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SzJ7hFe.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE P_SI3'
<2> USE ONLY <1>SzJ7hFe, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI3 /\ STypeOK /\ RO_E_rpgS BY <2>2, <1>pDDs2iPJ6v1, <1>H0Dre0I9dt5V, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A a \in Inst,b \in KSlots : kpin'[a][b] => kpin[a][b] /\ krs'[a][b]=krs[a][b] BY <1>vKeXDMO2j, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. UNCHANGED <<sdata,swrite,skey,sown,sgen>> BY <1>jGg3R, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. \A a \in PInst,b \in KSlots : kpin'[a][b] => \A e \in krs'[a][b] : e[3] \in SPages =>
    /\ SHeld(e)' /\ (spst'[e[3]]="shared" => SH(a,e[1],e[2],e[3]) \in rpgS')
 BY <2>2, <3>1, <3>2, <1>ovPRYrjqOLGlah, <1>CHCzj71Gp, <1>QH8yZT1818aXx2y5f, <1>t3j82gaQX28rrhM3, Sizes, Design, SMTT(10), Location DEF NL, SI3, STypeOK, Inst, PInst, DInst, SH, RO_E_rpgS, RO_HPin, RO_StableStates, Sizes, Location, Design
 <3>5. QED BY <2>2, <3>1, <3>2, <3>3, <3>4, Sizes, SMTT(10), Location, Design DEF NL, P_SI3, SI3, SData, Inst, PInst, DInst, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RBcXig4kpK2EXats9.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE HitIdentity'
BY ONLY <1>RBcXig4kpK2EXats9, Sizes, Location, Design, <1>CHCzj71Gp, <1>QH8yZT1818aXx2y5f, <1>dubuQTZvH8Kxu3pHj4D, <1>jGg3R, <1>BbgSGNWiNo6y DEF RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NUdYZKfEVGAYiPs0uC4omR.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE NoEvictUnderRDMA'
BY ONLY <1>NUdYZKfEVGAYiPs0uC4omR, Sizes, Location, Design, <1>CHCzj71Gp, <1>QH8yZT1818aXx2y5f, <1>dubuQTZvH8Kxu3pHj4D, <1>gLrCjXEdT6xW8NC, <1>jGg3R, <1>YraYIuuP0dXpCHZH DEF RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iS1UF5FCZ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE P_SI3'
BY ONLY <1>iS1UF5FCZ, Sizes, Location, Design, <1>SzJ7hFe DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OCbs2AavJ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE P_SI5'
BY ONLY <1>OCbs2AavJ, Sizes, Location, Design, <1>CHCzj71Gp, <1>QH8yZT1818aXx2y5f, <1>dubuQTZvH8Kxu3pHj4D, <1>jGg3R, <1>xJRrtAIajLub7, <1>BVR7eTCSrVqQJ, <1>somO4CT94uSb7vuN, <1>mmZlMvgdOS2HEFY, <1>Tlu0yHVIqjtDNQJ, <1>FVK4MYGoOHs3gti, <1>cU8s9xOg0OyR DEF RO_StableStates, RO_ControlStep, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eErwEq4OB.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE P_SI2'
BY ONLY <1>eErwEq4OB, Sizes, Location, Design, <1>FwJty6N DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CTtXJdYDbOzpVUrSVb.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE SharedLedRef'
<2> USE ONLY <1>CTtXJdYDbOzpVUrSVb, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
<2>2. CASE B2 BY <2>2, <1>iS1UF5FCZ, <1>QH8yZT1818aXx2y5f, <1>W6ZEgSLf4BlQd7l9, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EJhjMoBsxizenVP8Kxme.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>EJhjMoBsxizenVP8Kxme, Sizes, Location, Design
<2>1. K14' /\ K15' /\ NoFreeUnderRead'
 BY <1>vdP9Vn, <1>au6dOw, <1>VMmIU4jQER5sk10sAu, <1>WAxd2hhfMM, <1>joh6z3bMX, V21_Inv_K14, V21_Inv_K15, V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
<2>2. BaseKReadIntegrity' BY <2>1, SMTT(10), Sizes, Location, Design DEF K14, K15, NoFreeUnderRead, BaseKReadIntegrity, Sizes, Location, Design
<2>3. RO_StableStates BY <1>CHCzj71Gp, Sizes, Location, Design DEF RO_StableStates, Sizes, Location, Design
<2>4. SMapIntegrity' BY <2>3, <1>QH8yZT1818aXx2y5f, <1>dubuQTZvH8Kxu3pHj4D, <1>Fjqj9qY9B4kZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>2, <2>4, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2502_PdROKernel_KDone_KReadIntegrity

\* T2M-SCOPE R2M2503_PdROKernel_KDone_NoFreeUnderRead

<1>fjNVYNdD3uUWdxb5OgFQa.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE NoFreeUnderRead'
BY ONLY <1>fjNVYNdD3uUWdxb5OgFQa, Sizes, Location, Design, <1>VMmIU4jQER5sk10sAu, <1>WAxd2hhfMM, <1>joh6z3bMX, V21_Inv_K14, V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK DEF BD3C0, Sizes, Location, Design
\* T2M-END R2M2503_PdROKernel_KDone_NoFreeUnderRead


<1>PWJS8o9yjz4x9bqfC.        
  ASSUME NEW x \in Xids, PinInv, InFl(x)
  
 PROVE /\ xdst[x] \in Pages /\ x \in led[xdst[x]]
        /\ (hw[x] = "fly" => xsrc[x] \in Pages /\ x \in led[xsrc[x]])
<2> USE ONLY <1>PWJS8o9yjz4x9bqfC, Sizes, Location, Design
<2>1. K2 /\ K3 /\ K4 /\ flJU
  BY <1>joh6z3bMX, <1>WAxd2hhfMM, SMTT(10), V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
<2>2. x < nx /\ iv[x] \notin {"none", "nopost", "reg"}
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, K3, InFl, flJU, Xids, Sizes, Location, Design
<2>3. ExpPage(x) \in Pages /\ InitPage(x) \in Pages
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>4. /\ xst[x] = "posted"
       /\ (iv[x] \in {"posted", "failret"} \/ (iv[x] = "cqe" /\ hw[x] = "issued" /\ ~hok[x]))
       /\ (iv[x] = "cqe" => hw[x] \in CqeHw(x))
       /\ (hw[x] = "issued" => xk[x] = "wr")
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K3, Sizes, Location, Design
<2>5. /\ x \in led[ExpPage(x)]
       /\ (iv[x] \in {"posted", "failret"} => x \in led[InitPage(x)])
  BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF K4, Sizes, Location, Design
<2>6. QED
  BY <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF InitPage, ExpPage, CqeHw, InFl, Sizes, Location, Design
\* T2M-END R2M2504_PdROK_PdLiveLedger


<1>ELt7vTDaw6fLKABp.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
  
 PROVE NoStrayAccess'
<2> USE ONLY <1>ELt7vTDaw6fLKABp, Sizes, Location, Design
<2>1. K6 /\ K14 /\ NoFreeUnderRead /\ NoStrayAccess /\ lx9I2z /\ Wjy2fg /\ DJuMb
  BY <1>joh6z3bMX, <1>WAxd2hhfMM, SMTT(10), V21_Inv_K14, V21_Inv_K6, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, BD3C0, Sizes, Location, Design
<2>2. K14' /\ NoFreeUnderRead'
  BY <2>1, <1>vdP9Vn, <1>VMmIU4jQER5sk10sAu, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. /\ pst' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN "free" ELSE pst[p]]
       /\ pr' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pr[p]]
       /\ pgn' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pgn[p]]
  BY <2>1, <1>JH6mCA5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. UNCHANGED <<hw, xsrc, xdst, xr, xg, sfly, sled, led>>
  BY <1>i58pvIf, SMTT(10), Sizes, Location, Design DEF xV, Sizes, Location, Design
<2>5. \A x \in Xids :
  /\ (Writing(x) => xdst[x] \in Pages /\ xdst[x] \notin x5Ahk(i,s))
  /\ (hw[x] = "fly" => xsrc[x] \in Pages /\ xsrc[x] \notin x5Ahk(i,s))
  BY <1>PWJS8o9yjz4x9bqfC, SMTT(10), Sizes, Location, Design DEF x5Ahk, Writing, InFl, Sizes, Location, Design
<2>6. \A p \in Pages : sfly[p] # {} => p \notin x5Ahk(i,s)
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K6, x5Ahk, Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF NoStrayAccess, Held, Writing, InFl, NoFreeUnderRead, K14, Sizes, Location, Design
\* T2M-END R2M2505_PdROK_PdCell_KDone_NoStrayAccess


<1>M5ucAgEocXGaurtQ8A1.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE NoStrayAccess'
BY ONLY <1>M5ucAgEocXGaurtQ8A1, Sizes, Location, Design, <1>ELt7vTDaw6fLKABp, <1>WAxd2hhfMM, <1>joh6z3bMX, V21_Inv_NoStrayAccess, V21_Inv_TypeOK DEF BD3C0, Sizes, Location, Design
\* T2M-END R2M2506_PdROKernel_KDone_NoStrayAccess


<1>SHDyWlCJ2ZlB3zeV.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
  
 PROVE BaseReadOwnLanded'
<2> USE ONLY <1>SHDyWlCJ2ZlB3zeV, Sizes, Location, Design
<2>1. BaseReadOwnLanded /\ xyhb /\ lx9I2z /\ DJuMb /\ E5Zo2 /\ r9d6 /\ d3cH /\ GNsKg /\ ZMkh8 /\ b8LBGz /\ V6LQ /\ JHlYLg /\ sufyJ /\ Iwh80D
  BY <1>joh6z3bMX, <1>WAxd2hhfMM, SMTT(10), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BD3C0, BaseSafety, Sizes, Location, Design
<2>2. /\ ~kfly[i][s]
        /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
        /\ krs' = [krs EXCEPT ![i][s] = {}]
        /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY <1>i58pvIf, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. /\ pst' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pqp[p]]
  BY <2>1, <1>JH6mCA5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Sizes, Location, SMTT(10) DEF DInst, x5Ahk, InFl, Inst, IsD, IsP, NL, NoWriteInto, PInst, BaseReadOwnLanded, xyhb, lx9I2z, DJuMb, E5Zo2, r9d6, d3cH, GNsKg, ZMkh8, b8LBGz, V6LQ, JHlYLg, sufyJ, Iwh80D, Writing, ghV, recV, rtV, xV, KPages, Sizes, Location, Design
\* T2M-END R2M2507_PdROK_PdCell_KDone_ReadOwnLanded


<1>B477rJIekqzj9i3m8PL.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE ReadOwnLanded'
<2> USE ONLY <1>B477rJIekqzj9i3m8PL, Sizes, Location, Design
<2>1. BaseReadOwnLanded' BY <1>SHDyWlCJ2ZlB3zeV, <1>WAxd2hhfMM, <1>joh6z3bMX, V21_Inv_TypeOK, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
<2>2. B2 => \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} => dpreOK'[rpg'[j][r]]
 BY <1>QH8yZT1818aXx2y5f, <1>BVR7eTCSrVqQJ, <1>umw00Yrfg, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF ReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M2508_PdROKernel_KDone_ReadOwnLanded


<1>xezVr2lKkmeM5ztHuQhBqg.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, BaseSendOwnLanded, KDone(i,s)
  , PinInv
 PROVE BaseSendOwnLanded'
<2> USE ONLY <1>xezVr2lKkmeM5ztHuQhBqg, Sizes, Location, Design
<2>1. UNCHANGED <<hw, ptl, sfly, xlt, xsrc>>
  BY <1>i58pvIf, Sizes, Location, Design DEF rtV, recV, pgV, xV, ghV, instV, kV, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF BaseSendOwnLanded, Xids, Sizes, Location, Design
\* T2M-END R2M2512_PdROK_PdFrameProofs


<1>gSQdSBfRpP7c0cM2Yb0.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE SendOwnLanded'
<2> USE ONLY <1>gSQdSBfRpP7c0cM2Yb0, Sizes, Location, Design
<2>1. BaseSendOwnLanded' BY <1>xezVr2lKkmeM5ztHuQhBqg, <1>WAxd2hhfMM, <1>joh6z3bMX, V21_Inv_TypeOK, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
<2>2. IF ~B2 THEN TRUE ELSE \A x \in Xids : hw'[x]="fly" => \A p \in xsrcS'[x] \cup xsrcP'[x] : sdata'[p] /\ ~swrite'[p] /\ skey'[p]=STok(xr'[x],xg'[x])
 BY <1>QH8yZT1818aXx2y5f, <1>dubuQTZvH8Kxu3pHj4D, <1>gLrCjXEdT6xW8NC, <1>K49culthi, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF SendOwnLanded, Sizes, Location, Design
\* T2M-END R2M2513_PdROKernel_KDone_SendOwnLanded


<1> QED BY <1>CTtXJdYDbOzpVUrSVb, <1>eErwEq4OB, <1>OCbs2AavJ, <1>EJhjMoBsxizenVP8Kxme, <1>NUdYZKfEVGAYiPs0uC4omR, <1>gSQdSBfRpP7c0cM2Yb0, <1>RBcXig4kpK2EXats9, <1>M5ucAgEocXGaurtQ8A1, <1>tyUY5MDbhEEvCeDX4yWX6fPCE, <1>iS1UF5FCZ, <1>B477rJIekqzj9i3m8PL, <1>fjNVYNdD3uUWdxb5OgFQa, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_KDone_02_01 SHA d303e653703ef59b5e08135ede700acc73652a3229e66361238337a329ee5c6b
USE DEF V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_K7, V21_Inv_K8, V21_Inv_OneReply, V21_Inv_PrivateMapOwner, V21_Inv_S2, V21_Inv_S3, V21_Inv_SI7, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable
HIDE DEF Part_KDone_01_02, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V22_T_hok, V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_pgn, V22_T_pr, V22_T_xst
THEOREM Part_KDone_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE (EntryQuarantineDisjoint)' /\ (K7)' /\ (PrivateMapOwner)' /\ (K15)' /\ (SealOnlyLanded)' /\ (SI7)' /\ (K8)' /\ (S2)' /\ (S3)' /\ (OneReply)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE PicQNkhs(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           UNRhKDF(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           x4aVJ652V(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           pONKJ3(x) == IF x4aVJ652V(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           flYh_aDX(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           zp_PIk4svxWLB(x) == x \in sentry /\ ~flYh_aDX(x) /\
            ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           jpr2xpt8(p) == spst[p]="priv" /\ sown[p] \in Rq /\ (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           LVIWHG(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           gaiU_p1(p) == (jpr2xpt8(p) \/ spst[p] \in {"drain","dup"}) /\ ~LVIWHG(p) /\ sready[p] /\ ~(\E x \in sentry' : p \in xsrcP'[x])


           n1a4h1qj(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
            spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           Zxt3uAWx0s == xsrcS'=[x \in Xids |-> IF x4aVJ652V(x) THEN (IF pONKJ3(x) \in SPages /\ spst[pONKJ3(x)]="shared" THEN {pONKJ3(x)} ELSE {}) ELSE xsrcS[x]]


           x3u8USZ8BP == xsrcP'=[x \in Xids |-> IF x4aVJ652V(x) THEN (IF pONKJ3(x) \in SPages /\ spst[pONKJ3(x)]="priv" THEN {pONKJ3(x)} ELSE {}) ELSE xsrcP[x]]


           XiXzxLeogqQ == sentry'=(sentry \cup {x \in Xids : x4aVJ652V(x)}) \ {x \in Xids : flYh_aDX(x) \/ zp_PIk4svxWLB(x)}


           cube8JL9My == squar'=squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : zp_PIk4svxWLB(x)}})


           gsRtJP8qi == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           PfTvb9KsRvdD == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           Lysb3rxXC == spst'=[p \in SPages |-> IF \E x \in Xids : zp_PIk4svxWLB(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF gaiU_p1(p) THEN "free" ELSE IF jpr2xpt8(p) THEN "drain" ELSE spst[p]]


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

           tuYvP(i,s) == {p \in Pages :
             /\ p \in {e[3] : e \in krs[i][s]}
             /\ pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {}
             /\ ~ (\E b \in KSlots : b # s /\ kpin[i][b] /\ \E e \in krs[i][b] : e[3] = p)}

           \* T2M-LOCAL-VISIBILITY

           mK3yAHc(p) ==
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


           RO_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           RO_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           RO_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           RO_Src(x) == IF RO_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           RO_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           RO_Quarantine(x) == x \in sentry /\ ~RO_Close(x) /\
            ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           RO_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\ (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           RO_Pin(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           RO_Drop(p) == (RO_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RO_Pin(p) /\ sready[p] /\ ~(\E x \in sentry' : p \in xsrcP'[x])


           RO_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
            spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           RO_E_sentry == sentry'=(sentry \cup {x \in Xids : RO_Posted(x)}) \ {x \in Xids : RO_Close(x) \/ RO_Quarantine(x)}


           UYpr1 == gen \in [Rq -> 0..MG]


           ZB9m == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           XjUj == rp \in [Rq -> {0} \cup Inst]


           RwpJ == rd \in [Rq -> {0} \cup Inst]


           J8zi == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           wHUB == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           IOOT2o9 == alive \in [Inst -> BOOLEAN]


           WCW_RIE == nfail \in 0..MaxFail


           qXm9o1 == torn \in [Inst -> SUBSET Inst]


           lx9I2z == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           Wjy2fg == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           DJuMb == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           r9d6 == ph \in [Inst -> [Rq -> PhSet]]


           V6LQ == rg \in [Inst -> [Rq -> 0..MG]]


           sufyJ == rpg \in [Inst -> [Rq -> 0..NP]]


           hGnPA == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           UuEG == rx \in [Inst -> [Rq -> 0..MX]]


           JHlYLg == rhit \in [Inst -> [Rq -> BOOLEAN]]


           GNsKg == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           d3cH == pr \in [Pages -> 0..NR]


           E5Zo2 == pgn \in [Pages -> 0..MG]


           ehoz3 == plt \in [Pages -> 0..PS]


           ZMkh8 == ptl \in [Pages -> -1..PS]


           b8LBGz == pvis \in [Pages -> BOOLEAN]


           hzt6H == led \in [Pages -> SUBSET Xids]


           LMfyK0 == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           BIdZ6_ == sled \in [Pages -> SUBSET (Rq \X Gens)]


           MSlzCY1 == prefc \in [Pages -> 0..NR]


           tdSC4 == pqp \in [Pages -> {0} \cup Inst]


           PqGK == xr \in [Xids -> 0..NR]


           wl8W == xg \in [Xids -> 0..MG]


           cy_Q == xk \in [Xids -> {"none", "wr", "rd"}]


           L4qc == xp \in [Xids -> {0} \cup Inst]


           bf5O == xd \in [Xids -> {0} \cup Inst]


           O4U_5z == xsrc \in [Xids -> 0..NP]


           Iwh80D == xdst \in [Xids -> 0..NP]


           lpGba == xnt \in [Xids -> 0..PS]


           xyhb == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           OyPI5 == hok \in [Xids -> BOOLEAN]


           U60c == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           xLHsX == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           Pl5Rz == xlt \in [Xids -> 0..PS]


           flJU == nx \in 1..(MX + 1)


           lHQee == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           oKZaCF == drep \in [Rq -> [Gens -> 0..2]]


           M1G19k == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           NO7ciLG == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           c1LgxC == gbad \in BOOLEAN


           BD3C0 == UYpr1 /\ ZB9m /\ XjUj /\ RwpJ /\ J8zi /\ wHUB /\ IOOT2o9 /\ WCW_RIE /\ qXm9o1 /\ lx9I2z /\ Wjy2fg /\ DJuMb /\ r9d6 /\ V6LQ /\ sufyJ /\ hGnPA /\ UuEG /\ JHlYLg /\ GNsKg /\ d3cH /\ E5Zo2 /\ ehoz3 /\ ZMkh8 /\ b8LBGz /\ hzt6H /\ LMfyK0 /\ BIdZ6_ /\ MSlzCY1 /\ tdSC4 /\ PqGK /\ wl8W /\ cy_Q /\ L4qc /\ bf5O /\ O4U_5z /\ Iwh80D /\ lpGba /\ xyhb /\ OyPI5 /\ U60c /\ xLHsX /\ Pl5Rz /\ flJU /\ lHQee /\ oKZaCF /\ M1G19k /\ NO7ciLG /\ c1LgxC

           \* T2M-LOCAL-VISIBILITY

           x5Ahk(i,s) == {p \in Pages :
             /\ p \in {e[3] : e \in krs[i][s]}
             /\ pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {}
             /\ ~ (\E b \in KSlots : b # s /\ kpin[i][b] /\ \E e \in krs[i][b] : e[3] = p)}

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Zxt3uAWx0s, x3u8USZ8BP, XiXzxLeogqQ, cube8JL9My, gsRtJP8qi, PfTvb9KsRvdD, Lysb3rxXC, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, tuYvP, mK3yAHc, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_E_sentry, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, BD3C0, x5Ahk

<1>cwygPFvwHoczY.        
 ASSUME B2, SFollow
 PROVE Zxt3uAWx0s
 BY ONLY <1>cwygPFvwHoczY, Sizes, Location, Design, ZenonT(10) DEF SFollow, Zxt3uAWx0s, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>Gd2HPOF0RVYJt.        
 ASSUME B2, SFollow
 PROVE x3u8USZ8BP
 BY ONLY <1>Gd2HPOF0RVYJt, Sizes, Location, Design, ZenonT(10) DEF SFollow, x3u8USZ8BP, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>HwTcZ0S4gasFui.        
 ASSUME B2, SFollow
 PROVE XiXzxLeogqQ
 BY ONLY <1>HwTcZ0S4gasFui, Sizes, Location, Design, ZenonT(10) DEF SFollow, XiXzxLeogqQ, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>TOIEvhKztkZU7.        
 ASSUME B2, SFollow
 PROVE cube8JL9My
 BY ONLY <1>TOIEvhKztkZU7, Sizes, Location, Design, ZenonT(10) DEF SFollow, cube8JL9My, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>oPciMlf6Iubx.        
 ASSUME B2, SFollow
 PROVE gsRtJP8qi
 BY ONLY <1>oPciMlf6Iubx, Sizes, Location, Design, ZenonT(10) DEF SFollow, gsRtJP8qi, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>AHYkU73mfqzQD5t.        
 ASSUME B2, SFollow
 PROVE PfTvb9KsRvdD
 BY ONLY <1>AHYkU73mfqzQD5t, Sizes, Location, Design, ZenonT(10) DEF SFollow, PfTvb9KsRvdD, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>uUDp3u4e5PqL.        
 ASSUME B2, SFollow
 PROVE Lysb3rxXC
 BY ONLY <1>uUDp3u4e5PqL, Sizes, Location, Design, ZenonT(10) DEF SFollow, Lysb3rxXC, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>cQRSNCkI9c6.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>cQRSNCkI9c6, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design


<1>rsuLN.         SFollow => UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design


<1>M20Oc0Xr.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~x4aVJ652V(x)
 BY ONLY <1>M20Oc0Xr, Sizes, Location, Design, SMTT(10) DEF x4aVJ652V, Pages, Sizes, Location, Design


<1>QPMjP2YgSfrqb.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
<2> USE ONLY <1>QPMjP2YgSfrqb, Sizes, Location, Design
<2>1. STypeOK BY V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY ONLY <1>QPMjP2YgSfrqb, <2>2, SMTT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. gsRtJP8qi /\ PfTvb9KsRvdD /\ Zxt3uAWx0s /\ x3u8USZ8BP /\ (\A x \in Xids : ~x4aVJ652V(x))
 BY <2>3, <1>oPciMlf6Iubx, <1>AHYkU73mfqzQD5t, <1>cwygPFvwHoczY, <1>Gd2HPOF0RVYJt, <1>M20Oc0Xr, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED rg BY ONLY <1>QPMjP2YgSfrqb, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. /\ smap \in [PInst -> [Rq -> {0} \cup SPages]]
       /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>QPMjP2YgSfrqb, V22_T_schoice, V22_T_smap, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

 <3>4. /\ smap' = [i \in PInst |-> [r \in Rq |-> smap[i][r]]]
       /\ schoice' = [i \in PInst |-> [r \in Rq |-> schoice[i][r]]]
       /\ xsrcS' = [x \in Xids |-> xsrcS[x]] /\ xsrcP' = [x \in Xids |-> xsrcP[x]]
 BY ONLY <3>1, <3>2, SMTT(20), Sizes, Location, Design DEF gsRtJP8qi, PfTvb9KsRvdD, Zxt3uAWx0s, x3u8USZ8BP, Sizes, Location, Design
 <3>5. QED BY ONLY <3>3, <3>4, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>vWo5OSv.        
 ASSUME PinInv, B2
 PROVE /\ spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
       /\ rpgS \subseteq PInst \X Rq \X Gens \X SPages
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
       /\ sentry \subseteq Xids /\ squar \subseteq Xids \X SPages
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY <1>vWo5OSv, V22_T_rpgS, V22_T_sentry, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

<1>Ehr2pMdg5uoVBObEEj2Ppij.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg,xsrc>>
 PROVE PrivateMapOwner'
<2> USE ONLY <1>Ehr2pMdg5uoVBObEEj2Ppij, Sizes, Location, Design
<2>1. PrivateMapOwner BY V21_Inv_PrivateMapOwner, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF PrivateMapOwner, Sizes, Location, Design
<2>3. CASE B2
 <3>1. UNCHANGED <<smap,sown,sgen>> BY <1>QPMjP2YgSfrqb, <1>rsuLN, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. Lysb3rxXC BY <2>3, <1>uUDp3u4e5PqL, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A p \in SPages : spst'[p]="priv" => spst[p]="priv"
 BY <3>2, SMTT(10), Sizes, Location, Design DEF Lysb3rxXC, Sizes, Location, Design
 <3>4. QED BY <2>3, <2>1, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF PrivateMapOwner, Active, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg,xsrc>>
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy, Sizes, Location, Design
<2>1. EntryQuarantineDisjoint BY V21_Inv_EntryQuarantineDisjoint, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
<2>3. CASE B2
 <3>1. XiXzxLeogqQ /\ cube8JL9My /\ (\A x \in Xids : ~x4aVJ652V(x))
 BY <2>3, <1>HwTcZ0S4gasFui, <1>TOIEvhKztkZU7, <1>M20Oc0Xr, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED xsrcS BY <1>QPMjP2YgSfrqb, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. sentry \subseteq Xids BY <2>3, <1>vWo5OSv, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. \A x \in sentry' : x \in sentry /\ ~zp_PIk4svxWLB(x)
 BY <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF XiXzxLeogqQ, Sizes, Location, Design
 <3>5. \A x \in sentry' : \A p \in xsrcS'[x] : <<x,p>> \notin squar'
 BY <2>1, <2>3, <3>1, <3>2, <3>3, <3>4, SMTT(20), Sizes, Location, Design DEF EntryQuarantineDisjoint, cube8JL9My, Sizes, Location, Design
 <3>6. QED BY <3>5, <2>3, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>POPvi7mcBVJj2nsCcD905Y.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE PrivateMapOwner'
<2> USE ONLY <1>POPvi7mcBVJj2nsCcD905Y, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF KDone, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>Ehr2pMdg5uoVBObEEj2Ppij, Sizes, Location, Design DEF Sizes, Location, Design


<1>DZY0yRTKkQBVQuInWtnp5ypHWQ77W2.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>DZY0yRTKkQBVQuInWtnp5ypHWQ77W2, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF KDone, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy, Sizes, Location, Design DEF Sizes, Location, Design


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

<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Tq.        
 S3 /\ UNCHANGED <<torn>> => S3'
 BY IsaT(10), Sizes, Location, Design DEF S3, Sizes, Location, Design
\* T2M-END R2M0343_PdPF_S3

\* T2M-SCOPE R2M0451_PdPF_B2OffInit

<1>Af.        
 S2 /\ UNCHANGED <<nx, xg, xr>> => S2'
 BY IsaT(10), Sizes, Location, Design DEF S2, Sizes, Location, Design
\* T2M-END R2M0342_PdPF_S2


<1>XnYly5EW.        
 OneReply /\ UNCHANGED <<crep, drep>> => OneReply'
 BY IsaT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
\* T2M-END R2M0348_PdPF_OneReply


<1>y2ugdya2EpTu3.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, led, net, nfail, nx, ph, ptl, rd, rg, rhit, rp, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>y2ugdya2EpTu3, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>C3ulHPdb.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE S2'
<2> USE ONLY <1>C3ulHPdb, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nMKYpAIq.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE S3'
<2> USE ONLY <1>nMKYpAIq, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hhIkwC483eZMWB.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE OneReply'
<2> USE ONLY <1>hhIkwC483eZMWB, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>Qlazu49.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, KDone(i,s)
  PROVE /\ ~kfly[i][s]
        /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
        /\ krs' = [krs EXCEPT ![i][s] = {}]
        /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY ONLY <1>Qlazu49, Sizes, Location, Design, Design, SMTT(10) DEF KDone, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KDe42IV.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, m1zx9S, KDone(i,s)
  PROVE /\ pst' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pqp[p]]
  BY ONLY <1>KDe42IV, Sizes, Location, Design, Design, SMTT(10) DEF KDone, tuYvP, m1zx9S, Sizes, Location, Design
\* T2M-END R2M2348_PdROOld_PP_PdDoneSupport


<1>iD8NH5iaR.        
  UNCHANGED <<ph,rpg>> => \A i,r,p : Maps(i,r,p)' = Maps(i,r,p)
  BY ZenonT(10), Sizes, Location, Design DEF Maps, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZYWtfi2oR.        
  UNCHANGED <<ph,rhit,rpg>> => \A p : NHits(p)' = NHits(p)
  BY ZenonT(10), Sizes, Location, Design DEF NHits, Sizes, Location, Design
\* T2M-END R2M1560_PdRPPP_PdPageObservationFrame


<1>Kl1iv.         K7 <=> \A p \in Pages : mK3yAHc(p)
  BY ZenonT(10), Sizes, Location, Design DEF K7, mK3yAHc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GKpiKVfo1.         K7' <=> \A p \in Pages : mK3yAHc(p)'
  BY ZenonT(10), Sizes, Location, Design DEF K7, mK3yAHc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hlNPl.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
  PROVE K7'
<2> USE ONLY <1>hlNPl, Sizes, Location, Design
<2>1. K7 /\ K6 /\ m1zx9S /\ c02OO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K6, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
       /\ krs' = [krs EXCEPT ![i][s] = {}]
       /\ UNCHANGED <<gen, ph, rg, rpg, rhit, ptl, led, sled, sfly, prefc>>
  BY <1>Qlazu49, SMTT(10), Sizes, Location, Design DEF rtV, recV, Sizes, Location, Design
<2>3. /\ pst' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN "free" ELSE pst[p]]
       /\ pr' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pr[p]]
       /\ pgn' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pgn[p]]
       /\ plt' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE plt[p]]
       /\ pqp' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pqp[p]]
  BY <2>1, <1>KDe42IV, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A p \in Pages :
  (pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {} /\ p \notin tuYvP(i,s)) => KPinned(p)'
  BY <2>1, <2>2, Location, SMTT(10), Sizes, Design DEF K7, KPinned, tuYvP, m1zx9S, c02OO, KPages, Sizes, Location, Design
<2>5. \A p \in Pages : p \in tuYvP(i,s) => pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {}
  BY SMTT(10), Sizes, Location, Design DEF tuYvP, Sizes, Location, Design
<2>6. SUFFICES ASSUME NEW p \in Pages PROVE mK3yAHc(p)'
  BY <1>GKpiKVfo1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. mK3yAHc(p) /\ sfly[p] \subseteq sled[p]
  BY <2>1, <1>Kl1iv, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
<2>8. CASE p \in tuYvP(i,s)
  BY <2>2, <2>3, <2>5, <2>7, <2>8, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
<2>9. CASE p \notin tuYvP(i,s)
  <3>1. (ptl[p] >= 0)'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>2. (pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0))'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>3. (pst[p] \in {"priv", "drain", "quar"} => (pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]]))'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>4. (pst[p] = "quar" => pqp[p] \in Inst)'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>5. (pst[p] # "quar" => pqp[p] = 0)'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>6. (pst[p] # "shared" => prefc[p] = 0)'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>7. (pst[p] = "shared" => (IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p)))'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>8. (pst[p] = "drain" => (led[p] # {} \/ sled[p] # {} \/ KPinned(p)))'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>9. (pst[p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(p), r, p))'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>10. (pst[p] = "priv" => ( (Maps(Loc(p), pr[p], p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]]) \/ GrownP(p)))'
    BY <2>2, <2>3, <2>4, <2>7, <2>9, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>11. QED BY <3>1, <3>2, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9, <3>10, ZenonT(10), Sizes, Location, Design DEF mK3yAHc, Sizes, Location, Design
<2>10. QED BY <2>8, <2>9, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2354_PdROOld_PP_PdCell_KDone_K7


<1>FFaUh.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
  PROVE K8'
<2> USE ONLY <1>FFaUh, Sizes, Location, Design
<2>1. K8 /\ K7 /\ AEZsS /\ RwXY /\ O0Gm /\ fr1A /\ m1zx9S /\ c02OO /\ dcfPK /\ SHJS /\ vS7em /\ AydA /\ bFwlN /\ vRZWI /\ IwCp /\ p1YmMe5 /\ OyyWS /\ rO4YE /\ nNeM /\ EYS1sP /\ E1MnW /\ q1Ohy /\ QC9Q /\ Xc_ngV /\ h9WLgd /\ CXAy /\ OfQy9 /\ a1R5 /\ Uzgo58
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K7, V21_Inv_K8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ ~kfly[i][s]
        /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
        /\ krs' = [krs EXCEPT ![i][s] = {}]
        /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY <1>Qlazu49, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. /\ pst' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pqp[p]]
  BY <2>1, <1>KDe42IV, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Sizes, Location, SMTT(10) DEF Active, DInst, tuYvP, GrownP, Inst, IsD, IsP, K7, K8, KPinned, Maps, NHits, NL, OwnedBy, PInst, AEZsS, RwXY, O0Gm, fr1A, m1zx9S, c02OO, dcfPK, SHJS, vS7em, AydA, bFwlN, vRZWI, IwCp, p1YmMe5, OyyWS, rO4YE, nNeM, EYS1sP, E1MnW, q1Ohy, QC9Q, Xc_ngV, h9WLgd, CXAy, OfQy9, a1R5, Uzgo58, ghV, recV, rtV, xV, KPages, Sizes, Location, Design
\* T2M-END R2M2355_PdROOld_PP_PdCell_KDone_K8

\* T2M-SCOPE R2M2356_PdROOld_PP_PdCell_KDone_K9

<1>liwi1BF.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
  PROVE K7'
  BY ONLY <1>liwi1BF, Sizes, Location, Design, <1>UwwC5LVwQr, <1>hlNPl, V21_Inv_K7, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MZfu6xq.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
  PROVE K8'
  BY ONLY <1>MZfu6xq, Sizes, Location, Design, <1>UwwC5LVwQr, <1>FFaUh, V21_Inv_K8, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KLdjw8vy6dlP7S.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K7'
 BY ONLY <1>KLdjw8vy6dlP7S, Sizes, Location, Design, <1>liwi1BF DEF Sizes, Location, Design
\* T2M-END R2M2366_PdROFinal_KDone_K7

\* T2M-SCOPE R2M2367_PdROFinal_KDone_K8

<1>BwGHnth4KNEDJB.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K8'
 BY ONLY <1>BwGHnth4KNEDJB, Sizes, Location, Design, <1>MZfu6xq DEF Sizes, Location, Design
\* T2M-END R2M2367_PdROFinal_KDone_K8


<1>oVMEMsT8gqQqbk.        
 ASSUME B2, SFollow
 PROVE RO_E_sentry
 BY ONLY <1>oVMEMsT8gqQqbk, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_sentry, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jGg3R.         SFollow => UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eav3Mlg8.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~RO_Posted(x)
 BY ONLY <1>eav3Mlg8, Sizes, Location, Design, SMTT(10) DEF RO_Posted, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cg3ikpihvVLpb3qO.        
 ASSUME PinInv, NEW x \in Xids, iv[x]="reg"
 PROVE xsrc[x] \in Pages /\ pst[xsrc[x]] # "quar"
<2> USE ONLY <1>cg3ikpihvVLpb3qO, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ QuarNoReg
 BY V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>cg3ikpihvVLpb3qO, V22_T_nx, SMTT(5)

<2>3. x<nx /\ xk[x]="wr" BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, K3, Xids, Sizes, Location, Design
<2>4. xsrc[x] \in Pages /\ Loc(xsrc[x])=xp[x] /\ xp[x] \in PInst
 BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K1, K2, InitPage, InitInst, Sizes, Location, Design
<2>5. x \in led[xsrc[x]] BY <2>1, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF K4, InitPage, Sizes, Location, Design
<2>6. QED BY <2>1, <2>4, <2>5, Sizes, SMTT(10), Location, Design DEF QuarNoReg, IsP, PInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FVK4MYGoOHs3gti.        
 ASSUME PinInv, UNCHANGED xsrc,
        \A x \in Xids : iv'[x]="reg" => iv[x]="reg",
        \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
 PROVE \A x \in Xids : iv'[x]="reg" => ~RO_Quarantine(x)
 BY ONLY <1>FVK4MYGoOHs3gti, Sizes, Location, Design, <1>cg3ikpihvVLpb3qO, SMTT(10) DEF RO_Quarantine, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dhSsfJA1lMG4.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,xk>>,
        \A x \in Xids : iv'[x]="reg" => iv[x]="reg",
        \A x \in Xids : iv'[x]="reg" => ~RO_Quarantine(x)
 PROVE SI7'
<2> USE ONLY <1>dhSsfJA1lMG4, Sizes, Location, Design
<2>1. SI7 /\ K3 BY V21_Inv_K3, V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF SI7, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RO_E_sentry /\ (\A x \in Xids : ~RO_Posted(x)) BY <2>3, <1>oVMEMsT8gqQqbk, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF SI7, K3, RO_E_sentry, RO_Close, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QH8yZT1818aXx2y5f.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, KDone(i,s)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>QH8yZT1818aXx2y5f, Sizes, Location, Design, Design, ZenonT(10) DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tlu0yHVIqjtDNQJ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
 PROVE \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
<2> USE ONLY <1>Tlu0yHVIqjtDNQJ, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Tlu0yHVIqjtDNQJ, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mmZlMvgdOS2HEFY.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
 PROVE \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
<2> USE ONLY <1>mmZlMvgdOS2HEFY, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>mmZlMvgdOS2HEFY, V22_T_iv, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uRSlETJ2N.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE SI7'
 BY ONLY <1>uRSlETJ2N, Sizes, Location, Design, <1>QH8yZT1818aXx2y5f, <1>mmZlMvgdOS2HEFY, <1>Tlu0yHVIqjtDNQJ, <1>FVK4MYGoOHs3gti, <1>dhSsfJA1lMG4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WAxd2hhfMM.        
 ASSUME PinInv
 PROVE TypInv => BD3C0
  BY ONLY <1>WAxd2hhfMM, Sizes, Location, Design, ZenonT(5) DEF TypInv, CoreTypeOK, BD3C0, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>joh6z3bMX.        
 PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2481_PdROK_PdProofBase


<1>i58pvIf.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, KDone(i,s)
  , PinInv
 PROVE /\ ~kfly[i][s]
        /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
        /\ krs' = [krs EXCEPT ![i][s] = {}]
        /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY ONLY <1>i58pvIf, Sizes, Location, Design, Design, SMT DEF KDone, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JH6mCA5.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, lx9I2z, KDone(i,s)
  , PinInv
 PROVE /\ pst' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pqp[p]]
  BY ONLY <1>JH6mCA5, Sizes, Location, Design, Design, SMT DEF KDone, x5Ahk, lx9I2z, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gRydeD0QeS.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, lx9I2z, DJuMb, K14, KDone(i,s)
  , PinInv
 PROVE \A a \in Inst, b \in KSlots : kpin'[a][b] =>
          /\ kpin[a][b] /\ krs'[a][b] = krs[a][b]
          /\ \A e \in krs'[a][b] : e[3] \notin x5Ahk(i,s)
<2> USE ONLY <1>gRydeD0QeS, Sizes, Location, Design
<2>1. /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
       /\ krs' = [krs EXCEPT ![i][s] = {}]
  BY <1>i58pvIf, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF lx9I2z, DJuMb, K14, x5Ahk, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OcVhaGujg1P.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, lx9I2z, DJuMb, K14, KDone(i,s)
  , PinInv
 PROVE \A a \in Inst, b \in KSlots : kpin'[a][b] =>
    /\ kpin[a][b] /\ krs'[a][b] = krs[a][b]
    /\ \A e \in krs'[a][b] : e[3] \in Pages =>
       /\ pst'[e[3]] = pst[e[3]] /\ pr'[e[3]] = pr[e[3]]
       /\ pgn'[e[3]] = pgn[e[3]] /\ plt'[e[3]] = plt[e[3]]
<2> USE ONLY <1>OcVhaGujg1P, Sizes, Location, Design
<2>1. \A a \in Inst, b \in KSlots : kpin'[a][b] =>
          /\ kpin[a][b] /\ krs'[a][b] = krs[a][b]
          /\ \A e \in krs'[a][b] : e[3] \notin x5Ahk(i,s)
  BY <1>gRydeD0QeS, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. /\ pst' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN "free" ELSE pst[p]]
       /\ pr' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pr[p]]
       /\ pgn' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pgn[p]]
       /\ plt' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE plt[p]]
  BY <1>JH6mCA5, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF DJuMb, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>au6dOw.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, lx9I2z, DJuMb, K14, K15, KDone(i,s)
  , PinInv, SFollow
 PROVE K15'
<2> USE ONLY <1>au6dOw, Sizes, Location, Design
<2>1. \A a \in Inst, b \in KSlots : kpin'[a][b] =>
    /\ kpin[a][b] /\ krs'[a][b] = krs[a][b]
    /\ \A e \in krs'[a][b] : e[3] \in Pages => plt'[e[3]] = plt[e[3]]
  BY <1>OcVhaGujg1P, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ptl, pvis, led, sfly, sled, hw, xdst>>
  BY <1>i58pvIf, Sizes, Location, Design DEF xV, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>jGg3R, SMT, Sizes, Location, Design DEF K15, KData, SData, NoWriteInto, Writing, InFl, DJuMb, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>StEVLyNk4.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K15'
BY ONLY <1>StEVLyNk4, Sizes, Location, Design, <1>au6dOw, <1>WAxd2hhfMM, <1>joh6z3bMX, V21_Inv_K14, V21_Inv_K15, V21_Inv_TypeOK DEF BD3C0, Sizes, Location, Design
\* T2M-END R2M2501_PdROKernel_KDone_K15

\* T2M-SCOPE R2M2502_PdROKernel_KDone_KReadIntegrity

<1>HHea0ncBalDOhlceB.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
  
 PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>HHea0ncBalDOhlceB, Sizes, Location, Design
<2>1. BaseSealOnlyLanded /\ xyhb /\ lx9I2z /\ DJuMb /\ GNsKg /\ ZMkh8 /\ Iwh80D
  BY <1>joh6z3bMX, <1>WAxd2hhfMM, SMTT(10), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BD3C0, BaseSafety, Sizes, Location, Design
<2>2. /\ ~kfly[i][s]
        /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
        /\ krs' = [krs EXCEPT ![i][s] = {}]
        /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY <1>i58pvIf, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. /\ pst' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF p \in x5Ahk(i,s) THEN 0 ELSE pqp[p]]
  BY <2>1, <1>JH6mCA5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Sizes, Location, SMTT(10) DEF DInst, x5Ahk, InFl, Inst, IsD, IsP, NL, NoWriteInto, PInst, BaseSealOnlyLanded, xyhb, lx9I2z, DJuMb, GNsKg, ZMkh8, Iwh80D, Writing, ghV, recV, rtV, xV, KPages, Sizes, Location, Design
\* T2M-END R2M2509_PdROK_PdCell_KDone_SealOnlyLanded


<1>DpBaunrUeip3l4JjLTtN.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE SealOnlyLanded'
<2> USE ONLY <1>DpBaunrUeip3l4JjLTtN, Sizes, Location, Design
<2>1. BaseSealOnlyLanded' BY <1>HHea0ncBalDOhlceB, <1>WAxd2hhfMM, <1>joh6z3bMX, V21_Inv_TypeOK, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
<2>2. SharedImmutable' BY <1>QH8yZT1818aXx2y5f, <1>UoOnqFdN5hlmOkH5yaHH03rU, V21_Inv_BaseTypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF CoreTypeOK, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF SealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M2510_PdROKernel_KDone_SealOnlyLanded


<1> QED BY <1>DZY0yRTKkQBVQuInWtnp5ypHWQ77W2, <1>KLdjw8vy6dlP7S, <1>POPvi7mcBVJj2nsCcD905Y, <1>StEVLyNk4, <1>DpBaunrUeip3l4JjLTtN, <1>uRSlETJ2N, <1>BwGHnth4KNEDJB, <1>C3ulHPdb, <1>nMKYpAIq, <1>hhIkwC483eZMWB, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_KDone SHA 45d158ae6a67e301c3f0207ca402cf159682da40dd4bcd7ce7248a9a51e3f41a
USE DEF ShapeNetFrame
HIDE DEF Part_KDone_02_01, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K14, V21_Inv_K15, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_OneReply, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_S2, V21_Inv_S3, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_iv, V22_T_nx, V22_T_pst, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS
LEMMA ShapeEffect_KDone ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, Sizes, Design, KDone(i,s)
 PROVE net'=net
 BY ONLY KDone(i,s), Sizes, Design, SMTT(5) DEF KDone, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_KDone ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, Sizes, Design, IndInv, MessageShape, KDone(i,s)
 PROVE MessageShape'
 BY ONLY Sizes, Design, KDone(i,s), MessageShape, ShapeEffect_KDone, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_KDone SHA 09beb71bda9110553f6f1b2d5d410bcf556cb22a379b6ee2eb00fc959207e529
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_KDone, ShapeNetFrame
THEOREM DomainKeep_KDone ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, Sizes, Location, Design, PinInv, KDone(i,s)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, KDone(i,s), ShapeEffect_KDone
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalPart_KDone_02_02 SHA a9a1e6a8c69d449db9792d497bcbc5562f0d6e33714001f5ccf2526dee28fab5
USE DEF V21_Inv_BaseSafety, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst
HIDE DEF ShapeEffect_KDone, V21_Inv_MsgXDomain
THEOREM Part_KDone_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE (K5)' /\ (K6)' /\ (K9)' /\ (K10)' /\ (K16)' /\ (K17)' /\ (QuarNeverMapped)' /\ (QuarNoReg)' /\ (K14)' /\ (K1)' /\ (K2)' /\ (K3)' /\ (K4)' /\ (K11)' /\ (K12)' /\ (K13)' /\ (S1)' /\ (S4)' /\ (S5)' /\ (S6)' /\ (GenFiltered)' /\ (ReplyTruth)' /\ (SharedImmutable)' /\ (MsgXDomain)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE AEZsS == gen \in [Rq -> 0..MG]



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

           tuYvP(i,s) == {p \in Pages :
             /\ p \in {e[3] : e \in krs[i][s]}
             /\ pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {}
             /\ ~ (\E b \in KSlots : b # s /\ kpin[i][b] /\ \E e \in krs[i][b] : e[3] = p)}

           \* T2M-LOCAL-VISIBILITY

           eCpbe(i,s) == {p \in Pages :
             /\ p \in {e[3] : e \in krs[i][s]}
             /\ pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {}
             /\ ~ (\E b \in KSlots : b # s /\ kpin[i][b] /\ \E e \in krs[i][b] : e[3] = p)}

           \* T2M-LOCAL-VISIBILITY

           UYpr1 == gen \in [Rq -> 0..MG]


           ZB9m == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           XjUj == rp \in [Rq -> {0} \cup Inst]


           RwpJ == rd \in [Rq -> {0} \cup Inst]


           J8zi == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           wHUB == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           IOOT2o9 == alive \in [Inst -> BOOLEAN]


           WCW_RIE == nfail \in 0..MaxFail


           qXm9o1 == torn \in [Inst -> SUBSET Inst]


           lx9I2z == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           Wjy2fg == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           DJuMb == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           r9d6 == ph \in [Inst -> [Rq -> PhSet]]


           V6LQ == rg \in [Inst -> [Rq -> 0..MG]]


           sufyJ == rpg \in [Inst -> [Rq -> 0..NP]]


           hGnPA == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           UuEG == rx \in [Inst -> [Rq -> 0..MX]]


           JHlYLg == rhit \in [Inst -> [Rq -> BOOLEAN]]


           GNsKg == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           d3cH == pr \in [Pages -> 0..NR]


           E5Zo2 == pgn \in [Pages -> 0..MG]


           ehoz3 == plt \in [Pages -> 0..PS]


           ZMkh8 == ptl \in [Pages -> -1..PS]


           b8LBGz == pvis \in [Pages -> BOOLEAN]


           hzt6H == led \in [Pages -> SUBSET Xids]


           LMfyK0 == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           BIdZ6_ == sled \in [Pages -> SUBSET (Rq \X Gens)]


           MSlzCY1 == prefc \in [Pages -> 0..NR]


           tdSC4 == pqp \in [Pages -> {0} \cup Inst]


           PqGK == xr \in [Xids -> 0..NR]


           wl8W == xg \in [Xids -> 0..MG]


           cy_Q == xk \in [Xids -> {"none", "wr", "rd"}]


           L4qc == xp \in [Xids -> {0} \cup Inst]


           bf5O == xd \in [Xids -> {0} \cup Inst]


           O4U_5z == xsrc \in [Xids -> 0..NP]


           Iwh80D == xdst \in [Xids -> 0..NP]


           lpGba == xnt \in [Xids -> 0..PS]


           xyhb == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           OyPI5 == hok \in [Xids -> BOOLEAN]


           U60c == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           xLHsX == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           Pl5Rz == xlt \in [Xids -> 0..PS]


           flJU == nx \in 1..(MX + 1)


           lHQee == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           oKZaCF == drep \in [Rq -> [Gens -> 0..2]]


           M1G19k == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           NO7ciLG == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           c1LgxC == gbad \in BOOLEAN


           BD3C0 == UYpr1 /\ ZB9m /\ XjUj /\ RwpJ /\ J8zi /\ wHUB /\ IOOT2o9 /\ WCW_RIE /\ qXm9o1 /\ lx9I2z /\ Wjy2fg /\ DJuMb /\ r9d6 /\ V6LQ /\ sufyJ /\ hGnPA /\ UuEG /\ JHlYLg /\ GNsKg /\ d3cH /\ E5Zo2 /\ ehoz3 /\ ZMkh8 /\ b8LBGz /\ hzt6H /\ LMfyK0 /\ BIdZ6_ /\ MSlzCY1 /\ tdSC4 /\ PqGK /\ wl8W /\ cy_Q /\ L4qc /\ bf5O /\ O4U_5z /\ Iwh80D /\ lpGba /\ xyhb /\ OyPI5 /\ U60c /\ xLHsX /\ Pl5Rz /\ flJU /\ lHQee /\ oKZaCF /\ M1G19k /\ NO7ciLG /\ c1LgxC

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, tuYvP, eCpbe, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, BD3C0

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

<1>gHUAljbA97ex9qqK2Q07V.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>gHUAljbA97ex9qqK2Q07V, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>gHUAljbA97ex9qqK2Q07V, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lYPe1As5UD7NCR7.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>lYPe1As5UD7NCR7, Sizes, Location, Design, DomainKeep_KDone, SMTT(5)
\* T2M-END R2M0295_PdPDomain_KDone


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>je.        
 S4 /\ UNCHANGED <<alive, nfail>> => S4'
 BY IsaT(10), Sizes, Location, Design DEF S4, Sizes, Location, Design
\* T2M-END R2M0344_PdPF_S4


<1>BBQUQLHXJe.        
 ReplyTruth /\ UNCHANGED <<crep, dsucc>> => ReplyTruth'
 BY IsaT(10), Sizes, Location, Design DEF ReplyTruth, Sizes, Location, Design
\* T2M-END R2M0349_PdPF_ReplyTruth


<1>ujEUqBpYoFz.        
 GenFiltered /\ UNCHANGED <<gbad>> => GenFiltered'
 BY IsaT(10), Sizes, Location, Design DEF GenFiltered, Sizes, Location, Design
\* T2M-END R2M0347_PdPF_GenFiltered


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


<1>s6g.        
 K13 /\ UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>> => K13'
 BY IsaT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design
\* T2M-END R2M0354_PdPF_K13


<1>ui5.        
 K12 /\ UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>> => K12'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, K12, Sizes, Location, Design
\* T2M-END R2M0362_PdPF_K12


<1>pJ.        
 K4 /\ UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>> => K4'
 BY IsaT(10), Sizes, Location, Design DEF ExpPage, InitPage, K4, Sizes, Location, Design
\* T2M-END R2M0333_PdPF_K4


<1>Po.        
 S5 /\ UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>> => S5'
 BY IsaT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
\* T2M-END R2M0345_PdPF_S5


<1>tpP.        
 K11 /\ UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>> => K11'
 BY IsaT(10), Sizes, Location, Design DEF K11, Sizes, Location, Design
\* T2M-END R2M0337_PdPF_K11


<1>y2ugdya2EpTu3.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, led, net, nfail, nx, ph, ptl, rd, rg, rhit, rp, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>y2ugdya2EpTu3, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF KDone, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NuQcpkLs.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K1'
<2> USE ONLY <1>NuQcpkLs, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zMfYzi8N.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K2'
<2> USE ONLY <1>zMfYzi8N, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vUuvGiXA.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K3'
<2> USE ONLY <1>vUuvGiXA, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nG2NHRAz.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K4'
<2> USE ONLY <1>nG2NHRAz, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>szvteeTgv.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K11'
<2> USE ONLY <1>szvteeTgv, Sizes, Location, Design
<2>1. K11
 BY V21_Inv_K11, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>tpP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JyQXNUvaZ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K12'
<2> USE ONLY <1>JyQXNUvaZ, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IZPskkokK.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K13'
<2> USE ONLY <1>IZPskkokK, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>s5i3J0G4.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE S1'
<2> USE ONLY <1>s5i3J0G4, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SIZwzzIE.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE S4'
<2> USE ONLY <1>SIZwzzIE, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>n1OQYSJk.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE S5'
<2> USE ONLY <1>n1OQYSJk, Sizes, Location, Design
<2>1. S5
 BY V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Po, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bkh4tN8o.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE S6'
<2> USE ONLY <1>bkh4tN8o, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Pg8hgzbMFFcG5lrK7.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>Pg8hgzbMFFcG5lrK7, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XZmXKzzSmFSVPmlR.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>XZmXKzzSmFSVPmlR, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>y2ugdya2EpTu3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>Qlazu49.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, KDone(i,s)
  PROVE /\ ~kfly[i][s]
        /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
        /\ krs' = [krs EXCEPT ![i][s] = {}]
        /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY ONLY <1>Qlazu49, Sizes, Location, Design, Design, SMTT(10) DEF KDone, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KDe42IV.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, m1zx9S, KDone(i,s)
  PROVE /\ pst' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pqp[p]]
  BY ONLY <1>KDe42IV, Sizes, Location, Design, Design, SMTT(10) DEF KDone, tuYvP, m1zx9S, Sizes, Location, Design
\* T2M-END R2M2348_PdROOld_PP_PdDoneSupport


<1>yMlkVK.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
  PROVE K10'
<2> USE ONLY <1>yMlkVK, Sizes, Location, Design
<2>1. K10 /\ DnMxp /\ DpA4 /\ m1zx9S /\ c02OO /\ SHJS /\ vS7em /\ AydA /\ IwCp /\ OyyWS /\ rO4YE /\ nNeM /\ JjZ1PO /\ CXAy /\ OfQy9 /\ a1R5
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K10, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ ~kfly[i][s]
        /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
        /\ krs' = [krs EXCEPT ![i][s] = {}]
        /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY <1>Qlazu49, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. /\ pst' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pqp[p]]
  BY <2>1, <1>KDe42IV, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Sizes, Location, SMTT(10) DEF DInst, tuYvP, Inst, IsD, IsP, K10, NL, OwnedBy, PInst, DnMxp, DpA4, m1zx9S, c02OO, SHJS, vS7em, AydA, IwCp, OyyWS, rO4YE, nNeM, JjZ1PO, CXAy, OfQy9, a1R5, ghV, recV, rtV, xV, KPages, Sizes, Location, Design
\* T2M-END R2M2349_PdROOld_PP_PdCell_KDone_K10

\* T2M-SCOPE R2M2350_PdROOld_PP_PdCell_KDone_K5

<1>WfZVW.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
  PROVE K5'
<2> USE ONLY <1>WfZVW, Sizes, Location, Design
<2>1. K5 /\ m1zx9S /\ c02OO /\ dcfPK /\ vS7em /\ IwCp /\ OyyWS /\ CXAy /\ a1R5
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ ~kfly[i][s]
        /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
        /\ krs' = [krs EXCEPT ![i][s] = {}]
        /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY <1>Qlazu49, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. /\ pst' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pqp[p]]
  BY <2>1, <1>KDe42IV, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Sizes, Location, SMTT(10) DEF DInst, tuYvP, Inst, IsD, IsP, K5, NL, OwnedBy, PInst, m1zx9S, c02OO, dcfPK, vS7em, IwCp, OyyWS, CXAy, a1R5, ghV, recV, rtV, xV, KPages, Sizes, Location, Design
\* T2M-END R2M2350_PdROOld_PP_PdCell_KDone_K5

\* T2M-SCOPE R2M2351_PdROOld_PP_PdCell_KDone_K6

<1>Jx0Wf.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
  PROVE K6'
<2> USE ONLY <1>Jx0Wf, Sizes, Location, Design
<2>1. K6 /\ AEZsS /\ m1zx9S /\ c02OO /\ vS7em /\ IwCp /\ OyyWS /\ Xc_ngV /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ ~kfly[i][s]
        /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
        /\ krs' = [krs EXCEPT ![i][s] = {}]
        /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY <1>Qlazu49, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. /\ pst' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pqp[p]]
  BY <2>1, <1>KDe42IV, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Sizes, Location, SMTT(10) DEF DInst, tuYvP, Inst, IsD, IsP, K6, NL, OwnedBy, PInst, AEZsS, m1zx9S, c02OO, vS7em, IwCp, OyyWS, Xc_ngV, h9WLgd, ghV, recV, rtV, xV, KPages, Sizes, Location, Design
\* T2M-END R2M2351_PdROOld_PP_PdCell_KDone_K6


<1>S3ZZz.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
  PROVE K9'
<2> USE ONLY <1>S3ZZz, Sizes, Location, Design
<2>1. K8 /\ K9 /\ m1zx9S
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<drep, iv, led, nx, ph, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>>
  BY <1>Qlazu49, SMTT(10), Sizes, Location, Design DEF rtV, recV, xV, ghV, Sizes, Location, Design
<2>3. /\ pst' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN "free" ELSE pst[p]]
       /\ plt' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE plt[p]]
  BY <2>1, <1>KDe42IV, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Sizes, SMTT(10), Location, Design DEF K8, K9, tuYvP, Active, OwnedBy, Inst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M2356_PdROOld_PP_PdCell_KDone_K9

\* T2M-SCOPE R2M2357_PdROOld_PP_PdCell_KDone_QuarNeverMapped

<1>yQ76RAyCJMuv7dY0V0.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>yQ76RAyCJMuv7dY0V0, Sizes, Location, Design
<2>1. QuarNeverMapped /\ m1zx9S /\ c02OO /\ AydA /\ OyyWS /\ q1Ohy
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_KStruct, V21_Inv_QuarNeverMapped, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. /\ ~kfly[i][s]
        /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
        /\ krs' = [krs EXCEPT ![i][s] = {}]
        /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY <1>Qlazu49, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. /\ pst' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pqp[p]]
  BY <2>1, <1>KDe42IV, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Sizes, Location, SMTT(10) DEF Active, DInst, tuYvP, Inst, IsD, IsP, NL, PInst, QuarNeverMapped, m1zx9S, c02OO, AydA, OyyWS, q1Ohy, ghV, recV, rtV, xV, KPages, Sizes, Location, Design
\* T2M-END R2M2357_PdROOld_PP_PdCell_KDone_QuarNeverMapped

\* T2M-SCOPE R2M2358_PdROOld_PP_PdCell_KDone_QuarNoReg

<1>qfEU8JocLZct.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s)
  PROVE QuarNoReg'
<2> USE ONLY <1>qfEU8JocLZct, Sizes, Location, Design
<2>1. QuarNoReg /\ fr1A /\ m1zx9S /\ c02OO /\ dcfPK /\ OyyWS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_KStruct, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. /\ ~kfly[i][s]
        /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
        /\ krs' = [krs EXCEPT ![i][s] = {}]
        /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY <1>Qlazu49, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. /\ pst' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF p \in tuYvP(i,s) THEN 0 ELSE pqp[p]]
  BY <2>1, <1>KDe42IV, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Sizes, Location, SMTT(10) DEF DInst, tuYvP, Inst, IsD, IsP, NL, PInst, QuarNoReg, fr1A, m1zx9S, c02OO, dcfPK, OyyWS, ghV, recV, rtV, xV, KPages, Sizes, Location, Design
\* T2M-END R2M2358_PdROOld_PP_PdCell_KDone_QuarNoReg


<1>yFx6EJI.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, KDone(i,s)
  PROVE /\ ~kfly[i][s]
        /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
        /\ krs' = [krs EXCEPT ![i][s] = {}]
        /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY ONLY <1>yFx6EJI, Sizes, Location, Design, Design, SMT DEF KDone, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hVmO2Gi.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, m1zx9S, KDone(i,s)
  PROVE /\ pst' = [p \in Pages |-> IF p \in eCpbe(i,s) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF p \in eCpbe(i,s) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF p \in eCpbe(i,s) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF p \in eCpbe(i,s) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF p \in eCpbe(i,s) THEN 0 ELSE pqp[p]]
  BY ONLY <1>hVmO2Gi, Sizes, Location, Design, Design, SMT DEF KDone, eCpbe, m1zx9S, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DpnJWDqCsW.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, m1zx9S, c02OO, K14, KDone(i,s)
  PROVE \A a \in Inst, b \in KSlots : kpin'[a][b] =>
          /\ kpin[a][b] /\ krs'[a][b] = krs[a][b]
          /\ \A e \in krs'[a][b] : e[3] \notin eCpbe(i,s)
<2> USE ONLY <1>DpnJWDqCsW, Sizes, Location, Design
<2>1. /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
       /\ krs' = [krs EXCEPT ![i][s] = {}]
  BY <1>yFx6EJI, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF m1zx9S, c02OO, K14, eCpbe, Sizes, Location, Design


<1>lUA1QH.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, m1zx9S, c02OO, K14, K17, KDone(i,s)
  PROVE K17'
<2> USE ONLY <1>lUA1QH, Sizes, Location, Design
<2>1. \A a \in Inst, b \in KSlots : kpin'[a][b] =>
    /\ kpin[a][b] /\ krs'[a][b] = krs[a][b]
  BY <1>DpnJWDqCsW, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED recV
  BY <1>yFx6EJI, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K17, recV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>O4kEC8.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, m1zx9S, K16, KDone(i,s)
  PROVE K16'
<2> USE ONLY <1>O4kEC8, Sizes, Location, Design
<2>1. /\ pst' = [p \in Pages |-> IF p \in eCpbe(i,s) THEN "free" ELSE pst[p]]
       /\ pr' = [p \in Pages |-> IF p \in eCpbe(i,s) THEN 0 ELSE pr[p]]
       /\ pgn' = [p \in Pages |-> IF p \in eCpbe(i,s) THEN 0 ELSE pgn[p]]
       /\ plt' = [p \in Pages |-> IF p \in eCpbe(i,s) THEN 0 ELSE plt[p]]
  BY <1>hVmO2Gi, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<recV, ptl, pvis, led, sfly, sled, hw, xdst>>
  BY <1>yFx6EJI, Sizes, Location, Design DEF xV, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K16, GrownP, NoWriteInto, Writing, InFl, recV, Sizes, Location, Design
\* T2M-END R2M2359_PdROOld_PP_PdDoneProofs


<1>AHHMvBi.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
  PROVE K5'
  BY ONLY <1>AHHMvBi, Sizes, Location, Design, <1>UwwC5LVwQr, <1>WfZVW, V21_Inv_K5, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>az3IQLD.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
  PROVE K6'
  BY ONLY <1>az3IQLD, Sizes, Location, Design, <1>UwwC5LVwQr, <1>Jx0Wf, V21_Inv_K6, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FKZRDqK.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
  PROVE K9'
  BY ONLY <1>FKZRDqK, Sizes, Location, Design, <1>UwwC5LVwQr, <1>S3ZZz, V21_Inv_K9, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t6N8umwK.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
  PROVE K10'
  BY ONLY <1>t6N8umwK, Sizes, Location, Design, <1>UwwC5LVwQr, <1>yMlkVK, V21_Inv_K10, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JSwkRWFD.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
  PROVE K16'
  BY ONLY <1>JSwkRWFD, Sizes, Location, Design, <1>UwwC5LVwQr, <1>O4kEC8, V21_Inv_K16, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AVB4qfFW.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
  PROVE K17'
  BY ONLY <1>AVB4qfFW, Sizes, Location, Design, <1>UwwC5LVwQr, <1>lUA1QH, V21_Inv_K14, V21_Inv_K17, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gOmC91qXB1LGWqyIpOUG.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>gOmC91qXB1LGWqyIpOUG, Sizes, Location, Design, <1>UwwC5LVwQr, <1>yQ76RAyCJMuv7dY0V0, V21_Inv_QuarNeverMapped, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oEoqvKyUE7opBx.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>oEoqvKyUE7opBx, Sizes, Location, Design, <1>UwwC5LVwQr, <1>qfEU8JocLZct, V21_Inv_QuarNoReg, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design
\* T2M-END R2M2360_PdROOld_PdPAgg_KDone

\* T2M-SCOPE R2M2361_PdROFinal_KDone_K10
\* T2M-BODY R2M2361_PdROFinal_KDone_K10
\* T2M-LOCAL-VISIBILITY

<1>x3dYlUMvIrMFgwi.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K10'
 BY ONLY <1>x3dYlUMvIrMFgwi, Sizes, Location, Design, <1>t6N8umwK DEF Sizes, Location, Design
\* T2M-END R2M2361_PdROFinal_KDone_K10

\* T2M-SCOPE R2M2362_PdROFinal_KDone_K16

<1>uDbDEK3nCe6vhLx.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K16'
 BY ONLY <1>uDbDEK3nCe6vhLx, Sizes, Location, Design, <1>JSwkRWFD DEF Sizes, Location, Design
\* T2M-END R2M2362_PdROFinal_KDone_K16

\* T2M-SCOPE R2M2363_PdROFinal_KDone_K17

<1>ENJOW41oH9qgjbX.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K17'
 BY ONLY <1>ENJOW41oH9qgjbX, Sizes, Location, Design, <1>AVB4qfFW DEF Sizes, Location, Design
\* T2M-END R2M2363_PdROFinal_KDone_K17

\* T2M-SCOPE R2M2364_PdROFinal_KDone_K5

<1>xViGFKBcRjXJWX.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K5'
 BY ONLY <1>xViGFKBcRjXJWX, Sizes, Location, Design, <1>AHHMvBi DEF Sizes, Location, Design
\* T2M-END R2M2364_PdROFinal_KDone_K5

\* T2M-SCOPE R2M2365_PdROFinal_KDone_K6

<1>T2aa1xp7qrgRqJ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K6'
 BY ONLY <1>T2aa1xp7qrgRqJ, Sizes, Location, Design, <1>az3IQLD DEF Sizes, Location, Design
\* T2M-END R2M2365_PdROFinal_KDone_K6

\* T2M-SCOPE R2M2366_PdROFinal_KDone_K7

<1>fkBPVicdGYSKbO.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K9'
 BY ONLY <1>fkBPVicdGYSKbO, Sizes, Location, Design, <1>FKZRDqK DEF Sizes, Location, Design
\* T2M-END R2M2368_PdROFinal_KDone_K9

\* T2M-SCOPE R2M2369_PdROFinal_KDone_QuarNeverMapped

<1>pAp1OJzLo7smiCJlwmZVSayrCaG.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE QuarNeverMapped'
 BY ONLY <1>pAp1OJzLo7smiCJlwmZVSayrCaG, Sizes, Location, Design, <1>gOmC91qXB1LGWqyIpOUG DEF Sizes, Location, Design
\* T2M-END R2M2369_PdROFinal_KDone_QuarNeverMapped

\* T2M-SCOPE R2M2370_PdROFinal_KDone_QuarNoReg

<1>NnJa2ziSOMCwQHyHHcu2a.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>NnJa2ziSOMCwQHyHHcu2a, Sizes, Location, Design, <1>oEoqvKyUE7opBx DEF Sizes, Location, Design
\* T2M-END R2M2370_PdROFinal_KDone_QuarNoReg


<1>WAxd2hhfMM.        
 ASSUME PinInv
 PROVE TypInv => BD3C0
  BY ONLY <1>WAxd2hhfMM, Sizes, Location, Design, ZenonT(5) DEF TypInv, CoreTypeOK, BD3C0, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>joh6z3bMX.        
 PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2481_PdROK_PdProofBase


<1>i58pvIf.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, KDone(i,s)
  , PinInv
 PROVE /\ ~kfly[i][s]
        /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
        /\ krs' = [krs EXCEPT ![i][s] = {}]
        /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>
  BY ONLY <1>i58pvIf, Sizes, Location, Design, Design, SMT DEF KDone, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vdP9Vn.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, lx9I2z, Wjy2fg, DJuMb, K14, KDone(i,s)
  , PinInv
 PROVE K14'
<2> USE ONLY <1>vdP9Vn, Sizes, Location, Design
<2>1. /\ ~kfly[i][s]
       /\ kpin' = [kpin EXCEPT ![i][s] = FALSE]
       /\ krs' = [krs EXCEPT ![i][s] = {}]
       /\ UNCHANGED <<kfly, gen>>
  BY <1>i58pvIf, Sizes, Location, Design DEF rtV, Sizes, Location, Design
<2>2. \A a \in Inst, b \in KSlots : kfly'[a][b] => kpin'[a][b]
  BY <2>1, SMT, Sizes, Location, Design DEF lx9I2z, Wjy2fg, K14, Sizes, Location, Design
<2>3. \A a \in Inst, b \in KSlots : (krs'[a][b] # {}) <=> kpin'[a][b]
  BY <2>1, SMT, Sizes, Location, Design DEF lx9I2z, DJuMb, K14, Sizes, Location, Design
<2>4. \A a \in Inst, b \in KSlots : \A e \in krs'[a][b] :
        Loc(e[3]) = a /\ e[2] <= gen'[e[1]] /\ (IF e[3] \in SPages THEN B2 /\ IsP(a) /\ e[4] \in {1,4} ELSE e[4] \in {0,1,2,3} /\ (e[4] # 0 => IsD(a)))
  BY <2>1, SMT, Sizes, Location, Design DEF DJuMb, K14, Sizes, Location, Design
<2>5. QED
  BY <2>2, <2>3, <2>4, Sizes, Location, Design DEF K14, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ICrlXGH2t.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KDone(i,s), SFollow
 PROVE K14'
BY ONLY <1>ICrlXGH2t, Sizes, Location, Design, <1>vdP9Vn, <1>WAxd2hhfMM, <1>joh6z3bMX, V21_Inv_K14, V21_Inv_TypeOK DEF BD3C0, Sizes, Location, Design
\* T2M-END R2M2500_PdROKernel_KDone_K14

\* T2M-SCOPE R2M2501_PdROKernel_KDone_K15

<1> QED BY <1>xViGFKBcRjXJWX, <1>T2aa1xp7qrgRqJ, <1>fkBPVicdGYSKbO, <1>x3dYlUMvIrMFgwi, <1>uDbDEK3nCe6vhLx, <1>ENJOW41oH9qgjbX, <1>pAp1OJzLo7smiCJlwmZVSayrCaG, <1>NnJa2ziSOMCwQHyHHcu2a, <1>ICrlXGH2t, <1>NuQcpkLs, <1>zMfYzi8N, <1>vUuvGiXA, <1>nG2NHRAz, <1>szvteeTgv, <1>JyQXNUvaZ, <1>IZPskkokK, <1>s5i3J0G4, <1>SIZwzzIE, <1>n1OQYSJk, <1>bkh4tN8o, <1>Pg8hgzbMFFcG5lrK7, <1>XZmXKzzSmFSVPmlR, <1>gHUAljbA97ex9qqK2Q07V, <1>lYPe1As5UD7NCR7, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_KDone_01_01, Part_KDone_01_02, Part_KDone_02_01, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_KDone
HIDE DEF DomainKeep_KDone, V21_Inv_BaseSafety, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst

THEOREM Step_KDone ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, Sizes, Location, Design, PinInv, KDone(i,s), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, NEW v \in KSlots, Sizes, Location, Design, PinInv, KDone(u,v), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_KDone_01_01, Part_KDone_01_02, Part_KDone_02_01, Part_KDone_02_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_KDone_01_01, Part_KDone_01_02, Part_KDone_02_01, Part_KDone_02_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, KDone(i,s), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, KDone(i,s), ShapeKeep_KDone, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
