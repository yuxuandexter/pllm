---- MODULE PdFinalAction_KLand ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_9ef278c147c12b12, PdFinalAuxType_fa53664361dab1de, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalPart_KLand_01_01 SHA 99feae97fd96930b38e600a142f88c0612003521aa93f3125364408738321f8e
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sprefc, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc
THEOREM Part_KLand_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE (QuietConservation)' /\ (TypInv)' /\ (P_SI4)' /\ (NoEvictUnderRDMA)' /\ (P_SI1)' /\ (K14)' /\ (SendOwnLanded)' /\ (PrefcMatchesHolders)' /\ (SI8)' /\ (P_SI3)'
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

           RO_SharedFieldsFrame == UNCHANGED <<spst,sown,sgen,sdata,swrite,skey>>


           Ltilk == gen \in [Rq -> 0..MG]


           ckVW == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           bXD3 == rp \in [Rq -> {0} \cup Inst]


           XAoD == rd \in [Rq -> {0} \cup Inst]


           ZzYU == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           v7av == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           Zwf5Kak == alive \in [Inst -> BOOLEAN]


           UTxM0oD == nfail \in 0..MaxFail


           Btadh0 == torn \in [Inst -> SUBSET Inst]


           hgjUtY == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           DgHrMJ == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           UDzxF == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           NN85 == ph \in [Inst -> [Rq -> PhSet]]


           FlLc == rg \in [Inst -> [Rq -> 0..MG]]


           mCp6f == rpg \in [Inst -> [Rq -> 0..NP]]


           EfDhA == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           TO_H == rx \in [Inst -> [Rq -> 0..MX]]


           OFH6nV == rhit \in [Inst -> [Rq -> BOOLEAN]]


           nU_pl == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           KRyh == pr \in [Pages -> 0..NR]


           SWs37 == pgn \in [Pages -> 0..MG]


           Q73Wr == plt \in [Pages -> 0..PS]


           cDvpy == ptl \in [Pages -> -1..PS]


           aHUmFg == pvis \in [Pages -> BOOLEAN]


           m0XQV == led \in [Pages -> SUBSET Xids]


           YAnOjz == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           owHnyB == sled \in [Pages -> SUBSET (Rq \X Gens)]


           Gpa5dVU == prefc \in [Pages -> 0..NR]


           f9onk == pqp \in [Pages -> {0} \cup Inst]


           fwbJ == xr \in [Xids -> 0..NR]


           mnFW == xg \in [Xids -> 0..MG]


           nOWk == xk \in [Xids -> {"none", "wr", "rd"}]


           Ha9G == xp \in [Xids -> {0} \cup Inst]


           f5DU == xd \in [Xids -> {0} \cup Inst]


           KZInRS == xsrc \in [Xids -> 0..NP]


           hq2umu == xdst \in [Xids -> 0..NP]


           ROI9_ == xnt \in [Xids -> 0..PS]


           M7cq == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           u1j8N == hok \in [Xids -> BOOLEAN]


           ECDy == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           q4kPy == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           doDAh == xlt \in [Xids -> 0..PS]


           YN04 == nx \in 1..(MX + 1)


           kvUux == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           WsZW22 == drep \in [Rq -> [Gens -> 0..2]]


           d654kx == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           jl8hSJt == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           XEsGoy == gbad \in BOOLEAN


           qryMJ == Ltilk /\ ckVW /\ bXD3 /\ XAoD /\ ZzYU /\ v7av /\ Zwf5Kak /\ UTxM0oD /\ Btadh0 /\ hgjUtY /\ DgHrMJ /\ UDzxF /\ NN85 /\ FlLc /\ mCp6f /\ EfDhA /\ TO_H /\ OFH6nV /\ nU_pl /\ KRyh /\ SWs37 /\ Q73Wr /\ cDvpy /\ aHUmFg /\ m0XQV /\ YAnOjz /\ owHnyB /\ Gpa5dVU /\ f9onk /\ fwbJ /\ mnFW /\ nOWk /\ Ha9G /\ f5DU /\ KZInRS /\ hq2umu /\ ROI9_ /\ M7cq /\ u1j8N /\ ECDy /\ q4kPy /\ doDAh /\ YN04 /\ kvUux /\ WsZW22 /\ d654kx /\ jl8hSJt /\ XEsGoy

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_xprefixOK, RO_E_sprefc, RO_Flat, RO_StableStates, RO_ControlStep, RO_SharedFieldsFrame, Ltilk, ckVW, bXD3, XAoD, ZzYU, v7av, Zwf5Kak, UTxM0oD, Btadh0, hgjUtY, DgHrMJ, UDzxF, NN85, FlLc, mCp6f, EfDhA, TO_H, OFH6nV, nU_pl, KRyh, SWs37, Q73Wr, cDvpy, aHUmFg, m0XQV, YAnOjz, owHnyB, Gpa5dVU, f9onk, fwbJ, mnFW, nOWk, Ha9G, f5DU, KZInRS, hq2umu, ROI9_, M7cq, u1j8N, ECDy, q4kPy, doDAh, YN04, kvUux, WsZW22, d654kx, jl8hSJt, XEsGoy, qryMJ

<1>H0Dre0I9dt5V.        
 ASSUME B2, SFollow
 PROVE RO_E_rpgS

<2> HIDE DEF SFollow, CoreTypeOK, STypeOK
<2>qed. QED BY ONLY <1>H0Dre0I9dt5V, V22_SF_Holders, SMTT(5) DEF V22_SF_Holders, RO_E_rpgS, V22_FH2, RO_HLive, V22_FHLive, RO_HPin, V22_FHPin

\* T2M-LOCAL-VISIBILITY

<1>m0crpwxTDdjmI.        
 ASSUME B2, SFollow
 PROVE RO_E_xsrcS

<2> HIDE DEF SFollow, CoreTypeOK, STypeOK
<2>qed. QED BY ONLY <1>m0crpwxTDdjmI, V22_SF_SourceShared, SMTT(5) DEF V22_SF_SourceShared, RO_E_xsrcS, V22_FSX, RO_Posted, V22_FPosted, RO_Src, V22_FSrc

\* T2M-LOCAL-VISIBILITY

<1>ifwDg0IoVKTvz.        
 ASSUME B2, SFollow
 PROVE RO_E_xsrcP

<2> HIDE DEF SFollow, CoreTypeOK, STypeOK
<2>qed. QED BY ONLY <1>ifwDg0IoVKTvz, V22_SF_SourcePrivate, SMTT(5) DEF V22_SF_SourcePrivate, RO_E_xsrcP, V22_FPX, RO_Posted, V22_FPosted, RO_Src, V22_FSrc

\* T2M-LOCAL-VISIBILITY

<1>oVMEMsT8gqQqbk.        
 ASSUME B2, SFollow
 PROVE RO_E_sentry

<2> HIDE DEF SFollow, CoreTypeOK, STypeOK
<2>qed. QED BY ONLY <1>oVMEMsT8gqQqbk, V22_SF_Sentry, SMTT(5) DEF V22_SF_Sentry, RO_E_sentry, V22_FE2, RO_Posted, V22_FPosted, RO_Close, V22_FClose, RO_Quarantine, V22_FQuarantine

\* T2M-LOCAL-VISIBILITY

<1>lIuyiSzJ58zq2.        
 ASSUME B2, SFollow
 PROVE RO_E_squar

<2> HIDE DEF SFollow, CoreTypeOK, STypeOK
<2>qed. QED BY ONLY <1>lIuyiSzJ58zq2, V22_SF_Squar, SMTT(5) DEF V22_SF_Squar, RO_E_squar, V22_FQ2, RO_Close, V22_FClose, RO_Quarantine, V22_FQuarantine

\* T2M-LOCAL-VISIBILITY

<1>kcdhaxe1yPn5.        
 ASSUME B2, SFollow
 PROVE RO_E_smap

<2> HIDE DEF SFollow, CoreTypeOK, STypeOK
<2>qed. QED BY ONLY <1>kcdhaxe1yPn5, V22_SF_Map, SMTT(5) DEF V22_SF_Map, RO_E_smap

\* T2M-LOCAL-VISIBILITY

<1>FuwCbPxDgseJUUg.        
 ASSUME B2, SFollow
 PROVE RO_E_schoice

<2> HIDE DEF SFollow, CoreTypeOK, STypeOK
<2>qed. QED BY ONLY <1>FuwCbPxDgseJUUg, V22_SF_Choice, SMTT(5) DEF V22_SF_Choice, RO_E_schoice

\* T2M-LOCAL-VISIBILITY

<1>LQE0C5CV3kHl.        
 ASSUME B2, SFollow
 PROVE RO_E_spst

<2> HIDE DEF SFollow, CoreTypeOK, STypeOK
<2>quarantine. \A x : RO_Quarantine(x)=V22_FQuarantine(x)
 BY ONLY ZenonT(5) DEF RO_Quarantine, V22_FQuarantine, RO_Close, V22_FClose
<2>drop. \A p \in SPages : RO_Drop(p)=V22_FDrop(p)
 BY ONLY <1>LQE0C5CV3kHl, V22_SF_Sentry, V22_SF_SourcePrivate, SMTT(5) DEF V22_SF_Sentry, V22_SF_SourcePrivate, RO_Drop, V22_FDrop, RO_Ended, V22_FEnded, RO_Pin, V22_FPin2
<2>qed. QED BY ONLY <1>LQE0C5CV3kHl, <2>quarantine, <2>drop, V22_SF_Status, SMTT(5) DEF V22_SF_Status, RO_E_spst, RO_Ended, V22_FEnded

\* T2M-LOCAL-VISIBILITY

<1>icyzRs1WpaOrfYqB8.        
 ASSUME B2, SFollow
 PROVE RO_E_xprefixOK
 BY ONLY <1>icyzRs1WpaOrfYqB8, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_xprefixOK, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ugzpmKUcZ3Dcdb.        
 ASSUME B2, SFollow
 PROVE RO_E_sprefc

<2> HIDE DEF SFollow, CoreTypeOK, STypeOK, SRefR, SRefE, SRefQ
<2>effects. rpgS'=V22_FH2 /\ sentry'=V22_FE2 /\ xsrcS'=V22_FSX /\ squar'=V22_FQ2
 BY ONLY <1>ugzpmKUcZ3Dcdb, V22_SF_Holders, V22_SF_Sentry, V22_SF_SourceShared, V22_SF_Squar, SMTT(5) DEF V22_SF_Holders, V22_SF_Sentry, V22_SF_SourceShared, V22_SF_Squar
<2>qed. QED BY ONLY <1>ugzpmKUcZ3Dcdb, <2>effects, V22_SF_RefCount, SMTT(5) DEF V22_SF_RefCount, RO_E_sprefc

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

<1>rUEzU8wbH.        
 ASSUME UNCHANGED <<kpin,krs>>
 PROVE RO_PinGrows
 BY ONLY <1>rUEzU8wbH, Sizes, Location, Design, SMTT(10) DEF RO_PinGrows, SPin, SHPin, RO_Pin, RO_HPin, Sizes, Location, Design

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

<1>FZld0iMu.        
 ASSUME PinInv, UNCHANGED <<kpin,krs,spst,sdata,swrite,skey,sown,sgen,rpgS>>
 PROVE P_SI3'
 BY ONLY <1>FZld0iMu, Sizes, Location, Design, SMTT(10), V21_Inv_P_SI3 DEF P_SI3, SI3, SData, SHeld, Sizes, Location, Design

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
<2> HIDE DEF PrefcMatchesHolders, SRefR, SRefE, SRefQ
<2>count. PrefcMatchesHolders'
 BY ONLY <1>tkIbKthZ8rm8L, <1>BhJJoZwTfyo0ME, Sizes, Location, Design, SMTT(5)
<2>total. sprefc'[p]=SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
 BY ONLY <1>tkIbKthZ8rm8L, <2>count, SMTT(5) DEF PrefcMatchesHolders
<2>shared. (\A h \in rpgS' : spst'[h[4]]="shared") /\
          (\A x \in sentry' : \A q \in xsrcS'[x] : spst'[q]="shared") /\
          (\A h \in squar' : spst'[h[2]]="shared")
 BY ONLY <1>tkIbKthZ8rm8L, <1>zIpzJmV4LXez8qoyL, Sizes, Location, Design, SMTT(5)
<2>emptyR. {h \in rpgS' : h[4]=p}={}
 BY ONLY <1>tkIbKthZ8rm8L, <2>shared, SMTT(5)
<2>emptyE. {x \in sentry' : p \in xsrcS'[x]}={}
 BY ONLY <1>tkIbKthZ8rm8L, <2>shared, SMTT(5)
<2>emptyQ. {h \in squar' : h[2]=p}={}
 BY ONLY <1>tkIbKthZ8rm8L, <2>shared, SMTT(5)
<2>emptyCount. Cardinality({})=0
 BY ONLY FS_EmptySet, SMTT(5)
<2>zeroR. SRefR(rpgS',p)=0
 BY ONLY <2>emptyR, <2>emptyCount, SMTT(5) DEF SRefR
<2>zeroE. SRefE(sentry',xsrcS',p)=0
 BY ONLY <2>emptyE, <2>emptyCount, SMTT(5) DEF SRefE
<2>zeroQ. SRefQ(squar',p)=0
 BY ONLY <2>emptyQ, <2>emptyCount, SMTT(5) DEF SRefQ
<2>qed. QED BY ONLY <2>total, <2>zeroR, <2>zeroE, <2>zeroQ, SMTT(5)

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

<1>AP58DHKNFhYouTvUs.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, KLand(i,s)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>AP58DHKNFhYouTvUs, Sizes, Location, Design, Design, ZenonT(10) DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>M2kjfjQfCou1TqXmLb7.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>M2kjfjQfCou1TqXmLb7, Sizes, Location, Design, <1>AP58DHKNFhYouTvUs, <1>J0yx6oHL5UyrV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EelL14PRxHBHZj.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s)
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>EelL14PRxHBHZj, Sizes, Location, Design, Design, SMTT(10), V21_Inv_K14 DEF KLand, ghV, recV, rtV, xV, K14, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MuJVo19LEunyO73W.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE UNCHANGED <<spst,rpgS>>
 BY ONLY <1>MuJVo19LEunyO73W, Sizes, Location, Design, <1>AP58DHKNFhYouTvUs, <1>EelL14PRxHBHZj, <1>rUEzU8wbH, <1>JJE0Tfox9Q, <1>yFQ846plk6kJ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kDTnZuzwPkXjX0y.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s)
 PROVE \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
<2> USE ONLY <1>kDTnZuzwPkXjX0y, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>kDTnZuzwPkXjX0y, V22_T_hw, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aqYdAa7ZN1TrJ01Kn.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s)
 PROVE gen' \in [Rq -> 0..MG] /\ \A r \in Rq : gen'[r]>=gen[r]
<2> USE ONLY <1>aqYdAa7ZN1TrJ01Kn, Sizes, Location, Design
<2>1. gen \in [Rq -> 0..MG]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>aqYdAa7ZN1TrJ01Kn, V22_T_gen, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ImOqgyrKLQ0jASKfph.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s)
 PROVE \A x \in Xids : xst'[x]="posted" => xst[x]="posted"
<2> USE ONLY <1>ImOqgyrKLQ0jASKfph, Sizes, Location, Design
<2>1. xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ImOqgyrKLQ0jASKfph, V22_T_xst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YKgvu5Hj2imjI.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s)
 PROVE /\ \A z \in Xids : iv'[z]=iv[z] \/ iv'[z] \in {"cqe","failret"}
       /\ \A z \in Xids : xst'[z]=xst[z] \/ xst'[z] \in {"landed","failed"}
       /\ \A z \in Xids : hw'[z] \in {"issued","stop"} => hw[z] \in {"fly","issued","stop"}
<2> USE ONLY <1>YKgvu5Hj2imjI, Sizes, Location, Design
<2>1. K3 /\ hw \in [Xids -> {"none","fly","issued","stop"}]
       /\ iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
       /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>YKgvu5Hj2imjI, V22_T_hw, V22_T_iv, V22_T_xst, V21_Inv_K3, Sizes, Location, Design, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hQvoODXdhfuecP10p.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s)
 PROVE \A z \in Xids : hw'[z]="fly" => ~RO_Close(z)
<2> USE ONLY <1>hQvoODXdhfuecP10p, Sizes, Location, Design
<2>1. K3 /\ hw \in [Xids -> {"none","fly","issued","stop"}]
       /\ iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
       /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>hQvoODXdhfuecP10p, V22_T_hw, V22_T_iv, V22_T_xst, V21_Inv_K3, Sizes, Location, Design, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLand, ghV, recV, rtV, xV, RO_Close, K3, InFl, CqeHw, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wJC295fC5QboQwAVHQARjSUyw.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>wJC295fC5QboQwAVHQARjSUyw, Sizes, Location, Design, <1>AP58DHKNFhYouTvUs, <1>BhJJoZwTfyo0ME DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mveDqtALk.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE SI8'
 BY ONLY <1>mveDqtALk, Sizes, Location, Design, <1>AP58DHKNFhYouTvUs, <1>M2kjfjQfCou1TqXmLb7, <1>ImOqgyrKLQ0jASKfph, <1>yYTbap2jtpor DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OUTCSSqboDMPgitPzDqTde.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>OUTCSSqboDMPgitPzDqTde, Sizes, Location, Design, <1>AP58DHKNFhYouTvUs, <1>M2kjfjQfCou1TqXmLb7, <1>MuJVo19LEunyO73W, <1>jGg3R, <1>kDTnZuzwPkXjX0y, <1>YraYIuuP0dXpCHZH DEF RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KBH4yLvVY.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE P_SI1'
 BY ONLY <1>KBH4yLvVY, Sizes, Location, Design, <1>AP58DHKNFhYouTvUs, <1>M2kjfjQfCou1TqXmLb7, <1>MuJVo19LEunyO73W, <1>jGg3R, <1>aqYdAa7ZN1TrJ01Kn, <1>EelL14PRxHBHZj, <1>rUEzU8wbH, <1>KPndmXINRK1Z DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gBLxiumtw.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE P_SI3'
 BY ONLY <1>gBLxiumtw, Sizes, Location, Design, <1>EelL14PRxHBHZj, <1>MuJVo19LEunyO73W, <1>jGg3R, <1>FZld0iMu DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>g4ukMt7rga0IPw.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE STypeOK'
 BY ONLY <1>g4ukMt7rga0IPw, AuxType_9ef278c147c12b12, Sizes, Location, Design DEF Sizes, Location, Design

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
   <5>fixP. TAKE p \in SPages
   <5>fixRSet. {h \in rpgS' : h[4]=p}={} BY ONLY <4>3, SMTT(5)
   <5>fixESet. {x \in sentry' : p \in xsrcS'[x]}={} BY ONLY <3>1, SMTT(5)
   <5>fixR. SRefR(rpgS',p)=0 BY ONLY <5>fixRSet, FS_EmptySet, SMTT(5) DEF SRefR
   <5>fixE. SRefE(sentry',xsrcS',p)=0 BY ONLY <5>fixESet, FS_EmptySet, SMTT(5) DEF SRefE
   <5>fixQED. QED BY ONLY <5>fixR, <5>fixE
  <4>5. IsFiniteSet(squar') BY <1>L8DIG3nRD9Lv3, FS_Product, FS_Subset, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
  <4>6. \A p \in SPages : SRefQ(squar',p) \in Nat
  BY ONLY <1>EjmNCRbt1, Sizes, Location, Design, <2>2, <4>5, FS_Subset, FS_CardinalityType, SMTT(10) DEF SRefQ, Sizes, Location, Design
  <4>7. QED BY <3>1, <2>2, <4>2, <4>4, <4>6, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
 <3>2. QED BY <2>2, <3>1, Sizes, Location, Design DEF QuietConservation, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2192_PdROQuiet


<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>IQO9tLE.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, KLand(i,s)
  PROVE /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, krs, recV, pgV, xV, net, ghV>>
        /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  BY ONLY <1>IQO9tLE, Sizes, Location, Design, Design DEF K14, KLand, pgV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D3tafyok3.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, TypInv, K14, KLand(i,s)
  PROVE CoreTypeOK'
 BY ONLY <1>D3tafyok3, AuxType_fa53664361dab1de, Sizes, Location, Design DEF Sizes, Location, Design

<1>SVY9L7zHMwQdQjQ5bR1V9n.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, BaseSendOwnLanded, KLand(i,s)
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>SVY9L7zHMwQdQjQ5bR1V9n, Sizes, Location, Design
<2>1. UNCHANGED <<hw, ptl, sfly, xlt, xsrc>>
  BY <1>IQO9tLE, Sizes, Location, Design DEF rtV, recV, pgV, xV, ghV, instV, kV, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF BaseSendOwnLanded, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mjzhq9EtW5b0ZhD6UpwJTRCm73.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, BaseQuietConservation, KLand(i,s)
  PROVE BaseQuietConservation'
<2> USE ONLY <1>mjzhq9EtW5b0ZhD6UpwJTRCm73, Sizes, Location, Design
<2>1. UNCHANGED <<kpin, krs, led, ph, prefc, pst, sled>>
  BY <1>IQO9tLE, Sizes, Location, Design DEF rtV, recV, pgV, xV, ghV, instV, kV, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF Active, Inst, KPinned, KSlots, NL, Pages, Quiet, BaseQuietConservation, Rq, KPages, Sizes, Location, Design
\* T2M-END R2M2252_PdROBase_PdFrameProofs


<1>g6hL41WHH.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE P_SI2'
 BY ONLY <1>g6hL41WHH, Sizes, Location, Design, <1>AP58DHKNFhYouTvUs, <1>M2kjfjQfCou1TqXmLb7, <1>MuJVo19LEunyO73W, <1>EelL14PRxHBHZj, <1>jGg3R, <1>rUEzU8wbH, <1>dusdnIGW DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AKuTWP2fx.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE P_SI4'
 BY ONLY <1>AKuTWP2fx, Sizes, Location, Design, <1>YKgvu5Hj2imjI, <1>AP58DHKNFhYouTvUs, <1>M2kjfjQfCou1TqXmLb7, <1>MuJVo19LEunyO73W, <1>jGg3R, <1>kDTnZuzwPkXjX0y, <1>hQvoODXdhfuecP10p, <1>S9kRK0leNkDm DEF RO_ControlStep, RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>R8EOcycf3WOMtXxYtDPiZNX.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE QuietConservation'
<2> USE ONLY <1>R8EOcycf3WOMtXxYtDPiZNX, Sizes, Location, Design
 <2>1. BaseQuietConservation' BY <1>mjzhq9EtW5b0ZhD6UpwJTRCm73, <1>d9xjhNZcw, V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. P_SI1' /\ P_SI2' /\ STypeOK' /\ PrefcMatchesHolders'
 BY <1>KBH4yLvVY, <1>g6hL41WHH, <1>AP58DHKNFhYouTvUs, <1>g4ukMt7rga0IPw, <1>wJC295fC5QboQwAVHQARjSUyw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>EjmNCRbt1, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2253_PdROExtra_KLand


<1>zGakU4dp497g900BK5a.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE SendOwnLanded'
<2> USE ONLY <1>zGakU4dp497g900BK5a, Sizes, Location, Design
<2>1. BaseSendOwnLanded'
 BY <1>SVY9L7zHMwQdQjQ5bR1V9n, <1>d9xjhNZcw, V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IF ~B2 THEN TRUE ELSE \A x \in Xids : hw'[x]="fly" => \A p \in xsrcS'[x] \cup xsrcP'[x] : sdata'[p] /\ ~swrite'[p] /\ skey'[p]=STok(xr'[x],xg'[x])
 BY <1>AP58DHKNFhYouTvUs, <1>M2kjfjQfCou1TqXmLb7, <1>kDTnZuzwPkXjX0y, <1>K49culthi, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF SendOwnLanded, Sizes, Location, Design
\* T2M-END R2M2517_PdROKernel_KLand_SendOwnLanded


<1>HUWDNYtdjy79.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE TypInv'
<2> USE ONLY <1>HUWDNYtdjy79, Sizes, Location, Design
<2>1. CoreTypeOK'
 BY <1>D3tafyok3, <1>d9xjhNZcw, V21_Inv_BaseTypeOK, V21_Inv_K14, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK' BY <1>AP58DHKNFhYouTvUs, <1>g4ukMt7rga0IPw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF TypInv, Sizes, Location, Design
\* T2M-END R2M2518_PdROKernel_KLand_TypeOK


<1>w1A6qbKTB1.        
 ASSUME RO_SharedFieldsFrame
 PROVE TypInv => qryMJ
  BY ONLY <1>w1A6qbKTB1, Sizes, Location, Design, ZenonT(5) DEF TypInv, CoreTypeOK, qryMJ, Ltilk, ckVW, bXD3, XAoD, ZzYU, v7av, Zwf5Kak, UTxM0oD, Btadh0, hgjUtY, DgHrMJ, UDzxF, NN85, FlLc, mCp6f, EfDhA, TO_H, OFH6nV, nU_pl, KRyh, SWs37, Q73Wr, cDvpy, aHUmFg, m0XQV, YAnOjz, owHnyB, Gpa5dVU, f9onk, fwbJ, mnFW, nOWk, Ha9G, f5DU, KZInRS, hq2umu, ROI9_, M7cq, u1j8N, ECDy, q4kPy, doDAh, YN04, kvUux, WsZW22, d654kx, jl8hSJt, XEsGoy, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DWiY1t8.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, KLand(i,s)
  , RO_SharedFieldsFrame
 PROVE /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, krs, recV, pgV, xV, net, ghV>>
        /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  BY ONLY <1>DWiY1t8, Sizes, Location, Design, Design DEF K14, KLand, pgV, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RAVSaDas0d.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, DgHrMJ, KLand(i,s)
  , RO_SharedFieldsFrame
 PROVE \A a \in Inst, b \in KSlots : kfly'[a][b] => kfly[a][b]
  BY ONLY <1>RAVSaDas0d, Sizes, Location, Design, SMT DEF KLand, DgHrMJ, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HhL0wj.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, TypInv, K14, K14, KLand(i,s)
  , RO_SharedFieldsFrame
 PROVE K14'
<2> USE ONLY <1>HhL0wj, Sizes, Location, Design
<2>1. /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, krs, recV, pgV, xV, net, ghV>>
       /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  BY <1>DWiY1t8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. DgHrMJ
  BY <1>w1A6qbKTB1, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. \A a \in Inst, b \in KSlots : kfly'[a][b] => kfly[a][b]
  BY <2>2, <1>RAVSaDas0d, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>3, SMT, Sizes, Location, Design DEF Inst, IsD, K14, KSlots, NL, ghV, pgV, recV, rtV, xV, KPages, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wTYBPSmQn.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K14'
<2> USE ONLY <1>wTYBPSmQn, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>MuJVo19LEunyO73W, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. K14'
 BY <2>1, <1>HhL0wj, <1>w1A6qbKTB1, V21_Inv_K14, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2604_PdROReadCell_KLand_K14

\* T2M-SCOPE R2M2605_PdROReadCell_KLand_K15

<1> QED BY <1>R8EOcycf3WOMtXxYtDPiZNX, <1>HUWDNYtdjy79, <1>AKuTWP2fx, <1>OUTCSSqboDMPgitPzDqTde, <1>KBH4yLvVY, <1>wTYBPSmQn, <1>zGakU4dp497g900BK5a, <1>wJC295fC5QboQwAVHQARjSUyw, <1>mveDqtALk, <1>gBLxiumtw, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_KLand_01_02 SHA 731e69f2b4d97017f754d476c46c6932e82d40f5aff9c5cde68d7fbefa1c8989
USE DEF V21_Inv_EntryQuarantineDisjoint, V21_Inv_K1, V21_Inv_K15, V21_Inv_K2, V21_Inv_K4, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_QuarNoReg, V22_T_hok, V22_T_nx, V22_T_pgn, V22_T_pr, V22_T_pst
HIDE DEF AuxType_9ef278c147c12b12, AuxType_fa53664361dab1de, Part_KLand_01_01, V21_Inv_BaseTypeOK, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SI8, V21_Inv_SealOnlyLanded, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Status, V22_T_gen
THEOREM Part_KLand_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE (P_SI2)' /\ (P_SI5)' /\ (SharedLedRef)' /\ (KReadIntegrity)' /\ (HitIdentity)' /\ (P_SI6)' /\ (K15)' /\ (NoStrayAccess)' /\ (NoFreeUnderRead)' /\ (EntryQuarantineDisjoint)'
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

           RO_SharedFieldsFrame == UNCHANGED <<spst,sown,sgen,sdata,swrite,skey>>


           Ltilk == gen \in [Rq -> 0..MG]


           ckVW == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           bXD3 == rp \in [Rq -> {0} \cup Inst]


           XAoD == rd \in [Rq -> {0} \cup Inst]


           ZzYU == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           v7av == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           Zwf5Kak == alive \in [Inst -> BOOLEAN]


           UTxM0oD == nfail \in 0..MaxFail


           Btadh0 == torn \in [Inst -> SUBSET Inst]


           hgjUtY == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           DgHrMJ == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           UDzxF == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           NN85 == ph \in [Inst -> [Rq -> PhSet]]


           FlLc == rg \in [Inst -> [Rq -> 0..MG]]


           mCp6f == rpg \in [Inst -> [Rq -> 0..NP]]


           EfDhA == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           TO_H == rx \in [Inst -> [Rq -> 0..MX]]


           OFH6nV == rhit \in [Inst -> [Rq -> BOOLEAN]]


           nU_pl == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           KRyh == pr \in [Pages -> 0..NR]


           SWs37 == pgn \in [Pages -> 0..MG]


           Q73Wr == plt \in [Pages -> 0..PS]


           cDvpy == ptl \in [Pages -> -1..PS]


           aHUmFg == pvis \in [Pages -> BOOLEAN]


           m0XQV == led \in [Pages -> SUBSET Xids]


           YAnOjz == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           owHnyB == sled \in [Pages -> SUBSET (Rq \X Gens)]


           Gpa5dVU == prefc \in [Pages -> 0..NR]


           f9onk == pqp \in [Pages -> {0} \cup Inst]


           fwbJ == xr \in [Xids -> 0..NR]


           mnFW == xg \in [Xids -> 0..MG]


           nOWk == xk \in [Xids -> {"none", "wr", "rd"}]


           Ha9G == xp \in [Xids -> {0} \cup Inst]


           f5DU == xd \in [Xids -> {0} \cup Inst]


           KZInRS == xsrc \in [Xids -> 0..NP]


           hq2umu == xdst \in [Xids -> 0..NP]


           ROI9_ == xnt \in [Xids -> 0..PS]


           M7cq == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           u1j8N == hok \in [Xids -> BOOLEAN]


           ECDy == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           q4kPy == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           doDAh == xlt \in [Xids -> 0..PS]


           YN04 == nx \in 1..(MX + 1)


           kvUux == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           WsZW22 == drep \in [Rq -> [Gens -> 0..2]]


           d654kx == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           jl8hSJt == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           XEsGoy == gbad \in BOOLEAN


           qryMJ == Ltilk /\ ckVW /\ bXD3 /\ XAoD /\ ZzYU /\ v7av /\ Zwf5Kak /\ UTxM0oD /\ Btadh0 /\ hgjUtY /\ DgHrMJ /\ UDzxF /\ NN85 /\ FlLc /\ mCp6f /\ EfDhA /\ TO_H /\ OFH6nV /\ nU_pl /\ KRyh /\ SWs37 /\ Q73Wr /\ cDvpy /\ aHUmFg /\ m0XQV /\ YAnOjz /\ owHnyB /\ Gpa5dVU /\ f9onk /\ fwbJ /\ mnFW /\ nOWk /\ Ha9G /\ f5DU /\ KZInRS /\ hq2umu /\ ROI9_ /\ M7cq /\ u1j8N /\ ECDy /\ q4kPy /\ doDAh /\ YN04 /\ kvUux /\ WsZW22 /\ d654kx /\ jl8hSJt /\ XEsGoy

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Zxt3uAWx0s, x3u8USZ8BP, XiXzxLeogqQ, cube8JL9My, gsRtJP8qi, PfTvb9KsRvdD, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_dpreOK, RO_E_sprefc, RO_Flat, RO_StableStates, RO_ControlStep, RO_SharedFieldsFrame, Ltilk, ckVW, bXD3, XAoD, ZzYU, v7av, Zwf5Kak, UTxM0oD, Btadh0, hgjUtY, DgHrMJ, UDzxF, NN85, FlLc, mCp6f, EfDhA, TO_H, OFH6nV, nU_pl, KRyh, SWs37, Q73Wr, cDvpy, aHUmFg, m0XQV, YAnOjz, owHnyB, Gpa5dVU, f9onk, fwbJ, mnFW, nOWk, Ha9G, f5DU, KZInRS, hq2umu, ROI9_, M7cq, u1j8N, ECDy, q4kPy, doDAh, YN04, kvUux, WsZW22, d654kx, jl8hSJt, XEsGoy, qryMJ

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


<1>cQRSNCkI9c6.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>cQRSNCkI9c6, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design


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


<1>zGtkoEMmgOR1KEomS0Wh0KUidIBfcr.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>zGtkoEMmgOR1KEomS0Wh0KUidIBfcr, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF KLand, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy, Sizes, Location, Design DEF Sizes, Location, Design


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

<1>rUEzU8wbH.        
 ASSUME UNCHANGED <<kpin,krs>>
 PROVE RO_PinGrows
 BY ONLY <1>rUEzU8wbH, Sizes, Location, Design, SMTT(10) DEF RO_PinGrows, SPin, SHPin, RO_Pin, RO_HPin, Sizes, Location, Design

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


<1>FZld0iMu.        
 ASSUME PinInv, UNCHANGED <<kpin,krs,spst,sdata,swrite,skey,sown,sgen,rpgS>>
 PROVE P_SI3'
 BY ONLY <1>FZld0iMu, Sizes, Location, Design, SMTT(10), V21_Inv_P_SI3 DEF P_SI3, SI3, SData, SHeld, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>boxoLZrc.        
 ASSUME PinInv, UNCHANGED <<kpin,krs,ph,rg,schoice,smap,rpgS>>
 PROVE P_SI6'
 BY ONLY <1>boxoLZrc, Sizes, Location, Design, SMTT(10), V21_Inv_P_SI6 DEF P_SI6, SI6, Active, Sizes, Location, Design

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
<2> HIDE DEF PrefcMatchesHolders, SRefR, SRefE, SRefQ
<2>count. PrefcMatchesHolders'
 BY ONLY <1>tkIbKthZ8rm8L, <1>BhJJoZwTfyo0ME, Sizes, Location, Design, SMTT(5)
<2>total. sprefc'[p]=SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
 BY ONLY <1>tkIbKthZ8rm8L, <2>count, SMTT(5) DEF PrefcMatchesHolders
<2>shared. (\A h \in rpgS' : spst'[h[4]]="shared") /\
          (\A x \in sentry' : \A q \in xsrcS'[x] : spst'[q]="shared") /\
          (\A h \in squar' : spst'[h[2]]="shared")
 BY ONLY <1>tkIbKthZ8rm8L, <1>zIpzJmV4LXez8qoyL, Sizes, Location, Design, SMTT(5)
<2>emptyR. {h \in rpgS' : h[4]=p}={}
 BY ONLY <1>tkIbKthZ8rm8L, <2>shared, SMTT(5)
<2>emptyE. {x \in sentry' : p \in xsrcS'[x]}={}
 BY ONLY <1>tkIbKthZ8rm8L, <2>shared, SMTT(5)
<2>emptyQ. {h \in squar' : h[2]=p}={}
 BY ONLY <1>tkIbKthZ8rm8L, <2>shared, SMTT(5)
<2>emptyCount. Cardinality({})=0
 BY ONLY FS_EmptySet, SMTT(5)
<2>zeroR. SRefR(rpgS',p)=0
 BY ONLY <2>emptyR, <2>emptyCount, SMTT(5) DEF SRefR
<2>zeroE. SRefE(sentry',xsrcS',p)=0
 BY ONLY <2>emptyE, <2>emptyCount, SMTT(5) DEF SRefE
<2>zeroQ. SRefQ(squar',p)=0
 BY ONLY <2>emptyQ, <2>emptyCount, SMTT(5) DEF SRefQ
<2>qed. QED BY ONLY <2>total, <2>zeroR, <2>zeroE, <2>zeroQ, SMTT(5)

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

<1>AP58DHKNFhYouTvUs.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, KLand(i,s)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>AP58DHKNFhYouTvUs, Sizes, Location, Design, Design, ZenonT(10) DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>M2kjfjQfCou1TqXmLb7.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>M2kjfjQfCou1TqXmLb7, Sizes, Location, Design, <1>AP58DHKNFhYouTvUs, <1>J0yx6oHL5UyrV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EelL14PRxHBHZj.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s)
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>EelL14PRxHBHZj, Sizes, Location, Design, Design, SMTT(10), V21_Inv_K14 DEF KLand, ghV, recV, rtV, xV, K14, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MuJVo19LEunyO73W.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE UNCHANGED <<spst,rpgS>>
 BY ONLY <1>MuJVo19LEunyO73W, Sizes, Location, Design, <1>AP58DHKNFhYouTvUs, <1>EelL14PRxHBHZj, <1>rUEzU8wbH, <1>JJE0Tfox9Q, <1>yFQ846plk6kJ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZnmRw51NQglfT.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s)
 PROVE \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
<2> USE ONLY <1>ZnmRw51NQglfT, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ZnmRw51NQglfT, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Csw0CjHmXlC0A5b.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s)
 PROVE \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
<2> USE ONLY <1>Csw0CjHmXlC0A5b, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Csw0CjHmXlC0A5b, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Hax7VUWP5NNOmoz.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s)
 PROVE \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
<2> USE ONLY <1>Hax7VUWP5NNOmoz, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Hax7VUWP5NNOmoz, V22_T_iv, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YKgvu5Hj2imjI.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s)
 PROVE /\ \A z \in Xids : iv'[z]=iv[z] \/ iv'[z] \in {"cqe","failret"}
       /\ \A z \in Xids : xst'[z]=xst[z] \/ xst'[z] \in {"landed","failed"}
       /\ \A z \in Xids : hw'[z] \in {"issued","stop"} => hw[z] \in {"fly","issued","stop"}
<2> USE ONLY <1>YKgvu5Hj2imjI, Sizes, Location, Design
<2>1. K3 /\ hw \in [Xids -> {"none","fly","issued","stop"}]
       /\ iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
       /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>YKgvu5Hj2imjI, V22_T_hw, V22_T_iv, V22_T_xst, V21_Inv_K3, Sizes, Location, Design, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>P1oZLRBrecrsw55T.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s)
 PROVE \A z \in Xids : (hw'[z]="stop" /\ hok'[z] /\ xdst[z] \in Pages /\ Held(xdst[z],z)') =>
       ((hw[z]="stop" /\ hok[z] /\ Held(xdst[z],z)) \/ hw[z] \in {"fly","issued"})
<2> USE ONLY <1>P1oZLRBrecrsw55T, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
       /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
       /\ hw \in [Xids -> {"none","fly","issued","stop"}] /\ hok \in [Xids -> BOOLEAN]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>P1oZLRBrecrsw55T, V22_T_hok, V22_T_hw, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLand, ghV, recV, rtV, xV, Held, Sizes, Location, Design
\* T2M-END R2M2247_PdROEffects_KLand


<1>aJbph1DlJgK3XuhSe.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE HitIdentity'
 BY ONLY <1>aJbph1DlJgK3XuhSe, Sizes, Location, Design, <1>AP58DHKNFhYouTvUs, <1>M2kjfjQfCou1TqXmLb7, <1>MuJVo19LEunyO73W, <1>jGg3R, <1>BbgSGNWiNo6y DEF RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YSZPi82OM.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE P_SI3'
 BY ONLY <1>YSZPi82OM, Sizes, Location, Design, <1>EelL14PRxHBHZj, <1>MuJVo19LEunyO73W, <1>jGg3R, <1>FZld0iMu DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zg90ZLRqW.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE P_SI6'
 BY ONLY <1>zg90ZLRqW, Sizes, Location, Design, <1>AP58DHKNFhYouTvUs, <1>EelL14PRxHBHZj, <1>MuJVo19LEunyO73W, <1>M2kjfjQfCou1TqXmLb7, <1>boxoLZrc DEF Sizes, Location, Design
\* T2M-END R2M2248_PdROShared_KLand


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


<1>cKvJTH8jO.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE P_SI2'
 BY ONLY <1>cKvJTH8jO, Sizes, Location, Design, <1>AP58DHKNFhYouTvUs, <1>M2kjfjQfCou1TqXmLb7, <1>MuJVo19LEunyO73W, <1>EelL14PRxHBHZj, <1>jGg3R, <1>rUEzU8wbH, <1>dusdnIGW DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zWo27hiMg.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE P_SI5'
 BY ONLY <1>zWo27hiMg, Sizes, Location, Design, <1>YKgvu5Hj2imjI, <1>AP58DHKNFhYouTvUs, <1>M2kjfjQfCou1TqXmLb7, <1>MuJVo19LEunyO73W, <1>jGg3R, <1>Hax7VUWP5NNOmoz, <1>Csw0CjHmXlC0A5b, <1>FVK4MYGoOHs3gti, <1>ZnmRw51NQglfT, <1>P1oZLRBrecrsw55T, <1>cU8s9xOg0OyR DEF RO_ControlStep, RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k3P2iUkQl3bc4jnTO6.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE SharedLedRef'
<2> USE ONLY <1>k3P2iUkQl3bc4jnTO6, Sizes, Location, Design
 <2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
<2>2. CASE B2 BY <2>2, <1>AP58DHKNFhYouTvUs, <1>YSZPi82OM, <1>W6ZEgSLf4BlQd7l9, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>w1A6qbKTB1.        
 ASSUME RO_SharedFieldsFrame
 PROVE TypInv => qryMJ
  BY ONLY <1>w1A6qbKTB1, Sizes, Location, Design, ZenonT(5) DEF TypInv, CoreTypeOK, qryMJ, Ltilk, ckVW, bXD3, XAoD, ZzYU, v7av, Zwf5Kak, UTxM0oD, Btadh0, hgjUtY, DgHrMJ, UDzxF, NN85, FlLc, mCp6f, EfDhA, TO_H, OFH6nV, nU_pl, KRyh, SWs37, Q73Wr, cDvpy, aHUmFg, m0XQV, YAnOjz, owHnyB, Gpa5dVU, f9onk, fwbJ, mnFW, nOWk, Ha9G, f5DU, KZInRS, hq2umu, ROI9_, M7cq, u1j8N, ECDy, q4kPy, doDAh, YN04, kvUux, WsZW22, d654kx, jl8hSJt, XEsGoy, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DWiY1t8.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, KLand(i,s)
  , RO_SharedFieldsFrame
 PROVE /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, krs, recV, pgV, xV, net, ghV>>
        /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  BY ONLY <1>DWiY1t8, Sizes, Location, Design, Design DEF K14, KLand, pgV, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RAVSaDas0d.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, DgHrMJ, KLand(i,s)
  , RO_SharedFieldsFrame
 PROVE \A a \in Inst, b \in KSlots : kfly'[a][b] => kfly[a][b]
  BY ONLY <1>RAVSaDas0d, Sizes, Location, Design, SMT DEF KLand, DgHrMJ, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>n7vJf6.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, TypInv, K14, K15, KLand(i,s)
  , RO_SharedFieldsFrame
 PROVE K15'
<2> USE ONLY <1>n7vJf6, Sizes, Location, Design
<2>1. /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, krs, recV, pgV, xV, net, ghV>>
       /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  BY <1>DWiY1t8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. DgHrMJ
  BY <1>w1A6qbKTB1, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. \A a \in Inst, b \in KSlots : kfly'[a][b] => kfly[a][b]
  BY <2>2, <1>RAVSaDas0d, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>3, SMT, Sizes, Location, Design DEF InFl, Inst, IsD, IsP, K15, KData, KSlots, NL, NTok, NoWriteInto, Writing, Xids, ghV, pgV, recV, rtV, xV, SData, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Rq8WnEzQXT5J3gjXwo.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, TypInv, K14, NoFreeUnderRead, KLand(i,s)
  , RO_SharedFieldsFrame
 PROVE NoFreeUnderRead'
<2> HIDE DEF TypInv, CoreTypeOK, NoFreeUnderRead, KHeld, SHeld, Sizes, Location, Design
<2>frame. UNCHANGED <<kpin,krs,pst,pr,pgn,spst,sown,sgen>>
 BY ONLY <1>Rq8WnEzQXT5J3gjXwo, <1>DWiY1t8, SMTT(5) DEF pgV, RO_SharedFieldsFrame
<2>old. NoFreeUnderRead
 BY ONLY <1>Rq8WnEzQXT5J3gjXwo
<2>qed. QED
 BY ONLY <2>frame, <2>old, SMTT(5) DEF NoFreeUnderRead, KHeld, SHeld

\* T2M-LOCAL-VISIBILITY

<1>wVoqREOOxUJEWni5c.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, TypInv, K14, BaseKReadIntegrity, KLand(i,s)
  , RO_SharedFieldsFrame
 PROVE BaseKReadIntegrity'
<2> USE ONLY <1>wVoqREOOxUJEWni5c, Sizes, Location, Design
<2>1. /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, krs, recV, pgV, xV, net, ghV>>
       /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  BY <1>DWiY1t8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. DgHrMJ
  BY <1>w1A6qbKTB1, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. \A a \in Inst, b \in KSlots : kfly'[a][b] => kfly[a][b]
  BY <2>2, <1>RAVSaDas0d, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>3, SMT, Sizes, Location, Design DEF InFl, Inst, IsD, KData, KHeld, BaseKReadIntegrity, KSlots, NL, NTok, NoWriteInto, Writing, Xids, ghV, pgV, recV, rtV, xV, KPages, SHeld, SData, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GAccH10H3ithV4Zn.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, TypInv, K14, NoStrayAccess, KLand(i,s)
  , RO_SharedFieldsFrame
 PROVE NoStrayAccess'
<2> USE ONLY <1>GAccH10H3ithV4Zn, Sizes, Location, Design
<2>1. /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, krs, recV, pgV, xV, net, ghV>>
       /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  BY <1>DWiY1t8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. DgHrMJ
  BY <1>w1A6qbKTB1, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. \A a \in Inst, b \in KSlots : kfly'[a][b] => kfly[a][b]
  BY <2>2, <1>RAVSaDas0d, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>3, SMT, Sizes, Location, Design DEF Held, InFl, Inst, IsD, KHeld, KSlots, NL, NoStrayAccess, Pages, Writing, Xids, ghV, pgV, recV, rtV, xV, KPages, SHeld, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2603_PdRORead_PdLandProofs


<1>UcU5FRAf3.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K15'
<2> USE ONLY <1>UcU5FRAf3, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>MuJVo19LEunyO73W, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. K15'
 BY <2>1, <1>n7vJf6, <1>w1A6qbKTB1, V21_Inv_K14, V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2605_PdROReadCell_KLand_K15

\* T2M-SCOPE R2M2606_PdROReadCell_KLand_KReadIntegrity

<1>pH5VM2n4Ko8BzTjRHxl7.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>pH5VM2n4Ko8BzTjRHxl7, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>MuJVo19LEunyO73W, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. BaseKReadIntegrity'
 BY <2>1, <1>wVoqREOOxUJEWni5c, <1>w1A6qbKTB1, V21_Inv_K14, V21_Inv_KReadIntegrity, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, KReadIntegrity, Sizes, Location, Design
<2>3. SMapIntegrity' BY <1>AP58DHKNFhYouTvUs, <1>M2kjfjQfCou1TqXmLb7, <1>MuJVo19LEunyO73W, <1>Fjqj9qY9B4kZ, Sizes, Location, Design DEF RO_StableStates, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2606_PdROReadCell_KLand_KReadIntegrity

\* T2M-SCOPE R2M2607_PdROReadCell_KLand_NoFreeUnderRead

<1>vJZ8Z2TN78cg0Y7Dj2Wdz.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>vJZ8Z2TN78cg0Y7Dj2Wdz, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>MuJVo19LEunyO73W, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. NoFreeUnderRead'
 BY <2>1, <1>Rq8WnEzQXT5J3gjXwo, <1>w1A6qbKTB1, V21_Inv_K14, V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2607_PdROReadCell_KLand_NoFreeUnderRead

\* T2M-SCOPE R2M2608_PdROReadCell_KLand_NoStrayAccess

<1>Oq2yAJnhTpXbjlFbHbF.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE NoStrayAccess'
<2> USE ONLY <1>Oq2yAJnhTpXbjlFbHbF, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>MuJVo19LEunyO73W, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. NoStrayAccess'
 BY <2>1, <1>GAccH10H3ithV4Zn, <1>w1A6qbKTB1, V21_Inv_K14, V21_Inv_NoStrayAccess, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2608_PdROReadCell_KLand_NoStrayAccess


<1> QED BY <1>cKvJTH8jO, <1>zWo27hiMg, <1>k3P2iUkQl3bc4jnTO6, <1>pH5VM2n4Ko8BzTjRHxl7, <1>aJbph1DlJgK3XuhSe, <1>zg90ZLRqW, <1>UcU5FRAf3, <1>Oq2yAJnhTpXbjlFbHbF, <1>vJZ8Z2TN78cg0Y7Dj2Wdz, <1>zGtkoEMmgOR1KEomS0Wh0KUidIBfcr, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_KLand_02_01 SHA ef82719f8cd6b7a6981d3369cd13d2bcc6e7a215d845196ecf498322206d327a
USE DEF V21_Inv_K10, V21_Inv_K16, V21_Inv_K17, V21_Inv_K7, V21_Inv_K8, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SI7, V21_Inv_SealOnlyLanded, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst
HIDE DEF Part_KLand_01_02, V21_Inv_EntryQuarantineDisjoint, V21_Inv_K15, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V22_T_hok, V22_T_hw, V22_T_pgn, V22_T_pr, V22_T_rpgS, V22_T_sentry, V22_T_spst, V22_T_squar, V22_T_xst
THEOREM Part_KLand_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE (ReadOwnLanded)' /\ (PrivateMapOwner)' /\ (SI7)' /\ (SealOnlyLanded)' /\ (K16)' /\ (K17)' /\ (K7)' /\ (K8)' /\ (K10)' /\ (P_B2OffInit)'
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


           gsRtJP8qi == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           PfTvb9KsRvdD == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           Lysb3rxXC == spst'=[p \in SPages |-> IF \E x \in Xids : zp_PIk4svxWLB(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF gaiU_p1(p) THEN "free" ELSE IF jpr2xpt8(p) THEN "drain" ELSE spst[p]]


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


           RO_E_dpreOK == dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop" THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") => (IF hw[x]="issued" THEN xprefixOK[x] ELSE RO_Valid(x)) ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]


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

<1> HIDE DEF PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Zxt3uAWx0s, x3u8USZ8BP, gsRtJP8qi, PfTvb9KsRvdD, Lysb3rxXC, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_E_sentry, RO_E_dpreOK, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp

<1>cwygPFvwHoczY.        
 ASSUME B2, SFollow
 PROVE Zxt3uAWx0s
 BY ONLY <1>cwygPFvwHoczY, Sizes, Location, Design, ZenonT(10) DEF SFollow, Zxt3uAWx0s, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>Gd2HPOF0RVYJt.        
 ASSUME B2, SFollow
 PROVE x3u8USZ8BP
 BY ONLY <1>Gd2HPOF0RVYJt, Sizes, Location, Design, ZenonT(10) DEF SFollow, x3u8USZ8BP, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


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


<1>HLTT9Wslz5LEbnCLIM7x0l.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE PrivateMapOwner'
<2> USE ONLY <1>HLTT9Wslz5LEbnCLIM7x0l, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF KLand, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>Ehr2pMdg5uoVBObEEj2Ppij, Sizes, Location, Design DEF Sizes, Location, Design


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

<1>m948gxWe0.        
 P_B2OffInit /\ UNCHANGED <<dedupSeen, dpreOK, hitSeen, rpgS, schoice, sdata, sentry, sgen, skey, smap, sown, sprefc, spst, squar, sready, swrite, xprefixOK, xsrcP, xsrcS>> => P_B2OffInit'
 BY IsaT(10), Sizes, Location, Design DEF P_B2OffInit, SInit, Sizes, Location, Design
\* T2M-END R2M0451_PdPF_B2OffInit


<1>Xl32GE5pvtDt9lj.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>Xl32GE5pvtDt9lj, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0479_PdPOff_KLand


<1>oVMEMsT8gqQqbk.        
 ASSUME B2, SFollow
 PROVE RO_E_sentry
 BY ONLY <1>oVMEMsT8gqQqbk, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_sentry, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kgOzghpuDBjlN1.        
 ASSUME B2, SFollow
 PROVE RO_E_dpreOK
 BY ONLY <1>kgOzghpuDBjlN1, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_dpreOK, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pDDs2iPJ6v1.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>pDDs2iPJ6v1, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eav3Mlg8.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~RO_Posted(x)
 BY ONLY <1>eav3Mlg8, Sizes, Location, Design, SMTT(10) DEF RO_Posted, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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

<1>AP58DHKNFhYouTvUs.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, KLand(i,s)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>AP58DHKNFhYouTvUs, Sizes, Location, Design, Design, ZenonT(10) DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZnmRw51NQglfT.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s)
 PROVE \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
<2> USE ONLY <1>ZnmRw51NQglfT, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ZnmRw51NQglfT, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Csw0CjHmXlC0A5b.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s)
 PROVE \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
<2> USE ONLY <1>Csw0CjHmXlC0A5b, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Csw0CjHmXlC0A5b, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Hax7VUWP5NNOmoz.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s)
 PROVE \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
<2> USE ONLY <1>Hax7VUWP5NNOmoz, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Hax7VUWP5NNOmoz, V22_T_iv, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ht5Ki7mc6.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE SI7'
 BY ONLY <1>ht5Ki7mc6, Sizes, Location, Design, <1>AP58DHKNFhYouTvUs, <1>Hax7VUWP5NNOmoz, <1>Csw0CjHmXlC0A5b, <1>FVK4MYGoOHs3gti, <1>dhSsfJA1lMG4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>IQO9tLE.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, KLand(i,s)
  PROVE /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, krs, recV, pgV, xV, net, ghV>>
        /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  BY ONLY <1>IQO9tLE, Sizes, Location, Design, Design DEF K14, KLand, pgV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kjjougSZY7hVy3GulKUi1M.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, BaseReadOwnLanded, KLand(i,s)
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>kjjougSZY7hVy3GulKUi1M, Sizes, Location, Design
<2>1. UNCHANGED <<hw, pgn, ph, pr, pst, ptl, pvis, rg, rhit, rpg, xdst>>
  BY <1>IQO9tLE, Sizes, Location, Design DEF rtV, recV, pgV, xV, ghV, instV, kV, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF DInst, InFl, NL, NTok, NoWriteInto, Pages, BaseReadOwnLanded, Rq, Writing, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LwQCsKnuLK5GtjN6DOW49eN.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, BaseSealOnlyLanded, KLand(i,s)
  PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>LwQCsKnuLK5GtjN6DOW49eN, Sizes, Location, Design
<2>1. UNCHANGED <<hw, pst, ptl, xdst>>
  BY <1>IQO9tLE, Sizes, Location, Design DEF rtV, recV, pgV, xV, ghV, instV, kV, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF InFl, NoWriteInto, Pages, BaseSealOnlyLanded, Writing, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>I4eL0ng.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, KLand(i,s)
  PROVE /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, krs, recV, pgV, xV, net, ghV>>
        /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  BY ONLY <1>I4eL0ng, Sizes, Location, Design, Design DEF K14, KLand, pgV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SsaHxKR1o6.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, djyOpL, KLand(i,s)
  PROVE \A a \in Inst, b \in KSlots : kfly'[a][b] => kfly[a][b]
  BY ONLY <1>SsaHxKR1o6, Sizes, Location, Design, SMT DEF KLand, djyOpL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fnmVkF.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, TypInv, K14, K16, KLand(i,s)
  PROVE K16'
<2> USE ONLY <1>fnmVkF, Sizes, Location, Design
<2>1. /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, krs, recV, pgV, xV, net, ghV>>
       /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  BY <1>I4eL0ng, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. djyOpL
  BY <1>UwwC5LVwQr, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>3. \A a \in Inst, b \in KSlots : kfly'[a][b] => kfly[a][b]
  BY <2>2, <1>SsaHxKR1o6, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>3, SMT, Sizes, Location, Design DEF GrownP, InFl, IsD, K16, NoWriteInto, Pages, Rq, Writing, Xids, ghV, pgV, recV, rtV, xV, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>avu7QQ.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, TypInv, K14, K17, KLand(i,s)
  PROVE K17'
<2> USE ONLY <1>avu7QQ, Sizes, Location, Design
<2>1. /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, krs, recV, pgV, xV, net, ghV>>
       /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  BY <1>I4eL0ng, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. djyOpL
  BY <1>UwwC5LVwQr, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>3. \A a \in Inst, b \in KSlots : kfly'[a][b] => kfly[a][b]
  BY <2>2, <1>SsaHxKR1o6, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>3, SMT, Sizes, Location, Design DEF Inst, K17, KSlots, NL, ghV, pgV, recV, rtV, xV, Sizes, Location, Design
\* T2M-END R2M2371_PdROOld_PP_PdLandProofs


<1>ELUjdB5ZIvi.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, K7, KLand(i,s)
  PROVE K7'
<2> USE ONLY <1>ELUjdB5ZIvi, Sizes, Location, Design
<2>1. UNCHANGED <<gen, kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>>
  BY <1>I4eL0ng, Sizes, Location, Design DEF rtV, recV, pgV, xV, ghV, instV, kV, Sizes, Location, Design
<2>2. QED
  BY <2>1, Isa, Sizes, Location, Design DEF Active, Gens, GrownP, Inst, IsD, K7, KPinned, KSlots, Maps, NHits, NL, Pages, Rq, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>o24wvnZnJDc.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, K8, KLand(i,s)
  PROVE K8'
<2> USE ONLY <1>o24wvnZnJDc, Sizes, Location, Design
<2>1. UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, ph, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>>
  BY <1>I4eL0ng, Sizes, Location, Design DEF rtV, recV, pgV, xV, ghV, instV, kV, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF Active, Gens, Inst, IsD, IsP, K8, NL, NTok, OwnedBy, PLens, Pages, Rq, Tag, Xids, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GKeQnZjvBVcN.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, K10, KLand(i,s)
  PROVE K10'
<2> USE ONLY <1>GKeQnZjvBVcN, Sizes, Location, Design
<2>1. UNCHANGED <<hok, hw, nx, pgn, ph, pr, pst, ptl, rg, xdst, xg, xlt, xr>>
  BY <1>I4eL0ng, Sizes, Location, Design DEF rtV, recV, pgV, xV, ghV, instV, kV, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF K10, OwnedBy, Pages, Xids, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IqBGoHU.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
  PROVE K7'
  BY ONLY <1>IqBGoHU, Sizes, Location, Design, <1>UwwC5LVwQr, <1>ELUjdB5ZIvi, V21_Inv_K14, V21_Inv_K7, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GIW8FkH.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
  PROVE K8'
  BY ONLY <1>GIW8FkH, Sizes, Location, Design, <1>UwwC5LVwQr, <1>o24wvnZnJDc, V21_Inv_K14, V21_Inv_K8, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yhP1rRsT.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
  PROVE K10'
  BY ONLY <1>yhP1rRsT, Sizes, Location, Design, <1>UwwC5LVwQr, <1>GKeQnZjvBVcN, V21_Inv_K10, V21_Inv_K14, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MRAE81eq.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
  PROVE K16'
  BY ONLY <1>MRAE81eq, Sizes, Location, Design, <1>UwwC5LVwQr, <1>fnmVkF, V21_Inv_K14, V21_Inv_K16, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oKmPiGGv.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
  PROVE K17'
  BY ONLY <1>oKmPiGGv, Sizes, Location, Design, <1>UwwC5LVwQr, <1>avu7QQ, V21_Inv_K14, V21_Inv_K17, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design
\* T2M-END R2M2374_PdROOld_PdPAgg_KLand

\* T2M-SCOPE R2M2375_PdROFinal_KLand_K10
\* T2M-BODY R2M2375_PdROFinal_KLand_K10
\* T2M-LOCAL-VISIBILITY

<1>QFYllsXFFZ1Lead.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K10'
 BY ONLY <1>QFYllsXFFZ1Lead, Sizes, Location, Design, <1>yhP1rRsT DEF Sizes, Location, Design
\* T2M-END R2M2375_PdROFinal_KLand_K10

\* T2M-SCOPE R2M2376_PdROFinal_KLand_K11

<1>odj5Zeg8C953xQm.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K16'
 BY ONLY <1>odj5Zeg8C953xQm, Sizes, Location, Design, <1>MRAE81eq DEF Sizes, Location, Design
\* T2M-END R2M2377_PdROFinal_KLand_K16

\* T2M-SCOPE R2M2378_PdROFinal_KLand_K17

<1>C9f5YxWEGiO5EeH.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K17'
 BY ONLY <1>C9f5YxWEGiO5EeH, Sizes, Location, Design, <1>oKmPiGGv DEF Sizes, Location, Design
\* T2M-END R2M2378_PdROFinal_KLand_K17

\* T2M-SCOPE R2M2379_PdROFinal_KLand_K7

<1>ZjtXtvp7CGZ7xa.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K7'
 BY ONLY <1>ZjtXtvp7CGZ7xa, Sizes, Location, Design, <1>IqBGoHU DEF Sizes, Location, Design
\* T2M-END R2M2379_PdROFinal_KLand_K7

\* T2M-SCOPE R2M2380_PdROFinal_KLand_K8

<1>Lk8AZWjcRo4rju.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K8'
 BY ONLY <1>Lk8AZWjcRo4rju, Sizes, Location, Design, <1>GIW8FkH DEF Sizes, Location, Design
\* T2M-END R2M2380_PdROFinal_KLand_K8

\* T2M-SCOPE R2M2381_PdROFinal_KLand_K9

<1>W4dlhiXDUXzV6gs51w6.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE ReadOwnLanded'
<2> USE ONLY <1>W4dlhiXDUXzV6gs51w6, Sizes, Location, Design
<2>1. BaseReadOwnLanded'
 BY <1>kjjougSZY7hVy3GulKUi1M, <1>d9xjhNZcw, V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 => \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} => dpreOK'[rpg'[j][r]]
 BY <1>AP58DHKNFhYouTvUs, <1>ZnmRw51NQglfT, <1>umw00Yrfg, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF ReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M2515_PdROKernel_KLand_ReadOwnLanded

\* T2M-SCOPE R2M2516_PdROKernel_KLand_SealOnlyLanded

<1>xAbqsbSGcOqihsu0qAoK.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE SealOnlyLanded'
<2> USE ONLY <1>xAbqsbSGcOqihsu0qAoK, Sizes, Location, Design
<2>1. BaseSealOnlyLanded'
 BY <1>LwQCsKnuLK5GtjN6DOW49eN, <1>d9xjhNZcw, V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. SharedImmutable'
 <3> HIDE DEF CoreTypeOK, STypeOK, SFollow
 <3>oldType. xdst \in [Xids -> 0..NP]
  BY ONLY <1>xAbqsbSGcOqihsu0qAoK, V22_T_xdst, SMTT(5)
 <3>frame. UNCHANGED xdst
  BY ONLY <1>xAbqsbSGcOqihsu0qAoK, <1>AP58DHKNFhYouTvUs, SMTT(5)
 <3>nextType. xdst' \in [Xids -> 0..NP]
  BY ONLY <3>oldType, <3>frame, SMTT(5)
 <3>qed. QED BY ONLY <1>xAbqsbSGcOqihsu0qAoK, <1>UoOnqFdN5hlmOkH5yaHH03rU, <3>nextType, SMTT(5)
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF SealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M2516_PdROKernel_KLand_SealOnlyLanded

\* T2M-SCOPE R2M2517_PdROKernel_KLand_SendOwnLanded

<1> QED BY <1>W4dlhiXDUXzV6gs51w6, <1>HLTT9Wslz5LEbnCLIM7x0l, <1>ht5Ki7mc6, <1>xAbqsbSGcOqihsu0qAoK, <1>odj5Zeg8C953xQm, <1>C9f5YxWEGiO5EeH, <1>ZjtXtvp7CGZ7xa, <1>Lk8AZWjcRo4rju, <1>QFYllsXFFZ1Lead, <1>Xl32GE5pvtDt9lj, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_KLand SHA 89dcadddaa83bcf066ad1bb9dd3b90810f16d76346b7ae3ca25117f12391bc1c
USE DEF ShapeNetFrame
HIDE DEF Part_KLand_02_01, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K14, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K7, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_iv, V22_T_nx, V22_T_pst, V22_T_schoice, V22_T_smap, V22_T_xdst, V22_T_xsrcP, V22_T_xsrcS
LEMMA ShapeEffect_KLand ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, Sizes, Design, KLand(i,s)
 PROVE net'=net
 BY ONLY KLand(i,s), Sizes, Design, SMTT(5) DEF KLand, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_KLand ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, Sizes, Design, IndInv, MessageShape, KLand(i,s)
 PROVE MessageShape'
 BY ONLY Sizes, Design, KLand(i,s), MessageShape, ShapeEffect_KLand, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_KLand SHA 1f001f9a1849d95d802884d4dc7a2002eb03a11d0f36226961d4aa1d473e3312
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_KLand, ShapeNetFrame
THEOREM DomainKeep_KLand ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, Sizes, Location, Design, PinInv, KLand(i,s)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, KLand(i,s), ShapeEffect_KLand
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalPart_KLand_02_02 SHA 8a3d9e0a1ea1e7ae33b36b45759d1788020c304d75cbcee9ceb4cc47a92d5bae
USE DEF V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K9, V21_Inv_OneReply, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst
HIDE DEF ShapeEffect_KLand, V21_Inv_MsgXDomain
THEOREM Part_KLand_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE (K9)' /\ (K11)' /\ (K1)' /\ (K2)' /\ (K3)' /\ (K4)' /\ (K5)' /\ (K6)' /\ (K12)' /\ (K13)' /\ (S1)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (S5)' /\ (S6)' /\ (GenFiltered)' /\ (OneReply)' /\ (ReplyTruth)' /\ (QuarNeverMapped)' /\ (QuarNoReg)' /\ (SharedImmutable)' /\ (MsgXDomain)'
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

<1> HIDE DEF AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp

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

<1>nbBFqzFPLZWneygpqQKVN.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>nbBFqzFPLZWneygpqQKVN, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>nbBFqzFPLZWneygpqQKVN, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bSgWoX1V2Ihe6m1.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>bSgWoX1V2Ihe6m1, Sizes, Location, Design, DomainKeep_KLand, SMTT(5)
\* T2M-END R2M0296_PdPDomain_KLand


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Tq.        
 S3 /\ UNCHANGED <<torn>> => S3'
 BY IsaT(10), Sizes, Location, Design DEF S3, Sizes, Location, Design
\* T2M-END R2M0343_PdPF_S3

\* T2M-SCOPE R2M0451_PdPF_B2OffInit

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


<1>s6g.        
 K13 /\ UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>> => K13'
 BY IsaT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design
\* T2M-END R2M0354_PdPF_K13


<1>ui5.        
 K12 /\ UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>> => K12'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, K12, Sizes, Location, Design
\* T2M-END R2M0362_PdPF_K12


<1>rd.        
 K5 /\ UNCHANGED <<led, pgn, pr, pst, xg, xr>> => K5'
 BY IsaT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0334_PdPF_K5


<1>pJ.        
 K4 /\ UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>> => K4'
 BY IsaT(10), Sizes, Location, Design DEF ExpPage, InitPage, K4, Sizes, Location, Design
\* T2M-END R2M0333_PdPF_K4


<1>Po.        
 S5 /\ UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>> => S5'
 BY IsaT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
\* T2M-END R2M0345_PdPF_S5


<1>IM.        
 K6 /\ UNCHANGED <<gen, pgn, pr, pst, sfly, sled>> => K6'
 BY IsaT(10), Sizes, Location, Design DEF K6, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0372_PdPF_K6


<1>agy0tgaoa.        
 QuarNoReg /\ UNCHANGED <<iv, led, pst>> => QuarNoReg'
 BY IsaT(10), Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
\* T2M-END R2M0351_PdPF_QuarNoReg


<1>CHHI4E3y3uZD9LA.        
 QuarNeverMapped /\ UNCHANGED <<ph, pst, rpg>> => QuarNeverMapped'
 BY IsaT(10), Sizes, Location, Design DEF Active, QuarNeverMapped, Sizes, Location, Design
\* T2M-END R2M0350_PdPF_QuarNeverMapped


<1>qp40l0PDVkbo0.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, led, net, nfail, nx, pgn, ph, pr, pst, rd, rg, rhit, rp, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>qp40l0PDVkbo0, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF KLand, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NXcc4ro3.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K1'
<2> USE ONLY <1>NXcc4ro3, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NrlCUJZW.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K2'
<2> USE ONLY <1>NrlCUJZW, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>U5cGvUEt.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K3'
<2> USE ONLY <1>U5cGvUEt, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gi3Kmu4w.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K4'
<2> USE ONLY <1>gi3Kmu4w, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gBwN2e6c.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K5'
<2> USE ONLY <1>gBwN2e6c, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FEfYqMQn.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K6'
<2> USE ONLY <1>FEfYqMQn, Sizes, Location, Design
<2>1. K6
 BY V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, pgn, pr, pst, sfly, sled>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>IM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oqBmq8DWf.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K12'
<2> USE ONLY <1>oqBmq8DWf, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Aa4qLtNG5.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K13'
<2> USE ONLY <1>Aa4qLtNG5, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mZ5DSusN.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE S1'
<2> USE ONLY <1>mZ5DSusN, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LWLgzrdX.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE S2'
<2> USE ONLY <1>LWLgzrdX, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>p5i33LFM.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE S3'
<2> USE ONLY <1>p5i33LFM, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tr3Mus6q.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE S4'
<2> USE ONLY <1>tr3Mus6q, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sOhL4oXw.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE S5'
<2> USE ONLY <1>sOhL4oXw, Sizes, Location, Design
<2>1. S5
 BY V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Po, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cm7Sf4KL.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE S6'
<2> USE ONLY <1>cm7Sf4KL, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q31iOK09TsqUFLBSC.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>Q31iOK09TsqUFLBSC, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iskEuhs7bsA3qH.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE OneReply'
<2> USE ONLY <1>iskEuhs7bsA3qH, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QvxMyH0JiybKTvyc.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>QvxMyH0JiybKTvyc, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iy0g5lT4cx5pUEI0l7o8a.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE QuarNeverMapped'
<2> USE ONLY <1>iy0g5lT4cx5pUEI0l7o8a, Sizes, Location, Design
<2>1. QuarNeverMapped
 BY V21_Inv_QuarNeverMapped, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ph, pst, rpg>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>CHHI4E3y3uZD9LA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>y65ZcI83YxgsPko.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE QuarNoReg'
<2> USE ONLY <1>y65ZcI83YxgsPko, Sizes, Location, Design
<2>1. QuarNoReg
 BY V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, pst>>
 BY <1>qp40l0PDVkbo0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>agy0tgaoa, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>I4eL0ng.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, KLand(i,s)
  PROVE /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, krs, recV, pgV, xV, net, ghV>>
        /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  BY ONLY <1>I4eL0ng, Sizes, Location, Design, Design DEF K14, KLand, pgV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FZu0xhjSTXF.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, K9, KLand(i,s)
  PROVE K9'
<2> USE ONLY <1>FZu0xhjSTXF, Sizes, Location, Design
<2>1. UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>>
  BY <1>I4eL0ng, Sizes, Location, Design DEF rtV, recV, pgV, xV, ghV, instV, kV, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF Active, DInst, K9, NL, NTok, Rq, Tag, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>u5whBDzBVeiL.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, K11, KLand(i,s)
  PROVE K11'
<2> USE ONLY <1>u5whBDzBVeiL, Sizes, Location, Design
<2>1. UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>>
  BY <1>I4eL0ng, Sizes, Location, Design DEF rtV, recV, pgV, xV, ghV, instV, kV, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF K11, Pages, Xids, Sizes, Location, Design
\* T2M-END R2M2373_PdROOld_PP_PdFrameProofs


<1>Px0RBlb.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
  PROVE K9'
  BY ONLY <1>Px0RBlb, Sizes, Location, Design, <1>UwwC5LVwQr, <1>FZu0xhjSTXF, V21_Inv_K14, V21_Inv_K9, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aRSODrMx.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
  PROVE K11'
  BY ONLY <1>aRSODrMx, Sizes, Location, Design, <1>UwwC5LVwQr, <1>u5whBDzBVeiL, V21_Inv_K11, V21_Inv_K14, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZcooKyNZ57W5zVy.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K11'
 BY ONLY <1>ZcooKyNZ57W5zVy, Sizes, Location, Design, <1>aRSODrMx DEF Sizes, Location, Design
\* T2M-END R2M2376_PdROFinal_KLand_K11

\* T2M-SCOPE R2M2377_PdROFinal_KLand_K16

<1>bYUixprMRb5HbZ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, PinInv, KLand(i,s), SFollow
 PROVE K9'
 BY ONLY <1>bYUixprMRb5HbZ, Sizes, Location, Design, <1>Px0RBlb DEF Sizes, Location, Design
\* T2M-END R2M2381_PdROFinal_KLand_K9


<1> QED BY <1>bYUixprMRb5HbZ, <1>ZcooKyNZ57W5zVy, <1>NXcc4ro3, <1>NrlCUJZW, <1>U5cGvUEt, <1>gi3Kmu4w, <1>gBwN2e6c, <1>FEfYqMQn, <1>oqBmq8DWf, <1>Aa4qLtNG5, <1>mZ5DSusN, <1>LWLgzrdX, <1>p5i33LFM, <1>tr3Mus6q, <1>sOhL4oXw, <1>cm7Sf4KL, <1>Q31iOK09TsqUFLBSC, <1>iskEuhs7bsA3qH, <1>QvxMyH0JiybKTvyc, <1>iy0g5lT4cx5pUEI0l7o8a, <1>y65ZcI83YxgsPko, <1>nbBFqzFPLZWneygpqQKVN, <1>bSgWoX1V2Ihe6m1, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_KLand_01_01, Part_KLand_01_02, Part_KLand_02_01, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_KLand
HIDE DEF DomainKeep_KLand, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K9, V21_Inv_OneReply, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst

THEOREM Step_KLand ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, Sizes, Location, Design, PinInv, KLand(i,s), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, NEW v \in KSlots, Sizes, Location, Design, PinInv, KLand(u,v), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_KLand_01_01, Part_KLand_01_02, Part_KLand_02_01, Part_KLand_02_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_KLand_01_01, Part_KLand_01_02, Part_KLand_02_01, Part_KLand_02_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, KLand(i,s), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, KLand(i,s), ShapeKeep_KLand, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
