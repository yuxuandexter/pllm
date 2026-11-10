---- MODULE PdFinalAction_SEvict ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalPart_SEvict_01_01 SHA 305d97f8906501cb9c3994ef8c3b053c310574250314ac15a2db81ca725d8979
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable
THEOREM Part_SEvict_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW p \in SPages, PinInv, SEvict(p)
 PROVE (TypInv)' /\ (KReadIntegrity)' /\ (NoEvictUnderRDMA)' /\ (HitIdentity)' /\ (P_SI1)' /\ (P_SI4)' /\ (P_SI5)' /\ (S2)'
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

           QProtected(p) == (\E h \in rpgS : h[4]=p) \/ (\E x \in sentry : p \in xsrcS[x])
            \/ (\E h \in squar : h[2]=p) \/ SPin(p)

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, QT_Base, QProtected

<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Af.        
 S2 /\ UNCHANGED <<nx, xg, xr>> => S2'
 BY IsaT(10), Sizes, Location, Design DEF S2, Sizes, Location, Design
\* T2M-END R2M0342_PdPF_S2


<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


<1>RKMFFlUt7odZYw.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rpgS, rt, rx, schoice, sdata, sentry, sfly, skey, sled, smap, sprefc, squar, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>RKMFFlUt7odZYw, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gI3aPDrV5.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE S2'
<2> USE ONLY <1>gI3aPDrV5, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

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


<1>OUQ0TJ.        
 ASSUME NEW A, NEW B, NEW C, NEW D,
 IsFiniteSet(A), IsFiniteSet(B), IsFiniteSet(C), IsFiniteSet(D)
 PROVE IsFiniteSet(A \X B \X C \X D)
<2> USE ONLY <1>OUQ0TJ, Sizes, Location, Design
<2>1. IsFiniteSet(A \X B) /\ IsFiniteSet(C \X D)
 BY FS_Product, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet((A \X B) \X (C \X D))
 BY <2>1, FS_Product, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. A \X B \X C \X D \subseteq
 {<<x[1][1],x[1][2],x[2][1],x[2][2]>> : x \in (A \X B) \X (C \X D)}
 <3>1. SUFFICES ASSUME NEW v \in A \X B \X C \X D
 PROVE v \in {<<x[1][1],x[1][2],x[2][1],x[2][2]>> : x \in (A \X B) \X (C \X D)}
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. << <<v[1],v[2]>>, <<v[3],v[4]>> >> \in (A \X B) \X (C \X D)
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. v = <<v[1],v[2],v[3],v[4]>> BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. {<<x[1][1],x[1][2],x[2][1],x[2][2]>> : x \in (A \X B) \X (C \X D)}
 \subseteq A \X B \X C \X D
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. IsFiniteSet({<<x[1][1],x[1][2],x[2][1],x[2][2]>> : x \in (A \X B) \X (C \X D)})
 BY <2>2, FS_Image, IsaT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>3, <2>5, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uLxnRosmMsMt.        
 IsFiniteSet(PInst) /\ IsFiniteSet(Rq) /\ IsFiniteSet(Gens) /\ IsFiniteSet(SPages) /\ IsFiniteSet(Xids)
 BY Sizes, FS_Interval, SMTT(10), Location, Design DEF PInst, Rq, Gens, SPages, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Sj73Fps0YKe3.        
 ASSUME STypeOK
 PROVE IsFiniteSet(rpgS) /\ IsFiniteSet(sentry) /\ IsFiniteSet(squar)
<2> USE ONLY <1>Sj73Fps0YKe3, Sizes, Location, Design
<2>1. IsFiniteSet(PInst \X Rq \X Gens \X SPages) /\ IsFiniteSet(Xids \X SPages)
 BY <1>uLxnRosmMsMt, <1>OUQ0TJ, FS_Product, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>uLxnRosmMsMt, FS_Subset, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JEJP2nT.        
 ASSUME NEW p \in SPages, STypeOK
 PROVE SRefR(rpgS,p) \in Nat /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefQ(squar,p) \in Nat
<2> USE ONLY <1>JEJP2nT, Sizes, Location, Design
<2>1. IsFiniteSet({h \in rpgS : h[4]=p}) /\ IsFiniteSet({x \in sentry : p \in xsrcS[x]})
 /\ IsFiniteSet({h \in squar : h[2]=p})
 BY <1>Sj73Fps0YKe3, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, FS_CardinalityType, Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fGuYcap.        
 ASSUME NEW p \in SPages, PinInv, B2, sprefc[p]=0
 PROVE /\ (\A h \in rpgS : h[4] # p)
 /\ (\A x \in sentry : p \notin xsrcS[x])
 /\ (\A h \in squar : h[2] # p)
<2> USE ONLY <1>fGuYcap, Sizes, Location, Design
<2>1. STypeOK /\ PrefcMatchesHolders
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2a. SRefR(rpgS,p) \in Nat /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefQ(squar,p) \in Nat
 BY ONLY <1>fGuYcap, <2>1, <1>JEJP2nT, Sizes, Location, Design DEF Sizes, Location, Design
<2>2b. sprefc[p]=SRefR(rpgS,p)+SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
 BY ONLY <1>fGuYcap, <2>1, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>2. SRefR(rpgS,p)=0 /\ SRefE(sentry,xsrcS,p)=0 /\ SRefQ(squar,p)=0
 BY ONLY <1>fGuYcap, <2>2a, <2>2b, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet({h \in rpgS : h[4]=p}) /\ IsFiniteSet({x \in sentry : p \in xsrcS[x]})
 /\ IsFiniteSet({h \in squar : h[2]=p})
 BY <2>1, <1>Sj73Fps0YKe3, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, FS_EmptySet, SMTT(10), Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OOtRLbDQvoFzIv.        
 ASSUME PinInv, B2, NEW p \in SPages, spst[p]="shared", sprefc[p]=0
 PROVE ~QProtected(p)
<2> USE ONLY <1>OOtRLbDQvoFzIv, Sizes, Location, Design
<2>1. SharedLedRef BY V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. (\A h \in rpgS : h[4] # p) /\ (\A x \in sentry : p \notin xsrcS[x]) /\ (\A h \in squar : h[2] # p)
 BY <1>fGuYcap, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ~SPin(p)
 BY <2>1, SMTT(10), Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF QProtected, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DFrwo0mx.        
 ASSUME NEW S, IsFiniteSet(S), Cardinality(S)<=1, NEW p \in S, NEW q \in S
 PROVE p=q
<2> USE ONLY <1>DFrwo0mx, Sizes, Location, Design
<2>1. Cardinality(S) \in Nat /\ Cardinality(S) # 0
 BY FS_CardinalityType, FS_EmptySet, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Cardinality(S)=1 BY ONLY <1>DFrwo0mx, <2>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, FS_Singleton, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eyvgueDq6m.        
 ASSUME PinInv, B2, NEW x \in Xids, NEW p \in xsrcS[x], NEW q \in xsrcS[x]
 PROVE p=q
<2> USE ONLY <1>eyvgueDq6m, Sizes, Location, Design
<2>1. STypeOK /\ P_SI4
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet(xsrcS[x])
 BY <2>1, <1>uLxnRosmMsMt, FS_Subset, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
<2>3a. xsrcP[x]={} /\ Cardinality(xsrcS[x] \cup xsrcP[x])<=1
 BY ONLY <1>eyvgueDq6m, <2>1, Sizes, Location, Design DEF P_SI4, SI4, Sizes, Location, Design
<2>3b. xsrcS[x] \cup xsrcP[x] = xsrcS[x]
 BY ONLY <2>3a, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. Cardinality(xsrcS[x])<=1 BY ONLY <2>3a, <2>3b, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, <1>DFrwo0mx, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rNcBy0QKbqQWuY.        
 ASSUME PinInv, B2
 PROVE \A x \in Xids : SAccess(x) => \A p \in xsrcS[x] : QProtected(p)
<2> USE ONLY <1>rNcBy0QKbqQWuY, Sizes, Location, Design
<2>1. P_SI4 /\ P_SI5 /\ STypeOK
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>eyvgueDq6m, SMTT(10), Sizes, Location, Design DEF P_SI4, P_SI5, SI4, SI5, SAccess, QProtected, STypeOK, Sizes, Location, Design
\* T2M-END R2M0517_PdQProtect


<1>vEENo8JhyIou33k.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE \A z \in SPages : QProtected(z) => spst'[z]=spst[z]
<2> USE ONLY <1>vEENo8JhyIou33k, Sizes, Location, Design
<2>1. STypeOK BY <1>fZ0t, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>OOtRLbDQvoFzIv, SMTT(10), Sizes, Location DEF SEvict, STypeOK, Sizes, Location, Design
\* T2M-END R2M0524_PdQProtect_SEvict

\* T2M-SCOPE R2M0525_PdQEvict_SEvict_HitIdentity
\* T2M-BODY R2M0525_PdQEvict_SEvict_HitIdentity
\* T2M-LOCAL-VISIBILITY

<1>jxvLML1EUraeObxysB.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE HitIdentity'
<2> USE ONLY <1>jxvLML1EUraeObxysB, Sizes, Location, Design
<2>1. HitIdentity /\ STypeOK
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A z \in SPages : QProtected(z) => spst'[z]=spst[z]
 BY <1>vEENo8JhyIou33k, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rNcBy0QKbqQWuY, Design, SMTT(10), Sizes, Location DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, HitIdentity, QProtected, STypeOK, Active, SAccess, Sizes, Location, Design
\* T2M-END R2M0525_PdQEvict_SEvict_HitIdentity

\* T2M-SCOPE R2M0526_PdQEvict_SEvict_NoEvictUnderRDMA

<1>wUiBTsKV0lOqgOs3vhZe1BE.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>wUiBTsKV0lOqgOs3vhZe1BE, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ P_SI4 /\ STypeOK
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A z \in SPages : QProtected(z) => spst'[z]=spst[z]
 BY <1>vEENo8JhyIou33k, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rNcBy0QKbqQWuY, Design, SMTT(10), Sizes, Location DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, NoEvictUnderRDMA, P_SI4, SI4, QProtected, STypeOK, Active, SAccess, Sizes, Location, Design
\* T2M-END R2M0526_PdQEvict_SEvict_NoEvictUnderRDMA

\* T2M-SCOPE R2M0527_PdQEvict_SEvict_SI1

<1>xUieEbq5d1.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE P_SI1'
<2> USE ONLY <1>xUieEbq5d1, Sizes, Location, Design
<2>1. P_SI1 /\ STypeOK
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A z \in SPages : QProtected(z) => spst'[z]=spst[z]
 BY <1>vEENo8JhyIou33k, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rNcBy0QKbqQWuY, Design, SMTT(10), Sizes, Location DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, P_SI1, SI1, Active, SH, SHPin, SSendReady, QProtected, STypeOK, Sizes, Location, Design
\* T2M-END R2M0527_PdQEvict_SEvict_SI1

\* T2M-SCOPE R2M0528_PdQEvict_SEvict_SI4

<1>kBBQwaehoI.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE P_SI4'
<2> USE ONLY <1>kBBQwaehoI, Sizes, Location, Design
<2>1. P_SI4 /\ STypeOK
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A z \in SPages : QProtected(z) => spst'[z]=spst[z]
 BY <1>vEENo8JhyIou33k, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rNcBy0QKbqQWuY, Design, SMTT(10), Sizes, Location DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, P_SI4, SI4, QProtected, STypeOK, Sizes, Location, Design
\* T2M-END R2M0528_PdQEvict_SEvict_SI4

\* T2M-SCOPE R2M0529_PdQEvict_SEvict_SI5

<1>BP7UxrAz2M.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE P_SI5'
<2> USE ONLY <1>BP7UxrAz2M, Sizes, Location, Design
<2>1. P_SI5 /\ STypeOK
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI5, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A z \in SPages : QProtected(z) => spst'[z]=spst[z]
 BY <1>vEENo8JhyIou33k, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rNcBy0QKbqQWuY, Design, SMTT(10), Sizes, Location DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, P_SI5, SI5, Active, Held, QProtected, STypeOK, Sizes, Location, Design
\* T2M-END R2M0529_PdQEvict_SEvict_SI5


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


<1>klcikWMDg.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE P_SI3'
<2> USE ONLY <1>klcikWMDg, Sizes, Location, Design
<2>1. P_SI3 /\ SharedLedRef /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI3, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, P_SI3, SData, SH, SHeld, SI3, SPin, SharedLedRef, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0634_PdQSEvict_SI3

\* T2M-SCOPE R2M0635_PdQSEvict_Map

<1>tAEuJRlBZ.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE SMapIntegrity'
<2> USE ONLY <1>tAEuJRlBZ, Sizes, Location, Design
<2>0. B2 BY Sizes, Location, Design DEF SEvict, Sizes, Location, Design
<2>1. SMapIntegrity /\ P_SI1 /\ P_SI2 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>2. \A z \in SPages : spst[z]="shared" /\ sprefc[z]=0 => \A j \in PInst,t \in Rq : Active(j,t) => smap[j][t] # z
 BY <2>0, <2>1, <1>fGuYcap, SMTT(10), Sizes, Location, Design DEF P_SI1, SI1, SH, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, SMapIntegrity, P_SI1, P_SI2, SI1, SI2, Active, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0635_PdQSEvict_Map

\* T2M-SCOPE R2M0636_PdQRead_SEvict_KReadIntegrity

<1>AeOaewOM9U7YWGAzGP9GM.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE KReadIntegrity'
<2> USE ONLY <1>AeOaewOM9U7YWGAzGP9GM, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY SMTT(10), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. SI3'
 BY <2>1, <1>klcikWMDg, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. NoFreeUnderRead' /\ K15' /\ SMapIntegrity'
 BY <2>1, <2>2, <1>NOq3QYRHhz, <1>d4WAbs6, <1>tAEuJRlBZ, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>iYha333pZ, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0636_PdQRead_SEvict_KReadIntegrity

\* T2M-SCOPE R2M0637_PdQRead_SEvict_NoFreeUnderRead

<1>OpIXtqAGecbs.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_spst'
<2> USE ONLY <1>OpIXtqAGecbs, Sizes, Location, Design
<2>1. QT_spst /\ QT_spst
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>Jlun1oO4ue, SMTT(5), Location DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, QT_spst, SH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aq0a6pGZyQgl.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_sown'
<2> USE ONLY <1>aq0a6pGZyQgl, Sizes, Location, Design
<2>1. QT_sown /\ UNCHANGED sown
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sown, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RO9LuVJi21nN.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_sgen'
<2> USE ONLY <1>RO9LuVJi21nN, Sizes, Location, Design
<2>1. QT_sgen /\ UNCHANGED sgen
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sgen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J6BO0hjuK315.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_skey'
<2> USE ONLY <1>J6BO0hjuK315, Sizes, Location, Design
<2>1. QT_skey /\ UNCHANGED skey
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_skey, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JBjSLpd7zKjdsc.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_swrite'
<2> USE ONLY <1>JBjSLpd7zKjdsc, Sizes, Location, Design
<2>1. QT_swrite /\ UNCHANGED swrite
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_swrite, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>geS0Qg7GzgVPp.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_sdata'
<2> USE ONLY <1>geS0Qg7GzgVPp, Sizes, Location, Design
<2>1. QT_sdata /\ UNCHANGED sdata
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sdata, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H56KV31oX66qP6.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_sready'
<2> USE ONLY <1>H56KV31oX66qP6, Sizes, Location, Design
<2>1. QT_sready /\ UNCHANGED sready
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sready, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>me52jXMkI2b8bC.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_sprefc'
<2> USE ONLY <1>me52jXMkI2b8bC, Sizes, Location, Design
<2>1. QT_sprefc /\ UNCHANGED sprefc
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sprefc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sjiMxYG9Mow9.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_smap'
<2> USE ONLY <1>sjiMxYG9Mow9, Sizes, Location, Design
<2>1. QT_smap /\ UNCHANGED smap
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_smap, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nAssOH06jvO8YKD.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_schoice'
<2> USE ONLY <1>nAssOH06jvO8YKD, Sizes, Location, Design
<2>1. QT_schoice /\ UNCHANGED schoice
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_schoice, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HNLEBEYecgr3.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_rpgS'
<2> USE ONLY <1>HNLEBEYecgr3, Sizes, Location, Design
<2>1. QT_rpgS /\ UNCHANGED rpgS
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_rpgS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rHb0uhQhpKSq1.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_xsrcS'
<2> USE ONLY <1>rHb0uhQhpKSq1, Sizes, Location, Design
<2>1. QT_xsrcS /\ UNCHANGED xsrcS
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_xsrcS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lFIGA1q4xReL9.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_xsrcP'
<2> USE ONLY <1>lFIGA1q4xReL9, Sizes, Location, Design
<2>1. QT_xsrcP /\ UNCHANGED xsrcP
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_xsrcP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kxM92tSWWv78Om.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_sentry'
<2> USE ONLY <1>kxM92tSWWv78Om, Sizes, Location, Design
<2>1. QT_sentry /\ UNCHANGED sentry
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sentry, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TWXXtAReO9PNO.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_squar'
<2> USE ONLY <1>TWXXtAReO9PNO, Sizes, Location, Design
<2>1. QT_squar /\ UNCHANGED squar
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_squar, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kXRaBxKS3KvhoBaVN.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_xprefixOK'
<2> USE ONLY <1>kXRaBxKS3KvhoBaVN, Sizes, Location, Design
<2>1. QT_xprefixOK /\ UNCHANGED xprefixOK
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_xprefixOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>v3uepzpjhJFTEa.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_dpreOK'
<2> USE ONLY <1>v3uepzpjhJFTEa, Sizes, Location, Design
<2>1. QT_dpreOK /\ UNCHANGED dpreOK
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_dpreOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rEy9HW26FUCE2p4.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_hitSeen'
<2> USE ONLY <1>rEy9HW26FUCE2p4, Sizes, Location, Design
<2>1. QT_hitSeen /\ UNCHANGED hitSeen
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_hitSeen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dCjPihEfEWjbXAVRU.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QT_dedupSeen'
<2> USE ONLY <1>dCjPihEfEWjbXAVRU, Sizes, Location, Design
<2>1. QT_dedupSeen /\ UNCHANGED dedupSeen
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_dedupSeen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VIJaJfAxOa4G7Y.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE CoreTypeOK'
<2> HIDE DEF CoreTypeOK, STypeOK, SEvict
<2>frame. UNCHANGED basevars
 BY ONLY <1>VIJaJfAxOa4G7Y, SMTT(5) DEF SEvict
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
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>rtVFrame, V22_T_gen, SMTT(5)
<2>rtNext. rt' \in [Rq -> {"idle", "wait", "ok", "err"}]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>rtVFrame, V22_T_rt, SMTT(5)
<2>rpNext. rp' \in [Rq -> {0} \cup Inst]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>rtVFrame, V22_T_rp, SMTT(5)
<2>rdNext. rd' \in [Rq -> {0} \cup Inst]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>rtVFrame, V22_T_rd, SMTT(5)
<2>hpNext. hp' \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>rtVFrame, V22_T_hp, SMTT(5)
<2>hdNext. hd' \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>rtVFrame, V22_T_hd, SMTT(5)
<2>aliveNext. alive' \in [Inst -> BOOLEAN]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>instVFrame, V22_T_alive, SMTT(5)
<2>nfailNext. nfail' \in 0..MaxFail
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>instVFrame, V22_T_nfail, SMTT(5)
<2>tornNext. torn' \in [Inst -> SUBSET Inst]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>instVFrame, V22_T_torn, SMTT(5)
<2>kpinNext. kpin' \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>instVFrame, V22_T_kpin, SMTT(5)
<2>kflyNext. kfly' \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>instVFrame, V22_T_kfly, SMTT(5)
<2>krsNext. krs' \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>instVFrame, V22_T_krs, SMTT(5)
<2>phNext. ph' \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>recVFrame, V22_T_ph, SMTT(5)
<2>rgNext. rg' \in [Inst -> [Rq -> 0..MG]]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>recVFrame, V22_T_rg, SMTT(5)
<2>rpgNext. rpg' \in [Inst -> [Rq -> 0..NP]]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>recVFrame, V22_T_rpg, SMTT(5)
<2>rpeNext. rpe' \in [Inst -> [Rq -> {0} \cup Inst]]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>recVFrame, V22_T_rpe, SMTT(5)
<2>rxNext. rx' \in [Inst -> [Rq -> 0..MX]]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>recVFrame, V22_T_rx, SMTT(5)
<2>rhitNext. rhit' \in [Inst -> [Rq -> BOOLEAN]]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>recVFrame, V22_T_rhit, SMTT(5)
<2>pstNext. pst' \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>pgVFrame, V22_T_pst, SMTT(5)
<2>prNext. pr' \in [Pages -> 0..NR]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>pgVFrame, V22_T_pr, SMTT(5)
<2>pgnNext. pgn' \in [Pages -> 0..MG]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>pgVFrame, V22_T_pgn, SMTT(5)
<2>pltNext. plt' \in [Pages -> 0..PS]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>pgVFrame, V22_T_plt, SMTT(5)
<2>ptlNext. ptl' \in [Pages -> -1..PS]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>pgVFrame, V22_T_ptl, SMTT(5)
<2>pvisNext. pvis' \in [Pages -> BOOLEAN]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>pgVFrame, V22_T_pvis, SMTT(5)
<2>ledNext. led' \in [Pages -> SUBSET Xids]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>pgVFrame, V22_T_led, SMTT(5)
<2>sflyNext. sfly' \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>pgVFrame, V22_T_sfly, SMTT(5)
<2>sledNext. sled' \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>pgVFrame, V22_T_sled, SMTT(5)
<2>prefcNext. prefc' \in [Pages -> 0..NR]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>pgVFrame, V22_T_prefc, SMTT(5)
<2>pqpNext. pqp' \in [Pages -> {0} \cup Inst]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>pgVFrame, V22_T_pqp, SMTT(5)
<2>xrNext. xr' \in [Xids -> 0..NR]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>xVFrame, V22_T_xr, SMTT(5)
<2>xgNext. xg' \in [Xids -> 0..MG]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>xVFrame, V22_T_xg, SMTT(5)
<2>xkNext. xk' \in [Xids -> {"none", "wr", "rd"}]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>xVFrame, V22_T_xk, SMTT(5)
<2>xpNext. xp' \in [Xids -> {0} \cup Inst]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>xVFrame, V22_T_xp, SMTT(5)
<2>xdNext. xd' \in [Xids -> {0} \cup Inst]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>xVFrame, V22_T_xd, SMTT(5)
<2>xsrcNext. xsrc' \in [Xids -> 0..NP]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>xVFrame, V22_T_xsrc, SMTT(5)
<2>xdstNext. xdst' \in [Xids -> 0..NP]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>xVFrame, V22_T_xdst, SMTT(5)
<2>xntNext. xnt' \in [Xids -> 0..PS]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>xVFrame, V22_T_xnt, SMTT(5)
<2>hwNext. hw' \in [Xids -> {"none", "fly", "issued", "stop"}]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>xVFrame, V22_T_hw, SMTT(5)
<2>hokNext. hok' \in [Xids -> BOOLEAN]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>xVFrame, V22_T_hok, SMTT(5)
<2>ivNext. iv' \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>xVFrame, V22_T_iv, SMTT(5)
<2>xstNext. xst' \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>xVFrame, V22_T_xst, SMTT(5)
<2>xltNext. xlt' \in [Xids -> 0..PS]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>xVFrame, V22_T_xlt, SMTT(5)
<2>nxNext. nx' \in 1..(MX + 1)
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>xVFrame, V22_T_nx, SMTT(5)
<2>netNext. net' \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                      r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                      pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>netFrame, V22_T_net, SMTT(5) DEF MessageShape
<2>drepNext. drep' \in [Rq -> [Gens -> 0..2]]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>ghVFrame, V22_T_drep, SMTT(5)
<2>crepNext. crep' \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>ghVFrame, V22_T_crep, SMTT(5)
<2>dsuccNext. dsucc' \in [Rq -> [Gens -> BOOLEAN]]
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>ghVFrame, V22_T_dsucc, SMTT(5)
<2>gbadNext. gbad' \in BOOLEAN
 BY ONLY <1>VIJaJfAxOa4G7Y, <2>ghVFrame, V22_T_gbad, SMTT(5)
<2>qed. QED BY ONLY <2>genNext, <2>rtNext, <2>rpNext, <2>rdNext, <2>hpNext, <2>hdNext, <2>aliveNext, <2>nfailNext, <2>tornNext, <2>kpinNext, <2>kflyNext, <2>krsNext, <2>phNext, <2>rgNext, <2>rpgNext, <2>rpeNext, <2>rxNext, <2>rhitNext, <2>pstNext, <2>prNext, <2>pgnNext, <2>pltNext, <2>ptlNext, <2>pvisNext, <2>ledNext, <2>sflyNext, <2>sledNext, <2>prefcNext, <2>pqpNext, <2>xrNext, <2>xgNext, <2>xkNext, <2>xpNext, <2>xdNext, <2>xsrcNext, <2>xdstNext, <2>xntNext, <2>hwNext, <2>hokNext, <2>ivNext, <2>xstNext, <2>xltNext, <2>nxNext, <2>netNext, <2>drepNext, <2>crepNext, <2>dsuccNext, <2>gbadNext, ZenonT(10) DEF CoreTypeOK

\* T2M-LOCAL-VISIBILITY

<1>WNWdzXeP8mHA.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE TypInv'
 BY ONLY <1>WNWdzXeP8mHA, Sizes, Location, Design, <1>VIJaJfAxOa4G7Y, <1>OpIXtqAGecbs, <1>aq0a6pGZyQgl, <1>RO9LuVJi21nN, <1>J6BO0hjuK315, <1>JBjSLpd7zKjdsc, <1>geS0Qg7GzgVPp, <1>H56KV31oX66qP6, <1>me52jXMkI2b8bC, <1>sjiMxYG9Mow9, <1>nAssOH06jvO8YKD, <1>HNLEBEYecgr3, <1>rHb0uhQhpKSq1, <1>lFIGA1q4xReL9, <1>kxM92tSWWv78Om, <1>TWXXtAReO9PNO, <1>kXRaBxKS3KvhoBaVN, <1>v3uepzpjhJFTEa, <1>rEy9HW26FUCE2p4, <1>dCjPihEfEWjbXAVRU DEF TypInv, STypeOK, QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, Sizes, Location, Design
\* T2M-END R2M0664_PdQSEvict_TypeOK


<1> QED BY <1>WNWdzXeP8mHA, <1>AeOaewOM9U7YWGAzGP9GM, <1>wUiBTsKV0lOqgOs3vhZe1BE, <1>jxvLML1EUraeObxysB, <1>xUieEbq5d1, <1>kBBQwaehoI, <1>BP7UxrAz2M, <1>gI3aPDrV5, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_SEvict_01_02 SHA e4b515c26e66af7e6ab8637446502ad27515b42754243b9ba202cfedaf0c93e5
USE DEF P_PagePoolsDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_OneReply, V21_Inv_P_SI6, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SendOwnLanded
HIDE DEF Part_SEvict_01_01, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_S2, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_SEvict_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW p \in SPages, PinInv, SEvict(p)
 PROVE (NoStrayAccess)' /\ (NoFreeUnderRead)' /\ (K1)' /\ (K2)' /\ (K3)' /\ (K4)' /\ (K5)' /\ (K6)' /\ (K7)' /\ (K8)' /\ (K9)' /\ (K10)' /\ (K11)' /\ (K12)' /\ (K13)' /\ (K14)' /\ (K15)' /\ (K16)' /\ (K17)' /\ (S1)' /\ (S3)' /\ (S4)' /\ (S5)' /\ (S6)' /\ (ReadOwnLanded)' /\ (SendOwnLanded)' /\ (GenFiltered)' /\ (OneReply)' /\ (ReplyTruth)' /\ (QuarNeverMapped)' /\ (QuarNoReg)' /\ (PrefcMatchesHolders)' /\ (P_SI3)' /\ (P_SI6)' /\ (SI7)'
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

           QEG_Pre(p) == B2 /\ spst[p]="shared" /\ SharedLedRef

           QEG_Zero(p) == sprefc[p]=0

           QEG_Frame == UNCHANGED <<kpin,krs>>

           QEG_PostHeld(p) == \A j \in PInst,k \in KSlots : kpin'[j][k] =>
            \A e \in krs'[j][k] : e[3]=p => SHeld(e)'

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, QT_Base, QEG_Pre, QEG_Zero, QEG_Frame, QEG_PostHeld

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


<1>LBf.        
 K15 /\ UNCHANGED <<hw, kpin, krs, led, plt, ptl, pvis, sdata, sfly, skey, sled, swrite, xdst>> => K15'
 BY P_PagePoolsDisjoint, IsaT(10), Sizes, Location, Design DEF InFl, K15, KData, NoWriteInto, SData, Writing, Sizes, Location, Design
\* T2M-END R2M0338_PdPF_K15


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


<1>oWe.        
 P_SI6 /\ UNCHANGED <<kpin, krs, ph, rg, rpgS, schoice, smap>> => P_SI6'
 BY IsaT(10), Sizes, Location, Design DEF Active, P_SI6, SI6, Sizes, Location, Design
\* T2M-END R2M0386_PdPF_SI6


<1>RKMFFlUt7odZYw.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rpgS, rt, rx, schoice, sdata, sentry, sfly, skey, sled, smap, sprefc, squar, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>RKMFFlUt7odZYw, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OnfHd9f9f.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K1'
<2> USE ONLY <1>OnfHd9f9f, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>paJkhvp6x.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K2'
<2> USE ONLY <1>paJkhvp6x, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DBbvGHtnZ.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K3'
<2> USE ONLY <1>DBbvGHtnZ, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dhg5h3Zix.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K4'
<2> USE ONLY <1>dhg5h3Zix, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wWHKtatib.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K5'
<2> USE ONLY <1>wWHKtatib, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>or8ErvXkb.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K6'
<2> USE ONLY <1>or8ErvXkb, Sizes, Location, Design
<2>1. K6
 BY V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, pgn, pr, pst, sfly, sled>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>IM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hGtqy2ql8.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K7'
<2> USE ONLY <1>hGtqy2ql8, Sizes, Location, Design
<2>1. K7
 BY V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Gk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>noWI8NkqL.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K8'
<2> USE ONLY <1>noWI8NkqL, Sizes, Location, Design
<2>1. K8
 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, ph, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>J7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TLM7whIHH.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K9'
<2> USE ONLY <1>TLM7whIHH, Sizes, Location, Design
<2>1. K9
 BY V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Dv, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T786bMpljQ.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K10'
<2> USE ONLY <1>T786bMpljQ, Sizes, Location, Design
<2>1. K10
 BY V21_Inv_K10, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, nx, pgn, ph, pr, pst, ptl, rg, xdst, xg, xlt, xr>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ahB, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IWallP7C9X.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K11'
<2> USE ONLY <1>IWallP7C9X, Sizes, Location, Design
<2>1. K11
 BY V21_Inv_K11, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>tpP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wEZjuiK0eZ.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K12'
<2> USE ONLY <1>wEZjuiK0eZ, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k9o9yWpIwU.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K13'
<2> USE ONLY <1>k9o9yWpIwU, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CPfOmuo9P8.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K14'
<2> USE ONLY <1>CPfOmuo9P8, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LBXQxHkOYG.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K15'
<2> USE ONLY <1>LBXQxHkOYG, Sizes, Location, Design
<2>1. K15
 BY V21_Inv_K15, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, kpin, krs, led, plt, ptl, pvis, sdata, sfly, skey, sled, swrite, xdst>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>LBf, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rfL1ergYMT.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K16'
<2> USE ONLY <1>rfL1ergYMT, Sizes, Location, Design
<2>1. K16
 BY V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, led, pgn, ph, plt, pr, pst, ptl, rg, rpg, sfly, sled, xdst>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>M6Z, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dyA3HfMT5v.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE K17'
<2> USE ONLY <1>dyA3HfMT5v, Sizes, Location, Design
<2>1. K17
 BY V21_Inv_K17, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpg>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aXu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WeIMcJFXu.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE S1'
<2> USE ONLY <1>WeIMcJFXu, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>L1ZX5Bc57.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE S3'
<2> USE ONLY <1>L1ZX5Bc57, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Mx9o4ACCW.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE S4'
<2> USE ONLY <1>Mx9o4ACCW, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CEqDs8ghr.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE S5'
<2> USE ONLY <1>CEqDs8ghr, Sizes, Location, Design
<2>1. S5
 BY V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Po, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>okTW6w7vV.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE S6'
<2> USE ONLY <1>okTW6w7vV, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>U9hOVvUa0Qk5lD0rC1yX.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE ReadOwnLanded'
<2> USE ONLY <1>U9hOVvUa0Qk5lD0rC1yX, Sizes, Location, Design
<2>1. ReadOwnLanded
 BY V21_Inv_ReadOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<dpreOK, hw, pgn, ph, pr, pst, ptl, pvis, rg, rhit, rpg, xdst>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>V0LNJhFJZYV3Y, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wgHlVqdOkp9OpQ3smPEq.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE SendOwnLanded'
<2> USE ONLY <1>wgHlVqdOkp9OpQ3smPEq, Sizes, Location, Design
<2>1. SendOwnLanded
 BY V21_Inv_SendOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, ptl, sdata, sfly, skey, swrite, xg, xlt, xr, xsrc, xsrcP, xsrcS>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>lDA42xkFPLxcY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eQz5Wj0pgClP9j3IYK.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE GenFiltered'
<2> USE ONLY <1>eQz5Wj0pgClP9j3IYK, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SL6D5kcNAeROQjJ.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE OneReply'
<2> USE ONLY <1>SL6D5kcNAeROQjJ, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BglAe76RxC5XGuxY3.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE ReplyTruth'
<2> USE ONLY <1>BglAe76RxC5XGuxY3, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>x6kNyrlKRzjAZUcuadGgGo.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QuarNeverMapped'
<2> USE ONLY <1>x6kNyrlKRzjAZUcuadGgGo, Sizes, Location, Design
<2>1. QuarNeverMapped
 BY V21_Inv_QuarNeverMapped, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ph, pst, rpg>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>CHHI4E3y3uZD9LA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sPNo3oCcIDxXyOd9.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QuarNoReg'
<2> USE ONLY <1>sPNo3oCcIDxXyOd9, Sizes, Location, Design
<2>1. QuarNoReg
 BY V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, pst>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>agy0tgaoa, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EsgIWu3xYkc9tflrImIFo5ddsJ.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>EsgIWu3xYkc9tflrImIFo5ddsJ, Sizes, Location, Design
<2>1. PrefcMatchesHolders
 BY V21_Inv_PrefcMatchesHolders, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<rpgS, sentry, sprefc, squar, xsrcS>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>OVg4h90W2yOETehwKlF, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>n5OYmFQcG0.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE P_SI6'
<2> USE ONLY <1>n5OYmFQcG0, Sizes, Location, Design
<2>1. P_SI6
 BY V21_Inv_P_SI6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpgS, schoice, smap>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>oWe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cOZTmQtfMf.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE SI7'
<2> USE ONLY <1>cOZTmQtfMf, Sizes, Location, Design
<2>1. SI7
 BY V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, sentry>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>YC9, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fZ0t.         PinInv => STypeOK /\ CoreTypeOK /\ QT_Base /\ QT_spst /\ QT_sown /\ QT_sgen /\ QT_skey /\ QT_swrite /\ QT_sdata /\ QT_sready /\ QT_sprefc /\ QT_smap /\ QT_schoice /\ QT_rpgS /\ QT_xsrcS /\ QT_xsrcP /\ QT_sentry /\ QT_squar /\ QT_xprefixOK /\ QT_dpreOK /\ QT_hitSeen /\ QT_dedupSeen
<2>project. (CoreTypeOK /\ STypeOK) => STypeOK /\ CoreTypeOK /\ QT_Base /\ QT_spst /\ QT_sown /\ QT_sgen /\ QT_skey /\ QT_swrite /\ QT_sdata /\ QT_sready /\ QT_sprefc /\ QT_smap /\ QT_schoice /\ QT_rpgS /\ QT_xsrcS /\ QT_xsrcP /\ QT_sentry /\ QT_squar /\ QT_xprefixOK /\ QT_dpreOK /\ QT_hitSeen /\ QT_dedupSeen
 BY ONLY ZenonT(5) DEF CoreTypeOK, STypeOK, QT_Base, QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen
<2>qed. QED BY ONLY <2>project, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design, SMTT(5)
\* T2M-END R2M0513_PdQTypes


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

<1>klcikWMDg.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE P_SI3'
<2> USE ONLY <1>klcikWMDg, Sizes, Location, Design
<2>1. P_SI3 /\ SharedLedRef /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI3, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, P_SI3, SData, SH, SHeld, SI3, SPin, SharedLedRef, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0634_PdQSEvict_SI3

\* T2M-SCOPE R2M0635_PdQSEvict_Map

<1>xZG4ifE82VNtr2VIED7lAz.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>xZG4ifE82VNtr2VIED7lAz, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY SMTT(10), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. SI3'
 BY <2>1, <1>klcikWMDg, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>NOq3QYRHhz, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0637_PdQRead_SEvict_NoFreeUnderRead

\* T2M-SCOPE R2M0638_PdQRead_SEvict_NoStrayAccess

<1>tJ3SqVyr53xeeYPgkhi9.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE NoStrayAccess'
<2> USE ONLY <1>tJ3SqVyr53xeeYPgkhi9, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY SMTT(10), Sizes, Location, Design DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. SI3'
 BY <2>1, <1>klcikWMDg, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. NoFreeUnderRead' BY <2>1, <2>2, <1>NOq3QYRHhz, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>FkRDxj, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0638_PdQRead_SEvict_NoStrayAccess


<1>KMeKJGdeuK.        
 ASSUME NEW p \in SPages, QEG_Pre(p), QEG_Zero(p), QEG_Frame
 PROVE QEG_PostHeld(p)
<2> USE ONLY <1>KMeKJGdeuK, Sizes, Location, Design
<2>1. ~SPin(p)
 BY SMTT(10), Sizes, Location, Design DEF QEG_Pre, QEG_Zero, SharedLedRef, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF QEG_PostHeld, QEG_Frame, SPin, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>L0ti0lV.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QEG_Pre(p) /\ QEG_Zero(p) /\ QEG_Frame
<2> USE ONLY <1>L0ti0lV, Sizes, Location, Design
<2>1. SharedLedRef BY V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF SEvict, basevars, instV, kV, QEG_Pre, QEG_Zero, QEG_Frame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OM47.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE P_SI3'
<2> USE ONLY <1>OM47, Sizes, Location, Design
<2>1. P_SI3 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI3, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QEG_Pre(p) /\ QEG_Frame /\ QEG_Zero(p)
 BY <1>L0ti0lV, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QEG_PostHeld(p)
 BY ONLY <2>2, <1>KMeKJGdeuK, IsaT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>5, SMTT(10), Sizes, Location, Design DEF SEvict, basevars, instV, kV, rtV, recV, pgV, xV, ghV, P_SI3, SI3, SH, SData, SHeld, STypeOK, QT_Base, QEG_PostHeld, Sizes, Location, Design
\* T2M-END R2M0658_PdQSEvictGuarded


<1> QED BY <1>tJ3SqVyr53xeeYPgkhi9, <1>xZG4ifE82VNtr2VIED7lAz, <1>OnfHd9f9f, <1>paJkhvp6x, <1>DBbvGHtnZ, <1>dhg5h3Zix, <1>wWHKtatib, <1>or8ErvXkb, <1>hGtqy2ql8, <1>noWI8NkqL, <1>TLM7whIHH, <1>T786bMpljQ, <1>IWallP7C9X, <1>wEZjuiK0eZ, <1>k9o9yWpIwU, <1>CPfOmuo9P8, <1>LBXQxHkOYG, <1>rfL1ergYMT, <1>dyA3HfMT5v, <1>WeIMcJFXu, <1>L1ZX5Bc57, <1>Mx9o4ACCW, <1>CEqDs8ghr, <1>okTW6w7vV, <1>U9hOVvUa0Qk5lD0rC1yX, <1>wgHlVqdOkp9OpQ3smPEq, <1>eQz5Wj0pgClP9j3IYK, <1>SL6D5kcNAeROQjJ, <1>BglAe76RxC5XGuxY3, <1>x6kNyrlKRzjAZUcuadGgGo, <1>sPNo3oCcIDxXyOd9, <1>EsgIWu3xYkc9tflrImIFo5ddsJ, <1>OM47, <1>n5OYmFQcG0, <1>cOZTmQtfMf, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_SEvict SHA d5d495460a557e1de9c03ec86b3d13de9bc50fb8f5e8d86c77c03a0e4193e957
USE DEF ShapeNetFrame
HIDE DEF P_PagePoolsDisjoint, Part_SEvict_01_02, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_SendOwnLanded, V21_Inv_SharedLedRef, V21_SFollowStatic
LEMMA ShapeEffect_SEvict ==
 ASSUME NEW p \in SPages, Sizes, Design, SEvict(p)
 PROVE net'=net
 BY ONLY SEvict(p), Sizes, Design, SMTT(5) DEF SEvict, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_SEvict ==
 ASSUME NEW p \in SPages, Sizes, Design, IndInv, MessageShape, SEvict(p)
 PROVE MessageShape'
 BY ONLY Sizes, Design, SEvict(p), MessageShape, ShapeEffect_SEvict, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_SEvict SHA 0e04f17508403dd7206222d50360eae3cf0203c0f0f0cbcd1d0010c12cf302cd
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_SEvict, ShapeNetFrame
THEOREM DomainKeep_SEvict ==
 ASSUME NEW p \in SPages, Sizes, Location, Design, PinInv, SEvict(p)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, SEvict(p), ShapeEffect_SEvict
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_SEvict_02 SHA b93f18be2e8c0df044ed7de8dc3de6b658d6297a6c66afe57c2e1ec769cdd8c3
USE DEF V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_P_SI2, V21_Inv_PrivateMapOwner, V21_Inv_QuietConservation, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_SFollowStatic, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_SEvict, V21_Inv_MsgXDomain
THEOREM Group_SEvict_02 ==
 ASSUME Sizes, Location, Design,
        NEW p \in SPages, PinInv, SEvict(p)
 PROVE (SI8)' /\ (PrivateMapOwner)' /\ (EntryQuarantineDisjoint)' /\ (SealOnlyLanded)' /\ (QuietConservation)' /\ (SharedLedRef)' /\ (SharedImmutable)' /\ (P_SI2)' /\ (MsgXDomain)' /\ (P_B2OffInit)'
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


<1>vNk2bdktgVz2zvqVFL1ES9fl9ECEcSZcNjqR.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>vNk2bdktgVz2zvqVFL1ES9fl9ECEcSZcNjqR, Sizes, Location, Design
<2>1. EntryQuarantineDisjoint /\ STypeOK /\ Ex6xsGb
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF SEvict, EntryQuarantineDisjoint, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, Sizes, Location, Design


<1>WvdVExZPcfLxQ5ydxZ3RtQR439zb.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE PrivateMapOwner'
<2> USE ONLY <1>WvdVExZPcfLxQ5ydxZ3RtQR439zb, Sizes, Location, Design
<2>1. PrivateMapOwner /\ STypeOK /\ Ex6xsGb
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF SEvict, PrivateMapOwner, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, Sizes, Location, Design


<1>Zx1kOUM8tOPJZ9m4.        
  ASSUME NEW p \in SPages, PinInv, SEvict(p)
  PROVE MsgXDomain'
 BY ONLY <1>Zx1kOUM8tOPJZ9m4, Sizes, Location, Design, DomainKeep_SEvict, SMTT(5)
\* T2M-END R2M0324_PdPDomain_SEvict


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>aMI.        
 SI8 /\ UNCHANGED <<sentry, squar, xk, xsrcS, xst>> => SI8'
 BY IsaT(10), Sizes, Location, Design DEF SI8, Sizes, Location, Design
\* T2M-END R2M0388_PdPF_SI8

\* T2M-SCOPE R2M0512_PdQBase

<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


<1>RKMFFlUt7odZYw.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rpgS, rt, rx, schoice, sdata, sentry, sfly, skey, sled, smap, sprefc, squar, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>RKMFFlUt7odZYw, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HfsFQeyCSl.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE SI8'
<2> USE ONLY <1>HfsFQeyCSl, Sizes, Location, Design
<2>1. SI8
 BY V21_Inv_SI8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<sentry, squar, xk, xsrcS, xst>>
 BY <1>RKMFFlUt7odZYw, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aMI, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0433_PdPFrames_SEvict

\* T2M-SCOPE R2M0505_PdPOff_SEvict

<1>s7lhyXe80dFQ9IuB.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE P_B2OffInit'
 BY ONLY <1>s7lhyXe80dFQ9IuB, Sizes, Location, Design, SMTT(10) DEF SEvict, P_B2OffInit, Sizes, Location, Design
\* T2M-END R2M0505_PdPOff_SEvict


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


<1>RQIRAtsovZT6ChVAv7bf54H.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE QuietConservation'
<2> USE ONLY <1>RQIRAtsovZT6ChVAv7bf54H, Sizes, Location, Design
<2>1. QuietConservation /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_QuietConservation, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, BaseQuietConservation, KPinned, Quiet, QuietConservation, SPin, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0659_PdQSEvict_QuietConservation

\* T2M-SCOPE R2M0660_PdQSEvict_SI2

<1>qOy28JEZO.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE P_SI2'
<2> USE ONLY <1>qOy28JEZO, Sizes, Location, Design
<2>1. P_SI2 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, P_SI2, SI2, SPin, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0660_PdQSEvict_SI2

\* T2M-SCOPE R2M0661_PdQSEvict_SealOnlyLanded

<1>JcXcZAcCpv7Y1dbhaikL.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE SealOnlyLanded'
<2> USE ONLY <1>JcXcZAcCpv7Y1dbhaikL, Sizes, Location, Design
<2>1. SealOnlyLanded /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, BaseSealOnlyLanded, InFl, NoWriteInto, SealOnlyLanded, SharedImmutable, Writing, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0661_PdQSEvict_SealOnlyLanded

\* T2M-SCOPE R2M0662_PdQSEvict_SharedImmutable

<1>jgcQCKW91MHNjX3GjdZiN.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE SharedImmutable'
<2> USE ONLY <1>jgcQCKW91MHNjX3GjdZiN, Sizes, Location, Design
<2>1. SharedImmutable /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, InFl, NoWriteInto, SharedImmutable, Writing, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0662_PdQSEvict_SharedImmutable

\* T2M-SCOPE R2M0663_PdQSEvict_SharedLedRef

<1>HgMM1a7zu2bIynM81c.        
 ASSUME NEW p \in SPages, PinInv, SEvict(p)
 PROVE SharedLedRef'
<2> USE ONLY <1>HgMM1a7zu2bIynM81c, Sizes, Location, Design
<2>1. SharedLedRef /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SEvict, basevars, ghV, instV, kV, pgV, recV, rtV, xV, SPin, SharedLedRef, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0663_PdQSEvict_SharedLedRef

\* T2M-SCOPE R2M0664_PdQSEvict_TypeOK

<1> QED BY <1>HfsFQeyCSl, <1>WvdVExZPcfLxQ5ydxZ3RtQR439zb, <1>vNk2bdktgVz2zvqVFL1ES9fl9ECEcSZcNjqR, <1>JcXcZAcCpv7Y1dbhaikL, <1>RQIRAtsovZT6ChVAv7bf54H, <1>HgMM1a7zu2bIynM81c, <1>jgcQCKW91MHNjX3GjdZiN, <1>qOy28JEZO, <1>Zx1kOUM8tOPJZ9m4, <1>s7lhyXe80dFQ9IuB, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_SEvict_01_01, Part_SEvict_01_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_SEvict
HIDE DEF DomainKeep_SEvict, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_P_SI2, V21_Inv_PrivateMapOwner, V21_Inv_QuietConservation, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_SFollowStatic, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_SEvict ==
 ASSUME NEW p \in SPages, Sizes, Location, Design, PinInv, SEvict(p)
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in SPages, Sizes, Location, Design, PinInv, SEvict(u)
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_SEvict_01_01, Part_SEvict_01_02, Group_SEvict_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_SEvict_01_01, Part_SEvict_01_02, Group_SEvict_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, SEvict(p), <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, SEvict(p), ShapeKeep_SEvict, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
