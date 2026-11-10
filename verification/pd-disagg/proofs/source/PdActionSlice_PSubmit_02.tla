---- MODULE PdActionSlice_PSubmit_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_d3dd8b4090431094, PdFinalAuxType_6b10eee8fbf863b7, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PSubmit_01

\* Complete original body PdFinalPart_PSubmit_02_02 SHA a3d8acc035971c738add9549236aa66b294b13aee68faa8c97e4a931e7c1deee
HIDE DEF AuxType_6b10eee8fbf863b7, AuxType_d3dd8b4090431094, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_PSubmit_01_01, Part_PSubmit_01_02, Part_PSubmit_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_PSubmit_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE (SharedLedRef)' /\ (SendOwnLanded)' /\ (K12)' /\ (ReadOwnLanded)' /\ (K16)' /\ (NoEvictUnderRDMA)' /\ (PrefcMatchesHolders)' /\ (K4)'
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

           PKE_PSubmit(x) ==
            /\ xk[x]="wr" /\ iv[x]="reg"
            /\ iv'=[iv EXCEPT ![x]="posted"]
            /\ hw'=[hw EXCEPT ![x]=IF Torn(x) THEN "stop" ELSE "fly"]
            /\ hok'=[hok EXCEPT ![x]=FALSE] /\ net'=net
            /\ UNCHANGED <<gen,hp,hd,nx,xr,xg,xdst,xsrc,xlt,xk,drep,dsucc>>

           \* T2M-LOCAL-VISIBILITY

           RP_New(i,r) == rg'[i][r] # rg[i][r]


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

           RP_T_rpgS == rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)


           RP_T_xsrcS == xsrcS \in [Xids -> SUBSET SPages]


           RP_T_sentry == sentry \in SUBSET Xids


           RP_T_squar == squar \in SUBSET (Xids \X SPages)


           RP_RefDelta == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)
            +SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

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

           RP_NoNewStop == \A x \in Xids : hw[x] \in {"fly","issued"} => hw'[x] # "stop"


           RP_DReadFrame == \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} =>
            ph[j][r] \in {"run","ovl"} /\ rpg'[j][r]=rpg[j][r]


           RP_SharedRead == B2 => \A j \in DInst,r \in Rq : ph[j][r] \in {"run","ovl"} => dpreOK[rpg[j][r]]

           \* T2M-LOCAL-VISIBILITY

           RPB_T_gen == gen \in [Rq -> 0..MG]


           RPB_T_rt == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           RPB_T_rp == rp \in [Rq -> {0} \cup Inst]


           RPB_T_rd == rd \in [Rq -> {0} \cup Inst]


           RPB_T_hp == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           RPB_T_hd == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           RPB_T_alive == alive \in [Inst -> BOOLEAN]


           RPB_T_nfail == nfail \in 0..MaxFail


           RPB_T_torn == torn \in [Inst -> SUBSET Inst]


           RPB_T_kpin == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           RPB_T_kfly == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           RPB_T_krs == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           RPB_T_ph == ph \in [Inst -> [Rq -> PhSet]]


           RPB_T_rg == rg \in [Inst -> [Rq -> 0..MG]]


           RPB_T_rpg == rpg \in [Inst -> [Rq -> 0..NP]]


           RPB_T_rpe == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           RPB_T_rx == rx \in [Inst -> [Rq -> 0..MX]]


           RPB_T_rhit == rhit \in [Inst -> [Rq -> BOOLEAN]]


           RPB_T_pst == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           RPB_T_pr == pr \in [Pages -> 0..NR]


           RPB_T_pgn == pgn \in [Pages -> 0..MG]


           RPB_T_plt == plt \in [Pages -> 0..PS]


           RPB_T_ptl == ptl \in [Pages -> -1..PS]


           RPB_T_pvis == pvis \in [Pages -> BOOLEAN]


           RPB_T_led == led \in [Pages -> SUBSET Xids]


           RPB_T_sfly == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           RPB_T_sled == sled \in [Pages -> SUBSET (Rq \X Gens)]


           RPB_T_prefc == prefc \in [Pages -> 0..NR]


           RPB_T_pqp == pqp \in [Pages -> {0} \cup Inst]


           RPB_T_xr == xr \in [Xids -> 0..NR]


           RPB_T_xg == xg \in [Xids -> 0..MG]


           RPB_T_xk == xk \in [Xids -> {"none", "wr", "rd"}]


           RPB_T_xp == xp \in [Xids -> {0} \cup Inst]


           RPB_T_xd == xd \in [Xids -> {0} \cup Inst]


           RPB_T_xsrc == xsrc \in [Xids -> 0..NP]


           RPB_T_xdst == xdst \in [Xids -> 0..NP]


           RPB_T_xnt == xnt \in [Xids -> 0..PS]


           RPB_T_hw == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           RPB_T_hok == hok \in [Xids -> BOOLEAN]


           RPB_T_iv == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           RPB_T_xst == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           RPB_T_xlt == xlt \in [Xids -> 0..PS]


           RPB_T_nx == nx \in 1..(MX + 1)


           RPB_T_net == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           RPB_T_drep == drep \in [Rq -> [Gens -> 0..2]]


           RPB_T_crep == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           RPB_T_dsucc == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           RPB_T_gbad == gbad \in BOOLEAN


           RPB_Types == RPB_T_gen /\ RPB_T_rt /\ RPB_T_rp /\ RPB_T_rd /\ RPB_T_hp /\ RPB_T_hd /\ RPB_T_alive /\ RPB_T_nfail /\ RPB_T_torn /\ RPB_T_kpin /\ RPB_T_kfly /\ RPB_T_krs /\ RPB_T_ph /\ RPB_T_rg /\ RPB_T_rpg /\ RPB_T_rpe /\ RPB_T_rx /\ RPB_T_rhit /\ RPB_T_pst /\ RPB_T_pr /\ RPB_T_pgn /\ RPB_T_plt /\ RPB_T_ptl /\ RPB_T_pvis /\ RPB_T_led /\ RPB_T_sfly /\ RPB_T_sled /\ RPB_T_prefc /\ RPB_T_pqp /\ RPB_T_xr /\ RPB_T_xg /\ RPB_T_xk /\ RPB_T_xp /\ RPB_T_xd /\ RPB_T_xsrc /\ RPB_T_xdst /\ RPB_T_xnt /\ RPB_T_hw /\ RPB_T_hok /\ RPB_T_iv /\ RPB_T_xst /\ RPB_T_xlt /\ RPB_T_nx /\ RPB_T_net /\ RPB_T_drep /\ RPB_T_crep /\ RPB_T_dsucc /\ RPB_T_gbad

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, UlVxe, kYyEb, BTg7I, Bxryv, XTUuY, Gf8VR, l7paO, RPcfz, G3Uin, xAvu0j, BmN6sl4, PKE_PSubmit, RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_NewFlyFromReg, RP_SharedSend, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, RP_NoNewStop, RP_DReadFrame, RP_SharedRead, RPB_T_gen, RPB_T_rt, RPB_T_rp, RPB_T_rd, RPB_T_hp, RPB_T_hd, RPB_T_alive, RPB_T_nfail, RPB_T_torn, RPB_T_kpin, RPB_T_kfly, RPB_T_krs, RPB_T_ph, RPB_T_rg, RPB_T_rpg, RPB_T_rpe, RPB_T_rx, RPB_T_rhit, RPB_T_pst, RPB_T_pr, RPB_T_pgn, RPB_T_plt, RPB_T_ptl, RPB_T_pvis, RPB_T_led, RPB_T_sfly, RPB_T_sled, RPB_T_prefc, RPB_T_pqp, RPB_T_xr, RPB_T_xg, RPB_T_xk, RPB_T_xp, RPB_T_xd, RPB_T_xsrc, RPB_T_xdst, RPB_T_xnt, RPB_T_hw, RPB_T_hok, RPB_T_iv, RPB_T_xst, RPB_T_xlt, RPB_T_nx, RPB_T_net, RPB_T_drep, RPB_T_crep, RPB_T_dsucc, RPB_T_gbad, RPB_Types

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FdYjaJP.         (\A m \in net' : BmN6sl4(m)') => K12'
  BY ONLY ZenonT(5) DEF K12, BmN6sl4, UlVxe, kYyEb, BTg7I, Bxryv, XTUuY, Gf8VR, l7paO, RPcfz, G3Uin, xAvu0j
\* T2M-END R2M0439_PdPK12Support


<1>P9Sxv3oLS2O1C6.        
 ASSUME NEW x \in Xids, PSubmit(x)
 PROVE PKE_PSubmit(x)
 BY ONLY <1>P9Sxv3oLS2O1C6, Sizes, Location, Design, Design, Sizes, SMTT(10) DEF PKE_PSubmit, Msg, NL, PSubmit, Torn, ghV, instV, kV, pgV, rtV, Inst, NL, PInst, DInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PkhgJ5XA6O.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), NEW m \in net'
 PROVE UlVxe(m)'
<2> USE ONLY <1>PkhgJ5XA6O, Sizes, Location, Design
<2>1. K12 /\ T_nx /\ T_xr /\ T_xg /\ T_gen
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PSubmit(x)
 BY <1>P9Sxv3oLS2O1C6, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, Design, Sizes, Location, SMTT(10) DEF K12, T_nx, T_xr, T_xg, T_gen, PKE_PSubmit, UlVxe, Msg, Active, IsP, IsD, CqeHw, Torn, NewGen, GenOK, Bump, LtOf, NTok, InitPage, ExpPage, InitInst, ExpInst, OwnedBy, InFl, Xids, Gens, PInst, DInst, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ViSrRNlfHS.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), NEW m \in net'
 PROVE kYyEb(m)'
<2> USE ONLY <1>ViSrRNlfHS, Sizes, Location, Design
<2>1. K12
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PSubmit(x)
 BY <1>P9Sxv3oLS2O1C6, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, Design, Sizes, Location, SMTT(10) DEF K12, PKE_PSubmit, kYyEb, Msg, Active, IsP, IsD, CqeHw, Torn, NewGen, GenOK, Bump, LtOf, NTok, InitPage, ExpPage, InitInst, ExpInst, OwnedBy, InFl, Xids, Gens, PInst, DInst, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>h1Est3bGOL.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), NEW m \in net'
 PROVE BTg7I(m)'
<2> USE ONLY <1>h1Est3bGOL, Sizes, Location, Design
<2>1. K12
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PSubmit(x)
 BY <1>P9Sxv3oLS2O1C6, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, Design, Sizes, Location, SMTT(10) DEF K12, PKE_PSubmit, BTg7I, Msg, Active, IsP, IsD, CqeHw, Torn, NewGen, GenOK, Bump, LtOf, NTok, InitPage, ExpPage, InitInst, ExpInst, OwnedBy, InFl, Xids, Gens, PInst, DInst, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DTi2Pheb8W.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), NEW m \in net'
 PROVE Bxryv(m)'
<2> USE ONLY <1>DTi2Pheb8W, Sizes, Location, Design
<2>1. K12 /\ T_nx /\ T_net /\ T_xr /\ T_xg /\ T_xdst
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PSubmit(x)
 BY <1>P9Sxv3oLS2O1C6, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxOldMessage. m \in net
  BY ONLY <1>DTi2Pheb8W, <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxOldTarget. Bxryv(m)
  BY ONLY <2>1, <3>fxOldMessage, ZenonT(5) DEF K12, Bxryv
 <3>fxStatic. UNCHANGED <<hp,hd,nx,xr,xg,xdst>>
  BY ONLY <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxDone. QED BY ONLY <3>fxOldTarget, <3>fxStatic, SMTT(5) DEF Bxryv

\* T2M-LOCAL-VISIBILITY

<1>Nf3PIzvj0t.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), NEW m \in net'
 PROVE XTUuY(m)'
<2> USE ONLY <1>Nf3PIzvj0t, Sizes, Location, Design
<2>1. K12 /\ MsgXDomain /\ T_nx /\ T_net /\ T_xr /\ T_xg /\ T_xsrc /\ T_xlt
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PSubmit(x)
 BY <1>P9Sxv3oLS2O1C6, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxOldMessage. m \in net
  BY ONLY <1>Nf3PIzvj0t, <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxOldTarget. XTUuY(m)
  BY ONLY <2>1, <3>fxOldMessage, ZenonT(5) DEF K12, XTUuY
 <3>fxStatic. UNCHANGED <<nx,xr,xg,xsrc,xlt,hp,hd>>
  BY ONLY <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxDone. QED BY ONLY <3>fxOldTarget, <3>fxStatic, SMTT(5) DEF XTUuY

\* T2M-LOCAL-VISIBILITY

<1>lAKuWj7rnL.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), NEW m \in net'
 PROVE Gf8VR(m)'
<2> USE ONLY <1>lAKuWj7rnL, Sizes, Location, Design
<2>1. K12 /\ MsgXDomain /\ T_nx /\ T_iv /\ T_hw /\ T_hok /\ T_xr /\ T_xg /\ T_xlt /\ T_xk
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PSubmit(x)
 BY <1>P9Sxv3oLS2O1C6, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxOldMessage. m \in net
  BY ONLY <1>lAKuWj7rnL, <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxOldTarget. Gf8VR(m)
  BY ONLY <2>1, <3>fxOldMessage, ZenonT(5) DEF K12, Gf8VR
 <3>fxStatic. UNCHANGED <<nx,xr,xg,xlt,xk>>
  BY ONLY <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxReg. iv[x]="reg"
  BY ONLY <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxOtherTag. CASE m.t#"notice"
  BY ONLY <3>fxOtherTag, SMTT(5) DEF Gf8VR
 <3>fxThisTag. CASE m.t="notice"
  <4>fxDifferent. m.x#x
   BY ONLY <3>fxThisTag, <3>fxOldTarget, <3>fxReg, SMTT(5) DEF Gf8VR
  <4>fxDomain. m.x \in Xids
   BY ONLY <2>1, <3>fxOldMessage, <3>fxThisTag, ZenonT(5) DEF MsgXDomain
  <4>fxFrame. iv'[m.x]=iv[m.x] /\ hw'[m.x]=hw[m.x] /\ hok'[m.x]=hok[m.x]
   BY ONLY <1>lAKuWj7rnL, <2>1, <2>2, <4>fxDifferent, <4>fxDomain, SMTT(5) DEF PKE_PSubmit, T_iv, T_hw, T_hok
  <4>fxDone. QED BY ONLY <3>fxOldTarget, <3>fxStatic, <4>fxFrame, SMTT(5) DEF Gf8VR, CqeHw
 <3>fxDone. QED BY ONLY <3>fxOtherTag, <3>fxThisTag, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>hmdrlLd6ux.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), NEW m \in net'
 PROVE l7paO(m)'
<2> USE ONLY <1>hmdrlLd6ux, Sizes, Location, Design
<2>1. K12 /\ MsgXDomain /\ T_nx /\ T_iv /\ T_xr /\ T_xg
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PSubmit(x)
 BY <1>P9Sxv3oLS2O1C6, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxOldMessage. m \in net
  BY ONLY <1>hmdrlLd6ux, <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxOldTarget. l7paO(m)
  BY ONLY <2>1, <3>fxOldMessage, ZenonT(5) DEF K12, l7paO
 <3>fxStatic. UNCHANGED <<nx,xr,xg,xlt,xk>>
  BY ONLY <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxReg. iv[x]="reg"
  BY ONLY <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxOtherTag. CASE m.t#"nopost"
  BY ONLY <3>fxOtherTag, SMTT(5) DEF l7paO
 <3>fxThisTag. CASE m.t="nopost"
  <4>fxDifferent. m.x#x
   BY ONLY <3>fxThisTag, <3>fxOldTarget, <3>fxReg, SMTT(5) DEF l7paO
  <4>fxDomain. m.x \in Xids
   BY ONLY <2>1, <3>fxOldMessage, <3>fxThisTag, ZenonT(5) DEF MsgXDomain
  <4>fxFrame. iv'[m.x]=iv[m.x]
   BY ONLY <1>hmdrlLd6ux, <2>1, <2>2, <4>fxDifferent, <4>fxDomain, SMTT(5) DEF PKE_PSubmit, T_iv
  <4>fxDone. QED BY ONLY <3>fxOldTarget, <3>fxStatic, <4>fxFrame, SMTT(5) DEF l7paO
 <3>fxDone. QED BY ONLY <3>fxOtherTag, <3>fxThisTag, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>azRBUd55cg.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), NEW m \in net'
 PROVE RPcfz(m)'
<2> USE ONLY <1>azRBUd55cg, Sizes, Location, Design
<2>1. K12 /\ MsgXDomain /\ T_nx /\ T_xr /\ T_xg
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PSubmit(x)
 BY <1>P9Sxv3oLS2O1C6, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxOldMessage. m \in net
  BY ONLY <1>azRBUd55cg, <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxOldTarget. RPcfz(m)
  BY ONLY <2>1, <3>fxOldMessage, ZenonT(5) DEF K12, RPcfz
 <3>fxStatic. UNCHANGED <<nx,xr,xg>>
  BY ONLY <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxDone. QED BY ONLY <3>fxOldTarget, <3>fxStatic, SMTT(5) DEF RPcfz

\* T2M-LOCAL-VISIBILITY

<1>Cne0RDu6PA.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), NEW m \in net'
 PROVE G3Uin(m)'
<2> USE ONLY <1>Cne0RDu6PA, Sizes, Location, Design
<2>1. K12 /\ MsgXDomain /\ T_nx /\ T_iv /\ T_hw /\ T_hok /\ T_xr /\ T_xg /\ T_xk
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PSubmit(x)
 BY <1>P9Sxv3oLS2O1C6, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxOldMessage. m \in net
  BY ONLY <1>Cne0RDu6PA, <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxOldTarget. G3Uin(m)
  BY ONLY <2>1, <3>fxOldMessage, ZenonT(5) DEF K12, G3Uin
 <3>fxStatic. UNCHANGED <<nx,xr,xg,xlt,xk>>
  BY ONLY <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxReg. iv[x]="reg"
  BY ONLY <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxOtherTag. CASE m.t#"relsrc"
  BY ONLY <3>fxOtherTag, SMTT(5) DEF G3Uin
 <3>fxThisTag. CASE m.t="relsrc"
  <4>fxDifferent. m.x#x
   BY ONLY <3>fxThisTag, <3>fxOldTarget, <3>fxReg, SMTT(5) DEF G3Uin
  <4>fxDomain. m.x \in Xids
   BY ONLY <2>1, <3>fxOldMessage, <3>fxThisTag, ZenonT(5) DEF MsgXDomain
  <4>fxFrame. iv'[m.x]=iv[m.x] /\ hw'[m.x]=hw[m.x] /\ hok'[m.x]=hok[m.x]
   BY ONLY <1>Cne0RDu6PA, <2>1, <2>2, <4>fxDifferent, <4>fxDomain, SMTT(5) DEF PKE_PSubmit, T_iv, T_hw, T_hok
  <4>fxDone. QED BY ONLY <3>fxOldTarget, <3>fxStatic, <4>fxFrame, SMTT(5) DEF G3Uin
 <3>fxDone. QED BY ONLY <3>fxOtherTag, <3>fxThisTag, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>IeHKeChKICH.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), NEW m \in net'
 PROVE xAvu0j(m)'
<2> USE ONLY <1>IeHKeChKICH, Sizes, Location, Design
<2>1. K12 /\ T_drep
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PSubmit(x)
 BY <1>P9Sxv3oLS2O1C6, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxOldMessage. m \in net
  BY ONLY <1>IeHKeChKICH, <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxOldTarget. xAvu0j(m)
  BY ONLY <2>1, <3>fxOldMessage, ZenonT(5) DEF K12, xAvu0j
 <3>fxStatic. UNCHANGED <<hd,drep,dsucc>>
  BY ONLY <2>2, ZenonT(5) DEF PKE_PSubmit
 <3>fxDone. QED BY ONLY <3>fxOldTarget, <3>fxStatic, SMTT(5) DEF xAvu0j

\* T2M-LOCAL-VISIBILITY

<1>OdbPparkfQ.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE K12'
<2> USE ONLY <1>OdbPparkfQ, Sizes, Location, Design
<2>1. ASSUME NEW m \in net' PROVE BmN6sl4(m)'
  BY <1>PkhgJ5XA6O, <1>ViSrRNlfHS, <1>h1Est3bGOL, <1>DTi2Pheb8W, <1>Nf3PIzvj0t, <1>lAKuWj7rnL, <1>hmdrlLd6ux, <1>azRBUd55cg, <1>Cne0RDu6PA, <1>IeHKeChKICH, Sizes, Location, Design DEF BmN6sl4, Sizes, Location, Design
<2>2. QED BY <2>1, <1>FdYjaJP, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0449_PdPK12_PSubmit


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

<1>zeo4iyzi7OjON1.        
 ASSUME NEW i \in PInst, NEW k \in KSlots, NEW e, B2, SFollow,
        UNCHANGED <<kpin,krs>>, kpin[i][k], e \in krs[i][k], e[3] \in SPages
 PROVE spst'[e[3]] \in {spst[e[3]],"drain","quar"}
<2> USE ONLY <1>zeo4iyzi7OjON1, Sizes, Location, Design
<2>1. RP_Pin2(e[3]) BY SMTT(10), Sizes, Location, Design DEF RP_Pin2, Sizes, Location, Design
<2>2. ~RP_Drop(e[3]) BY <2>1, Sizes, Location, Design DEF RP_Drop, Sizes, Location, Design
<2>3. QED BY <2>2, <1>PKl1lJKpXGVI0yrZ8, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>whu4qMNmSVNYx5.        
 ASSUME NEW h, B2, SFollow, h \in rpgS, RP_HPin(h)
 PROVE h \in rpgS'
 BY ONLY <1>whu4qMNmSVNYx5, Sizes, Location, Design, Design, <1>PKl1lJKpXGVI0yrZ8, SMTT(10) DEF RP_SFollowEffect, RP_H2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uWXN2TjAdAz.        
 ASSUME PinInv, SFollow, UNCHANGED <<kpin,krs>>
 PROVE P_SI3'
<2> USE ONLY <1>uWXN2TjAdAz, Sizes, Location, Design
<2>1. B2 => SI3 /\ SI4
 BY V21_Inv_P_SI3, V21_Inv_P_SI4, Sizes, Location, Design DEF P_SI3, P_SI4, Sizes, Location, Design
<2>2. UNCHANGED <<sown,sgen,skey,swrite,sdata>> BY <1>zfqXeNpr8ate3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE ~B2
 BY <2>3, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>4. CASE B2
 <3>1. ASSUME NEW i \in PInst, NEW k \in KSlots, kpin'[i][k], NEW e \in krs'[i][k], e[3] \in SPages
        PROVE /\ e[4] \in {1,4} /\ SData(e)' /\ SHeld(e)'
              /\ spst'[e[3]]="shared" => SH(i,e[1],e[2],e[3]) \in rpgS'
              /\ e[4]=4 => sown'[e[3]]=e[1] /\ sgen'[e[3]]=e[2]
  <4>1. kpin[i][k] /\ e \in krs[i][k] BY <3>1, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. e[4] \in {1,4} /\ SData(e) /\ SHeld(e)
        /\ (spst[e[3]]="shared" => SH(i,e[1],e[2],e[3]) \in rpgS)
        /\ (e[4]=4 => sown[e[3]]=e[1] /\ sgen[e[3]]=e[2])
   BY <2>1, <2>4, <3>1, <4>1, SMTT(10), Sizes, Location, Design DEF SI3, Sizes, Location, Design
  <4>3. (spst[e[3]]="shared" => spst'[e[3]]="shared")
        /\ (spst'[e[3]]="shared" => spst[e[3]]="shared")
   BY <2>1, <2>4, <3>1, <1>Ua3eOhQVTzEuP0Q, <1>irl4UaCCkNMPiRRv, Sizes, Location, Design DEF Sizes, Location, Design
  <4>4. spst'[e[3]] \in {spst[e[3]],"drain","quar"}
   BY <2>4, <3>1, <4>1, <1>zeo4iyzi7OjON1, Sizes, Location, Design DEF Sizes, Location, Design
  <4>5. RP_HPin(SH(i,e[1],e[2],e[3]))
   BY <3>1, SMTT(10), Sizes, Location, Design DEF RP_HPin, SH, Sizes, Location, Design
  <4>6. spst'[e[3]]="shared" => SH(i,e[1],e[2],e[3]) \in rpgS'
   BY <2>4, <4>2, <4>3, <4>5, <1>whu4qMNmSVNYx5, Sizes, Location, Design DEF Sizes, Location, Design
  <4>7. QED BY <2>2, <4>2, <4>3, <4>4, <4>6, SMTT(10), Sizes, Location, Design DEF SData, SHeld, Sizes, Location, Design
 <3>2. QED BY <2>4, <3>1, Sizes, Location, Design DEF P_SI3, SI3, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZXxq7ZUlh0hBhsql.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~RP_Posted(x)
 BY ONLY <1>ZXxq7ZUlh0hBhsql, Sizes, Location, Design, Sizes, SMTT(10) DEF RP_Posted, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>Hva5axFVBiUG699zUpK.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE UNCHANGED <<xsrc,xr,xg>> /\ RP_NewFlyFromReg
<2> USE ONLY <1>Hva5axFVBiUG699zUpK, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Hva5axFVBiUG699zUpK, V22_T_hw, SMTT(5)

<2>2. QED BY <2>1, Design, SMTT(10), Sizes, Location DEF RP_NewFlyFromReg, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TyBTsxOWyLahVO45h6xE.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE NoEvictUnderRDMA' /\ RP_SharedSend'
 BY ONLY <1>TyBTsxOWyLahVO45h6xE, Sizes, Location, Design, <1>Hva5axFVBiUG699zUpK, <1>fCaVnnRiNeSrXN4lcQ3A DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>F8LcdFspM8pAhNNeYmgGQZHJ.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>F8LcdFspM8pAhNNeYmgGQZHJ, Sizes, Location, Design, <1>TyBTsxOWyLahVO45h6xE DEF Sizes, Location, Design
\* T2M-END R2M1405_PdRPAccess_PSubmit


<1>f1Y0wBZYE4Htz.        
 /\ IsFiniteSet(PInst) /\ IsFiniteSet(Rq) /\ IsFiniteSet(Gens)
 /\ IsFiniteSet(SPages) /\ IsFiniteSet(Xids)
 BY Sizes, FS_Interval, SMTT(10), Location, Design DEF PInst, Rq, Gens, SPages, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nQKL75Fxdx.        
 ASSUME NEW A, NEW B, NEW C, NEW D,
        IsFiniteSet(A), IsFiniteSet(B), IsFiniteSet(C), IsFiniteSet(D)
 PROVE IsFiniteSet(A \X B \X C \X D)
<2> USE ONLY <1>nQKL75Fxdx, Sizes, Location, Design
<2>1. IsFiniteSet(A \X B) BY FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet((A \X B) \X C) BY <2>1, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet(((A \X B) \X C) \X D) BY <2>2, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. DEFINE U == ((A \X B) \X C) \X D
              F == [t \in U |-> <<t[1][1][1],t[1][1][2],t[1][2],t[2]>>]
<2>5. F \in [U -> (A \X B \X C \X D)]
 BY SMTT(10), Sizes, Location, Design DEF F, U, Sizes, Location, Design
<2>6. \A z \in (A \X B \X C \X D) : <<<<<<z[1],z[2]>>,z[3]>>,z[4]>> \in U
 BY SMTT(10), Sizes, Location, Design DEF U, Sizes, Location, Design
<2>7. \A z \in (A \X B \X C \X D) : F[<<<<<<z[1],z[2]>>,z[3]>>,z[4]>>]=z
 BY SMTT(10), Sizes, Location, Design DEF F, U, Sizes, Location, Design
<2>8. F \in Surjection(U,A \X B \X C \X D)
 BY <2>5, <2>6, <2>7, SMTT(10), Sizes, Location, Design DEF Surjection, Sizes, Location, Design
<2>9. QED BY <2>3, <2>8, FS_Surjection, SMTT(10), Sizes, Location, Design DEF U, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mOXdb4AFBe0It6kG2Px.        
 /\ IsFiniteSet(PInst \X Rq \X Gens \X SPages)
 /\ IsFiniteSet(Xids \X SPages)
 BY <1>f1Y0wBZYE4Htz, <1>nQKL75Fxdx, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qVeeMREBfC.        
 ASSUME NEW H \in SUBSET (PInst \X Rq \X Gens \X SPages),
        NEW E \in SUBSET Xids, NEW X, NEW Q \in SUBSET (Xids \X SPages), NEW p
 PROVE SRefR(H,p) \in Nat /\ SRefE(E,X,p) \in Nat /\ SRefQ(Q,p) \in Nat
<2> USE ONLY <1>qVeeMREBfC, Sizes, Location, Design
<2>1. IsFiniteSet(H) /\ IsFiniteSet(E) /\ IsFiniteSet(Q)
 BY <1>mOXdb4AFBe0It6kG2Px, <1>f1Y0wBZYE4Htz, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. {h \in H : h[4]=p} \subseteq H
       /\ {x \in E : p \in X[x]} \subseteq E
       /\ {h \in Q : h[2]=p} \subseteq Q
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet({h \in H : h[4]=p})
       /\ IsFiniteSet({x \in E : p \in X[x]})
       /\ IsFiniteSet({h \in Q : h[2]=p})
 BY <2>1, <2>2, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>3, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design
\* T2M-END R2M1408_PdRPFinite


<1>g2d0XcDvt56Baa.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_rpgS'
<2> USE ONLY <1>g2d0XcDvt56Baa, Sizes, Location, Design
<2>1. RP_T_rpgS
 BY Sizes, Location, Design DEF STypeOK, RP_T_rpgS, Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF RP_T_rpgS, SFollow, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NjvYCjaSlJxhU8e0.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_sentry'
<2> USE ONLY <1>NjvYCjaSlJxhU8e0, Sizes, Location, Design
<2>1. RP_T_sentry
 BY Sizes, Location, Design DEF STypeOK, RP_T_sentry, Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF RP_T_sentry, SFollow, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>A1Sb5mM7HaVTJal.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_squar'
<2> USE ONLY <1>A1Sb5mM7HaVTJal, Sizes, Location, Design
<2>1. RP_T_squar /\ RP_T_xsrcS
 BY ONLY <1>A1Sb5mM7HaVTJal, Sizes, Location, Design DEF STypeOK, RP_T_squar, RP_T_xsrcS, Sizes, Location, Design
<2>2. CASE ~B2
 <3>1. UNCHANGED squar
  BY ONLY <2>2, <1>A1Sb5mM7HaVTJal, V21_SFollowOff, Sizes, Location, Design, SMTT(5) DEF sV
 <3>2. QED BY ONLY <2>1, <3>1, SMTT(5) DEF RP_T_squar
<2>3. CASE B2
 <3>1. squar'=RP_Q2(0)
  BY ONLY <2>3, <1>A1Sb5mM7HaVTJal, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design, SMTT(5) DEF RP_SFollowEffect
 <3>2. RP_Q2(0) \subseteq Xids \X SPages
  BY ONLY <2>1, SMTT(10) DEF RP_Q2, RP_T_squar, RP_T_xsrcS
 <3>3. QED BY ONLY <3>1, <3>2, SMTT(5) DEF RP_T_squar
<2>4. QED BY ONLY <2>2, <2>3, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>ak2jPIltdDiaCVc.        
 ASSUME B2, SFollow
 PROVE RP_RefDelta
 BY ONLY <1>ak2jPIltdDiaCVc, Sizes, Location, Design, ZenonT(10) DEF RP_RefDelta, SFollow, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NSUGzTM423PsEC.        
 ASSUME STypeOK, SFollow, NEW p \in SPages
 PROVE /\ SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
       /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
       /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
<2> USE ONLY <1>NSUGzTM423PsEC, Sizes, Location, Design
<2>1. RP_T_rpgS /\ RP_T_sentry /\ RP_T_squar
 BY Sizes, Location, Design DEF STypeOK, RP_T_rpgS, RP_T_sentry, RP_T_squar, Sizes, Location, Design
<2>2. RP_T_rpgS' /\ RP_T_sentry' /\ RP_T_squar'
 BY <1>g2d0XcDvt56Baa, <1>NjvYCjaSlJxhU8e0, <1>A1Sb5mM7HaVTJal, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>qVeeMREBfC, Sizes, Location, Design DEF RP_T_rpgS, RP_T_sentry, RP_T_squar, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AnajBeZS7htcLkTpZ8C91mxOHTa.        
 ASSUME PinInv, SFollow
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>AnajBeZS7htcLkTpZ8C91mxOHTa, Sizes, Location, Design
<2>1. PrefcMatchesHolders /\ STypeOK
 BY V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY <2>2, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RP_RefDelta BY <2>3, <1>ak2jPIltdDiaCVc, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW p \in SPages
        PROVE sprefc'[p] = SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
  <4>1. SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
        /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
        /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
   BY <2>1, <1>NSUGzTM423PsEC, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. sprefc[p] = SRefR(rpgS,p)+SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
   BY <2>1, <2>3, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
  <4>3. QED BY <3>1, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF RP_RefDelta, Sizes, Location, Design
 <3>3. QED BY <2>3, <3>2, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1410_PdRPRefCount


<1>gXlfESySkAXF1I.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>gXlfESySkAXF1I, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kGFZqstHlCuIqwX9cg2TOz895Ju.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>kGFZqstHlCuIqwX9cg2TOz895Ju, Sizes, Location, Design, <1>AnajBeZS7htcLkTpZ8C91mxOHTa DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LRleyMNnxCwX.        
 ASSUME NEW H \in SUBSET (PInst \X Rq \X Gens \X SPages), NEW p,
        NEW h \in H, h[4]=p
 PROVE SRefR(H,p)>=1
<2> USE ONLY <1>LRleyMNnxCwX, Sizes, Location, Design
<2>1. IsFiniteSet(PInst \X Rq \X Gens \X SPages) BY <1>mOXdb4AFBe0It6kG2Px, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet({v \in H : v[4]=p})
 BY <2>1, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. {v \in H : v[4]=p} # {} BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. Cardinality({v \in H : v[4]=p}) \in Nat /\ Cardinality({v \in H : v[4]=p}) # 0
 BY <2>2, <2>3, FS_EmptySet, FS_CardinalityType, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF SRefR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xOtqg6YRsioevxRntvd4.        
 ASSUME PinInv, SFollow, UNCHANGED <<kpin,krs>>
 PROVE SharedLedRef'
<2> USE ONLY <1>xOtqg6YRsioevxRntvd4, Sizes, Location, Design
<2>1. STypeOK BY V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. PrefcMatchesHolders' BY <1>AnajBeZS7htcLkTpZ8C91mxOHTa, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. P_SI3' BY <1>uWXN2TjAdAz, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. RP_T_rpgS' BY <2>1, <1>g2d0XcDvt56Baa, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. CASE ~B2 BY <2>5, Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
<2>6. CASE B2
 <3>1. ASSUME NEW p \in SPages
        PROVE /\ ((spst'[p]="shared" /\ (SRefE(sentry',xsrcS',p)>0 \/ SPin(p)')) \/ SRefQ(squar',p)>0) => sprefc'[p]>=1
              /\ sprefc'[p]>=SRefQ(squar',p)
  <4>1. SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat
   BY <2>1, <1>NSUGzTM423PsEC, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. sprefc'[p]=SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
   BY <2>2, <2>6, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
  <4>3. ASSUME spst'[p]="shared", SPin(p)'
         PROVE SRefR(rpgS',p)>=1
   <5>1. PICK i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p
    BY <4>3, Sizes, Location, Design DEF SPin, Sizes, Location, Design
   <5>2. PICK e \in krs'[i][k] : e[3]=p BY <5>1, Sizes, Location, Design DEF Sizes, Location, Design
   <5>3. SH(i,e[1],e[2],p) \in rpgS'
    BY <2>3, <2>6, <4>3, <5>1, <5>2, Sizes, Location, Design DEF P_SI3, SI3, Sizes, Location, Design
   <5>4. QED BY <2>4, <5>3, <1>LRleyMNnxCwX, SMTT(10), Sizes, Location, Design DEF RP_T_rpgS, SH, Sizes, Location, Design
  <4>4. QED BY ONLY <4>1, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>6, <3>1, Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
<2>7. QED BY <2>5, <2>6, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1411_PdRPLedRef


<1>IErK6da0Mx9p1P3ZYtfE.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE SharedLedRef'
 BY ONLY <1>IErK6da0Mx9p1P3ZYtfE, Sizes, Location, Design, <1>gXlfESySkAXF1I, <1>xOtqg6YRsioevxRntvd4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>zQCSTfqP4L.        
  ASSUME NEW x \in Xids, PSubmit(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, kfly, kpin, krs, led, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>zQCSTfqP4L, Sizes, Location, Design, Zenon DEF PSubmit, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1460_PdRPPP_PdPSubmitFrames

\* T2M-SCOPE R2M1461_PdRPPP_PdSubmitEffects
\* T2M-BODY R2M1461_PdRPPP_PdSubmitEffects
\* T2M-LOCAL-VISIBILITY

<1>jXujQnapOVz1N.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ x < nx /\ iv[x] = "reg" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst
        /\ xsrc[x] \in Pages /\ xdst[x] \in Pages
        /\ Loc(xsrc[x]) = xp[x] /\ Loc(xdst[x]) = xd[x]
<2> USE ONLY <1>jXujQnapOVz1N, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xk[x] = "wr" /\ iv[x] = "reg"
  BY SMTT(10), Sizes, Location, Design DEF PSubmit, Sizes, Location, Design
<2>3. x < nx /\ xst[x] = "posted"
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, K3, SHJS, Xids, Sizes, Location, Design
<2>4. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
         /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>5. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K2, InitPage, ExpPage, InitInst, ExpInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FNMJSUwYV.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ iv' = [iv EXCEPT ![x] = "posted"]
        /\ hw' = [hw EXCEPT ![x] = IF Torn(x) THEN "stop" ELSE "fly"]
        /\ hok' = [hok EXCEPT ![x] = FALSE]
        /\ ph' = IF ph[xp[x]][xr[x]] = "reg" /\ rg[xp[x]][xr[x]] = xg[x] /\ rx[xp[x]][xr[x]] = x
                 THEN [ph EXCEPT ![xp[x]][xr[x]] = "sent"] ELSE ph
        /\ net' = net
        /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, xst, nx, ghV>>
  BY ONLY <1>FNMJSUwYV, Sizes, Location, Design, Design, SMTT(10) DEF PSubmit, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ojP8Js3gjMBL8Rsn.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ iv'[x] = "posted" /\ hok'[x] = FALSE /\ hw'[x] \in {"stop","fly"}
        /\ \A y \in Xids : y # x => iv'[y] = iv[y] /\ hw'[y] = hw[y] /\ hok'[y] = hok[y]
<2> USE ONLY <1>ojP8Js3gjMBL8Rsn, Sizes, Location, Design
<2>1. fr1A /\ DpA4 /\ DnMxp
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>FNMJSUwYV, SMTT(10), Sizes, Location, Design DEF fr1A, DpA4, DnMxp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WQTYH4MdjWyXr.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ \A a \in Inst, r \in Rq :
              /\ Active(a,r)' <=> Active(a,r)
              /\ (ph'[a][r] \in {"run","ovl"}) <=> (ph[a][r] \in {"run","ovl"})
              /\ (ph'[a][r] = "end") <=> (ph[a][r] = "end")
        /\ \A a \in DInst, r \in Rq : ph'[a][r] = ph[a][r]
<2> USE ONLY <1>WQTYH4MdjWyXr, Sizes, Location, Design
<2>1. AydA /\ xp[x] \in PInst /\ xr[x] \in Rq
  BY <1>UwwC5LVwQr, <1>jXujQnapOVz1N, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>FNMJSUwYV, Sizes, SMTT(10), Location, Design DEF Active, AydA, Inst, PInst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xfECovnYAR2iw5UbcxP.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ x \in led[xsrc[x]] /\ x \in led[xdst[x]]
        /\ OwnedBy(xsrc[x],xr[x],xg[x]) /\ OwnedBy(xdst[x],xr[x],xg[x])
<2> USE ONLY <1>xfECovnYAR2iw5UbcxP, Sizes, Location, Design
<2>1. K4 /\ K5
  BY SMTT(10), V21_Inv_K4, V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x < nx /\ iv[x] = "reg" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ xsrc[x] \in Pages /\ xdst[x] \in Pages
  BY <1>jXujQnapOVz1N, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. x \in led[xsrc[x]] /\ x \in led[xdst[x]]
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K4, InitPage, ExpPage, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K5, Sizes, Location, Design
\* T2M-END R2M1461_PdRPPP_PdSubmitEffects


<1>J3erBvwKnE3Y.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE \A q \in Pages : GrownP(q) => q # xdst[x]
<2> USE ONLY <1>J3erBvwKnE3Y, Sizes, Location, Design
 <2>1. K16 /\ x \in led[xdst[x]]
  BY <1>xfECovnYAR2iw5UbcxP, V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF K16, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q44LvJlbwsB.        
 ASSUME NEW x \in Xids, NEW q, PinInv, PSubmit(x), q # xdst[x]
 PROVE NoWriteInto(q) => NoWriteInto(q)'
<2> USE ONLY <1>Q44LvJlbwsB, Sizes, Location, Design
 <2>1. UNCHANGED xdst /\ (\A y \in Xids : y # x => hw'[y] = hw[y])
  BY <1>zQCSTfqP4L, <1>ojP8Js3gjMBL8Rsn, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED BY <2>1, SMTT(5), Sizes, Location, Design DEF NoWriteInto, Writing, InFl, Sizes, Location, Design
\* T2M-END R2M1747_PdRPPP_PdESubmitSafetyFacts

\* T2M-SCOPE R2M1748_PdRPPP_PdE_PSubmit_K10

<1>PHCk93TJ.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE K16'
<2> USE ONLY <1>PHCk93TJ, Sizes, Location, Design
<2>1. K16
 BY V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<pst,pr,pgn,rpg,rg,led,sled,sfly,plt,ptl>>
 BY <1>zQCSTfqP4L, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A q \in Pages : UNCHANGED GrownP(q)
 BY <2>2, SMTT(5), Sizes, Location, Design DEF GrownP, Sizes, Location, Design
<2>4. \A q \in Pages : GrownP(q) => NoWriteInto(q)'
 BY <2>1, <1>J3erBvwKnE3Y, <1>Q44LvJlbwsB, SMTT(5), Sizes, Location, Design DEF K16, Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, <1>WQTYH4MdjWyXr, Location, Sizes, SMTT(5), Design DEF K16, GrownP, IsD, Inst, DInst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M1750_PdRPPP_PdE_PSubmit_K16


<1>AD7gHHr.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE K4'
<2> USE ONLY <1>AD7gHHr, Sizes, Location, Design
<2>1. K4
 BY SMTT(5), V21_Inv_BaseSafety, V21_Inv_K4, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. jb4aTlh /\ jC41VF /\ Q1j7VI /\ MuHyNw3 /\ MZsmqs /\ AEZsS /\ RwXY /\ DnMxp /\ O0Gm /\ DpA4 /\ fr1A /\ djyOpL /\ m1zx9S /\ c02OO /\ dcfPK /\ qvLUP /\ zaBQrrW /\ SHJS /\ vS7em /\ AydA /\ bFwlN /\ vRZWI /\ IwCp /\ p1YmMe5 /\ OyyWS /\ rO4YE /\ Bq5Edl /\ jY_U /\ nNeM /\ EYS1sP /\ Zd4y /\ E1MnW /\ q1Ohy /\ o5G2 /\ QC9Q /\ Xc_ngV /\ h9WLgd /\ pc8eUz /\ C4fb /\ JjZ1PO /\ CXAy /\ ok5g /\ OfQy9 /\ PwcfA /\ vdyX /\ a1R5 /\ Uzgo58 /\ PD2ZN
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>3. QED
 BY <2>1, <2>2, <1>jXujQnapOVz1N, <1>FNMJSUwYV, <1>ojP8Js3gjMBL8Rsn, <1>WQTYH4MdjWyXr, <1>xfECovnYAR2iw5UbcxP, <1>zQCSTfqP4L, Design, Sizes, Location, SMTT(3) DEF ExpPage, InitPage, K4, jb4aTlh, jC41VF, Q1j7VI, MuHyNw3, MZsmqs, AEZsS, RwXY, DnMxp, O0Gm, DpA4, fr1A, djyOpL, m1zx9S, c02OO, dcfPK, qvLUP, zaBQrrW, SHJS, vS7em, AydA, bFwlN, vRZWI, IwCp, p1YmMe5, OyyWS, rO4YE, Bq5Edl, jY_U, nNeM, EYS1sP, Zd4y, E1MnW, q1Ohy, o5G2, QC9Q, Xc_ngV, h9WLgd, pc8eUz, C4fb, JjZ1PO, CXAy, ok5g, OfQy9, PwcfA, vdyX, a1R5, Uzgo58, PD2ZN, ghV, instV, kV, pgV, rtV, Sizes, Location, Design
\* T2M-END R2M1752_PdRPPP_PdE_PSubmit_K4

\* T2M-SCOPE R2M1753_PdRPPP_PdE_PSubmit_K8

<1>L0VFk9jxr.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K4'
  BY ONLY <1>L0VFk9jxr, Sizes, Location, Design, <1>AD7gHHr, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>S2u0oJkiF5.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
  PROVE K16'
  BY ONLY <1>S2u0oJkiF5, Sizes, Location, Design, <1>PHCk93TJ, V21_Inv_K16 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PtfM7z6NmcjVW9qw5I.        
 ASSUME PinInv, SFollow, RP_NoNewStop, RP_DReadFrame
 PROVE RP_SharedRead'
<2> USE ONLY <1>PtfM7z6NmcjVW9qw5I, Sizes, Location, Design
<2>1. ReadOwnLanded BY V21_Inv_ReadOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF RP_SharedRead, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RP_SFollowEffect BY <2>3, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW j \in DInst, NEW r \in Rq, ph'[j][r] \in {"run","ovl"}
        PROVE dpreOK'[rpg'[j][r]]
  <4>1. ph[j][r] \in {"run","ovl"} /\ rpg'[j][r]=rpg[j][r]
   BY <3>2, Sizes, Location, Design DEF RP_DReadFrame, Sizes, Location, Design
  <4>2. rpg[j][r] \in Pages /\ pst[rpg[j][r]] # "free" /\ dpreOK[rpg[j][r]]
   BY <2>1, <2>3, <4>1, SMTT(10), Sizes, Location, Design DEF ReadOwnLanded, BaseReadOwnLanded, Sizes, Location, Design
  <4>3. QED BY <3>1, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_NoNewStop, Sizes, Location, Design
 <3>3. QED BY <2>3, <3>2, Sizes, Location, Design DEF RP_SharedRead, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1823_PdRPSharedRead


<1>IXEagMJyQryQes.         TypInv => RPB_Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, RPB_Types, RPB_T_gen, RPB_T_rt, RPB_T_rp, RPB_T_rd, RPB_T_hp, RPB_T_hd, RPB_T_alive, RPB_T_nfail, RPB_T_torn, RPB_T_kpin, RPB_T_kfly, RPB_T_krs, RPB_T_ph, RPB_T_rg, RPB_T_rpg, RPB_T_rpe, RPB_T_rx, RPB_T_rhit, RPB_T_pst, RPB_T_pr, RPB_T_pgn, RPB_T_plt, RPB_T_ptl, RPB_T_pvis, RPB_T_led, RPB_T_sfly, RPB_T_sled, RPB_T_prefc, RPB_T_pqp, RPB_T_xr, RPB_T_xg, RPB_T_xk, RPB_T_xp, RPB_T_xd, RPB_T_xsrc, RPB_T_xdst, RPB_T_xnt, RPB_T_hw, RPB_T_hok, RPB_T_iv, RPB_T_xst, RPB_T_xlt, RPB_T_nx, RPB_T_net, RPB_T_drep, RPB_T_crep, RPB_T_dsucc, RPB_T_gbad, Sizes, Location, Design
\* T2M-END R2M1825_PdRPBPP_PdProofBase


<1>DcNrv9aQdOAIq9.        
  ASSUME NEW x \in Xids, PSubmit(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, kfly, kpin, krs, led, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>DcNrv9aQdOAIq9, Sizes, Location, Design, Zenon DEF PSubmit, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1947_PdRPBPP_PdPSubmitFrames

\* T2M-SCOPE R2M1948_PdRPBPP_PdSubmitEffects
\* T2M-BODY R2M1948_PdRPBPP_PdSubmitEffects
\* T2M-LOCAL-VISIBILITY

<1>xyEg5zwrIh3Tz0bDo.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ x < nx /\ iv[x] = "reg" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst
        /\ xsrc[x] \in Pages /\ xdst[x] \in Pages
        /\ Loc(xsrc[x]) = xp[x] /\ Loc(xdst[x]) = xd[x]
<2> USE ONLY <1>xyEg5zwrIh3Tz0bDo, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ RPB_T_nx
  BY <1>IXEagMJyQryQes, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
<2>2. xk[x] = "wr" /\ iv[x] = "reg"
  BY SMTT(10), Sizes, Location, Design DEF PSubmit, Sizes, Location, Design
<2>3. x < nx /\ xst[x] = "posted"
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, K3, RPB_T_nx, Xids, Sizes, Location, Design
<2>4. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
         /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>5. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K2, InitPage, ExpPage, InitInst, ExpInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ksn8cHaMe8s3A.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ iv' = [iv EXCEPT ![x] = "posted"]
        /\ hw' = [hw EXCEPT ![x] = IF Torn(x) THEN "stop" ELSE "fly"]
        /\ hok' = [hok EXCEPT ![x] = FALSE]
        /\ ph' = IF ph[xp[x]][xr[x]] = "reg" /\ rg[xp[x]][xr[x]] = xg[x] /\ rx[xp[x]][xr[x]] = x
                 THEN [ph EXCEPT ![xp[x]][xr[x]] = "sent"] ELSE ph
        /\ net' = net
        /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, xst, nx, ghV>>
  BY ONLY <1>ksn8cHaMe8s3A, Sizes, Location, Design, Design, SMTT(10) DEF PSubmit, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TonhXR0tHy5rzcwWQhjQ.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ iv'[x] = "posted" /\ hok'[x] = FALSE /\ hw'[x] \in {"stop","fly"}
        /\ \A y \in Xids : y # x => iv'[y] = iv[y] /\ hw'[y] = hw[y] /\ hok'[y] = hok[y]
<2> USE ONLY <1>TonhXR0tHy5rzcwWQhjQ, Sizes, Location, Design
<2>1. RPB_T_iv /\ RPB_T_hw /\ RPB_T_hok
  BY <1>IXEagMJyQryQes, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ksn8cHaMe8s3A, SMTT(10), Sizes, Location, Design DEF RPB_T_iv, RPB_T_hw, RPB_T_hok, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fuBnQw6wCG42g5Kbq.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ \A a \in Inst, r \in Rq :
              /\ Active(a,r)' <=> Active(a,r)
              /\ (ph'[a][r] \in {"run","ovl"}) <=> (ph[a][r] \in {"run","ovl"})
              /\ (ph'[a][r] = "end") <=> (ph[a][r] = "end")
        /\ \A a \in DInst, r \in Rq : ph'[a][r] = ph[a][r]
<2> USE ONLY <1>fuBnQw6wCG42g5Kbq, Sizes, Location, Design
<2>1. RPB_T_ph /\ xp[x] \in PInst /\ xr[x] \in Rq
  BY <1>IXEagMJyQryQes, <1>xyEg5zwrIh3Tz0bDo, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF RPB_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ksn8cHaMe8s3A, Sizes, SMTT(10), Location, Design DEF Active, RPB_T_ph, Inst, PInst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kjiX0SOQGejm4olBu9UrmmU.        
  ASSUME NEW x \in Xids, PinInv, PSubmit(x)
  PROVE /\ x \in led[xsrc[x]] /\ x \in led[xdst[x]]
        /\ OwnedBy(xsrc[x],xr[x],xg[x]) /\ OwnedBy(xdst[x],xr[x],xg[x])
<2> USE ONLY <1>kjiX0SOQGejm4olBu9UrmmU, Sizes, Location, Design
<2>1. K4 /\ K5
  BY SMTT(10), V21_Inv_K4, V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x < nx /\ iv[x] = "reg" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ xsrc[x] \in Pages /\ xdst[x] \in Pages
  BY <1>xyEg5zwrIh3Tz0bDo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. x \in led[xsrc[x]] /\ x \in led[xdst[x]]
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K4, InitPage, ExpPage, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K5, Sizes, Location, Design
\* T2M-END R2M1948_PdRPBPP_PdSubmitEffects

\* T2M-SCOPE R2M1949_PdRPBPP_PdE_PSubmit_ReadOwnLanded
\* T2M-BODY R2M1949_PdRPBPP_PdE_PSubmit_ReadOwnLanded
\* T2M-LOCAL-VISIBILITY

<1>MmqbJTmcvneovblzhCUWj5.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE BaseReadOwnLanded'
<2> USE ONLY <1>MmqbJTmcvneovblzhCUWj5, Sizes, Location, Design
<2>old. BaseReadOwnLanded /\ K9
 BY ONLY <1>MmqbJTmcvneovblzhCUWj5, V21_Inv_ReadOwnLanded, V21_Inv_K9, Sizes, Location, Design, SMTT(5) DEF ReadOwnLanded
<2>frame. UNCHANGED <<rpg,rhit,rg,pst,pr,pgn,ptl,pvis,xdst>>
 BY ONLY <1>MmqbJTmcvneovblzhCUWj5, <1>DcNrv9aQdOAIq9, Sizes, Location, Design, SMTT(5)
<2>phase. \A j \in DInst, r \in Rq : ph'[j][r]=ph[j][r]
 BY ONLY <1>MmqbJTmcvneovblzhCUWj5, <1>fuBnQw6wCG42g5Kbq, Sizes, Location, Design, SMTT(5)
<2>dest. x \in led[xdst[x]] /\ pst[xdst[x]] \in {"priv","drain","quar"}
 BY ONLY <1>MmqbJTmcvneovblzhCUWj5, <1>kjiX0SOQGejm4olBu9UrmmU, Sizes, Location, Design, SMTT(5) DEF OwnedBy
<2>hardware. \A y \in Xids : y # x => hw'[y]=hw[y]
 BY ONLY <1>MmqbJTmcvneovblzhCUWj5, <1>TonhXR0tHy5rzcwWQhjQ, Sizes, Location, Design, SMTT(5)
<2>slot. ASSUME NEW j \in DInst, NEW r \in Rq, ph'[j][r] \in {"run","ovl"}
         PROVE /\ rpg'[j][r] \in Pages /\ (NoWriteInto(rpg[j][r]))'
               /\ \/ ~rhit'[j][r] /\ pst'[rpg'[j][r]]="priv" /\ pr'[rpg'[j][r]]=r /\ pgn'[rpg'[j][r]]=rg'[j][r] /\ ptl'[rpg'[j][r]]=NTok(r,rg'[j][r]) /\ pvis'[rpg'[j][r]]
                  \/ rhit'[j][r] /\ pst'[rpg'[j][r]]="shared" /\ ptl'[rpg'[j][r]]=PS
 <3>before. ph[j][r] \in {"run","ovl"}
  BY ONLY <2>slot, <2>phase, SMTT(5)
 <3>page. rpg[j][r] \in Pages /\ NoWriteInto(rpg[j][r])
  BY ONLY <2>old, <2>slot, <3>before, SMTT(5) DEF BaseReadOwnLanded
 <3>apart. xdst[x] # rpg[j][r]
  <4>hit. CASE rhit[j][r]
   <5>shared. pst[rpg[j][r]]="shared"
    BY ONLY <2>old, <2>slot, <3>before, <4>hit, SMTT(5) DEF K9
   <5>qed. QED BY ONLY <2>dest, <5>shared, SMTT(5)
  <4>private. CASE ~rhit[j][r]
   <5>empty. led[rpg[j][r]]={}
    BY ONLY <2>old, <2>slot, <3>before, <4>private, SMTT(5) DEF K9
   <5>qed. QED BY ONLY <2>dest, <5>empty, SMTT(5)
  <4>qed. QED BY ONLY <4>hit, <4>private, SMTT(5)
 <3>writing. ASSUME NEW y \in Xids, Writing(y)' PROVE xdst'[y] # rpg'[j][r]
  <4>same. CASE y=x
   BY ONLY <4>same, <2>frame, <3>apart, SMTT(5)
  <4>other. CASE y # x
   BY ONLY <3>writing, <4>other, <2>frame, <2>hardware, <3>page, SMTT(5) DEF NoWriteInto, Writing, InFl
  <4>qed. QED BY ONLY <4>same, <4>other, SMTT(5)
 <3>nw. (NoWriteInto(rpg[j][r]))'
  BY ONLY <3>writing, SMTT(5) DEF NoWriteInto
 <3>qed. QED BY ONLY <2>slot, <2>old, <2>frame, <3>before, <3>nw, SMTT(5) DEF BaseReadOwnLanded
<2>qed. QED BY ONLY <2>slot, SMTT(5) DEF BaseReadOwnLanded

\* T2M-END R2M1949_PdRPBPP_PdE_PSubmit_ReadOwnLanded

\* T2M-SCOPE R2M1950_PdRPBPP_PdE_PSubmit_SendOwnLanded

<1>LiaIyVFgGiH38sbLAIaSrh.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x)
 PROVE BaseSendOwnLanded'
<2> USE ONLY <1>LiaIyVFgGiH38sbLAIaSrh, Sizes, Location, Design
<2>old. BaseSendOwnLanded /\ K11
 BY ONLY <1>LiaIyVFgGiH38sbLAIaSrh, V21_Inv_SendOwnLanded, V21_Inv_K11, Sizes, Location, Design, SMTT(5) DEF SendOwnLanded
<2>frame. UNCHANGED <<xsrc,xlt,ptl,sfly>>
 BY ONLY <1>LiaIyVFgGiH38sbLAIaSrh, <1>DcNrv9aQdOAIq9, Sizes, Location, Design, SMTT(5)
<2>support. x<nx /\ xsrc[x] \in Pages /\ x \in led[xsrc[x]]
 BY ONLY <1>LiaIyVFgGiH38sbLAIaSrh, <1>xyEg5zwrIh3Tz0bDo, <1>kjiX0SOQGejm4olBu9UrmmU, Sizes, Location, Design, SMTT(5)
<2>source. ptl[xsrc[x]]=xlt[x] /\ sfly[xsrc[x]]={}
 BY ONLY <1>LiaIyVFgGiH38sbLAIaSrh, <2>old, <2>support, SMTT(5) DEF K11
<2>hardware. \A y \in Xids : y # x => hw'[y]=hw[y]
 BY ONLY <1>LiaIyVFgGiH38sbLAIaSrh, <1>TonhXR0tHy5rzcwWQhjQ, Sizes, Location, Design, SMTT(5)
<2>at. ASSUME NEW y \in Xids, hw'[y]="fly"
       PROVE ptl'[xsrc'[y]]=xlt'[y] /\ sfly'[xsrc'[y]]={}
 <3>same. CASE y=x
  BY ONLY <3>same, <2>frame, <2>source, SMTT(5)
 <3>other. CASE y # x
  <4>flying. hw[y]="fly"
   BY ONLY <2>at, <3>other, <2>hardware, SMTT(5)
  <4>qed. QED BY ONLY <2>at, <2>old, <2>frame, <4>flying, SMTT(5) DEF BaseSendOwnLanded
 <3>qed. QED BY ONLY <3>same, <3>other, SMTT(5)
<2>qed. QED BY ONLY <2>at, SMTT(5) DEF BaseSendOwnLanded

\* T2M-END R2M1950_PdRPBPP_PdE_PSubmit_SendOwnLanded

\* T2M-SCOPE R2M1951_PdRPBPP_PdE_PSubmit_SealOnlyLanded

<1>ryS0sRAuMBBetiW6R.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE RP_NoNewStop /\ RP_DReadFrame /\ UNCHANGED xdst
<2> USE ONLY <1>ryS0sRAuMBBetiW6R, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rpg \in [Inst -> [Rq -> 0..NP]] /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ryS0sRAuMBBetiW6R, V22_T_hw, V22_T_ph, V22_T_rpg, SMTT(5)

<2>2. K1 /\ K3 BY V21_Inv_K1, V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_NoNewStop, RP_DReadFrame, DInst, PInst, Inst, NL, IsP, IsD, K1, K3, EvidenceAt, PEnd, PSubmit, PageTo, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zVvg9dvxsQwHLjqFKW.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE RP_SharedRead'
 BY ONLY <1>zVvg9dvxsQwHLjqFKW, Sizes, Location, Design, <1>ryS0sRAuMBBetiW6R, <1>PtfM7z6NmcjVW9qw5I DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nOrqJFeW4fv8GoYM2OU4U.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE ReadOwnLanded'
 BY ONLY <1>nOrqJFeW4fv8GoYM2OU4U, Sizes, Location, Design, <1>MmqbJTmcvneovblzhCUWj5, <1>zVvg9dvxsQwHLjqFKW DEF ReadOwnLanded, RP_SharedRead, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dMdlzMJb3iNsm3DaBAkos.        
 ASSUME NEW x \in Xids, PinInv, PSubmit(x), SFollow
 PROVE SendOwnLanded'
 BY ONLY <1>dMdlzMJb3iNsm3DaBAkos, Sizes, Location, Design, <1>LiaIyVFgGiH38sbLAIaSrh, <1>TyBTsxOWyLahVO45h6xE DEF SendOwnLanded, RP_SharedSend, Sizes, Location, Design
\* T2M-END R2M1952_PdRPSafety_PSubmit


<1> QED BY <1>IErK6da0Mx9p1P3ZYtfE, <1>dMdlzMJb3iNsm3DaBAkos, <1>OdbPparkfQ, <1>nOrqJFeW4fv8GoYM2OU4U, <1>S2u0oJkiF5, <1>F8LcdFspM8pAhNNeYmgGQZHJ, <1>kGFZqstHlCuIqwX9cg2TOz895Ju, <1>L0VFk9jxr, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF Part_PSubmit_02_02, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K11, V21_Inv_K12, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K9, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_PrefcMatchesHolders, V21_Inv_ReadOwnLanded, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_hw, V22_T_ph, V22_T_rpg, V22_T_xsrcP, V22_T_xsrcS
====
