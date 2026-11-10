---- MODULE PdFinalAction_PHit ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PHit_02

\* Complete original body PdShape_PHit SHA 00a5875444d2b73035b4a736ec4d03f7d3cce32fda5f534b1ad0637260998c9c
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_PHit_01_01, Part_PHit_01_02, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
LEMMA ShapeEffect_PHit ==
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, Sizes, Design, PHit(i,r,p)
 PROVE net'=net
 BY ONLY PHit(i,r,p), Sizes, Design, SMTT(5) DEF PHit, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_PHit ==
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, Sizes, Design, IndInv, MessageShape, PHit(i,r,p)
 PROVE MessageShape'
 BY ONLY Sizes, Design, PHit(i,r,p), MessageShape, ShapeEffect_PHit, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_PHit SHA 7c82d2f6b0b6f9f4fd1f0838b8625dbd4c654d5a8e948ee1379c218b9f5861e8
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_PHit, ShapeNetFrame
THEOREM DomainKeep_PHit ==
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, Sizes, Location, Design, PinInv, PHit(i,r,p)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, PHit(i,r,p), ShapeEffect_PHit
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_PHit_02 SHA aa70d0e8367015b76b11d24c2c2a7c9076125362140e4bfed41c3d87a651f6f2
USE DEF P_PagePoolsDisjoint, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K8, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_SFollowStatic, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_PHit, V21_Inv_MsgXDomain
THEOREM Group_PHit_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE (QuarNeverMapped)' /\ (NoFreeUnderRead)' /\ (QuarNoReg)' /\ (NoEvictUnderRDMA)' /\ (SharedImmutable)' /\ (HitIdentity)' /\ (P_SI4)' /\ (SI7)' /\ (SI8)' /\ (PrivateMapOwner)' /\ (EntryQuarantineDisjoint)' /\ (QuietConservation)' /\ (P_SI1)' /\ (P_SI3)' /\ (P_SI5)' /\ (P_SI6)' /\ (MsgXDomain)' /\ (P_B2OffInit)'
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


           QT_spst == spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]

           QT_sown == sown \in [SPages -> 0..NR]

           QT_sgen == sgen \in [SPages -> 0..MG]

           QT_skey == skey \in [SPages -> 0..2]

           QT_swrite == swrite \in [SPages -> BOOLEAN]

           QT_sdata == sdata \in [SPages -> BOOLEAN]

           QT_sready == sready \in [SPages -> BOOLEAN]

           QT_sprefc == sprefc \in [SPages -> 0..(NPI*NR*MG+MX)]

           QT_smap == smap \in [PInst -> [Rq -> {0} \cup SPages]]

           QT_schoice == schoice \in [PInst -> [Rq -> BOOLEAN]]

           QT_rpgS == rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)

           QT_xsrcS == xsrcS \in [Xids -> SUBSET SPages]

           QT_xsrcP == xsrcP \in [Xids -> SUBSET SPages]

           QT_sentry == sentry \in SUBSET Xids

           QT_squar == squar \in SUBSET (Xids \X SPages)

           QT_xprefixOK == xprefixOK \in [Xids -> BOOLEAN]

           QT_dpreOK == dpreOK \in [Pages -> BOOLEAN]

           QT_hitSeen == hitSeen \in BOOLEAN

           QT_dedupSeen == dedupSeen \in BOOLEAN

           QT_Base == /\ rg \in [Inst -> [Rq -> 0..MG]] /\ ph \in [Inst -> [Rq -> PhSet]]
            /\ kpin \in [Inst -> [KSlots -> BOOLEAN]] /\ krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0,1,2,3,4})]]
            /\ xdst \in [Xids -> 0..NP]

           \* T2M-LOCAL-VISIBILITY

           QHG_Key(i,r,p) == skey[p]=STok(r,rg[i][r])

           QHG_Frame == UNCHANGED <<skey,rg>>

           QHG_PostKey(i,r,p) == skey'[p]=STok(r,rg'[i][r])

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Ex6xsGb, QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, QT_Base, QHG_Key, QHG_Frame, QHG_PostKey

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


<1>xYO0Y0OkPuXO4BVKkAHU9NN3MOsoWNW9wE.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>xYO0Y0OkPuXO4BVKkAHU9NN3MOsoWNW9wE, Sizes, Location, Design
<2>1. EntryQuarantineDisjoint /\ STypeOK /\ Ex6xsGb
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF PHit, EntryQuarantineDisjoint, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, Sizes, Location, Design


<1>eSUFv2GeVt1kYwrmdQDh57YO9O.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE PrivateMapOwner'
<2> USE ONLY <1>eSUFv2GeVt1kYwrmdQDh57YO9O, Sizes, Location, Design
<2>1. PrivateMapOwner /\ STypeOK /\ Ex6xsGb
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF PHit, PrivateMapOwner, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, Sizes, Location, Design


<1>DFtNmVA6YCHqGp.        
  ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
  PROVE MsgXDomain'
 BY ONLY <1>DFtNmVA6YCHqGp, Sizes, Location, Design, DomainKeep_PHit, SMTT(5)
\* T2M-END R2M0307_PdPDomain_PHit


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>agy0tgaoa.        
 QuarNoReg /\ UNCHANGED <<iv, led, pst>> => QuarNoReg'
 BY IsaT(10), Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
\* T2M-END R2M0351_PdPF_QuarNoReg


<1>CHHI4E3y3uZD9LA.        
 QuarNeverMapped /\ UNCHANGED <<ph, pst, rpg>> => QuarNeverMapped'
 BY IsaT(10), Sizes, Location, Design DEF Active, QuarNeverMapped, Sizes, Location, Design
\* T2M-END R2M0350_PdPF_QuarNeverMapped


<1>YC9.        
 SI7 /\ UNCHANGED <<iv, sentry>> => SI7'
 BY IsaT(10), Sizes, Location, Design DEF SI7, Sizes, Location, Design
\* T2M-END R2M0387_PdPF_SI7

\* T2M-SCOPE R2M0388_PdPF_SI8

<1>aMI.        
 SI8 /\ UNCHANGED <<sentry, squar, xk, xsrcS, xst>> => SI8'
 BY IsaT(10), Sizes, Location, Design DEF SI8, Sizes, Location, Design
\* T2M-END R2M0388_PdPF_SI8

\* T2M-SCOPE R2M0512_PdQBase

<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


<1>unKEqtNGzAKBBp6.        
 NoFreeUnderRead /\ UNCHANGED <<kpin, krs, pgn, pr, pst, sgen, sown, spst>> => NoFreeUnderRead'
 BY P_PagePoolsDisjoint, IsaT(10), Sizes, Location, Design DEF KHeld, NoFreeUnderRead, SHeld, Sizes, Location, Design
\* T2M-END R2M0406_PdPF_NoFreeUnderRead

\* T2M-SCOPE R2M0407_PdPF_NoEvictUnderRDMA

<1>Uo4zrIitxFf46gUp.        
 NoEvictUnderRDMA /\ UNCHANGED <<hw, sentry, sgen, skey, sown, spst, squar, xg, xr, xsrcP, xsrcS>> => NoEvictUnderRDMA'
 BY IsaT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, SAccess, Sizes, Location, Design
\* T2M-END R2M0407_PdPF_NoEvictUnderRDMA

\* T2M-SCOPE R2M0409_PdPF_SI4

<1>xas.        
 P_SI4 /\ UNCHANGED <<hw, iv, nx, sentry, skey, spst, squar, xg, xk, xp, xprefixOK, xr, xsrc, xsrcP, xsrcS, xst>> => P_SI4'
 BY IsaT(10), Sizes, Location, Design DEF P_SI4, SI4, Sizes, Location, Design
\* T2M-END R2M0409_PdPF_SI4


<1>sKxSSes4t7WEt3s.        
 SharedImmutable /\ UNCHANGED <<hw, sdata, spst, sready, swrite, xdst>> => SharedImmutable'
 BY IsaT(10), Sizes, Location, Design DEF InFl, NoWriteInto, SharedImmutable, Writing, Sizes, Location, Design
\* T2M-END R2M0408_PdPF_SharedImmutable


<1>xQyCTI6kYpAt.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sdata, sentry, sfly, sgen, skey, sled, sown, spst, squar, sready, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xprefixOK, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>xQyCTI6kYpAt, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kjNCWePJDOwBCdmsSg5W.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE QuarNeverMapped'
<2> USE ONLY <1>kjNCWePJDOwBCdmsSg5W, Sizes, Location, Design
<2>1. QuarNeverMapped
 BY V21_Inv_QuarNeverMapped, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ph, pst, rpg>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>CHHI4E3y3uZD9LA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VfGYZ0MraiE322WlZnXs.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>VfGYZ0MraiE322WlZnXs, Sizes, Location, Design
<2>1. NoFreeUnderRead
 BY V21_Inv_NoFreeUnderRead, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, pgn, pr, pst, sgen, sown, spst>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>unKEqtNGzAKBBp6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>quhDyNXNgxEVgq.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE QuarNoReg'
<2> USE ONLY <1>quhDyNXNgxEVgq, Sizes, Location, Design
<2>1. QuarNoReg
 BY V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, pst>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>agy0tgaoa, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jIBi60s6HDF58ZAWJLpuW.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>jIBi60s6HDF58ZAWJLpuW, Sizes, Location, Design
<2>1. NoEvictUnderRDMA
 BY V21_Inv_NoEvictUnderRDMA, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, sentry, sgen, skey, sown, spst, squar, xg, xr, xsrcP, xsrcS>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Uo4zrIitxFf46gUp, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yLQnDo9uJvLNDaJymeN7.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE SharedImmutable'
<2> USE ONLY <1>yLQnDo9uJvLNDaJymeN7, Sizes, Location, Design
<2>1. SharedImmutable
 BY V21_Inv_SharedImmutable, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, sdata, spst, sready, swrite, xdst>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sKxSSes4t7WEt3s, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KjrHTZUd.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE P_SI4'
<2> USE ONLY <1>KjrHTZUd, Sizes, Location, Design
<2>1. P_SI4
 BY V21_Inv_P_SI4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, iv, nx, sentry, skey, spst, squar, xg, xk, xp, xprefixOK, xr, xsrc, xsrcP, xsrcS, xst>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>xas, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kyoSLnAr.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE SI7'
<2> USE ONLY <1>kyoSLnAr, Sizes, Location, Design
<2>1. SI7
 BY V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, sentry>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>YC9, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D2rf4auR.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE SI8'
<2> USE ONLY <1>D2rf4auR, Sizes, Location, Design
<2>1. SI8
 BY V21_Inv_SI8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<sentry, squar, xk, xsrcS, xst>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aMI, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0410_PdPFrames_PHit

\* T2M-SCOPE R2M0489_PdPOff_PHit

<1>MXf5UWcLosaOyV.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE P_B2OffInit'
 BY ONLY <1>MXf5UWcLosaOyV, Sizes, Location, Design, SMTT(10) DEF PHit, P_B2OffInit, Sizes, Location, Design
\* T2M-END R2M0489_PdPOff_PHit


<1>fZ0t.         PinInv => STypeOK /\ CoreTypeOK /\ QT_Base /\ QT_spst /\ QT_sown /\ QT_sgen /\ QT_skey /\ QT_swrite /\ QT_sdata /\ QT_sready /\ QT_sprefc /\ QT_smap /\ QT_schoice /\ QT_rpgS /\ QT_xsrcS /\ QT_xsrcP /\ QT_sentry /\ QT_squar /\ QT_xprefixOK /\ QT_dpreOK /\ QT_hitSeen /\ QT_dedupSeen
<2> HIDE DEF CoreTypeOK, STypeOK
<2>part0. PinInv => STypeOK
 BY ONLY V21_Inv_STypeOK, Sizes, Location, Design, SMTT(5)
<2>part1. PinInv => CoreTypeOK
 BY ONLY V21_Inv_BaseTypeOK, Sizes, Location, Design, SMTT(5)
<2>part2. PinInv => QT_Base
 BY ONLY V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_xdst, SMTT(5) DEF QT_Base
<2>part3. PinInv => QT_spst
 BY ONLY V22_T_spst, SMTT(5) DEF QT_spst
<2>part4. PinInv => QT_sown
 BY ONLY V22_T_sown, SMTT(5) DEF QT_sown
<2>part5. PinInv => QT_sgen
 BY ONLY V22_T_sgen, SMTT(5) DEF QT_sgen
<2>part6. PinInv => QT_skey
 BY ONLY V22_T_skey, SMTT(5) DEF QT_skey
<2>part7. PinInv => QT_swrite
 BY ONLY V22_T_swrite, SMTT(5) DEF QT_swrite
<2>part8. PinInv => QT_sdata
 BY ONLY V22_T_sdata, SMTT(5) DEF QT_sdata
<2>part9. PinInv => QT_sready
 BY ONLY V22_T_sready, SMTT(5) DEF QT_sready
<2>part10. PinInv => QT_sprefc
 BY ONLY V22_T_sprefc, SMTT(5) DEF QT_sprefc
<2>part11. PinInv => QT_smap
 BY ONLY V22_T_smap, SMTT(5) DEF QT_smap
<2>part12. PinInv => QT_schoice
 BY ONLY V22_T_schoice, SMTT(5) DEF QT_schoice
<2>part13. PinInv => QT_rpgS
 BY ONLY V22_T_rpgS, SMTT(5) DEF QT_rpgS
<2>part14. PinInv => QT_xsrcS
 BY ONLY V22_T_xsrcS, SMTT(5) DEF QT_xsrcS
<2>part15. PinInv => QT_xsrcP
 BY ONLY V22_T_xsrcP, SMTT(5) DEF QT_xsrcP
<2>part16. PinInv => QT_sentry
 BY ONLY V22_T_sentry, SMTT(5) DEF QT_sentry
<2>part17. PinInv => QT_squar
 BY ONLY V22_T_squar, SMTT(5) DEF QT_squar
<2>part18. PinInv => QT_xprefixOK
 BY ONLY V22_T_xprefixOK, SMTT(5) DEF QT_xprefixOK
<2>part19. PinInv => QT_dpreOK
 BY ONLY V22_T_dpreOK, SMTT(5) DEF QT_dpreOK
<2>part20. PinInv => QT_hitSeen
 BY ONLY V22_T_hitSeen, SMTT(5) DEF QT_hitSeen
<2>part21. PinInv => QT_dedupSeen
 BY ONLY V22_T_dedupSeen, SMTT(5) DEF QT_dedupSeen
<2>qed. QED BY ONLY <2>part0, <2>part1, <2>part2, <2>part3, <2>part4, <2>part5, <2>part6, <2>part7, <2>part8, <2>part9, <2>part10, <2>part11, <2>part12, <2>part13, <2>part14, <2>part15, <2>part16, <2>part17, <2>part18, <2>part19, <2>part20, <2>part21, SMTT(5)

\* T2M-END R2M0513_PdQTypes


<1>jkaonkZFps.        
 ASSUME NEW i, NEW r, NEW p, QHG_Key(i,r,p), QHG_Frame
 PROVE QHG_PostKey(i,r,p)
 BY ONLY <1>jkaonkZFps, Sizes, Location, Design, SMTT(10) DEF QHG_Key, QHG_Frame, QHG_PostKey, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RIYSqWI.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE QHG_Frame /\ QHG_Key(i,r,p)
 BY ONLY <1>RIYSqWI, Sizes, Location, Design, SMTT(10) DEF PHit, basevars, recV, QHG_Frame, QHG_Key, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OHAOuHoOLAUK.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE HitIdentity'
<2> USE ONLY <1>OHAOuHoOLAUK, Sizes, Location, Design
<2>1. HitIdentity /\ QT_rpgS /\ QT_smap
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QHG_Frame /\ QHG_Key(i,r,p)
 BY <1>RIYSqWI, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QHG_PostKey(i,r,p)
 BY ONLY <2>2, <1>jkaonkZFps, IsaT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. B2 /\ ph[i][r] \in {"pre","ready"} /\ spst[p]="shared"
 /\ smap'=[smap EXCEPT ![i][r]=p] /\ rpgS'=rpgS \cup {SH(i,r,rg[i][r],p)}
 /\ UNCHANGED <<spst,skey,ph,rg>>
 BY SMTT(10), Sizes, Location, Design DEF PHit, basevars, recV, Sizes, Location, Design
<2>4. QED BY <2>1, <2>5, <2>3, SMTT(10), Sizes, Location, Design DEF HitIdentity, Active, SH, QT_rpgS, QT_smap, QHG_PostKey, Sizes, Location, Design
\* T2M-END R2M0557_PdQPHitGuarded


<1>D1BkdeXNXl6LicKV7IyXW.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE QuietConservation'
<2> USE ONLY <1>D1BkdeXNXl6LicKV7IyXW, Sizes, Location, Design
<2>1. QuietConservation /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_QuietConservation, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, BaseQuietConservation, KPinned, Quiet, QuietConservation, SPin, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0559_PdQPHit_QuietConservation

\* T2M-SCOPE R2M0560_PdQPHit_SI1

<1>G6DWJk4.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE P_SI1'
<2> USE ONLY <1>G6DWJk4, Sizes, Location, Design
<2>1. P_SI1 /\ P_SI2 /\ P_SI3 /\ P_SI6 /\ K8 /\ SharedLedRef /\ HitIdentity /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_K8, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, P_SI1, SH, SHPin, SI1, SSendReady, P_SI2, SI2, SPin, P_SI3, SData, SHeld, SI3, P_SI6, SI6, K8, OwnedBy, SharedLedRef, HitIdentity, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0560_PdQPHit_SI1

\* T2M-SCOPE R2M0561_PdQPHit_SI3

<1>f6Ak9SL.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE P_SI3'
<2> USE ONLY <1>f6Ak9SL, Sizes, Location, Design
<2>1. P_SI3 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI3, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, P_SI3, SData, SH, SHeld, SI3, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0561_PdQPHit_SI3

\* T2M-SCOPE R2M0562_PdQPHit_SI5

<1>iMP8ttZ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE P_SI5'
<2> USE ONLY <1>iMP8ttZ, Sizes, Location, Design
<2>1. P_SI5 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI5, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, Held, P_SI5, SI5, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0562_PdQPHit_SI5

\* T2M-SCOPE R2M0563_PdQPHit_SI6

<1>ZtY4lIn.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE P_SI6'
<2> USE ONLY <1>ZtY4lIn, Sizes, Location, Design
<2>1. P_SI1 /\ P_SI6 /\ QT_rpgS /\ QT_Base /\ QT_smap /\ QT_schoice
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 /\ ~schoice[i][r] /\ smap[i][r]=0
 BY <2>1, SMTT(10), Sizes, Location, Design DEF PHit, P_SI1, SI1, Sizes, Location, Design
<2>3. \A h \in rpgS : (h[1]=i /\ h[2]=r) => h[3] # rg[i][r]
 BY <2>1, <2>2, <1>Jlun1oO4ue, SMTT(10), Sizes, Location, Design DEF P_SI6, SI6, Active, QT_rpgS, PHit, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>Jlun1oO4ue, SMTT(10), Sizes, Location, Design DEF PHit, basevars, recV, instV, kV, P_SI6, SI6, SH, Active, QT_rpgS, QT_Base, QT_smap, QT_schoice, Sizes, Location, Design
\* T2M-END R2M0563_PdQPHit_SI6

\* T2M-SCOPE R2M0632_PdQPHit_Map

<1> QED BY <1>kjNCWePJDOwBCdmsSg5W, <1>VfGYZ0MraiE322WlZnXs, <1>quhDyNXNgxEVgq, <1>jIBi60s6HDF58ZAWJLpuW, <1>yLQnDo9uJvLNDaJymeN7, <1>OHAOuHoOLAUK, <1>KjrHTZUd, <1>kyoSLnAr, <1>D2rf4auR, <1>eSUFv2GeVt1kYwrmdQDh57YO9O, <1>xYO0Y0OkPuXO4BVKkAHU9NN3MOsoWNW9wE, <1>D1BkdeXNXl6LicKV7IyXW, <1>G6DWJk4, <1>f6Ak9SL, <1>iMP8ttZ, <1>ZtY4lIn, <1>DFtNmVA6YCHqGp, <1>MXf5UWcLosaOyV, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_PHit_01_01, Part_PHit_01_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_PHit
HIDE DEF DomainKeep_PHit, P_PagePoolsDisjoint, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K8, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_SFollowStatic, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_PHit ==
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, Sizes, Location, Design, PinInv, PHit(i,r,p)
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in PInst, NEW v \in Rq, NEW w \in SPages, Sizes, Location, Design, PinInv, PHit(u,v,w)
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_PHit_01_01, Part_PHit_01_02, Group_PHit_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_PHit_01_01, Part_PHit_01_02, Group_PHit_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, PHit(i,r,p), <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, PHit(i,r,p), ShapeKeep_PHit, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
