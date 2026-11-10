---- MODULE PdFinalAction_PAllocPrefix ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PAllocPrefix_01

\* Complete original body PdFinalPart_PAllocPrefix_01_02 SHA 3437a5354153fe0d995d316f63043305d37e1b3cf809f9b6718f624f85922c8f
HIDE DEF DomainKeep_PAllocPrefix, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_PAllocPrefix_01_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeEffect_PAllocPrefix, ShapeImpliesTags, ShapeInitiatorLocation, ShapeKeep_PAllocPrefix, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_HitIdentity, V21_Inv_K15, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_B2OffInit, V21_Inv_S3, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sfly, V22_T_sled, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_PAllocPrefix_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE (K1)' /\ (K2)' /\ (K3)' /\ (K4)' /\ (K5)' /\ (K6)' /\ (K7)' /\ (K8)' /\ (K9)' /\ (K10)' /\ (K11)' /\ (K12)' /\ (K13)' /\ (K14)' /\ (K16)' /\ (K17)' /\ (S1)' /\ (S2)' /\ (S4)' /\ (S5)' /\ (S6)' /\ (ReadOwnLanded)' /\ (GenFiltered)' /\ (OneReply)' /\ (ReplyTruth)' /\ (QuarNeverMapped)' /\ (QuarNoReg)' /\ (PrefcMatchesHolders)' /\ (SI7)' /\ (SI8)' /\ (PrivateMapOwner)' /\ (EntryQuarantineDisjoint)' /\ (SendOwnLanded)' /\ (SealOnlyLanded)' /\ (QuietConservation)' /\ (NoEvictUnderRDMA)' /\ (SharedLedRef)' /\ (P_SI5)' /\ (P_SI6)'
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

<1> HIDE DEF XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Ex6xsGb, QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, QT_Base

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


<1>dE48OJ4YxD61TKinyPWXeWqDJBTPKs5XbyuVtGsMkV.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>dE48OJ4YxD61TKinyPWXeWqDJBTPKs5XbyuVtGsMkV, Sizes, Location, Design
<2>1. EntryQuarantineDisjoint /\ STypeOK /\ Ex6xsGb
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF PAllocPrefix, EntryQuarantineDisjoint, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, Sizes, Location, Design


<1>vTVnMO5jEE2yOMESgxBM7VJblm02qfOQTJ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE PrivateMapOwner'
<2> USE ONLY <1>vTVnMO5jEE2yOMESgxBM7VJblm02qfOQTJ, Sizes, Location, Design
<2>1. PrivateMapOwner /\ STypeOK /\ Ex6xsGb /\ KReadIntegrity
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_KReadIntegrity, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF PAllocPrefix, PrivateMapOwner, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, KReadIntegrity, SMapIntegrity, Sizes, Location, Design


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

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


<1>XnYly5EW.        
 OneReply /\ UNCHANGED <<crep, drep>> => OneReply'
 BY IsaT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
\* T2M-END R2M0348_PdPF_OneReply


<1>Wu.        
 K1 /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>> => K1'
 BY IsaT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M0353_PdPF_K1


<1>ve.        
 K3 /\ UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>> => K3'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, InFl, K3, Sizes, Location, Design
\* T2M-END R2M0332_PdPF_K3


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


<1>aXu.        
 K17 /\ UNCHANGED <<kpin, krs, ph, rg, rpg>> => K17'
 BY IsaT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
\* T2M-END R2M0340_PdPF_K17


<1>s6g.        
 K13 /\ UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>> => K13'
 BY IsaT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design
\* T2M-END R2M0354_PdPF_K13


<1>ui5.        
 K12 /\ UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>> => K12'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, K12, Sizes, Location, Design
\* T2M-END R2M0362_PdPF_K12


<1>rd.        
 K5 /\ UNCHANGED <<led, pgn, pr, pst, xg, xr>> => K5'
 BY IsaT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0334_PdPF_K5


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


<1>tpP.        
 K11 /\ UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>> => K11'
 BY IsaT(10), Sizes, Location, Design DEF K11, Sizes, Location, Design
\* T2M-END R2M0337_PdPF_K11


<1>ahB.        
 K10 /\ UNCHANGED <<hok, hw, nx, pgn, ph, pr, pst, ptl, rg, xdst, xg, xlt, xr>> => K10'
 BY IsaT(10), Sizes, Location, Design DEF K10, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0336_PdPF_K10

\* T2M-SCOPE R2M0339_PdPF_K16

<1>M6Z.        
 K16 /\ UNCHANGED <<hw, led, pgn, ph, plt, pr, pst, ptl, rg, rpg, sfly, sled, xdst>> => K16'
 BY IsaT(10), Sizes, Location, Design DEF GrownP, InFl, K16, NoWriteInto, Writing, Sizes, Location, Design
\* T2M-END R2M0339_PdPF_K16


<1>Gk.        
 K7 /\ UNCHANGED <<gen, kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>> => K7'
 BY IsaT(10), Sizes, Location, Design DEF Active, GrownP, K7, KPinned, Maps, NHits, Sizes, Location, Design
\* T2M-END R2M0374_PdPF_K7


<1>Dv.        
 K9 /\ UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>> => K9'
 BY IsaT(10), Sizes, Location, Design DEF Active, K9, Sizes, Location, Design
\* T2M-END R2M0335_PdPF_K9


<1>J7.        
 K8 /\ UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, ph, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>> => K8'
 BY IsaT(10), Sizes, Location, Design DEF Active, K8, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0379_PdPF_K8


<1>V0LNJhFJZYV3Y.        
 ReadOwnLanded /\ UNCHANGED <<dpreOK, hw, pgn, ph, pr, pst, ptl, pvis, rg, rhit, rpg, xdst>> => ReadOwnLanded'
 BY IsaT(10), Sizes, Location, Design DEF BaseReadOwnLanded, InFl, NoWriteInto, ReadOwnLanded, Writing, Sizes, Location, Design
\* T2M-END R2M0383_PdPF_ReadOwnLanded

\* T2M-SCOPE R2M0387_PdPF_SI7

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


<1>OVg4h90W2yOETehwKlF.        
 PrefcMatchesHolders /\ UNCHANGED <<rpgS, sentry, sprefc, squar, xsrcS>> => PrefcMatchesHolders'
 BY IsaT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
\* T2M-END R2M0385_PdPF_PrefcMatchesHolders


<1>eG8KztuLf94EhZa7J9nr.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rpgS, rt, rx, sentry, sfly, sled, sprefc, squar, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xsrcS, xst>>
 BY ONLY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UyxcwmbTp1G6PKj.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K1'
<2> USE ONLY <1>UyxcwmbTp1G6PKj, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PWCg7RYiSeGeFWY.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K2'
<2> USE ONLY <1>PWCg7RYiSeGeFWY, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vUhgLEeTe1Z1vYK.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K3'
<2> USE ONLY <1>vUhgLEeTe1Z1vYK, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JaO83Fbj9HiK7Oj.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K4'
<2> USE ONLY <1>JaO83Fbj9HiK7Oj, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>z1PVhFDl8XznOO5.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K5'
<2> USE ONLY <1>z1PVhFDl8XznOO5, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ghbHS3jrjwwyAOn.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K6'
<2> USE ONLY <1>ghbHS3jrjwwyAOn, Sizes, Location, Design
<2>1. K6
 BY V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, pgn, pr, pst, sfly, sled>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>IM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WQPxvePkCo52F5o.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K7'
<2> USE ONLY <1>WQPxvePkCo52F5o, Sizes, Location, Design
<2>1. K7
 BY V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Gk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mWBCjXaF7PyOxme.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K8'
<2> USE ONLY <1>mWBCjXaF7PyOxme, Sizes, Location, Design
<2>1. K8
 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, ph, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>J7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uzjPekcK0xjULfO.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K9'
<2> USE ONLY <1>uzjPekcK0xjULfO, Sizes, Location, Design
<2>1. K9
 BY V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Dv, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NyrhtXdeNifSm8mg.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K10'
<2> USE ONLY <1>NyrhtXdeNifSm8mg, Sizes, Location, Design
<2>1. K10
 BY V21_Inv_K10, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, nx, pgn, ph, pr, pst, ptl, rg, xdst, xg, xlt, xr>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ahB, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UNAWtEd38YL4H4oK.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K11'
<2> USE ONLY <1>UNAWtEd38YL4H4oK, Sizes, Location, Design
<2>1. K11
 BY V21_Inv_K11, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>tpP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xwnJcwVMnDPtp0Ow.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K12'
<2> USE ONLY <1>xwnJcwVMnDPtp0Ow, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ljxNmKTeOiHg5pfJ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K13'
<2> USE ONLY <1>ljxNmKTeOiHg5pfJ, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VINtwjL6umujOWaY.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K14'
<2> USE ONLY <1>VINtwjL6umujOWaY, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HPjIj5N4Wu5w9555.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K16'
<2> USE ONLY <1>HPjIj5N4Wu5w9555, Sizes, Location, Design
<2>1. K16
 BY V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, led, pgn, ph, plt, pr, pst, ptl, rg, rpg, sfly, sled, xdst>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>M6Z, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g5Zj7rRGY5h2SzTU.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K17'
<2> USE ONLY <1>g5Zj7rRGY5h2SzTU, Sizes, Location, Design
<2>1. K17
 BY V21_Inv_K17, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpg>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aXu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OLIDFzA2nt0qPNC.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE S1'
<2> USE ONLY <1>OLIDFzA2nt0qPNC, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>O5Sl2XmK0SUdQhm.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE S2'
<2> USE ONLY <1>O5Sl2XmK0SUdQhm, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nMPlz66ZI3AVrPT.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE S4'
<2> USE ONLY <1>nMPlz66ZI3AVrPT, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>W0ngnTPOzAGGTM6.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE S5'
<2> USE ONLY <1>W0ngnTPOzAGGTM6, Sizes, Location, Design
<2>1. S5
 BY V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Po, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GroZ3lQ8vLnGfdm.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE S6'
<2> USE ONLY <1>GroZ3lQ8vLnGfdm, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T0wsOeEkMpthj1IkKLmtUaLrn1.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE ReadOwnLanded'
<2> USE ONLY <1>T0wsOeEkMpthj1IkKLmtUaLrn1, Sizes, Location, Design
<2>1. ReadOwnLanded
 BY V21_Inv_ReadOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<dpreOK, hw, pgn, ph, pr, pst, ptl, pvis, rg, rhit, rpg, xdst>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>V0LNJhFJZYV3Y, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lhP2fvngMy0DGzjpRfOGq0iv.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE GenFiltered'
<2> USE ONLY <1>lhP2fvngMy0DGzjpRfOGq0iv, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bNpmHim5f7UlIqNn3CIS5.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE OneReply'
<2> USE ONLY <1>bNpmHim5f7UlIqNn3CIS5, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Zo77mIDTZcQTcxHKxXSfO7e.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE ReplyTruth'
<2> USE ONLY <1>Zo77mIDTZcQTcxHKxXSfO7e, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ipennLkFBfXraZNQm1acGynNmyoV.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QuarNeverMapped'
<2> USE ONLY <1>ipennLkFBfXraZNQm1acGynNmyoV, Sizes, Location, Design
<2>1. QuarNeverMapped
 BY V21_Inv_QuarNeverMapped, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ph, pst, rpg>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>CHHI4E3y3uZD9LA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fliOypoEOdbNAhe6dNy4nv.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QuarNoReg'
<2> USE ONLY <1>fliOypoEOdbNAhe6dNy4nv, Sizes, Location, Design
<2>1. QuarNoReg
 BY V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, pst>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>agy0tgaoa, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OKyjPbdksWz376o9eSMaLOhp9MAbnqQB.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>OKyjPbdksWz376o9eSMaLOhp9MAbnqQB, Sizes, Location, Design
<2>1. PrefcMatchesHolders
 BY V21_Inv_PrefcMatchesHolders, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<rpgS, sentry, sprefc, squar, xsrcS>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>OVg4h90W2yOETehwKlF, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>e19w7deCgfGvcT0N.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE SI7'
<2> USE ONLY <1>e19w7deCgfGvcT0N, Sizes, Location, Design
<2>1. SI7
 BY V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, sentry>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>YC9, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kHiOdSn3v12KNqDm.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE SI8'
<2> USE ONLY <1>kHiOdSn3v12KNqDm, Sizes, Location, Design
<2>1. SI8
 BY V21_Inv_SI8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<sentry, squar, xk, xsrcS, xst>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aMI, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0398_PdPFrames_PAllocPrefix

\* T2M-SCOPE R2M0483_PdPOff_PAllocPrefix

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


<1>fqGzhMYfO0RsJ5Y1HyWxVn2m42OB.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>fqGzhMYfO0RsJ5Y1HyWxVn2m42OB, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ P_SI4 /\ SharedLedRef /\ PrefcMatchesHolders /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI4, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, NoEvictUnderRDMA, SAccess, P_SI4, SI4, SPin, SharedLedRef, PrefcMatchesHolders, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0537_PdQPAllocPrefix_NoEvictUnderRDMA

\* T2M-SCOPE R2M0538_PdQPAllocPrefix_QuietConservation

<1>emhbkZwzjTJ2Z8vfWbSd7IN2sn13n.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QuietConservation'
<2> USE ONLY <1>emhbkZwzjTJ2Z8vfWbSd7IN2sn13n, Sizes, Location, Design
<2>1. QuietConservation /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_QuietConservation, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, BaseQuietConservation, KPinned, Quiet, QuietConservation, SPin, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0538_PdQPAllocPrefix_QuietConservation

\* T2M-SCOPE R2M0539_PdQPAllocPrefix_SI3

<1>XmsDZhFq2sorNnO.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE P_SI5'
<2> USE ONLY <1>XmsDZhFq2sorNnO, Sizes, Location, Design
<2>1. P_SI5 /\ SMapIntegrity /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_KReadIntegrity, V21_Inv_P_SI5, V21_Inv_STypeOK, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, Held, P_SI5, SI5, SMapIntegrity, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0541_PdQPAllocPrefix_SI5

\* T2M-SCOPE R2M0542_PdQPAllocPrefix_SI6

<1>yVAkgb7npCMA7hr.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE P_SI6'
<2> USE ONLY <1>yVAkgb7npCMA7hr, Sizes, Location, Design
<2>1. P_SI1 /\ P_SI6 /\ QT_rpgS /\ QT_Base /\ QT_smap /\ QT_schoice
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 /\ ~schoice[i][r] /\ smap[i][r]=0
 BY <2>1, SMTT(10), Sizes, Location, Design DEF PAllocPrefix, P_SI1, SI1, Sizes, Location, Design
<2>3. \A h \in rpgS : (h[1]=i /\ h[2]=r) => h[3] # rg[i][r]
 BY <2>1, <2>2, <1>Jlun1oO4ue, SMTT(10), Sizes, Location, Design DEF P_SI6, SI6, Active, QT_rpgS, PAllocPrefix, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>Jlun1oO4ue, SMTT(10), Sizes, Location, Design DEF PAllocPrefix, basevars, recV, instV, kV, P_SI6, SI6, Active, QT_rpgS, QT_Base, QT_smap, QT_schoice, Sizes, Location, Design
\* T2M-END R2M0542_PdQPAllocPrefix_SI6

\* T2M-SCOPE R2M0543_PdQPAllocPrefix_SealOnlyLanded

<1>g2EEeI16nraQJ37b0BNkMWtKIj.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE SealOnlyLanded'
<2> USE ONLY <1>g2EEeI16nraQJ37b0BNkMWtKIj, Sizes, Location, Design
<2>1. SealOnlyLanded /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, BaseSealOnlyLanded, InFl, NoWriteInto, SealOnlyLanded, SharedImmutable, Writing, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0543_PdQPAllocPrefix_SealOnlyLanded

\* T2M-SCOPE R2M0544_PdQPAllocPrefix_SendOwnLanded

<1>NgCDI6KNxkPCPBaQBVIJ6kpqV.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE SendOwnLanded'
<2> USE ONLY <1>NgCDI6KNxkPCPBaQBVIJ6kpqV, Sizes, Location, Design
<2>1. SendOwnLanded /\ P_SI2 /\ P_SI4 /\ NoEvictUnderRDMA /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI2, V21_Inv_P_SI4, V21_Inv_STypeOK, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY ONLY <1>NgCDI6KNxkPCPBaQBVIJ6kpqV, <2>1, Design, Sizes, Location, <1>Jlun1oO4ue, SMTT(10) DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, BaseSendOwnLanded, SendOwnLanded, Active, P_SI2, SI2, SPin, P_SI4, SI4, NoEvictUnderRDMA, SAccess, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0544_PdQPAllocPrefix_SendOwnLanded


<1>fX5FW7StImgqjRRTm98UM4rX.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE SharedLedRef'
<2> USE ONLY <1>fX5FW7StImgqjRRTm98UM4rX, Sizes, Location, Design
<2>1. SharedLedRef /\ P_SI2 /\ P_SI3 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, SPin, SharedLedRef, Active, P_SI2, SI2, P_SI3, SData, SH, SHeld, SI3, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0546_PdQPAllocPrefix_SharedLedRef

\* T2M-SCOPE R2M0547_PdQPAllocPrefix_TypeOK

<1> QED BY <1>UyxcwmbTp1G6PKj, <1>PWCg7RYiSeGeFWY, <1>vUhgLEeTe1Z1vYK, <1>JaO83Fbj9HiK7Oj, <1>z1PVhFDl8XznOO5, <1>ghbHS3jrjwwyAOn, <1>WQPxvePkCo52F5o, <1>mWBCjXaF7PyOxme, <1>uzjPekcK0xjULfO, <1>NyrhtXdeNifSm8mg, <1>UNAWtEd38YL4H4oK, <1>xwnJcwVMnDPtp0Ow, <1>ljxNmKTeOiHg5pfJ, <1>VINtwjL6umujOWaY, <1>HPjIj5N4Wu5w9555, <1>g5Zj7rRGY5h2SzTU, <1>OLIDFzA2nt0qPNC, <1>O5Sl2XmK0SUdQhm, <1>nMPlz66ZI3AVrPT, <1>W0ngnTPOzAGGTM6, <1>GroZ3lQ8vLnGfdm, <1>T0wsOeEkMpthj1IkKLmtUaLrn1, <1>lhP2fvngMy0DGzjpRfOGq0iv, <1>bNpmHim5f7UlIqNn3CIS5, <1>Zo77mIDTZcQTcxHKxXSfO7e, <1>ipennLkFBfXraZNQm1acGynNmyoV, <1>fliOypoEOdbNAhe6dNy4nv, <1>OKyjPbdksWz376o9eSMaLOhp9MAbnqQB, <1>e19w7deCgfGvcT0N, <1>kHiOdSn3v12KNqDm, <1>vTVnMO5jEE2yOMESgxBM7VJblm02qfOQTJ, <1>dE48OJ4YxD61TKinyPWXeWqDJBTPKs5XbyuVtGsMkV, <1>NgCDI6KNxkPCPBaQBVIJ6kpqV, <1>g2EEeI16nraQJ37b0BNkMWtKIj, <1>emhbkZwzjTJ2Z8vfWbSd7IN2sn13n, <1>fqGzhMYfO0RsJ5Y1HyWxVn2m42OB, <1>fX5FW7StImgqjRRTm98UM4rX, <1>XmsDZhFq2sorNnO, <1>yVAkgb7npCMA7hr, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalGroup_PAllocPrefix_02 SHA 4401ef0bcf348cb8c3a76646477a5659c7919fcc5f09e4903e4ca3848864c30c
HIDE DEF Part_PAllocPrefix_01_02, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_NoEvictUnderRDMA, V21_Inv_OneReply, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedLedRef, V21_SFollowStatic, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
THEOREM Group_PAllocPrefix_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE (P_B2OffInit)'
<1>uvPFW8t2ZnipLPHTav1XlU.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE P_B2OffInit'
 BY ONLY <1>uvPFW8t2ZnipLPHTav1XlU, Sizes, Location, Design, SMTT(10) DEF PAllocPrefix, P_B2OffInit, Sizes, Location, Design
\* T2M-END R2M0483_PdPOff_PAllocPrefix


<1> QED BY <1>uvPFW8t2ZnipLPHTav1XlU, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_PAllocPrefix_01_01, Part_PAllocPrefix_01_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_PAllocPrefix

THEOREM Step_PAllocPrefix ==
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, Sizes, Location, Design, PinInv, PAllocPrefix(i,r,p)
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in PInst, NEW v \in Rq, NEW w \in SPages, Sizes, Location, Design, PinInv, PAllocPrefix(u,v,w)
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_PAllocPrefix_01_01, Part_PAllocPrefix_01_02, Group_PAllocPrefix_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_PAllocPrefix_01_01, Part_PAllocPrefix_01_02, Group_PAllocPrefix_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, PAllocPrefix(i,r,p), <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, PAllocPrefix(i,r,p), ShapeKeep_PAllocPrefix, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
