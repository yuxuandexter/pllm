---- MODULE PdActionSlice_PHit_01 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalPart_PHit_01_01 SHA 67ec28a7d3e3c48571b9e57fa2a704bf3f709471f204bbb222d9c09e178bbfa4
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable
THEOREM Part_PHit_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE (TypInv)' /\ (PrefcMatchesHolders)' /\ (P_SI2)' /\ (S2)' /\ (S3)'
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

<1> HIDE DEF XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Ex6xsGb, ZIqfKE, wT1th, QjQjM, xocPg, QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, QT_Base, Q_RecordBound, QSI2At

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


<1>a1oU257l3.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE SH(i,r,rg[i][r],p) \notin rpgS
<2> USE ONLY <1>a1oU257l3, Sizes, Location, Design
<2>1. P_SI1 /\ P_SI6 /\ HitIdentity /\ STypeOK
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_P_SI1, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>HsRNXPeY1C, Design, SMTT(10), Sizes, Location DEF PHit, P_SI1, P_SI6, SI1, SI6, HitIdentity, Active, SH, STypeOK, Sizes, Location, Design



<1>DTCx3719v0.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE XDML1U9'
<2> USE ONLY <1>DTCx3719v0, Sizes, Location, Design
<2>1. XDML1U9 /\ UNCHANGED spst
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF XDML1U9, Sizes, Location, Design


<1>Fbz14SOnxA.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE tlO9iBs'
<2> USE ONLY <1>Fbz14SOnxA, Sizes, Location, Design
<2>1. tlO9iBs /\ UNCHANGED sown
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF tlO9iBs, Sizes, Location, Design


<1>htImVj2QLI.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE QBnU7cB'
<2> USE ONLY <1>htImVj2QLI, Sizes, Location, Design
<2>1. QBnU7cB /\ UNCHANGED sgen
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QBnU7cB, Sizes, Location, Design


<1>FCnlzUfReQ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE iGX8myh'
<2> USE ONLY <1>FCnlzUfReQ, Sizes, Location, Design
<2>1. iGX8myh /\ UNCHANGED skey
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF iGX8myh, Sizes, Location, Design


<1>XaGf18sHPQIX.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE lFqpdWPov'
<2> USE ONLY <1>XaGf18sHPQIX, Sizes, Location, Design
<2>1. lFqpdWPov /\ UNCHANGED swrite
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF lFqpdWPov, Sizes, Location, Design


<1>xXu0Q6TP03W.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE ymH9PIO1'
<2> USE ONLY <1>xXu0Q6TP03W, Sizes, Location, Design
<2>1. ymH9PIO1 /\ UNCHANGED sdata
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF ymH9PIO1, Sizes, Location, Design


<1>fnV6SlKdpzqR.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE fPjFBORLz'
<2> USE ONLY <1>fnV6SlKdpzqR, Sizes, Location, Design
<2>1. fPjFBORLz /\ UNCHANGED sready
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF fPjFBORLz, Sizes, Location, Design


<1>hujnbbcbFz4R.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE F1sonJDZX'
<2> USE ONLY <1>hujnbbcbFz4R, Sizes, Location, Design
<2>1. F1sonJDZX /\ Ex6xsGb /\ K8
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_K8, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 /\ SH(i,r,rg[i][r],p) \in PInst \X Rq \X Gens \X SPages
 /\ SH(i,r,rg[i][r],p)[4]=p /\ SH(i,r,rg[i][r],p) \notin rpgS
 BY <2>1, <1>a1oU257l3, <1>HsRNXPeY1C, Design, SMTT(10), Sizes, Location DEF PHit, K8, SH, Ex6xsGb, Sizes, Location, Design
<2>3. sprefc[p]+1<=NPI*NR*MG+MX
 BY <2>2, <1>wQSekQ1tQsEhwr, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, Design, Sizes, SMTT(10), Location DEF PHit, F1sonJDZX, Sizes, Location, Design


<1>Cs3rbllAdr.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE PROpiGS'
<2> USE ONLY <1>Cs3rbllAdr, Sizes, Location, Design
<2>1. PROpiGS
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>HsRNXPeY1C, SMTT(5), Location DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, PROpiGS, SH, Sizes, Location, Design


<1>dcorkPe8Sb6YR.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE ZvLl9MXuDe'
<2> USE ONLY <1>dcorkPe8Sb6YR, Sizes, Location, Design
<2>1. ZvLl9MXuDe
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>HsRNXPeY1C, SMTT(5), Location DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, ZvLl9MXuDe, SH, Sizes, Location, Design


<1>jo7c1YIpeD.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE UocQWXW'
<2> USE ONLY <1>jo7c1YIpeD, Sizes, Location, Design
<2>1. UocQWXW /\ Ex6xsGb /\ K8 /\ P_SI1 /\ P_SI2
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_K8, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>HsRNXPeY1C, SMTT(5), Location DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, UocQWXW, Ex6xsGb, K8, P_SI1, P_SI2, Active, OwnedBy, IsP, IsD, SI1, SH, SHPin, SSendReady, SI2, SPin, Sizes, Location, Design


<1>Sa0e84Lgunq.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE DS5PFCAl'
<2> USE ONLY <1>Sa0e84Lgunq, Sizes, Location, Design
<2>1. DS5PFCAl /\ UNCHANGED xsrcS
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF DS5PFCAl, Sizes, Location, Design


<1>nuWHX4nke61.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE adGzfibq'
<2> USE ONLY <1>nuWHX4nke61, Sizes, Location, Design
<2>1. adGzfibq /\ UNCHANGED xsrcP
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF adGzfibq, Sizes, Location, Design


<1>y95VLMzJgSo6.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE xquGDY0L5'
<2> USE ONLY <1>y95VLMzJgSo6, Sizes, Location, Design
<2>1. xquGDY0L5 /\ UNCHANGED sentry
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF xquGDY0L5, Sizes, Location, Design


<1>q6GXcjlSSFX.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE Ik68hrHx'
<2> USE ONLY <1>q6GXcjlSSFX, Sizes, Location, Design
<2>1. Ik68hrHx /\ UNCHANGED squar
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF Ik68hrHx, Sizes, Location, Design


<1>X2yNSepaK4CGjsX.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE cqEVxOCSG2bV'
<2> USE ONLY <1>X2yNSepaK4CGjsX, Sizes, Location, Design
<2>1. cqEVxOCSG2bV /\ UNCHANGED xprefixOK
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF cqEVxOCSG2bV, Sizes, Location, Design


<1>HNeJoGZgKLfO.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE bUx1Ft3v1'
<2> USE ONLY <1>HNeJoGZgKLfO, Sizes, Location, Design
<2>1. bUx1Ft3v1 /\ UNCHANGED dpreOK
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF bUx1Ft3v1, Sizes, Location, Design


<1>NEFm6vCmBQo1c.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE gDlQbBc2EG'
<2> USE ONLY <1>NEFm6vCmBQo1c, Sizes, Location, Design
<2>1. gDlQbBc2EG
 BY <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>HsRNXPeY1C, SMTT(5), Location DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, gDlQbBc2EG, SH, Sizes, Location, Design


<1>zM1eL2tLlue8jNQ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE BDe_IdWz8uGR'
<2> USE ONLY <1>zM1eL2tLlue8jNQ, Sizes, Location, Design
<2>1. BDe_IdWz8uGR /\ UNCHANGED dedupSeen
 BY <1>rC6T, SMTT(5), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF BDe_IdWz8uGR, Sizes, Location, Design


<1>EbwqG6Kay2PN.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE CoreTypeOK'
<2> HIDE DEF CoreTypeOK, STypeOK, PHit
<2>frame. UNCHANGED basevars
 BY ONLY <1>EbwqG6Kay2PN, SMTT(5) DEF PHit
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
 BY ONLY <1>EbwqG6Kay2PN, <2>rtVFrame, V22_T_gen, SMTT(5)
<2>rtNext. rt' \in [Rq -> {"idle", "wait", "ok", "err"}]
 BY ONLY <1>EbwqG6Kay2PN, <2>rtVFrame, V22_T_rt, SMTT(5)
<2>rpNext. rp' \in [Rq -> {0} \cup Inst]
 BY ONLY <1>EbwqG6Kay2PN, <2>rtVFrame, V22_T_rp, SMTT(5)
<2>rdNext. rd' \in [Rq -> {0} \cup Inst]
 BY ONLY <1>EbwqG6Kay2PN, <2>rtVFrame, V22_T_rd, SMTT(5)
<2>hpNext. hp' \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY <1>EbwqG6Kay2PN, <2>rtVFrame, V22_T_hp, SMTT(5)
<2>hdNext. hd' \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY <1>EbwqG6Kay2PN, <2>rtVFrame, V22_T_hd, SMTT(5)
<2>aliveNext. alive' \in [Inst -> BOOLEAN]
 BY ONLY <1>EbwqG6Kay2PN, <2>instVFrame, V22_T_alive, SMTT(5)
<2>nfailNext. nfail' \in 0..MaxFail
 BY ONLY <1>EbwqG6Kay2PN, <2>instVFrame, V22_T_nfail, SMTT(5)
<2>tornNext. torn' \in [Inst -> SUBSET Inst]
 BY ONLY <1>EbwqG6Kay2PN, <2>instVFrame, V22_T_torn, SMTT(5)
<2>kpinNext. kpin' \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY <1>EbwqG6Kay2PN, <2>instVFrame, V22_T_kpin, SMTT(5)
<2>kflyNext. kfly' \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY <1>EbwqG6Kay2PN, <2>instVFrame, V22_T_kfly, SMTT(5)
<2>krsNext. krs' \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]
 BY ONLY <1>EbwqG6Kay2PN, <2>instVFrame, V22_T_krs, SMTT(5)
<2>phNext. ph' \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>EbwqG6Kay2PN, <2>recVFrame, V22_T_ph, SMTT(5)
<2>rgNext. rg' \in [Inst -> [Rq -> 0..MG]]
 BY ONLY <1>EbwqG6Kay2PN, <2>recVFrame, V22_T_rg, SMTT(5)
<2>rpgNext. rpg' \in [Inst -> [Rq -> 0..NP]]
 BY ONLY <1>EbwqG6Kay2PN, <2>recVFrame, V22_T_rpg, SMTT(5)
<2>rpeNext. rpe' \in [Inst -> [Rq -> {0} \cup Inst]]
 BY ONLY <1>EbwqG6Kay2PN, <2>recVFrame, V22_T_rpe, SMTT(5)
<2>rxNext. rx' \in [Inst -> [Rq -> 0..MX]]
 BY ONLY <1>EbwqG6Kay2PN, <2>recVFrame, V22_T_rx, SMTT(5)
<2>rhitNext. rhit' \in [Inst -> [Rq -> BOOLEAN]]
 BY ONLY <1>EbwqG6Kay2PN, <2>recVFrame, V22_T_rhit, SMTT(5)
<2>pstNext. pst' \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 BY ONLY <1>EbwqG6Kay2PN, <2>pgVFrame, V22_T_pst, SMTT(5)
<2>prNext. pr' \in [Pages -> 0..NR]
 BY ONLY <1>EbwqG6Kay2PN, <2>pgVFrame, V22_T_pr, SMTT(5)
<2>pgnNext. pgn' \in [Pages -> 0..MG]
 BY ONLY <1>EbwqG6Kay2PN, <2>pgVFrame, V22_T_pgn, SMTT(5)
<2>pltNext. plt' \in [Pages -> 0..PS]
 BY ONLY <1>EbwqG6Kay2PN, <2>pgVFrame, V22_T_plt, SMTT(5)
<2>ptlNext. ptl' \in [Pages -> -1..PS]
 BY ONLY <1>EbwqG6Kay2PN, <2>pgVFrame, V22_T_ptl, SMTT(5)
<2>pvisNext. pvis' \in [Pages -> BOOLEAN]
 BY ONLY <1>EbwqG6Kay2PN, <2>pgVFrame, V22_T_pvis, SMTT(5)
<2>ledNext. led' \in [Pages -> SUBSET Xids]
 BY ONLY <1>EbwqG6Kay2PN, <2>pgVFrame, V22_T_led, SMTT(5)
<2>sflyNext. sfly' \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>EbwqG6Kay2PN, <2>pgVFrame, V22_T_sfly, SMTT(5)
<2>sledNext. sled' \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>EbwqG6Kay2PN, <2>pgVFrame, V22_T_sled, SMTT(5)
<2>prefcNext. prefc' \in [Pages -> 0..NR]
 BY ONLY <1>EbwqG6Kay2PN, <2>pgVFrame, V22_T_prefc, SMTT(5)
<2>pqpNext. pqp' \in [Pages -> {0} \cup Inst]
 BY ONLY <1>EbwqG6Kay2PN, <2>pgVFrame, V22_T_pqp, SMTT(5)
<2>xrNext. xr' \in [Xids -> 0..NR]
 BY ONLY <1>EbwqG6Kay2PN, <2>xVFrame, V22_T_xr, SMTT(5)
<2>xgNext. xg' \in [Xids -> 0..MG]
 BY ONLY <1>EbwqG6Kay2PN, <2>xVFrame, V22_T_xg, SMTT(5)
<2>xkNext. xk' \in [Xids -> {"none", "wr", "rd"}]
 BY ONLY <1>EbwqG6Kay2PN, <2>xVFrame, V22_T_xk, SMTT(5)
<2>xpNext. xp' \in [Xids -> {0} \cup Inst]
 BY ONLY <1>EbwqG6Kay2PN, <2>xVFrame, V22_T_xp, SMTT(5)
<2>xdNext. xd' \in [Xids -> {0} \cup Inst]
 BY ONLY <1>EbwqG6Kay2PN, <2>xVFrame, V22_T_xd, SMTT(5)
<2>xsrcNext. xsrc' \in [Xids -> 0..NP]
 BY ONLY <1>EbwqG6Kay2PN, <2>xVFrame, V22_T_xsrc, SMTT(5)
<2>xdstNext. xdst' \in [Xids -> 0..NP]
 BY ONLY <1>EbwqG6Kay2PN, <2>xVFrame, V22_T_xdst, SMTT(5)
<2>xntNext. xnt' \in [Xids -> 0..PS]
 BY ONLY <1>EbwqG6Kay2PN, <2>xVFrame, V22_T_xnt, SMTT(5)
<2>hwNext. hw' \in [Xids -> {"none", "fly", "issued", "stop"}]
 BY ONLY <1>EbwqG6Kay2PN, <2>xVFrame, V22_T_hw, SMTT(5)
<2>hokNext. hok' \in [Xids -> BOOLEAN]
 BY ONLY <1>EbwqG6Kay2PN, <2>xVFrame, V22_T_hok, SMTT(5)
<2>ivNext. iv' \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
 BY ONLY <1>EbwqG6Kay2PN, <2>xVFrame, V22_T_iv, SMTT(5)
<2>xstNext. xst' \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]
 BY ONLY <1>EbwqG6Kay2PN, <2>xVFrame, V22_T_xst, SMTT(5)
<2>xltNext. xlt' \in [Xids -> 0..PS]
 BY ONLY <1>EbwqG6Kay2PN, <2>xVFrame, V22_T_xlt, SMTT(5)
<2>nxNext. nx' \in 1..(MX + 1)
 BY ONLY <1>EbwqG6Kay2PN, <2>xVFrame, V22_T_nx, SMTT(5)
<2>netNext. net' \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                      r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                      pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]
 BY ONLY <1>EbwqG6Kay2PN, <2>netFrame, V22_T_net, SMTT(5) DEF MessageShape
<2>drepNext. drep' \in [Rq -> [Gens -> 0..2]]
 BY ONLY <1>EbwqG6Kay2PN, <2>ghVFrame, V22_T_drep, SMTT(5)
<2>crepNext. crep' \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]
 BY ONLY <1>EbwqG6Kay2PN, <2>ghVFrame, V22_T_crep, SMTT(5)
<2>dsuccNext. dsucc' \in [Rq -> [Gens -> BOOLEAN]]
 BY ONLY <1>EbwqG6Kay2PN, <2>ghVFrame, V22_T_dsucc, SMTT(5)
<2>gbadNext. gbad' \in BOOLEAN
 BY ONLY <1>EbwqG6Kay2PN, <2>ghVFrame, V22_T_gbad, SMTT(5)
<2>qed. QED BY ONLY <2>genNext, <2>rtNext, <2>rpNext, <2>rdNext, <2>hpNext, <2>hdNext, <2>aliveNext, <2>nfailNext, <2>tornNext, <2>kpinNext, <2>kflyNext, <2>krsNext, <2>phNext, <2>rgNext, <2>rpgNext, <2>rpeNext, <2>rxNext, <2>rhitNext, <2>pstNext, <2>prNext, <2>pgnNext, <2>pltNext, <2>ptlNext, <2>pvisNext, <2>ledNext, <2>sflyNext, <2>sledNext, <2>prefcNext, <2>pqpNext, <2>xrNext, <2>xgNext, <2>xkNext, <2>xpNext, <2>xdNext, <2>xsrcNext, <2>xdstNext, <2>xntNext, <2>hwNext, <2>hokNext, <2>ivNext, <2>xstNext, <2>xltNext, <2>nxNext, <2>netNext, <2>drepNext, <2>crepNext, <2>dsuccNext, <2>gbadNext, ZenonT(10) DEF CoreTypeOK

\* T2M-LOCAL-VISIBILITY

<1>PdOLWZ5lbP.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE TypInv'
 BY ONLY <1>PdOLWZ5lbP, Sizes, Location, Design, <1>EbwqG6Kay2PN, <1>DTCx3719v0, <1>Fbz14SOnxA, <1>htImVj2QLI, <1>FCnlzUfReQ, <1>XaGf18sHPQIX, <1>xXu0Q6TP03W, <1>fnV6SlKdpzqR, <1>hujnbbcbFz4R, <1>Cs3rbllAdr, <1>dcorkPe8Sb6YR, <1>jo7c1YIpeD, <1>Sa0e84Lgunq, <1>nuWHX4nke61, <1>y95VLMzJgSo6, <1>q6GXcjlSSFX, <1>X2yNSepaK4CGjsX, <1>HNeJoGZgKLfO, <1>NEFm6vCmBQo1c, <1>zM1eL2tLlue8jNQ DEF TypInv, STypeOK, XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Sizes, Location, Design


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


<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


<1>xQyCTI6kYpAt.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sdata, sentry, sfly, sgen, skey, sled, sown, spst, squar, sready, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xprefixOK, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>xQyCTI6kYpAt, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>deUDJEf.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE S2'
<2> USE ONLY <1>deUDJEf, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fgDudfN.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE S3'
<2> USE ONLY <1>fgDudfN, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
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


<1>dwjuJNbM0.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE SH(i,r,rg[i][r],p) \notin rpgS
<2> USE ONLY <1>dwjuJNbM0, Sizes, Location, Design
<2>1. P_SI1 /\ P_SI6 /\ HitIdentity /\ STypeOK
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_P_SI1, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>Jlun1oO4ue, Design, SMTT(10), Sizes, Location DEF PHit, P_SI1, P_SI6, SI1, SI6, HitIdentity, Active, SH, STypeOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vhechrlVbpOhtzx8BT0eadH.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>vhechrlVbpOhtzx8BT0eadH, Sizes, Location, Design
<2>1. STypeOK /\ PrefcMatchesHolders
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet(rpgS) /\ SH(i,r,rg[i][r],p) \notin rpgS
 BY <2>1, <1>Sj73Fps0YKe3, <1>dwjuJNbM0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. B2 /\ p \in SPages /\ rpgS'=rpgS \cup {SH(i,r,rg[i][r],p)}
 /\ sprefc'=[sprefc EXCEPT ![p]=@+1] /\ UNCHANGED <<sentry,xsrcS,squar>>
 BY Design, SMTT(10), Sizes, Location DEF PHit, Sizes, Location, Design
<2>4. SUFFICES ASSUME NEW z \in SPages
 PROVE sprefc'[z]=SRefR(rpgS',z)+SRefE(sentry',xsrcS',z)+SRefQ(squar',z)
 BY <2>3, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>5. SRefR(rpgS',z)=SRefR(rpgS,z)+(IF z=p THEN 1 ELSE 0)
 BY <2>2, <2>3, <1>ce75K, SMTT(10), Sizes, Location, Design DEF SH, Sizes, Location, Design
<2>6. SRefR(rpgS,z) \in Nat /\ SRefE(sentry,xsrcS,z) \in Nat /\ SRefQ(squar,z) \in Nat
 BY <2>1, <1>JEJP2nT, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED BY <2>1, <2>3, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, STypeOK, Sizes, Location, Design
\* T2M-END R2M0558_PdQPHit_Count

\* T2M-SCOPE R2M0559_PdQPHit_QuietConservation

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


<1>p1v4zd5s.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE P_SI2'
<2> USE ONLY <1>p1v4zd5s, Sizes, Location, Design
<2>1. B2 /\ P_SI1 /\ P_SI2 /\ STypeOK /\ QT_Base /\ Q_RecordBound
 BY <1>fZ0t, <1>jcpBgwA6nO, V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF PHit, Sizes, Location, Design
<2>2. SUFFICES ASSUME NEW z \in SPages PROVE QSI2At(z)'
 BY <2>1, Sizes, Location, Design DEF P_SI2, SI2, QSI2At, Sizes, Location, Design
<2>3. QSI2At(z) BY <2>1, Sizes, Location, Design DEF P_SI2, SI2, QSI2At, Sizes, Location, Design
<2>4. smap[i][r]=0 BY <2>1, SMTT(10), Sizes, Location, Design DEF PHit, P_SI1, SI1, Sizes, Location, Design
<2>8. UNCHANGED <<spst,sown,sgen,skey,swrite,sdata,sready,rg,ph,kpin,krs>>
 /\ smap'=[smap EXCEPT ![i][r]=p] /\ sprefc'=[sprefc EXCEPT ![p]=@+1]
 /\ spst[p]="shared"
 BY Design, SMTT(10), Sizes, Location DEF PHit, basevars, recV, instV, kV, Sizes, Location, Design
<2>9. QT_smap /\ QT_sprefc
 BY <1>fZ0t, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. CASE z=p
 BY ONLY <2>2, <2>3, <2>4, <2>8, <2>9, <2>5, <1>Jlun1oO4ue, <1>eb6EVqLJT, SMTT(10), Sizes, Location, Design DEF QSI2At, Active, SPin, QT_smap, QT_sprefc, Sizes, Location, Design
<2>6. CASE z#p
 BY ONLY <2>2, <2>3, <2>4, <2>8, <2>9, <2>6, <1>Jlun1oO4ue, <1>eb6EVqLJT, SMTT(10), Sizes, Location, Design DEF QSI2At, Active, SPin, QT_smap, QT_sprefc, Sizes, Location, Design
<2>7. QED BY <2>5, <2>6, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0681_PdQSplit_PHit_SI2


<1> QED BY <1>PdOLWZ5lbP, <1>vhechrlVbpOhtzx8BT0eadH, <1>p1v4zd5s, <1>deUDJEf, <1>fgDudfN, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF Part_PHit_01_01, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K8, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_S2, V21_Inv_S3, V21_Inv_STypeOK, V21_SFollowStatic, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
====
