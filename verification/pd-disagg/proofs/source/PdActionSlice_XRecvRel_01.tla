---- MODULE PdActionSlice_XRecvRel_01 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_9ef278c147c12b12, PdFinalAuxType_c739ffd38bcba46d, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalGroup_XRecvRel_01 SHA c3caf6c9b7a2a97efa71eadec11bd3c685736d85a89aea53dbf2fd47fa53af4a
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K11, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_K3, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sprefc, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Group_XRecvRel_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE (QuietConservation)'
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

           cfSmf(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])


           MzApF(m) == m.t = "hello" => m.fr \in Inst


           FCKuU(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))


           BUBIt(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))


           r2Xn1(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])


           HU6aO(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])


           DeQaF(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")


           KILoj(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)


           afxwj(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))


           DfoqKS(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))


           xxWeDyN(m) ==
             /\ cfSmf(m)
             /\ MzApF(m)
             /\ FCKuU(m)
             /\ BUBIt(m)
             /\ r2Xn1(m)
             /\ HU6aO(m)
             /\ DeQaF(m)
             /\ KILoj(m)
             /\ afxwj(m)
             /\ DfoqKS(m)

           \* T2M-LOCAL-VISIBILITY

           BEvFree(p,x) == pst[p] = "drain" /\ led[p] \ {x} = {} /\ sled[p] = {} /\ ~KPinned(p)

           \* T2M-LOCAL-VISIBILITY

           NMgti(p) ==
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


           BXFree(x) == pst[xsrc[x]] = "drain" /\ led[xsrc[x]] \ {x} = {} /\ sled[xsrc[x]] = {} /\ ~KPinned(xsrc[x])


           BXRel(x) ==
             /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
             /\ \E m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
                  /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
             /\ LET p == xsrc[x] IN
                  /\ pst' = [pst EXCEPT ![p] = IF BXFree(x) THEN "free" ELSE @]
                  /\ pr' = [pr EXCEPT ![p] = IF BXFree(x) THEN 0 ELSE @]
                  /\ pgn' = [pgn EXCEPT ![p] = IF BXFree(x) THEN 0 ELSE @]
                  /\ plt' = [plt EXCEPT ![p] = IF BXFree(x) THEN 0 ELSE @]
                  /\ led' = [led EXCEPT ![p] = @ \ {x}]
             /\ UNCHANGED <<sled, prefc, pqp>>

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_sprefc, RO_Flat, RO_StableStates, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ, cfSmf, MzApF, FCKuU, BUBIt, r2Xn1, HU6aO, DeQaF, KILoj, afxwj, DfoqKS, xxWeDyN, BEvFree, NMgti, BXFree, BXRel

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

<1>PPz9uKbRgJBnQJC3CjOZ.        
 ASSUME NEW x \in Xids, XRecvRel(x)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>PPz9uKbRgJBnQJC3CjOZ, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uN4X28w2cQgMbenf0LA5Ir.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>uN4X28w2cQgMbenf0LA5Ir, Sizes, Location, Design, <1>PPz9uKbRgJBnQJC3CjOZ, <1>J0yx6oHL5UyrV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dU0N9X88erqchOBQF.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>dU0N9X88erqchOBQF, Sizes, Location, Design, Design, SMTT(10) DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9e3rwFqkUMgpB3C5Sj.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE UNCHANGED <<spst,rpgS>>
 BY ONLY <1>d9e3rwFqkUMgpB3C5Sj, Sizes, Location, Design, <1>PPz9uKbRgJBnQJC3CjOZ, <1>dU0N9X88erqchOBQF, <1>rUEzU8wbH, <1>JJE0Tfox9Q, <1>yFQ846plk6kJ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bMg7Y2kjg6bV3XJ9C0Wa.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
 PROVE gen' \in [Rq -> 0..MG] /\ \A r \in Rq : gen'[r]>=gen[r]
<2> USE ONLY <1>bMg7Y2kjg6bV3XJ9C0Wa, Sizes, Location, Design
<2>1. gen \in [Rq -> 0..MG]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>bMg7Y2kjg6bV3XJ9C0Wa, V22_T_gen, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vjEsWiNBID8JPItjimiK9k1JT2kO.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>vjEsWiNBID8JPItjimiK9k1JT2kO, Sizes, Location, Design, <1>PPz9uKbRgJBnQJC3CjOZ, <1>BhJJoZwTfyo0ME DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oKt3g2MnuX28.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE P_SI1'
 BY ONLY <1>oKt3g2MnuX28, Sizes, Location, Design, <1>PPz9uKbRgJBnQJC3CjOZ, <1>uN4X28w2cQgMbenf0LA5Ir, <1>d9e3rwFqkUMgpB3C5Sj, <1>jGg3R, <1>bMg7Y2kjg6bV3XJ9C0Wa, <1>dU0N9X88erqchOBQF, <1>rUEzU8wbH, <1>KPndmXINRK1Z DEF Sizes, Location, Design

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


<1>E9A5rXMgGx.         K12 <=> (\A m \in net : xxWeDyN(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, xxWeDyN, cfSmf, MzApF, FCKuU, BUBIt, r2Xn1, HU6aO, DeQaF, KILoj, afxwj, DfoqKS, Sizes, Location, Design
\* T2M-END R2M2196_PdROBase_PdMessagePred


<1>YfveNqRTYXF.        
  ASSUME NEW x \in Xids, XRecvRel(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>YfveNqRTYXF, Sizes, Location, Design, Zenon DEF EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uDIX08cG2u3.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, mWgRR, PageTo(p,s,q,nl,ns)
  PROVE pst' = [pst EXCEPT ![p] = s]
  BY ONLY <1>uDIX08cG2u3, Sizes, Location, Design, SMT DEF PageTo, mWgRR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ar4X9H09zh.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, voSc, PageTo(p,s,q,nl,ns)
  PROVE pr' = [pr EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>Ar4X9H09zh, Sizes, Location, Design, SMT DEF PageTo, voSc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NM5iZLLL51s.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, ejARA, PageTo(p,s,q,nl,ns)
  PROVE pgn' = [pgn EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>NM5iZLLL51s, Sizes, Location, Design, SMT DEF PageTo, ejARA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nBWZ3HHBgPv.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, nhDFh, PageTo(p,s,q,nl,ns)
  PROVE plt' = [plt EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>nBWZ3HHBgPv, Sizes, Location, Design, SMT DEF PageTo, nhDFh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KIqeLLc4DaY.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, CQcwS, PageTo(p,s,q,nl,ns)
  PROVE led' = [led EXCEPT ![p] = IF s = "free" THEN {} ELSE nl]
  BY ONLY <1>KIqeLLc4DaY, Sizes, Location, Design, SMT DEF PageTo, CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>c2IhQ0JdJmx3.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, gwX1nH, PageTo(p,s,q,nl,ns)
  PROVE sled' = [sled EXCEPT ![p] = IF s = "free" THEN {} ELSE ns]
  BY ONLY <1>c2IhQ0JdJmx3, Sizes, Location, Design, SMT DEF PageTo, gwX1nH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tm2JOZeAYiMf4.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, uhaZUCa, PageTo(p,s,q,nl,ns)
  PROVE prefc' = [prefc EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>Tm2JOZeAYiMf4, Sizes, Location, Design, SMT DEF PageTo, uhaZUCa, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Uh4NhWw0xs0.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, j9ZB2, PageTo(p,s,q,nl,ns)
  PROVE pqp' = [pqp EXCEPT ![p] = IF s = "quar" THEN q ELSE IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>Uh4NhWw0xs0, Sizes, Location, Design, SMT DEF PageTo, j9ZB2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J7N8RIbn490q.        
  ASSUME NEW p, NEW x, pst[p] # "free"
  PROVE AfterEv(p,led[p] \ {x},sled[p]) = (IF BEvFree(p,x) THEN "free" ELSE pst[p])
    /\ (AfterEv(p,led[p] \ {x},sled[p]) = "free" <=> BEvFree(p,x))
  BY ONLY <1>J7N8RIbn490q, Sizes, Location, Design, Design, Zenon DEF AfterEv, PinBlocks, BEvFree, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ctE8KoRCgp.        
  ASSUME NEW p \in Pages, NEW x, mWgRR, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pst' = [pst EXCEPT ![p] = IF BEvFree(p,x) THEN "free" ELSE @]
<2> USE ONLY <1>ctE8KoRCgp, Sizes, Location, Design
<2>1. pst' = [pst EXCEPT ![p] = AfterEv(p,led[p] \ {x},sled[p])]
  BY <1>uDIX08cG2u3, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, mWgRR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>owHjt2cnA.        
  ASSUME NEW p \in Pages, NEW x, voSc, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pr' = [pr EXCEPT ![p] = IF BEvFree(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>owHjt2cnA, Sizes, Location, Design
<2>1. pr' = [pr EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>Ar4X9H09zh, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, voSc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YfuasBWQJz.        
  ASSUME NEW p \in Pages, NEW x, ejARA, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pgn' = [pgn EXCEPT ![p] = IF BEvFree(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>YfuasBWQJz, Sizes, Location, Design
<2>1. pgn' = [pgn EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>NM5iZLLL51s, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, ejARA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PEn2N84IUA.        
  ASSUME NEW p \in Pages, NEW x, nhDFh, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE plt' = [plt EXCEPT ![p] = IF BEvFree(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>PEn2N84IUA, Sizes, Location, Design
<2>1. plt' = [plt EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>nBWZ3HHBgPv, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, nhDFh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UjuAbMKhK6.        
  ASSUME NEW p \in Pages, NEW x, CQcwS, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE led' = [led EXCEPT ![p] = @ \ {x}]
<2> USE ONLY <1>UjuAbMKhK6, Sizes, Location, Design
<2>1. led' = [led EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE led[p] \ {x}]
  BY <1>KIqeLLc4DaY, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KpKoxRq8tn7.        
  ASSUME NEW p \in Pages, NEW x, gwX1nH, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED sled
<2> USE ONLY <1>KpKoxRq8tn7, Sizes, Location, Design
<2>1. sled' = [sled EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE sled[p]]
  BY <1>c2IhQ0JdJmx3, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, gwX1nH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WxYgjy59R6fw.        
  ASSUME NEW p \in Pages, NEW x, uhaZUCa, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED prefc
<2> USE ONLY <1>WxYgjy59R6fw, Sizes, Location, Design
<2>1. prefc' = [prefc EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>Tm2JOZeAYiMf4, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, uhaZUCa, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bXiTxirVXq.        
  ASSUME NEW p \in Pages, NEW x, j9ZB2, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED pqp
<2> USE ONLY <1>bXiTxirVXq, Sizes, Location, Design
<2>1. pqp' = [pqp EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "quar" THEN pqp[p] ELSE IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>Uh4NhWw0xs0, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, j9ZB2, Sizes, Location, Design
\* T2M-END R2M2282_PdROBase_PdCEvidence


<1>kHb.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xsrc[x] \in Pages
  PROVE Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>kHb, Sizes, Location, Design
<2>1. K1 /\ K2 /\ NHqB
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xp[x] = hp[xr[x]][xg[x]]
        /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aU6.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xdst[x] \in Pages
  PROVE Loc(xdst[x]) \in DInst
<2> USE ONLY <1>aU6, Sizes, Location, Design
<2>1. K1 /\ K2 /\ NHqB
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ Loc(xdst[x]) = xd[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lNS6N.        
  ASSUME NEW p \in Pages, K7
  PROVE NMgti(p)
  BY ONLY <1>lNS6N, Sizes, Location, Design DEF K7, NMgti, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ta3YpEMcfTGE.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
    /\ x < nx /\ xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xp[x] \in PInst
    /\ pst[xsrc[x]] \in {"priv", "drain", "quar"} /\ prefc[xsrc[x]] = 0
<2> USE ONLY <1>Ta3YpEMcfTGE, Sizes, Location, Design
<2>1. K2 /\ K4 /\ K5 /\ K7 /\ NHqB /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, XRecvRel, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, SMT, Sizes, Location, Design DEF K2, NHqB, Xids, Sizes, Location, Design
<2>3. xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K2, ExpPage, ExpInst, Sizes, Location, Design
<2>4. Loc(xsrc[x]) \in PInst
  BY <2>2, <2>3, <1>kHb, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. x \in led[xsrc[x]]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K4, ExpPage, Sizes, Location, Design
<2>6. OwnedBy(xsrc[x],xr[x],xg[x]) /\ NMgti(xsrc[x])
  BY <2>1, <2>3, <2>5, <1>lNS6N, Sizes, Location, Design DEF K5, Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>6, Zenon, Sizes, Location, Design DEF OwnedBy, NMgti, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FC4DC9nDcJoU.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE BXRel(x)
<2> USE ONLY <1>FC4DC9nDcJoU, Sizes, Location, Design
<2>1. K7 /\ xsrc[x] \in Pages /\ prefc[xsrc[x]] = 0 /\ pst[xsrc[x]] # "free"
  BY <1>d9xjhNZcw, <1>Ta3YpEMcfTGE, Zenon, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. mWgRR /\ gwX1nH /\ uhaZUCa /\ j9ZB2 /\ voSc /\ ejARA /\ nhDFh /\ CQcwS
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>3. (pst[xsrc[x]] = "drain" => pqp[xsrc[x]] = 0) /\ EvidenceAt(xsrc[x],x)
  BY <2>1, Zenon, Sizes, Location, Design DEF K7, XRecvRel, Sizes, Location, Design
<2>4. pst' = [pst EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN "free" ELSE @]
    /\ pr' = [pr EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN 0 ELSE @]
    /\ pgn' = [pgn EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN 0 ELSE @]
    /\ plt' = [plt EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN 0 ELSE @]
    /\ led' = [led EXCEPT ![xsrc[x]] = @ \ {x}] /\ UNCHANGED <<sled,prefc,pqp>>
  BY <2>1, <2>2, <2>3, <1>ctE8KoRCgp, <1>owHjt2cnA, <1>YfuasBWQJz, <1>PEn2N84IUA, <1>UjuAbMKhK6, <1>KpKoxRq8tn7, <1>WxYgjy59R6fw, <1>bXiTxirVXq, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>4, Zenon, Sizes, Location, Design DEF XRecvRel, BXRel, BXFree, BEvFree, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WEy8K93NWXGYb.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"]
<2> USE ONLY <1>WEy8K93NWXGYb, Sizes, Location, Design
<2>1. K12 /\ j95de
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. PICK m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
      /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
  BY Zenon, Sizes, Location, Design DEF XRecvRel, Sizes, Location, Design
<2>3. xxWeDyN(m)
  BY <2>1, <2>2, <1>E9A5rXMgGx, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ((iv[x] = "cqe" /\ hw[x] = "stop" /\ m.ok = hok[x]) \/ (iv[x] = "nopost" /\ ~m.ok))
  BY <2>2, <2>3, Zenon, Sizes, Location, Design DEF xxWeDyN, afxwj, Sizes, Location, Design
<2>5. m.ok \in BOOLEAN
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF j95de, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>4, <2>5, Zenon, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YtWi5AEu1q0roMt.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : led'[q] \subseteq led[q]
<2> USE ONLY <1>YtWi5AEu1q0roMt, Sizes, Location, Design
<2>1. CQcwS
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BiWndTWrglzzEYZ.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pst'[q] = IF q=xsrc[x] /\ BXFree(x) THEN "free" ELSE pst[q]
<2> USE ONLY <1>BiWndTWrglzzEYZ, Sizes, Location, Design
<2>1. mWgRR
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pst' = [pst EXCEPT ![xsrc[x]] = IF BXFree(x) THEN "free" ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF mWgRR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>y7gjTn9fXu9wWP.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pr'[q] = IF q=xsrc[x] /\ BXFree(x) THEN 0 ELSE pr[q]
<2> USE ONLY <1>y7gjTn9fXu9wWP, Sizes, Location, Design
<2>1. voSc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pr' = [pr EXCEPT ![xsrc[x]] = IF BXFree(x) THEN 0 ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF voSc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>taLqwJi5FKVqS2e.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pgn'[q] = IF q=xsrc[x] /\ BXFree(x) THEN 0 ELSE pgn[q]
<2> USE ONLY <1>taLqwJi5FKVqS2e, Sizes, Location, Design
<2>1. ejARA
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pgn' = [pgn EXCEPT ![xsrc[x]] = IF BXFree(x) THEN 0 ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF ejARA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gCprCRLt80Nc82a.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : plt'[q] = IF q=xsrc[x] /\ BXFree(x) THEN 0 ELSE plt[q]
<2> USE ONLY <1>gCprCRLt80Nc82a, Sizes, Location, Design
<2>1. nhDFh
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. plt' = [plt EXCEPT ![xsrc[x]] = IF BXFree(x) THEN 0 ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF nhDFh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UdxpTl1qtwBVZfQ.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : led'[q] = IF q=xsrc[x] THEN led[q] \ {x} ELSE led[q]
<2> USE ONLY <1>UdxpTl1qtwBVZfQ, Sizes, Location, Design
<2>1. CQcwS
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KkzF2J72wMDHslR.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ \A y \in Xids : xst'[y] = IF y=x THEN (IF ok THEN "landed" ELSE "failed") ELSE xst[y]
<2> USE ONLY <1>KkzF2J72wMDHslR, Sizes, Location, Design
<2>1. tMnUG /\ (\E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"])
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>WEy8K93NWXGYb, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF tMnUG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TfeXEb4e4vK.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : IsD(Loc(q)) =>
    pst'[q] = pst[q] /\ pr'[q] = pr[q] /\ pgn'[q] = pgn[q] /\ plt'[q] = plt[q] /\ led'[q] = led[q]
<2> USE ONLY <1>TfeXEb4e4vK, Sizes, Location, Design
<2>1. Loc(xsrc[x]) \in PInst
  BY <1>Ta3YpEMcfTGE, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>BiWndTWrglzzEYZ, <1>y7gjTn9fXu9wWP, <1>taLqwJi5FKVqS2e, <1>gCprCRLt80Nc82a, <1>UdxpTl1qtwBVZfQ, Sizes, SMT, Location, Design DEF IsD, PInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NUjAQt83YIoMMYli.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE BXFree(x) => led'[xsrc[x]] = {} /\ sled[xsrc[x]] = {} /\ sfly[xsrc[x]] = {} /\ pqp[xsrc[x]] = 0
<2> USE ONLY <1>NUjAQt83YIoMMYli, Sizes, Location, Design
<2>1. K6 /\ K7 /\ xsrc[x] \in Pages
  BY <1>d9xjhNZcw, <1>Ta3YpEMcfTGE, V21_Inv_K6, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>UdxpTl1qtwBVZfQ, Zenon, Sizes, Location, Design DEF BXFree, K6, K7, Sizes, Location, Design
\* T2M-END R2M2283_PdROBase_PdCXRecvRelEffects


<1>OGLiFsF7FrgU.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE CoreTypeOK'
 BY ONLY <1>OGLiFsF7FrgU, AuxType_c739ffd38bcba46d, Sizes, Location, Design DEF Sizes, Location, Design

<1>FqRfcTLhmrj.        
  ASSUME CoreTypeOK', K7', K16', Quiet', NEW p \in Pages
  PROVE pst'[p] \in {"free","quar"} \/ (pst'[p] = "shared" /\ prefc'[p] = 0)
<2> USE ONLY <1>FqRfcTLhmrj, Sizes, Location, Design
<2>1. pst'[p] \in {"free","priv","shared","drain","quar"} /\ Loc(p) \in Inst
  BY Location, Sizes, Design DEF CoreTypeOK, CoreTypeOK, KPages, Sizes, Location, Design
<2>2. pst'[p] # "drain"
  BY Zenon, Sizes, Location, Design DEF K7, Quiet, Sizes, Location, Design
<2>3a. pst'[p]="priv" => (pr'[p] \in Rq /\ (Maps(Loc(p),pr[p],p) \/ GrownP(p))')
 BY ONLY <1>FqRfcTLhmrj, SMTT(10), Sizes, Location, Design DEF K7, Sizes, Location, Design
<2>3b. GrownP(p)' => ph'[Loc(p)][pr'[p]] \in {"run","ovl"}
 BY ONLY <1>FqRfcTLhmrj, Sizes, Location, Design DEF K16, Sizes, Location, Design
<2>3. pst'[p] # "priv"
 BY ONLY <1>FqRfcTLhmrj, <2>1, <2>3a, <2>3b, SMTT(10), Sizes, Location, Design DEF Quiet, Maps, Active, Sizes, Location, Design
<2>4. {r \in Rq : ph'[Loc(p)][r] \in {"run","ovl"} /\ rhit'[Loc(p)][r] /\ rpg'[Loc(p)][r] = p} = {}
  BY <2>1, Zenon, Sizes, Location, Design DEF Quiet, Active, Sizes, Location, Design
<2>5. NHits(p)' = 0
  BY <2>4, FS_EmptySet, Sizes, Location, Design DEF NHits, Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>5, Zenon, Sizes, Location, Design DEF K7, Sizes, Location, Design


<1>DMH5evbbgSGCVQ.        
  ASSUME CoreTypeOK', K7', K16'
  PROVE BaseQuietConservation'
  BY ONLY <1>DMH5evbbgSGCVQ, Sizes, Location, Design, <1>FqRfcTLhmrj DEF BaseQuietConservation, Sizes, Location, Design
\* T2M-END R2M2285_PdROBase_PdBConservation


<1>NEPm2yfIt.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE K16'
<2> USE ONLY <1>NEPm2yfIt, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (GrownP(bb_p) =>
         /\ ph[Loc(bb_p)][pr[bb_p]] \in {"run", "ovl"} /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p]
         /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
         /\ plt[bb_p] = ptl[bb_p] /\ ptl[bb_p] \in {0, 1}
         /\ NoWriteInto(bb_p))'
  BY Sizes, Location, Design DEF K16, Sizes, Location, Design
<2>1. K16 /\ mWgRR /\ voSc /\ T2_wJ /\ lwx7 /\ nhDFh
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, soyHJ, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>YfveNqRTYXF, <1>FC4DC9nDcJoU, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. (GrownP(bb_p) =>
         /\ ph[Loc(bb_p)][pr[bb_p]] \in {"run", "ovl"} /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p]
         /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
         /\ plt[bb_p] = ptl[bb_p] /\ ptl[bb_p] \in {0, 1}
         /\ NoWriteInto(bb_p))'
  BY <2>1, <2>2, <1>Ta3YpEMcfTGE, <1>BiWndTWrglzzEYZ, <1>y7gjTn9fXu9wWP, <1>taLqwJi5FKVqS2e, <1>gCprCRLt80Nc82a, <1>UdxpTl1qtwBVZfQ, <1>KkzF2J72wMDHslR, <1>YtWi5AEu1q0roMt, <1>TfeXEb4e4vK, <1>NUjAQt83YIoMMYli, <1>aU6, Design, Sizes, SMT, Location DEF BXFree, DInst, GrownP, InFl, IsD, IsP, K16, KPinned, NL, NoWriteInto, PInst, lwx7, nhDFh, voSc, mWgRR, T2_wJ, Tag, Writing, KPages, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K16, Sizes, Location, Design
\* T2M-END R2M2286_PdROBase_PdCXRecvRelLK16

\* T2M-SCOPE R2M2287_PdROBase_PdCXPageFacts

<1>eh3wAwpO5rIXgKLFK.        
  ASSUME NEW x \in Xids, NEW p \in Pages, PinInv, XRecvRel(x)
  PROVE UNCHANGED <<KPinned(p), NHits(p), GrownP(p)>>
    /\ \A r : UNCHANGED Maps(Loc(p),r,p)
<2> USE ONLY <1>eh3wAwpO5rIXgKLFK, Sizes, Location, Design
<2>1. UNCHANGED <<kpin, krs, ph, rhit, rpg>>
  BY <1>YfveNqRTYXF, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<KPinned(p), NHits(p)>> /\ \A r : UNCHANGED Maps(Loc(p),r,p)
  BY <2>1, Isa, Sizes, Location, Design DEF KPinned, NHits, Maps, Active, Sizes, Location, Design
<2>3. Loc(xsrc[x]) \in PInst
  BY <1>Ta3YpEMcfTGE, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. UNCHANGED GrownP(p)
  BY <2>1, <2>3, <1>BiWndTWrglzzEYZ, <1>y7gjTn9fXu9wWP, Sizes, SMT, Location, Design DEF GrownP, IsD, PInst, Sizes, Location, Design
<2>5. QED
  BY <2>2, <2>4, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2287_PdROBase_PdCXPageFacts

\* T2M-SCOPE R2M2288_PdROBase_PdCXRecvRelLK7
\* T2M-BODY R2M2288_PdROBase_PdCXRecvRelLK7
\* T2M-LOCAL-VISIBILITY

<1>Bguuc.        
  ASSUME NEW x \in Xids, NEW p \in Pages, PinInv, XRecvRel(x)
  PROVE NMgti(p)'
<2> USE ONLY <1>Bguuc, Sizes, Location, Design
<2>1. NMgti(p)
  BY <1>d9xjhNZcw, <1>lNS6N, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ptl, gen, sfly, prefc, pqp, rg, rhit, rpg, ph, sled>>
  BY <1>YfveNqRTYXF, <1>FC4DC9nDcJoU, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. UNCHANGED <<KPinned(p), NHits(p), GrownP(p)>> /\ \A r : UNCHANGED Maps(Loc(p),r,p)
  BY <1>eh3wAwpO5rIXgKLFK, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. pst[xsrc[x]] \in {"priv","drain","quar"} /\ prefc[xsrc[x]] = 0
  BY <1>Ta3YpEMcfTGE, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. pst'[p] = (IF p=xsrc[x] /\ BXFree(x) THEN "free" ELSE pst[p])
    /\ pr'[p] = (IF p=xsrc[x] /\ BXFree(x) THEN 0 ELSE pr[p])
    /\ pgn'[p] = (IF p=xsrc[x] /\ BXFree(x) THEN 0 ELSE pgn[p])
    /\ plt'[p] = (IF p=xsrc[x] /\ BXFree(x) THEN 0 ELSE plt[p])
    /\ led'[p] = (IF p=xsrc[x] THEN led[p] \ {x} ELSE led[p])
  BY <1>BiWndTWrglzzEYZ, <1>y7gjTn9fXu9wWP, <1>taLqwJi5FKVqS2e, <1>gCprCRLt80Nc82a, <1>UdxpTl1qtwBVZfQ, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. BXFree(x) => led'[xsrc[x]] = {} /\ sled[xsrc[x]] = {} /\ sfly[xsrc[x]] = {} /\ pqp[xsrc[x]] = 0
  BY <1>NUjAQt83YIoMMYli, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <2>6, SMT, Sizes, Location, Design DEF NMgti, BXFree, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>E98mHvYb.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE K7'
  BY ONLY <1>E98mHvYb, Sizes, Location, Design, <1>Bguuc DEF K7, NMgti, Sizes, Location, Design
\* T2M-END R2M2288_PdROBase_PdCXRecvRelLK7

\* T2M-SCOPE R2M2289_PdROBase_PdCXRecvRelLQuietConservation

<1>YKbGJ5m98PIpJMi9hxzt2cq.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE BaseQuietConservation'
  BY ONLY <1>YKbGJ5m98PIpJMi9hxzt2cq, Sizes, Location, Design, <1>OGLiFsF7FrgU, <1>E98mHvYb, <1>NEPm2yfIt, <1>DMH5evbbgSGCVQ DEF Sizes, Location, Design
\* T2M-END R2M2289_PdROBase_PdCXRecvRelLQuietConservation


<1>XoF557uP0hHO.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE P_SI2'
 BY ONLY <1>XoF557uP0hHO, Sizes, Location, Design, <1>PPz9uKbRgJBnQJC3CjOZ, <1>uN4X28w2cQgMbenf0LA5Ir, <1>d9e3rwFqkUMgpB3C5Sj, <1>dU0N9X88erqchOBQF, <1>jGg3R, <1>rUEzU8wbH, <1>dusdnIGW DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nr1oNdXoiIeYJHjdkxVPzZNGFt.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE QuietConservation'
<2> USE ONLY <1>nr1oNdXoiIeYJHjdkxVPzZNGFt, Sizes, Location, Design
 <2>1. BaseQuietConservation' BY <1>YKbGJ5m98PIpJMi9hxzt2cq, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. P_SI1' /\ P_SI2' /\ STypeOK' /\ PrefcMatchesHolders'
 BY <1>oKt3g2MnuX28, <1>XoF557uP0hHO, <1>PPz9uKbRgJBnQJC3CjOZ, <1>g4ukMt7rga0IPw, <1>vjEsWiNBID8JPItjimiK9k1JT2kO, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>EjmNCRbt1, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2290_PdROExtra_XRecvRel


<1> QED BY <1>nr1oNdXoiIeYJHjdkxVPzZNGFt, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalGroup_XRecvRel_02 SHA e30dd15a35b2e5201ad536a1a0e989d111987dc682716cb99c06547c119397b2
HIDE DEF Group_XRecvRel_01, V21_Inv_BaseSafety, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K12, V21_Inv_K16, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_T_gen, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS
THEOREM Group_XRecvRel_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE (TypInv)'
<1>PPz9uKbRgJBnQJC3CjOZ.        
 ASSUME NEW x \in Xids, XRecvRel(x)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>PPz9uKbRgJBnQJC3CjOZ, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g4ukMt7rga0IPw.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE STypeOK'
 BY ONLY <1>g4ukMt7rga0IPw, AuxType_9ef278c147c12b12, Sizes, Location, Design DEF Sizes, Location, Design

<1>OGLiFsF7FrgU.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE CoreTypeOK'
 BY ONLY <1>OGLiFsF7FrgU, AuxType_c739ffd38bcba46d, Sizes, Location, Design DEF Sizes, Location, Design

<1>pacNHrJE4lfS3Gh.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE TypInv'
<2> USE ONLY <1>pacNHrJE4lfS3Gh, Sizes, Location, Design
<2>1. CoreTypeOK' BY <1>OGLiFsF7FrgU, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK' BY <1>PPz9uKbRgJBnQJC3CjOZ, <1>g4ukMt7rga0IPw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF TypInv, Sizes, Location, Design
\* T2M-END R2M2733_PdROType_XRecvRel


<1> QED BY <1>pacNHrJE4lfS3Gh, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_XRecvRel_03_01 SHA 468bdf31bcf25f7a9073ceef1b5e5acaf9ddf1c6ba96869e27bfe9f3a8dcba1b
USE DEF V21_Inv_BaseSafety, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K12, V21_Inv_K14, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst
HIDE DEF AuxType_9ef278c147c12b12, AuxType_c739ffd38bcba46d, Group_XRecvRel_02
THEOREM Part_XRecvRel_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE (NoStrayAccess)' /\ (NoFreeUnderRead)' /\ (SealOnlyLanded)'
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


           RO_E_spst == spst'=[p \in SPages |-> IF \E x \in Xids : RO_Quarantine(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF RO_Drop(p) THEN "free" ELSE IF RO_Ended(p) THEN "drain" ELSE spst[p]]


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

           cfSmf(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])


           MzApF(m) == m.t = "hello" => m.fr \in Inst


           FCKuU(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))


           BUBIt(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))


           r2Xn1(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])


           HU6aO(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])


           DeQaF(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")


           KILoj(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)


           afxwj(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))


           DfoqKS(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))


           xxWeDyN(m) ==
             /\ cfSmf(m)
             /\ MzApF(m)
             /\ FCKuU(m)
             /\ BUBIt(m)
             /\ r2Xn1(m)
             /\ HU6aO(m)
             /\ DeQaF(m)
             /\ KILoj(m)
             /\ afxwj(m)
             /\ DfoqKS(m)

           \* T2M-LOCAL-VISIBILITY

           BEvFree(p,x) == pst[p] = "drain" /\ led[p] \ {x} = {} /\ sled[p] = {} /\ ~KPinned(p)

           \* T2M-LOCAL-VISIBILITY

           NMgti(p) ==
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


           BXFree(x) == pst[xsrc[x]] = "drain" /\ led[xsrc[x]] \ {x} = {} /\ sled[xsrc[x]] = {} /\ ~KPinned(xsrc[x])


           BXRel(x) ==
             /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
             /\ \E m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
                  /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
             /\ LET p == xsrc[x] IN
                  /\ pst' = [pst EXCEPT ![p] = IF BXFree(x) THEN "free" ELSE @]
                  /\ pr' = [pr EXCEPT ![p] = IF BXFree(x) THEN 0 ELSE @]
                  /\ pgn' = [pgn EXCEPT ![p] = IF BXFree(x) THEN 0 ELSE @]
                  /\ plt' = [plt EXCEPT ![p] = IF BXFree(x) THEN 0 ELSE @]
                  /\ led' = [led EXCEPT ![p] = @ \ {x}]
             /\ UNCHANGED <<sled, prefc, pqp>>

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

           JP4iJ(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])


           YUpXU(m) == m.t = "hello" => m.fr \in Inst


           QZULu(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))


           EhqlW(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))


           Cnsrx(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])


           o_ePZ(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])


           scI5d(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")


           BEuuF(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)


           jM474(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))


           C4qt0T(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))


           N1WQNkJ(m) ==
             /\ JP4iJ(m)
             /\ YUpXU(m)
             /\ QZULu(m)
             /\ EhqlW(m)
             /\ Cnsrx(m)
             /\ o_ePZ(m)
             /\ scI5d(m)
             /\ BEuuF(m)
             /\ jM474(m)
             /\ C4qt0T(m)

           \* T2M-LOCAL-VISIBILITY

           H9OAZxi(p,x) == pst[p] = "drain" /\ led[p] \ {x} = {} /\ sled[p] = {} /\ ~KPinned(p)

           \* T2M-LOCAL-VISIBILITY

           XGvsJ(p) ==
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


           QkFcpo(x) == pst[xsrc[x]] = "drain" /\ led[xsrc[x]] \ {x} = {} /\ sled[xsrc[x]] = {} /\ ~KPinned(xsrc[x])


           I3PLV(x) ==
             /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
             /\ \E m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
                  /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
             /\ LET p == xsrc[x] IN
                  /\ pst' = [pst EXCEPT ![p] = IF QkFcpo(x) THEN "free" ELSE @]
                  /\ pr' = [pr EXCEPT ![p] = IF QkFcpo(x) THEN 0 ELSE @]
                  /\ pgn' = [pgn EXCEPT ![p] = IF QkFcpo(x) THEN 0 ELSE @]
                  /\ plt' = [plt EXCEPT ![p] = IF QkFcpo(x) THEN 0 ELSE @]
                  /\ led' = [led EXCEPT ![p] = @ \ {x}]
             /\ UNCHANGED <<sled, prefc, pqp>>

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_spst, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ, cfSmf, MzApF, FCKuU, BUBIt, r2Xn1, HU6aO, DeQaF, KILoj, afxwj, DfoqKS, xxWeDyN, BEvFree, NMgti, BXFree, BXRel, RO_SharedFieldsFrame, Ltilk, ckVW, bXD3, XAoD, ZzYU, v7av, Zwf5Kak, UTxM0oD, Btadh0, hgjUtY, DgHrMJ, UDzxF, NN85, FlLc, mCp6f, EfDhA, TO_H, OFH6nV, nU_pl, KRyh, SWs37, Q73Wr, cDvpy, aHUmFg, m0XQV, YAnOjz, owHnyB, Gpa5dVU, f9onk, fwbJ, mnFW, nOWk, Ha9G, f5DU, KZInRS, hq2umu, ROI9_, M7cq, u1j8N, ECDy, q4kPy, doDAh, YN04, kvUux, WsZW22, d654kx, jl8hSJt, XEsGoy, qryMJ, JP4iJ, YUpXU, QZULu, EhqlW, Cnsrx, o_ePZ, scI5d, BEuuF, jM474, C4qt0T, N1WQNkJ, H9OAZxi, XGvsJ, QkFcpo, I3PLV

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

<1>H0Dre0I9dt5V.        
 ASSUME B2, SFollow
 PROVE RO_E_rpgS
 BY ONLY <1>H0Dre0I9dt5V, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_rpgS, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LQE0C5CV3kHl.        
 ASSUME B2, SFollow
 PROVE RO_E_spst
 BY ONLY <1>LQE0C5CV3kHl, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_spst, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pDDs2iPJ6v1.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>pDDs2iPJ6v1, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jGg3R.         SFollow => UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design

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


<1>PPz9uKbRgJBnQJC3CjOZ.        
 ASSUME NEW x \in Xids, XRecvRel(x)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>PPz9uKbRgJBnQJC3CjOZ, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dU0N9X88erqchOBQF.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>dU0N9X88erqchOBQF, Sizes, Location, Design, Design, SMTT(10) DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9e3rwFqkUMgpB3C5Sj.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE UNCHANGED <<spst,rpgS>>
 BY ONLY <1>d9e3rwFqkUMgpB3C5Sj, Sizes, Location, Design, <1>PPz9uKbRgJBnQJC3CjOZ, <1>dU0N9X88erqchOBQF, <1>rUEzU8wbH, <1>JJE0Tfox9Q, <1>yFQ846plk6kJ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OJpowx54MQ.         TypInv => soyHJ
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, soyHJ, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>E9A5rXMgGx.         K12 <=> (\A m \in net : xxWeDyN(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, xxWeDyN, cfSmf, MzApF, FCKuU, BUBIt, r2Xn1, HU6aO, DeQaF, KILoj, afxwj, DfoqKS, Sizes, Location, Design
\* T2M-END R2M2196_PdROBase_PdMessagePred


<1>YfveNqRTYXF.        
  ASSUME NEW x \in Xids, XRecvRel(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>YfveNqRTYXF, Sizes, Location, Design, Zenon DEF EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uDIX08cG2u3.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, mWgRR, PageTo(p,s,q,nl,ns)
  PROVE pst' = [pst EXCEPT ![p] = s]
  BY ONLY <1>uDIX08cG2u3, Sizes, Location, Design, SMT DEF PageTo, mWgRR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ar4X9H09zh.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, voSc, PageTo(p,s,q,nl,ns)
  PROVE pr' = [pr EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>Ar4X9H09zh, Sizes, Location, Design, SMT DEF PageTo, voSc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NM5iZLLL51s.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, ejARA, PageTo(p,s,q,nl,ns)
  PROVE pgn' = [pgn EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>NM5iZLLL51s, Sizes, Location, Design, SMT DEF PageTo, ejARA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nBWZ3HHBgPv.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, nhDFh, PageTo(p,s,q,nl,ns)
  PROVE plt' = [plt EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>nBWZ3HHBgPv, Sizes, Location, Design, SMT DEF PageTo, nhDFh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KIqeLLc4DaY.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, CQcwS, PageTo(p,s,q,nl,ns)
  PROVE led' = [led EXCEPT ![p] = IF s = "free" THEN {} ELSE nl]
  BY ONLY <1>KIqeLLc4DaY, Sizes, Location, Design, SMT DEF PageTo, CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>c2IhQ0JdJmx3.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, gwX1nH, PageTo(p,s,q,nl,ns)
  PROVE sled' = [sled EXCEPT ![p] = IF s = "free" THEN {} ELSE ns]
  BY ONLY <1>c2IhQ0JdJmx3, Sizes, Location, Design, SMT DEF PageTo, gwX1nH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tm2JOZeAYiMf4.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, uhaZUCa, PageTo(p,s,q,nl,ns)
  PROVE prefc' = [prefc EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>Tm2JOZeAYiMf4, Sizes, Location, Design, SMT DEF PageTo, uhaZUCa, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Uh4NhWw0xs0.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, j9ZB2, PageTo(p,s,q,nl,ns)
  PROVE pqp' = [pqp EXCEPT ![p] = IF s = "quar" THEN q ELSE IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>Uh4NhWw0xs0, Sizes, Location, Design, SMT DEF PageTo, j9ZB2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J7N8RIbn490q.        
  ASSUME NEW p, NEW x, pst[p] # "free"
  PROVE AfterEv(p,led[p] \ {x},sled[p]) = (IF BEvFree(p,x) THEN "free" ELSE pst[p])
    /\ (AfterEv(p,led[p] \ {x},sled[p]) = "free" <=> BEvFree(p,x))
  BY ONLY <1>J7N8RIbn490q, Sizes, Location, Design, Design, Zenon DEF AfterEv, PinBlocks, BEvFree, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ctE8KoRCgp.        
  ASSUME NEW p \in Pages, NEW x, mWgRR, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pst' = [pst EXCEPT ![p] = IF BEvFree(p,x) THEN "free" ELSE @]
<2> USE ONLY <1>ctE8KoRCgp, Sizes, Location, Design
<2>1. pst' = [pst EXCEPT ![p] = AfterEv(p,led[p] \ {x},sled[p])]
  BY <1>uDIX08cG2u3, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, mWgRR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>owHjt2cnA.        
  ASSUME NEW p \in Pages, NEW x, voSc, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pr' = [pr EXCEPT ![p] = IF BEvFree(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>owHjt2cnA, Sizes, Location, Design
<2>1. pr' = [pr EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>Ar4X9H09zh, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, voSc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YfuasBWQJz.        
  ASSUME NEW p \in Pages, NEW x, ejARA, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pgn' = [pgn EXCEPT ![p] = IF BEvFree(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>YfuasBWQJz, Sizes, Location, Design
<2>1. pgn' = [pgn EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>NM5iZLLL51s, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, ejARA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PEn2N84IUA.        
  ASSUME NEW p \in Pages, NEW x, nhDFh, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE plt' = [plt EXCEPT ![p] = IF BEvFree(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>PEn2N84IUA, Sizes, Location, Design
<2>1. plt' = [plt EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>nBWZ3HHBgPv, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, nhDFh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UjuAbMKhK6.        
  ASSUME NEW p \in Pages, NEW x, CQcwS, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE led' = [led EXCEPT ![p] = @ \ {x}]
<2> USE ONLY <1>UjuAbMKhK6, Sizes, Location, Design
<2>1. led' = [led EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE led[p] \ {x}]
  BY <1>KIqeLLc4DaY, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KpKoxRq8tn7.        
  ASSUME NEW p \in Pages, NEW x, gwX1nH, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED sled
<2> USE ONLY <1>KpKoxRq8tn7, Sizes, Location, Design
<2>1. sled' = [sled EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE sled[p]]
  BY <1>c2IhQ0JdJmx3, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, gwX1nH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WxYgjy59R6fw.        
  ASSUME NEW p \in Pages, NEW x, uhaZUCa, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED prefc
<2> USE ONLY <1>WxYgjy59R6fw, Sizes, Location, Design
<2>1. prefc' = [prefc EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>Tm2JOZeAYiMf4, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, uhaZUCa, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bXiTxirVXq.        
  ASSUME NEW p \in Pages, NEW x, j9ZB2, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED pqp
<2> USE ONLY <1>bXiTxirVXq, Sizes, Location, Design
<2>1. pqp' = [pqp EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "quar" THEN pqp[p] ELSE IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>Uh4NhWw0xs0, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, j9ZB2, Sizes, Location, Design
\* T2M-END R2M2282_PdROBase_PdCEvidence


<1>kHb.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xsrc[x] \in Pages
  PROVE Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>kHb, Sizes, Location, Design
<2>1. K1 /\ K2 /\ NHqB
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xp[x] = hp[xr[x]][xg[x]]
        /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aU6.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xdst[x] \in Pages
  PROVE Loc(xdst[x]) \in DInst
<2> USE ONLY <1>aU6, Sizes, Location, Design
<2>1. K1 /\ K2 /\ NHqB
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ Loc(xdst[x]) = xd[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lNS6N.        
  ASSUME NEW p \in Pages, K7
  PROVE NMgti(p)
  BY ONLY <1>lNS6N, Sizes, Location, Design DEF K7, NMgti, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ta3YpEMcfTGE.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
    /\ x < nx /\ xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xp[x] \in PInst
    /\ pst[xsrc[x]] \in {"priv", "drain", "quar"} /\ prefc[xsrc[x]] = 0
<2> USE ONLY <1>Ta3YpEMcfTGE, Sizes, Location, Design
<2>1. K2 /\ K4 /\ K5 /\ K7 /\ NHqB /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, XRecvRel, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, SMT, Sizes, Location, Design DEF K2, NHqB, Xids, Sizes, Location, Design
<2>3. xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K2, ExpPage, ExpInst, Sizes, Location, Design
<2>4. Loc(xsrc[x]) \in PInst
  BY <2>2, <2>3, <1>kHb, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. x \in led[xsrc[x]]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K4, ExpPage, Sizes, Location, Design
<2>6. OwnedBy(xsrc[x],xr[x],xg[x]) /\ NMgti(xsrc[x])
  BY <2>1, <2>3, <2>5, <1>lNS6N, Sizes, Location, Design DEF K5, Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>6, Zenon, Sizes, Location, Design DEF OwnedBy, NMgti, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FC4DC9nDcJoU.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE BXRel(x)
<2> USE ONLY <1>FC4DC9nDcJoU, Sizes, Location, Design
<2>1. K7 /\ xsrc[x] \in Pages /\ prefc[xsrc[x]] = 0 /\ pst[xsrc[x]] # "free"
  BY <1>d9xjhNZcw, <1>Ta3YpEMcfTGE, Zenon, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. mWgRR /\ gwX1nH /\ uhaZUCa /\ j9ZB2 /\ voSc /\ ejARA /\ nhDFh /\ CQcwS
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>3. (pst[xsrc[x]] = "drain" => pqp[xsrc[x]] = 0) /\ EvidenceAt(xsrc[x],x)
  BY <2>1, Zenon, Sizes, Location, Design DEF K7, XRecvRel, Sizes, Location, Design
<2>4. pst' = [pst EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN "free" ELSE @]
    /\ pr' = [pr EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN 0 ELSE @]
    /\ pgn' = [pgn EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN 0 ELSE @]
    /\ plt' = [plt EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN 0 ELSE @]
    /\ led' = [led EXCEPT ![xsrc[x]] = @ \ {x}] /\ UNCHANGED <<sled,prefc,pqp>>
  BY <2>1, <2>2, <2>3, <1>ctE8KoRCgp, <1>owHjt2cnA, <1>YfuasBWQJz, <1>PEn2N84IUA, <1>UjuAbMKhK6, <1>KpKoxRq8tn7, <1>WxYgjy59R6fw, <1>bXiTxirVXq, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>4, Zenon, Sizes, Location, Design DEF XRecvRel, BXRel, BXFree, BEvFree, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WEy8K93NWXGYb.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"]
<2> USE ONLY <1>WEy8K93NWXGYb, Sizes, Location, Design
<2>1. K12 /\ j95de
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. PICK m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
      /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
  BY Zenon, Sizes, Location, Design DEF XRecvRel, Sizes, Location, Design
<2>3. xxWeDyN(m)
  BY <2>1, <2>2, <1>E9A5rXMgGx, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ((iv[x] = "cqe" /\ hw[x] = "stop" /\ m.ok = hok[x]) \/ (iv[x] = "nopost" /\ ~m.ok))
  BY <2>2, <2>3, Zenon, Sizes, Location, Design DEF xxWeDyN, afxwj, Sizes, Location, Design
<2>5. m.ok \in BOOLEAN
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF j95de, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>4, <2>5, Zenon, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YtWi5AEu1q0roMt.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : led'[q] \subseteq led[q]
<2> USE ONLY <1>YtWi5AEu1q0roMt, Sizes, Location, Design
<2>1. CQcwS
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BiWndTWrglzzEYZ.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pst'[q] = IF q=xsrc[x] /\ BXFree(x) THEN "free" ELSE pst[q]
<2> USE ONLY <1>BiWndTWrglzzEYZ, Sizes, Location, Design
<2>1. mWgRR
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pst' = [pst EXCEPT ![xsrc[x]] = IF BXFree(x) THEN "free" ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF mWgRR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>y7gjTn9fXu9wWP.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pr'[q] = IF q=xsrc[x] /\ BXFree(x) THEN 0 ELSE pr[q]
<2> USE ONLY <1>y7gjTn9fXu9wWP, Sizes, Location, Design
<2>1. voSc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pr' = [pr EXCEPT ![xsrc[x]] = IF BXFree(x) THEN 0 ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF voSc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>taLqwJi5FKVqS2e.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pgn'[q] = IF q=xsrc[x] /\ BXFree(x) THEN 0 ELSE pgn[q]
<2> USE ONLY <1>taLqwJi5FKVqS2e, Sizes, Location, Design
<2>1. ejARA
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pgn' = [pgn EXCEPT ![xsrc[x]] = IF BXFree(x) THEN 0 ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF ejARA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gCprCRLt80Nc82a.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : plt'[q] = IF q=xsrc[x] /\ BXFree(x) THEN 0 ELSE plt[q]
<2> USE ONLY <1>gCprCRLt80Nc82a, Sizes, Location, Design
<2>1. nhDFh
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. plt' = [plt EXCEPT ![xsrc[x]] = IF BXFree(x) THEN 0 ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF nhDFh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UdxpTl1qtwBVZfQ.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : led'[q] = IF q=xsrc[x] THEN led[q] \ {x} ELSE led[q]
<2> USE ONLY <1>UdxpTl1qtwBVZfQ, Sizes, Location, Design
<2>1. CQcwS
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KkzF2J72wMDHslR.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ \A y \in Xids : xst'[y] = IF y=x THEN (IF ok THEN "landed" ELSE "failed") ELSE xst[y]
<2> USE ONLY <1>KkzF2J72wMDHslR, Sizes, Location, Design
<2>1. tMnUG /\ (\E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"])
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>WEy8K93NWXGYb, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF tMnUG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TfeXEb4e4vK.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : IsD(Loc(q)) =>
    pst'[q] = pst[q] /\ pr'[q] = pr[q] /\ pgn'[q] = pgn[q] /\ plt'[q] = plt[q] /\ led'[q] = led[q]
<2> USE ONLY <1>TfeXEb4e4vK, Sizes, Location, Design
<2>1. Loc(xsrc[x]) \in PInst
  BY <1>Ta3YpEMcfTGE, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>BiWndTWrglzzEYZ, <1>y7gjTn9fXu9wWP, <1>taLqwJi5FKVqS2e, <1>gCprCRLt80Nc82a, <1>UdxpTl1qtwBVZfQ, Sizes, SMT, Location, Design DEF IsD, PInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NUjAQt83YIoMMYli.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE BXFree(x) => led'[xsrc[x]] = {} /\ sled[xsrc[x]] = {} /\ sfly[xsrc[x]] = {} /\ pqp[xsrc[x]] = 0
<2> USE ONLY <1>NUjAQt83YIoMMYli, Sizes, Location, Design
<2>1. K6 /\ K7 /\ xsrc[x] \in Pages
  BY <1>d9xjhNZcw, <1>Ta3YpEMcfTGE, V21_Inv_K6, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>UdxpTl1qtwBVZfQ, Zenon, Sizes, Location, Design DEF BXFree, K6, K7, Sizes, Location, Design
\* T2M-END R2M2283_PdROBase_PdCXRecvRelEffects


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


<1>RfrdJDrFe7.        
 ASSUME RO_SharedFieldsFrame
 PROVE K12 <=> (\A m \in net : N1WQNkJ(m))
  BY ONLY <1>RfrdJDrFe7, Sizes, Location, Design, ZenonT(5) DEF K12, N1WQNkJ, JP4iJ, YUpXU, QZULu, EhqlW, Cnsrx, o_ePZ, scI5d, BEuuF, jM474, C4qt0T, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2533_PdRORead_PdMessagePred


<1>XRE0PLtFO8E.        
  ASSUME NEW x \in Xids, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>XRE0PLtFO8E, Sizes, Location, Design, Zenon DEF EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, pgV, recV, rtV, vars, xV, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2634_PdRORead_PdBXRecvRelFrames


<1>AX2AB7HHJnb.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, nU_pl, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE pst' = [pst EXCEPT ![p] = s]
  BY ONLY <1>AX2AB7HHJnb, Sizes, Location, Design, SMT DEF PageTo, nU_pl, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m5cf5QZ3lv.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, KRyh, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE pr' = [pr EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>m5cf5QZ3lv, Sizes, Location, Design, SMT DEF PageTo, KRyh, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DdTSfyCxwNl.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, SWs37, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE pgn' = [pgn EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>DdTSfyCxwNl, Sizes, Location, Design, SMT DEF PageTo, SWs37, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eLsfYqgXYer.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, Q73Wr, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE plt' = [plt EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>eLsfYqgXYer, Sizes, Location, Design, SMT DEF PageTo, Q73Wr, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Hy3e79FnYxO.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, m0XQV, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE led' = [led EXCEPT ![p] = IF s = "free" THEN {} ELSE nl]
  BY ONLY <1>Hy3e79FnYxO, Sizes, Location, Design, SMT DEF PageTo, m0XQV, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>a8EW7s3Dzl9c.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, owHnyB, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE sled' = [sled EXCEPT ![p] = IF s = "free" THEN {} ELSE ns]
  BY ONLY <1>a8EW7s3Dzl9c, Sizes, Location, Design, SMT DEF PageTo, owHnyB, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZTF89k9er0qHF.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, Gpa5dVU, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE prefc' = [prefc EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>ZTF89k9er0qHF, Sizes, Location, Design, SMT DEF PageTo, Gpa5dVU, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zUqA6Ujy2QX.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, f9onk, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE pqp' = [pqp EXCEPT ![p] = IF s = "quar" THEN q ELSE IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>zUqA6Ujy2QX, Sizes, Location, Design, SMT DEF PageTo, f9onk, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>U2j2KTye7I7w.        
  ASSUME NEW p, NEW x, pst[p] # "free"
  , RO_SharedFieldsFrame
 PROVE AfterEv(p,led[p] \ {x},sled[p]) = (IF H9OAZxi(p,x) THEN "free" ELSE pst[p])
    /\ (AfterEv(p,led[p] \ {x},sled[p]) = "free" <=> H9OAZxi(p,x))
  BY ONLY <1>U2j2KTye7I7w, Sizes, Location, Design, Design, Zenon DEF AfterEv, PinBlocks, H9OAZxi, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Oku4k92x6u.        
  ASSUME NEW p \in Pages, NEW x, nU_pl, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE pst' = [pst EXCEPT ![p] = IF H9OAZxi(p,x) THEN "free" ELSE @]
<2> USE ONLY <1>Oku4k92x6u, Sizes, Location, Design
<2>1. pst' = [pst EXCEPT ![p] = AfterEv(p,led[p] \ {x},sled[p])]
  BY <1>AX2AB7HHJnb, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, nU_pl, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZKCHZPyT9.        
  ASSUME NEW p \in Pages, NEW x, KRyh, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE pr' = [pr EXCEPT ![p] = IF H9OAZxi(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>ZKCHZPyT9, Sizes, Location, Design
<2>1. pr' = [pr EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>m5cf5QZ3lv, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, KRyh, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kdU29ag5ji.        
  ASSUME NEW p \in Pages, NEW x, SWs37, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE pgn' = [pgn EXCEPT ![p] = IF H9OAZxi(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>kdU29ag5ji, Sizes, Location, Design
<2>1. pgn' = [pgn EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>DdTSfyCxwNl, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, SWs37, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MZYq5xlivZ.        
  ASSUME NEW p \in Pages, NEW x, Q73Wr, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE plt' = [plt EXCEPT ![p] = IF H9OAZxi(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>MZYq5xlivZ, Sizes, Location, Design
<2>1. plt' = [plt EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>eLsfYqgXYer, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, Q73Wr, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D4czd3i5JD.        
  ASSUME NEW p \in Pages, NEW x, m0XQV, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE led' = [led EXCEPT ![p] = @ \ {x}]
<2> USE ONLY <1>D4czd3i5JD, Sizes, Location, Design
<2>1. led' = [led EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE led[p] \ {x}]
  BY <1>Hy3e79FnYxO, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, m0XQV, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BhfIXqWOjp0.        
  ASSUME NEW p \in Pages, NEW x, owHnyB, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE UNCHANGED sled
<2> USE ONLY <1>BhfIXqWOjp0, Sizes, Location, Design
<2>1. sled' = [sled EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE sled[p]]
  BY <1>a8EW7s3Dzl9c, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, owHnyB, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>p3rxKdxXTC8o.        
  ASSUME NEW p \in Pages, NEW x, Gpa5dVU, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE UNCHANGED prefc
<2> USE ONLY <1>p3rxKdxXTC8o, Sizes, Location, Design
<2>1. prefc' = [prefc EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>ZTF89k9er0qHF, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, Gpa5dVU, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nbW5Ar9MKN.        
  ASSUME NEW p \in Pages, NEW x, f9onk, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE UNCHANGED pqp
<2> USE ONLY <1>nbW5Ar9MKN, Sizes, Location, Design
<2>1. pqp' = [pqp EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "quar" THEN pqp[p] ELSE IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>zUqA6Ujy2QX, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, f9onk, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2635_PdRORead_PdCEvidence


<1>OZlUbWexrUAisB.        
  ASSUME NEW x \in Xids, YN04, K2, InFl(x)
  , RO_SharedFieldsFrame
 PROVE x < nx
  BY ONLY <1>OZlUbWexrUAisB, Sizes, Location, Design, SMT DEF YN04, Xids, K2, InFl, RO_SharedFieldsFrame, Sizes, Location, Design


<1>tAlUylw7LYnIreiB.        
  ASSUME NEW x \in Xids, YN04, K1, K2, K3, InFl(x)
  , RO_SharedFieldsFrame
 PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>tAlUylw7LYnIreiB, Sizes, Location, Design
<2>1. x < nx
  BY <1>OZlUbWexrUAisB, Sizes, Location, Design DEF Sizes, Location, Design
<2>0. ~(x >= nx)
  BY <2>1, Sizes, SMT, Location, Design DEF YN04, Xids, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. xk[x] \in {"wr","rd"} /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
    /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>0, Design, Zenon, Sizes, Location DEF K2, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. xd[x] \in DInst
  BY <2>2, SMT, Sizes, Location, Design DEF K1, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. iv[x] \notin {"none","nopost"}
  BY Zenon, Sizes, Location, Design DEF K3, InFl, RO_SharedFieldsFrame, Sizes, Location, Design
<2>5. InitPage(x) # 0
  BY <2>0, <2>4, Zenon, Sizes, Location, Design DEF K2, RO_SharedFieldsFrame, Sizes, Location, Design
<2>6. xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>0, <2>2, <2>5, Zenon, Sizes, Location, Design DEF K2, ExpPage, InitPage, ExpInst, InitInst, RO_SharedFieldsFrame, Sizes, Location, Design
<2>7. QED
  BY <2>3, <2>6, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2591_PdRORead_PdBDataLemmas

\* T2M-SCOPE R2M2592_PdRORead_PdBXFacts
\* T2M-BODY R2M2592_PdRORead_PdBXFacts
\* T2M-LOCAL-VISIBILITY

<1>yOo.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xsrc[x] \in Pages
  , RO_SharedFieldsFrame
 PROVE Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>yOo, Sizes, Location, Design
<2>1. K1 /\ K2 /\ YN04
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xp[x] = hp[xr[x]][xg[x]]
        /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KKS.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xdst[x] \in Pages
  , RO_SharedFieldsFrame
 PROVE Loc(xdst[x]) \in DInst
<2> USE ONLY <1>KKS, Sizes, Location, Design
<2>1. K1 /\ K2 /\ YN04
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ Loc(xdst[x]) = xd[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>I8rT1jn17RP5Z.        
  ASSUME NEW x \in Xids, PinInv, hw[x] = "fly"
  , RO_SharedFieldsFrame
 PROVE xsrc[x] \in Pages /\ x \in led[xsrc[x]]
<2> USE ONLY <1>I8rT1jn17RP5Z, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ YN04 /\ InFl(x)
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, InFl, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, <1>OZlUbWexrUAisB, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xst[x] = "posted" /\ iv[x] \in {"posted","failret"}
  BY <2>1, Zenon, Sizes, Location, Design DEF K3, InFl, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. xsrc[x] \in Pages
  BY <2>1, <2>2, <2>3, Design, SMT, Sizes, Location DEF K2, InitPage, ExpPage, RO_SharedFieldsFrame, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF K4, InitPage, ExpPage, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2592_PdRORead_PdBXFacts


<1>MeRGJ.        
  ASSUME NEW p \in Pages, K7
  , RO_SharedFieldsFrame
 PROVE XGvsJ(p)
  BY ONLY <1>MeRGJ, Sizes, Location, Design DEF K7, XGvsJ, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jv1GzKO.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW e, UDzxF, e \in krs[i][s]
  , RO_SharedFieldsFrame
 PROVE e[1] \in Rq /\ e[2] \in Gens /\ e[3] \in KPages /\ e[4] \in {0,1,2,3,4}
  BY ONLY <1>jv1GzKO, Sizes, Location, Design, SMT DEF UDzxF, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RbdlkJN4.        
  ASSUME PinInv
  , RO_SharedFieldsFrame
 PROVE \A i \in Inst, s \in KSlots : \A e \in krs[i][s] :
    e[1] \in Rq /\ e[2] \in Gens /\ e[3] \in KPages /\ e[4] \in {0,1,2,3,4}
<2> USE ONLY <1>RbdlkJN4, Sizes, Location, Design
<2>1. UDzxF
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>jv1GzKO, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k7V34jju9ya.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW e, PinInv, kpin[i][s], e \in krs[i][s]
  , RO_SharedFieldsFrame
 PROVE KPinned(e[3])
<2> USE ONLY <1>k7V34jju9ya, Sizes, Location, Design
<2>1. K14
  BY <1>BVNGgr9i2, V21_Inv_K14, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF K14, KPinned, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ue5GBMQ0DV9u.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
    /\ x < nx /\ xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xp[x] \in PInst
    /\ pst[xsrc[x]] \in {"priv", "drain", "quar"} /\ prefc[xsrc[x]] = 0
<2> USE ONLY <1>ue5GBMQ0DV9u, Sizes, Location, Design
<2>1. K2 /\ K4 /\ K5 /\ K7 /\ YN04 /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, XRecvRel, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, SMT, Sizes, Location, Design DEF K2, YN04, Xids, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K2, ExpPage, ExpInst, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. Loc(xsrc[x]) \in PInst
  BY <2>2, <2>3, <1>yOo, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. x \in led[xsrc[x]]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K4, ExpPage, RO_SharedFieldsFrame, Sizes, Location, Design
<2>6. OwnedBy(xsrc[x],xr[x],xg[x]) /\ XGvsJ(xsrc[x])
  BY <2>1, <2>3, <2>5, <1>MeRGJ, Sizes, Location, Design DEF K5, RO_SharedFieldsFrame, Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>6, Zenon, Sizes, Location, Design DEF OwnedBy, XGvsJ, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qrX7l4c0RwbP.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE I3PLV(x)
<2> USE ONLY <1>qrX7l4c0RwbP, Sizes, Location, Design
<2>1. K7 /\ xsrc[x] \in Pages /\ prefc[xsrc[x]] = 0 /\ pst[xsrc[x]] # "free"
  BY <1>BVNGgr9i2, <1>ue5GBMQ0DV9u, Zenon, V21_Inv_K7, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. nU_pl /\ owHnyB /\ Gpa5dVU /\ f9onk /\ KRyh /\ SWs37 /\ Q73Wr /\ m0XQV
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. (pst[xsrc[x]] = "drain" => pqp[xsrc[x]] = 0) /\ EvidenceAt(xsrc[x],x)
  BY <2>1, Zenon, Sizes, Location, Design DEF K7, XRecvRel, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. pst' = [pst EXCEPT ![xsrc[x]] = IF H9OAZxi(xsrc[x],x) THEN "free" ELSE @]
    /\ pr' = [pr EXCEPT ![xsrc[x]] = IF H9OAZxi(xsrc[x],x) THEN 0 ELSE @]
    /\ pgn' = [pgn EXCEPT ![xsrc[x]] = IF H9OAZxi(xsrc[x],x) THEN 0 ELSE @]
    /\ plt' = [plt EXCEPT ![xsrc[x]] = IF H9OAZxi(xsrc[x],x) THEN 0 ELSE @]
    /\ led' = [led EXCEPT ![xsrc[x]] = @ \ {x}] /\ UNCHANGED <<sled,prefc,pqp>>
  BY <2>1, <2>2, <2>3, <1>Oku4k92x6u, <1>ZKCHZPyT9, <1>kdU29ag5ji, <1>MZYq5xlivZ, <1>D4czd3i5JD, <1>BhfIXqWOjp0, <1>p3rxKdxXTC8o, <1>nbW5Ar9MKN, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>4, Zenon, Sizes, Location, Design DEF XRecvRel, I3PLV, QkFcpo, H9OAZxi, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QTKtL5Y6eCfrd.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"]
<2> USE ONLY <1>QTKtL5Y6eCfrd, Sizes, Location, Design
<2>1. K12 /\ kvUux
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. PICK m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
      /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
  BY Zenon, Sizes, Location, Design DEF XRecvRel, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. N1WQNkJ(m)
  BY <2>1, <2>2, <1>RfrdJDrFe7, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ((iv[x] = "cqe" /\ hw[x] = "stop" /\ m.ok = hok[x]) \/ (iv[x] = "nopost" /\ ~m.ok))
  BY <2>2, <2>3, Zenon, Sizes, Location, Design DEF N1WQNkJ, jM474, RO_SharedFieldsFrame, Sizes, Location, Design
<2>5. m.ok \in BOOLEAN
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF kvUux, RO_SharedFieldsFrame, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>4, <2>5, Zenon, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CbZRySqV9IC5OZI.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE \A q \in Pages : pst'[q] = IF q=xsrc[x] /\ QkFcpo(x) THEN "free" ELSE pst[q]
<2> USE ONLY <1>CbZRySqV9IC5OZI, Sizes, Location, Design
<2>1. nU_pl
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. pst' = [pst EXCEPT ![xsrc[x]] = IF QkFcpo(x) THEN "free" ELSE @]
  BY <1>qrX7l4c0RwbP, Zenon, Sizes, Location, Design DEF I3PLV, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF nU_pl, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Dq0CPBh04MQFNn.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE \A q \in Pages : pr'[q] = IF q=xsrc[x] /\ QkFcpo(x) THEN 0 ELSE pr[q]
<2> USE ONLY <1>Dq0CPBh04MQFNn, Sizes, Location, Design
<2>1. KRyh
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. pr' = [pr EXCEPT ![xsrc[x]] = IF QkFcpo(x) THEN 0 ELSE @]
  BY <1>qrX7l4c0RwbP, Zenon, Sizes, Location, Design DEF I3PLV, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF KRyh, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r1TCDTrpQoW8Pxu.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE \A q \in Pages : pgn'[q] = IF q=xsrc[x] /\ QkFcpo(x) THEN 0 ELSE pgn[q]
<2> USE ONLY <1>r1TCDTrpQoW8Pxu, Sizes, Location, Design
<2>1. SWs37
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. pgn' = [pgn EXCEPT ![xsrc[x]] = IF QkFcpo(x) THEN 0 ELSE @]
  BY <1>qrX7l4c0RwbP, Zenon, Sizes, Location, Design DEF I3PLV, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF SWs37, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tt8xgaTeFCQTnry.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE \A q \in Pages : plt'[q] = IF q=xsrc[x] /\ QkFcpo(x) THEN 0 ELSE plt[q]
<2> USE ONLY <1>Tt8xgaTeFCQTnry, Sizes, Location, Design
<2>1. Q73Wr
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. plt' = [plt EXCEPT ![xsrc[x]] = IF QkFcpo(x) THEN 0 ELSE @]
  BY <1>qrX7l4c0RwbP, Zenon, Sizes, Location, Design DEF I3PLV, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF Q73Wr, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BNg5okN3y2cH6DT.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE \A q \in Pages : led'[q] = IF q=xsrc[x] THEN led[q] \ {x} ELSE led[q]
<2> USE ONLY <1>BNg5okN3y2cH6DT, Sizes, Location, Design
<2>1. m0XQV
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>qrX7l4c0RwbP, Zenon, Sizes, Location, Design DEF I3PLV, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF m0XQV, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q8oV98TC0gHoYS5p.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE QkFcpo(x) => led'[xsrc[x]] = {} /\ sled[xsrc[x]] = {} /\ sfly[xsrc[x]] = {} /\ pqp[xsrc[x]] = 0
<2> USE ONLY <1>Q8oV98TC0gHoYS5p, Sizes, Location, Design
<2>1. K6 /\ K7 /\ xsrc[x] \in Pages
  BY <1>BVNGgr9i2, <1>ue5GBMQ0DV9u, V21_Inv_K6, V21_Inv_K7, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>BNg5okN3y2cH6DT, Zenon, Sizes, Location, Design DEF QkFcpo, K6, K7, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2636_PdRORead_PdCXRecvRelEffects


<1>Y7bFISoKXxzNy1NPgI1t1.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>Y7bFISoKXxzNy1NPgI1t1, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW i \in Inst, NEW s \in KSlots,
                    NEW e \in krs[i][s]
              PROVE kpin[i][s] => KHeld(e)'
  BY <1>XRE0PLtFO8E, Sizes, Location, Design DEF NoFreeUnderRead, RO_SharedFieldsFrame, Sizes, Location, Design
<2>1. e[3] \in KPages
  BY <1>RbdlkJN4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. kpin[i][s] => KPinned(e[3])
  BY <1>k7V34jju9ya, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. kpin[i][s] => KHeld(e)
  BY <1>BVNGgr9i2, SMT, V21_Inv_NoFreeUnderRead, V21_Inv_Safety, Sizes, Location, Design DEF Safety, NoFreeUnderRead, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. e[3] = xsrc[x] => (KPinned(e[3]) <=> KPinned(xsrc[x]))
  BY SMT, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. kpin[i][s] => ~(e[3] = xsrc[x] /\ QkFcpo(x))
  BY <2>2, <2>4, PTL, Sizes, Location, Design DEF QkFcpo, RO_SharedFieldsFrame, Sizes, Location, Design
<2>6. kpin[i][s] => KHeld(e)'
  BY <2>1, <2>3, <2>5, <1>CbZRySqV9IC5OZI, <1>Dq0CPBh04MQFNn,
     <1>r1TCDTrpQoW8Pxu, SMT, Sizes, Location, Design DEF KHeld, SHeld, KPages, RO_SharedFieldsFrame, Sizes, Location, Design
<2>7. QED
  BY <2>6, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2642_PdRORead_PdCXRecvRelLNoFreeUnderRead


<1>FrCR8mSSHAKNkzlOL6oRhEUc.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>FrCR8mSSHAKNkzlOL6oRhEUc, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>d9e3rwFqkUMgpB3C5Sj, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. NoFreeUnderRead'
 BY <2>1, <1>Y7bFISoKXxzNy1NPgI1t1, <1>w1A6qbKTB1, V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2643_PdROReadCell_XRecvRel_NoFreeUnderRead


<1>Z7OtX8a26d.        
  ASSUME NEW x \in Xids, NEW p \in Pages, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE ~(p = xsrc[x] /\ QkFcpo(x)) =>
    UNCHANGED <<pst[p], pr[p], pgn[p], plt[p]>>
  BY ONLY <1>Z7OtX8a26d, Sizes, Location, Design, <1>CbZRySqV9IC5OZI, <1>Dq0CPBh04MQFNn, <1>r1TCDTrpQoW8Pxu,
     <1>Tt8xgaTeFCQTnry, SMT DEF Sizes, Location, Design
\* T2M-END R2M2644_PdRORead_PdCXPageFacts

\* T2M-SCOPE R2M2645_PdRORead_PdCXFlightFacts
\* T2M-BODY R2M2645_PdRORead_PdCXFlightFacts
\* T2M-LOCAL-VISIBILITY

<1>JAHsPrd.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE hw[x] \in {"none","stop"} /\ ~InFl(x)
<2> USE ONLY <1>JAHsPrd, Sizes, Location, Design
<2>1. K3
  BY <1>BVNGgr9i2, V21_Inv_K3, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. (iv[x] = "cqe" /\ hw[x] = "stop") \/ iv[x] = "nopost"
  BY <1>QTKtL5Y6eCfrd, Zenon, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K3, InFl, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ld5km97GlZ8ZKKV.        
  ASSUME NEW x \in Xids, NEW y \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE hw[y] = "fly" => UNCHANGED <<pst[xsrc[y]],pr[xsrc[y]],pgn[xsrc[y]]>>
<2> USE ONLY <1>Ld5km97GlZ8ZKKV, Sizes, Location, Design
<2>1. hw[x] # "fly"
  BY <1>JAHsPrd, SMT, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. hw[y] = "fly" => xsrc[y] \in Pages /\ y \in led[xsrc[y]]
  BY <1>I8rT1jn17RP5Z, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hw[y] = "fly" => ~(xsrc[y] = xsrc[x] /\ QkFcpo(x))
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF QkFcpo, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. QED
  BY <2>2, <2>3, <1>Z7OtX8a26d, <1>XRE0PLtFO8E, SMT, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H56fkL6Gn9Pxc4.        
  ASSUME NEW x \in Xids, NEW y \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE Writing(y) => UNCHANGED <<pst[xdst[y]],pr[xdst[y]],pgn[xdst[y]]>>
<2> USE ONLY <1>H56fkL6Gn9Pxc4, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ YN04
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. Writing(y) => y < nx /\ xdst[y] \in Pages
  BY <2>1, <1>OZlUbWexrUAisB, <1>tAlUylw7LYnIreiB, Sizes, Location, Design DEF Writing, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. Writing(y) => Loc(xdst[y]) \in DInst
  BY <2>2, <1>KKS, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. Loc(xsrc[x]) \in PInst
  BY <1>ue5GBMQ0DV9u, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. Writing(y) => xdst[y] # xsrc[x]
  BY <2>3, <2>4, Sizes, SMT, Location, Design DEF DInst, PInst, NL, RO_SharedFieldsFrame, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>5, <1>Z7OtX8a26d, <1>XRE0PLtFO8E, SMT, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ig89hN7PPBNH.        
  ASSUME NEW x \in Xids, NEW p \in Pages, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE sfly[p] # {} => UNCHANGED <<pst[p],pr[p],pgn[p]>>
<2> USE ONLY <1>ig89hN7PPBNH, Sizes, Location, Design
<2>1. QkFcpo(x) => sfly[xsrc[x]] = {}
  BY <1>Q8oV98TC0gHoYS5p, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Z7OtX8a26d, <1>XRE0PLtFO8E, SMT, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2645_PdRORead_PdCXFlightFacts

\* T2M-SCOPE R2M2646_PdRORead_PdCXRecvRelLNoStrayAccess

<1>o8sUzjcvOOYvBo13oWo.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE NoStrayAccess'
<2> USE ONLY <1>o8sUzjcvOOYvBo13oWo, Sizes, Location, Design
<2>1. NoStrayAccess /\ K14
  BY <1>BVNGgr9i2, V21_Inv_K14, V21_Inv_NoStrayAccess, V21_Inv_Safety, Sizes, Location, Design DEF Safety, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. UNCHANGED <<hw, xdst, xsrc, xr, xg, sfly, kfly, kpin, krs>>
  BY <1>XRE0PLtFO8E, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. (\A y \in Xids : Writing(y) => Held(xdst[y],y))'
  BY <2>1, <2>2, <1>H56fkL6Gn9Pxc4, SMT, Sizes, Location, Design DEF NoStrayAccess, Held, Writing, InFl, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. (\A y \in Xids : hw[y] = "fly" => Held(xsrc[y],y))'
  BY <2>1, <2>2, <1>Ld5km97GlZ8ZKKV, SMT, Sizes, Location, Design DEF NoStrayAccess, Held, RO_SharedFieldsFrame, Sizes, Location, Design
<2>5. (\A p \in Pages : \A t \in sfly[p] :
    (pst[p] \in {"priv","drain","quar"} /\ pr[p] = t[1] /\ pgn[p] = t[2]) \/
    (pst[p] = "shared" /\ IsD(Loc(p))))'
  BY <2>1, <2>2, <1>ig89hN7PPBNH, SMT, Sizes, Location, Design DEF NoStrayAccess, RO_SharedFieldsFrame, Sizes, Location, Design
<2>6. (\A i \in Inst, s \in KSlots : kfly[i][s] => \A e \in krs[i][s] : KHeld(e))'
  BY <2>1, <2>2, <1>Y7bFISoKXxzNy1NPgI1t1, SMT, Sizes, Location, Design DEF K14, NoFreeUnderRead, RO_SharedFieldsFrame, Sizes, Location, Design
<2>7. QED
  BY <2>3, <2>4, <2>5, <2>6, Sizes, Location, Design DEF NoStrayAccess, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2646_PdRORead_PdCXRecvRelLNoStrayAccess


<1>CId8pFmdGcKprTDtHsVRcj.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE NoStrayAccess'
<2> USE ONLY <1>CId8pFmdGcKprTDtHsVRcj, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>d9e3rwFqkUMgpB3C5Sj, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. NoStrayAccess'
 BY <2>1, <1>o8sUzjcvOOYvBo13oWo, <1>w1A6qbKTB1, V21_Inv_NoStrayAccess, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2647_PdROReadCell_XRecvRel_NoStrayAccess


<1>nWVqKsXlccya41SQQgcN.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>nWVqKsXlccya41SQQgcN, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (pst[bb_p] = "shared" => (ptl[bb_p] = PS /\ NoWriteInto(bb_p)))'
  BY Sizes, Location, Design DEF BaseSealOnlyLanded, Sizes, Location, Design
<2>1. BaseSealOnlyLanded /\ mWgRR
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, soyHJ, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>YfveNqRTYXF, <1>FC4DC9nDcJoU, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. (pst[bb_p] = "shared" => (ptl[bb_p] = PS /\ NoWriteInto(bb_p)))'
  BY <2>1, <2>2, <1>Ta3YpEMcfTGE, <1>BiWndTWrglzzEYZ, <1>y7gjTn9fXu9wWP, <1>taLqwJi5FKVqS2e, <1>gCprCRLt80Nc82a, <1>UdxpTl1qtwBVZfQ, <1>KkzF2J72wMDHslR, <1>YtWi5AEu1q0roMt, <1>TfeXEb4e4vK, <1>NUjAQt83YIoMMYli, <1>aU6, Design, Sizes, SMT, Location DEF BXFree, DInst, InFl, IsD, IsP, KPinned, NL, NoWriteInto, PInst, BaseSealOnlyLanded, mWgRR, Tag, Writing, KPages, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF BaseSealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M2695_PdROBase_PdCXRecvRelLSealOnlyLanded


<1>ZyiVF5IezRerHEcXzp22M4I.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE SealOnlyLanded'
<2> USE ONLY <1>ZyiVF5IezRerHEcXzp22M4I, Sizes, Location, Design
<2>1. BaseSealOnlyLanded' BY <1>nWVqKsXlccya41SQQgcN, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ZyiVF5IezRerHEcXzp22M4I, <1>PPz9uKbRgJBnQJC3CjOZ, V22_T_xdst, SMTT(5)

<2>3. SharedImmutable' BY <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, Location, Design DEF SealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M2696_PdROSafety_XRecvRel_SealOnlyLanded


<1> QED BY <1>CId8pFmdGcKprTDtHsVRcj, <1>FrCR8mSSHAKNkzlOL6oRhEUc, <1>ZyiVF5IezRerHEcXzp22M4I, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_XRecvRel_03_02 SHA 9a8593c5f2dd77d57df80ac34530bb2771aab51293b0d37ff293abff42a81d36
USE DEF V21_Inv_K8, V21_Inv_NoEvictUnderRDMA, V22_T_pst, V22_T_schoice, V22_T_smap, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF Part_XRecvRel_03_01, V21_Inv_K3, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst
THEOREM Part_XRecvRel_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE (KReadIntegrity)' /\ (ReadOwnLanded)'
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


           RO_E_smap == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           RO_E_schoice == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           RO_E_spst == spst'=[p \in SPages |-> IF \E x \in Xids : RO_Quarantine(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF RO_Drop(p) THEN "free" ELSE IF RO_Ended(p) THEN "drain" ELSE spst[p]]


           RO_E_dpreOK == dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop" THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") => (IF hw[x]="issued" THEN xprefixOK[x] ELSE RO_Valid(x)) ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]


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

           cfSmf(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])


           MzApF(m) == m.t = "hello" => m.fr \in Inst


           FCKuU(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))


           BUBIt(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))


           r2Xn1(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])


           HU6aO(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])


           DeQaF(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")


           KILoj(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)


           afxwj(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))


           DfoqKS(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))


           xxWeDyN(m) ==
             /\ cfSmf(m)
             /\ MzApF(m)
             /\ FCKuU(m)
             /\ BUBIt(m)
             /\ r2Xn1(m)
             /\ HU6aO(m)
             /\ DeQaF(m)
             /\ KILoj(m)
             /\ afxwj(m)
             /\ DfoqKS(m)

           \* T2M-LOCAL-VISIBILITY

           BEvFree(p,x) == pst[p] = "drain" /\ led[p] \ {x} = {} /\ sled[p] = {} /\ ~KPinned(p)

           \* T2M-LOCAL-VISIBILITY

           NMgti(p) ==
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


           BXFree(x) == pst[xsrc[x]] = "drain" /\ led[xsrc[x]] \ {x} = {} /\ sled[xsrc[x]] = {} /\ ~KPinned(xsrc[x])


           BXRel(x) ==
             /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
             /\ \E m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
                  /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
             /\ LET p == xsrc[x] IN
                  /\ pst' = [pst EXCEPT ![p] = IF BXFree(x) THEN "free" ELSE @]
                  /\ pr' = [pr EXCEPT ![p] = IF BXFree(x) THEN 0 ELSE @]
                  /\ pgn' = [pgn EXCEPT ![p] = IF BXFree(x) THEN 0 ELSE @]
                  /\ plt' = [plt EXCEPT ![p] = IF BXFree(x) THEN 0 ELSE @]
                  /\ led' = [led EXCEPT ![p] = @ \ {x}]
             /\ UNCHANGED <<sled, prefc, pqp>>

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

           JP4iJ(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])


           YUpXU(m) == m.t = "hello" => m.fr \in Inst


           QZULu(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))


           EhqlW(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))


           Cnsrx(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])


           o_ePZ(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])


           scI5d(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")


           BEuuF(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)


           jM474(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))


           C4qt0T(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))


           N1WQNkJ(m) ==
             /\ JP4iJ(m)
             /\ YUpXU(m)
             /\ QZULu(m)
             /\ EhqlW(m)
             /\ Cnsrx(m)
             /\ o_ePZ(m)
             /\ scI5d(m)
             /\ BEuuF(m)
             /\ jM474(m)
             /\ C4qt0T(m)

           \* T2M-LOCAL-VISIBILITY

           H9OAZxi(p,x) == pst[p] = "drain" /\ led[p] \ {x} = {} /\ sled[p] = {} /\ ~KPinned(p)

           \* T2M-LOCAL-VISIBILITY

           XGvsJ(p) ==
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


           QkFcpo(x) == pst[xsrc[x]] = "drain" /\ led[xsrc[x]] \ {x} = {} /\ sled[xsrc[x]] = {} /\ ~KPinned(xsrc[x])


           I3PLV(x) ==
             /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
             /\ \E m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
                  /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
             /\ LET p == xsrc[x] IN
                  /\ pst' = [pst EXCEPT ![p] = IF QkFcpo(x) THEN "free" ELSE @]
                  /\ pr' = [pr EXCEPT ![p] = IF QkFcpo(x) THEN 0 ELSE @]
                  /\ pgn' = [pgn EXCEPT ![p] = IF QkFcpo(x) THEN 0 ELSE @]
                  /\ plt' = [plt EXCEPT ![p] = IF QkFcpo(x) THEN 0 ELSE @]
                  /\ led' = [led EXCEPT ![p] = @ \ {x}]
             /\ UNCHANGED <<sled, prefc, pqp>>

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_dpreOK, RO_StableStates, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ, cfSmf, MzApF, FCKuU, BUBIt, r2Xn1, HU6aO, DeQaF, KILoj, afxwj, DfoqKS, xxWeDyN, BEvFree, NMgti, BXFree, BXRel, RO_SharedFieldsFrame, Ltilk, ckVW, bXD3, XAoD, ZzYU, v7av, Zwf5Kak, UTxM0oD, Btadh0, hgjUtY, DgHrMJ, UDzxF, NN85, FlLc, mCp6f, EfDhA, TO_H, OFH6nV, nU_pl, KRyh, SWs37, Q73Wr, cDvpy, aHUmFg, m0XQV, YAnOjz, owHnyB, Gpa5dVU, f9onk, fwbJ, mnFW, nOWk, Ha9G, f5DU, KZInRS, hq2umu, ROI9_, M7cq, u1j8N, ECDy, q4kPy, doDAh, YN04, kvUux, WsZW22, d654kx, jl8hSJt, XEsGoy, qryMJ, JP4iJ, YUpXU, QZULu, EhqlW, Cnsrx, o_ePZ, scI5d, BEuuF, jM474, C4qt0T, N1WQNkJ, H9OAZxi, XGvsJ, QkFcpo, I3PLV

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

<1>Fjqj9qY9B4kZ.        
 ASSUME PinInv, UNCHANGED <<ph,smap>>, RO_StableStates
 PROVE SMapIntegrity'
 BY ONLY <1>Fjqj9qY9B4kZ, Sizes, Location, Design, SMTT(10), V21_Inv_KReadIntegrity DEF KReadIntegrity, SMapIntegrity, Active, RO_StableStates, Sizes, Location, Design
\* T2M-END R2M2184_PdROSharedSafety


<1>PPz9uKbRgJBnQJC3CjOZ.        
 ASSUME NEW x \in Xids, XRecvRel(x)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>PPz9uKbRgJBnQJC3CjOZ, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uN4X28w2cQgMbenf0LA5Ir.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>uN4X28w2cQgMbenf0LA5Ir, Sizes, Location, Design, <1>PPz9uKbRgJBnQJC3CjOZ, <1>J0yx6oHL5UyrV DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dU0N9X88erqchOBQF.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>dU0N9X88erqchOBQF, Sizes, Location, Design, Design, SMTT(10) DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9e3rwFqkUMgpB3C5Sj.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE UNCHANGED <<spst,rpgS>>
 BY ONLY <1>d9e3rwFqkUMgpB3C5Sj, Sizes, Location, Design, <1>PPz9uKbRgJBnQJC3CjOZ, <1>dU0N9X88erqchOBQF, <1>rUEzU8wbH, <1>JJE0Tfox9Q, <1>yFQ846plk6kJ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XzPJ80V6WKN9Fdoh.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
 PROVE \A p \in Pages : ~(pst'[p]="priv" /\ pst[p]="free")
<2> USE ONLY <1>XzPJ80V6WKN9Fdoh, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>XzPJ80V6WKN9Fdoh, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OJpowx54MQ.         TypInv => soyHJ
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, soyHJ, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>E9A5rXMgGx.         K12 <=> (\A m \in net : xxWeDyN(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, xxWeDyN, cfSmf, MzApF, FCKuU, BUBIt, r2Xn1, HU6aO, DeQaF, KILoj, afxwj, DfoqKS, Sizes, Location, Design
\* T2M-END R2M2196_PdROBase_PdMessagePred


<1>YfveNqRTYXF.        
  ASSUME NEW x \in Xids, XRecvRel(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>YfveNqRTYXF, Sizes, Location, Design, Zenon DEF EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uDIX08cG2u3.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, mWgRR, PageTo(p,s,q,nl,ns)
  PROVE pst' = [pst EXCEPT ![p] = s]
  BY ONLY <1>uDIX08cG2u3, Sizes, Location, Design, SMT DEF PageTo, mWgRR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ar4X9H09zh.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, voSc, PageTo(p,s,q,nl,ns)
  PROVE pr' = [pr EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>Ar4X9H09zh, Sizes, Location, Design, SMT DEF PageTo, voSc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NM5iZLLL51s.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, ejARA, PageTo(p,s,q,nl,ns)
  PROVE pgn' = [pgn EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>NM5iZLLL51s, Sizes, Location, Design, SMT DEF PageTo, ejARA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nBWZ3HHBgPv.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, nhDFh, PageTo(p,s,q,nl,ns)
  PROVE plt' = [plt EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>nBWZ3HHBgPv, Sizes, Location, Design, SMT DEF PageTo, nhDFh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KIqeLLc4DaY.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, CQcwS, PageTo(p,s,q,nl,ns)
  PROVE led' = [led EXCEPT ![p] = IF s = "free" THEN {} ELSE nl]
  BY ONLY <1>KIqeLLc4DaY, Sizes, Location, Design, SMT DEF PageTo, CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>c2IhQ0JdJmx3.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, gwX1nH, PageTo(p,s,q,nl,ns)
  PROVE sled' = [sled EXCEPT ![p] = IF s = "free" THEN {} ELSE ns]
  BY ONLY <1>c2IhQ0JdJmx3, Sizes, Location, Design, SMT DEF PageTo, gwX1nH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tm2JOZeAYiMf4.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, uhaZUCa, PageTo(p,s,q,nl,ns)
  PROVE prefc' = [prefc EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>Tm2JOZeAYiMf4, Sizes, Location, Design, SMT DEF PageTo, uhaZUCa, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Uh4NhWw0xs0.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, j9ZB2, PageTo(p,s,q,nl,ns)
  PROVE pqp' = [pqp EXCEPT ![p] = IF s = "quar" THEN q ELSE IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>Uh4NhWw0xs0, Sizes, Location, Design, SMT DEF PageTo, j9ZB2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J7N8RIbn490q.        
  ASSUME NEW p, NEW x, pst[p] # "free"
  PROVE AfterEv(p,led[p] \ {x},sled[p]) = (IF BEvFree(p,x) THEN "free" ELSE pst[p])
    /\ (AfterEv(p,led[p] \ {x},sled[p]) = "free" <=> BEvFree(p,x))
  BY ONLY <1>J7N8RIbn490q, Sizes, Location, Design, Design, Zenon DEF AfterEv, PinBlocks, BEvFree, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ctE8KoRCgp.        
  ASSUME NEW p \in Pages, NEW x, mWgRR, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pst' = [pst EXCEPT ![p] = IF BEvFree(p,x) THEN "free" ELSE @]
<2> USE ONLY <1>ctE8KoRCgp, Sizes, Location, Design
<2>1. pst' = [pst EXCEPT ![p] = AfterEv(p,led[p] \ {x},sled[p])]
  BY <1>uDIX08cG2u3, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, mWgRR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>owHjt2cnA.        
  ASSUME NEW p \in Pages, NEW x, voSc, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pr' = [pr EXCEPT ![p] = IF BEvFree(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>owHjt2cnA, Sizes, Location, Design
<2>1. pr' = [pr EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>Ar4X9H09zh, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, voSc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YfuasBWQJz.        
  ASSUME NEW p \in Pages, NEW x, ejARA, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pgn' = [pgn EXCEPT ![p] = IF BEvFree(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>YfuasBWQJz, Sizes, Location, Design
<2>1. pgn' = [pgn EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>NM5iZLLL51s, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, ejARA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PEn2N84IUA.        
  ASSUME NEW p \in Pages, NEW x, nhDFh, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE plt' = [plt EXCEPT ![p] = IF BEvFree(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>PEn2N84IUA, Sizes, Location, Design
<2>1. plt' = [plt EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>nBWZ3HHBgPv, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, nhDFh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UjuAbMKhK6.        
  ASSUME NEW p \in Pages, NEW x, CQcwS, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE led' = [led EXCEPT ![p] = @ \ {x}]
<2> USE ONLY <1>UjuAbMKhK6, Sizes, Location, Design
<2>1. led' = [led EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE led[p] \ {x}]
  BY <1>KIqeLLc4DaY, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KpKoxRq8tn7.        
  ASSUME NEW p \in Pages, NEW x, gwX1nH, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED sled
<2> USE ONLY <1>KpKoxRq8tn7, Sizes, Location, Design
<2>1. sled' = [sled EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE sled[p]]
  BY <1>c2IhQ0JdJmx3, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, gwX1nH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WxYgjy59R6fw.        
  ASSUME NEW p \in Pages, NEW x, uhaZUCa, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED prefc
<2> USE ONLY <1>WxYgjy59R6fw, Sizes, Location, Design
<2>1. prefc' = [prefc EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>Tm2JOZeAYiMf4, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, uhaZUCa, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bXiTxirVXq.        
  ASSUME NEW p \in Pages, NEW x, j9ZB2, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED pqp
<2> USE ONLY <1>bXiTxirVXq, Sizes, Location, Design
<2>1. pqp' = [pqp EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "quar" THEN pqp[p] ELSE IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>Uh4NhWw0xs0, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, j9ZB2, Sizes, Location, Design
\* T2M-END R2M2282_PdROBase_PdCEvidence


<1>kHb.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xsrc[x] \in Pages
  PROVE Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>kHb, Sizes, Location, Design
<2>1. K1 /\ K2 /\ NHqB
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xp[x] = hp[xr[x]][xg[x]]
        /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aU6.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xdst[x] \in Pages
  PROVE Loc(xdst[x]) \in DInst
<2> USE ONLY <1>aU6, Sizes, Location, Design
<2>1. K1 /\ K2 /\ NHqB
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ Loc(xdst[x]) = xd[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lNS6N.        
  ASSUME NEW p \in Pages, K7
  PROVE NMgti(p)
  BY ONLY <1>lNS6N, Sizes, Location, Design DEF K7, NMgti, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ta3YpEMcfTGE.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
    /\ x < nx /\ xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xp[x] \in PInst
    /\ pst[xsrc[x]] \in {"priv", "drain", "quar"} /\ prefc[xsrc[x]] = 0
<2> USE ONLY <1>Ta3YpEMcfTGE, Sizes, Location, Design
<2>1. K2 /\ K4 /\ K5 /\ K7 /\ NHqB /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, XRecvRel, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, SMT, Sizes, Location, Design DEF K2, NHqB, Xids, Sizes, Location, Design
<2>3. xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K2, ExpPage, ExpInst, Sizes, Location, Design
<2>4. Loc(xsrc[x]) \in PInst
  BY <2>2, <2>3, <1>kHb, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. x \in led[xsrc[x]]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K4, ExpPage, Sizes, Location, Design
<2>6. OwnedBy(xsrc[x],xr[x],xg[x]) /\ NMgti(xsrc[x])
  BY <2>1, <2>3, <2>5, <1>lNS6N, Sizes, Location, Design DEF K5, Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>6, Zenon, Sizes, Location, Design DEF OwnedBy, NMgti, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FC4DC9nDcJoU.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE BXRel(x)
<2> USE ONLY <1>FC4DC9nDcJoU, Sizes, Location, Design
<2>1. K7 /\ xsrc[x] \in Pages /\ prefc[xsrc[x]] = 0 /\ pst[xsrc[x]] # "free"
  BY <1>d9xjhNZcw, <1>Ta3YpEMcfTGE, Zenon, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. mWgRR /\ gwX1nH /\ uhaZUCa /\ j9ZB2 /\ voSc /\ ejARA /\ nhDFh /\ CQcwS
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>3. (pst[xsrc[x]] = "drain" => pqp[xsrc[x]] = 0) /\ EvidenceAt(xsrc[x],x)
  BY <2>1, Zenon, Sizes, Location, Design DEF K7, XRecvRel, Sizes, Location, Design
<2>4. pst' = [pst EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN "free" ELSE @]
    /\ pr' = [pr EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN 0 ELSE @]
    /\ pgn' = [pgn EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN 0 ELSE @]
    /\ plt' = [plt EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN 0 ELSE @]
    /\ led' = [led EXCEPT ![xsrc[x]] = @ \ {x}] /\ UNCHANGED <<sled,prefc,pqp>>
  BY <2>1, <2>2, <2>3, <1>ctE8KoRCgp, <1>owHjt2cnA, <1>YfuasBWQJz, <1>PEn2N84IUA, <1>UjuAbMKhK6, <1>KpKoxRq8tn7, <1>WxYgjy59R6fw, <1>bXiTxirVXq, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>4, Zenon, Sizes, Location, Design DEF XRecvRel, BXRel, BXFree, BEvFree, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WEy8K93NWXGYb.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"]
<2> USE ONLY <1>WEy8K93NWXGYb, Sizes, Location, Design
<2>1. K12 /\ j95de
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. PICK m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
      /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
  BY Zenon, Sizes, Location, Design DEF XRecvRel, Sizes, Location, Design
<2>3. xxWeDyN(m)
  BY <2>1, <2>2, <1>E9A5rXMgGx, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ((iv[x] = "cqe" /\ hw[x] = "stop" /\ m.ok = hok[x]) \/ (iv[x] = "nopost" /\ ~m.ok))
  BY <2>2, <2>3, Zenon, Sizes, Location, Design DEF xxWeDyN, afxwj, Sizes, Location, Design
<2>5. m.ok \in BOOLEAN
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF j95de, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>4, <2>5, Zenon, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YtWi5AEu1q0roMt.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : led'[q] \subseteq led[q]
<2> USE ONLY <1>YtWi5AEu1q0roMt, Sizes, Location, Design
<2>1. CQcwS
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BiWndTWrglzzEYZ.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pst'[q] = IF q=xsrc[x] /\ BXFree(x) THEN "free" ELSE pst[q]
<2> USE ONLY <1>BiWndTWrglzzEYZ, Sizes, Location, Design
<2>1. mWgRR
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pst' = [pst EXCEPT ![xsrc[x]] = IF BXFree(x) THEN "free" ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF mWgRR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>y7gjTn9fXu9wWP.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pr'[q] = IF q=xsrc[x] /\ BXFree(x) THEN 0 ELSE pr[q]
<2> USE ONLY <1>y7gjTn9fXu9wWP, Sizes, Location, Design
<2>1. voSc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pr' = [pr EXCEPT ![xsrc[x]] = IF BXFree(x) THEN 0 ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF voSc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>taLqwJi5FKVqS2e.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pgn'[q] = IF q=xsrc[x] /\ BXFree(x) THEN 0 ELSE pgn[q]
<2> USE ONLY <1>taLqwJi5FKVqS2e, Sizes, Location, Design
<2>1. ejARA
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pgn' = [pgn EXCEPT ![xsrc[x]] = IF BXFree(x) THEN 0 ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF ejARA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gCprCRLt80Nc82a.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : plt'[q] = IF q=xsrc[x] /\ BXFree(x) THEN 0 ELSE plt[q]
<2> USE ONLY <1>gCprCRLt80Nc82a, Sizes, Location, Design
<2>1. nhDFh
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. plt' = [plt EXCEPT ![xsrc[x]] = IF BXFree(x) THEN 0 ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF nhDFh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UdxpTl1qtwBVZfQ.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : led'[q] = IF q=xsrc[x] THEN led[q] \ {x} ELSE led[q]
<2> USE ONLY <1>UdxpTl1qtwBVZfQ, Sizes, Location, Design
<2>1. CQcwS
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KkzF2J72wMDHslR.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ \A y \in Xids : xst'[y] = IF y=x THEN (IF ok THEN "landed" ELSE "failed") ELSE xst[y]
<2> USE ONLY <1>KkzF2J72wMDHslR, Sizes, Location, Design
<2>1. tMnUG /\ (\E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"])
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>WEy8K93NWXGYb, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF tMnUG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TfeXEb4e4vK.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : IsD(Loc(q)) =>
    pst'[q] = pst[q] /\ pr'[q] = pr[q] /\ pgn'[q] = pgn[q] /\ plt'[q] = plt[q] /\ led'[q] = led[q]
<2> USE ONLY <1>TfeXEb4e4vK, Sizes, Location, Design
<2>1. Loc(xsrc[x]) \in PInst
  BY <1>Ta3YpEMcfTGE, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>BiWndTWrglzzEYZ, <1>y7gjTn9fXu9wWP, <1>taLqwJi5FKVqS2e, <1>gCprCRLt80Nc82a, <1>UdxpTl1qtwBVZfQ, Sizes, SMT, Location, Design DEF IsD, PInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NUjAQt83YIoMMYli.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE BXFree(x) => led'[xsrc[x]] = {} /\ sled[xsrc[x]] = {} /\ sfly[xsrc[x]] = {} /\ pqp[xsrc[x]] = 0
<2> USE ONLY <1>NUjAQt83YIoMMYli, Sizes, Location, Design
<2>1. K6 /\ K7 /\ xsrc[x] \in Pages
  BY <1>d9xjhNZcw, <1>Ta3YpEMcfTGE, V21_Inv_K6, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>UdxpTl1qtwBVZfQ, Zenon, Sizes, Location, Design DEF BXFree, K6, K7, Sizes, Location, Design
\* T2M-END R2M2283_PdROBase_PdCXRecvRelEffects


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


<1>RfrdJDrFe7.        
 ASSUME RO_SharedFieldsFrame
 PROVE K12 <=> (\A m \in net : N1WQNkJ(m))
  BY ONLY <1>RfrdJDrFe7, Sizes, Location, Design, ZenonT(5) DEF K12, N1WQNkJ, JP4iJ, YUpXU, QZULu, EhqlW, Cnsrx, o_ePZ, scI5d, BEuuF, jM474, C4qt0T, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2533_PdRORead_PdMessagePred


<1>XRE0PLtFO8E.        
  ASSUME NEW x \in Xids, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>XRE0PLtFO8E, Sizes, Location, Design, Zenon DEF EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, pgV, recV, rtV, vars, xV, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2634_PdRORead_PdBXRecvRelFrames


<1>AX2AB7HHJnb.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, nU_pl, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE pst' = [pst EXCEPT ![p] = s]
  BY ONLY <1>AX2AB7HHJnb, Sizes, Location, Design, SMT DEF PageTo, nU_pl, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m5cf5QZ3lv.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, KRyh, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE pr' = [pr EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>m5cf5QZ3lv, Sizes, Location, Design, SMT DEF PageTo, KRyh, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DdTSfyCxwNl.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, SWs37, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE pgn' = [pgn EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>DdTSfyCxwNl, Sizes, Location, Design, SMT DEF PageTo, SWs37, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eLsfYqgXYer.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, Q73Wr, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE plt' = [plt EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>eLsfYqgXYer, Sizes, Location, Design, SMT DEF PageTo, Q73Wr, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Hy3e79FnYxO.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, m0XQV, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE led' = [led EXCEPT ![p] = IF s = "free" THEN {} ELSE nl]
  BY ONLY <1>Hy3e79FnYxO, Sizes, Location, Design, SMT DEF PageTo, m0XQV, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>a8EW7s3Dzl9c.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, owHnyB, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE sled' = [sled EXCEPT ![p] = IF s = "free" THEN {} ELSE ns]
  BY ONLY <1>a8EW7s3Dzl9c, Sizes, Location, Design, SMT DEF PageTo, owHnyB, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZTF89k9er0qHF.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, Gpa5dVU, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE prefc' = [prefc EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>ZTF89k9er0qHF, Sizes, Location, Design, SMT DEF PageTo, Gpa5dVU, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zUqA6Ujy2QX.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, f9onk, PageTo(p,s,q,nl,ns)
  , RO_SharedFieldsFrame
 PROVE pqp' = [pqp EXCEPT ![p] = IF s = "quar" THEN q ELSE IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>zUqA6Ujy2QX, Sizes, Location, Design, SMT DEF PageTo, f9onk, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>U2j2KTye7I7w.        
  ASSUME NEW p, NEW x, pst[p] # "free"
  , RO_SharedFieldsFrame
 PROVE AfterEv(p,led[p] \ {x},sled[p]) = (IF H9OAZxi(p,x) THEN "free" ELSE pst[p])
    /\ (AfterEv(p,led[p] \ {x},sled[p]) = "free" <=> H9OAZxi(p,x))
  BY ONLY <1>U2j2KTye7I7w, Sizes, Location, Design, Design, Zenon DEF AfterEv, PinBlocks, H9OAZxi, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Oku4k92x6u.        
  ASSUME NEW p \in Pages, NEW x, nU_pl, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE pst' = [pst EXCEPT ![p] = IF H9OAZxi(p,x) THEN "free" ELSE @]
<2> USE ONLY <1>Oku4k92x6u, Sizes, Location, Design
<2>1. pst' = [pst EXCEPT ![p] = AfterEv(p,led[p] \ {x},sled[p])]
  BY <1>AX2AB7HHJnb, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, nU_pl, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZKCHZPyT9.        
  ASSUME NEW p \in Pages, NEW x, KRyh, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE pr' = [pr EXCEPT ![p] = IF H9OAZxi(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>ZKCHZPyT9, Sizes, Location, Design
<2>1. pr' = [pr EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>m5cf5QZ3lv, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, KRyh, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kdU29ag5ji.        
  ASSUME NEW p \in Pages, NEW x, SWs37, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE pgn' = [pgn EXCEPT ![p] = IF H9OAZxi(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>kdU29ag5ji, Sizes, Location, Design
<2>1. pgn' = [pgn EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>DdTSfyCxwNl, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, SWs37, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MZYq5xlivZ.        
  ASSUME NEW p \in Pages, NEW x, Q73Wr, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE plt' = [plt EXCEPT ![p] = IF H9OAZxi(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>MZYq5xlivZ, Sizes, Location, Design
<2>1. plt' = [plt EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>eLsfYqgXYer, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, Q73Wr, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D4czd3i5JD.        
  ASSUME NEW p \in Pages, NEW x, m0XQV, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE led' = [led EXCEPT ![p] = @ \ {x}]
<2> USE ONLY <1>D4czd3i5JD, Sizes, Location, Design
<2>1. led' = [led EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE led[p] \ {x}]
  BY <1>Hy3e79FnYxO, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, m0XQV, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BhfIXqWOjp0.        
  ASSUME NEW p \in Pages, NEW x, owHnyB, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE UNCHANGED sled
<2> USE ONLY <1>BhfIXqWOjp0, Sizes, Location, Design
<2>1. sled' = [sled EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE sled[p]]
  BY <1>a8EW7s3Dzl9c, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, owHnyB, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>p3rxKdxXTC8o.        
  ASSUME NEW p \in Pages, NEW x, Gpa5dVU, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE UNCHANGED prefc
<2> USE ONLY <1>p3rxKdxXTC8o, Sizes, Location, Design
<2>1. prefc' = [prefc EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>ZTF89k9er0qHF, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, Gpa5dVU, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nbW5Ar9MKN.        
  ASSUME NEW p \in Pages, NEW x, f9onk, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  , RO_SharedFieldsFrame
 PROVE UNCHANGED pqp
<2> USE ONLY <1>nbW5Ar9MKN, Sizes, Location, Design
<2>1. pqp' = [pqp EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "quar" THEN pqp[p] ELSE IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>zUqA6Ujy2QX, Sizes, Location, Design DEF EvidenceAt, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>U2j2KTye7I7w, SMT, Sizes, Location, Design DEF H9OAZxi, f9onk, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2635_PdRORead_PdCEvidence


<1>yOo.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xsrc[x] \in Pages
  , RO_SharedFieldsFrame
 PROVE Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>yOo, Sizes, Location, Design
<2>1. K1 /\ K2 /\ YN04
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xp[x] = hp[xr[x]][xg[x]]
        /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KKS.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xdst[x] \in Pages
  , RO_SharedFieldsFrame
 PROVE Loc(xdst[x]) \in DInst
<2> USE ONLY <1>KKS, Sizes, Location, Design
<2>1. K1 /\ K2 /\ YN04
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ Loc(xdst[x]) = xd[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MeRGJ.        
  ASSUME NEW p \in Pages, K7
  , RO_SharedFieldsFrame
 PROVE XGvsJ(p)
  BY ONLY <1>MeRGJ, Sizes, Location, Design DEF K7, XGvsJ, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ue5GBMQ0DV9u.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
    /\ x < nx /\ xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xp[x] \in PInst
    /\ pst[xsrc[x]] \in {"priv", "drain", "quar"} /\ prefc[xsrc[x]] = 0
<2> USE ONLY <1>ue5GBMQ0DV9u, Sizes, Location, Design
<2>1. K2 /\ K4 /\ K5 /\ K7 /\ YN04 /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, XRecvRel, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, SMT, Sizes, Location, Design DEF K2, YN04, Xids, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K2, ExpPage, ExpInst, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. Loc(xsrc[x]) \in PInst
  BY <2>2, <2>3, <1>yOo, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. x \in led[xsrc[x]]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K4, ExpPage, RO_SharedFieldsFrame, Sizes, Location, Design
<2>6. OwnedBy(xsrc[x],xr[x],xg[x]) /\ XGvsJ(xsrc[x])
  BY <2>1, <2>3, <2>5, <1>MeRGJ, Sizes, Location, Design DEF K5, RO_SharedFieldsFrame, Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>6, Zenon, Sizes, Location, Design DEF OwnedBy, XGvsJ, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qrX7l4c0RwbP.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE I3PLV(x)
<2> USE ONLY <1>qrX7l4c0RwbP, Sizes, Location, Design
<2>1. K7 /\ xsrc[x] \in Pages /\ prefc[xsrc[x]] = 0 /\ pst[xsrc[x]] # "free"
  BY <1>BVNGgr9i2, <1>ue5GBMQ0DV9u, Zenon, V21_Inv_K7, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. nU_pl /\ owHnyB /\ Gpa5dVU /\ f9onk /\ KRyh /\ SWs37 /\ Q73Wr /\ m0XQV
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. (pst[xsrc[x]] = "drain" => pqp[xsrc[x]] = 0) /\ EvidenceAt(xsrc[x],x)
  BY <2>1, Zenon, Sizes, Location, Design DEF K7, XRecvRel, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. pst' = [pst EXCEPT ![xsrc[x]] = IF H9OAZxi(xsrc[x],x) THEN "free" ELSE @]
    /\ pr' = [pr EXCEPT ![xsrc[x]] = IF H9OAZxi(xsrc[x],x) THEN 0 ELSE @]
    /\ pgn' = [pgn EXCEPT ![xsrc[x]] = IF H9OAZxi(xsrc[x],x) THEN 0 ELSE @]
    /\ plt' = [plt EXCEPT ![xsrc[x]] = IF H9OAZxi(xsrc[x],x) THEN 0 ELSE @]
    /\ led' = [led EXCEPT ![xsrc[x]] = @ \ {x}] /\ UNCHANGED <<sled,prefc,pqp>>
  BY <2>1, <2>2, <2>3, <1>Oku4k92x6u, <1>ZKCHZPyT9, <1>kdU29ag5ji, <1>MZYq5xlivZ, <1>D4czd3i5JD, <1>BhfIXqWOjp0, <1>p3rxKdxXTC8o, <1>nbW5Ar9MKN, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>4, Zenon, Sizes, Location, Design DEF XRecvRel, I3PLV, QkFcpo, H9OAZxi, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QTKtL5Y6eCfrd.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"]
<2> USE ONLY <1>QTKtL5Y6eCfrd, Sizes, Location, Design
<2>1. K12 /\ kvUux
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. PICK m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
      /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
  BY Zenon, Sizes, Location, Design DEF XRecvRel, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. N1WQNkJ(m)
  BY <2>1, <2>2, <1>RfrdJDrFe7, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ((iv[x] = "cqe" /\ hw[x] = "stop" /\ m.ok = hok[x]) \/ (iv[x] = "nopost" /\ ~m.ok))
  BY <2>2, <2>3, Zenon, Sizes, Location, Design DEF N1WQNkJ, jM474, RO_SharedFieldsFrame, Sizes, Location, Design
<2>5. m.ok \in BOOLEAN
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF kvUux, RO_SharedFieldsFrame, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>4, <2>5, Zenon, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kNFIUvMsBxQxTUd.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE \A q \in Pages : led'[q] \subseteq led[q]
<2> USE ONLY <1>kNFIUvMsBxQxTUd, Sizes, Location, Design
<2>1. m0XQV
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>qrX7l4c0RwbP, Zenon, Sizes, Location, Design DEF I3PLV, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF m0XQV, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CbZRySqV9IC5OZI.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE \A q \in Pages : pst'[q] = IF q=xsrc[x] /\ QkFcpo(x) THEN "free" ELSE pst[q]
<2> USE ONLY <1>CbZRySqV9IC5OZI, Sizes, Location, Design
<2>1. nU_pl
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. pst' = [pst EXCEPT ![xsrc[x]] = IF QkFcpo(x) THEN "free" ELSE @]
  BY <1>qrX7l4c0RwbP, Zenon, Sizes, Location, Design DEF I3PLV, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF nU_pl, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Dq0CPBh04MQFNn.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE \A q \in Pages : pr'[q] = IF q=xsrc[x] /\ QkFcpo(x) THEN 0 ELSE pr[q]
<2> USE ONLY <1>Dq0CPBh04MQFNn, Sizes, Location, Design
<2>1. KRyh
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. pr' = [pr EXCEPT ![xsrc[x]] = IF QkFcpo(x) THEN 0 ELSE @]
  BY <1>qrX7l4c0RwbP, Zenon, Sizes, Location, Design DEF I3PLV, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF KRyh, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r1TCDTrpQoW8Pxu.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE \A q \in Pages : pgn'[q] = IF q=xsrc[x] /\ QkFcpo(x) THEN 0 ELSE pgn[q]
<2> USE ONLY <1>r1TCDTrpQoW8Pxu, Sizes, Location, Design
<2>1. SWs37
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. pgn' = [pgn EXCEPT ![xsrc[x]] = IF QkFcpo(x) THEN 0 ELSE @]
  BY <1>qrX7l4c0RwbP, Zenon, Sizes, Location, Design DEF I3PLV, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF SWs37, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tt8xgaTeFCQTnry.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE \A q \in Pages : plt'[q] = IF q=xsrc[x] /\ QkFcpo(x) THEN 0 ELSE plt[q]
<2> USE ONLY <1>Tt8xgaTeFCQTnry, Sizes, Location, Design
<2>1. Q73Wr
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. plt' = [plt EXCEPT ![xsrc[x]] = IF QkFcpo(x) THEN 0 ELSE @]
  BY <1>qrX7l4c0RwbP, Zenon, Sizes, Location, Design DEF I3PLV, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF Q73Wr, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BNg5okN3y2cH6DT.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE \A q \in Pages : led'[q] = IF q=xsrc[x] THEN led[q] \ {x} ELSE led[q]
<2> USE ONLY <1>BNg5okN3y2cH6DT, Sizes, Location, Design
<2>1. m0XQV
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>qrX7l4c0RwbP, Zenon, Sizes, Location, Design DEF I3PLV, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF m0XQV, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ovqpab1O1bdQEkD.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ \A y \in Xids : xst'[y] = IF y=x THEN (IF ok THEN "landed" ELSE "failed") ELSE xst[y]
<2> USE ONLY <1>Ovqpab1O1bdQEkD, Sizes, Location, Design
<2>1. q4kPy /\ (\E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"])
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, <1>QTKtL5Y6eCfrd, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF q4kPy, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ei78HNAWLJG.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE \A q \in Pages : IsD(Loc(q)) =>
    pst'[q] = pst[q] /\ pr'[q] = pr[q] /\ pgn'[q] = pgn[q] /\ plt'[q] = plt[q] /\ led'[q] = led[q]
<2> USE ONLY <1>Ei78HNAWLJG, Sizes, Location, Design
<2>1. Loc(xsrc[x]) \in PInst
  BY <1>ue5GBMQ0DV9u, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>CbZRySqV9IC5OZI, <1>Dq0CPBh04MQFNn, <1>r1TCDTrpQoW8Pxu, <1>Tt8xgaTeFCQTnry, <1>BNg5okN3y2cH6DT, Sizes, SMT, Location, Design DEF IsD, PInst, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q8oV98TC0gHoYS5p.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE QkFcpo(x) => led'[xsrc[x]] = {} /\ sled[xsrc[x]] = {} /\ sfly[xsrc[x]] = {} /\ pqp[xsrc[x]] = 0
<2> USE ONLY <1>Q8oV98TC0gHoYS5p, Sizes, Location, Design
<2>1. K6 /\ K7 /\ xsrc[x] \in Pages
  BY <1>BVNGgr9i2, <1>ue5GBMQ0DV9u, V21_Inv_K6, V21_Inv_K7, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>BNg5okN3y2cH6DT, Zenon, Sizes, Location, Design DEF QkFcpo, K6, K7, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2636_PdRORead_PdCXRecvRelEffects


<1>KNtZuKjPrnmiqtpjW7GX.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  , RO_SharedFieldsFrame
 PROVE BaseKReadIntegrity'
<2> USE ONLY <1>KNtZuKjPrnmiqtpjW7GX, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_i \in Inst, NEW bb_s \in KSlots
                 PROVE (kfly[bb_i][bb_s] => \A e \in krs[bb_i][bb_s] : Loc(e[3]) = bb_i /\ KHeld(e) /\ KData(bb_i, e))'
  BY Sizes, Location, Design DEF BaseKReadIntegrity, RO_SharedFieldsFrame, Sizes, Location, Design
<2>1. BaseKReadIntegrity /\ K14 /\ UDzxF /\ DgHrMJ /\ nU_pl /\ KRyh /\ SWs37 /\ Q73Wr
  BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_BaseSafety, V21_Inv_K14, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, qryMJ, BaseSafety, RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>XRE0PLtFO8E, <1>qrX7l4c0RwbP, Sizes, Location, Design DEF I3PLV, RO_SharedFieldsFrame, Sizes, Location, Design
<2>3. (kfly[bb_i][bb_s] => \A e \in krs[bb_i][bb_s] : Loc(e[3]) = bb_i /\ KHeld(e) /\ KData(bb_i, e))'
  BY <2>1, <2>2, <1>ue5GBMQ0DV9u, <1>CbZRySqV9IC5OZI, <1>Dq0CPBh04MQFNn, <1>r1TCDTrpQoW8Pxu, <1>Tt8xgaTeFCQTnry, <1>BNg5okN3y2cH6DT, <1>Ovqpab1O1bdQEkD, <1>kNFIUvMsBxQxTUd, <1>Ei78HNAWLJG, <1>Q8oV98TC0gHoYS5p, <1>KKS, Design, Sizes, SMT, Location DEF QkFcpo, DInst, InFl, IsD, IsP, K14, KData, KHeld, KPinned, BaseKReadIntegrity, NL, NoWriteInto, PInst, DgHrMJ, UDzxF, SWs37, Q73Wr, KRyh, nU_pl, Tag, Writing, KPages, SHeld, SData, RO_SharedFieldsFrame, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF BaseKReadIntegrity, RO_SharedFieldsFrame, Sizes, Location, Design
\* T2M-END R2M2640_PdRORead_PdCXRecvRelLKReadIntegrity


<1>Zmqw98GZIPo5rM6GYQvRwXP.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>Zmqw98GZIPo5rM6GYQvRwXP, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>d9e3rwFqkUMgpB3C5Sj, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. BaseKReadIntegrity'
 BY <2>1, <1>KNtZuKjPrnmiqtpjW7GX, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. SMapIntegrity' BY <1>PPz9uKbRgJBnQJC3CjOZ, <1>uN4X28w2cQgMbenf0LA5Ir, <1>d9e3rwFqkUMgpB3C5Sj, <1>Fjqj9qY9B4kZ, Sizes, Location, Design DEF RO_StableStates, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2641_PdROReadCell_XRecvRel_KReadIntegrity


<1>d1q3gdYnCTTnEWZ6oe4.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE BaseReadOwnLanded'
<2> USE ONLY <1>d1q3gdYnCTTnEWZ6oe4, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_j \in DInst, NEW bb_r \in Rq
                 PROVE (ph[bb_j][bb_r] \in {"run", "ovl"} =>
    LET q == rpg[bb_j][bb_r] IN
      /\ q \in Pages /\ NoWriteInto(q)
      /\ \/ ~rhit[bb_j][bb_r] /\ pst[q] = "priv" /\ pr[q] = bb_r /\ pgn[q] = rg[bb_j][bb_r] /\ ptl[q] = NTok(bb_r, rg[bb_j][bb_r]) /\ pvis[q]
         \/ rhit[bb_j][bb_r] /\ pst[q] = "shared" /\ ptl[q] = PS)'
  BY Sizes, Location, Design DEF BaseReadOwnLanded, Sizes, Location, Design
<2>1. BaseReadOwnLanded /\ K8 /\ lwx7 /\ T2_wJ /\ mWgRR /\ voSc /\ ejARA
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, soyHJ, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>YfveNqRTYXF, <1>FC4DC9nDcJoU, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. (ph[bb_j][bb_r] \in {"run", "ovl"} =>
    LET q == rpg[bb_j][bb_r] IN
      /\ q \in Pages /\ NoWriteInto(q)
      /\ \/ ~rhit[bb_j][bb_r] /\ pst[q] = "priv" /\ pr[q] = bb_r /\ pgn[q] = rg[bb_j][bb_r] /\ ptl[q] = NTok(bb_r, rg[bb_j][bb_r]) /\ pvis[q]
         \/ rhit[bb_j][bb_r] /\ pst[q] = "shared" /\ ptl[q] = PS)'
  BY <2>1, <2>2, <1>Ta3YpEMcfTGE, <1>BiWndTWrglzzEYZ, <1>y7gjTn9fXu9wWP, <1>taLqwJi5FKVqS2e, <1>gCprCRLt80Nc82a, <1>UdxpTl1qtwBVZfQ, <1>KkzF2J72wMDHslR, <1>YtWi5AEu1q0roMt, <1>TfeXEb4e4vK, <1>NUjAQt83YIoMMYli, <1>aU6, Design, Sizes, SMT, Location DEF Active, BXFree, DInst, InFl, IsD, IsP, K8, KPinned, NL, NoWriteInto, OwnedBy, PInst, BaseReadOwnLanded, ejARA, lwx7, voSc, mWgRR, T2_wJ, Tag, Writing, KPages, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF BaseReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M2693_PdROBase_PdCXRecvRelLReadOwnLanded


<1>b8YDE6kNkqRO2GaZyoszx2.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE ReadOwnLanded'
<2> USE ONLY <1>b8YDE6kNkqRO2GaZyoszx2, Sizes, Location, Design
<2>1. BaseReadOwnLanded' BY <1>d1q3gdYnCTTnEWZ6oe4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 => \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} => dpreOK'[rpg'[j][r]]
 BY <1>PPz9uKbRgJBnQJC3CjOZ, <1>XzPJ80V6WKN9Fdoh, <1>umw00Yrfg, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF ReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M2694_PdROSafety_XRecvRel_ReadOwnLanded


<1> QED BY <1>Zmqw98GZIPo5rM6GYQvRwXP, <1>b8YDE6kNkqRO2GaZyoszx2, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF Part_XRecvRel_03_02, V21_Inv_BaseSafety, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K12, V21_Inv_K14, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_T_pst, V22_T_schoice, V22_T_smap, V22_T_xsrcP, V22_T_xsrcS
====
