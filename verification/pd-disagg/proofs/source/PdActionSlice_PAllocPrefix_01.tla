---- MODULE PdActionSlice_PAllocPrefix_01 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdShape_PAllocPrefix SHA b390458c0856e6dcb6d13ec7b5ba9bf64724d7d51a3e80edee759118c10eb0db
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
LEMMA ShapeEffect_PAllocPrefix ==
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, Sizes, Design, PAllocPrefix(i,r,p)
 PROVE net'=net
 BY ONLY PAllocPrefix(i,r,p), Sizes, Design, SMTT(5) DEF PAllocPrefix, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_PAllocPrefix ==
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, Sizes, Design, IndInv, MessageShape, PAllocPrefix(i,r,p)
 PROVE MessageShape'
 BY ONLY Sizes, Design, PAllocPrefix(i,r,p), MessageShape, ShapeEffect_PAllocPrefix, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_PAllocPrefix SHA c87956abd10e433e30779f0b61a341c58f2d9b9e2dc54c0b226eb03b76d0beb4
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_PAllocPrefix, ShapeNetFrame
THEOREM DomainKeep_PAllocPrefix ==
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, Sizes, Location, Design, PinInv, PAllocPrefix(i,r,p)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, PAllocPrefix(i,r,p), ShapeEffect_PAllocPrefix
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalPart_PAllocPrefix_01_01 SHA 4a2901eb5f5efc55bb9605215de8fc43ba8e98e8f1cce43c614608b576876579
USE DEF V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_K14, V21_Inv_K15, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI6, V21_Inv_S3, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V21_SFollowStatic, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
HIDE DEF ShapeEffect_PAllocPrefix, V21_Inv_MsgXDomain
THEOREM Part_PAllocPrefix_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE (TypInv)' /\ (KReadIntegrity)' /\ (NoStrayAccess)' /\ (K15)' /\ (NoFreeUnderRead)' /\ (HitIdentity)' /\ (P_SI1)' /\ (P_SI2)' /\ (S3)' /\ (SharedImmutable)' /\ (P_SI3)' /\ (P_SI4)' /\ (MsgXDomain)'
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

           Q_RecordBound == \A i \in PInst,r \in Rq : Active(i,r) => rg[i][r] \in Gens /\ rg[i][r]<=gen[r]
           \* T2M-LOCAL-VISIBILITY

           QSI2At(p) ==
             /\ spst[p]="priv" => sown[p] \in Rq /\ sgen[p] \in Gens /\ rg[Loc(p)][sown[p]]=sgen[p]
                  /\ Active(Loc(p),sown[p]) /\ smap[Loc(p)][sown[p]]=p /\ skey[p]=STok(sown[p],sgen[p])
             /\ spst[p]="free" => ~swrite[p] /\ sprefc[p]=0
             /\ spst[p] \in {"priv","drain"} => swrite[p] \/ sdata[p]
             /\ swrite[p] => spst[p] \in {"priv","drain"} /\ ~sdata[p] /\ ~sready[p]
             /\ sready[p] => sdata[p] /\ ~swrite[p]
             /\ spst[p]="shared" => skey[p] \in 1..2
             /\ spst[p] \in {"drain","dup"} => ~sready[p] \/ SPin(p)
             /\ spst[p] # "shared" => sprefc[p]=0
             /\ spst[p]="dup" => sready[p]
             /\ spst[p] # "quar"

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, QT_Base, Q_RecordBound, QSI2At

<1>ujO0Wer3T7UygymO2dyMzk.        
  ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
  PROVE MsgXDomain'
 BY ONLY <1>ujO0Wer3T7UygymO2dyMzk, Sizes, Location, Design, DomainKeep_PAllocPrefix, SMTT(5)
\* T2M-END R2M0301_PdPDomain_PAllocPrefix


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Tq.        
 S3 /\ UNCHANGED <<torn>> => S3'
 BY IsaT(10), Sizes, Location, Design DEF S3, Sizes, Location, Design
\* T2M-END R2M0343_PdPF_S3

\* T2M-SCOPE R2M0451_PdPF_B2OffInit

<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


<1>eG8KztuLf94EhZa7J9nr.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rpgS, rt, rx, sentry, sfly, sled, sprefc, squar, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xsrcS, xst>>
 BY ONLY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JGLY8CkhvvaveFj.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE S3'
<2> USE ONLY <1>JGLY8CkhvvaveFj, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>eG8KztuLf94EhZa7J9nr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

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


<1>YilMcVacbu4Db2t.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE P_SI3'
<2> USE ONLY <1>YilMcVacbu4Db2t, Sizes, Location, Design
<2>1. P_SI3 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI3, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, P_SI3, SData, SH, SHeld, SI3, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0539_PdQPAllocPrefix_SI3

\* T2M-SCOPE R2M0540_PdQPAllocPrefix_SI4

<1>iUVw3ItV9aIfelq.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE P_SI4'
<2> USE ONLY <1>iUVw3ItV9aIfelq, Sizes, Location, Design
<2>1. P_SI4 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, P_SI4, SI4, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0540_PdQPAllocPrefix_SI4

\* T2M-SCOPE R2M0541_PdQPAllocPrefix_SI5

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


<1>y2ogAqgBO3JBZMiR4PR4j2QKk3b.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE SharedImmutable'
<2> USE ONLY <1>y2ogAqgBO3JBZMiR4PR4j2QKk3b, Sizes, Location, Design
<2>1. SharedImmutable /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, InFl, NoWriteInto, SharedImmutable, Writing, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0545_PdQPAllocPrefix_SharedImmutable

\* T2M-SCOPE R2M0546_PdQPAllocPrefix_SharedLedRef

<1>gBsQxNJfcyevLztjaO.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_spst'
<2> USE ONLY <1>gBsQxNJfcyevLztjaO, Sizes, Location, Design
<2>1. QT_spst /\ QT_spst
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>Jlun1oO4ue, SMTT(5), Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, QT_spst, SH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q03lag6qUe1ddnku75.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_sown'
<2> USE ONLY <1>Q03lag6qUe1ddnku75, Sizes, Location, Design
<2>1. QT_sown
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>Jlun1oO4ue, SMTT(5), Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, QT_sown, SH, Rq, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IVyw3vjH21fTIfcxRL.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_sgen'
<2> USE ONLY <1>IVyw3vjH21fTIfcxRL, Sizes, Location, Design
<2>1. QT_sgen /\ QT_Base /\ K8
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_K8, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>Jlun1oO4ue, SMTT(5), Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, QT_sgen, QT_Base, K8, Active, OwnedBy, IsP, IsD, SH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RQsgfj0vRWNSwY56mS.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_skey'
<2> USE ONLY <1>RQsgfj0vRWNSwY56mS, Sizes, Location, Design
<2>1. QT_skey /\ QT_Base /\ K8
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_K8, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>Jlun1oO4ue, SMTT(5), Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, QT_skey, QT_Base, K8, Active, OwnedBy, IsP, IsD, SH, STok, Gens, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nn8oT5LusO4gPs6rfU6E.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_swrite'
<2> USE ONLY <1>nn8oT5LusO4gPs6rfU6E, Sizes, Location, Design
<2>1. QT_swrite
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>Jlun1oO4ue, SMTT(5), Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, QT_swrite, SH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MCkStP78jKnvtGTBUZq.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_sdata'
<2> USE ONLY <1>MCkStP78jKnvtGTBUZq, Sizes, Location, Design
<2>1. QT_sdata /\ QT_spst
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>Jlun1oO4ue, SMTT(5), Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, QT_sdata, QT_spst, SH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vhb7ttTT2MDWIaXq4afC.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_sready'
<2> USE ONLY <1>vhb7ttTT2MDWIaXq4afC, Sizes, Location, Design
<2>1. QT_sready
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>Jlun1oO4ue, SMTT(5), Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, QT_sready, SH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>K47r6R4Y2WRTwfsmEx3F.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_sprefc'
<2> USE ONLY <1>K47r6R4Y2WRTwfsmEx3F, Sizes, Location, Design
<2>1. QT_sprefc /\ UNCHANGED sprefc
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sprefc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CQA4RejvZ1H3lJn83W.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_smap'
<2> USE ONLY <1>CQA4RejvZ1H3lJn83W, Sizes, Location, Design
<2>1. QT_smap
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>Jlun1oO4ue, SMTT(5), Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, QT_smap, SH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>P64a1gGnAlEOmeUfEJR7W.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_schoice'
<2> USE ONLY <1>P64a1gGnAlEOmeUfEJR7W, Sizes, Location, Design
<2>1. QT_schoice
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>Jlun1oO4ue, SMTT(5), Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, QT_schoice, SH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>saJF6azMozFu615rVv.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_rpgS'
<2> USE ONLY <1>saJF6azMozFu615rVv, Sizes, Location, Design
<2>1. QT_rpgS /\ UNCHANGED rpgS
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_rpgS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>j3oZPmGEKcEVuhAVXQh.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_xsrcS'
<2> USE ONLY <1>j3oZPmGEKcEVuhAVXQh, Sizes, Location, Design
<2>1. QT_xsrcS /\ UNCHANGED xsrcS
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_xsrcS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Oi36QWaAgd7zNHSOpfo.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_xsrcP'
<2> USE ONLY <1>Oi36QWaAgd7zNHSOpfo, Sizes, Location, Design
<2>1. QT_xsrcP /\ UNCHANGED xsrcP
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_xsrcP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t5OEaEDf2fqkJsYoUDaT.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_sentry'
<2> USE ONLY <1>t5OEaEDf2fqkJsYoUDaT, Sizes, Location, Design
<2>1. QT_sentry /\ UNCHANGED sentry
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sentry, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rjykUd2EFlNaLHyfpAX.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_squar'
<2> USE ONLY <1>rjykUd2EFlNaLHyfpAX, Sizes, Location, Design
<2>1. QT_squar /\ UNCHANGED squar
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_squar, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aC0Ii0rFIlP6zrb9fzVjziq.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_xprefixOK'
<2> USE ONLY <1>aC0Ii0rFIlP6zrb9fzVjziq, Sizes, Location, Design
<2>1. QT_xprefixOK /\ UNCHANGED xprefixOK
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_xprefixOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AgKOEXc5CnmDysigV1eQ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_dpreOK'
<2> USE ONLY <1>AgKOEXc5CnmDysigV1eQ, Sizes, Location, Design
<2>1. QT_dpreOK /\ UNCHANGED dpreOK
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_dpreOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>l1ej8HjGStc8GIRsoojuS.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_hitSeen'
<2> USE ONLY <1>l1ej8HjGStc8GIRsoojuS, Sizes, Location, Design
<2>1. QT_hitSeen /\ UNCHANGED hitSeen
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_hitSeen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D43UBc6KD61sdbAViaSUjm0.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE QT_dedupSeen'
<2> USE ONLY <1>D43UBc6KD61sdbAViaSUjm0, Sizes, Location, Design
<2>1. QT_dedupSeen /\ UNCHANGED dedupSeen
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_dedupSeen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ysDnVeTRQAy17K83MSQu.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE CoreTypeOK'
<2> HIDE DEF CoreTypeOK, STypeOK, PAllocPrefix
<2>frame. UNCHANGED basevars
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, SMTT(5) DEF PAllocPrefix
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
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>rtVFrame, V22_T_gen, SMTT(5)
<2>rtNext. rt' \in [Rq -> {"idle", "wait", "ok", "err"}]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>rtVFrame, V22_T_rt, SMTT(5)
<2>rpNext. rp' \in [Rq -> {0} \cup Inst]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>rtVFrame, V22_T_rp, SMTT(5)
<2>rdNext. rd' \in [Rq -> {0} \cup Inst]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>rtVFrame, V22_T_rd, SMTT(5)
<2>hpNext. hp' \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>rtVFrame, V22_T_hp, SMTT(5)
<2>hdNext. hd' \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>rtVFrame, V22_T_hd, SMTT(5)
<2>aliveNext. alive' \in [Inst -> BOOLEAN]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>instVFrame, V22_T_alive, SMTT(5)
<2>nfailNext. nfail' \in 0..MaxFail
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>instVFrame, V22_T_nfail, SMTT(5)
<2>tornNext. torn' \in [Inst -> SUBSET Inst]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>instVFrame, V22_T_torn, SMTT(5)
<2>kpinNext. kpin' \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>instVFrame, V22_T_kpin, SMTT(5)
<2>kflyNext. kfly' \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>instVFrame, V22_T_kfly, SMTT(5)
<2>krsNext. krs' \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>instVFrame, V22_T_krs, SMTT(5)
<2>phNext. ph' \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>recVFrame, V22_T_ph, SMTT(5)
<2>rgNext. rg' \in [Inst -> [Rq -> 0..MG]]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>recVFrame, V22_T_rg, SMTT(5)
<2>rpgNext. rpg' \in [Inst -> [Rq -> 0..NP]]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>recVFrame, V22_T_rpg, SMTT(5)
<2>rpeNext. rpe' \in [Inst -> [Rq -> {0} \cup Inst]]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>recVFrame, V22_T_rpe, SMTT(5)
<2>rxNext. rx' \in [Inst -> [Rq -> 0..MX]]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>recVFrame, V22_T_rx, SMTT(5)
<2>rhitNext. rhit' \in [Inst -> [Rq -> BOOLEAN]]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>recVFrame, V22_T_rhit, SMTT(5)
<2>pstNext. pst' \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>pgVFrame, V22_T_pst, SMTT(5)
<2>prNext. pr' \in [Pages -> 0..NR]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>pgVFrame, V22_T_pr, SMTT(5)
<2>pgnNext. pgn' \in [Pages -> 0..MG]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>pgVFrame, V22_T_pgn, SMTT(5)
<2>pltNext. plt' \in [Pages -> 0..PS]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>pgVFrame, V22_T_plt, SMTT(5)
<2>ptlNext. ptl' \in [Pages -> -1..PS]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>pgVFrame, V22_T_ptl, SMTT(5)
<2>pvisNext. pvis' \in [Pages -> BOOLEAN]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>pgVFrame, V22_T_pvis, SMTT(5)
<2>ledNext. led' \in [Pages -> SUBSET Xids]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>pgVFrame, V22_T_led, SMTT(5)
<2>sflyNext. sfly' \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>pgVFrame, V22_T_sfly, SMTT(5)
<2>sledNext. sled' \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>pgVFrame, V22_T_sled, SMTT(5)
<2>prefcNext. prefc' \in [Pages -> 0..NR]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>pgVFrame, V22_T_prefc, SMTT(5)
<2>pqpNext. pqp' \in [Pages -> {0} \cup Inst]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>pgVFrame, V22_T_pqp, SMTT(5)
<2>xrNext. xr' \in [Xids -> 0..NR]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>xVFrame, V22_T_xr, SMTT(5)
<2>xgNext. xg' \in [Xids -> 0..MG]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>xVFrame, V22_T_xg, SMTT(5)
<2>xkNext. xk' \in [Xids -> {"none", "wr", "rd"}]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>xVFrame, V22_T_xk, SMTT(5)
<2>xpNext. xp' \in [Xids -> {0} \cup Inst]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>xVFrame, V22_T_xp, SMTT(5)
<2>xdNext. xd' \in [Xids -> {0} \cup Inst]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>xVFrame, V22_T_xd, SMTT(5)
<2>xsrcNext. xsrc' \in [Xids -> 0..NP]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>xVFrame, V22_T_xsrc, SMTT(5)
<2>xdstNext. xdst' \in [Xids -> 0..NP]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>xVFrame, V22_T_xdst, SMTT(5)
<2>xntNext. xnt' \in [Xids -> 0..PS]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>xVFrame, V22_T_xnt, SMTT(5)
<2>hwNext. hw' \in [Xids -> {"none", "fly", "issued", "stop"}]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>xVFrame, V22_T_hw, SMTT(5)
<2>hokNext. hok' \in [Xids -> BOOLEAN]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>xVFrame, V22_T_hok, SMTT(5)
<2>ivNext. iv' \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>xVFrame, V22_T_iv, SMTT(5)
<2>xstNext. xst' \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>xVFrame, V22_T_xst, SMTT(5)
<2>xltNext. xlt' \in [Xids -> 0..PS]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>xVFrame, V22_T_xlt, SMTT(5)
<2>nxNext. nx' \in 1..(MX + 1)
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>xVFrame, V22_T_nx, SMTT(5)
<2>netNext. net' \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                      r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                      pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>netFrame, V22_T_net, SMTT(5) DEF MessageShape
<2>drepNext. drep' \in [Rq -> [Gens -> 0..2]]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>ghVFrame, V22_T_drep, SMTT(5)
<2>crepNext. crep' \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>ghVFrame, V22_T_crep, SMTT(5)
<2>dsuccNext. dsucc' \in [Rq -> [Gens -> BOOLEAN]]
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>ghVFrame, V22_T_dsucc, SMTT(5)
<2>gbadNext. gbad' \in BOOLEAN
 BY ONLY <1>ysDnVeTRQAy17K83MSQu, <2>ghVFrame, V22_T_gbad, SMTT(5)
<2>qed. QED BY ONLY <2>genNext, <2>rtNext, <2>rpNext, <2>rdNext, <2>hpNext, <2>hdNext, <2>aliveNext, <2>nfailNext, <2>tornNext, <2>kpinNext, <2>kflyNext, <2>krsNext, <2>phNext, <2>rgNext, <2>rpgNext, <2>rpeNext, <2>rxNext, <2>rhitNext, <2>pstNext, <2>prNext, <2>pgnNext, <2>pltNext, <2>ptlNext, <2>pvisNext, <2>ledNext, <2>sflyNext, <2>sledNext, <2>prefcNext, <2>pqpNext, <2>xrNext, <2>xgNext, <2>xkNext, <2>xpNext, <2>xdNext, <2>xsrcNext, <2>xdstNext, <2>xntNext, <2>hwNext, <2>hokNext, <2>ivNext, <2>xstNext, <2>xltNext, <2>nxNext, <2>netNext, <2>drepNext, <2>crepNext, <2>dsuccNext, <2>gbadNext, ZenonT(10) DEF CoreTypeOK

\* T2M-LOCAL-VISIBILITY

<1>uhw6d9ZCOgxtFKjk1J.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE TypInv'
 BY ONLY <1>uhw6d9ZCOgxtFKjk1J, Sizes, Location, Design, <1>ysDnVeTRQAy17K83MSQu, <1>gBsQxNJfcyevLztjaO, <1>Q03lag6qUe1ddnku75, <1>IVyw3vjH21fTIfcxRL, <1>RQsgfj0vRWNSwY56mS, <1>nn8oT5LusO4gPs6rfU6E, <1>MCkStP78jKnvtGTBUZq, <1>vhb7ttTT2MDWIaXq4afC, <1>K47r6R4Y2WRTwfsmEx3F, <1>CQA4RejvZ1H3lJn83W, <1>P64a1gGnAlEOmeUfEJR7W, <1>saJF6azMozFu615rVv, <1>j3oZPmGEKcEVuhAVXQh, <1>Oi36QWaAgd7zNHSOpfo, <1>t5OEaEDf2fqkJsYoUDaT, <1>rjykUd2EFlNaLHyfpAX, <1>aC0Ii0rFIlP6zrb9fzVjziq, <1>AgKOEXc5CnmDysigV1eQ, <1>l1ej8HjGStc8GIRsoojuS, <1>D43UBc6KD61sdbAViaSUjm0 DEF TypInv, STypeOK, QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, Sizes, Location, Design
\* T2M-END R2M0547_PdQPAllocPrefix_TypeOK

\* T2M-SCOPE R2M0625_PdQRead_PAllocPrefix_K15

<1>h2hmVGgdLf6e4YxQ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE K15'
<2> USE ONLY <1>h2hmVGgdLf6e4YxQ, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY SMTT(10), Sizes, Location, Design DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. SI3'
 BY <2>1, <1>YilMcVacbu4Db2t, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>d4WAbs6, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0625_PdQRead_PAllocPrefix_K15

\* T2M-SCOPE R2M0626_PdQPAllocPrefix_Map

<1>tdBpwg7qtDB5Jcm.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE SMapIntegrity'
<2> USE ONLY <1>tdBpwg7qtDB5Jcm, Sizes, Location, Design
<2>1. SMapIntegrity /\ P_SI1 /\ P_SI2 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>3. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, SMapIntegrity, P_SI1, P_SI2, SI1, SI2, Active, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0626_PdQPAllocPrefix_Map

\* T2M-SCOPE R2M0627_PdQRead_PAllocPrefix_KReadIntegrity

<1>JCcGCZHe0YlQZsCPpE3HBRpQtBA.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE KReadIntegrity'
<2> USE ONLY <1>JCcGCZHe0YlQZsCPpE3HBRpQtBA, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY SMTT(10), Sizes, Location, Design DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. SI3'
 BY <2>1, <1>YilMcVacbu4Db2t, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. NoFreeUnderRead' /\ K15' /\ SMapIntegrity'
 BY <2>1, <2>2, <1>NOq3QYRHhz, <1>d4WAbs6, <1>tdBpwg7qtDB5Jcm, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>iYha333pZ, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0627_PdQRead_PAllocPrefix_KReadIntegrity

\* T2M-SCOPE R2M0628_PdQRead_PAllocPrefix_NoFreeUnderRead

<1>VpvyJZ7oiiDAmtqT3s0FZIVjEqjJ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>VpvyJZ7oiiDAmtqT3s0FZIVjEqjJ, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY SMTT(10), Sizes, Location, Design DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. SI3'
 BY <2>1, <1>YilMcVacbu4Db2t, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>NOq3QYRHhz, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0628_PdQRead_PAllocPrefix_NoFreeUnderRead

\* T2M-SCOPE R2M0629_PdQRead_PAllocPrefix_NoStrayAccess

<1>fQsdBvSH6hsZNxR1TSf3T25LV8.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE NoStrayAccess'
<2> USE ONLY <1>fQsdBvSH6hsZNxR1TSf3T25LV8, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY SMTT(10), Sizes, Location, Design DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. SI3'
 BY <2>1, <1>YilMcVacbu4Db2t, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. NoFreeUnderRead' BY <2>1, <2>2, <1>NOq3QYRHhz, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>FkRDxj, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0629_PdQRead_PAllocPrefix_NoStrayAccess


<1>UlP5ju.        
 ASSUME PinInv
 PROVE \A p \in SPages : NoWriteInto(p)
<2> USE ONLY <1>UlP5ju, Sizes, Location, Design
<2>1. QT_Base BY <1>fZ0t, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, SMTT(10), Location, Design DEF QT_Base, SPages, NoWriteInto, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wmiyOW0.        
 ASSUME NEW r, NEW g \in Gens
 PROVE STok(r,g) \in 1..2
 BY ONLY <1>wmiyOW0, Sizes, Location, Design, Sizes, SMTT(10) DEF Gens, STok, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jcpBgwA6nO.        
 ASSUME PinInv
 PROVE Q_RecordBound
<2> USE ONLY <1>jcpBgwA6nO, Sizes, Location, Design
<2>1. K8 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>Jlun1oO4ue, SMTT(10), Sizes, Location, Design DEF Q_RecordBound, K8, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eb6EVqLJT.         \A p \in SPages : Loc(p) \in PInst
 BY Location, SMTT(10), Sizes, Design DEF KPages, Sizes, Location, Design
\* T2M-END R2M0514_PdQFacts


<1>R9W8E6YEGGRGRifSN7IwdzOfy.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE HitIdentity'
<2> USE ONLY <1>R9W8E6YEGGRGRifSN7IwdzOfy, Sizes, Location, Design
<2>1. HitIdentity /\ SMapIntegrity /\ STypeOK /\ QT_Base /\ Q_RecordBound
 BY <1>fZ0t, <1>jcpBgwA6nO, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_STypeOK, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, <1>UlP5ju, <1>wmiyOW0, SMTT(10), Sizes, Location DEF PAllocPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, SH, Active, HitIdentity, SMapIntegrity, STypeOK, QT_Base, Q_RecordBound, Sizes, Location, Design
\* T2M-END R2M0652_PdQRefine_PAllocPrefix_HitIdentity

\* T2M-SCOPE R2M0653_PdQRefine_PAllocPrefix_SI1

<1>FCC0djkgQEKyj4XVc.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE P_SI1'
<2> DEFINE SI1Record(j,q) ==
       /\ ph[j][q]="none" => smap[j][q]=0 /\ ~schoice[j][q]
       /\ smap[j][q] # 0 => schoice[j][q] /\ Loc(smap[j][q])=j
       /\ (Active(j,q) /\ smap[j][q] \in SPages /\ spst[smap[j][q]]="shared") => SH(j,q,rg[j][q],smap[j][q]) \in rpgS
       /\ ph[j][q] \in {"reg","sent","exp"} => SSendReady(j,q)
           SI1Holder(h) ==
       /\ Loc(h[4])=h[1] /\ h[3]<=gen[h[2]]
       /\ (rg[h[1]][h[2]]=h[3] /\ Active(h[1],h[2]) /\ smap[h[1]][h[2]]=h[4]) \/ SHPin(h)
<2> HIDE DEF SI1Record, SI1Holder
<2>1. P_SI1 /\ P_SI6 /\ HitIdentity /\ STypeOK
 BY ONLY <1>FCC0djkgQEKyj4XVc, V21_Inv_HitIdentity, V21_Inv_P_SI1, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. /\ i \in PInst /\ r \in Rq /\ p \in SPages /\ B2
       /\ ph[i][r] \in {"pre","ready"} /\ ~schoice[i][r] /\ Loc(p)=i /\ spst[p]="free"
       /\ smap'=[smap EXCEPT ![i][r]=p] /\ schoice'=[schoice EXCEPT ![i][r]=TRUE]
       /\ spst'=[spst EXCEPT ![p]="priv"] /\ UNCHANGED <<ph,rg,gen,kpin,krs,rpgS>>
 BY ONLY <1>FCC0djkgQEKyj4XVc, SMTT(10), Sizes, Location, Design DEF PAllocPrefix, basevars, rtV, instV, recV, ghV, kV, Sizes, Location, Design
<2>3. /\ spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
       /\ smap \in [PInst -> [Rq -> {0} \cup SPages]] /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
       /\ rpgS \subseteq PInst \X Rq \X Gens \X SPages
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>FCC0djkgQEKyj4XVc, V22_T_rpgS, V22_T_schoice, V22_T_smap, V22_T_spst, SMTT(5)

<2>4. smap[i][r]=0 BY ONLY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF P_SI1, SI1, Sizes, Location, Design
<2>5. ASSUME NEW j \in PInst, NEW q \in Rq PROVE SI1Record(j,q)'
 <3>1. SI1Record(j,q) BY ONLY <2>1, <2>2, <2>5, Sizes, Location, Design DEF P_SI1, SI1, SI1Record, Sizes, Location, Design
 <3>2. CASE j=i /\ q=r
 BY ONLY <2>2, <2>3, <2>5, <3>2, SMTT(10), Sizes, Location, Design DEF SI1Record, Active, SSendReady, Sizes, Location, Design
 <3>3. CASE j#i \/ q#r
  <4>1. smap'[j][q]=smap[j][q] /\ schoice'[j][q]=schoice[j][q]
   BY ONLY <2>2, <2>3, <2>5, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. spst'[p]="priv" /\ (\A z \in SPages : z#p => spst'[z]=spst[z])
   BY ONLY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. QED BY ONLY <2>2, <2>3, <2>5, <3>1, <4>1, <4>2, Design, SMTT(10), Sizes, Location DEF SI1Record, Active, SSendReady, Sizes, Location, Design
 <3>4. QED BY ONLY <3>2, <3>3, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. ASSUME NEW h \in rpgS PROVE SI1Holder(h)'
 <3>1. SI1Holder(h) /\ h \in PInst \X Rq \X Gens \X SPages /\ spst[h[4]]="shared"
 BY ONLY <2>1, <2>2, <2>3, <2>6, SMTT(10), Sizes, Location, Design DEF P_SI1, SI1, SI1Holder, HitIdentity, Sizes, Location, Design
 <3>2. ~(h[1]=i /\ h[2]=r /\ rg[h[1]][h[2]]=h[3] /\ Active(h[1],h[2]))
 BY ONLY <2>1, <2>2, <2>4, <2>6, <3>1, Sizes, SMTT(10), Location, Design DEF P_SI6, SI6, SPages, Sizes, Location, Design
 <3>3. QED BY ONLY <2>2, <2>3, <2>6, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF SI1Holder, SHPin, Active, Sizes, Location, Design
<2>7. QED BY ONLY <2>2, <2>5, <2>6, Sizes, Location, Design DEF P_SI1, SI1, SI1Record, SI1Holder, Sizes, Location, Design
\* T2M-END R2M0653_PdQRefine_PAllocPrefix_SI1


<1>lw2K5ckbi1MepjAB.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PAllocPrefix(i,r,p)
 PROVE P_SI2'
<2> USE ONLY <1>lw2K5ckbi1MepjAB, Sizes, Location, Design
<2>1. B2 /\ P_SI1 /\ P_SI2 /\ STypeOK /\ QT_Base /\ Q_RecordBound
 BY <1>fZ0t, <1>jcpBgwA6nO, V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF PAllocPrefix, Sizes, Location, Design
<2>2. SUFFICES ASSUME NEW z \in SPages PROVE QSI2At(z)'
 BY <2>1, Sizes, Location, Design DEF P_SI2, SI2, QSI2At, Sizes, Location, Design
<2>3. QSI2At(z) BY <2>1, Sizes, Location, Design DEF P_SI2, SI2, QSI2At, Sizes, Location, Design
<2>4. smap[i][r]=0 /\ rg[i][r] \in Gens
 BY <2>1, SMTT(10), Sizes, Location, Design DEF PAllocPrefix, P_SI1, SI1, Q_RecordBound, Active, Sizes, Location, Design
<2>9. UNCHANGED <<rg,ph,kpin,krs,sprefc>>
 /\ ph[i][r] \in {"pre","ready"} /\ Loc(p)=i /\ spst[p]="free"
 /\ smap'=[smap EXCEPT ![i][r]=p]
 /\ spst'=[spst EXCEPT ![p]="priv"] /\ sown'=[sown EXCEPT ![p]=r] /\ sgen'=[sgen EXCEPT ![p]=rg[i][r]]
 /\ skey'=[skey EXCEPT ![p]=STok(r,rg[i][r])]
 /\ swrite'=[swrite EXCEPT ![p]=TRUE] /\ sdata'=[sdata EXCEPT ![p]=FALSE] /\ sready'=[sready EXCEPT ![p]=FALSE]
 BY SMTT(10), Sizes, Location, Design DEF PAllocPrefix, basevars, recV, instV, kV, Sizes, Location, Design
<2>10. STypeOK BY <1>fZ0t, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. CASE z=p
 BY ONLY <2>2, <2>3, <2>4, <2>9, <2>10, <2>5, <1>Jlun1oO4ue, <1>eb6EVqLJT, SMTT(10), Sizes, Location, Design DEF QSI2At, Active, SPin, STypeOK, Sizes, Location, Design
<2>6. CASE z#p
 BY ONLY <2>2, <2>3, <2>4, <2>9, <2>10, <2>6, <1>Jlun1oO4ue, <1>eb6EVqLJT, SMTT(10), Sizes, Location, Design DEF QSI2At, Active, SPin, STypeOK, Sizes, Location, Design
<2>7. QED BY <2>5, <2>6, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0679_PdQSplit_PAllocPrefix_SI2


<1> QED BY <1>uhw6d9ZCOgxtFKjk1J, <1>JCcGCZHe0YlQZsCPpE3HBRpQtBA, <1>fQsdBvSH6hsZNxR1TSf3T25LV8, <1>h2hmVGgdLf6e4YxQ, <1>VpvyJZ7oiiDAmtqT3s0FZIVjEqjJ, <1>R9W8E6YEGGRGRifSN7IwdzOfy, <1>FCC0djkgQEKyj4XVc, <1>lw2K5ckbi1MepjAB, <1>JGLY8CkhvvaveFj, <1>y2ogAqgBO3JBZMiR4PR4j2QKk3b, <1>YilMcVacbu4Db2t, <1>iUVw3ItV9aIfelq, <1>ujO0Wer3T7UygymO2dyMzk, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF DomainKeep_PAllocPrefix, Part_PAllocPrefix_01_01, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_K14, V21_Inv_K15, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI6, V21_Inv_S3, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V21_SFollowStatic, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
====
