---- MODULE PdActionSlice_KLaunch_01 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_9ef278c147c12b12, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalPart_KLaunch_01_01 SHA b272bc69c49560f8e5b8a8b1946d47d82a809a6ff93c85f7273ef303daca7a34
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K17, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_KLaunch_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE (TypInv)' /\ (KReadIntegrity)'
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


           Zxt3uAWx0s == xsrcS'=[x \in Xids |-> IF x4aVJ652V(x) THEN (IF pONKJ3(x) \in SPages /\ spst[pONKJ3(x)]="shared" THEN {pONKJ3(x)} ELSE {}) ELSE xsrcS[x]]


           x3u8USZ8BP == xsrcP'=[x \in Xids |-> IF x4aVJ652V(x) THEN (IF pONKJ3(x) \in SPages /\ spst[pONKJ3(x)]="priv" THEN {pONKJ3(x)} ELSE {}) ELSE xsrcP[x]]


           gsRtJP8qi == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           PfTvb9KsRvdD == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


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

<1> HIDE DEF PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, OLQkiu3EAtl, rzWzChoAP, Zxt3uAWx0s, x3u8USZ8BP, gsRtJP8qi, PfTvb9KsRvdD, Lysb3rxXC, d8tte, FB1B, Dm2r, NDUq, jJbe, lMQl, xLsS4rg, VdIowv3, DyLjXX, Tw79UK, FPtfh6, Ohokp, H2Dp, Hs_2, gK2SH, eTXEj, uq3c, YvbPPX, nxe5j, Zp7G, FH5ni, h59Nu, lLdQN, B_u4L7, Y0neG, dJlF2B, NdLtDP, y1DuQMW, jtyp0, RpRX, aUnM, ajLY, bf0f, TBN_, zOMjuK, gN8K9A, Accda, h4p9, JtQR1, ckxo, wl4Su, zSOeq, QJSl, vh8yv, Oj0BX9, eo8ozY, Y9EC07R, WFpzFb, CA515, MZLBPcMi4i8Jz, duh2_cO3, RO_SRowsFacts, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, BD3C0, LNEhLllF

<1>lDP0xTlZUeNs.        
 ASSUME B2, SFollow
 PROVE rzWzChoAP
 BY ONLY <1>lDP0xTlZUeNs, Sizes, Location, Design, ZenonT(10) DEF SFollow, rzWzChoAP, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


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


<1>cQRSNCkI9c6.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>cQRSNCkI9c6, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design


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


<1>YznESJ8wt.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
  , PinInv
 PROVE \E W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY ONLY <1>YznESJ8wt, Sizes, Location, Design, Design, SMT DEF KLaunch, Sizes, Location, Design


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


<1>JiGpK0y1InyT8bz7MGm.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, KLaunch(i,s,rows)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>JiGpK0y1InyT8bz7MGm, Sizes, Location, Design, Design, ZenonT(10) DEF KLaunch, ghV, recV, rtV, xV, Sizes, Location, Design


<1>COd7GawRbYYDbH4RoEoc4.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY ONLY <1>COd7GawRbYYDbH4RoEoc4, Sizes, Location, Design, <1>JiGpK0y1InyT8bz7MGm, <1>QPMjP2YgSfrqb DEF Sizes, Location, Design


<1>wHJfTKcKrNp.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K14'
BY ONLY <1>wHJfTKcKrNp, Sizes, Location, Design, <1>VVfLBcbi, <1>VEFD27KTxm, <1>IXSGqeoQ3, V21_Inv_K14, V21_Inv_K16, V21_Inv_K8, V21_Inv_TypeOK DEF CA515, Sizes, Location, Design


<1>FFFGkNIAwN.        
  ASSUME NEW r, NEW g
  , PinInv
 PROVE NTok(r,g) \in Nat \ {0}
<2>size. PS \in Nat \ {0}
 BY ONLY Sizes, ZenonT(5) DEF Sizes
<2>integer. PS \in Int /\ PS>=1
 BY ONLY <2>size, PositiveNatFact, SMTT(5)
<2>qed. QED BY ONLY <2>size, <2>integer, SMTT(5) DEF NTok



<1>ifJYnbBXQkU1tZ.        
  ASSUME NEW x \in Xids, QJSl, K2, InFl(x)
  , PinInv
 PROVE x < nx
  BY ONLY <1>ifJYnbBXQkU1tZ, Sizes, Location, Design, SMT DEF QJSl, Xids, K2, InFl, Sizes, Location, Design


<1>SYpbMGnSi45sDfrT.        
  ASSUME NEW x \in Xids, QJSl, K1, K2, K3, InFl(x)
  , PinInv
 PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>SYpbMGnSi45sDfrT, Sizes, Location, Design
<2>1. x < nx
  BY <1>ifJYnbBXQkU1tZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMT, Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design


<1>SJG6hxB.        
  ASSUME NEW i \in Inst, NEW p \in Pages, IsP(i), Loc(p) = i,
         QJSl, K1, K2, K3
  , PinInv
 PROVE NoWriteInto(p)
<2> USE ONLY <1>SJG6hxB, Sizes, Location, Design
<2>1. \A x \in Xids : InFl(x) => Loc(xdst[x]) \in DInst
  BY <1>SYpbMGnSi45sDfrT, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. i \notin DInst
  BY Sizes, SMT, Location, Design DEF IsP, DInst, Inst, NL, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF NoWriteInto, Writing, Sizes, Location, Design


<1>NFTDGhL.        
  ASSUME NEW i \in Inst, NEW r \in Rq, QJSl, K1, K2, K3, K8,
         BaseReadOwnLanded, KRowOK(i,r)
  , PinInv
 PROVE /\ KData(i,KEnt(i,r))
        /\ ((IsD(i) /\ ~rhit[i][r]) => led[rpg[i][r]] = {})
        /\ (IsP(i) => sled[rpg[i][r]] = {})
<2> USE ONLY <1>NFTDGhL, Sizes, Location, Design
<2>1. /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
       /\ (rhit[i][r] => IsD(i))
  BY <1>yqmJk, Sizes, Location, Design DEF Sizes, Location, Design
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
    BY <2>4, <2>1, <3>1, <1>SJG6hxB, Sizes, Location, Design DEF Sizes, Location, Design
  <3>3. QED
    BY <2>4, <2>1, <3>1, <3>2, Design, P_PagePoolsDisjoint, SMT, Sizes, Location DEF KData, KEnt, KRowOK, K8, Sizes, Location, Design
<2>5. QED
  BY <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design


<1>e9bFE9ABOIewFh.        
  ASSUME NEW i \in Inst, NEW rows \in SUBSET Rq,
         NEW W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0},
         K8, K14, K15, K16, \A r \in rows : KRowOK(i,r)
  , PinInv
 PROVE \A a \in Inst, b \in KSlots : kpin[a][b] =>
    \A e \in krs[a][b] : e[4] # 3 => e[3] \notin W
<2> USE ONLY <1>e9bFE9ABOIewFh, Sizes, Location, Design
<2>1. \A q \in W : ptl[q] = 0 /\ Loc(q) = i /\ IsD(i)
  BY <1>kaDlGs4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A r, g : NTok(r,g) \in Nat \ {0}
  BY <1>FFFGkNIAwN, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. PS \in Nat \ {0}
  BY Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, P_PagePoolsDisjoint, SMT, Sizes, Location, Design DEF K14, K15, KData, GrownRows, Sizes, Location, Design


<1>oGbw0o3L.        
  ASSUME NEW i \in Inst, NEW rows \in SUBSET Rq, QJSl, K1, K2, K3, K8, K16,
         BaseReadOwnLanded, \A r \in rows : KRowOK(i,r)
  , PinInv, SFollow
  , (IF B2 /\ IsP(i) THEN \A r \in rows : SRowReady(i,r) ELSE TRUE)
 PROVE \A e \in duh2_cO3(i,rows) :
    /\ KData(i,e)
    /\ ((IsD(i) /\ e[4] # 1) => led[e[3]] = {})
    /\ ((IsP(i) /\ e[3] \in Pages) => sled[e[3]] = {})
<2> USE ONLY <1>oGbw0o3L, Sizes, Location, Design
<2>0. MZLBPcMi4i8Jz(i,rows) BY <1>Fl4Psfyf4Q, Sizes, Location, Design DEF Sizes, Location, Design
<2>1. \A r \in rows :
    /\ KData(i,KEnt(i,r))
    /\ ((IsD(i) /\ ~rhit[i][r]) => led[rpg[i][r]] = {})
    /\ (IsP(i) => sled[rpg[i][r]] = {})
  BY <1>NFTDGhL, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A q \in GrownRows(i,rows) :
    /\ plt[q] = ptl[q] /\ ptl[q] \in {0,1} /\ NoWriteInto(q)
    /\ led[q] = {} /\ sled[q] = {} /\ IsD(i)
  BY <1>kaDlGs4, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A q \in GrownRows(i,rows) :
    /\ KData(i,KGEnt(q)) /\ led[q] = {} /\ sled[q] = {}
  BY <2>2, Design, P_PagePoolsDisjoint, SMT, Sizes, Location DEF KData, KGEnt, GrownRows, Sizes, Location, Design
<2>4. QED
  BY <2>0, <2>1, <2>3, P_PagePoolsDisjoint, Sizes, SMT, Location, Design DEF MZLBPcMi4i8Jz, NL, Inst, PInst, DInst, IsP, IsD, duh2_cO3, KEnt, KGEnt, Sizes, Location, Design


<1>B5UdO7O.        
  ASSUME NEW i, NEW e, e[3] \in KPages, KData(i,e), UNCHANGED <<hw, xdst, pvis, sfly>>,
         (e[3] \in Pages /\ e[4] # 3) => UNCHANGED <<ptl[e[3]], plt[e[3]]>>
  , PinInv, SFollow
 PROVE KData(i,e)'
  BY ONLY <1>B5UdO7O, Sizes, Location, Design, <1>rsuLN, SMT DEF KData, SData, NoWriteInto, Writing, InFl, KPages, Sizes, Location, Design


<1>DOwJW0mEdJ778M.        
  ASSUME NEW i \in Inst, NEW rows \in SUBSET Rq,
         NEW W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0},
         QJSl, K1, K2, K3, K8, K16, BaseReadOwnLanded,
         \A r \in rows : KRowOK(i,r)
  , PinInv, SFollow
  , (IF B2 /\ IsP(i) THEN \A r \in rows : SRowReady(i,r) ELSE TRUE)
 PROVE \A e \in duh2_cO3(i,rows) : e[4] # 3 => e[3] \notin W
<2> USE ONLY <1>DOwJW0mEdJ778M, Sizes, Location, Design
<2>0. MZLBPcMi4i8Jz(i,rows) BY <1>Fl4Psfyf4Q, Sizes, Location, Design DEF Sizes, Location, Design
<2>1. \A q \in W : ptl[q] = 0 /\ IsD(i)
  BY <1>kaDlGs4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A e \in duh2_cO3(i,rows) : KData(i,e)
  BY <1>oGbw0o3L, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A r, g : NTok(r,g) \in Nat \ {0}
  BY <1>FFFGkNIAwN, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. PS \in Nat \ {0}
  BY Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>0, <2>1, <2>2, <2>3, <2>4, P_PagePoolsDisjoint, SMT, Sizes, Location, Design DEF KData, GrownRows, Sizes, Location, Design


<1>N9kdKKlN.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
         CA515, K1, K2, K3, K8, K14, K15, K16, BaseReadOwnLanded, KLaunch(i,s,rows)
  , PinInv, SFollow
 PROVE K15'
<2> USE ONLY <1>N9kdKKlN, Sizes, Location, Design
<2>0. Tw79UK /\ Ohokp /\ QJSl
  BY Sizes, Location, Design DEF CA515, Sizes, Location, Design
<2>1. /\ rows # {} /\ (\A r \in rows : KRowOK(i,r)) /\ (IF B2 /\ IsP(i) THEN \A r \in rows : SRowReady(i,r) ELSE TRUE)
       /\ UNCHANGED <<hw, xdst, pvis, sfly, led, sled>>
  BY <1>Q878g49nZ, Sizes, Location, Design DEF xV, Sizes, Location, Design
<2>2. PICK W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>YznESJ8wt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A e \in duh2_cO3(i,rows) :
    /\ KData(i,e)
    /\ ((IsD(i) /\ e[4] # 1) => led[e[3]] = {})
    /\ ((IsP(i) /\ e[3] \in Pages) => sled[e[3]] = {})
  BY <2>0, <2>1, <1>oGbw0o3L, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A a \in Inst, b \in KSlots : kpin[a][b] =>
    \A e \in krs[a][b] : e[4] # 3 => e[3] \notin W
  BY <2>1, <2>2, <1>e9bFE9ABOIewFh, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. \A e \in duh2_cO3(i,rows) : e[4] # 3 => e[3] \notin W
  BY <2>0, <2>1, <2>2, <1>DOwJW0mEdJ778M, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. duh2_cO3(i,rows) \subseteq Rq \X Gens \X KPages \X {0,1,2,3,4}
  BY <2>1, <1>jxJs9OzLPl, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. \A e \in duh2_cO3(i,rows) : KData(i,e)'
  BY <2>1, <2>2, <2>3, <2>5, <2>6, <1>B5UdO7O, SMT, Sizes, Location, Design DEF Sizes, Location, Design
<2>8. \A a \in Inst, b \in KSlots : kpin[a][b] => \A e \in krs[a][b] : KData(a,e)'
  BY <2>0, <2>1, <2>2, <2>4, <1>B5UdO7O, SMT, Sizes, Location, Design DEF K15, Ohokp, Sizes, Location, Design
<2>9. \A a \in Inst, b \in KSlots : kpin'[a][b] =>
          \/ a = i /\ b = s /\ krs'[a][b] = duh2_cO3(i,rows)
          \/ kpin[a][b] /\ krs'[a][b] = krs[a][b]
  BY <2>0, <1>kjUFLrLZt, Sizes, Location, Design DEF Sizes, Location, Design
<2>10. QED
  BY <2>1, <2>3, <2>7, <2>8, <2>9, SMT, Sizes, Location, Design DEF K15, Sizes, Location, Design


<1>rzBvYAbL2hq.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE K15'
BY ONLY <1>rzBvYAbL2hq, Sizes, Location, Design, <1>N9kdKKlN, <1>VEFD27KTxm, <1>IXSGqeoQ3, V21_Inv_K1, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_TypeOK DEF CA515, Sizes, Location, Design


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


<1>SwLwOpR604PAU63GHliCyBvM.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
        PinInv, KLaunch(i,s,rows), SFollow
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>SwLwOpR604PAU63GHliCyBvM, Sizes, Location, Design
<2>1. Tw79UK /\ Ohokp /\ NoFreeUnderRead
 BY <1>VEFD27KTxm, V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF CA515, Sizes, Location, Design
<2>2. \A e \in duh2_cO3(i,rows) : KHeld(e) BY <1>VjQdjVM6dmB1C, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A a \in Inst,b \in KSlots : kpin'[a][b] =>
 (a=i /\ b=s /\ krs'[a][b]=duh2_cO3(i,rows)) \/ (kpin[a][b] /\ krs'[a][b]=krs[a][b])
 BY <2>1, <1>kjUFLrLZt, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. UNCHANGED <<pst,pr,pgn,spst,sown,sgen>>
 BY <1>Q878g49nZ, <1>lMkjbkGn4Kz7Qy9O8, <1>rsuLN, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF NoFreeUnderRead, KHeld, SHeld, Sizes, Location, Design


<1>YQpDT6cTmwrlTozbciMJGxc.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
        PinInv, KLaunch(i,s,rows), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>YQpDT6cTmwrlTozbciMJGxc, Sizes, Location, Design
<2>1. SMapIntegrity BY V21_Inv_KReadIntegrity, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>2. K14' /\ K15' /\ NoFreeUnderRead'
 BY <1>wHJfTKcKrNp, <1>rzBvYAbL2hq, <1>SwLwOpR604PAU63GHliCyBvM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<ph,rg,smap,spst>>
 BY <1>JiGpK0y1InyT8bz7MGm, <1>COd7GawRbYYDbH4RoEoc4, <1>lMkjbkGn4Kz7Qy9O8, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. SMapIntegrity' BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF SMapIntegrity, Active, Sizes, Location, Design
<2>5. BaseKReadIntegrity' BY <2>2, SMTT(10), Sizes, Location, Design DEF BaseKReadIntegrity, K14, K15, NoFreeUnderRead, Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design


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

<1>dWnul9PL.        
  ASSUME NEW I, NEW S, NEW B, NEW f \in [I -> [S -> B]],
         NEW i \in I, NEW s \in S, NEW v \in B
  , PinInv
 PROVE [f EXCEPT ![i][s] = v] \in [I -> [S -> B]]
  BY ONLY <1>dWnul9PL, Sizes, Location, Design, SMTT(5) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WZ5P7daa0hqI.        
 ASSUME PinInv
 PROVE BD3C0' => CoreTypeOK'
  BY ONLY <1>WZ5P7daa0hqI, Sizes, Location, Design, ZenonT(5) DEF TypInv, CoreTypeOK, BD3C0, UYpr1, ZB9m, XjUj, RwpJ, J8zi, wHUB, IOOT2o9, WCW_RIE, qXm9o1, lx9I2z, Wjy2fg, DJuMb, r9d6, V6LQ, sufyJ, hGnPA, UuEG, JHlYLg, GNsKg, d3cH, E5Zo2, ehoz3, ZMkh8, b8LBGz, hzt6H, LMfyK0, BIdZ6_, MSlzCY1, tdSC4, PqGK, wl8W, cy_Q, L4qc, bf5O, O4U_5z, Iwh80D, lpGba, xyhb, OyPI5, U60c, xLHsX, Pl5Rz, flJU, lHQee, oKZaCF, M1G19k, NO7ciLG, c1LgxC, Sizes, Location, Design

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

<1>YzIsSPKLJst.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq,
         BD3C0, K8, K16, KLaunch(i,s,rows)
  , PinInv, SFollow
 PROVE CoreTypeOK'
<2> USE ONLY <1>YzIsSPKLJst, Sizes, Location, Design
<2>1. /\ rows # {} /\ (\A r \in rows : KRowOK(i,r)) /\ (IF B2 /\ IsP(i) THEN \A r \in rows : SRowReady(i,r) ELSE TRUE)
       /\ kpin' = [kpin EXCEPT ![i][s] = TRUE]
       /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
       /\ krs' = [krs EXCEPT ![i][s] = LNEhLllF(i,rows)]
       /\ UNCHANGED <<rtV, alive, nfail, torn, recV, pst, pr, pgn, pvis, led, sfly, sled, prefc, pqp, xV, net, ghV>>
  BY <1>Tcs1aCvov, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. PICK W \in SUBSET {q \in GrownRows(i,rows) : plt[q] = 0} :
    /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
    /\ ptl' = [p \in Pages |-> IF p \in W THEN 1 ELSE ptl[p]]
  BY <1>pX6n1mfRA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. LNEhLllF(i,rows) \subseteq Rq \X Gens \X KPages \X {0,1,2,3,4}
  BY <2>1, <1>t9gucBsHDv, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. /\ 1 \in 0..PS /\ 1 \in -1..PS
  BY Sizes, SMT, Location, Design DEF Sizes, Location, Design
<2>5. UYpr1'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, UYpr1, rtV, recV, xV, ghV, Sizes, Location, Design
<2>6. ZB9m'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, ZB9m, rtV, recV, xV, ghV, Sizes, Location, Design
<2>7. XjUj'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, XjUj, rtV, recV, xV, ghV, Sizes, Location, Design
<2>8. RwpJ'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, RwpJ, rtV, recV, xV, ghV, Sizes, Location, Design
<2>9. J8zi'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, J8zi, rtV, recV, xV, ghV, Sizes, Location, Design
<2>10. wHUB'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, wHUB, rtV, recV, xV, ghV, Sizes, Location, Design
<2>11. IOOT2o9'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, IOOT2o9, rtV, recV, xV, ghV, Sizes, Location, Design
<2>12. WCW_RIE'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, WCW_RIE, rtV, recV, xV, ghV, Sizes, Location, Design
<2>13. qXm9o1'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, qXm9o1, rtV, recV, xV, ghV, Sizes, Location, Design
<2>14. lx9I2z'
  BY <2>1, <2>2, <2>3, <2>4, <1>dWnul9PL, SMT, Sizes, Location, Design DEF BD3C0, lx9I2z, rtV, recV, xV, ghV, Sizes, Location, Design
<2>15. Wjy2fg'
  BY <2>1, <2>2, <2>3, <2>4, <1>dWnul9PL, SMT, Sizes, Location, Design DEF BD3C0, Wjy2fg, rtV, recV, xV, ghV, Sizes, Location, Design
<2>16. DJuMb'
  BY <2>1, <2>2, <2>3, <2>4, <1>dWnul9PL, SMT, Sizes, Location, Design DEF BD3C0, DJuMb, rtV, recV, xV, ghV, Sizes, Location, Design
<2>17. r9d6'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, r9d6, rtV, recV, xV, ghV, Sizes, Location, Design
<2>18. V6LQ'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, V6LQ, rtV, recV, xV, ghV, Sizes, Location, Design
<2>19. sufyJ'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, sufyJ, rtV, recV, xV, ghV, Sizes, Location, Design
<2>20. hGnPA'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, hGnPA, rtV, recV, xV, ghV, Sizes, Location, Design
<2>21. UuEG'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, UuEG, rtV, recV, xV, ghV, Sizes, Location, Design
<2>22. JHlYLg'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, JHlYLg, rtV, recV, xV, ghV, Sizes, Location, Design
<2>23. GNsKg'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, GNsKg, rtV, recV, xV, ghV, Sizes, Location, Design
<2>24. d3cH'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, d3cH, rtV, recV, xV, ghV, Sizes, Location, Design
<2>25. E5Zo2'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, E5Zo2, rtV, recV, xV, ghV, Sizes, Location, Design
<2>26. ehoz3'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, ehoz3, rtV, recV, xV, ghV, Sizes, Location, Design
<2>27. ZMkh8'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, ZMkh8, rtV, recV, xV, ghV, Sizes, Location, Design
<2>28. b8LBGz'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, b8LBGz, rtV, recV, xV, ghV, Sizes, Location, Design
<2>29. hzt6H'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, hzt6H, rtV, recV, xV, ghV, Sizes, Location, Design
<2>30. LMfyK0'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, LMfyK0, rtV, recV, xV, ghV, Sizes, Location, Design
<2>31. BIdZ6_'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, BIdZ6_, rtV, recV, xV, ghV, Sizes, Location, Design
<2>32. MSlzCY1'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, MSlzCY1, rtV, recV, xV, ghV, Sizes, Location, Design
<2>33. tdSC4'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, tdSC4, rtV, recV, xV, ghV, Sizes, Location, Design
<2>34. PqGK'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, PqGK, rtV, recV, xV, ghV, Sizes, Location, Design
<2>35. wl8W'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, wl8W, rtV, recV, xV, ghV, Sizes, Location, Design
<2>36. cy_Q'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, cy_Q, rtV, recV, xV, ghV, Sizes, Location, Design
<2>37. L4qc'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, L4qc, rtV, recV, xV, ghV, Sizes, Location, Design
<2>38. bf5O'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, bf5O, rtV, recV, xV, ghV, Sizes, Location, Design
<2>39. O4U_5z'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, O4U_5z, rtV, recV, xV, ghV, Sizes, Location, Design
<2>40. Iwh80D'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, Iwh80D, rtV, recV, xV, ghV, Sizes, Location, Design
<2>41. lpGba'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, lpGba, rtV, recV, xV, ghV, Sizes, Location, Design
<2>42. xyhb'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, xyhb, rtV, recV, xV, ghV, Sizes, Location, Design
<2>43. OyPI5'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, OyPI5, rtV, recV, xV, ghV, Sizes, Location, Design
<2>44. U60c'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, U60c, rtV, recV, xV, ghV, Sizes, Location, Design
<2>45. xLHsX'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, xLHsX, rtV, recV, xV, ghV, Sizes, Location, Design
<2>46. Pl5Rz'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, Pl5Rz, rtV, recV, xV, ghV, Sizes, Location, Design
<2>47. flJU'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, flJU, rtV, recV, xV, ghV, Sizes, Location, Design
<2>48. lHQee'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, lHQee, rtV, recV, xV, ghV, Sizes, Location, Design
<2>49. oKZaCF'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, oKZaCF, rtV, recV, xV, ghV, Sizes, Location, Design
<2>50. M1G19k'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, M1G19k, rtV, recV, xV, ghV, Sizes, Location, Design
<2>51. NO7ciLG'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, NO7ciLG, rtV, recV, xV, ghV, Sizes, Location, Design
<2>52. c1LgxC'
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BD3C0, c1LgxC, rtV, recV, xV, ghV, Sizes, Location, Design
<2>99. QED
  BY <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, <2>12, <2>13, <2>14, <2>15, <2>16, <2>17, <2>18, <2>19, <2>20, <2>21, <2>22, <2>23, <2>24, <2>25, <2>26, <2>27, <2>28, <2>29, <2>30, <2>31, <2>32, <2>33, <2>34, <2>35, <2>36, <2>37, <2>38, <2>39, <2>40, <2>41, <2>42, <2>43, <2>44, <2>45, <2>46, <2>47, <2>48, <2>49, <2>50, <2>51, <2>52, <1>WZ5P7daa0hqI, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
\* T2M-END R2M2482_PdROK_PdLaunchProofs


<1>g4ukMt7rga0IPw.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE STypeOK'
 BY ONLY <1>g4ukMt7rga0IPw, AuxType_9ef278c147c12b12, Sizes, Location, Design DEF Sizes, Location, Design

<1>bBzlP1vvJ3iq7B.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW rows \in SUBSET Rq, PinInv, KLaunch(i,s,rows), SFollow
 PROVE TypInv'
<2> USE ONLY <1>bBzlP1vvJ3iq7B, Sizes, Location, Design
<2>1. CoreTypeOK' BY <1>YzIsSPKLJst, <1>WAxd2hhfMM, <1>joh6z3bMX, V21_Inv_BaseTypeOK, V21_Inv_K16, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF BD3C0, Sizes, Location, Design
<2>2. STypeOK' BY <1>txMumeAB1OTELxaVzWV, <1>g4ukMt7rga0IPw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF TypInv, Sizes, Location, Design
\* T2M-END R2M2531_PdROKernel_KLaunch_TypeOK


<1> QED BY <1>bBzlP1vvJ3iq7B, <1>YQpDT6cTmwrlTozbciMJGxc, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF AuxType_9ef278c147c12b12, P_PagePoolsDisjoint, Part_KLaunch_01_01, PositiveNatFact, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_T_kpin, V22_T_krs, V22_T_rpgS, V22_T_schoice, V22_T_smap, V22_T_xdst, V22_T_xsrcP, V22_T_xsrcS
====
