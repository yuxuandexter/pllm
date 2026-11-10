---- MODULE PdActionSlice_KLaunch_03 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_9ef278c147c12b12, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_KLaunch_02

\* Complete original body PdFinalPart_KLaunch_02_01 SHA abf85b37a3d3c2276ed016aa21c2f2408aae1e40b2199f7b010f3f72e988e631
HIDE DEF AuxType_9ef278c147c12b12, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_KLaunch_01_01, Part_KLaunch_01_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K17, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_kfly, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sprefc, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc
THEOREM Part_KLaunch_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE (P_SI4)' /\ (K15)' /\ (NoEvictUnderRDMA)' /\ (P_SI6)' /\ (P_SI1)' /\ (HitIdentity)' /\ (PrefcMatchesHolders)' /\ (SI8)'
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

<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_xprefixOK, RO_E_sprefc, RO_Flat, RO_StableStates, RO_ControlStep, RO_SRowsFacts, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, BD3C0, LNEhLllF

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

<1>gzWbDzqo6m6QKGR2k.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
 PROVE \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
<2> USE ONLY <1>gzWbDzqo6m6QKGR2k, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>gzWbDzqo6m6QKGR2k, V22_T_hw, SMTT(5)

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

<1>iqaJpXeBE0M27uWzUH1t.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
 PROVE \A x \in Xids : xst'[x]="posted" => xst[x]="posted"
<2> USE ONLY <1>iqaJpXeBE0M27uWzUH1t, Sizes, Location, Design
<2>1. xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>iqaJpXeBE0M27uWzUH1t, V22_T_xst, SMTT(5)

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

<1>fWDR9FzE0zvZ1KroIsw.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
 PROVE \A z \in Xids : hw'[z]="fly" => ~RO_Close(z)
<2> USE ONLY <1>fWDR9FzE0zvZ1KroIsw, Sizes, Location, Design
<2>1. K3 /\ hw \in [Xids -> {"none","fly","issued","stop"}]
       /\ iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
       /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>fWDR9FzE0zvZ1KroIsw, V22_T_hw, V22_T_iv, V22_T_xst, V21_Inv_K3, Sizes, Location, Design, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLaunch, ghV, recV, rtV, xV, RO_Close, K3, InFl, CqeHw, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IuzRiPfQ3XNWewGWKpgSBaMyLkm.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>IuzRiPfQ3XNWewGWKpgSBaMyLkm, Sizes, Location, Design, <1>txMumeAB1OTELxaVzWV, <1>BhJJoZwTfyo0ME DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lV5Kgm4YD6B.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE SI8'
 BY ONLY <1>lV5Kgm4YD6B, Sizes, Location, Design, <1>txMumeAB1OTELxaVzWV, <1>hdlMJzEiQO0dN0ululBOf, <1>iqaJpXeBE0M27uWzUH1t, <1>yYTbap2jtpor DEF Sizes, Location, Design
\* T2M-END R2M2496_PdROShared_KLaunch


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

<1>joh6z3bMX.        
 PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2481_PdROK_PdProofBase


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

<1>pX6n1mfRA.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
  , PinInv
 PROVE \E W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY ONLY <1>pX6n1mfRA, Sizes, Location, Design, Design, SMT DEF KLaunch, Sizes, Location, Design

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


<1>itzrhoR.        
  ASSUME NEW i \in Inst, NEW rows \in SUBSET Rq,
         K8, K16, \A r \in rows : KRowOK(i,r)
  , PinInv
 PROVE \A q \in GrownRows(i,rows) :
    /\ GrownP(q) /\ pr[q] \in Rq /\ pgn[q] \in Gens
    /\ Loc(q) = i /\ pgn[q] <= gen[pr[q]] /\ IsD(i)
    /\ plt[q] = ptl[q] /\ ptl[q] \in {0,1} /\ NoWriteInto(q)
    /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {}
    /\ rg[i][pr[q]] = pgn[q] /\ ph[i][pr[q]] \in {"run","ovl"}
    /\ rpg[i][pr[q]] # q
<2> USE ONLY <1>itzrhoR, Sizes, Location, Design
<2>1. \A r \in rows :
  /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
  BY <1>SepUm, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF GrownRows, GrownP, K16, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t9gucBsHDv.        
  ASSUME NEW i \in Inst, NEW rows \in SUBSET Rq, rows # {},
         K8, K16, \A r \in rows : KRowOK(i,r)
  , PinInv, SFollow
  , (IF B2 /\ IsP(i) THEN \A r \in rows : SRowReady(i,r) ELSE TRUE)
 PROVE /\ LNEhLllF(i,rows) # {}
        /\ LNEhLllF(i,rows) \subseteq Rq \X Gens \X KPages \X {0,1,2,3,4}
        /\ \A e \in LNEhLllF(i,rows) :
             /\ Loc(e[3]) = i /\ e[2] <= gen[e[1]]
             /\ (IF e[3] \in SPages THEN B2 /\ IsP(i) /\ e[4] \in {1,4} ELSE e[4] \in {0,1,2,3} /\ (e[4] # 0 => IsD(i)))
<2> USE ONLY <1>t9gucBsHDv, Sizes, Location, Design
<2>0. RO_SRowsFacts(i,rows) BY <1>CcSxweezZa, Sizes, Location, Design DEF Sizes, Location, Design
<2>1. \A r \in rows :
  /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
  /\ (rhit[i][r] => IsD(i))
  BY <1>SepUm, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A q \in GrownRows(i,rows) :
    /\ pr[q] \in Rq /\ pgn[q] \in Gens
    /\ Loc(q) = i /\ pgn[q] <= gen[pr[q]] /\ IsD(i)
  BY <1>itzrhoR, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. LNEhLllF(i,rows) # {}
 <3>1. PICK r \in rows : TRUE
  BY ONLY <1>t9gucBsHDv, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. KEnt(i,r) \in {KEnt(i,u) : u \in rows}
  BY ONLY <3>1, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. KEnt(i,r) \in LNEhLllF(i,rows)
  BY ONLY <3>2, SMTT(20), Sizes, Location, Design DEF LNEhLllF, Sizes, Location, Design
 <3>4. QED BY ONLY <3>3, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. LNEhLllF(i,rows) \subseteq Rq \X Gens \X KPages \X {0,1,2,3,4}
  BY <2>0, <2>1, <2>2, P_PagePoolsDisjoint, SMT, Sizes, Location, Design DEF LNEhLllF, RO_SRowsFacts, KEnt, KGEnt, GrownRows, KPages, Sizes, Location, Design
<2>5. \A e \in LNEhLllF(i,rows) :
        /\ Loc(e[3]) = i /\ e[2] <= gen[e[1]]
        /\ (IF e[3] \in SPages THEN B2 /\ IsP(i) /\ e[4] \in {1,4} ELSE e[4] \in {0,1,2,3} /\ (e[4] # 0 => IsD(i)))
  BY <2>0, <2>1, <2>2, P_PagePoolsDisjoint, SMT, Sizes, Location, Design DEF LNEhLllF, RO_SRowsFacts, KEnt, KGEnt, KPages, GrownRows, GrownP, Sizes, Location, Design
<2>6. QED
  BY <2>0, <2>3, <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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

<1>rwfd1fehC.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE P_SI6'
<2> USE ONLY <1>rwfd1fehC, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF P_SI6, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI6 /\ rg \in [Inst -> [Rq -> 0..MG]] BY <2>2, <1>pDDs2iPJ6v1, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF CoreTypeOK, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
 <3>2. UNCHANGED <<ph,rg,schoice,smap,rpgS>> BY <1>txMumeAB1OTELxaVzWV, <1>hdlMJzEiQO0dN0ululBOf, <1>YQgHk4zTaa7v2mB37, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A a \in Inst,b \in KSlots : kpin'[a][b] =>
   (a=i /\ b=s /\ krs'[a][b]=LNEhLllF(i,rows)) \/ (kpin[a][b] /\ krs'[a][b]=krs[a][b])
 BY <1>yLD4fiDJR, <1>WAxd2hhfMM, V21_Inv_TypeOK, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
 <3>4. \A e \in LNEhLllF(i,rows) : e[3] \in SPages => e \in SRows(i,rows)
 BY P_PagePoolsDisjoint, <1>SepUm, <1>Tcs1aCvov, SMTT(10), V21_Inv_K8, Sizes, Location, Design DEF LNEhLllF, KEnt, KGEnt, GrownRows, GrownP, Sizes, Location, Design
 <3>5. \A e \in SRows(i,rows) :
    /\ rg[i][e[1]]>=e[2]
    /\ schoice[i][e[1]] /\ ph[i][e[1]] \in {"ready","reg","sent","exp"}
    /\ smap[i][e[1]]=e[3]
 <4>1. ASSUME NEW e \in SRows(i,rows)
       PROVE rg[i][e[1]]>=e[2] /\ schoice[i][e[1]] /\ ph[i][e[1]] \in {"ready","reg","sent","exp"} /\ smap[i][e[1]]=e[3]
  <5>1. IsP(i) BY <4>1, SMTT(10), Sizes, Location, Design DEF SRows, Sizes, Location, Design
  <5>2. PICK r \in rows : smap[i][r] # 0 /\ e = <<r,rg[i][r],smap[i][r],IF spst[smap[i][r]]="shared" THEN 1 ELSE 4 >>
  BY <4>1, <5>1, <2>2, SMTT(10), Sizes, Location, Design DEF SRows, Sizes, Location, Design
  <5>3. KRowOK(i,r) /\ SRowReady(i,r) BY <5>1, <5>2, <2>2, <1>Tcs1aCvov, Sizes, Location, Design DEF Sizes, Location, Design
  <5>4. rg[i][r] \in Int /\ ~IsD(i) BY <3>1, <5>1, <5>2, Sizes, SMTT(10), Location, Design DEF Inst, NL, IsP, IsD, Sizes, Location, Design
  <5>5. QED BY <5>1, <5>2, <5>3, <5>4, Design, SMTT(10), Sizes, Location DEF KRowOK, SRowReady, Sizes, Location, Design
 <4>2. QED BY <4>1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>6. QED BY <2>2, <3>1, <3>2, <3>3, <3>4, <3>5, Sizes, SMTT(10), Location, Design DEF NL, P_SI6, SI6, Active, Inst, PInst, DInst, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JdLuyqyNuFDFbhbIqjM.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE HitIdentity'
BY ONLY <1>JdLuyqyNuFDFbhbIqjM, Sizes, Location, Design, <1>YQgHk4zTaa7v2mB37, <1>txMumeAB1OTELxaVzWV, <1>hdlMJzEiQO0dN0ululBOf, <1>jGg3R, <1>BbgSGNWiNo6y DEF RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ddqvTwIW354gzplWiRVpLUZJ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE NoEvictUnderRDMA'
BY ONLY <1>ddqvTwIW354gzplWiRVpLUZJ, Sizes, Location, Design, <1>YQgHk4zTaa7v2mB37, <1>txMumeAB1OTELxaVzWV, <1>hdlMJzEiQO0dN0ululBOf, <1>gzWbDzqo6m6QKGR2k, <1>jGg3R, <1>YraYIuuP0dXpCHZH DEF RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vPxQUsN9t1V.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE P_SI6'
BY ONLY <1>vPxQUsN9t1V, Sizes, Location, Design, <1>rwfd1fehC DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rPgQ7cuoiXg.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE P_SI4'
BY ONLY <1>rPgQ7cuoiXg, Sizes, Location, Design, <1>YQgHk4zTaa7v2mB37, <1>txMumeAB1OTELxaVzWV, <1>hdlMJzEiQO0dN0ululBOf, <1>jGg3R, <1>XIrfo53SMrV9YZu, <1>gzWbDzqo6m6QKGR2k, <1>fWDR9FzE0zvZ1KroIsw, <1>S9kRK0leNkDm DEF RO_StableStates, RO_ControlStep, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EREXcZVSHfF.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE P_SI1'
<2> USE ONLY <1>EREXcZVSHfF, Sizes, Location, Design
<2>1. RO_PinGrows
 <3>1. \A a \in Inst,b \in KSlots : kpin[a][b] => kpin'[a][b] /\ krs'[a][b]=krs[a][b]
  BY ONLY <1>EREXcZVSHfF, <1>ORZksVfXj9VEHl, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. PInst \subseteq Inst BY ONLY Sizes, SMTT(10), Location, Design DEF NL, PInst, Inst, DInst, Sizes, Location, Design
 <3>3. rpgS \subseteq PInst \X Rq \X Gens \X SPages
  
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>EREXcZVSHfF, V22_T_rpgS, SMTT(5)

 <3>4. \A p \in SPages : SPin(p) => RO_Pin(p)
  BY ONLY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SPin, RO_Pin, Sizes, Location, Design
 <3>5. \A h \in rpgS : SHPin(h) => RO_HPin(h)
  BY ONLY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF SHPin, RO_HPin, Sizes, Location, Design
 <3>6. QED BY ONLY <3>4, <3>5, Sizes, Location, Design DEF RO_PinGrows, Sizes, Location, Design
<2>2. QED BY <2>1, <1>ORZksVfXj9VEHl, <1>YQgHk4zTaa7v2mB37, <1>txMumeAB1OTELxaVzWV, <1>hdlMJzEiQO0dN0ululBOf, <1>jGg3R, <1>CRdDoCFQYkj3gwesskF, <1>KPndmXINRK1Z, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IFC9qA2Gaz.        
  ASSUME NEW r, NEW g
  , PinInv
 PROVE NTok(r,g) \in Nat \ {0}
<2> USE ONLY <1>IFC9qA2Gaz, Sizes, Location, Design
<2>size. PS \in Int /\ PS>=1
 BY ONLY Sizes, SMTT(5) DEF Sizes
<2>whole. CASE PS=1 \/ g % 2=1
 BY ONLY <2>size, <2>whole, SMTT(5) DEF NTok
<2>partial. CASE ~(PS=1 \/ g % 2=1)
 BY ONLY <2>size, <2>partial, SMTT(5) DEF NTok
<2>qed. QED BY ONLY <2>whole, <2>partial, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>uqu5sSXzcjiLDW.        
  ASSUME NEW x \in Xids, flJU, K2, InFl(x)
  , PinInv
 PROVE x < nx
  BY ONLY <1>uqu5sSXzcjiLDW, Sizes, Location, Design, SMT DEF flJU, Xids, K2, InFl, Sizes, Location, Design


<1>UaXBrgx4y6NOURSz.        
  ASSUME NEW x \in Xids, flJU, K1, K2, K3, InFl(x)
  , PinInv
 PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>UaXBrgx4y6NOURSz, Sizes, Location, Design
<2>1. x < nx
  BY <1>uqu5sSXzcjiLDW, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMT, Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ldUwVS7.        
  ASSUME NEW i \in Inst, NEW p \in Pages, IsP(i), Loc(p) = i,
         flJU, K1, K2, K3
  , PinInv
 PROVE NoWriteInto(p)
<2> USE ONLY <1>ldUwVS7, Sizes, Location, Design
<2>1. \A x \in Xids : InFl(x) => Loc(xdst[x]) \in DInst
  BY <1>UaXBrgx4y6NOURSz, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. i \notin DInst
  BY Sizes, SMT, Location, Design DEF IsP, DInst, Inst, NL, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF NoWriteInto, Writing, Sizes, Location, Design
\* T2M-END R2M2520_PdROK_PdDataLemmas


<1>P2nQmxw.        
  ASSUME NEW i \in Inst, NEW r \in Rq, flJU, K1, K2, K3, K8,
         BaseReadOwnLanded, KRowOK(i,r)
  , PinInv
 PROVE /\ KData(i,KEnt(i,r))
        /\ ((IsD(i) /\ ~rhit[i][r]) => led[rpg[i][r]] = {})
        /\ (IsP(i) => sled[rpg[i][r]] = {})
<2> USE ONLY <1>P2nQmxw, Sizes, Location, Design
<2>1. /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
       /\ (rhit[i][r] => IsD(i))
  BY <1>SepUm, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. i \in Int /\ NPI \in Int
  BY Sizes, SMT, Location, Design DEF Inst, NL, Sizes, Location, Design
<2>3. CASE IsD(i)
  <3>1. i \in DInst /\ ~IsP(i)
    BY <2>3, <2>2, Sizes, SMT, Location, Design DEF IsD, IsP, Inst, DInst, NL, Sizes, Location, Design
  <3>2. ph[i][r] \in {"run","ovl"}
    BY <2>3, Design, SMT, Sizes, Location DEF KRowOK, Sizes, Location, Design
  <3>3. QED
    BY <2>3, <2>1, <3>1, <3>2, Design, P_PagePoolsDisjoint, SMT, Sizes, Location DEF KData, KEnt, BaseReadOwnLanded, KRowOK, Sizes, Location, Design
<2>4. CASE ~IsD(i)
  <3>1. IsP(i)
    BY <2>4, <2>2, SMT, Sizes, Location, Design DEF IsD, IsP, Sizes, Location, Design
  <3>2. NoWriteInto(rpg[i][r])
    BY <2>4, <2>1, <3>1, <1>ldUwVS7, Sizes, Location, Design DEF Sizes, Location, Design
  <3>3. QED
    BY <2>4, <2>1, <3>1, <3>2, Design, P_PagePoolsDisjoint, SMT, Sizes, Location DEF KData, KEnt, KRowOK, K8, Sizes, Location, Design
<2>5. QED
  BY <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AM9FEMF4cFYffq.        
  ASSUME NEW i \in Inst, NEW rows \in SUBSET Rq,
         NEW W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0},
         K8, K14, K15, K16, \A r \in rows : KRowOK(i,r)
  , PinInv
 PROVE \A a \in Inst, b \in KSlots : kpin[a][b] =>
    \A e \in krs[a][b] : e[4] # 3 => e[3] \notin W
<2> USE ONLY <1>AM9FEMF4cFYffq, Sizes, Location, Design
<2>1. \A q \in W : ptl[q] = 0 /\ Loc(q) = i /\ IsD(i)
  BY <1>itzrhoR, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A r, g : NTok(r,g) \in Nat \ {0}
  BY <1>IFC9qA2Gaz, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PS \in Nat \ {0}
  BY Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, P_PagePoolsDisjoint, SMT, Sizes, Location, Design DEF K14, K15, KData, GrownRows, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HRpu833l.        
  ASSUME NEW i \in Inst, NEW rows \in SUBSET Rq, flJU, K1, K2, K3, K8, K16,
         BaseReadOwnLanded, \A r \in rows : KRowOK(i,r)
  , PinInv, SFollow
  , (IF B2 /\ IsP(i) THEN \A r \in rows : SRowReady(i,r) ELSE TRUE)
 PROVE \A e \in LNEhLllF(i,rows) :
    /\ KData(i,e)
    /\ ((IsD(i) /\ e[4] # 1) => led[e[3]] = {})
    /\ ((IsP(i) /\ e[3] \in Pages) => sled[e[3]] = {})
<2> USE ONLY <1>HRpu833l, Sizes, Location, Design
<2>0. RO_SRowsFacts(i,rows) BY <1>CcSxweezZa, Sizes, Location, Design DEF Sizes, Location, Design
<2>1. \A r \in rows :
    /\ KData(i,KEnt(i,r))
    /\ ((IsD(i) /\ ~rhit[i][r]) => led[rpg[i][r]] = {})
    /\ (IsP(i) => sled[rpg[i][r]] = {})
  BY <1>P2nQmxw, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A q \in GrownRows(i,rows) :
    /\ plt[q] = ptl[q] /\ ptl[q] \in {0,1} /\ NoWriteInto(q)
    /\ led[q] = {} /\ sled[q] = {} /\ IsD(i)
  BY <1>itzrhoR, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A q \in GrownRows(i,rows) :
    /\ KData(i,KGEnt(q)) /\ led[q] = {} /\ sled[q] = {}
  BY <2>2, Design, P_PagePoolsDisjoint, SMT, Sizes, Location DEF KData, KGEnt, GrownRows, Sizes, Location, Design
<2>4. QED
  BY <2>0, <2>1, <2>3, P_PagePoolsDisjoint, Sizes, SMT, Location, Design DEF RO_SRowsFacts, NL, Inst, PInst, DInst, IsP, IsD, LNEhLllF, KEnt, KGEnt, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>N4ZLYm2.        
  ASSUME NEW i, NEW e, e[3] \in KPages, KData(i,e), UNCHANGED <<hw, xdst, pvis, sfly>>,
         (e[3] \in Pages /\ e[4] # 3) => UNCHANGED <<ptl[e[3]], plt[e[3]]>>
  , PinInv, SFollow
 PROVE KData(i,e)'
  BY ONLY <1>N4ZLYm2, Sizes, Location, Design, <1>jGg3R, SMT DEF KData, SData, NoWriteInto, Writing, InFl, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wSjgQxYLZgMMgs.        
  ASSUME NEW i \in Inst, NEW rows \in SUBSET Rq,
         NEW W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0},
         flJU, K1, K2, K3, K8, K16, BaseReadOwnLanded,
         \A r \in rows : KRowOK(i,r)
  , PinInv, SFollow
  , (IF B2 /\ IsP(i) THEN \A r \in rows : SRowReady(i,r) ELSE TRUE)
 PROVE \A e \in LNEhLllF(i,rows) : e[4] # 3 => e[3] \notin W
<2> USE ONLY <1>wSjgQxYLZgMMgs, Sizes, Location, Design
<2>0. RO_SRowsFacts(i,rows) BY <1>CcSxweezZa, Sizes, Location, Design DEF Sizes, Location, Design
<2>1. \A q \in W : ptl[q] = 0 /\ IsD(i)
  BY <1>itzrhoR, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A e \in LNEhLllF(i,rows) : KData(i,e)
  BY <1>HRpu833l, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A r, g : NTok(r,g) \in Nat \ {0}
  BY <1>IFC9qA2Gaz, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. PS \in Nat \ {0}
  BY Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>0, <2>1, <2>2, <2>3, <2>4, P_PagePoolsDisjoint, SMT, Sizes, Location, Design DEF KData, GrownRows, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ceYyntxi.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
         BD3C0, K1, K2, K3, K8, K14, K15, K16, BaseReadOwnLanded, KLaunch(i,s,rows)
  , PinInv, SFollow
 PROVE K15'
<2> USE ONLY <1>ceYyntxi, Sizes, Location, Design
<2>0. lx9I2z /\ DJuMb /\ flJU
  BY Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
<2>1. /\ rows # {} /\ (\A r \in rows : KRowOK(i,r)) /\ (IF B2 /\ IsP(i) THEN \A r \in rows : SRowReady(i,r) ELSE TRUE)
       /\ UNCHANGED <<hw, xdst, pvis, sfly, led, sled>>
  BY <1>Tcs1aCvov, Sizes, Location, Design DEF xV, Sizes, Location, Design
<2>2. PICK W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>pX6n1mfRA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A e \in LNEhLllF(i,rows) :
    /\ KData(i,e)
    /\ ((IsD(i) /\ e[4] # 1) => led[e[3]] = {})
    /\ ((IsP(i) /\ e[3] \in Pages) => sled[e[3]] = {})
  BY <2>0, <2>1, <1>HRpu833l, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A a \in Inst, b \in KSlots : kpin[a][b] =>
    \A e \in krs[a][b] : e[4] # 3 => e[3] \notin W
  BY <2>1, <2>2, <1>AM9FEMF4cFYffq, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. \A e \in LNEhLllF(i,rows) : e[4] # 3 => e[3] \notin W
  BY <2>0, <2>1, <2>2, <1>wSjgQxYLZgMMgs, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. LNEhLllF(i,rows) \subseteq Rq \X Gens \X KPages \X {0,1,2,3,4}
  BY <2>1, <1>t9gucBsHDv, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. \A e \in LNEhLllF(i,rows) : KData(i,e)'
  BY <2>1, <2>2, <2>3, <2>5, <2>6, <1>N4ZLYm2, SMT, Sizes, Location, Design DEF Sizes, Location, Design
<2>8. \A a \in Inst, b \in KSlots : kpin[a][b] => \A e \in krs[a][b] : KData(a,e)'
  BY <2>0, <2>1, <2>2, <2>4, <1>N4ZLYm2, SMT, Sizes, Location, Design DEF K15, DJuMb, Sizes, Location, Design
<2>9. \A a \in Inst, b \in KSlots : kpin'[a][b] =>
          \/ a = i /\ b = s /\ krs'[a][b] = LNEhLllF(i,rows)
          \/ kpin[a][b] /\ krs'[a][b] = krs[a][b]
  BY <2>0, <1>yLD4fiDJR, Sizes, Location, Design DEF Sizes, Location, Design
<2>10. QED
  BY <2>1, <2>3, <2>7, <2>8, <2>9, SMT, Sizes, Location, Design DEF K15, Sizes, Location, Design
\* T2M-END R2M2521_PdROK_PdLaunchData


<1>NAv52axhh2w.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K15'
BY ONLY <1>NAv52axhh2w, Sizes, Location, Design, <1>ceYyntxi, <1>WAxd2hhfMM, <1>joh6z3bMX, V21_Inv_K1, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_TypeOK DEF BD3C0, Sizes, Location, Design
\* T2M-END R2M2522_PdROKernel_KLaunch_K15


<1> QED BY <1>rPgQ7cuoiXg, <1>NAv52axhh2w, <1>ddqvTwIW354gzplWiRVpLUZJ, <1>vPxQUsN9t1V, <1>EREXcZVSHfF, <1>JdLuyqyNuFDFbhbIqjM, <1>IuzRiPfQ3XNWewGWKpgSBaMyLkm, <1>lV5Kgm4YD6B, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF P_PagePoolsDisjoint, Part_KLaunch_02_01, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_T_gen, V22_T_hw, V22_T_iv, V22_T_kpin, V22_T_krs, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xdst, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
====
