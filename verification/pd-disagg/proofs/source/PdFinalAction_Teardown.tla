---- MODULE PdFinalAction_Teardown ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdShape_Teardown SHA 0ebad74e22f8c1226d04b17d67083a548eb2238e4c489b07b64a121b8e892048
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
LEMMA ShapeEffect_Teardown ==
 ASSUME NEW j \in Inst, NEW i \in Inst, Sizes, Design, Teardown(j,i)
 PROVE net'=net
 BY ONLY Teardown(j,i), Sizes, Design, SMTT(5) DEF Teardown, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_Teardown ==
 ASSUME NEW j \in Inst, NEW i \in Inst, Sizes, Design, IndInv, MessageShape, Teardown(j,i)
 PROVE MessageShape'
 BY ONLY Sizes, Design, Teardown(j,i), MessageShape, ShapeEffect_Teardown, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_Teardown SHA 92f8f0d6754583cf007b8392a74b2ad491351e51f6afeb1f2c99d66ea5590f3c
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_Teardown, ShapeNetFrame
THEOREM DomainKeep_Teardown ==
 ASSUME NEW j \in Inst, NEW i \in Inst, Sizes, Location, Design, PinInv, Teardown(j,i)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, Teardown(j,i), ShapeEffect_Teardown
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_Teardown_01 SHA 9161af83d8b6490b837f2b55ca1de0e9e579de929749c44e39e6334573154474
USE DEF V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V21_SFollowOff, V21_SFollowStatic, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_Teardown, V21_Inv_MsgXDomain
THEOREM Group_Teardown_01 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE (EntryQuarantineDisjoint)' /\ (PrivateMapOwner)' /\ (TypInv)' /\ (K1)' /\ (K2)' /\ (K3)' /\ (K4)' /\ (K5)' /\ (K6)' /\ (K7)' /\ (K8)' /\ (K9)' /\ (K10)' /\ (K11)' /\ (K12)' /\ (K13)' /\ (K14)' /\ (K15)' /\ (K16)' /\ (K17)' /\ (S1)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (S5)' /\ (S6)' /\ (NoStrayAccess)' /\ (ReadOwnLanded)' /\ (SendOwnLanded)' /\ (SealOnlyLanded)' /\ (GenFiltered)' /\ (OneReply)' /\ (ReplyTruth)' /\ (QuarNeverMapped)' /\ (QuietConservation)' /\ (NoFreeUnderRead)' /\ (KReadIntegrity)' /\ (QuarNoReg)' /\ (NoEvictUnderRDMA)' /\ (SharedLedRef)' /\ (PrefcMatchesHolders)' /\ (SharedImmutable)' /\ (HitIdentity)' /\ (P_SI1)' /\ (P_SI2)' /\ (P_SI3)' /\ (P_SI4)' /\ (P_SI5)' /\ (P_SI6)' /\ (SI7)' /\ (SI8)' /\ (P_B2OffInit)' /\ (MsgXDomain)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE PicQNkhs(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           UNRhKDF(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           x4aVJ652V(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           pONKJ3(x) == IF x4aVJ652V(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           flYh_aDX(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           zp_PIk4svxWLB(x) == x \in sentry /\ ~flYh_aDX(x) /\
            ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           jpr2xpt8(p) == spst[p]="priv" /\ sown[p] \in Rq /\ (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           LVIWHG(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           gaiU_p1(p) == (jpr2xpt8(p) \/ spst[p] \in {"drain","dup"}) /\ ~LVIWHG(p) /\ sready[p] /\ ~(\E x \in sentry' : p \in xsrcP'[x])


           n1a4h1qj(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
            spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           Zxt3uAWx0s == xsrcS'=[x \in Xids |-> IF x4aVJ652V(x) THEN (IF pONKJ3(x) \in SPages /\ spst[pONKJ3(x)]="shared" THEN {pONKJ3(x)} ELSE {}) ELSE xsrcS[x]]


           x3u8USZ8BP == xsrcP'=[x \in Xids |-> IF x4aVJ652V(x) THEN (IF pONKJ3(x) \in SPages /\ spst[pONKJ3(x)]="priv" THEN {pONKJ3(x)} ELSE {}) ELSE xsrcP[x]]


           XiXzxLeogqQ == sentry'=(sentry \cup {x \in Xids : x4aVJ652V(x)}) \ {x \in Xids : flYh_aDX(x) \/ zp_PIk4svxWLB(x)}


           cube8JL9My == squar'=squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : zp_PIk4svxWLB(x)}})


           gsRtJP8qi == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           PfTvb9KsRvdD == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           Lysb3rxXC == spst'=[p \in SPages |-> IF \E x \in Xids : zp_PIk4svxWLB(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF gaiU_p1(p) THEN "free" ELSE IF jpr2xpt8(p) THEN "drain" ELSE spst[p]]


<1> HIDE DEF PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Zxt3uAWx0s, x3u8USZ8BP, XiXzxLeogqQ, cube8JL9My, gsRtJP8qi, PfTvb9KsRvdD, Lysb3rxXC

<1>cwygPFvwHoczY.        
 ASSUME B2, SFollow
 PROVE Zxt3uAWx0s
 BY ONLY <1>cwygPFvwHoczY, Sizes, Location, Design, ZenonT(10) DEF SFollow, Zxt3uAWx0s, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>Gd2HPOF0RVYJt.        
 ASSUME B2, SFollow
 PROVE x3u8USZ8BP
 BY ONLY <1>Gd2HPOF0RVYJt, Sizes, Location, Design, ZenonT(10) DEF SFollow, x3u8USZ8BP, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>HwTcZ0S4gasFui.        
 ASSUME B2, SFollow
 PROVE XiXzxLeogqQ
 BY ONLY <1>HwTcZ0S4gasFui, Sizes, Location, Design, ZenonT(10) DEF SFollow, XiXzxLeogqQ, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>TOIEvhKztkZU7.        
 ASSUME B2, SFollow
 PROVE cube8JL9My
 BY ONLY <1>TOIEvhKztkZU7, Sizes, Location, Design, ZenonT(10) DEF SFollow, cube8JL9My, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>oPciMlf6Iubx.        
 ASSUME B2, SFollow
 PROVE gsRtJP8qi
 BY ONLY <1>oPciMlf6Iubx, Sizes, Location, Design, ZenonT(10) DEF SFollow, gsRtJP8qi, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>AHYkU73mfqzQD5t.        
 ASSUME B2, SFollow
 PROVE PfTvb9KsRvdD
 BY ONLY <1>AHYkU73mfqzQD5t, Sizes, Location, Design, ZenonT(10) DEF SFollow, PfTvb9KsRvdD, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>uUDp3u4e5PqL.        
 ASSUME B2, SFollow
 PROVE Lysb3rxXC
 BY ONLY <1>uUDp3u4e5PqL, Sizes, Location, Design, ZenonT(10) DEF SFollow, Lysb3rxXC, PicQNkhs, UNRhKDF, x4aVJ652V, pONKJ3, flYh_aDX, zp_PIk4svxWLB, jpr2xpt8, LVIWHG, gaiU_p1, n1a4h1qj, Sizes, Location, Design


<1>cQRSNCkI9c6.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>cQRSNCkI9c6, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design


<1>rsuLN.         SFollow => UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design


<1>M20Oc0Xr.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~x4aVJ652V(x)
 BY ONLY <1>M20Oc0Xr, Sizes, Location, Design, SMTT(10) DEF x4aVJ652V, Pages, Sizes, Location, Design


<1>QPMjP2YgSfrqb.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
<2> USE ONLY <1>QPMjP2YgSfrqb, Sizes, Location, Design
<2>1. STypeOK BY V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY ONLY <1>QPMjP2YgSfrqb, <2>2, SMTT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. gsRtJP8qi /\ PfTvb9KsRvdD /\ Zxt3uAWx0s /\ x3u8USZ8BP /\ (\A x \in Xids : ~x4aVJ652V(x))
 BY <2>3, <1>oPciMlf6Iubx, <1>AHYkU73mfqzQD5t, <1>cwygPFvwHoczY, <1>Gd2HPOF0RVYJt, <1>M20Oc0Xr, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED rg BY ONLY <1>QPMjP2YgSfrqb, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. /\ smap \in [PInst -> [Rq -> {0} \cup SPages]]
       /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>QPMjP2YgSfrqb, V22_T_schoice, V22_T_smap, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

 <3>4. /\ smap' = [i \in PInst |-> [r \in Rq |-> smap[i][r]]]
       /\ schoice' = [i \in PInst |-> [r \in Rq |-> schoice[i][r]]]
       /\ xsrcS' = [x \in Xids |-> xsrcS[x]] /\ xsrcP' = [x \in Xids |-> xsrcP[x]]
 BY ONLY <3>1, <3>2, SMTT(20), Sizes, Location, Design DEF gsRtJP8qi, PfTvb9KsRvdD, Zxt3uAWx0s, x3u8USZ8BP, Sizes, Location, Design
 <3>5. QED BY ONLY <3>3, <3>4, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>vWo5OSv.        
 ASSUME PinInv, B2
 PROVE /\ spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
       /\ rpgS \subseteq PInst \X Rq \X Gens \X SPages
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
       /\ sentry \subseteq Xids /\ squar \subseteq Xids \X SPages
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY <1>vWo5OSv, V22_T_rpgS, V22_T_sentry, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

<1>Ehr2pMdg5uoVBObEEj2Ppij.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg,xsrc>>
 PROVE PrivateMapOwner'
<2> USE ONLY <1>Ehr2pMdg5uoVBObEEj2Ppij, Sizes, Location, Design
<2>1. PrivateMapOwner BY V21_Inv_PrivateMapOwner, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF PrivateMapOwner, Sizes, Location, Design
<2>3. CASE B2
 <3>1. UNCHANGED <<smap,sown,sgen>> BY <1>QPMjP2YgSfrqb, <1>rsuLN, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. Lysb3rxXC BY <2>3, <1>uUDp3u4e5PqL, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A p \in SPages : spst'[p]="priv" => spst[p]="priv"
 BY <3>2, SMTT(10), Sizes, Location, Design DEF Lysb3rxXC, Sizes, Location, Design
 <3>4. QED BY <2>3, <2>1, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF PrivateMapOwner, Active, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy.        
 ASSUME PinInv, SFollow, UNCHANGED <<ph,rg,xsrc>>
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy, Sizes, Location, Design
<2>1. EntryQuarantineDisjoint BY V21_Inv_EntryQuarantineDisjoint, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
<2>3. CASE B2
 <3>1. XiXzxLeogqQ /\ cube8JL9My /\ (\A x \in Xids : ~x4aVJ652V(x))
 BY <2>3, <1>HwTcZ0S4gasFui, <1>TOIEvhKztkZU7, <1>M20Oc0Xr, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED xsrcS BY <1>QPMjP2YgSfrqb, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. sentry \subseteq Xids BY <2>3, <1>vWo5OSv, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. \A x \in sentry' : x \in sentry /\ ~zp_PIk4svxWLB(x)
 BY <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF XiXzxLeogqQ, Sizes, Location, Design
 <3>5. \A x \in sentry' : \A p \in xsrcS'[x] : <<x,p>> \notin squar'
 BY <2>1, <2>3, <3>1, <3>2, <3>3, <3>4, SMTT(20), Sizes, Location, Design DEF EntryQuarantineDisjoint, cube8JL9My, Sizes, Location, Design
 <3>6. QED BY <3>5, <2>3, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>Yw9IrgMH6O43BDTY8M58WBFEb.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE PrivateMapOwner'
<2> USE ONLY <1>Yw9IrgMH6O43BDTY8M58WBFEb, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF Teardown, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>Ehr2pMdg5uoVBObEEj2Ppij, Sizes, Location, Design DEF Sizes, Location, Design


<1>kaxuAdZTnTooBflhPUIkLY6kZrPaeDu10.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>kaxuAdZTnTooBflhPUIkLY6kZrPaeDu10, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF Teardown, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy, Sizes, Location, Design DEF Sizes, Location, Design


<1>YU5H529q3FiDwO5FN.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE FALSE
 BY ONLY <1>YU5H529q3FiDwO5FN, Sizes, Location, Design, Design, SMTT(10) DEF Teardown, Sizes, Location, Design


<1>RgOAbDNqxfOaZrZ.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE TypInv'
 BY ONLY <1>RgOAbDNqxfOaZrZ, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>awSnYoyAzgk.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K1'
 BY ONLY <1>awSnYoyAzgk, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jsTZ1b9QtIT.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K2'
 BY ONLY <1>jsTZ1b9QtIT, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rSBZ3KOqOZz.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K3'
 BY ONLY <1>rSBZ3KOqOZz, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SBk7EjyV5Xe.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K4'
 BY ONLY <1>SBk7EjyV5Xe, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nSv7YiURfrY.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K5'
 BY ONLY <1>nSv7YiURfrY, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gNQFdHMAPfK.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K6'
 BY ONLY <1>gNQFdHMAPfK, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>areeewfQwUG.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K7'
 BY ONLY <1>areeewfQwUG, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>W1jbXipgpgR.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K8'
 BY ONLY <1>W1jbXipgpgR, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XIUHcx7lhmC.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K9'
 BY ONLY <1>XIUHcx7lhmC, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FXZvLlAZJOma.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K10'
 BY ONLY <1>FXZvLlAZJOma, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EGMS3Wz9bAHR.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K11'
 BY ONLY <1>EGMS3Wz9bAHR, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lZRUgmGg6Dqv.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K12'
 BY ONLY <1>lZRUgmGg6Dqv, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J5Ieo3qi4Bpz.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K13'
 BY ONLY <1>J5Ieo3qi4Bpz, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>L4YrosHtLxz2.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K14'
 BY ONLY <1>L4YrosHtLxz2, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Caff2tvUfUyr.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K15'
 BY ONLY <1>Caff2tvUfUyr, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UKKGX0GOmx5S.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K16'
 BY ONLY <1>UKKGX0GOmx5S, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fCocHvUrspX9.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE K17'
 BY ONLY <1>fCocHvUrspX9, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JUT9Tm2Xat3.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE S1'
 BY ONLY <1>JUT9Tm2Xat3, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XptZDB9Fy76.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE S2'
 BY ONLY <1>XptZDB9Fy76, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UoFfsrDYTn6.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE S3'
 BY ONLY <1>UoFfsrDYTn6, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ScTtcCV3sQ3.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE S4'
 BY ONLY <1>ScTtcCV3sQ3, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ikjqqUhtzeG.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE S5'
 BY ONLY <1>ikjqqUhtzeG, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>V9h25L5QpPa.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE S6'
 BY ONLY <1>V9h25L5QpPa, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oVucbjlzbagHcWvu9LdkTN.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE NoStrayAccess'
 BY ONLY <1>oVucbjlzbagHcWvu9LdkTN, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UueSLRkgmbfCZHq3hXf4q5.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE ReadOwnLanded'
 BY ONLY <1>UueSLRkgmbfCZHq3hXf4q5, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vk7fva0AJl0Gt1wBJq2HUZ.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE SendOwnLanded'
 BY ONLY <1>vk7fva0AJl0Gt1wBJq2HUZ, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>v0o6Ggusi2RsjOx8GOeZxJs.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE SealOnlyLanded'
 BY ONLY <1>v0o6Ggusi2RsjOx8GOeZxJs, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qA6HSKQ74fD1TaOXhzmx.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE GenFiltered'
 BY ONLY <1>qA6HSKQ74fD1TaOXhzmx, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dtoo6GZffkDgg5VaR.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE OneReply'
 BY ONLY <1>dtoo6GZffkDgg5VaR, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eXazCPUM09Bgx078r6a.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE ReplyTruth'
 BY ONLY <1>eXazCPUM09Bgx078r6a, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KoDzLPzQfC3sJYLEJgssZw3b.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE QuarNeverMapped'
 BY ONLY <1>KoDzLPzQfC3sJYLEJgssZw3b, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DEo51kgwttMY0JoRThAollv5ul.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE QuietConservation'
 BY ONLY <1>DEo51kgwttMY0JoRThAollv5ul, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KonTkvwpDArm25qOQkWQpFfy.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE NoFreeUnderRead'
 BY ONLY <1>KonTkvwpDArm25qOQkWQpFfy, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hUuc44Kcm9TZ88d8LabgOC4.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE KReadIntegrity'
 BY ONLY <1>hUuc44Kcm9TZ88d8LabgOC4, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PQVtMGE39oTg5JOZY5.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>PQVtMGE39oTg5JOZY5, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Epz68t3TfHAfdEkVdfzH06tUx.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>Epz68t3TfHAfdEkVdfzH06tUx, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fThjNFXRURYdC0kT86Oc7.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE SharedLedRef'
 BY ONLY <1>fThjNFXRURYdC0kT86Oc7, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eLEWmZaalifoSj4qmKLL2UvgPDme.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>eLEWmZaalifoSj4qmKLL2UvgPDme, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PK59oFY41vxzwdPepuFZ1M2E.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE SharedImmutable'
 BY ONLY <1>PK59oFY41vxzwdPepuFZ1M2E, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ahp3sTfF9t0bibB8coaI.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE HitIdentity'
 BY ONLY <1>Ahp3sTfF9t0bibB8coaI, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CW61uK6Sp31y.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE P_SI1'
 BY ONLY <1>CW61uK6Sp31y, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tkvZ54IWuZKR.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE P_SI2'
 BY ONLY <1>tkvZ54IWuZKR, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>p6XwfXimvuW4.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE P_SI3'
 BY ONLY <1>p6XwfXimvuW4, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VGUlhMOWqlRL.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE P_SI4'
 BY ONLY <1>VGUlhMOWqlRL, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wkLOUx5ARLiM.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE P_SI5'
 BY ONLY <1>wkLOUx5ARLiM, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ErUwUL3nen1G.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE P_SI6'
 BY ONLY <1>ErUwUL3nen1G, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eBzVUKMkD5o3.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE SI7'
 BY ONLY <1>eBzVUKMkD5o3, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TUeOhEUAfjmZ.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE SI8'
 BY ONLY <1>TUeOhEUAfjmZ, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JVoUNaNFp3CPzXzMdh.        
 ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
 PROVE P_B2OffInit'
 BY ONLY <1>JVoUNaNFp3CPzXzMdh, Sizes, Location, Design, <1>YU5H529q3FiDwO5FN DEF Sizes, Location, Design
\* T2M-END R2M0265_PdPDisabled_Teardown


<1>tWrIjFs63fC6WZu4Bh.        
  ASSUME NEW j \in Inst, NEW i \in Inst, PinInv, Teardown(j,i), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>tWrIjFs63fC6WZu4Bh, Sizes, Location, Design, DomainKeep_Teardown, SMTT(5)
\* T2M-END R2M0328_PdPDomain_Teardown


<1> QED BY <1>kaxuAdZTnTooBflhPUIkLY6kZrPaeDu10, <1>Yw9IrgMH6O43BDTY8M58WBFEb, <1>RgOAbDNqxfOaZrZ, <1>awSnYoyAzgk, <1>jsTZ1b9QtIT, <1>rSBZ3KOqOZz, <1>SBk7EjyV5Xe, <1>nSv7YiURfrY, <1>gNQFdHMAPfK, <1>areeewfQwUG, <1>W1jbXipgpgR, <1>XIUHcx7lhmC, <1>FXZvLlAZJOma, <1>EGMS3Wz9bAHR, <1>lZRUgmGg6Dqv, <1>J5Ieo3qi4Bpz, <1>L4YrosHtLxz2, <1>Caff2tvUfUyr, <1>UKKGX0GOmx5S, <1>fCocHvUrspX9, <1>JUT9Tm2Xat3, <1>XptZDB9Fy76, <1>UoFfsrDYTn6, <1>ScTtcCV3sQ3, <1>ikjqqUhtzeG, <1>V9h25L5QpPa, <1>oVucbjlzbagHcWvu9LdkTN, <1>UueSLRkgmbfCZHq3hXf4q5, <1>vk7fva0AJl0Gt1wBJq2HUZ, <1>v0o6Ggusi2RsjOx8GOeZxJs, <1>qA6HSKQ74fD1TaOXhzmx, <1>dtoo6GZffkDgg5VaR, <1>eXazCPUM09Bgx078r6a, <1>KoDzLPzQfC3sJYLEJgssZw3b, <1>DEo51kgwttMY0JoRThAollv5ul, <1>KonTkvwpDArm25qOQkWQpFfy, <1>hUuc44Kcm9TZ88d8LabgOC4, <1>PQVtMGE39oTg5JOZY5, <1>Epz68t3TfHAfdEkVdfzH06tUx, <1>fThjNFXRURYdC0kT86Oc7, <1>eLEWmZaalifoSj4qmKLL2UvgPDme, <1>PK59oFY41vxzwdPepuFZ1M2E, <1>Ahp3sTfF9t0bibB8coaI, <1>CW61uK6Sp31y, <1>tkvZ54IWuZKR, <1>p6XwfXimvuW4, <1>VGUlhMOWqlRL, <1>wkLOUx5ARLiM, <1>ErUwUL3nen1G, <1>eBzVUKMkD5o3, <1>TUeOhEUAfjmZ, <1>JVoUNaNFp3CPzXzMdh, <1>tWrIjFs63fC6WZu4Bh, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF ProofInvParts, ProofTypeWeakenNext, ShapeKeep_Teardown
HIDE DEF DomainKeep_Teardown, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V21_SFollowOff, V21_SFollowStatic, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_Teardown ==
 ASSUME NEW j \in Inst, NEW i \in Inst, Sizes, Location, Design, PinInv, Teardown(j,i), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, NEW v \in Inst, Sizes, Location, Design, PinInv, Teardown(u,v), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Group_Teardown_01, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Group_Teardown_01, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, Teardown(j,i), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, Teardown(j,i), ShapeKeep_Teardown, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
