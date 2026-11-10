---- MODULE PdActionSlice_KLaunch_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_9ef278c147c12b12, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_KLaunch_01

\* Complete original body PdFinalPart_KLaunch_01_02 SHA 2e64f813a97a536cb09fa8564a1b14ff8f04ce7f53e56b64bc999eaf6073af3c
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_KLaunch_01_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_hd, V22_T_hitSeen, V22_T_hp, V22_T_kfly, V22_T_led, V22_T_net, V22_T_nfail, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sprefc, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc
THEOREM Part_KLaunch_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE (QuietConservation)' /\ (P_SI2)' /\ (SharedLedRef)' /\ (P_SI5)'
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


           RO_PinGrows == /\ \A p \in SPages : SPin(p) => RO_Pin(p)
                          /\ \A h \in rpgS : SHPin(h) => RO_HPin(h)


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

           RO_SRowsFacts(i,rows) ==
            /\ SRows(i,rows) \subseteq Rq \X Gens \X KPages \X {0,1,2,3,4}
            /\ \A e \in SRows(i,rows) :
              /\ e[3] \in SPages /\ B2 /\ IsP(i) /\ e[4] \in {1,4}
              /\ Loc(e[3])=i /\ e[2]<=gen[e[1]] /\ KData(i,e)

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

           LNEhLllF(i,rows) == {KEnt(i,r) : r \in rows} \cup {KGEnt(q) : q \in GrownRows(i,rows)} \cup SRows(i,rows)

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_dpreOK, RO_E_sprefc, RO_Flat, RO_StableStates, RO_ControlStep, RO_SRowsFacts, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, BD3C0, LNEhLllF

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

<1>yFQ846plk6kJ.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg>>, RO_PinGrows
 PROVE UNCHANGED rpgS
<2> USE ONLY <1>yFQ846plk6kJ, Sizes, Location, Design
<2>1. CASE ~B2
 BY ONLY <1>yFQ846plk6kJ, <2>1, SMTT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI1 /\ RO_E_rpgS BY <2>2, <1>pDDs2iPJ6v1, <1>H0Dre0I9dt5V, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <3>1, Design, IsaT(20), Sizes, Location DEF SI1, RO_E_rpgS, RO_HLive, RO_PinGrows, Active, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JJE0Tfox9Q.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg>>, RO_PinGrows
 PROVE UNCHANGED spst
<2> USE ONLY <1>JJE0Tfox9Q, Sizes, Location, Design
<2>1. CASE ~B2
 BY <2>1, ZenonT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI2 /\ SI4 /\ STypeOK /\ RO_E_spst BY <2>2, <1>pDDs2iPJ6v1, <1>LQE0C5CV3kHl, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A p \in SPages : ~RO_Ended(p)
 BY <3>1, SMTT(10), Sizes, Location, Design DEF SI2, RO_Ended, Active, Sizes, Location, Design
 <3>3. \A p \in SPages : ~RO_Drop(p)
 BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SI2, RO_Drop, RO_PinGrows, Sizes, Location, Design
 <3>4. \A p \in SPages : spst'[p]=spst[p]
 BY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF SI4, RO_E_spst, Sizes, Location, Design
 <3>5. QED BY ONLY <3>1, <3>4, SMTT(20), Sizes, Location, Design DEF RO_E_spst, STypeOK, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2182_PdROFollow


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

<1>KPndmXINRK1Z.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg,smap,schoice,spst,skey,sready,rpgS>>, RO_PinGrows,
        gen' \in [Rq -> 0..MG], \A r \in Rq : gen'[r]>=gen[r]
 PROVE P_SI1'
<2> USE ONLY <1>KPndmXINRK1Z, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI1, Sizes, Location, Design
<2>2. CASE B2
 <3>0. gen \in [Rq -> 0..MG] 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>KPndmXINRK1Z, V22_T_gen, SMTT(5)

 <3>1. SI1 /\ STypeOK BY <2>2, <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A h \in rpgS : h[2] \in Rq
 BY <3>1, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
 <3>3. ASSUME NEW h \in rpgS
        PROVE h[3]<=gen'[h[2]]
  <4>1. h[3]<=gen[h[2]] BY <3>1, ZenonT(10), Sizes, Location, Design DEF SI1, Sizes, Location, Design
  <4>2. h[2] \in Rq BY <3>2, Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. gen[h[2]] \in Nat /\ gen'[h[2]] \in Nat /\ h[3] \in Nat BY <3>0, <3>1, <4>2, Sizes, SMTT(10), Location, Design DEF STypeOK, Gens, Sizes, Location, Design
  <4>4. gen'[h[2]]>=gen[h[2]] BY <4>2, Sizes, Location, Design DEF Sizes, Location, Design
  <4>5. QED BY <4>1, <4>3, <4>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY <2>2, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF P_SI1, SI1, SSendReady, Active, SHPin, RO_PinGrows, RO_HPin, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

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

<1>dusdnIGW.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg,smap,xsrc,xsrcS,spst,sown,sgen,skey,swrite,sdata,sready>>, RO_PinGrows
 PROVE P_SI2'
<2> USE ONLY <1>dusdnIGW, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI2, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI2 BY <2>2, <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A p \in SPages : spst'[p] # "shared" => sprefc'[p]=0
 BY <2>2, <1>tkIbKthZ8rm8L, Sizes, Location, Design DEF RO_StableStates, Sizes, Location, Design
 <3>3. QED BY <2>2, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF P_SI2, SI2, SPin, Active, RO_PinGrows, RO_Pin, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

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

<1>Ulbv8Ttn3mobjAB2cEmB.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc, \A p \in SPages : (spst'[p]="shared" /\ SPin(p)') => \E h \in rpgS' : h[4]=p
 PROVE SharedLedRef'
<2> USE ONLY <1>Ulbv8Ttn3mobjAB2cEmB, Sizes, Location, Design
<2>1. PrefcMatchesHolders' BY <1>BhJJoZwTfyo0ME, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ASSUME NEW p \in SPages
       PROVE /\ ((spst'[p]="shared" /\ (SRefE(sentry',xsrcS',p)>0 \/ SPin(p)')) \/ SRefQ(squar',p)>0) => sprefc'[p]>=1
             /\ sprefc'[p]>=SRefQ(squar',p)
 <3>1. SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat
       /\ ((\E h \in rpgS' : h[4]=p) => SRefR(rpgS',p)>0)
 BY <1>RMHRf5pN, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. (spst'[p]="shared" /\ SPin(p)') => \E h \in rpgS' : h[4]=p
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>1, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
\* T2M-END R2M2186_PdRORefSafety


<1>txMumeAB1OTELxaVzWV.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>txMumeAB1OTELxaVzWV, Sizes, Location, Design, Design, ZenonT(10) DEF KLaunch, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hdlMJzEiQO0dN0ululBOf.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>hdlMJzEiQO0dN0ululBOf, Sizes, Location, Design, <1>txMumeAB1OTELxaVzWV, <1>J0yx6oHL5UyrV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XgXXzp0lMuoDIAM.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
 PROVE \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
<2> USE ONLY <1>XgXXzp0lMuoDIAM, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>XgXXzp0lMuoDIAM, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLaunch, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CRdDoCFQYkj3gwesskF.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
 PROVE gen' \in [Rq -> 0..MG] /\ \A r \in Rq : gen'[r]>=gen[r]
<2> USE ONLY <1>CRdDoCFQYkj3gwesskF, Sizes, Location, Design
<2>1. gen \in [Rq -> 0..MG]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>CRdDoCFQYkj3gwesskF, V22_T_gen, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLaunch, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uHhD8uhqo1ERJ3fPh.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
 PROVE \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
<2> USE ONLY <1>uHhD8uhqo1ERJ3fPh, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>uHhD8uhqo1ERJ3fPh, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLaunch, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zsbxtxhUoMieqwpcc.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
 PROVE \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
<2> USE ONLY <1>zsbxtxhUoMieqwpcc, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>zsbxtxhUoMieqwpcc, V22_T_iv, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLaunch, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XIrfo53SMrV9YZu.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
 PROVE /\ \A z \in Xids : iv'[z]=iv[z] \/ iv'[z] \in {"cqe","failret"}
       /\ \A z \in Xids : xst'[z]=xst[z] \/ xst'[z] \in {"landed","failed"}
       /\ \A z \in Xids : hw'[z] \in {"issued","stop"} => hw[z] \in {"fly","issued","stop"}
<2> USE ONLY <1>XIrfo53SMrV9YZu, Sizes, Location, Design
<2>1. K3 /\ hw \in [Xids -> {"none","fly","issued","stop"}]
       /\ iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
       /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>XIrfo53SMrV9YZu, V22_T_hw, V22_T_iv, V22_T_xst, V21_Inv_K3, Sizes, Location, Design, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLaunch, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PDBbXKJMHjjGC7XZO8.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
 PROVE \A z \in Xids : (hw'[z]="stop" /\ hok'[z] /\ xdst[z] \in Pages /\ Held(xdst[z],z)') =>
       ((hw[z]="stop" /\ hok[z] /\ Held(xdst[z],z)) \/ hw[z] \in {"fly","issued"})
<2> USE ONLY <1>PDBbXKJMHjjGC7XZO8, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
       /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
       /\ hw \in [Xids -> {"none","fly","issued","stop"}] /\ hok \in [Xids -> BOOLEAN]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>PDBbXKJMHjjGC7XZO8, V22_T_hok, V22_T_hw, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLaunch, ghV, recV, rtV, xV, Held, Sizes, Location, Design
\* T2M-END R2M2485_PdROEffects_KLaunch


<1>f6srWhIU7NH3k9GGfqZas36l0ru.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>f6srWhIU7NH3k9GGfqZas36l0ru, Sizes, Location, Design, <1>txMumeAB1OTELxaVzWV, <1>BhJJoZwTfyo0ME DEF Sizes, Location, Design

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


<1>CcSxweezZa.        
 ASSUME NEW i \in Inst, NEW rows \in SUBSET Rq, PinInv,
        \A r \in rows : KRowOK(i,r),
        IF B2 /\ IsP(i) THEN \A r \in rows : SRowReady(i,r) ELSE TRUE
 PROVE RO_SRowsFacts(i,rows)
<2> USE ONLY <1>CcSxweezZa, Sizes, Location, Design
<2>1. CASE ~B2 \/ ~IsP(i)
 BY <2>1, SMTT(10), Sizes, Location, Design DEF RO_SRowsFacts, SRows, Sizes, Location, Design
<2>2. CASE B2 /\ IsP(i)
 <3>1. SI1 /\ SI2 /\ STypeOK /\ HitIdentity /\ K8
 BY <2>2, <1>pDDs2iPJ6v1, V21_Inv_HitIdentity, V21_Inv_K8, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
 <3>2. i \in PInst BY <2>2, Sizes, SMTT(10), Location, Design DEF NL, IsP, Inst, PInst, DInst, Sizes, Location, Design
 <3>3. \A r \in rows :
    /\ rg[i][r] \in Gens /\ rg[i][r]<=gen[r] /\ Active(i,r)
    /\ (smap[i][r] # 0 =>
       /\ smap[i][r] \in SPages /\ Loc(smap[i][r])=i
       /\ spst[smap[i][r]] \in {"priv","shared"} /\ sready[smap[i][r]]
       /\ sdata[smap[i][r]] /\ ~swrite[smap[i][r]]
       /\ skey[smap[i][r]]=STok(r,rg[i][r]))
 BY <2>2, <3>1, <3>2, Design, SMTT(10), Sizes, Location DEF K8, KRowOK, SI1, SI2, STypeOK, HitIdentity, SRowReady, Active, Sizes, Location, Design
 <3>4. \A p \in SPages : NoWriteInto(p)
 <4>1. xdst \in [Xids -> 0..NP]

 <5> HIDE DEF CoreTypeOK, STypeOK
 <5>fields. QED
  BY ONLY <1>CcSxweezZa, V22_T_xdst, SMTT(5)

 <4>2. \A p \in SPages : p \notin 0..NP BY Sizes, SMTT(10), Location, Design DEF SPages, Sizes, Location, Design
 <4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF NoWriteInto, Writing, InFl, Sizes, Location, Design
 <3>5. QED BY <2>2, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF RO_SRowsFacts, SRows, KPages, KHeld, SHeld, KData, SData, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ORZksVfXj9VEHl.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
 PROVE \A a \in Inst,b \in KSlots : kpin[a][b] => kpin'[a][b] /\ krs'[a][b]=krs[a][b]
<2> USE ONLY <1>ORZksVfXj9VEHl, Sizes, Location, Design
<2>1. kpin \in [Inst -> [KSlots -> BOOLEAN]] /\ krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0,1,2,3,4})]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ORZksVfXj9VEHl, V22_T_kpin, V22_T_krs, SMTT(5)

<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF KLaunch, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YQgHk4zTaa7v2mB37.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE UNCHANGED <<spst,rpgS>>
<2> USE ONLY <1>YQgHk4zTaa7v2mB37, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg>> BY ZenonT(10), Sizes, Location, Design DEF KLaunch, recV, Sizes, Location, Design
<2>2. \A a \in Inst,b \in KSlots : kpin[a][b] => kpin'[a][b] /\ krs'[a][b]=krs[a][b] BY <1>ORZksVfXj9VEHl, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PInst \subseteq Inst BY Sizes, SMTT(10), Location, Design DEF NL, Inst, PInst, DInst, Sizes, Location, Design
<2>4. rpgS \subseteq PInst \X Rq \X Gens \X SPages 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>YQgHk4zTaa7v2mB37, V22_T_rpgS, SMTT(5)

<2>5. RO_PinGrows BY <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF RO_PinGrows, RO_Pin, RO_HPin, SPin, SHPin, Sizes, Location, Design
<2>6. QED BY <2>1, <2>5, <1>JJE0Tfox9Q, <1>yFQ846plk6kJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WAxd2hhfMM.        
 ASSUME PinInv
 PROVE TypInv => BD3C0
  BY ONLY <1>WAxd2hhfMM, Sizes, Location, Design, ZenonT(5) DEF TypInv, CoreTypeOK, BD3C0, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tcs1aCvov.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
  , PinInv
 PROVE /\ ~kpin[i][s] /\ ~kfly[i][s] /\ rows # {}
        /\ (\A r \in rows : KRowOK(i,r)) /\ (IF B2 /\ IsP(i) THEN \A r \in rows : SRowReady(i,r) ELSE TRUE)
        /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
        /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
        /\ krs' = [krs EXCEPT ![i][s] = LNEhLllF(i,rows)]
        /\ UNCHANGED <<rtV, alive, nfail, torn, recV, pst, pr, pgn, pvis, led, sfly, sled, prefc, pqp, xV, net, ghV>>
  BY ONLY <1>Tcs1aCvov, Sizes, Location, Design, SMT DEF KLaunch, LNEhLllF, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SepUm.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, KRowOK(i,r)
  , PinInv
 PROVE /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
        /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (rhit[i][r] => IsD(i))
<2> USE ONLY <1>SepUm, Sizes, Location, Design
<2>1. i \in Int /\ NPI \in Int
  BY Sizes, SMT, Location, Design DEF Inst, NL, Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMT, Sizes, Location DEF K8, KRowOK, Active, IsD, IsP, Sizes, Location, Design


<1>yLD4fiDJR.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
         lx9I2z, DJuMb, KLaunch(i,s,rows)
  , PinInv
 PROVE \A a \in Inst, b \in KSlots : kpin'[a][b] =>
          \/ a = i /\ b = s /\ krs'[a][b] = LNEhLllF(i,rows)
          \/ kpin[a][b] /\ krs'[a][b] = krs[a][b]
<2> USE ONLY <1>yLD4fiDJR, Sizes, Location, Design
<2>1. /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
       /\ krs' = [krs EXCEPT ![i][s] = LNEhLllF(i,rows)]
  BY <1>Tcs1aCvov, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF lx9I2z, DJuMb, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jQ8xdbf1CZ6c4tgJ3Niypg.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
         PinInv, KLaunch(i,s,rows)
  
 PROVE BaseQuietConservation'
<2> USE ONLY <1>jQ8xdbf1CZ6c4tgJ3Niypg, Sizes, Location, Design
<2>1. rows # {} /\ (\A r \in rows : KRowOK(i,r)) /\ UNCHANGED ph
  BY <1>Tcs1aCvov, SMTT(10), Sizes, Location, Design DEF recV, Sizes, Location, Design
<2>2. PICK r \in rows : TRUE
  BY <2>1, ZenonT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. r \in Rq /\ Active(i,r)'
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF KRowOK, Active, Sizes, Location, Design
<2>4. QED
  BY <2>3, SMTT(10), Sizes, Location, Design DEF BaseQuietConservation, Quiet, Sizes, Location, Design
\* T2M-END R2M2498_PdROK_PdCell_KLaunch_QuietConservation


<1>g4ukMt7rga0IPw.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE STypeOK'
 BY ONLY <1>g4ukMt7rga0IPw, AuxType_9ef278c147c12b12, Sizes, Location, Design DEF Sizes, Location, Design

<1>t9QmG9nO78ILJ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE B2 => \A p \in SPages : (spst'[p]="shared" /\ SPin(p)') => \E h \in rpgS' : h[4]=p
<2> USE ONLY <1>t9QmG9nO78ILJ, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI1 /\ SI3 /\ STypeOK BY <2>2, <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED <<spst,rpgS,sdata,swrite,skey,sown,sgen>> BY <1>YQgHk4zTaa7v2mB37, <1>jGg3R, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A a \in Inst,b \in KSlots : kpin'[a][b] =>
   (a=i /\ b=s /\ krs'[a][b]=LNEhLllF(i,rows)) \/ (kpin[a][b] /\ krs'[a][b]=krs[a][b])
 BY <1>yLD4fiDJR, <1>WAxd2hhfMM, V21_Inv_TypeOK, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
 <3>4. RO_SRowsFacts(i,rows) BY <1>CcSxweezZa, <1>Tcs1aCvov, Sizes, Location, Design DEF Sizes, Location, Design
 <3>5. \A e \in SRows(i,rows) : spst[e[3]]="shared" => SH(i,e[1],e[2],e[3]) \in rpgS
 <4>1. ASSUME NEW e \in SRows(i,rows), spst[e[3]]="shared"
       PROVE SH(i,e[1],e[2],e[3]) \in rpgS
  <5>1. IsP(i) BY <4>1, SMTT(10), Sizes, Location, Design DEF SRows, Sizes, Location, Design
  <5>2. PICK r \in rows : smap[i][r] # 0 /\ e = <<r,rg[i][r],smap[i][r],IF spst[smap[i][r]]="shared" THEN 1 ELSE 4 >>
  BY <4>1, <5>1, <2>2, SMTT(10), Sizes, Location, Design DEF SRows, Sizes, Location, Design
  <5>3. i \in PInst /\ smap[i][r] \in SPages
   <6>1. i \in Inst BY ONLY <1>t9QmG9nO78ILJ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
   <6>2. i \in PInst BY ONLY <6>1, <5>1, Sizes, SMTT(10), Location, Design DEF NL, Inst, PInst, IsP, Sizes, Location, Design
   <6>3. smap \in [PInst -> [Rq -> {0} \cup SPages]]
    
   <7> HIDE DEF CoreTypeOK, STypeOK
   <7>fields. QED
    BY ONLY <1>t9QmG9nO78ILJ, V22_T_smap, SMTT(5)

   <6>4. rows \subseteq Rq BY ONLY <1>t9QmG9nO78ILJ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
   <6>5. r \in Rq BY ONLY <6>4, <5>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
   <6>6. smap[i][r] \in {0} \cup SPages BY ONLY <6>2, <6>3, <6>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
   <6>7. QED BY ONLY <6>2, <6>6, <5>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <5>4. Active(i,r) BY <5>2, <1>Tcs1aCvov, Sizes, Location, Design DEF KRowOK, Sizes, Location, Design
  <5>5. QED BY <4>1, <5>2, <5>3, <5>4, <3>1, SMTT(10), Sizes, Location, Design DEF SI1, SH, Sizes, Location, Design
 <4>2. QED BY <4>1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>6. \A e \in LNEhLllF(i,rows) : e[3] \in SPages => e \in SRows(i,rows)
 BY P_PagePoolsDisjoint, <1>SepUm, <1>Tcs1aCvov, SMTT(10), V21_Inv_K8, Sizes, Location, Design DEF LNEhLllF, KEnt, KGEnt, GrownRows, GrownP, Sizes, Location, Design
 <3>7. QED BY <2>2, <3>1, <3>2, <3>3, <3>4, <3>5, <3>6, Sizes, SMTT(10), Location, Design DEF SPin, SH, NL, P_SI3, SI3, RO_SRowsFacts, KHeld, KData, SData, Inst, PInst, DInst, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2486_PdROKernelState


<1>gvWnrX28gWz.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE P_SI5'
BY ONLY <1>gvWnrX28gWz, Sizes, Location, Design, <1>YQgHk4zTaa7v2mB37, <1>txMumeAB1OTELxaVzWV, <1>hdlMJzEiQO0dN0ululBOf, <1>jGg3R, <1>XIrfo53SMrV9YZu, <1>XgXXzp0lMuoDIAM, <1>PDBbXKJMHjjGC7XZO8, <1>zsbxtxhUoMieqwpcc, <1>uHhD8uhqo1ERJ3fPh, <1>FVK4MYGoOHs3gti, <1>cU8s9xOg0OyR DEF RO_StableStates, RO_ControlStep, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DndXvzUK0lO.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE P_SI1'
<2> USE ONLY <1>DndXvzUK0lO, Sizes, Location, Design
<2>1. RO_PinGrows
 <3>1. \A a \in Inst,b \in KSlots : kpin[a][b] => kpin'[a][b] /\ krs'[a][b]=krs[a][b]
  BY ONLY <1>DndXvzUK0lO, <1>ORZksVfXj9VEHl, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. PInst \subseteq Inst BY ONLY Sizes, SMTT(10), Location, Design DEF NL, PInst, Inst, DInst, Sizes, Location, Design
 <3>3. rpgS \subseteq PInst \X Rq \X Gens \X SPages
  
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>DndXvzUK0lO, V22_T_rpgS, SMTT(5)

 <3>4. \A p \in SPages : SPin(p) => RO_Pin(p)
  BY ONLY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SPin, RO_Pin, Sizes, Location, Design
 <3>5. \A h \in rpgS : SHPin(h) => RO_HPin(h)
  BY ONLY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF SHPin, RO_HPin, Sizes, Location, Design
 <3>6. QED BY ONLY <3>4, <3>5, Sizes, Location, Design DEF RO_PinGrows, Sizes, Location, Design
<2>2. QED BY <2>1, <1>ORZksVfXj9VEHl, <1>YQgHk4zTaa7v2mB37, <1>txMumeAB1OTELxaVzWV, <1>hdlMJzEiQO0dN0ululBOf, <1>jGg3R, <1>CRdDoCFQYkj3gwesskF, <1>KPndmXINRK1Z, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rhPwfgeHhBs.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE P_SI2'
<2> USE ONLY <1>rhPwfgeHhBs, Sizes, Location, Design
<2>1. RO_PinGrows
 <3>1. \A a \in Inst,b \in KSlots : kpin[a][b] => kpin'[a][b] /\ krs'[a][b]=krs[a][b]
  BY ONLY <1>rhPwfgeHhBs, <1>ORZksVfXj9VEHl, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. PInst \subseteq Inst BY ONLY Sizes, SMTT(10), Location, Design DEF NL, PInst, Inst, DInst, Sizes, Location, Design
 <3>3. rpgS \subseteq PInst \X Rq \X Gens \X SPages
  
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>rhPwfgeHhBs, V22_T_rpgS, SMTT(5)

 <3>4. \A p \in SPages : SPin(p) => RO_Pin(p)
  BY ONLY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SPin, RO_Pin, Sizes, Location, Design
 <3>5. \A h \in rpgS : SHPin(h) => RO_HPin(h)
  BY ONLY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF SHPin, RO_HPin, Sizes, Location, Design
 <3>6. QED BY ONLY <3>4, <3>5, Sizes, Location, Design DEF RO_PinGrows, Sizes, Location, Design
<2>2. QED BY <2>1, <1>ORZksVfXj9VEHl, <1>YQgHk4zTaa7v2mB37, <1>txMumeAB1OTELxaVzWV, <1>hdlMJzEiQO0dN0ululBOf, <1>jGg3R, <1>CRdDoCFQYkj3gwesskF, <1>dusdnIGW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ka8rq0rCmEfvcwpcBJ6K.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE SharedLedRef'
<2> USE ONLY <1>Ka8rq0rCmEfvcwpcBJ6K, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
<2>2. CASE B2 BY <2>2, <1>t9QmG9nO78ILJ, <1>txMumeAB1OTELxaVzWV, <1>Ulbv8Ttn3mobjAB2cEmB, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OjbT45Y3plTcoXiIMZ0h2lDxr.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE QuietConservation'
<2> USE ONLY <1>OjbT45Y3plTcoXiIMZ0h2lDxr, Sizes, Location, Design
<2>1. BaseQuietConservation' BY <1>jQ8xdbf1CZ6c4tgJ3Niypg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. P_SI1' /\ P_SI2' /\ STypeOK' /\ PrefcMatchesHolders'
 BY <1>DndXvzUK0lO, <1>rhPwfgeHhBs, <1>txMumeAB1OTELxaVzWV, <1>g4ukMt7rga0IPw, <1>f6srWhIU7NH3k9GGfqZas36l0ru, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>EjmNCRbt1, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2499_PdROKernelShared_KLaunch


<1> QED BY <1>OjbT45Y3plTcoXiIMZ0h2lDxr, <1>rhPwfgeHhBs, <1>Ka8rq0rCmEfvcwpcBJ6K, <1>gvWnrX28gWz, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF AuxType_9ef278c147c12b12, P_PagePoolsDisjoint, Part_KLaunch_01_02, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNoReg, V21_Inv_STypeOK, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_T_gen, V22_T_hok, V22_T_hw, V22_T_iv, V22_T_kpin, V22_T_krs, V22_T_nx, V22_T_pgn, V22_T_pr, V22_T_pst, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xdst, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
====
