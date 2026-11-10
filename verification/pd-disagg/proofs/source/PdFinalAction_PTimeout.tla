---- MODULE PdFinalAction_PTimeout ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_d3dd8b4090431094, PdFinalAuxType_fe8bb090b8ff1fa3, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PTimeout_02

\* Complete original body PdFinalPart_PTimeout_04_01 SHA bf44cc2a3468b5e6c11a5cba5c5908d2702b1d9e8786cc89347274b239df5b69
HIDE DEF AuxType_d3dd8b4090431094, AuxType_fe8bb090b8ff1fa3, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_PTimeout_01_01, Part_PTimeout_01_02, Part_PTimeout_02_01, Part_PTimeout_02_02, Part_PTimeout_03_01, Part_PTimeout_03_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K11, V21_Inv_K13, V21_Inv_K16, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI2, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_kfly, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pqp, V22_T_prefc, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_PTimeout_04_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE (K12)' /\ (K15)' /\ (NoFreeUnderRead)' /\ (PrefcMatchesHolders)' /\ (P_SI3)' /\ (P_SI1)' /\ (S1)' /\ (S6)' /\ (K17)'
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

           PKE_PTimeout(i,r) ==
            /\ i \in PInst /\ Active(i,r)
            /\ LET x == rx[i][r]
                   cr == ph[i][r]="reg" /\ x \in Xids /\ iv[x]="reg"
               IN /\ iv'=IF cr THEN [iv EXCEPT ![x]="nopost"] ELSE iv
                  /\ net'=net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)}
                           \cup (IF cr THEN {Msg("nopost",i,xd[x],r,xg[x],x,0,0,FALSE)} ELSE {})
            /\ UNCHANGED <<gen,hp,hd,nx,xr,xg,xdst,xsrc,xlt,hw,hok,xk,drep,dsucc>>

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

           RP_RecordProgress == \A i \in PInst,r \in Rq :
            (Active(i,r)' /\ rg'[i][r]=rg[i][r]) => Active(i,r)

           \* T2M-LOCAL-VISIBILITY

           RP_T_rpgS == rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)


           RP_T_xsrcS == xsrcS \in [Xids -> SUBSET SPages]


           RP_T_sentry == sentry \in SUBSET Xids


           RP_T_squar == squar \in SUBSET (Xids \X SPages)


           RP_RefDelta == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)
            +SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

           \* T2M-LOCAL-VISIBILITY

           RP_PinFacts(q) ==
            /\ pst[q] \in {"priv","drain","quar","shared"}
            /\ (IsP(Loc(q)) => plt[q]=ptl[q] /\ sfly[q]={} /\ sled[q]={})
            /\ (IsD(Loc(q)) /\ pst[q] # "shared" => led[q]={})
            /\ NoWriteInto(q)


           RP_PinKeep(q) ==
            /\ (pst[q]="shared" => pst'[q]="shared")
            /\ pst'[q] \in {"priv","drain","quar","shared"}
            /\ UNCHANGED <<pr[q],pgn[q],plt[q],ptl[q],pvis[q],sfly[q]>>
            /\ (IsD(Loc(q)) /\ led[q]={} => led'[q]={})
            /\ (IsP(Loc(q)) /\ sled[q]={} => sled'[q]={})
            /\ (NoWriteInto(q) => NoWriteInto(q)')

           \* T2M-LOCAL-VISIBILITY

           RP_PT_pst == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           RP_PT_pr == pr \in [Pages -> 0..NR]


           RP_PT_pgn == pgn \in [Pages -> 0..MG]


           RP_PT_plt == plt \in [Pages -> 0..PS]


           RP_PT_ptl == ptl \in [Pages -> -1..PS]


           RP_PT_pvis == pvis \in [Pages -> BOOLEAN]


           RP_PT_sfly == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           RP_PT_led == led \in [Pages -> SUBSET Xids]


           RP_PT_sled == sled \in [Pages -> SUBSET (Rq \X Gens)]


           RP_PT_hw == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           RP_PT_xdst == xdst \in [Xids -> 0..NP]


           RP_PT_kpin == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           RP_PT_krs == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           RP_PageTypes == RP_PT_pst /\ RP_PT_pr /\ RP_PT_pgn /\ RP_PT_plt /\ RP_PT_ptl /\ RP_PT_pvis /\ RP_PT_sfly /\ RP_PT_led /\ RP_PT_sled /\ RP_PT_hw /\ RP_PT_xdst /\ RP_PT_kpin /\ RP_PT_krs

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

           RP_RecordReady == B2 => \A i \in PInst,r \in Rq :
            ph'[i][r] \in {"reg","sent","exp"} => rg'[i][r]=rg[i][r] /\ SSendReady(i,r)


           RP_NoneFrame == \A i \in PInst,r \in Rq : ph'[i][r]="none" => ph[i][r]="none" /\ rg'[i][r]=rg[i][r]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, UlVxe, kYyEb, BTg7I, Bxryv, XTUuY, Gf8VR, l7paO, RPcfz, G3Uin, xAvu0j, BmN6sl4, PKE_PTimeout, RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_RecordProgress, RP_T_rpgS, RP_T_xsrcS, RP_T_sentry, RP_T_squar, RP_RefDelta, RP_PinFacts, RP_PinKeep, RP_PT_pst, RP_PT_pr, RP_PT_pgn, RP_PT_plt, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_led, RP_PT_sled, RP_PT_hw, RP_PT_xdst, RP_PT_kpin, RP_PT_krs, RP_PageTypes, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, RP_RecordReady, RP_NoneFrame

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FdYjaJP.         (\A m \in net' : BmN6sl4(m)') => K12'
  BY ONLY ZenonT(5) DEF K12, BmN6sl4, UlVxe, kYyEb, BTg7I, Bxryv, XTUuY, Gf8VR, l7paO, RPcfz, G3Uin, xAvu0j
\* T2M-END R2M0439_PdPK12Support


<1>UejBEju3sj64E5k.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PTimeout(i,r)
 PROVE PKE_PTimeout(i,r)
 BY ONLY <1>UejBEju3sj64E5k, Sizes, Location, Design, Design, Sizes, SMTT(10) DEF PKE_PTimeout, Active, IsD, IsP, Msg, NL, NoDLP, PEnd, PTimeout, TOk, instV, kV, rtV, Inst, NL, PInst, DInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kKHxLfqldMa.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), NEW m \in net'
 PROVE UlVxe(m)'
<2> USE ONLY <1>kKHxLfqldMa, Sizes, Location, Design
<2>1. K12 /\ K8 /\ T_nx /\ T_xr /\ T_xg /\ T_gen
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PTimeout(i,r)
 BY <1>UejBEju3sj64E5k, Sizes, Location, Design DEF Sizes, Location, Design
<2>genframe. gen'=gen
 BY ONLY <2>2, ZenonT(5) DEF PKE_PTimeout
<2>kg. \A a \in Inst, b \in Rq : ph[a][b] # "none" => rg[a][b] \in Gens /\ rg[a][b]<=gen[b]
 BY ONLY <2>1, ZenonT(5) DEF K8
<2>phase. ph[i][r] # "none"
 BY ONLY <2>2, SMTT(5) DEF PKE_PTimeout, Active
<2>rg. rg[i][r] \in Gens /\ rg[i][r]<=gen[r]
 BY ONLY <1>kKHxLfqldMa, <2>kg, <2>phase, SMTT(5)
<2>old. CASE m \in net
 <3>was. UlVxe(m)
  BY ONLY <1>kKHxLfqldMa, <2>1, <2>old, SMTT(5) DEF K12, UlVxe
 <3>qed. QED BY ONLY <2>genframe, <3>was, SMTT(5) DEF UlVxe
<2>kr. \A a \in Inst, b \in Rq : ph[a][b]="reg" => xg[rx[a][b]]=rg[a][b]
 BY ONLY <2>1, ZenonT(5) DEF K8
<2>abort. CASE m \notin net /\ m.t="abort"
 <3>fields. m.r=r /\ m.g=rg[i][r]
  BY ONLY <1>kKHxLfqldMa, <2>2, <2>abort, SMTT(5) DEF PKE_PTimeout, Msg
 <3>qed. QED BY ONLY <1>kKHxLfqldMa, <2>rg, <2>genframe, <3>fields, SMTT(5) DEF UlVxe
<2>nopost. CASE m \notin net /\ m.t # "abort"
 <3>fields. ph[i][r]="reg" /\ m.r=r /\ m.g=xg[rx[i][r]]
  BY ONLY <1>kKHxLfqldMa, <2>2, <2>nopost, SMTT(5) DEF PKE_PTimeout, Msg
 <3>generation. m.g=rg[i][r]
  BY ONLY <1>kKHxLfqldMa, <2>kr, <3>fields, SMTT(5)
 <3>qed. QED BY ONLY <1>kKHxLfqldMa, <2>rg, <2>genframe, <3>fields, <3>generation, SMTT(5) DEF UlVxe
<2>qed. QED BY ONLY <2>old, <2>abort, <2>nopost, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>MLHPoJiAVuN.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), NEW m \in net'
 PROVE kYyEb(m)'
<2> USE ONLY <1>MLHPoJiAVuN, Sizes, Location, Design
<2>oldInv. K12
 BY ONLY <1>MLHPoJiAVuN, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_PTimeout(i,r)
 BY ONLY <1>MLHPoJiAVuN, <1>UejBEju3sj64E5k, Sizes, Location, Design, SMTT(5)
<2>source. m.t="hello" => m \in net
 BY ONLY <1>MLHPoJiAVuN, <2>effect, SMTT(5) DEF PKE_PTimeout, Msg
<2>was. kYyEb(m)
 BY ONLY <2>oldInv, <2>source, SMTT(5) DEF K12, kYyEb
 <2>qed. QED BY ONLY <2>was, SMTT(5) DEF kYyEb

\* T2M-LOCAL-VISIBILITY

<1>fhKuInaJlYf.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), NEW m \in net'
 PROVE BTg7I(m)'
<2> USE ONLY <1>fhKuInaJlYf, Sizes, Location, Design
<2>oldInv. K12
 BY ONLY <1>fhKuInaJlYf, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_PTimeout(i,r)
 BY ONLY <1>fhKuInaJlYf, <1>UejBEju3sj64E5k, Sizes, Location, Design, SMTT(5)
<2>source. m.t="req" => m \in net
 BY ONLY <1>fhKuInaJlYf, <2>effect, SMTT(5) DEF PKE_PTimeout, Msg
<2>frame. UNCHANGED <<hp,hd>>
 BY ONLY <2>effect, ZenonT(5) DEF PKE_PTimeout
<2>was. BTg7I(m)
 BY ONLY <2>oldInv, <2>source, SMTT(5) DEF K12, BTg7I
 <2>qed. QED BY ONLY <2>was, <2>frame, SMTT(5) DEF BTg7I

\* T2M-LOCAL-VISIBILITY

<1>c6Gs6636gVH.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), NEW m \in net'
 PROVE Bxryv(m)'
<2> USE ONLY <1>c6Gs6636gVH, Sizes, Location, Design
<2>oldInv. K12
 BY ONLY <1>c6Gs6636gVH, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_PTimeout(i,r)
 BY ONLY <1>c6Gs6636gVH, <1>UejBEju3sj64E5k, Sizes, Location, Design, SMTT(5)
<2>source. m.t="dinfo" => m \in net
 BY ONLY <1>c6Gs6636gVH, <2>effect, SMTT(5) DEF PKE_PTimeout, Msg
<2>frame. UNCHANGED <<nx,xr,xg,xdst,hp,hd>>
 BY ONLY <2>effect, ZenonT(5) DEF PKE_PTimeout
<2>was. Bxryv(m)
 BY ONLY <2>oldInv, <2>source, SMTT(5) DEF K12, Bxryv
 <2>qed. QED BY ONLY <2>was, <2>frame, SMTT(5) DEF Bxryv

\* T2M-LOCAL-VISIBILITY

<1>CkJClGiEL2V.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), NEW m \in net'
 PROVE XTUuY(m)'
<2> USE ONLY <1>CkJClGiEL2V, Sizes, Location, Design
<2>oldInv. K12
 BY ONLY <1>CkJClGiEL2V, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_PTimeout(i,r)
 BY ONLY <1>CkJClGiEL2V, <1>UejBEju3sj64E5k, Sizes, Location, Design, SMTT(5)
<2>source. m.t="sinfo" => m \in net
 BY ONLY <1>CkJClGiEL2V, <2>effect, SMTT(5) DEF PKE_PTimeout, Msg
<2>frame. UNCHANGED <<nx,xr,xg,xsrc,xlt,hp,hd>>
 BY ONLY <2>effect, ZenonT(5) DEF PKE_PTimeout
<2>was. XTUuY(m)
 BY ONLY <2>oldInv, <2>source, SMTT(5) DEF K12, XTUuY
 <2>qed. QED BY ONLY <2>was, <2>frame, SMTT(5) DEF XTUuY

\* T2M-LOCAL-VISIBILITY

<1>TTLItorZUVI.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), NEW m \in net'
 PROVE Gf8VR(m)'
<2> USE ONLY <1>TTLItorZUVI, Sizes, Location, Design
<2>oldInv. K12
 BY ONLY <1>TTLItorZUVI, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_PTimeout(i,r)
 BY ONLY <1>TTLItorZUVI, <1>UejBEju3sj64E5k, Sizes, Location, Design, SMTT(5)
<2>source. m.t="notice" => m \in net
 BY ONLY <1>TTLItorZUVI, <2>effect, SMTT(5) DEF PKE_PTimeout, Msg
<2>frame. UNCHANGED <<nx,xr,xg,xlt,hw,hok,xk>>
 BY ONLY <2>effect, ZenonT(5) DEF PKE_PTimeout
<2>was. Gf8VR(m)
 BY ONLY <2>oldInv, <2>source, SMTT(5) DEF K12, Gf8VR
<2>ivEffect. iv'=iv \/ \E z \in Xids : iv[z]="reg" /\ iv'=[iv EXCEPT ![z]="nopost"]
 BY ONLY <2>effect, ZenonT(5) DEF PKE_PTimeout
<2>ivType. T_iv

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>TTLItorZUVI, V22_T_iv, SMTT(5) DEF T_iv

<2>xDomain. m.t="notice" => m.x \in Xids
 BY ONLY <1>TTLItorZUVI, <2>source, V21_Inv_MsgXDomain, Sizes, Location, Design, SMTT(5) DEF MsgXDomain
<2>ivKeep. m.t="notice" => iv'[m.x]=iv[m.x]
 BY ONLY <2>ivEffect, <2>ivType, <2>xDomain, <2>was, SMTT(5) DEF T_iv, Gf8VR
 <2>qed. QED BY ONLY <2>was, <2>frame, <2>ivKeep, SMTT(5) DEF Gf8VR, CqeHw

\* T2M-LOCAL-VISIBILITY

<1>c61s693Kye4.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), NEW m \in net'
 PROVE l7paO(m)'
<2> USE ONLY <1>c61s693Kye4, Sizes, Location, Design
<2>1. K12 /\ MsgXDomain /\ K8 /\ T_nx /\ T_iv /\ T_xr /\ T_xg
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_K8, V21_Inv_MsgXDomain, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_PTimeout(i,r)
 BY <1>UejBEju3sj64E5k, Sizes, Location, Design DEF Sizes, Location, Design
<2>frame. UNCHANGED <<nx,xr,xg>>
 BY ONLY <2>2, ZenonT(5) DEF PKE_PTimeout
<2>ivEffect. iv'=iv \/ \E z \in Xids : iv'=[iv EXCEPT ![z]="nopost"]
 BY ONLY <2>2, ZenonT(5) DEF PKE_PTimeout
<2>kr. \A a \in Inst, b \in Rq : ph[a][b]="reg" =>
  Mode="push" /\ rx[a][b] \in Xids /\ rx[a][b]<nx /\ xr[rx[a][b]]=b /\ xg[rx[a][b]]=rg[a][b] /\ iv[rx[a][b]]="reg"
 BY ONLY <2>1, ZenonT(5) DEF K8
<2>old. CASE m \in net /\ m.t="nopost"
 <3>was. Mode="push" /\ m.x \in Xids /\ m.x<nx /\ xr[m.x]=m.r /\ xg[m.x]=m.g /\ iv[m.x]="nopost"
  BY ONLY <1>c61s693Kye4, <2>old, <2>1, SMTT(5) DEF K12, MsgXDomain
 <3>ivnext. iv'[m.x]="nopost"
  BY ONLY <2>1, <2>ivEffect, <3>was, SMTT(5) DEF T_iv
 <3>qed. QED BY ONLY <2>frame, <3>was, <3>ivnext, SMTT(5) DEF l7paO
<2>new. CASE m \notin net /\ m.t="nopost"
 <3>match. ph[i][r]="reg" /\ m.x=rx[i][r] /\ m.r=r /\ m.g=xg[rx[i][r]]
  BY ONLY <1>c61s693Kye4, <2>new, <2>2, SMTT(5) DEF PKE_PTimeout, Msg
 <3>reg. Mode="push" /\ rx[i][r] \in Xids /\ rx[i][r]<nx /\ xr[rx[i][r]]=r /\ iv[rx[i][r]]="reg"
  BY ONLY <1>c61s693Kye4, <2>kr, <3>match, SMTT(5)
 <3>ivnext. iv'[m.x]="nopost"
  BY ONLY <2>1, <2>2, <3>match, <3>reg, SMTT(5) DEF PKE_PTimeout, T_iv
 <3>qed. QED BY ONLY <2>frame, <3>match, <3>reg, <3>ivnext, SMTT(5) DEF l7paO
<2>other. CASE m.t # "nopost"
 BY ONLY <2>other, SMTT(5) DEF l7paO
<2>qed. QED BY ONLY <2>old, <2>new, <2>other, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>nNeadQf8wnV.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), NEW m \in net'
 PROVE RPcfz(m)'
<2> USE ONLY <1>nNeadQf8wnV, Sizes, Location, Design
<2>oldInv. K12
 BY ONLY <1>nNeadQf8wnV, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_PTimeout(i,r)
 BY ONLY <1>nNeadQf8wnV, <1>UejBEju3sj64E5k, Sizes, Location, Design, SMTT(5)
<2>source. m.t="revoke" => m \in net
 BY ONLY <1>nNeadQf8wnV, <2>effect, SMTT(5) DEF PKE_PTimeout, Msg
<2>frame. UNCHANGED <<nx,xr,xg>>
 BY ONLY <2>effect, ZenonT(5) DEF PKE_PTimeout
<2>was. RPcfz(m)
 BY ONLY <2>oldInv, <2>source, SMTT(5) DEF K12, RPcfz
 <2>qed. QED BY ONLY <2>was, <2>frame, SMTT(5) DEF RPcfz

\* T2M-LOCAL-VISIBILITY

<1>icasRHTVNNt.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), NEW m \in net'
 PROVE G3Uin(m)'
<2> USE ONLY <1>icasRHTVNNt, Sizes, Location, Design
<2>oldInv. K12
 BY ONLY <1>icasRHTVNNt, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_PTimeout(i,r)
 BY ONLY <1>icasRHTVNNt, <1>UejBEju3sj64E5k, Sizes, Location, Design, SMTT(5)
<2>source. m.t="relsrc" => m \in net
 BY ONLY <1>icasRHTVNNt, <2>effect, SMTT(5) DEF PKE_PTimeout, Msg
<2>frame. UNCHANGED <<nx,xr,xg,hw,hok>>
 BY ONLY <2>effect, ZenonT(5) DEF PKE_PTimeout
<2>was. G3Uin(m)
 BY ONLY <2>oldInv, <2>source, SMTT(5) DEF K12, G3Uin
<2>ivEffect. iv'=iv \/ \E z \in Xids : iv[z]="reg" /\ iv'=[iv EXCEPT ![z]="nopost"]
 BY ONLY <2>effect, ZenonT(5) DEF PKE_PTimeout
<2>ivType. T_iv

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>icasRHTVNNt, V22_T_iv, SMTT(5) DEF T_iv

<2>xDomain. m.t="relsrc" => m.x \in Xids
 BY ONLY <1>icasRHTVNNt, <2>source, V21_Inv_MsgXDomain, Sizes, Location, Design, SMTT(5) DEF MsgXDomain
<2>ivKeep. m.t="relsrc" => iv'[m.x]=iv[m.x]
 BY ONLY <2>ivEffect, <2>ivType, <2>xDomain, <2>was, SMTT(5) DEF T_iv, G3Uin
 <2>qed. QED BY ONLY <2>was, <2>frame, <2>ivKeep, SMTT(5) DEF G3Uin

\* T2M-LOCAL-VISIBILITY

<1>qPK5qz9Z7pKV.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), NEW m \in net'
 PROVE xAvu0j(m)'
<2> USE ONLY <1>qPK5qz9Z7pKV, Sizes, Location, Design
<2>oldInv. K12
 BY ONLY <1>qPK5qz9Z7pKV, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>effect. PKE_PTimeout(i,r)
 BY ONLY <1>qPK5qz9Z7pKV, <1>UejBEju3sj64E5k, Sizes, Location, Design, SMTT(5)
<2>source. m.t="reply" => m \in net
 BY ONLY <1>qPK5qz9Z7pKV, <2>effect, SMTT(5) DEF PKE_PTimeout, Msg
<2>frame. UNCHANGED <<hd,drep,dsucc>>
 BY ONLY <2>effect, ZenonT(5) DEF PKE_PTimeout
<2>was. xAvu0j(m)
 BY ONLY <2>oldInv, <2>source, SMTT(5) DEF K12, xAvu0j
 <2>qed. QED BY ONLY <2>was, <2>frame, SMTT(5) DEF xAvu0j

\* T2M-LOCAL-VISIBILITY

<1>zb0sJPTwB2L.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE K12'
<2> USE ONLY <1>zb0sJPTwB2L, Sizes, Location, Design
<2>1. ASSUME NEW m \in net' PROVE BmN6sl4(m)'
  BY <1>kKHxLfqldMa, <1>MLHPoJiAVuN, <1>fhKuInaJlYf, <1>c6Gs6636gVH, <1>CkJClGiEL2V, <1>TTLItorZUVI, <1>c61s693Kye4, <1>nNeadQf8wnV, <1>icasRHTVNNt, <1>qPK5qz9Z7pKV, Sizes, Location, Design DEF BmN6sl4, Sizes, Location, Design
<2>2. QED BY <2>1, <1>FdYjaJP, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0450_PdPK12_PTimeout


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


<1>XZApzvoduavliQL.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>XZApzvoduavliQL, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>twxcKBTwdM4b.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE P_SI3'
 BY ONLY <1>twxcKBTwdM4b, Sizes, Location, Design, <1>XZApzvoduavliQL, <1>uWXN2TjAdAz DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YGkMN9YymddJjRz1VfuOxKDbjbDI.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>YGkMN9YymddJjRz1VfuOxKDbjbDI, Sizes, Location, Design, <1>AnajBeZS7htcLkTpZ8C91mxOHTa DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lsV4PJOinviYXaFgiDjRimJ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>lsV4PJOinviYXaFgiDjRimJ, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>lsV4PJOinviYXaFgiDjRimJ, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sTGmGejCTusB.        
 ASSUME PinInv, NEW q \in Pages, KPinned(q)
 PROVE RP_PinFacts(q)
<2> USE ONLY <1>sTGmGejCTusB, Sizes, Location, Design
<2>1. K14 /\ K15 /\ NoFreeUnderRead
 BY V21_Inv_K14, V21_Inv_K15, V21_Inv_NoFreeUnderRead, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Loc(q) \in Inst /\ q \notin SPages
 BY Location, P_PagePoolsDisjoint, SMTT(10), Sizes, Design DEF KPages, Sizes, Location, Design
<2>3. PICK k \in KSlots : kpin[Loc(q)][k] /\ \E e \in krs[Loc(q)][k] : e[3]=q
 BY Sizes, Location, Design DEF KPinned, Sizes, Location, Design
<2>30. PICK e \in krs[Loc(q)][k] : e[3]=q
 BY <2>3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. KHeld(e) /\ KData(Loc(q),e)
       /\ (IsD(Loc(q)) /\ e[4] # 1 => led[q]={})
       /\ (IsP(Loc(q)) => sled[q]={})
 BY <2>1, <2>2, <2>3, <2>30, Sizes, Location, Design DEF NoFreeUnderRead, K15, Sizes, Location, Design
<2>5. e[4] \in {0,1,2,3} /\ (e[4] # 0 => IsD(Loc(q)))
 BY <2>1, <2>2, <2>3, <2>30, Sizes, Location, Design DEF K14, Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>30, <2>4, <2>5, Sizes, SMTT(10), Location, Design DEF RP_PinFacts, KHeld, KData, IsP, IsD, Inst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VtlCqCAE0X2qQ.        
 ASSUME PinInv, SFollow, UNCHANGED <<kpin,krs,kfly>>,
        xdst' \in [Xids -> 0..NP],
        \A q \in Pages : KPinned(q) => RP_PinKeep(q)
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>VtlCqCAE0X2qQ, Sizes, Location, Design
<2>1. K14 /\ K15 /\ NoFreeUnderRead /\ krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0,1,2,3,4})]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>VtlCqCAE0X2qQ, V22_T_krs, V21_Inv_K14, V21_Inv_K15, V21_Inv_NoFreeUnderRead, Sizes, Location, Design, SMTT(5)

<2>2. P_SI3' BY <1>uWXN2TjAdAz, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<skey,sdata,swrite>> BY <1>zfqXeNpr8ate3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW i \in Inst, NEW k \in KSlots, kpin[i][k], NEW e \in krs[i][k]
       PROVE KHeld(e)' /\ KData(i,e)'
             /\ (IsD(i) /\ e[4] # 1 => led'[e[3]]={})
             /\ (IsP(i) /\ e[3] \in Pages => sled'[e[3]]={})
 <3>1. e[3] \in KPages /\ Loc(e[3])=i /\ KHeld(e) /\ KData(i,e)
       /\ (IsD(i) /\ e[4] # 1 => led[e[3]]={})
       /\ (IsP(i) /\ e[3] \in Pages => sled[e[3]]={})
  BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF K14, K15, NoFreeUnderRead, Sizes, Location, Design
 <3>2. CASE e[3] \in Pages
  <4>1. KPinned(e[3]) BY <2>4, <3>1, SMTT(10), Sizes, Location, Design DEF KPinned, Sizes, Location, Design
  <4>2. RP_PinKeep(e[3]) BY <3>2, <4>1, Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. QED BY <3>1, <3>2, <4>2, P_PagePoolsDisjoint, SMTT(10), Sizes, Location, Design DEF RP_PinKeep, KHeld, KData, Sizes, Location, Design
 <3>3. CASE e[3] \in SPages
  <4>1. B2 /\ i \in PInst /\ ~IsD(i)
   BY <2>1, <2>4, <3>3, Sizes, SMTT(10), Location, Design DEF K14, PInst, Inst, NL, IsP, IsD, Sizes, Location, Design
  <4>2. SData(e)' /\ SHeld(e)'
   BY <2>2, <2>4, <3>3, <4>1, Sizes, Location, Design DEF P_SI3, SI3, Sizes, Location, Design
  <4>3. NoWriteInto(e[3])'
   BY <3>3, Sizes, SMTT(10), Location, Design DEF NoWriteInto, SPages, Sizes, Location, Design
  <4>4. QED BY <3>3, <4>1, <4>2, <4>3, P_PagePoolsDisjoint, SMTT(10), Sizes, Location, Design DEF KHeld, KData, Sizes, Location, Design
 <3>4. QED BY <3>1, <3>2, <3>3, Sizes, Location, Design DEF KPages, Sizes, Location, Design
<2>5. QED BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF K15, K14, NoFreeUnderRead, BaseKReadIntegrity, Sizes, Location, Design
\* T2M-END R2M1444_PdRPKernel


<1>dlRLZLJP8YIdC37.         PinInv => RP_PageTypes
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_sfly, V22_T_sled, V22_T_xdst, SMTT(5) DEF RP_PT_hw, RP_PT_kpin, RP_PT_krs, RP_PT_led, RP_PT_pgn, RP_PT_plt, RP_PT_pr, RP_PT_pst, RP_PT_ptl, RP_PT_pvis, RP_PT_sfly, RP_PT_sled, RP_PT_xdst, RP_PageTypes

\* T2M-END R2M1445_PdRPPageTypes


<1>avg4t1hOtSJjHtrs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow, NEW q \in Pages, KPinned(q)
 PROVE RP_PinKeep(q)
<2> HIDE DEF PTimeout, PEnd, PageTo, GiveUpToN, RP_PinKeep, RP_PinFacts
<2>old. RP_PinFacts(q)
 BY ONLY <1>avg4t1hOtSJjHtrs, <1>sTGmGejCTusB, Sizes, Location, Design, SMTT(5)
<2>mut. Mut="none"
 BY ONLY Design, ZenonT(5) DEF Design
<2>guard. IsP(i) /\ Active(i,r)
 BY ONLY <1>avg4t1hOtSJjHtrs, ZenonT(5) DEF PTimeout
<2>k8. K8
 BY ONLY <1>avg4t1hOtSJjHtrs, V21_Inv_K8, Sizes, Location, Design, SMTT(5)
<2>source. rpg[i][r] \in Pages /\ Loc(rpg[i][r])=i /\ pst[rpg[i][r]]="priv"
 BY ONLY <1>avg4t1hOtSJjHtrs, <2>guard, <2>k8, SMTT(5) DEF K8
<2> DEFINE NewLed == IF ph[i][r]="reg" /\ rx[i][r] \in Xids /\ iv[rx[i][r]]="reg" /\ Mut # "pEndNoCancel"
                      THEN led[rpg[i][r]] \ {rx[i][r]} ELSE led[rpg[i][r]]
<2> HIDE DEF NewLed
<2>effect. PageTo(rpg[i][r],GiveUpToN(rpg[i][r],"timeout",NewLed),rpe[i][r],NewLed,sled[rpg[i][r]])
 BY ONLY <1>avg4t1hOtSJjHtrs, ZenonT(5) DEF PTimeout, PEnd, NewLed
<2>frame. UNCHANGED <<ptl,pvis,sfly,hw,xdst>>
 BY ONLY <1>avg4t1hOtSJjHtrs, ZenonT(5) DEF PTimeout, PEnd
<2>types. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 /\ plt \in [Pages -> 0..PS] /\ led \in [Pages -> SUBSET Xids]
 /\ sled \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>avg4t1hOtSJjHtrs, V22_T_pst, V22_T_pr, V22_T_pgn, V22_T_plt, V22_T_led, V22_T_sled, SMTT(5)
<2>nowrite. NoWriteInto(q) => NoWriteInto(q)'
 BY ONLY <2>frame, SMTT(5) DEF NoWriteInto, Writing, InFl
<2>same. CASE q=rpg[i][r]
 <3>state. GiveUpToN(rpg[i][r],"timeout",NewLed) \in {"drain","quar"}
  BY ONLY <1>avg4t1hOtSJjHtrs, <2>same, <2>mut, SMTT(5) DEF GiveUpToN, PinBlocks
 <3>side. IsP(Loc(q)) /\ ~IsD(Loc(q))
  BY ONLY <1>avg4t1hOtSJjHtrs, <2>source, <2>guard, <2>same, Sizes, SMTT(5) DEF IsP, IsD, Inst, NL, Sizes
 <3>update. pst'[q] \in {"drain","quar"} /\ UNCHANGED <<pr[q],pgn[q],plt[q]>> /\ sled'[q]=sled[q]
  BY ONLY <1>avg4t1hOtSJjHtrs, <2>same, <2>effect, <2>types, <3>state, SMTT(5) DEF PageTo
 <3>qed. QED
  BY ONLY <2>old, <2>source, <2>same, <2>frame, <2>nowrite, <3>side, <3>update, SMTT(5) DEF RP_PinKeep, RP_PinFacts
<2>other. CASE q # rpg[i][r]
 <3>update. UNCHANGED <<pst[q],pr[q],pgn[q],plt[q],led[q],sled[q]>>
  BY ONLY <1>avg4t1hOtSJjHtrs, <2>other, <2>effect, <2>types, SMTT(5) DEF PageTo
 <3>qed. QED BY ONLY <2>old, <2>frame, <2>nowrite, <3>update, SMTT(5) DEF RP_PinKeep, RP_PinFacts
<2>qed. QED BY ONLY <2>same, <2>other, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>MzrR5muzZO4XxXHTcXZ4.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs,kfly,xdst>>
 BY ONLY <1>MzrR5muzZO4XxXHTcXZ4, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, EvidenceAt, GiveUpTo, GiveUpToN, PEnd, PTimeout, PageTo, PinBlocks, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ccO4UsKSMXOH0Ta.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE K15' /\ NoFreeUnderRead' /\ BaseKReadIntegrity'
<2> USE ONLY <1>ccO4UsKSMXOH0Ta, Sizes, Location, Design
<2>1. \A q \in Pages : KPinned(q) => RP_PinKeep(q)
 BY <1>avg4t1hOtSJjHtrs, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,kfly,xdst>> BY <1>MzrR5muzZO4XxXHTcXZ4, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ccO4UsKSMXOH0Ta, <2>2, V22_T_xdst, SMTT(5)

<2>4. QED BY <2>1, <2>2, <2>3, <1>VtlCqCAE0X2qQ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>h7DS5ED6w4Fh.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE K15'
 BY ONLY <1>h7DS5ED6w4Fh, Sizes, Location, Design, <1>ccO4UsKSMXOH0Ta DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sb31ii9OU4ObJ3M91fCgXVzG.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE NoFreeUnderRead'
 BY ONLY <1>sb31ii9OU4ObJ3M91fCgXVzG, Sizes, Location, Design, <1>ccO4UsKSMXOH0Ta DEF Sizes, Location, Design
\* T2M-END R2M1463_PdRPKernel_PTimeout


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


<1>fT88b6.        
  ASSUME K17, K14, c02OO, UNCHANGED <<kpin,krs>>,
         \A j \in Inst, u \in Rq : IsD(j) =>
           ph'[j][u] = ph[j][u] /\ rg'[j][u] = rg[j][u] /\ rpg'[j][u] = rpg[j][u]
  PROVE K17'
<2> USE ONLY <1>fT88b6, Sizes, Location, Design
<2>1. SUFFICES ASSUME NEW j \in Inst, NEW s \in KSlots,
                     NEW e \in krs'[j][s], kpin'[j][s], e[4] \in {2,3}
                PROVE rg'[j][e[1]] > e[2] \/
                  (rg'[j][e[1]] = e[2] /\ ph'[j][e[1]] \in {"run","ovl","end"} /\ rpg'[j][e[1]] # e[3])
  BY SMTT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
<2>2. kpin[j][s] /\ e \in krs[j][s] /\ e[1] \in Rq
  BY <2>1, SMTT(10), Sizes, Location, Design DEF c02OO, Sizes, Location, Design
<2>3. IsD(j)
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K14, Sizes, Location, Design
<2>4. rg[j][e[1]] > e[2] \/
       (rg[j][e[1]] = e[2] /\ ph[j][e[1]] \in {"run","ovl","end"} /\ rpg[j][e[1]] # e[3])
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1481_PdRPPP_PdK17DFrame


<1>vV6hlhMGns5ALTe.        
  ASSUME NEW x \in Xids, PinInv, x < nx
  PROVE ExpInst(x) \in Inst /\ InitInst(x) \in Inst /\ xr[x] \in Rq
<2> USE ONLY <1>vV6hlhMGns5ALTe, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, SHJS, Xids, Sizes, Location, Design
<2>3. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, <1>Ug4VwS, SMTT(10), Sizes, Location, Design DEF ExpInst, InitInst, Sizes, Location, Design
\* T2M-END R2M1483_PdRPPP_PdAllocatedEndpoints

\* T2M-SCOPE R2M1484_PdRPPP_PdRecordPhaseFrames
\* T2M-BODY R2M1484_PdRPPP_PdRecordPhaseFrames
\* T2M-LOCAL-VISIBILITY

<1>tgx9Q.        
  ASSUME S1, UNCHANGED <<rg,rx,xp,xd,xk,xr,xg,nx,xsrc,xdst>>,
         \A x \in Xids : x < nx => ExpInst(x) \in Inst /\ xr[x] \in Rq,
         \A a \in Inst, u \in Rq : ph[a][u] # "none" => ph'[a][u] # "none",
         \A a \in Inst, u \in Rq : Active(a,u)' => Active(a,u)
  PROVE S1'
  BY ONLY <1>tgx9Q, Sizes, Location, Design, SMTT(10) DEF S1, ExpInst, InitInst, InitPage, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wsqeU.        
  ASSUME S6, UNCHANGED <<rg,rx,xp,xd,xk,xr,xg,nx,xsrc,xdst>>,
         \A x \in Xids : x < nx => InitInst(x) \in Inst /\ xr[x] \in Rq,
         \A a \in Inst, u \in Rq : ph[a][u] # "none" => ph'[a][u] # "none",
         \A a \in Inst, u \in Rq : Active(a,u)' => Active(a,u)
  PROVE S6'
  BY ONLY <1>wsqeU, Sizes, Location, Design, SMTT(10) DEF S6, ExpInst, InitInst, InitPage, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uYapj2yygP7.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PTimeout(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>uYapj2yygP7, Sizes, Location, Design, Zenon DEF PEnd, PTimeout, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1757_PdRPPP_PdPTimeoutFrames

\* T2M-SCOPE R2M1758_PdRPPP_PdCell_PTimeout_K17

<1>TT9YN6qG1.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE K17'
<2> USE ONLY <1>TT9YN6qG1, Sizes, Location, Design
<2>1. K17 /\ K14 /\ c02OO /\ AydA /\ nNeM /\ q1Ohy
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K14, V21_Inv_K17, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs>>
  BY <1>uYapj2yygP7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A j \in Inst, u \in Rq : IsD(j) =>
           ph'[j][u] = ph[j][u] /\ rg'[j][u] = rg[j][u] /\ rpg'[j][u] = rpg[j][u]
  BY <2>1, Sizes, SMTT(10), Location, Design DEF PTimeout, PEnd, AydA, nNeM, q1Ohy, IsP, IsD, Inst, NL, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>fT88b6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1758_PdRPPP_PdCell_PTimeout_K17

\* T2M-SCOPE R2M1759_PdRPPP_PdCell_PTimeout_S1

<1>iWKT9Lrx.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE S1'
<2> USE ONLY <1>iWKT9Lrx, Sizes, Location, Design
<2>1. S1 /\ AydA
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_S1, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<rg,rx,xp,xd,xk,xr,xg,nx,xsrc,xdst>>
  BY <1>uYapj2yygP7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A a \in Inst, u \in Rq :
           /\ (ph[a][u] # "none" => ph'[a][u] # "none")
           /\ (Active(a,u)' => Active(a,u))
           /\ (ph'[a][u] \in {"run","ovl"} => ph[a][u] \in {"run","ovl"})
  BY <2>1, SMTT(10), Sizes, Location, Design DEF Active, PEnd, PTimeout, AydA, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. \A x \in Xids : x < nx => ExpInst(x) \in Inst /\ InitInst(x) \in Inst /\ xr[x] \in Rq
  BY <1>vV6hlhMGns5ALTe, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, <1>tgx9Q, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1759_PdRPPP_PdCell_PTimeout_S1

\* T2M-SCOPE R2M1760_PdRPPP_PdCell_PTimeout_S6

<1>zO1eFYgV.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE S6'
<2> USE ONLY <1>zO1eFYgV, Sizes, Location, Design
<2>1. S6 /\ AydA
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_S6, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<rg,rx,xp,xd,xk,xr,xg,nx,xsrc,xdst>>
  BY <1>uYapj2yygP7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A a \in Inst, u \in Rq :
           /\ (ph[a][u] # "none" => ph'[a][u] # "none")
           /\ (Active(a,u)' => Active(a,u))
           /\ (ph'[a][u] \in {"run","ovl"} => ph[a][u] \in {"run","ovl"})
  BY <2>1, SMTT(10), Sizes, Location, Design DEF Active, PEnd, PTimeout, AydA, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. \A x \in Xids : x < nx => ExpInst(x) \in Inst /\ InitInst(x) \in Inst /\ xr[x] \in Rq
  BY <1>vV6hlhMGns5ALTe, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, <1>wsqeU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1760_PdRPPP_PdCell_PTimeout_S6


<1>oTcEJGChUJz.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE K17'
  BY ONLY <1>oTcEJGChUJz, Sizes, Location, Design, <1>TT9YN6qG1, V21_Inv_K17 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AbhkKHKAxC.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE S1'
  BY ONLY <1>AbhkKHKAxC, Sizes, Location, Design, <1>iWKT9Lrx, V21_Inv_S1 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eR2sehZCQ7.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE S6'
  BY ONLY <1>eR2sehZCQ7, Sizes, Location, Design, <1>zO1eFYgV, V21_Inv_S6 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>d9BfqYlnVadY3AsfPYcDvD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE UNCHANGED gen /\ RP_RecordReady /\ RP_NoneFrame
<2> USE ONLY <1>d9BfqYlnVadY3AsfPYcDvD, Sizes, Location, Design
<2>1. B2 => \A j \in PInst,u \in Rq : ph[j][u] \in {"reg","sent","exp"} => SSendReady(j,u)
 BY V21_Inv_P_SI1, Sizes, Location, Design DEF P_SI1, SI1, Sizes, Location, Design
<2>2. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>d9BfqYlnVadY3AsfPYcDvD, V22_T_ph, V22_T_rg, SMTT(5)

<2>3. QED BY <2>1, <2>2, Design, Sizes, SMTT(10), Location DEF RP_RecordReady, RP_NoneFrame, PInst, Inst, NL, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zlaxkQAlr27l.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE P_SI1'
 BY ONLY <1>zlaxkQAlr27l, Sizes, Location, Design, <1>d9BfqYlnVadY3AsfPYcDvD, <1>lsV4PJOinviYXaFgiDjRimJ, <1>XZApzvoduavliQL, <1>o0ug5dmdGVA DEF Sizes, Location, Design
\* T2M-END R2M1814_PdRPSI1_PTimeout


<1> QED BY <1>zb0sJPTwB2L, <1>h7DS5ED6w4Fh, <1>sb31ii9OU4ObJ3M91fCgXVzG, <1>YGkMN9YymddJjRz1VfuOxKDbjbDI, <1>twxcKBTwdM4b, <1>zlaxkQAlr27l, <1>AbhkKHKAxC, <1>eR2sehZCQ7, <1>oTcEJGChUJz, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PTimeout_04_02 SHA 6548d6d5d1e06160e31acff6c798cc39153cc8e7fb238f31c6a6db3def5b130b
USE DEF V21_Inv_BaseSafety, V21_Inv_HitIdentity, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_KStruct, V21_Inv_NoEvictUnderRDMA, V21_Inv_OneReply, V21_Inv_P_SI6, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReadOwnLanded, V21_Inv_S2, V21_Inv_SI7, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V22_SF_MapPoint, V22_T_rpgS, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF P_PagePoolsDisjoint, Part_PTimeout_04_01, V21_Inv_K12, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI3, V21_Inv_PrefcMatchesHolders, V21_Inv_S1, V21_Inv_S6, V21_SFollowOff, V22_T_kpin, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_sfly, V22_T_sled, V22_T_xdst
THEOREM Part_PTimeout_04_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE (SendOwnLanded)' /\ (QuarNeverMapped)' /\ (K2)' /\ (K3)' /\ (QuarNoReg)' /\ (K4)' /\ (NoEvictUnderRDMA)' /\ (P_SI4)' /\ (HitIdentity)' /\ (P_SI6)' /\ (S2)' /\ (OneReply)'
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

           dlzHJ(i,r) ==
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


           Zzz7b(p) ==
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


           EExit(i,r,h) == IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"} /\ PEnd(i,r,h) /\ UNCHANGED gbad


           ECancel(i,r) == ph[i][r] = "reg"


           ELed(i,r) == IF ECancel(i,r) THEN led[rpg[i][r]] \ {rx[i][r]} ELSE led[rpg[i][r]]


           EState(i,r,h) == IF ELed(i,r) = {} /\ sled[rpg[i][r]] = {}
                           THEN IF KPinned(rpg[i][r]) THEN "drain" ELSE "free"
                           ELSE IF h = "timeout" /\ ELed(i,r) # {} THEN "quar" ELSE "drain"

           \* T2M-LOCAL-VISIBILITY

           EK2At(x) ==
           IF x >= nx
                   THEN /\ xk[x] = "none" /\ xr[x] = 0 /\ xg[x] = 0 /\ xp[x] = 0 /\ xd[x] = 0 /\ xsrc[x] = 0 /\ xdst[x] = 0
                        /\ xnt[x] = 0 /\ hw[x] = "none" /\ ~hok[x] /\ iv[x] = "none" /\ xst[x] = "none" /\ xlt[x] = 0
                   ELSE /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
                        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
                        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
                        /\ xnt[x] = NTok(xr[x], xg[x]) /\ xst[x] # "none"
                        /\ IF xk[x] = "wr" /\ InitPage(x) = 0 THEN xlt[x] = 0 ELSE xlt[x] \in PLens(xr[x], xg[x])   
                        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
                        /\ iv[x] = "none" => InitPage(x) = 0
                        /\ iv[x] \notin {"none", "nopost"} => InitPage(x) # 0
                        /\ (iv[x] = "nopost" /\ InitPage(x) # 0) => (xk[x] = "wr" /\ PReg)   
                        /\ InitPage(x) # 0 => (InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))


           EK3At(x) ==
                   /\ (iv[x] \in {"none", "nopost", "reg"}) <=> (hw[x] = "none")
                   /\ iv[x] = "reg" => (xk[x] = "wr" /\ PReg /\ xst[x] = "posted")
                   /\ iv[x] = "cqe" => hw[x] \in CqeHw(x)
                   /\ hw[x] = "issued" => xk[x] = "wr"
                   /\ xst[x] = "revoked" => iv[x] = "nopost"
                   /\ xst[x] = "landed" => (hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x])   
                   /\ (xk[x] = "rd" /\ iv[x] \notin {"none", "nopost"}) => xlt[x] = xnt[x]   
                   /\ xst[x] = "failed" => IF xk[x] = "wr" THEN (hw[x] = "stop" /\ hok[x] /\ xlt[x] # xnt[x])   
                                            ELSE ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ~hok[x]) \/ iv[x] = "nopost")
                   /\ InFl(x) => (xst[x] = "posted" /\ (iv[x] \in {"posted", "failret"} \/ (iv[x] = "cqe" /\ hw[x] = "issued" /\ ~hok[x])))


           RP2_TransportFrame == UNCHANGED <<xsrc,xr,xg,xp,xk,xst,nx>>


           RP2_EntryProgress == \A x \in Xids : iv[x] \in {"reg","posted","failret"} => iv'[x] \in {"reg","posted","failret","cqe","nopost"}


           RP2_HardwareProgress ==
            /\ \A x \in Xids : hw'[x]="fly" => (hw[x]="fly" \/ iv[x]="reg") /\ ~RP_Close(x)
            /\ \A x \in Xids : hw'[x] \in {"issued","stop"} => hw'[x]=hw[x]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_NewFlyFromReg, RP_SharedSend, RP_RecordProgress, RP_GenMonotone, RP_KPhaseProgress, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, dlzHJ, Zzz7b, EExit, ECancel, ELed, EState, EK2At, EK3At, RP2_TransportFrame, RP2_EntryProgress, RP2_HardwareProgress

<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Af.        
 S2 /\ UNCHANGED <<nx, xg, xr>> => S2'
 BY IsaT(10), Sizes, Location, Design DEF S2, Sizes, Location, Design
\* T2M-END R2M0342_PdPF_S2


<1>XnYly5EW.        
 OneReply /\ UNCHANGED <<crep, drep>> => OneReply'
 BY IsaT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
\* T2M-END R2M0348_PdPF_OneReply


<1>qK0WhOaWFW2PLnLs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, kfly, kpin, krs, nfail, nx, rd, rp, rt, torn, xg, xr>>
 BY ONLY <1>qK0WhOaWFW2PLnLs, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PEnd, PTimeout, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AaFbFUUa7Um.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE S2'
<2> USE ONLY <1>AaFbFUUa7Um, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>qK0WhOaWFW2PLnLs, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WI3MwajZHVdXcoH4D.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE OneReply'
<2> USE ONLY <1>WI3MwajZHVdXcoH4D, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>qK0WhOaWFW2PLnLs, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>Hn3O9gwfDO1S9YsO9hAv.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE UNCHANGED <<xsrc,xr,xg>> /\ RP_NewFlyFromReg
<2> USE ONLY <1>Hn3O9gwfDO1S9YsO9hAv, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Hn3O9gwfDO1S9YsO9hAv, V22_T_hw, SMTT(5)

<2>2. QED BY <2>1, Design, SMTT(10), Sizes, Location DEF RP_NewFlyFromReg, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>x0UfOFPFCrBT8uIifAa9O.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE NoEvictUnderRDMA' /\ RP_SharedSend'
 BY ONLY <1>x0UfOFPFCrBT8uIifAa9O, Sizes, Location, Design, <1>Hn3O9gwfDO1S9YsO9hAv, <1>fCaVnnRiNeSrXN4lcQ3A DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CsJmgDK5pF4L80IYqXOKzaQCD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>CsJmgDK5pF4L80IYqXOKzaQCD, Sizes, Location, Design, <1>x0UfOFPFCrBT8uIifAa9O DEF Sizes, Location, Design
\* T2M-END R2M1406_PdRPAccess_PTimeout


<1>UbRyVd7pIbH8AblyNEO.        
 ASSUME PinInv, SFollow, RP_RecordProgress
 PROVE HitIdentity'
<2> USE ONLY <1>UbRyVd7pIbH8AblyNEO, Sizes, Location, Design
<2>1. HitIdentity /\ (B2 => SI4) /\ STypeOK
 BY V21_Inv_HitIdentity, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. UNCHANGED skey BY <1>zfqXeNpr8ate3, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE ~B2
 BY <2>3, Sizes, Location, Design DEF HitIdentity, Sizes, Location, Design
<2>4. CASE B2
 <3>1. RP_SFollowEffect BY <2>4, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. rpgS' \subseteq rpgS BY <3>1, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_H2, Sizes, Location, Design
 <3>3. \A h \in rpgS' : spst'[h[4]]="shared" /\ skey'[h[4]]=STok(h[2],h[3])
  <4>1. ASSUME NEW h \in rpgS'
         PROVE spst'[h[4]]="shared" /\ skey'[h[4]]=STok(h[2],h[3])
   <5>1. h \in rpgS /\ h[4] \in SPages
    BY <2>1, <3>2, <4>1, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
   <5>2. spst[h[4]]="shared" /\ skey[h[4]]=STok(h[2],h[3])
    BY <2>1, <2>4, <5>1, Sizes, Location, Design DEF HitIdentity, Sizes, Location, Design
   <5>3. QED BY <2>1, <2>2, <2>4, <5>1, <5>2, <1>Ua3eOhQVTzEuP0Q, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. QED BY <4>1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. \A i \in PInst,r \in Rq : (Active(i,r)' /\ smap'[i][r] \in SPages) => skey'[smap'[i][r]]=STok(r,rg'[i][r])
  <4>1. ASSUME NEW i \in PInst, NEW r \in Rq, Active(i,r)', smap'[i][r] \in SPages
         PROVE skey'[smap'[i][r]]=STok(r,rg'[i][r])
   <5>1. smap'[i][r]=smap[i][r] /\ rg'[i][r]=rg[i][r]
    BY <3>1, <4>1, Sizes, SMTT(10), Location, Design DEF RP_SFollowEffect, RP_New, SPages, Sizes, Location, Design
   <5>2. Active(i,r) BY <4>1, <5>1, Sizes, Location, Design DEF RP_RecordProgress, Sizes, Location, Design
   <5>3. QED BY <2>1, <2>2, <2>4, <4>1, <5>1, <5>2, SMTT(10), Sizes, Location, Design DEF HitIdentity, Sizes, Location, Design
  <4>2. QED BY <4>1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>5. QED BY <2>4, <3>3, <3>4, Sizes, Location, Design DEF HitIdentity, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1412_PdRPSharedIdentity


<1>XZApzvoduavliQL.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE UNCHANGED <<kpin,krs>>
 BY ONLY <1>XZApzvoduavliQL, Sizes, Location, Design, Design, ZenonT(10) DEF EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lsV4PJOinviYXaFgiDjRimJ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE RP_RecordProgress
<2> USE ONLY <1>lsV4PJOinviYXaFgiDjRimJ, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>lsV4PJOinviYXaFgiDjRimJ, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_RecordProgress, Active, PInst, Inst, NL, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KyPBWcafXPwyrg2L2h4W.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE HitIdentity'
 BY ONLY <1>KyPBWcafXPwyrg2L2h4W, Sizes, Location, Design, <1>lsV4PJOinviYXaFgiDjRimJ, <1>UbRyVd7pIbH8AblyNEO DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>en8DoQ4CaLECl3ahWsXM.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE RP_GenMonotone /\ RP_KPhaseProgress
<2> USE ONLY <1>en8DoQ4CaLECl3ahWsXM, Sizes, Location, Design
<2>1. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>en8DoQ4CaLECl3ahWsXM, V22_T_ph, V22_T_rg, SMTT(5)

<2>2. QED BY <2>1, Design, Sizes, SMTT(10), Location DEF RP_GenMonotone, RP_KPhaseProgress, PInst, Inst, NL, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yTwWOSoXdorS.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE P_SI6'
 BY ONLY <1>yTwWOSoXdorS, Sizes, Location, Design, <1>XZApzvoduavliQL, <1>lsV4PJOinviYXaFgiDjRimJ, <1>en8DoQ4CaLECl3ahWsXM, <1>sP1gMFHuwAB DEF Sizes, Location, Design
\* T2M-END R2M1441_PdRPExtra_PTimeout


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>QMrZB.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE dlzHJ(i,r)
  BY ONLY <1>QMrZB, Sizes, Location, Design DEF K8, dlzHJ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gfplo.        
  ASSUME NEW p \in Pages, K7
  PROVE Zzz7b(p)
  BY ONLY <1>gfplo, Sizes, Location, Design DEF K7, Zzz7b, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HzDmJ6cCSS2.        
  ASSUME NEW i \in Inst, NEW r \in Rq, NEW j \in Inst, NEW s \in Rq,
         K8, IsP(i), Active(i,r)
  PROVE (Active(j,s) /\ rpg[j][s] = rpg[i][r]) => j=i /\ s=r
<2> USE ONLY <1>HzDmJ6cCSS2, Sizes, Location, Design
<2>1. dlzHJ(i,r) /\ dlzHJ(j,s)
  BY <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Loc(rpg[i][r]) = i /\ pr[rpg[i][r]] = r
  BY <2>1, Zenon, Sizes, Location, Design DEF dlzHJ, OwnedBy, Sizes, Location, Design
<2>3. (Active(j,s) /\ rpg[j][s] = rpg[i][r]) => j=i
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF dlzHJ, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Zenon, Sizes, Location, Design DEF dlzHJ, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DqPcfGr.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, EExit(i,r,h)
 PROVE UNCHANGED <<rtV,instV,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,xst,nx,drep,crep,dsucc,gbad>>
 BY ONLY <1>DqPcfGr, Sizes, Location, Design, ZenonT(10) DEF EExit, PEnd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Igs7TOaR.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
       /\ (ECancel(i,r) => rx[i][r] \in Xids /\ rx[i][r] < nx /\ iv[rx[i][r]] = "reg" /\ xk[rx[i][r]] = "wr"
                          /\ xsrc[rx[i][r]] = rpg[i][r] /\ xr[rx[i][r]] = r /\ xg[rx[i][r]] = rg[i][r])
<2> USE ONLY <1>Igs7TOaR, Sizes, Location, Design
 <2>1. K8 /\ K7 /\ K1 /\ K3 /\ IsP(i) /\ Active(i,r)
  BY SMTT(5), V21_Inv_K1, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF EExit, Sizes, Location, Design
 <2>2. dlzHJ(i,r)
  BY <2>1, <1>QMrZB, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF dlzHJ, Active, OwnedBy, Sizes, Location, Design
 <2>4. Zzz7b(rpg[i][r])
  BY <2>1, <2>3, <1>gfplo, Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. QED
  <3>route. hd[r][rg[i][r]] \in DInst
   BY ONLY <1>Igs7TOaR, <2>1, <2>3, SMTT(5) DEF K1
  <3>page. prefc[rpg[i][r]]=0 /\ pqp[rpg[i][r]]=0
   BY ONLY <2>3, <2>4, SMTT(5) DEF Zzz7b
  <3>cancel. ASSUME ECancel(i,r)
              PROVE rx[i][r] \in Xids /\ rx[i][r]<nx /\ iv[rx[i][r]]="reg" /\ xk[rx[i][r]]="wr" /\ xsrc[rx[i][r]]=rpg[i][r] /\ xr[rx[i][r]]=r /\ xg[rx[i][r]]=rg[i][r]
   <4>slot. rx[i][r] \in Xids /\ rx[i][r]<nx /\ iv[rx[i][r]]="reg" /\ xsrc[rx[i][r]]=rpg[i][r] /\ xr[rx[i][r]]=r /\ xg[rx[i][r]]=rg[i][r]
    BY ONLY <2>2, <3>cancel, SMTT(5) DEF dlzHJ, ECancel
   <4>kind. xk[rx[i][r]]="wr"
    BY ONLY <2>1, <4>slot, SMTT(5) DEF K3
   <4>qed. QED BY ONLY <4>slot, <4>kind, SMTT(5)
  <3>qed. QED BY ONLY <2>3, <3>route, <3>page, <3>cancel, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>aqUWBvC1.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ iv' = IF ECancel(i,r) THEN [iv EXCEPT ![rx[i][r]] = "nopost"] ELSE iv
       /\ PageTo(rpg[i][r],EState(i,r,h),rpe[i][r],ELed(i,r),sled[rpg[i][r]])
       /\ net' = net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)}
          \cup (IF ECancel(i,r) THEN {Msg("nopost",i,xd[rx[i][r]],r,xg[rx[i][r]],rx[i][r],0,0,FALSE)} ELSE {})
<2> USE ONLY <1>aqUWBvC1, Sizes, Location, Design
 <2>1. ECancel(i,r) => rx[i][r] \in Xids /\ iv[rx[i][r]] = "reg" /\ xk[rx[i][r]] = "wr"
  BY <1>Igs7TOaR, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. QED
  BY <2>1, Design, SMTT(5), Sizes, Location DEF EExit, PEnd, ECancel, ELed, EState, GiveUpToN, PinBlocks, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>L6zZjgr.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A j \in Inst, u \in Rq :
   /\ ph'[j][u] = IF j=i /\ u=r THEN "end" ELSE ph[j][u]
   /\ (Active(j,u)' => Active(j,u) /\ ph'[j][u] = ph[j][u])
   /\ (ph'[j][u] \in {"run","ovl"} <=> ph[j][u] \in {"run","ovl"})
<2> USE ONLY <1>L6zZjgr, Sizes, Location, Design
 <2>1. AydA /\ IsP(i) /\ K8
  BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, EExit, Sizes, Location, Design
 <2>2. ph[i][r] \notin {"run","ovl"}
  BY <2>1, SMTT(5), Sizes, Location, Design DEF K8, Sizes, Location, Design
 <2>3. QED
  BY <2>1, <2>2, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF AydA, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ko9N.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A y \in Xids : iv'[y] = IF ECancel(i,r) /\ y=rx[i][r] THEN "nopost" ELSE iv[y]
<2> USE ONLY <1>Ko9N, Sizes, Location, Design
 <2>1. fr1A BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF fr1A, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Y6cekk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : pst'[q] = IF q = rpg[i][r] THEN (EState(i,r,h)) ELSE pst[q]
<2> USE ONLY <1>Y6cekk, Sizes, Location, Design
 <2>1. OyyWS BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, OyyWS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ql3Fd6.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A q \in Pages : led'[q] = IF q = rpg[i][r] THEN (IF EState(i,r,h) = "free" THEN {} ELSE ELed(i,r)) ELSE led[q]
<2> USE ONLY <1>ql3Fd6, Sizes, Location, Design
 <2>1. dcfPK BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>aqUWBvC1, SMTT(5), Sizes, Location, Design DEF PageTo, dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jUyRMszR6M4WWR.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE /\ \A q \in Pages : UNCHANGED <<KPinned(q),NHits(q)>>
       /\ \A j \in Inst, u \in Rq : Maps(j,u,rpg[i][r])' => FALSE
<2> USE ONLY <1>jUyRMszR6M4WWR, Sizes, Location, Design
 <2>1. UNCHANGED <<kpin,krs,rpg,rhit>>
  BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF instV, kV, Sizes, Location, Design
 <2>2. K8 /\ IsP(i) /\ Active(i,r)
  BY SMTT(5), V21_Inv_K8, Sizes, Location, Design DEF EExit, Sizes, Location, Design
 <2>3. \A j \in Inst, u \in Rq : (Active(j,u) /\ rpg[j][u] = rpg[i][r]) => j=i /\ u=r
  BY <2>2, <1>HzDmJ6cCSS2, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. \A q \in Pages :
  {u \in Rq : ph'[Loc(q)][u] \in {"run","ovl"} /\ rhit'[Loc(q)][u] /\ rpg'[Loc(q)][u] = q}
  = {u \in Rq : ph[Loc(q)][u] \in {"run","ovl"} /\ rhit[Loc(q)][u] /\ rpg[Loc(q)][u] = q}
  BY <2>1, <1>L6zZjgr, Location, SMTT(5), Sizes, Design DEF KPages, Sizes, Location, Design
 <2>5. QED
  BY <2>1, <2>3, <2>4, <1>L6zZjgr, SMTT(5), Sizes, Location, Design DEF KPinned, NHits, Maps, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hv0XuP.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE EExit(i,r,"timeout")
 BY ONLY <1>hv0XuP, Sizes, Location, Design, SMTT(5) DEF PTimeout, EExit, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>o6IHG.         K2 <=> (\A x \in Xids : EK2At(x))
 BY ZenonT(5), Sizes, Location, Design DEF K2, EK2At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CMeT.         (\A x \in Xids : EK2At(x)') => K2'
 BY ZenonT(5), Sizes, Location, Design DEF K2, EK2At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fsuoF.         K3 <=> (\A x \in Xids : EK3At(x))
 BY ZenonT(5), Sizes, Location, Design DEF K3, EK3At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lNob.         (\A x \in Xids : EK3At(x)') => K3'
 BY ZenonT(5), Sizes, Location, Design DEF K3, EK3At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>p4Rjn.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE K4'
<2> USE ONLY <1>p4Rjn, Sizes, Location, Design
<2>1. K4 /\ K2 /\ K3 /\ K5 /\ K8 /\ dcfPK /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<nx,xdst,xk,xsrc,xst>>
 BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF rtV, instV, kV, Sizes, Location, Design
<2>3. IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"}
 BY SMTT(5), Sizes, Location, Design DEF EExit, Sizes, Location, Design
<2>nxInt. nx \in Int
 BY ONLY <2>1, SMTT(5) DEF SHJS
<2>ivEffect. \A y \in Xids : iv'[y]=IF ECancel(i,r) /\ y=rx[i][r] THEN "nopost" ELSE iv[y]
 BY ONLY <1>p4Rjn, <1>Ko9N, SMTT(5)
<2>ledEffect. \A q \in Pages : led'[q]=IF q=rpg[i][r] /\ ECancel(i,r) THEN led[q] \ {rx[i][r]} ELSE led[q]
 <3>at. ASSUME NEW q \in Pages
         PROVE led'[q]=IF q=rpg[i][r] /\ ECancel(i,r) THEN led[q] \ {rx[i][r]} ELSE led[q]
  <4>raw. led'[q]=IF q=rpg[i][r] THEN (IF EState(i,r,h)="free" THEN {} ELSE ELed(i,r)) ELSE led[q]
   BY ONLY <1>p4Rjn, <3>at, <1>ql3Fd6, SMTT(5)
  <4>empty. EState(i,r,h)="free" => ELed(i,r)={}
   BY ONLY SMTT(5) DEF EState
  <4>qed. QED BY ONLY <4>raw, <4>empty, SMTT(5) DEF ELed
 <3>qed. QED BY ONLY <3>at, SMTT(5)
<2>select. \A y \in Xids : ExpPage(y)'=ExpPage(y) /\ InitPage(y)'=InitPage(y)
 BY ONLY <2>2, SMTT(5) DEF ExpPage, InitPage
<2>cancel. ASSUME ECancel(i,r)
           PROVE rx[i][r] \in Xids /\ InitPage(rx[i][r])=rpg[i][r] /\ ExpPage(rx[i][r]) # rpg[i][r]
 <3>slot. rpg[i][r] \in Pages /\ Loc(rpg[i][r])=i /\ rpe[i][r] \in DInst /\ rx[i][r] \in Xids /\ rx[i][r]<nx /\ iv[rx[i][r]]="reg" /\ xk[rx[i][r]]="wr" /\ xsrc[rx[i][r]]=rpg[i][r] /\ xr[rx[i][r]]=r /\ xg[rx[i][r]]=rg[i][r]
  BY ONLY <1>p4Rjn, <2>cancel, <1>Igs7TOaR, SMTT(5)
 <3>int. rx[i][r] \in Int
  BY ONLY <3>slot, SMTT(5) DEF Xids
 <3>dest. xdst[rx[i][r]] \in Pages /\ Loc(xdst[rx[i][r]])=xd[rx[i][r]] /\ xd[rx[i][r]]=hd[r][rg[i][r]]
  BY ONLY <2>1, <2>nxInt, <3>slot, <3>int, SMTT(5) DEF K2, ExpPage, ExpInst
 <3>route. rpe[i][r]=hd[r][rg[i][r]]
  BY ONLY <1>p4Rjn, <2>1, <2>3, SMTT(5) DEF K8, Active
 <3>apart. xdst[rx[i][r]] # rpg[i][r]
  BY ONLY <2>3, <3>slot, <3>dest, <3>route, Sizes, SMTT(5) DEF IsP, DInst, Sizes
 <3>qed. QED BY ONLY <3>slot, <3>apart, SMTT(5) DEF ExpPage, InitPage
<2>allocated. ASSUME NEW y \in Xids, y<nx'
              PROVE ((y \in led'[ExpPage(y)']) <=> xst'[y]="posted") /\
                    (InitPage(y)' \in Pages => ((y \in led'[InitPage(y)']) <=> iv'[y] \in {"reg","posted","failret"}))
 <3>index. y \in Int /\ y<nx
  BY ONLY <2>allocated, <2>2, SMTT(5) DEF Xids
 <3>old. ((y \in led[ExpPage(y)]) <=> xst[y]="posted") /\
         (InitPage(y) \in Pages => ((y \in led[InitPage(y)]) <=> iv[y] \in {"reg","posted","failret"}))
  BY ONLY <2>1, <2>allocated, <3>index, SMTT(5) DEF K4
 <3>edomain. ExpPage(y) \in Pages
  BY ONLY <2>1, <2>allocated, <2>nxInt, <3>index, SMTT(5) DEF K2
 <3>enoerase. ~(ECancel(i,r) /\ ExpPage(y)=rpg[i][r] /\ y=rx[i][r])
  BY ONLY <2>cancel, SMTT(5)
 <3>exp. (y \in led'[ExpPage(y)']) <=> xst'[y]="posted"
  <4>member. (y \in led'[ExpPage(y)]) <=> y \in led[ExpPage(y)]
   BY ONLY <2>ledEffect, <3>edomain, <3>enoerase, SMTT(5)
  <4>qed. QED BY ONLY <2>allocated, <2>select, <2>2, <3>old, <4>member, SMTT(5)
 <3>init. ASSUME InitPage(y)' \in Pages
           PROVE (y \in led'[InitPage(y)']) <=> iv'[y] \in {"reg","posted","failret"}
  <4>domain. InitPage(y) \in Pages
   BY ONLY <2>allocated, <2>select, <3>init, SMTT(5)
  <4>update. led'[InitPage(y)]=IF InitPage(y)=rpg[i][r] /\ ECancel(i,r) THEN led[InitPage(y)] \ {rx[i][r]} ELSE led[InitPage(y)]
   BY ONLY <2>ledEffect, <4>domain, SMTT(5)
  <4>iv. iv'[y]=IF ECancel(i,r) /\ y=rx[i][r] THEN "nopost" ELSE iv[y]
   BY ONLY <2>allocated, <2>ivEffect, SMTT(5)
  <4>qed. QED BY ONLY <2>allocated, <2>select, <2>cancel, <3>old, <4>domain, <4>update, <4>iv, SMTT(5)
 <3>qed. QED BY ONLY <3>exp, <3>init, SMTT(5)
<2>members. ASSUME NEW q \in Pages, NEW y \in led'[q]
            PROVE y<nx' /\ (q=ExpPage(y)' \/ q=InitPage(y)')
 <3>old. y \in led[q]
  BY ONLY <2>members, <2>ledEffect, SMTT(5)
 <3>domain. y \in Xids
  BY ONLY <2>members, <2>1, <3>old, SMTT(5) DEF dcfPK
 <3>record. y<nx /\ (q=ExpPage(y) \/ q=InitPage(y))
  BY ONLY <2>1, <2>members, <3>old, SMTT(5) DEF K4
 <3>qed. QED BY ONLY <2>2, <2>select, <3>domain, <3>record, SMTT(5)
<2>qed. QED BY ONLY <2>allocated, <2>members, SMTT(5) DEF K4
\* T2M-END R2M1506_PdRPPP_PdEExit_K4

\* T2M-SCOPE R2M1508_PdRPPP_PdEExit_K5

<1>aUiT6.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE K2'
<2> USE ONLY <1>aUiT6, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW yy \in Xids PROVE EK2At(yy)'
 BY <1>CMeT, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>1. K2 /\ SHJS
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<gen,hd,hok,hp,hw,nx,xd,xdst,xg,xk,xlt,xnt,xp,xr,xsrc,xst>>
 BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF rtV, instV, kV, Sizes, Location, Design
<2>3. IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"}
 BY SMTT(5), Sizes, Location, Design DEF EExit, Sizes, Location, Design
<2>35. EK2At(yy)
 BY <2>1, <1>o6IHG, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
 BY <2>35, <2>2, <2>3, <1>Igs7TOaR, <1>Ko9N, Design, Sizes, Location, SMTT(5) DEF EK2At, ECancel, ELed, EState, ExpInst, ExpPage, InitInst, InitPage, K2, SHJS, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1502_PdRPPP_PdEExit_K2

\* T2M-SCOPE R2M1504_PdRPPP_PdEExit_K3

<1>ufyjs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE K3'
<2> USE ONLY <1>ufyjs, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW yy \in Xids PROVE EK3At(yy)'
 BY <1>lNob, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>1. K3
 BY <1>UwwC5LVwQr, SMTT(5), V21_Inv_BaseSafety, V21_Inv_K3, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<hok,hw,xk,xlt,xnt,xst>>
 BY <1>DqPcfGr, SMTT(5), Sizes, Location, Design DEF rtV, instV, kV, Sizes, Location, Design
<2>3. IsP(i) /\ Active(i,r) /\ h \in {"abort","timeout"}
 BY SMTT(5), Sizes, Location, Design DEF EExit, Sizes, Location, Design
<2>35. EK3At(yy)
 BY <2>1, <1>fsuoF, SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
 BY <2>35, <2>2, <2>3, <1>Igs7TOaR, <1>Ko9N, Design, Sizes, Location, SMTT(5) DEF EK3At, CqeHw, ECancel, ELed, EState, InFl, K3, Xids, Gens, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1504_PdRPPP_PdEExit_K3


<1>HDeJqxDq.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE K2'
 BY ONLY <1>HDeJqxDq, Sizes, Location, Design, <1>hv0XuP, <1>aUiT6, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1765_PdRPPP_PdE_PTimeout_K2

\* T2M-SCOPE R2M1766_PdRPPP_PdE_PTimeout_K3

<1>at7tiJht.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE K3'
 BY ONLY <1>at7tiJht, Sizes, Location, Design, <1>hv0XuP, <1>ufyjs, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1766_PdRPPP_PdE_PTimeout_K3


<1>nCZvjrOs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE K4'
 BY ONLY <1>nCZvjrOs, Sizes, Location, Design, <1>hv0XuP, <1>p4Rjn, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1767_PdRPPP_PdE_PTimeout_K4

\* T2M-SCOPE R2M1768_PdRPPP_PdE_PTimeout_K5

<1>Tl8iCWWUhwJaWB55CX.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE QuarNeverMapped'
<2> USE ONLY <1>Tl8iCWWUhwJaWB55CX, Sizes, Location, Design
<2>1. QuarNeverMapped BY V21_Inv_QuarNeverMapped, V21_Inv_Safety, Sizes, Location, Design DEF Safety, Sizes, Location, Design
<2>2. UNCHANGED rpg BY <1>DqPcfGr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A j \in Inst, u \in Rq : Active(j,u)' => Active(j,u) /\ rpg[j][u] # rpg[i][r]
 BY <2>2, <1>L6zZjgr, <1>jUyRMszR6M4WWR, SMTT(5), Sizes, Location, Design DEF Maps, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>Y6cekk, SMTT(5), Sizes, Location, Design DEF QuarNeverMapped, Sizes, Location, Design
\* T2M-END R2M1520_PdRPPP_PdEExit_QuarNeverMapped

\* T2M-SCOPE R2M1522_PdRPPP_PdEExit_QuarNoReg

<1>J88d04o7HQUQG.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE \A y \in led[rpg[i][r]] : iv[y] = "reg" => ECancel(i,r) /\ y=rx[i][r]
<2> USE ONLY <1>J88d04o7HQUQG, Sizes, Location, Design
 <2>1. K8 /\ K2 /\ K3 /\ K4 /\ K5 /\ S2 /\ dcfPK /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K8, V21_Inv_S2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
 <2>2. dlzHJ(i,r) /\ IsP(i) /\ Active(i,r)
  BY <2>1, <1>QMrZB, Sizes, Location, Design DEF EExit, Sizes, Location, Design
 <2>3. rpg[i][r] \in Pages /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
  BY <1>Igs7TOaR, Sizes, Location, Design DEF Sizes, Location, Design
 <2>4. SUFFICES ASSUME NEW y \in led[rpg[i][r]], iv[y] = "reg" PROVE ECancel(i,r) /\ y=rx[i][r]
  BY SMTT(5), Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. y \in Xids /\ y < nx /\ xr[y] = r /\ xg[y] = rg[i][r] /\ xk[y] = "wr"
  BY <2>1, <2>3, <2>4, SMTT(5), Sizes, Location, Design DEF K3, K4, K5, OwnedBy, dcfPK, Sizes, Location, Design
 <2>6. ph[i][r] \in {"reg","sent","exp"} /\ rx[i][r] \in Xids /\ rx[i][r] < nx
        /\ xr[rx[i][r]] = r /\ xg[rx[i][r]] = rg[i][r]
  BY <2>2, <2>4, SMTT(5), Sizes, Location, Design DEF dlzHJ, Active, Sizes, Location, Design
 <2>7. y=rx[i][r]
  BY <2>1, <2>5, <2>6, SMTT(5), Sizes, Location, Design DEF S2, Sizes, Location, Design
 <2>8. Mode = "push"
  BY <2>1, <2>5, Sizes, Design, SMTT(5), Location DEF K2, SHJS, Xids, Sizes, Location, Design
 <2>9. QED BY <2>2, <2>4, <2>6, <2>7, <2>8, SMTT(5), Sizes, Location, Design DEF dlzHJ, ECancel, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Vu9UdvfJZErg.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW h, PinInv, EExit(i,r,h)
 PROVE QuarNoReg'
<2> USE ONLY <1>Vu9UdvfJZErg, Sizes, Location, Design
 <2>1. QuarNoReg /\ dcfPK BY <1>UwwC5LVwQr, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, Sizes, Location, Design
 <2>2. \A q \in Pages : led'[q] \subseteq led[q]
  BY <1>ql3Fd6, SMTT(5), Sizes, Location, Design DEF ELed, Sizes, Location, Design
 <2>3. \A y \in led'[rpg[i][r]] : iv'[y] # "reg"
  BY <2>1, <2>2, <1>J88d04o7HQUQG, <1>Igs7TOaR, <1>ql3Fd6, <1>Ko9N, SMTT(5), Sizes, Location, Design DEF ELed, EState, dcfPK, Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, <1>Y6cekk, <1>Ko9N, SMTT(5), Sizes, Location, Design DEF QuarNoReg, dcfPK, Sizes, Location, Design
\* T2M-END R2M1522_PdRPPP_PdEExit_QuarNoReg


<1>ewNz4jx0E2m3EKPLc1FZd.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE QuarNeverMapped'
 BY ONLY <1>ewNz4jx0E2m3EKPLc1FZd, Sizes, Location, Design, <1>hv0XuP, <1>Tl8iCWWUhwJaWB55CX, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1773_PdRPPP_PdE_PTimeout_QuarNeverMapped

\* T2M-SCOPE R2M1774_PdRPPP_PdE_PTimeout_QuarNoReg

<1>MTQFHSdj88NQ6S9.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
 PROVE QuarNoReg'
 BY ONLY <1>MTQFHSdj88NQ6S9, Sizes, Location, Design, <1>hv0XuP, <1>Vu9UdvfJZErg, SMTT(5) DEF Sizes, Location, Design
\* T2M-END R2M1774_PdRPPP_PdE_PTimeout_QuarNoReg

\* T2M-SCOPE R2M1775_PdRPPP_PdE_PTimeout_S5

<1>IDhSSn5OwJ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE K2'
  BY ONLY <1>IDhSSn5OwJ, Sizes, Location, Design, <1>HDeJqxDq, V21_Inv_K2 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Uv6cOgRD1C.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE K3'
  BY ONLY <1>Uv6cOgRD1C, Sizes, Location, Design, <1>at7tiJht, V21_Inv_K3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LtRVRFHQMR.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE K4'
  BY ONLY <1>LtRVRFHQMR, Sizes, Location, Design, <1>nCZvjrOs, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KJZYOJQMcaNm3nnklYuy7RO.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>KJZYOJQMcaNm3nnklYuy7RO, Sizes, Location, Design, <1>ewNz4jx0E2m3EKPLc1FZd, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xiBi4ambsnFD37Q7F.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>xiBi4ambsnFD37Q7F, Sizes, Location, Design, <1>MTQFHSdj88NQ6S9, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1776_PdRPPdPAgg_PTimeout


<1>gbQIouqx69WSspdCjDpG.        
  BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>> => BaseSendOwnLanded'
  BY SMTT(5), Sizes, Location, Design DEF BaseSendOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UIhSdhLW79v0k4V.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PTimeout(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>UIhSdhLW79v0k4V, Sizes, Location, Design, Zenon DEF PEnd, PTimeout, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iN1XbTO68bZ6zFIojyHQYMR.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>iN1XbTO68bZ6zFIojyHQYMR, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>>
  BY <1>UIhSdhLW79v0k4V, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, ReadOwnLanded, SealOnlyLanded, SendOwnLanded, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>gbQIouqx69WSspdCjDpG, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1956_PdRPBPP_PdPTimeoutFrames


<1>KR1ddpKOGGEeUMDW4ltI9A.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE SendOwnLanded'
 BY ONLY <1>KR1ddpKOGGEeUMDW4ltI9A, Sizes, Location, Design, <1>iN1XbTO68bZ6zFIojyHQYMR, <1>x0UfOFPFCrBT8uIifAa9O DEF SendOwnLanded, RP_SharedSend, Sizes, Location, Design
\* T2M-END R2M1958_PdRPSafety_PTimeout


<1>CZs0zteS9nPA.        
 ASSUME PinInv, SFollow, RP2_TransportFrame, RP2_EntryProgress, RP2_HardwareProgress
 PROVE P_SI4'
<2> USE ONLY <1>CZs0zteS9nPA, Sizes, Location, Design
<2>1. (B2 => SI4 /\ SI7) /\ STypeOK
 BY V21_Inv_P_SI4, V21_Inv_SI7, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>3. CASE B2
 <3>1. UNCHANGED <<xsrcS,xsrcP>> /\ sentry' \subseteq sentry
  BY <2>3, <1>ESBouXiucduyoSgqYf8M, Sizes, Location, Design DEF RP2_TransportFrame, Sizes, Location, Design
 <3>2. RP_SFollowEffect BY <2>3, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A x \in Xids : xprefixOK'[x]=xprefixOK[x]
  BY <3>2, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP2_HardwareProgress, Sizes, Location, Design
 <3>4. ASSUME NEW x \in Xids
        PROVE /\ xsrcS'[x] \cap xsrcP'[x]={}
              /\ Cardinality(xsrcS'[x] \cup xsrcP'[x])<=1
              /\ xsrcP'[x]={}
              /\ (xsrcS'[x] # {} => x<nx' /\ xsrc'[x] \in Pages)
              /\ \A p \in xsrcS'[x] : Loc(p)=xp'[x]
              /\ (x \in sentry' => x<nx' /\ xsrc'[x] \in Pages /\ (IF xk'[x]="wr" THEN iv'[x] \in {"reg","posted","failret"} ELSE xst'[x]="posted"))
              /\ (hw'[x]="fly" => x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar'))
              /\ (x \in sentry' => \A p \in xsrcS'[x] : spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x]))
              /\ (hw'[x] \in {"issued","stop"} => xprefixOK'[x])
  <4>1. x \in sentry' => ~RP_Close(x)
   BY <3>2, <3>4, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_E2, Sizes, Location, Design
  <4>2. hw'[x]="fly" => x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
   BY <2>1, <2>3, <3>4, SMTT(10), Sizes, Location, Design DEF SI4, SI7, RP2_HardwareProgress, Sizes, Location, Design
  <4>3. squar \subseteq squar'
   BY <3>2, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_Q2, Sizes, Location, Design
  <4>4. (hw'[x]="fly" /\ x \in sentry /\ ~RP_Quarantine(x)) => x \in sentry'
   BY <3>2, <3>4, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_E2, RP2_HardwareProgress, Sizes, Location, Design
  <4>5. RP_Quarantine(x) => \A p \in xsrcS[x] : <<x,p>> \in squar'
   BY <2>3, <3>4, <1>KReYXg7MU3qwoztWhw, Sizes, Location, Design DEF Sizes, Location, Design
  <4>6. x \in sentry' => \A p \in xsrcS'[x] : spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x])
   <5>1. ASSUME x \in sentry', NEW p \in xsrcS'[x]
          PROVE spst'[p]="shared" /\ skey'[p]=STok(xr'[x],xg'[x])
    <6>1. p \in SPages /\ spst[p]="shared" /\ skey[p]=STok(xr[x],xg[x])
     BY <2>1, <2>3, <3>1, <3>4, <5>1, SMTT(10), Sizes, Location, Design DEF STypeOK, SI4, Sizes, Location, Design
    <6>2. QED BY <2>1, <2>3, <3>2, <6>1, <1>Ua3eOhQVTzEuP0Q, SMTT(10), Sizes, Location, Design DEF RP2_TransportFrame, RP_SFollowEffect, Sizes, Location, Design
   <5>2. QED BY <5>1, Sizes, Location, Design DEF Sizes, Location, Design
  <4>7. QED BY <2>1, <2>3, <3>1, <3>3, <3>4, <4>1, <4>2, <4>3, <4>4, <4>5, <4>6, SMTT(10), Sizes, Location, Design DEF SI4, RP2_TransportFrame, RP2_EntryProgress, RP2_HardwareProgress, RP_Close, Sizes, Location, Design
 <3>5. QED BY <2>3, <3>4, Sizes, Location, Design DEF P_SI4, SI4, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1980_PdRPR2Transport


<1>k0JWVgfGGTkKqN4YrAE2BJ3T33ySr.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE RP2_TransportFrame /\ RP2_EntryProgress /\ RP2_HardwareProgress
<2> USE ONLY <1>k0JWVgfGGTkKqN4YrAE2BJ3T33ySr, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","failret","cqe","nopost"}]
       /\ hw \in [Xids -> {"none","fly","issued","stop"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>k0JWVgfGGTkKqN4YrAE2BJ3T33ySr, V22_T_hw, V22_T_iv, SMTT(5)

<2>2. \A y \in Xids :
       /\ (hw[y]="fly" => xst[y]="posted" /\ iv[y] \in {"posted","failret"})
       /\ (iv[y]="reg" => hw[y]="none" /\ xk[y]="wr" /\ xst[y]="posted")
 BY SMTT(10), V21_Inv_K3, Sizes, Location, Design DEF K3, InFl, Sizes, Location, Design
<2>3. RP2_TransportFrame
 BY Design, ZenonT(10), Sizes, Location DEF RP2_TransportFrame, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. RP2_EntryProgress
 BY <2>1, Design, SMTT(10), Sizes, Location DEF RP2_EntryProgress, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>5. RP2_HardwareProgress
 BY <2>1, <2>2, <2>3, Design, SMTT(10), Sizes, Location DEF RP2_HardwareProgress, RP_Close, RP2_TransportFrame, Torn, EvidenceAt, PEnd, PTimeout, PageTo, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>6. QED BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EzBWeP3G8d7r5.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE P_SI4'
 BY ONLY <1>EzBWeP3G8d7r5, Sizes, Location, Design, <1>k0JWVgfGGTkKqN4YrAE2BJ3T33ySr, <1>CZs0zteS9nPA DEF Sizes, Location, Design
\* T2M-END R2M1992_PdRPR2Transport_PTimeout


<1> QED BY <1>KR1ddpKOGGEeUMDW4ltI9A, <1>KJZYOJQMcaNm3nnklYuy7RO, <1>IDhSSn5OwJ, <1>Uv6cOgRD1C, <1>xiBi4ambsnFD37Q7F, <1>LtRVRFHQMR, <1>CsJmgDK5pF4L80IYqXOKzaQCD, <1>EzBWeP3G8d7r5, <1>KyPBWcafXPwyrg2L2h4W, <1>yTwWOSoXdorS, <1>AaFbFUUa7Um, <1>WI3MwajZHVdXcoH4D, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_PTimeout SHA 8bce73a0f5125be3210e003b2a57afcd67c2eee4514d87401eb1de89722bb28e
USE DEF Shape_T_iv, Shape_T_ph, Shape_T_rg, Shape_T_rpe, Shape_T_rx, Shape_T_xd, Shape_T_xg
HIDE DEF Part_PTimeout_04_02, V21_Inv_BaseSafety, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_K8, V21_Inv_KStruct, V21_Inv_NoEvictUnderRDMA, V21_Inv_OneReply, V21_Inv_P_SI1, V21_Inv_P_SI4, V21_Inv_P_SI6, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReadOwnLanded, V21_Inv_S2, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowStatic, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapPoint, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SF_Status, V22_T_hw, V22_T_iv, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_xsrcP, V22_T_xsrcS
LEMMA ShapeEffect_PTimeout ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Design, PTimeout(i,r)
 PROVE net' = net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)}
 \cup (IF ph[i][r]="reg" /\ rx[i][r] \in Xids /\ iv[rx[i][r]]="reg" /\ Mut # "pEndNoCancel"
 THEN {Msg("nopost",i,xd[rx[i][r]],r,xg[rx[i][r]],rx[i][r],0,0,FALSE)} ELSE {})
 BY ONLY PTimeout(i,r), Sizes, Design, SMTT(5) DEF PTimeout, PEnd, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_PTimeout ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Design, IndInv, MessageShape, PTimeout(i,r)
 PROVE MessageShape'
<1>1. net' = net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)}
 \cup (IF ph[i][r]="reg" /\ rx[i][r] \in Xids /\ iv[rx[i][r]]="reg" /\ Mut # "pEndNoCancel"
 THEN {Msg("nopost",i,xd[rx[i][r]],r,xg[rx[i][r]],rx[i][r],0,0,FALSE)} ELSE {})
 BY ONLY Sizes, Design, PTimeout(i,r), ShapeEffect_PTimeout
<1>2. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]] /\ rpe \in [Inst -> [Rq -> {0} \cup Inst]] /\ rx \in [Inst -> [Rq -> 0..MX]] /\ xd \in [Xids -> {0} \cup Inst] /\ xg \in [Xids -> 0..MG]
 BY ONLY IndInv, Shape_T_iv, Shape_T_ph, Shape_T_rg, Shape_T_rpe, Shape_T_rx, Shape_T_xd, Shape_T_xg

<1>3. rpe[i][r] \in {0} \cup Inst /\ rg[i][r] \in {0} \cup Gens
 BY ONLY <1>2, Sizes, SMTT(5) DEF Sizes, Gens
<1>4. rx[i][r] \in Xids => (xd[rx[i][r]] \in {0} \cup Inst /\ xg[rx[i][r]] \in {0} \cup Gens)
 BY ONLY <1>2, Sizes, SMTT(5) DEF Sizes, Gens
<1>5. Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE) \in MsgSpace
 BY ONLY <1>3, SMTT(5) DEF MsgT, Msg, MsgSpace
<1>6. rx[i][r] \in Xids => Msg("nopost",i,xd[rx[i][r]],r,xg[rx[i][r]],rx[i][r],0,0,FALSE) \in MsgSpace
 BY ONLY <1>4, SMTT(5) DEF MsgT, Msg, MsgSpace
<1>7. QED BY ONLY <1>1, <1>5, <1>6, MessageShape, SMTT(5) DEF MessageShape, MsgSpace

\* Complete original body PdDomain_PTimeout SHA 18706ff7cde9333948d829448207e44458d3814e066745123399beb59ecc0b29
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_PTimeout, Shape_T_iv, Shape_T_ph, Shape_T_rg, Shape_T_rpe, Shape_T_rx, Shape_T_xd, Shape_T_xg
THEOREM DomainKeep_PTimeout ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, PTimeout(i,r)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net' = net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)}
 \cup (IF ph[i][r]="reg" /\ rx[i][r] \in Xids /\ iv[rx[i][r]]="reg" /\ Mut # "pEndNoCancel"
 THEN {Msg("nopost",i,xd[rx[i][r]],r,xg[rx[i][r]],rx[i][r],0,0,FALSE)} ELSE {})
 BY ONLY Sizes, Location, Design, PinInv, PTimeout(i,r), ShapeEffect_PTimeout
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_PTimeout_05 SHA 9eb6d14820fca1baac1368a420e6d226a162cbcdde92624df6c3f9525ea491c0
USE DEF V21_Inv_EntryQuarantineDisjoint, V21_Inv_P_B2OffInit, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_STypeOK, V21_SFollowOff
HIDE DEF ShapeEffect_PTimeout, V21_Inv_MsgXDomain
THEOREM Group_PTimeout_05 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE (EntryQuarantineDisjoint)' /\ (P_B2OffInit)' /\ (MsgXDomain)'
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


<1>XlKsqXvb4r3C0g9e7ravgYLyyVZMPN8D1.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE EntryQuarantineDisjoint'
 BY ONLY <1>XlKsqXvb4r3C0g9e7ravgYLyyVZMPN8D1, Sizes, Location, Design, <1>WgHhghZX0y DEF Sizes, Location, Design


<1>LL40P6JoWJOr9laKT9.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>LL40P6JoWJOr9laKT9, Sizes, Location, Design, DomainKeep_PTimeout, SMTT(5)
\* T2M-END R2M0318_PdPDomain_PTimeout


<1>m948gxWe0.        
 P_B2OffInit /\ UNCHANGED <<dedupSeen, dpreOK, hitSeen, rpgS, schoice, sdata, sentry, sgen, skey, smap, sown, sprefc, spst, squar, sready, swrite, xprefixOK, xsrcP, xsrcS>> => P_B2OffInit'
 BY IsaT(10), Sizes, Location, Design DEF P_B2OffInit, SInit, Sizes, Location, Design
\* T2M-END R2M0451_PdPF_B2OffInit


<1>l9eOxdPMhQRhXPNgse.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>l9eOxdPMhQRhXPNgse, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0500_PdPOff_PTimeout


<1> QED BY <1>XlKsqXvb4r3C0g9e7ravgYLyyVZMPN8D1, <1>l9eOxdPMhQRhXPNgse, <1>LL40P6JoWJOr9laKT9, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_PTimeout_01_01, Part_PTimeout_01_02, Part_PTimeout_02_01, Part_PTimeout_02_02, Part_PTimeout_03_01, Part_PTimeout_03_02, Part_PTimeout_04_01, Part_PTimeout_04_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_PTimeout
HIDE DEF DomainKeep_PTimeout, V21_Inv_EntryQuarantineDisjoint, V21_Inv_P_B2OffInit, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_STypeOK, V21_SFollowOff

THEOREM Step_PTimeout ==
 ASSUME NEW i \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, PTimeout(i,r), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, NEW v \in Rq, Sizes, Location, Design, PinInv, PTimeout(u,v), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_PTimeout_01_01, Part_PTimeout_01_02, Part_PTimeout_02_01, Part_PTimeout_02_02, Part_PTimeout_03_01, Part_PTimeout_03_02, Part_PTimeout_04_01, Part_PTimeout_04_02, Group_PTimeout_05, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_PTimeout_01_01, Part_PTimeout_01_02, Part_PTimeout_02_01, Part_PTimeout_02_02, Part_PTimeout_03_01, Part_PTimeout_03_02, Part_PTimeout_04_01, Part_PTimeout_04_02, Group_PTimeout_05, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, PTimeout(i,r), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, PTimeout(i,r), ShapeKeep_PTimeout, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
