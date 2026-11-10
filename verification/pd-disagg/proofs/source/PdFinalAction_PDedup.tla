---- MODULE PdFinalAction_PDedup ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalPart_PDedup_01_01 SHA 6d6b61b1ccc81b98abf89107aa097e21ceee248d951d7de0b77a3f743831bf9d
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K4, V21_Inv_K6, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable
THEOREM Part_PDedup_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE (TypInv)' /\ (K3)' /\ (K5)' /\ (K7)' /\ (K8)' /\ (K11)' /\ (K14)' /\ (K15)' /\ (S4)' /\ (ReadOwnLanded)' /\ (SendOwnLanded)'
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


           ZIqfKE(p) == {<<v[1][1],v[1][2],v[2],p>> : v \in (PInst \X Rq) \X Gens}

           wT1th(H,p) == {h \in H : h[4]=p}

           QjQjM(p) == {x \in sentry : p \in xsrcS[x]}

           xocPg(p) == {x \in Xids : <<x,p>> \in squar}


<1> HIDE DEF XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Ex6xsGb, ZIqfKE, wT1th, QjQjM, xocPg

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

<1>n1L0PQ.        
 ASSUME NEW A, NEW B, NEW C, NEW D,
 IsFiniteSet(A), IsFiniteSet(B), IsFiniteSet(C), IsFiniteSet(D)
 PROVE IsFiniteSet(A \X B \X C \X D)
<2> USE ONLY <1>n1L0PQ, Sizes, Location, Design
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


<1>ltDUdBHh6DaH.        
 IsFiniteSet(PInst) /\ IsFiniteSet(Rq) /\ IsFiniteSet(Gens) /\ IsFiniteSet(SPages) /\ IsFiniteSet(Xids)
 BY Sizes, FS_Interval, SMTT(10), Location, Design DEF PInst, Rq, Gens, SPages, Xids, Sizes, Location, Design


<1>TDfQyW40MaP2.        
 ASSUME STypeOK
 PROVE IsFiniteSet(rpgS) /\ IsFiniteSet(sentry) /\ IsFiniteSet(squar)
<2> USE ONLY <1>TDfQyW40MaP2, Sizes, Location, Design
<2>1. IsFiniteSet(PInst \X Rq \X Gens \X SPages) /\ IsFiniteSet(Xids \X SPages)
 BY <1>ltDUdBHh6DaH, <1>n1L0PQ, FS_Product, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>ltDUdBHh6DaH, FS_Subset, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design


<1>noDe3jH.        
 ASSUME NEW p \in SPages, STypeOK
 PROVE SRefR(rpgS,p) \in Nat /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefQ(squar,p) \in Nat
<2> USE ONLY <1>noDe3jH, Sizes, Location, Design
<2>1. IsFiniteSet({h \in rpgS : h[4]=p}) /\ IsFiniteSet({x \in sentry : p \in xsrcS[x]})
 /\ IsFiniteSet({h \in squar : h[2]=p})
 BY <1>TDfQyW40MaP2, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, FS_CardinalityType, Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design


<1>YDHky.        
 ASSUME NEW H, IsFiniteSet(H), NEW h, h \notin H, NEW p
 PROVE SRefR(H \cup {h},p) = SRefR(H,p) + (IF h[4]=p THEN 1 ELSE 0)
<2> USE ONLY <1>YDHky, Sizes, Location, Design
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


<1>zH6ATbaRJsZD1.        
 ASSUME NEW n \in Nat
 PROVE IsFiniteSet(1..n) /\ Cardinality(1..n)=n
<2>1. IsFiniteSet(1..n) /\ Cardinality(1..n)=IF 1>n THEN 0 ELSE n-1+1
 BY ONLY <1>zH6ATbaRJsZD1, FS_Interval, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY ONLY <1>zH6ATbaRJsZD1, <2>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


<1>uCI9JJeyUkJg.        
 /\ IsFiniteSet(PInst) /\ Cardinality(PInst)=NPI
 /\ IsFiniteSet(Rq) /\ Cardinality(Rq)=NR
 /\ IsFiniteSet(Gens) /\ Cardinality(Gens)=MG
 /\ IsFiniteSet(Xids) /\ Cardinality(Xids)=MX
 BY Sizes, <1>zH6ATbaRJsZD1, SMTT(10), Location, Design DEF PInst, Rq, Gens, Xids, Sizes, Location, Design


<1>FpiWsd42S2hlmNh.        
 ASSUME NEW p
 PROVE IsFiniteSet(ZIqfKE(p)) /\ Cardinality(ZIqfKE(p))<=NPI*NR*MG
<2> USE ONLY <1>FpiWsd42S2hlmNh, Sizes, Location, Design
<2>1. IsFiniteSet(PInst \X Rq) /\ Cardinality(PInst \X Rq)=NPI*NR
 BY <1>uCI9JJeyUkJg, FS_Product, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet((PInst \X Rq) \X Gens) /\ Cardinality((PInst \X Rq) \X Gens)=NPI*NR*MG
 BY <2>1, <1>uCI9JJeyUkJg, FS_Product, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. [v \in (PInst \X Rq) \X Gens |-> <<v[1][1],v[1][2],v[2],p>>]
 \in Surjection((PInst \X Rq) \X Gens,ZIqfKE(p))
 BY SMTT(10), Sizes, Location, Design DEF Surjection, ZIqfKE, Sizes, Location, Design
<2>4. IsFiniteSet(ZIqfKE(p)) /\ Cardinality(ZIqfKE(p))<=Cardinality((PInst \X Rq) \X Gens)
 BY <2>2, <2>3, FS_Surjection, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>2, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


<1>Efys68EEaN26w.        
 ASSUME NEW H, NEW p, H \subseteq PInst \X Rq \X Gens \X SPages
 PROVE wT1th(H,p) \subseteq ZIqfKE(p)
<2> USE ONLY <1>Efys68EEaN26w, Sizes, Location, Design
<2>1. SUFFICES ASSUME NEW h \in wT1th(H,p) PROVE h \in ZIqfKE(p)
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. h \in PInst \X Rq \X Gens \X SPages /\ h[4]=p
 BY SMTT(10), Sizes, Location, Design DEF wT1th, Sizes, Location, Design
<2>3. << <<h[1],h[2]>>, h[3] >> \in (PInst \X Rq) \X Gens
 BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. h = <<h[1],h[2],h[3],p>> BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF ZIqfKE, Sizes, Location, Design


<1>foJUpEksYmMe.        
 ASSUME NEW H, NEW p, H \subseteq PInst \X Rq \X Gens \X SPages
 PROVE IsFiniteSet(wT1th(H,p)) /\ SRefR(H,p)<=NPI*NR*MG
<2> USE ONLY <1>foJUpEksYmMe, Sizes, Location, Design
<2>1. IsFiniteSet(ZIqfKE(p)) /\ Cardinality(ZIqfKE(p))<=NPI*NR*MG
 BY <1>FpiWsd42S2hlmNh, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. wT1th(H,p) \subseteq ZIqfKE(p) BY <1>Efys68EEaN26w, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet(wT1th(H,p)) /\ Cardinality(wT1th(H,p))<=Cardinality(ZIqfKE(p))
 BY <2>1, <2>2, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. SRefR(H,p)=Cardinality(wT1th(H,p)) BY Sizes, Location, Design DEF SRefR, wT1th, Sizes, Location, Design
<2>5. QED BY <2>1, <2>3, <2>4, FS_CardinalityType, Sizes, SMTT(10), Location, Design DEF Sizes, Location, Design


<1>WhpueugBq9UjaN.        
 ASSUME NEW p \in SPages, PinInv, B2
 PROVE SRefE(sentry,xsrcS,p)+SRefQ(squar,p)<=MX
<2> USE ONLY <1>WhpueugBq9UjaN, Sizes, Location, Design
<2>1. STypeOK /\ EntryQuarantineDisjoint
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QjQjM(p) \subseteq Xids /\ xocPg(p) \subseteq Xids /\ QjQjM(p) \cap xocPg(p)={}
 BY <2>1, SMTT(10), Sizes, Location, Design DEF QjQjM, xocPg, STypeOK, EntryQuarantineDisjoint, Sizes, Location, Design
<2>3. IsFiniteSet(QjQjM(p)) /\ IsFiniteSet(xocPg(p))
<3>1. QjQjM(p) \cup xocPg(p) \subseteq Xids BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED BY <3>1, <1>uCI9JJeyUkJg, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. {h \in squar : h[2]=p}={<<x,p>> : x \in xocPg(p)}
 BY <2>1, SMTT(10), Sizes, Location, Design DEF STypeOK, xocPg, Sizes, Location, Design
<2>5. SRefQ(squar,p)<=Cardinality(xocPg(p))
 <3>1. [x \in xocPg(p) |-> <<x,p>>] \in Surjection(xocPg(p),{h \in squar : h[2]=p})
 BY <2>4, SMTT(10), Sizes, Location, Design DEF Surjection, Sizes, Location, Design
 <3>2. QED BY <2>3, <3>1, FS_Surjection, Sizes, Location, Design DEF SRefQ, Sizes, Location, Design
<2>6. Cardinality(QjQjM(p) \cup xocPg(p))=Cardinality(QjQjM(p))+Cardinality(xocPg(p))
 BY <2>2, <2>3, FS_Union, FS_EmptySet, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. Cardinality(QjQjM(p) \cup xocPg(p))<=MX
<3>1. QjQjM(p) \cup xocPg(p) \subseteq Xids BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<3>2. QED BY <3>1, <1>uCI9JJeyUkJg, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>8. SRefE(sentry,xsrcS,p)=Cardinality(QjQjM(p)) BY Sizes, Location, Design DEF SRefE, QjQjM, Sizes, Location, Design
<2>9. SRefE(sentry,xsrcS,p) \in Nat /\ SRefQ(squar,p) \in Nat
 BY <2>1, <1>noDe3jH, Sizes, Location, Design DEF Sizes, Location, Design
<2>10. QED BY <2>3, <2>5, <2>6, <2>7, <2>8, <2>9, FS_CardinalityType, Sizes, SMTT(10), Location, Design DEF Sizes, Location, Design


<1>wQSekQ1tQsEhwr.        
 ASSUME NEW p \in SPages, NEW h \in PInst \X Rq \X Gens \X SPages,
        h[4]=p, h \notin rpgS, PinInv, B2
 PROVE sprefc[p]+1<=NPI*NR*MG+MX
<2> USE ONLY <1>wQSekQ1tQsEhwr, Sizes, Location, Design
<2>1. STypeOK /\ PrefcMatchesHolders
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpgS \cup {h} \subseteq PInst \X Rq \X Gens \X SPages
 BY <2>1, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
<2>3. SRefR(rpgS \cup {h},p)<=NPI*NR*MG
 BY <2>2, <1>foJUpEksYmMe, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. IsFiniteSet(rpgS) BY <2>1, <1>TDfQyW40MaP2, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. SRefR(rpgS \cup {h},p)=SRefR(rpgS,p)+1
 BY <2>4, <1>YDHky, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. SRefE(sentry,xsrcS,p)+SRefQ(squar,p)<=MX
 BY <1>WhpueugBq9UjaN, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. SRefR(rpgS,p) \in Nat /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefQ(squar,p) \in Nat
 BY <2>1, <1>noDe3jH, Sizes, Location, Design DEF Sizes, Location, Design
<2>8. sprefc[p]=SRefR(rpgS,p)+SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
 BY <2>1, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>9. QED BY <2>3, <2>5, <2>6, <2>7, <2>8, Sizes, SMTT(10), Location, Design DEF Sizes, Location, Design


<1>mBKGBPzOBAT.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE SH(i,r,rg[i][r],q) \notin rpgS
<2> USE ONLY <1>mBKGBPzOBAT, Sizes, Location, Design
<2>1. P_SI1 /\ P_SI6 /\ HitIdentity /\ STypeOK
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_P_SI1, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>HsRNXPeY1C, Design, SMTT(10), Sizes, Location DEF PDedup, P_SI1, P_SI6, SI1, SI6, HitIdentity, Active, SH, STypeOK, Sizes, Location, Design



<1>WECEA2v5OKWQ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE XDML1U9'
<2> USE ONLY <1>WECEA2v5OKWQ, Sizes, Location, Design
<2>1. XDML1U9 /\ XDML1U9
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>HsRNXPeY1C, SMTT(5), Location DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, XDML1U9, SH, Sizes, Location, Design


<1>M0k8Qt4cAdid.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE tlO9iBs'
<2> USE ONLY <1>M0k8Qt4cAdid, Sizes, Location, Design
<2>1. tlO9iBs /\ UNCHANGED sown
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF tlO9iBs, Sizes, Location, Design


<1>RdbnxO3Jd8xr.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE QBnU7cB'
<2> USE ONLY <1>RdbnxO3Jd8xr, Sizes, Location, Design
<2>1. QBnU7cB /\ UNCHANGED sgen
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QBnU7cB, Sizes, Location, Design


<1>DUNsH5N6FoUB.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE iGX8myh'
<2> USE ONLY <1>DUNsH5N6FoUB, Sizes, Location, Design
<2>1. iGX8myh /\ UNCHANGED skey
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF iGX8myh, Sizes, Location, Design


<1>AmJiUrnYD66mB0.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE lFqpdWPov'
<2> USE ONLY <1>AmJiUrnYD66mB0, Sizes, Location, Design
<2>1. lFqpdWPov /\ UNCHANGED swrite
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF lFqpdWPov, Sizes, Location, Design


<1>nKKmAfJkPZgwO.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE ymH9PIO1'
<2> USE ONLY <1>nKKmAfJkPZgwO, Sizes, Location, Design
<2>1. ymH9PIO1 /\ UNCHANGED sdata
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF ymH9PIO1, Sizes, Location, Design


<1>ZKjQ27CIoskLSB.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE fPjFBORLz'
<2> USE ONLY <1>ZKjQ27CIoskLSB, Sizes, Location, Design
<2>1. fPjFBORLz /\ UNCHANGED sready
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF fPjFBORLz, Sizes, Location, Design


<1>LTUC15YI2dBc89.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE F1sonJDZX'
<2> USE ONLY <1>LTUC15YI2dBc89, Sizes, Location, Design
<2>1. F1sonJDZX /\ Ex6xsGb /\ K8
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_K8, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 /\ SH(i,r,rg[i][r],q) \in PInst \X Rq \X Gens \X SPages
 /\ SH(i,r,rg[i][r],q)[4]=q /\ SH(i,r,rg[i][r],q) \notin rpgS
 BY <2>1, <1>mBKGBPzOBAT, <1>HsRNXPeY1C, Design, SMTT(10), Sizes, Location DEF PDedup, K8, SH, Ex6xsGb, Sizes, Location, Design
<2>3. sprefc[q]+1<=NPI*NR*MG+MX
 BY <2>2, <1>wQSekQ1tQsEhwr, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, Design, Sizes, SMTT(10), Location DEF PDedup, F1sonJDZX, Sizes, Location, Design


<1>eCXGXqlQ9azI.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE PROpiGS'
<2> USE ONLY <1>eCXGXqlQ9azI, Sizes, Location, Design
<2>1. PROpiGS
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>HsRNXPeY1C, SMTT(5), Location DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, PROpiGS, SH, Sizes, Location, Design


<1>UTVcphtHf1ip0WM.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE ZvLl9MXuDe'
<2> USE ONLY <1>UTVcphtHf1ip0WM, Sizes, Location, Design
<2>1. ZvLl9MXuDe /\ UNCHANGED schoice
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF ZvLl9MXuDe, Sizes, Location, Design


<1>tpS8WTyLjAnR.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE UocQWXW'
<2> USE ONLY <1>tpS8WTyLjAnR, Sizes, Location, Design
<2>1. UocQWXW /\ Ex6xsGb /\ K8 /\ P_SI1 /\ P_SI2
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_K8, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>HsRNXPeY1C, SMTT(5), Location DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, UocQWXW, Ex6xsGb, K8, P_SI1, P_SI2, Active, OwnedBy, IsP, IsD, SI1, SH, SHPin, SSendReady, SI2, SPin, Sizes, Location, Design


<1>owfm09qaS0Vdd.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE DS5PFCAl'
<2> USE ONLY <1>owfm09qaS0Vdd, Sizes, Location, Design
<2>1. DS5PFCAl /\ UNCHANGED xsrcS
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF DS5PFCAl, Sizes, Location, Design


<1>wJ197BD1JYbdP.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE adGzfibq'
<2> USE ONLY <1>wJ197BD1JYbdP, Sizes, Location, Design
<2>1. adGzfibq /\ UNCHANGED xsrcP
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF adGzfibq, Sizes, Location, Design


<1>lbcLZjQoVkLHAU.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE xquGDY0L5'
<2> USE ONLY <1>lbcLZjQoVkLHAU, Sizes, Location, Design
<2>1. xquGDY0L5 /\ UNCHANGED sentry
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF xquGDY0L5, Sizes, Location, Design


<1>UGk8DQNocULIC.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE Ik68hrHx'
<2> USE ONLY <1>UGk8DQNocULIC, Sizes, Location, Design
<2>1. Ik68hrHx /\ UNCHANGED squar
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF Ik68hrHx, Sizes, Location, Design


<1>ViCNZzdrGTjbniNQR.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE cqEVxOCSG2bV'
<2> USE ONLY <1>ViCNZzdrGTjbniNQR, Sizes, Location, Design
<2>1. cqEVxOCSG2bV /\ UNCHANGED xprefixOK
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF cqEVxOCSG2bV, Sizes, Location, Design


<1>e7X6c506JnNiZV.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE bUx1Ft3v1'
<2> USE ONLY <1>e7X6c506JnNiZV, Sizes, Location, Design
<2>1. bUx1Ft3v1 /\ UNCHANGED dpreOK
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF bUx1Ft3v1, Sizes, Location, Design


<1>K0uFkzjcZWyWYog.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE gDlQbBc2EG'
<2> USE ONLY <1>K0uFkzjcZWyWYog, Sizes, Location, Design
<2>1. gDlQbBc2EG /\ UNCHANGED hitSeen
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF gDlQbBc2EG, Sizes, Location, Design


<1>p0O1hBEj4PlrY0WSt.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE BDe_IdWz8uGR'
<2> USE ONLY <1>p0O1hBEj4PlrY0WSt, Sizes, Location, Design
<2>1. BDe_IdWz8uGR
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>HsRNXPeY1C, SMTT(5), Location DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, BDe_IdWz8uGR, SH, Sizes, Location, Design


<1>EZ56oawh4dpna4.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE CoreTypeOK'
<2> HIDE DEF CoreTypeOK, STypeOK, PDedup
<2>frame. UNCHANGED basevars
 BY ONLY <1>EZ56oawh4dpna4, SMTT(5) DEF PDedup
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
 BY ONLY <1>EZ56oawh4dpna4, <2>rtVFrame, V22_T_gen, SMTT(5)
<2>rtNext. rt' \in [Rq -> {"idle", "wait", "ok", "err"}]
 BY ONLY <1>EZ56oawh4dpna4, <2>rtVFrame, V22_T_rt, SMTT(5)
<2>rpNext. rp' \in [Rq -> {0} \cup Inst]
 BY ONLY <1>EZ56oawh4dpna4, <2>rtVFrame, V22_T_rp, SMTT(5)
<2>rdNext. rd' \in [Rq -> {0} \cup Inst]
 BY ONLY <1>EZ56oawh4dpna4, <2>rtVFrame, V22_T_rd, SMTT(5)
<2>hpNext. hp' \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY <1>EZ56oawh4dpna4, <2>rtVFrame, V22_T_hp, SMTT(5)
<2>hdNext. hd' \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY <1>EZ56oawh4dpna4, <2>rtVFrame, V22_T_hd, SMTT(5)
<2>aliveNext. alive' \in [Inst -> BOOLEAN]
 BY ONLY <1>EZ56oawh4dpna4, <2>instVFrame, V22_T_alive, SMTT(5)
<2>nfailNext. nfail' \in 0..MaxFail
 BY ONLY <1>EZ56oawh4dpna4, <2>instVFrame, V22_T_nfail, SMTT(5)
<2>tornNext. torn' \in [Inst -> SUBSET Inst]
 BY ONLY <1>EZ56oawh4dpna4, <2>instVFrame, V22_T_torn, SMTT(5)
<2>kpinNext. kpin' \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY <1>EZ56oawh4dpna4, <2>instVFrame, V22_T_kpin, SMTT(5)
<2>kflyNext. kfly' \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY <1>EZ56oawh4dpna4, <2>instVFrame, V22_T_kfly, SMTT(5)
<2>krsNext. krs' \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]
 BY ONLY <1>EZ56oawh4dpna4, <2>instVFrame, V22_T_krs, SMTT(5)
<2>phNext. ph' \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>EZ56oawh4dpna4, <2>recVFrame, V22_T_ph, SMTT(5)
<2>rgNext. rg' \in [Inst -> [Rq -> 0..MG]]
 BY ONLY <1>EZ56oawh4dpna4, <2>recVFrame, V22_T_rg, SMTT(5)
<2>rpgNext. rpg' \in [Inst -> [Rq -> 0..NP]]
 BY ONLY <1>EZ56oawh4dpna4, <2>recVFrame, V22_T_rpg, SMTT(5)
<2>rpeNext. rpe' \in [Inst -> [Rq -> {0} \cup Inst]]
 BY ONLY <1>EZ56oawh4dpna4, <2>recVFrame, V22_T_rpe, SMTT(5)
<2>rxNext. rx' \in [Inst -> [Rq -> 0..MX]]
 BY ONLY <1>EZ56oawh4dpna4, <2>recVFrame, V22_T_rx, SMTT(5)
<2>rhitNext. rhit' \in [Inst -> [Rq -> BOOLEAN]]
 BY ONLY <1>EZ56oawh4dpna4, <2>recVFrame, V22_T_rhit, SMTT(5)
<2>pstNext. pst' \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 BY ONLY <1>EZ56oawh4dpna4, <2>pgVFrame, V22_T_pst, SMTT(5)
<2>prNext. pr' \in [Pages -> 0..NR]
 BY ONLY <1>EZ56oawh4dpna4, <2>pgVFrame, V22_T_pr, SMTT(5)
<2>pgnNext. pgn' \in [Pages -> 0..MG]
 BY ONLY <1>EZ56oawh4dpna4, <2>pgVFrame, V22_T_pgn, SMTT(5)
<2>pltNext. plt' \in [Pages -> 0..PS]
 BY ONLY <1>EZ56oawh4dpna4, <2>pgVFrame, V22_T_plt, SMTT(5)
<2>ptlNext. ptl' \in [Pages -> -1..PS]
 BY ONLY <1>EZ56oawh4dpna4, <2>pgVFrame, V22_T_ptl, SMTT(5)
<2>pvisNext. pvis' \in [Pages -> BOOLEAN]
 BY ONLY <1>EZ56oawh4dpna4, <2>pgVFrame, V22_T_pvis, SMTT(5)
<2>ledNext. led' \in [Pages -> SUBSET Xids]
 BY ONLY <1>EZ56oawh4dpna4, <2>pgVFrame, V22_T_led, SMTT(5)
<2>sflyNext. sfly' \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>EZ56oawh4dpna4, <2>pgVFrame, V22_T_sfly, SMTT(5)
<2>sledNext. sled' \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>EZ56oawh4dpna4, <2>pgVFrame, V22_T_sled, SMTT(5)
<2>prefcNext. prefc' \in [Pages -> 0..NR]
 BY ONLY <1>EZ56oawh4dpna4, <2>pgVFrame, V22_T_prefc, SMTT(5)
<2>pqpNext. pqp' \in [Pages -> {0} \cup Inst]
 BY ONLY <1>EZ56oawh4dpna4, <2>pgVFrame, V22_T_pqp, SMTT(5)
<2>xrNext. xr' \in [Xids -> 0..NR]
 BY ONLY <1>EZ56oawh4dpna4, <2>xVFrame, V22_T_xr, SMTT(5)
<2>xgNext. xg' \in [Xids -> 0..MG]
 BY ONLY <1>EZ56oawh4dpna4, <2>xVFrame, V22_T_xg, SMTT(5)
<2>xkNext. xk' \in [Xids -> {"none", "wr", "rd"}]
 BY ONLY <1>EZ56oawh4dpna4, <2>xVFrame, V22_T_xk, SMTT(5)
<2>xpNext. xp' \in [Xids -> {0} \cup Inst]
 BY ONLY <1>EZ56oawh4dpna4, <2>xVFrame, V22_T_xp, SMTT(5)
<2>xdNext. xd' \in [Xids -> {0} \cup Inst]
 BY ONLY <1>EZ56oawh4dpna4, <2>xVFrame, V22_T_xd, SMTT(5)
<2>xsrcNext. xsrc' \in [Xids -> 0..NP]
 BY ONLY <1>EZ56oawh4dpna4, <2>xVFrame, V22_T_xsrc, SMTT(5)
<2>xdstNext. xdst' \in [Xids -> 0..NP]
 BY ONLY <1>EZ56oawh4dpna4, <2>xVFrame, V22_T_xdst, SMTT(5)
<2>xntNext. xnt' \in [Xids -> 0..PS]
 BY ONLY <1>EZ56oawh4dpna4, <2>xVFrame, V22_T_xnt, SMTT(5)
<2>hwNext. hw' \in [Xids -> {"none", "fly", "issued", "stop"}]
 BY ONLY <1>EZ56oawh4dpna4, <2>xVFrame, V22_T_hw, SMTT(5)
<2>hokNext. hok' \in [Xids -> BOOLEAN]
 BY ONLY <1>EZ56oawh4dpna4, <2>xVFrame, V22_T_hok, SMTT(5)
<2>ivNext. iv' \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
 BY ONLY <1>EZ56oawh4dpna4, <2>xVFrame, V22_T_iv, SMTT(5)
<2>xstNext. xst' \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]
 BY ONLY <1>EZ56oawh4dpna4, <2>xVFrame, V22_T_xst, SMTT(5)
<2>xltNext. xlt' \in [Xids -> 0..PS]
 BY ONLY <1>EZ56oawh4dpna4, <2>xVFrame, V22_T_xlt, SMTT(5)
<2>nxNext. nx' \in 1..(MX + 1)
 BY ONLY <1>EZ56oawh4dpna4, <2>xVFrame, V22_T_nx, SMTT(5)
<2>netNext. net' \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                      r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                      pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]
 BY ONLY <1>EZ56oawh4dpna4, <2>netFrame, V22_T_net, SMTT(5) DEF MessageShape
<2>drepNext. drep' \in [Rq -> [Gens -> 0..2]]
 BY ONLY <1>EZ56oawh4dpna4, <2>ghVFrame, V22_T_drep, SMTT(5)
<2>crepNext. crep' \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]
 BY ONLY <1>EZ56oawh4dpna4, <2>ghVFrame, V22_T_crep, SMTT(5)
<2>dsuccNext. dsucc' \in [Rq -> [Gens -> BOOLEAN]]
 BY ONLY <1>EZ56oawh4dpna4, <2>ghVFrame, V22_T_dsucc, SMTT(5)
<2>gbadNext. gbad' \in BOOLEAN
 BY ONLY <1>EZ56oawh4dpna4, <2>ghVFrame, V22_T_gbad, SMTT(5)
<2>qed. QED BY ONLY <2>genNext, <2>rtNext, <2>rpNext, <2>rdNext, <2>hpNext, <2>hdNext, <2>aliveNext, <2>nfailNext, <2>tornNext, <2>kpinNext, <2>kflyNext, <2>krsNext, <2>phNext, <2>rgNext, <2>rpgNext, <2>rpeNext, <2>rxNext, <2>rhitNext, <2>pstNext, <2>prNext, <2>pgnNext, <2>pltNext, <2>ptlNext, <2>pvisNext, <2>ledNext, <2>sflyNext, <2>sledNext, <2>prefcNext, <2>pqpNext, <2>xrNext, <2>xgNext, <2>xkNext, <2>xpNext, <2>xdNext, <2>xsrcNext, <2>xdstNext, <2>xntNext, <2>hwNext, <2>hokNext, <2>ivNext, <2>xstNext, <2>xltNext, <2>nxNext, <2>netNext, <2>drepNext, <2>crepNext, <2>dsuccNext, <2>gbadNext, ZenonT(10) DEF CoreTypeOK

\* T2M-LOCAL-VISIBILITY

<1>qs7dT4BaPZ5Q.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE TypInv'
 BY ONLY <1>qs7dT4BaPZ5Q, Sizes, Location, Design, <1>EZ56oawh4dpna4, <1>WECEA2v5OKWQ, <1>M0k8Qt4cAdid, <1>RdbnxO3Jd8xr, <1>DUNsH5N6FoUB, <1>AmJiUrnYD66mB0, <1>nKKmAfJkPZgwO, <1>ZKjQ27CIoskLSB, <1>LTUC15YI2dBc89, <1>eCXGXqlQ9azI, <1>UTVcphtHf1ip0WM, <1>tpS8WTyLjAnR, <1>owfm09qaS0Vdd, <1>wJ197BD1JYbdP, <1>lbcLZjQoVkLHAU, <1>UGk8DQNocULIC, <1>ViCNZzdrGTjbniNQR, <1>e7X6c506JnNiZV, <1>K0uFkzjcZWyWYog, <1>p0O1hBEj4PlrY0WSt DEF TypInv, STypeOK, XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Sizes, Location, Design


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>je.        
 S4 /\ UNCHANGED <<alive, nfail>> => S4'
 BY IsaT(10), Sizes, Location, Design DEF S4, Sizes, Location, Design
\* T2M-END R2M0344_PdPF_S4


<1>yYI.        
 K14 /\ UNCHANGED <<gen, kfly, kpin, krs>> => K14'
 BY IsaT(10), Sizes, Location, Design DEF K14, Sizes, Location, Design
\* T2M-END R2M0355_PdPF_K14


<1>ve.        
 K3 /\ UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>> => K3'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, InFl, K3, Sizes, Location, Design
\* T2M-END R2M0332_PdPF_K3


<1>rd.        
 K5 /\ UNCHANGED <<led, pgn, pr, pst, xg, xr>> => K5'
 BY IsaT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0334_PdPF_K5


<1>tpP.        
 K11 /\ UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>> => K11'
 BY IsaT(10), Sizes, Location, Design DEF K11, Sizes, Location, Design
\* T2M-END R2M0337_PdPF_K11


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

<1>lDA42xkFPLxcY.        
 SendOwnLanded /\ UNCHANGED <<hw, ptl, sdata, sfly, skey, swrite, xg, xlt, xr, xsrc, xsrcP, xsrcS>> => SendOwnLanded'
 BY IsaT(10), Sizes, Location, Design DEF BaseSendOwnLanded, SendOwnLanded, Sizes, Location, Design
\* T2M-END R2M0384_PdPF_SendOwnLanded


<1>Ojbbn8ylfLk812.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sdata, sentry, sfly, skey, sled, squar, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>Ojbbn8ylfLk812, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H1HqSi6Es.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K3'
<2> USE ONLY <1>H1HqSi6Es, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GFaI8Nir4.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K5'
<2> USE ONLY <1>GFaI8Nir4, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>h5lKLUmZ4.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K7'
<2> USE ONLY <1>h5lKLUmZ4, Sizes, Location, Design
<2>1. K7
 BY V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Gk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ttmzAMvqv.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K8'
<2> USE ONLY <1>ttmzAMvqv, Sizes, Location, Design
<2>1. K8
 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, ph, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>J7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RKAK3Sqhez.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K11'
<2> USE ONLY <1>RKAK3Sqhez, Sizes, Location, Design
<2>1. K11
 BY V21_Inv_K11, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>tpP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>n6OGoC0ZFt.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K14'
<2> USE ONLY <1>n6OGoC0ZFt, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EtMS9avlQs.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K15'
<2> USE ONLY <1>EtMS9avlQs, Sizes, Location, Design
<2>1. K15
 BY V21_Inv_K15, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, kpin, krs, led, plt, ptl, pvis, sdata, sfly, skey, sled, swrite, xdst>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>LBf, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>poj7qeaw4.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE S4'
<2> USE ONLY <1>poj7qeaw4, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qvJuoyGOlCROilHVqgIM.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE ReadOwnLanded'
<2> USE ONLY <1>qvJuoyGOlCROilHVqgIM, Sizes, Location, Design
<2>1. ReadOwnLanded
 BY V21_Inv_ReadOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<dpreOK, hw, pgn, ph, pr, pst, ptl, pvis, rg, rhit, rpg, xdst>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>V0LNJhFJZYV3Y, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>h6RxpNyvhVT1qgdqwgWf.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE SendOwnLanded'
<2> USE ONLY <1>h6RxpNyvhVT1qgdqwgWf, Sizes, Location, Design
<2>1. SendOwnLanded
 BY V21_Inv_SendOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, ptl, sdata, sfly, skey, swrite, xg, xlt, xr, xsrc, xsrcP, xsrcS>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>lDA42xkFPLxcY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>qs7dT4BaPZ5Q, <1>H1HqSi6Es, <1>GFaI8Nir4, <1>h5lKLUmZ4, <1>ttmzAMvqv, <1>RKAK3Sqhez, <1>n6OGoC0ZFt, <1>EtMS9avlQs, <1>poj7qeaw4, <1>qvJuoyGOlCROilHVqgIM, <1>h6RxpNyvhVT1qgdqwgWf, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_PDedup_01_02 SHA f18ae3090cf227629e819c2626a9f66048f22f3efbea081c7bb6bfd981f4b693
USE DEF V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K4, V21_Inv_K6, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_SI3, V21_Inv_QuarNeverMapped, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S5, V21_Inv_S6, V21_Inv_SharedLedRef
HIDE DEF P_PagePoolsDisjoint, Part_PDedup_01_01, V21_Inv_EntryQuarantineDisjoint, V21_Inv_K11, V21_Inv_K15, V21_Inv_K3, V21_Inv_K5, V21_Inv_K7, V21_Inv_ReadOwnLanded, V21_Inv_S4, V21_Inv_SendOwnLanded, V22_T_alive, V22_T_crep, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sfly, V22_T_sled, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_PDedup_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE (PrefcMatchesHolders)' /\ (NoStrayAccess)' /\ (SharedLedRef)' /\ (NoFreeUnderRead)' /\ (P_SI2)' /\ (P_SI6)' /\ (K1)' /\ (K2)' /\ (K4)' /\ (K6)' /\ (K9)' /\ (K10)' /\ (K12)' /\ (K13)' /\ (K16)' /\ (K17)' /\ (S1)' /\ (S2)' /\ (S3)' /\ (S5)' /\ (S6)' /\ (GenFiltered)' /\ (OneReply)' /\ (ReplyTruth)' /\ (QuarNeverMapped)'
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


<1>BBQUQLHXJe.        
 ReplyTruth /\ UNCHANGED <<crep, dsucc>> => ReplyTruth'
 BY IsaT(10), Sizes, Location, Design DEF ReplyTruth, Sizes, Location, Design
\* T2M-END R2M0349_PdPF_ReplyTruth


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


<1>CHHI4E3y3uZD9LA.        
 QuarNeverMapped /\ UNCHANGED <<ph, pst, rpg>> => QuarNeverMapped'
 BY IsaT(10), Sizes, Location, Design DEF Active, QuarNeverMapped, Sizes, Location, Design
\* T2M-END R2M0350_PdPF_QuarNeverMapped


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


<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


<1>Ojbbn8ylfLk812.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sdata, sentry, sfly, skey, sled, squar, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>Ojbbn8ylfLk812, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>V8LqTLd1n.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K1'
<2> USE ONLY <1>V8LqTLd1n, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>p4OrZMGvK.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K2'
<2> USE ONLY <1>p4OrZMGvK, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kL9ZK9Hm3.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K4'
<2> USE ONLY <1>kL9ZK9Hm3, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eQbr3jp5q.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K6'
<2> USE ONLY <1>eQbr3jp5q, Sizes, Location, Design
<2>1. K6
 BY V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, pgn, pr, pst, sfly, sled>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>IM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zYezTwlLD.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K9'
<2> USE ONLY <1>zYezTwlLD, Sizes, Location, Design
<2>1. K9
 BY V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Dv, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GAvOZTN5Of.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K10'
<2> USE ONLY <1>GAvOZTN5Of, Sizes, Location, Design
<2>1. K10
 BY V21_Inv_K10, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, nx, pgn, ph, pr, pst, ptl, rg, xdst, xg, xlt, xr>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ahB, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SiTwAqhaID.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K12'
<2> USE ONLY <1>SiTwAqhaID, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FFbA84QerV.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K13'
<2> USE ONLY <1>FFbA84QerV, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>muEiRY3VG4.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K16'
<2> USE ONLY <1>muEiRY3VG4, Sizes, Location, Design
<2>1. K16
 BY V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, led, pgn, ph, plt, pr, pst, ptl, rg, rpg, sfly, sled, xdst>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>M6Z, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FN2tJ9SSoT.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE K17'
<2> USE ONLY <1>FN2tJ9SSoT, Sizes, Location, Design
<2>1. K17
 BY V21_Inv_K17, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpg>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aXu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gvumVjjLi.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE S1'
<2> USE ONLY <1>gvumVjjLi, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iebEqQ23s.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE S2'
<2> USE ONLY <1>iebEqQ23s, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hHN4LPPhH.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE S3'
<2> USE ONLY <1>hHN4LPPhH, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>b0iY1PE49.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE S5'
<2> USE ONLY <1>b0iY1PE49, Sizes, Location, Design
<2>1. S5
 BY V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Po, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WCstwY5IY.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE S6'
<2> USE ONLY <1>WCstwY5IY, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YVAuRjJUglmcOJfVUZ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE GenFiltered'
<2> USE ONLY <1>YVAuRjJUglmcOJfVUZ, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mGNb2zdczdSBBi5.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE OneReply'
<2> USE ONLY <1>mGNb2zdczdSBBi5, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YgTSw7OMSZDR1bgtk.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE ReplyTruth'
<2> USE ONLY <1>YgTSw7OMSZDR1bgtk, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Gak27VNntS9pFxYbH5te0g.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE QuarNeverMapped'
<2> USE ONLY <1>Gak27VNntS9pFxYbH5te0g, Sizes, Location, Design
<2>1. QuarNeverMapped
 BY V21_Inv_QuarNeverMapped, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ph, pst, rpg>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>CHHI4E3y3uZD9LA, Sizes, Location, Design DEF Sizes, Location, Design

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


<1>p8HWeNTMchD.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE SH(i,r,rg[i][r],q) \notin rpgS
<2> USE ONLY <1>p8HWeNTMchD, Sizes, Location, Design
<2>1. P_SI1 /\ P_SI6 /\ HitIdentity /\ STypeOK
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_P_SI1, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>Jlun1oO4ue, Design, SMTT(10), Sizes, Location DEF PDedup, P_SI1, P_SI6, SI1, SI6, HitIdentity, Active, SH, STypeOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ap9epxcPJHZGO8wLaYECjOEfY.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>ap9epxcPJHZGO8wLaYECjOEfY, Sizes, Location, Design
<2>1. STypeOK /\ PrefcMatchesHolders
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet(rpgS) /\ SH(i,r,rg[i][r],q) \notin rpgS
 BY <2>1, <1>Sj73Fps0YKe3, <1>p8HWeNTMchD, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. B2 /\ q \in SPages /\ rpgS'=rpgS \cup {SH(i,r,rg[i][r],q)}
 /\ sprefc'=[sprefc EXCEPT ![q]=@+1] /\ UNCHANGED <<sentry,xsrcS,squar>>
 BY Design, SMTT(10), Sizes, Location DEF PDedup, Sizes, Location, Design
<2>4. SUFFICES ASSUME NEW z \in SPages
 PROVE sprefc'[z]=SRefR(rpgS',z)+SRefE(sentry',xsrcS',z)+SRefQ(squar',z)
 BY <2>3, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>5. SRefR(rpgS',z)=SRefR(rpgS,z)+(IF z=q THEN 1 ELSE 0)
 BY <2>2, <2>3, <1>ce75K, SMTT(10), Sizes, Location, Design DEF SH, Sizes, Location, Design
<2>6. SRefR(rpgS,z) \in Nat /\ SRefE(sentry,xsrcS,z) \in Nat /\ SRefQ(squar,z) \in Nat
 BY <2>1, <1>JEJP2nT, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED BY <2>1, <2>3, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, STypeOK, Sizes, Location, Design
\* T2M-END R2M0548_PdQPDedup_Count

\* T2M-SCOPE R2M0549_PdQPDedup_HitIdentity

<1>UB5GRUvoP.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE P_SI3'
<2> USE ONLY <1>UB5GRUvoP, Sizes, Location, Design
<2>1. P_SI1 /\ P_SI2 /\ P_SI3 /\ P_SI6 /\ SharedLedRef /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PDedup, SPin, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, P_SI1, SH, SHPin, SI1, SSendReady, P_SI2, SI2, SPin, P_SI3, SData, SHeld, SI3, P_SI6, SI6, SharedLedRef, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0552_PdQPDedup_SI3

\* T2M-SCOPE R2M0553_PdQPDedup_SI4

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


<1>BRxN3ulQXEDbqolNhJonqY.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>BRxN3ulQXEDbqolNhJonqY, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY SMTT(10), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. SI3'
 BY <2>1, <1>UB5GRUvoP, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>NOq3QYRHhz, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0630_PdQRead_PDedup_NoFreeUnderRead

\* T2M-SCOPE R2M0631_PdQRead_PDedup_NoStrayAccess

<1>kz6YiTUEoEwM9wMx7nMN.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE NoStrayAccess'
<2> USE ONLY <1>kz6YiTUEoEwM9wMx7nMN, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY SMTT(10), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. SI3'
 BY <2>1, <1>UB5GRUvoP, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. NoFreeUnderRead' BY <2>1, <2>2, <1>NOq3QYRHhz, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>FkRDxj, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0631_PdQRead_PDedup_NoStrayAccess

\* T2M-SCOPE R2M0649_PdQRef_PDedup

<1>Evodwkd.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE SharedLedRef'
<2> USE ONLY <1>Evodwkd, Sizes, Location, Design
<2>1. QT_sprefc /\ QT_spst /\ P_SI2
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 /\ UNCHANGED <<sentry,xsrcS,squar,kpin,krs>>
 BY SMTT(10), Sizes, Location, Design DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>3. \A z \in SPages : /\ sprefc'[z] \in Int /\ sprefc'[z]>=sprefc[z]
 /\ (spst'[z]="shared" /\ spst[z] # "shared" => sprefc'[z]>=1)
 BY <2>1, Design, SMTT(10), Sizes, Location DEF PDedup, QT_sprefc, QT_spst, P_SI2, SI2, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, <1>jG8FmTxINuSHLwNN, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0649_PdQRef_PDedup


<1>VCoMVelpuh2.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE P_SI6'
<2> USE ONLY <1>VCoMVelpuh2, Sizes, Location, Design
<2>1. P_SI1 /\ P_SI3 /\ P_SI6 /\ HitIdentity /\ STypeOK /\ QT_Base /\ Q_RecordBound
 BY <1>fZ0t, <1>jcpBgwA6nO, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, <1>UlP5ju, <1>wmiyOW0, SMTT(10), Sizes, Location DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, SH, SPin, Active, P_SI1, SHPin, SI1, SSendReady, P_SI3, SData, SHeld, SI3, P_SI6, SI6, HitIdentity, STypeOK, QT_Base, Q_RecordBound, Sizes, Location, Design
\* T2M-END R2M0654_PdQRefine_PDedup_SI6


<1>GSSy.         SI2 <=> (\A p \in SPages : QSI2At(p))
 BY Sizes, Location, Design DEF SI2, QSI2At, Sizes, Location, Design
\* T2M-END R2M0678_PdQSI2


<1>UAP3WXi1Mh.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE P_SI2'
<2> USE ONLY <1>UAP3WXi1Mh, Sizes, Location, Design
<2>1. B2 /\ P_SI1 /\ P_SI2 /\ STypeOK /\ QT_Base /\ Q_RecordBound
 BY <1>fZ0t, <1>jcpBgwA6nO, V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF PDedup, Sizes, Location, Design
<2>2. SUFFICES ASSUME NEW z \in SPages PROVE QSI2At(z)'
 BY <2>1, Sizes, Location, Design DEF P_SI2, SI2, QSI2At, Sizes, Location, Design
<2>3. QSI2At(z) BY <2>1, Sizes, Location, Design DEF P_SI2, SI2, QSI2At, Sizes, Location, Design
<2>4. QSI2At(smap[i][r]) /\ QSI2At(q)
 BY <2>1, <1>GSSy, SMTT(10), Sizes, Location, Design DEF PDedup, P_SI2, Sizes, Location, Design
<2>9. UNCHANGED <<rg,ph,kpin,krs,sown,sgen,skey,swrite,sdata,sready>>
 /\ smap'=[smap EXCEPT ![i][r]=q]
 /\ smap[i][r] \in SPages /\ spst[smap[i][r]]="priv" /\ sready[smap[i][r]]
 /\ spst[q]="shared"
 /\ spst'=[spst EXCEPT ![smap[i][r]]=IF SPin(smap[i][r]) THEN "dup" ELSE "free"]
 /\ sprefc'=[sprefc EXCEPT ![q]=@+1]
 BY Design, SMTT(10), Sizes, Location DEF PDedup, basevars, recV, instV, kV, Sizes, Location, Design
<2>10. STypeOK BY <1>fZ0t, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. CASE z=smap[i][r]
 BY ONLY <2>2, <2>3, <2>4, <2>9, <2>10, <2>5, <1>Jlun1oO4ue, <1>eb6EVqLJT, SMTT(10), Sizes, Location, Design DEF QSI2At, Active, SPin, STypeOK, Sizes, Location, Design
<2>6. CASE z=q
 BY ONLY <2>2, <2>3, <2>4, <2>9, <2>10, <2>6, <1>Jlun1oO4ue, <1>eb6EVqLJT, SMTT(10), Sizes, Location, Design DEF QSI2At, Active, SPin, STypeOK, Sizes, Location, Design
<2>7. CASE z#smap[i][r] /\ z#q
 BY ONLY <2>2, <2>3, <2>4, <2>9, <2>10, <2>7, <1>Jlun1oO4ue, <1>eb6EVqLJT, SMTT(10), Sizes, Location, Design DEF QSI2At, Active, SPin, STypeOK, Sizes, Location, Design
<2>8. QED BY <2>5, <2>6, <2>7, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0680_PdQSplit_PDedup_SI2


<1> QED BY <1>ap9epxcPJHZGO8wLaYECjOEfY, <1>kz6YiTUEoEwM9wMx7nMN, <1>Evodwkd, <1>BRxN3ulQXEDbqolNhJonqY, <1>UAP3WXi1Mh, <1>VCoMVelpuh2, <1>V8LqTLd1n, <1>p4OrZMGvK, <1>kL9ZK9Hm3, <1>eQbr3jp5q, <1>zYezTwlLD, <1>GAvOZTN5Of, <1>SiTwAqhaID, <1>FFbA84QerV, <1>muEiRY3VG4, <1>FN2tJ9SSoT, <1>gvumVjjLi, <1>iebEqQ23s, <1>hHN4LPPhH, <1>b0iY1PE49, <1>WCstwY5IY, <1>YVAuRjJUglmcOJfVUZ, <1>mGNb2zdczdSBBi5, <1>YgTSw7OMSZDR1bgtk, <1>Gak27VNntS9pFxYbH5te0g, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_PDedup SHA f84fced03936346800bec4d13eeaeec2bb19b6fae5d59cc346723b1d2e61c9e8
USE DEF ShapeNetFrame
HIDE DEF Part_PDedup_01_02, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K4, V21_Inv_K6, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S5, V21_Inv_S6, V21_Inv_STypeOK, V21_Inv_SharedLedRef, V21_SFollowStatic, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
LEMMA ShapeEffect_PDedup ==
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, Sizes, Design, PDedup(i,r,q)
 PROVE net'=net
 BY ONLY PDedup(i,r,q), Sizes, Design, SMTT(5) DEF PDedup, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_PDedup ==
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, Sizes, Design, IndInv, MessageShape, PDedup(i,r,q)
 PROVE MessageShape'
 BY ONLY Sizes, Design, PDedup(i,r,q), MessageShape, ShapeEffect_PDedup, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_PDedup SHA b160762a567125f5b5730b2322ca1c0cf84d367b7a44c8cda22e3ccf22d0296b
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_PDedup, ShapeNetFrame
THEOREM DomainKeep_PDedup ==
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, Sizes, Location, Design, PinInv, PDedup(i,r,q)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, PDedup(i,r,q), ShapeEffect_PDedup
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_PDedup_02 SHA b23bc2e941b4ed340989aeb980cdcac74737bd955e2977fff7cd57178dac81f7
USE DEF V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K14, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_SFollowStatic, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_PDedup, V21_Inv_MsgXDomain
THEOREM Group_PDedup_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE (QuarNoReg)' /\ (P_SI1)' /\ (SI7)' /\ (SI8)' /\ (PrivateMapOwner)' /\ (EntryQuarantineDisjoint)' /\ (KReadIntegrity)' /\ (SealOnlyLanded)' /\ (QuietConservation)' /\ (NoEvictUnderRDMA)' /\ (SharedImmutable)' /\ (HitIdentity)' /\ (P_SI3)' /\ (P_SI4)' /\ (P_SI5)' /\ (MsgXDomain)' /\ (P_B2OffInit)'
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

           QSI1Record(j,s) ==
            /\ ph[j][s]="none" => smap[j][s]=0 /\ ~schoice[j][s]
            /\ smap[j][s] # 0 => schoice[j][s] /\ Loc(smap[j][s])=j
            /\ (Active(j,s) /\ smap[j][s] \in SPages /\ spst[smap[j][s]]="shared") => SH(j,s,rg[j][s],smap[j][s]) \in rpgS
            /\ ph[j][s] \in {"reg","sent","exp"} => SSendReady(j,s)

           QSI1Holder(h) ==
            /\ Loc(h[4])=h[1] /\ h[3]<=gen[h[2]]
            /\ (rg[h[1]][h[2]]=h[3] /\ Active(h[1],h[2]) /\ smap[h[1]][h[2]]=h[4]) \/ SHPin(h)

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Ex6xsGb, QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, QT_Base, Q_RecordBound, QSI1Record, QSI1Holder

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


<1>DRxgArSgBFCvHQZDgGA7.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE KReadIntegrity'
<2> USE ONLY <1>DRxgArSgBFCvHQZDgGA7, Sizes, Location, Design
<2>1. PrivateMapOwner /\ KReadIntegrity /\ K14 /\ P_SI1 /\ P_SI2 /\ P_SI3 /\ P_SI6 /\ SharedLedRef /\ HitIdentity /\ STypeOK /\ Ex6xsGb
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_K14, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 /\ Active(i,r) /\ smap[i][r] \in SPages /\ spst[smap[i][r]]="priv"
 BY Design, SMTT(10), Sizes, Location DEF PDedup, Active, Sizes, Location, Design
<2>3. sown[smap[i][r]]=r /\ sgen[smap[i][r]]=rg[i][r]
 /\ (\A j \in PInst, t \in Rq :
    (Active(j,t) /\ smap[j][t]=smap[i][r]) => j=i /\ t=r /\ rg[j][t]=rg[i][r])
 BY <2>2, <1>n06EAB7EubRSvN, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, BaseKReadIntegrity, InFl, KData, KHeld, KReadIntegrity, NoWriteInto, SData, SHeld, SMapIntegrity, Writing, K14, P_SI1, SH, SHPin, SI1, SSendReady, P_SI2, SI2, SPin, P_SI3, SI3, P_SI6, SI6, SharedLedRef, HitIdentity, STypeOK, Ex6xsGb, Sizes, Location, Design


<1>HPPdcIR.         PinInv => PrivateMapOwner /\ EntryQuarantineDisjoint
 BY V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, Sizes, Location, Design DEF Sizes, Location, Design


<1>gA207tLlnZxrFWqoGHc0yl8BsCXYBoHYhtCY.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>gA207tLlnZxrFWqoGHc0yl8BsCXYBoHYhtCY, Sizes, Location, Design
<2>1. EntryQuarantineDisjoint /\ STypeOK /\ Ex6xsGb
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF PDedup, EntryQuarantineDisjoint, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, Sizes, Location, Design


<1>vd0GzuLAotd02UNHrgIondns6wPD.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE PrivateMapOwner'
<2> USE ONLY <1>vd0GzuLAotd02UNHrgIondns6wPD, Sizes, Location, Design
<2>1. PrivateMapOwner /\ STypeOK /\ Ex6xsGb
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF PDedup, PrivateMapOwner, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, Sizes, Location, Design


<1>kIMtajJsWOwPVTnC.        
  ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
  PROVE MsgXDomain'
 BY ONLY <1>kIMtajJsWOwPVTnC, Sizes, Location, Design, DomainKeep_PDedup, SMTT(5)
\* T2M-END R2M0303_PdPDomain_PDedup


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>agy0tgaoa.        
 QuarNoReg /\ UNCHANGED <<iv, led, pst>> => QuarNoReg'
 BY IsaT(10), Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
\* T2M-END R2M0351_PdPF_QuarNoReg


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


<1>Ojbbn8ylfLk812.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sdata, sentry, sfly, skey, sled, squar, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>Ojbbn8ylfLk812, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WsTcQdM1fj2rZjSt.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE QuarNoReg'
<2> USE ONLY <1>WsTcQdM1fj2rZjSt, Sizes, Location, Design
<2>1. QuarNoReg
 BY V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, pst>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>agy0tgaoa, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rkzprUHvhv.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE SI7'
<2> USE ONLY <1>rkzprUHvhv, Sizes, Location, Design
<2>1. SI7
 BY V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, sentry>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>YC9, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>psIj7h56yR.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE SI8'
<2> USE ONLY <1>psIj7h56yR, Sizes, Location, Design
<2>1. SI8
 BY V21_Inv_SI8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<sentry, squar, xk, xsrcS, xst>>
 BY <1>Ojbbn8ylfLk812, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aMI, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0400_PdPFrames_PDedup

\* T2M-SCOPE R2M0485_PdPOff_PDedup

<1>xTU4OmqjimXjy1iQ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE P_B2OffInit'
 BY ONLY <1>xTU4OmqjimXjy1iQ, Sizes, Location, Design, SMTT(10) DEF PDedup, P_B2OffInit, Sizes, Location, Design
\* T2M-END R2M0485_PdPOff_PDedup


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


<1>jcpBgwA6nO.        
 ASSUME PinInv
 PROVE Q_RecordBound
<2> USE ONLY <1>jcpBgwA6nO, Sizes, Location, Design
<2>1. K8 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>Jlun1oO4ue, SMTT(10), Sizes, Location, Design DEF Q_RecordBound, K8, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FYA.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE P_SI1'
<2> USE ONLY <1>FYA, Sizes, Location, Design
<2>1. B2 /\ P_SI1 /\ P_SI5 /\ P_SI6 /\ HitIdentity /\ STypeOK /\ QT_Base /\ Q_RecordBound
 BY <1>fZ0t, <1>jcpBgwA6nO, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_P_SI1, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF PDedup, Sizes, Location, Design
<2>2. \A j \in PInst,s \in Rq : QSI1Record(j,s)'
 <3>1. SUFFICES ASSUME NEW j \in PInst, NEW s \in Rq PROVE QSI1Record(j,s)'
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QSI1Record(j,s)
 BY <2>1, SMTT(10), Sizes, Location, Design DEF P_SI1, SI1, QSI1Record, Sizes, Location, Design
 <3>3. CASE j=i /\ s=r
 BY <2>1, <3>2, <3>3, Design, <1>Jlun1oO4ue, SMTT(10), Sizes, Location DEF PDedup, basevars, recV, rtV, kV, QSI1Record, Active, SSendReady, SH, STypeOK, QT_Base, Q_RecordBound, Sizes, Location, Design
 <3>4. CASE j#i \/ s#r
 BY <2>1, <3>2, <3>4, Design, <1>Jlun1oO4ue, SMTT(10), Sizes, Location DEF PDedup, basevars, recV, rtV, kV, QSI1Record, Active, SSendReady, SH, STypeOK, QT_Base, P_SI5, SI5, Sizes, Location, Design
 <3>5. QED BY <3>3, <3>4, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A h \in rpgS' : QSI1Holder(h)'
 <3>1. SUFFICES ASSUME NEW h \in rpgS' PROVE QSI1Holder(h)'
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. CASE h=SH(i,r,rg[i][r],q)
 BY <2>1, <3>2, Design, <1>Jlun1oO4ue, SMTT(10), Sizes, Location DEF PDedup, basevars, recV, rtV, kV, QSI1Holder, Active, SH, SHPin, STypeOK, QT_Base, Q_RecordBound, Sizes, Location, Design
 <3>3. CASE h#SH(i,r,rg[i][r],q)
 <4>1. h \in rpgS /\ QSI1Holder(h)
 BY <2>1, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF PDedup, P_SI1, SI1, QSI1Holder, Sizes, Location, Design
 <4>2. QED BY <2>1, <4>1, <3>3, Design, <1>Jlun1oO4ue, SMTT(10), Sizes, Location DEF PDedup, basevars, recV, rtV, instV, kV, QSI1Holder, Active, SH, SHPin, STypeOK, QT_Base, P_SI6, SI6, HitIdentity, Sizes, Location, Design
 <3>4. QED BY <3>2, <3>3, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, Sizes, Location, Design DEF P_SI1, SI1, QSI1Record, QSI1Holder, Sizes, Location, Design
\* T2M-END R2M0515_PdQDedupSI1


<1>xHb1WEBZ7L6FZLD9z.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE HitIdentity'
<2> USE ONLY <1>xHb1WEBZ7L6FZLD9z, Sizes, Location, Design
<2>1. HitIdentity /\ P_SI1 /\ P_SI2 /\ P_SI3 /\ P_SI6 /\ SharedLedRef /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, HitIdentity, P_SI1, SH, SHPin, SI1, SSendReady, P_SI2, SI2, SPin, P_SI3, SData, SHeld, SI3, P_SI6, SI6, SharedLedRef, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0549_PdQPDedup_HitIdentity

\* T2M-SCOPE R2M0550_PdQPDedup_NoEvictUnderRDMA

<1>r6D7YfWLAUiTIY07vPn28r.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>r6D7YfWLAUiTIY07vPn28r, Sizes, Location, Design
<2>1. NoEvictUnderRDMA /\ P_SI4 /\ SharedLedRef /\ PrefcMatchesHolders /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI4, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, NoEvictUnderRDMA, SAccess, P_SI4, SI4, SPin, SharedLedRef, PrefcMatchesHolders, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0550_PdQPDedup_NoEvictUnderRDMA

\* T2M-SCOPE R2M0551_PdQPDedup_QuietConservation

<1>B9nkVaDLZvXMYy7662SLMIX.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE QuietConservation'
<2> USE ONLY <1>B9nkVaDLZvXMYy7662SLMIX, Sizes, Location, Design
<2>1. QuietConservation /\ P_SI1 /\ P_SI2 /\ SharedLedRef /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_QuietConservation, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, BaseQuietConservation, KPinned, Quiet, QuietConservation, SPin, P_SI1, SH, SHPin, SI1, SSendReady, P_SI2, SI2, SharedLedRef, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0551_PdQPDedup_QuietConservation

\* T2M-SCOPE R2M0552_PdQPDedup_SI3

<1>kbmNZLOgU.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE P_SI3'
<2> USE ONLY <1>kbmNZLOgU, Sizes, Location, Design
<2>1. P_SI1 /\ P_SI2 /\ P_SI3 /\ P_SI6 /\ SharedLedRef /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI6, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PDedup, SPin, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, P_SI1, SH, SHPin, SI1, SSendReady, P_SI2, SI2, SPin, P_SI3, SData, SHeld, SI3, P_SI6, SI6, SharedLedRef, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0552_PdQPDedup_SI3

\* T2M-SCOPE R2M0553_PdQPDedup_SI4

<1>EG4a4HIf7.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE P_SI4'
<2> USE ONLY <1>EG4a4HIf7, Sizes, Location, Design
<2>1. P_SI2 /\ P_SI4 /\ SharedLedRef /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI2, V21_Inv_P_SI4, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, P_SI2, SI2, SPin, P_SI4, SI4, SharedLedRef, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0553_PdQPDedup_SI4

\* T2M-SCOPE R2M0554_PdQPDedup_SI5

<1>pI8ThAgAu.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE P_SI5'
<2> USE ONLY <1>pI8ThAgAu, Sizes, Location, Design
<2>1. P_SI1 /\ P_SI2 /\ P_SI5 /\ SharedLedRef /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI5, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, P_SI1, SH, SHPin, SI1, SSendReady, P_SI2, SI2, SPin, Held, P_SI5, SI5, SharedLedRef, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0554_PdQPDedup_SI5

\* T2M-SCOPE R2M0555_PdQPDedup_SealOnlyLanded

<1>Osvspuu7yPR6G5fwwbhE.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE SealOnlyLanded'
<2> USE ONLY <1>Osvspuu7yPR6G5fwwbhE, Sizes, Location, Design
<2>1. SealOnlyLanded /\ P_SI2 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI2, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, BaseSealOnlyLanded, InFl, NoWriteInto, SealOnlyLanded, SharedImmutable, Writing, Active, P_SI2, SI2, SPin, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0555_PdQPDedup_SealOnlyLanded


<1>u4FVkCnrQK5NPOKwcbkCg.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, PinInv, PDedup(i,r,q)
 PROVE SharedImmutable'
<2> USE ONLY <1>u4FVkCnrQK5NPOKwcbkCg, Sizes, Location, Design
<2>1. SharedImmutable /\ P_SI2 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI2, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PDedup, basevars, ghV, instV, kV, pgV, recV, rtV, xV, InFl, NoWriteInto, SharedImmutable, Writing, Active, P_SI2, SI2, SPin, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0556_PdQPDedup_SharedImmutable

\* T2M-SCOPE R2M0630_PdQRead_PDedup_NoFreeUnderRead

<1> QED BY <1>WsTcQdM1fj2rZjSt, <1>FYA, <1>rkzprUHvhv, <1>psIj7h56yR, <1>vd0GzuLAotd02UNHrgIondns6wPD, <1>gA207tLlnZxrFWqoGHc0yl8BsCXYBoHYhtCY, <1>DRxgArSgBFCvHQZDgGA7, <1>Osvspuu7yPR6G5fwwbhE, <1>B9nkVaDLZvXMYy7662SLMIX, <1>r6D7YfWLAUiTIY07vPn28r, <1>u4FVkCnrQK5NPOKwcbkCg, <1>xHb1WEBZ7L6FZLD9z, <1>kbmNZLOgU, <1>EG4a4HIf7, <1>pI8ThAgAu, <1>kIMtajJsWOwPVTnC, <1>xTU4OmqjimXjy1iQ, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_PDedup_01_01, Part_PDedup_01_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_PDedup
HIDE DEF DomainKeep_PDedup, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K14, V21_Inv_K8, V21_Inv_KReadIntegrity, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_SFollowStatic, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_PDedup ==
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW q \in SPages, Sizes, Location, Design, PinInv, PDedup(i,r,q)
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in PInst, NEW v \in Rq, NEW w \in SPages, Sizes, Location, Design, PinInv, PDedup(u,v,w)
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_PDedup_01_01, Part_PDedup_01_02, Group_PDedup_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_PDedup_01_01, Part_PDedup_01_02, Group_PDedup_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, PDedup(i,r,q), <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, PDedup(i,r,q), ShapeKeep_PDedup, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
