---- MODULE PdFinalAction_SPrefixPoll ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalPart_SPrefixPoll_01_01 SHA 215ef84304230bc77888fdd4024dd6643cf2f9ad7808666406f922f39470792c
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable
THEOREM Part_SPrefixPoll_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE (QuietConservation)' /\ (TypInv)' /\ (KReadIntegrity)' /\ (NoStrayAccess)' /\ (NoFreeUnderRead)' /\ (K3)' /\ (K7)' /\ (K8)' /\ (K15)' /\ (ReadOwnLanded)' /\ (SendOwnLanded)' /\ (PrefcMatchesHolders)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE QT_spst == spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]

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

<1> HIDE DEF QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, QT_Base

<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>ve.        
 K3 /\ UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>> => K3'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, InFl, K3, Sizes, Location, Design
\* T2M-END R2M0332_PdPF_K3


<1>Gk.        
 K7 /\ UNCHANGED <<gen, kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>> => K7'
 BY IsaT(10), Sizes, Location, Design DEF Active, GrownP, K7, KPinned, Maps, NHits, Sizes, Location, Design
\* T2M-END R2M0374_PdPF_K7


<1>LBf.        
 K15 /\ UNCHANGED <<hw, kpin, krs, led, plt, ptl, pvis, sdata, sfly, skey, sled, swrite, xdst>> => K15'
 BY P_PagePoolsDisjoint, IsaT(10), Sizes, Location, Design DEF InFl, K15, KData, NoWriteInto, SData, Writing, Sizes, Location, Design
\* T2M-END R2M0338_PdPF_K15


<1>J7.        
 K8 /\ UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, ph, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>> => K8'
 BY IsaT(10), Sizes, Location, Design DEF Active, K8, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0379_PdPF_K8


<1>V0LNJhFJZYV3Y.        
 ReadOwnLanded /\ UNCHANGED <<dpreOK, hw, pgn, ph, pr, pst, ptl, pvis, rg, rhit, rpg, xdst>> => ReadOwnLanded'
 BY IsaT(10), Sizes, Location, Design DEF BaseReadOwnLanded, InFl, NoWriteInto, ReadOwnLanded, Writing, Sizes, Location, Design
\* T2M-END R2M0383_PdPF_ReadOwnLanded

\* T2M-SCOPE R2M0387_PdPF_SI7

<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


<1>lDA42xkFPLxcY.        
 SendOwnLanded /\ UNCHANGED <<hw, ptl, sdata, sfly, skey, swrite, xg, xlt, xr, xsrc, xsrcP, xsrcS>> => SendOwnLanded'
 BY IsaT(10), Sizes, Location, Design DEF BaseSendOwnLanded, SendOwnLanded, Sizes, Location, Design
\* T2M-END R2M0384_PdPF_SendOwnLanded


<1>OVg4h90W2yOETehwKlF.        
 PrefcMatchesHolders /\ UNCHANGED <<rpgS, sentry, sprefc, squar, xsrcS>> => PrefcMatchesHolders'
 BY IsaT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
\* T2M-END R2M0385_PdPF_PrefcMatchesHolders


<1>Rdvk1xaKhFToALbi9M1.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rpgS, rt, rx, schoice, sdata, sentry, sfly, skey, sled, smap, sprefc, squar, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mjITk4MlknXdxA.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K3'
<2> USE ONLY <1>mjITk4MlknXdxA, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gYrI4fkUb1JlzN.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K7'
<2> USE ONLY <1>gYrI4fkUb1JlzN, Sizes, Location, Design
<2>1. K7
 BY V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Gk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r6Eio6fgiLyUIL.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K8'
<2> USE ONLY <1>r6Eio6fgiLyUIL, Sizes, Location, Design
<2>1. K8
 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, ph, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>J7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>irjP2ezDznb6N60.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K15'
<2> USE ONLY <1>irjP2ezDznb6N60, Sizes, Location, Design
<2>1. K15
 BY V21_Inv_K15, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, kpin, krs, led, plt, ptl, pvis, sdata, sfly, skey, sled, swrite, xdst>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>LBf, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sM5ltbNnjPpqs5BWhxY6V65re.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE ReadOwnLanded'
<2> USE ONLY <1>sM5ltbNnjPpqs5BWhxY6V65re, Sizes, Location, Design
<2>1. ReadOwnLanded
 BY V21_Inv_ReadOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<dpreOK, hw, pgn, ph, pr, pst, ptl, pvis, rg, rhit, rpg, xdst>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>V0LNJhFJZYV3Y, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JE8pveJdQOdbZWwqPsnHBLmxk.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE SendOwnLanded'
<2> USE ONLY <1>JE8pveJdQOdbZWwqPsnHBLmxk, Sizes, Location, Design
<2>1. SendOwnLanded
 BY V21_Inv_SendOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, ptl, sdata, sfly, skey, swrite, xg, xlt, xr, xsrc, xsrcP, xsrcS>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>lDA42xkFPLxcY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vpFlaVRk1EnJCTTrZQPYvde1xeYGSld.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>vpFlaVRk1EnJCTTrZQPYvde1xeYGSld, Sizes, Location, Design
<2>1. PrefcMatchesHolders
 BY V21_Inv_PrefcMatchesHolders, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<rpgS, sentry, sprefc, squar, xsrcS>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>OVg4h90W2yOETehwKlF, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

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


<1>uLxnRosmMsMt.        
 IsFiniteSet(PInst) /\ IsFiniteSet(Rq) /\ IsFiniteSet(Gens) /\ IsFiniteSet(SPages) /\ IsFiniteSet(Xids)
 BY Sizes, FS_Interval, SMTT(10), Location, Design DEF PInst, Rq, Gens, SPages, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YkucPYfECmTEOd.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE P_SI1'
<2> USE ONLY <1>YkucPYfECmTEOd, Sizes, Location, Design
<2>1. P_SI1 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, P_SI1, SH, SHPin, SI1, SSendReady, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0580_PdQSPrefixPoll_SI1

\* T2M-SCOPE R2M0581_PdQSPrefixPoll_SI2

<1>iAJMtimVkQxiV9.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE P_SI2'
<2> USE ONLY <1>iAJMtimVkQxiV9, Sizes, Location, Design
<2>1. P_SI2 /\ P_SI4 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI2, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, P_SI2, SI2, SPin, P_SI4, SI4, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0581_PdQSPrefixPoll_SI2

\* T2M-SCOPE R2M0582_PdQSPrefixPoll_TypeOK

<1>LxvZVZxvHnBfdzoG3.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_spst'
<2> USE ONLY <1>LxvZVZxvHnBfdzoG3, Sizes, Location, Design
<2>1. QT_spst /\ QT_spst
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>Jlun1oO4ue, SMTT(5), Location DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, QT_spst, SH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Afu7rsriq5STMxZLw.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_sown'
<2> USE ONLY <1>Afu7rsriq5STMxZLw, Sizes, Location, Design
<2>1. QT_sown /\ UNCHANGED sown
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sown, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mlhQAC171sn6EDV15.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_sgen'
<2> USE ONLY <1>mlhQAC171sn6EDV15, Sizes, Location, Design
<2>1. QT_sgen /\ UNCHANGED sgen
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sgen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>l8y1iOwGiSmXRQjIQ.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_skey'
<2> USE ONLY <1>l8y1iOwGiSmXRQjIQ, Sizes, Location, Design
<2>1. QT_skey /\ UNCHANGED skey
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_skey, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CqSFTUvZWISOHd6LBVX.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_swrite'
<2> USE ONLY <1>CqSFTUvZWISOHd6LBVX, Sizes, Location, Design
<2>1. QT_swrite /\ UNCHANGED swrite
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_swrite, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T7nExZAH0scITkU1d6.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_sdata'
<2> USE ONLY <1>T7nExZAH0scITkU1d6, Sizes, Location, Design
<2>1. QT_sdata /\ UNCHANGED sdata
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sdata, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mdx0pB9AKKjJUk3Fh1n.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_sready'
<2> USE ONLY <1>mdx0pB9AKKjJUk3Fh1n, Sizes, Location, Design
<2>1. QT_sready
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>Jlun1oO4ue, SMTT(5), Location DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, QT_sready, SH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mNC7XeKE5rNPccjvOj5.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_sprefc'
<2> USE ONLY <1>mNC7XeKE5rNPccjvOj5, Sizes, Location, Design
<2>1. QT_sprefc /\ UNCHANGED sprefc
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sprefc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dGPW8rr9LTQzCsRFT.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_smap'
<2> USE ONLY <1>dGPW8rr9LTQzCsRFT, Sizes, Location, Design
<2>1. QT_smap /\ UNCHANGED smap
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_smap, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BD9ewsrbsMD7UrU9ADnZ.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_schoice'
<2> USE ONLY <1>BD9ewsrbsMD7UrU9ADnZ, Sizes, Location, Design
<2>1. QT_schoice /\ UNCHANGED schoice
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_schoice, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Gd8z3smcAZkPUZmJI.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_rpgS'
<2> USE ONLY <1>Gd8z3smcAZkPUZmJI, Sizes, Location, Design
<2>1. QT_rpgS /\ UNCHANGED rpgS
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_rpgS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XK4tDFpebQwIEpuSbC.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_xsrcS'
<2> USE ONLY <1>XK4tDFpebQwIEpuSbC, Sizes, Location, Design
<2>1. QT_xsrcS /\ UNCHANGED xsrcS
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_xsrcS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GEQZf81KiI21U0P19L.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_xsrcP'
<2> USE ONLY <1>GEQZf81KiI21U0P19L, Sizes, Location, Design
<2>1. QT_xsrcP /\ UNCHANGED xsrcP
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_xsrcP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>E2HibYMkT9cZKfPLvJE.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_sentry'
<2> USE ONLY <1>E2HibYMkT9cZKfPLvJE, Sizes, Location, Design
<2>1. QT_sentry /\ UNCHANGED sentry
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sentry, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Yc4AUcEKow2XeQcDZh.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_squar'
<2> USE ONLY <1>Yc4AUcEKow2XeQcDZh, Sizes, Location, Design
<2>1. QT_squar /\ UNCHANGED squar
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_squar, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qA2VlNdvHy3jfaHmT6C17e.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_xprefixOK'
<2> USE ONLY <1>qA2VlNdvHy3jfaHmT6C17e, Sizes, Location, Design
<2>1. QT_xprefixOK /\ UNCHANGED xprefixOK
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_xprefixOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iWmEispPMbOgyDvSOtn.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_dpreOK'
<2> USE ONLY <1>iWmEispPMbOgyDvSOtn, Sizes, Location, Design
<2>1. QT_dpreOK /\ UNCHANGED dpreOK
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_dpreOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cDZOklLoRK2x5fbWUkYb.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_hitSeen'
<2> USE ONLY <1>cDZOklLoRK2x5fbWUkYb, Sizes, Location, Design
<2>1. QT_hitSeen /\ UNCHANGED hitSeen
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_hitSeen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>onq5oVHPs5sbHoGyl2BrEz.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QT_dedupSeen'
<2> USE ONLY <1>onq5oVHPs5sbHoGyl2BrEz, Sizes, Location, Design
<2>1. QT_dedupSeen /\ UNCHANGED dedupSeen
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_dedupSeen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T98Yk6RX8gA3gRi4fgp.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE CoreTypeOK'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixPoll
<2>frame. UNCHANGED basevars
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, SMTT(5) DEF SPrefixPoll
<2>rtVFrame. UNCHANGED <<gen,rt,rp,rd,hp,hd>>
 BY ONLY <2>frame, SMTT(5) DEF basevars, rtV
<2>instVFrame. UNCHANGED <<alive,nfail,torn,kpin,kfly,krs>>
 BY ONLY <2>frame, SMTT(5) DEF basevars, instV, kV
<2>recVFrame. UNCHANGED <<ph,rg,rpg,rpe,rx,rhit>>
 BY ONLY <2>frame, SMTT(5) DEF basevars, recV
<2>pgVFrame. UNCHANGED <<pst,pr,pgn,plt,ptl,pvis,led,sfly,sled,prefc,pqp>>
 BY ONLY <2>frame, SMTT(5) DEF basevars, pgV
<2>xVFrame. UNCHANGED <<xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,xst,nx>>
 BY ONLY <2>frame, SMTT(5) DEF basevars, xV
<2>ghVFrame. UNCHANGED <<drep,crep,dsucc,gbad>>
 BY ONLY <2>frame, SMTT(5) DEF basevars, ghV
<2>netFrame. UNCHANGED <<net>>
 BY ONLY <2>frame, SMTT(5) DEF basevars
<2>genNext. gen' \in [Rq -> 0..MG]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>rtVFrame, V22_T_gen, SMTT(5)
<2>rtNext. rt' \in [Rq -> {"idle", "wait", "ok", "err"}]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>rtVFrame, V22_T_rt, SMTT(5)
<2>rpNext. rp' \in [Rq -> {0} \cup Inst]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>rtVFrame, V22_T_rp, SMTT(5)
<2>rdNext. rd' \in [Rq -> {0} \cup Inst]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>rtVFrame, V22_T_rd, SMTT(5)
<2>hpNext. hp' \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>rtVFrame, V22_T_hp, SMTT(5)
<2>hdNext. hd' \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>rtVFrame, V22_T_hd, SMTT(5)
<2>aliveNext. alive' \in [Inst -> BOOLEAN]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>instVFrame, V22_T_alive, SMTT(5)
<2>nfailNext. nfail' \in 0..MaxFail
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>instVFrame, V22_T_nfail, SMTT(5)
<2>tornNext. torn' \in [Inst -> SUBSET Inst]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>instVFrame, V22_T_torn, SMTT(5)
<2>kpinNext. kpin' \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>instVFrame, V22_T_kpin, SMTT(5)
<2>kflyNext. kfly' \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>instVFrame, V22_T_kfly, SMTT(5)
<2>krsNext. krs' \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>instVFrame, V22_T_krs, SMTT(5)
<2>phNext. ph' \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>recVFrame, V22_T_ph, SMTT(5)
<2>rgNext. rg' \in [Inst -> [Rq -> 0..MG]]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>recVFrame, V22_T_rg, SMTT(5)
<2>rpgNext. rpg' \in [Inst -> [Rq -> 0..NP]]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>recVFrame, V22_T_rpg, SMTT(5)
<2>rpeNext. rpe' \in [Inst -> [Rq -> {0} \cup Inst]]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>recVFrame, V22_T_rpe, SMTT(5)
<2>rxNext. rx' \in [Inst -> [Rq -> 0..MX]]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>recVFrame, V22_T_rx, SMTT(5)
<2>rhitNext. rhit' \in [Inst -> [Rq -> BOOLEAN]]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>recVFrame, V22_T_rhit, SMTT(5)
<2>pstNext. pst' \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>pgVFrame, V22_T_pst, SMTT(5)
<2>prNext. pr' \in [Pages -> 0..NR]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>pgVFrame, V22_T_pr, SMTT(5)
<2>pgnNext. pgn' \in [Pages -> 0..MG]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>pgVFrame, V22_T_pgn, SMTT(5)
<2>pltNext. plt' \in [Pages -> 0..PS]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>pgVFrame, V22_T_plt, SMTT(5)
<2>ptlNext. ptl' \in [Pages -> -1..PS]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>pgVFrame, V22_T_ptl, SMTT(5)
<2>pvisNext. pvis' \in [Pages -> BOOLEAN]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>pgVFrame, V22_T_pvis, SMTT(5)
<2>ledNext. led' \in [Pages -> SUBSET Xids]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>pgVFrame, V22_T_led, SMTT(5)
<2>sflyNext. sfly' \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>pgVFrame, V22_T_sfly, SMTT(5)
<2>sledNext. sled' \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>pgVFrame, V22_T_sled, SMTT(5)
<2>prefcNext. prefc' \in [Pages -> 0..NR]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>pgVFrame, V22_T_prefc, SMTT(5)
<2>pqpNext. pqp' \in [Pages -> {0} \cup Inst]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>pgVFrame, V22_T_pqp, SMTT(5)
<2>xrNext. xr' \in [Xids -> 0..NR]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>xVFrame, V22_T_xr, SMTT(5)
<2>xgNext. xg' \in [Xids -> 0..MG]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>xVFrame, V22_T_xg, SMTT(5)
<2>xkNext. xk' \in [Xids -> {"none", "wr", "rd"}]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>xVFrame, V22_T_xk, SMTT(5)
<2>xpNext. xp' \in [Xids -> {0} \cup Inst]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>xVFrame, V22_T_xp, SMTT(5)
<2>xdNext. xd' \in [Xids -> {0} \cup Inst]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>xVFrame, V22_T_xd, SMTT(5)
<2>xsrcNext. xsrc' \in [Xids -> 0..NP]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>xVFrame, V22_T_xsrc, SMTT(5)
<2>xdstNext. xdst' \in [Xids -> 0..NP]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>xVFrame, V22_T_xdst, SMTT(5)
<2>xntNext. xnt' \in [Xids -> 0..PS]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>xVFrame, V22_T_xnt, SMTT(5)
<2>hwNext. hw' \in [Xids -> {"none", "fly", "issued", "stop"}]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>xVFrame, V22_T_hw, SMTT(5)
<2>hokNext. hok' \in [Xids -> BOOLEAN]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>xVFrame, V22_T_hok, SMTT(5)
<2>ivNext. iv' \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>xVFrame, V22_T_iv, SMTT(5)
<2>xstNext. xst' \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>xVFrame, V22_T_xst, SMTT(5)
<2>xltNext. xlt' \in [Xids -> 0..PS]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>xVFrame, V22_T_xlt, SMTT(5)
<2>nxNext. nx' \in 1..(MX + 1)
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>xVFrame, V22_T_nx, SMTT(5)
<2>netNext. net' \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                      r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                      pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>netFrame, V22_T_net, SMTT(5) DEF MessageShape
<2>drepNext. drep' \in [Rq -> [Gens -> 0..2]]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>ghVFrame, V22_T_drep, SMTT(5)
<2>crepNext. crep' \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>ghVFrame, V22_T_crep, SMTT(5)
<2>dsuccNext. dsucc' \in [Rq -> [Gens -> BOOLEAN]]
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>ghVFrame, V22_T_dsucc, SMTT(5)
<2>gbadNext. gbad' \in BOOLEAN
 BY ONLY <1>T98Yk6RX8gA3gRi4fgp, <2>ghVFrame, V22_T_gbad, SMTT(5)
<2>qed. QED BY ONLY <2>genNext, <2>rtNext, <2>rpNext, <2>rdNext, <2>hpNext, <2>hdNext, <2>aliveNext, <2>nfailNext, <2>tornNext, <2>kpinNext, <2>kflyNext, <2>krsNext, <2>phNext, <2>rgNext, <2>rpgNext, <2>rpeNext, <2>rxNext, <2>rhitNext, <2>pstNext, <2>prNext, <2>pgnNext, <2>pltNext, <2>ptlNext, <2>pvisNext, <2>ledNext, <2>sflyNext, <2>sledNext, <2>prefcNext, <2>pqpNext, <2>xrNext, <2>xgNext, <2>xkNext, <2>xpNext, <2>xdNext, <2>xsrcNext, <2>xdstNext, <2>xntNext, <2>hwNext, <2>hokNext, <2>ivNext, <2>xstNext, <2>xltNext, <2>nxNext, <2>netNext, <2>drepNext, <2>crepNext, <2>dsuccNext, <2>gbadNext, ZenonT(10) DEF CoreTypeOK

\* T2M-LOCAL-VISIBILITY

<1>fEYKNgDqw4gij30Y2.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE TypInv'
 BY ONLY <1>fEYKNgDqw4gij30Y2, Sizes, Location, Design, <1>T98Yk6RX8gA3gRi4fgp, <1>LxvZVZxvHnBfdzoG3, <1>Afu7rsriq5STMxZLw, <1>mlhQAC171sn6EDV15, <1>l8y1iOwGiSmXRQjIQ, <1>CqSFTUvZWISOHd6LBVX, <1>T7nExZAH0scITkU1d6, <1>mdx0pB9AKKjJUk3Fh1n, <1>mNC7XeKE5rNPccjvOj5, <1>dGPW8rr9LTQzCsRFT, <1>BD9ewsrbsMD7UrU9ADnZ, <1>Gd8z3smcAZkPUZmJI, <1>XK4tDFpebQwIEpuSbC, <1>GEQZf81KiI21U0P19L, <1>E2HibYMkT9cZKfPLvJE, <1>Yc4AUcEKow2XeQcDZh, <1>qA2VlNdvHy3jfaHmT6C17e, <1>iWmEispPMbOgyDvSOtn, <1>cDZOklLoRK2x5fbWUkYb, <1>onq5oVHPs5sbHoGyl2BrEz DEF TypInv, STypeOK, QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, Sizes, Location, Design
\* T2M-END R2M0582_PdQSPrefixPoll_TypeOK

\* T2M-SCOPE R2M0579_PdQQuietAfter

<1>yGZXINcGTLmMQ.        
 BaseQuietConservation /\ UNCHANGED basevars => BaseQuietConservation'
 BY IsaT(10), Sizes, Location, Design DEF BaseQuietConservation, Quiet, Active, KPinned, basevars, rtV, instV, kV, recV, pgV, xV, ghV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EyoOF7nIE.        
 ASSUME B2, STypeOK', SI1', SI2', PrefcMatchesHolders', BaseQuietConservation'
 PROVE QuietConservation'
<2> USE ONLY <1>EyoOF7nIE, Sizes, Location, Design
<2>1. SUFFICES ASSUME Quiet', sentry'={},
 \A p \in SPages : ~swrite'[p] /\ (spst'[p] \in {"priv","drain"} => sready'[p]) /\ ~SPin(p)'
 PROVE \A p \in SPages : spst'[p] \in {"free","quar"} \/ (spst'[p]="shared" /\ sprefc'[p]=SRefQ(squar',p))
 BY Sizes, Location, Design DEF QuietConservation, Sizes, Location, Design
<2>2. rpgS'={}
 BY <2>1, <1>Jlun1oO4ue, SMTT(10), Sizes, Location, Design DEF SI1, STypeOK, Quiet, SHPin, SPin, Sizes, Location, Design
<2>3. SUFFICES ASSUME NEW p \in SPages
 PROVE spst'[p] \in {"free","quar"} \/ (spst'[p]="shared" /\ sprefc'[p]=SRefQ(squar',p))
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. spst'[p] \in {"free","shared","quar"}
 BY <2>1, Location, <1>Jlun1oO4ue, SMTT(10), Sizes, Design DEF SI2, STypeOK, Quiet, KPages, Sizes, Location, Design
<2>5. IsFiniteSet(Xids \X SPages)
 BY <1>uLxnRosmMsMt, FS_Product, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. IsFiniteSet({h \in squar' : h[2]=p})
 BY <2>5, FS_Subset, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
<2>7. SRefQ(squar',p) \in Nat
 BY <2>6, FS_CardinalityType, Sizes, Location, Design DEF SRefQ, Sizes, Location, Design
<2>8a. SRefR(rpgS',p)=0 /\ SRefE(sentry',xsrcS',p)=0
 BY ONLY <2>1, <2>2, FS_EmptySet, SMTT(10), Sizes, Location, Design DEF SRefR, SRefE, Sizes, Location, Design
<2>8b. sprefc'[p]=SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
 BY ONLY <1>EyoOF7nIE, <2>3, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>8. sprefc'[p]=SRefQ(squar',p)
 BY ONLY <2>7, <2>8a, <2>8b, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>9. QED BY <2>4, <2>8, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0579_PdQQuietAfter


<1>sfw.        
 ASSUME PinInv
 PROVE \A i \in Inst,k \in KSlots : kpin[i][k] => \A e \in krs[i][k] : e[3] \in SPages => i \in PInst
<2> USE ONLY <1>sfw, Sizes, Location, Design
<2>1. K14 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, SMTT(10), Location, Design DEF K14, IsP, Inst, PInst, NL, Sizes, Location, Design


<1>NOq3QYRHhz.        
 ASSUME PinInv, B2, UNCHANGED basevars, SI3'
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>NOq3QYRHhz, Sizes, Location, Design
<2>1. NoFreeUnderRead BY V21_Inv_NoFreeUnderRead, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. SUFFICES ASSUME NEW i \in Inst, NEW k \in KSlots, kpin'[i][k], NEW e \in krs'[i][k]
 PROVE KHeld(e)'
 BY Sizes, Location, Design DEF NoFreeUnderRead, Sizes, Location, Design
<2>3. kpin[i][k] /\ e \in krs[i][k]
 BY <2>2, SMTT(10), Sizes, Location, Design DEF basevars, instV, kV, Sizes, Location, Design
<2>4. CASE e[3] \in SPages
 <3>1. i \in PInst BY <2>3, <2>4, <1>sfw, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. SHeld(e)' BY <2>2, <3>1, <2>4, SMTT(10), Sizes, Location, Design DEF SI3, Sizes, Location, Design
 <3>3. QED BY <2>4, <3>2, Sizes, Location, Design DEF KHeld, Sizes, Location, Design
<2>5. CASE e[3] \notin SPages
 BY <2>1, <2>3, <2>5, SMTT(10), Sizes, Location, Design DEF NoFreeUnderRead, KHeld, basevars, pgV, Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d4WAbs6.        
 ASSUME PinInv, B2, UNCHANGED basevars, SI3'
 PROVE K15'
<2> USE ONLY <1>d4WAbs6, Sizes, Location, Design
<2>1. K15 BY V21_Inv_K15, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. SUFFICES ASSUME NEW i \in Inst, NEW k \in KSlots, kpin'[i][k], NEW e \in krs'[i][k]
 PROVE KData(i,e)' /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
 /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY Sizes, Location, Design DEF K15, Sizes, Location, Design
<2>3. kpin[i][k] /\ e \in krs[i][k]
 BY <2>2, SMTT(10), Sizes, Location, Design DEF basevars, instV, kV, Sizes, Location, Design
<2>4. KData(i,e) /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
 /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K15, basevars, pgV, Sizes, Location, Design
<2>5. CASE e[3] \in SPages
 <3>1. i \in PInst BY <2>3, <2>5, <1>sfw, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. SData(e)' BY <2>2, <3>1, <2>5, SMTT(10), Sizes, Location, Design DEF SI3, Sizes, Location, Design
 <3>3. QED BY <2>4, <2>5, <3>2, SMTT(10), Sizes, Location, Design DEF KData, NoWriteInto, Writing, InFl, basevars, xV, Sizes, Location, Design
<2>6. CASE e[3] \notin SPages
 BY <2>4, <2>6, SMTT(10), Sizes, Location, Design DEF KData, NoWriteInto, Writing, InFl, basevars, pgV, xV, Sizes, Location, Design
<2>7. QED BY <2>5, <2>6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FkRDxj.        
 ASSUME PinInv, UNCHANGED basevars, NoFreeUnderRead'
 PROVE NoStrayAccess'
<2> USE ONLY <1>FkRDxj, Sizes, Location, Design
<2>1. NoStrayAccess /\ K14
 BY V21_Inv_K14, V21_Inv_NoStrayAccess, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. K14'
 BY <2>1, SMTT(10), Sizes, Location, Design DEF K14, basevars, rtV, instV, kV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF NoStrayAccess, NoFreeUnderRead, K14, Held, Writing, InFl, basevars, pgV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iYha333pZ.        
 ASSUME PinInv, UNCHANGED basevars, NoFreeUnderRead', K15', SMapIntegrity'
 PROVE NoStrayAccess' /\ KReadIntegrity'
<2> USE ONLY <1>iYha333pZ, Sizes, Location, Design
<2>1. NoStrayAccess /\ K14
 BY V21_Inv_K14, V21_Inv_NoStrayAccess, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. K14'
 BY <2>1, SMTT(10), Sizes, Location, Design DEF K14, basevars, rtV, instV, kV, Sizes, Location, Design
<2>3. NoStrayAccess'
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF NoStrayAccess, NoFreeUnderRead, K14, Held, Writing, InFl, basevars, pgV, xV, Sizes, Location, Design
<2>4. KReadIntegrity'
 BY <2>2, SMTT(10), Sizes, Location, Design DEF KReadIntegrity, BaseKReadIntegrity, NoFreeUnderRead, K15, K14, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0620_PdQReadLift


<1>EKlvr7njmPVJemnQOoK.        
 PrefcMatchesHolders /\ UNCHANGED <<rpgS, sentry, sprefc, squar, xsrcS>> => PrefcMatchesHolders'
 BY IsaT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
\* T2M-END R2M0614_PdQF_PrefcMatchesHolders


<1>bARA3sahVywWppEP729.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rpgS, rt, rx, schoice, sdata, sentry, sfly, skey, sled, smap, sprefc, squar, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>bARA3sahVywWppEP729, Sizes, Location, Design, Design, SMTT(10) DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ncq6PxzMmyy2JEZgFAiwmmADRyzkr1R.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>Ncq6PxzMmyy2JEZgFAiwmmADRyzkr1R, Sizes, Location, Design
<2>1. PrefcMatchesHolders
 BY V21_Inv_PrefcMatchesHolders, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<rpgS, sentry, sprefc, squar, xsrcS>>
 BY <1>bARA3sahVywWppEP729, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>EKlvr7njmPVJemnQOoK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AZS11pYo.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QuietConservation'
<2> USE ONLY <1>AZS11pYo, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY Sizes, Location, Design DEF SPrefixPoll, Sizes, Location, Design
<2>2. BaseQuietConservation
 BY V21_Inv_QuietConservation, Sizes, Location, Design DEF QuietConservation, Sizes, Location, Design
<2>3. BaseQuietConservation'
 BY <2>1, <2>2, <1>yGZXINcGTLmMQ, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. STypeOK' /\ SI1' /\ SI2' /\ PrefcMatchesHolders'
 BY <2>1, <1>fEYKNgDqw4gij30Y2, <1>YkucPYfECmTEOd, <1>iAJMtimVkQxiV9, <1>Ncq6PxzMmyy2JEZgFAiwmmADRyzkr1R, Sizes, Location, Design DEF TypInv, P_SI1, P_SI2, Sizes, Location, Design
<2>5. QED BY <2>1, <2>3, <2>4, <1>EyoOF7nIE, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0619_PdQPollQuiet

\* T2M-SCOPE R2M0643_PdQSPrefixPoll_SI3

<1>rkFV1pYoDc97BC.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE P_SI3'
<2> USE ONLY <1>rkFV1pYoDc97BC, Sizes, Location, Design
<2>1. P_SI3 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI3, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixPoll, SPin, basevars, ghV, instV, kV, pgV, recV, rtV, xV, P_SI3, SData, SH, SHeld, SI3, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0643_PdQSPrefixPoll_SI3

\* T2M-SCOPE R2M0644_PdQSPrefixPoll_Map

<1>AHEhofLBQCeM6e.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE SMapIntegrity'
<2> USE ONLY <1>AHEhofLBQCeM6e, Sizes, Location, Design
<2>1. SMapIntegrity /\ P_SI1 /\ P_SI2 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>3. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, SMapIntegrity, P_SI1, P_SI2, SI1, SI2, Active, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0644_PdQSPrefixPoll_Map

\* T2M-SCOPE R2M0645_PdQRead_SPrefixPoll_KReadIntegrity

<1>kRvZLpOpW6nUa4LRRtVIjlg8u2.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE KReadIntegrity'
<2> USE ONLY <1>kRvZLpOpW6nUa4LRRtVIjlg8u2, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY SMTT(10), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. SI3'
 BY <2>1, <1>rkFV1pYoDc97BC, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. NoFreeUnderRead' /\ K15' /\ SMapIntegrity'
 BY <2>1, <2>2, <1>NOq3QYRHhz, <1>d4WAbs6, <1>AHEhofLBQCeM6e, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>iYha333pZ, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0645_PdQRead_SPrefixPoll_KReadIntegrity

\* T2M-SCOPE R2M0646_PdQRead_SPrefixPoll_NoFreeUnderRead

<1>kV0eLudX8nGpPE1WmhmJnV8O9pT.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>kV0eLudX8nGpPE1WmhmJnV8O9pT, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY SMTT(10), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. SI3'
 BY <2>1, <1>rkFV1pYoDc97BC, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>NOq3QYRHhz, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0646_PdQRead_SPrefixPoll_NoFreeUnderRead

\* T2M-SCOPE R2M0647_PdQRead_SPrefixPoll_NoStrayAccess

<1>pVjTjmotbeqi4bXLfmGE7oZXq.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE NoStrayAccess'
<2> USE ONLY <1>pVjTjmotbeqi4bXLfmGE7oZXq, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY SMTT(10), Sizes, Location, Design DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. SI3'
 BY <2>1, <1>rkFV1pYoDc97BC, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. NoFreeUnderRead' BY <2>1, <2>2, <1>NOq3QYRHhz, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>FkRDxj, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0647_PdQRead_SPrefixPoll_NoStrayAccess

\* T2M-SCOPE R2M0671_PdQSPrefixPoll_HitIdentity

<1> QED BY <1>AZS11pYo, <1>fEYKNgDqw4gij30Y2, <1>kRvZLpOpW6nUa4LRRtVIjlg8u2, <1>pVjTjmotbeqi4bXLfmGE7oZXq, <1>kV0eLudX8nGpPE1WmhmJnV8O9pT, <1>mjITk4MlknXdxA, <1>gYrI4fkUb1JlzN, <1>r6Eio6fgiLyUIL, <1>irjP2ezDznb6N60, <1>sM5ltbNnjPpqs5BWhxY6V65re, <1>JE8pveJdQOdbZWwqPsnHBLmxk, <1>vpFlaVRk1EnJCTTrZQPYvde1xeYGSld, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_SPrefixPoll_01_02 SHA 3b4a6febf69fcc8a29301e0a8a202b7b09fe1e7344edadcbd8ab7e0b9f965994
USE DEF V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K9, V21_Inv_NoEvictUnderRDMA, V21_Inv_OneReply, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SealOnlyLanded, V21_Inv_SharedLedRef
HIDE DEF P_PagePoolsDisjoint, Part_SPrefixPoll_01_01, V21_Inv_K15, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_PrefcMatchesHolders, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SendOwnLanded, V22_T_alive, V22_T_crep, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sfly, V22_T_sled, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_SPrefixPoll_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE (K1)' /\ (K2)' /\ (K4)' /\ (K5)' /\ (K6)' /\ (K9)' /\ (K10)' /\ (K11)' /\ (K12)' /\ (K13)' /\ (K14)' /\ (K16)' /\ (K17)' /\ (S1)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (S5)' /\ (S6)' /\ (GenFiltered)' /\ (OneReply)' /\ (ReplyTruth)' /\ (QuarNeverMapped)' /\ (QuarNoReg)' /\ (P_SI6)' /\ (SI7)' /\ (SI8)' /\ (PrivateMapOwner)' /\ (EntryQuarantineDisjoint)' /\ (SealOnlyLanded)' /\ (NoEvictUnderRDMA)' /\ (SharedLedRef)'
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


<1>XIVOBiZIXwIGLwjmAymaHL4NI4nQuHl4zNu6xKbUK.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>XIVOBiZIXwIGLwjmAymaHL4NI4nQuHl4zNu6xKbUK, Sizes, Location, Design
<2>1. EntryQuarantineDisjoint /\ STypeOK /\ Ex6xsGb
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF SPrefixPoll, EntryQuarantineDisjoint, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, Sizes, Location, Design


<1>hVgRSGByST0BWat9xQJTnbBIzecR9AImG.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE PrivateMapOwner'
<2> USE ONLY <1>hVgRSGByST0BWat9xQJTnbBIzecR9AImG, Sizes, Location, Design
<2>1. PrivateMapOwner /\ STypeOK /\ Ex6xsGb
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF SPrefixPoll, PrivateMapOwner, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, Sizes, Location, Design


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Tq.        
 S3 /\ UNCHANGED <<torn>> => S3'
 BY IsaT(10), Sizes, Location, Design DEF S3, Sizes, Location, Design
\* T2M-END R2M0343_PdPF_S3

\* T2M-SCOPE R2M0451_PdPF_B2OffInit

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


<1>Dv.        
 K9 /\ UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>> => K9'
 BY IsaT(10), Sizes, Location, Design DEF Active, K9, Sizes, Location, Design
\* T2M-END R2M0335_PdPF_K9


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


<1>oWe.        
 P_SI6 /\ UNCHANGED <<kpin, krs, ph, rg, rpgS, schoice, smap>> => P_SI6'
 BY IsaT(10), Sizes, Location, Design DEF Active, P_SI6, SI6, Sizes, Location, Design
\* T2M-END R2M0386_PdPF_SI6


<1>Rdvk1xaKhFToALbi9M1.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rpgS, rt, rx, schoice, sdata, sentry, sfly, skey, sled, smap, sprefc, squar, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yUmcCL5ObDZLnC.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K1'
<2> USE ONLY <1>yUmcCL5ObDZLnC, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qrL6UvI4fIIMaj.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K2'
<2> USE ONLY <1>qrL6UvI4fIIMaj, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pmOxMJzgJghPrw.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K4'
<2> USE ONLY <1>pmOxMJzgJghPrw, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vPpTubq3PLyjZx.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K5'
<2> USE ONLY <1>vPpTubq3PLyjZx, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HGzpc9J9FCY6hr.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K6'
<2> USE ONLY <1>HGzpc9J9FCY6hr, Sizes, Location, Design
<2>1. K6
 BY V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, pgn, pr, pst, sfly, sled>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>IM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vJMlK5h6VYDnc0.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K9'
<2> USE ONLY <1>vJMlK5h6VYDnc0, Sizes, Location, Design
<2>1. K9
 BY V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Dv, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Z3KVoXqH49nZ62K.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K10'
<2> USE ONLY <1>Z3KVoXqH49nZ62K, Sizes, Location, Design
<2>1. K10
 BY V21_Inv_K10, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, nx, pgn, ph, pr, pst, ptl, rg, xdst, xg, xlt, xr>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ahB, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VF1bo6mvKyOuf3Z.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K11'
<2> USE ONLY <1>VF1bo6mvKyOuf3Z, Sizes, Location, Design
<2>1. K11
 BY V21_Inv_K11, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>tpP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eQkTacMCEa5u7TP.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K12'
<2> USE ONLY <1>eQkTacMCEa5u7TP, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lf0W15p5yU3kIi7.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K13'
<2> USE ONLY <1>lf0W15p5yU3kIi7, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>I6a4CRDCrCkllgV.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K14'
<2> USE ONLY <1>I6a4CRDCrCkllgV, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Iq3SZjR5PcW9MUK.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K16'
<2> USE ONLY <1>Iq3SZjR5PcW9MUK, Sizes, Location, Design
<2>1. K16
 BY V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, led, pgn, ph, plt, pr, pst, ptl, rg, rpg, sfly, sled, xdst>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>M6Z, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>q7iO0v50FvMa6lp.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE K17'
<2> USE ONLY <1>q7iO0v50FvMa6lp, Sizes, Location, Design
<2>1. K17
 BY V21_Inv_K17, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpg>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aXu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iXx3mqott5gbl2.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE S1'
<2> USE ONLY <1>iXx3mqott5gbl2, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uHKK6T9sDEBRrL.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE S2'
<2> USE ONLY <1>uHKK6T9sDEBRrL, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>f3SFmFxAJqdW1y.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE S3'
<2> USE ONLY <1>f3SFmFxAJqdW1y, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UYf5oN8Zvqsl8n.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE S4'
<2> USE ONLY <1>UYf5oN8Zvqsl8n, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TwSCmHx8o6VDLP.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE S5'
<2> USE ONLY <1>TwSCmHx8o6VDLP, Sizes, Location, Design
<2>1. S5
 BY V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Po, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Vp3JI1v23N6gsN.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE S6'
<2> USE ONLY <1>Vp3JI1v23N6gsN, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ANXAFyf17kAlBXCq0qEvw11.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE GenFiltered'
<2> USE ONLY <1>ANXAFyf17kAlBXCq0qEvw11, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pUvzfe8qcT4gngZreXS3.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE OneReply'
<2> USE ONLY <1>pUvzfe8qcT4gngZreXS3, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zIe6Rn4Wddx7uFwLxT9L5i.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE ReplyTruth'
<2> USE ONLY <1>zIe6Rn4Wddx7uFwLxT9L5i, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Mt9ULr5Qr9ww4807yV2JbptBJ3Z.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QuarNeverMapped'
<2> USE ONLY <1>Mt9ULr5Qr9ww4807yV2JbptBJ3Z, Sizes, Location, Design
<2>1. QuarNeverMapped
 BY V21_Inv_QuarNeverMapped, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ph, pst, rpg>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>CHHI4E3y3uZD9LA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xvB4IYyrDDhRQov4lAQpS.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE QuarNoReg'
<2> USE ONLY <1>xvB4IYyrDDhRQov4lAQpS, Sizes, Location, Design
<2>1. QuarNoReg
 BY V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, pst>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>agy0tgaoa, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UN1HqEkleCubT30.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE P_SI6'
<2> USE ONLY <1>UN1HqEkleCubT30, Sizes, Location, Design
<2>1. P_SI6
 BY V21_Inv_P_SI6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpgS, schoice, smap>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>oWe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LTNl2FrIMCR2pH5.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE SI7'
<2> USE ONLY <1>LTNl2FrIMCR2pH5, Sizes, Location, Design
<2>1. SI7
 BY V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, sentry>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>YC9, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SQuyyuq8qpKvJoH.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE SI8'
<2> USE ONLY <1>SQuyyuq8qpKvJoH, Sizes, Location, Design
<2>1. SI8
 BY V21_Inv_SI8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<sentry, squar, xk, xsrcS, xst>>
 BY <1>Rdvk1xaKhFToALbi9M1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aMI, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0436_PdPFrames_SPrefixPoll

\* T2M-SCOPE R2M0507_PdPOff_SPrefixPoll

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


<1>UkqEfesP2Tk04Bl9UnG5FX3nEz7.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>UkqEfesP2Tk04Bl9UnG5FX3nEz7, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ P_SI4 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, NoEvictUnderRDMA, SAccess, P_SI4, SI4, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0672_PdQSPrefixPoll_NoEvictUnderRDMA


<1>DN0cXpM0rfbS2HaGAq71TVRiv.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE SealOnlyLanded'
<2> USE ONLY <1>DN0cXpM0rfbS2HaGAq71TVRiv, Sizes, Location, Design
<2>1. SealOnlyLanded /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, BaseSealOnlyLanded, InFl, NoWriteInto, SealOnlyLanded, SharedImmutable, Writing, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0675_PdQSPrefixPoll_SealOnlyLanded

\* T2M-SCOPE R2M0676_PdQSPrefixPoll_SharedImmutable

<1>OqmfhmVGSaUVjrNJGa5kExA.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE SharedLedRef'
<2> USE ONLY <1>OqmfhmVGSaUVjrNJGa5kExA, Sizes, Location, Design
<2>1. SharedLedRef /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, SPin, SharedLedRef, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0677_PdQSPrefixPoll_SharedLedRef


<1> QED BY <1>yUmcCL5ObDZLnC, <1>qrL6UvI4fIIMaj, <1>pmOxMJzgJghPrw, <1>vPpTubq3PLyjZx, <1>HGzpc9J9FCY6hr, <1>vJMlK5h6VYDnc0, <1>Z3KVoXqH49nZ62K, <1>VF1bo6mvKyOuf3Z, <1>eQkTacMCEa5u7TP, <1>lf0W15p5yU3kIi7, <1>I6a4CRDCrCkllgV, <1>Iq3SZjR5PcW9MUK, <1>q7iO0v50FvMa6lp, <1>iXx3mqott5gbl2, <1>uHKK6T9sDEBRrL, <1>f3SFmFxAJqdW1y, <1>UYf5oN8Zvqsl8n, <1>TwSCmHx8o6VDLP, <1>Vp3JI1v23N6gsN, <1>ANXAFyf17kAlBXCq0qEvw11, <1>pUvzfe8qcT4gngZreXS3, <1>zIe6Rn4Wddx7uFwLxT9L5i, <1>Mt9ULr5Qr9ww4807yV2JbptBJ3Z, <1>xvB4IYyrDDhRQov4lAQpS, <1>UN1HqEkleCubT30, <1>LTNl2FrIMCR2pH5, <1>SQuyyuq8qpKvJoH, <1>hVgRSGByST0BWat9xQJTnbBIzecR9AImG, <1>XIVOBiZIXwIGLwjmAymaHL4NI4nQuHl4zNu6xKbUK, <1>DN0cXpM0rfbS2HaGAq71TVRiv, <1>UkqEfesP2Tk04Bl9UnG5FX3nEz7, <1>OqmfhmVGSaUVjrNJGa5kExA, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_SPrefixPoll SHA b0005645c8491db11819d91345d433955b34fd363f4708a9b0fe0c5f54b1431e
USE DEF ShapeNetFrame
HIDE DEF Part_SPrefixPoll_01_02, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K9, V21_Inv_NoEvictUnderRDMA, V21_Inv_OneReply, V21_Inv_P_SI4, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SharedLedRef, V21_SFollowStatic, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
LEMMA ShapeEffect_SPrefixPoll ==
 ASSUME NEW p \in SPages, Sizes, Design, SPrefixPoll(p)
 PROVE net'=net
 BY ONLY SPrefixPoll(p), Sizes, Design, SMTT(5) DEF SPrefixPoll, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_SPrefixPoll ==
 ASSUME NEW p \in SPages, Sizes, Design, IndInv, MessageShape, SPrefixPoll(p)
 PROVE MessageShape'
 BY ONLY Sizes, Design, SPrefixPoll(p), MessageShape, ShapeEffect_SPrefixPoll, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_SPrefixPoll SHA ded3885c5d23a1c8f9914980ac68493c443e1425dab65cbb59a840f7f30d47df
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_SPrefixPoll, ShapeNetFrame
THEOREM DomainKeep_SPrefixPoll ==
 ASSUME NEW p \in SPages, Sizes, Location, Design, PinInv, SPrefixPoll(p)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, SPrefixPoll(p), ShapeEffect_SPrefixPoll
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_SPrefixPoll_02 SHA 3e801970d5221836e091514680cf0d39e36431f0340bdf34ef351377c72140d2
USE DEF V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_SPrefixPoll, V21_Inv_MsgXDomain
THEOREM Group_SPrefixPoll_02 ==
 ASSUME Sizes, Location, Design,
        NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE (SharedImmutable)' /\ (HitIdentity)' /\ (P_SI1)' /\ (P_SI2)' /\ (P_SI3)' /\ (P_SI4)' /\ (P_SI5)' /\ (MsgXDomain)' /\ (P_B2OffInit)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE QT_spst == spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]

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

<1> HIDE DEF QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, QT_Base

<1>jHNr8lkeMx8TK0wO5pOjZ.        
  ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
  PROVE MsgXDomain'
 BY ONLY <1>jHNr8lkeMx8TK0wO5pOjZ, Sizes, Location, Design, DomainKeep_SPrefixPoll, SMTT(5)
\* T2M-END R2M0326_PdPDomain_SPrefixPoll


<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


<1>RI3qikwOz3r9FGVQRxkxv.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE P_B2OffInit'
 BY ONLY <1>RI3qikwOz3r9FGVQRxkxv, Sizes, Location, Design, SMTT(10) DEF SPrefixPoll, P_B2OffInit, Sizes, Location, Design
\* T2M-END R2M0507_PdPOff_SPrefixPoll


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


<1>nHvYMuVDGGJwwu.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE P_SI1'
<2> USE ONLY <1>nHvYMuVDGGJwwu, Sizes, Location, Design
<2>1. P_SI1 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, P_SI1, SH, SHPin, SI1, SSendReady, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0580_PdQSPrefixPoll_SI1

\* T2M-SCOPE R2M0581_PdQSPrefixPoll_SI2

<1>m1IXDUWVgkkh4J.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE P_SI2'
<2> USE ONLY <1>m1IXDUWVgkkh4J, Sizes, Location, Design
<2>1. P_SI2 /\ P_SI4 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI2, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, P_SI2, SI2, SPin, P_SI4, SI4, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0581_PdQSPrefixPoll_SI2

\* T2M-SCOPE R2M0582_PdQSPrefixPoll_TypeOK

<1>ZEZv2T8RJaDBHe.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE P_SI3'
<2> USE ONLY <1>ZEZv2T8RJaDBHe, Sizes, Location, Design
<2>1. P_SI3 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI3, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixPoll, SPin, basevars, ghV, instV, kV, pgV, recV, rtV, xV, P_SI3, SData, SH, SHeld, SI3, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0643_PdQSPrefixPoll_SI3

\* T2M-SCOPE R2M0644_PdQSPrefixPoll_Map

<1>OarlSqjFDYdO1jQBzJwnpl.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE HitIdentity'
<2> USE ONLY <1>OarlSqjFDYdO1jQBzJwnpl, Sizes, Location, Design
<2>1. HitIdentity /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, HitIdentity, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0671_PdQSPrefixPoll_HitIdentity

\* T2M-SCOPE R2M0672_PdQSPrefixPoll_NoEvictUnderRDMA

<1>TTS8pmx8sNsgzI.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE P_SI4'
<2> USE ONLY <1>TTS8pmx8sNsgzI, Sizes, Location, Design
<2>1. P_SI4 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, P_SI4, SI4, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0673_PdQSPrefixPoll_SI4

\* T2M-SCOPE R2M0674_PdQSPrefixPoll_SI5

<1>AB0QXfZAXvtNqx.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE P_SI5'
<2> USE ONLY <1>AB0QXfZAXvtNqx, Sizes, Location, Design
<2>1. P_SI5 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI5, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, Held, P_SI5, SI5, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0674_PdQSPrefixPoll_SI5

\* T2M-SCOPE R2M0675_PdQSPrefixPoll_SealOnlyLanded

<1>NH646I2wZ6BJyZcTepIaPnTZbL.        
 ASSUME NEW p \in SPages, PinInv, SPrefixPoll(p)
 PROVE SharedImmutable'
<2> USE ONLY <1>NH646I2wZ6BJyZcTepIaPnTZbL, Sizes, Location, Design
<2>1. SharedImmutable /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixPoll, basevars, ghV, instV, kV, pgV, recV, rtV, xV, InFl, NoWriteInto, SharedImmutable, Writing, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0676_PdQSPrefixPoll_SharedImmutable

\* T2M-SCOPE R2M0677_PdQSPrefixPoll_SharedLedRef

<1> QED BY <1>NH646I2wZ6BJyZcTepIaPnTZbL, <1>OarlSqjFDYdO1jQBzJwnpl, <1>nHvYMuVDGGJwwu, <1>m1IXDUWVgkkh4J, <1>ZEZv2T8RJaDBHe, <1>TTS8pmx8sNsgzI, <1>AB0QXfZAXvtNqx, <1>jHNr8lkeMx8TK0wO5pOjZ, <1>RI3qikwOz3r9FGVQRxkxv, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_SPrefixPoll_01_01, Part_SPrefixPoll_01_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_SPrefixPoll
HIDE DEF DomainKeep_SPrefixPoll, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_SPrefixPoll ==
 ASSUME NEW p \in SPages, Sizes, Location, Design, PinInv, SPrefixPoll(p)
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in SPages, Sizes, Location, Design, PinInv, SPrefixPoll(u)
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_SPrefixPoll_01_01, Part_SPrefixPoll_01_02, Group_SPrefixPoll_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_SPrefixPoll_01_01, Part_SPrefixPoll_01_02, Group_SPrefixPoll_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, SPrefixPoll(p), <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, SPrefixPoll(p), ShapeKeep_SPrefixPoll, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
