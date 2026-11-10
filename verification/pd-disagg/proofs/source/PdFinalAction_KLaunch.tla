---- MODULE PdFinalAction_KLaunch ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_9ef278c147c12b12, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_KLaunch_03

\* Complete original body PdFinalPart_KLaunch_02_02 SHA a5cbdc62e7e2d2a91d4bcf7a287bb3abbac8ae6f5aa5ff2fdcb279ad2d709a2c
HIDE DEF AuxType_9ef278c147c12b12, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_KLaunch_01_01, Part_KLaunch_01_02, Part_KLaunch_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K15, V21_Inv_K17, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_iv, V22_T_kfly, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_KLaunch_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE (NoStrayAccess)' /\ (SendOwnLanded)' /\ (ReadOwnLanded)' /\ (NoFreeUnderRead)' /\ (P_SI3)' /\ (K7)'
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


           OLQkiu3EAtl == /\ \A p \in SPages : SPin(p) => LVIWHG(p)
                          /\ \A h \in rpgS : SHPin(h) => UNRhKDF(h)


           rzWzChoAP == rpgS'={h \in rpgS : PicQNkhs(h) \/ (UNRhKDF(h) /\ Mut # "unrefBeforeKDone")}


           Lysb3rxXC == spst'=[p \in SPages |-> IF \E x \in Xids : zp_PIk4svxWLB(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF gaiU_p1(p) THEN "free" ELSE IF jpr2xpt8(p) THEN "drain" ELSE spst[p]]


           d8tte == gen \in [Rq -> 0..MG]


           FB1B == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           Dm2r == rp \in [Rq -> {0} \cup Inst]


           NDUq == rd \in [Rq -> {0} \cup Inst]


           jJbe == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           lMQl == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           xLsS4rg == alive \in [Inst -> BOOLEAN]


           VdIowv3 == nfail \in 0..MaxFail


           DyLjXX == torn \in [Inst -> SUBSET Inst]


           Tw79UK == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           FPtfh6 == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           Ohokp == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           H2Dp == ph \in [Inst -> [Rq -> PhSet]]


           Hs_2 == rg \in [Inst -> [Rq -> 0..MG]]


           gK2SH == rpg \in [Inst -> [Rq -> 0..NP]]


           eTXEj == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           uq3c == rx \in [Inst -> [Rq -> 0..MX]]


           YvbPPX == rhit \in [Inst -> [Rq -> BOOLEAN]]


           nxe5j == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           Zp7G == pr \in [Pages -> 0..NR]


           FH5ni == pgn \in [Pages -> 0..MG]


           h59Nu == plt \in [Pages -> 0..PS]


           lLdQN == ptl \in [Pages -> -1..PS]


           B_u4L7 == pvis \in [Pages -> BOOLEAN]


           Y0neG == led \in [Pages -> SUBSET Xids]


           dJlF2B == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           NdLtDP == sled \in [Pages -> SUBSET (Rq \X Gens)]


           y1DuQMW == prefc \in [Pages -> 0..NR]


           jtyp0 == pqp \in [Pages -> {0} \cup Inst]


           RpRX == xr \in [Xids -> 0..NR]


           aUnM == xg \in [Xids -> 0..MG]


           ajLY == xk \in [Xids -> {"none", "wr", "rd"}]


           bf0f == xp \in [Xids -> {0} \cup Inst]


           TBN_ == xd \in [Xids -> {0} \cup Inst]


           zOMjuK == xsrc \in [Xids -> 0..NP]


           gN8K9A == xdst \in [Xids -> 0..NP]


           Accda == xnt \in [Xids -> 0..PS]


           h4p9 == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           JtQR1 == hok \in [Xids -> BOOLEAN]


           ckxo == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           wl4Su == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           zSOeq == xlt \in [Xids -> 0..PS]


           QJSl == nx \in 1..(MX + 1)


           vh8yv == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           Oj0BX9 == drep \in [Rq -> [Gens -> 0..2]]


           eo8ozY == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           Y9EC07R == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           WFpzFb == gbad \in BOOLEAN


           CA515 == d8tte /\ FB1B /\ Dm2r /\ NDUq /\ jJbe /\ lMQl /\ xLsS4rg /\ VdIowv3 /\ DyLjXX /\ Tw79UK /\ FPtfh6 /\ Ohokp /\ H2Dp /\ Hs_2 /\ gK2SH /\ eTXEj /\ uq3c /\ YvbPPX /\ nxe5j /\ Zp7G /\ FH5ni /\ h59Nu /\ lLdQN /\ B_u4L7 /\ Y0neG /\ dJlF2B /\ NdLtDP /\ y1DuQMW /\ jtyp0 /\ RpRX /\ aUnM /\ ajLY /\ bf0f /\ TBN_ /\ zOMjuK /\ gN8K9A /\ Accda /\ h4p9 /\ JtQR1 /\ ckxo /\ wl4Su /\ zSOeq /\ QJSl /\ vh8yv /\ Oj0BX9 /\ eo8ozY /\ Y9EC07R /\ WFpzFb


           MZLBPcMi4i8Jz(i,rows) ==
            /\ SRows(i,rows) \subseteq Rq \X Gens \X KPages \X {0,1,2,3,4}
            /\ \A e \in SRows(i,rows) :
              /\ e[3] \in SPages /\ B2 /\ IsP(i) /\ e[4] \in {1,4}
              /\ Loc(e[3])=i /\ e[2]<=gen[e[1]] /\ KData(i,e)


           duh2_cO3(i,rows) == {KEnt(i,r) : r \in rows} \cup {KGEnt(q) : q \in GrownRows(i,rows)} \cup SRows(i,rows)


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

           Tjs4X2B6(i,rows) == {KEnt(i,r) : r \in rows} \cup {KGEnt(q) : q \in GrownRows(i,rows)} \cup SRows(i,rows)

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


           RO_E_xsrcS == xsrcS'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="shared" THEN {RO_Src(x)} ELSE {}) ELSE xsrcS[x]]


           RO_E_xsrcP == xsrcP'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="priv" THEN {RO_Src(x)} ELSE {}) ELSE xsrcP[x]]


           RO_E_smap == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           RO_E_schoice == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           RO_E_dpreOK == dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop" THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") => (IF hw[x]="issued" THEN xprefixOK[x] ELSE RO_Valid(x)) ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]


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

<1> HIDE DEF PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, OLQkiu3EAtl, rzWzChoAP, Lysb3rxXC, d8tte, FB1B, Dm2r, NDUq, jJbe, lMQl, xLsS4rg, VdIowv3, DyLjXX, Tw79UK, FPtfh6, Ohokp, H2Dp, Hs_2, gK2SH, eTXEj, uq3c, YvbPPX, nxe5j, Zp7G, FH5ni, h59Nu, lLdQN, B_u4L7, Y0neG, dJlF2B, NdLtDP, y1DuQMW, jtyp0, RpRX, aUnM, ajLY, bf0f, TBN_, zOMjuK, gN8K9A, Accda, h4p9, JtQR1, ckxo, wl4Su, zSOeq, QJSl, vh8yv, Oj0BX9, eo8ozY, Y9EC07R, WFpzFb, CA515, MZLBPcMi4i8Jz, duh2_cO3, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, Tjs4X2B6, mK3yAHc, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_E_xsrcS, RO_E_xsrcP, RO_E_smap, RO_E_schoice, RO_E_dpreOK, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, BD3C0, LNEhLllF

<1>lDP0xTlZUeNs.        
 ASSUME B2, SFollow
 PROVE rzWzChoAP
 BY ONLY <1>lDP0xTlZUeNs, Sizes, Location, Design, ZenonT(10) DEF SFollow, rzWzChoAP, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


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


<1>lbV6eYSVxT0f.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg>>, OLQkiu3EAtl
 PROVE UNCHANGED rpgS
<2> USE ONLY <1>lbV6eYSVxT0f, Sizes, Location, Design
<2>1. CASE ~B2
 BY ONLY <1>lbV6eYSVxT0f, <2>1, SMTT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI1 /\ rzWzChoAP BY <2>2, <1>cQRSNCkI9c6, <1>lDP0xTlZUeNs, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <3>1, Design, IsaT(20), Sizes, Location DEF SI1, rzWzChoAP, PicQNkhs, OLQkiu3EAtl, Active, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design


<1>FMQa7qNQpF.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg>>, OLQkiu3EAtl
 PROVE UNCHANGED spst
<2> USE ONLY <1>FMQa7qNQpF, Sizes, Location, Design
<2>1. CASE ~B2
 BY ONLY <1>FMQa7qNQpF, <2>1, SMTT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI2 /\ SI4 /\ STypeOK /\ Lysb3rxXC BY <2>2, <1>cQRSNCkI9c6, <1>uUDp3u4e5PqL, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. \A p \in SPages : ~jpr2xpt8(p)
 BY <3>1, SMTT(10), Sizes, Location, Design DEF SI2, jpr2xpt8, Active, Sizes, Location, Design
 <3>3. \A p \in SPages : ~gaiU_p1(p)
 BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SI2, gaiU_p1, OLQkiu3EAtl, Sizes, Location, Design
 <3>4. \A p \in SPages : spst'[p]=spst[p]
 BY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF SI4, Lysb3rxXC, Sizes, Location, Design
 <3>5. QED BY <3>1, <3>4, SMTT(20), Sizes, Location, Design DEF Lysb3rxXC, STypeOK, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design


<1>VEFD27KTxm.        
 ASSUME PinInv
 PROVE TypInv => CA515
  BY ONLY <1>VEFD27KTxm, Sizes, Location, Design, ZenonT(5) DEF TypInv, CoreTypeOK, CA515, d8tte, FB1B, Dm2r, NDUq, jJbe, lMQl, xLsS4rg, VdIowv3, DyLjXX, Tw79UK, FPtfh6, Ohokp, H2Dp, Hs_2, gK2SH, eTXEj, uq3c, YvbPPX, nxe5j, Zp7G, FH5ni, h59Nu, lLdQN, B_u4L7, Y0neG, dJlF2B, NdLtDP, y1DuQMW, jtyp0, RpRX, aUnM, ajLY, bf0f, TBN_, zOMjuK, gN8K9A, Accda, h4p9, JtQR1, ckxo, wl4Su, zSOeq, QJSl, vh8yv, Oj0BX9, eo8ozY, Y9EC07R, WFpzFb, Sizes, Location, Design


<1>IXSGqeoQ3.        
 PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design


<1>Fl4Psfyf4Q.        
 ASSUME NEW i \in Inst, NEW rows \in SUBSET Rq, PinInv,
        \A r \in rows : KRowOK(i,r),
        IF B2 /\ IsP(i) THEN \A r \in rows : SRowReady(i,r) ELSE TRUE
 PROVE MZLBPcMi4i8Jz(i,rows)
<2> USE ONLY <1>Fl4Psfyf4Q, Sizes, Location, Design
<2>1. CASE ~B2 \/ ~IsP(i)
 BY <2>1, SMTT(10), Sizes, Location, Design DEF MZLBPcMi4i8Jz, SRows, Sizes, Location, Design
<2>2. CASE B2 /\ IsP(i)
 <3>1. SI1 /\ SI2 /\ STypeOK /\ HitIdentity /\ K8
 BY <2>2, <1>cQRSNCkI9c6, V21_Inv_HitIdentity, V21_Inv_K8, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
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
  BY ONLY <1>Fl4Psfyf4Q, V22_T_xdst, SMTT(5)

 <4>2. \A p \in SPages : p \notin 0..NP BY Sizes, SMTT(10), Location, Design DEF SPages, Sizes, Location, Design
 <4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF NoWriteInto, Writing, InFl, Sizes, Location, Design
 <3>5. QED BY <2>2, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF MZLBPcMi4i8Jz, SRows, KPages, KHeld, SHeld, KData, SData, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design


<1>iWfrYsTnAWtngi.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
 PROVE \A a \in Inst,b \in KSlots : kpin[a][b] => kpin'[a][b] /\ krs'[a][b]=krs[a][b]
<2> USE ONLY <1>iWfrYsTnAWtngi, Sizes, Location, Design
<2>1. kpin \in [Inst -> [KSlots -> BOOLEAN]] /\ krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0,1,2,3,4})]]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>iWfrYsTnAWtngi, V22_T_kpin, V22_T_krs, SMTT(5)

<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF KLaunch, Sizes, Location, Design


<1>lMkjbkGn4Kz7Qy9O8.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE UNCHANGED <<spst,rpgS>>
<2> USE ONLY <1>lMkjbkGn4Kz7Qy9O8, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg>> BY ZenonT(10), Sizes, Location, Design DEF KLaunch, recV, Sizes, Location, Design
<2>2. \A a \in Inst,b \in KSlots : kpin[a][b] => kpin'[a][b] /\ krs'[a][b]=krs[a][b] BY <1>iWfrYsTnAWtngi, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PInst \subseteq Inst BY Sizes, SMTT(10), Location, Design DEF NL, Inst, PInst, DInst, Sizes, Location, Design
<2>4. rpgS \subseteq PInst \X Rq \X Gens \X SPages 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>lMkjbkGn4Kz7Qy9O8, V22_T_rpgS, SMTT(5)

<2>5. OLQkiu3EAtl BY <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF OLQkiu3EAtl, LVIWHG, UNRhKDF, SPin, SHPin, Sizes, Location, Design
<2>6. QED BY <2>1, <2>5, <1>FMQa7qNQpF, <1>lbV6eYSVxT0f, Sizes, Location, Design DEF Sizes, Location, Design


<1>Q878g49nZ.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
  , PinInv
 PROVE /\ ~kpin[i][s] /\ ~kfly[i][s] /\ rows # {}
        /\ (\A r \in rows : KRowOK(i,r)) /\ (IF B2 /\ IsP(i) THEN \A r \in rows : SRowReady(i,r) ELSE TRUE)
        /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
        /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
        /\ krs' = [krs EXCEPT ![i][s] = duh2_cO3(i,rows)]
        /\ UNCHANGED <<rtV, alive, nfail, torn, recV, pst, pr, pgn, pvis, led, sfly, sled, prefc, pqp, xV, net, ghV>>
  BY ONLY <1>Q878g49nZ, Sizes, Location, Design, SMT DEF KLaunch, duh2_cO3, Sizes, Location, Design


<1>yqmJk.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, KRowOK(i,r)
  , PinInv
 PROVE /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
        /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (rhit[i][r] => IsD(i))
<2> USE ONLY <1>yqmJk, Sizes, Location, Design
<2>1. i \in Int /\ NPI \in Int
  BY Sizes, SMT, Location, Design DEF Inst, NL, Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMT, Sizes, Location DEF K8, KRowOK, Active, IsD, IsP, Sizes, Location, Design


<1>kaDlGs4.        
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
<2> USE ONLY <1>kaDlGs4, Sizes, Location, Design
<2>1. \A r \in rows :
  /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
  BY <1>yqmJk, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF GrownRows, GrownP, K16, Sizes, Location, Design


<1>jxJs9OzLPl.        
  ASSUME NEW i \in Inst, NEW rows \in SUBSET Rq, rows # {},
         K8, K16, \A r \in rows : KRowOK(i,r)
  , PinInv, SFollow
  , (IF B2 /\ IsP(i) THEN \A r \in rows : SRowReady(i,r) ELSE TRUE)
 PROVE /\ duh2_cO3(i,rows) # {}
        /\ duh2_cO3(i,rows) \subseteq Rq \X Gens \X KPages \X {0,1,2,3,4}
        /\ \A e \in duh2_cO3(i,rows) :
             /\ Loc(e[3]) = i /\ e[2] <= gen[e[1]]
             /\ (IF e[3] \in SPages THEN B2 /\ IsP(i) /\ e[4] \in {1,4} ELSE e[4] \in {0,1,2,3} /\ (e[4] # 0 => IsD(i)))
<2> USE ONLY <1>jxJs9OzLPl, Sizes, Location, Design
<2>0. MZLBPcMi4i8Jz(i,rows) BY <1>Fl4Psfyf4Q, Sizes, Location, Design DEF Sizes, Location, Design
<2>1. \A r \in rows :
  /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
  /\ (rhit[i][r] => IsD(i))
  BY <1>yqmJk, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A q \in GrownRows(i,rows) :
    /\ pr[q] \in Rq /\ pgn[q] \in Gens
    /\ Loc(q) = i /\ pgn[q] <= gen[pr[q]] /\ IsD(i)
  BY <1>kaDlGs4, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. duh2_cO3(i,rows) # {}
 <3>1. PICK r \in rows : TRUE
  BY ONLY <1>jxJs9OzLPl, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. KEnt(i,r) \in {KEnt(i,u) : u \in rows}
  BY ONLY <3>1, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. KEnt(i,r) \in duh2_cO3(i,rows)
  BY ONLY <3>2, SMTT(20), Sizes, Location, Design DEF duh2_cO3, Sizes, Location, Design
 <3>4. QED BY ONLY <3>3, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. duh2_cO3(i,rows) \subseteq Rq \X Gens \X KPages \X {0,1,2,3,4}
  BY <2>0, <2>1, <2>2, P_PagePoolsDisjoint, SMT, Sizes, Location, Design DEF duh2_cO3, MZLBPcMi4i8Jz, KEnt, KGEnt, GrownRows, KPages, Sizes, Location, Design
<2>5. \A e \in duh2_cO3(i,rows) :
        /\ Loc(e[3]) = i /\ e[2] <= gen[e[1]]
        /\ (IF e[3] \in SPages THEN B2 /\ IsP(i) /\ e[4] \in {1,4} ELSE e[4] \in {0,1,2,3} /\ (e[4] # 0 => IsD(i)))
  BY <2>0, <2>1, <2>2, P_PagePoolsDisjoint, SMT, Sizes, Location, Design DEF duh2_cO3, MZLBPcMi4i8Jz, KEnt, KGEnt, KPages, GrownRows, GrownP, Sizes, Location, Design
<2>6. QED
  BY <2>0, <2>3, <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design


<1>kjUFLrLZt.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
         Tw79UK, Ohokp, KLaunch(i,s,rows)
  , PinInv
 PROVE \A a \in Inst, b \in KSlots : kpin'[a][b] =>
          \/ a = i /\ b = s /\ krs'[a][b] = duh2_cO3(i,rows)
          \/ kpin[a][b] /\ krs'[a][b] = krs[a][b]
<2> USE ONLY <1>kjUFLrLZt, Sizes, Location, Design
<2>1. /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
       /\ krs' = [krs EXCEPT ![i][s] = duh2_cO3(i,rows)]
  BY <1>Q878g49nZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF Tw79UK, Ohokp, Sizes, Location, Design


<1>VVfLBcbi.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
         Tw79UK, FPtfh6, Ohokp, K8, K14, K16, KLaunch(i,s,rows)
  , PinInv, SFollow
 PROVE K14'
<2> USE ONLY <1>VVfLBcbi, Sizes, Location, Design
<2>1. /\ rows # {} /\ (\A r \in rows : KRowOK(i,r)) /\ (IF B2 /\ IsP(i) THEN \A r \in rows : SRowReady(i,r) ELSE TRUE)
       /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
       /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
       /\ krs' = [krs EXCEPT ![i][s] = duh2_cO3(i,rows)]
       /\ UNCHANGED gen
  BY <1>Q878g49nZ, Sizes, Location, Design DEF rtV, Sizes, Location, Design
<2>2. /\ duh2_cO3(i,rows) # {}
       /\ \A e \in duh2_cO3(i,rows) :
            Loc(e[3]) = i /\ e[2] <= gen[e[1]] /\ (IF e[3] \in SPages THEN B2 /\ IsP(i) /\ e[4] \in {1,4} ELSE e[4] \in {0,1,2,3} /\ (e[4] # 0 => IsD(i)))
  BY <2>1, <1>jxJs9OzLPl, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A a \in Inst, b \in KSlots : kfly'[a][b] => kpin'[a][b]
  BY <2>1, SMT, Sizes, Location, Design DEF Tw79UK, FPtfh6, K14, Sizes, Location, Design
<2>4. \A a \in Inst, b \in KSlots : (krs'[a][b] # {}) <=> kpin'[a][b]
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF Tw79UK, Ohokp, K14, Sizes, Location, Design
<2>5. \A a \in Inst, b \in KSlots : \A e \in krs'[a][b] :
        Loc(e[3]) = a /\ e[2] <= gen'[e[1]] /\ (IF e[3] \in SPages THEN B2 /\ IsP(a) /\ e[4] \in {1,4} ELSE e[4] \in {0,1,2,3} /\ (e[4] # 0 => IsD(a)))
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF Ohokp, K14, Sizes, Location, Design
<2>6. QED
  BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF K14, Sizes, Location, Design


<1>wHJfTKcKrNp.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K14'
BY ONLY <1>wHJfTKcKrNp, Sizes, Location, Design, <1>VVfLBcbi, <1>VEFD27KTxm, <1>IXSGqeoQ3, V21_Inv_K14, V21_Inv_K16, V21_Inv_K8, V21_Inv_TypeOK DEF CA515, Sizes, Location, Design


<1>PvgJJeZ8tOnyHmb.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
        PinInv, KLaunch(i,s,rows), SFollow
 PROVE \A e \in SRows(i,rows) :
   SHeld(e) /\ (e[4]=4 => sown[e[3]]=e[1] /\ sgen[e[3]]=e[2])
<2> USE ONLY <1>PvgJJeZ8tOnyHmb, Sizes, Location, Design
<2>1. MZLBPcMi4i8Jz(i,rows) BY <1>Fl4Psfyf4Q, <1>Q878g49nZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. PrivateMapOwner BY V21_Inv_PrivateMapOwner, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ASSUME NEW e \in SRows(i,rows)
      PROVE SHeld(e) /\ (e[4]=4 => sown[e[3]]=e[1] /\ sgen[e[3]]=e[2])
 <3>1. B2 /\ IsP(i) /\ e[3] \in SPages BY <2>1, <2>3, Sizes, Location, Design DEF MZLBPcMi4i8Jz, Sizes, Location, Design
 <3>2. i \in PInst BY <3>1, Sizes, SMTT(10), Location, Design DEF IsP, Inst, NL, PInst, DInst, Sizes, Location, Design
 <3>3. PICK r \in rows : smap[i][r] # 0 /\ e = <<r,rg[i][r],smap[i][r],IF spst[smap[i][r]]="shared" THEN 1 ELSE 4>>
 BY <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF SRows, Sizes, Location, Design
 <3>4. KRowOK(i,r) /\ SRowReady(i,r) BY <3>1, <3>3, <1>Q878g49nZ, Sizes, Location, Design DEF Sizes, Location, Design
 <3>5. spst[e[3]] \in {"priv","shared"}
 BY <3>1, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF SRowReady, Sizes, Location, Design
 <3>6. QED BY <2>2, <3>1, <3>2, <3>3, <3>4, <3>5, SMTT(10), Sizes, Location, Design DEF PrivateMapOwner, Active, KRowOK, SHeld, Sizes, Location, Design
<2>4. QED BY <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>VjQdjVM6dmB1C.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
        PinInv, KLaunch(i,s,rows), SFollow
 PROVE \A e \in duh2_cO3(i,rows) : KHeld(e)
<2> USE ONLY <1>VjQdjVM6dmB1C, Sizes, Location, Design
<2>1. K8 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A r \in rows : KRowOK(i,r) /\ rpg[i][r] \in Pages /\ (rhit[i][r] => IsD(i))
 BY <2>1, <1>Q878g49nZ, <1>yqmJk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A r \in rows : KHeld(KEnt(i,r))
 BY <2>2, Design, P_PagePoolsDisjoint, SMTT(10), Sizes, Location DEF KRowOK, KEnt, KHeld, Sizes, Location, Design
<2>4. \A q \in GrownRows(i,rows) : KHeld(KGEnt(q))
 BY P_PagePoolsDisjoint, SMTT(10), Sizes, Location, Design DEF GrownRows, KGEnt, KHeld, Sizes, Location, Design
<2>5. \A e \in SRows(i,rows) : KHeld(e)
 BY <1>PvgJJeZ8tOnyHmb, <1>Fl4Psfyf4Q, <1>Q878g49nZ, SMTT(10), Sizes, Location, Design DEF MZLBPcMi4i8Jz, KHeld, Sizes, Location, Design
<2>6. QED BY <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF duh2_cO3, Sizes, Location, Design


<1>O5VXaxKiGItFjhSqs6ErV1FJ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
        PinInv, KLaunch(i,s,rows), SFollow
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>O5VXaxKiGItFjhSqs6ErV1FJ, Sizes, Location, Design
<2>1. Tw79UK /\ Ohokp /\ NoFreeUnderRead
 BY <1>VEFD27KTxm, V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF CA515, Sizes, Location, Design
<2>2. \A e \in duh2_cO3(i,rows) : KHeld(e) BY <1>VjQdjVM6dmB1C, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A a \in Inst,b \in KSlots : kpin'[a][b] =>
 (a=i /\ b=s /\ krs'[a][b]=duh2_cO3(i,rows)) \/ (kpin[a][b] /\ krs'[a][b]=krs[a][b])
 BY <2>1, <1>kjUFLrLZt, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. UNCHANGED <<pst,pr,pgn,spst,sown,sgen>>
 BY <1>Q878g49nZ, <1>lMkjbkGn4Kz7Qy9O8, <1>rsuLN, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF NoFreeUnderRead, KHeld, SHeld, Sizes, Location, Design


<1>qwJU1YUQYSYLzOW8xKH0ca.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
        PinInv, KLaunch(i,s,rows), SFollow
 PROVE NoStrayAccess'
<2> USE ONLY <1>qwJU1YUQYSYLzOW8xKH0ca, Sizes, Location, Design
<2>1. NoStrayAccess BY V21_Inv_NoStrayAccess, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. K14' /\ NoFreeUnderRead' BY <1>wHJfTKcKrNp, <1>O5VXaxKiGItFjhSqs6ErV1FJ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<hw,pst,pr,pgn,sfly,xr,xg,xsrc,xdst>>
 BY <1>Q878g49nZ, Sizes, Location, Design DEF xV, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF NoStrayAccess, K14, NoFreeUnderRead, Held, Writing, InFl, Sizes, Location, Design


<1>IeK5HgqIHHDq.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
        PinInv, KLaunch(i,s,rows), SFollow
 PROVE P_SI3'
<2> USE ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design
<2>1. CASE ~B2 BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>1, <2>1 DEF P_SI3, Sizes, Location, Design
<2>2. CASE B2
 <3>1. SI1 /\ SI3 /\ STypeOK BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <2>2, <1>cQRSNCkI9c6 DEF Sizes, Location, Design
 <3>2. UNCHANGED <<spst,rpgS,sdata,swrite,skey,sown,sgen>>
 BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <1>lMkjbkGn4Kz7Qy9O8, <1>rsuLN DEF Sizes, Location, Design
 <3>3. \A a \in Inst,b \in KSlots : kpin'[a][b] =>
   (a=i /\ b=s /\ krs'[a][b]=duh2_cO3(i,rows)) \/ (kpin[a][b] /\ krs'[a][b]=krs[a][b])
 BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <1>kjUFLrLZt, <1>VEFD27KTxm, V21_Inv_P_SI3, V21_Inv_TypeOK DEF CA515, Sizes, Location, Design
 <3>4. MZLBPcMi4i8Jz(i,rows) BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <1>Fl4Psfyf4Q, <1>Q878g49nZ DEF Sizes, Location, Design
 <3>5. \A e \in SRows(i,rows) : spst[e[3]]="shared" => SH(i,e[1],e[2],e[3]) \in rpgS
 <4>1. ASSUME NEW e \in SRows(i,rows), spst[e[3]]="shared"
       PROVE SH(i,e[1],e[2],e[3]) \in rpgS
  <5>1. IsP(i) BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <4>1, <4>1, SMTT(10) DEF SRows, Sizes, Location, Design
  <5>2. PICK r \in rows : smap[i][r] # 0 /\ e = <<r,rg[i][r],smap[i][r],IF spst[smap[i][r]]="shared" THEN 1 ELSE 4>>
  BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <4>1, <5>2, <4>1, <5>1, <2>2, SMTT(10) DEF SRows, Sizes, Location, Design
  <5>3. i \in PInst /\ smap[i][r] \in SPages
   <6>mapping. smap \in [PInst -> [Rq -> {0} \cup SPages]]
    
   <7> HIDE DEF CoreTypeOK, STypeOK
   <7>fields. QED
    BY ONLY <1>IeK5HgqIHHDq, V22_T_smap, SMTT(5)

   <6>instance. i \in PInst
    BY ONLY <1>IeK5HgqIHHDq, <5>1, Sizes, SMTT(5) DEF Inst, PInst, IsP, NL, Sizes
   <6>request. r \in Rq
    BY ONLY <1>IeK5HgqIHHDq, <5>2, SMTT(5)
   <6>page. smap[i][r] \in SPages
    BY ONLY <6>mapping, <6>instance, <6>request, <5>2, SMTT(5)
   <6>qed. QED BY ONLY <6>instance, <6>page, SMTT(5)
  <5>4. Active(i,r) BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <4>1, <5>2, <1>Q878g49nZ DEF KRowOK, Sizes, Location, Design
  <5>5. QED BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <4>1, <4>1, <5>2, <5>3, <5>4, <3>1, SMTT(10) DEF SI1, SH, Sizes, Location, Design
 <4>2. QED BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <4>1 DEF Sizes, Location, Design
 <3>6. \A e \in duh2_cO3(i,rows) : e[3] \in SPages => e \in SRows(i,rows)
 BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, P_PagePoolsDisjoint, <1>yqmJk, <1>Q878g49nZ, SMTT(10), V21_Inv_K8, V21_Inv_P_SI3 DEF duh2_cO3, KEnt, KGEnt, GrownRows, GrownP, Sizes, Location, Design
 <3>7. \A e \in SRows(i,rows) : SHeld(e) /\ (e[4]=4 => sown[e[3]]=e[1] /\ sgen[e[3]]=e[2])
 BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <1>PvgJJeZ8tOnyHmb DEF Sizes, Location, Design
 <3>8. ASSUME NEW a \in PInst, NEW b \in KSlots,
              kpin'[a][b], NEW e \in krs'[a][b], e[3] \in SPages
       PROVE /\ e[4] \in {1,4} /\ SData(e)' /\ SHeld(e)'
             /\ (spst'[e[3]]="shared" => SH(a,e[1],e[2],e[3]) \in rpgS')
             /\ (e[4]=4 => sown'[e[3]]=e[1] /\ sgen'[e[3]]=e[2])
 <4>1. a \in Inst BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <3>8, Sizes, SMTT(10) DEF PInst, Inst, NL, Sizes, Location, Design
 <4>2. CASE a=i /\ b=s /\ e \in duh2_cO3(i,rows)
  <5>1. e \in SRows(i,rows) BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <3>8, <4>2, <3>6, <4>2, <3>8 DEF Sizes, Location, Design
  <5>2. e[4] \in {1,4} /\ SData(e)
  BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <3>8, <4>2, <5>1, <3>4, SMTT(10) DEF MZLBPcMi4i8Jz, KData, Sizes, Location, Design
  <5>3. SHeld(e) /\ (e[4]=4 => sown[e[3]]=e[1] /\ sgen[e[3]]=e[2])
  BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <3>8, <4>2, <5>1, <3>7 DEF Sizes, Location, Design
  <5>4. spst[e[3]]="shared" => SH(a,e[1],e[2],e[3]) \in rpgS
  BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <3>8, <4>2, <5>1, <4>2, <3>5 DEF Sizes, Location, Design
  <5>5. QED BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <3>8, <4>2, <3>2, <5>2, <5>3, <5>4, SMTT(10) DEF SData, SHeld, Sizes, Location, Design
 <4>3. CASE kpin[a][b] /\ e \in krs[a][b]
 BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <3>8, <4>3, <3>8, <4>3, <3>1, <3>2, SMTT(10) DEF SI3, SData, SHeld, Sizes, Location, Design
 <4>4. QED BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <3>8, <3>8, <3>3, <4>1, <4>2, <4>3 DEF Sizes, Location, Design
 <3>9. QED BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>2, <2>2, <3>8, SMTT(10) DEF P_SI3, SI3, Sizes, Location, Design
<2>3. QED BY ONLY <1>IeK5HgqIHHDq, Sizes, Location, Design, <2>1, <2>2 DEF Sizes, Location, Design


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>SCW1swOZ0.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
  PROVE /\ ~kpin[i][s] /\ ~kfly[i][s] /\ rows # {}
        /\ (\A r \in rows : KRowOK(i,r))
        /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
        /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
        /\ krs' = [krs EXCEPT ![i][s] = Tjs4X2B6(i,rows)]
        /\ UNCHANGED <<rtV, alive, nfail, torn, recV, pst, pr, pgn, pvis, led, sfly, sled, prefc, pqp, xV, net, ghV>>
  BY ONLY <1>SCW1swOZ0, Sizes, Location, Design, SMTT(10) DEF KLaunch, Tjs4X2B6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SLWqQqcHE.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
  PROVE \E W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY ONLY <1>SLWqQqcHE, Sizes, Location, Design, Design, SMTT(10) DEF KLaunch, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bMxD4.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, KRowOK(i,r)
  PROVE /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
        /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (rhit[i][r] => IsD(i))
<2> USE ONLY <1>bMxD4, Sizes, Location, Design
<2>1. i \in Int /\ NPI \in Int
  BY Sizes, SMTT(10), Location, Design DEF Inst, NL, Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(10), Sizes, Location DEF K8, KRowOK, Active, IsD, IsP, Sizes, Location, Design


<1>FC0yVFn.        
  ASSUME NEW i \in Inst, NEW rows \in SUBSET Rq,
         K8, K16, \A r \in rows : KRowOK(i,r)
  PROVE \A q \in GrownRows(i,rows) :
    /\ GrownP(q) /\ pr[q] \in Rq /\ pgn[q] \in Gens
    /\ Loc(q) = i /\ pgn[q] <= gen[pr[q]] /\ IsD(i)
    /\ plt[q] = ptl[q] /\ ptl[q] \in {0,1} /\ NoWriteInto(q)
    /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {}
    /\ rg[i][pr[q]] = pgn[q] /\ ph[i][pr[q]] \in {"run","ovl"}
    /\ rpg[i][pr[q]] # q
<2> USE ONLY <1>FC0yVFn, Sizes, Location, Design
<2>1. \A r \in rows :
  /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
  BY SMTT(10), <1>bMxD4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMTT(10), Sizes, Location, Design DEF GrownRows, GrownP, K16, Sizes, Location, Design
\* T2M-END R2M2382_PdROOld_PP_PdLaunchSupport


<1>y2SHlMjgLHgMp5.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
         PinInv, KLaunch(i,s,rows)
  PROVE \E W \in SUBSET {q \in Pages : GrownP(q) /\ plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
<2> USE ONLY <1>y2SHlMjgLHgMp5, Sizes, Location, Design
<2>1. K8 /\ K16
  BY SMTT(10), V21_Inv_K16, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A r \in rows : KRowOK(i,r)
  BY <1>SCW1swOZ0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>SLWqQqcHE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. W \subseteq {q \in Pages : GrownP(q) /\ plt[q] = 0}
  BY <2>1, <2>2, <2>3, <1>FC0yVFn, SMTT(10), Sizes, Location, Design DEF GrownRows, Sizes, Location, Design
<2>5. QED
  BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2385_PdROOld_PP_PdLaunchWrites


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

<1>OJppl1S.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
  PROVE K7'
<2> USE ONLY <1>OJppl1S, Sizes, Location, Design
<2>1. K7 /\ m1zx9S /\ c02OO /\ bFwlN /\ rO4YE
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. /\ ~kpin[i][s]
       /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
       /\ krs' = [krs EXCEPT ![i][s] = Tjs4X2B6(i,rows)]
       /\ UNCHANGED <<gen,pst,pr,pgn,led,sled,sfly,prefc,pqp,ph,rg,rpg,rhit>>
  BY <1>SCW1swOZ0, SMTT(10), Sizes, Location, Design DEF rtV, recV, Sizes, Location, Design
<2>3. PICK W \in SUBSET {q \in Pages : GrownP(q) /\ plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>y2SHlMjgLHgMp5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A p \in Pages : KPinned(p) => KPinned(p)'
  BY <2>1, <2>2, Location, SMTT(10), Sizes, Design DEF m1zx9S, c02OO, KPinned, KPages, Sizes, Location, Design
<2>5. SUFFICES ASSUME NEW p \in Pages PROVE mK3yAHc(p)'
  BY <1>GKpiKVfo1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. mK3yAHc(p)
  BY <2>1, <1>Kl1iv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. p \in W => pst[p] = "priv"
  BY <2>3, SMTT(10), Sizes, Location, Design DEF GrownP, Sizes, Location, Design
<2>8. QED
  <3>1. (ptl[p] >= 0)'
    BY <2>2, <2>3, <2>4, <2>6, <2>7, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>2. (pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ prefc[p] = 0 /\ pqp[p] = 0))'
    BY <2>2, <2>3, <2>4, <2>6, <2>7, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>3. (pst[p] \in {"priv", "drain", "quar"} => (pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]]))'
    BY <2>2, <2>3, <2>4, <2>6, <2>7, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>4. (pst[p] = "quar" => pqp[p] \in Inst)'
    BY <2>2, <2>3, <2>4, <2>6, <2>7, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>5. (pst[p] # "quar" => pqp[p] = 0)'
    BY <2>2, <2>3, <2>4, <2>6, <2>7, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>6. (pst[p] # "shared" => prefc[p] = 0)'
    BY <2>2, <2>3, <2>4, <2>6, <2>7, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>7. (pst[p] = "shared" => (IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p)))'
    BY <2>2, <2>3, <2>4, <2>6, <2>7, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>8. (pst[p] = "drain" => (led[p] # {} \/ sled[p] # {} \/ KPinned(p)))'
    BY <2>2, <2>3, <2>4, <2>6, <2>7, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>9. (pst[p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(p), r, p))'
    BY <2>2, <2>3, <2>4, <2>6, <2>7, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>10. (pst[p] = "priv" => ( (Maps(Loc(p), pr[p], p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]]) \/ GrownP(p)))'
    BY <2>2, <2>3, <2>4, <2>6, <2>7, <1>iD8NH5iaR, <1>ZYWtfi2oR, SMTT(10), Sizes, Location, Design DEF mK3yAHc, GrownP, Sizes, Location, Design
  <3>11. QED BY <3>1, <3>2, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, <3>9, <3>10, ZenonT(10), Sizes, Location, Design DEF mK3yAHc, Sizes, Location, Design
\* T2M-END R2M2386_PdROOld_PP_PdCell_KLaunch_K7


<1>v8MJc70Fj.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
  PROVE K7'
  BY ONLY <1>v8MJc70Fj, Sizes, Location, Design, <1>UwwC5LVwQr, <1>OJppl1S, V21_Inv_K7, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XkNZbQ40fYjWLrbO.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K7'
 BY ONLY <1>XkNZbQ40fYjWLrbO, Sizes, Location, Design, <1>v8MJc70Fj DEF Sizes, Location, Design
\* T2M-END R2M2394_PdROFinal_KLaunch_K7

\* T2M-SCOPE R2M2395_PdROFinal_KLaunch_K8

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

<1>FXdY6IosIlRMFx.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
         PinInv, KLaunch(i,s,rows)
  
 PROVE \E W \in SUBSET {q \in Pages : GrownP(q) /\ plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
<2> USE ONLY <1>FXdY6IosIlRMFx, Sizes, Location, Design
<2>1. K8 /\ K16
  BY <1>joh6z3bMX, SMTT(10), V21_Inv_K16, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A r \in rows : KRowOK(i,r)
  BY <1>Tcs1aCvov, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>pX6n1mfRA, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. W \subseteq {q \in Pages : GrownP(q) /\ plt[q] = 0}
  BY <2>1, <2>2, <2>3, <1>itzrhoR, SMTT(10), Sizes, Location, Design DEF GrownRows, Sizes, Location, Design
<2>5. QED
  BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2523_PdROK_PdLaunchWrites

\* T2M-SCOPE R2M2524_PdROK_PdCell_KLaunch_ReadOwnLanded
\* T2M-BODY R2M2524_PdROK_PdCell_KLaunch_ReadOwnLanded
\* T2M-LOCAL-VISIBILITY

<1>LuZLumGPpw7ZEP75eR.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
  
 PROVE BaseReadOwnLanded'
<2> USE ONLY <1>LuZLumGPpw7ZEP75eR, Sizes, Location, Design
<2>1. BaseReadOwnLanded /\ K8 /\ ehoz3 /\ ZMkh8
  BY <1>joh6z3bMX, <1>WAxd2hhfMM, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, BD3C0, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<hw, pgn, ph, pr, pst, pvis, rg, rhit, rpg, xdst>>
  BY <1>Tcs1aCvov, SMTT(10), Sizes, Location, Design DEF rtV, recV, xV, Sizes, Location, Design
<2>3. PICK W \in SUBSET {q \in Pages : GrownP(q) /\ plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>FXdY6IosIlRMFx, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Sizes, Location, SMTT(10), Design DEF BaseReadOwnLanded, GrownP, NoWriteInto, Writing, InFl, ehoz3, ZMkh8, K8, OwnedBy, Active, IsD, IsP, Inst, PInst, DInst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M2524_PdROK_PdCell_KLaunch_ReadOwnLanded


<1>ocyhustG8WRdwhSPQ0kxs.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE ReadOwnLanded'
<2> USE ONLY <1>ocyhustG8WRdwhSPQ0kxs, Sizes, Location, Design
<2>1. BaseReadOwnLanded' BY <1>LuZLumGPpw7ZEP75eR, <1>WAxd2hhfMM, <1>joh6z3bMX, V21_Inv_TypeOK, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
<2>2. B2 => \A j \in DInst,r \in Rq : ph'[j][r] \in {"run","ovl"} => dpreOK'[rpg'[j][r]]
 BY <1>txMumeAB1OTELxaVzWV, <1>XgXXzp0lMuoDIAM, <1>umw00Yrfg, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF ReadOwnLanded, Sizes, Location, Design
\* T2M-END R2M2525_PdROKernel_KLaunch_ReadOwnLanded


<1>iKqaxDnka.        
  ASSUME NEW x \in Xids, PinInv, hw[x] = "fly"
  
 PROVE xsrc[x] \in Pages /\ IsP(Loc(xsrc[x]))
<2> USE ONLY <1>iKqaxDnka, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ flJU
  BY <1>joh6z3bMX, <1>WAxd2hhfMM, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
<2>2. x < nx /\ iv[x] \notin {"none", "nopost", "reg"}
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, K3, flJU, Xids, Sizes, Location, Design
<2>3. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xp[x] = hp[xr[x]][xg[x]]
       /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K2, Sizes, Location, Design
<2>4. xp[x] \in PInst
  BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, Design, Sizes, Location, SMTT(10) DEF K2, InitPage, ExpPage, InitInst, ExpInst, IsP, PInst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M2528_PdROK_PdFlyingSource


<1>aq6qOB2CbIOh8dNV32.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
  
 PROVE BaseSendOwnLanded'
<2> USE ONLY <1>aq6qOB2CbIOh8dNV32, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ ZMkh8
  BY <1>joh6z3bMX, <1>WAxd2hhfMM, SMTT(10), V21_Inv_BaseSafety, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, BD3C0, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<hw, xsrc, xlt, sfly>>
  BY <1>Tcs1aCvov, SMTT(10), Sizes, Location, Design DEF xV, Sizes, Location, Design
<2>3. PICK W \in SUBSET {q \in Pages : GrownP(q) /\ plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>FXdY6IosIlRMFx, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A x \in Xids : hw[x] = "fly" => xsrc[x] \in Pages /\ IsP(Loc(xsrc[x]))
  BY <1>iKqaxDnka, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, Sizes, Location, SMTT(10), Design DEF BaseSendOwnLanded, GrownP, IsP, IsD, Inst, NL, ZMkh8, KPages, Sizes, Location, Design
\* T2M-END R2M2529_PdROK_PdCell_KLaunch_SendOwnLanded


<1>uSiWomeiGzZalMPSTvMMv.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE SendOwnLanded'
<2> USE ONLY <1>uSiWomeiGzZalMPSTvMMv, Sizes, Location, Design
<2>1. BaseSendOwnLanded' BY <1>aq6qOB2CbIOh8dNV32, <1>WAxd2hhfMM, <1>joh6z3bMX, V21_Inv_TypeOK, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
<2>2. IF ~B2 THEN TRUE ELSE \A x \in Xids : hw'[x]="fly" => \A p \in xsrcS'[x] \cup xsrcP'[x] : sdata'[p] /\ ~swrite'[p] /\ skey'[p]=STok(xr'[x],xg'[x])
 BY <1>txMumeAB1OTELxaVzWV, <1>hdlMJzEiQO0dN0ululBOf, <1>gzWbDzqo6m6QKGR2k, <1>K49culthi, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF SendOwnLanded, Sizes, Location, Design
\* T2M-END R2M2530_PdROKernel_KLaunch_SendOwnLanded

\* T2M-SCOPE R2M2531_PdROKernel_KLaunch_TypeOK

<1> QED BY <1>qwJU1YUQYSYLzOW8xKH0ca, <1>uSiWomeiGzZalMPSTvMMv, <1>ocyhustG8WRdwhSPQ0kxs, <1>O5VXaxKiGItFjhSqs6ErV1FJ, <1>IeK5HgqIHHDq, <1>XkNZbQ40fYjWLrbO, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_KLaunch_03_01 SHA 002f25ff4e7ef80001e0f79d825907f155bc74917f547a5339dbc89d15df59dd
USE DEF V21_Inv_EntryQuarantineDisjoint, V21_Inv_K13, V21_Inv_K5, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_P_B2OffInit, V21_Inv_S4, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_sentry, V22_T_spst, V22_T_squar
HIDE DEF Part_KLaunch_02_02, V21_Inv_K1, V21_Inv_K2, V21_Inv_K7, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_PrivateMapOwner, V22_T_hw, V22_T_kpin, V22_T_krs, V22_T_pst
THEOREM Part_KLaunch_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE (K9)' /\ (SealOnlyLanded)' /\ (EntryQuarantineDisjoint)' /\ (K14)' /\ (K8)' /\ (K3)' /\ (K5)' /\ (K13)' /\ (S4)' /\ (SharedImmutable)' /\ (P_B2OffInit)'
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

           Tjs4X2B6(i,rows) == {KEnt(i,r) : r \in rows} \cup {KGEnt(q) : q \in GrownRows(i,rows)} \cup SRows(i,rows)

           \* T2M-LOCAL-VISIBILITY

           Qm5H_5T(i,r) == LET p == rpg[i][r]
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


           NWCQTNY(j,r) == LET q == rpg[j][r]
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

<1> HIDE DEF PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Zxt3uAWx0s, x3u8USZ8BP, XiXzxLeogqQ, cube8JL9My, gsRtJP8qi, PfTvb9KsRvdD, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, Tjs4X2B6, Qm5H_5T, NWCQTNY, RO_SRowsFacts, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, BD3C0, LNEhLllF

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


<1>hv9cQrCpi2ZrJTMvPANaMImj97wQ7JYm.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>hv9cQrCpi2ZrJTMvPANaMImj97wQ7JYm, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF KLaunch, recV, xV, Sizes, Location, Design
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

<1>Elx5Wh09Mc2YxDl6gCJu8BY.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>Elx5Wh09Mc2YxDl6gCJu8BY, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>Elx5Wh09Mc2YxDl6gCJu8BY, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF KLaunch, ghV, recV, rtV, xV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>m948gxWe0.        
 P_B2OffInit /\ UNCHANGED <<dedupSeen, dpreOK, hitSeen, rpgS, schoice, sdata, sentry, sgen, skey, smap, sown, sprefc, spst, squar, sready, swrite, xprefixOK, xsrcP, xsrcS>> => P_B2OffInit'
 BY IsaT(10), Sizes, Location, Design DEF P_B2OffInit, SInit, Sizes, Location, Design
\* T2M-END R2M0451_PdPF_B2OffInit


<1>je.        
 S4 /\ UNCHANGED <<alive, nfail>> => S4'
 BY IsaT(10), Sizes, Location, Design DEF S4, Sizes, Location, Design
\* T2M-END R2M0344_PdPF_S4


<1>ve.        
 K3 /\ UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>> => K3'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, InFl, K3, Sizes, Location, Design
\* T2M-END R2M0332_PdPF_K3


<1>s6g.        
 K13 /\ UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>> => K13'
 BY IsaT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design
\* T2M-END R2M0354_PdPF_K13


<1>rd.        
 K5 /\ UNCHANGED <<led, pgn, pr, pst, xg, xr>> => K5'
 BY IsaT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0334_PdPF_K5


<1>GcRpeXyfAK4X76c.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, led, net, nfail, nx, pgn, ph, pr, pst, rd, rg, rhit, rp, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>GcRpeXyfAK4X76c, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF KLaunch, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UMHvhFNbaU.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K3'
<2> USE ONLY <1>UMHvhFNbaU, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>V8E42iqBof.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K5'
<2> USE ONLY <1>V8E42iqBof, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DaDpFNgucYv.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K13'
<2> USE ONLY <1>DaDpFNgucYv, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BsHKJXNsQ6.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE S4'
<2> USE ONLY <1>BsHKJXNsQ6, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XRKGpIY63b94aMnPD.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>XRKGpIY63b94aMnPD, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0480_PdPOff_KLaunch


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>SCW1swOZ0.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
  PROVE /\ ~kpin[i][s] /\ ~kfly[i][s] /\ rows # {}
        /\ (\A r \in rows : KRowOK(i,r))
        /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
        /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
        /\ krs' = [krs EXCEPT ![i][s] = Tjs4X2B6(i,rows)]
        /\ UNCHANGED <<rtV, alive, nfail, torn, recV, pst, pr, pgn, pvis, led, sfly, sled, prefc, pqp, xV, net, ghV>>
  BY ONLY <1>SCW1swOZ0, Sizes, Location, Design, SMTT(10) DEF KLaunch, Tjs4X2B6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SLWqQqcHE.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
  PROVE \E W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY ONLY <1>SLWqQqcHE, Sizes, Location, Design, Design, SMTT(10) DEF KLaunch, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bMxD4.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, KRowOK(i,r)
  PROVE /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
        /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (rhit[i][r] => IsD(i))
<2> USE ONLY <1>bMxD4, Sizes, Location, Design
<2>1. i \in Int /\ NPI \in Int
  BY Sizes, SMTT(10), Location, Design DEF Inst, NL, Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(10), Sizes, Location DEF K8, KRowOK, Active, IsD, IsP, Sizes, Location, Design


<1>FC0yVFn.        
  ASSUME NEW i \in Inst, NEW rows \in SUBSET Rq,
         K8, K16, \A r \in rows : KRowOK(i,r)
  PROVE \A q \in GrownRows(i,rows) :
    /\ GrownP(q) /\ pr[q] \in Rq /\ pgn[q] \in Gens
    /\ Loc(q) = i /\ pgn[q] <= gen[pr[q]] /\ IsD(i)
    /\ plt[q] = ptl[q] /\ ptl[q] \in {0,1} /\ NoWriteInto(q)
    /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {}
    /\ rg[i][pr[q]] = pgn[q] /\ ph[i][pr[q]] \in {"run","ovl"}
    /\ rpg[i][pr[q]] # q
<2> USE ONLY <1>FC0yVFn, Sizes, Location, Design
<2>1. \A r \in rows :
  /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
  BY SMTT(10), <1>bMxD4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMTT(10), Sizes, Location, Design DEF GrownRows, GrownP, K16, Sizes, Location, Design
\* T2M-END R2M2382_PdROOld_PP_PdLaunchSupport


<1>y2SHlMjgLHgMp5.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
         PinInv, KLaunch(i,s,rows)
  PROVE \E W \in SUBSET {q \in Pages : GrownP(q) /\ plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
<2> USE ONLY <1>y2SHlMjgLHgMp5, Sizes, Location, Design
<2>1. K8 /\ K16
  BY SMTT(10), V21_Inv_K16, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A r \in rows : KRowOK(i,r)
  BY <1>SCW1swOZ0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>SLWqQqcHE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. W \subseteq {q \in Pages : GrownP(q) /\ plt[q] = 0}
  BY <2>1, <2>2, <2>3, <1>FC0yVFn, SMTT(10), Sizes, Location, Design DEF GrownRows, Sizes, Location, Design
<2>5. QED
  BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2385_PdROOld_PP_PdLaunchWrites


<1>dGdHe.         K8 <=> \A i \in Inst, r \in Rq : Qm5H_5T(i,r)
  BY ZenonT(10), Sizes, Location, Design DEF K8, Qm5H_5T, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eU7jC.         K9 <=> \A j \in DInst, r \in Rq : NWCQTNY(j,r)
  BY ZenonT(10), Sizes, Location, Design DEF K9, NWCQTNY, Sizes, Location, Design
\* T2M-END R2M2352_PdROOld_PP_PdPointPredicates


<1>gvE9Fw2R3.         K9' <=> \A j \in DInst, r \in Rq : NWCQTNY(j,r)'
  BY ZenonT(10), Sizes, Location, Design DEF K9, NWCQTNY, Sizes, Location, Design
\* T2M-END R2M2353_PdROOld_PP_PdPostPoints


<1>yyjW834.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
  PROVE K8'
<2> USE ONLY <1>yyjW834, Sizes, Location, Design
<2>1. K8 /\ bFwlN /\ rO4YE
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, ph, pr, pst, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>>
  BY <1>SCW1swOZ0, SMTT(10), Sizes, Location, Design DEF rtV, recV, xV, Sizes, Location, Design
<2>3. PICK W \in SUBSET {q \in Pages : GrownP(q) /\ plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>y2SHlMjgLHgMp5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Sizes, Location, SMTT(10), Design DEF Active, GrownP, K8, OwnedBy, IsD, IsP, Inst, PInst, DInst, NL, bFwlN, rO4YE, KPages, Sizes, Location, Design
\* T2M-END R2M2387_PdROOld_PP_PdCell_KLaunch_K8


<1>FVwpq2l.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
  PROVE K9'
<2> USE ONLY <1>FVwpq2l, Sizes, Location, Design
<2>1. K8 /\ K9 /\ bFwlN /\ rO4YE
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<drep, iv, led, nx, ph, pst, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>>
  BY <1>SCW1swOZ0, SMTT(10), Sizes, Location, Design DEF rtV, recV, xV, ghV, Sizes, Location, Design
<2>3. PICK W \in SUBSET {q \in Pages : GrownP(q) /\ plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>y2SHlMjgLHgMp5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. SUFFICES ASSUME NEW j \in DInst, NEW r \in Rq PROVE NWCQTNY(j,r)'
  BY <1>gvE9Fw2R3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. Qm5H_5T(j,r) /\ NWCQTNY(j,r)
  BY <2>1, <1>dGdHe, <1>eU7jC, Sizes, SMTT(10), Location, Design DEF Inst, DInst, NL, Sizes, Location, Design
<2>6. ph[j][r] \in {"wait","rd","run","ovl"} => (rpg[j][r] \in Pages /\ rpg[j][r] \notin W)
  BY <2>3, <2>5, SMTT(10), Sizes, Location, Design DEF Qm5H_5T, NWCQTNY, GrownP, OwnedBy, Active, Sizes, Location, Design
<2>7. QED
  BY <2>2, <2>3, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF NWCQTNY, Active, Sizes, Location, Design
\* T2M-END R2M2388_PdROOld_PP_PdCell_KLaunch_K9


<1>LcBK6yYzj.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
  PROVE K8'
  BY ONLY <1>LcBK6yYzj, Sizes, Location, Design, <1>UwwC5LVwQr, <1>yyjW834, V21_Inv_K8, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dQ3f0bPqQ.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
  PROVE K9'
  BY ONLY <1>dQ3f0bPqQ, Sizes, Location, Design, <1>UwwC5LVwQr, <1>FVwpq2l, V21_Inv_K9, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eZmsJNuWgcEeIYcV.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K8'
 BY ONLY <1>eZmsJNuWgcEeIYcV, Sizes, Location, Design, <1>LcBK6yYzj DEF Sizes, Location, Design
\* T2M-END R2M2395_PdROFinal_KLaunch_K8

\* T2M-SCOPE R2M2396_PdROFinal_KLaunch_K9

<1>C8SmWOPIz3hmNpZE.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K9'
 BY ONLY <1>C8SmWOPIz3hmNpZE, Sizes, Location, Design, <1>dQ3f0bPqQ DEF Sizes, Location, Design
\* T2M-END R2M2396_PdROFinal_KLaunch_K9


<1>pDDs2iPJ6v1.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>pDDs2iPJ6v1, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>txMumeAB1OTELxaVzWV.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>txMumeAB1OTELxaVzWV, Sizes, Location, Design, Design, ZenonT(10) DEF KLaunch, ghV, recV, rtV, xV, Sizes, Location, Design

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

<1>HZaZjCnc.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
         lx9I2z, Wjy2fg, DJuMb, K8, K14, K16, KLaunch(i,s,rows)
  , PinInv, SFollow
 PROVE K14'
<2> USE ONLY <1>HZaZjCnc, Sizes, Location, Design
<2>1. /\ rows # {} /\ (\A r \in rows : KRowOK(i,r)) /\ (IF B2 /\ IsP(i) THEN \A r \in rows : SRowReady(i,r) ELSE TRUE)
       /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
       /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
       /\ krs' = [krs EXCEPT ![i][s] = LNEhLllF(i,rows)]
       /\ UNCHANGED gen
  BY <1>Tcs1aCvov, Sizes, Location, Design DEF rtV, Sizes, Location, Design
<2>2. /\ LNEhLllF(i,rows) # {}
       /\ \A e \in LNEhLllF(i,rows) :
            Loc(e[3]) = i /\ e[2] <= gen[e[1]] /\ (IF e[3] \in SPages THEN B2 /\ IsP(i) /\ e[4] \in {1,4} ELSE e[4] \in {0,1,2,3} /\ (e[4] # 0 => IsD(i)))
  BY <2>1, <1>t9gucBsHDv, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A a \in Inst, b \in KSlots : kfly'[a][b] => kpin'[a][b]
  BY <2>1, SMT, Sizes, Location, Design DEF lx9I2z, Wjy2fg, K14, Sizes, Location, Design
<2>4. \A a \in Inst, b \in KSlots : (krs'[a][b] # {}) <=> kpin'[a][b]
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF lx9I2z, DJuMb, K14, Sizes, Location, Design
<2>5. \A a \in Inst, b \in KSlots : \A e \in krs'[a][b] :
        Loc(e[3]) = a /\ e[2] <= gen'[e[1]] /\ (IF e[3] \in SPages THEN B2 /\ IsP(a) /\ e[4] \in {1,4} ELSE e[4] \in {0,1,2,3} /\ (e[4] # 0 => IsD(a)))
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF DJuMb, K14, Sizes, Location, Design
<2>6. QED
  BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF K14, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>illOzJ7kL2A.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K14'
BY ONLY <1>illOzJ7kL2A, Sizes, Location, Design, <1>HZaZjCnc, <1>WAxd2hhfMM, <1>joh6z3bMX, V21_Inv_K14, V21_Inv_K16, V21_Inv_K8, V21_Inv_TypeOK DEF BD3C0, Sizes, Location, Design
\* T2M-END R2M2519_PdROKernel_KLaunch_K14


<1>FXdY6IosIlRMFx.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
         PinInv, KLaunch(i,s,rows)
  
 PROVE \E W \in SUBSET {q \in Pages : GrownP(q) /\ plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
<2> USE ONLY <1>FXdY6IosIlRMFx, Sizes, Location, Design
<2>1. K8 /\ K16
  BY <1>joh6z3bMX, SMTT(10), V21_Inv_K16, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A r \in rows : KRowOK(i,r)
  BY <1>Tcs1aCvov, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>pX6n1mfRA, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. W \subseteq {q \in Pages : GrownP(q) /\ plt[q] = 0}
  BY <2>1, <2>2, <2>3, <1>itzrhoR, SMTT(10), Sizes, Location, Design DEF GrownRows, Sizes, Location, Design
<2>5. QED
  BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2523_PdROK_PdLaunchWrites

\* T2M-SCOPE R2M2524_PdROK_PdCell_KLaunch_ReadOwnLanded
\* T2M-BODY R2M2524_PdROK_PdCell_KLaunch_ReadOwnLanded
\* T2M-LOCAL-VISIBILITY

<1>ifH9OPRUE1uBqNI2jlf.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
  
 PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>ifH9OPRUE1uBqNI2jlf, Sizes, Location, Design
<2>1. BaseSealOnlyLanded /\ ehoz3 /\ ZMkh8
  BY <1>joh6z3bMX, <1>WAxd2hhfMM, SMTT(10), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Safety, BD3C0, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<hw, pst, xdst>>
  BY <1>Tcs1aCvov, SMTT(10), Sizes, Location, Design DEF rtV, recV, xV, Sizes, Location, Design
<2>3. PICK W \in SUBSET {q \in Pages : GrownP(q) /\ plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>FXdY6IosIlRMFx, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Sizes, Location, SMTT(10), Design DEF BaseSealOnlyLanded, GrownP, NoWriteInto, Writing, InFl, ehoz3, ZMkh8, Sizes, Location, Design
\* T2M-END R2M2526_PdROK_PdCell_KLaunch_SealOnlyLanded


<1>TSiqRqtQeZu8AmUgAMH0oy.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE SealOnlyLanded'
<2> USE ONLY <1>TSiqRqtQeZu8AmUgAMH0oy, Sizes, Location, Design
<2>1. BaseSealOnlyLanded' BY <1>ifH9OPRUE1uBqNI2jlf, <1>WAxd2hhfMM, <1>joh6z3bMX, V21_Inv_TypeOK, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
<2>2. SharedImmutable'
 <3> HIDE DEF CoreTypeOK, STypeOK, SFollow
 <3>oldType. xdst \in [Xids -> 0..NP]
  BY ONLY <1>TSiqRqtQeZu8AmUgAMH0oy, V22_T_xdst, SMTT(5)
 <3>frame. UNCHANGED xdst
  BY ONLY <1>TSiqRqtQeZu8AmUgAMH0oy, <1>txMumeAB1OTELxaVzWV, SMTT(5)
 <3>nextType. xdst' \in [Xids -> 0..NP]
  BY ONLY <3>oldType, <3>frame, SMTT(5)
 <3>qed. QED BY ONLY <1>TSiqRqtQeZu8AmUgAMH0oy, <1>UoOnqFdN5hlmOkH5yaHH03rU, <3>nextType, SMTT(5)
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF SealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M2527_PdROKernel_KLaunch_SealOnlyLanded


<1> QED BY <1>C8SmWOPIz3hmNpZE, <1>TSiqRqtQeZu8AmUgAMH0oy, <1>hv9cQrCpi2ZrJTMvPANaMImj97wQ7JYm, <1>illOzJ7kL2A, <1>eZmsJNuWgcEeIYcV, <1>UMHvhFNbaU, <1>V8E42iqBof, <1>DaDpFNgucYv, <1>BsHKJXNsQ6, <1>Elx5Wh09Mc2YxDl6gCJu8BY, <1>XRKGpIY63b94aMnPD, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_KLaunch SHA 221760799284de0a100cc1bd8e4c1bd1ead1274d09ce8ea258fb35fe348b8a08
USE DEF ShapeNetFrame
HIDE DEF P_PagePoolsDisjoint, Part_KLaunch_03_01, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K13, V21_Inv_K14, V21_Inv_K16, V21_Inv_K3, V21_Inv_K5, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_S4, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xdst, V22_T_xsrcP, V22_T_xsrcS
LEMMA ShapeEffect_KLaunch ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, Sizes, Design, KLaunch(i,s,rows)
 PROVE net'=net
 BY ONLY KLaunch(i,s,rows), Sizes, Design, SMTT(5) DEF KLaunch, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_KLaunch ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, Sizes, Design, IndInv, MessageShape, KLaunch(i,s,rows)
 PROVE MessageShape'
 BY ONLY Sizes, Design, KLaunch(i,s,rows), MessageShape, ShapeEffect_KLaunch, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_KLaunch SHA b2ccc3d47070f1bf74e3a9d1ad33f6ca3623ff5d888a47f79629b922086c4991
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_KLaunch, ShapeNetFrame
THEOREM DomainKeep_KLaunch ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, Sizes, Location, Design, PinInv, KLaunch(i,s,rows)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, KLaunch(i,s,rows), ShapeEffect_KLaunch
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalPart_KLaunch_03_02 SHA e3b8566163e1efadcdea4bb4d7e4537d99c29f0b051be6d8b288df2f8de19be4
USE DEF V21_Inv_BaseSafety, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K6, V21_Inv_K8, V21_Inv_OneReply, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_T_iv, V22_T_nx, V22_T_pst, V22_T_schoice, V22_T_smap, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_KLaunch, V21_Inv_MsgXDomain
THEOREM Part_KLaunch_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE (PrivateMapOwner)' /\ (SI7)' /\ (K17)' /\ (K10)' /\ (K11)' /\ (K16)' /\ (K1)' /\ (K2)' /\ (K4)' /\ (K6)' /\ (K12)' /\ (S1)' /\ (S2)' /\ (S3)' /\ (S5)' /\ (S6)' /\ (GenFiltered)' /\ (OneReply)' /\ (ReplyTruth)' /\ (QuarNeverMapped)' /\ (QuarNoReg)' /\ (MsgXDomain)'
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

           Tjs4X2B6(i,rows) == {KEnt(i,r) : r \in rows} \cup {KGEnt(q) : q \in GrownRows(i,rows)} \cup SRows(i,rows)

           \* T2M-LOCAL-VISIBILITY

           PSaXwbF9(i,rows) == {KEnt(i,r) : r \in rows} \cup {KGEnt(q) : q \in GrownRows(i,rows)} \cup SRows(i,rows)

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


           RO_E_sentry == sentry'=(sentry \cup {x \in Xids : RO_Posted(x)}) \ {x \in Xids : RO_Close(x) \/ RO_Quarantine(x)}


<1> HIDE DEF PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Zxt3uAWx0s, x3u8USZ8BP, gsRtJP8qi, PfTvb9KsRvdD, Lysb3rxXC, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, Tjs4X2B6, PSaXwbF9, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_E_sentry

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


<1>f5MCqeSLgn92Rwi8n1Rh27iW.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE PrivateMapOwner'
<2> USE ONLY <1>f5MCqeSLgn92Rwi8n1Rh27iW, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF KLaunch, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>Ehr2pMdg5uoVBObEEj2Ppij, Sizes, Location, Design DEF Sizes, Location, Design


<1>Ewc26kDsH9u9DuzN6.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>Ewc26kDsH9u9DuzN6, Sizes, Location, Design, DomainKeep_KLaunch, SMTT(5)
\* T2M-END R2M0297_PdPDomain_KLaunch


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


<1>GcRpeXyfAK4X76c.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, led, net, nfail, nx, pgn, ph, pr, pst, rd, rg, rhit, rp, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>GcRpeXyfAK4X76c, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF KLaunch, ghV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YrLMr1ekDb.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K1'
<2> USE ONLY <1>YrLMr1ekDb, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kYzKY7f5LS.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K2'
<2> USE ONLY <1>kYzKY7f5LS, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SxlWRszkty.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K4'
<2> USE ONLY <1>SxlWRszkty, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JMliC06q4I.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K6'
<2> USE ONLY <1>JMliC06q4I, Sizes, Location, Design
<2>1. K6
 BY V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, pgn, pr, pst, sfly, sled>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>IM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yFNHLCG6KhL.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K12'
<2> USE ONLY <1>yFNHLCG6KhL, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gJG1tfjI0w.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE S1'
<2> USE ONLY <1>gJG1tfjI0w, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EM5mk5gM07.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE S2'
<2> USE ONLY <1>EM5mk5gM07, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hXBJ5QLT6v.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE S3'
<2> USE ONLY <1>hXBJ5QLT6v, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Qf0lFAaWRI.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE S5'
<2> USE ONLY <1>Qf0lFAaWRI, Sizes, Location, Design
<2>1. S5
 BY V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Po, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>l2qwRlImy9.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE S6'
<2> USE ONLY <1>l2qwRlImy9, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JYfq3cNgjFerIMje2Vs.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>JYfq3cNgjFerIMje2Vs, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zGYOI9qrpsza2NCu.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE OneReply'
<2> USE ONLY <1>zGYOI9qrpsza2NCu, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XIlLSoiqyu6w3DKy3r.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>XIlLSoiqyu6w3DKy3r, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DontFySpeNqIc4rPXO0SYay.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE QuarNeverMapped'
<2> USE ONLY <1>DontFySpeNqIc4rPXO0SYay, Sizes, Location, Design
<2>1. QuarNeverMapped
 BY V21_Inv_QuarNeverMapped, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ph, pst, rpg>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>CHHI4E3y3uZD9LA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XvsknaSlARdkavlzZ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE QuarNoReg'
<2> USE ONLY <1>XvsknaSlARdkavlzZ, Sizes, Location, Design
<2>1. QuarNoReg
 BY V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, pst>>
 BY <1>GcRpeXyfAK4X76c, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>agy0tgaoa, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>SCW1swOZ0.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
  PROVE /\ ~kpin[i][s] /\ ~kfly[i][s] /\ rows # {}
        /\ (\A r \in rows : KRowOK(i,r))
        /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
        /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
        /\ krs' = [krs EXCEPT ![i][s] = Tjs4X2B6(i,rows)]
        /\ UNCHANGED <<rtV, alive, nfail, torn, recV, pst, pr, pgn, pvis, led, sfly, sled, prefc, pqp, xV, net, ghV>>
  BY ONLY <1>SCW1swOZ0, Sizes, Location, Design, SMTT(10) DEF KLaunch, Tjs4X2B6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SLWqQqcHE.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
  PROVE \E W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY ONLY <1>SLWqQqcHE, Sizes, Location, Design, Design, SMTT(10) DEF KLaunch, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kdkRTQ8Q.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
  PROVE K10'
<2> USE ONLY <1>kdkRTQ8Q, Sizes, Location, Design
<2>1. K10 /\ K16 /\ DnMxp /\ DpA4 /\ djyOpL /\ m1zx9S /\ c02OO /\ dcfPK /\ SHJS /\ vS7em /\ AydA /\ bFwlN /\ IwCp /\ OyyWS /\ rO4YE /\ nNeM /\ q1Ohy /\ Xc_ngV /\ h9WLgd /\ JjZ1PO /\ CXAy /\ OfQy9 /\ a1R5
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K10, V21_Inv_K16, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ ~kpin[i][s] /\ ~kfly[i][s] /\ rows # {}
        /\ (\A r \in rows : KRowOK(i,r))
        /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
        /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
        /\ krs' = [krs EXCEPT ![i][s] = Tjs4X2B6(i,rows)]
        /\ UNCHANGED <<rtV, alive, nfail, torn, recV, pst, pr, pgn, pvis, led, sfly, sled, prefc, pqp, xV, net, ghV>>
  BY <1>SCW1swOZ0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>SLWqQqcHE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Sizes, Location, SMTT(10) DEF Active, DInst, GrownP, GrownRows, InFl, Inst, IsD, IsP, K10, K16, KRowOK, NL, NoWriteInto, OwnedBy, PInst, DnMxp, DpA4, djyOpL, m1zx9S, c02OO, dcfPK, SHJS, vS7em, AydA, bFwlN, IwCp, OyyWS, rO4YE, nNeM, q1Ohy, Xc_ngV, h9WLgd, JjZ1PO, CXAy, OfQy9, a1R5, Writing, ghV, recV, rtV, xV, KPages, Sizes, Location, Design
\* T2M-END R2M2383_PdROOld_PP_PdCell_KLaunch_K10

\* T2M-SCOPE R2M2384_PdROOld_PP_PdCell_KLaunch_K11

<1>GgMwKhZ7.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows)
  PROVE K11'
<2> USE ONLY <1>GgMwKhZ7, Sizes, Location, Design
<2>1. K11 /\ K16 /\ DpA4 /\ djyOpL /\ m1zx9S /\ c02OO /\ dcfPK /\ SHJS /\ vS7em /\ AydA /\ bFwlN /\ IwCp /\ OyyWS /\ rO4YE /\ nNeM /\ q1Ohy /\ Xc_ngV /\ h9WLgd /\ JjZ1PO /\ OfQy9 /\ Uzgo58
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K11, V21_Inv_K16, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. /\ ~kpin[i][s] /\ ~kfly[i][s] /\ rows # {}
        /\ (\A r \in rows : KRowOK(i,r))
        /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
        /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
        /\ krs' = [krs EXCEPT ![i][s] = Tjs4X2B6(i,rows)]
        /\ UNCHANGED <<rtV, alive, nfail, torn, recV, pst, pr, pgn, pvis, led, sfly, sled, prefc, pqp, xV, net, ghV>>
  BY <1>SCW1swOZ0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PICK W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>SLWqQqcHE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Sizes, Location, SMTT(10) DEF Active, DInst, GrownP, GrownRows, InFl, Inst, IsD, IsP, K11, K16, KRowOK, NL, NoWriteInto, PInst, DpA4, djyOpL, m1zx9S, c02OO, dcfPK, SHJS, vS7em, AydA, bFwlN, IwCp, OyyWS, rO4YE, nNeM, q1Ohy, Xc_ngV, h9WLgd, JjZ1PO, OfQy9, Uzgo58, Writing, ghV, recV, rtV, xV, KPages, Sizes, Location, Design
\* T2M-END R2M2384_PdROOld_PP_PdCell_KLaunch_K11

\* T2M-SCOPE R2M2385_PdROOld_PP_PdLaunchWrites

<1>GiSQSH4pm.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
  PROVE /\ ~kpin[i][s] /\ ~kfly[i][s] /\ rows # {}
        /\ (\A r \in rows : KRowOK(i,r))
        /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
        /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
        /\ krs' = [krs EXCEPT ![i][s] = PSaXwbF9(i,rows)]
        /\ UNCHANGED <<rtV, alive, nfail, torn, recV, pst, pr, pgn, pvis, led, sfly, sled, prefc, pqp, xV, net, ghV>>
  BY ONLY <1>GiSQSH4pm, Sizes, Location, Design, SMT DEF KLaunch, PSaXwbF9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fCVhKxkLU.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
  PROVE \E W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY ONLY <1>fCVhKxkLU, Sizes, Location, Design, Design, SMT DEF KLaunch, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cCUrj.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, KRowOK(i,r)
  PROVE /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
        /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (rhit[i][r] => IsD(i))
<2> USE ONLY <1>cCUrj, Sizes, Location, Design
<2>1. i \in Int /\ NPI \in Int
  BY Sizes, SMT, Location, Design DEF Inst, NL, Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMT, Sizes, Location DEF K8, KRowOK, Active, IsD, IsP, Sizes, Location, Design


<1>TtsuiVs.        
  ASSUME NEW i \in Inst, NEW rows \in SUBSET Rq,
         K8, K16, \A r \in rows : KRowOK(i,r)
  PROVE \A q \in GrownRows(i,rows) :
    /\ GrownP(q) /\ pr[q] \in Rq /\ pgn[q] \in Gens
    /\ Loc(q) = i /\ pgn[q] <= gen[pr[q]] /\ IsD(i)
    /\ plt[q] = ptl[q] /\ ptl[q] \in {0,1} /\ NoWriteInto(q)
    /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {}
    /\ rg[i][pr[q]] = pgn[q] /\ ph[i][pr[q]] \in {"run","ovl"}
    /\ rpg[i][pr[q]] # q
<2> USE ONLY <1>TtsuiVs, Sizes, Location, Design
<2>1. \A r \in rows :
  /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
  BY <1>cCUrj, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF GrownRows, GrownP, K16, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QIOpMcINo.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
         m1zx9S, c02OO, KLaunch(i,s,rows)
  PROVE \A a \in Inst, b \in KSlots : kpin'[a][b] =>
          \/ a = i /\ b = s /\ krs'[a][b] = PSaXwbF9(i,rows)
          \/ kpin[a][b] /\ krs'[a][b] = krs[a][b]
<2> USE ONLY <1>QIOpMcINo, Sizes, Location, Design
<2>1. /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
       /\ krs' = [krs EXCEPT ![i][s] = PSaXwbF9(i,rows)]
  BY <1>GiSQSH4pm, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF m1zx9S, c02OO, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WzuaXvze.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, K16, KLaunch(i,s,rows)
  PROVE K16'
<2> USE ONLY <1>WzuaXvze, Sizes, Location, Design
<2>1. UNCHANGED <<recV, pst, pr, pgn, led, sfly, sled, hw, xdst>>
  BY <1>GiSQSH4pm, Sizes, Location, Design DEF xV, Sizes, Location, Design
<2>2. PICK W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>fCVhKxkLU, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K16, GrownP, NoWriteInto, Writing, InFl, recV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>C4TJwCRp.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
         m1zx9S, c02OO, K8, K16, K17, KLaunch(i,s,rows)
  PROVE K17'
<2> USE ONLY <1>C4TJwCRp, Sizes, Location, Design
<2>1. /\ (\A r \in rows : KRowOK(i,r))
       /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
       /\ krs' = [krs EXCEPT ![i][s] = PSaXwbF9(i,rows)]
       /\ UNCHANGED recV
  BY <1>GiSQSH4pm, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A q \in GrownRows(i,rows) :
    /\ rg[i][pr[q]] = pgn[q] /\ ph[i][pr[q]] \in {"run","ovl"}
    /\ rpg[i][pr[q]] # q
  BY <2>1, <1>TtsuiVs, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A e \in PSaXwbF9(i,rows) : e[4] \in {2,3} =>
    rg[i][e[1]] = e[2] /\ ph[i][e[1]] \in {"run","ovl"} /\ rpg[i][e[1]] # e[3]
  BY <2>2, SMT, Sizes, Location, Design DEF PSaXwbF9, SRows, KEnt, KGEnt, Sizes, Location, Design
<2>4. \A a \in Inst, b \in KSlots : kpin'[a][b] =>
          \/ a = i /\ b = s /\ krs'[a][b] = PSaXwbF9(i,rows)
          \/ kpin[a][b] /\ krs'[a][b] = krs[a][b]
  BY <1>QIOpMcINo, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. \A a \in Inst, b \in KSlots : kpin'[a][b] => \A e \in krs'[a][b] :
        e[4] \in {2,3} =>
          \/ rg[a][e[1]] > e[2]
          \/ rg[a][e[1]] = e[2] /\ ph[a][e[1]] \in {"run","ovl","end"} /\ rpg[a][e[1]] # e[3]
  BY <2>3, <2>4, SMT, Sizes, Location, Design DEF K17, Sizes, Location, Design
<2>6. QED
  BY <2>1, <2>5, SMT, Sizes, Location, Design DEF K17, recV, Sizes, Location, Design
\* T2M-END R2M2372_PdROOld_PP_PdLaunchProofs


<1>YqB3KRFQm9.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
  PROVE K10'
  BY ONLY <1>YqB3KRFQm9, Sizes, Location, Design, <1>UwwC5LVwQr, <1>kdkRTQ8Q, V21_Inv_K10, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wYOWcr9C2f.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
  PROVE K11'
  BY ONLY <1>wYOWcr9C2f, Sizes, Location, Design, <1>UwwC5LVwQr, <1>GgMwKhZ7, V21_Inv_K11, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FVoAib1XzK.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
  PROVE K16'
  BY ONLY <1>FVoAib1XzK, Sizes, Location, Design, <1>UwwC5LVwQr, <1>WzuaXvze, V21_Inv_K16, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gwx1MDPYjF.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
  PROVE K17'
  BY ONLY <1>gwx1MDPYjF, Sizes, Location, Design, <1>UwwC5LVwQr, <1>C4TJwCRp, V21_Inv_K16, V21_Inv_K17, V21_Inv_K8, V21_Inv_TypeOK DEF QLAWp, Sizes, Location, Design
\* T2M-END R2M2389_PdROOld_PdPAgg_KLaunch

\* T2M-SCOPE R2M2390_PdROFinal_KLaunch_K10
\* T2M-BODY R2M2390_PdROFinal_KLaunch_K10
\* T2M-LOCAL-VISIBILITY

<1>BDyAqbPnxO3xjbx9a.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K10'
 BY ONLY <1>BDyAqbPnxO3xjbx9a, Sizes, Location, Design, <1>YqB3KRFQm9 DEF Sizes, Location, Design
\* T2M-END R2M2390_PdROFinal_KLaunch_K10

\* T2M-SCOPE R2M2391_PdROFinal_KLaunch_K11

<1>rpOc7uSLquwAD7Guc.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K11'
 BY ONLY <1>rpOc7uSLquwAD7Guc, Sizes, Location, Design, <1>wYOWcr9C2f DEF Sizes, Location, Design
\* T2M-END R2M2391_PdROFinal_KLaunch_K11

\* T2M-SCOPE R2M2392_PdROFinal_KLaunch_K16

<1>U6W5Qt6xxTIWuMfjH.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K16'
 BY ONLY <1>U6W5Qt6xxTIWuMfjH, Sizes, Location, Design, <1>FVoAib1XzK DEF Sizes, Location, Design
\* T2M-END R2M2392_PdROFinal_KLaunch_K16

\* T2M-SCOPE R2M2393_PdROFinal_KLaunch_K17

<1>PYZkofSblMdpIyuVk.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K17'
 BY ONLY <1>PYZkofSblMdpIyuVk, Sizes, Location, Design, <1>gwx1MDPYjF DEF Sizes, Location, Design
\* T2M-END R2M2393_PdROFinal_KLaunch_K17

\* T2M-SCOPE R2M2394_PdROFinal_KLaunch_K7

<1>oVMEMsT8gqQqbk.        
 ASSUME B2, SFollow
 PROVE RO_E_sentry
 BY ONLY <1>oVMEMsT8gqQqbk, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_sentry, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

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

<1>txMumeAB1OTELxaVzWV.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>txMumeAB1OTELxaVzWV, Sizes, Location, Design, Design, ZenonT(10) DEF KLaunch, ghV, recV, rtV, xV, Sizes, Location, Design

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

<1>Lsa2v6Ho00x.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE SI7'
 BY ONLY <1>Lsa2v6Ho00x, Sizes, Location, Design, <1>txMumeAB1OTELxaVzWV, <1>zsbxtxhUoMieqwpcc, <1>uHhD8uhqo1ERJ3fPh, <1>FVK4MYGoOHs3gti, <1>dhSsfJA1lMG4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>f5MCqeSLgn92Rwi8n1Rh27iW, <1>Lsa2v6Ho00x, <1>PYZkofSblMdpIyuVk, <1>BDyAqbPnxO3xjbx9a, <1>rpOc7uSLquwAD7Guc, <1>U6W5Qt6xxTIWuMfjH, <1>YrLMr1ekDb, <1>kYzKY7f5LS, <1>SxlWRszkty, <1>JMliC06q4I, <1>yFNHLCG6KhL, <1>gJG1tfjI0w, <1>EM5mk5gM07, <1>hXBJ5QLT6v, <1>Qf0lFAaWRI, <1>l2qwRlImy9, <1>JYfq3cNgjFerIMje2Vs, <1>zGYOI9qrpsza2NCu, <1>XIlLSoiqyu6w3DKy3r, <1>DontFySpeNqIc4rPXO0SYay, <1>XvsknaSlARdkavlzZ, <1>Ewc26kDsH9u9DuzN6, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_KLaunch_01_01, Part_KLaunch_01_02, Part_KLaunch_02_01, Part_KLaunch_02_02, Part_KLaunch_03_01, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_KLaunch
HIDE DEF DomainKeep_KLaunch, V21_Inv_BaseSafety, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K6, V21_Inv_K8, V21_Inv_OneReply, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_T_iv, V22_T_nx, V22_T_pst, V22_T_schoice, V22_T_smap, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_KLaunch ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, Sizes, Location, Design, PinInv, KLaunch(i,s,rows), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, NEW v \in KSlots, NEW elts \in SUBSET Rq, Sizes, Location, Design, PinInv, KLaunch(u,v,elts), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_KLaunch_01_01, Part_KLaunch_01_02, Part_KLaunch_02_01, Part_KLaunch_02_02, Part_KLaunch_03_01, Part_KLaunch_03_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_KLaunch_01_01, Part_KLaunch_01_02, Part_KLaunch_02_01, Part_KLaunch_02_02, Part_KLaunch_03_01, Part_KLaunch_03_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, KLaunch(i,s,rows), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, KLaunch(i,s,rows), ShapeKeep_KLaunch, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
