---- MODULE PdFinalAction_DSinfoBadLen ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_5454ba58ce6cf21d, PdFinalInvProjections, PdFinalEffects, PdSharedRefCounts, PdFunctionFrames, PdShapeBase, PdActionSlice_DSinfoBadLen_04

\* Complete original body PdFinalGroup_DSinfoBadLen_04 SHA 52a86821bcb6a03bb13065fd34403a3f403f647d39b9abcaa0967db6d029ce3f
HIDE DEF AuxType_5454ba58ce6cf21d, DomainEffect_DSinfoBadLen, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_DSinfoBadLen_01_01, Part_DSinfoBadLen_01_02, Part_DSinfoBadLen_02_01, Part_DSinfoBadLen_02_02, Part_DSinfoBadLen_03_01, Part_DSinfoBadLen_03_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeEffect_DSinfoBadLen, ShapeImpliesTags, ShapeInitiatorLocation, ShapeKeep_DSinfoBadLen, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K11, V21_Inv_K13, V21_Inv_K15, V21_Inv_K16, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_S5, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_MsgDomainTransfer, V21_PEndNet, V22_FunctionEta, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_MatrixEta, V22_PostSharedRefZero, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_Off, V22_SF_RefCount, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SourcePrivate, V22_SF_SquarFrame, V22_SF_Status, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedRefZero, V22_T_alive, V22_T_crep, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sfly, V22_T_sled, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Group_DSinfoBadLen_04 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE (PrivateMapOwner)' /\ (EntryQuarantineDisjoint)' /\ (K2)' /\ (S1)' /\ (S6)' /\ (OneReply)' /\ (K17)' /\ (K14)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (GenFiltered)' /\ (ReplyTruth)' /\ (SharedImmutable)' /\ (P_B2OffInit)' /\ (MsgXDomain)'
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

           PE_PhType == ph \in [Inst -> [Rq -> PhSet]]


           PE_NxType == nx \in 1..(MX+1)


           PE_Types == PE_PhType /\ PE_NxType



           PE_Domains == \A x \in Xids : x < nx =>
            /\ xr[x] \in Rq
            /\ ExpInst(x) \in Inst
            /\ (InitPage(x) # 0 => InitInst(x) \in Inst)



           PE_Effect(j,r) ==
            /\ ph' = [ph EXCEPT ![j][r] = "end"]
            /\ UNCHANGED <<nx, rg, rx, xr, xg, xk, xp, xd, xsrc, xdst>>



           PE_Monotone == \A i \in Inst, s \in Rq :
            /\ (ph[i][s] # "none" => ph'[i][s] # "none")
            /\ (ph'[i][s] \notin {"none","end"} => ph'[i][s] = ph[i][s])


           \* T2M-LOCAL-VISIBILITY

           Z0q_o_5gXYc9 == \E x \in Xids : x < nx /\ iv[x] = "none" /\ iv' = [iv EXCEPT ![x] = "nopost"]



<1> HIDE DEF XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Ex6xsGb, ez8hZbQN7k, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, PE_PhType, PE_NxType, PE_Types, PE_Domains, PE_Effect, PE_Monotone, Z0q_o_5gXYc9

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


<1>KLYtsevIiNtkqWBoujK.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
 PROVE ez8hZbQN7k /\ UNCHANGED xsrc
<2> USE ONLY <1>KLYtsevIiNtkqWBoujK, Sizes, Location, Design
<2>1. Ex6xsGb /\ (\A x \in Xids : xk[x] # "none" => xp[x] \in PInst /\ xd[x] \in DInst)
 BY <1>rC6T, <1>vx9OnCyVIC, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>HsRNXPeY1C, Sizes, Design, SMTT(10), Location DEF ez8hZbQN7k, Bump, DSinfoBadLen, FreeOrDrain, IsD, KPinned, KSlots, Msg, NTok, PageTo, PinBlocks, Xids, instV, kV, rtV, PInst, Ex6xsGb, Sizes, Location, Design


<1>jw4B35AgPBk3E76hPN6oz8zc24zsX9v07WrVM.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r) /\ SFollow
 PROVE EntryQuarantineDisjoint'
 BY ONLY <1>jw4B35AgPBk3E76hPN6oz8zc24zsX9v07WrVM, Sizes, Location, Design, <1>KLYtsevIiNtkqWBoujK, <1>IGL3qfJM DEF Sizes, Location, Design


<1>nOGiGLPMGhX0vTpSxhFjSDPQ3HITg.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r) /\ SFollow
 PROVE PrivateMapOwner'
 BY ONLY <1>nOGiGLPMGhX0vTpSxhFjSDPQ3HITg, Sizes, Location, Design, <1>KLYtsevIiNtkqWBoujK, <1>YccZP1lf DEF Sizes, Location, Design


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

<1>nx9rWhtLxWheF6ICPEy12Z5MQNuB.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>nx9rWhtLxWheF6ICPEy12Z5MQNuB, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>nx9rWhtLxWheF6ICPEy12Z5MQNuB, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF DSinfoBadLen, instV, kV, rtV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BkNFj2UlR3WYv54kRei5zK.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>BkNFj2UlR3WYv54kRei5zK, Sizes, Location, Design, DomainKeep_DSinfoBadLen, SMTT(5)
\* T2M-END R2M0284_PdPDomain_DSinfoBadLen


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


<1>Af.        
 S2 /\ UNCHANGED <<nx, xg, xr>> => S2'
 BY IsaT(10), Sizes, Location, Design DEF S2, Sizes, Location, Design
\* T2M-END R2M0342_PdPF_S2


<1>BBQUQLHXJe.        
 ReplyTruth /\ UNCHANGED <<crep, dsucc>> => ReplyTruth'
 BY IsaT(10), Sizes, Location, Design DEF ReplyTruth, Sizes, Location, Design
\* T2M-END R2M0349_PdPF_ReplyTruth


<1>yYI.        
 K14 /\ UNCHANGED <<gen, kfly, kpin, krs>> => K14'
 BY IsaT(10), Sizes, Location, Design DEF K14, Sizes, Location, Design
\* T2M-END R2M0355_PdPF_K14


<1>ujEUqBpYoFz.        
 GenFiltered /\ UNCHANGED <<gbad>> => GenFiltered'
 BY IsaT(10), Sizes, Location, Design DEF GenFiltered, Sizes, Location, Design
\* T2M-END R2M0347_PdPF_GenFiltered


<1>wLc6EK3ppJGkOjVTHz1O.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, kfly, kpin, krs, nfail, nx, torn, xg, xr>>
 BY ONLY <1>wLc6EK3ppJGkOjVTHz1O, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF DSinfoBadLen, instV, kV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CQ99TbfQyTbdQIe3.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE K14'
<2> USE ONLY <1>CQ99TbfQyTbdQIe3, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>wLc6EK3ppJGkOjVTHz1O, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>x8MPRVAAeqc6DbJ.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE S2'
<2> USE ONLY <1>x8MPRVAAeqc6DbJ, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>wLc6EK3ppJGkOjVTHz1O, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kFQQlYvfVb9wWgM.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE S3'
<2> USE ONLY <1>kFQQlYvfVb9wWgM, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>wLc6EK3ppJGkOjVTHz1O, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bpOmiGMu9PjsN0Q.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE S4'
<2> USE ONLY <1>bpOmiGMu9PjsN0Q, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>wLc6EK3ppJGkOjVTHz1O, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CKYx01yi2TRsuJae41XLKRSq.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>CKYx01yi2TRsuJae41XLKRSq, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>wLc6EK3ppJGkOjVTHz1O, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EX5A93s3jjmvZHpFLo2jUMm.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>EX5A93s3jjmvZHpFLo2jUMm, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>wLc6EK3ppJGkOjVTHz1O, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0376_PdPFrames_DSinfoBadLen


<1>X9WbCmRzcWxfkbhcmTNPxh.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>X9WbCmRzcWxfkbhcmTNPxh, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0468_PdPOff_DSinfoBadLen


<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>S6Z6rLBco7pL.        
  ASSUME K17, c02OO, UNCHANGED <<kpin,krs,rg,rpg>>,
         \A j \in Inst, u \in Rq : ph[j][u] \in {"run","ovl","end"} => ph'[j][u] \in {"run","ovl","end"}
  PROVE K17'
<2> USE ONLY <1>S6Z6rLBco7pL, Sizes, Location, Design
<2>1. SUFFICES ASSUME NEW j \in Inst, NEW s \in KSlots,
                     NEW e \in krs'[j][s], kpin'[j][s], e[4] \in {2,3}
                PROVE rg'[j][e[1]] > e[2] \/
                  (rg'[j][e[1]] = e[2] /\ ph'[j][e[1]] \in {"run","ovl","end"} /\ rpg'[j][e[1]] # e[3])
  BY SMTT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
<2>2. kpin[j][s] /\ e \in krs[j][s] /\ e[1] \in Rq
  BY <2>1, SMTT(10), Sizes, Location, Design DEF c02OO, Sizes, Location, Design
<2>3. rg[j][e[1]] > e[2] \/
       (rg[j][e[1]] = e[2] /\ ph[j][e[1]] \in {"run","ovl","end"} /\ rpg[j][e[1]] # e[3])
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1112_PdRDLegacy_PP_PdK17PhaseClosure


<1>THFFQ3HpENmgdOG.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DSinfoBadLen(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>THFFQ3HpENmgdOG, Sizes, Location, Design, ZenonT(5) DEF DSinfoBadLen, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1263_PdRDLegacy_PP_PdDSinfoBadLenFrames

\* T2M-SCOPE R2M1264_PdRDLegacy_PP_PdCell_DSinfoBadLen_K17

<1>ecxSwx0bU5BrD.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE K17'
<2> USE ONLY <1>ecxSwx0bU5BrD, Sizes, Location, Design
<2>1. K17 /\ c02OO /\ AydA /\ C4fb /\ a1R5 /\ JjZ1PO
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K17, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<kpin,krs,rg,rpg>>
  BY <1>THFFQ3HpENmgdOG, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A a \in Inst, u \in Rq : ph[a][u] \in {"run","ovl","end"} => ph'[a][u] \in {"run","ovl","end"}
  BY <2>1, SMTT(10), Sizes, Location, Design DEF DSinfoBadLen, AydA, C4fb, JjZ1PO, a1R5, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>S6Z6rLBco7pL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1264_PdRDLegacy_PP_PdCell_DSinfoBadLen_K17


<1>iQGAp6rWOISLd.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, IsD(j), Active(j,r)
  PROVE rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
<2> USE ONLY <1>iQGAp6rWOISLd, Sizes, Location, Design
<2>1. K8 /\ K9 /\ j \in DInst
  BY Sizes, SMTT(10), V21_Inv_K8, V21_Inv_K9, Location, Design DEF IsD, Inst, DInst, NL, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design


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


<1>ue6XYKmaOgBexu54sr.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE OneReply'
<2> USE ONLY <1>ue6XYKmaOgBexu54sr, Sizes, Location, Design
<2>1. OneReply /\ Q1j7VI
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_OneReply, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, Sizes, Location, Design
<2>2. IsD(j) /\ Active(j,r) /\ UNCHANGED crep
        /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(drep[r][rg[j][r]])]
  BY <1>THFFQ3HpENmgdOG, SMTT(10), Sizes, Location, Design DEF Active, DSinfoBadLen, Sizes, Location, Design
<2>3. rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
  BY <2>2, <1>iQGAp6rWOISLd, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>OkHaBqshrpAuN, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1265_PdRDLegacy_PP_PdCell_DSinfoBadLen_OneReply


<1>JVZlQLz67CH6.        
 ASSUME PinInv
 PROVE PE_Types
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY <1>JVZlQLz67CH6, V22_T_nx, V22_T_ph, SMTT(5) DEF PE_NxType, PE_PhType, PE_Types

\* T2M-LOCAL-VISIBILITY

<1>vsvT20zUzXQavt.        
 ASSUME PinInv
 PROVE PE_Domains
<2> USE ONLY <1>vsvT20zUzXQavt, Sizes, Location, Design
<2>1. K2 /\ PE_NxType
 BY <1>JVZlQLz67CH6, SMTT(10), V21_Inv_K2, Sizes, Location, Design DEF PE_Types, Sizes, Location, Design
<2>2. \A p \in Pages : Loc(p) \in Inst
 BY Location, SMTT(10), Sizes, Design DEF KPages, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF PE_Domains, K2, PE_NxType, Xids, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>LJJ34B5zOk2.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, PE_Effect(j,r)
 PROVE PE_Monotone
<2> USE ONLY <1>LJJ34B5zOk2, Sizes, Location, Design
<2>1. PE_PhType
 BY <1>JVZlQLz67CH6, SMTT(10), Sizes, Location, Design DEF PE_Types, Sizes, Location, Design
<2>2. \A i \in Inst, s \in Rq :
 ph'[i][s] = IF i=j /\ s=r THEN "end" ELSE ph[i][s]
 BY <2>1, SMTT(10), Sizes, Location, Design DEF PE_Effect, PE_PhType, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF PE_Monotone, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>xUO2wrsz.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, PE_Effect(j,r)
 PROVE S1' /\ S6'
<2> USE ONLY <1>xUO2wrsz, Sizes, Location, Design
<2>1. S1 /\ S6 /\ PE_Domains
 BY <1>vsvT20zUzXQavt, SMTT(10), V21_Inv_S1, V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. PE_Monotone BY <1>LJJ34B5zOk2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<nx, rg, rx, xr, xg, xk, xp, xd, xsrc, xdst>>
 BY SMTT(10), Sizes, Location, Design DEF PE_Effect, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF PE_Domains, PE_Monotone, S1, S6, Active, ExpInst, InitInst, InitPage, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>g1i9flU3tF59.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
 PROVE S1'
<2> USE ONLY <1>g1i9flU3tF59, Sizes, Location, Design
<2>1. PE_Effect(j,r)
 BY SMTT(10), Sizes, Location, Design DEF DSinfoBadLen, PE_Effect, rtV, instV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>xUO2wrsz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1266_PdRDLegacy_PP_PdCell_DSinfoBadLen_S1

\* T2M-SCOPE R2M1267_PdRDLegacy_PP_PdCell_DSinfoBadLen_S6

<1>Q24JpKRTJKSo.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
 PROVE S6'
<2> USE ONLY <1>Q24JpKRTJKSo, Sizes, Location, Design
<2>1. PE_Effect(j,r)
 BY SMTT(10), Sizes, Location, Design DEF DSinfoBadLen, PE_Effect, rtV, instV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>xUO2wrsz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1267_PdRDLegacy_PP_PdCell_DSinfoBadLen_S6


<1>HVcqs2.        
  ASSUME K2, fr1A, SHJS, Z0q_o_5gXYc9, UNCHANGED <<gen, hd, hok, hp, hw, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  PROVE K2'
  BY ONLY <1>HVcqs2, Sizes, Location, Design, SMTT(5) DEF Z0q_o_5gXYc9, fr1A, SHJS, ExpInst, ExpPage, Gens, InitInst, InitPage, K2, NTok, PLens, Pages, Rq, Xids, KPages, Sizes, Location, Design
\* T2M-END R2M1245_PdRDLegacy_PP_PdNP_NoPost_K2

\* T2M-SCOPE R2M1247_PdRDLegacy_PP_PdNP_NoPostPointValues

<1>XDeYAMMwjbH.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE Z0q_o_5gXYc9
<2> USE ONLY <1>XDeYAMMwjbH, Sizes, Location, Design
<2>1. K12
  BY SMTT(10), V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. PICK m \in net : m.t = "sinfo" /\ m.x \in Xids /\ iv[m.x] = "none"
          /\ iv' = [iv EXCEPT ![m.x] = "nopost"]
  BY SMTT(10), Sizes, Location, Design DEF DSinfoBadLen, Sizes, Location, Design
<2>3. m.x < nx
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Z0q_o_5gXYc9, Sizes, Location, Design
\* T2M-END R2M1277_PdRDLegacy_PP_PdD2DSinfoNoPost

\* T2M-SCOPE R2M1278_PdRDLegacy_PP_PdD2DSinfoBadLen_K2

<1>WczkI56c4Dd8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE K2'
<2> USE ONLY <1>WczkI56c4Dd8, Sizes, Location, Design
<2>1. K2 /\ fr1A /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. Z0q_o_5gXYc9 /\ UNCHANGED <<gen,hd,hok,hp,hw,nx,xd,xdst,xg,xk,xlt,xnt,xp,xr,xsrc,xst>>
  BY <1>XDeYAMMwjbH, <1>THFFQ3HpENmgdOG, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>HVcqs2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1278_PdRDLegacy_PP_PdD2DSinfoBadLen_K2

\* T2M-SCOPE R2M1279_PdRDLegacy_PP_PdD2DSinfoBadLen_K3

<1>oYwHvLhaHFlVWR.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
  PROVE K2'
  BY ONLY <1>oYwHvLhaHFlVWR, Sizes, Location, Design, <1>WczkI56c4Dd8, V21_Inv_K2 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>eDAKqufLfh9Ti8V.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
  PROVE K17'
  BY ONLY <1>eDAKqufLfh9Ti8V, Sizes, Location, Design, <1>ecxSwx0bU5BrD, V21_Inv_K17 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>d9sIILFgxi3Fz2.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
  PROVE S1'
  BY ONLY <1>d9sIILFgxi3Fz2, Sizes, Location, Design, <1>g1i9flU3tF59, V21_Inv_S1 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>kZPux7StCGz1nI.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
  PROVE S6'
  BY ONLY <1>kZPux7StCGz1nI, Sizes, Location, Design, <1>Q24JpKRTJKSo, V21_Inv_S6 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>zPMDcpuPIkW1jn2er59i.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r), SFollow
  PROVE OneReply'
  BY ONLY <1>zPMDcpuPIkW1jn2er59i, Sizes, Location, Design, <1>ue6XYKmaOgBexu54sr, V21_Inv_OneReply DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>nOGiGLPMGhX0vTpSxhFjSDPQ3HITg, <1>jw4B35AgPBk3E76hPN6oz8zc24zsX9v07WrVM, <1>oYwHvLhaHFlVWR, <1>d9sIILFgxi3Fz2, <1>kZPux7StCGz1nI, <1>zPMDcpuPIkW1jn2er59i, <1>eDAKqufLfh9Ti8V, <1>CQ99TbfQyTbdQIe3, <1>x8MPRVAAeqc6DbJ, <1>kFQQlYvfVb9wWgM, <1>bpOmiGMu9PjsN0Q, <1>CKYx01yi2TRsuJae41XLKRSq, <1>EX5A93s3jjmvZHpFLo2jUMm, <1>nx9rWhtLxWheF6ICPEy12Z5MQNuB, <1>X9WbCmRzcWxfkbhcmTNPxh, <1>BkNFj2UlR3WYv54kRei5zK, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_DSinfoBadLen_01_01, Part_DSinfoBadLen_01_02, Part_DSinfoBadLen_02_01, Part_DSinfoBadLen_02_02, Part_DSinfoBadLen_03_01, Part_DSinfoBadLen_03_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_DSinfoBadLen
HIDE DEF DomainKeep_DSinfoBadLen, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K12, V21_Inv_K14, V21_Inv_K17, V21_Inv_K2, V21_Inv_K8, V21_Inv_K9, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S6, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_Sentry, V22_SF_SharedOrigin, V22_SF_SourceShared, V22_SF_Squar, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_nx, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_DSinfoBadLen ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, DSinfoBadLen(j,r), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, NEW v \in Rq, Sizes, Location, Design, PinInv, DSinfoBadLen(u,v), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_DSinfoBadLen_01_01, Part_DSinfoBadLen_01_02, Part_DSinfoBadLen_02_01, Part_DSinfoBadLen_02_02, Part_DSinfoBadLen_03_01, Part_DSinfoBadLen_03_02, Group_DSinfoBadLen_04, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_DSinfoBadLen_01_01, Part_DSinfoBadLen_01_02, Part_DSinfoBadLen_02_01, Part_DSinfoBadLen_02_02, Part_DSinfoBadLen_03_01, Part_DSinfoBadLen_03_02, Group_DSinfoBadLen_04, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, DSinfoBadLen(j,r), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, DSinfoBadLen(j,r), ShapeKeep_DSinfoBadLen, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
