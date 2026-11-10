---- MODULE PdActionSlice_XRecvRel_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_9ef278c147c12b12, PdFinalAuxType_c739ffd38bcba46d, PdFinalInvProjections, PdFinalEffects, PdSharedRefCounts, PdShapeBase, PdActionSlice_XRecvRel_01

\* Complete original body PdFinalPart_XRecvRel_04_01 SHA 87f418703125b3d5fd13cd5ba11d812c582d39e06ac12b3afe34a6285d3a1496
HIDE DEF AuxType_9ef278c147c12b12, AuxType_c739ffd38bcba46d, ExactTypeBridge, Group_XRecvRel_01, Group_XRecvRel_02, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_XRecvRel_03_01, Part_XRecvRel_03_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_PostSharedRefZero, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SharedRefZero, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_XRecvRel_04_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE (K2)' /\ (K3)' /\ (K5)' /\ (K6)' /\ (K9)' /\ (K11)' /\ (K16)' /\ (QuarNeverMapped)' /\ (QuarNoReg)'
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

           zolB2ei(p,x) == pst[p] = "drain" /\ led[p] \ {x} = {} /\ sled[p] = {} /\ ~KPinned(p)

           \* T2M-LOCAL-VISIBILITY

           IHCST(i,r) ==
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


           BDBZ2(p) ==
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


           iHcOq(j,r) ==
             LET q == rpg[j][r]
                 g == rg[j][r]
                 t == Tag(r, g)
                 x == rx[j][r]
             IN
             /\ Active(j, r) => drep[r][g] = 0
             /\ ph[j][r] = "end" => drep[r][g] = 1
             /\ rhit[j][r] => ph[j][r] \in {"run", "ovl", "end"}
             /\ ph[j][r] = "wait" /\ Mode = "push" => (x \in Xids /\ x < nx /\ xdst[x] = q /\ xr[x] = r /\ xg[x] = g
                                                       /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0)
             /\ ph[j][r] = "wait" /\ Mode = "pull" => (x = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0)
             /\ ph[j][r] = "rd" => (Mode = "pull" /\ x \in Xids /\ x < nx /\ xdst[x] = q /\ xr[x] = r /\ xg[x] = g
                                    /\ iv[x] \in {"posted", "cqe", "failret"} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0)
             /\ ph[j][r] \in {"run", "ovl"} /\ ~rhit[j][r] => (led[q] = {} /\ sled[q] = {t} /\ plt[q] = NTok(r, g) /\ ptl[q] = NTok(r, g) /\ pvis[q])
             /\ ph[j][r] \in {"run", "ovl"} /\ rhit[j][r] => (pst[q] = "shared" /\ t \in sled[q] /\ x = 0)

           \* T2M-LOCAL-VISIBILITY

           PuAqm3(x) == pst[xsrc[x]] = "drain" /\ led[xsrc[x]] \ {x} = {} /\ sled[xsrc[x]] = {} /\ ~KPinned(xsrc[x])


           xorAl(x) ==
             /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
             /\ \E m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
                  /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
             /\ LET p == xsrc[x] IN
                  /\ pst' = [pst EXCEPT ![p] = IF PuAqm3(x) THEN "free" ELSE @]
                  /\ pr' = [pr EXCEPT ![p] = IF PuAqm3(x) THEN 0 ELSE @]
                  /\ pgn' = [pgn EXCEPT ![p] = IF PuAqm3(x) THEN 0 ELSE @]
                  /\ plt' = [plt EXCEPT ![p] = IF PuAqm3(x) THEN 0 ELSE @]
                  /\ led' = [led EXCEPT ![p] = @ \ {x}]
             /\ UNCHANGED <<sled, prefc, pqp>>

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, wuoDNx7, zolB2ei, IHCST, BDBZ2, iHcOq, PuAqm3, xorAl

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>laJZVswepl.         K12 <=> (\A m \in net : wuoDNx7(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>bxKOhLcK1Mi.        
  ASSUME NEW x \in Xids, XRecvRel(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>bxKOhLcK1Mi, Sizes, Location, Design, Zenon DEF EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M2446_PdROOld_PP_PdBXRecvRelFrames


<1>tPQNaEgneNJ.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, OyyWS, PageTo(p,s,q,nl,ns)
  PROVE pst' = [pst EXCEPT ![p] = s]
  BY ONLY <1>tPQNaEgneNJ, Sizes, Location, Design, SMT DEF PageTo, OyyWS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eXFmzb8wTq.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, IwCp, PageTo(p,s,q,nl,ns)
  PROVE pr' = [pr EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>eXFmzb8wTq, Sizes, Location, Design, SMT DEF PageTo, IwCp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cWvTNL82BvW.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, vS7em, PageTo(p,s,q,nl,ns)
  PROVE pgn' = [pgn EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>cWvTNL82BvW, Sizes, Location, Design, SMT DEF PageTo, vS7em, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r8v01ijDknZ.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, bFwlN, PageTo(p,s,q,nl,ns)
  PROVE plt' = [plt EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>r8v01ijDknZ, Sizes, Location, Design, SMT DEF PageTo, bFwlN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pmNvhbGWYfr.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, dcfPK, PageTo(p,s,q,nl,ns)
  PROVE led' = [led EXCEPT ![p] = IF s = "free" THEN {} ELSE nl]
  BY ONLY <1>pmNvhbGWYfr, Sizes, Location, Design, SMT DEF PageTo, dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ifTaNAt1fWoG.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, h9WLgd, PageTo(p,s,q,nl,ns)
  PROVE sled' = [sled EXCEPT ![p] = IF s = "free" THEN {} ELSE ns]
  BY ONLY <1>ifTaNAt1fWoG, Sizes, Location, Design, SMT DEF PageTo, h9WLgd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DdXdgzCjpiKcV.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, p1YmMe5, PageTo(p,s,q,nl,ns)
  PROVE prefc' = [prefc EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>DdXdgzCjpiKcV, Sizes, Location, Design, SMT DEF PageTo, p1YmMe5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>p5S68OZJNlo.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, vRZWI, PageTo(p,s,q,nl,ns)
  PROVE pqp' = [pqp EXCEPT ![p] = IF s = "quar" THEN q ELSE IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>p5S68OZJNlo, Sizes, Location, Design, SMT DEF PageTo, vRZWI, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Y8hTRv352TvU.        
  ASSUME NEW p, NEW x, pst[p] # "free"
  PROVE AfterEv(p,led[p] \ {x},sled[p]) = (IF zolB2ei(p,x) THEN "free" ELSE pst[p])
    /\ (AfterEv(p,led[p] \ {x},sled[p]) = "free" <=> zolB2ei(p,x))
  BY ONLY <1>Y8hTRv352TvU, Sizes, Location, Design, Design, Zenon DEF AfterEv, PinBlocks, zolB2ei, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aCjZlKuaWx.        
  ASSUME NEW p \in Pages, NEW x, OyyWS, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pst' = [pst EXCEPT ![p] = IF zolB2ei(p,x) THEN "free" ELSE @]
<2> USE ONLY <1>aCjZlKuaWx, Sizes, Location, Design
<2>1. pst' = [pst EXCEPT ![p] = AfterEv(p,led[p] \ {x},sled[p])]
  BY <1>tPQNaEgneNJ, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, OyyWS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Iz2Fdgrb5.        
  ASSUME NEW p \in Pages, NEW x, IwCp, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pr' = [pr EXCEPT ![p] = IF zolB2ei(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>Iz2Fdgrb5, Sizes, Location, Design
<2>1. pr' = [pr EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>eXFmzb8wTq, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, IwCp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gB0JQ8nsN3.        
  ASSUME NEW p \in Pages, NEW x, vS7em, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pgn' = [pgn EXCEPT ![p] = IF zolB2ei(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>gB0JQ8nsN3, Sizes, Location, Design
<2>1. pgn' = [pgn EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>cWvTNL82BvW, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, vS7em, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WQjX4xUUz5.        
  ASSUME NEW p \in Pages, NEW x, bFwlN, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE plt' = [plt EXCEPT ![p] = IF zolB2ei(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>WQjX4xUUz5, Sizes, Location, Design
<2>1. plt' = [plt EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>r8v01ijDknZ, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, bFwlN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GRHIWgNo5P.        
  ASSUME NEW p \in Pages, NEW x, dcfPK, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE led' = [led EXCEPT ![p] = @ \ {x}]
<2> USE ONLY <1>GRHIWgNo5P, Sizes, Location, Design
<2>1. led' = [led EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE led[p] \ {x}]
  BY <1>pmNvhbGWYfr, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>goKNO22NOh4.        
  ASSUME NEW p \in Pages, NEW x, h9WLgd, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED sled
<2> USE ONLY <1>goKNO22NOh4, Sizes, Location, Design
<2>1. sled' = [sled EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE sled[p]]
  BY <1>ifTaNAt1fWoG, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, h9WLgd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Lk8lTFd1ji9A.        
  ASSUME NEW p \in Pages, NEW x, p1YmMe5, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED prefc
<2> USE ONLY <1>Lk8lTFd1ji9A, Sizes, Location, Design
<2>1. prefc' = [prefc EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>DdXdgzCjpiKcV, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, p1YmMe5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>C8753eIVs2.        
  ASSUME NEW p \in Pages, NEW x, vRZWI, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED pqp
<2> USE ONLY <1>C8753eIVs2, Sizes, Location, Design
<2>1. pqp' = [pqp EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "quar" THEN pqp[p] ELSE IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>p5S68OZJNlo, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, vRZWI, Sizes, Location, Design
\* T2M-END R2M2447_PdROOld_PP_PdCEvidence


<1>fDQ.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xsrc[x] \in Pages
  PROVE Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>fDQ, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xp[x] = hp[xr[x]][xg[x]]
        /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BCp.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xdst[x] \in Pages
  PROVE Loc(xdst[x]) \in DInst
<2> USE ONLY <1>BCp, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ Loc(xdst[x]) = xd[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iO67a.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE IHCST(i,r)
  BY ONLY <1>iO67a, Sizes, Location, Design DEF K8, IHCST, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J7mCO.        
  ASSUME NEW p \in Pages, K7
  PROVE BDBZ2(p)
  BY ONLY <1>J7mCO, Sizes, Location, Design DEF K7, BDBZ2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dJv1EbS4.        
  ASSUME NEW j \in Inst, NEW s \in Rq, K8
  PROVE Active(j,s) => rpg[j][s] \in Pages /\ Loc(rpg[j][s]) = j
<2> USE ONLY <1>dJv1EbS4, Sizes, Location, Design
<2>1. IHCST(j,s)
  BY <1>iO67a, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Zenon, Sizes, Location, Design DEF IHCST, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wrt7kq3wM.        
  /\ \A i \in DInst : i \in Inst /\ IsD(i)
  /\ \A i \in PInst : i \in Inst /\ IsP(i)
  /\ \A i \in Inst : IsP(i) \/ IsD(i)
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMT, Location, Design DEF Inst, DInst, PInst, NL, IsD, IsP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>arKye.        
  ASSUME NEW j \in DInst, NEW r \in Rq, K9
  PROVE iHcOq(j,r)
  BY ONLY <1>arKye, Sizes, Location, Design DEF K9, iHcOq, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qeGVA2qxpaU.        
  (\A j \in DInst, r \in Rq : iHcOq(j,r)') => K9'
  BY Sizes, Location, Design DEF K9, iHcOq, Sizes, Location, Design
\* T2M-END R2M2324_PdROOld_PP_PdBRecords


<1>JipBJjaaBAYD.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
    /\ x < nx /\ xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xp[x] \in PInst
    /\ pst[xsrc[x]] \in {"priv", "drain", "quar"} /\ prefc[xsrc[x]] = 0
<2> USE ONLY <1>JipBJjaaBAYD, Sizes, Location, Design
<2>1. K2 /\ K4 /\ K5 /\ K7 /\ SHJS /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
  BY <1>UwwC5LVwQr, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, XRecvRel, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, SMT, Sizes, Location, Design DEF K2, SHJS, Xids, Sizes, Location, Design
<2>3. xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K2, ExpPage, ExpInst, Sizes, Location, Design
<2>4. Loc(xsrc[x]) \in PInst
  BY <2>2, <2>3, <1>fDQ, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. x \in led[xsrc[x]]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K4, ExpPage, Sizes, Location, Design
<2>6. OwnedBy(xsrc[x],xr[x],xg[x]) /\ BDBZ2(xsrc[x])
  BY <2>1, <2>3, <2>5, <1>J7mCO, Sizes, Location, Design DEF K5, Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>6, Zenon, Sizes, Location, Design DEF OwnedBy, BDBZ2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lPQo5GJaUibf.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE xorAl(x)
<2> USE ONLY <1>lPQo5GJaUibf, Sizes, Location, Design
<2>1. K7 /\ xsrc[x] \in Pages /\ prefc[xsrc[x]] = 0 /\ pst[xsrc[x]] # "free"
  BY <1>JipBJjaaBAYD, Zenon, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. OyyWS /\ h9WLgd /\ p1YmMe5 /\ vRZWI /\ IwCp /\ vS7em /\ bFwlN /\ dcfPK
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>3. (pst[xsrc[x]] = "drain" => pqp[xsrc[x]] = 0) /\ EvidenceAt(xsrc[x],x)
  BY <2>1, Zenon, Sizes, Location, Design DEF K7, XRecvRel, Sizes, Location, Design
<2>4. pst' = [pst EXCEPT ![xsrc[x]] = IF zolB2ei(xsrc[x],x) THEN "free" ELSE @]
    /\ pr' = [pr EXCEPT ![xsrc[x]] = IF zolB2ei(xsrc[x],x) THEN 0 ELSE @]
    /\ pgn' = [pgn EXCEPT ![xsrc[x]] = IF zolB2ei(xsrc[x],x) THEN 0 ELSE @]
    /\ plt' = [plt EXCEPT ![xsrc[x]] = IF zolB2ei(xsrc[x],x) THEN 0 ELSE @]
    /\ led' = [led EXCEPT ![xsrc[x]] = @ \ {x}] /\ UNCHANGED <<sled,prefc,pqp>>
  BY <2>1, <2>2, <2>3, <1>aCjZlKuaWx, <1>Iz2Fdgrb5, <1>gB0JQ8nsN3, <1>WQjX4xUUz5, <1>GRHIWgNo5P, <1>goKNO22NOh4, <1>Lk8lTFd1ji9A, <1>C8753eIVs2, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>4, Zenon, Sizes, Location, Design DEF XRecvRel, xorAl, PuAqm3, zolB2ei, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vwW8NHjBeBOFn.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"]
<2> USE ONLY <1>vwW8NHjBeBOFn, Sizes, Location, Design
<2>1. K12 /\ qvLUP
  BY <1>UwwC5LVwQr, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. PICK m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
      /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
  BY Zenon, Sizes, Location, Design DEF XRecvRel, Sizes, Location, Design
<2>3. wuoDNx7(m)
  BY <2>1, <2>2, <1>laJZVswepl, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ((iv[x] = "cqe" /\ hw[x] = "stop" /\ m.ok = hok[x]) \/ (iv[x] = "nopost" /\ ~m.ok))
  BY <2>2, <2>3, Zenon, Sizes, Location, Design DEF wuoDNx7, jjAuj, Sizes, Location, Design
<2>5. m.ok \in BOOLEAN
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF qvLUP, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>4, <2>5, Zenon, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EWRukYSfjlA42zd.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : led'[q] \subseteq led[q]
<2> USE ONLY <1>EWRukYSfjlA42zd, Sizes, Location, Design
<2>1. dcfPK
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qYElrDKgO7Pysk9.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pst'[q] = IF q=xsrc[x] /\ PuAqm3(x) THEN "free" ELSE pst[q]
<2> USE ONLY <1>qYElrDKgO7Pysk9, Sizes, Location, Design
<2>1. OyyWS
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. pst' = [pst EXCEPT ![xsrc[x]] = IF PuAqm3(x) THEN "free" ELSE @]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF OyyWS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>h4UnCgx9oN3EKs.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pr'[q] = IF q=xsrc[x] /\ PuAqm3(x) THEN 0 ELSE pr[q]
<2> USE ONLY <1>h4UnCgx9oN3EKs, Sizes, Location, Design
<2>1. IwCp
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. pr' = [pr EXCEPT ![xsrc[x]] = IF PuAqm3(x) THEN 0 ELSE @]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF IwCp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mpioqgxf03fIO4l.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pgn'[q] = IF q=xsrc[x] /\ PuAqm3(x) THEN 0 ELSE pgn[q]
<2> USE ONLY <1>mpioqgxf03fIO4l, Sizes, Location, Design
<2>1. vS7em
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. pgn' = [pgn EXCEPT ![xsrc[x]] = IF PuAqm3(x) THEN 0 ELSE @]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF vS7em, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mXJy2wcqaeycs5s.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : plt'[q] = IF q=xsrc[x] /\ PuAqm3(x) THEN 0 ELSE plt[q]
<2> USE ONLY <1>mXJy2wcqaeycs5s, Sizes, Location, Design
<2>1. bFwlN
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. plt' = [plt EXCEPT ![xsrc[x]] = IF PuAqm3(x) THEN 0 ELSE @]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF bFwlN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sf9vq9C6OqYTYZm.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : led'[q] = IF q=xsrc[x] THEN led[q] \ {x} ELSE led[q]
<2> USE ONLY <1>sf9vq9C6OqYTYZm, Sizes, Location, Design
<2>1. dcfPK
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OuxV4v7ud8uJFR6.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ \A y \in Xids : xst'[y] = IF y=x THEN (IF ok THEN "landed" ELSE "failed") ELSE xst[y]
<2> USE ONLY <1>OuxV4v7ud8uJFR6, Sizes, Location, Design
<2>1. PD2ZN /\ (\E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"])
  BY <1>UwwC5LVwQr, <1>vwW8NHjBeBOFn, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF PD2ZN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GRuvrbZQVbW.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : IsD(Loc(q)) =>
    pst'[q] = pst[q] /\ pr'[q] = pr[q] /\ pgn'[q] = pgn[q] /\ plt'[q] = plt[q] /\ led'[q] = led[q]
<2> USE ONLY <1>GRuvrbZQVbW, Sizes, Location, Design
<2>1. Loc(xsrc[x]) \in PInst
  BY <1>JipBJjaaBAYD, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, Sizes, SMT, Location, Design DEF IsD, PInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IASrF4scYumj5WC4.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE PuAqm3(x) => led'[xsrc[x]] = {} /\ sled[xsrc[x]] = {} /\ sfly[xsrc[x]] = {} /\ pqp[xsrc[x]] = 0
<2> USE ONLY <1>IASrF4scYumj5WC4, Sizes, Location, Design
<2>1. K6 /\ K7 /\ xsrc[x] \in Pages
  BY <1>JipBJjaaBAYD, V21_Inv_K6, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>sf9vq9C6OqYTYZm, Zenon, Sizes, Location, Design DEF PuAqm3, K6, K7, Sizes, Location, Design
\* T2M-END R2M2448_PdROOld_PP_PdCXRecvRelEffects


<1>ifY4VoJXA.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE K11'
<2> USE ONLY <1>ifY4VoJXA, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_x \in Xids
                 PROVE ((bb_x < nx /\ xsrc[bb_x] \in Pages /\ bb_x \in led[xsrc[bb_x]])
           => (ptl[xsrc[bb_x]] = xlt[bb_x] /\ sfly[xsrc[bb_x]] = {} /\ sled[xsrc[bb_x]] = {}))'
  BY Sizes, Location, Design DEF K11, Sizes, Location, Design
<2>1. K11 /\ Uzgo58 /\ dcfPK /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K11, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. ((bb_x < nx /\ xsrc[bb_x] \in Pages /\ bb_x \in led[xsrc[bb_x]])
           => (ptl[xsrc[bb_x]] = xlt[bb_x] /\ sfly[xsrc[bb_x]] = {} /\ sled[xsrc[bb_x]] = {}))'
  BY <2>1, <2>2, <1>JipBJjaaBAYD, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, <1>OuxV4v7ud8uJFR6, <1>EWRukYSfjlA42zd, <1>GRuvrbZQVbW, <1>IASrF4scYumj5WC4, <1>BCp, Design, Sizes, SMT, Location DEF PuAqm3, DInst, IsD, IsP, K11, KPinned, NL, PInst, dcfPK, SHJS, Uzgo58, Tag, KPages, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K11, Sizes, Location, Design
\* T2M-END R2M2450_PdROOld_PP_PdCXRecvRelLK11

\* T2M-SCOPE R2M2451_PdROOld_PP_PdCXRecvRelLK16

<1>xi6zDbkwh.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE K16'
<2> USE ONLY <1>xi6zDbkwh, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (GrownP(bb_p) =>
         /\ ph[Loc(bb_p)][pr[bb_p]] \in {"run", "ovl"} /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p]
         /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
         /\ plt[bb_p] = ptl[bb_p] /\ ptl[bb_p] \in {0, 1}
         /\ NoWriteInto(bb_p))'
  BY Sizes, Location, Design DEF K16, Sizes, Location, Design
<2>1. K16 /\ OyyWS /\ IwCp /\ q1Ohy /\ AydA /\ bFwlN
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. (GrownP(bb_p) =>
         /\ ph[Loc(bb_p)][pr[bb_p]] \in {"run", "ovl"} /\ rg[Loc(bb_p)][pr[bb_p]] = pgn[bb_p]
         /\ led[bb_p] = {} /\ sled[bb_p] = {} /\ sfly[bb_p] = {}
         /\ plt[bb_p] = ptl[bb_p] /\ ptl[bb_p] \in {0, 1}
         /\ NoWriteInto(bb_p))'
  BY <2>1, <2>2, <1>JipBJjaaBAYD, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, <1>OuxV4v7ud8uJFR6, <1>EWRukYSfjlA42zd, <1>GRuvrbZQVbW, <1>IASrF4scYumj5WC4, <1>BCp, Design, Sizes, SMT, Location DEF PuAqm3, DInst, GrownP, InFl, IsD, IsP, K16, KPinned, NL, NoWriteInto, PInst, AydA, bFwlN, IwCp, OyyWS, q1Ohy, Tag, Writing, KPages, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K16, Sizes, Location, Design
\* T2M-END R2M2451_PdROOld_PP_PdCXRecvRelLK16

\* T2M-SCOPE R2M2452_PdROOld_PP_PdCXRecvRelLK2

<1>XgYScl7Y.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE K2'
<2> USE ONLY <1>XgYScl7Y, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_x \in Xids
                 PROVE (IF bb_x >= nx
        THEN /\ xk[bb_x] = "none" /\ xr[bb_x] = 0 /\ xg[bb_x] = 0 /\ xp[bb_x] = 0 /\ xd[bb_x] = 0 /\ xsrc[bb_x] = 0 /\ xdst[bb_x] = 0
             /\ xnt[bb_x] = 0 /\ hw[bb_x] = "none" /\ ~hok[bb_x] /\ iv[bb_x] = "none" /\ xst[bb_x] = "none" /\ xlt[bb_x] = 0
        ELSE /\ xk[bb_x] = (IF Mode = "push" THEN "wr" ELSE "rd")
             /\ xr[bb_x] \in Rq /\ xg[bb_x] \in Gens /\ xg[bb_x] <= gen[xr[bb_x]]
             /\ xp[bb_x] = hp[xr[bb_x]][xg[bb_x]] /\ xd[bb_x] = hd[xr[bb_x]][xg[bb_x]]
             /\ xnt[bb_x] = NTok(xr[bb_x], xg[bb_x]) /\ xst[bb_x] # "none"
             /\ IF xk[bb_x] = "wr" /\ InitPage(bb_x) = 0 THEN xlt[bb_x] = 0 ELSE xlt[bb_x] \in PLens(xr[bb_x], xg[bb_x])   
             /\ ExpPage(bb_x) \in Pages /\ Loc(ExpPage(bb_x)) = ExpInst(bb_x)
             /\ iv[bb_x] = "none" => InitPage(bb_x) = 0
             /\ iv[bb_x] \notin {"none", "nopost"} => InitPage(bb_x) # 0
             /\ (iv[bb_x] = "nopost" /\ InitPage(bb_x) # 0) => (xk[bb_x] = "wr" /\ PReg)   
             /\ InitPage(bb_x) # 0 => (InitPage(bb_x) \in Pages /\ Loc(InitPage(bb_x)) = InitInst(bb_x)))'
  BY Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>1. K2 /\ PD2ZN /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. (IF bb_x >= nx
        THEN /\ xk[bb_x] = "none" /\ xr[bb_x] = 0 /\ xg[bb_x] = 0 /\ xp[bb_x] = 0 /\ xd[bb_x] = 0 /\ xsrc[bb_x] = 0 /\ xdst[bb_x] = 0
             /\ xnt[bb_x] = 0 /\ hw[bb_x] = "none" /\ ~hok[bb_x] /\ iv[bb_x] = "none" /\ xst[bb_x] = "none" /\ xlt[bb_x] = 0
        ELSE /\ xk[bb_x] = (IF Mode = "push" THEN "wr" ELSE "rd")
             /\ xr[bb_x] \in Rq /\ xg[bb_x] \in Gens /\ xg[bb_x] <= gen[xr[bb_x]]
             /\ xp[bb_x] = hp[xr[bb_x]][xg[bb_x]] /\ xd[bb_x] = hd[xr[bb_x]][xg[bb_x]]
             /\ xnt[bb_x] = NTok(xr[bb_x], xg[bb_x]) /\ xst[bb_x] # "none"
             /\ IF xk[bb_x] = "wr" /\ InitPage(bb_x) = 0 THEN xlt[bb_x] = 0 ELSE xlt[bb_x] \in PLens(xr[bb_x], xg[bb_x])   
             /\ ExpPage(bb_x) \in Pages /\ Loc(ExpPage(bb_x)) = ExpInst(bb_x)
             /\ iv[bb_x] = "none" => InitPage(bb_x) = 0
             /\ iv[bb_x] \notin {"none", "nopost"} => InitPage(bb_x) # 0
             /\ (iv[bb_x] = "nopost" /\ InitPage(bb_x) # 0) => (xk[bb_x] = "wr" /\ PReg)   
             /\ InitPage(bb_x) # 0 => (InitPage(bb_x) \in Pages /\ Loc(InitPage(bb_x)) = InitInst(bb_x)))'
  BY <2>1, <2>2, <1>JipBJjaaBAYD, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, <1>OuxV4v7ud8uJFR6, <1>EWRukYSfjlA42zd, <1>GRuvrbZQVbW, <1>IASrF4scYumj5WC4, <1>BCp, Design, Sizes, SMT, Location DEF PuAqm3, DInst, ExpInst, ExpPage, InitInst, InitPage, IsD, IsP, K2, KPinned, NL, PInst, SHJS, PD2ZN, Tag, KPages, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K2, Sizes, Location, Design
\* T2M-END R2M2452_PdROOld_PP_PdCXRecvRelLK2

\* T2M-SCOPE R2M2453_PdROOld_PP_PdCXRecvRelLK3

<1>cvRlUV9t.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE K3'
<2> USE ONLY <1>cvRlUV9t, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_x \in Xids
                 PROVE ((iv[bb_x] \in {"none", "nopost", "reg"}) <=> (hw[bb_x] = "none"))' /\ (iv[bb_x] = "reg" => (xk[bb_x] = "wr" /\ PReg /\ xst[bb_x] = "posted"))' /\ (iv[bb_x] = "cqe" => hw[bb_x] \in CqeHw(bb_x))' /\ (hw[bb_x] = "issued" => xk[bb_x] = "wr")' /\ (xst[bb_x] = "revoked" => iv[bb_x] = "nopost")' /\ (xst[bb_x] = "landed" => (hw[bb_x] = "stop" /\ hok[bb_x] /\ xlt[bb_x] = xnt[bb_x]))' /\ ((xk[bb_x] = "rd" /\ iv[bb_x] \notin {"none", "nopost"}) => xlt[bb_x] = xnt[bb_x])' /\ (xst[bb_x] = "failed" => IF xk[bb_x] = "wr" THEN (hw[bb_x] = "stop" /\ hok[bb_x] /\ xlt[bb_x] # xnt[bb_x])   
                                 ELSE ((iv[bb_x] = "cqe" /\ hw[bb_x] = "stop" /\ ~hok[bb_x]) \/ iv[bb_x] = "nopost"))' /\ (InFl(bb_x) => (xst[bb_x] = "posted" /\ (iv[bb_x] \in {"posted", "failret"} \/ (iv[bb_x] = "cqe" /\ hw[bb_x] = "issued" /\ ~hok[bb_x]))))'
  BY Sizes, Location, Design DEF K3, Sizes, Location, Design
<2>1. K3 /\ PD2ZN
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K3, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. ((iv[bb_x] \in {"none", "nopost", "reg"}) <=> (hw[bb_x] = "none"))'
  <3>1. ((iv[bb_x] \in {"none", "nopost", "reg"}) <=> (hw[bb_x] = "none"))
    BY <2>1, Sizes, Location, Design DEF K3, Sizes, Location, Design
  <3>2. UNCHANGED <<hw, iv>>
    BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
  <3>3. QED
    BY <3>1, <3>2, Zenon, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. (iv[bb_x] = "reg" => (xk[bb_x] = "wr" /\ PReg /\ xst[bb_x] = "posted"))'
  BY <2>1, <2>2, <1>JipBJjaaBAYD, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, <1>OuxV4v7ud8uJFR6, <1>EWRukYSfjlA42zd, <1>GRuvrbZQVbW, <1>IASrF4scYumj5WC4, <1>BCp, Design, Sizes, SMT, Location DEF PuAqm3, CqeHw, DInst, InFl, IsD, IsP, K3, KPinned, NL, PInst, PD2ZN, Tag, KPages, Sizes, Location, Design
<2>5. (iv[bb_x] = "cqe" => hw[bb_x] \in CqeHw(bb_x))'
  <3>1. (iv[bb_x] = "cqe" => hw[bb_x] \in CqeHw(bb_x))
    BY <2>1, Sizes, Location, Design DEF K3, Sizes, Location, Design
  <3>2. UNCHANGED <<hok, hw, iv, xk>>
    BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
  <3>3. QED
    BY <3>1, <3>2, Zenon, Sizes, Location, Design DEF CqeHw, Sizes, Location, Design
<2>6. (hw[bb_x] = "issued" => xk[bb_x] = "wr")'
  <3>1. (hw[bb_x] = "issued" => xk[bb_x] = "wr")
    BY <2>1, Sizes, Location, Design DEF K3, Sizes, Location, Design
  <3>2. UNCHANGED <<hw, xk>>
    BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
  <3>3. QED
    BY <3>1, <3>2, Zenon, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. (xst[bb_x] = "revoked" => iv[bb_x] = "nopost")'
  BY <2>1, <2>2, <1>JipBJjaaBAYD, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, <1>OuxV4v7ud8uJFR6, <1>EWRukYSfjlA42zd, <1>GRuvrbZQVbW, <1>IASrF4scYumj5WC4, <1>BCp, Design, Sizes, SMT, Location DEF PuAqm3, CqeHw, DInst, InFl, IsD, IsP, K3, KPinned, NL, PInst, PD2ZN, Tag, KPages, Sizes, Location, Design
<2>8. (xst[bb_x] = "landed" => (hw[bb_x] = "stop" /\ hok[bb_x] /\ xlt[bb_x] = xnt[bb_x]))'
  BY <2>1, <2>2, <1>JipBJjaaBAYD, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, <1>OuxV4v7ud8uJFR6, <1>EWRukYSfjlA42zd, <1>GRuvrbZQVbW, <1>IASrF4scYumj5WC4, <1>BCp, Design, Sizes, SMT, Location DEF PuAqm3, CqeHw, DInst, InFl, IsD, IsP, K3, KPinned, NL, PInst, PD2ZN, Tag, KPages, Sizes, Location, Design
<2>9. ((xk[bb_x] = "rd" /\ iv[bb_x] \notin {"none", "nopost"}) => xlt[bb_x] = xnt[bb_x])'
  <3>1. ((xk[bb_x] = "rd" /\ iv[bb_x] \notin {"none", "nopost"}) => xlt[bb_x] = xnt[bb_x])
    BY <2>1, Sizes, Location, Design DEF K3, Sizes, Location, Design
  <3>2. UNCHANGED <<iv, xk, xlt, xnt>>
    BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
  <3>3. QED
    BY <3>1, <3>2, Zenon, Sizes, Location, Design DEF Sizes, Location, Design
<2>10. (xst[bb_x] = "failed" => IF xk[bb_x] = "wr" THEN (hw[bb_x] = "stop" /\ hok[bb_x] /\ xlt[bb_x] # xnt[bb_x])   
                                 ELSE ((iv[bb_x] = "cqe" /\ hw[bb_x] = "stop" /\ ~hok[bb_x]) \/ iv[bb_x] = "nopost"))'
  BY <2>1, <2>2, <1>JipBJjaaBAYD, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, <1>OuxV4v7ud8uJFR6, <1>EWRukYSfjlA42zd, <1>GRuvrbZQVbW, <1>IASrF4scYumj5WC4, <1>BCp, Design, Sizes, SMT, Location DEF PuAqm3, CqeHw, DInst, InFl, IsD, IsP, K3, KPinned, NL, PInst, PD2ZN, Tag, KPages, Sizes, Location, Design
<2>11. (InFl(bb_x) => (xst[bb_x] = "posted" /\ (iv[bb_x] \in {"posted", "failret"} \/ (iv[bb_x] = "cqe" /\ hw[bb_x] = "issued" /\ ~hok[bb_x]))))'
  BY <2>1, <2>2, <1>JipBJjaaBAYD, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, <1>OuxV4v7ud8uJFR6, <1>EWRukYSfjlA42zd, <1>GRuvrbZQVbW, <1>IASrF4scYumj5WC4, <1>BCp, Design, Sizes, SMT, Location DEF PuAqm3, CqeHw, DInst, InFl, IsD, IsP, K3, KPinned, NL, PInst, PD2ZN, Tag, KPages, Sizes, Location, Design
<2>12. QED
  BY <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, Sizes, Location, Design DEF K3, Sizes, Location, Design
\* T2M-END R2M2453_PdROOld_PP_PdCXRecvRelLK3

\* T2M-SCOPE R2M2454_PdROOld_PP_PdCXRecvRelLK4

<1>tNlTtHGc.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE K5'
<2> USE ONLY <1>tNlTtHGc, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (\A x \in led[bb_p] : OwnedBy(bb_p, xr[x], xg[x]))'
  BY Sizes, Location, Design DEF K5, Sizes, Location, Design
<2>1. K5 /\ dcfPK /\ OyyWS /\ IwCp /\ vS7em
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. (\A x \in led[bb_p] : OwnedBy(bb_p, xr[x], xg[x]))'
  BY <2>1, <2>2, <1>JipBJjaaBAYD, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, <1>OuxV4v7ud8uJFR6, <1>EWRukYSfjlA42zd, <1>GRuvrbZQVbW, <1>IASrF4scYumj5WC4, <1>BCp, Design, Sizes, SMT, Location DEF PuAqm3, DInst, IsD, IsP, K5, KPinned, NL, OwnedBy, PInst, dcfPK, vS7em, IwCp, OyyWS, Tag, KPages, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K5, Sizes, Location, Design
\* T2M-END R2M2455_PdROOld_PP_PdCXRecvRelLK5

\* T2M-SCOPE R2M2456_PdROOld_PP_PdCXRecvRelLK6

<1>Ovre532S.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE K6'
<2> USE ONLY <1>Ovre532S, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE (sfly[bb_p] \subseteq sled[bb_p])' /\ (\A t \in sled[bb_p] : t[2] <= gen[t[1]] /\ (OwnedBy(bb_p, t[1], t[2]) \/ (pst[bb_p] = "shared" /\ IsD(Loc(bb_p)))))'
  BY Sizes, Location, Design DEF K6, Sizes, Location, Design
<2>1. K6 /\ Xc_ngV /\ h9WLgd
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. (sfly[bb_p] \subseteq sled[bb_p])'
  <3>1. (sfly[bb_p] \subseteq sled[bb_p])
    BY <2>1, Sizes, Location, Design DEF K6, Sizes, Location, Design
  <3>2. UNCHANGED <<sfly, sled>>
    BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
  <3>3. QED
    BY <3>1, <3>2, Zenon, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. (\A t \in sled[bb_p] : t[2] <= gen[t[1]] /\ (OwnedBy(bb_p, t[1], t[2]) \/ (pst[bb_p] = "shared" /\ IsD(Loc(bb_p)))))'
  BY <2>1, <2>2, <1>JipBJjaaBAYD, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, <1>OuxV4v7ud8uJFR6, <1>EWRukYSfjlA42zd, <1>GRuvrbZQVbW, <1>IASrF4scYumj5WC4, <1>BCp, Design, Sizes, SMT, Location DEF PuAqm3, DInst, IsD, IsP, K6, KPinned, NL, OwnedBy, PInst, Xc_ngV, h9WLgd, Tag, KPages, Sizes, Location, Design
<2>5. QED
  BY <2>3, <2>4, Sizes, Location, Design DEF K6, Sizes, Location, Design
\* T2M-END R2M2456_PdROOld_PP_PdCXRecvRelLK6


<1>GssgkNj35oHJZ.        
  ASSUME NEW x \in Xids, NEW j \in DInst, NEW s \in Rq, PinInv, XRecvRel(x)
  PROVE iHcOq(j,s)'
<2> USE ONLY <1>GssgkNj35oHJZ, Sizes, Location, Design
<2>1. K9 /\ K8 /\ iHcOq(j,s)
  BY <1>arKye, V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. j \in Inst /\ IsD(j)
  BY <1>wrt7kq3wM, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. Active(j,s) => rpg[j][s] \in Pages /\ Loc(rpg[j][s]) = j
  BY <2>1, <2>3, <1>dJv1EbS4, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. ph'[j][s] = ph[j][s] /\ (Active(j,s) => pst'[rpg[j][s]] = pst[rpg[j][s]] /\ plt'[rpg[j][s]] = plt[rpg[j][s]] /\ led'[rpg[j][s]] = led[rpg[j][s]])
  BY <2>2, <2>3, <2>4, <1>GRuvrbZQVbW, SMT, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, SMTT(15), Sizes, Location, Design DEF iHcOq, Active, Tag, Sizes, Location, Design
\* T2M-END R2M2460_PdROOld_PP_PdCXRecvRelLRecord9

\* T2M-SCOPE R2M2461_PdROOld_PP_PdCXRecvRelLK9
\* T2M-BODY R2M2461_PdROOld_PP_PdCXRecvRelLK9
\* T2M-LOCAL-VISIBILITY

<1>wkzOvAuf.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE K9'
  BY ONLY <1>wkzOvAuf, Sizes, Location, Design, <1>GssgkNj35oHJZ, <1>qeGVA2qxpaU DEF Sizes, Location, Design
\* T2M-END R2M2461_PdROOld_PP_PdCXRecvRelLK9

\* T2M-SCOPE R2M2462_PdROOld_PP_PdCXRecvRelLQuarNeverMapped

<1>z0dXCmKIBd0QQrfSrFkdq.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>z0dXCmKIBd0QQrfSrFkdq, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_i \in Inst, NEW bb_r \in Rq
                 PROVE ((Active(bb_i, bb_r) /\ rpg[bb_i][bb_r] \in Pages) => pst[rpg[bb_i][bb_r]] # "quar")'
  BY Sizes, Location, Design DEF QuarNeverMapped, Sizes, Location, Design
<2>1. QuarNeverMapped /\ K8 /\ q1Ohy /\ OyyWS
  BY <1>UwwC5LVwQr, V21_Inv_K8, V21_Inv_QuarNeverMapped, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. ((Active(bb_i, bb_r) /\ rpg[bb_i][bb_r] \in Pages) => pst[rpg[bb_i][bb_r]] # "quar")'
  BY <2>1, <2>2, <1>JipBJjaaBAYD, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, <1>OuxV4v7ud8uJFR6, <1>EWRukYSfjlA42zd, <1>GRuvrbZQVbW, <1>IASrF4scYumj5WC4, <1>BCp, Design, Sizes, SMT, Location DEF Active, PuAqm3, DInst, IsD, IsP, K8, KPinned, NL, OwnedBy, PInst, QuarNeverMapped, OyyWS, q1Ohy, Tag, KPages, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF QuarNeverMapped, Sizes, Location, Design
\* T2M-END R2M2462_PdROOld_PP_PdCXRecvRelLQuarNeverMapped

\* T2M-SCOPE R2M2463_PdROOld_PP_PdCXRecvRelLQuarNoReg

<1>R40GR5rXzxSWVj2.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE QuarNoReg'
<2> USE ONLY <1>R40GR5rXzxSWVj2, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_p \in Pages
                 PROVE ((IsP(Loc(bb_p)) /\ pst[bb_p] = "quar") => \A x \in led[bb_p] : iv[x] # "reg")'
  BY Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
<2>1. QuarNoReg /\ OyyWS /\ dcfPK
  BY <1>UwwC5LVwQr, V21_Inv_KStruct, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. ((IsP(Loc(bb_p)) /\ pst[bb_p] = "quar") => \A x \in led[bb_p] : iv[x] # "reg")'
  BY <2>1, <2>2, <1>JipBJjaaBAYD, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, <1>OuxV4v7ud8uJFR6, <1>EWRukYSfjlA42zd, <1>GRuvrbZQVbW, <1>IASrF4scYumj5WC4, <1>BCp, Design, Sizes, SMT, Location DEF PuAqm3, DInst, IsD, IsP, KPinned, NL, PInst, QuarNoReg, dcfPK, OyyWS, Tag, KPages, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
\* T2M-END R2M2463_PdROOld_PP_PdCXRecvRelLQuarNoReg

\* T2M-SCOPE R2M2464_PdROOld_PP_PdCXRecvRelLS5

<1>gmvvbY8lCt.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
  PROVE K2'
  BY ONLY <1>gmvvbY8lCt, Sizes, Location, Design, <1>XgYScl7Y, V21_Inv_K2 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VIZgaVNr45.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
  PROVE K3'
  BY ONLY <1>VIZgaVNr45, Sizes, Location, Design, <1>cvRlUV9t, V21_Inv_K3 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WLFedGJbed.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
  PROVE K5'
  BY ONLY <1>WLFedGJbed, Sizes, Location, Design, <1>tNlTtHGc, V21_Inv_K5 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uJ0u7uWsde.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
  PROVE K6'
  BY ONLY <1>uJ0u7uWsde, Sizes, Location, Design, <1>Ovre532S, V21_Inv_K6 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LA6LRLsymU.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
  PROVE K9'
  BY ONLY <1>LA6LRLsymU, Sizes, Location, Design, <1>wkzOvAuf, V21_Inv_K9 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LudWa3vpeHq.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
  PROVE K11'
  BY ONLY <1>LudWa3vpeHq, Sizes, Location, Design, <1>ifY4VoJXA, V21_Inv_K11 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cxplnacblM3.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
  PROVE K16'
  BY ONLY <1>cxplnacblM3, Sizes, Location, Design, <1>xi6zDbkwh, V21_Inv_K16 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EyuNuroV0GePDHXPABrTYeK.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>EyuNuroV0GePDHXPABrTYeK, Sizes, Location, Design, <1>z0dXCmKIBd0QQrfSrFkdq, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZVsrzTLSNOMie4x0Y.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>ZVsrzTLSNOMie4x0Y, Sizes, Location, Design, <1>R40GR5rXzxSWVj2, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M2465_PdROOld_PdPAgg_XRecvRel

\* T2M-SCOPE R2M2466_PdROFinal_XRecvRel_K10
\* T2M-BODY R2M2466_PdROFinal_XRecvRel_K10
\* T2M-LOCAL-VISIBILITY

<1>v8aFDvUbGpb8bpgOei.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE K11'
 BY ONLY <1>v8aFDvUbGpb8bpgOei, Sizes, Location, Design, <1>LudWa3vpeHq DEF Sizes, Location, Design
\* T2M-END R2M2467_PdROFinal_XRecvRel_K11

\* T2M-SCOPE R2M2468_PdROFinal_XRecvRel_K16

<1>NLfgxBgKfV45BOl94E.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE K16'
 BY ONLY <1>NLfgxBgKfV45BOl94E, Sizes, Location, Design, <1>cxplnacblM3 DEF Sizes, Location, Design
\* T2M-END R2M2468_PdROFinal_XRecvRel_K16

\* T2M-SCOPE R2M2469_PdROFinal_XRecvRel_K2

<1>k28VSCejZWTkDjSBU.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE K2'
 BY ONLY <1>k28VSCejZWTkDjSBU, Sizes, Location, Design, <1>gmvvbY8lCt DEF Sizes, Location, Design
\* T2M-END R2M2469_PdROFinal_XRecvRel_K2

\* T2M-SCOPE R2M2470_PdROFinal_XRecvRel_K3

<1>hDAmqsgVBDJ1GR8R8.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE K3'
 BY ONLY <1>hDAmqsgVBDJ1GR8R8, Sizes, Location, Design, <1>VIZgaVNr45 DEF Sizes, Location, Design
\* T2M-END R2M2470_PdROFinal_XRecvRel_K3

\* T2M-SCOPE R2M2471_PdROFinal_XRecvRel_K4

<1>eeA51CTyoAhMIQm4R.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE K5'
 BY ONLY <1>eeA51CTyoAhMIQm4R, Sizes, Location, Design, <1>WLFedGJbed DEF Sizes, Location, Design
\* T2M-END R2M2472_PdROFinal_XRecvRel_K5


<1>jhH7xE2rYvAR5BNrf.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE K6'
 BY ONLY <1>jhH7xE2rYvAR5BNrf, Sizes, Location, Design, <1>uJ0u7uWsde DEF Sizes, Location, Design
\* T2M-END R2M2473_PdROFinal_XRecvRel_K6

\* T2M-SCOPE R2M2474_PdROFinal_XRecvRel_K7

<1>X86S13a5AZAr0V0pZ.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE K9'
 BY ONLY <1>X86S13a5AZAr0V0pZ, Sizes, Location, Design, <1>LA6LRLsymU DEF Sizes, Location, Design
\* T2M-END R2M2476_PdROFinal_XRecvRel_K9

\* T2M-SCOPE R2M2477_PdROFinal_XRecvRel_QuarNeverMapped

<1>xupf6g5V9b0KCmOzrHkgvvYcYjBwIp.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE QuarNeverMapped'
 BY ONLY <1>xupf6g5V9b0KCmOzrHkgvvYcYjBwIp, Sizes, Location, Design, <1>EyuNuroV0GePDHXPABrTYeK DEF Sizes, Location, Design
\* T2M-END R2M2477_PdROFinal_XRecvRel_QuarNeverMapped

\* T2M-SCOPE R2M2478_PdROFinal_XRecvRel_QuarNoReg

<1>BVQ21NyAVxGh0gxoHKZQAInH.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>BVQ21NyAVxGh0gxoHKZQAInH, Sizes, Location, Design, <1>ZVsrzTLSNOMie4x0Y DEF Sizes, Location, Design
\* T2M-END R2M2478_PdROFinal_XRecvRel_QuarNoReg

\* T2M-SCOPE R2M2479_PdROFinal_XRecvRel_S5

<1> QED BY <1>k28VSCejZWTkDjSBU, <1>hDAmqsgVBDJ1GR8R8, <1>eeA51CTyoAhMIQm4R, <1>jhH7xE2rYvAR5BNrf, <1>X86S13a5AZAr0V0pZ, <1>v8aFDvUbGpb8bpgOei, <1>NLfgxBgKfV45BOl94E, <1>xupf6g5V9b0KCmOzrHkgvvYcYjBwIp, <1>BVQ21NyAVxGh0gxoHKZQAInH, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_XRecvRel_04_02 SHA a765612c93bcd919a9484b900f54594ab2db889145bc8499e810129eb0d4207e
USE DEF V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K14, V21_Inv_K15, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_SFollowOff, V21_SFollowStatic
HIDE DEF Part_XRecvRel_04_01, V21_Inv_K11, V21_Inv_K16, V21_Inv_K3, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg
THEOREM Part_XRecvRel_04_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE (K10)' /\ (K15)' /\ (K8)'
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

           zolB2ei(p,x) == pst[p] = "drain" /\ led[p] \ {x} = {} /\ sled[p] = {} /\ ~KPinned(p)

           \* T2M-LOCAL-VISIBILITY

           IHCST(i,r) ==
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


           BDBZ2(p) ==
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


           PuAqm3(x) == pst[xsrc[x]] = "drain" /\ led[xsrc[x]] \ {x} = {} /\ sled[xsrc[x]] = {} /\ ~KPinned(xsrc[x])


           xorAl(x) ==
             /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
             /\ \E m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
                  /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
             /\ LET p == xsrc[x] IN
                  /\ pst' = [pst EXCEPT ![p] = IF PuAqm3(x) THEN "free" ELSE @]
                  /\ pr' = [pr EXCEPT ![p] = IF PuAqm3(x) THEN 0 ELSE @]
                  /\ pgn' = [pgn EXCEPT ![p] = IF PuAqm3(x) THEN 0 ELSE @]
                  /\ plt' = [plt EXCEPT ![p] = IF PuAqm3(x) THEN 0 ELSE @]
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

<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_spst, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, wuoDNx7, zolB2ei, IHCST, BDBZ2, PuAqm3, xorAl, RO_SharedFieldsFrame, Ltilk, ckVW, bXD3, XAoD, ZzYU, v7av, Zwf5Kak, UTxM0oD, Btadh0, hgjUtY, DgHrMJ, UDzxF, NN85, FlLc, mCp6f, EfDhA, TO_H, OFH6nV, nU_pl, KRyh, SWs37, Q73Wr, cDvpy, aHUmFg, m0XQV, YAnOjz, owHnyB, Gpa5dVU, f9onk, fwbJ, mnFW, nOWk, Ha9G, f5DU, KZInRS, hq2umu, ROI9_, M7cq, u1j8N, ECDy, q4kPy, doDAh, YN04, kvUux, WsZW22, d654kx, jl8hSJt, XEsGoy, qryMJ, H9OAZxi, XGvsJ, QkFcpo, I3PLV

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

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>laJZVswepl.         K12 <=> (\A m \in net : wuoDNx7(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>bxKOhLcK1Mi.        
  ASSUME NEW x \in Xids, XRecvRel(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>bxKOhLcK1Mi, Sizes, Location, Design, Zenon DEF EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M2446_PdROOld_PP_PdBXRecvRelFrames


<1>tPQNaEgneNJ.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, OyyWS, PageTo(p,s,q,nl,ns)
  PROVE pst' = [pst EXCEPT ![p] = s]
  BY ONLY <1>tPQNaEgneNJ, Sizes, Location, Design, SMT DEF PageTo, OyyWS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eXFmzb8wTq.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, IwCp, PageTo(p,s,q,nl,ns)
  PROVE pr' = [pr EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>eXFmzb8wTq, Sizes, Location, Design, SMT DEF PageTo, IwCp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cWvTNL82BvW.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, vS7em, PageTo(p,s,q,nl,ns)
  PROVE pgn' = [pgn EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>cWvTNL82BvW, Sizes, Location, Design, SMT DEF PageTo, vS7em, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r8v01ijDknZ.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, bFwlN, PageTo(p,s,q,nl,ns)
  PROVE plt' = [plt EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>r8v01ijDknZ, Sizes, Location, Design, SMT DEF PageTo, bFwlN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pmNvhbGWYfr.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, dcfPK, PageTo(p,s,q,nl,ns)
  PROVE led' = [led EXCEPT ![p] = IF s = "free" THEN {} ELSE nl]
  BY ONLY <1>pmNvhbGWYfr, Sizes, Location, Design, SMT DEF PageTo, dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ifTaNAt1fWoG.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, h9WLgd, PageTo(p,s,q,nl,ns)
  PROVE sled' = [sled EXCEPT ![p] = IF s = "free" THEN {} ELSE ns]
  BY ONLY <1>ifTaNAt1fWoG, Sizes, Location, Design, SMT DEF PageTo, h9WLgd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DdXdgzCjpiKcV.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, p1YmMe5, PageTo(p,s,q,nl,ns)
  PROVE prefc' = [prefc EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>DdXdgzCjpiKcV, Sizes, Location, Design, SMT DEF PageTo, p1YmMe5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>p5S68OZJNlo.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, vRZWI, PageTo(p,s,q,nl,ns)
  PROVE pqp' = [pqp EXCEPT ![p] = IF s = "quar" THEN q ELSE IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>p5S68OZJNlo, Sizes, Location, Design, SMT DEF PageTo, vRZWI, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Y8hTRv352TvU.        
  ASSUME NEW p, NEW x, pst[p] # "free"
  PROVE AfterEv(p,led[p] \ {x},sled[p]) = (IF zolB2ei(p,x) THEN "free" ELSE pst[p])
    /\ (AfterEv(p,led[p] \ {x},sled[p]) = "free" <=> zolB2ei(p,x))
  BY ONLY <1>Y8hTRv352TvU, Sizes, Location, Design, Design, Zenon DEF AfterEv, PinBlocks, zolB2ei, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aCjZlKuaWx.        
  ASSUME NEW p \in Pages, NEW x, OyyWS, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pst' = [pst EXCEPT ![p] = IF zolB2ei(p,x) THEN "free" ELSE @]
<2> USE ONLY <1>aCjZlKuaWx, Sizes, Location, Design
<2>1. pst' = [pst EXCEPT ![p] = AfterEv(p,led[p] \ {x},sled[p])]
  BY <1>tPQNaEgneNJ, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, OyyWS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Iz2Fdgrb5.        
  ASSUME NEW p \in Pages, NEW x, IwCp, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pr' = [pr EXCEPT ![p] = IF zolB2ei(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>Iz2Fdgrb5, Sizes, Location, Design
<2>1. pr' = [pr EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>eXFmzb8wTq, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, IwCp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gB0JQ8nsN3.        
  ASSUME NEW p \in Pages, NEW x, vS7em, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pgn' = [pgn EXCEPT ![p] = IF zolB2ei(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>gB0JQ8nsN3, Sizes, Location, Design
<2>1. pgn' = [pgn EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>cWvTNL82BvW, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, vS7em, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WQjX4xUUz5.        
  ASSUME NEW p \in Pages, NEW x, bFwlN, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE plt' = [plt EXCEPT ![p] = IF zolB2ei(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>WQjX4xUUz5, Sizes, Location, Design
<2>1. plt' = [plt EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>r8v01ijDknZ, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, bFwlN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GRHIWgNo5P.        
  ASSUME NEW p \in Pages, NEW x, dcfPK, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE led' = [led EXCEPT ![p] = @ \ {x}]
<2> USE ONLY <1>GRHIWgNo5P, Sizes, Location, Design
<2>1. led' = [led EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE led[p] \ {x}]
  BY <1>pmNvhbGWYfr, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>goKNO22NOh4.        
  ASSUME NEW p \in Pages, NEW x, h9WLgd, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED sled
<2> USE ONLY <1>goKNO22NOh4, Sizes, Location, Design
<2>1. sled' = [sled EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE sled[p]]
  BY <1>ifTaNAt1fWoG, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, h9WLgd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Lk8lTFd1ji9A.        
  ASSUME NEW p \in Pages, NEW x, p1YmMe5, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED prefc
<2> USE ONLY <1>Lk8lTFd1ji9A, Sizes, Location, Design
<2>1. prefc' = [prefc EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>DdXdgzCjpiKcV, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, p1YmMe5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>C8753eIVs2.        
  ASSUME NEW p \in Pages, NEW x, vRZWI, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED pqp
<2> USE ONLY <1>C8753eIVs2, Sizes, Location, Design
<2>1. pqp' = [pqp EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "quar" THEN pqp[p] ELSE IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>p5S68OZJNlo, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, vRZWI, Sizes, Location, Design
\* T2M-END R2M2447_PdROOld_PP_PdCEvidence


<1>fDQ.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xsrc[x] \in Pages
  PROVE Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>fDQ, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xp[x] = hp[xr[x]][xg[x]]
        /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BCp.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xdst[x] \in Pages
  PROVE Loc(xdst[x]) \in DInst
<2> USE ONLY <1>BCp, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ Loc(xdst[x]) = xd[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WI2wGaBn.        
  ASSUME NEW x \in Xids, PinInv, x < nx
  PROVE xr[x] \in Rq /\ xg[x] \in Gens /\ xp[x] \in PInst /\ xd[x] \in DInst
    /\ ExpInst(x) \in Inst /\ InitInst(x) \in Inst
<2> USE ONLY <1>WI2wGaBn, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>0. ~(x >= nx)
  BY <2>1, Sizes, SMT, Location, Design DEF SHJS, Xids, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
    /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, <2>0, Zenon, Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>3. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. QED
  BY <2>2, <2>3, Sizes, SMT, Location, Design DEF ExpInst, InitInst, PInst, DInst, Inst, NL, Sizes, Location, Design
\* T2M-END R2M2322_PdROOld_PP_PdBXFacts


<1>iO67a.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE IHCST(i,r)
  BY ONLY <1>iO67a, Sizes, Location, Design DEF K8, IHCST, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J7mCO.        
  ASSUME NEW p \in Pages, K7
  PROVE BDBZ2(p)
  BY ONLY <1>J7mCO, Sizes, Location, Design DEF K7, BDBZ2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WjkJ7p4bVOE.        
  (\A i \in Inst, r \in Rq : IHCST(i,r)') => K8'
  BY Sizes, Location, Design DEF K8, IHCST, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JipBJjaaBAYD.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
    /\ x < nx /\ xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xp[x] \in PInst
    /\ pst[xsrc[x]] \in {"priv", "drain", "quar"} /\ prefc[xsrc[x]] = 0
<2> USE ONLY <1>JipBJjaaBAYD, Sizes, Location, Design
<2>1. K2 /\ K4 /\ K5 /\ K7 /\ SHJS /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
  BY <1>UwwC5LVwQr, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, XRecvRel, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, SMT, Sizes, Location, Design DEF K2, SHJS, Xids, Sizes, Location, Design
<2>3. xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K2, ExpPage, ExpInst, Sizes, Location, Design
<2>4. Loc(xsrc[x]) \in PInst
  BY <2>2, <2>3, <1>fDQ, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. x \in led[xsrc[x]]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K4, ExpPage, Sizes, Location, Design
<2>6. OwnedBy(xsrc[x],xr[x],xg[x]) /\ BDBZ2(xsrc[x])
  BY <2>1, <2>3, <2>5, <1>J7mCO, Sizes, Location, Design DEF K5, Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>6, Zenon, Sizes, Location, Design DEF OwnedBy, BDBZ2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lPQo5GJaUibf.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE xorAl(x)
<2> USE ONLY <1>lPQo5GJaUibf, Sizes, Location, Design
<2>1. K7 /\ xsrc[x] \in Pages /\ prefc[xsrc[x]] = 0 /\ pst[xsrc[x]] # "free"
  BY <1>JipBJjaaBAYD, Zenon, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. OyyWS /\ h9WLgd /\ p1YmMe5 /\ vRZWI /\ IwCp /\ vS7em /\ bFwlN /\ dcfPK
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>3. (pst[xsrc[x]] = "drain" => pqp[xsrc[x]] = 0) /\ EvidenceAt(xsrc[x],x)
  BY <2>1, Zenon, Sizes, Location, Design DEF K7, XRecvRel, Sizes, Location, Design
<2>4. pst' = [pst EXCEPT ![xsrc[x]] = IF zolB2ei(xsrc[x],x) THEN "free" ELSE @]
    /\ pr' = [pr EXCEPT ![xsrc[x]] = IF zolB2ei(xsrc[x],x) THEN 0 ELSE @]
    /\ pgn' = [pgn EXCEPT ![xsrc[x]] = IF zolB2ei(xsrc[x],x) THEN 0 ELSE @]
    /\ plt' = [plt EXCEPT ![xsrc[x]] = IF zolB2ei(xsrc[x],x) THEN 0 ELSE @]
    /\ led' = [led EXCEPT ![xsrc[x]] = @ \ {x}] /\ UNCHANGED <<sled,prefc,pqp>>
  BY <2>1, <2>2, <2>3, <1>aCjZlKuaWx, <1>Iz2Fdgrb5, <1>gB0JQ8nsN3, <1>WQjX4xUUz5, <1>GRHIWgNo5P, <1>goKNO22NOh4, <1>Lk8lTFd1ji9A, <1>C8753eIVs2, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>4, Zenon, Sizes, Location, Design DEF XRecvRel, xorAl, PuAqm3, zolB2ei, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vwW8NHjBeBOFn.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"]
<2> USE ONLY <1>vwW8NHjBeBOFn, Sizes, Location, Design
<2>1. K12 /\ qvLUP
  BY <1>UwwC5LVwQr, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. PICK m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
      /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
  BY Zenon, Sizes, Location, Design DEF XRecvRel, Sizes, Location, Design
<2>3. wuoDNx7(m)
  BY <2>1, <2>2, <1>laJZVswepl, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ((iv[x] = "cqe" /\ hw[x] = "stop" /\ m.ok = hok[x]) \/ (iv[x] = "nopost" /\ ~m.ok))
  BY <2>2, <2>3, Zenon, Sizes, Location, Design DEF wuoDNx7, jjAuj, Sizes, Location, Design
<2>5. m.ok \in BOOLEAN
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF qvLUP, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>4, <2>5, Zenon, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EWRukYSfjlA42zd.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : led'[q] \subseteq led[q]
<2> USE ONLY <1>EWRukYSfjlA42zd, Sizes, Location, Design
<2>1. dcfPK
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qYElrDKgO7Pysk9.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pst'[q] = IF q=xsrc[x] /\ PuAqm3(x) THEN "free" ELSE pst[q]
<2> USE ONLY <1>qYElrDKgO7Pysk9, Sizes, Location, Design
<2>1. OyyWS
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. pst' = [pst EXCEPT ![xsrc[x]] = IF PuAqm3(x) THEN "free" ELSE @]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF OyyWS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>h4UnCgx9oN3EKs.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pr'[q] = IF q=xsrc[x] /\ PuAqm3(x) THEN 0 ELSE pr[q]
<2> USE ONLY <1>h4UnCgx9oN3EKs, Sizes, Location, Design
<2>1. IwCp
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. pr' = [pr EXCEPT ![xsrc[x]] = IF PuAqm3(x) THEN 0 ELSE @]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF IwCp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mpioqgxf03fIO4l.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pgn'[q] = IF q=xsrc[x] /\ PuAqm3(x) THEN 0 ELSE pgn[q]
<2> USE ONLY <1>mpioqgxf03fIO4l, Sizes, Location, Design
<2>1. vS7em
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. pgn' = [pgn EXCEPT ![xsrc[x]] = IF PuAqm3(x) THEN 0 ELSE @]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF vS7em, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mXJy2wcqaeycs5s.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : plt'[q] = IF q=xsrc[x] /\ PuAqm3(x) THEN 0 ELSE plt[q]
<2> USE ONLY <1>mXJy2wcqaeycs5s, Sizes, Location, Design
<2>1. bFwlN
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. plt' = [plt EXCEPT ![xsrc[x]] = IF PuAqm3(x) THEN 0 ELSE @]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF bFwlN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sf9vq9C6OqYTYZm.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : led'[q] = IF q=xsrc[x] THEN led[q] \ {x} ELSE led[q]
<2> USE ONLY <1>sf9vq9C6OqYTYZm, Sizes, Location, Design
<2>1. dcfPK
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OuxV4v7ud8uJFR6.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ \A y \in Xids : xst'[y] = IF y=x THEN (IF ok THEN "landed" ELSE "failed") ELSE xst[y]
<2> USE ONLY <1>OuxV4v7ud8uJFR6, Sizes, Location, Design
<2>1. PD2ZN /\ (\E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"])
  BY <1>UwwC5LVwQr, <1>vwW8NHjBeBOFn, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF PD2ZN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GRuvrbZQVbW.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : IsD(Loc(q)) =>
    pst'[q] = pst[q] /\ pr'[q] = pr[q] /\ pgn'[q] = pgn[q] /\ plt'[q] = plt[q] /\ led'[q] = led[q]
<2> USE ONLY <1>GRuvrbZQVbW, Sizes, Location, Design
<2>1. Loc(xsrc[x]) \in PInst
  BY <1>JipBJjaaBAYD, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, Sizes, SMT, Location, Design DEF IsD, PInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IASrF4scYumj5WC4.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE PuAqm3(x) => led'[xsrc[x]] = {} /\ sled[xsrc[x]] = {} /\ sfly[xsrc[x]] = {} /\ pqp[xsrc[x]] = 0
<2> USE ONLY <1>IASrF4scYumj5WC4, Sizes, Location, Design
<2>1. K6 /\ K7 /\ xsrc[x] \in Pages
  BY <1>JipBJjaaBAYD, V21_Inv_K6, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>sf9vq9C6OqYTYZm, Zenon, Sizes, Location, Design DEF PuAqm3, K6, K7, Sizes, Location, Design
\* T2M-END R2M2448_PdROOld_PP_PdCXRecvRelEffects


<1>vZ8jO70XZ.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE K10'
<2> USE ONLY <1>vZ8jO70XZ, Sizes, Location, Design
<2>0. SUFFICES ASSUME NEW bb_x \in Xids
                 PROVE ((bb_x < nx /\ xdst[bb_x] \in Pages /\ OwnedBy(xdst[bb_x], xr[bb_x], xg[bb_x])
            /\ ~(ph[Loc(xdst[bb_x])][xr[bb_x]] \in {"run", "ovl"} /\ rg[Loc(xdst[bb_x])][xr[bb_x]] = xg[bb_x]))
           => ptl[xdst[bb_x]] = (IF hw[bb_x] = "stop" /\ hok[bb_x] THEN xlt[bb_x] ELSE 0))'
  BY Sizes, Location, Design DEF K10, Sizes, Location, Design
<2>1. K10 /\ K1 /\ K2 /\ JjZ1PO /\ a1R5 /\ CXAy /\ OyyWS /\ IwCp /\ vS7em
  BY <1>UwwC5LVwQr, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. ((bb_x < nx /\ xdst[bb_x] \in Pages /\ OwnedBy(xdst[bb_x], xr[bb_x], xg[bb_x])
            /\ ~(ph[Loc(xdst[bb_x])][xr[bb_x]] \in {"run", "ovl"} /\ rg[Loc(xdst[bb_x])][xr[bb_x]] = xg[bb_x]))
           => ptl[xdst[bb_x]] = (IF hw[bb_x] = "stop" /\ hok[bb_x] THEN xlt[bb_x] ELSE 0))'
  BY <2>1, <2>2, <1>JipBJjaaBAYD, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, <1>OuxV4v7ud8uJFR6, <1>EWRukYSfjlA42zd, <1>GRuvrbZQVbW, <1>IASrF4scYumj5WC4, <1>BCp, <1>WI2wGaBn, Design, Sizes, SMT, Location DEF PuAqm3, DInst, ExpInst, ExpPage, InitInst, InitPage, IsD, IsP, K1, K10, K2, KPinned, NL, OwnedBy, PInst, vS7em, IwCp, OyyWS, JjZ1PO, CXAy, a1R5, Tag, KPages, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, Location, Design DEF K10, Sizes, Location, Design
\* T2M-END R2M2449_PdROOld_PP_PdCXRecvRelLK10

\* T2M-SCOPE R2M2450_PdROOld_PP_PdCXRecvRelLK11

<1>OsxMSS8HwN.        
  ASSUME NEW x \in Xids, NEW p \in Pages, PinInv, XRecvRel(x)
  PROVE ~(p = xsrc[x] /\ PuAqm3(x)) =>
    UNCHANGED <<pst[p], pr[p], pgn[p], plt[p]>>
  BY ONLY <1>OsxMSS8HwN, Sizes, Location, Design, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l,
     <1>mXJy2wcqaeycs5s, SMT DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>i2ikEfnJRzPG68bc.        
  ASSUME NEW x \in Xids, NEW i \in Inst, NEW r \in Rq,
    PinInv, XRecvRel(x)
  PROVE Active(i,r) => rpg[i][r] \in Pages /\
    UNCHANGED <<pst[rpg[i][r]], pr[rpg[i][r]], pgn[rpg[i][r]], plt[rpg[i][r]]>>
<2> USE ONLY <1>i2ikEfnJRzPG68bc, Sizes, Location, Design
<2>1. K7 /\ IHCST(i,r)
  BY <1>iO67a, V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Active(i,r) => rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
  BY <2>1, Zenon, Sizes, Location, Design DEF IHCST, Sizes, Location, Design
<2>3. Active(i,r) => BDBZ2(rpg[i][r])
  BY <2>1, <2>2, <1>J7mCO, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. Active(i,r) => Maps(Loc(rpg[i][r]),r,rpg[i][r])
  BY <2>2, SMT, Sizes, Location, Design DEF Maps, Sizes, Location, Design
<2>5. Active(i,r) => pst[rpg[i][r]] # "drain"
  BY <2>3, <2>4, SMT, Sizes, Location, Design DEF BDBZ2, Sizes, Location, Design
<2>6. Active(i,r) => ~(rpg[i][r] = xsrc[x] /\ PuAqm3(x))
  BY <2>5, SMT, Sizes, Location, Design DEF PuAqm3, Sizes, Location, Design
<2>7. QED
  BY <2>2, <2>6, <1>OsxMSS8HwN, <1>bxKOhLcK1Mi, SMT, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eQVe6l8.        
  ASSUME NEW x \in Xids, NEW i \in Inst, NEW r \in Rq,
    PinInv, XRecvRel(x)
  PROVE IHCST(i,r)'
<2> USE ONLY <1>eQVe6l8, Sizes, Location, Design
<2>1. IHCST(i,r)
  BY <1>iO67a, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hp, hd, ph, rg, rpg, rx, rhit, rpe,
                nx, xsrc, xr, xg, iv, sled, sfly, ptl, xlt>>
  BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. Active(i,r) => rpg[i][r] \in Pages /\
    UNCHANGED <<pst[rpg[i][r]], pr[rpg[i][r]], pgn[rpg[i][r]], plt[rpg[i][r]]>>
  BY <1>i2ikEfnJRzPG68bc, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ph[i][r] \in {"pre","ready"} => led'[rpg[i][r]] = {}
  BY <2>1, <2>3, <1>EWRukYSfjlA42zd, SMT, Sizes, Location, Design DEF IHCST, Active, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF IHCST, Active, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>R2dnVDQl.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE K8'
  BY ONLY <1>R2dnVDQl, Sizes, Location, Design, <1>eQVe6l8, <1>WjkJ7p4bVOE DEF Sizes, Location, Design
\* T2M-END R2M2459_PdROOld_PP_PdCXRecvRelLK8

\* T2M-SCOPE R2M2460_PdROOld_PP_PdCXRecvRelLRecord9

<1>vAH7pW3NQW.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
  PROVE K8'
  BY ONLY <1>vAH7pW3NQW, Sizes, Location, Design, <1>R2dnVDQl, V21_Inv_K8 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VysDkNfWzIh.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
  PROVE K10'
  BY ONLY <1>VysDkNfWzIh, Sizes, Location, Design, <1>vZ8jO70XZ, V21_Inv_K10 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xudFtE4kvpvp2ZvQpI.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE K10'
 BY ONLY <1>xudFtE4kvpvp2ZvQpI, Sizes, Location, Design, <1>VysDkNfWzIh DEF Sizes, Location, Design
\* T2M-END R2M2466_PdROFinal_XRecvRel_K10

\* T2M-SCOPE R2M2467_PdROFinal_XRecvRel_K11

<1>w0G8uAIlXMkX2CKhK.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE K8'
 BY ONLY <1>w0G8uAIlXMkX2CKhK, Sizes, Location, Design, <1>vAH7pW3NQW DEF Sizes, Location, Design
\* T2M-END R2M2475_PdROFinal_XRecvRel_K8

\* T2M-SCOPE R2M2476_PdROFinal_XRecvRel_K9

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

<1>MeRGJ.        
  ASSUME NEW p \in Pages, K7
  , RO_SharedFieldsFrame
 PROVE XGvsJ(p)
  BY ONLY <1>MeRGJ, Sizes, Location, Design DEF K7, XGvsJ, RO_SharedFieldsFrame, Sizes, Location, Design

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

<1>noEzBZgFi.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), RO_SharedFieldsFrame
 PROVE K15'
<2> USE ONLY <1>noEzBZgFi, Sizes, Location, Design
<2>1. K15 /\ K14 /\ UDzxF /\ hgjUtY /\ Q73Wr
 BY <1>BVNGgr9i2, <1>w1A6qbKTB1, V21_Inv_K14, V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,ptl,pvis,hw,xdst,sfly,sled>>
 BY <1>XRE0PLtFO8E, <1>qrX7l4c0RwbP, Sizes, Location, Design DEF I3PLV, Sizes, Location, Design
<2>3. \A i \in Inst,s \in KSlots : kpin[i][s] => \A e \in krs[i][s] :
 e[3] \in Pages => plt'[e[3]]=plt[e[3]]
 BY <2>1, <1>k7V34jju9ya, <1>Tt8xgaTeFCQTnry, SMTT(10), Sizes, Location, Design DEF QkFcpo, Sizes, Location, Design
<2>4. \A p \in Pages : led'[p] \subseteq led[p]
 BY <1>kNFIUvMsBxQxTUd, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. \A i \in Inst,s \in KSlots : kpin[i][s] => \A e \in krs[i][s] : KData(i,e)'
 BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K15, KData, SData, NoWriteInto, Writing, InFl, UDzxF, KPages, RO_SharedFieldsFrame, Sizes, Location, Design
<2>6. QED
 BY <2>1, <2>2, <2>4, <2>5, Sizes, SMTT(10), Location, Design DEF K15, K14, UDzxF, KPages, IsP, IsD, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M2638_PdRORead_PdCXRecvRelLK15


<1>xT7OoOwYaqdF.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE K15'
<2> USE ONLY <1>xT7OoOwYaqdF, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>d9e3rwFqkUMgpB3C5Sj, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. K15'
 BY <2>1, <1>noEzBZgFi, <1>w1A6qbKTB1, V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2639_PdROReadCell_XRecvRel_K15


<1> QED BY <1>xudFtE4kvpvp2ZvQpI, <1>xT7OoOwYaqdF, <1>w0G8uAIlXMkX2CKhK, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_XRecvRel_05_01 SHA 7ec4dc23d399c3579b77782596ec2336d75fb55d9a798080346e58c9eb35893b
USE DEF V21_Inv_KStruct, V21_Inv_NoEvictUnderRDMA, V22_T_gen, V22_T_hw, V22_T_schoice, V22_T_smap, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF Part_XRecvRel_04_02, V21_Inv_K10, V21_Inv_K14, V21_Inv_K15, V21_Inv_K8
THEOREM Part_XRecvRel_05_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE (K7)' /\ (K4)' /\ (NoEvictUnderRDMA)' /\ (P_SI1)' /\ (P_SI6)' /\ (SendOwnLanded)'
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


           RO_StableStates == \A p \in SPages : spst[p] \notin {"drain","dup"} => spst'[p]=spst[p]

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

           zolB2ei(p,x) == pst[p] = "drain" /\ led[p] \ {x} = {} /\ sled[p] = {} /\ ~KPinned(p)

           \* T2M-LOCAL-VISIBILITY

           BDBZ2(p) ==
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


           PuAqm3(x) == pst[xsrc[x]] = "drain" /\ led[xsrc[x]] \ {x} = {} /\ sled[xsrc[x]] = {} /\ ~KPinned(xsrc[x])


           xorAl(x) ==
             /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
             /\ \E m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
                  /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
             /\ LET p == xsrc[x] IN
                  /\ pst' = [pst EXCEPT ![p] = IF PuAqm3(x) THEN "free" ELSE @]
                  /\ pr' = [pr EXCEPT ![p] = IF PuAqm3(x) THEN 0 ELSE @]
                  /\ pgn' = [pgn EXCEPT ![p] = IF PuAqm3(x) THEN 0 ELSE @]
                  /\ plt' = [plt EXCEPT ![p] = IF PuAqm3(x) THEN 0 ELSE @]
                  /\ led' = [led EXCEPT ![p] = @ \ {x}]
             /\ UNCHANGED <<sled, prefc, pqp>>

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_StableStates, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, wuoDNx7, zolB2ei, BDBZ2, PuAqm3, xorAl

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

<1>boxoLZrc.        
 ASSUME PinInv, UNCHANGED <<kpin,krs,ph,rg,schoice,smap,rpgS>>
 PROVE P_SI6'
 BY ONLY <1>boxoLZrc, Sizes, Location, Design, SMTT(10), V21_Inv_P_SI6 DEF P_SI6, SI6, Active, Sizes, Location, Design

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

<1>B128D3hMdCgw8TANOm.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
 PROVE \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
<2> USE ONLY <1>B128D3hMdCgw8TANOm, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>B128D3hMdCgw8TANOm, V22_T_hw, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, Sizes, Location, Design

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

<1>s4fuo15rHIiAguKzivNpArsnI.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>s4fuo15rHIiAguKzivNpArsnI, Sizes, Location, Design, <1>PPz9uKbRgJBnQJC3CjOZ, <1>uN4X28w2cQgMbenf0LA5Ir, <1>d9e3rwFqkUMgpB3C5Sj, <1>jGg3R, <1>B128D3hMdCgw8TANOm, <1>YraYIuuP0dXpCHZH DEF RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Qex95MRCYMF3.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE P_SI1'
 BY ONLY <1>Qex95MRCYMF3, Sizes, Location, Design, <1>PPz9uKbRgJBnQJC3CjOZ, <1>uN4X28w2cQgMbenf0LA5Ir, <1>d9e3rwFqkUMgpB3C5Sj, <1>jGg3R, <1>bMg7Y2kjg6bV3XJ9C0Wa, <1>dU0N9X88erqchOBQF, <1>rUEzU8wbH, <1>KPndmXINRK1Z DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NcacJ6ESMp7g.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE P_SI6'
 BY ONLY <1>NcacJ6ESMp7g, Sizes, Location, Design, <1>PPz9uKbRgJBnQJC3CjOZ, <1>dU0N9X88erqchOBQF, <1>d9e3rwFqkUMgpB3C5Sj, <1>uN4X28w2cQgMbenf0LA5Ir, <1>boxoLZrc DEF Sizes, Location, Design
\* T2M-END R2M2277_PdROShared_XRecvRel


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


<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>BAOvPX9HlXrbW6RIP.        
  BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>> => BaseSendOwnLanded'
  BY SMT, Sizes, Location, Design DEF BaseSendOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YfveNqRTYXF.        
  ASSUME NEW x \in Xids, XRecvRel(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>YfveNqRTYXF, Sizes, Location, Design, Zenon DEF EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GB0x56ST6swPlZvaxaU.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>GB0x56ST6swPlZvaxaU, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>>
  BY <1>d9xjhNZcw, <1>YfveNqRTYXF, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>BAOvPX9HlXrbW6RIP, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2278_PdROBase_PdBXRecvRelFrames


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>laJZVswepl.         K12 <=> (\A m \in net : wuoDNx7(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>bxKOhLcK1Mi.        
  ASSUME NEW x \in Xids, XRecvRel(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>bxKOhLcK1Mi, Sizes, Location, Design, Zenon DEF EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M2446_PdROOld_PP_PdBXRecvRelFrames


<1>tPQNaEgneNJ.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, OyyWS, PageTo(p,s,q,nl,ns)
  PROVE pst' = [pst EXCEPT ![p] = s]
  BY ONLY <1>tPQNaEgneNJ, Sizes, Location, Design, SMT DEF PageTo, OyyWS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eXFmzb8wTq.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, IwCp, PageTo(p,s,q,nl,ns)
  PROVE pr' = [pr EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>eXFmzb8wTq, Sizes, Location, Design, SMT DEF PageTo, IwCp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cWvTNL82BvW.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, vS7em, PageTo(p,s,q,nl,ns)
  PROVE pgn' = [pgn EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>cWvTNL82BvW, Sizes, Location, Design, SMT DEF PageTo, vS7em, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r8v01ijDknZ.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, bFwlN, PageTo(p,s,q,nl,ns)
  PROVE plt' = [plt EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>r8v01ijDknZ, Sizes, Location, Design, SMT DEF PageTo, bFwlN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pmNvhbGWYfr.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, dcfPK, PageTo(p,s,q,nl,ns)
  PROVE led' = [led EXCEPT ![p] = IF s = "free" THEN {} ELSE nl]
  BY ONLY <1>pmNvhbGWYfr, Sizes, Location, Design, SMT DEF PageTo, dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ifTaNAt1fWoG.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, h9WLgd, PageTo(p,s,q,nl,ns)
  PROVE sled' = [sled EXCEPT ![p] = IF s = "free" THEN {} ELSE ns]
  BY ONLY <1>ifTaNAt1fWoG, Sizes, Location, Design, SMT DEF PageTo, h9WLgd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DdXdgzCjpiKcV.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, p1YmMe5, PageTo(p,s,q,nl,ns)
  PROVE prefc' = [prefc EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>DdXdgzCjpiKcV, Sizes, Location, Design, SMT DEF PageTo, p1YmMe5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>p5S68OZJNlo.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, vRZWI, PageTo(p,s,q,nl,ns)
  PROVE pqp' = [pqp EXCEPT ![p] = IF s = "quar" THEN q ELSE IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>p5S68OZJNlo, Sizes, Location, Design, SMT DEF PageTo, vRZWI, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Y8hTRv352TvU.        
  ASSUME NEW p, NEW x, pst[p] # "free"
  PROVE AfterEv(p,led[p] \ {x},sled[p]) = (IF zolB2ei(p,x) THEN "free" ELSE pst[p])
    /\ (AfterEv(p,led[p] \ {x},sled[p]) = "free" <=> zolB2ei(p,x))
  BY ONLY <1>Y8hTRv352TvU, Sizes, Location, Design, Design, Zenon DEF AfterEv, PinBlocks, zolB2ei, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aCjZlKuaWx.        
  ASSUME NEW p \in Pages, NEW x, OyyWS, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pst' = [pst EXCEPT ![p] = IF zolB2ei(p,x) THEN "free" ELSE @]
<2> USE ONLY <1>aCjZlKuaWx, Sizes, Location, Design
<2>1. pst' = [pst EXCEPT ![p] = AfterEv(p,led[p] \ {x},sled[p])]
  BY <1>tPQNaEgneNJ, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, OyyWS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Iz2Fdgrb5.        
  ASSUME NEW p \in Pages, NEW x, IwCp, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pr' = [pr EXCEPT ![p] = IF zolB2ei(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>Iz2Fdgrb5, Sizes, Location, Design
<2>1. pr' = [pr EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>eXFmzb8wTq, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, IwCp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gB0JQ8nsN3.        
  ASSUME NEW p \in Pages, NEW x, vS7em, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pgn' = [pgn EXCEPT ![p] = IF zolB2ei(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>gB0JQ8nsN3, Sizes, Location, Design
<2>1. pgn' = [pgn EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>cWvTNL82BvW, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, vS7em, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WQjX4xUUz5.        
  ASSUME NEW p \in Pages, NEW x, bFwlN, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE plt' = [plt EXCEPT ![p] = IF zolB2ei(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>WQjX4xUUz5, Sizes, Location, Design
<2>1. plt' = [plt EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>r8v01ijDknZ, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, bFwlN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GRHIWgNo5P.        
  ASSUME NEW p \in Pages, NEW x, dcfPK, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE led' = [led EXCEPT ![p] = @ \ {x}]
<2> USE ONLY <1>GRHIWgNo5P, Sizes, Location, Design
<2>1. led' = [led EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE led[p] \ {x}]
  BY <1>pmNvhbGWYfr, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>goKNO22NOh4.        
  ASSUME NEW p \in Pages, NEW x, h9WLgd, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED sled
<2> USE ONLY <1>goKNO22NOh4, Sizes, Location, Design
<2>1. sled' = [sled EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE sled[p]]
  BY <1>ifTaNAt1fWoG, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, h9WLgd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Lk8lTFd1ji9A.        
  ASSUME NEW p \in Pages, NEW x, p1YmMe5, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED prefc
<2> USE ONLY <1>Lk8lTFd1ji9A, Sizes, Location, Design
<2>1. prefc' = [prefc EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>DdXdgzCjpiKcV, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, p1YmMe5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>C8753eIVs2.        
  ASSUME NEW p \in Pages, NEW x, vRZWI, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED pqp
<2> USE ONLY <1>C8753eIVs2, Sizes, Location, Design
<2>1. pqp' = [pqp EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "quar" THEN pqp[p] ELSE IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>p5S68OZJNlo, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Y8hTRv352TvU, SMT, Sizes, Location, Design DEF zolB2ei, vRZWI, Sizes, Location, Design
\* T2M-END R2M2447_PdROOld_PP_PdCEvidence


<1>fDQ.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xsrc[x] \in Pages
  PROVE Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>fDQ, Sizes, Location, Design
<2>1. K1 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xp[x] = hp[xr[x]][xg[x]]
        /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J7mCO.        
  ASSUME NEW p \in Pages, K7
  PROVE BDBZ2(p)
  BY ONLY <1>J7mCO, Sizes, Location, Design DEF K7, BDBZ2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JipBJjaaBAYD.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
    /\ x < nx /\ xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xp[x] \in PInst
    /\ pst[xsrc[x]] \in {"priv", "drain", "quar"} /\ prefc[xsrc[x]] = 0
<2> USE ONLY <1>JipBJjaaBAYD, Sizes, Location, Design
<2>1. K2 /\ K4 /\ K5 /\ K7 /\ SHJS /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
  BY <1>UwwC5LVwQr, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, XRecvRel, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, SMT, Sizes, Location, Design DEF K2, SHJS, Xids, Sizes, Location, Design
<2>3. xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K2, ExpPage, ExpInst, Sizes, Location, Design
<2>4. Loc(xsrc[x]) \in PInst
  BY <2>2, <2>3, <1>fDQ, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. x \in led[xsrc[x]]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K4, ExpPage, Sizes, Location, Design
<2>6. OwnedBy(xsrc[x],xr[x],xg[x]) /\ BDBZ2(xsrc[x])
  BY <2>1, <2>3, <2>5, <1>J7mCO, Sizes, Location, Design DEF K5, Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>6, Zenon, Sizes, Location, Design DEF OwnedBy, BDBZ2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lPQo5GJaUibf.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE xorAl(x)
<2> USE ONLY <1>lPQo5GJaUibf, Sizes, Location, Design
<2>1. K7 /\ xsrc[x] \in Pages /\ prefc[xsrc[x]] = 0 /\ pst[xsrc[x]] # "free"
  BY <1>JipBJjaaBAYD, Zenon, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. OyyWS /\ h9WLgd /\ p1YmMe5 /\ vRZWI /\ IwCp /\ vS7em /\ bFwlN /\ dcfPK
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>3. (pst[xsrc[x]] = "drain" => pqp[xsrc[x]] = 0) /\ EvidenceAt(xsrc[x],x)
  BY <2>1, Zenon, Sizes, Location, Design DEF K7, XRecvRel, Sizes, Location, Design
<2>4. pst' = [pst EXCEPT ![xsrc[x]] = IF zolB2ei(xsrc[x],x) THEN "free" ELSE @]
    /\ pr' = [pr EXCEPT ![xsrc[x]] = IF zolB2ei(xsrc[x],x) THEN 0 ELSE @]
    /\ pgn' = [pgn EXCEPT ![xsrc[x]] = IF zolB2ei(xsrc[x],x) THEN 0 ELSE @]
    /\ plt' = [plt EXCEPT ![xsrc[x]] = IF zolB2ei(xsrc[x],x) THEN 0 ELSE @]
    /\ led' = [led EXCEPT ![xsrc[x]] = @ \ {x}] /\ UNCHANGED <<sled,prefc,pqp>>
  BY <2>1, <2>2, <2>3, <1>aCjZlKuaWx, <1>Iz2Fdgrb5, <1>gB0JQ8nsN3, <1>WQjX4xUUz5, <1>GRHIWgNo5P, <1>goKNO22NOh4, <1>Lk8lTFd1ji9A, <1>C8753eIVs2, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>4, Zenon, Sizes, Location, Design DEF XRecvRel, xorAl, PuAqm3, zolB2ei, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vwW8NHjBeBOFn.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"]
<2> USE ONLY <1>vwW8NHjBeBOFn, Sizes, Location, Design
<2>1. K12 /\ qvLUP
  BY <1>UwwC5LVwQr, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. PICK m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
      /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
  BY Zenon, Sizes, Location, Design DEF XRecvRel, Sizes, Location, Design
<2>3. wuoDNx7(m)
  BY <2>1, <2>2, <1>laJZVswepl, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ((iv[x] = "cqe" /\ hw[x] = "stop" /\ m.ok = hok[x]) \/ (iv[x] = "nopost" /\ ~m.ok))
  BY <2>2, <2>3, Zenon, Sizes, Location, Design DEF wuoDNx7, jjAuj, Sizes, Location, Design
<2>5. m.ok \in BOOLEAN
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF qvLUP, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>4, <2>5, Zenon, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EWRukYSfjlA42zd.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : led'[q] \subseteq led[q]
<2> USE ONLY <1>EWRukYSfjlA42zd, Sizes, Location, Design
<2>1. dcfPK
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qYElrDKgO7Pysk9.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pst'[q] = IF q=xsrc[x] /\ PuAqm3(x) THEN "free" ELSE pst[q]
<2> USE ONLY <1>qYElrDKgO7Pysk9, Sizes, Location, Design
<2>1. OyyWS
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. pst' = [pst EXCEPT ![xsrc[x]] = IF PuAqm3(x) THEN "free" ELSE @]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF OyyWS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>h4UnCgx9oN3EKs.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pr'[q] = IF q=xsrc[x] /\ PuAqm3(x) THEN 0 ELSE pr[q]
<2> USE ONLY <1>h4UnCgx9oN3EKs, Sizes, Location, Design
<2>1. IwCp
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. pr' = [pr EXCEPT ![xsrc[x]] = IF PuAqm3(x) THEN 0 ELSE @]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF IwCp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mpioqgxf03fIO4l.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : pgn'[q] = IF q=xsrc[x] /\ PuAqm3(x) THEN 0 ELSE pgn[q]
<2> USE ONLY <1>mpioqgxf03fIO4l, Sizes, Location, Design
<2>1. vS7em
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. pgn' = [pgn EXCEPT ![xsrc[x]] = IF PuAqm3(x) THEN 0 ELSE @]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF vS7em, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mXJy2wcqaeycs5s.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : plt'[q] = IF q=xsrc[x] /\ PuAqm3(x) THEN 0 ELSE plt[q]
<2> USE ONLY <1>mXJy2wcqaeycs5s, Sizes, Location, Design
<2>1. bFwlN
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. plt' = [plt EXCEPT ![xsrc[x]] = IF PuAqm3(x) THEN 0 ELSE @]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF bFwlN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sf9vq9C6OqYTYZm.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \A q \in Pages : led'[q] = IF q=xsrc[x] THEN led[q] \ {x} ELSE led[q]
<2> USE ONLY <1>sf9vq9C6OqYTYZm, Sizes, Location, Design
<2>1. dcfPK
  BY <1>UwwC5LVwQr, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>lPQo5GJaUibf, Zenon, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF dcfPK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OuxV4v7ud8uJFR6.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ \A y \in Xids : xst'[y] = IF y=x THEN (IF ok THEN "landed" ELSE "failed") ELSE xst[y]
<2> USE ONLY <1>OuxV4v7ud8uJFR6, Sizes, Location, Design
<2>1. PD2ZN /\ (\E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"])
  BY <1>UwwC5LVwQr, <1>vwW8NHjBeBOFn, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF PD2ZN, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IASrF4scYumj5WC4.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE PuAqm3(x) => led'[xsrc[x]] = {} /\ sled[xsrc[x]] = {} /\ sfly[xsrc[x]] = {} /\ pqp[xsrc[x]] = 0
<2> USE ONLY <1>IASrF4scYumj5WC4, Sizes, Location, Design
<2>1. K6 /\ K7 /\ xsrc[x] \in Pages
  BY <1>JipBJjaaBAYD, V21_Inv_K6, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>sf9vq9C6OqYTYZm, Zenon, Sizes, Location, Design DEF PuAqm3, K6, K7, Sizes, Location, Design
\* T2M-END R2M2448_PdROOld_PP_PdCXRecvRelEffects


<1>Rq7bRo7n.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE K4'
<2> USE ONLY <1>Rq7bRo7n, Sizes, Location, Design
<2>1. K4 /\ K2 /\ SHJS
  BY <1>UwwC5LVwQr, V21_Inv_K2, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<nx, xk, xsrc, xdst, iv>>
  BY <1>bxKOhLcK1Mi, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. Mode = "pull" /\ xk[x] = "rd" /\ xsrc[x] \in Pages
  BY <1>JipBJjaaBAYD, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A y \in Xids : y < nx => xk[y] = "rd" /\ xsrc[y] \in Pages
  BY <2>1, <2>3, Sizes, SMT, Location, Design DEF K2, ExpPage, SHJS, Xids, Sizes, Location, Design
<2>5. \A y \in Xids : y < nx =>
  ((y \in led'[xsrc[y]]) <=> (xst'[y] = "posted"))
  <3>0. SUFFICES ASSUME NEW y \in Xids PROVE y < nx =>
    ((y \in led'[xsrc[y]]) <=> (xst'[y] = "posted"))
    BY SMT, Sizes, Location, Design DEF Sizes, Location, Design
  <3>1. y < nx => ((y \in led[xsrc[y]]) <=> (xst[y] = "posted"))
    BY <2>1, <2>4, SMT, Sizes, Location, Design DEF K4, ExpPage, Sizes, Location, Design
  <3>2. QED
    BY <2>3, <2>4, <3>1, <1>sf9vq9C6OqYTYZm, <1>OuxV4v7ud8uJFR6, SMT, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A y \in Xids : y < nx /\ xdst[y] \in Pages =>
  ((y \in led'[xdst[y]]) <=> (iv[y] \in {"reg","posted","failret"}))
  <3>0. SUFFICES ASSUME NEW y \in Xids PROVE y < nx /\ xdst[y] \in Pages =>
    ((y \in led'[xdst[y]]) <=> (iv[y] \in {"reg","posted","failret"}))
    BY SMT, Sizes, Location, Design DEF Sizes, Location, Design
  <3>1. y < nx /\ xdst[y] \in Pages =>
    ((y \in led[xdst[y]]) <=> (iv[y] \in {"reg","posted","failret"}))
    BY <2>1, <2>4, SMT, Sizes, Location, Design DEF K4, InitPage, Sizes, Location, Design
  <3>2. iv[x] \notin {"reg","posted","failret"}
    BY <1>vwW8NHjBeBOFn, SMT, Sizes, Location, Design DEF Sizes, Location, Design
  <3>3. QED
    BY <3>1, <3>2, <1>sf9vq9C6OqYTYZm, SMT, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. \A p \in Pages : \A y \in led'[p] :
  y < nx /\ (p = ExpPage(y) \/ p = InitPage(y))
  BY <2>1, <1>EWRukYSfjlA42zd, SMT, Sizes, Location, Design DEF K4, Sizes, Location, Design
<2>8. QED
  BY <2>2, <2>4, <2>5, <2>6, <2>7, SMT, Sizes, Location, Design DEF K4, ExpPage, InitPage, Sizes, Location, Design
\* T2M-END R2M2454_PdROOld_PP_PdCXRecvRelLK4

\* T2M-SCOPE R2M2455_PdROOld_PP_PdCXRecvRelLK5

<1>ZeK0HPX011lVlNILZ.        
  ASSUME NEW x \in Xids, NEW p \in Pages, PinInv, XRecvRel(x)
  PROVE UNCHANGED <<KPinned(p), NHits(p), GrownP(p)>>
    /\ \A r : UNCHANGED Maps(Loc(p),r,p)
<2> USE ONLY <1>ZeK0HPX011lVlNILZ, Sizes, Location, Design
<2>1. UNCHANGED <<kpin, krs, ph, rhit, rpg>>
  BY <1>bxKOhLcK1Mi, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<KPinned(p), NHits(p)>> /\ \A r : UNCHANGED Maps(Loc(p),r,p)
  BY <2>1, Isa, Sizes, Location, Design DEF KPinned, NHits, Maps, Active, Sizes, Location, Design
<2>3. Loc(xsrc[x]) \in PInst
  BY <1>JipBJjaaBAYD, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. UNCHANGED GrownP(p)
  BY <2>1, <2>3, <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, Sizes, SMT, Location, Design DEF GrownP, IsD, PInst, Sizes, Location, Design
<2>5. QED
  BY <2>2, <2>4, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2457_PdROOld_PP_PdCXPageFacts

\* T2M-SCOPE R2M2458_PdROOld_PP_PdCXRecvRelLK7
\* T2M-BODY R2M2458_PdROOld_PP_PdCXRecvRelLK7
\* T2M-LOCAL-VISIBILITY

<1>nLeQv.        
  ASSUME NEW x \in Xids, NEW p \in Pages, PinInv, XRecvRel(x)
  PROVE BDBZ2(p)'
<2> USE ONLY <1>nLeQv, Sizes, Location, Design
<2>1. BDBZ2(p)
  BY <1>J7mCO, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ptl, gen, sfly, prefc, pqp, rg, rhit, rpg, ph, sled>>
  BY <1>bxKOhLcK1Mi, <1>lPQo5GJaUibf, Sizes, Location, Design DEF xorAl, Sizes, Location, Design
<2>3. UNCHANGED <<KPinned(p), NHits(p), GrownP(p)>> /\ \A r : UNCHANGED Maps(Loc(p),r,p)
  BY <1>ZeK0HPX011lVlNILZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. pst[xsrc[x]] \in {"priv","drain","quar"} /\ prefc[xsrc[x]] = 0
  BY <1>JipBJjaaBAYD, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. pst'[p] = (IF p=xsrc[x] /\ PuAqm3(x) THEN "free" ELSE pst[p])
    /\ pr'[p] = (IF p=xsrc[x] /\ PuAqm3(x) THEN 0 ELSE pr[p])
    /\ pgn'[p] = (IF p=xsrc[x] /\ PuAqm3(x) THEN 0 ELSE pgn[p])
    /\ plt'[p] = (IF p=xsrc[x] /\ PuAqm3(x) THEN 0 ELSE plt[p])
    /\ led'[p] = (IF p=xsrc[x] THEN led[p] \ {x} ELSE led[p])
  BY <1>qYElrDKgO7Pysk9, <1>h4UnCgx9oN3EKs, <1>mpioqgxf03fIO4l, <1>mXJy2wcqaeycs5s, <1>sf9vq9C6OqYTYZm, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. PuAqm3(x) => led'[xsrc[x]] = {} /\ sled[xsrc[x]] = {} /\ sfly[xsrc[x]] = {} /\ pqp[xsrc[x]] = 0
  BY <1>IASrF4scYumj5WC4, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <2>6, SMT, Sizes, Location, Design DEF BDBZ2, PuAqm3, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cDnb5si1.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE K7'
  BY ONLY <1>cDnb5si1, Sizes, Location, Design, <1>nLeQv DEF K7, BDBZ2, Sizes, Location, Design
\* T2M-END R2M2458_PdROOld_PP_PdCXRecvRelLK7

\* T2M-SCOPE R2M2459_PdROOld_PP_PdCXRecvRelLK8

<1>vF8gJHg2YJ.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
  PROVE K4'
  BY ONLY <1>vF8gJHg2YJ, Sizes, Location, Design, <1>Rq7bRo7n, V21_Inv_K4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PKqaih0egG.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
  PROVE K7'
  BY ONLY <1>PKqaih0egG, Sizes, Location, Design, <1>cDnb5si1, V21_Inv_K7 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bkikLCdGp2EfkzLC5.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE K4'
 BY ONLY <1>bkikLCdGp2EfkzLC5, Sizes, Location, Design, <1>vF8gJHg2YJ DEF Sizes, Location, Design
\* T2M-END R2M2471_PdROFinal_XRecvRel_K4

\* T2M-SCOPE R2M2472_PdROFinal_XRecvRel_K5

<1>HcFQGLPC8dFAFMRTz.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE K7'
 BY ONLY <1>HcFQGLPC8dFAFMRTz, Sizes, Location, Design, <1>PKqaih0egG DEF Sizes, Location, Design
\* T2M-END R2M2474_PdROFinal_XRecvRel_K7

\* T2M-SCOPE R2M2475_PdROFinal_XRecvRel_K8

<1>e3g6sBaAoRHMXNEm1panWr.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE SendOwnLanded'
<2> USE ONLY <1>e3g6sBaAoRHMXNEm1panWr, Sizes, Location, Design
<2>1. BaseSendOwnLanded' BY <1>GB0x56ST6swPlZvaxaU, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IF ~B2 THEN TRUE ELSE \A x \in Xids : hw'[x]="fly" => \A p \in xsrcS'[x] \cup xsrcP'[x] : sdata'[p] /\ ~swrite'[p] /\ skey'[p]=STok(xr'[x],xg'[x])
 BY <1>PPz9uKbRgJBnQJC3CjOZ, <1>uN4X28w2cQgMbenf0LA5Ir, <1>B128D3hMdCgw8TANOm, <1>K49culthi, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF SendOwnLanded, Sizes, Location, Design
\* T2M-END R2M2697_PdROSafety_XRecvRel_SendOwnLanded


<1> QED BY <1>HcFQGLPC8dFAFMRTz, <1>bkikLCdGp2EfkzLC5, <1>s4fuo15rHIiAguKzivNpArsnI, <1>Qex95MRCYMF3, <1>NcacJ6ESMp7g, <1>e3g6sBaAoRHMXNEm1panWr, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_XRecvRel_05_02 SHA f5bb0593f88209ffa23c66ae554effcb0cad24fa29ceee5a276bc2172dd518a2
USE DEF V21_Inv_K3, V21_Inv_QuarNoReg, V22_PostSharedRefZero, V22_T_hok, V22_T_iv, V22_T_nx, V22_T_pgn, V22_T_pr, V22_T_pst, V22_T_rpgS, V22_T_sentry, V22_T_spst, V22_T_squar, V22_T_xst
HIDE DEF Part_XRecvRel_05_01, V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_KStruct, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, V22_T_gen
THEOREM Part_XRecvRel_05_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE (P_SI2)' /\ (P_SI5)' /\ (P_SI4)' /\ (SharedLedRef)' /\ (HitIdentity)' /\ (PrefcMatchesHolders)'
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

<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_xprefixOK, RO_E_dpreOK, RO_E_sprefc, RO_Flat, RO_StableStates, RO_ControlStep

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

<1>FZld0iMu.        
 ASSUME PinInv, UNCHANGED <<kpin,krs,spst,sdata,swrite,skey,sown,sgen,rpgS>>
 PROVE P_SI3'
 BY ONLY <1>FZld0iMu, Sizes, Location, Design, SMTT(10), V21_Inv_P_SI3 DEF P_SI3, SI3, SData, SHeld, Sizes, Location, Design

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
<2>match. PrefcMatchesHolders'
 BY ONLY <1>tkIbKthZ8rm8L, <1>BhJJoZwTfyo0ME, Sizes, Location, Design, SMTT(5)
<2>shared. (\A h \in rpgS' : spst'[h[4]]="shared") /\
           (\A x \in sentry' : \A q \in xsrcS'[x] : spst'[q]="shared") /\
           (\A h \in squar' : spst'[h[2]]="shared")
 BY ONLY <1>tkIbKthZ8rm8L, <1>zIpzJmV4LXez8qoyL, Sizes, Location, Design, SMTT(5)
<2>empty. {h \in rpgS' : h[4]=p}={} /\ {x \in sentry' : p \in xsrcS'[x]}={} /\ {h \in squar' : h[2]=p}={}
 BY ONLY <1>tkIbKthZ8rm8L, <2>shared, SMTT(5)
<2>qed. QED BY ONLY <1>tkIbKthZ8rm8L, <2>match, <2>empty, V22_PostSharedRefZero, SMTT(5) DEF V22_PostSharedRefZero

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

<1>B128D3hMdCgw8TANOm.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
 PROVE \A x \in Xids : hw'[x]="fly" => hw[x]="fly"
<2> USE ONLY <1>B128D3hMdCgw8TANOm, Sizes, Location, Design
<2>1. hw \in [Xids -> {"none","fly","issued","stop"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>B128D3hMdCgw8TANOm, V22_T_hw, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>um7KG5JBwvfLWupsQy.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
 PROVE \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
<2> USE ONLY <1>um7KG5JBwvfLWupsQy, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>um7KG5JBwvfLWupsQy, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>w0LyEpP9fkP4RwCkg1.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
 PROVE \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
<2> USE ONLY <1>w0LyEpP9fkP4RwCkg1, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>w0LyEpP9fkP4RwCkg1, V22_T_iv, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YQpAP83RkDRpsd4Y.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
 PROVE /\ \A z \in Xids : iv'[z]=iv[z] \/ iv'[z] \in {"cqe","failret"}
       /\ \A z \in Xids : xst'[z]=xst[z] \/ xst'[z] \in {"landed","failed"}
       /\ \A z \in Xids : hw'[z] \in {"issued","stop"} => hw[z] \in {"fly","issued","stop"}
<2> USE ONLY <1>YQpAP83RkDRpsd4Y, Sizes, Location, Design
<2>1. K3 /\ hw \in [Xids -> {"none","fly","issued","stop"}]
       /\ iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
       /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>YQpAP83RkDRpsd4Y, V22_T_hw, V22_T_iv, V22_T_xst, V21_Inv_K3, Sizes, Location, Design, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>n8YyidqDnlT5PBhmQQBz.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
 PROVE \A z \in Xids : hw'[z]="fly" => ~RO_Close(z)
<2> USE ONLY <1>n8YyidqDnlT5PBhmQQBz, Sizes, Location, Design
<2>1. K3 /\ hw \in [Xids -> {"none","fly","issued","stop"}]
       /\ iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
       /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>n8YyidqDnlT5PBhmQQBz, V22_T_hw, V22_T_iv, V22_T_xst, V21_Inv_K3, Sizes, Location, Design, SMTT(5)

<2>2. K12 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK m \in net : m.t="relsrc" /\ m.x=x
 BY SMTT(10), Sizes, Location, Design DEF XRecvRel, Sizes, Location, Design
<2>4. hw[x]="stop" \/ iv[x]="nopost"
 BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>5. hw[x] # "fly" BY <2>1, <2>4, SMTT(10), Sizes, Location, Design DEF K3, Sizes, Location, Design
<2>6. QED BY <2>1, <2>5, Sizes, Design, SMTT(10), Location DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, RO_Close, K3, InFl, CqeHw, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KVhFIZklSeYeuf7Duli.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
 PROVE \A z \in Xids : (hw'[z]="stop" /\ hok'[z] /\ xdst[z] \in Pages /\ Held(xdst[z],z)') =>
       ((hw[z]="stop" /\ hok[z] /\ Held(xdst[z],z)) \/ hw[z] \in {"fly","issued"})
<2> USE ONLY <1>KVhFIZklSeYeuf7Duli, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
       /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
       /\ hw \in [Xids -> {"none","fly","issued","stop"}] /\ hok \in [Xids -> BOOLEAN]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>KVhFIZklSeYeuf7Duli, V22_T_hok, V22_T_hw, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF AfterEv, EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, recV, rtV, Held, Sizes, Location, Design
\* T2M-END R2M2276_PdROEffects_XRecvRel


<1>op3j5lE9vlnHQhxE66AIlBplMNtA.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>op3j5lE9vlnHQhxE66AIlBplMNtA, Sizes, Location, Design, <1>PPz9uKbRgJBnQJC3CjOZ, <1>BhJJoZwTfyo0ME DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nqFa0AIXghR58Emtwxir.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE HitIdentity'
 BY ONLY <1>nqFa0AIXghR58Emtwxir, Sizes, Location, Design, <1>PPz9uKbRgJBnQJC3CjOZ, <1>uN4X28w2cQgMbenf0LA5Ir, <1>d9e3rwFqkUMgpB3C5Sj, <1>jGg3R, <1>BbgSGNWiNo6y DEF RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DR7DPdyIIekZ.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE P_SI3'
 BY ONLY <1>DR7DPdyIIekZ, Sizes, Location, Design, <1>dU0N9X88erqchOBQF, <1>d9e3rwFqkUMgpB3C5Sj, <1>jGg3R, <1>FZld0iMu DEF Sizes, Location, Design

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


<1>nM18WVUNVNYI.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE P_SI2'
 BY ONLY <1>nM18WVUNVNYI, Sizes, Location, Design, <1>PPz9uKbRgJBnQJC3CjOZ, <1>uN4X28w2cQgMbenf0LA5Ir, <1>d9e3rwFqkUMgpB3C5Sj, <1>dU0N9X88erqchOBQF, <1>jGg3R, <1>rUEzU8wbH, <1>dusdnIGW DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ARwoxlxALFbe.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE P_SI4'
 BY ONLY <1>ARwoxlxALFbe, Sizes, Location, Design, <1>YQpAP83RkDRpsd4Y, <1>PPz9uKbRgJBnQJC3CjOZ, <1>uN4X28w2cQgMbenf0LA5Ir, <1>d9e3rwFqkUMgpB3C5Sj, <1>jGg3R, <1>B128D3hMdCgw8TANOm, <1>n8YyidqDnlT5PBhmQQBz, <1>S9kRK0leNkDm DEF RO_ControlStep, RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZjC4Q23rV3XJ.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE P_SI5'
 BY ONLY <1>ZjC4Q23rV3XJ, Sizes, Location, Design, <1>YQpAP83RkDRpsd4Y, <1>PPz9uKbRgJBnQJC3CjOZ, <1>uN4X28w2cQgMbenf0LA5Ir, <1>d9e3rwFqkUMgpB3C5Sj, <1>jGg3R, <1>w0LyEpP9fkP4RwCkg1, <1>um7KG5JBwvfLWupsQy, <1>FVK4MYGoOHs3gti, <1>XzPJ80V6WKN9Fdoh, <1>KVhFIZklSeYeuf7Duli, <1>cU8s9xOg0OyR DEF RO_ControlStep, RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kIx359k3h5PUD8KQYLJGk.        
 ASSUME NEW x \in Xids, PinInv, XRecvRel(x), SFollow
 PROVE SharedLedRef'
<2> USE ONLY <1>kIx359k3h5PUD8KQYLJGk, Sizes, Location, Design
 <2>1. CASE ~B2 BY <2>1, Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
<2>2. CASE B2 BY <2>2, <1>PPz9uKbRgJBnQJC3CjOZ, <1>DR7DPdyIIekZ, <1>W6ZEgSLf4BlQd7l9, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>nM18WVUNVNYI, <1>ZjC4Q23rV3XJ, <1>ARwoxlxALFbe, <1>kIx359k3h5PUD8KQYLJGk, <1>nqFa0AIXghR58Emtwxir, <1>op3j5lE9vlnHQhxE66AIlBplMNtA, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_XRecvRel SHA 776891a304c41cbf2aaee956291c6cb79d6b313733f7f5e19f610c12169f0b9c
USE DEF ShapeNetFrame
HIDE DEF Part_XRecvRel_05_02, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_KReadIntegrity, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNoReg, V21_Inv_STypeOK, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_SFollowOff, V21_SFollowStatic, V22_PostSharedRefZero, V22_T_hok, V22_T_hw, V22_T_iv, V22_T_nx, V22_T_pgn, V22_T_pr, V22_T_pst, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
LEMMA ShapeEffect_XRecvRel ==
 ASSUME NEW x \in Xids, Sizes, Design, XRecvRel(x)
 PROVE net'=net
 BY ONLY XRecvRel(x), Sizes, Design, SMTT(5) DEF XRecvRel, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_XRecvRel ==
 ASSUME NEW x \in Xids, Sizes, Design, IndInv, MessageShape, XRecvRel(x)
 PROVE MessageShape'
 BY ONLY Sizes, Design, XRecvRel(x), MessageShape, ShapeEffect_XRecvRel, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_XRecvRel SHA cae6875f30e9fc03b91c3a51b877f472744fefd25fa8e110779bd0cbd4a25eec
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_XRecvRel, ShapeNetFrame
THEOREM DomainKeep_XRecvRel ==
 ASSUME NEW x \in Xids, Sizes, Location, Design, PinInv, XRecvRel(x)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, XRecvRel(x), ShapeEffect_XRecvRel
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg
HIDE DEF DomainKeep_XRecvRel, ShapeEffect_XRecvRel, V21_Inv_MsgXDomain
====
