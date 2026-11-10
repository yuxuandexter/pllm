---- MODULE PdFinalAction_DLaunchNext ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_9cfe79b2a4479af8, PdFinalInvProjections, PdFinalEffects, PdFunctionFrames, PdShapeBase, PdActionSlice_DLaunchNext_01

\* Complete original body PdFinalPart_DLaunchNext_02_02 SHA 274e83ab3533d4c8e707970037cf7a1244e56c44774fd89b69aac5f7b5fa5e6c
HIDE DEF AuxType_9cfe79b2a4479af8, DomainKeep_DLaunchNext, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_DLaunchNext_01_01, Part_DLaunchNext_01_02, Part_DLaunchNext_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeEffect_DLaunchNext, ShapeImpliesTags, ShapeInitiatorLocation, ShapeKeep_DLaunchNext, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K15, V21_Inv_K16, V21_Inv_K5, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_S2, V21_Inv_S3, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V22_FunctionEta, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_MatrixEta, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_Off, V22_SF_RefCount, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SourcePrivate, V22_SF_SquarFrame, V22_SF_Status, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_T_alive, V22_T_crep, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sfly, V22_T_sled, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_DLaunchNext_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
 PROVE (PrivateMapOwner)' /\ (EntryQuarantineDisjoint)' /\ (K6)' /\ (K8)' /\ (K11)' /\ (K10)' /\ (K13)' /\ (K17)' /\ (S1)' /\ (S5)' /\ (S6)' /\ (QuarNeverMapped)' /\ (K2)' /\ (K3)' /\ (K4)' /\ (K12)' /\ (K14)' /\ (S4)' /\ (ReplyTruth)' /\ (QuarNoReg)' /\ (SharedImmutable)' /\ (P_B2OffInit)'
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

<1> HIDE DEF XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Ex6xsGb, ez8hZbQN7k, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Types

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


<1>yH6jz4wP7gPcxTd9KQ.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r)
 PROVE ez8hZbQN7k /\ UNCHANGED xsrc
<2> USE ONLY <1>yH6jz4wP7gPcxTd9KQ, Sizes, Location, Design
<2>1. Ex6xsGb /\ (\A x \in Xids : xk[x] # "none" => xp[x] \in PInst /\ xd[x] \in DInst)
 BY <1>rC6T, <1>vx9OnCyVIC, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>HsRNXPeY1C, Sizes, Design, SMTT(10), Location DEF ez8hZbQN7k, DLaunchNext, IsD, Tag, ghV, instV, kV, rtV, xV, PInst, Ex6xsGb, Sizes, Location, Design


<1>S7u3kynKNBIDa9IRHTm82XVF7uahGyOG3Ptt.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r) /\ SFollow
 PROVE EntryQuarantineDisjoint'
 BY ONLY <1>S7u3kynKNBIDa9IRHTm82XVF7uahGyOG3Ptt, Sizes, Location, Design, <1>yH6jz4wP7gPcxTd9KQ, <1>IGL3qfJM DEF Sizes, Location, Design


<1>fOs80FjgcRy84uEQyMU5CB9EFn64.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r) /\ SFollow
 PROVE PrivateMapOwner'
 BY ONLY <1>fOs80FjgcRy84uEQyMU5CB9EFn64, Sizes, Location, Design, <1>yH6jz4wP7gPcxTd9KQ, <1>YccZP1lf DEF Sizes, Location, Design


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

<1>ql97qcTJNrLYrMFF5tYhEiGmqYh.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>ql97qcTJNrLYrMFF5tYhEiGmqYh, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ql97qcTJNrLYrMFF5tYhEiGmqYh, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF DLaunchNext, ghV, instV, kV, rtV, xV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g4u1JVDPkX.         TypInv => Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, Types, T_gen, T_rt, T_rp, T_rd, T_hp, T_hd, T_alive, T_nfail, T_torn, T_kpin, T_kfly, T_krs, T_ph, T_rg, T_rpg, T_rpe, T_rx, T_rhit, T_pst, T_pr, T_pgn, T_plt, T_ptl, T_pvis, T_led, T_sfly, T_sled, T_prefc, T_pqp, T_xr, T_xg, T_xk, T_xp, T_xd, T_xsrc, T_xdst, T_xnt, T_hw, T_hok, T_iv, T_xst, T_xlt, T_nx, T_net, T_drep, T_crep, T_dsucc, T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WyLvMuBrUo3PwLW.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DLaunchNext(j,r)
  PROVE /\ IsD(j) /\ ph[j][r] = "run"
        /\ Tag(r,rg[j][r]) \in sled[rpg[j][r]]
        /\ ph' = [ph EXCEPT ![j][r] = "ovl"]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = @ \cup {Tag(r,rg[j][r])}]
        /\ UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>WyLvMuBrUo3PwLW, Sizes, Location, Design, SMTT(10) DEF DLaunchNext, rtV, instV, kV, xV, ghV, Sizes, Location, Design


<1>IpIGv9mb0BH9w.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r)
  PROVE rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ j \in DInst /\ led[rpg[j][r]] = {}
<2> USE ONLY <1>IpIGv9mb0BH9w, Sizes, Location, Design
<2>1. K7 /\ K8 /\ K9
  BY SMTT(10), V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsD(j) /\ ph[j][r] = "run"
  BY <1>WyLvMuBrUo3PwLW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ j \in DInst
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K8, Active, IsD, DInst, Inst, NL, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K7, K9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zmHrbE795QF4nkV.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r)
  PROVE \A i \in Inst, v \in Rq :
        /\ (ph'[i][v] \in {"run","ovl"}) <=> (ph[i][v] \in {"run","ovl"})
        /\ (ph'[i][v] \in {"run","ovl","end"}) <=> (ph[i][v] \in {"run","ovl","end"})
        /\ (ph'[i][v] # "none") <=> (ph[i][v] # "none")
        /\ (ph'[i][v] \in {"none","end"}) <=> (ph[i][v] \in {"none","end"})
        /\ \A st \in {"none","end","pre","ready","reg","sent","exp","wait","rd"} :
               (ph'[i][v] = st) <=> (ph[i][v] = st)
<2> USE ONLY <1>zmHrbE795QF4nkV, Sizes, Location, Design
<2>1. T_ph
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Types, Sizes, Location, Design
<2>2. ph[j][r] = "run" /\ ph' = [ph EXCEPT ![j][r] = "ovl"]
  BY <1>WyLvMuBrUo3PwLW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF T_ph, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>a4Nfv3Q93lM.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j, r)
  PROVE K6'
<2> USE ONLY <1>a4Nfv3Q93lM, Sizes, Location, Design
<2>1. K6 /\ T_sfly
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K6, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<gen, pgn, pr, pst, sled>>
  BY <1>WyLvMuBrUo3PwLW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. /\ IsD(j) /\ ph[j][r] = "run" /\ Tag(r,rg[j][r]) \in sled[rpg[j][r]]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = @ \cup {Tag(r,rg[j][r])}]
        /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ j \in DInst /\ led[rpg[j][r]] = {}
  BY <1>WyLvMuBrUo3PwLW, <1>IpIGv9mb0BH9w, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <1>zmHrbE795QF4nkV, <2>3, Location, Sizes, SMTT(10), Design DEF DInst, Inst, IsD, IsP, K6, NL, OwnedBy, T_sfly, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xQ9kb7unjxc.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j, r)
  PROVE K8'
<2> USE ONLY <1>xQ9kb7unjxc, Sizes, Location, Design
<2>1. K8 /\ T_sfly /\ T_ph /\ T_rpg
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sled, xg, xlt, xr, xsrc>>
  BY <1>WyLvMuBrUo3PwLW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. /\ IsD(j) /\ ph[j][r] = "run" /\ Tag(r,rg[j][r]) \in sled[rpg[j][r]]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = @ \cup {Tag(r,rg[j][r])}]
        /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ j \in DInst /\ led[rpg[j][r]] = {}
  BY <1>WyLvMuBrUo3PwLW, <1>IpIGv9mb0BH9w, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ph' = [ph EXCEPT ![j][r] = "ovl"]
  BY <1>WyLvMuBrUo3PwLW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <1>zmHrbE795QF4nkV, <2>3, <2>4, Location, Sizes, SMTT(10), Design DEF Active, DInst, Inst, IsD, IsP, K8, NL, OwnedBy, T_ph, T_rpg, T_sfly, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aDOAK50P9Jz7.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j, r)
  PROVE K10'
<2> USE ONLY <1>aDOAK50P9Jz7, Sizes, Location, Design
<2>1. K10 /\ K1 /\ K2 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hok, hp, hw, iv, nx, pgn, pr, pst, ptl, rd, rg, rp, rt, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>WyLvMuBrUo3PwLW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <1>zmHrbE795QF4nkV, Location, Sizes, SMTT(10), Design DEF DInst, ExpInst, ExpPage, InitInst, InitPage, Inst, K1, K10, K2, NL, OwnedBy, T_nx, Xids, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EfNnLOEdPvyW.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j, r)
  PROVE K11'
<2> USE ONLY <1>EfNnLOEdPvyW, Sizes, Location, Design
<2>1. K11 /\ T_sfly
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K11, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<led, nx, ptl, sled, xlt, xsrc>>
  BY <1>WyLvMuBrUo3PwLW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. /\ IsD(j) /\ ph[j][r] = "run" /\ Tag(r,rg[j][r]) \in sled[rpg[j][r]]
        /\ sfly' = [sfly EXCEPT ![rpg[j][r]] = @ \cup {Tag(r,rg[j][r])}]
        /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ j \in DInst /\ led[rpg[j][r]] = {}
  BY <1>WyLvMuBrUo3PwLW, <1>IpIGv9mb0BH9w, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <1>zmHrbE795QF4nkV, <2>3, Location, Sizes, SMTT(10), Design DEF DInst, Inst, IsD, IsP, K11, NL, T_sfly, Tag, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>X7JeNyf7BQDu.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j, r)
  PROVE K13'
<2> USE ONLY <1>X7JeNyf7BQDu, Sizes, Location, Design
<2>1. K13 /\ K1 /\ T_gen
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K13, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, gen, hd, hp, rd, rg, rp, rt>>
  BY <1>WyLvMuBrUo3PwLW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <1>zmHrbE795QF4nkV, Location, Sizes, SMTT(10), Design DEF DInst, Inst, K1, K13, NL, T_gen, Gens, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sY4WPKiwPLVS.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j, r)
  PROVE K17'
<2> USE ONLY <1>sY4WPKiwPLVS, Sizes, Location, Design
<2>1. K17 /\ T_krs
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K17, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, rg, rpg>>
  BY <1>WyLvMuBrUo3PwLW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <1>zmHrbE795QF4nkV, Location, Sizes, SMTT(10), Design DEF DInst, Inst, K17, NL, T_krs, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZS5G0RcLafy.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j, r)
  PROVE S1'
<2> USE ONLY <1>ZS5G0RcLafy, Sizes, Location, Design
<2>1. S1 /\ K1 /\ K2 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K2, V21_Inv_S1, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hok, hp, hw, iv, nx, rd, rg, rp, rt, rx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>WyLvMuBrUo3PwLW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <1>zmHrbE795QF4nkV, Location, Sizes, SMTT(10), Design DEF Active, DInst, ExpInst, ExpPage, InitInst, InitPage, Inst, K1, K2, NL, S1, T_nx, Xids, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jLCzTCfM1pY.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j, r)
  PROVE S5'
<2> USE ONLY <1>jLCzTCfM1pY, Sizes, Location, Design
<2>1. S5
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_S5, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
  BY <1>WyLvMuBrUo3PwLW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <1>zmHrbE795QF4nkV, Location, Sizes, SMTT(10), Design DEF DInst, Inst, NL, S5, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Vnt6Gdnv3b4.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j, r)
  PROVE S6'
<2> USE ONLY <1>Vnt6Gdnv3b4, Sizes, Location, Design
<2>1. S6 /\ K1 /\ K2 /\ T_nx
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K2, V21_Inv_S6, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, Types, BaseSafety, Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hok, hp, hw, iv, nx, rd, rg, rp, rt, rx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>WyLvMuBrUo3PwLW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <1>zmHrbE795QF4nkV, Location, Sizes, SMTT(10), Design DEF Active, DInst, ExpInst, ExpPage, InitInst, InitPage, Inst, K1, K2, NL, S6, T_nx, Xids, KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lCUJr96Tt7hp60zsUwFFmZxm.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j, r)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>lCUJr96Tt7hp60zsUwFFmZxm, Sizes, Location, Design
<2>1. QuarNeverMapped
  BY <1>g4u1JVDPkX, SMTT(10), V21_Inv_KStruct, V21_Inv_QuarNeverMapped, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, Types, Sizes, Location, Design
<2>2. UNCHANGED <<pst, rpg>>
  BY <1>WyLvMuBrUo3PwLW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <1>zmHrbE795QF4nkV, Location, Sizes, SMTT(10), Design DEF Active, DInst, Inst, NL, QuarNeverMapped, KPages, Sizes, Location, Design
\* T2M-END R2M0180_PP_PdDLaunchNextStepsA

\* T2M-SCOPE R2M0181_PdPAgg_DLaunchNext
\* T2M-BODY R2M0181_PdPAgg_DLaunchNext
\* T2M-LOCAL-VISIBILITY

<1>XUwem8GixbME1.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
  PROVE K6'
  BY ONLY <1>XUwem8GixbME1, Sizes, Location, Design, <1>a4Nfv3Q93lM, V21_Inv_K6 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>o5M7PPl5wqyPl.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
  PROVE K8'
  BY ONLY <1>o5M7PPl5wqyPl, Sizes, Location, Design, <1>xQ9kb7unjxc, V21_Inv_K8 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>HVmCTFcaheqC4f.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
  PROVE K10'
  BY ONLY <1>HVmCTFcaheqC4f, Sizes, Location, Design, <1>aDOAK50P9Jz7, V21_Inv_K10 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>CeZ9TL8Vwlyu4v.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
  PROVE K11'
  BY ONLY <1>CeZ9TL8Vwlyu4v, Sizes, Location, Design, <1>EfNnLOEdPvyW, V21_Inv_K11 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>EU6JHahyE3hCko.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
  PROVE K13'
  BY ONLY <1>EU6JHahyE3hCko, Sizes, Location, Design, <1>X7JeNyf7BQDu, V21_Inv_K13 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>r3guHDMmQlEiQ6.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
  PROVE K17'
  BY ONLY <1>r3guHDMmQlEiQ6, Sizes, Location, Design, <1>sY4WPKiwPLVS, V21_Inv_K17 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>aTdVH9o1CAI1U.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
  PROVE S1'
  BY ONLY <1>aTdVH9o1CAI1U, Sizes, Location, Design, <1>ZS5G0RcLafy, V21_Inv_S1 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>a6BUuBbfLF4Bk.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
  PROVE S5'
  BY ONLY <1>a6BUuBbfLF4Bk, Sizes, Location, Design, <1>jLCzTCfM1pY, V21_Inv_S5 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>LGZS0TCtb1kfF.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
  PROVE S6'
  BY ONLY <1>LGZS0TCtb1kfF, Sizes, Location, Design, <1>Vnt6Gdnv3b4, V21_Inv_S6 DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>QWzj6Nnh2DhnZZU6jXH1ldcvyZ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>QWzj6Nnh2DhnZZU6jXH1ldcvyZ, Sizes, Location, Design, <1>lCUJr96Tt7hp60zsUwFFmZxm, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design
\* T2M-END R2M0181_PdPAgg_DLaunchNext


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


<1>ve.        
 K3 /\ UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>> => K3'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, InFl, K3, Sizes, Location, Design
\* T2M-END R2M0332_PdPF_K3


<1>PH.        
 K2 /\ UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>> => K2'
 BY IsaT(10), Sizes, Location, Design DEF ExpInst, ExpPage, InitInst, InitPage, K2, Sizes, Location, Design
\* T2M-END R2M0357_PdPF_K2


<1>ui5.        
 K12 /\ UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>> => K12'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, K12, Sizes, Location, Design
\* T2M-END R2M0362_PdPF_K12


<1>pJ.        
 K4 /\ UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>> => K4'
 BY IsaT(10), Sizes, Location, Design DEF ExpPage, InitPage, K4, Sizes, Location, Design
\* T2M-END R2M0333_PdPF_K4


<1>agy0tgaoa.        
 QuarNoReg /\ UNCHANGED <<iv, led, pst>> => QuarNoReg'
 BY IsaT(10), Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
\* T2M-END R2M0351_PdPF_QuarNoReg


<1>Lfd00zBzWlb1z6BZBwZ.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, pr, pst, rd, rp, rt, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>Lfd00zBzWlb1z6BZBwZ, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF DLaunchNext, ghV, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>B2bwIwaqSMvgCH.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
 PROVE K2'
<2> USE ONLY <1>B2bwIwaqSMvgCH, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>Lfd00zBzWlb1z6BZBwZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oKXFijzuojMhTm.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
 PROVE K3'
<2> USE ONLY <1>oKXFijzuojMhTm, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>Lfd00zBzWlb1z6BZBwZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CPwnV9VG8KXGmD.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
 PROVE K4'
<2> USE ONLY <1>CPwnV9VG8KXGmD, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>Lfd00zBzWlb1z6BZBwZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RutKUKyD5Ui8HrA.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
 PROVE K12'
<2> USE ONLY <1>RutKUKyD5Ui8HrA, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>Lfd00zBzWlb1z6BZBwZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jy1eVScbmruUdPc.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
 PROVE K14'
<2> USE ONLY <1>jy1eVScbmruUdPc, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>Lfd00zBzWlb1z6BZBwZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kLAB3EbxPoEprY.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
 PROVE S4'
<2> USE ONLY <1>kLAB3EbxPoEprY, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>Lfd00zBzWlb1z6BZBwZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pKHCiyoaKsH3LdQmyrYFq4.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>pKHCiyoaKsH3LdQmyrYFq4, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>Lfd00zBzWlb1z6BZBwZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dE6bQFJTXugB2r8AUuAxu.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
 PROVE QuarNoReg'
<2> USE ONLY <1>dE6bQFJTXugB2r8AUuAxu, Sizes, Location, Design
<2>1. QuarNoReg
 BY V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, pst>>
 BY <1>Lfd00zBzWlb1z6BZBwZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>agy0tgaoa, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>i1gbCu7DHNdSB8ZgYbPaS.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLaunchNext(j,r), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>i1gbCu7DHNdSB8ZgYbPaS, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0460_PdPOff_DLaunchNext


<1> QED BY <1>fOs80FjgcRy84uEQyMU5CB9EFn64, <1>S7u3kynKNBIDa9IRHTm82XVF7uahGyOG3Ptt, <1>XUwem8GixbME1, <1>o5M7PPl5wqyPl, <1>CeZ9TL8Vwlyu4v, <1>HVmCTFcaheqC4f, <1>EU6JHahyE3hCko, <1>r3guHDMmQlEiQ6, <1>aTdVH9o1CAI1U, <1>a6BUuBbfLF4Bk, <1>LGZS0TCtb1kfF, <1>QWzj6Nnh2DhnZZU6jXH1ldcvyZ, <1>B2bwIwaqSMvgCH, <1>oKXFijzuojMhTm, <1>CPwnV9VG8KXGmD, <1>RutKUKyD5Ui8HrA, <1>jy1eVScbmruUdPc, <1>kLAB3EbxPoEprY, <1>pKHCiyoaKsH3LdQmyrYFq4, <1>dE6bQFJTXugB2r8AUuAxu, <1>ql97qcTJNrLYrMFF5tYhEiGmqYh, <1>i1gbCu7DHNdSB8ZgYbPaS, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_DLaunchNext_01_01, Part_DLaunchNext_01_02, Part_DLaunchNext_02_01, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_DLaunchNext
HIDE DEF V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_DLaunchNext ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, DLaunchNext(j,r), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, NEW v \in Rq, Sizes, Location, Design, PinInv, DLaunchNext(u,v), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_DLaunchNext_01_01, Part_DLaunchNext_01_02, Part_DLaunchNext_02_01, Part_DLaunchNext_02_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_DLaunchNext_01_01, Part_DLaunchNext_01_02, Part_DLaunchNext_02_01, Part_DLaunchNext_02_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, DLaunchNext(j,r), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, DLaunchNext(j,r), ShapeKeep_DLaunchNext, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
