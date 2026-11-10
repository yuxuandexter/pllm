---- MODULE PdActionSlice_Cqe_01 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_9ef278c147c12b12, PdFinalAuxType_8bb3fe86f1f5f291, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalPart_Cqe_01_01 SHA 5e23ee58501e421004e446b97f5233898e6ee380f53feb812b03932e83f4e0a0
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_K5, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sprefc, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc
THEOREM Part_Cqe_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE (QuietConservation)' /\ (TypInv)' /\ (P_SI4)'
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

           wOTr_ == gen \in [Rq -> 0..MG]


           Qjrp == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           vdfp == rp \in [Rq -> {0} \cup Inst]


           Gi91 == rd \in [Rq -> {0} \cup Inst]


           f9Jo == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           qC4t == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           dfknOma == alive \in [Inst -> BOOLEAN]


           TiBl9dL == nfail \in 0..MaxFail


           nvVdwJ == torn \in [Inst -> SUBSET Inst]


           kyOog2 == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           UUdTOK == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           dMRAk == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           lwx7 == ph \in [Inst -> [Rq -> PhSet]]


           azLu == rg \in [Inst -> [Rq -> 0..MG]]


           T2_wJ == rpg \in [Inst -> [Rq -> 0..NP]]


           DRkCp == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           u6eb == rx \in [Inst -> [Rq -> 0..MX]]


           WFFocH == rhit \in [Inst -> [Rq -> BOOLEAN]]


           mWgRR == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           voSc == pr \in [Pages -> 0..NR]


           ejARA == pgn \in [Pages -> 0..MG]


           nhDFh == plt \in [Pages -> 0..PS]


           Oet5P == ptl \in [Pages -> -1..PS]


           toA96a == pvis \in [Pages -> BOOLEAN]


           CQcwS == led \in [Pages -> SUBSET Xids]


           pgoLyw == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           gwX1nH == sled \in [Pages -> SUBSET (Rq \X Gens)]


           uhaZUCa == prefc \in [Pages -> 0..NR]


           j9ZB2 == pqp \in [Pages -> {0} \cup Inst]


           tOrh == xr \in [Xids -> 0..NR]


           oZ1G == xg \in [Xids -> 0..MG]


           TMQx == xk \in [Xids -> {"none", "wr", "rd"}]


           vvyr == xp \in [Xids -> {0} \cup Inst]


           FBnj == xd \in [Xids -> {0} \cup Inst]


           Sbgpxn == xsrc \in [Xids -> 0..NP]


           tP64Zt == xdst \in [Xids -> 0..NP]


           Rl_wH == xnt \in [Xids -> 0..PS]


           JojO == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           NFMkE == hok \in [Xids -> BOOLEAN]


           vQ8m == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           tMnUG == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           Og_ZB == xlt \in [Xids -> 0..PS]


           NHqB == nx \in 1..(MX + 1)


           j95de == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           jnT8ZH == drep \in [Rq -> [Gens -> 0..2]]


           fikvOb == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           wBRWE5u == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           Le6TxG == gbad \in BOOLEAN


           soyHJ == wOTr_ /\ Qjrp /\ vdfp /\ Gi91 /\ f9Jo /\ qC4t /\ dfknOma /\ TiBl9dL /\ nvVdwJ /\ kyOog2 /\ UUdTOK /\ dMRAk /\ lwx7 /\ azLu /\ T2_wJ /\ DRkCp /\ u6eb /\ WFFocH /\ mWgRR /\ voSc /\ ejARA /\ nhDFh /\ Oet5P /\ toA96a /\ CQcwS /\ pgoLyw /\ gwX1nH /\ uhaZUCa /\ j9ZB2 /\ tOrh /\ oZ1G /\ TMQx /\ vvyr /\ FBnj /\ Sbgpxn /\ tP64Zt /\ Rl_wH /\ JojO /\ NFMkE /\ vQ8m /\ tMnUG /\ Og_ZB /\ NHqB /\ j95de /\ jnT8ZH /\ fikvOb /\ wBRWE5u /\ Le6TxG

           \* T2M-LOCAL-VISIBILITY

           RfBD6Wgdk(x) == LET p == InitPage(x) IN
             pst[p] = "drain" /\ led[p] \ {x} = {} /\ sled[p] = {} /\ ~KPinned(p)


           Qrl6GUzyLCC(x) == LET p == InitPage(x) IN
             /\ pst' = [pst EXCEPT ![p] = IF RfBD6Wgdk(x) THEN "free" ELSE @]
             /\ pr' = [pr EXCEPT ![p] = IF RfBD6Wgdk(x) THEN 0 ELSE @]
             /\ pgn' = [pgn EXCEPT ![p] = IF RfBD6Wgdk(x) THEN 0 ELSE @]
             /\ plt' = [plt EXCEPT ![p] = IF RfBD6Wgdk(x) THEN 0 ELSE @]
             /\ led' = [led EXCEPT ![p] = @ \ {x}]
             /\ iv' = [iv EXCEPT ![x] = "cqe"]

           \* T2M-LOCAL-VISIBILITY

           TpaZSp7MrvtgL2(p) ==
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


           yUs7zKGEveeAOt9iQ37GY(p,L,S) == pst[p] = "drain" /\ L = {} /\ S = {} /\ ~KPinned(p)


           GitUC6KyzvrbNDOUsZB1G2P(p,L,S) ==
             /\ L \subseteq led[p] /\ S \subseteq sled[p] /\ sfly[p] \subseteq S
             /\ led' = [led EXCEPT ![p] = L]
             /\ sled' = [sled EXCEPT ![p] = S]
             /\ pst' = [pst EXCEPT ![p] = IF yUs7zKGEveeAOt9iQ37GY(p,L,S) THEN "free" ELSE @]
             /\ pr' = [pr EXCEPT ![p] = IF yUs7zKGEveeAOt9iQ37GY(p,L,S) THEN 0 ELSE @]
             /\ pgn' = [pgn EXCEPT ![p] = IF yUs7zKGEveeAOt9iQ37GY(p,L,S) THEN 0 ELSE @]
             /\ plt' = [plt EXCEPT ![p] = IF yUs7zKGEveeAOt9iQ37GY(p,L,S) THEN 0 ELSE @]
             /\ UNCHANGED <<ptl,sfly,prefc,pqp,gen,ph,rg,rhit,rpg,kpin,krs>>

           \* T2M-LOCAL-VISIBILITY

           ryYQWMe72hB == mWgRR /\ j9ZB2 /\ voSc /\ ejARA /\ nhDFh /\ CQcwS /\ gwX1nH /\ uhaZUCa

           \* T2M-LOCAL-VISIBILITY

           K0NCBxC(p) ==
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


<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_xprefixOK, RO_E_sprefc, RO_Flat, RO_StableStates, RO_ControlStep, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ, RfBD6Wgdk, Qrl6GUzyLCC, TpaZSp7MrvtgL2, yUs7zKGEveeAOt9iQ37GY, GitUC6KyzvrbNDOUsZB1G2P, ryYQWMe72hB, K0NCBxC

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

<1>FNYHAwoI35diExU.        
 ASSUME NEW x \in Xids, Cqe(x)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>FNYHAwoI35diExU, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SMQ1UmAL5iaIl8dau.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>SMQ1UmAL5iaIl8dau, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>J0yx6oHL5UyrV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>B8uFJWPVI9dI.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>B8uFJWPVI9dI, Sizes, Location, Design, Design, SMTT(10) DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WipnktIb3Tt2O9.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE UNCHANGED <<spst,rpgS>>
 BY ONLY <1>WipnktIb3Tt2O9, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>B8uFJWPVI9dI, <1>rUEzU8wbH, <1>JJE0Tfox9Q, <1>yFQ846plk6kJ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eqPru0DKBMBu4.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
<2> USE ONLY <1>eqPru0DKBMBu4, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>eqPru0DKBMBu4, V22_T_hw, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T2PzhtCg9Wchg5f.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE gen' \in [Rq -> 0..MG] /\ \A r \in Rq : gen'[r]>=gen[r]
<2> USE ONLY <1>T2PzhtCg9Wchg5f, Sizes, Location, Design
<2>1. gen \in [Rq -> 0..MG]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>T2PzhtCg9Wchg5f, V22_T_gen, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MAS9GGFtJH2.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE /\ \A z \in Xids : iv'[z]=iv[z] \/ iv'[z] \in {"cqe","failret"}
       /\ \A z \in Xids : xst'[z]=xst[z] \/ xst'[z] \in {"landed","failed"}
       /\ \A z \in Xids : hw'[z] \in {"issued","stop"} => hw[z] \in {"fly","issued","stop"}
<2> USE ONLY <1>MAS9GGFtJH2, Sizes, Location, Design
<2>1. K3 /\ hw \in [Xids -> {"none","fly","issued","stop"}]
       /\ iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
       /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>MAS9GGFtJH2, V22_T_hw, V22_T_iv, V22_T_xst, V21_Inv_K3, Sizes, Location, Design, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qCz2hppQKY5spPu.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE \A z \in Xids : hw'[z]="fly" => ~RO_Close(z)
<2> USE ONLY <1>qCz2hppQKY5spPu, Sizes, Location, Design
<2>1. K3 /\ hw \in [Xids -> {"none","fly","issued","stop"}]
       /\ iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
       /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>qCz2hppQKY5spPu, V22_T_hw, V22_T_iv, V22_T_xst, V21_Inv_K3, Sizes, Location, Design, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, RO_Close, K3, InFl, CqeHw, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BK7DW38P3ADkqhbwg4h3Lsa.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>BK7DW38P3ADkqhbwg4h3Lsa, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>BhJJoZwTfyo0ME DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hPx4uHS.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE P_SI1'
 BY ONLY <1>hPx4uHS, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>SMQ1UmAL5iaIl8dau, <1>WipnktIb3Tt2O9, <1>jGg3R, <1>T2PzhtCg9Wchg5f, <1>B8uFJWPVI9dI, <1>rUEzU8wbH, <1>KPndmXINRK1Z DEF Sizes, Location, Design

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
  BY ONLY <1>EjmNCRbt1, Sizes, Location, Design, <2>2, <3>1, <4>3, FS_EmptySet, SMTT(10) DEF SRefR, SRefE, Sizes, Location, Design
  <4>5. IsFiniteSet(squar') BY <1>L8DIG3nRD9Lv3, FS_Product, FS_Subset, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
  <4>6. \A p \in SPages : SRefQ(squar',p) \in Nat
  BY ONLY <1>EjmNCRbt1, Sizes, Location, Design, <2>2, <4>5, FS_Subset, FS_CardinalityType, SMTT(10) DEF SRefQ, Sizes, Location, Design
  <4>7. QED BY <3>1, <2>2, <4>2, <4>4, <4>6, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
 <3>2. QED BY <2>2, <3>1, Sizes, Location, Design DEF QuietConservation, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2192_PdROQuiet


<1>OJpowx54MQ.         TypInv => soyHJ
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, soyHJ, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>FeJ2oW.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qAeogR.        
  ASSUME NEW x \in Xids, Cqe(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>qAeogR, Sizes, Location, Design, ZenonT(5) DEF Cqe, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m9YGPGMDLHsGD7zp.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T0H4lJJVFNVhPUpDZl.        
  ASSUME NEW x \in Xids, NHqB, K2, x < nx
  PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>T0H4lJJVFNVhPUpDZl, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, NHqB, Xids, Sizes, Location, Design
\* T2M-END R2M2203_PdROBase_D2Finite_PdFactsA

\* T2M-SCOPE R2M2205_PdROBase_D2Finite_PdDDataA

<1>xGJxtsL.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE /\ iv[x] = "posted" /\ x < nx
        /\ InitPage(x) \in Pages /\ ExpPage(x) \in Pages
        /\ InitPage(x) # ExpPage(x) /\ x \in led[InitPage(x)]
<2> USE ONLY <1>xGJxtsL, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ NHqB /\ iv[x] = "posted"
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Cqe, Sizes, Location, Design
<2>2. x < nx /\ InitPage(x) # 0
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, NHqB, Xids, Sizes, Location, Design
<2>3. InitPage(x) \in Pages /\ ExpPage(x) \in Pages
       /\ Loc(InitPage(x)) = InitInst(x) /\ Loc(ExpPage(x)) = ExpInst(x)
  BY <2>1, <2>2, <1>T0H4lJJVFNVhPUpDZl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, K2, NHqB, Xids, Sizes, Location, Design
<2>5. x \in led[InitPage(x)]
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K4, Sizes, Location, Design
<2>6. QED BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>m9YGPGMDLHsGD7zp, SMTT(10), Sizes, Location, Design DEF InitInst, ExpInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>G6BOOhIE.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE /\ Qrl6GUzyLCC(x)
        /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,ph,rg,rpg,rpe,rx,rhit,
                       ptl,pvis,pqp,prefc,sfly,sled,xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,xst,xlt,nx,drep,crep,dsucc,gbad>>
<2> USE ONLY <1>G6BOOhIE, Sizes, Location, Design
<2>1. K7 /\ mWgRR /\ CQcwS /\ gwX1nH /\ uhaZUCa /\ j9ZB2 /\ voSc /\ ejARA /\ nhDFh
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. InitPage(x) \in Pages /\ x \in led[InitPage(x)]
  BY <1>xGJxtsL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. pst[InitPage(x)] # "free"
       /\ (pst[InitPage(x)] # "shared" => prefc[InitPage(x)] = 0)
       /\ (pst[InitPage(x)] # "quar" => pqp[InitPage(x)] = 0)
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K7, Sizes, Location, Design
<2>4. /\ EvidenceAt(InitPage(x),x)
       /\ iv' = [iv EXCEPT ![x] = "cqe"]
       /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,ph,rg,rpg,rpe,rx,rhit,
                       ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,xst,xlt,nx,drep,crep,dsucc,gbad>>
  BY <1>qAeogR, SMTT(10), Sizes, Location, Design DEF Cqe, InitPage, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, Design, SMTT(10), Sizes, Location DEF EvidenceAt, PageTo, AfterEv, PinBlocks, RfBD6Wgdk, Qrl6GUzyLCC, mWgRR, CQcwS, gwX1nH, uhaZUCa, j9ZB2, voSc, ejARA, nhDFh, Sizes, Location, Design
\* T2M-END R2M2206_PdROBase_PdD2CqeEffect


<1>tP0irKc9gY0y9CbW.         K7 <=> (\A p \in Pages : TpaZSp7MrvtgL2(p))
  BY SMTT(10), Sizes, Location, Design DEF K7, TpaZSp7MrvtgL2, Sizes, Location, Design
\* T2M-END R2M2207_PdROBase_D2Finite_PdConjPointsA


<1>bW10SSftUMpXmr0560C.        
  ASSUME NEW p \in Pages, TpaZSp7MrvtgL2(p), UNCHANGED <<ptl[p], pst[p], pr[p], pgn[p], plt[p], led[p], sled[p], sfly[p], prefc[p], pqp[p], gen, ph, rg, rhit, rpg, kpin, krs>>
  PROVE TpaZSp7MrvtgL2(p)'
  BY ONLY <1>bW10SSftUMpXmr0560C, Sizes, Location, Design, Zenon DEF TpaZSp7MrvtgL2, Active, Maps, GrownP, KPinned, NHits, Sizes, Location, Design
\* T2M-END R2M2208_PdROBase_D2Finite_PdK7FrameA

\* T2M-SCOPE R2M2209_PdROBase_D2Finite_PdK7StructureA

<1>Uit61kQU0O5UvG4MCPywKdk.        
  ASSUME UNCHANGED <<pst,pr,rpg,ph,rhit,rg,kpin,krs>>
  PROVE \A p \in Pages :
          /\ UNCHANGED <<GrownP(p), NHits(p), KPinned(p)>>
          /\ \A r \in Rq : UNCHANGED Maps(Loc(p),r,p)
  BY ONLY <1>Uit61kQU0O5UvG4MCPywKdk, Sizes, Location, Design, Zenon DEF GrownP, NHits, KPinned, Maps, Active, Sizes, Location, Design
\* T2M-END R2M2209_PdROBase_D2Finite_PdK7StructureA


<1>aYEPbF0aoBTOjAPzIYF17R39a.        
  ASSUME NEW p \in Pages, NEW L, NEW S, PinInv, GitUC6KyzvrbNDOUsZB1G2P(p,L,S)
  PROVE K7'
<2> USE ONLY <1>aYEPbF0aoBTOjAPzIYF17R39a, Sizes, Location, Design
<2>1. K7 /\ CQcwS /\ gwX1nH /\ mWgRR /\ voSc /\ ejARA /\ nhDFh
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. ASSUME NEW q \in Pages PROVE TpaZSp7MrvtgL2(q)'
<3>1. TpaZSp7MrvtgL2(q)
  BY <2>1, <1>tP0irKc9gY0y9CbW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE q # p
<4>1. UNCHANGED <<ptl[q],pst[q],pr[q],pgn[q],plt[q],led[q],sled[q],sfly[q],prefc[q],pqp[q],gen,ph,rg,rhit,rpg,kpin,krs>>
  BY <3>2, <2>1, SMTT(10), Sizes, Location, Design DEF GitUC6KyzvrbNDOUsZB1G2P, CQcwS, gwX1nH, mWgRR, voSc, ejARA, nhDFh, Sizes, Location, Design
<4>2. QED
  BY <3>1, <4>1, <1>bW10SSftUMpXmr0560C, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. CASE q = p /\ yUs7zKGEveeAOt9iQ37GY(p,L,S)
  BY <3>3, <3>1, <2>1, SMTT(10), Sizes, Location, Design DEF GitUC6KyzvrbNDOUsZB1G2P, yUs7zKGEveeAOt9iQ37GY, TpaZSp7MrvtgL2, CQcwS, gwX1nH, mWgRR, voSc, ejARA, nhDFh, Sizes, Location, Design
<3>4. CASE q = p /\ ~yUs7zKGEveeAOt9iQ37GY(p,L,S)
<4>1. UNCHANGED <<pst,pr,pgn,plt,ptl,sfly,prefc,pqp,gen,ph,rg,rhit,rpg,kpin,krs>>
  BY <3>4, <2>1, SMTT(10), Sizes, Location, Design DEF GitUC6KyzvrbNDOUsZB1G2P, mWgRR, voSc, ejARA, nhDFh, Sizes, Location, Design
<4>2. UNCHANGED <<GrownP(p),NHits(p),KPinned(p)>>
       /\ \A r \in Rq : UNCHANGED Maps(Loc(p),r,p)
  BY <4>1, <1>Uit61kQU0O5UvG4MCPywKdk, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>3. led'[p] = L /\ sled'[p] = S
  BY <2>1, SMTT(10), Sizes, Location, Design DEF GitUC6KyzvrbNDOUsZB1G2P, CQcwS, gwX1nH, Sizes, Location, Design
<4>4. QED
  BY <3>4, <3>1, <4>1, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF GitUC6KyzvrbNDOUsZB1G2P, yUs7zKGEveeAOt9iQ37GY, TpaZSp7MrvtgL2, Sizes, Location, Design
<3>5. QED
  BY <3>2, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>2, SMTT(10), Sizes, Location, Design DEF K7, TpaZSp7MrvtgL2, Sizes, Location, Design
\* T2M-END R2M2210_PdROBase_D2Finite_PdCleanupK7A


<1>Uyh.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE K7'
<2> USE ONLY <1>Uyh, Sizes, Location, Design
<2>1. K6 /\ CQcwS /\ gwX1nH
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_K6, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. InitPage(x) \in Pages
  BY <1>xGJxtsL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. GitUC6KyzvrbNDOUsZB1G2P(InitPage(x),led[InitPage(x)] \ {x},sled[InitPage(x)])
  BY <2>1, <2>2, <1>G6BOOhIE, SMTT(10), Sizes, Location, Design DEF K6, Qrl6GUzyLCC, RfBD6Wgdk, GitUC6KyzvrbNDOUsZB1G2P, yUs7zKGEveeAOt9iQ37GY, CQcwS, gwX1nH, InitPage, Sizes, Location, Design
<2>4. QED
  BY <2>2, <2>3, <1>aYEPbF0aoBTOjAPzIYF17R39a, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2211_PdROBase_PdD2Cqe_K7


<1>CuHF.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE K16'
<2> USE ONLY <1>CuHF, Sizes, Location, Design
<2>1. K16 /\ K7 /\ K8 /\ K9 /\ S1 /\ S2 /\ jnT8ZH /\ wOTr_ /\ qC4t /\ f9Jo /\ JojO /\ vQ8m /\ kyOog2 /\ dMRAk /\ CQcwS /\ NHqB /\ ejARA /\ lwx7 /\ nhDFh /\ j9ZB2 /\ voSc /\ uhaZUCa /\ mWgRR /\ Oet5P /\ toA96a /\ azLu /\ WFFocH /\ DRkCp /\ T2_wJ /\ u6eb /\ pgoLyw /\ gwX1nH /\ FBnj /\ tP64Zt /\ oZ1G /\ TMQx /\ Og_ZB /\ vvyr /\ tOrh /\ Sbgpxn
  BY ONLY <1>CuHF, Sizes, Location, Design, <1>d9xjhNZcw, SMTT(10), <1>OJpowx54MQ, V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_S1, V21_Inv_S2, V21_Inv_Safety, V21_Inv_TypeOK DEF Safety, soyHJ, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<hw, ph, ptl, rg, rpg, sfly, xdst>>
  BY ONLY <1>CuHF, Sizes, Location, Design, SMTT(10), <1>qAeogR DEF Sizes, Location, Design
<2>3. QED
  BY ONLY <1>CuHF, Sizes, Location, Design, <2>1, <2>2, Design, Sizes, Location, <1>FeJ2oW, SMTT(10) DEF Active, AfterEv, Cqe, DInst, EvidenceAt, ExpInst, Gens, GrownP, InFl, Inst, IsD, IsP, K16, K7, K8, K9, KPinned, KSlots, Maps, NHits, NL, NTok, NoWriteInto, OwnedBy, PLens, PageTo, Pages, PinBlocks, Rq, S1, S2, jnT8ZH, wOTr_, qC4t, f9Jo, JojO, vQ8m, kyOog2, dMRAk, CQcwS, NHqB, ejARA, lwx7, nhDFh, j9ZB2, voSc, uhaZUCa, mWgRR, Oet5P, toA96a, azLu, WFFocH, DRkCp, T2_wJ, u6eb, pgoLyw, gwX1nH, FBnj, tP64Zt, oZ1G, TMQx, Og_ZB, vvyr, tOrh, Sbgpxn, Tag, Writing, Xids, KPages, Sizes, Location, Design
\* T2M-END R2M2212_PdROBase_PdCell_Cqe_K16


<1>LzQ3C70N3vZjLr.        
  /\ NP \in Nat /\ 0 \in 0..NP /\ 0 \in 0..NR /\ 0 \in 0..MG
  /\ 0 \in 0..PS /\ 0 \in -1..PS /\ 0 \in 0..MX /\ 0 \in 0..MaxFail
  /\ 1 \in 1..(MX+1) /\ 1 \in 0..PS /\ 1 \in -1..PS
  /\ 0 \notin Inst /\ 0 \notin Pages /\ 0 \notin Rq /\ 0 \notin Gens /\ 0 \notin Xids
<2>base. NP \in Nat /\ 0 \in 0..NP /\ 0 \in 0..NR /\ 0 \in 0..MG /\
          0 \in 0..PS /\ 0 \in 0..MX /\ 1 \in 0..PS
 BY ONLY <1>FeJ2oW, SMTT(5)
<2>sizes. PS \in Nat \ {0} /\ MX \in Nat /\ MaxFail \in Nat
 BY ONLY Sizes, ZenonT(5) DEF Sizes
<2>bounds. PS \in Int /\ PS>=1 /\ MX \in Int /\ MX>=0 /\ MaxFail \in Int /\ MaxFail>=0
 BY ONLY <2>sizes, PositiveNatFact, NonnegativeNatFact, SMTT(5)
<2>qed. QED BY ONLY <2>base, <2>bounds, SMTT(5) DEF Inst, NL, Pages, Rq, Gens, Xids


<1>oMJ6rlYK4zQ.        
  ASSUME NEW p \in Pages, NEW st \in {"free","priv","shared","drain","quar"},
         NEW q \in {0} \cup Inst, NEW nl \in SUBSET Xids,
         NEW ns \in SUBSET (Rq \X Gens), ryYQWMe72hB, PageTo(p,st,q,nl,ns)
  PROVE ryYQWMe72hB'
<2> USE ONLY <1>oMJ6rlYK4zQ, Sizes, Location, Design
<2>1. mWgRR'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, mWgRR, PageTo, Sizes, Location, Design
<2>2. j9ZB2'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, j9ZB2, PageTo, Sizes, Location, Design
<2>3. voSc'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, voSc, PageTo, Sizes, Location, Design
<2>4. ejARA'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, ejARA, PageTo, Sizes, Location, Design
<2>5. nhDFh'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, nhDFh, PageTo, Sizes, Location, Design
<2>6. CQcwS'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, CQcwS, PageTo, Sizes, Location, Design
<2>7. gwX1nH'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, gwX1nH, PageTo, Sizes, Location, Design
<2>8. uhaZUCa'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, uhaZUCa, PageTo, Sizes, Location, Design
<2>9. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, Sizes, Location, Design
\* T2M-END R2M2214_PdROBase_PdD2PageTypes


<1>OlWfbBkt7VW.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE ryYQWMe72hB'
<2> USE ONLY <1>OlWfbBkt7VW, Sizes, Location, Design
<2>1. ryYQWMe72hB /\ InitPage(x) \in Pages
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>xGJxtsL, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, ryYQWMe72hB, Sizes, Location, Design
<2>2. LET p == InitPage(x) IN PageTo(p,AfterEv(p,led[p] \ {x},sled[p]),pqp[p],led[p] \ {x},sled[p])
  BY SMTT(10), Sizes, Location, Design DEF Cqe, InitPage, EvidenceAt, Sizes, Location, Design
<2>3. LET p == InitPage(x) IN
      /\ AfterEv(p,led[p] \ {x},sled[p]) \in {"free","priv","shared","drain","quar"}
      /\ pqp[p] \in {0} \cup Inst /\ (led[p] \ {x}) \in SUBSET Xids
      /\ sled[p] \in SUBSET (Rq \X Gens)
  BY <2>1, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, mWgRR, j9ZB2, CQcwS, gwX1nH, AfterEv, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>oMJ6rlYK4zQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PYxfe5K.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE CoreTypeOK'
 BY ONLY <1>PYxfe5K, AuxType_8bb3fe86f1f5f291, Sizes, Location, Design DEF Sizes, Location, Design

<1>kc10DNVpq.         K7' <=> \A p \in Pages : K0NCBxC(p)'
  BY ZenonT(10), Sizes, Location, Design DEF K7, K0NCBxC, Sizes, Location, Design
\* T2M-END R2M2217_PdROBase_PdPostPoints

\* T2M-SCOPE R2M2218_PdROBase_PdQuietPostFromStructure
\* T2M-BODY R2M2218_PdROBase_PdQuietPostFromStructure

<1>K624W6Cd7LIzgoDg7o0.        
  ASSUME mWgRR', K7', K16'
  PROVE BaseQuietConservation'
<2> USE ONLY <1>K624W6Cd7LIzgoDg7o0, Sizes, Location, Design
<2>1. SUFFICES ASSUME Quiet', NEW p \in Pages
                PROVE pst'[p] \in {"free","quar"} \/ (pst'[p] = "shared" /\ prefc'[p] = 0)
  BY SMTT(10), Sizes, Location, Design DEF BaseQuietConservation, Sizes, Location, Design
<2>2. K0NCBxC(p)' /\ Loc(p) \in Inst
  BY <2>1, <1>kc10DNVpq, Location, SMTT(10), Sizes, Design DEF KPages, Sizes, Location, Design
<2>3. ~GrownP(p)'
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF GrownP, K16, Quiet, Active, Sizes, Location, Design
<2>4. pst'[p] # "priv" /\ pst'[p] # "drain"
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K0NCBxC, Quiet, Maps, Active, Sizes, Location, Design
<2>5. {r \in Rq : ph'[Loc(p)][r] \in {"run","ovl"} /\ rhit'[Loc(p)][r] /\ rpg'[Loc(p)][r] = p} = {}
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Quiet, Active, Sizes, Location, Design
<2>6. NHits(p)' = 0
  BY <2>1, <2>5, FS_EmptySet, SMTT(10), Sizes, Location, Design DEF NHits, Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>4, <2>6, SMTT(10), Sizes, Location, Design DEF K0NCBxC, mWgRR, Sizes, Location, Design
\* T2M-END R2M2218_PdROBase_PdQuietPostFromStructure


<1>wNNIMZlwkacCPwyuxp.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE BaseQuietConservation'
<2> USE ONLY <1>wNNIMZlwkacCPwyuxp, Sizes, Location, Design
<2>1. K7' /\ K16' /\ mWgRR'
  BY <1>Uyh, <1>CuHF, <1>OlWfbBkt7VW, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, Sizes, Location, Design
<2>2. QED BY <2>1, <1>K624W6Cd7LIzgoDg7o0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2219_PdROBase_PdD2Cqe_QuietConservation


<1>YgQmrGg.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE P_SI2'
 BY ONLY <1>YgQmrGg, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>SMQ1UmAL5iaIl8dau, <1>WipnktIb3Tt2O9, <1>B8uFJWPVI9dI, <1>jGg3R, <1>rUEzU8wbH, <1>dusdnIGW DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iH5VviW.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE P_SI4'
 BY ONLY <1>iH5VviW, Sizes, Location, Design, <1>MAS9GGFtJH2, <1>FNYHAwoI35diExU, <1>SMQ1UmAL5iaIl8dau, <1>WipnktIb3Tt2O9, <1>jGg3R, <1>eqPru0DKBMBu4, <1>qCz2hppQKY5spPu, <1>S9kRK0leNkDm DEF RO_ControlStep, RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dA2DxUC27TeIZYkQJPuth.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE QuietConservation'
<2> USE ONLY <1>dA2DxUC27TeIZYkQJPuth, Sizes, Location, Design
 <2>1. BaseQuietConservation' BY <1>wNNIMZlwkacCPwyuxp, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. P_SI1' /\ P_SI2' /\ STypeOK' /\ PrefcMatchesHolders'
 BY <1>hPx4uHS, <1>YgQmrGg, <1>FNYHAwoI35diExU, <1>g4ukMt7rga0IPw, <1>BK7DW38P3ADkqhbwg4h3Lsa, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>EjmNCRbt1, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2220_PdROExtra_Cqe


<1>Dwh5PGqSgO.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE TypInv'
<2> USE ONLY <1>Dwh5PGqSgO, Sizes, Location, Design
<2>1. CoreTypeOK' BY <1>PYxfe5K, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK' BY <1>FNYHAwoI35diExU, <1>g4ukMt7rga0IPw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF TypInv, Sizes, Location, Design
\* T2M-END R2M2703_PdROType_Cqe


<1> QED BY <1>dA2DxUC27TeIZYkQJPuth, <1>Dwh5PGqSgO, <1>iH5VviW, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_Cqe_01_02 SHA ec8292350f31f506aa7a0a119f786db639517097a82ffe9b6969801f65ee72a0
USE DEF V21_Inv_K14, V21_Inv_K5, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_QuarNoReg, V21_Inv_Strengthen, V22_T_hok, V22_T_nx, V22_T_pgn, V22_T_pr, V22_T_pst
HIDE DEF AuxType_8bb3fe86f1f5f291, AuxType_9ef278c147c12b12, NonnegativeNatFact, Part_Cqe_01_01, PositiveNatFact, V21_Inv_K16, V21_Inv_K8, V21_Inv_K9, V21_Inv_S1, V21_Inv_S2, V22_T_gen
THEOREM Part_Cqe_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE (NoStrayAccess)' /\ (P_SI2)' /\ (P_SI5)'
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

           no7yhkNAm(x) == LET p == InitPage(x) IN
             pst[p] = "drain" /\ led[p] \ {x} = {} /\ sled[p] = {} /\ ~KPinned(p)


           kgNnxyXUVr3(x) == LET p == InitPage(x) IN
             /\ pst' = [pst EXCEPT ![p] = IF no7yhkNAm(x) THEN "free" ELSE @]
             /\ pr' = [pr EXCEPT ![p] = IF no7yhkNAm(x) THEN 0 ELSE @]
             /\ pgn' = [pgn EXCEPT ![p] = IF no7yhkNAm(x) THEN 0 ELSE @]
             /\ plt' = [plt EXCEPT ![p] = IF no7yhkNAm(x) THEN 0 ELSE @]
             /\ led' = [led EXCEPT ![p] = @ \ {x}]
             /\ iv' = [iv EXCEPT ![x] = "cqe"]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_dpreOK, RO_E_sprefc, RO_Flat, RO_StableStates, RO_ControlStep, RO_SharedFieldsFrame, Ltilk, ckVW, bXD3, XAoD, ZzYU, v7av, Zwf5Kak, UTxM0oD, Btadh0, hgjUtY, DgHrMJ, UDzxF, NN85, FlLc, mCp6f, EfDhA, TO_H, OFH6nV, nU_pl, KRyh, SWs37, Q73Wr, cDvpy, aHUmFg, m0XQV, YAnOjz, owHnyB, Gpa5dVU, f9onk, fwbJ, mnFW, nOWk, Ha9G, f5DU, KZInRS, hq2umu, ROI9_, M7cq, u1j8N, ECDy, q4kPy, doDAh, YN04, kvUux, WsZW22, d654kx, jl8hSJt, XEsGoy, qryMJ, no7yhkNAm, kgNnxyXUVr3

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

<1>FNYHAwoI35diExU.        
 ASSUME NEW x \in Xids, Cqe(x)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>FNYHAwoI35diExU, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SMQ1UmAL5iaIl8dau.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>SMQ1UmAL5iaIl8dau, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>J0yx6oHL5UyrV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>B8uFJWPVI9dI.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>B8uFJWPVI9dI, Sizes, Location, Design, Design, SMTT(10) DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WipnktIb3Tt2O9.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE UNCHANGED <<spst,rpgS>>
 BY ONLY <1>WipnktIb3Tt2O9, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>B8uFJWPVI9dI, <1>rUEzU8wbH, <1>JJE0Tfox9Q, <1>yFQ846plk6kJ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>h8EXtq7BiLZ.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
<2> USE ONLY <1>h8EXtq7BiLZ, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>h8EXtq7BiLZ, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ylKAHsQ5CtyvX.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
<2> USE ONLY <1>ylKAHsQ5CtyvX, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ylKAHsQ5CtyvX, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BB3XCZfgVMtlT.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
<2> USE ONLY <1>BB3XCZfgVMtlT, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>BB3XCZfgVMtlT, V22_T_iv, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MAS9GGFtJH2.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE /\ \A z \in Xids : iv'[z]=iv[z] \/ iv'[z] \in {"cqe","failret"}
       /\ \A z \in Xids : xst'[z]=xst[z] \/ xst'[z] \in {"landed","failed"}
       /\ \A z \in Xids : hw'[z] \in {"issued","stop"} => hw[z] \in {"fly","issued","stop"}
<2> USE ONLY <1>MAS9GGFtJH2, Sizes, Location, Design
<2>1. K3 /\ hw \in [Xids -> {"none","fly","issued","stop"}]
       /\ iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
       /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>MAS9GGFtJH2, V22_T_hw, V22_T_iv, V22_T_xst, V21_Inv_K3, Sizes, Location, Design, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UMdPoPxVB4lT1F.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE \A z \in Xids : (hw'[z]="stop" /\ hok'[z] /\ xdst[z] \in Pages /\ Held(xdst[z],z)') =>
       ((hw[z]="stop" /\ hok[z] /\ Held(xdst[z],z)) \/ hw[z] \in {"fly","issued"})
<2> USE ONLY <1>UMdPoPxVB4lT1F, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
       /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
       /\ hw \in [Xids -> {"none","fly","issued","stop"}] /\ hok \in [Xids -> BOOLEAN]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>UMdPoPxVB4lT1F, V22_T_hok, V22_T_hw, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Held, Sizes, Location, Design
\* T2M-END R2M2200_PdROEffects_Cqe


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


<1>hdSGbSf.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE P_SI2'
 BY ONLY <1>hdSGbSf, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>SMQ1UmAL5iaIl8dau, <1>WipnktIb3Tt2O9, <1>B8uFJWPVI9dI, <1>jGg3R, <1>rUEzU8wbH, <1>dusdnIGW DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SzlTGwY.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE P_SI5'
 BY ONLY <1>SzlTGwY, Sizes, Location, Design, <1>MAS9GGFtJH2, <1>FNYHAwoI35diExU, <1>SMQ1UmAL5iaIl8dau, <1>WipnktIb3Tt2O9, <1>jGg3R, <1>BB3XCZfgVMtlT, <1>ylKAHsQ5CtyvX, <1>FVK4MYGoOHs3gti, <1>h8EXtq7BiLZ, <1>UMdPoPxVB4lT1F, <1>cU8s9xOg0OyR DEF RO_ControlStep, RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>w1A6qbKTB1.        
 ASSUME RO_SharedFieldsFrame
 PROVE TypInv => qryMJ
  BY ONLY <1>w1A6qbKTB1, Sizes, Location, Design, ZenonT(5) DEF TypInv, CoreTypeOK, qryMJ, Ltilk, ckVW, bXD3, XAoD, ZzYU, v7av, Zwf5Kak, UTxM0oD, Btadh0, hgjUtY, DgHrMJ, UDzxF, NN85, FlLc, mCp6f, EfDhA, TO_H, OFH6nV, nU_pl, KRyh, SWs37, Q73Wr, cDvpy, aHUmFg, m0XQV, YAnOjz, owHnyB, Gpa5dVU, f9onk, fwbJ, mnFW, nOWk, Ha9G, f5DU, KZInRS, hq2umu, ROI9_, M7cq, u1j8N, ECDy, q4kPy, doDAh, YN04, kvUux, WsZW22, d654kx, jl8hSJt, XEsGoy, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BVNGgr9i2.        
 ASSUME RO_SharedFieldsFrame
 PROVE PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY ONLY <1>BVNGgr9i2, Sizes, Location, Design, V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2532_PdRORead_PdProofBase


<1>gNQiVf.        
 ASSUME RO_SharedFieldsFrame
 PROVE K14 /\ UNCHANGED <<gen, kfly, kpin, krs>> => K14'
  BY ONLY <1>gNQiVf, Sizes, Location, Design, SMTT(5) DEF K14, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LEisEv.        
  ASSUME NEW x \in Xids, Cqe(x)
  , RO_SharedFieldsFrame
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>LEisEv, Sizes, Location, Design, ZenonT(5) DEF Cqe, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GXSf.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  , RO_SharedFieldsFrame
 PROVE K14'
<2> USE ONLY <1>GXSf, Sizes, Location, Design
<2>1. K14 /\ UNCHANGED <<gen, kfly, kpin, krs>>
  BY <1>BVNGgr9i2, SMTT(5), <1>LEisEv, V21_Inv_BaseSafety, V21_Inv_K14, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF Strengthen, Safety, BaseSafety, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>gNQiVf, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2543_PdRORead_PdCqeFrames

\* T2M-SCOPE R2M2544_PdRORead_PdCell_Cqe_K15
\* T2M-BODY R2M2544_PdRORead_PdCell_Cqe_K15
\* T2M-LOCAL-VISIBILITY

<1>X0CJrRFIKNWGcT.        
  ASSUME NEW x \in Xids, YN04, K2, InFl(x)
  , RO_SharedFieldsFrame
 PROVE x < nx
  BY ONLY <1>X0CJrRFIKNWGcT, Sizes, Location, Design, SMT DEF YN04, Xids, K2, InFl, RO_SharedFieldsFrame, Sizes, Location, Design


<1>jduzUFcavAAqcZxg.        
  ASSUME NEW x \in Xids, YN04, K1, K2, K3, InFl(x)
  , RO_SharedFieldsFrame
 PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>jduzUFcavAAqcZxg, Sizes, Location, Design
<2>1. x < nx
  BY <1>X0CJrRFIKNWGcT, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMT, Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2549_PdRORead_PdDataLemmas


<1>OiWQKDzT5l57hdMT.        
 ASSUME RO_SharedFieldsFrame
 PROVE /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY ONLY <1>OiWQKDzT5l57hdMT, Sizes, Location, Design, Sizes, SMTT(10) DEF PInst, DInst, Inst, NL, IsP, IsD, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XehDZiF5PihxKIJ6VM.        
  ASSUME NEW x \in Xids, YN04, K2, x < nx
  , RO_SharedFieldsFrame
 PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>XehDZiF5PihxKIJ6VM, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, YN04, Xids, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2548_PdRORead_D2Finite_PdFactsA

\* T2M-SCOPE R2M2550_PdRORead_D2Finite_PdDDataA

<1>n8wsWK8mjRXLmsOx1sUi.        
  ASSUME NEW x \in Xids, PinInv, InFl(x)
  , RO_SharedFieldsFrame
 PROVE xdst[x] \in Pages /\ x \in led[xdst[x]]
<2> USE ONLY <1>n8wsWK8mjRXLmsOx1sUi, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ YN04
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. x < nx /\ xdst[x] \in Pages
  BY <2>1, <1>X0CJrRFIKNWGcT, <1>jduzUFcavAAqcZxg, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K2, K3, K4, InFl, ExpPage, InitPage, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>APmmc4XzVlEDuRCTw6a9.        
  ASSUME NEW x \in Xids, PinInv, hw[x] = "fly"
  , RO_SharedFieldsFrame
 PROVE xsrc[x] \in Pages /\ Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>APmmc4XzVlEDuRCTw6a9, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ YN04
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, <1>X0CJrRFIKNWGcT, SMTT(10), Sizes, Location, Design DEF InFl, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2550_PdRORead_D2Finite_PdDDataA


<1>aWCdTIR.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  , RO_SharedFieldsFrame
 PROVE /\ iv[x] = "posted" /\ x < nx
        /\ InitPage(x) \in Pages /\ ExpPage(x) \in Pages
        /\ InitPage(x) # ExpPage(x) /\ x \in led[InitPage(x)]
<2> USE ONLY <1>aWCdTIR, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ YN04 /\ iv[x] = "posted"
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Cqe, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. x < nx /\ InitPage(x) # 0
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, YN04, Xids, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. InitPage(x) \in Pages /\ ExpPage(x) \in Pages
       /\ Loc(InitPage(x)) = InitInst(x) /\ Loc(ExpPage(x)) = ExpInst(x)
  BY <2>1, <2>2, <1>XehDZiF5PihxKIJ6VM, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, K2, YN04, Xids, RO_SharedFieldsFrame, Sizes, Location, Design
<2>5. x \in led[InitPage(x)]
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K4, RO_SharedFieldsFrame, Sizes, Location, Design
<2>6. QED BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>OiWQKDzT5l57hdMT, SMTT(10), Sizes, Location, Design DEF InitInst, ExpInst, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TghOJrzg.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  , RO_SharedFieldsFrame
 PROVE /\ kgNnxyXUVr3(x)
        /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,ph,rg,rpg,rpe,rx,rhit,
                       ptl,pvis,pqp,prefc,sfly,sled,xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,xst,xlt,nx,drep,crep,dsucc,gbad>>
<2> USE ONLY <1>TghOJrzg, Sizes, Location, Design
<2>1. K7 /\ nU_pl /\ m0XQV /\ owHnyB /\ Gpa5dVU /\ f9onk /\ KRyh /\ SWs37 /\ Q73Wr
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, SMTT(10), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. InitPage(x) \in Pages /\ x \in led[InitPage(x)]
  BY <1>aWCdTIR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. pst[InitPage(x)] # "free"
       /\ (pst[InitPage(x)] # "shared" => prefc[InitPage(x)] = 0)
       /\ (pst[InitPage(x)] # "quar" => pqp[InitPage(x)] = 0)
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K7, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. /\ EvidenceAt(InitPage(x),x)
       /\ iv' = [iv EXCEPT ![x] = "cqe"]
       /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,ph,rg,rpg,rpe,rx,rhit,
                       ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,xst,xlt,nx,drep,crep,dsucc,gbad>>
  BY <1>LEisEv, SMTT(10), Sizes, Location, Design DEF Cqe, InitPage, RO_SharedFieldsFrame, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, Design, SMTT(10), Sizes, Location DEF EvidenceAt, PageTo, AfterEv, PinBlocks, RO_SharedFieldsFrame, no7yhkNAm, kgNnxyXUVr3, nU_pl, m0XQV, owHnyB, Gpa5dVU, f9onk, KRyh, SWs37, Q73Wr, Sizes, Location, Design
\* T2M-END R2M2551_PdRORead_PdD2CqeEffect


<1>xijTxgohVII7HxRX.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  , RO_SharedFieldsFrame
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>xijTxgohVII7HxRX, Sizes, Location, Design
<2>1. NoFreeUnderRead /\ K14 /\ UDzxF /\ SWs37 /\ KRyh /\ nU_pl
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, SMTT(10), V21_Inv_K14, V21_Inv_NoFreeUnderRead, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. kgNnxyXUVr3(x) /\ UNCHANGED <<gen, kfly, kpin, krs>>
  BY <1>TghOJrzg, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>aWCdTIR, <1>n8wsWK8mjRXLmsOx1sUi, <1>APmmc4XzVlEDuRCTw6a9, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K14, KHeld, KPinned, NL, NoFreeUnderRead, no7yhkNAm, kgNnxyXUVr3, UDzxF, SWs37, KRyh, nU_pl, Tag, InitPage, KPages, SHeld, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2555_PdRORead_PdD2Cqe_NoFreeUnderRead


<1>qq9.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  , RO_SharedFieldsFrame
 PROVE K2'
<2> USE ONLY <1>qq9, Sizes, Location, Design
<2>1. K2 /\ ECDy
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, qryMJ, BaseSafety, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. kgNnxyXUVr3(x) /\ UNCHANGED <<gen, hd, hok, hp, hw, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>TghOJrzg, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>aWCdTIR, <1>n8wsWK8mjRXLmsOx1sUi, <1>APmmc4XzVlEDuRCTw6a9, Design, Location, Sizes, SMTT(10) DEF InitPage, DInst, ExpInst, ExpPage, InitInst, InitPage, Inst, IsD, IsP, K2, KPinned, NL, no7yhkNAm, kgNnxyXUVr3, ECDy, Tag, KPages, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2557_PdRORead_PdD2Cqe_K2


<1>yfX.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  , RO_SharedFieldsFrame
 PROVE K3'
<2> DEFINE StepK3(q) ==
        /\ (iv[q] \in {"none", "nopost", "reg"}) <=> (hw[q] = "none")
        /\ iv[q] = "reg" => (xk[q] = "wr" /\ PReg /\ xst[q] = "posted")
        /\ iv[q] = "cqe" => hw[q] \in CqeHw(q)
        /\ hw[q] = "issued" => xk[q] = "wr"
        /\ xst[q] = "revoked" => iv[q] = "nopost"
        /\ xst[q] = "landed" => (hw[q] = "stop" /\ hok[q] /\ xlt[q] = xnt[q])   \* RB-002：只有 lt = 计划才算落地
        /\ (xk[q] = "rd" /\ iv[q] \notin {"none", "nopost"}) => xlt[q] = xnt[q]   \* RB-002：pull 的 D 只在 lt = 计划时发 READ
        /\ xst[q] = "failed" => IF xk[q] = "wr" THEN (hw[q] = "stop" /\ hok[q] /\ xlt[q] # xnt[q])   \* D-082：push 的 failed 只来自 BAD_LEN
                                 ELSE ((iv[q] = "cqe" /\ hw[q] = "stop" /\ ~hok[q]) \/ iv[q] = "nopost")
        /\ InFl(q) => (xst[q] = "posted" /\ (iv[q] \in {"posted", "failret"} \/ (iv[q] = "cqe" /\ hw[q] = "issued" /\ ~hok[q])))
<2> HIDE DEF StepK3
<2>1. K3 /\ TypInv BY ONLY <1>yfX, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>1a. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>yfX, V22_T_iv, SMTT(5)

<2>2. /\ x \in Xids /\ iv[x]="posted" /\ hw[x] \in CqeHw(x)
       /\ iv'=[iv EXCEPT ![x]="cqe"]
       /\ UNCHANGED <<hok,hw,xk,xlt,xnt,xst>>
 BY ONLY <1>yfX, SMTT(10), Sizes, Location, Design DEF Cqe, CqeHw, Sizes, Location, Design
<2>3. ASSUME NEW y \in Xids PROVE StepK3(y)'
 <3>1. CASE y=x
  <4>1. StepK3(x) BY ONLY <2>1, <2>2, Sizes, Location, Design DEF K3, StepK3, Sizes, Location, Design
  <4>2. QED BY ONLY <2>1a, <2>2, <2>3, <3>1, <4>1, Design, SMTT(10), Sizes, Location DEF StepK3, CqeHw, InFl, Sizes, Location, Design
 <3>2. CASE y#x
  <4>1. iv'[y]=iv[y] BY ONLY <2>1a, <2>2, <2>3, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. QED BY ONLY <2>1, <2>2, <2>3, <4>1, SMTT(10), Sizes, Location, Design DEF K3, StepK3, CqeHw, InFl, Sizes, Location, Design
 <3>3. QED BY ONLY <3>1, <3>2, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY ONLY <2>3, Sizes, Location, Design DEF K3, StepK3, Sizes, Location, Design
\* T2M-END R2M2558_PdRORead_PdCell_Cqe_K3


<1>R9u.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  , RO_SharedFieldsFrame
 PROVE K4'
<2> USE ONLY <1>R9u, Sizes, Location, Design
<2>1. K4 /\ K1 /\ K2 /\ YN04 /\ m0XQV /\ ECDy
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K2, V21_Inv_K4, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, qryMJ, BaseSafety, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. kgNnxyXUVr3(x) /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hok, hp, hw, nx, rd, rp, rt, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>TghOJrzg, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>aWCdTIR, <1>aWCdTIR, <1>n8wsWK8mjRXLmsOx1sUi, <1>APmmc4XzVlEDuRCTw6a9, Design, Location, Sizes, SMTT(10) DEF YN04, Xids, DInst, ExpInst, ExpPage, InitInst, InitPage, Inst, IsD, IsP, K1, K2, K4, KPinned, NL, no7yhkNAm, kgNnxyXUVr3, m0XQV, ECDy, Tag, KPages, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2559_PdRORead_PdD2Cqe_K4

\* T2M-SCOPE R2M2560_PdRORead_PdD2Cqe_K5

<1>oVc.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  , RO_SharedFieldsFrame
 PROVE K5'
<2> USE ONLY <1>oVc, Sizes, Location, Design
<2>1. K5 /\ m0XQV /\ SWs37 /\ KRyh /\ nU_pl
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, qryMJ, BaseSafety, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. kgNnxyXUVr3(x) /\ UNCHANGED <<xg, xr>>
  BY <1>TghOJrzg, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>aWCdTIR, <1>n8wsWK8mjRXLmsOx1sUi, <1>APmmc4XzVlEDuRCTw6a9, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K5, KPinned, NL, no7yhkNAm, kgNnxyXUVr3, OwnedBy, m0XQV, SWs37, KRyh, nU_pl, Tag, InitPage, KPages, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2560_PdRORead_PdD2Cqe_K5

\* T2M-SCOPE R2M2561_PdRORead_PdD2Cqe_K6

<1>mnv.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  , RO_SharedFieldsFrame
 PROVE K6'
<2> USE ONLY <1>mnv, Sizes, Location, Design
<2>1. K6 /\ SWs37 /\ KRyh /\ nU_pl
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, qryMJ, BaseSafety, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. kgNnxyXUVr3(x) /\ UNCHANGED <<gen, sfly, sled>>
  BY <1>TghOJrzg, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>aWCdTIR, <1>n8wsWK8mjRXLmsOx1sUi, <1>APmmc4XzVlEDuRCTw6a9, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K6, KPinned, NL, no7yhkNAm, kgNnxyXUVr3, OwnedBy, SWs37, KRyh, nU_pl, Tag, InitPage, KPages, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2561_PdRORead_PdD2Cqe_K6


<1>i4tpO2RomEdsrVjQ0.        
  ASSUME NEW x \in Xids, K2', K3', K4', YN04', InFl(x)'
  , RO_SharedFieldsFrame
 PROVE /\ xdst'[x] \in Pages /\ x \in led'[xdst'[x]]
        /\ (hw'[x] = "fly" => xsrc'[x] \in Pages /\ x \in led'[xsrc'[x]])
<2> USE ONLY <1>i4tpO2RomEdsrVjQ0, Sizes, Location, Design
<2>1. x < nx'
  BY Sizes, SMTT(10), Location, Design DEF K2, YN04, Xids, InFl, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. /\ xst'[x] = "posted"
       /\ iv'[x] \in {"posted","failret","cqe"}
       /\ (hw'[x] = "fly" => iv'[x] \in {"posted","failret"})
       /\ (xk'[x] = "rd" => iv'[x] \in {"posted","failret"})
  BY SMTT(10), Sizes, Location, Design DEF K3, InFl, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. ExpPage(x)' \in Pages /\ InitPage(x)' \in Pages /\ xk'[x] \in {"wr","rd"}
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K2, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. x \in led'[ExpPage(x)']
       /\ (iv'[x] \in {"posted","failret"} => x \in led'[InitPage(x)'])
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K4, RO_SharedFieldsFrame, Sizes, Location, Design
<2>5. QED BY <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF ExpPage, InitPage, RO_SharedFieldsFrame, Sizes, Location, Design


<1>cp8Y1TSqF26Ar2vANAR.        
  ASSUME K2', K3', K4', K5', K6', K14', YN04', NoFreeUnderRead'
  , RO_SharedFieldsFrame
 PROVE NoStrayAccess'
<2> USE ONLY <1>cp8Y1TSqF26Ar2vANAR, Sizes, Location, Design
<2>1. \A x \in Xids : Writing(x)' => Held(xdst[x],x)'
  BY <1>i4tpO2RomEdsrVjQ0, SMTT(10), Sizes, Location, Design DEF Writing, K5, OwnedBy, Held, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. \A x \in Xids : hw'[x] = "fly" => Held(xsrc[x],x)'
  BY <1>i4tpO2RomEdsrVjQ0, SMTT(10), Sizes, Location, Design DEF InFl, K5, OwnedBy, Held, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. \A p \in Pages : \A t \in sfly'[p] :
       \/ pst'[p] \in {"priv","drain","quar"} /\ pr'[p] = t[1] /\ pgn'[p] = t[2]
       \/ pst'[p] = "shared" /\ IsD(Loc(p))
  BY SMTT(10), Sizes, Location, Design DEF K6, OwnedBy, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. \A i \in Inst, s \in KSlots : kfly'[i][s] => \A e \in krs'[i][s] : KHeld(e)'
  BY SMTT(10), Sizes, Location, Design DEF K14, NoFreeUnderRead, RO_SharedFieldsFrame, Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF NoStrayAccess, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2562_PdRORead_PdD2SafetyFromStructure


<1>HhDUBrV3cVRFge.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  , RO_SharedFieldsFrame
 PROVE NoStrayAccess'
<2> USE ONLY <1>HhDUBrV3cVRFge, Sizes, Location, Design
<2>1. K2' /\ K3' /\ K4' /\ K5' /\ K6' /\ K14' /\ NoFreeUnderRead'
  BY <1>qq9, <1>yfX, <1>R9u, <1>oVc, <1>mnv, <1>GXSf, <1>xijTxgohVII7HxRX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. YN04 /\ UNCHANGED nx
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, <1>LEisEv, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. YN04' BY <2>2, SMTT(10), Sizes, Location, Design DEF YN04, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>cp8Y1TSqF26Ar2vANAR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2563_PdRORead_PdD2Cqe_NoStrayAccess


<1>pHxy6iMgAewGK9VgP.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE NoStrayAccess'
<2> USE ONLY <1>pHxy6iMgAewGK9VgP, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>WipnktIb3Tt2O9, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. NoStrayAccess'
 BY <2>1, <1>HhDUBrV3cVRFge, <1>w1A6qbKTB1, V21_Inv_NoStrayAccess, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2564_PdROReadCell_Cqe_NoStrayAccess


<1> QED BY <1>pHxy6iMgAewGK9VgP, <1>hdSGbSf, <1>SzlTGwY, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_Cqe_02_01 SHA 83ea27625ad041073b3961a1c1ebcb6b09e802fcf6e7aa74aa31b2e39b37f3a1
USE DEF V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_SI8, V22_T_gen
HIDE DEF Part_Cqe_01_02, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K14, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V22_T_hok
THEOREM Part_Cqe_02_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE (SharedLedRef)' /\ (NoEvictUnderRDMA)' /\ (P_SI1)' /\ (PrefcMatchesHolders)' /\ (SI8)' /\ (K12)' /\ (ReadOwnLanded)'
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

           UlVxe(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])


           kYyEb(m) == m.t = "hello" => m.fr \in Inst


           BTg7I(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))


           Bxryv(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))


           XTUuY(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])


           Gf8VR(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])


           l7paO(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")


           RPcfz(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)


           G3Uin(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))


           xAvu0j(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))


           BmN6sl4(m) ==
             /\ UlVxe(m)
             /\ kYyEb(m)
             /\ BTg7I(m)
             /\ Bxryv(m)
             /\ XTUuY(m)
             /\ Gf8VR(m)
             /\ l7paO(m)
             /\ RPcfz(m)
             /\ G3Uin(m)
             /\ xAvu0j(m)

           \* T2M-LOCAL-VISIBILITY

           PKE_Cqe(x) ==
            /\ iv[x]="posted" /\ hw[x] \in CqeHw(x)
            /\ iv'=[iv EXCEPT ![x]="cqe"]
            /\ net'=net \cup {IF xk[x]="wr" THEN Msg("notice",Loc(xsrc[x]),xd[x],xr[x],xg[x],x,xlt[x],1,hok[x]) ELSE Msg("relsrc",Loc(xdst[x]),xp[x],xr[x],xg[x],x,0,0,hok[x])}
            /\ UNCHANGED <<gen,hp,hd,nx,xr,xg,xdst,xsrc,xlt,hw,hok,xk,drep,dsucc>>

           \* T2M-LOCAL-VISIBILITY

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

           wOTr_ == gen \in [Rq -> 0..MG]


           Qjrp == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           vdfp == rp \in [Rq -> {0} \cup Inst]


           Gi91 == rd \in [Rq -> {0} \cup Inst]


           f9Jo == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           qC4t == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           dfknOma == alive \in [Inst -> BOOLEAN]


           TiBl9dL == nfail \in 0..MaxFail


           nvVdwJ == torn \in [Inst -> SUBSET Inst]


           kyOog2 == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           UUdTOK == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           dMRAk == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           lwx7 == ph \in [Inst -> [Rq -> PhSet]]


           azLu == rg \in [Inst -> [Rq -> 0..MG]]


           T2_wJ == rpg \in [Inst -> [Rq -> 0..NP]]


           DRkCp == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           u6eb == rx \in [Inst -> [Rq -> 0..MX]]


           WFFocH == rhit \in [Inst -> [Rq -> BOOLEAN]]


           mWgRR == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           voSc == pr \in [Pages -> 0..NR]


           ejARA == pgn \in [Pages -> 0..MG]


           nhDFh == plt \in [Pages -> 0..PS]


           Oet5P == ptl \in [Pages -> -1..PS]


           toA96a == pvis \in [Pages -> BOOLEAN]


           CQcwS == led \in [Pages -> SUBSET Xids]


           pgoLyw == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           gwX1nH == sled \in [Pages -> SUBSET (Rq \X Gens)]


           uhaZUCa == prefc \in [Pages -> 0..NR]


           j9ZB2 == pqp \in [Pages -> {0} \cup Inst]


           tOrh == xr \in [Xids -> 0..NR]


           oZ1G == xg \in [Xids -> 0..MG]


           TMQx == xk \in [Xids -> {"none", "wr", "rd"}]


           vvyr == xp \in [Xids -> {0} \cup Inst]


           FBnj == xd \in [Xids -> {0} \cup Inst]


           Sbgpxn == xsrc \in [Xids -> 0..NP]


           tP64Zt == xdst \in [Xids -> 0..NP]


           Rl_wH == xnt \in [Xids -> 0..PS]


           JojO == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           NFMkE == hok \in [Xids -> BOOLEAN]


           vQ8m == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           tMnUG == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           Og_ZB == xlt \in [Xids -> 0..PS]


           NHqB == nx \in 1..(MX + 1)


           j95de == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           jnT8ZH == drep \in [Rq -> [Gens -> 0..2]]


           fikvOb == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           wBRWE5u == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           Le6TxG == gbad \in BOOLEAN


           soyHJ == wOTr_ /\ Qjrp /\ vdfp /\ Gi91 /\ f9Jo /\ qC4t /\ dfknOma /\ TiBl9dL /\ nvVdwJ /\ kyOog2 /\ UUdTOK /\ dMRAk /\ lwx7 /\ azLu /\ T2_wJ /\ DRkCp /\ u6eb /\ WFFocH /\ mWgRR /\ voSc /\ ejARA /\ nhDFh /\ Oet5P /\ toA96a /\ CQcwS /\ pgoLyw /\ gwX1nH /\ uhaZUCa /\ j9ZB2 /\ tOrh /\ oZ1G /\ TMQx /\ vvyr /\ FBnj /\ Sbgpxn /\ tP64Zt /\ Rl_wH /\ JojO /\ NFMkE /\ vQ8m /\ tMnUG /\ Og_ZB /\ NHqB /\ j95de /\ jnT8ZH /\ fikvOb /\ wBRWE5u /\ Le6TxG

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, UlVxe, kYyEb, BTg7I, Bxryv, XTUuY, Gf8VR, l7paO, RPcfz, G3Uin, xAvu0j, BmN6sl4, PKE_Cqe, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_dpreOK, RO_E_sprefc, RO_Flat, RO_StableStates, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FdYjaJP.         (\A m \in net' : BmN6sl4(m)') => K12'
  BY Sizes, Location, Design DEF K12, BmN6sl4, UlVxe, kYyEb, BTg7I, Bxryv, XTUuY, Gf8VR, l7paO, RPcfz, G3Uin, xAvu0j, Sizes, Location, Design
\* T2M-END R2M0439_PdPK12Support


<1>txChW22fyx.        
 ASSUME NEW x \in Xids, Cqe(x)
 PROVE PKE_Cqe(x)
 BY ONLY <1>txChW22fyx, Sizes, Location, Design, Design, Sizes, SMTT(10) DEF PKE_Cqe, Cqe, Msg, ghV, instV, kV, recV, rtV, CqeHw, Inst, NL, PInst, DInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XZV8C1.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), NEW m \in net'
 PROVE UlVxe(m)'
<2> HIDE DEF Cqe, CoreTypeOK, STypeOK, PKE_Cqe
<2>oldInv. K12
 BY ONLY <1>XZV8C1, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_Cqe(x)
 BY ONLY <1>XZV8C1, <1>txChW22fyx, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<gen>>
 BY ONLY <2>effect, SMTT(5) DEF PKE_Cqe
<2>keyInv. K2
 BY ONLY <1>XZV8C1, V21_Inv_K2, Sizes, Location, Design, SMTT(5)
<2>nxType. nx \in 1..(MX+1)
 BY ONLY <1>XZV8C1, V22_T_nx, SMTT(5)
<2>integers. x \in Int /\ nx \in Int
 BY ONLY <1>XZV8C1, <2>nxType, Sizes, SMTT(5) DEF Xids, Sizes
<2>mode. Mode \in {"push","pull"}
 BY ONLY Design, SMTT(5) DEF Design
<2>posted. iv[x]="posted"
 BY ONLY <2>effect, SMTT(5) DEF PKE_Cqe
<2>keys. x<nx /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x]<=gen[xr[x]] /\
           (xk[x]="wr" => Mode="push") /\ (xk[x]#"wr" => Mode="pull")
 BY ONLY <1>XZV8C1, <2>keyInv, <2>posted, <2>integers, <2>mode, SMTT(5) DEF K2
<2>old. CASE m \in net
 <3>was. UlVxe(m)
  BY ONLY <2>oldInv, <2>old, SMTT(5) DEF K12, UlVxe
 <3>qed. QED BY ONLY <3>was, <2>frame, SMTT(5) DEF UlVxe
<2>new. CASE m \notin net
 BY ONLY <1>XZV8C1, <2>new, <2>effect, <2>keys, SMTT(5) DEF PKE_Cqe, Msg, UlVxe
<2>qed. QED BY ONLY <2>old, <2>new, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>SDes2Z.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), NEW m \in net'
 PROVE kYyEb(m)'
<2> HIDE DEF Cqe, CoreTypeOK, STypeOK, PKE_Cqe
<2>oldInv. K12
 BY ONLY <1>SDes2Z, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_Cqe(x)
 BY ONLY <1>SDes2Z, <1>txChW22fyx, Sizes, Location, Design, SMTT(5)
<2>old. CASE m \in net
 <3>was. kYyEb(m)
  BY ONLY <2>oldInv, <2>old, SMTT(5) DEF K12, kYyEb
 <3>qed. QED BY ONLY <3>was, SMTT(5) DEF kYyEb
<2>new. CASE m \notin net
 BY ONLY <1>SDes2Z, <2>new, <2>effect, SMTT(5) DEF PKE_Cqe, Msg, kYyEb
<2>qed. QED BY ONLY <2>old, <2>new, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>pi3H7r.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), NEW m \in net'
 PROVE BTg7I(m)'
<2> HIDE DEF Cqe, CoreTypeOK, STypeOK, PKE_Cqe
<2>oldInv. K12
 BY ONLY <1>pi3H7r, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_Cqe(x)
 BY ONLY <1>pi3H7r, <1>txChW22fyx, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<hp,hd>>
 BY ONLY <2>effect, SMTT(5) DEF PKE_Cqe
<2>old. CASE m \in net
 <3>was. BTg7I(m)
  BY ONLY <2>oldInv, <2>old, SMTT(5) DEF K12, BTg7I
 <3>qed. QED BY ONLY <3>was, <2>frame, SMTT(5) DEF BTg7I
<2>new. CASE m \notin net
 BY ONLY <1>pi3H7r, <2>new, <2>effect, SMTT(5) DEF PKE_Cqe, Msg, BTg7I
<2>qed. QED BY ONLY <2>old, <2>new, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>Fm73Pt.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), NEW m \in net'
 PROVE Bxryv(m)'
<2> HIDE DEF Cqe, CoreTypeOK, STypeOK, PKE_Cqe
<2>oldInv. K12
 BY ONLY <1>Fm73Pt, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_Cqe(x)
 BY ONLY <1>Fm73Pt, <1>txChW22fyx, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<nx,xr,xg,xdst,hp,hd>>
 BY ONLY <2>effect, SMTT(5) DEF PKE_Cqe
<2>old. CASE m \in net
 <3>was. Bxryv(m)
  BY ONLY <2>oldInv, <2>old, SMTT(5) DEF K12, Bxryv
 <3>qed. QED BY ONLY <3>was, <2>frame, SMTT(5) DEF Bxryv
<2>new. CASE m \notin net
 BY ONLY <1>Fm73Pt, <2>new, <2>effect, SMTT(5) DEF PKE_Cqe, Msg, Bxryv
<2>qed. QED BY ONLY <2>old, <2>new, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>yUhw7P.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), NEW m \in net'
 PROVE XTUuY(m)'
<2> HIDE DEF Cqe, CoreTypeOK, STypeOK, PKE_Cqe
<2>oldInv. K12
 BY ONLY <1>yUhw7P, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_Cqe(x)
 BY ONLY <1>yUhw7P, <1>txChW22fyx, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<nx,xr,xg,xsrc,xlt,hp,hd>>
 BY ONLY <2>effect, SMTT(5) DEF PKE_Cqe
<2>old. CASE m \in net
 <3>was. XTUuY(m)
  BY ONLY <2>oldInv, <2>old, SMTT(5) DEF K12, XTUuY
 <3>qed. QED BY ONLY <3>was, <2>frame, SMTT(5) DEF XTUuY
<2>new. CASE m \notin net
 BY ONLY <1>yUhw7P, <2>new, <2>effect, SMTT(5) DEF PKE_Cqe, Msg, XTUuY
<2>qed. QED BY ONLY <2>old, <2>new, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>mBhyPt.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), NEW m \in net'
 PROVE Gf8VR(m)'
<2> HIDE DEF Cqe, CoreTypeOK, STypeOK, PKE_Cqe
<2>oldInv. K12
 BY ONLY <1>mBhyPt, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_Cqe(x)
 BY ONLY <1>mBhyPt, <1>txChW22fyx, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<nx,xr,xg,xlt,hw,hok,xk>>
 BY ONLY <2>effect, SMTT(5) DEF PKE_Cqe
<2>keyInv. K2
 BY ONLY <1>mBhyPt, V21_Inv_K2, Sizes, Location, Design, SMTT(5)
<2>nxType. nx \in 1..(MX+1)
 BY ONLY <1>mBhyPt, V22_T_nx, SMTT(5)
<2>integers. x \in Int /\ nx \in Int
 BY ONLY <1>mBhyPt, <2>nxType, Sizes, SMTT(5) DEF Xids, Sizes
<2>mode. Mode \in {"push","pull"}
 BY ONLY Design, SMTT(5) DEF Design
<2>posted. iv[x]="posted"
 BY ONLY <2>effect, SMTT(5) DEF PKE_Cqe
<2>keys. x<nx /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x]<=gen[xr[x]] /\
           (xk[x]="wr" => Mode="push") /\ (xk[x]#"wr" => Mode="pull")
 BY ONLY <1>mBhyPt, <2>keyInv, <2>posted, <2>integers, <2>mode, SMTT(5) DEF K2
<2>ivType. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 BY ONLY <1>mBhyPt, V22_T_iv, SMTT(5)
<2>ivEffect. iv[x]="posted" /\ iv'=[iv EXCEPT ![x]="cqe"]
 BY ONLY <2>effect, SMTT(5) DEF PKE_Cqe
<2>old. CASE m \in net
 <3>was. Gf8VR(m)
  BY ONLY <2>oldInv, <2>old, SMTT(5) DEF K12, Gf8VR
 <3>domain. m.t="notice" => m.x \in Xids
  BY ONLY <1>mBhyPt, <2>old, V21_Inv_MsgXDomain, Sizes, Location, Design, SMTT(5) DEF MsgXDomain
 <3>ivKeep. m.t="notice" => iv'[m.x]=iv[m.x]
  BY ONLY <1>mBhyPt, <2>ivType, <2>ivEffect, <3>was, <3>domain, SMTT(5) DEF Gf8VR
 <3>qed. QED BY ONLY <3>was, <2>frame, <3>ivKeep, SMTT(5) DEF Gf8VR, CqeHw
<2>new. CASE m \notin net
 BY ONLY <1>mBhyPt, <2>new, <2>effect, <2>keys, <2>ivType, SMTT(5) DEF PKE_Cqe, Msg, Gf8VR, CqeHw
<2>qed. QED BY ONLY <2>old, <2>new, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>oNUS7Z.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), NEW m \in net'
 PROVE l7paO(m)'
<2> HIDE DEF Cqe, CoreTypeOK, STypeOK, PKE_Cqe
<2>oldInv. K12
 BY ONLY <1>oNUS7Z, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_Cqe(x)
 BY ONLY <1>oNUS7Z, <1>txChW22fyx, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<nx,xr,xg>>
 BY ONLY <2>effect, SMTT(5) DEF PKE_Cqe
<2>ivType. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 BY ONLY <1>oNUS7Z, V22_T_iv, SMTT(5)
<2>ivEffect. iv[x]="posted" /\ iv'=[iv EXCEPT ![x]="cqe"]
 BY ONLY <2>effect, SMTT(5) DEF PKE_Cqe
<2>old. CASE m \in net
 <3>was. l7paO(m)
  BY ONLY <2>oldInv, <2>old, SMTT(5) DEF K12, l7paO
 <3>domain. m.t="nopost" => m.x \in Xids
  BY ONLY <1>oNUS7Z, <2>old, V21_Inv_MsgXDomain, Sizes, Location, Design, SMTT(5) DEF MsgXDomain
 <3>ivKeep. m.t="nopost" => iv'[m.x]=iv[m.x]
  BY ONLY <1>oNUS7Z, <2>ivType, <2>ivEffect, <3>was, <3>domain, SMTT(5) DEF l7paO
 <3>qed. QED BY ONLY <3>was, <2>frame, <3>ivKeep, SMTT(5) DEF l7paO
<2>new. CASE m \notin net
 BY ONLY <1>oNUS7Z, <2>new, <2>effect, SMTT(5) DEF PKE_Cqe, Msg, l7paO
<2>qed. QED BY ONLY <2>old, <2>new, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>AsoORT.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), NEW m \in net'
 PROVE RPcfz(m)'
<2> HIDE DEF Cqe, CoreTypeOK, STypeOK, PKE_Cqe
<2>oldInv. K12
 BY ONLY <1>AsoORT, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_Cqe(x)
 BY ONLY <1>AsoORT, <1>txChW22fyx, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<nx,xr,xg>>
 BY ONLY <2>effect, SMTT(5) DEF PKE_Cqe
<2>old. CASE m \in net
 <3>was. RPcfz(m)
  BY ONLY <2>oldInv, <2>old, SMTT(5) DEF K12, RPcfz
 <3>qed. QED BY ONLY <3>was, <2>frame, SMTT(5) DEF RPcfz
<2>new. CASE m \notin net
 BY ONLY <1>AsoORT, <2>new, <2>effect, SMTT(5) DEF PKE_Cqe, Msg, RPcfz
<2>qed. QED BY ONLY <2>old, <2>new, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>JpvaYx.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), NEW m \in net'
 PROVE G3Uin(m)'
<2> HIDE DEF Cqe, CoreTypeOK, STypeOK, PKE_Cqe
<2>oldInv. K12
 BY ONLY <1>JpvaYx, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_Cqe(x)
 BY ONLY <1>JpvaYx, <1>txChW22fyx, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<nx,xr,xg,hw,hok>>
 BY ONLY <2>effect, SMTT(5) DEF PKE_Cqe
<2>keyInv. K2
 BY ONLY <1>JpvaYx, V21_Inv_K2, Sizes, Location, Design, SMTT(5)
<2>nxType. nx \in 1..(MX+1)
 BY ONLY <1>JpvaYx, V22_T_nx, SMTT(5)
<2>integers. x \in Int /\ nx \in Int
 BY ONLY <1>JpvaYx, <2>nxType, Sizes, SMTT(5) DEF Xids, Sizes
<2>mode. Mode \in {"push","pull"}
 BY ONLY Design, SMTT(5) DEF Design
<2>posted. iv[x]="posted"
 BY ONLY <2>effect, SMTT(5) DEF PKE_Cqe
<2>keys. x<nx /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x]<=gen[xr[x]] /\
           (xk[x]="wr" => Mode="push") /\ (xk[x]#"wr" => Mode="pull")
 BY ONLY <1>JpvaYx, <2>keyInv, <2>posted, <2>integers, <2>mode, SMTT(5) DEF K2
<2>ivType. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 BY ONLY <1>JpvaYx, V22_T_iv, SMTT(5)
<2>ivEffect. iv[x]="posted" /\ iv'=[iv EXCEPT ![x]="cqe"]
 BY ONLY <2>effect, SMTT(5) DEF PKE_Cqe
<2>old. CASE m \in net
 <3>was. G3Uin(m)
  BY ONLY <2>oldInv, <2>old, SMTT(5) DEF K12, G3Uin
 <3>domain. m.t="relsrc" => m.x \in Xids
  BY ONLY <1>JpvaYx, <2>old, V21_Inv_MsgXDomain, Sizes, Location, Design, SMTT(5) DEF MsgXDomain
 <3>ivKeep. m.t="relsrc" => iv'[m.x]=iv[m.x]
  BY ONLY <1>JpvaYx, <2>ivType, <2>ivEffect, <3>was, <3>domain, SMTT(5) DEF G3Uin
 <3>qed. QED BY ONLY <3>was, <2>frame, <3>ivKeep, SMTT(5) DEF G3Uin
<2>new. CASE m \notin net
 BY ONLY <1>JpvaYx, <2>new, <2>effect, <2>keys, <2>ivType, SMTT(5) DEF PKE_Cqe, Msg, G3Uin, CqeHw
<2>qed. QED BY ONLY <2>old, <2>new, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>ZOoM9Eh.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), NEW m \in net'
 PROVE xAvu0j(m)'
<2> HIDE DEF Cqe, CoreTypeOK, STypeOK, PKE_Cqe
<2>oldInv. K12
 BY ONLY <1>ZOoM9Eh, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_Cqe(x)
 BY ONLY <1>ZOoM9Eh, <1>txChW22fyx, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<hd,drep,dsucc>>
 BY ONLY <2>effect, SMTT(5) DEF PKE_Cqe
<2>old. CASE m \in net
 <3>was. xAvu0j(m)
  BY ONLY <2>oldInv, <2>old, SMTT(5) DEF K12, xAvu0j
 <3>qed. QED BY ONLY <3>was, <2>frame, SMTT(5) DEF xAvu0j
<2>new. CASE m \notin net
 BY ONLY <1>ZOoM9Eh, <2>new, <2>effect, SMTT(5) DEF PKE_Cqe, Msg, xAvu0j
<2>qed. QED BY ONLY <2>old, <2>new, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>wgZP4t.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE K12'
<2> USE ONLY <1>wgZP4t, Sizes, Location, Design
<2>1. ASSUME NEW m \in net' PROVE BmN6sl4(m)'
  BY <1>XZV8C1, <1>SDes2Z, <1>pi3H7r, <1>Fm73Pt, <1>yUhw7P, <1>mBhyPt, <1>oNUS7Z, <1>AsoORT, <1>JpvaYx, <1>ZOoM9Eh, Sizes, Location, Design DEF BmN6sl4, Sizes, Location, Design
<2>2. QED BY <2>1, <1>FdYjaJP, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0440_PdPK12_Cqe


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

<1>FNYHAwoI35diExU.        
 ASSUME NEW x \in Xids, Cqe(x)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>FNYHAwoI35diExU, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SMQ1UmAL5iaIl8dau.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>SMQ1UmAL5iaIl8dau, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>J0yx6oHL5UyrV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>B8uFJWPVI9dI.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>B8uFJWPVI9dI, Sizes, Location, Design, Design, SMTT(10) DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WipnktIb3Tt2O9.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE UNCHANGED <<spst,rpgS>>
 BY ONLY <1>WipnktIb3Tt2O9, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>B8uFJWPVI9dI, <1>rUEzU8wbH, <1>JJE0Tfox9Q, <1>yFQ846plk6kJ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>h8EXtq7BiLZ.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
<2> USE ONLY <1>h8EXtq7BiLZ, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>h8EXtq7BiLZ, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eqPru0DKBMBu4.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
<2> USE ONLY <1>eqPru0DKBMBu4, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>eqPru0DKBMBu4, V22_T_hw, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T2PzhtCg9Wchg5f.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE gen' \in [Rq -> 0..MG] /\ \A r \in Rq : gen'[r]>=gen[r]
<2> USE ONLY <1>T2PzhtCg9Wchg5f, Sizes, Location, Design
<2>1. gen \in [Rq -> 0..MG]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>T2PzhtCg9Wchg5f, V22_T_gen, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>z50D1zrk4pVWHUbQ.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x)
 PROVE \A x \in Xids : xst'[x]="posted" => xst[x]="posted"
<2> USE ONLY <1>z50D1zrk4pVWHUbQ, Sizes, Location, Design
<2>1. xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>z50D1zrk4pVWHUbQ, V22_T_xst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ipSpMEBRlYlqSHnjMprRc6o.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>ipSpMEBRlYlqSHnjMprRc6o, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>BhJJoZwTfyo0ME DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>n3Bv90T.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE SI8'
 BY ONLY <1>n3Bv90T, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>SMQ1UmAL5iaIl8dau, <1>z50D1zrk4pVWHUbQ, <1>yYTbap2jtpor DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wocJNkIP4fpH3cY5cRc7.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>wocJNkIP4fpH3cY5cRc7, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>SMQ1UmAL5iaIl8dau, <1>WipnktIb3Tt2O9, <1>jGg3R, <1>eqPru0DKBMBu4, <1>YraYIuuP0dXpCHZH DEF RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EOPvAuZ.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE P_SI1'
 BY ONLY <1>EOPvAuZ, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>SMQ1UmAL5iaIl8dau, <1>WipnktIb3Tt2O9, <1>jGg3R, <1>T2PzhtCg9Wchg5f, <1>B8uFJWPVI9dI, <1>rUEzU8wbH, <1>KPndmXINRK1Z DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DtD0QNF.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE P_SI3'
 BY ONLY <1>DtD0QNF, Sizes, Location, Design, <1>B8uFJWPVI9dI, <1>WipnktIb3Tt2O9, <1>jGg3R, <1>FZld0iMu DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OJpowx54MQ.         TypInv => soyHJ
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, soyHJ, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>FeJ2oW.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qAeogR.        
  ASSUME NEW x \in Xids, Cqe(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>qAeogR, Sizes, Location, Design, ZenonT(5) DEF Cqe, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>atyOHWC7ZUz3xNPn.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE SharedLedRef'
<2> USE ONLY <1>atyOHWC7ZUz3xNPn, Sizes, Location, Design
 <2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
<2>2. CASE B2 BY <2>2, <1>FNYHAwoI35diExU, <1>DtD0QNF, <1>W6ZEgSLf4BlQd7l9, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QT1QtyYU4T0a5N.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE BaseReadOwnLanded'
<2> DEFINE IP == IF xk[x]="wr" THEN xsrc[x] ELSE xdst[x]
           EvState == AfterEv(IP,led[IP] \ {x},sled[IP])
<2> HIDE DEF IP, EvState, Cqe, BaseReadOwnLanded, CoreTypeOK, STypeOK
<2>old. BaseReadOwnLanded
 BY ONLY <1>QT1QtyYU4T0a5N, V21_Inv_ReadOwnLanded, Sizes, Location, Design, SMTT(5) DEF ReadOwnLanded
<2>types. pst \in [Pages -> {"free","priv","shared","drain","quar"}] /\
 pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 BY ONLY <1>QT1QtyYU4T0a5N, V22_T_pst, V22_T_pr, V22_T_pgn, SMTT(5)
<2>frame. UNCHANGED <<hw,ph,ptl,pvis,rg,rhit,rpg,xdst>>
 BY ONLY <1>QT1QtyYU4T0a5N, ZenonT(5) DEF Cqe, recV
<2>effect. pst'=[pst EXCEPT ![IP]=EvState] /\
 (IF EvState="free" THEN pr'=[pr EXCEPT ![IP]=0] /\ pgn'=[pgn EXCEPT ![IP]=0]
  ELSE UNCHANGED <<pr,pgn>>)
 BY ONLY <1>QT1QtyYU4T0a5N, ZenonT(5) DEF Cqe, EvidenceAt, PageTo, IP, EvState
<2>state. pst[IP] # "drain" => EvState=pst[IP]
 BY ONLY SMTT(5) DEF EvState, AfterEv
<2>point. ASSUME NEW p \in Pages, pst[p] \in {"priv","shared"}
 PROVE UNCHANGED <<pst[p],pr[p],pgn[p]>>
 <3>same. CASE p=IP
  <4>state. EvState=pst[p] /\ EvState # "free"
   BY ONLY <2>point, <3>same, <2>state, SMTT(5)
  <4>qed. QED BY ONLY <2>point, <3>same, <4>state, <2>types, <2>effect, SMTT(5)
 <3>other. CASE p # IP
  BY ONLY <2>point, <3>other, <2>types, <2>effect, SMTT(5)
 <3>qed. QED BY ONLY <3>same, <3>other, SMTT(5)
<2>qed. QED BY ONLY <2>old, <2>frame, <2>point, SMTT(5) DEF BaseReadOwnLanded, NoWriteInto, Writing, InFl

\* T2M-END R2M2651_PdROBase_PdCell_Cqe_ReadOwnLanded

<1>SQq9zuo44iXr6Mg1d.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE ReadOwnLanded'
<2> USE ONLY <1>SQq9zuo44iXr6Mg1d, Sizes, Location, Design
<2>1. BaseReadOwnLanded' BY <1>QT1QtyYU4T0a5N, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 => \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} => dpreOK'[rpg'[j][r]]
 BY <1>FNYHAwoI35diExU, <1>h8EXtq7BiLZ, <1>umw00Yrfg, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF ReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M2652_PdROSafety_Cqe_ReadOwnLanded


<1> QED BY <1>atyOHWC7ZUz3xNPn, <1>wocJNkIP4fpH3cY5cRc7, <1>EOPvAuZ, <1>ipSpMEBRlYlqSHnjMprRc6o, <1>n3Bv90T, <1>wgZP4t, <1>SQq9zuo44iXr6Mg1d, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF Part_Cqe_02_01, V21_Inv_HitIdentity, V21_Inv_K12, V21_Inv_K2, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_SFollowOff, V21_SFollowStatic, V22_T_gen, V22_T_hw, V22_T_iv, V22_T_nx, V22_T_pgn, V22_T_pr, V22_T_pst, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
====
