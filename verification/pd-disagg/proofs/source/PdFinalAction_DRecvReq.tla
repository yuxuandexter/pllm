---- MODULE PdFinalAction_DRecvReq ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_ba9b12f8121bcf2d, PdFinalInvProjections, PdFinalEffects, PdSharedRefCounts, PdFunctionFrames, PdShapeBase, PdActionSlice_DRecvReq_02

\* Complete original body PdFinalPart_DRecvReq_04_01 SHA 9987dcd85b6374a845601955a18b83aa5b5a33f139826b5741f7a2b43c01f617
HIDE DEF AuxType_ba9b12f8121bcf2d, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_DRecvReq_01_01, Part_DRecvReq_01_02, Part_DRecvReq_02_01, Part_DRecvReq_02_02, Part_DRecvReq_03_01, Part_DRecvReq_03_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K11, V21_Inv_K14, V21_Inv_K15, V21_Inv_K6, V21_Inv_KReadIntegrity, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S6, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_FunctionEta, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_MatrixEta, V22_PostSharedRefZero, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SharedRefZero, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xst
THEOREM Part_DRecvReq_04_01 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE (K16)' /\ (S5)' /\ (K12)' /\ (K5)' /\ (PrefcMatchesHolders)' /\ (SI7)' /\ (K17)'
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

           PKE_DRecvReq(j,r) ==
            /\ j \in DInst
            /\ \E src \in net : /\ src.t="req" /\ src.to=j /\ src.r=r /\ NewGen(j,r,src.g)
                /\ \/ /\ UNCHANGED <<nx,xr,xg,xk,xdst,drep>>
                        /\ (net'=net \/ (Mode="push" /\ \E p \in Pages : net'=net \cup {Msg("dinfo",j,src.pe,r,src.g,0,p,0,FALSE)}))
                   \/ /\ Mode="push" /\ nx<=MX
                      /\ \E p \in Pages : /\ nx'=nx+1
                          /\ xr'=[xr EXCEPT ![nx]=r] /\ xg'=[xg EXCEPT ![nx]=src.g] /\ xk'=[xk EXCEPT ![nx]="wr"]
                          /\ xdst'=[xdst EXCEPT ![nx]=p] /\ UNCHANGED drep
                          /\ net'=net \cup {Msg("dinfo",j,src.pe,r,src.g,nx,p,0,FALSE)}
                   \/ /\ UNCHANGED <<nx,xr,xg,xk,xdst>>
                      /\ drep'=[drep EXCEPT ![r][src.g]=Bump(@)]
                      /\ net'=net \cup {Msg("reply",j,0,r,src.g,0,0,0,FALSE),Msg("abort",j,src.pe,r,src.g,0,0,0,FALSE)}
            /\ UNCHANGED <<gen,hp,hd,xsrc,xlt,iv,hw,hok,dsucc>>

           \* T2M-LOCAL-VISIBILITY

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

           RD_RefDelta == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)
            +SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

           \* T2M-LOCAL-VISIBILITY

           RD_HolderTypes == /\ rpgS \subseteq (PInst \X Rq \X Gens \X SPages)
                             /\ sentry \subseteq Xids
                             /\ squar \subseteq (Xids \X SPages)

           RD_Q2 == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
                                   UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RD_Quarantine(x)}})

           RD_EQUpdate == sentry'=RD_E2 /\ squar'=RD_Q2

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

           PdJrO(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])



           IVktI(m) == m.t = "hello" => m.fr \in Inst



           VawcR(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))



           njcW8(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))



           dJpcb(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])



           Y8U_7(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])



           Hdijl(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")



           AL7Oa(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)



           jjAuj(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))



           CsPNLN(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))



           wuoDNx7(m) ==
             /\ PdJrO(m)
             /\ IVktI(m)
             /\ VawcR(m)
             /\ njcW8(m)
             /\ dJpcb(m)
             /\ Y8U_7(m)
             /\ Hdijl(m)
             /\ AL7Oa(m)
             /\ jjAuj(m)
             /\ CsPNLN(m)


           \* T2M-LOCAL-VISIBILITY

           rDYgNVy(i,r) == LET p == rpg[i][r]
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



           RD_RegSafe == \A x \in Xids : iv'[x]="reg" => iv[x]="reg" /\ pst'[xsrc[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, UlVxe, kYyEb, BTg7I, Bxryv, XTUuY, Gf8VR, l7paO, RPcfz, G3Uin, xAvu0j, BmN6sl4, PKE_DRecvReq, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, wuoDNx7, rDYgNVy, RD_RegSafe

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FdYjaJP.         (\A m \in net' : BmN6sl4(m)') => K12'
  BY ONLY ZenonT(5) DEF K12, BmN6sl4, UlVxe, kYyEb, BTg7I, Bxryv, XTUuY, Gf8VR, l7paO, RPcfz, G3Uin, xAvu0j
\* T2M-END R2M0439_PdPK12Support


<1>NfDaqRrYhGQ2gBJ.        
 ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
 PROVE PKE_DRecvReq(j,r)
<2> USE ONLY <1>NfDaqRrYhGQ2gBJ, Sizes, Location, Design
<2>1. IsD(j) BY Sizes, Location, Design DEF DRecvReq, Sizes, Location, Design
<2>2. j \in DInst
 BY <2>1, Sizes, SMTT(10), Location, Design DEF IsD, Inst, NL, DInst, Sizes, Location, Design
<2>fxStatic. UNCHANGED <<gen,hp,hd,xsrc,xlt,iv,hw,hok,dsucc>>
 BY ONLY <1>NfDaqRrYhGQ2gBJ, ZenonT(10) DEF DRecvReq, rtV, xV
<2>fxRequest. \E src \in net : /\ src.t="req" /\ src.to=j /\ src.r=r /\ NewGen(j,r,src.g)
               /\ \/ /\ UNCHANGED <<nx,xr,xg,xk,xdst,drep>>
                       /\ (net'=net \/ (Mode="push" /\ \E p \in Pages : net'=net \cup {Msg("dinfo",j,src.pe,r,src.g,0,p,0,FALSE)}))
                  \/ /\ Mode="push" /\ nx<=MX
                     /\ \E p \in Pages : /\ nx'=nx+1
                         /\ xr'=[xr EXCEPT ![nx]=r] /\ xg'=[xg EXCEPT ![nx]=src.g] /\ xk'=[xk EXCEPT ![nx]="wr"]
                         /\ xdst'=[xdst EXCEPT ![nx]=p] /\ UNCHANGED drep
                         /\ net'=net \cup {Msg("dinfo",j,src.pe,r,src.g,nx,p,0,FALSE)}
                  \/ /\ UNCHANGED <<nx,xr,xg,xk,xdst>>
                     /\ drep'=[drep EXCEPT ![r][src.g]=Bump(@)]
                     /\ net'=net \cup {Msg("reply",j,0,r,src.g,0,0,0,FALSE),Msg("abort",j,src.pe,r,src.g,0,0,0,FALSE)}
 BY ONLY <1>NfDaqRrYhGQ2gBJ, ZenonT(10) DEF DRecvReq, xV
<2>3. QED BY ONLY <2>2, <2>fxStatic, <2>fxRequest, ZenonT(5) DEF PKE_DRecvReq

\* T2M-LOCAL-VISIBILITY

<1>phRGYUcAXR3.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), NEW m \in net'
 PROVE UlVxe(m)'
<2> USE ONLY <1>phRGYUcAXR3, Sizes, Location, Design
<2>1. K12 /\ T_nx /\ T_xr /\ T_xg /\ T_gen
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_DRecvReq(j,r)
 BY <1>NfDaqRrYhGQ2gBJ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxStatic. UNCHANGED gen
  BY ONLY <2>2, ZenonT(5) DEF PKE_DRecvReq
 <3>fxOld. CASE m \in net
  <4>fxBefore. UlVxe(m)
   BY ONLY <2>1, <3>fxOld, ZenonT(5) DEF K12, UlVxe
  <4>fxDone. QED BY ONLY <4>fxBefore, <3>fxStatic, SMTT(5) DEF UlVxe
 <3>fxNew. CASE m \notin net
  <4>fxSource. PICK src \in net : src.t="req" /\ src.r=r /\ m.r=r /\ m.g=src.g
   BY ONLY <1>phRGYUcAXR3, <2>2, <3>fxNew, SMTT(5) DEF PKE_DRecvReq, Msg
  <4>fxRequest. r \in Rq /\ src.g \in Gens /\ src.g<=gen[r]
   BY ONLY <2>1, <4>fxSource, SMTT(5) DEF K12
  <4>fxDone. QED BY ONLY <4>fxSource, <4>fxRequest, <3>fxStatic, SMTT(5) DEF UlVxe
 <3>fxDone. QED BY ONLY <3>fxOld, <3>fxNew, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>ebX5y6t7vCY.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), NEW m \in net'
 PROVE kYyEb(m)'
<2> USE ONLY <1>ebX5y6t7vCY, Sizes, Location, Design
<2>1. K12
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_DRecvReq(j,r)
 BY <1>NfDaqRrYhGQ2gBJ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxOtherTag. CASE m.t#"hello"
  BY ONLY <3>fxOtherTag, SMTT(5) DEF kYyEb
 <3>fxThisTag. CASE m.t="hello"
  <4>fxOldMessage. m \in net
   BY ONLY <1>ebX5y6t7vCY, <2>2, <3>fxThisTag, SMTT(5) DEF PKE_DRecvReq, Msg
  <4>fxOldTarget. kYyEb(m)
   BY ONLY <2>1, <4>fxOldMessage, ZenonT(5) DEF K12, kYyEb
  <4>fxStatic. UNCHANGED <<gen,hp,hd,xsrc,xlt,iv,hw,hok,dsucc>>
   BY ONLY <2>2, ZenonT(5) DEF PKE_DRecvReq
  <4>fxDone. QED BY ONLY <4>fxOldTarget, <4>fxStatic, SMTT(5) DEF kYyEb
 <3>fxDone. QED BY ONLY <3>fxOtherTag, <3>fxThisTag, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>FT6c3Gpgz2h.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), NEW m \in net'
 PROVE BTg7I(m)'
<2> USE ONLY <1>FT6c3Gpgz2h, Sizes, Location, Design
<2>1. K12
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_DRecvReq(j,r)
 BY <1>NfDaqRrYhGQ2gBJ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxOtherTag. CASE m.t#"req"
  BY ONLY <3>fxOtherTag, SMTT(5) DEF BTg7I
 <3>fxThisTag. CASE m.t="req"
  <4>fxOldMessage. m \in net
   BY ONLY <1>FT6c3Gpgz2h, <2>2, <3>fxThisTag, SMTT(5) DEF PKE_DRecvReq, Msg
  <4>fxOldTarget. BTg7I(m)
   BY ONLY <2>1, <4>fxOldMessage, ZenonT(5) DEF K12, BTg7I
  <4>fxStatic. UNCHANGED <<gen,hp,hd,xsrc,xlt,iv,hw,hok,dsucc>>
   BY ONLY <2>2, ZenonT(5) DEF PKE_DRecvReq
  <4>fxDone. QED BY ONLY <4>fxOldTarget, <4>fxStatic, SMTT(5) DEF BTg7I
 <3>fxDone. QED BY ONLY <3>fxOtherTag, <3>fxThisTag, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>XBrWxAHHZD3.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), NEW m \in net'
 PROVE Bxryv(m)'
<2> USE ONLY <1>XBrWxAHHZD3, Sizes, Location, Design
<2>1. K12 /\ K1 /\ T_nx /\ T_net /\ T_xr /\ T_xg /\ T_xdst
 BY <1>g4u1JVDPkX, V21_Inv_K1, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_DRecvReq(j,r)
 BY <1>NfDaqRrYhGQ2gBJ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxOtherTag. CASE m.t#"dinfo"
  BY ONLY <3>fxOtherTag, SMTT(5) DEF Bxryv
 <3>fxTag. CASE m.t="dinfo"
  <4>fxStatic. UNCHANGED <<hp,hd>>
   BY ONLY <2>2, ZenonT(5) DEF PKE_DRecvReq
  <4>fxOld. CASE m \in net
   <5>fxOldTarget. Bxryv(m)
    BY ONLY <2>1, <4>fxOld, ZenonT(5) DEF K12, Bxryv
   <5>fxZero. CASE m.x=0
    BY ONLY <5>fxZero, <5>fxOldTarget, <4>fxStatic, SMTT(5) DEF Bxryv
   <5>fxNonzero. CASE m.x#0
    <6>fxDomain. m.x \in Xids
     BY ONLY <2>1, <4>fxOld, <5>fxNonzero, SMTT(5) DEF T_net
    <6>fxBefore. m.x<nx /\ m.x#nx
     BY ONLY <5>fxOldTarget, <3>fxTag, <5>fxNonzero, SMTT(5) DEF Bxryv
    <6>fxNext. nx'=nx \/ nx'=nx+1
     BY ONLY <2>2, SMTT(5) DEF PKE_DRecvReq
    <6>fxBound. m.x<nx'
     BY ONLY <2>1, <6>fxDomain, <6>fxBefore, <6>fxNext, SMTT(5) DEF T_nx, Xids
    <6>fxFrame. xr'[m.x]=xr[m.x] /\ xg'[m.x]=xg[m.x] /\ xdst'[m.x]=xdst[m.x]
     BY ONLY <2>1, <2>2, <6>fxDomain, <6>fxBefore, SMTT(5) DEF PKE_DRecvReq, T_xr, T_xg, T_xdst
    <6>fxDone. QED BY ONLY <5>fxOldTarget, <4>fxStatic, <6>fxBound, <6>fxFrame, SMTT(5) DEF Bxryv
   <5>fxDone. QED BY ONLY <5>fxZero, <5>fxNonzero, SMTT(5)
  <4>fxNew. CASE m \notin net
   <5>fxSource. PICK src \in net, p \in Pages :
     src.t="req" /\ src.to=j /\ src.r=r /\ Mode="push" /\
     m.fr=j /\ m.to=src.pe /\ m.r=r /\ m.g=src.g /\ m.pg=p /\
     (m.x=0 \/ (m.x=nx /\ nx<=MX /\ nx'=nx+1 /\
       xr'=[xr EXCEPT ![nx]=r] /\ xg'=[xg EXCEPT ![nx]=src.g] /\ xdst'=[xdst EXCEPT ![nx]=p]))
    BY ONLY <1>XBrWxAHHZD3, <2>2, <3>fxTag, <4>fxNew, SMTT(5) DEF PKE_DRecvReq, Msg
   <5>fxGeneration. src.g \in Gens /\ src.g<=gen[r]
    BY ONLY <2>1, <5>fxSource, SMTT(5) DEF K12
   <5>fxRequest. BTg7I(src)
    BY ONLY <2>1, <5>fxSource, ZenonT(5) DEF K12, BTg7I
   <5>fxRouterForR. \A g \in Gens : g<=gen[r] => hp[r][g] \in PInst /\ hd[r][g] \in DInst
    BY ONLY <1>XBrWxAHHZD3, <2>1, ZenonT(5) DEF K1
   <5>fxRouter. hp[r][src.g] \in PInst /\ hd[r][src.g] \in DInst
    BY ONLY <5>fxGeneration, <5>fxRouterForR, SMTT(5)
   <5>fxD. j \in DInst
    BY ONLY <2>2, ZenonT(5) DEF PKE_DRecvReq
   <5>fxDisjoint. \A a \in PInst : a \notin DInst
    BY ONLY Sizes, SMTT(5) DEF PInst, DInst, NL, Sizes
   <5>fxEndpoints. j=hd[r][src.g] /\ src.pe=hp[r][src.g]
    BY ONLY <5>fxSource, <5>fxRequest, <5>fxRouter, <5>fxD, <5>fxDisjoint, SMTT(5) DEF BTg7I
   <5>fxIndex. m.x#0 => nx \in Xids
    BY ONLY <2>1, <5>fxSource, SMTT(5) DEF T_nx, Xids
   <5>fxZero. CASE m.x=0
    BY ONLY <5>fxZero, <5>fxSource, <5>fxEndpoints, <4>fxStatic, SMTT(5) DEF Bxryv
   <5>fxAllocated. CASE m.x#0
    <6>fxInteger. nx \in Xids /\ nx \in Int
     BY ONLY <5>fxIndex, <5>fxAllocated, SMTT(5) DEF Xids
    <6>fxBound. m.x<nx'
     BY ONLY <5>fxSource, <5>fxAllocated, <6>fxInteger, SMTT(5)
    <6>fxFields. xr'[m.x]=m.r /\ xg'[m.x]=m.g /\ xdst'[m.x]=m.pg
     BY ONLY <2>1, <5>fxSource, <5>fxAllocated, <6>fxInteger, SMTT(5) DEF T_xr, T_xg, T_xdst
    <6>fxDone. QED BY ONLY <5>fxSource, <5>fxEndpoints, <4>fxStatic, <6>fxBound, <6>fxFields, SMTT(5) DEF Bxryv
   <5>fxDone. QED BY ONLY <5>fxZero, <5>fxAllocated, SMTT(5)
  <4>fxDone. QED BY ONLY <4>fxOld, <4>fxNew, SMTT(5)
 <3>fxDone. QED BY ONLY <3>fxOtherTag, <3>fxTag, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>UGAY8b48oGL.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), NEW m \in net'
 PROVE XTUuY(m)'
<2> USE ONLY <1>UGAY8b48oGL, Sizes, Location, Design
<2>1. K12 /\ MsgXDomain /\ T_nx /\ T_net /\ T_xr /\ T_xg /\ T_xsrc /\ T_xlt
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_DRecvReq(j,r)
 BY <1>NfDaqRrYhGQ2gBJ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxOtherTag. CASE m.t#"sinfo"
  BY ONLY <3>fxOtherTag, SMTT(5) DEF XTUuY
 <3>fxThisTag. CASE m.t="sinfo"
  <4>fxOldMessage. m \in net
   BY ONLY <1>UGAY8b48oGL, <2>2, <3>fxThisTag, SMTT(5) DEF PKE_DRecvReq, Msg
  <4>fxOldTarget. XTUuY(m)
   BY ONLY <2>1, <4>fxOldMessage, ZenonT(5) DEF K12, XTUuY
  <4>fxStatic. UNCHANGED <<gen,hp,hd,xsrc,xlt,iv,hw,hok,dsucc>>
   BY ONLY <2>2, ZenonT(5) DEF PKE_DRecvReq
  <4>fxDomain. m.x \in Xids
   BY ONLY <2>1, <4>fxOldMessage, <3>fxThisTag, ZenonT(5) DEF MsgXDomain
  <4>fxBefore. m.x<nx /\ m.x#nx
   BY ONLY <4>fxOldTarget, <3>fxThisTag, SMTT(5) DEF XTUuY
  <4>fxNext. nx'=nx \/ nx'=nx+1
   BY ONLY <2>2, SMTT(5) DEF PKE_DRecvReq
  <4>fxBound. m.x<nx'
   BY ONLY <2>1, <4>fxDomain, <4>fxBefore, <4>fxNext, SMTT(5) DEF T_nx, Xids
  <4>fxFrame. xr'[m.x]=xr[m.x] /\ xg'[m.x]=xg[m.x]
   BY ONLY <2>1, <2>2, <4>fxDomain, <4>fxBefore, SMTT(5) DEF PKE_DRecvReq, T_xr, T_xg
  <4>fxDone. QED BY ONLY <4>fxOldTarget, <4>fxStatic, <4>fxBound, <4>fxFrame, SMTT(5) DEF XTUuY
 <3>fxDone. QED BY ONLY <3>fxOtherTag, <3>fxThisTag, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>usAsfoxmyjI.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), NEW m \in net'
 PROVE Gf8VR(m)'
<2> USE ONLY <1>usAsfoxmyjI, Sizes, Location, Design
<2>1. K12 /\ MsgXDomain /\ T_nx /\ T_iv /\ T_hw /\ T_hok /\ T_xr /\ T_xg /\ T_xlt /\ T_xk
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_DRecvReq(j,r)
 BY <1>NfDaqRrYhGQ2gBJ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxOtherTag. CASE m.t#"notice"
  BY ONLY <3>fxOtherTag, SMTT(5) DEF Gf8VR
 <3>fxThisTag. CASE m.t="notice"
  <4>fxOldMessage. m \in net
   BY ONLY <1>usAsfoxmyjI, <2>2, <3>fxThisTag, SMTT(5) DEF PKE_DRecvReq, Msg
  <4>fxOldTarget. Gf8VR(m)
   BY ONLY <2>1, <4>fxOldMessage, ZenonT(5) DEF K12, Gf8VR
  <4>fxStatic. UNCHANGED <<gen,hp,hd,xsrc,xlt,iv,hw,hok,dsucc>>
   BY ONLY <2>2, ZenonT(5) DEF PKE_DRecvReq
  <4>fxDomain. m.x \in Xids
   BY ONLY <2>1, <4>fxOldMessage, <3>fxThisTag, ZenonT(5) DEF MsgXDomain
  <4>fxBefore. m.x<nx /\ m.x#nx
   BY ONLY <4>fxOldTarget, <3>fxThisTag, SMTT(5) DEF Gf8VR
  <4>fxNext. nx'=nx \/ nx'=nx+1
   BY ONLY <2>2, SMTT(5) DEF PKE_DRecvReq
  <4>fxBound. m.x<nx'
   BY ONLY <2>1, <4>fxDomain, <4>fxBefore, <4>fxNext, SMTT(5) DEF T_nx, Xids
  <4>fxFrame. xr'[m.x]=xr[m.x] /\ xg'[m.x]=xg[m.x] /\ xk'[m.x]=xk[m.x]
   BY ONLY <2>1, <2>2, <4>fxDomain, <4>fxBefore, SMTT(5) DEF PKE_DRecvReq, T_xr, T_xg, T_xk
  <4>fxDone. QED BY ONLY <4>fxOldTarget, <4>fxStatic, <4>fxBound, <4>fxFrame, SMTT(5) DEF Gf8VR, CqeHw
 <3>fxDone. QED BY ONLY <3>fxOtherTag, <3>fxThisTag, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>aUXe3Rjtp19.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), NEW m \in net'
 PROVE l7paO(m)'
<2> USE ONLY <1>aUXe3Rjtp19, Sizes, Location, Design
<2>1. K12 /\ MsgXDomain /\ T_nx /\ T_iv /\ T_xr /\ T_xg
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_DRecvReq(j,r)
 BY <1>NfDaqRrYhGQ2gBJ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxOtherTag. CASE m.t#"nopost"
  BY ONLY <3>fxOtherTag, SMTT(5) DEF l7paO
 <3>fxThisTag. CASE m.t="nopost"
  <4>fxOldMessage. m \in net
   BY ONLY <1>aUXe3Rjtp19, <2>2, <3>fxThisTag, SMTT(5) DEF PKE_DRecvReq, Msg
  <4>fxOldTarget. l7paO(m)
   BY ONLY <2>1, <4>fxOldMessage, ZenonT(5) DEF K12, l7paO
  <4>fxStatic. UNCHANGED <<gen,hp,hd,xsrc,xlt,iv,hw,hok,dsucc>>
   BY ONLY <2>2, ZenonT(5) DEF PKE_DRecvReq
  <4>fxDomain. m.x \in Xids
   BY ONLY <2>1, <4>fxOldMessage, <3>fxThisTag, ZenonT(5) DEF MsgXDomain
  <4>fxBefore. m.x<nx /\ m.x#nx
   BY ONLY <4>fxOldTarget, <3>fxThisTag, SMTT(5) DEF l7paO
  <4>fxNext. nx'=nx \/ nx'=nx+1
   BY ONLY <2>2, SMTT(5) DEF PKE_DRecvReq
  <4>fxBound. m.x<nx'
   BY ONLY <2>1, <4>fxDomain, <4>fxBefore, <4>fxNext, SMTT(5) DEF T_nx, Xids
  <4>fxFrame. xr'[m.x]=xr[m.x] /\ xg'[m.x]=xg[m.x]
   BY ONLY <2>1, <2>2, <4>fxDomain, <4>fxBefore, SMTT(5) DEF PKE_DRecvReq, T_xr, T_xg
  <4>fxDone. QED BY ONLY <4>fxOldTarget, <4>fxStatic, <4>fxBound, <4>fxFrame, SMTT(5) DEF l7paO
 <3>fxDone. QED BY ONLY <3>fxOtherTag, <3>fxThisTag, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>qwS1EfBK13I.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), NEW m \in net'
 PROVE RPcfz(m)'
<2> USE ONLY <1>qwS1EfBK13I, Sizes, Location, Design
<2>1. K12 /\ MsgXDomain /\ T_nx /\ T_xr /\ T_xg
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_DRecvReq(j,r)
 BY <1>NfDaqRrYhGQ2gBJ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxOtherTag. CASE m.t#"revoke"
  BY ONLY <3>fxOtherTag, SMTT(5) DEF RPcfz
 <3>fxThisTag. CASE m.t="revoke"
  <4>fxOldMessage. m \in net
   BY ONLY <1>qwS1EfBK13I, <2>2, <3>fxThisTag, SMTT(5) DEF PKE_DRecvReq, Msg
  <4>fxOldTarget. RPcfz(m)
   BY ONLY <2>1, <4>fxOldMessage, ZenonT(5) DEF K12, RPcfz
  <4>fxStatic. UNCHANGED <<gen,hp,hd,xsrc,xlt,iv,hw,hok,dsucc>>
   BY ONLY <2>2, ZenonT(5) DEF PKE_DRecvReq
  <4>fxDomain. m.x \in Xids
   BY ONLY <2>1, <4>fxOldMessage, <3>fxThisTag, ZenonT(5) DEF MsgXDomain
  <4>fxBefore. m.x<nx /\ m.x#nx
   BY ONLY <4>fxOldTarget, <3>fxThisTag, SMTT(5) DEF RPcfz
  <4>fxNext. nx'=nx \/ nx'=nx+1
   BY ONLY <2>2, SMTT(5) DEF PKE_DRecvReq
  <4>fxBound. m.x<nx'
   BY ONLY <2>1, <4>fxDomain, <4>fxBefore, <4>fxNext, SMTT(5) DEF T_nx, Xids
  <4>fxFrame. xr'[m.x]=xr[m.x] /\ xg'[m.x]=xg[m.x]
   BY ONLY <2>1, <2>2, <4>fxDomain, <4>fxBefore, SMTT(5) DEF PKE_DRecvReq, T_xr, T_xg
  <4>fxDone. QED BY ONLY <4>fxOldTarget, <4>fxStatic, <4>fxBound, <4>fxFrame, SMTT(5) DEF RPcfz
 <3>fxDone. QED BY ONLY <3>fxOtherTag, <3>fxThisTag, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>Qw8eOZq10ES.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), NEW m \in net'
 PROVE G3Uin(m)'
<2> USE ONLY <1>Qw8eOZq10ES, Sizes, Location, Design
<2>1. K12 /\ MsgXDomain /\ T_nx /\ T_iv /\ T_hw /\ T_hok /\ T_xr /\ T_xg /\ T_xk
 BY <1>g4u1JVDPkX, V21_Inv_K12, V21_Inv_MsgXDomain, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_DRecvReq(j,r)
 BY <1>NfDaqRrYhGQ2gBJ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
 <3>fxOtherTag. CASE m.t#"relsrc"
  BY ONLY <3>fxOtherTag, SMTT(5) DEF G3Uin
 <3>fxThisTag. CASE m.t="relsrc"
  <4>fxOldMessage. m \in net
   BY ONLY <1>Qw8eOZq10ES, <2>2, <3>fxThisTag, SMTT(5) DEF PKE_DRecvReq, Msg
  <4>fxOldTarget. G3Uin(m)
   BY ONLY <2>1, <4>fxOldMessage, ZenonT(5) DEF K12, G3Uin
  <4>fxStatic. UNCHANGED <<gen,hp,hd,xsrc,xlt,iv,hw,hok,dsucc>>
   BY ONLY <2>2, ZenonT(5) DEF PKE_DRecvReq
  <4>fxDomain. m.x \in Xids
   BY ONLY <2>1, <4>fxOldMessage, <3>fxThisTag, ZenonT(5) DEF MsgXDomain
  <4>fxBefore. m.x<nx /\ m.x#nx
   BY ONLY <4>fxOldTarget, <3>fxThisTag, SMTT(5) DEF G3Uin
  <4>fxNext. nx'=nx \/ nx'=nx+1
   BY ONLY <2>2, SMTT(5) DEF PKE_DRecvReq
  <4>fxBound. m.x<nx'
   BY ONLY <2>1, <4>fxDomain, <4>fxBefore, <4>fxNext, SMTT(5) DEF T_nx, Xids
  <4>fxFrame. xr'[m.x]=xr[m.x] /\ xg'[m.x]=xg[m.x] /\ xk'[m.x]=xk[m.x]
   BY ONLY <2>1, <2>2, <4>fxDomain, <4>fxBefore, SMTT(5) DEF PKE_DRecvReq, T_xr, T_xg, T_xk
  <4>fxDone. QED BY ONLY <4>fxOldTarget, <4>fxStatic, <4>fxBound, <4>fxFrame, SMTT(5) DEF G3Uin
 <3>fxDone. QED BY ONLY <3>fxOtherTag, <3>fxThisTag, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>DOABELu69dLU.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), NEW m \in net'
 PROVE xAvu0j(m)'
<2> USE ONLY <1>DOABELu69dLU, Sizes, Location, Design
<2>1. K12 /\ K1 /\ K9 /\ K13 /\ K8 /\ T_drep
 BY <1>g4u1JVDPkX, V21_Inv_K1, V21_Inv_K12, V21_Inv_K13, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. PKE_DRecvReq(j,r)
 BY <1>NfDaqRrYhGQ2gBJ, Sizes, Location, Design DEF Sizes, Location, Design
<2>fxFresh. ASSUME NEW src \in net, src.t="req", src.to=j, src.r=r, NewGen(j,r,src.g)
             PROVE src.g \in Gens /\ drep[r][src.g]=0 /\ j=hd[r][src.g]
 <3>fxGeneration. src.g \in Gens /\ src.g<=gen[r]
  BY ONLY <2>1, <2>fxFresh, SMTT(5) DEF K12
 <3>fxRequest. BTg7I(src)
  BY ONLY <2>1, <2>fxFresh, ZenonT(5) DEF K12, BTg7I
 <3>fxRouterForR. \A g \in Gens : g<=gen[r] => hp[r][g] \in PInst /\ hd[r][g] \in DInst
  BY ONLY <1>DOABELu69dLU, <2>1, ZenonT(5) DEF K1
 <3>fxRouter. hp[r][src.g] \in PInst /\ hd[r][src.g] \in DInst
  BY ONLY <3>fxGeneration, <3>fxRouterForR, SMTT(5)
 <3>fxD. j \in DInst
  BY ONLY <2>2, ZenonT(5) DEF PKE_DRecvReq
 <3>fxDisjoint. \A a \in PInst : a \notin DInst
  BY ONLY Sizes, SMTT(5) DEF PInst, DInst, NL, Sizes
 <3>fxEndpoint. j=hd[r][src.g]
  BY ONLY <2>fxFresh, <3>fxRequest, <3>fxRouter, <3>fxD, <3>fxDisjoint, SMTT(5) DEF BTg7I
 <3>fxRecord. (ph[j][r]="none" => rg[j][r]=0) /\ (ph[j][r]#"none" => rg[j][r] \in Gens)
  BY ONLY <1>DOABELu69dLU, <2>1, ZenonT(5) DEF K8
 <3>fxReplyProjection. K13 => \A rr \in Rq : \A gg \in Gens :
    drep[rr][gg]<=1 /\
    (drep[rr][gg]=1 => (rg[hd[rr][gg]][rr]>gg \/ (rg[hd[rr][gg]][rr]=gg /\ ph[hd[rr][gg]][rr]="end")))
  BY ONLY ZenonT(5) DEF K13
 <3>fxReplyForR. \A g \in Gens : drep[r][g]<=1 /\
    (drep[r][g]=1 => (rg[hd[r][g]][r]>g \/ (rg[hd[r][g]][r]=g /\ ph[hd[r][g]][r]="end")))
  BY ONLY <1>DOABELu69dLU, <2>1, <3>fxReplyProjection, SMTT(5)
 <3>fxReply. drep[r][src.g]<=1 /\
    (drep[r][src.g]=1 => (rg[hd[r][src.g]][r]>src.g \/ (rg[hd[r][src.g]][r]=src.g /\ ph[hd[r][src.g]][r]="end")))
  BY ONLY <3>fxReplyForR, <3>fxGeneration, SMTT(5)
 <3>fxCountType. drep[r][src.g] \in 0..2
  BY ONLY <1>DOABELu69dLU, <2>1, <3>fxGeneration, SMTT(5) DEF T_drep
 <3>fxNew. ph[j][r]="none" \/ (ph[j][r]="end" /\ src.g>rg[j][r])
  BY ONLY <2>fxFresh, Design, SMTT(5) DEF NewGen, Design
 <3>fxPositive. src.g \in Int /\ src.g>=1
  BY ONLY <3>fxGeneration, SMTT(5) DEF Gens
 <3>fxOldInteger. rg[j][r] \in Int
  BY ONLY <3>fxRecord, <3>fxNew, SMTT(5) DEF Gens
 <3>fxNotOne. drep[r][src.g]#1
  BY ONLY <3>fxReply, <3>fxEndpoint, <3>fxRecord, <3>fxNew, <3>fxPositive, <3>fxOldInteger, SMTT(5)
 <3>fxDone. QED BY ONLY <3>fxGeneration, <3>fxCountType, <3>fxReply, <3>fxNotOne, <3>fxEndpoint, SMTT(5)
<2>fxUpdate. (UNCHANGED drep) \/ (\E src \in net :
  src.t="req" /\ src.to=j /\ src.r=r /\ NewGen(j,r,src.g) /\
  drep'=[drep EXCEPT ![r][src.g]=Bump(@)])
 BY ONLY <2>2, ZenonT(5) DEF PKE_DRecvReq
<2>3. QED
 <3>fxOtherTag. CASE m.t#"reply"
  BY ONLY <3>fxOtherTag, SMTT(5) DEF xAvu0j
 <3>fxTag. CASE m.t="reply"
  <4>fxStatic. UNCHANGED <<hd,dsucc>>
   BY ONLY <2>2, ZenonT(5) DEF PKE_DRecvReq
  <4>fxOld. CASE m \in net
   <5>fxBefore. xAvu0j(m)
    BY ONLY <2>1, <4>fxOld, ZenonT(5) DEF K12, xAvu0j
   <5>fxDomain. m.r \in Rq /\ m.g \in Gens
    BY ONLY <2>1, <4>fxOld, <3>fxTag, SMTT(5) DEF K12
   <5>fxSame. CASE UNCHANGED drep
    BY ONLY <5>fxSame, <5>fxBefore, <4>fxStatic, SMTT(5) DEF xAvu0j
   <5>fxChanged. CASE ~(UNCHANGED drep)
    <6>fxSource. PICK src \in net :
      src.t="req" /\ src.to=j /\ src.r=r /\ NewGen(j,r,src.g) /\
      drep'=[drep EXCEPT ![r][src.g]=Bump(@)]
     BY ONLY <2>fxUpdate, <5>fxChanged, ZenonT(5)
    <6>fxFreshSource. src.g \in Gens /\ drep[r][src.g]=0 /\ j=hd[r][src.g]
     BY ONLY <2>fxFresh, <6>fxSource, SMTT(5)
    <6>fxOtherKey. m.r#r \/ m.g#src.g
     BY ONLY <5>fxBefore, <3>fxTag, <6>fxFreshSource, SMTT(5) DEF xAvu0j
    <6>fxCount. drep'[m.r][m.g]=drep[m.r][m.g]
     BY ONLY <1>DOABELu69dLU, <2>1, <5>fxDomain, <6>fxSource, <6>fxFreshSource, <6>fxOtherKey, SMTT(5) DEF T_drep
    <6>fxDone. QED BY ONLY <5>fxBefore, <4>fxStatic, <6>fxCount, SMTT(5) DEF xAvu0j
   <5>fxDone. QED BY ONLY <5>fxSame, <5>fxChanged, SMTT(5)
  <4>fxNew. CASE m \notin net
   <5>fxSource. PICK src \in net :
     src.t="req" /\ src.to=j /\ src.r=r /\ NewGen(j,r,src.g) /\
     m.fr=j /\ m.r=r /\ m.g=src.g /\ m.ok=FALSE /\
     drep'=[drep EXCEPT ![r][src.g]=Bump(@)]
    BY ONLY <1>DOABELu69dLU, <2>2, <3>fxTag, <4>fxNew, SMTT(5) DEF PKE_DRecvReq, Msg
   <5>fxFreshSource. src.g \in Gens /\ drep[r][src.g]=0 /\ j=hd[r][src.g]
    BY ONLY <2>fxFresh, <5>fxSource, SMTT(5)
   <5>fxCount. drep'[r][src.g]=1
    BY ONLY <1>DOABELu69dLU, <2>1, <5>fxSource, <5>fxFreshSource, SMTT(5) DEF T_drep, Bump
   <5>fxDone. QED BY ONLY <5>fxSource, <5>fxFreshSource, <5>fxCount, <4>fxStatic, SMTT(5) DEF xAvu0j
  <4>fxDone. QED BY ONLY <4>fxOld, <4>fxNew, SMTT(5)
 <3>fxDone. QED BY ONLY <3>fxOtherTag, <3>fxTag, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>PStpcS0gv8B.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE K12'
<2> USE ONLY <1>PStpcS0gv8B, Sizes, Location, Design
<2>1. ASSUME NEW m \in net' PROVE BmN6sl4(m)'
  BY <1>phRGYUcAXR3, <1>ebX5y6t7vCY, <1>FT6c3Gpgz2h, <1>XBrWxAHHZD3, <1>UGAY8b48oGL, <1>usAsfoxmyjI, <1>aUXe3Rjtp19, <1>qwS1EfBK13I, <1>Qw8eOZq10ES, <1>DOABELu69dLU, Sizes, Location, Design DEF BmN6sl4, Sizes, Location, Design
<2>2. QED BY <2>1, <1>FdYjaJP, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0441_PdPK12_DRecvReq


<1>ivFfcVr6Rc1eHuIs8.         B2 /\ SFollow => RD_HUpdate /\ RD_MUpdate /\ RD_XUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_HUpdate, RD_MUpdate, RD_XUpdate, RD_HPin, RD_HLive, RD_Posted, RD_Src, Sizes, Location, Design


<1>lQA2.         PinInv => STypeOK /\ (B2 => SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6)
 BY SMTT(10), V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sWUiUol.        
 ASSUME NEW A, NEW B, NEW C, NEW D,
        IsFiniteSet(A), IsFiniteSet(B), IsFiniteSet(C), IsFiniteSet(D)
 PROVE IsFiniteSet(A \X B \X C \X D)
<2> USE ONLY <1>sWUiUol, Sizes, Location, Design
<2>1. IsFiniteSet(A \X B)
 BY FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet((A \X B) \X C)
 BY <2>1, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet(((A \X B) \X C) \X D)
 BY <2>2, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. A \X B \X C \X D \subseteq {<<t[1][1][1],t[1][1][2],t[1][2],t[2]>> : t \in (((A \X B) \X C) \X D)}
 <3>1. ASSUME NEW u \in A \X B \X C \X D
        PROVE u \in {<<t[1][1][1],t[1][1][2],t[1][2],t[2]>> : t \in (((A \X B) \X C) \X D)}
  <4>1. u = <<u[1],u[2],u[3],u[4]>> /\ u[1] \in A /\ u[2] \in B /\ u[3] \in C /\ u[4] \in D
  BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. <<<<<<u[1],u[2]>>,u[3]>>,u[4]>> \in (((A \X B) \X C) \X D)
  BY <4>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <3>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. IsFiniteSet({<<t[1][1][1],t[1][1][2],t[1][2],t[2]>> : t \in (((A \X B) \X C) \X D)})
 BY <2>3, FS_Image, IsaT(10), SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yXEVXb54O9q5W.        
 IsFiniteSet(PInst) /\ IsFiniteSet(Rq) /\ IsFiniteSet(Gens) /\ IsFiniteSet(SPages) /\ IsFiniteSet(Xids)
 BY Sizes, FS_Interval, SMTT(10), Location, Design DEF PInst, Rq, Gens, SPages, Xids, Sizes, Location, Design
\* T2M-END R2M0683_PdRDFinite


<1>SExsPOAumjk344.         B2 /\ SFollow => RD_RefDelta
 BY ZenonT(10), Sizes, Location, Design DEF RD_RefDelta, SFollow, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cPqz9TtB.        
 ASSUME NEW H, NEW E, NEW Q, NEW X, IsFiniteSet(H), IsFiniteSet(E), IsFiniteSet(Q), NEW p
 PROVE SRefR(H,p) \in Nat /\ SRefE(E,X,p) \in Nat /\ SRefQ(Q,p) \in Nat
<2> USE ONLY <1>cPqz9TtB, Sizes, Location, Design
<2>1. IsFiniteSet({h \in H : h[4]=p}) BY FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet({x \in E : p \in X[x]}) BY FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet({h \in Q : h[2]=p}) BY FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design


<1>x1ffOQE1KPtJ.        
 ASSUME PrefcMatchesHolders, RD_RefDelta,
        IsFiniteSet(rpgS), IsFiniteSet(sentry), IsFiniteSet(squar),
        IsFiniteSet(rpgS'), IsFiniteSet(sentry'), IsFiniteSet(squar')
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>x1ffOQE1KPtJ, Sizes, Location, Design
<2>1. ASSUME NEW p \in SPages PROVE
        SRefR(rpgS,p) \in Nat /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefQ(squar,p) \in Nat /\
        SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat
 BY <1>cPqz9TtB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, RD_RefDelta, Sizes, Location, Design
\* T2M-END R2M0684_PdRDRefCount


<1>y69bbnw8OExl0j.         B2 /\ SFollow => RD_EQUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_EQUpdate, RD_E2, RD_Q2, RD_Close, RD_Quarantine, RD_Posted, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aGGTPadibFyx5jUm6wA.        
 ASSUME NEW H, NEW E, NEW Q, H \subseteq (PInst \X Rq \X Gens \X SPages), E \subseteq Xids, Q \subseteq (Xids \X SPages)
 PROVE IsFiniteSet(H) /\ IsFiniteSet(E) /\ IsFiniteSet(Q)
<2> USE ONLY <1>aGGTPadibFyx5jUm6wA, Sizes, Location, Design
<2>1. IsFiniteSet(PInst \X Rq \X Gens \X SPages)
 BY <1>yXEVXb54O9q5W, <1>sWUiUol, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet(Xids \X SPages)
 BY <1>yXEVXb54O9q5W, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yXEVXb54O9q5W, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>euftvuGfUGzVhYLlW.        
 ASSUME PinInv, SFollow
 PROVE RD_HolderTypes'
<2> USE ONLY <1>euftvuGfUGzVhYLlW, Sizes, Location, Design
<2>1. RD_HolderTypes /\ xsrcS \in [Xids -> SUBSET SPages]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>euftvuGfUGzVhYLlW, V22_T_rpgS, V22_T_sentry, V22_T_squar, V22_T_xsrcS, SMTT(5) DEF RD_HolderTypes

<2>2. CASE ~B2
 BY <2>1, <2>2, ZenonT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, RD_HolderTypes, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RD_HUpdate /\ RD_EQUpdate
 BY <2>3, <1>ivFfcVr6Rc1eHuIs8, <1>y69bbnw8OExl0j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. rpgS' \subseteq rpgS /\ sentry' \subseteq sentry \cup Xids
 BY <3>1, SMTT(10), Sizes, Location, Design DEF RD_HUpdate, RD_EQUpdate, RD_E2, Sizes, Location, Design
 <3>3. squar' \subseteq (Xids \X SPages)
 BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF RD_HolderTypes, RD_EQUpdate, RD_Q2, Sizes, Location, Design
 <3>4. QED BY <2>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF RD_HolderTypes, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RWvTkqQsVDwnRge2Q5E0XkOXe.        
 ASSUME PinInv, SFollow
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>RWvTkqQsVDwnRge2Q5E0XkOXe, Sizes, Location, Design
<2>1. PrefcMatchesHolders /\ RD_HolderTypes /\ RD_HolderTypes'
 BY <1>lQA2, <1>euftvuGfUGzVhYLlW, SMTT(10), V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF STypeOK, RD_HolderTypes, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. IsFiniteSet(rpgS) /\ IsFiniteSet(sentry) /\ IsFiniteSet(squar) /\ IsFiniteSet(rpgS') /\ IsFiniteSet(sentry') /\ IsFiniteSet(squar')
 BY <2>1, <1>aGGTPadibFyx5jUm6wA, SMTT(10), Sizes, Location, Design DEF RD_HolderTypes, Sizes, Location, Design
<2>3. CASE ~B2
 BY <2>3, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>4. CASE B2
 <3>1. RD_RefDelta BY <2>4, <1>SExsPOAumjk344, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>2, <3>1, <1>x1ffOQE1KPtJ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0685_PdRDHolderTypes


<1>qmmnGcYLb5h.         PinInv => CoreTypeOK
 BY ZenonT(10), V21_Inv_BaseTypeOK, Sizes, Location, Design DEF Sizes, Location, Design


<1>R3YtSwiPG37j.        
 PinInv => iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY V22_T_iv, V22_T_pst, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>b1DTDcpEFXLS6u0idbm9mWJ4ijys.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>b1DTDcpEFXLS6u0idbm9mWJ4ijys, Sizes, Location, Design, <1>RWvTkqQsVDwnRge2Q5E0XkOXe, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>laJZVswepl.         K12 <=> (\A m \in net : wuoDNx7(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Jy0Yhh.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1110_PdRDLegacy_PP_PdMsgBase


<1>nvc1L3TxUa51Uyr5.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<rtV, instV, crep, dsucc>>
  BY ONLY <1>nvc1L3TxUa51Uyr5, Sizes, Location, Design, Design, Zenon DEF DRecvReq, DResetLedger, Sizes, Location, Design
\* T2M-END R2M1198_PdRDLegacy_PP_PdDRecvReqFrames

\* T2M-SCOPE R2M1199_PdRDLegacy_PP_PdCell_DRecvReq_GenFiltered
\* T2M-BODY R2M1199_PdRDLegacy_PP_PdCell_DRecvReq_GenFiltered
\* T2M-LOCAL-VISIBILITY

<1>gKMjz.         K8 <=> \A i \in Inst, r \in Rq : rDYgNVy(i,r)
  BY ZenonT(10), Sizes, Location, Design DEF K8, rDYgNVy, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>mB5vW8NPOnMGB6.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r
  PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
<2> USE ONLY <1>mB5vW8NPOnMGB6, Sizes, Location, Design
<2>1. K1 /\ K12
  BY SMTT(10), V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. wuoDNx7(m)
  BY <2>1, <1>laJZVswepl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. m.g \in Gens /\ m.g <= gen[r] /\ (j = hp[r][m.g] \/ j = hd[r][m.g])
  BY <2>2, SMTT(10), Sizes, Location, Design DEF wuoDNx7, PdJrO, VawcR, Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, SMTT(10), Location, Design DEF K1, IsD, PInst, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>DW9I8xbFt1rBgo.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r, NewGen(j,r,m.g)
  PROVE drep[r][m.g] = 0
<2> USE ONLY <1>DW9I8xbFt1rBgo, Sizes, Location, Design
<2>1. K8 /\ K13 /\ OneReply /\ Q1j7VI /\ nNeM /\ Mut = "none"
  BY <1>UwwC5LVwQr, Design, SMTT(10), V21_Inv_K13, V21_Inv_K8, V21_Inv_OneReply, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location DEF Safety, QLAWp, Sizes, Location, Design
<2>2. m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
  BY <1>mB5vW8NPOnMGB6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rDYgNVy(j,r) /\ drep[r][m.g] \in {0,1}
 <3>1. rDYgNVy(j,r)
  BY ONLY <1>DW9I8xbFt1rBgo, <2>1, <1>gKMjz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. drep[r][m.g] \in 0..2
  BY ONLY <1>DW9I8xbFt1rBgo, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Q1j7VI, Sizes, Location, Design
 <3>3. drep[r][m.g] <= 1
  BY ONLY <1>DW9I8xbFt1rBgo, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
 <3>4. QED BY ONLY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. drep[r][m.g] = 1 => rg[j][r] >= m.g
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K13, nNeM, Gens, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF rDYgNVy, NewGen, nNeM, Gens, Sizes, Location, Design
\* T2M-END R2M1200_PdRDLegacy_PP_PdDRecvHistory

\* T2M-SCOPE R2M1201_PdRDLegacy_PP_PdCell_DRecvReq_K1
\* T2M-BODY R2M1201_PdRDLegacy_PP_PdCell_DRecvReq_K1
\* T2M-LOCAL-VISIBILITY

<1>q51BodL9ci1fM.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW g \in 0..MG,
         K17, K8, c02OO, nNeM, Mut = "none", NewGen(j,r,g),
         rg' = [rg EXCEPT ![j][r] = g], UNCHANGED <<kpin,krs>>,
         \A i \in Inst, u \in Rq : (i # j \/ u # r) =>
           ph'[i][u] = ph[i][u] /\ rpg'[i][u] = rpg[i][u]
  PROVE K17'
<2> USE ONLY <1>q51BodL9ci1fM, Sizes, Location, Design
<2>1. SUFFICES ASSUME NEW i \in Inst, NEW s \in KSlots, NEW e \in krs'[i][s], kpin'[i][s], e[4] \in {2,3}
               PROVE rg'[i][e[1]] > e[2] \/
                (rg'[i][e[1]] = e[2] /\ ph'[i][e[1]] \in {"run","ovl","end"} /\ rpg'[i][e[1]] # e[3])
  BY SMTT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
<2>2. kpin[i][s] /\ e \in krs[i][s] /\ e[1] \in Rq /\ e[2] \in Gens
  BY <2>1, SMTT(10), Sizes, Location, Design DEF c02OO, Sizes, Location, Design
<2>3. rg[i][e[1]] > e[2] \/
        (rg[i][e[1]] = e[2] /\ ph[i][e[1]] \in {"run","ovl","end"} /\ rpg[i][e[1]] # e[3])
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
<2>4. CASE i = j /\ e[1] = r
  <3>1. rDYgNVy(j,r) /\ rg[j][r] >= e[2]
    BY <2>2, <2>3, <2>4, <1>gKMjz, Sizes, SMTT(10), Location, Design DEF nNeM, Gens, Sizes, Location, Design
  <3>2. ph[j][r] # "none"
    BY <2>2, <2>4, <3>1, Sizes, SMTT(10), Location, Design DEF rDYgNVy, Gens, Sizes, Location, Design
  <3>3. g > rg[j][r]
    BY <2>4, <3>2, SMTT(10), Sizes, Location, Design DEF NewGen, Sizes, Location, Design
  <3>4. QED
    BY <2>1, <2>2, <2>4, <3>1, <3>3, Sizes, SMTT(10), Location, Design DEF nNeM, Gens, Sizes, Location, Design
<2>5. CASE i # j \/ e[1] # r
  BY <2>1, <2>2, <2>3, <2>5, SMTT(10), Sizes, Location, Design DEF nNeM, Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1202_PdRDLegacy_PP_PdNewGenerationK17


<1>hqFuQ1jEkw7r37QyQAkUD.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE \E g \in 0..MG : NewGen(j,r,g) /\ rg' = [rg EXCEPT ![j][r] = g] /\
          (\A i \in Inst, u \in Rq : (i # j \/ u # r) =>
            ph'[i][u] = ph[i][u] /\ rpg'[i][u] = rpg[i][u])
<2> USE ONLY <1>hqFuQ1jEkw7r37QyQAkUD, Sizes, Location, Design
<2>1. AydA /\ q1Ohy /\ qvLUP
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, <1>Jy0Yhh, Sizes, SMTT(10), Location DEF DRecvReq, AydA, q1Ohy, qvLUP, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>LC4JaZDsu.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K17'
<2> USE ONLY <1>LC4JaZDsu, Sizes, Location, Design
<2>1. K17 /\ K8 /\ c02OO /\ nNeM /\ Mut = "none"
  BY <1>UwwC5LVwQr, Design, SMTT(10), V21_Inv_K17, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs>>
  BY <1>nvc1L3TxUa51Uyr5, SMTT(10), Sizes, Location, Design DEF instV, kV, Sizes, Location, Design
<2>3. PICK g \in 0..MG : NewGen(j,r,g) /\ rg' = [rg EXCEPT ![j][r] = g] /\
          (\A i \in Inst, u \in Rq : (i # j \/ u # r) =>
            ph'[i][u] = ph[i][u] /\ rpg'[i][u] = rpg[i][u])
  BY <1>hqFuQ1jEkw7r37QyQAkUD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>q51BodL9ci1fM, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1203_PdRDLegacy_PP_PdCell_DRecvReq_K17

\* T2M-SCOPE R2M1204_PdRDLegacy_PP_PdCell_DRecvReq_OneReply

<1>KeUX3AwuU5dZGL50.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>oRMobcZtnEacZOSYh60.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst /\ (IsP(Loc(p)) <=> ~IsD(Loc(p)))
  BY ONLY <1>oRMobcZtnEacZOSYh60, Sizes, Location, Design, Location, Sizes, SMTT(10) DEF IsP, IsD, Inst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M1123_PdRDLegacy_PP_D2Finite_PdFactsA


<1>VnRgHUqOOVql.        
  ASSUME PinInv
  PROVE \A p \in Pages : pst[p] = "free" =>
          led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0
  BY ONLY <1>VnRgHUqOOVql, Sizes, Location, Design, SMTT(10), V21_Inv_K7, V21_Inv_KStruct DEF KStruct, K7, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>z4BWdv.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r
  PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
        /\ m.pe = hp[r][m.g] /\ m.pe \in PInst /\ m.pe \in Inst
<2> USE ONLY <1>z4BWdv, Sizes, Location, Design
<2>1. K1 /\ K12
  BY SMTT(10), V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
  BY <1>mB5vW8NPOnMGB6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hp[r][m.g] \in PInst /\ hd[r][m.g] \in DInst
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. wuoDNx7(m)
  BY <2>1, <1>laJZVswepl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. hp[r][m.g] # j /\ hp[r][m.g] \in Inst
  BY <2>3, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF wuoDNx7, VawcR, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>HfQyCD4BSreUP8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,torn,nfail,kpin,kfly,krs,crep,dsucc,pqp,xsrc,xlt,hw,hok,iv>>
  BY ONLY <1>HfQyCD4BSreUP8, Sizes, Location, Design, Design, <1>nvc1L3TxUa51Uyr5, SMTT(10) DEF DRecvReq, rtV, instV, kV, xV, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>v7DLb.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE nx' = nx \/ (nx' = nx+1 /\ Mode = "push" /\ nx \in Xids)
<2> USE ONLY <1>v7DLb, Sizes, Location, Design
<2>1. SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, Sizes, SMTT(10), Location DEF DRecvReq, xV, SHJS, Xids, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>xCdYilU.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW x \in Xids, PinInv, DRecvReq(j,r), x # nx
  PROVE UNCHANGED <<xr[x],xg[x],xk[x],xp[x],xd[x],xsrc[x],xdst[x],xnt[x],xst[x],xlt[x],hw[x],hok[x],iv[x]>>
<2> USE ONLY <1>xCdYilU, Sizes, Location, Design
<2>1. a1R5 /\ CXAy /\ ok5g /\ vdyX /\ C4fb /\ JjZ1PO /\ PwcfA /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, <1>HfQyCD4BSreUP8, SMTT(10), Sizes, Location DEF DRecvReq, xV, a1R5, CXAy, ok5g, vdyX, C4fb, JjZ1PO, PwcfA, PD2ZN, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>B37skkIj1S.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, pst[p] # "free", PinInv, DRecvReq(j,r)
  PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p]>>
<2> USE ONLY <1>B37skkIj1S, Sizes, Location, Design
<2>1. OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ rO4YE /\ Bq5Edl /\ dcfPK
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, KPages, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Tkbhb1zYD90L.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, pst[p] # "shared", PinInv, DRecvReq(j,r)
  PROVE UNCHANGED <<sfly[p],sled[p]>>
<2> USE ONLY <1>Tkbhb1zYD90L, Sizes, Location, Design
<2>1. OyyWS /\ Xc_ngV /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, OyyWS, Xc_ngV, h9WLgd, KPages, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>nd4ZbqRTFS.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE \A p \in Pages : UNCHANGED NoWriteInto(p)
<2> USE ONLY <1>nd4ZbqRTFS, Sizes, Location, Design
<2>1. K2 /\ SHJS /\ UNCHANGED hw
  BY <1>HfQyCD4BSreUP8, <1>UwwC5LVwQr, SMTT(10), V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. \A x \in Xids : InFl(x) => x < nx /\ x # nx
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, InFl, Xids, SHJS, Sizes, Location, Design
<2>3. \A x \in Xids : InFl(x) => UNCHANGED xdst[x]
  BY <2>2, <1>xCdYilU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF NoWriteInto, Writing, InFl, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>T1pPFrOW38bT.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, NEW x \in led'[p], PinInv, DRecvReq(j,r)
  PROVE (x \in led[p]) \/
        (x = nx /\ nx' = nx+1 /\ xr'[x] = r /\ xg'[x] \in Gens /\ xdst'[x] = p /\ pst'[p] = "priv" /\ pr'[p] = r /\ pgn'[p] = xg'[x])
<2> USE ONLY <1>T1pPFrOW38bT, Sizes, Location, Design
<2>1. SHJS /\ dcfPK /\ OyyWS /\ IwCp /\ vS7em /\ a1R5 /\ CXAy /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) => m.g \in Gens
  BY <1>z4BWdv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>VnRgHUqOOVql, Design, Sizes, SMTT(10), Location DEF DRecvReq, Xids, SHJS, dcfPK, OyyWS, IwCp, vS7em, a1R5, CXAy, JjZ1PO, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>UsePDI6tTnB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE ~Active(j,r) /\ IsD(j) /\ j \in DInst
  BY ONLY <1>UsePDI6tTnB, Sizes, Location, Design, Design, <1>KeUX3AwuU5dZGL50, SMTT(10) DEF DRecvReq, NewGen, Active, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>moCLPnsjoLgIky.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW i \in Inst, NEW u \in Rq,
         PinInv, DRecvReq(j,r), i # j \/ u # r
  PROVE UNCHANGED <<ph[i][u],rg[i][u],rpg[i][u],rpe[i][u],rx[i][u],rhit[i][u]>>
<2> USE ONLY <1>moCLPnsjoLgIky, Sizes, Location, Design
<2>1. AydA /\ nNeM /\ q1Ohy /\ E1MnW /\ QC9Q /\ EYS1sP
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>JH5GHkPGhmvIbdBka.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE /\ rg'[j][r] \in Gens /\ rg'[j][r] <= gen[r] /\ rg'[j][r] > rg[j][r]
        /\ hd[r][rg'[j][r]] = j /\ rpe'[j][r] = hp[r][rg'[j][r]]
        /\ ph'[j][r] \in {"run","wait","end"}
        /\ drep[r][rg'[j][r]] = 0
        /\ drep' = IF ph'[j][r] = "end" THEN [drep EXCEPT ![r][rg'[j][r]] = 1] ELSE drep
<2> USE ONLY <1>JH5GHkPGhmvIbdBka, Sizes, Location, Design
<2>1. AydA /\ nNeM /\ E1MnW /\ Q1j7VI /\ K8 /\ Mut = "none"
  BY <1>UwwC5LVwQr, Design, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location DEF QLAWp, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r /\ NewGen(j,r,m.g)) =>
       m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g] /\ m.pe = hp[r][m.g] /\ m.g > rg[j][r] /\ drep[r][m.g] = 0
<3>1. ASSUME NEW m \in net, IsD(j), m.t = "req", m.to = j, m.r = r, NewGen(j,r,m.g)
       PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g] /\ m.pe = hp[r][m.g] /\ m.g > rg[j][r] /\ drep[r][m.g] = 0
<4>1. m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g] /\ m.pe = hp[r][m.g] /\ drep[r][m.g] = 0
  BY <3>1, <1>z4BWdv, <1>DW9I8xbFt1rBgo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. QED BY <2>1, <3>1, <4>1, Sizes, SMTT(10), Location, Design DEF K8, NewGen, Gens, Sizes, Location, Design
<3>2. QED BY <3>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY Design, <2>1, <2>2, SMTT(10), Sizes, Location DEF DRecvReq, AydA, nNeM, E1MnW, Q1j7VI, Bump, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Q2gy2JksROC6Za.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE /\ (ph'[j][r] = "run" => rhit'[j][r] /\ rpg'[j][r] \in Pages /\ Loc(rpg'[j][r]) = j /\ pst[rpg'[j][r]] = "shared" /\ rx'[j][r] = 0)
        /\ (ph'[j][r] = "wait" => ~rhit'[j][r] /\ rpg'[j][r] \in Pages /\ Loc(rpg'[j][r]) = j /\ pst[rpg'[j][r]] = "free"
                                   /\ pst'[rpg'[j][r]] = "priv" /\ pr'[rpg'[j][r]] = r /\ pgn'[rpg'[j][r]] = rg'[j][r])
        /\ (ph'[j][r] = "end" => ~rhit'[j][r] /\ rpg'[j][r] = 0 /\ rx'[j][r] = 0)
<2> USE ONLY <1>Q2gy2JksROC6Za, Sizes, Location, Design
<2>1. AydA /\ nNeM /\ q1Ohy /\ EYS1sP /\ QC9Q /\ OyyWS /\ IwCp /\ vS7em
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, AydA, nNeM, q1Ohy, EYS1sP, QC9Q, OyyWS, IwCp, vS7em, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>NWsgMst3O8GDDY7.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r), pst[p] = "priv"
  PROVE pr[p] \in Rq /\ Loc(p) \in Inst /\ (Loc(p) # j \/ pr[p] # r)
<2> USE ONLY <1>NWsgMst3O8GDDY7, Sizes, Location, Design
<2>1. K7 /\ K16 /\ ~Active(j,r) /\ IsD(j)
  BY <1>UsePDI6tTnB, SMTT(10), V21_Inv_K16, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>oRMobcZtnEacZOSYh60, SMTT(10), Sizes, Location, Design DEF K7, K16, GrownP, Active, Maps, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>GdXCb3icEbkWz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r), pst'[p] = "priv", pst[p] # "priv"
  PROVE /\ Loc(p) = j /\ rpg'[j][r] = p /\ pr'[p] = r /\ pgn'[p] = rg'[j][r]
        /\ ph'[j][r] = "wait" /\ ~rhit'[j][r]
<2> USE ONLY <1>GdXCb3icEbkWz, Sizes, Location, Design
<2>1. OyyWS /\ IwCp /\ vS7em /\ nNeM /\ q1Ohy /\ AydA /\ EYS1sP
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, OyyWS, IwCp, vS7em, nNeM, q1Ohy, AydA, EYS1sP, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>dkUzlJ5p.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r), GrownP(p)'
  PROVE GrownP(p) /\ UNCHANGED <<ph[Loc(p)][pr[p]],rg[Loc(p)][pr[p]],pr[p],rpg[Loc(p)][pr[p]]>>
<2> USE ONLY <1>dkUzlJ5p, Sizes, Location, Design
<2>1. pst[p] = "priv"
  BY <1>GdXCb3icEbkWz, SMTT(10), Sizes, Location, Design DEF GrownP, Sizes, Location, Design
<2>2. UNCHANGED <<pst[p],pr[p],pgn[p]>> /\ pr[p] \in Rq /\ Loc(p) \in Inst /\ (Loc(p) # j \/ pr[p] # r)
  BY <2>1, <1>B37skkIj1S, <1>NWsgMst3O8GDDY7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>moCLPnsjoLgIky, SMTT(10), Sizes, Location, Design DEF GrownP, Sizes, Location, Design
\* T2M-END R2M1212_PdRDLegacy_PP_PdD2RecvPrivate

\* T2M-SCOPE R2M1213_PdRDLegacy_PP_PdD2RecvOldOwned
\* T2M-BODY R2M1213_PdRDLegacy_PP_PdD2RecvOldOwned
\* T2M-LOCAL-VISIBILITY

<1>lyfZ3S9Ax.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K16'
<2> USE ONLY <1>lyfZ3S9Ax, Sizes, Location, Design
<2>1. K16
  BY SMTT(10), V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ASSUME NEW p \in Pages, GrownP(p)'
       PROVE /\ ph'[Loc(p)][pr'[p]] \in {"run","ovl"} /\ rg'[Loc(p)][pr'[p]] = pgn'[p]
             /\ led'[p] = {} /\ sled'[p] = {} /\ sfly'[p] = {}
             /\ plt'[p] = ptl'[p] /\ ptl'[p] \in {0,1} /\ NoWriteInto(p)'
<3>1. GrownP(p) /\ UNCHANGED <<ph[Loc(p)][pr[p]],rg[Loc(p)][pr[p]],pr[p],rpg[Loc(p)][pr[p]]>>
  BY <2>2, <1>dkUzlJ5p, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. pst[p] = "priv"
  BY <3>1, SMTT(10), Sizes, Location, Design DEF GrownP, Sizes, Location, Design
<3>3. QED BY <2>1, <2>2, <3>1, <3>2, <1>B37skkIj1S, <1>Tkbhb1zYD90L, <1>nd4ZbqRTFS, SMTT(10), Sizes, Location, Design DEF K16, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF K16, Sizes, Location, Design
\* T2M-END R2M1217_PdRDLegacy_PP_PdD2DRecvReq_K16


<1>IXK90cYU.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K5'
<2> USE ONLY <1>IXK90cYU, Sizes, Location, Design
<2>1. K5 /\ K4 /\ dcfPK
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K4, V21_Inv_K5, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ASSUME NEW p \in Pages, NEW x \in led'[p] PROVE OwnedBy(p,xr[x],xg[x])'
<3>1. CASE x \in led[p]
<4>1. x \in Xids /\ x < nx /\ OwnedBy(p,xr[x],xg[x]) /\ pst[p] # "free"
  BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF K4, K5, OwnedBy, dcfPK, Sizes, Location, Design
<4>2. QED BY <4>1, <1>xCdYilU, <1>B37skkIj1S, SMTT(10), Sizes, Location, Design DEF OwnedBy, Sizes, Location, Design
<3>2. CASE x \notin led[p]
  BY <3>2, <1>T1pPFrOW38bT, SMTT(10), Sizes, Location, Design DEF OwnedBy, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF K5, Sizes, Location, Design
\* T2M-END R2M1221_PdRDLegacy_PP_PdD2DRecvReq_K5

\* T2M-SCOPE R2M1222_PdRDLegacy_PP_PdD2DRecvReq_K6

<1>zv5RNeW1.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE S5'
<2> USE ONLY <1>zv5RNeW1, Sizes, Location, Design
<2>1. SHJS /\ S5 /\ UNCHANGED <<hw,hok,iv,xlt>>
  BY <1>UwwC5LVwQr, <1>HfQyCD4BSreUP8, SMTT(10), V21_Inv_S5, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ASSUME NEW i \in DInst, NEW u \in Rq, ph'[i][u] \in {"run","ovl"}, ~rhit'[i][u]
       PROVE LET x == rx'[i][u] IN
         /\ x \in Xids /\ x < nx' /\ xdst'[x] = rpg'[i][u] /\ xr'[x] = u /\ xg'[x] = rg'[i][u]
         /\ hw'[x] = "stop" /\ hok'[x] /\ xlt'[x] = xnt'[x]
         /\ (Mode = "push" => xst'[x] = "landed") /\ (Mode = "pull" => iv'[x] = "cqe")
<3>1. i \in Inst /\ (i # j \/ u # r)
  BY <2>2, <1>JH5GHkPGhmvIbdBka, <1>Q2gy2JksROC6Za, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. UNCHANGED <<ph[i][u],rg[i][u],rpg[i][u],rx[i][u],rhit[i][u]>>
  BY <3>1, <1>moCLPnsjoLgIky, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. rx[i][u] \in Xids /\ rx[i][u] < nx /\ rx[i][u] # nx
  BY <2>1, <2>2, <3>2, SMTT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
<3>4. QED BY <2>1, <2>2, <3>2, <3>3, <1>xCdYilU, <1>v7DLb, Sizes, SMTT(10), Location, Design DEF S5, SHJS, Xids, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
\* T2M-END R2M1231_PdRDLegacy_PP_PdD2DRecvReq_S5

\* T2M-SCOPE R2M1232_PdRDLegacy_PP_PdD2DRecvReq_S6

<1>PaSLmk3mcs.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K5'
  BY ONLY <1>PaSLmk3mcs, Sizes, Location, Design, <1>IXK90cYU, V21_Inv_K5 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>qiRxoxxXJsk.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K16'
  BY ONLY <1>qiRxoxxXJsk, Sizes, Location, Design, <1>lyfZ3S9Ax, V21_Inv_K16 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>aN0C0EldnBB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K17'
  BY ONLY <1>aN0C0EldnBB, Sizes, Location, Design, <1>LC4JaZDsu, V21_Inv_K17 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>q4gHJgQ4OY.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE S5'
  BY ONLY <1>q4gHJgQ4OY, Sizes, Location, Design, <1>zv5RNeW1, V21_Inv_S5 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>eCzjL4PMdcNbssJhsk.        
 ASSUME PinInv
 PROVE \A i \in Inst,r \in Rq : Active(i,r) => rpg[i][r] \in Pages /\ Loc(rpg[i][r])=i
 BY ONLY <1>eCzjL4PMdcNbssJhsk, Sizes, Location, Design, SMTT(10), V21_Inv_K8 DEF K8, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>b8FOS7RlDgygbk6kJ4t.        
 ASSUME PinInv
 PROVE \A x \in Xids : xdst[x] \in Pages => IsD(Loc(xdst[x]))
<2> USE ONLY <1>b8FOS7RlDgygbk6kJ4t, Sizes, Location, Design
<2>1. K1 /\ K2 /\ nx \in 1..(MX+1)
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>b8FOS7RlDgygbk6kJ4t, V22_T_nx, V21_Inv_K1, V21_Inv_K2, Sizes, Location, Design, SMTT(5)

<2>2. ASSUME NEW x \in Xids, xdst[x] \in Pages PROVE IsD(Loc(xdst[x]))
 <3>1. x<nx BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, Pages, Xids, Sizes, Location, Design
 <3>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x]<=gen[xr[x]] /\ xd[x]=hd[xr[x]][xg[x]] /\ Loc(xdst[x])=xd[x]
 BY <2>1, <2>2, <3>1, Design, Sizes, SMTT(10), Location DEF K2, Pages, ExpPage, ExpInst, InitPage, InitInst, Sizes, Location, Design
 <3>3. xd[x] \in DInst
  <4>fxRouter. \A g \in Gens : g <= gen[xr[x]] => hd[xr[x]][g] \in DInst
   BY ONLY <2>1, <3>2, ZenonT(5) DEF K1
  <4>fxGeneration. hd[xr[x]][xg[x]] \in DInst
   BY ONLY <3>2, <4>fxRouter, SMTT(5)
  <4>fxDone. QED BY ONLY <3>2, <4>fxGeneration, SMTT(5)
 <3>4. QED BY <3>2, <3>3, Sizes, SMTT(10), Location, Design DEF DInst, IsD, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XdqzW5jl.        
 ASSUME PinInv, NEW x \in Xids, iv[x]="reg"
 PROVE x<nx /\ xk[x]="wr" /\ xsrc[x] \in Pages /\ IsP(Loc(xsrc[x])) /\ x \in led[xsrc[x]] /\ pst[xsrc[x]] # "quar"
<2> USE ONLY <1>XdqzW5jl, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ QuarNoReg /\ CoreTypeOK
 BY SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x<nx /\ xk[x]="wr"
 <3>nx. nx \in 1..(MX+1)
  
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>XdqzW5jl, V22_T_nx, SMTT(5)

 <3>ints. x \in Int /\ nx \in Int
  BY ONLY <1>XdqzW5jl, <3>nx, SMTT(5) DEF Xids
 <3>fresh. \A z \in Xids : z>=nx => iv[z]="none"
  BY ONLY <2>1, ZenonT(5) DEF K2
 <3>allocated. x<nx
  BY ONLY <1>XdqzW5jl, <3>ints, <3>fresh, SMTT(5)
 <3>kind. xk[x]="wr"
  BY ONLY <1>XdqzW5jl, <2>1, SMTT(5) DEF K3
 <3>qed. QED BY ONLY <3>allocated, <3>kind, SMTT(5)
<2>3. xsrc[x] \in Pages /\ Loc(xsrc[x])=xp[x] /\ xp[x] \in PInst
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, K2, InitPage, InitInst, Sizes, Location, Design
<2>4. x \in led[xsrc[x]]
 BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K4, InitPage, Sizes, Location, Design
<2>5. IsP(Loc(xsrc[x])) /\ pst[xsrc[x]] # "quar"
 BY <2>1, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF IsP, PInst, QuarNoReg, Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lsjuoBt9NWo.        
 ASSUME PinInv, SFollow, RD_RegSafe
 PROVE SI7'
<2> USE ONLY <1>lsjuoBt9NWo, Sizes, Location, Design
<2>1. SI7 /\ K3
 BY SMTT(10), V21_Inv_K3, V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, SMTT(10), Sizes, Location, Design DEF SI7, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RD_EQUpdate BY <2>3, <1>y69bbnw8OExl0j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW x \in Xids, iv'[x]="reg" PROVE x \in sentry'
  <4>1. iv[x]="reg" /\ pst'[xsrc[x]] # "quar" /\ xk[x]="wr" /\ x \in sentry
  BY <2>1, <2>3, <3>2, SMTT(10), Sizes, Location, Design DEF RD_RegSafe, SI7, K3, Sizes, Location, Design
  <4>2. ~RD_Close(x) /\ ~RD_Quarantine(x)
  BY <3>2, <4>1, SMTT(10), Sizes, Location, Design DEF RD_Close, RD_Quarantine, Sizes, Location, Design
  <4>3. QED BY <3>1, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_E2, Sizes, Location, Design
 <3>3. QED BY <3>2, SMTT(10), Sizes, Location, Design DEF SI7, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1349_PdRDRegPreserve


<1>LtS8BOkI8O0OfmUpHR9.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE RD_RegSafe
<2> USE ONLY <1>LtS8BOkI8O0OfmUpHR9, Sizes, Location, Design
<2> DEFINE FX_REG_E == iv'=iv /\ (pst'=pst \/ \E q \in Pages : pst'=[pst EXCEPT ![q]="priv"])
<2> HIDE DEF FX_REG_E
<2>fx. FX_REG_E
 BY ONLY <1>LtS8BOkI8O0OfmUpHR9, ZenonT(10) DEF FX_REG_E, DRecvReq, xV
<2>1. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 BY ONLY <1>LtS8BOkI8O0OfmUpHR9, <1>R3YtSwiPG37j, SMTT(5)
<2>fiv. iv'=iv
 BY ONLY <2>fx, ZenonT(5) DEF FX_REG_E
<2>2. \A z \in Xids : iv'[z]="reg" => iv[z]="reg"
 BY ONLY <2>1, <2>fiv, SMTT(5)
<2>3. ASSUME NEW y \in Xids, iv'[y]="reg" PROVE pst'[xsrc[y]] # "quar"
 <3>1. iv[y]="reg" BY ONLY <2>3, <2>2, SMTT(5)
 <3>2. y<nx /\ xk[y]="wr" /\ xsrc[y] \in Pages /\ IsP(Loc(xsrc[y])) /\ y \in led[xsrc[y]] /\ pst[xsrc[y]] # "quar"
 BY ONLY <1>LtS8BOkI8O0OfmUpHR9, <2>3, <3>1, <1>XdqzW5jl, SMTT(5)
 <3>pst. pst'=pst \/ \E q \in Pages : pst'=[pst EXCEPT ![q]="priv"]
  BY ONLY <2>fx, ZenonT(5) DEF FX_REG_E
 <3>qed. QED BY ONLY <2>1, <3>2, <3>pst, SMTT(5)
<2>4. RD_RegSafe BY ONLY <2>2, <2>3, SMTT(5) DEF RD_RegSafe
<2>5. QED BY ONLY <2>4, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>M0F2cMF7C3l42Hz.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE SI7'
 BY ONLY <1>M0F2cMF7C3l42Hz, Sizes, Location, Design, <1>LtS8BOkI8O0OfmUpHR9, <1>lsjuoBt9NWo, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1376_PdRDR2SI7_DRecvReq


<1> QED BY <1>qiRxoxxXJsk, <1>q4gHJgQ4OY, <1>PStpcS0gv8B, <1>PaSLmk3mcs, <1>b1DTDcpEFXLS6u0idbm9mWJ4ijys, <1>M0F2cMF7C3l42Hz, <1>aN0C0EldnBB, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_DRecvReq_04_02 SHA 7923b3990d145de520eaf559b1ec6b66a74d9abcfb9408c8981a09424e112805
USE DEF P_PagePoolsDisjoint, V21_Inv_HitIdentity, V21_Inv_K11, V21_Inv_K6, V21_Inv_NoFreeUnderRead, V21_Inv_SI8, V21_Inv_SharedImmutable, V22_SF_Choice, V22_SF_Map, V22_SF_Off, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpg, V22_T_schoice, V22_T_sfly, V22_T_sled, V22_T_smap, V22_T_xdst, V22_T_xk, V22_T_xsrcP, V22_T_xst
HIDE DEF Part_DRecvReq_04_01, V21_Inv_K16, V21_Inv_K17, V21_Inv_K5, V21_Inv_K9, V21_Inv_MsgXDomain, V21_Inv_PrefcMatchesHolders, V21_Inv_S5, V21_Inv_SI7, V22_T_iv, V22_T_pst, V22_T_rpgS, V22_T_sentry, V22_T_squar
THEOREM Part_DRecvReq_04_02 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE (K4)' /\ (HitIdentity)' /\ (P_SI1)' /\ (P_SI3)' /\ (P_SI6)' /\ (K2)' /\ (K3)' /\ (K6)' /\ (K11)' /\ (SharedImmutable)' /\ (OneReply)' /\ (SI8)' /\ (QuarNoReg)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RD_PFrame == /\ \A i \in PInst, r \in Rq : ph'[i][r]=ph[i][r] /\ rg'[i][r]=rg[i][r]
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

           PdJrO(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])



           IVktI(m) == m.t = "hello" => m.fr \in Inst



           VawcR(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))



           njcW8(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))



           dJpcb(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])



           Y8U_7(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])



           Hdijl(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")



           AL7Oa(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)



           jjAuj(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))



           CsPNLN(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))



           wuoDNx7(m) ==
             /\ PdJrO(m)
             /\ IVktI(m)
             /\ VawcR(m)
             /\ njcW8(m)
             /\ dJpcb(m)
             /\ Y8U_7(m)
             /\ Hdijl(m)
             /\ AL7Oa(m)
             /\ jjAuj(m)
             /\ CsPNLN(m)


           \* T2M-LOCAL-VISIBILITY

           rDYgNVy(i,r) == LET p == rpg[i][r]
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



           REiDsLSLP8oTX(x) ==
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


           \* T2M-LOCAL-VISIBILITY

           z9vdCfV6ECxrA(x) ==
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


           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_Q2, RD_EQUpdate, RD_RdOpenBack, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, wuoDNx7, rDYgNVy, REiDsLSLP8oTX, z9vdCfV6ECxrA

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
<2> HIDE DEF CoreTypeOK, STypeOK, SFollow, V22_FPosted, V22_FSX, V22_FPX, V22_FSrc
<2>off. CASE ~B2
 BY ONLY <1>zMokmOdGw, <2>off, V22_SF_Off, SMTT(5) DEF sV
<2>on. CASE B2
 <3>rg. \A i \in PInst, r \in Rq : rg'[i][r]=rg[i][r]
  BY ONLY <1>zMokmOdGw, SMTT(5) DEF RD_PFrame
 <3>smapType. smap \in [PInst -> [Rq -> {0} \cup SPages]]
  BY ONLY <1>zMokmOdGw, V22_T_smap, SMTT(5)
 <3>smapEffect. smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]
  BY ONLY <1>zMokmOdGw, <2>on, V22_SF_Map, SMTT(5)
 <3>smapFrame. UNCHANGED smap
  BY ONLY <3>smapType, <3>smapEffect, <3>rg, SMTT(5)
 <3>schoiceType. schoice \in [PInst -> [Rq -> BOOLEAN]]
  BY ONLY <1>zMokmOdGw, V22_T_schoice, SMTT(5)
 <3>schoiceEffect. schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]
  BY ONLY <1>zMokmOdGw, <2>on, V22_SF_Choice, SMTT(5)
 <3>schoiceFrame. UNCHANGED schoice
  BY ONLY <3>schoiceType, <3>schoiceEffect, <3>rg, SMTT(5)
 <3>qed. QED BY ONLY <3>smapFrame, <3>schoiceFrame, SMTT(5)
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>cIrFCXuTtPxBU.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE UNCHANGED <<xsrcS,xsrcP>>
<2> HIDE DEF CoreTypeOK, STypeOK, SFollow, V22_FPosted, V22_FSX, V22_FPX, V22_FSrc
<2>off. CASE ~B2
 BY ONLY <1>cIrFCXuTtPxBU, <2>off, V22_SF_Off, SMTT(5) DEF sV
<2>on. CASE B2
 <3>pageDomain. 0 \notin Pages
  BY ONLY Sizes, SMTT(5) DEF Sizes, Pages
 <3>noPosted. \A x \in Xids : ~V22_FPosted(x)
  BY ONLY <1>cIrFCXuTtPxBU, <3>pageDomain, SMTT(5) DEF V22_FPosted
 <3>xsrcSType. xsrcS \in [Xids -> SUBSET SPages]
  BY ONLY <1>cIrFCXuTtPxBU, V22_T_xsrcS, SMTT(5)
 <3>xsrcSEffect. xsrcS'=V22_FSX
  BY ONLY <1>cIrFCXuTtPxBU, <2>on, V22_SF_SourceShared, SMTT(5)
 <3>xsrcSFrame. UNCHANGED xsrcS
  BY ONLY <3>xsrcSType, <3>xsrcSEffect, <3>noPosted, SMTT(5) DEF V22_FSX
 <3>xsrcPType. xsrcP \in [Xids -> SUBSET SPages]
  BY ONLY <1>cIrFCXuTtPxBU, V22_T_xsrcP, SMTT(5)
 <3>xsrcPEffect. xsrcP'=V22_FPX
  BY ONLY <1>cIrFCXuTtPxBU, <2>on, V22_SF_SourcePrivate, SMTT(5)
 <3>xsrcPFrame. UNCHANGED xsrcP
  BY ONLY <3>xsrcPType, <3>xsrcPEffect, <3>noPosted, SMTT(5) DEF V22_FPX
 <3>qed. QED BY ONLY <3>xsrcSFrame, <3>xsrcPFrame, SMTT(5)
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

\* T2M-END R2M0682_PdRDSharedBase


<1>y69bbnw8OExl0j.         B2 /\ SFollow => RD_EQUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_EQUpdate, RD_E2, RD_Q2, RD_Close, RD_Quarantine, RD_Posted, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dCj1oPpXLfODIy.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY ONLY <1>dCj1oPpXLfODIy, Sizes, Location, Design, <1>uaJsMuSZCFU, <1>fIPaydrEb, <1>YSvRDxZGd, <1>zMokmOdGw, <1>cIrFCXuTtPxBU, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VDsAIqq0.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,gen>>
 PROVE P_SI1'
<2> USE ONLY <1>VDsAIqq0, Sizes, Location, Design
<2>1. P_SI1
 BY SMTT(10), V21_Inv_P_SI1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. STypeOK BY <1>lQA2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF P_SI1, SI1, RD_PFrame, RD_SFrame, STypeOK, Active, SHPin, SSendReady, Sizes, Location, Design

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

<1>ueaxxwWI.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,gen>>
 PROVE HitIdentity'
<2> USE ONLY <1>ueaxxwWI, Sizes, Location, Design
<2>1. HitIdentity /\ STypeOK
 BY SMTT(10), V21_Inv_HitIdentity, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF HitIdentity, RD_PFrame, RD_SFrame, STypeOK, Active, Sizes, Location, Design

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


<1>TTpKhOymx73KMovRt1O.        
 ASSUME PinInv, SFollow, RD_PFrame, xdst' \in [Xids -> 0..NP]
 PROVE SharedImmutable'
<2> USE ONLY <1>TTpKhOymx73KMovRt1O, Sizes, Location, Design
<2>1. SharedImmutable /\ UNCHANGED spst /\ RD_SFrame
 BY <1>fIPaydrEb, <1>uaJsMuSZCFU, SMTT(10), V21_Inv_SharedImmutable, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A p \in SPages : NoWriteInto(p)'
 BY Sizes, SMTT(10), Location, Design DEF NoWriteInto, Writing, SPages, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF SharedImmutable, RD_SFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iClYwlQaVPhEdnbosn.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>iClYwlQaVPhEdnbosn, Sizes, Location, Design, SMTT(10) DEF DRecvReq, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dKYsfmWiThR9rkh.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>dKYsfmWiThR9rkh, Sizes, Location, Design
<2>1. RD_PhType /\ RD_RgType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>iClYwlQaVPhEdnbosn, Sizes, SMTT(10), Location, Design DEF DRecvReq, instV, kV, rtV, xV, RD_PFrame, PInst, DInst, Inst, NL, IsD, RD_PhType, RD_RgType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pqilHI05hK5xehelc.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE xdst' \in [Xids -> 0..NP]
<2> USE ONLY <1>pqilHI05hK5xehelc, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP] /\ rpg \in [Inst -> [Rq -> 0..NP]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>pqilHI05hK5xehelc, V22_T_rpg, V22_T_xdst, SMTT(5)

<2>2. QED BY <2>1, Sizes, SMTT(10), Location, Design DEF DRecvReq, instV, kV, rtV, xV, Pages, Sizes, Location, Design
\* T2M-END R2M0940_PdRDEffects_DRecvReq


<1>VEZqIYlmwCasIqzVdyP8YBTS.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>VEZqIYlmwCasIqzVdyP8YBTS, Sizes, Location, Design
<2>1. RD_PFrame /\ xdst' \in [Xids -> 0..NP]
 BY <1>dKYsfmWiThR9rkh, <1>pqilHI05hK5xehelc, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>TTpKhOymx73KMovRt1O, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>IaoB58V28EM4.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE SI8'
<2> USE ONLY <1>IaoB58V28EM4, Sizes, Location, Design
<2>1. UNCHANGED xsrc
 BY <1>iClYwlQaVPhEdnbosn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xk \in [Xids -> {"none","wr","rd"}] /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>IaoB58V28EM4, V22_T_xk, V22_T_xst, SMTT(5)

<2>3. RD_RdOpenBack
 BY <2>2, SMTT(10), Sizes, Location, Design DEF DRecvReq, instV, kV, rtV, xV, RD_RdOpenBack, Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>XSpO6sXnRte, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>aSvOPwPId9rB.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE P_SI1'
 BY ONLY <1>aSvOPwPId9rB, Sizes, Location, Design, <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, <1>VDsAIqq0, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ujl3nUfW3wCV.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE P_SI3'
 BY ONLY <1>Ujl3nUfW3wCV, Sizes, Location, Design, <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, <1>FPQA7M3w, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BKatujN0QChI.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE P_SI6'
 BY ONLY <1>BKatujN0QChI, Sizes, Location, Design, <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, <1>TUh8WMSa, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>s8NwrHPA0bMZqydEybEV.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE HitIdentity'
 BY ONLY <1>s8NwrHPA0bMZqydEybEV, Sizes, Location, Design, <1>dKYsfmWiThR9rkh, <1>iClYwlQaVPhEdnbosn, <1>ueaxxwWI, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1002_PdRDBatch_DRecvReq


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>laJZVswepl.         K12 <=> (\A m \in net : wuoDNx7(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>nvc1L3TxUa51Uyr5.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<rtV, instV, crep, dsucc>>
  BY ONLY <1>nvc1L3TxUa51Uyr5, Sizes, Location, Design, Design, Zenon DEF DRecvReq, DResetLedger, Sizes, Location, Design
\* T2M-END R2M1198_PdRDLegacy_PP_PdDRecvReqFrames

\* T2M-SCOPE R2M1199_PdRDLegacy_PP_PdCell_DRecvReq_GenFiltered
\* T2M-BODY R2M1199_PdRDLegacy_PP_PdCell_DRecvReq_GenFiltered
\* T2M-LOCAL-VISIBILITY

<1>gKMjz.         K8 <=> \A i \in Inst, r \in Rq : rDYgNVy(i,r)
  BY ZenonT(10), Sizes, Location, Design DEF K8, rDYgNVy, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>euFIjtPFLtHTQoq.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE IsD(j) /\ \E m \in net :
          /\ m.t = "req" /\ m.to = j /\ m.r = r /\ NewGen(j,r,m.g)
          /\ (drep' = drep \/ drep' = [drep EXCEPT ![r][m.g] = Bump(drep[r][m.g])])
  BY ONLY <1>euFIjtPFLtHTQoq, Sizes, Location, Design, Design, ZenonT(10) DEF DRecvReq, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>mB5vW8NPOnMGB6.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r
  PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
<2> USE ONLY <1>mB5vW8NPOnMGB6, Sizes, Location, Design
<2>1. K1 /\ K12
  BY SMTT(10), V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. wuoDNx7(m)
  BY <2>1, <1>laJZVswepl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. m.g \in Gens /\ m.g <= gen[r] /\ (j = hp[r][m.g] \/ j = hd[r][m.g])
  BY <2>2, SMTT(10), Sizes, Location, Design DEF wuoDNx7, PdJrO, VawcR, Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, SMTT(10), Location, Design DEF K1, IsD, PInst, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>DW9I8xbFt1rBgo.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r, NewGen(j,r,m.g)
  PROVE drep[r][m.g] = 0
<2> USE ONLY <1>DW9I8xbFt1rBgo, Sizes, Location, Design
<2>1. K8 /\ K13 /\ OneReply /\ Q1j7VI /\ nNeM /\ Mut = "none"
  BY <1>UwwC5LVwQr, Design, SMTT(10), V21_Inv_K13, V21_Inv_K8, V21_Inv_OneReply, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location DEF Safety, QLAWp, Sizes, Location, Design
<2>2. m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
  BY <1>mB5vW8NPOnMGB6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rDYgNVy(j,r) /\ drep[r][m.g] \in {0,1}
 <3>1. rDYgNVy(j,r)
  BY ONLY <1>DW9I8xbFt1rBgo, <2>1, <1>gKMjz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. drep[r][m.g] \in 0..2
  BY ONLY <1>DW9I8xbFt1rBgo, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Q1j7VI, Sizes, Location, Design
 <3>3. drep[r][m.g] <= 1
  BY ONLY <1>DW9I8xbFt1rBgo, <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
 <3>4. QED BY ONLY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. drep[r][m.g] = 1 => rg[j][r] >= m.g
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K13, nNeM, Gens, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF rDYgNVy, NewGen, nNeM, Gens, Sizes, Location, Design
\* T2M-END R2M1200_PdRDLegacy_PP_PdDRecvHistory

\* T2M-SCOPE R2M1201_PdRDLegacy_PP_PdCell_DRecvReq_K1
\* T2M-BODY R2M1201_PdRDLegacy_PP_PdCell_DRecvReq_K1
\* T2M-LOCAL-VISIBILITY

<1>OkHaBqshrpAuN.        
  ASSUME NEW r \in Rq, NEW g \in Gens, OneReply, Q1j7VI,
         drep[r][g] = 0, UNCHANGED crep,
         drep' = [drep EXCEPT ![r][g] = Bump(drep[r][g])]
  PROVE OneReply'
<2> USE ONLY <1>OkHaBqshrpAuN, Sizes, Location, Design
<2>1. drep' = [drep EXCEPT ![r][g] = 1]
  BY SMTT(10), Sizes, Location, Design DEF Bump, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF OneReply, Q1j7VI, Sizes, Location, Design
\* T2M-END R2M1115_PdRDLegacy_PP_PdOneReplyIncrement


<1>EAJmZ9BjoJYsTz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE OneReply'
<2> USE ONLY <1>EAJmZ9BjoJYsTz, Sizes, Location, Design
<2>1. OneReply /\ Q1j7VI
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_OneReply, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, Sizes, Location, Design
<2>2. UNCHANGED crep
  BY <1>nvc1L3TxUa51Uyr5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net :
          /\ IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r /\ NewGen(j,r,m.g)
          /\ (drep' = drep \/ drep' = [drep EXCEPT ![r][m.g] = Bump(drep[r][m.g])])
  BY <1>euFIjtPFLtHTQoq, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. m.g \in Gens /\ drep[r][m.g] = 0
  BY <2>3, <1>mB5vW8NPOnMGB6, <1>DW9I8xbFt1rBgo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. CASE drep' = drep
  BY <2>1, <2>2, <2>5, SMTT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
<2>6. CASE drep' # drep
  BY <2>1, <2>2, <2>3, <2>4, <2>6, <1>OkHaBqshrpAuN, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED BY <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1204_PdRDLegacy_PP_PdCell_DRecvReq_OneReply


<1>KeUX3AwuU5dZGL50.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>VnRgHUqOOVql.        
  ASSUME PinInv
  PROVE \A p \in Pages : pst[p] = "free" =>
          led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0
  BY ONLY <1>VnRgHUqOOVql, Sizes, Location, Design, SMTT(10), V21_Inv_K7, V21_Inv_KStruct DEF KStruct, K7, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>ObED76Lqd.        
  ASSUME PinInv
  PROVE \A p \in Pages : pst[p] = "shared" =>
          IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS
  BY ONLY <1>ObED76Lqd, Sizes, Location, Design, SMTT(10), V21_Inv_K7, V21_Inv_KStruct DEF KStruct, K7, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>G2emqCbzTrPaSe.        
  ASSUME PinInv
  PROVE \A p \in Pages : \A x \in led[p] : x < nx
  BY ONLY <1>G2emqCbzTrPaSe, Sizes, Location, Design, SMTT(10), V21_Inv_K4, V21_Inv_KStruct DEF KStruct, K4, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>z4BWdv.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r
  PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
        /\ m.pe = hp[r][m.g] /\ m.pe \in PInst /\ m.pe \in Inst
<2> USE ONLY <1>z4BWdv, Sizes, Location, Design
<2>1. K1 /\ K12
  BY SMTT(10), V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
  BY <1>mB5vW8NPOnMGB6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hp[r][m.g] \in PInst /\ hd[r][m.g] \in DInst
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. wuoDNx7(m)
  BY <2>1, <1>laJZVswepl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. hp[r][m.g] # j /\ hp[r][m.g] \in Inst
  BY <2>3, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF wuoDNx7, VawcR, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>TppRkuuEvQRv.        
  ASSUME PinInv
  PROVE \A p \in Pages : pst[p] = "free" =>
          \A i \in Inst, s \in KSlots : kpin[i][s] => \A e \in krs[i][s] : e[3] # p
  BY ONLY <1>TppRkuuEvQRv, Sizes, Location, Design, P_PagePoolsDisjoint, SMTT(10), V21_Inv_NoFreeUnderRead, V21_Inv_Safety DEF Safety, NoFreeUnderRead, KHeld, Sizes, Location, Design
\* T2M-END R2M1208_PdRDLegacy_PP_PdD2RecvFacts

\* T2M-SCOPE R2M1209_PdRDLegacy_PP_PdD2RecvProjection
\* T2M-BODY R2M1209_PdRDLegacy_PP_PdD2RecvProjection
\* T2M-LOCAL-VISIBILITY

<1>HfQyCD4BSreUP8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,torn,nfail,kpin,kfly,krs,crep,dsucc,pqp,xsrc,xlt,hw,hok,iv>>
  BY ONLY <1>HfQyCD4BSreUP8, Sizes, Location, Design, Design, <1>nvc1L3TxUa51Uyr5, SMTT(10) DEF DRecvReq, rtV, instV, kV, xV, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>v7DLb.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE nx' = nx \/ (nx' = nx+1 /\ Mode = "push" /\ nx \in Xids)
<2> USE ONLY <1>v7DLb, Sizes, Location, Design
<2>1. SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, Sizes, SMTT(10), Location DEF DRecvReq, xV, SHJS, Xids, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>LL7oN3v2FPmeh.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), nx' = nx
  PROVE UNCHANGED xV
<2> USE ONLY <1>LL7oN3v2FPmeh, Sizes, Location, Design
<2>1. SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, SHJS, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>xCdYilU.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW x \in Xids, PinInv, DRecvReq(j,r), x # nx
  PROVE UNCHANGED <<xr[x],xg[x],xk[x],xp[x],xd[x],xsrc[x],xdst[x],xnt[x],xst[x],xlt[x],hw[x],hok[x],iv[x]>>
<2> USE ONLY <1>xCdYilU, Sizes, Location, Design
<2>1. a1R5 /\ CXAy /\ ok5g /\ vdyX /\ C4fb /\ JjZ1PO /\ PwcfA /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, <1>HfQyCD4BSreUP8, SMTT(10), Sizes, Location DEF DRecvReq, xV, a1R5, CXAy, ok5g, vdyX, C4fb, JjZ1PO, PwcfA, PD2ZN, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>QZj3uy1ir.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), nx' = nx+1
  PROVE /\ nx \in Xids /\ Mode = "push"
        /\ xr'[nx] = r /\ xg'[nx] \in Gens /\ xg'[nx] <= gen[r]
        /\ xk'[nx] = "wr" /\ xp'[nx] = hp[r][xg'[nx]] /\ xd'[nx] = hd[r][xg'[nx]] /\ xd'[nx] = j
        /\ xnt'[nx] = NTok(r,xg'[nx]) /\ xst'[nx] = "posted"
        /\ xdst'[nx] \in Pages /\ Loc(xdst'[nx]) = j /\ pst[xdst'[nx]] = "free"
        /\ xsrc'[nx] = 0 /\ xlt'[nx] = 0 /\ hw'[nx] = "none" /\ ~hok'[nx] /\ iv'[nx] = "none"
<2> USE ONLY <1>QZj3uy1ir, Sizes, Location, Design
<2>1. K2 /\ SHJS /\ a1R5 /\ CXAy /\ ok5g /\ vdyX /\ C4fb /\ JjZ1PO /\ PwcfA /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. nx \in Xids /\ Mode = "push"
  BY <1>v7DLb, <2>1, SMTT(10), Sizes, Location, Design DEF SHJS, Sizes, Location, Design
<2>3. xsrc[nx] = 0 /\ xlt[nx] = 0 /\ hw[nx] = "none" /\ ~hok[nx] /\ iv[nx] = "none"
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, SHJS, Xids, Sizes, Location, Design
<2>4. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g] /\ m.pe = hp[r][m.g]
  BY <1>z4BWdv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY Design, <2>1, <2>2, <2>3, <2>4, <1>HfQyCD4BSreUP8, SMTT(10), Sizes, Location DEF DRecvReq, xV, SHJS, a1R5, CXAy, ok5g, vdyX, C4fb, JjZ1PO, PwcfA, PD2ZN, DResetLedger, Sizes, Location, Design
\* T2M-END R2M1209_PdRDLegacy_PP_PdD2RecvProjection

\* T2M-SCOPE R2M1210_PdRDLegacy_PP_PdD2RecvPageMasks
\* T2M-BODY R2M1210_PdRDLegacy_PP_PdD2RecvPageMasks
\* T2M-LOCAL-VISIBILITY

<1>B37skkIj1S.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, pst[p] # "free", PinInv, DRecvReq(j,r)
  PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p]>>
<2> USE ONLY <1>B37skkIj1S, Sizes, Location, Design
<2>1. OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ rO4YE /\ Bq5Edl /\ dcfPK
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, KPages, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>C9TLAUJ2.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, IsP(Loc(p)), PinInv, DRecvReq(j,r)
  PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],ptl[p],pvis[p],led[p],sfly[p],sled[p]>>
<2> USE ONLY <1>C9TLAUJ2, Sizes, Location, Design
<2>1. OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ rO4YE /\ Bq5Edl /\ dcfPK /\ Xc_ngV /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location DEF DRecvReq, IsD, IsP, xV, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, KPages, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>CrpwqNpNQlagkHS.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r)
  PROVE sfly'[p] \subseteq sled'[p]
<2> USE ONLY <1>CrpwqNpNQlagkHS, Sizes, Location, Design
<2>1. K6 /\ Xc_ngV /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K6, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY Design, <2>1, SMTT(10), Sizes, Location DEF DRecvReq, K6, Xc_ngV, h9WLgd, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>oSn7viNSyVie.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, NEW x \in Xids, PinInv, DRecvReq(j,r), x < nx
  PROVE (x \in led'[p]) <=> (x \in led[p])
<2> USE ONLY <1>oSn7viNSyVie, Sizes, Location, Design
<2>1. dcfPK /\ SHJS /\ OyyWS /\ (pst[p] = "free" => led[p] = {})
  BY <1>UwwC5LVwQr, <1>VnRgHUqOOVql, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED BY <2>1, <1>VnRgHUqOOVql, Design, SMTT(10), Sizes, Location DEF DRecvReq, dcfPK, SHJS, OyyWS, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>T1pPFrOW38bT.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, NEW x \in led'[p], PinInv, DRecvReq(j,r)
  PROVE (x \in led[p]) \/
        (x = nx /\ nx' = nx+1 /\ xr'[x] = r /\ xg'[x] \in Gens /\ xdst'[x] = p /\ pst'[p] = "priv" /\ pr'[p] = r /\ pgn'[p] = xg'[x])
<2> USE ONLY <1>T1pPFrOW38bT, Sizes, Location, Design
<2>1. SHJS /\ dcfPK /\ OyyWS /\ IwCp /\ vS7em /\ a1R5 /\ CXAy /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) => m.g \in Gens
  BY <1>z4BWdv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>VnRgHUqOOVql, Design, Sizes, SMTT(10), Location DEF DRecvReq, Xids, SHJS, dcfPK, OyyWS, IwCp, vS7em, a1R5, CXAy, JjZ1PO, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>eJ5tHaKDhB9Gki.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), nx' = nx+1
  PROVE nx \in led'[xdst'[nx]]
<2> USE ONLY <1>eJ5tHaKDhB9Gki, Sizes, Location, Design
<2>1. SHJS /\ dcfPK /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. nx \in Xids
  BY <2>1, <1>v7DLb, SMTT(10), Sizes, Location, Design DEF SHJS, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF DRecvReq, xV, SHJS, dcfPK, JjZ1PO, DResetLedger, Sizes, Location, Design
\* T2M-END R2M1210_PdRDLegacy_PP_PdD2RecvPageMasks

\* T2M-SCOPE R2M1211_PdRDLegacy_PP_PdD2RecvRecord

<1>ZpxvGReb2.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K11'
<2> HIDE DEF CoreTypeOK, STypeOK, SFollow, DRecvReq, K11
<2>old. K11
 BY ONLY <1>ZpxvGReb2, V21_Inv_K11, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<xsrc,xlt>>
 BY ONLY <1>ZpxvGReb2, <1>HfQyCD4BSreUP8, Sizes, Location, Design, SMTT(5)
<2>next. nx'=nx \/ (nx'=nx+1 /\ Mode="push" /\ nx \in Xids)
 BY ONLY <1>ZpxvGReb2, <1>v7DLb, Sizes, Location, Design, SMTT(5)
<2>each. ASSUME NEW x \in Xids, x<nx', xsrc'[x] \in Pages, x \in led'[xsrc'[x]]
         PROVE ptl'[xsrc'[x]]=xlt'[x] /\ sfly'[xsrc'[x]]={} /\ sled'[xsrc'[x]]={}
 <3>page. xsrc[x] \in Pages
  BY ONLY <2>each, <2>frame, SMTT(5)
 <3>oldCase. CASE x<nx
  <4>member. x \in led[xsrc[x]]
   BY ONLY <1>ZpxvGReb2, <2>each, <2>frame, <3>page, <3>oldCase, <1>oSn7viNSyVie, Sizes, Location, Design, SMTT(5)
  <4>prior. ptl[xsrc[x]]=xlt[x] /\ sfly[xsrc[x]]={} /\ sled[xsrc[x]]={}
   BY ONLY <2>old, <2>each, <3>page, <3>oldCase, <4>member, SMTT(5) DEF K11
  <4>notFree. pst[xsrc[x]] # "free"
   BY ONLY <1>ZpxvGReb2, <3>page, <4>member, <1>VnRgHUqOOVql, Sizes, Location, Design, SMTT(5)
  <4>notShared. pst[xsrc[x]] # "shared"
   BY ONLY <1>ZpxvGReb2, <3>page, <4>member, <1>ObED76Lqd, Sizes, Location, Design, SMTT(5)
  <4>ptl. ptl'[xsrc[x]]=ptl[xsrc[x]]
   BY ONLY <1>ZpxvGReb2, <3>page, <4>notFree, <1>B37skkIj1S, Sizes, Location, Design, SMTT(5)
  <4>masks. UNCHANGED <<sfly[xsrc[x]],sled[xsrc[x]]>>
   BY ONLY <1>ZpxvGReb2, <2>frame, <3>page, <4>notShared, V22_T_sfly, V22_T_sled, SMTT(10) DEF DRecvReq
  <4>qed. QED BY ONLY <2>frame, <4>prior, <4>ptl, <4>masks, SMTT(5)
 <3>newCase. CASE ~(x<nx)
  <4>atNext. x=nx /\ nx'=nx+1
   BY ONLY <1>ZpxvGReb2, <2>each, <2>next, <3>newCase, V22_T_nx, Sizes, SMTT(5) DEF Xids, Sizes
  <4>zero. xsrc'[x]=0
   BY ONLY <1>ZpxvGReb2, <4>atNext, <1>QZj3uy1ir, Sizes, Location, Design, SMTT(5)
  <4>qed. QED BY ONLY <2>each, <4>zero, Sizes, SMTT(5) DEF Pages, Sizes
 <3>qed. QED BY ONLY <3>oldCase, <3>newCase, SMTT(5)
<2>qed. QED BY ONLY <2>each, SMTT(5) DEF K11

<1>plO1mzxt.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K2'
<2> USE ONLY <1>plO1mzxt, Sizes, Location, Design
<2>1. K2 /\ K2 /\ SHJS /\ UNCHANGED gen
  BY <1>UwwC5LVwQr, <1>HfQyCD4BSreUP8, SMTT(10), V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. nx' = nx \/ (nx' = nx+1 /\ Mode = "push" /\ nx \in Xids)
  BY <1>v7DLb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW x \in Xids PROVE REiDsLSLP8oTX(x)'
<3>1. CASE nx' = nx
  BY <3>1, <2>1, <1>HfQyCD4BSreUP8, <1>LL7oN3v2FPmeh, SMTT(10), Sizes, Location, Design DEF K2, REiDsLSLP8oTX, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, xV, Sizes, Location, Design
<3>2. CASE nx' # nx /\ x # nx
<4>1. UNCHANGED <<xr[x],xg[x],xk[x],xp[x],xd[x],xsrc[x],xdst[x],xnt[x],xst[x],xlt[x],hw[x],hok[x],iv[x]>>
  BY <3>2, <1>xCdYilU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. (x < nx <=> x < nx') /\ (x >= nx <=> x >= nx')
  BY <2>1, <2>2, <3>2, Sizes, SMTT(10), Location, Design DEF SHJS, Xids, Sizes, Location, Design
<4>3. QED BY <2>1, <4>1, <4>2, <1>HfQyCD4BSreUP8, SMTT(10), Sizes, Location, Design DEF K2, REiDsLSLP8oTX, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, InitPage, ExpPage, InitInst, ExpInst, InFl, Sizes, Location, Design
<3>3. CASE nx' # nx /\ x = nx
<4>1. nx' = nx+1
  BY <2>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. QED BY <2>1, <2>2, <3>3, <4>1, <1>QZj3uy1ir, <1>HfQyCD4BSreUP8, Sizes, SMTT(10), Location, Design DEF K2, REiDsLSLP8oTX, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, InitPage, ExpPage, InitInst, ExpInst, InFl, SHJS, Xids, Sizes, Location, Design
<3>4. QED BY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K2, REiDsLSLP8oTX, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, Sizes, Location, Design
\* T2M-END R2M1218_PdRDLegacy_PP_PdD2DRecvReq_K2


<1>syPxpgCg.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K3'
<2> USE ONLY <1>syPxpgCg, Sizes, Location, Design
<2>1. K3 /\ K2 /\ SHJS /\ UNCHANGED gen
  BY <1>UwwC5LVwQr, <1>HfQyCD4BSreUP8, SMTT(10), V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. nx' = nx \/ (nx' = nx+1 /\ Mode = "push" /\ nx \in Xids)
  BY <1>v7DLb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW x \in Xids PROVE z9vdCfV6ECxrA(x)'
<3>1. CASE nx' = nx
  BY <3>1, <2>1, <1>HfQyCD4BSreUP8, <1>LL7oN3v2FPmeh, SMTT(10), Sizes, Location, Design DEF K3, z9vdCfV6ECxrA, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, xV, Sizes, Location, Design
<3>2. CASE nx' # nx /\ x # nx
<4>1. UNCHANGED <<xr[x],xg[x],xk[x],xp[x],xd[x],xsrc[x],xdst[x],xnt[x],xst[x],xlt[x],hw[x],hok[x],iv[x]>>
  BY <3>2, <1>xCdYilU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. x < nx <=> x < nx'
  BY <2>1, <2>2, <3>2, Sizes, SMTT(10), Location, Design DEF SHJS, Xids, Sizes, Location, Design
<4>3. QED BY <2>1, <4>1, <4>2, <1>HfQyCD4BSreUP8, SMTT(10), Sizes, Location, Design DEF K3, z9vdCfV6ECxrA, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, InitPage, ExpPage, InitInst, ExpInst, InFl, Sizes, Location, Design
<3>3. CASE nx' # nx /\ x = nx
<4>1. nx' = nx+1
  BY <2>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. QED BY <2>1, <2>2, <3>3, <4>1, <1>QZj3uy1ir, <1>HfQyCD4BSreUP8, Sizes, SMTT(10), Location, Design DEF K3, z9vdCfV6ECxrA, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, InitPage, ExpPage, InitInst, ExpInst, InFl, SHJS, Xids, Sizes, Location, Design
<3>4. QED BY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>3, SMTT(10), Sizes, Location, Design DEF K3, z9vdCfV6ECxrA, InitPage, ExpPage, InitInst, ExpInst, InFl, CqeHw, Sizes, Location, Design
\* T2M-END R2M1219_PdRDLegacy_PP_PdD2DRecvReq_K3


<1>WMpy6E6p.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K4'
<2> USE ONLY <1>WMpy6E6p, Sizes, Location, Design
<2>1. K2 /\ K4 /\ dcfPK /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K2, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. ASSUME NEW x \in Xids, x < nx'
       PROVE /\ (x \in led'[ExpPage(x)']) <=> (xst'[x] = "posted")
             /\ InitPage(x)' \in Pages => ((x \in led'[InitPage(x)']) <=> (iv'[x] \in {"reg","posted","failret"}))
<3>1. CASE x < nx
<4>1. UNCHANGED <<xr[x],xg[x],xk[x],xp[x],xd[x],xsrc[x],xdst[x],xst[x],iv[x]>>
  BY <3>1, <1>xCdYilU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. ExpPage(x) \in Pages
  BY <2>1, <3>1, Sizes, SMTT(10), Location, Design DEF K2, SHJS, Xids, Sizes, Location, Design
<4>3. QED BY <2>1, <2>2, <3>1, <4>1, <4>2, <1>oSn7viNSyVie, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, InitPage, Sizes, Location, Design
<3>2. CASE x >= nx
<4>1. x = nx /\ nx' = nx+1
  BY <2>1, <2>2, <3>2, <1>v7DLb, Sizes, SMTT(10), Location, Design DEF SHJS, Xids, Sizes, Location, Design
<4>2. QED BY <4>1, <1>QZj3uy1ir, <1>eJ5tHaKDhB9Gki, Sizes, SMTT(10), Location, Design DEF ExpPage, InitPage, Pages, Sizes, Location, Design
<3>3. QED BY <2>1, <3>1, <3>2, Sizes, SMTT(10), Location, Design DEF SHJS, Xids, Sizes, Location, Design
<2>3. ASSUME NEW p \in Pages, NEW x \in led'[p]
       PROVE x < nx' /\ (p = ExpPage(x)' \/ p = InitPage(x)')
<3>1. CASE x \in led[p]
<4>1. x \in Xids /\ x < nx /\ (p = ExpPage(x) \/ p = InitPage(x))
  BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF K4, dcfPK, Sizes, Location, Design
<4>2. QED BY <2>1, <4>1, <1>xCdYilU, <1>v7DLb, Sizes, SMTT(10), Location, Design DEF ExpPage, InitPage, SHJS, Xids, Sizes, Location, Design
<3>2. CASE x \notin led[p]
<4>1. x = nx /\ nx' = nx+1 /\ xdst'[x] = p
  BY <3>2, <1>T1pPFrOW38bT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>2. QED BY <2>1, <4>1, <1>QZj3uy1ir, Sizes, SMTT(10), Location, Design DEF ExpPage, SHJS, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K4, Sizes, Location, Design
\* T2M-END R2M1220_PdRDLegacy_PP_PdD2DRecvReq_K4

\* T2M-SCOPE R2M1221_PdRDLegacy_PP_PdD2DRecvReq_K5

<1>U9kxbtYs.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE K6'
<2> USE ONLY <1>U9kxbtYs, Sizes, Location, Design
<2>1. K6 /\ h9WLgd /\ Xc_ngV /\ OyyWS /\ IwCp /\ vS7em /\ UNCHANGED gen
  BY <1>UwwC5LVwQr, <1>HfQyCD4BSreUP8, SMTT(10), V21_Inv_K6, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. \A p \in Pages : sfly'[p] \subseteq sled'[p]
  BY <1>CrpwqNpNQlagkHS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) => m.g \in Gens /\ m.g <= gen[r]
  BY <1>z4BWdv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in Pages, NEW t \in sled'[p]
       PROVE t[2] <= gen'[t[1]] /\ (OwnedBy(p,t[1],t[2])' \/ (pst'[p] = "shared" /\ IsD(Loc(p))))
<3>1. CASE t \in sled[p]
<4>1. pst[p] # "free" /\ t[2] <= gen[t[1]] /\ (OwnedBy(p,t[1],t[2]) \/ (pst[p] = "shared" /\ IsD(Loc(p))))
  BY <2>1, <3>1, <1>VnRgHUqOOVql, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
<4>2. QED BY <2>1, <4>1, <1>B37skkIj1S, SMTT(10), Sizes, Location, Design DEF OwnedBy, Sizes, Location, Design
<3>2. CASE t \notin sled[p]
  BY Design, <2>1, <2>3, <2>4, <3>2, SMTT(10), Sizes, Location DEF DRecvReq, h9WLgd, OyyWS, Tag, DResetLedger, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
\* T2M-END R2M1222_PdRDLegacy_PP_PdD2DRecvReq_K6


<1>vBHjEzpGtYGODie.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE QuarNoReg'
<2> USE ONLY <1>vBHjEzpGtYGODie, Sizes, Location, Design
<2>1. QuarNoReg /\ UNCHANGED iv
  BY <1>HfQyCD4BSreUP8, SMTT(10), V21_Inv_QuarNoReg, V21_Inv_Safety, Sizes, Location, Design DEF Safety, Sizes, Location, Design
<2>2. \A p \in Pages : IsP(Loc(p)) => UNCHANGED <<pst[p],led[p]>>
  BY <1>C9TLAUJ2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
\* T2M-END R2M1229_PdRDLegacy_PP_PdD2DRecvReq_QuarNoReg

\* T2M-SCOPE R2M1230_PdRDLegacy_PP_PdD2DRecvReq_S1

<1>WEy2nbyfGI.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K2'
  BY ONLY <1>WEy2nbyfGI, Sizes, Location, Design, <1>plO1mzxt, V21_Inv_K2 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>qLfGYwiSb5.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K3'
  BY ONLY <1>qLfGYwiSb5, Sizes, Location, Design, <1>syPxpgCg, V21_Inv_K3 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>g2HMA2UNyI.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K4'
  BY ONLY <1>g2HMA2UNyI, Sizes, Location, Design, <1>WMpy6E6p, V21_Inv_K4 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>AY3yv3leuF.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K6'
  BY ONLY <1>AY3yv3leuF, Sizes, Location, Design, <1>U9kxbtYs, V21_Inv_K6 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>gZBSuV6utQ1.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE K11'
  BY ONLY <1>gZBSuV6utQ1, Sizes, Location, Design, <1>ZpxvGReb2, V21_Inv_K11 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>no1YyU4WwPRHm6Qh.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE OneReply'
  BY ONLY <1>no1YyU4WwPRHm6Qh, Sizes, Location, Design, <1>EAJmZ9BjoJYsTz, V21_Inv_OneReply DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>r8Tt5q8dbWnd4ZhV1.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>r8Tt5q8dbWnd4ZhV1, Sizes, Location, Design, <1>vBHjEzpGtYGODie, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1233_PdRDLegacy_PdPAgg_DRecvReq


<1> QED BY <1>g2HMA2UNyI, <1>s8NwrHPA0bMZqydEybEV, <1>aSvOPwPId9rB, <1>Ujl3nUfW3wCV, <1>BKatujN0QChI, <1>WEy2nbyfGI, <1>qLfGYwiSb5, <1>AY3yv3leuF, <1>gZBSuV6utQ1, <1>VEZqIYlmwCasIqzVdyP8YBTS, <1>no1YyU4WwPRHm6Qh, <1>IaoB58V28EM4, <1>r8Tt5q8dbWnd4ZhV1, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_DRecvReq SHA fea209ec1b20d1e5419d4c0cc0b2a097176870dfd2c60e0633caecb5ed8395d6
USE DEF ShapeReqPeers, Shape_T_nx
HIDE DEF P_PagePoolsDisjoint, Part_DRecvReq_04_02, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_OneReply, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_QuarNoReg, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SharedImmutable, V21_Inv_TypeOK, V21_SFollowOff, V22_SF_Choice, V22_SF_Map, V22_SF_Off, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_T_krs, V22_T_nx, V22_T_ph, V22_T_rg, V22_T_rpg, V22_T_schoice, V22_T_sfly, V22_T_sled, V22_T_smap, V22_T_xdst, V22_T_xk, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
LEMMA ShapeEffect_DRecvReq ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Design, DRecvReq(j,r)
 PROVE \E m \in net : m.t="req" /\ net' \subseteq net
 \cup {Msg("reply",j,0,r,m.g,0,0,0,FALSE),Msg("abort",j,m.pe,r,m.g,0,0,0,FALSE)}
 \cup {Msg("dinfo",j,m.pe,r,m.g,0,p,0,FALSE) : p \in Pages}
 \cup (IF nx<=MX THEN {Msg("dinfo",j,m.pe,r,m.g,nx,p,0,FALSE) : p \in Pages} ELSE {})
 BY ONLY DRecvReq(j,r), Sizes, Design, SMTT(5) DEF DRecvReq, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_DRecvReq ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Design, IndInv, MessageShape, DRecvReq(j,r)
 PROVE MessageShape'
<1>1. \E m \in net : m.t="req" /\ net' \subseteq net
 \cup {Msg("reply",j,0,r,m.g,0,0,0,FALSE),Msg("abort",j,m.pe,r,m.g,0,0,0,FALSE)}
 \cup {Msg("dinfo",j,m.pe,r,m.g,0,p,0,FALSE) : p \in Pages}
 \cup (IF nx<=MX THEN {Msg("dinfo",j,m.pe,r,m.g,nx,p,0,FALSE) : p \in Pages} ELSE {})
 BY ONLY Sizes, Design, DRecvReq(j,r), ShapeEffect_DRecvReq
<1>2. nx \in 1..(MX + 1)
 BY ONLY IndInv, Shape_T_nx
<1>3. QED
 BY ONLY <1>1, <1>2, IndInv, MessageShape, Sizes, ShapeReqPeers, SMTT(10)
 DEF MessageShape, Msg, MsgT, Sizes, Rq, Gens, Xids, Pages, Inst, NL, PInst, DInst

\* Complete original body PdDomain_DRecvReq SHA ed8a2f8cf5e75a8741913e591e922ae7f40e89905ee2bb80eff6514ed573b691
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_DRecvReq, ShapeReqPeers, Shape_T_nx
THEOREM DomainKeep_DRecvReq ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, DRecvReq(j,r)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. \E m \in net : m.t="req" /\ net' \subseteq net
 \cup {Msg("reply",j,0,r,m.g,0,0,0,FALSE),Msg("abort",j,m.pe,r,m.g,0,0,0,FALSE)}
 \cup {Msg("dinfo",j,m.pe,r,m.g,0,p,0,FALSE) : p \in Pages}
 \cup (IF nx<=MX THEN {Msg("dinfo",j,m.pe,r,m.g,nx,p,0,FALSE) : p \in Pages} ELSE {})
 BY ONLY Sizes, Location, Design, PinInv, DRecvReq(j,r), ShapeEffect_DRecvReq
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_DRecvReq_05 SHA 556631f2b71efd989b5e0bcd122b36d973dbd01449ccbe7c68d5bd34addfd006
USE DEF PositiveNatFact, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K12, V21_Inv_K14, V21_Inv_K2, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_Sentry, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_DRecvReq, V21_Inv_MsgXDomain
THEOREM Group_DRecvReq_05 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE (PrivateMapOwner)' /\ (EntryQuarantineDisjoint)' /\ (S2)' /\ (K14)' /\ (S3)' /\ (S4)' /\ (GenFiltered)' /\ (ReplyTruth)' /\ (P_B2OffInit)' /\ (MsgXDomain)'
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

           PdJrO(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])



           IVktI(m) == m.t = "hello" => m.fr \in Inst



           VawcR(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))



           njcW8(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))



           dJpcb(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])



           Y8U_7(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])



           Hdijl(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")



           AL7Oa(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)



           jjAuj(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))



           CsPNLN(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))



           wuoDNx7(m) ==
             /\ PdJrO(m)
             /\ IVktI(m)
             /\ VawcR(m)
             /\ njcW8(m)
             /\ dJpcb(m)
             /\ Y8U_7(m)
             /\ Hdijl(m)
             /\ AL7Oa(m)
             /\ jjAuj(m)
             /\ CsPNLN(m)


           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Ex6xsGb, ez8hZbQN7k, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, wuoDNx7

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

<1>IGL3qfJM.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE EntryQuarantineDisjoint'
<2> HIDE DEF SFollow, CoreTypeOK, STypeOK
<2>old. EntryQuarantineDisjoint
 BY ONLY <1>IGL3qfJM, V21_Inv_EntryQuarantineDisjoint, Sizes, Location, Design, SMTT(5)
<2>zero. 0 \notin Pages
 BY ONLY Sizes, SMTT(5) DEF Pages, Sizes
<2> DEFINE DQ_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0
           DQ_Src(x) == IF DQ_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0
           DQ_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}
           DQ_Quarantine(x) == x \in sentry /\ ~DQ_Close(x) /\
             ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))
           DQ_SX == [x \in Xids |-> IF DQ_Posted(x) THEN
             (IF DQ_Src(x) \in SPages /\ spst[DQ_Src(x)]="shared" THEN {DQ_Src(x)} ELSE {}) ELSE xsrcS[x]]
           DQ_E == (sentry \cup {x \in Xids : DQ_Posted(x)}) \ {x \in Xids : DQ_Close(x) \/ DQ_Quarantine(x)}
           DQ_Q == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
             UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : DQ_Quarantine(x)}})
<2> HIDE DEF DQ_Posted, DQ_Src, DQ_Close, DQ_Quarantine, DQ_SX, DQ_E, DQ_Q
<2>off. CASE ~B2
 BY ONLY <2>off, SMTT(5) DEF EntryQuarantineDisjoint
<2>on. CASE B2
 <3>noNew. \A x \in Xids : ~DQ_Posted(x)
  BY ONLY <1>IGL3qfJM, <2>zero, SMTT(5) DEF DQ_Posted
 <3>sentry. sentry'=DQ_E
  BY ONLY <1>IGL3qfJM, <2>on, V22_SF_Sentry, SMTT(5)
  DEF V22_SF_Sentry, V22_FE2, V22_FPosted, V22_FClose, V22_FQuarantine, DQ_E, DQ_Posted, DQ_Close, DQ_Quarantine
 <3>source. xsrcS'=DQ_SX
  BY ONLY <1>IGL3qfJM, <2>on, V22_SF_SourceShared, SMTT(5)
  DEF V22_SF_SourceShared, V22_FSX, V22_FPosted, V22_FSrc, DQ_SX, DQ_Posted, DQ_Src
 <3>squar. squar'=DQ_Q
  BY ONLY <1>IGL3qfJM, <2>on, V22_SF_Squar, SMTT(5)
  DEF V22_SF_Squar, V22_FQ2, V22_FQuarantine, V22_FClose, DQ_Q, DQ_Quarantine, DQ_Close
 <3>type. sentry \subseteq Xids
  BY ONLY <1>IGL3qfJM, V22_T_sentry, SMTT(5)
 <3>member. \A x \in sentry' : x \in sentry /\ x \in Xids /\ ~DQ_Quarantine(x)
  BY ONLY <3>noNew, <3>sentry, <3>type, SMTT(5) DEF DQ_E
 <3>each. ASSUME NEW x \in sentry', NEW p \in xsrcS'[x]
          PROVE <<x,p>> \notin squar'
  <4>oldX. x \in sentry /\ x \in Xids /\ ~DQ_Quarantine(x)
   BY ONLY <3>member, <3>each, SMTT(5)
  <4>oldP. p \in xsrcS[x]
   BY ONLY <3>noNew, <3>source, <3>each, <4>oldX, SMTT(5) DEF DQ_SX
  <4>oldPair. <<x,p>> \notin squar
   BY ONLY <2>old, <2>on, <4>oldX, <4>oldP, SMTT(5) DEF EntryQuarantineDisjoint
  <4>qed. QED BY ONLY <3>squar, <4>oldX, <4>oldPair, SMTT(5) DEF DQ_Q
 <3>qed. QED BY ONLY <2>on, <3>each, SMTT(5) DEF EntryQuarantineDisjoint
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

<1>vx9OnCyVIC.        
 PinInv => \A x \in Xids : xk[x] # "none" => xp[x] \in PInst /\ xd[x] \in DInst
<2>1. PinInv => K1 /\ K2 BY V21_Inv_K1, V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K1, K2, Sizes, Location, Design


<1>V0zuf28qooBFXsB.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
 PROVE ez8hZbQN7k /\ UNCHANGED xsrc
<2> HIDE DEF DRecvReq, ez8hZbQN7k, CoreTypeOK, STypeOK
<2>guard. IsD(j)
 BY ONLY <1>V0zuf28qooBFXsB, ZenonT(5) DEF DRecvReq
<2>srcFrame. UNCHANGED xsrc
 BY ONLY <1>V0zuf28qooBFXsB, ZenonT(5) DEF DRecvReq, xV
<2>rgEffect. \E m \in net : rg'=[rg EXCEPT ![j][r]=m.g]
 BY ONLY <1>V0zuf28qooBFXsB, ZenonT(5) DEF DRecvReq
<2>phEffect. ph'=[ph EXCEPT ![j][r]="run"] \/
             ph'=[ph EXCEPT ![j][r]="wait"] \/
             ph'=[ph EXCEPT ![j][r]="end"]
 BY ONLY <1>V0zuf28qooBFXsB, ZenonT(5) DEF DRecvReq
<2>types. ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]
 BY ONLY <1>V0zuf28qooBFXsB, V22_T_ph, V22_T_rg, SMTT(5)
<2>sizes. NPI \in Nat \ {0} /\ NDI \in Nat \ {0}
 BY ONLY Sizes, ZenonT(5) DEF Sizes
<2>integers. NPI \in Int /\ NDI \in Int /\ NDI >= 1
 BY ONLY <2>sizes, PositiveNatFact, SMTT(5)
<2>other. \A i \in PInst : i \in Inst /\ i # j
 BY ONLY <1>V0zuf28qooBFXsB, <2>guard, <2>integers, SMTT(5) DEF PInst, Inst, NL, IsD
<2>phPoint. \A i \in PInst,u \in Rq : ph'[i][u]=ph[i][u]
 BY ONLY <2>phEffect, <2>types, <2>other, SMTT(5)
<2>rgPoint. \A i \in PInst,u \in Rq : rg'[i][u]=rg[i][u]
 BY ONLY <2>rgEffect, <2>types, <2>other, SMTT(5)
<2>qed. QED BY ONLY <2>srcFrame, <2>phPoint, <2>rgPoint, SMTT(5) DEF ez8hZbQN7k


<1>u152lM2dlEYDyRb2kEYr1lSoiaejgx8tx.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r) /\ SFollow
 PROVE EntryQuarantineDisjoint'
 BY ONLY <1>u152lM2dlEYDyRb2kEYr1lSoiaejgx8tx, Sizes, Location, Design, <1>V0zuf28qooBFXsB, <1>IGL3qfJM DEF Sizes, Location, Design


<1>QUkIuvcAOQjhHTEwieNCdjPN3.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r) /\ SFollow
 PROVE PrivateMapOwner'
 BY ONLY <1>QUkIuvcAOQjhHTEwieNCdjPN3, Sizes, Location, Design, <1>V0zuf28qooBFXsB, <1>YccZP1lf DEF Sizes, Location, Design


<1>WxA6Mt0ILu1xl38MiY.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>WxA6Mt0ILu1xl38MiY, Sizes, Location, Design, DomainKeep_DRecvReq, SMTT(5)
\* T2M-END R2M0281_PdPDomain_DRecvReq


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


<1>BBQUQLHXJe.        
 ReplyTruth /\ UNCHANGED <<crep, dsucc>> => ReplyTruth'
 BY IsaT(10), Sizes, Location, Design DEF ReplyTruth, Sizes, Location, Design
\* T2M-END R2M0349_PdPF_ReplyTruth


<1>yYI.        
 K14 /\ UNCHANGED <<gen, kfly, kpin, krs>> => K14'
 BY IsaT(10), Sizes, Location, Design DEF K14, Sizes, Location, Design
\* T2M-END R2M0355_PdPF_K14


<1>j4VowZfVpQyBnd9u.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE UNCHANGED <<alive, crep, dsucc, gen, kfly, kpin, krs, nfail, torn>>
 BY ONLY <1>j4VowZfVpQyBnd9u, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF DRecvReq, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>C5D3ds62dvl8.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE K14'
<2> USE ONLY <1>C5D3ds62dvl8, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>j4VowZfVpQyBnd9u, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AXOugdh84AP.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE S3'
<2> USE ONLY <1>AXOugdh84AP, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>j4VowZfVpQyBnd9u, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>E9jMVevQoEu.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE S4'
<2> USE ONLY <1>E9jMVevQoEu, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>j4VowZfVpQyBnd9u, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VXybZl55AEBTr1uSC4r.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>VXybZl55AEBTr1uSC4r, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>j4VowZfVpQyBnd9u, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0371_PdPFrames_DRecvReq


<1>q2Vgl1BhbPZNYXU6YC.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>q2Vgl1BhbPZNYXU6YC, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0465_PdPOff_DRecvReq


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>laJZVswepl.         K12 <=> (\A m \in net : wuoDNx7(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Jy0Yhh.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1110_PdRDLegacy_PP_PdMsgBase


<1>If9WIcvqArDXsccwr.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE GenFiltered'
<2> USE ONLY <1>If9WIcvqArDXsccwr, Sizes, Location, Design
<2>1. GenFiltered /\ qvLUP /\ nNeM /\ Mut = "none"
  BY <1>UwwC5LVwQr, Design, SMTT(10), V21_Inv_GenFiltered, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location DEF Safety, QLAWp, Sizes, Location, Design
<2>2. PICK m \in net : NewGen(j,r,m.g) /\ gbad' = (gbad \/ (ph[j][r] = "end" /\ m.g <= rg[j][r]))
  BY Design, ZenonT(10), Sizes, Location DEF DRecvReq, DResetLedger, Sizes, Location, Design
<2>3. m.g \in 0..MG /\ rg[j][r] \in 0..MG
  BY <2>1, <2>2, <1>Jy0Yhh, Sizes, SMTT(10), Location, Design DEF qvLUP, nNeM, Sizes, Location, Design
<2>4. ~(ph[j][r] = "end" /\ m.g <= rg[j][r])
  BY <2>1, <2>2, <2>3, Sizes, SMTT(10), Location, Design DEF NewGen, Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF GenFiltered, Sizes, Location, Design
\* T2M-END R2M1199_PdRDLegacy_PP_PdCell_DRecvReq_GenFiltered


<1>BXyH9j1U0fhI.        
  ASSUME NEW rr, NEW gg, S2, a1R5, CXAy, SHJS, nx <= MX,
         \A x \in Xids : x < nx => xr[x] # rr \/ xg[x] # gg,
         nx' = nx + 1, xr' = [xr EXCEPT ![nx] = rr], xg' = [xg EXCEPT ![nx] = gg]
  PROVE S2'
<2> USE ONLY <1>BXyH9j1U0fhI, Sizes, Location, Design
<2>1. nx \in Xids
  BY Sizes, SMTT(10), Location, Design DEF SHJS, Xids, Sizes, Location, Design
<2>2. SUFFICES ASSUME NEW x1 \in Xids, NEW x2 \in Xids,
                     x1 < nx', x2 < nx', x1 # x2
                PROVE xr'[x1] # xr'[x2] \/ xg'[x1] # xg'[x2]
  BY SMTT(10), Sizes, Location, Design DEF S2, Sizes, Location, Design
<2>3. x1 <= nx /\ x2 <= nx
  BY <2>2, Sizes, SMTT(10), Location, Design DEF Xids, SHJS, Sizes, Location, Design
<2>4. CASE x1 = nx
  BY <2>1, <2>2, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF a1R5, CXAy, Xids, SHJS, Sizes, Location, Design
<2>5. CASE x2 = nx
  BY <2>1, <2>2, <2>3, <2>5, Sizes, SMTT(10), Location, Design DEF a1R5, CXAy, Xids, SHJS, Sizes, Location, Design
<2>6. CASE x1 # nx /\ x2 # nx
  BY <2>1, <2>2, <2>3, <2>6, Sizes, SMTT(10), Location, Design DEF S2, a1R5, CXAy, Xids, SHJS, Sizes, Location, Design
<2>7. QED BY <2>4, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1205_PdRDLegacy_PP_PdFreshXferUnique


<1>NMaNUkyKaDVP4Bz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE IsD(j) /\ \E m \in net :
          /\ m.t = "req" /\ m.to = j /\ m.r = r /\ NewGen(j,r,m.g)
          /\ ((UNCHANGED <<nx,xr,xg>>) \/
             (Mode = "push" /\ nx <= MX /\ nx' = nx + 1 /\ xr' = [xr EXCEPT ![nx] = r] /\ xg' = [xg EXCEPT ![nx] = m.g]))
  BY ONLY <1>NMaNUkyKaDVP4Bz, Sizes, Location, Design, Design, ZenonT(10) DEF DRecvReq, xV, DResetLedger, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>xrhPBm3x.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE S2'
<2> USE ONLY <1>xrhPBm3x, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K12 /\ S1 /\ S2 /\ SHJS /\ a1R5 /\ CXAy /\ nNeM /\ Mut = "none"
  BY <1>UwwC5LVwQr, Design, SMTT(10), V21_Inv_K1, V21_Inv_K12, V21_Inv_K2, V21_Inv_S1, V21_Inv_S2, V21_Inv_TypeOK, Sizes, Location DEF QLAWp, Sizes, Location, Design
<2>2. PICK m \in net :
         /\ IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r /\ NewGen(j,r,m.g)
         /\ ((UNCHANGED <<nx,xr,xg>>) \/
            (Mode = "push" /\ nx <= MX /\ nx' = nx + 1 /\ xr' = [xr EXCEPT ![nx] = r] /\ xg' = [xg EXCEPT ![nx] = m.g]))
  BY <1>NMaNUkyKaDVP4Bz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. wuoDNx7(m)
  BY <2>1, <1>laJZVswepl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. m.g \in Gens /\ m.g <= gen[r] /\ (j = hp[r][m.g] \/ j = hd[r][m.g])
  BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF wuoDNx7, PdJrO, VawcR, Sizes, Location, Design
<2>5. j = hd[r][m.g]
  BY <2>1, <2>2, <2>4, Sizes, SMTT(10), Location, Design DEF K1, IsD, PInst, Sizes, Location, Design
<2>6. CASE UNCHANGED <<nx,xr,xg>>
  BY <2>1, <2>6, SMTT(10), Sizes, Location, Design DEF S2, Sizes, Location, Design
<2>7. CASE ~(UNCHANGED <<nx,xr,xg>>)
  <3>1. Mode = "push" /\ nx <= MX /\ nx' = nx + 1
          /\ xr' = [xr EXCEPT ![nx] = r] /\ xg' = [xg EXCEPT ![nx] = m.g]
    BY <2>2, <2>7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <3>2. \A x \in Xids : x < nx => xr[x] # r \/ xg[x] # m.g
    <4>1. SUFFICES ASSUME NEW x \in Xids, x < nx, xr[x] = r, xg[x] = m.g PROVE FALSE
      BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
    <4>2. xk[x] = "wr" /\ xd[x] = j
      BY <2>1, <2>5, <3>1, <4>1, Sizes, SMTT(10), Location, Design DEF K2, SHJS, Xids, Sizes, Location, Design
    <4>3. ExpInst(x) = j
      BY <4>2, SMTT(10), Sizes, Location, Design DEF ExpInst, Sizes, Location, Design
    <4>4. ph[j][r] # "none" /\ rg[j][r] >= m.g
      BY <2>1, <4>1, <4>3, SMTT(10), Sizes, Location, Design DEF S1, Sizes, Location, Design
    <4>5. QED
      BY <2>1, <2>2, <2>4, <4>4, Sizes, SMTT(10), Location, Design DEF NewGen, nNeM, Gens, Sizes, Location, Design
  <3>3. QED BY <2>1, <3>1, <3>2, <1>BXyH9j1U0fhI, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>8. QED BY <2>6, <2>7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1206_PdRDLegacy_PP_PdCell_DRecvReq_S2


<1>FkZiMJ6A6T.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE S2'
  BY ONLY <1>FkZiMJ6A6T, Sizes, Location, Design, <1>xrhPBm3x, V21_Inv_S2 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>x58EJ5eSrdAlyCOXapj.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), SFollow
  PROVE GenFiltered'
  BY ONLY <1>x58EJ5eSrdAlyCOXapj, Sizes, Location, Design, <1>If9WIcvqArDXsccwr, V21_Inv_GenFiltered DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>QUkIuvcAOQjhHTEwieNCdjPN3, <1>u152lM2dlEYDyRb2kEYr1lSoiaejgx8tx, <1>FkZiMJ6A6T, <1>C5D3ds62dvl8, <1>AXOugdh84AP, <1>E9jMVevQoEu, <1>x58EJ5eSrdAlyCOXapj, <1>VXybZl55AEBTr1uSC4r, <1>q2Vgl1BhbPZNYXU6YC, <1>WxA6Mt0ILu1xl38MiY, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_DRecvReq_01_01, Part_DRecvReq_01_02, Part_DRecvReq_02_01, Part_DRecvReq_02_02, Part_DRecvReq_03_01, Part_DRecvReq_03_02, Part_DRecvReq_04_01, Part_DRecvReq_04_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_DRecvReq
HIDE DEF DomainKeep_DRecvReq, PositiveNatFact, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K12, V21_Inv_K14, V21_Inv_K2, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_Sentry, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_DRecvReq ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, DRecvReq(j,r), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, NEW v \in Rq, Sizes, Location, Design, PinInv, DRecvReq(u,v), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_DRecvReq_01_01, Part_DRecvReq_01_02, Part_DRecvReq_02_01, Part_DRecvReq_02_02, Part_DRecvReq_03_01, Part_DRecvReq_03_02, Part_DRecvReq_04_01, Part_DRecvReq_04_02, Group_DRecvReq_05, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_DRecvReq_01_01, Part_DRecvReq_01_02, Part_DRecvReq_02_01, Part_DRecvReq_02_02, Part_DRecvReq_03_01, Part_DRecvReq_03_02, Part_DRecvReq_04_01, Part_DRecvReq_04_02, Group_DRecvReq_05, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, DRecvReq(j,r), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, DRecvReq(j,r), ShapeKeep_DRecvReq, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
