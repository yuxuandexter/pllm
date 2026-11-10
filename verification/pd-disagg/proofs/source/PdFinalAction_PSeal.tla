---- MODULE PdFinalAction_PSeal ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalPart_PSeal_01_01 SHA 6b60a67c5b04dbb3c9f96bc8c386f1dc23ec6c4909cd568b7b8342bf16bfbc6f
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sfly, V22_T_sled, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_PSeal_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE (TypInv)' /\ (PrefcMatchesHolders)' /\ (SealOnlyLanded)' /\ (SharedLedRef)' /\ (SharedImmutable)' /\ (HitIdentity)' /\ (P_SI2)' /\ (P_SI6)' /\ (EntryQuarantineDisjoint)' /\ (P_SI1)' /\ (P_SI3)' /\ (KReadIntegrity)'
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

           Q_RecordBound == \A i \in PInst,r \in Rq : Active(i,r) => rg[i][r] \in Gens /\ rg[i][r]<=gen[r]
           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Ex6xsGb, QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, QT_Base, Q_RecordBound

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

<1>n06EAB7EubRSvN.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages,
 PinInv, B2, Active(i,r), smap[i][r]=p, spst[p]="priv"
 PROVE /\ sown[p]=r /\ sgen[p]=rg[i][r]
       /\ (\A j \in PInst, t \in Rq :
             (Active(j,t) /\ smap[j][t]=p) => j=i /\ t=r /\ rg[j][t]=rg[i][r])
<2> USE ONLY <1>n06EAB7EubRSvN, Sizes, Location, Design
<2>1. PrivateMapOwner /\ P_SI1
 BY V21_Inv_P_SI1, V21_Inv_PrivateMapOwner, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>HsRNXPeY1C, SMTT(10), Sizes, Location, Design DEF PrivateMapOwner, P_SI1, SI1, Sizes, Location, Design


<1>R3BtvcMV.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE P_SI1'
<2> USE ONLY <1>R3BtvcMV, Sizes, Location, Design
<2>1. P_SI1 /\ XDML1U9 /\ PROpiGS /\ K8
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_K8, V21_Inv_P_SI1, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 /\ Active(i,r) /\ smap[i][r] \in SPages /\ spst[smap[i][r]]="priv"
 /\ spst'=[spst EXCEPT ![smap[i][r]]="shared"]
 /\ rpgS'=rpgS \cup {SH(i,r,rg[i][r],smap[i][r])}
 /\ UNCHANGED <<ph,rg,smap,schoice,gen,kpin,krs>>
 BY SMTT(10), Sizes, Location, Design DEF PSeal, Active, basevars, rtV, instV, kV, recV, pgV, xV, ghV, Sizes, Location, Design
<2>3. \A j \in PInst, t \in Rq :
    (Active(j,t) /\ smap[j][t]=smap[i][r]) => j=i /\ t=r /\ rg[j][t]=rg[i][r]
 BY <2>2, <1>n06EAB7EubRSvN, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. Loc(smap[i][r])=i /\ rg[i][r]<=gen[r]
 <3>1. smap[i][r] # 0 BY <2>2, Sizes, SMTT(10), Location, Design DEF SPages, Sizes, Location, Design
 <3>2. QED BY <2>1, <2>2, <3>1, <1>HsRNXPeY1C, SMTT(10), Sizes, Location, Design DEF P_SI1, SI1, K8, Active, Sizes, Location, Design
<2>5. \A j \in PInst, t \in Rq :
 /\ (ph'[j][t]="none" => smap'[j][t]=0 /\ ~schoice'[j][t])
 /\ (smap'[j][t] # 0 => schoice'[j][t] /\ Loc(smap'[j][t])=j)
 /\ ((Active(j,t)' /\ smap'[j][t] \in SPages /\ spst'[smap'[j][t]]="shared") => SH(j,t,rg'[j][t],smap'[j][t]) \in rpgS')
 /\ (ph'[j][t] \in {"reg","sent","exp"} => SSendReady(j,t)')
 <3>1. SUFFICES ASSUME NEW j \in PInst, NEW t \in Rq
 PROVE /\ (ph'[j][t]="none" => smap'[j][t]=0 /\ ~schoice'[j][t])
       /\ (smap'[j][t] # 0 => schoice'[j][t] /\ Loc(smap'[j][t])=j)
       /\ ((Active(j,t)' /\ smap'[j][t] \in SPages /\ spst'[smap'[j][t]]="shared") => SH(j,t,rg'[j][t],smap'[j][t]) \in rpgS')
       /\ (ph'[j][t] \in {"reg","sent","exp"} => SSendReady(j,t)')
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. /\ (ph[j][t]="none" => smap[j][t]=0 /\ ~schoice[j][t])
       /\ (smap[j][t] # 0 => schoice[j][t] /\ Loc(smap[j][t])=j)
       /\ ((Active(j,t) /\ smap[j][t] \in SPages /\ spst[smap[j][t]]="shared") => SH(j,t,rg[j][t],smap[j][t]) \in rpgS)
       /\ (ph[j][t] \in {"reg","sent","exp"} => SSendReady(j,t))
 BY <2>1, <2>2, Sizes, Location, Design DEF P_SI1, SI1, Sizes, Location, Design
 <3>3. (Active(j,t)' /\ smap'[j][t] \in SPages /\ spst'[smap'[j][t]]="shared") => SH(j,t,rg'[j][t],smap'[j][t]) \in rpgS'
 BY <2>1, <2>2, <2>3, <3>2, SMTT(10), Sizes, Location, Design DEF Active, SH, XDML1U9, Sizes, Location, Design
 <3>4. ph'[j][t] \in {"reg","sent","exp"} => SSendReady(j,t)'
 BY <2>1, <2>2, <3>2, Design, SMTT(10), Sizes, Location DEF SSendReady, XDML1U9, PROpiGS, Sizes, Location, Design
 <3>5. QED BY <2>2, <3>2, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A h \in rpgS' :
 /\ Loc(h[4])=h[1] /\ h[3]<=gen'[h[2]]
 /\ ((rg'[h[1]][h[2]]=h[3] /\ Active(h[1],h[2])' /\ smap'[h[1]][h[2]]=h[4]) \/ SHPin(h)')
 BY <2>1, <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF P_SI1, SI1, Active, SHPin, SH, Sizes, Location, Design
<2>7. QED BY <2>2, <2>5, <2>6, Sizes, Location, Design DEF P_SI1, SI1, Sizes, Location, Design


<1>sPyMVKte.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE P_SI3'
<2> USE ONLY <1>sPyMVKte, Sizes, Location, Design
<2>1. PrivateMapOwner /\ P_SI1 /\ K14 /\ P_SI2 /\ P_SI3 /\ STypeOK /\ Ex6xsGb
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_K14, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 /\ Active(i,r) /\ smap[i][r] \in SPages /\ spst[smap[i][r]]="priv"
 BY Design, SMTT(10), Sizes, Location DEF PSeal, Active, Sizes, Location, Design
<2>3. sown[smap[i][r]]=r /\ sgen[smap[i][r]]=rg[i][r]
 /\ (\A j \in PInst, t \in Rq :
    (Active(j,t) /\ smap[j][t]=smap[i][r]) => j=i /\ t=r /\ rg[j][t]=rg[i][r])
 BY <2>2, <1>n06EAB7EubRSvN, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF PSeal, P_SI1, SI1, SHPin, SSendReady, K14, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, P_SI2, SI2, SPin, P_SI3, SData, SH, SHeld, SI3, STypeOK, Ex6xsGb, Sizes, Location, Design


<1>HPPdcIR.         PinInv => PrivateMapOwner /\ EntryQuarantineDisjoint
 BY V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, Sizes, Location, Design DEF Sizes, Location, Design


<1>iYbwg2Frunim18YdPU9Na3MezvgRiTZu5yA.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>iYbwg2Frunim18YdPU9Na3MezvgRiTZu5yA, Sizes, Location, Design
<2>1. EntryQuarantineDisjoint /\ STypeOK /\ Ex6xsGb
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF PSeal, EntryQuarantineDisjoint, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, Sizes, Location, Design


<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


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

<1>ce75K.        
 ASSUME NEW H, IsFiniteSet(H), NEW h, h \notin H, NEW p
 PROVE SRefR(H \cup {h},p) = SRefR(H,p) + (IF h[4]=p THEN 1 ELSE 0)
<2> USE ONLY <1>ce75K, Sizes, Location, Design
<2>1. IsFiniteSet({x \in H : x[4]=p})
 BY FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE h[4]=p
 <3>1. {x \in H \cup {h} : x[4]=p} = {x \in H : x[4]=p} \cup {h}
 BY <2>2, IsaT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. h \notin {x \in H : x[4]=p}
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>1, <2>2, <3>1, <3>2, FS_AddElement, SMTT(10), Sizes, Location, Design DEF SRefR, Sizes, Location, Design
<2>3. CASE h[4] # p
 <3>1. {x \in H \cup {h} : x[4]=p} = {x \in H : x[4]=p}
 BY <2>3, IsaT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>3, <3>1, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF SRefR, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0516_PdQFinite


<1>bH9b5NM1uR.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE SH(i,r,rg[i][r],smap[i][r]) \notin rpgS
<2> USE ONLY <1>bH9b5NM1uR, Sizes, Location, Design
<2>1. P_SI1 /\ P_SI6 /\ HitIdentity /\ STypeOK
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_P_SI1, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>Jlun1oO4ue, Design, SMTT(10), Sizes, Location DEF PSeal, P_SI1, P_SI6, SI1, SI6, HitIdentity, Active, SH, STypeOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lS3arvh9b8mjsDA8M2NoqmV1.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>lS3arvh9b8mjsDA8M2NoqmV1, Sizes, Location, Design
<2>1. STypeOK /\ PrefcMatchesHolders
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet(rpgS) /\ SH(i,r,rg[i][r],smap[i][r]) \notin rpgS
 BY <2>1, <1>Sj73Fps0YKe3, <1>bH9b5NM1uR, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. B2 /\ smap[i][r] \in SPages /\ rpgS'=rpgS \cup {SH(i,r,rg[i][r],smap[i][r])}
 /\ sprefc'=[sprefc EXCEPT ![smap[i][r]]=@+1] /\ UNCHANGED <<sentry,xsrcS,squar>>
 BY Design, SMTT(10), Sizes, Location DEF PSeal, Sizes, Location, Design
<2>4. SUFFICES ASSUME NEW z \in SPages
 PROVE sprefc'[z]=SRefR(rpgS',z)+SRefE(sentry',xsrcS',z)+SRefQ(squar',z)
 BY <2>3, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>5. SRefR(rpgS',z)=SRefR(rpgS,z)+(IF z=smap[i][r] THEN 1 ELSE 0)
 BY <2>2, <2>3, <1>ce75K, SMTT(10), Sizes, Location, Design DEF SH, Sizes, Location, Design
<2>6. SRefR(rpgS,z) \in Nat /\ SRefE(sentry,xsrcS,z) \in Nat /\ SRefQ(squar,z) \in Nat
 BY <2>1, <1>JEJP2nT, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED BY <2>1, <2>3, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, STypeOK, Sizes, Location, Design
\* T2M-END R2M0567_PdQPSeal_Count

\* T2M-SCOPE R2M0568_PdQPSeal_KReadIntegrity

<1>ysvJeGHoRLORehN6t4L.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE KReadIntegrity'
<2> USE ONLY <1>ysvJeGHoRLORehN6t4L, Sizes, Location, Design
<2>1. KReadIntegrity /\ K14 /\ P_SI1 /\ P_SI2 /\ P_SI3 /\ P_SI6 /\ SharedLedRef /\ HitIdentity /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_K14, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, BaseKReadIntegrity, InFl, KData, KHeld, KReadIntegrity, NoWriteInto, SData, SHeld, SMapIntegrity, Writing, K14, P_SI1, SH, SHPin, SI1, SSendReady, P_SI2, SI2, SPin, P_SI3, SI3, P_SI6, SI6, SharedLedRef, HitIdentity, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0568_PdQPSeal_KReadIntegrity

\* T2M-SCOPE R2M0569_PdQPSeal_NoEvictUnderRDMA

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

<1>nYEn8BCm8bHz3yeddeu9Ks.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE SharedImmutable'
<2> USE ONLY <1>nYEn8BCm8bHz3yeddeu9Ks, Sizes, Location, Design
<2>1. SharedImmutable /\ P_SI2 /\ STypeOK /\ QT_Base /\ Q_RecordBound
 BY <1>fZ0t, <1>jcpBgwA6nO, V21_Inv_BaseTypeOK, V21_Inv_KReadIntegrity, V21_Inv_P_SI2, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, <1>UlP5ju, <1>wmiyOW0, SMTT(10), Sizes, Location DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, SH, InFl, NoWriteInto, SharedImmutable, Writing, Active, P_SI2, SI2, SPin, STypeOK, QT_Base, Q_RecordBound, Sizes, Location, Design
\* T2M-END R2M0575_PdQRefine_PSeal_SharedImmutable

\* T2M-SCOPE R2M0576_PdQPSeal_SealOnlyLanded
\* T2M-BODY R2M0576_PdQPSeal_SealOnlyLanded
\* T2M-LOCAL-VISIBILITY

<1>uWGf95kDJaGjoiZ1Oxe.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE SealOnlyLanded'
<2> USE ONLY <1>uWGf95kDJaGjoiZ1Oxe, Sizes, Location, Design
<2>1. BaseSealOnlyLanded /\ UNCHANGED basevars
 BY V21_Inv_SealOnlyLanded, Sizes, Location, Design DEF SealOnlyLanded, PSeal, Sizes, Location, Design
<2>2. BaseSealOnlyLanded'
 BY <2>1, SMTT(10), Sizes, Location, Design DEF BaseSealOnlyLanded, NoWriteInto, Writing, InFl, basevars, pgV, xV, Sizes, Location, Design
<2>3. QED BY <2>2, <1>nYEn8BCm8bHz3yeddeu9Ks, Sizes, Location, Design DEF SealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M0576_PdQPSeal_SealOnlyLanded


<1>jG8FmTxINuSHLwNN.        
 ASSUME PinInv, B2, UNCHANGED <<sentry,xsrcS,squar,kpin,krs>>,
 \A p \in SPages : /\ sprefc'[p] \in Int /\ sprefc'[p]>=sprefc[p]
 /\ (spst'[p]="shared" /\ spst[p] # "shared" => sprefc'[p]>=1)
 PROVE SharedLedRef'
<2> USE ONLY <1>jG8FmTxINuSHLwNN, Sizes, Location, Design
<2>1. SharedLedRef /\ STypeOK
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. SUFFICES ASSUME NEW p \in SPages
 PROVE /\ (((spst'[p]="shared" /\ (SRefE(sentry',xsrcS',p)>0 \/ SPin(p)')) \/ SRefQ(squar',p)>0) => sprefc'[p]>=1)
 /\ sprefc'[p]>=SRefQ(squar',p)
 BY Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
<2>3. SRefQ(squar,p) \in Nat /\ SRefE(sentry,xsrcS,p) \in Nat
 BY <2>1, <1>JEJP2nT, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF SharedLedRef, SPin, STypeOK, Sizes, Location, Design
\* T2M-END R2M0648_PdQRefSafety


<1>fEtKFbS.         1 \in 0..(NPI*NR*MG+MX)
<2>sizes. NPI \in Nat \ {0} /\ NR \in Nat \ {0} /\ MG \in Nat \ {0} /\ MX \in Nat
 BY ONLY Sizes, ZenonT(5) DEF Sizes
<2>bounds. NPI \in Int /\ NPI>=1 /\ NR \in Int /\ NR>=1 /\ MG \in Int /\ MG>=1 /\ MX \in Int /\ MX>=0
 BY ONLY <2>sizes, PositiveNatFact, NonnegativeNatFact, SMTT(5)
<2>product1. NPI*NR \in Int /\ NPI*NR>=1
 BY ONLY <2>bounds, SMTT(5)
<2>product2. NPI*NR*MG \in Int /\ NPI*NR*MG>=1
 BY ONLY <2>bounds, <2>product1, SMTT(5)
<2>qed. QED BY ONLY <2>bounds, <2>product2, SMTT(5)

\* T2M-END R2M0577_PdQArithmetic

\* T2M-SCOPE R2M0578_PdQPSeal_TypeOK
\* T2M-BODY R2M0578_PdQPSeal_TypeOK
\* T2M-LOCAL-VISIBILITY

<1>XwCGb4JnqOW.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_spst'
<2> USE ONLY <1>XwCGb4JnqOW, Sizes, Location, Design
<2>1. QT_spst /\ QT_spst
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>Jlun1oO4ue, SMTT(5), Location DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, QT_spst, SH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>baDEvr3frHB.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_sown'
<2> USE ONLY <1>baDEvr3frHB, Sizes, Location, Design
<2>1. QT_sown /\ UNCHANGED sown
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sown, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CE9d4dIeESV.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_sgen'
<2> USE ONLY <1>CE9d4dIeESV, Sizes, Location, Design
<2>1. QT_sgen /\ UNCHANGED sgen
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sgen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kkbhOL4SRxa.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_skey'
<2> USE ONLY <1>kkbhOL4SRxa, Sizes, Location, Design
<2>1. QT_skey /\ UNCHANGED skey
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_skey, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bhIuSPDSFcBAU.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_swrite'
<2> USE ONLY <1>bhIuSPDSFcBAU, Sizes, Location, Design
<2>1. QT_swrite /\ UNCHANGED swrite
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_swrite, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UNmSGI8Xmy2t.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_sdata'
<2> USE ONLY <1>UNmSGI8Xmy2t, Sizes, Location, Design
<2>1. QT_sdata /\ UNCHANGED sdata
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sdata, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gkcchW999iFq6.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_sready'
<2> USE ONLY <1>gkcchW999iFq6, Sizes, Location, Design
<2>1. QT_sready /\ UNCHANGED sready
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sready, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Rk5rpZ4yrFAge.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_sprefc'
<2> USE ONLY <1>Rk5rpZ4yrFAge, Sizes, Location, Design
<2>1. QT_sprefc /\ P_SI2
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. smap[i][r] \in SPages /\ sprefc[smap[i][r]]=0
 BY <2>1, SMTT(10), Sizes, Location, Design DEF PSeal, P_SI2, SI2, Sizes, Location, Design
<2>3. sprefc'=[sprefc EXCEPT ![smap[i][r]]=1]
 BY <2>2, SMTT(10), Sizes, Location, Design DEF PSeal, Sizes, Location, Design
<2>4. QED BY ONLY <2>1, <2>2, <2>3, <1>fEtKFbS, SMTT(10), Sizes, Location, Design DEF QT_sprefc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tA6lRPAcxgY.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_smap'
<2> USE ONLY <1>tA6lRPAcxgY, Sizes, Location, Design
<2>1. QT_smap /\ UNCHANGED smap
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_smap, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H2hCJlSveenwVo.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_schoice'
<2> USE ONLY <1>H2hCJlSveenwVo, Sizes, Location, Design
<2>1. QT_schoice /\ UNCHANGED schoice
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_schoice, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VJf32OfS4CW.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_rpgS'
<2> USE ONLY <1>VJf32OfS4CW, Sizes, Location, Design
<2>1. QT_rpgS /\ QT_Base /\ K8 /\ P_SI1 /\ P_SI2
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_K8, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>Jlun1oO4ue, SMTT(5), Location DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, QT_rpgS, QT_Base, K8, P_SI1, P_SI2, Active, OwnedBy, IsP, IsD, SI1, SH, SHPin, SSendReady, SI2, SPin, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pMAWODukg5v4.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_xsrcS'
<2> USE ONLY <1>pMAWODukg5v4, Sizes, Location, Design
<2>1. QT_xsrcS /\ UNCHANGED xsrcS
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_xsrcS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZE7srPXuNljS.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_xsrcP'
<2> USE ONLY <1>ZE7srPXuNljS, Sizes, Location, Design
<2>1. QT_xsrcP /\ UNCHANGED xsrcP
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_xsrcP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GctXeG3nqDE5K.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_sentry'
<2> USE ONLY <1>GctXeG3nqDE5K, Sizes, Location, Design
<2>1. QT_sentry /\ UNCHANGED sentry
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sentry, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LiFJcZHNP1QX.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_squar'
<2> USE ONLY <1>LiFJcZHNP1QX, Sizes, Location, Design
<2>1. QT_squar /\ UNCHANGED squar
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_squar, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gKJvzOwiGT9GC9MQ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_xprefixOK'
<2> USE ONLY <1>gKJvzOwiGT9GC9MQ, Sizes, Location, Design
<2>1. QT_xprefixOK /\ UNCHANGED xprefixOK
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_xprefixOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OdNqoYF0RIyXb.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_dpreOK'
<2> USE ONLY <1>OdNqoYF0RIyXb, Sizes, Location, Design
<2>1. QT_dpreOK /\ UNCHANGED dpreOK
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_dpreOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NmHdTzIZtFkads.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_hitSeen'
<2> USE ONLY <1>NmHdTzIZtFkads, Sizes, Location, Design
<2>1. QT_hitSeen /\ UNCHANGED hitSeen
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_hitSeen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Urd4SaYCyT4wdbgK.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QT_dedupSeen'
<2> USE ONLY <1>Urd4SaYCyT4wdbgK, Sizes, Location, Design
<2>1. QT_dedupSeen /\ UNCHANGED dedupSeen
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_dedupSeen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RR6pDFcAoWU1E.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE CoreTypeOK'
<2> HIDE DEF PSeal, CoreTypeOK
<2>old. CoreTypeOK
 BY ONLY <1>RR6pDFcAoWU1E, V21_Inv_BaseTypeOK, Sizes, Location, Design, SMTT(5)
<2>frame. UNCHANGED basevars
 BY ONLY <1>RR6pDFcAoWU1E, ZenonT(5) DEF PSeal
<2>qed. QED BY ONLY <2>old, <2>frame, SMTT(5)
 DEF CoreTypeOK, basevars, rtV, instV, kV, recV, pgV, xV, ghV

\* T2M-LOCAL-VISIBILITY

<1>YiEiFoN13X0.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE TypInv'
 BY ONLY <1>YiEiFoN13X0, Sizes, Location, Design, <1>RR6pDFcAoWU1E, <1>XwCGb4JnqOW, <1>baDEvr3frHB, <1>CE9d4dIeESV, <1>kkbhOL4SRxa, <1>bhIuSPDSFcBAU, <1>UNmSGI8Xmy2t, <1>gkcchW999iFq6, <1>Rk5rpZ4yrFAge, <1>tA6lRPAcxgY, <1>H2hCJlSveenwVo, <1>VJf32OfS4CW, <1>pMAWODukg5v4, <1>ZE7srPXuNljS, <1>GctXeG3nqDE5K, <1>LiFJcZHNP1QX, <1>gKJvzOwiGT9GC9MQ, <1>OdNqoYF0RIyXb, <1>NmHdTzIZtFkads, <1>Urd4SaYCyT4wdbgK DEF TypInv, STypeOK, QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, Sizes, Location, Design
\* T2M-END R2M0578_PdQPSeal_TypeOK

\* T2M-SCOPE R2M0651_PdQRef_PSeal

<1>tmt40n.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE SharedLedRef'
<2> USE ONLY <1>tmt40n, Sizes, Location, Design
<2>1. QT_sprefc /\ QT_spst /\ P_SI2
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 /\ UNCHANGED <<sentry,xsrcS,squar,kpin,krs>>
 BY SMTT(10), Sizes, Location, Design DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>3. \A z \in SPages : /\ sprefc'[z] \in Int /\ sprefc'[z]>=sprefc[z]
 /\ (spst'[z]="shared" /\ spst[z] # "shared" => sprefc'[z]>=1)
 BY <2>1, Design, SMTT(10), Sizes, Location DEF PSeal, QT_sprefc, QT_spst, P_SI2, SI2, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, <1>jG8FmTxINuSHLwNN, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0651_PdQRef_PSeal


<1>dLTKdYxNjMkUQhCFzV.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE HitIdentity'
<2> USE ONLY <1>dLTKdYxNjMkUQhCFzV, Sizes, Location, Design
<2>1. HitIdentity /\ STypeOK /\ QT_Base /\ Q_RecordBound
 BY <1>fZ0t, <1>jcpBgwA6nO, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_STypeOK, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, <1>UlP5ju, <1>wmiyOW0, SMTT(10), Sizes, Location DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, SH, Active, HitIdentity, STypeOK, QT_Base, Q_RecordBound, Sizes, Location, Design
\* T2M-END R2M0655_PdQRefine_PSeal_HitIdentity

\* T2M-SCOPE R2M0656_PdQRefine_PSeal_SI2

<1>sfGPB0PklB.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE P_SI2'
<2> USE ONLY <1>sfGPB0PklB, Sizes, Location, Design
<2>1. P_SI2 /\ STypeOK /\ QT_Base /\ Q_RecordBound
 BY <1>fZ0t, <1>jcpBgwA6nO, V21_Inv_BaseTypeOK, V21_Inv_KReadIntegrity, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, <1>UlP5ju, <1>wmiyOW0, SMTT(10), Sizes, Location DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, SH, Active, P_SI2, SI2, SPin, STypeOK, QT_Base, Q_RecordBound, Sizes, Location, Design
\* T2M-END R2M0656_PdQRefine_PSeal_SI2

\* T2M-SCOPE R2M0657_PdQRefine_PSeal_SI6

<1>KnGr3gn9nC.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE P_SI6'
<2> USE ONLY <1>KnGr3gn9nC, Sizes, Location, Design
<2>1. P_SI6 /\ STypeOK /\ QT_Base /\ Q_RecordBound
 BY <1>fZ0t, <1>jcpBgwA6nO, V21_Inv_BaseTypeOK, V21_Inv_KReadIntegrity, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, <1>UlP5ju, <1>wmiyOW0, SMTT(10), Sizes, Location DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, SH, Active, P_SI6, SI6, STypeOK, QT_Base, Q_RecordBound, Sizes, Location, Design
\* T2M-END R2M0657_PdQRefine_PSeal_SI6


<1> QED BY <1>YiEiFoN13X0, <1>lS3arvh9b8mjsDA8M2NoqmV1, <1>uWGf95kDJaGjoiZ1Oxe, <1>tmt40n, <1>nYEn8BCm8bHz3yeddeu9Ks, <1>dLTKdYxNjMkUQhCFzV, <1>sfGPB0PklB, <1>KnGr3gn9nC, <1>iYbwg2Frunim18YdPU9Na3MezvgRiTZu5yA, <1>R3BtvcMV, <1>sPyMVKte, <1>ysvJeGHoRLORehN6t4L, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PSeal_01_02 SHA d41cf60193ef338e5fcafabff72d2c2a56bef4c8b37d1d5ed5ea35d7e8c84d70
USE DEF P_PagePoolsDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K9, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_SI4, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SendOwnLanded, V21_SFollowStatic
HIDE DEF NonnegativeNatFact, Part_PSeal_01_01, PositiveNatFact, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI6, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable
THEOREM Part_PSeal_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE (K1)' /\ (K2)' /\ (K3)' /\ (K4)' /\ (K5)' /\ (K6)' /\ (K7)' /\ (K8)' /\ (K9)' /\ (K10)' /\ (K11)' /\ (K12)' /\ (K13)' /\ (K14)' /\ (K15)' /\ (K16)' /\ (K17)' /\ (S1)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (S5)' /\ (S6)' /\ (ReadOwnLanded)' /\ (SendOwnLanded)' /\ (GenFiltered)' /\ (OneReply)' /\ (ReplyTruth)' /\ (QuarNeverMapped)' /\ (QuarNoReg)' /\ (SI7)' /\ (SI8)' /\ (PrivateMapOwner)' /\ (NoStrayAccess)' /\ (QuietConservation)' /\ (NoFreeUnderRead)' /\ (NoEvictUnderRDMA)'
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


<1>tuCHszqnpA4QB51pOhdFa4Wi9ZQ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE PrivateMapOwner'
<2> USE ONLY <1>tuCHszqnpA4QB51pOhdFa4Wi9ZQ, Sizes, Location, Design
<2>1. PrivateMapOwner /\ STypeOK /\ Ex6xsGb
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF PSeal, PrivateMapOwner, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, Sizes, Location, Design


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

<1>aMI.        
 SI8 /\ UNCHANGED <<sentry, squar, xk, xsrcS, xst>> => SI8'
 BY IsaT(10), Sizes, Location, Design DEF SI8, Sizes, Location, Design
\* T2M-END R2M0388_PdPF_SI8

\* T2M-SCOPE R2M0512_PdQBase

<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


<1>lDA42xkFPLxcY.        
 SendOwnLanded /\ UNCHANGED <<hw, ptl, sdata, sfly, skey, swrite, xg, xlt, xr, xsrc, xsrcP, xsrcS>> => SendOwnLanded'
 BY IsaT(10), Sizes, Location, Design DEF BaseSendOwnLanded, SendOwnLanded, Sizes, Location, Design
\* T2M-END R2M0384_PdPF_SendOwnLanded


<1>DBNqetH6G2NxA.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sdata, sentry, sfly, skey, sled, squar, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>DBNqetH6G2NxA, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tZXSADNu.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K1'
<2> USE ONLY <1>tZXSADNu, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sWffzjl2.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K2'
<2> USE ONLY <1>sWffzjl2, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YYYm02FQ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K3'
<2> USE ONLY <1>YYYm02FQ, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jtPKYsXi.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K4'
<2> USE ONLY <1>jtPKYsXi, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Vugg6Gt9.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K5'
<2> USE ONLY <1>Vugg6Gt9, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ajCP17Lj.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K6'
<2> USE ONLY <1>ajCP17Lj, Sizes, Location, Design
<2>1. K6
 BY V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, pgn, pr, pst, sfly, sled>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>IM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Bg4DOk7L.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K7'
<2> USE ONLY <1>Bg4DOk7L, Sizes, Location, Design
<2>1. K7
 BY V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Gk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vUYCfAKG.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K8'
<2> USE ONLY <1>vUYCfAKG, Sizes, Location, Design
<2>1. K8
 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, ph, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>J7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>I5jtjplg.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K9'
<2> USE ONLY <1>I5jtjplg, Sizes, Location, Design
<2>1. K9
 BY V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Dv, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DYWyWPDfP.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K10'
<2> USE ONLY <1>DYWyWPDfP, Sizes, Location, Design
<2>1. K10
 BY V21_Inv_K10, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, nx, pgn, ph, pr, pst, ptl, rg, xdst, xg, xlt, xr>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ahB, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>i5nuJqJE9.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K11'
<2> USE ONLY <1>i5nuJqJE9, Sizes, Location, Design
<2>1. K11
 BY V21_Inv_K11, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>tpP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xdiEJ1XN9.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K12'
<2> USE ONLY <1>xdiEJ1XN9, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Isgz9TjgK.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K13'
<2> USE ONLY <1>Isgz9TjgK, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fODz9hxTl.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K14'
<2> USE ONLY <1>fODz9hxTl, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xN7Tlmkz4.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K15'
<2> USE ONLY <1>xN7Tlmkz4, Sizes, Location, Design
<2>1. K15
 BY V21_Inv_K15, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, kpin, krs, led, plt, ptl, pvis, sdata, sfly, skey, sled, swrite, xdst>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>LBf, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ndCFl92cX.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K16'
<2> USE ONLY <1>ndCFl92cX, Sizes, Location, Design
<2>1. K16
 BY V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, led, pgn, ph, plt, pr, pst, ptl, rg, rpg, sfly, sled, xdst>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>M6Z, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dvphSlNmH.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE K17'
<2> USE ONLY <1>dvphSlNmH, Sizes, Location, Design
<2>1. K17
 BY V21_Inv_K17, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpg>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aXu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Msu0EAtW.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE S1'
<2> USE ONLY <1>Msu0EAtW, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>G1M4IYN1.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE S2'
<2> USE ONLY <1>G1M4IYN1, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TsrBm7Yc.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE S3'
<2> USE ONLY <1>TsrBm7Yc, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AUdd0sB5.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE S4'
<2> USE ONLY <1>AUdd0sB5, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QowW8Toq.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE S5'
<2> USE ONLY <1>QowW8Toq, Sizes, Location, Design
<2>1. S5
 BY V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Po, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BtSyUM1s.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE S6'
<2> USE ONLY <1>BtSyUM1s, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>s1o23RxWwFZwhuCavwU.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE ReadOwnLanded'
<2> USE ONLY <1>s1o23RxWwFZwhuCavwU, Sizes, Location, Design
<2>1. ReadOwnLanded
 BY V21_Inv_ReadOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<dpreOK, hw, pgn, ph, pr, pst, ptl, pvis, rg, rhit, rpg, xdst>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>V0LNJhFJZYV3Y, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pymHo7jRiCEMJpSSFaP.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE SendOwnLanded'
<2> USE ONLY <1>pymHo7jRiCEMJpSSFaP, Sizes, Location, Design
<2>1. SendOwnLanded
 BY V21_Inv_SendOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, ptl, sdata, sfly, skey, swrite, xg, xlt, xr, xsrc, xsrcP, xsrcS>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>lDA42xkFPLxcY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>i57BBwR6KFL6bKKci.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE GenFiltered'
<2> USE ONLY <1>i57BBwR6KFL6bKKci, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uQnQ6rx2d20yXE.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE OneReply'
<2> USE ONLY <1>uQnQ6rx2d20yXE, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>y7EcMOgUM2pQOSuP.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE ReplyTruth'
<2> USE ONLY <1>y7EcMOgUM2pQOSuP, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gOP5xlM5cg1gADkKFxmdT.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QuarNeverMapped'
<2> USE ONLY <1>gOP5xlM5cg1gADkKFxmdT, Sizes, Location, Design
<2>1. QuarNeverMapped
 BY V21_Inv_QuarNeverMapped, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ph, pst, rpg>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>CHHI4E3y3uZD9LA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mYzJvcRCtrclQD7.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QuarNoReg'
<2> USE ONLY <1>mYzJvcRCtrclQD7, Sizes, Location, Design
<2>1. QuarNoReg
 BY V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, pst>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>agy0tgaoa, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mb1LvZN2z.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE SI7'
<2> USE ONLY <1>mb1LvZN2z, Sizes, Location, Design
<2>1. SI7
 BY V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, sentry>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>YC9, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fBJiRnRI6.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE SI8'
<2> USE ONLY <1>fBJiRnRI6, Sizes, Location, Design
<2>1. SI8
 BY V21_Inv_SI8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<sentry, squar, xk, xsrcS, xst>>
 BY <1>DBNqetH6G2NxA, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aMI, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0424_PdPFrames_PSeal

\* T2M-SCOPE R2M0496_PdPOff_PSeal

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


<1>Din5qbWhBxTOcwEjvNLg2.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>Din5qbWhBxTOcwEjvNLg2, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ P_SI4 /\ SharedLedRef /\ PrefcMatchesHolders /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI4, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, NoEvictUnderRDMA, SAccess, P_SI4, SI4, SPin, SharedLedRef, PrefcMatchesHolders, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0569_PdQPSeal_NoEvictUnderRDMA

\* T2M-SCOPE R2M0570_PdQPSeal_NoFreeUnderRead

<1>ihj0UmwlGA0OWgQ81E7k.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>ihj0UmwlGA0OWgQ81E7k, Sizes, Location, Design
<2>1. NoFreeUnderRead /\ K14 /\ P_SI3 /\ SharedLedRef /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_K14, V21_Inv_NoFreeUnderRead, V21_Inv_P_SI3, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, KHeld, NoFreeUnderRead, SHeld, K14, P_SI3, SData, SH, SI3, SPin, SharedLedRef, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0570_PdQPSeal_NoFreeUnderRead

\* T2M-SCOPE R2M0571_PdQPSeal_NoStrayAccess

<1>ligvj71VDJDE8et3dH.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE NoStrayAccess'
<2> USE ONLY <1>ligvj71VDJDE8et3dH, Sizes, Location, Design
<2>1. NoStrayAccess /\ K14 /\ P_SI3 /\ SharedLedRef /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_K14, V21_Inv_NoStrayAccess, V21_Inv_P_SI3, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Held, InFl, KHeld, NoStrayAccess, SHeld, Writing, K14, P_SI3, SData, SH, SI3, SPin, SharedLedRef, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0571_PdQPSeal_NoStrayAccess

\* T2M-SCOPE R2M0572_PdQPSeal_QuietConservation

<1>OjcDcWd2XLifRk0N4DaGvk.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE QuietConservation'
<2> USE ONLY <1>OjcDcWd2XLifRk0N4DaGvk, Sizes, Location, Design
<2>1. QuietConservation /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_QuietConservation, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, BaseQuietConservation, KPinned, Quiet, QuietConservation, SPin, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0572_PdQPSeal_QuietConservation

\* T2M-SCOPE R2M0573_PdQPSeal_SI4

<1> QED BY <1>tZXSADNu, <1>sWffzjl2, <1>YYYm02FQ, <1>jtPKYsXi, <1>Vugg6Gt9, <1>ajCP17Lj, <1>Bg4DOk7L, <1>vUYCfAKG, <1>I5jtjplg, <1>DYWyWPDfP, <1>i5nuJqJE9, <1>xdiEJ1XN9, <1>Isgz9TjgK, <1>fODz9hxTl, <1>xN7Tlmkz4, <1>ndCFl92cX, <1>dvphSlNmH, <1>Msu0EAtW, <1>G1M4IYN1, <1>TsrBm7Yc, <1>AUdd0sB5, <1>QowW8Toq, <1>BtSyUM1s, <1>s1o23RxWwFZwhuCavwU, <1>pymHo7jRiCEMJpSSFaP, <1>i57BBwR6KFL6bKKci, <1>uQnQ6rx2d20yXE, <1>y7EcMOgUM2pQOSuP, <1>gOP5xlM5cg1gADkKFxmdT, <1>mYzJvcRCtrclQD7, <1>mb1LvZN2z, <1>fBJiRnRI6, <1>tuCHszqnpA4QB51pOhdFa4Wi9ZQ, <1>ligvj71VDJDE8et3dH, <1>OjcDcWd2XLifRk0N4DaGvk, <1>ihj0UmwlGA0OWgQ81E7k, <1>Din5qbWhBxTOcwEjvNLg2, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_PSeal SHA 6cc1b0003cd146f8d3810ad2c6e601979fef32bfb969bee48e230d7a27f7b33c
USE DEF ShapeNetFrame
HIDE DEF P_PagePoolsDisjoint, Part_PSeal_01_02, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_SendOwnLanded, V21_Inv_SharedLedRef, V21_SFollowStatic, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
LEMMA ShapeEffect_PSeal ==
 ASSUME NEW i \in PInst, NEW r \in Rq, Sizes, Design, PSeal(i,r)
 PROVE net'=net
 BY ONLY PSeal(i,r), Sizes, Design, SMTT(5) DEF PSeal, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_PSeal ==
 ASSUME NEW i \in PInst, NEW r \in Rq, Sizes, Design, IndInv, MessageShape, PSeal(i,r)
 PROVE MessageShape'
 BY ONLY Sizes, Design, PSeal(i,r), MessageShape, ShapeEffect_PSeal, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_PSeal SHA 39f44f6ef41c1fac78b59c58ae1ac76ad39998e276e2308946d9a88ff89a4b25
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_PSeal, ShapeNetFrame
THEOREM DomainKeep_PSeal ==
 ASSUME NEW i \in PInst, NEW r \in Rq, Sizes, Location, Design, PinInv, PSeal(i,r)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, PSeal(i,r), ShapeEffect_PSeal
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_PSeal_02 SHA 168024999033c110e472fa7223baa7504b4beaa2e45c36ae0d9127f935ccf6a8
USE DEF V21_Inv_BaseTypeOK, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_STypeOK, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_PSeal, V21_Inv_MsgXDomain
THEOREM Group_PSeal_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE (P_SI4)' /\ (P_SI5)' /\ (MsgXDomain)' /\ (P_B2OffInit)'
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

<1>XgEqr4szV8QvkAe.        
  ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
  PROVE MsgXDomain'
 BY ONLY <1>XgEqr4szV8QvkAe, Sizes, Location, Design, DomainKeep_PSeal, SMTT(5)
\* T2M-END R2M0314_PdPDomain_PSeal


<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


<1>ETznRcs6MlBXLXv.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE P_B2OffInit'
 BY ONLY <1>ETznRcs6MlBXLXv, Sizes, Location, Design, SMTT(10) DEF PSeal, P_B2OffInit, Sizes, Location, Design
\* T2M-END R2M0496_PdPOff_PSeal


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


<1>hl5A6Cuy.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE P_SI4'
<2> USE ONLY <1>hl5A6Cuy, Sizes, Location, Design
<2>1. P_SI4 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, P_SI4, SI4, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0573_PdQPSeal_SI4

\* T2M-SCOPE R2M0574_PdQPSeal_SI5

<1>zKoapWkS.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PSeal(i,r)
 PROVE P_SI5'
<2> USE ONLY <1>zKoapWkS, Sizes, Location, Design
<2>1. P_SI5 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI5, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PSeal, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, Held, P_SI5, SI5, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0574_PdQPSeal_SI5


<1> QED BY <1>hl5A6Cuy, <1>zKoapWkS, <1>XgEqr4szV8QvkAe, <1>ETznRcs6MlBXLXv, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_PSeal_01_01, Part_PSeal_01_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_PSeal
HIDE DEF DomainKeep_PSeal, V21_Inv_BaseTypeOK, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_STypeOK, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_PSeal ==
 ASSUME NEW i \in PInst, NEW r \in Rq, Sizes, Location, Design, PinInv, PSeal(i,r)
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in PInst, NEW v \in Rq, Sizes, Location, Design, PinInv, PSeal(u,v)
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_PSeal_01_01, Part_PSeal_01_02, Group_PSeal_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_PSeal_01_01, Part_PSeal_01_02, Group_PSeal_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, PSeal(i,r), <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, PSeal(i,r), ShapeKeep_PSeal, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
