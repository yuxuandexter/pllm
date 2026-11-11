---- MODULE PdFinalAction_Cqe ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_9ef278c147c12b12, PdFinalAuxType_8bb3fe86f1f5f291, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_Cqe_01

\* Complete original body PdFinalPart_Cqe_02_02 SHA 553f290dce671d216370a69597e458503808da5c4a41616de81f53592ea5b151
HIDE DEF AuxType_8bb3fe86f1f5f291, AuxType_9ef278c147c12b12, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_Cqe_01_01, Part_Cqe_01_02, Part_Cqe_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K17, V21_Inv_K8, V21_Inv_K9, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_ph, V22_T_pqp, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_Cqe_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE (KReadIntegrity)' /\ (NoFreeUnderRead)' /\ (HitIdentity)' /\ (P_SI6)' /\ (K15)' /\ (SendOwnLanded)' /\ (K2)' /\ (K4)' /\ (K5)' /\ (K6)'
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

           CqeFreeD2(x) == LET p == InitPage(x) IN
             pst[p] = "drain" /\ led[p] \ {x} = {} /\ sled[p] = {} /\ ~KPinned(p)


           CqeUpdateD2(x) == LET p == InitPage(x) IN
             /\ pst' = [pst EXCEPT ![p] = IF CqeFreeD2(x) THEN "free" ELSE @]
             /\ pr' = [pr EXCEPT ![p] = IF CqeFreeD2(x) THEN 0 ELSE @]
             /\ pgn' = [pgn EXCEPT ![p] = IF CqeFreeD2(x) THEN 0 ELSE @]
             /\ plt' = [plt EXCEPT ![p] = IF CqeFreeD2(x) THEN 0 ELSE @]
             /\ led' = [led EXCEPT ![p] = @ \ {x}]
             /\ iv' = [iv EXCEPT ![x] = "cqe"]

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


           RO_E_smap == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           RO_E_schoice == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           RO_E_spst == spst'=[p \in SPages |-> IF \E x \in Xids : RO_Quarantine(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF RO_Drop(p) THEN "free" ELSE IF RO_Ended(p) THEN "drain" ELSE spst[p]]


           RO_StableStates == \A p \in SPages : spst[p] \notin {"drain","dup"} => spst'[p]=spst[p]

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

<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, CqeFreeD2, CqeUpdateD2, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_smap, RO_E_schoice, RO_E_spst, RO_StableStates, RO_SharedFieldsFrame, Ltilk, ckVW, bXD3, XAoD, ZzYU, v7av, Zwf5Kak, UTxM0oD, Btadh0, hgjUtY, DgHrMJ, UDzxF, NN85, FlLc, mCp6f, EfDhA, TO_H, OFH6nV, nU_pl, KRyh, SWs37, Q73Wr, cDvpy, aHUmFg, m0XQV, YAnOjz, owHnyB, Gpa5dVU, f9onk, fwbJ, mnFW, nOWk, Ha9G, f5DU, KZInRS, hq2umu, ROI9_, M7cq, u1j8N, ECDy, q4kPy, doDAh, YN04, kvUux, WsZW22, d654kx, jl8hSJt, XEsGoy, qryMJ, no7yhkNAm, kgNnxyXUVr3

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tzv2xO.        
  ASSUME NEW x \in Xids, Cqe(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>Tzv2xO, Sizes, Location, Design, ZenonT(5) DEF Cqe, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M0019_PP_PdCqeFrames

\* T2M-SCOPE R2M0020_PP_PdCell_Cqe_K10
\* T2M-BODY R2M0020_PP_PdCell_Cqe_K10
\* T2M-LOCAL-VISIBILITY

<1>NhYNztiJuG4YZnw3.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hIc7A2XTHSqetfrLIb.        
  ASSUME NEW x \in Xids, T_nx, K2, x < nx
  PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>hIc7A2XTHSqetfrLIb, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, T_nx, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ABWOhPPrdJelZ4.        
  ASSUME NEW x \in Xids, T_nx, K2, InFl(x)
  PROVE x < nx
  BY ONLY <1>ABWOhPPrdJelZ4, Sizes, Location, Design, SMT DEF T_nx, Xids, K2, InFl, Sizes, Location, Design


<1>FKA3I6SAeRtA49GD.        
  ASSUME NEW x \in Xids, T_nx, K1, K2, K3, InFl(x)
  PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>FKA3I6SAeRtA49GD, Sizes, Location, Design
<2>1. x < nx
  BY <1>ABWOhPPrdJelZ4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMT, Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M0028_PP_PdDataLemmas


<1>L6Tf5v8Y2nuUEHEzBedz.        
  ASSUME NEW x \in Xids, PinInv, InFl(x)
  PROVE xdst[x] \in Pages /\ x \in led[xdst[x]]
<2> USE ONLY <1>L6Tf5v8Y2nuUEHEzBedz, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. x < nx /\ xdst[x] \in Pages
  BY <2>1, <1>ABWOhPPrdJelZ4, <1>FKA3I6SAeRtA49GD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K2, K3, K4, InFl, ExpPage, InitPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AeaSGW0hUpbmRBrh7dLQ.        
  ASSUME NEW x \in Xids, PinInv, hw[x] = "fly"
  PROVE xsrc[x] \in Pages /\ Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>AeaSGW0hUpbmRBrh7dLQ, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, <1>ABWOhPPrdJelZ4, SMTT(10), Sizes, Location, Design DEF InFl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M0029_PP_D2Finite_PdDDataA


<1>pZd3LrS.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE /\ iv[x] = "posted" /\ x < nx
        /\ InitPage(x) \in Pages /\ ExpPage(x) \in Pages
        /\ InitPage(x) # ExpPage(x) /\ x \in led[InitPage(x)]
<2> USE ONLY <1>pZd3LrS, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ T_nx /\ iv[x] = "posted"
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Cqe, Sizes, Location, Design
<2>2. x < nx /\ InitPage(x) # 0
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, T_nx, Xids, Sizes, Location, Design
<2>3. InitPage(x) \in Pages /\ ExpPage(x) \in Pages
       /\ Loc(InitPage(x)) = InitInst(x) /\ Loc(ExpPage(x)) = ExpInst(x)
  BY <2>1, <2>2, <1>hIc7A2XTHSqetfrLIb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, K2, T_nx, Xids, Sizes, Location, Design
<2>5. x \in led[InitPage(x)]
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K4, Sizes, Location, Design
<2>6. QED BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF InitInst, ExpInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KFWGKWzX.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE /\ CqeUpdateD2(x)
        /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,ph,rg,rpg,rpe,rx,rhit,
                       ptl,pvis,pqp,prefc,sfly,sled,xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,xst,xlt,nx,drep,crep,dsucc,gbad>>
<2> USE ONLY <1>KFWGKWzX, Sizes, Location, Design
<2>1. K7 /\ T_pst /\ T_led /\ T_sled /\ T_prefc /\ T_pqp /\ T_pr /\ T_pgn /\ T_plt
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. InitPage(x) \in Pages /\ x \in led[InitPage(x)]
  BY <1>pZd3LrS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. pst[InitPage(x)] # "free"
       /\ (pst[InitPage(x)] # "shared" => prefc[InitPage(x)] = 0)
       /\ (pst[InitPage(x)] # "quar" => pqp[InitPage(x)] = 0)
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K7, Sizes, Location, Design
<2>4. /\ EvidenceAt(InitPage(x),x)
       /\ iv' = [iv EXCEPT ![x] = "cqe"]
       /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,ph,rg,rpg,rpe,rx,rhit,
                       ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,xst,xlt,nx,drep,crep,dsucc,gbad>>
  BY <1>Tzv2xO, SMTT(10), Sizes, Location, Design DEF Cqe, InitPage, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, Design, SMTT(10), Sizes, Location DEF EvidenceAt, PageTo, AfterEv, PinBlocks, CqeFreeD2, CqeUpdateD2, T_pst, T_led, T_sled, T_prefc, T_pqp, T_pr, T_pgn, T_plt, Sizes, Location, Design
\* T2M-END R2M0030_PP_PdD2CqeEffect


<1>uOT.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE K2'
<2> USE ONLY <1>uOT, Sizes, Location, Design
<2>1. K2 /\ T_iv
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. CqeUpdateD2(x) /\ UNCHANGED <<gen, hd, hok, hp, hw, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>KFWGKWzX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>pZd3LrS, <1>L6Tf5v8Y2nuUEHEzBedz, <1>AeaSGW0hUpbmRBrh7dLQ, Design, Location, Sizes, SMTT(10) DEF InitPage, DInst, ExpInst, ExpPage, InitInst, InitPage, Inst, IsD, IsP, K2, KPinned, NL, CqeFreeD2, CqeUpdateD2, T_iv, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0035_PP_PdD2Cqe_K2

\* T2M-SCOPE R2M0036_PP_PdD2Cqe_K4

<1>qqM.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE K4'
<2> USE ONLY <1>qqM, Sizes, Location, Design
<2>1. K4 /\ K1 /\ K2 /\ T_nx /\ T_led /\ T_iv
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K2, V21_Inv_K4, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. CqeUpdateD2(x) /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hok, hp, hw, nx, rd, rp, rt, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>KFWGKWzX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>pZd3LrS, <1>pZd3LrS, <1>L6Tf5v8Y2nuUEHEzBedz, <1>AeaSGW0hUpbmRBrh7dLQ, Design, Location, Sizes, SMTT(10) DEF T_nx, Xids, DInst, ExpInst, ExpPage, InitInst, InitPage, Inst, IsD, IsP, K1, K2, K4, KPinned, NL, CqeFreeD2, CqeUpdateD2, T_led, T_iv, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0036_PP_PdD2Cqe_K4

\* T2M-SCOPE R2M0037_PP_PdD2Cqe_K5

<1>AIn.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE K5'
<2> USE ONLY <1>AIn, Sizes, Location, Design
<2>1. K5 /\ T_led /\ T_pgn /\ T_pr /\ T_pst
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. CqeUpdateD2(x) /\ UNCHANGED <<xg, xr>>
  BY <1>KFWGKWzX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>pZd3LrS, <1>L6Tf5v8Y2nuUEHEzBedz, <1>AeaSGW0hUpbmRBrh7dLQ, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K5, KPinned, NL, CqeFreeD2, CqeUpdateD2, OwnedBy, T_led, T_pgn, T_pr, T_pst, Tag, InitPage, KPages, Sizes, Location, Design
\* T2M-END R2M0037_PP_PdD2Cqe_K5

\* T2M-SCOPE R2M0038_PP_PdD2Cqe_K6

<1>N8C.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE K6'
<2> USE ONLY <1>N8C, Sizes, Location, Design
<2>1. K6 /\ T_pgn /\ T_pr /\ T_pst
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. CqeUpdateD2(x) /\ UNCHANGED <<gen, sfly, sled>>
  BY <1>KFWGKWzX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>pZd3LrS, <1>L6Tf5v8Y2nuUEHEzBedz, <1>AeaSGW0hUpbmRBrh7dLQ, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K6, KPinned, NL, CqeFreeD2, CqeUpdateD2, OwnedBy, T_pgn, T_pr, T_pst, Tag, InitPage, KPages, Sizes, Location, Design
\* T2M-END R2M0038_PP_PdD2Cqe_K6

\* T2M-SCOPE R2M0039_PP_PdD2Cqe_K7

<1>ZxuET.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
  PROVE K2'
  BY ONLY <1>ZxuET, Sizes, Location, Design, <1>uOT, V21_Inv_K2 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>OQ53L.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
  PROVE K4'
  BY ONLY <1>OQ53L, Sizes, Location, Design, <1>qqM, V21_Inv_K4 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>lUnrl.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
  PROVE K5'
  BY ONLY <1>lUnrl, Sizes, Location, Design, <1>AIn, V21_Inv_K5 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>BqGnb.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
  PROVE K6'
  BY ONLY <1>BqGnb, Sizes, Location, Design, <1>N8C, V21_Inv_K6 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

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


<1>boxoLZrc.        
 ASSUME PinInv, UNCHANGED <<kpin,krs,ph,rg,schoice,smap,rpgS>>
 PROVE P_SI6'
 BY ONLY <1>boxoLZrc, Sizes, Location, Design, SMTT(10), V21_Inv_P_SI6 DEF P_SI6, SI6, Active, Sizes, Location, Design

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

<1>BWLpW3R1TEmJUE9.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE HitIdentity'
 BY ONLY <1>BWLpW3R1TEmJUE9, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>SMQ1UmAL5iaIl8dau, <1>WipnktIb3Tt2O9, <1>jGg3R, <1>BbgSGNWiNo6y DEF RO_StableStates, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rOIboEZ.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE P_SI6'
 BY ONLY <1>rOIboEZ, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>B8uFJWPVI9dI, <1>WipnktIb3Tt2O9, <1>SMQ1UmAL5iaIl8dau, <1>boxoLZrc DEF Sizes, Location, Design
\* T2M-END R2M2201_PdROShared_Cqe


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


<1>QKZoUZ5wiZngbvLM.        
  BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>> => BaseSendOwnLanded'
  BY SMTT(5), Sizes, Location, Design DEF BaseSendOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qAeogR.        
  ASSUME NEW x \in Xids, Cqe(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>qAeogR, Sizes, Location, Design, ZenonT(5) DEF Cqe, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mR6AT89GAnufSy.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>mR6AT89GAnufSy, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>>
  BY <1>d9xjhNZcw, SMTT(5), <1>qAeogR, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>QKZoUZ5wiZngbvLM, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2202_PdROBase_PdCqeFrames


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


<1>IcLNS0.        
 ASSUME RO_SharedFieldsFrame
 PROVE /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY ONLY <1>IcLNS0, Sizes, Location, Design, Sizes, SMTT(5) DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LEisEv.        
  ASSUME NEW x \in Xids, Cqe(x)
  , RO_SharedFieldsFrame
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>LEisEv, Sizes, Location, Design, ZenonT(5) DEF Cqe, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, RO_SharedFieldsFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>h3YL.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  , RO_SharedFieldsFrame
 PROVE K15'
<2> HIDE DEF Cqe, CoreTypeOK, STypeOK, RO_SharedFieldsFrame
<2>facts. K14 /\ K15 /\ NoFreeUnderRead
 BY ONLY <1>h3YL, V21_Inv_K14, V21_Inv_K15, V21_Inv_NoFreeUnderRead, Sizes, Location, Design, SMTT(5)
<2>types. krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0,1,2,3,4})]] /\
           pst \in [Pages -> {"free","priv","shared","drain","quar"}] /\
           plt \in [Pages -> 0..PS] /\ led \in [Pages -> SUBSET Xids] /\ sled \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>h3YL, V22_T_krs, V22_T_pst, V22_T_plt, V22_T_led, V22_T_sled, SMTT(5)
<2>frame. UNCHANGED <<hw,kpin,krs,ptl,pvis,sfly,xdst>>
 BY ONLY <1>h3YL, <1>LEisEv, Sizes, Location, Design, SMTT(5)
<2>sharedFrame. UNCHANGED <<sdata,swrite,skey>>
 BY ONLY <1>h3YL, SMTT(5) DEF RO_SharedFieldsFrame
<2>mut. Mut="none"
 BY ONLY Design, ZenonT(5) DEF Design
<2> DEFINE cqPage == IF xk[x]="wr" THEN xsrc[x] ELSE xdst[x]
<2> HIDE DEF cqPage
<2>effect. EvidenceAt(cqPage,x)
 BY ONLY <1>h3YL, ZenonT(5) DEF Cqe, cqPage
<2>pageEffect. PageTo(cqPage,AfterEv(cqPage,led[cqPage]\{x},sled[cqPage]),pqp[cqPage],led[cqPage]\{x},sled[cqPage])
 BY ONLY <2>effect, SMTT(5) DEF EvidenceAt
<2>pools. Pages \cap SPages={}
 BY ONLY P_PagePoolsDisjoint, Sizes, Location, Design, SMTT(5) DEF P_PagePoolsDisjoint
<2>each. ASSUME NEW i \in Inst, NEW k \in KSlots, kpin'[i][k], NEW e \in krs'[i][k]
         PROVE KData(i,e)' /\ ((IsD(i) /\ e[4]#1) => led'[e[3]]={}) /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 <3>old. kpin[i][k] /\ e \in krs[i][k]
  BY ONLY <2>each, <2>frame, SMTT(5)
 <3>entry. Loc(e[3])=i /\ e[3] \in Pages \cup SPages
  BY ONLY <2>facts, <2>types, <2>each, <3>old, SMTT(5) DEF K14, KPages
 <3>data. KData(i,e) /\ ((IsD(i) /\ e[4]#1) => led[e[3]]={}) /\ ((IsP(i) /\ e[3] \in Pages) => sled[e[3]]={})
  BY ONLY <2>facts, <2>each, <3>old, SMTT(5) DEF K15
 <3>noWrite. NoWriteInto(e[3])'
  BY ONLY <3>data, <2>frame, SMTT(5) DEF KData, NoWriteInto, Writing, InFl
 <3>shared. CASE e[3] \in SPages
  <4>side. IsP(i) /\ e[3] \notin Pages
   BY ONLY <2>facts, <2>each, <2>pools, <3>old, <3>shared, SMTT(5) DEF K14
  <4>notD. ~IsD(i)
   BY ONLY <2>each, <4>side, Sizes, SMTT(5) DEF IsP, IsD, Inst, NL, Sizes
  <4>qed. QED
   BY ONLY <3>shared, <3>data, <3>noWrite, <2>sharedFrame, <4>side, <4>notD, SMTT(5) DEF KData, SData
 <3>base. CASE e[3] \notin SPages
  <4>domain. e[3] \in Pages
   BY ONLY <3>entry, <3>base, SMTT(5)
  <4>held. pst[e[3]] \in {"priv","drain","quar","shared"}
   BY ONLY <2>facts, <2>each, <3>old, <3>base, SMTT(5) DEF NoFreeUnderRead, KHeld
  <4>pin. PinBlocks(e[3])
   BY ONLY <2>each, <2>mut, <3>old, <3>entry, SMTT(5) DEF KPinned, PinBlocks
  <4>same. CASE e[3]=cqPage
   <5>state. AfterEv(cqPage,led[cqPage]\{x},sled[cqPage]) # "free"
    BY ONLY <4>same, <4>pin, <4>held, SMTT(5) DEF AfterEv
   <5>update. plt'[e[3]]=plt[e[3]] /\ led'[e[3]]=led[e[3]]\{x} /\ sled'[e[3]]=sled[e[3]]
    BY ONLY <2>pageEffect, <2>types, <4>same, <4>domain, <5>state, SMTT(5) DEF PageTo
   <5>qed. QED
    BY ONLY <3>base, <3>data, <3>noWrite, <2>frame, <5>update, SMTT(5) DEF KData
  <4>other. CASE e[3]#cqPage
   <5>update. UNCHANGED <<plt[e[3]],led[e[3]],sled[e[3]]>>
    BY ONLY <2>pageEffect, <2>types, <4>other, <4>domain, SMTT(5) DEF PageTo
   <5>qed. QED
    BY ONLY <3>base, <3>data, <3>noWrite, <2>frame, <5>update, SMTT(5) DEF KData
  <4>qed. QED BY ONLY <4>same, <4>other, SMTT(5)
 <3>qed. QED BY ONLY <3>shared, <3>base, SMTT(5)
<2>qed. QED BY ONLY <2>each, SMTT(5) DEF K15
\* T2M-END R2M2544_PdRORead_PdCell_Cqe_K15


<1>gScdbn4.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE K15'
<2> USE ONLY <1>gScdbn4, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>WipnktIb3Tt2O9, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. K15'
 BY <2>1, <1>h3YL, <1>w1A6qbKTB1, V21_Inv_K15, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2545_PdROReadCell_Cqe_K15


<1>F4CqeHeld.
 ASSUME NEW x \in Xids, PinInv, Cqe(x), RO_SharedFieldsFrame
 PROVE NoFreeUnderRead'
<2> HIDE DEF Cqe, CoreTypeOK, STypeOK, RO_SharedFieldsFrame
<2>facts. K14 /\ NoFreeUnderRead
 BY ONLY <1>F4CqeHeld, V21_Inv_K14, V21_Inv_NoFreeUnderRead, Sizes, Location, Design, SMTT(5)
<2>types. krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0,1,2,3,4})]] /\
           pst \in [Pages -> {"free","priv","shared","drain","quar"}] /\
           pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 BY ONLY <1>F4CqeHeld, V22_T_krs, V22_T_pst, V22_T_pr, V22_T_pgn, SMTT(5)
<2>frame. UNCHANGED <<kpin,krs>>
 BY ONLY <1>F4CqeHeld, <1>LEisEv, Sizes, Location, Design, SMTT(5)
<2>sharedFrame. UNCHANGED <<spst,sown,sgen>>
 BY ONLY <1>F4CqeHeld, SMTT(5) DEF RO_SharedFieldsFrame
<2>mut. Mut="none"
 BY ONLY Design, ZenonT(5) DEF Design
<2> DEFINE cqPage == IF xk[x]="wr" THEN xsrc[x] ELSE xdst[x]
<2> HIDE DEF cqPage
<2>effect. EvidenceAt(cqPage,x)
 BY ONLY <1>F4CqeHeld, ZenonT(5) DEF Cqe, cqPage
<2>pageEffect. PageTo(cqPage,AfterEv(cqPage,led[cqPage]\{x},sled[cqPage]),pqp[cqPage],led[cqPage]\{x},sled[cqPage])
 BY ONLY <2>effect, SMTT(5) DEF EvidenceAt
<2>each. ASSUME NEW i \in Inst, NEW k \in KSlots, kpin'[i][k], NEW e \in krs'[i][k]
         PROVE KHeld(e)'
 <3>old. kpin[i][k] /\ e \in krs[i][k]
  BY ONLY <2>each, <2>frame, SMTT(5)
 <3>entry. Loc(e[3])=i /\ e[3] \in Pages \cup SPages
  BY ONLY <2>facts, <2>types, <2>each, <3>old, SMTT(5) DEF K14, KPages
 <3>held. KHeld(e)
  BY ONLY <2>facts, <2>each, <3>old, SMTT(5) DEF NoFreeUnderRead
 <3>shared. CASE e[3] \in SPages
  BY ONLY <3>shared, <3>held, <2>sharedFrame, SMTT(5) DEF KHeld, SHeld
 <3>base. CASE e[3] \notin SPages
  <4>domain. e[3] \in Pages
   BY ONLY <3>entry, <3>base, SMTT(5)
  <4>state. pst[e[3]] # "free"
   BY ONLY <3>held, <3>base, SMTT(5) DEF KHeld
  <4>pin. PinBlocks(e[3])
   BY ONLY <2>each, <2>mut, <3>old, <3>entry, SMTT(5) DEF KPinned, PinBlocks
  <4>same. CASE e[3]=cqPage
   <5>after. AfterEv(cqPage,led[cqPage]\{x},sled[cqPage])=pst[cqPage]
    BY ONLY <4>same, <4>pin, SMTT(5) DEF AfterEv
   <5>update. UNCHANGED <<pst[e[3]],pr[e[3]],pgn[e[3]]>>
    BY ONLY <2>pageEffect, <2>types, <4>same, <4>domain, <4>state, <5>after, SMTT(5) DEF PageTo
   <5>qed. QED BY ONLY <3>held, <3>base, <5>update, SMTT(5) DEF KHeld
  <4>other. CASE e[3]#cqPage
   <5>update. UNCHANGED <<pst[e[3]],pr[e[3]],pgn[e[3]]>>
    BY ONLY <2>pageEffect, <2>types, <4>other, <4>domain, SMTT(5) DEF PageTo
   <5>qed. QED BY ONLY <3>held, <3>base, <5>update, SMTT(5) DEF KHeld
  <4>qed. QED BY ONLY <4>same, <4>other, SMTT(5)
 <3>qed. QED BY ONLY <3>shared, <3>base, SMTT(5)
<2>qed. QED BY ONLY <2>each, SMTT(5) DEF NoFreeUnderRead

<1>Z3gwCmRuO1mPpSV.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  , RO_SharedFieldsFrame
 PROVE BaseKReadIntegrity'
<2> HIDE DEF Cqe, CoreTypeOK, STypeOK, RO_SharedFieldsFrame
<2>old. K14
 BY ONLY <1>Z3gwCmRuO1mPpSV, V21_Inv_K14, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED <<kpin,kfly,krs>>
 BY ONLY <1>Z3gwCmRuO1mPpSV, <1>LEisEv, Sizes, Location, Design, SMTT(5)
<2>held. NoFreeUnderRead'
 BY ONLY <1>Z3gwCmRuO1mPpSV, <1>F4CqeHeld, SMTT(5)
<2>data. K15'
 BY ONLY <1>Z3gwCmRuO1mPpSV, <1>h3YL, Sizes, Location, Design, SMTT(5)
<2>each. ASSUME NEW i \in Inst, NEW k \in KSlots, kfly'[i][k], NEW e \in krs'[i][k]
         PROVE Loc(e[3])=i /\ KHeld(e)' /\ KData(i,e)'
 <3>pinned. kpin'[i][k] /\ Loc(e[3])=i
  BY ONLY <2>each, <2>old, <2>frame, SMTT(5) DEF K14
 <3>qed. QED
  BY ONLY <2>each, <3>pinned, <2>held, <2>data, SMTT(5) DEF NoFreeUnderRead, K15
<2>qed. QED BY ONLY <2>each, SMTT(5) DEF BaseKReadIntegrity
\* T2M-END R2M2546_PdRORead_PdCell_Cqe_KReadIntegrity


<1>N7LvbOa6VLlV6fma1b.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE KReadIntegrity'
<2> USE ONLY <1>N7LvbOa6VLlV6fma1b, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>WipnktIb3Tt2O9, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. BaseKReadIntegrity'
 BY <2>1, <1>Z3gwCmRuO1mPpSV, <1>w1A6qbKTB1, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. SMapIntegrity' BY <1>FNYHAwoI35diExU, <1>SMQ1UmAL5iaIl8dau, <1>WipnktIb3Tt2O9, <1>Fjqj9qY9B4kZ, Sizes, Location, Design DEF RO_StableStates, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2547_PdROReadCell_Cqe_KReadIntegrity


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
 BY ONLY <1>xijTxgohVII7HxRX, <1>F4CqeHeld, SMTT(5)
\* T2M-END R2M2555_PdRORead_PdD2Cqe_NoFreeUnderRead


<1>XaNsPUgUNOyVHj8ywbi.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>XaNsPUgUNOyVHj8ywbi, Sizes, Location, Design
<2>1. RO_SharedFieldsFrame
 BY <1>WipnktIb3Tt2O9, <1>jGg3R, Sizes, Location, Design DEF RO_SharedFieldsFrame, Sizes, Location, Design
<2>2. NoFreeUnderRead'
 BY <2>1, <1>xijTxgohVII7HxRX, <1>w1A6qbKTB1, V21_Inv_NoFreeUnderRead, V21_Inv_TypeOK, Sizes, Location, Design DEF qryMJ, Sizes, Location, Design
<2>3. QED BY <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2556_PdROReadCell_Cqe_NoFreeUnderRead


<1>bT3ZvV54GFtlZFzIY.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE SendOwnLanded'
<2> USE ONLY <1>bT3ZvV54GFtlZFzIY, Sizes, Location, Design
<2>1. BaseSendOwnLanded' BY <1>mR6AT89GAnufSy, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IF ~B2 THEN TRUE ELSE \A x \in Xids : hw'[x]="fly" => \A p \in xsrcS'[x] \cup xsrcP'[x] : sdata'[p] /\ ~swrite'[p] /\ skey'[p]=STok(xr'[x],xg'[x])
 BY <1>FNYHAwoI35diExU, <1>SMQ1UmAL5iaIl8dau, <1>eqPru0DKBMBu4, <1>K49culthi, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF SendOwnLanded, Sizes, Location, Design
\* T2M-END R2M2655_PdROSafety_Cqe_SendOwnLanded


<1> QED BY <1>N7LvbOa6VLlV6fma1b, <1>XaNsPUgUNOyVHj8ywbi, <1>BWLpW3R1TEmJUE9, <1>rOIboEZ, <1>gScdbn4, <1>bT3ZvV54GFtlZFzIY, <1>ZxuET, <1>OQ53L, <1>lUnrl, <1>BqGnb, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_Cqe_03_01 SHA e11b00f17e3fcd4363245316c3073dd66446dadff2fc81fd27db1d3498fd570a
USE DEF V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K13, V21_Inv_K17, V21_Inv_K8, V21_Inv_K9, V21_Inv_PrivateMapOwner, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S5, V22_T_iv, V22_T_rpgS, V22_T_sentry, V22_T_spst, V22_T_squar
HIDE DEF P_PagePoolsDisjoint, Part_Cqe_02_02, V21_Inv_K14, V21_Inv_K15, V21_Inv_K5, V21_Inv_KStruct, V21_Inv_NoFreeUnderRead, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V22_T_hw, V22_T_krs, V22_T_led, V22_T_pgn, V22_T_plt, V22_T_pr, V22_T_pst, V22_T_sled
THEOREM Part_Cqe_03_01 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE (K7)' /\ (K8)' /\ (K9)' /\ (EntryQuarantineDisjoint)' /\ (PrivateMapOwner)' /\ (K3)' /\ (S5)' /\ (K13)' /\ (K17)' /\ (S1)' /\ (S2)' /\ (S3)' /\ (GenFiltered)'
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


           Lysb3rxXC == spst'=[p \in SPages |-> IF \E x \in Xids : zp_PIk4svxWLB(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF gaiU_p1(p) THEN "free" ELSE IF jpr2xpt8(p) THEN "drain" ELSE spst[p]]


           T_gen == gen \in [Rq -> 0..MG]


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

           CqeFreeD2(x) == LET p == InitPage(x) IN
             pst[p] = "drain" /\ led[p] \ {x} = {} /\ sled[p] = {} /\ ~KPinned(p)


           CqeUpdateD2(x) == LET p == InitPage(x) IN
             /\ pst' = [pst EXCEPT ![p] = IF CqeFreeD2(x) THEN "free" ELSE @]
             /\ pr' = [pr EXCEPT ![p] = IF CqeFreeD2(x) THEN 0 ELSE @]
             /\ pgn' = [pgn EXCEPT ![p] = IF CqeFreeD2(x) THEN 0 ELSE @]
             /\ plt' = [plt EXCEPT ![p] = IF CqeFreeD2(x) THEN 0 ELSE @]
             /\ led' = [led EXCEPT ![p] = @ \ {x}]
             /\ iv' = [iv EXCEPT ![x] = "cqe"]

           \* T2M-LOCAL-VISIBILITY

           D2Finite_K7AtA(p) ==
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


           D2Finite_CleanupFreeA(p,L,S) == pst[p] = "drain" /\ L = {} /\ S = {} /\ ~KPinned(p)


           D2Finite_CleanupEffectA(p,L,S) ==
             /\ L \subseteq led[p] /\ S \subseteq sled[p] /\ sfly[p] \subseteq S
             /\ led' = [led EXCEPT ![p] = L]
             /\ sled' = [sled EXCEPT ![p] = S]
             /\ pst' = [pst EXCEPT ![p] = IF D2Finite_CleanupFreeA(p,L,S) THEN "free" ELSE @]
             /\ pr' = [pr EXCEPT ![p] = IF D2Finite_CleanupFreeA(p,L,S) THEN 0 ELSE @]
             /\ pgn' = [pgn EXCEPT ![p] = IF D2Finite_CleanupFreeA(p,L,S) THEN 0 ELSE @]
             /\ plt' = [plt EXCEPT ![p] = IF D2Finite_CleanupFreeA(p,L,S) THEN 0 ELSE @]
             /\ UNCHANGED <<ptl,sfly,prefc,pqp,gen,ph,rg,rhit,rpg,kpin,krs>>

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Zxt3uAWx0s, x3u8USZ8BP, XiXzxLeogqQ, cube8JL9My, gsRtJP8qi, PfTvb9KsRvdD, Lysb3rxXC, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, CqeFreeD2, CqeUpdateD2, D2Finite_K7AtA, D2Finite_CleanupFreeA, D2Finite_CleanupEffectA

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


<1>vWo5OSv.        
 ASSUME PinInv, B2
 PROVE /\ spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
       /\ rpgS \subseteq PInst \X Rq \X Gens \X SPages
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
       /\ sentry \subseteq Xids /\ squar \subseteq Xids \X SPages
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY <1>vWo5OSv, V22_T_rpgS, V22_T_sentry, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

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


<1>ZSaT7GhpHrNzMUl5NS40.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE PrivateMapOwner'
<2> USE ONLY <1>ZSaT7GhpHrNzMUl5NS40, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF Cqe, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>Ehr2pMdg5uoVBObEEj2Ppij, Sizes, Location, Design DEF Sizes, Location, Design


<1>X7vIBgiDBHsv07nvtfqU8q27OX0x.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>X7vIBgiDBHsv07nvtfqU8q27OX0x, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF Cqe, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy, Sizes, Location, Design DEF Sizes, Location, Design


<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tzv2xO.        
  ASSUME NEW x \in Xids, Cqe(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>Tzv2xO, Sizes, Location, Design, ZenonT(5) DEF Cqe, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M0019_PP_PdCqeFrames

\* T2M-SCOPE R2M0020_PP_PdCell_Cqe_K10
\* T2M-BODY R2M0020_PP_PdCell_Cqe_K10
\* T2M-LOCAL-VISIBILITY

<1>NhYNztiJuG4YZnw3.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hIc7A2XTHSqetfrLIb.        
  ASSUME NEW x \in Xids, T_nx, K2, x < nx
  PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>hIc7A2XTHSqetfrLIb, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, T_nx, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ABWOhPPrdJelZ4.        
  ASSUME NEW x \in Xids, T_nx, K2, InFl(x)
  PROVE x < nx
  BY ONLY <1>ABWOhPPrdJelZ4, Sizes, Location, Design, SMT DEF T_nx, Xids, K2, InFl, Sizes, Location, Design


<1>FKA3I6SAeRtA49GD.        
  ASSUME NEW x \in Xids, T_nx, K1, K2, K3, InFl(x)
  PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>FKA3I6SAeRtA49GD, Sizes, Location, Design
<2>1. x < nx
  BY <1>ABWOhPPrdJelZ4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMT, Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M0028_PP_PdDataLemmas


<1>L6Tf5v8Y2nuUEHEzBedz.        
  ASSUME NEW x \in Xids, PinInv, InFl(x)
  PROVE xdst[x] \in Pages /\ x \in led[xdst[x]]
<2> USE ONLY <1>L6Tf5v8Y2nuUEHEzBedz, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. x < nx /\ xdst[x] \in Pages
  BY <2>1, <1>ABWOhPPrdJelZ4, <1>FKA3I6SAeRtA49GD, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K2, K3, K4, InFl, ExpPage, InitPage, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AeaSGW0hUpbmRBrh7dLQ.        
  ASSUME NEW x \in Xids, PinInv, hw[x] = "fly"
  PROVE xsrc[x] \in Pages /\ Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>AeaSGW0hUpbmRBrh7dLQ, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, <1>ABWOhPPrdJelZ4, SMTT(10), Sizes, Location, Design DEF InFl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M0029_PP_D2Finite_PdDDataA


<1>pZd3LrS.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE /\ iv[x] = "posted" /\ x < nx
        /\ InitPage(x) \in Pages /\ ExpPage(x) \in Pages
        /\ InitPage(x) # ExpPage(x) /\ x \in led[InitPage(x)]
<2> USE ONLY <1>pZd3LrS, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ T_nx /\ iv[x] = "posted"
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Cqe, Sizes, Location, Design
<2>2. x < nx /\ InitPage(x) # 0
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, T_nx, Xids, Sizes, Location, Design
<2>3. InitPage(x) \in Pages /\ ExpPage(x) \in Pages
       /\ Loc(InitPage(x)) = InitInst(x) /\ Loc(ExpPage(x)) = ExpInst(x)
  BY <2>1, <2>2, <1>hIc7A2XTHSqetfrLIb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, K2, T_nx, Xids, Sizes, Location, Design
<2>5. x \in led[InitPage(x)]
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K4, Sizes, Location, Design
<2>6. QED BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>NhYNztiJuG4YZnw3, SMTT(10), Sizes, Location, Design DEF InitInst, ExpInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KFWGKWzX.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE /\ CqeUpdateD2(x)
        /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,ph,rg,rpg,rpe,rx,rhit,
                       ptl,pvis,pqp,prefc,sfly,sled,xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,xst,xlt,nx,drep,crep,dsucc,gbad>>
<2> USE ONLY <1>KFWGKWzX, Sizes, Location, Design
<2>1. K7 /\ T_pst /\ T_led /\ T_sled /\ T_prefc /\ T_pqp /\ T_pr /\ T_pgn /\ T_plt
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. InitPage(x) \in Pages /\ x \in led[InitPage(x)]
  BY <1>pZd3LrS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. pst[InitPage(x)] # "free"
       /\ (pst[InitPage(x)] # "shared" => prefc[InitPage(x)] = 0)
       /\ (pst[InitPage(x)] # "quar" => pqp[InitPage(x)] = 0)
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K7, Sizes, Location, Design
<2>4. /\ EvidenceAt(InitPage(x),x)
       /\ iv' = [iv EXCEPT ![x] = "cqe"]
       /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,ph,rg,rpg,rpe,rx,rhit,
                       ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,xst,xlt,nx,drep,crep,dsucc,gbad>>
  BY <1>Tzv2xO, SMTT(10), Sizes, Location, Design DEF Cqe, InitPage, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, Design, SMTT(10), Sizes, Location DEF EvidenceAt, PageTo, AfterEv, PinBlocks, CqeFreeD2, CqeUpdateD2, T_pst, T_led, T_sled, T_prefc, T_pqp, T_pr, T_pgn, T_plt, Sizes, Location, Design
\* T2M-END R2M0030_PP_PdD2CqeEffect


<1>bTttSfPnMTdwuzkZ.         K7 <=> (\A p \in Pages : D2Finite_K7AtA(p))
  BY SMTT(10), Sizes, Location, Design DEF K7, D2Finite_K7AtA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eoLOOPmESHj6FtG1cL0.        
  ASSUME NEW p \in Pages, D2Finite_K7AtA(p), UNCHANGED <<ptl[p], pst[p], pr[p], pgn[p], plt[p], led[p], sled[p], sfly[p], prefc[p], pqp[p], gen, ph, rg, rhit, rpg, kpin, krs>>
  PROVE D2Finite_K7AtA(p)'
  BY ONLY <1>eoLOOPmESHj6FtG1cL0, Sizes, Location, Design, Zenon DEF D2Finite_K7AtA, Active, Maps, GrownP, KPinned, NHits, Sizes, Location, Design
\* T2M-END R2M0032_PP_D2Finite_PdK7FrameA

\* T2M-SCOPE R2M0033_PP_D2Finite_PdK7StructureA

<1>rPYfQ2R6V3whqJHCIg39owz.        
  ASSUME UNCHANGED <<pst,pr,rpg,ph,rhit,rg,kpin,krs>>
  PROVE \A p \in Pages :
          /\ UNCHANGED <<GrownP(p), NHits(p), KPinned(p)>>
          /\ \A r \in Rq : UNCHANGED Maps(Loc(p),r,p)
  BY ONLY <1>rPYfQ2R6V3whqJHCIg39owz, Sizes, Location, Design, Zenon DEF GrownP, NHits, KPinned, Maps, Active, Sizes, Location, Design
\* T2M-END R2M0033_PP_D2Finite_PdK7StructureA


<1>XOSsBLUR5bqdiu51q9oRiSVhL.        
  ASSUME NEW p \in Pages, NEW L, NEW S, PinInv, D2Finite_CleanupEffectA(p,L,S)
  PROVE K7'
<2> USE ONLY <1>XOSsBLUR5bqdiu51q9oRiSVhL, Sizes, Location, Design
<2>1. K7 /\ T_led /\ T_sled /\ T_pst /\ T_pr /\ T_pgn /\ T_plt
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. ASSUME NEW q \in Pages PROVE D2Finite_K7AtA(q)'
<3>1. D2Finite_K7AtA(q)
  BY <2>1, <1>bTttSfPnMTdwuzkZ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. CASE q # p
<4>1. UNCHANGED <<ptl[q],pst[q],pr[q],pgn[q],plt[q],led[q],sled[q],sfly[q],prefc[q],pqp[q],gen,ph,rg,rhit,rpg,kpin,krs>>
  BY <3>2, <2>1, SMTT(10), Sizes, Location, Design DEF D2Finite_CleanupEffectA, T_led, T_sled, T_pst, T_pr, T_pgn, T_plt, Sizes, Location, Design
<4>2. QED
  BY <3>1, <4>1, <1>eoLOOPmESHj6FtG1cL0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>3. CASE q = p /\ D2Finite_CleanupFreeA(p,L,S)
  BY <3>3, <3>1, <2>1, SMTT(10), Sizes, Location, Design DEF D2Finite_CleanupEffectA, D2Finite_CleanupFreeA, D2Finite_K7AtA, T_led, T_sled, T_pst, T_pr, T_pgn, T_plt, Sizes, Location, Design
<3>4. CASE q = p /\ ~D2Finite_CleanupFreeA(p,L,S)
<4>1. UNCHANGED <<pst,pr,pgn,plt,ptl,sfly,prefc,pqp,gen,ph,rg,rhit,rpg,kpin,krs>>
  BY <3>4, <2>1, SMTT(10), Sizes, Location, Design DEF D2Finite_CleanupEffectA, T_pst, T_pr, T_pgn, T_plt, Sizes, Location, Design
<4>2. UNCHANGED <<GrownP(p),NHits(p),KPinned(p)>>
       /\ \A r \in Rq : UNCHANGED Maps(Loc(p),r,p)
  BY <4>1, <1>rPYfQ2R6V3whqJHCIg39owz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<4>3. led'[p] = L /\ sled'[p] = S
  BY <2>1, SMTT(10), Sizes, Location, Design DEF D2Finite_CleanupEffectA, T_led, T_sled, Sizes, Location, Design
<4>4. QED
  BY <3>4, <3>1, <4>1, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF D2Finite_CleanupEffectA, D2Finite_CleanupFreeA, D2Finite_K7AtA, Sizes, Location, Design
<3>5. QED
  BY <3>2, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>2, SMTT(10), Sizes, Location, Design DEF K7, D2Finite_K7AtA, Sizes, Location, Design
\* T2M-END R2M0034_PP_D2Finite_PdCleanupK7A


<1>itx.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE K7'
<2> USE ONLY <1>itx, Sizes, Location, Design
<2>1. K6 /\ T_led /\ T_sled
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_K6, V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. InitPage(x) \in Pages
  BY <1>pZd3LrS, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. D2Finite_CleanupEffectA(InitPage(x),led[InitPage(x)] \ {x},sled[InitPage(x)])
  BY <2>1, <2>2, <1>KFWGKWzX, SMTT(10), Sizes, Location, Design DEF K6, CqeUpdateD2, CqeFreeD2, D2Finite_CleanupEffectA, D2Finite_CleanupFreeA, T_led, T_sled, InitPage, Sizes, Location, Design
<2>4. QED
  BY <2>2, <2>3, <1>XOSsBLUR5bqdiu51q9oRiSVhL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0039_PP_PdD2Cqe_K7

\* T2M-SCOPE R2M0040_PP_PdD2Cqe_K8

<1>kIo.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE K8'
<2> USE ONLY <1>kIo, Sizes, Location, Design
<2>1. T_iv /\ K8 /\ K1 /\ K2 /\ T_led /\ T_pgn /\ T_plt /\ T_pr /\ T_pst /\ T_iv
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K2, V21_Inv_K8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. CqeUpdateD2(x) /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hok, hp, hw, nx, ph, ptl, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>KFWGKWzX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>pZd3LrS, <1>L6Tf5v8Y2nuUEHEzBedz, <1>AeaSGW0hUpbmRBrh7dLQ, Design, Location, Sizes, SMTT(10) DEF T_iv, InitPage, Active, DInst, ExpInst, ExpPage, InitInst, InitPage, Inst, IsD, IsP, K1, K2, K8, KPinned, NL, CqeFreeD2, CqeUpdateD2, OwnedBy, T_led, T_pgn, T_plt, T_pr, T_pst, T_iv, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0040_PP_PdD2Cqe_K8

\* T2M-SCOPE R2M0041_PP_PdD2Cqe_K9

<1>wei.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE K9'
<2> USE ONLY <1>wei, Sizes, Location, Design
<2>1. T_iv /\ K9 /\ K8 /\ T_led /\ T_pgn /\ T_plt /\ T_pr /\ T_pst
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. CqeUpdateD2(x) /\ UNCHANGED <<drep, gen, hd, hp, nx, ph, ptl, pvis, rg, rhit, rpe, rpg, rx, sfly, sled, xdst, xg, xlt, xr, xsrc, xst>>
  BY <1>KFWGKWzX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>pZd3LrS, <1>L6Tf5v8Y2nuUEHEzBedz, <1>AeaSGW0hUpbmRBrh7dLQ, Design, Location, Sizes, SMTT(10) DEF T_iv, InitPage, Active, DInst, Inst, IsD, IsP, K8, K9, KPinned, NL, CqeFreeD2, CqeUpdateD2, OwnedBy, T_led, T_pgn, T_plt, T_pr, T_pst, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M0041_PP_PdD2Cqe_K9

\* T2M-SCOPE R2M0042_PdPAgg_Cqe

<1>DUuIb.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
  PROVE K3'
<2> DEFINE StepK3(q) ==
        /\ (iv[q] \in {"none", "nopost", "reg"}) <=> (hw[q] = "none")
        /\ iv[q] = "reg" => (xk[q] = "wr" /\ PReg /\ xst[q] = "posted")
        /\ iv[q] = "cqe" => hw[q] \in CqeHw(q)
        /\ hw[q] = "issued" => xk[q] = "wr"
        /\ xst[q] = "revoked" => iv[q] = "nopost"
        /\ xst[q] = "landed" => (hw[q] = "stop" /\ hok[q] /\ xlt[q] = xnt[q])   \* transfer-length consistency: landed only if lt = plan
        /\ (xk[q] = "rd" /\ iv[q] \notin {"none", "nopost"}) => xlt[q] = xnt[q]   \* transfer-length consistency: in pull, D issues READ only if lt = plan
        /\ xst[q] = "failed" => IF xk[q] = "wr" THEN (hw[q] = "stop" /\ hok[q] /\ xlt[q] # xnt[q])   \* in push, failed comes only from BAD_LEN
                                 ELSE ((iv[q] = "cqe" /\ hw[q] = "stop" /\ ~hok[q]) \/ iv[q] = "nopost")
        /\ InFl(q) => (xst[q] = "posted" /\ (iv[q] \in {"posted", "failret"} \/ (iv[q] = "cqe" /\ hw[q] = "issued" /\ ~hok[q])))
<2> HIDE DEF StepK3
<2>1. K3 /\ TypInv BY ONLY <1>DUuIb, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>1a. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>DUuIb, V22_T_iv, SMTT(5)

<2>2. /\ x \in Xids /\ iv[x]="posted" /\ hw[x] \in CqeHw(x)
       /\ iv'=[iv EXCEPT ![x]="cqe"]
       /\ UNCHANGED <<hok,hw,xk,xlt,xnt,xst>>
 BY ONLY <1>DUuIb, SMTT(10), Sizes, Location, Design DEF Cqe, CqeHw, Sizes, Location, Design
<2>3. ASSUME NEW y \in Xids PROVE StepK3(y)'
 <3>1. CASE y=x
  <4>1. StepK3(x) BY ONLY <2>1, <2>2, Sizes, Location, Design DEF K3, StepK3, Sizes, Location, Design
  <4>2. QED BY ONLY <2>1a, <2>2, <2>3, <3>1, <4>1, Design, SMTT(10), Sizes, Location DEF StepK3, CqeHw, InFl, Sizes, Location, Design
 <3>2. CASE y#x
  <4>1. iv'[y]=iv[y] BY ONLY <2>1a, <2>2, <2>3, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. QED BY ONLY <2>1, <2>2, <2>3, <4>1, SMTT(10), Sizes, Location, Design DEF K3, StepK3, CqeHw, InFl, Sizes, Location, Design
 <3>3. QED BY ONLY <3>1, <3>2, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY ONLY <2>3, Sizes, Location, Design DEF K3, StepK3, Sizes, Location, Design


<1>ThYcj.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
  PROVE K7'
  BY ONLY <1>ThYcj, Sizes, Location, Design, <1>itx, V21_Inv_K7 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>S8PMI.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
  PROVE K8'
  BY ONLY <1>S8PMI, Sizes, Location, Design, <1>kIo, V21_Inv_K8 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>b1Yix.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
  PROVE K9'
  BY ONLY <1>b1Yix, Sizes, Location, Design, <1>wei, V21_Inv_K9 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>SLFPR.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
  PROVE S5'
<2>1. S5 /\ TypInv BY ONLY <1>SLFPR, V21_Inv_S5, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>1a. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>SLFPR, V22_T_iv, SMTT(5)

<2>2. /\ x \in Xids /\ iv'=[iv EXCEPT ![x]="cqe"]
       /\ UNCHANGED <<hok,hw,nx,ph,rg,rhit,rpg,rx,xdst,xg,xlt,xnt,xr,xst>>
 BY ONLY <1>SLFPR, SMTT(10), Sizes, Location, Design DEF Cqe, recV, Sizes, Location, Design
<2>3. QED BY ONLY <2>1, <2>1a, <2>2, SMTT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design


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


<1>ujEUqBpYoFz.        
 GenFiltered /\ UNCHANGED <<gbad>> => GenFiltered'
 BY IsaT(10), Sizes, Location, Design DEF GenFiltered, Sizes, Location, Design
\* T2M-END R2M0347_PdPF_GenFiltered


<1>ps.        
 S1 /\ UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>> => S1'
 BY IsaT(10), Sizes, Location, Design DEF Active, ExpInst, S1, Sizes, Location, Design
\* T2M-END R2M0341_PdPF_S1

\* T2M-SCOPE R2M0346_PdPF_S6

<1>aXu.        
 K17 /\ UNCHANGED <<kpin, krs, ph, rg, rpg>> => K17'
 BY IsaT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
\* T2M-END R2M0340_PdPF_K17


<1>s6g.        
 K13 /\ UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>> => K13'
 BY IsaT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design
\* T2M-END R2M0354_PdPF_K13


<1>Rb5ROEpz6x2.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, kfly, kpin, krs, nfail, nx, ph, rd, rg, rp, rpg, rt, rx, torn, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY ONLY <1>Rb5ROEpz6x2, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF Cqe, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EKRP1Cv.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE K13'
<2> USE ONLY <1>EKRP1Cv, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>Rb5ROEpz6x2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XWgMwYk.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE K17'
<2> USE ONLY <1>XWgMwYk, Sizes, Location, Design
<2>1. K17
 BY V21_Inv_K17, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpg>>
 BY <1>Rb5ROEpz6x2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aXu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uBYgqP.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE S1'
<2> USE ONLY <1>uBYgqP, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>Rb5ROEpz6x2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VToUyT.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE S2'
<2> USE ONLY <1>VToUyT, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>Rb5ROEpz6x2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZukMHO.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE S3'
<2> USE ONLY <1>ZukMHO, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>Rb5ROEpz6x2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CbGsNAkZiYx2ZVh.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>CbGsNAkZiYx2ZVh, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>Rb5ROEpz6x2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>ThYcj, <1>S8PMI, <1>b1Yix, <1>X7vIBgiDBHsv07nvtfqU8q27OX0x, <1>ZSaT7GhpHrNzMUl5NS40, <1>DUuIb, <1>SLFPR, <1>EKRP1Cv, <1>XWgMwYk, <1>uBYgqP, <1>VToUyT, <1>ZukMHO, <1>CbGsNAkZiYx2ZVh, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_Cqe SHA 81e1f54b0b0acaeb1cc8f81c0c8e2fd5006a957687d40d84281f39ad63a51efc
USE DEF ShapeInitiatorLocation, Shape_T_hok, Shape_T_iv, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc
HIDE DEF Part_Cqe_03_01, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K13, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S5, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_T_iv, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS
LEMMA ShapeEffect_Cqe ==
 ASSUME NEW x \in Xids, Sizes, Design, Cqe(x)
 PROVE /\ iv[x]="posted"
 /\ net' = net \cup {IF xk[x]="wr"
 THEN Msg("notice",Loc(IF xk[x]="wr" THEN xsrc[x] ELSE xdst[x]),xd[x],xr[x],xg[x],x,xlt[x],1,hok[x])
 ELSE Msg("relsrc",Loc(IF xk[x]="wr" THEN xsrc[x] ELSE xdst[x]),xp[x],xr[x],xg[x],x,0,0,hok[x])}
 BY ONLY Cqe(x), Sizes, Design, SMTT(5) DEF Cqe, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_Cqe ==
 ASSUME NEW x \in Xids, Sizes, Design, IndInv, MessageShape, Cqe(x)
 PROVE MessageShape'
<1>1. /\ iv[x]="posted"
 /\ net' = net \cup {IF xk[x]="wr"
 THEN Msg("notice",Loc(IF xk[x]="wr" THEN xsrc[x] ELSE xdst[x]),xd[x],xr[x],xg[x],x,xlt[x],1,hok[x])
 ELSE Msg("relsrc",Loc(IF xk[x]="wr" THEN xsrc[x] ELSE xdst[x]),xp[x],xr[x],xg[x],x,0,0,hok[x])}
 BY ONLY Sizes, Design, Cqe(x), ShapeEffect_Cqe
<1>2. hok \in [Xids -> BOOLEAN] /\ iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ xd \in [Xids -> {0} \cup Inst] /\ xdst \in [Xids -> 0..NP] /\ xg \in [Xids -> 0..MG] /\ xk \in [Xids -> {"none", "wr", "rd"}] /\ xlt \in [Xids -> 0..PS] /\ xp \in [Xids -> {0} \cup Inst] /\ xr \in [Xids -> 0..NR] /\ xsrc \in [Xids -> 0..NP]
 BY ONLY IndInv, Shape_T_hok, Shape_T_iv, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc
<1>3. Loc(IF xk[x]="wr" THEN xsrc[x] ELSE xdst[x]) \in Inst
 BY ONLY <1>1, Sizes, IndInv, x \in Xids, ShapeInitiatorLocation, SMTT(5)
<1>4. /\ xd[x] \in {0} \cup Inst
 /\ xp[x] \in {0} \cup Inst
 /\ xr[x] \in {0} \cup Rq
 /\ xg[x] \in {0} \cup Gens
 /\ xlt[x] \in 0..PS
 /\ hok[x] \in BOOLEAN
 BY ONLY <1>2, x \in Xids, Sizes, SMTT(5) DEF Sizes, Rq, Gens
<1>5. 1 \in {0} \cup Inst \cup (0..PS)
 BY ONLY Sizes, SMTT(5) DEF Sizes, Inst, NL, PInst, DInst
<1>6. Msg("notice",Loc(IF xk[x]="wr" THEN xsrc[x] ELSE xdst[x]),xd[x],xr[x],xg[x],x,xlt[x],1,hok[x]) \in MsgSpace
 BY ONLY <1>3, <1>4, <1>5, x \in Xids, SMTT(5) DEF Msg, MsgSpace, MsgT
<1>7. Msg("relsrc",Loc(IF xk[x]="wr" THEN xsrc[x] ELSE xdst[x]),xp[x],xr[x],xg[x],x,0,0,hok[x]) \in MsgSpace
 BY ONLY <1>3, <1>4, x \in Xids, SMTT(5) DEF Msg, MsgSpace, MsgT
<1>8. QED
 BY ONLY <1>1, <1>6, <1>7, MessageShape, SMTT(5) DEF MessageShape, MsgSpace

\* Complete original body PdDomain_Cqe SHA a9314f672ae7fa7c70c381c6a2626abd1a457cd1b306c3ad92a73de8cf4dbec8
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeInitiatorLocation, ShapeKeep_Cqe, Shape_T_hok, Shape_T_iv, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc
THEOREM DomainKeep_Cqe ==
 ASSUME NEW x \in Xids, Sizes, Location, Design, PinInv, Cqe(x)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. /\ iv[x]="posted"
 /\ net' = net \cup {IF xk[x]="wr"
 THEN Msg("notice",Loc(IF xk[x]="wr" THEN xsrc[x] ELSE xdst[x]),xd[x],xr[x],xg[x],x,xlt[x],1,hok[x])
 ELSE Msg("relsrc",Loc(IF xk[x]="wr" THEN xsrc[x] ELSE xdst[x]),xp[x],xr[x],xg[x],x,0,0,hok[x])}
 BY ONLY Sizes, Location, Design, PinInv, Cqe(x), ShapeEffect_Cqe
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalPart_Cqe_03_02 SHA b5e3a15e7dd144c8ac83ec9575e2f481ca87d4519eaa7db0c88dd6dc4ace7cc2
USE DEF V21_Inv_BaseSafety, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K14, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_iv, V22_T_led, V22_T_nx, V22_T_pgn, V22_T_pr, V22_T_pst, V22_T_sled, V22_T_xdst
HIDE DEF ShapeEffect_Cqe, V21_Inv_MsgXDomain
THEOREM Part_Cqe_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE (P_SI3)' /\ (SealOnlyLanded)' /\ (SI7)' /\ (K10)' /\ (K11)' /\ (K16)' /\ (QuarNeverMapped)' /\ (QuarNoReg)' /\ (K1)' /\ (K14)' /\ (S4)' /\ (S6)' /\ (OneReply)' /\ (ReplyTruth)' /\ (SharedImmutable)' /\ (P_B2OffInit)' /\ (MsgXDomain)'
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


           RO_E_sentry == sentry'=(sentry \cup {x \in Xids : RO_Posted(x)}) \ {x \in Xids : RO_Close(x) \/ RO_Quarantine(x)}


           RO_E_spst == spst'=[p \in SPages |-> IF \E x \in Xids : RO_Quarantine(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF RO_Drop(p) THEN "free" ELSE IF RO_Ended(p) THEN "drain" ELSE spst[p]]


<1> HIDE DEF T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_PinGrows, RO_E_rpgS, RO_E_sentry, RO_E_spst

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

<1>OqWm2zAPVJ0Q4MvxJyh.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>OqWm2zAPVJ0Q4MvxJyh, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>OqWm2zAPVJ0Q4MvxJyh, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF Cqe, ghV, instV, kV, recV, rtV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Uj0mi4.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M0003_PP_PdMsgBase


<1>Tzv2xO.        
  ASSUME NEW x \in Xids, Cqe(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>Tzv2xO, Sizes, Location, Design, ZenonT(5) DEF Cqe, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M0019_PP_PdCqeFrames

\* T2M-SCOPE R2M0020_PP_PdCell_Cqe_K10
\* T2M-BODY R2M0020_PP_PdCell_Cqe_K10
\* T2M-LOCAL-VISIBILITY

<1>yo09.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE K10'
<2> DEFINE IP == IF xk[x]="wr" THEN xsrc[x] ELSE xdst[x]
           EvState == AfterEv(IP,led[IP] \ {x},sled[IP])
<2> HIDE DEF IP, EvState, Cqe, K10, OwnedBy, CoreTypeOK
<2>old. K10
 BY ONLY <1>yo09, V21_Inv_K10, Sizes, Location, Design, SMTT(5)
<2>types. pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 BY ONLY <1>yo09, V22_T_pst, V22_T_pr, V22_T_pgn, SMTT(5)
<2>frame. UNCHANGED <<hok,hw,nx,ph,ptl,rg,xdst,xg,xlt,xr>>
 BY ONLY <1>yo09, ZenonT(5) DEF Cqe, recV
<2>effect. pst'=[pst EXCEPT ![IP]=EvState] /\
 (IF EvState="free" THEN pr'=[pr EXCEPT ![IP]=0] /\ pgn'=[pgn EXCEPT ![IP]=0]
  ELSE UNCHANGED <<pr,pgn>>)
 BY ONLY <1>yo09, ZenonT(5) DEF Cqe, EvidenceAt, PageTo, IP, EvState
<2>state. EvState="free" \/ EvState=pst[IP]
 BY ONLY ZenonT(5) DEF EvState, AfterEv
<2>kept. ASSUME NEW p \in Pages, pst'[p] # "free"
 PROVE UNCHANGED <<pst[p],pr[p],pgn[p]>>
 <3>same. CASE p=IP
  <4>newstate. pst'[p]=EvState
   BY ONLY <2>kept, <3>same, <2>effect, <2>types, SMTT(5)
  <4>qed. QED BY ONLY <2>kept, <3>same, <4>newstate, <2>state, <2>effect, <2>types, SMTT(5)
 <3>other. CASE p # IP
  BY ONLY <2>kept, <3>other, <2>effect, <2>types, SMTT(5)
 <3>qed. QED BY ONLY <3>same, <3>other, SMTT(5)
<2>qed. QED BY ONLY <2>old, <2>frame, <2>kept, SMTT(5) DEF K10, OwnedBy

\* T2M-LOCAL-VISIBILITY

\* T2M-END R2M0020_PP_PdCell_Cqe_K10

\* T2M-SCOPE R2M0021_PP_PdCell_Cqe_K11

<1>hU3k.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE K11'
<2> DEFINE IP == IF xk[x]="wr" THEN xsrc[x] ELSE xdst[x]
           EvState == AfterEv(IP,led[IP] \ {x},sled[IP])
<2> HIDE DEF IP, EvState, Cqe, K11, CoreTypeOK
<2>old. K11
 BY ONLY <1>hU3k, V21_Inv_K11, Sizes, Location, Design, SMTT(5)
<2>types. led \in [Pages -> SUBSET Xids] /\ sled \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>hU3k, V22_T_led, V22_T_sled, SMTT(5)
<2>frame. UNCHANGED <<nx,xsrc,ptl,xlt,sfly>>
 BY ONLY <1>hU3k, ZenonT(5) DEF Cqe
<2>effect. led'=[led EXCEPT ![IP]=IF EvState="free" THEN {} ELSE led[IP] \ {x}] /\
 sled'=[sled EXCEPT ![IP]=IF EvState="free" THEN {} ELSE sled[IP]]
 BY ONLY <1>hU3k, ZenonT(5) DEF Cqe, EvidenceAt, PageTo, IP, EvState
<2>shrinks. \A p \in Pages : led'[p] \subseteq led[p] /\ sled'[p] \subseteq sled[p]
 BY ONLY <2>types, <2>effect, SMTT(5)
<2>qed. QED BY ONLY <2>old, <2>frame, <2>shrinks, SMTT(5) DEF K11

\* T2M-END R2M0021_PP_PdCell_Cqe_K11
\* T2M-SCOPE R2M0022_PP_PdCell_Cqe_K16

<1>p6Fs.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE K16'
<2> USE ONLY <1>p6Fs, Sizes, Location, Design
<2>1. K16 /\ K7 /\ K8 /\ K9 /\ S1 /\ S2 /\ T_drep /\ T_gen /\ T_hd /\ T_hp /\ T_hw /\ T_iv /\ T_kpin /\ T_krs /\ T_led /\ T_nx /\ T_pgn /\ T_ph /\ T_plt /\ T_pqp /\ T_pr /\ T_prefc /\ T_pst /\ T_ptl /\ T_pvis /\ T_rg /\ T_rhit /\ T_rpe /\ T_rpg /\ T_rx /\ T_sfly /\ T_sled /\ T_xd /\ T_xdst /\ T_xg /\ T_xk /\ T_xlt /\ T_xp /\ T_xr /\ T_xsrc
  BY SMTT(10), <1>g4u1JVDPkX, V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_S1, V21_Inv_S2, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<hw, ph, ptl, rg, rpg, sfly, xdst>>
  BY SMTT(10), <1>Tzv2xO, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(10) DEF Active, AfterEv, Cqe, DInst, EvidenceAt, ExpInst, Gens, GrownP, InFl, Inst, IsD, IsP, K16, K7, K8, K9, KPinned, KSlots, Maps, NHits, NL, NTok, NoWriteInto, OwnedBy, PLens, PageTo, Pages, PinBlocks, Rq, S1, S2, T_drep, T_gen, T_hd, T_hp, T_hw, T_iv, T_kpin, T_krs, T_led, T_nx, T_pgn, T_ph, T_plt, T_pqp, T_pr, T_prefc, T_pst, T_ptl, T_pvis, T_rg, T_rhit, T_rpe, T_rpg, T_rx, T_sfly, T_sled, T_xd, T_xdst, T_xg, T_xk, T_xlt, T_xp, T_xr, T_xsrc, Tag, Writing, Xids, KPages, Sizes, Location, Design
\* T2M-END R2M0022_PP_PdCell_Cqe_K16

\* T2M-SCOPE R2M0023_PP_PdCell_Cqe_K3

<1>Leo3RPIxazMXYFAH.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>Leo3RPIxazMXYFAH, Sizes, Location, Design
<2>1. QuarNeverMapped /\ K2 /\ K7 /\ K8 /\ K9 /\ S1 /\ S2 /\ S5 /\ T_drep /\ T_gen /\ T_hd /\ T_hok /\ T_hp /\ T_hw /\ T_iv /\ T_kpin /\ T_krs /\ T_led /\ T_nx /\ T_pgn /\ T_ph /\ T_plt /\ T_pqp /\ T_pr /\ T_prefc /\ T_pst /\ T_ptl /\ T_pvis /\ T_rg /\ T_rhit /\ T_rpe /\ T_rpg /\ T_rx /\ T_sfly /\ T_sled /\ T_xd /\ T_xdst /\ T_xg /\ T_xk /\ T_xlt /\ T_xnt /\ T_xp /\ T_xr /\ T_xsrc /\ T_xst
  BY SMTT(10), <1>g4u1JVDPkX, V21_Inv_K2, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_QuarNeverMapped, V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, Types, Sizes, Location, Design
<2>2. UNCHANGED <<ph, rpg>>
  BY SMTT(10), <1>Tzv2xO, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(10) DEF Active, AfterEv, Cqe, DInst, EvidenceAt, ExpInst, ExpPage, Gens, GrownP, InitInst, InitPage, Inst, IsD, IsP, K2, K7, K8, K9, KPinned, KSlots, Maps, NHits, NL, NTok, OwnedBy, PLens, PageTo, Pages, PinBlocks, QuarNeverMapped, Rq, S1, S2, S5, T_drep, T_gen, T_hd, T_hok, T_hp, T_hw, T_iv, T_kpin, T_krs, T_led, T_nx, T_pgn, T_ph, T_plt, T_pqp, T_pr, T_prefc, T_pst, T_ptl, T_pvis, T_rg, T_rhit, T_rpe, T_rpg, T_rx, T_sfly, T_sled, T_xd, T_xdst, T_xg, T_xk, T_xlt, T_xnt, T_xp, T_xr, T_xsrc, T_xst, Tag, Xids, KPages, Sizes, Location, Design
\* T2M-END R2M0024_PP_PdCell_Cqe_QuarNeverMapped

\* T2M-SCOPE R2M0025_PP_PdCell_Cqe_QuarNoReg

<1>TrKOuMh8SO.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE QuarNoReg'
<2> USE ONLY <1>TrKOuMh8SO, Sizes, Location, Design
<2>1. QuarNoReg /\ K2 /\ K3 /\ K7 /\ K8 /\ K9 /\ T_drep /\ T_gen /\ T_hd /\ T_hok /\ T_hp /\ T_hw /\ T_iv /\ T_kpin /\ T_krs /\ T_led /\ T_nx /\ T_pgn /\ T_ph /\ T_plt /\ T_pqp /\ T_pr /\ T_prefc /\ T_pst /\ T_ptl /\ T_pvis /\ T_rg /\ T_rhit /\ T_rpe /\ T_rpg /\ T_rx /\ T_sfly /\ T_sled /\ T_xd /\ T_xdst /\ T_xg /\ T_xk /\ T_xlt /\ T_xnt /\ T_xp /\ T_xr /\ T_xsrc /\ T_xst
  BY SMTT(10), <1>g4u1JVDPkX, V21_Inv_K2, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, Sizes, Location, Design
<2>2. TRUE
  BY SMTT(10), <1>Tzv2xO, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, Sizes, Location, <1>Uj0mi4, SMTT(10) DEF Active, AfterEv, Cqe, CqeHw, DInst, EvidenceAt, ExpInst, ExpPage, Gens, GrownP, InFl, InitInst, InitPage, Inst, IsD, IsP, K2, K3, K7, K8, K9, KPinned, KSlots, Maps, NHits, NL, NTok, OwnedBy, PLens, PageTo, Pages, PinBlocks, QuarNoReg, Rq, T_drep, T_gen, T_hd, T_hok, T_hp, T_hw, T_iv, T_kpin, T_krs, T_led, T_nx, T_pgn, T_ph, T_plt, T_pqp, T_pr, T_prefc, T_pst, T_ptl, T_pvis, T_rg, T_rhit, T_rpe, T_rpg, T_rx, T_sfly, T_sled, T_xd, T_xdst, T_xg, T_xk, T_xlt, T_xnt, T_xp, T_xr, T_xsrc, T_xst, Tag, Xids, KPages, Sizes, Location, Design
\* T2M-END R2M0025_PP_PdCell_Cqe_QuarNoReg

\* T2M-SCOPE R2M0026_PP_PdCell_Cqe_S5

<1>qumY39.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
  PROVE K10'
  BY ONLY <1>qumY39, Sizes, Location, Design, <1>yo09, V21_Inv_K10 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>yyWSGk.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
  PROVE K11'
  BY ONLY <1>yyWSGk, Sizes, Location, Design, <1>hU3k, V21_Inv_K11 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>vbNXNW.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
  PROVE K16'
  BY ONLY <1>vbNXNW, Sizes, Location, Design, <1>p6Fs, V21_Inv_K16 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>EPEQP1RjzO3VRZxvQ3.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>EPEQP1RjzO3VRZxvQ3, Sizes, Location, Design, <1>Leo3RPIxazMXYFAH, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>ovrQkQejwvPA.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>ovrQkQejwvPA, Sizes, Location, Design, <1>TrKOuMh8SO, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M0042_PdPAgg_Cqe


<1>dQOyv8t618plr.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>dQOyv8t618plr, Sizes, Location, Design, DomainKeep_Cqe, SMTT(5)
\* T2M-END R2M0268_PdPDomain_Cqe


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


<1>BBQUQLHXJe.        
 ReplyTruth /\ UNCHANGED <<crep, dsucc>> => ReplyTruth'
 BY IsaT(10), Sizes, Location, Design DEF ReplyTruth, Sizes, Location, Design
\* T2M-END R2M0349_PdPF_ReplyTruth


<1>yYI.        
 K14 /\ UNCHANGED <<gen, kfly, kpin, krs>> => K14'
 BY IsaT(10), Sizes, Location, Design DEF K14, Sizes, Location, Design
\* T2M-END R2M0355_PdPF_K14


<1>XnYly5EW.        
 OneReply /\ UNCHANGED <<crep, drep>> => OneReply'
 BY IsaT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
\* T2M-END R2M0348_PdPF_OneReply


<1>Wu.        
 K1 /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>> => K1'
 BY IsaT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M0353_PdPF_K1


<1>sk.        
 S6 /\ UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>> => S6'
 BY IsaT(10), Sizes, Location, Design DEF Active, InitInst, InitPage, S6, Sizes, Location, Design
\* T2M-END R2M0346_PdPF_S6


<1>Rb5ROEpz6x2.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, kfly, kpin, krs, nfail, nx, ph, rd, rg, rp, rpg, rt, rx, torn, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY ONLY <1>Rb5ROEpz6x2, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF Cqe, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DS3EvH.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE K1'
<2> USE ONLY <1>DS3EvH, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>Rb5ROEpz6x2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Lo30wy2.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE K14'
<2> USE ONLY <1>Lo30wy2, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>Rb5ROEpz6x2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Dw7H5j.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE S4'
<2> USE ONLY <1>Dw7H5j, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>Rb5ROEpz6x2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YK9tSu.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE S6'
<2> USE ONLY <1>YK9tSu, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>Rb5ROEpz6x2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dvSbGN35Reob.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE OneReply'
<2> USE ONLY <1>dvSbGN35Reob, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>Rb5ROEpz6x2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UnKjderUhItbn7.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>UnKjderUhItbn7, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>Rb5ROEpz6x2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0356_PdPFrames_Cqe


<1>nkR4lwqB4OTBB.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>nkR4lwqB4OTBB, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0453_PdPOff_Cqe


<1>H0Dre0I9dt5V.        
 ASSUME B2, SFollow
 PROVE RO_E_rpgS
 BY ONLY <1>H0Dre0I9dt5V, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_rpgS, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oVMEMsT8gqQqbk.        
 ASSUME B2, SFollow
 PROVE RO_E_sentry
 BY ONLY <1>oVMEMsT8gqQqbk, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_sentry, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

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

<1>FNYHAwoI35diExU.        
 ASSUME NEW x \in Xids, Cqe(x)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>FNYHAwoI35diExU, Sizes, Location, Design, Design, ZenonT(10) DEF AfterEv, Cqe, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design

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

<1>MmyvXiS.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE SI7'
 BY ONLY <1>MmyvXiS, Sizes, Location, Design, <1>FNYHAwoI35diExU, <1>BB3XCZfgVMtlT, <1>ylKAHsQ5CtyvX, <1>FVK4MYGoOHs3gti, <1>dhSsfJA1lMG4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zUMZyfm.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE P_SI3'
 BY ONLY <1>zUMZyfm, Sizes, Location, Design, <1>B8uFJWPVI9dI, <1>WipnktIb3Tt2O9, <1>jGg3R, <1>FZld0iMu DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qtViqJeBETLPzLT.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE BaseSealOnlyLanded'
<2>1. BaseSealOnlyLanded /\ TypInv
 BY ONLY <1>qtViqJeBETLPzLT, V21_Inv_BaseSafety, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, BaseSafety, SealOnlyLanded, Sizes, Location, Design
<2>2. pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>qtViqJeBETLPzLT, V22_T_pst, SMTT(5)

<2>3. UNCHANGED <<hw,ptl,xdst>> BY ONLY <1>qtViqJeBETLPzLT, SMTT(10), Sizes, Location, Design DEF Cqe, Sizes, Location, Design
<2>4. \A p \in Pages : pst'[p]="shared" => pst[p]="shared"
 BY ONLY <1>qtViqJeBETLPzLT, <2>2, SMTT(10), Sizes, Location, Design DEF Cqe, EvidenceAt, PageTo, AfterEv, Sizes, Location, Design
<2>5. QED BY ONLY <2>1, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF BaseSealOnlyLanded, NoWriteInto, Writing, InFl, Sizes, Location, Design
\* T2M-END R2M2653_PdROBase_PdCell_Cqe_SealOnlyLanded


<1>j9dIK1vlNNhaiJIWv0.        
 ASSUME NEW x \in Xids, PinInv, Cqe(x), SFollow
 PROVE SealOnlyLanded'
<2> USE ONLY <1>j9dIK1vlNNhaiJIWv0, Sizes, Location, Design
<2>1. BaseSealOnlyLanded' BY <1>qtViqJeBETLPzLT, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>j9dIK1vlNNhaiJIWv0, <1>FNYHAwoI35diExU, V22_T_xdst, SMTT(5)

<2>3. SharedImmutable' BY <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, Location, Design DEF SealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M2654_PdROSafety_Cqe_SealOnlyLanded

\* T2M-SCOPE R2M2655_PdROSafety_Cqe_SendOwnLanded

<1> QED BY <1>zUMZyfm, <1>j9dIK1vlNNhaiJIWv0, <1>MmyvXiS, <1>qumY39, <1>yyWSGk, <1>vbNXNW, <1>EPEQP1RjzO3VRZxvQ3, <1>ovrQkQejwvPA, <1>DS3EvH, <1>Lo30wy2, <1>Dw7H5j, <1>YK9tSu, <1>dvSbGN35Reob, <1>UnKjderUhItbn7, <1>OqWm2zAPVJ0Q4MvxJyh, <1>nkR4lwqB4OTBB, <1>dQOyv8t618plr, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_Cqe_01_01, Part_Cqe_01_02, Part_Cqe_02_01, Part_Cqe_02_02, Part_Cqe_03_01, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_Cqe
HIDE DEF DomainKeep_Cqe, V21_Inv_BaseSafety, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K14, V21_Inv_K16, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_iv, V22_T_led, V22_T_nx, V22_T_pgn, V22_T_pr, V22_T_pst, V22_T_sled, V22_T_xdst

THEOREM Step_Cqe ==
 ASSUME NEW x \in Xids, Sizes, Location, Design, PinInv, Cqe(x), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Xids, Sizes, Location, Design, PinInv, Cqe(u), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_Cqe_01_01, Part_Cqe_01_02, Part_Cqe_02_01, Part_Cqe_02_02, Part_Cqe_03_01, Part_Cqe_03_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_Cqe_01_01, Part_Cqe_01_02, Part_Cqe_02_01, Part_Cqe_02_02, Part_Cqe_03_01, Part_Cqe_03_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, Cqe(x), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, Cqe(x), ShapeKeep_Cqe, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
