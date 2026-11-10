---- MODULE PdFinalAction_KLaunchWG ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdShape_KLaunchWG SHA 5a693fe4866257a7939d664694e6b991912c6c943d775bfa43abbf1a35486480
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
LEMMA ShapeEffect_KLaunchWG ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, Sizes, Design, KLaunchWG(i,s,r,p)
 PROVE net'=net
 BY ONLY KLaunchWG(i,s,r,p), Sizes, Design, SMTT(5) DEF KLaunchWG, KLaunch, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_KLaunchWG ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, Sizes, Design, IndInv, MessageShape, KLaunchWG(i,s,r,p)
 PROVE MessageShape'
 BY ONLY Sizes, Design, KLaunchWG(i,s,r,p), MessageShape, ShapeEffect_KLaunchWG, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_KLaunchWG SHA d09be700ed1f393134c7952b07406e748362ff1921738d4fc60aa7c8ee8acf5b
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_KLaunchWG, ShapeNetFrame
THEOREM DomainKeep_KLaunchWG ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, Sizes, Location, Design, PinInv, KLaunchWG(i,s,r,p)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, KLaunchWG(i,s,r,p), ShapeEffect_KLaunchWG
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_KLaunchWG_01 SHA ec6c9f379778338493776da14f55730edafbdf855b1f8d7693eaba2f2d148a5d
USE DEF V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V21_SFollowStatic, V22_SF_Choice, V22_SF_Map, V22_SF_Off, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_KLaunchWG, V21_Inv_MsgXDomain
THEOREM Group_KLaunchWG_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
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
<2> HIDE DEF CoreTypeOK, STypeOK, SFollow, V22_FPosted, V22_FSX, V22_FPX, V22_FSrc
<2>off. CASE ~B2
 BY ONLY <1>QPMjP2YgSfrqb, <2>off, V22_SF_Off, SMTT(5) DEF sV
<2>on. CASE B2
 <3>rg. \A i \in PInst, r \in Rq : rg'[i][r]=rg[i][r]
  BY ONLY <1>QPMjP2YgSfrqb, SMTT(5)
 <3>smapType. smap \in [PInst -> [Rq -> {0} \cup SPages]]
  BY ONLY <1>QPMjP2YgSfrqb, V22_T_smap, SMTT(5)
 <3>smapEffect. smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]
  BY ONLY <1>QPMjP2YgSfrqb, <2>on, V22_SF_Map, SMTT(5)
 <3>smapFrame. UNCHANGED smap
  BY ONLY <3>smapType, <3>smapEffect, <3>rg, SMTT(5)
 <3>schoiceType. schoice \in [PInst -> [Rq -> BOOLEAN]]
  BY ONLY <1>QPMjP2YgSfrqb, V22_T_schoice, SMTT(5)
 <3>schoiceEffect. schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]
  BY ONLY <1>QPMjP2YgSfrqb, <2>on, V22_SF_Choice, SMTT(5)
 <3>schoiceFrame. UNCHANGED schoice
  BY ONLY <3>schoiceType, <3>schoiceEffect, <3>rg, SMTT(5)
 <3>pageDomain. 0 \notin Pages
  BY ONLY Sizes, SMTT(5) DEF Sizes, Pages
 <3>noPosted. \A x \in Xids : ~V22_FPosted(x)
  BY ONLY <1>QPMjP2YgSfrqb, <3>pageDomain, SMTT(5) DEF V22_FPosted
 <3>xsrcSType. xsrcS \in [Xids -> SUBSET SPages]
  BY ONLY <1>QPMjP2YgSfrqb, V22_T_xsrcS, SMTT(5)
 <3>xsrcSEffect. xsrcS'=V22_FSX
  BY ONLY <1>QPMjP2YgSfrqb, <2>on, V22_SF_SourceShared, SMTT(5)
 <3>xsrcSFrame. UNCHANGED xsrcS
  BY ONLY <3>xsrcSType, <3>xsrcSEffect, <3>noPosted, SMTT(5) DEF V22_FSX
 <3>xsrcPType. xsrcP \in [Xids -> SUBSET SPages]
  BY ONLY <1>QPMjP2YgSfrqb, V22_T_xsrcP, SMTT(5)
 <3>xsrcPEffect. xsrcP'=V22_FPX
  BY ONLY <1>QPMjP2YgSfrqb, <2>on, V22_SF_SourcePrivate, SMTT(5)
 <3>xsrcPFrame. UNCHANGED xsrcP
  BY ONLY <3>xsrcPType, <3>xsrcPEffect, <3>noPosted, SMTT(5) DEF V22_FPX
 <3>qed. QED BY ONLY <3>smapFrame, <3>schoiceFrame, <3>xsrcSFrame, <3>xsrcPFrame, SMTT(5)
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

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


<1>Rj9caJqOHZafOXMRz92ST87yFN.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE PrivateMapOwner'
<2> USE ONLY <1>Rj9caJqOHZafOXMRz92ST87yFN, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF KLaunchWG, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>Ehr2pMdg5uoVBObEEj2Ppij, Sizes, Location, Design DEF Sizes, Location, Design


<1>wOxSlIoyDjiZ5UIUbtmyrA4p6NRLiVs2aq.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>wOxSlIoyDjiZ5UIUbtmyrA4p6NRLiVs2aq, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF KLaunchWG, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy, Sizes, Location, Design DEF Sizes, Location, Design


<1>yGiLSpzQp7CHZIENnQ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE FALSE
 BY ONLY <1>yGiLSpzQp7CHZIENnQ, Sizes, Location, Design, Design, SMTT(10) DEF KLaunchWG, Sizes, Location, Design


<1>gqHfGYdXnooDEtmd.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE TypInv'
 BY ONLY <1>gqHfGYdXnooDEtmd, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bWeupWZMQcZn.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K1'
 BY ONLY <1>bWeupWZMQcZn, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WEGpS0hgUZri.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K2'
 BY ONLY <1>WEGpS0hgUZri, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sLe54fHQ8Xsy.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K3'
 BY ONLY <1>sLe54fHQ8Xsy, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dYOy8OJFV9oQ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K4'
 BY ONLY <1>dYOy8OJFV9oQ, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>a8Pzow2fg5mK.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K5'
 BY ONLY <1>a8Pzow2fg5mK, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>I7sH9IJltYwI.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K6'
 BY ONLY <1>I7sH9IJltYwI, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>e5xpK8UDkFWy.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K7'
 BY ONLY <1>e5xpK8UDkFWy, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fNIY9pU0WBFp.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K8'
 BY ONLY <1>fNIY9pU0WBFp, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Qkd9Y4DnZU44.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K9'
 BY ONLY <1>Qkd9Y4DnZU44, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jyNwyJWcbWy4m.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K10'
 BY ONLY <1>jyNwyJWcbWy4m, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>P9T6fb35Ittcq.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K11'
 BY ONLY <1>P9T6fb35Ittcq, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>u2exkq34OZb1c.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K12'
 BY ONLY <1>u2exkq34OZb1c, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JnhqmfAmwhaMR.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K13'
 BY ONLY <1>JnhqmfAmwhaMR, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>O4SYJT1JR7NzR.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K14'
 BY ONLY <1>O4SYJT1JR7NzR, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>P8JEHopaZ25EF.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K15'
 BY ONLY <1>P8JEHopaZ25EF, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BQp8rowf8oq5S.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K16'
 BY ONLY <1>BQp8rowf8oq5S, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EYUq98CUsgAza.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE K17'
 BY ONLY <1>EYUq98CUsgAza, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m7H6QwKO6mn6.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE S1'
 BY ONLY <1>m7H6QwKO6mn6, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GhLqcbbUpR90.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE S2'
 BY ONLY <1>GhLqcbbUpR90, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xgZk5HwGPoos.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE S3'
 BY ONLY <1>xgZk5HwGPoos, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ECApotTTNcdZ.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE S4'
 BY ONLY <1>ECApotTTNcdZ, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zx4OQN5rG0xt.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE S5'
 BY ONLY <1>zx4OQN5rG0xt, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CkApaNmq2U5Q.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE S6'
 BY ONLY <1>CkApaNmq2U5Q, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vwFFuHS3WkjLT3szMpSx5BE.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE NoStrayAccess'
 BY ONLY <1>vwFFuHS3WkjLT3szMpSx5BE, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ivv3roBR82HlmuMXNoIEkZU.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE ReadOwnLanded'
 BY ONLY <1>ivv3roBR82HlmuMXNoIEkZU, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tVFp2DVjwp8LhGuDJgvip6A.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE SendOwnLanded'
 BY ONLY <1>tVFp2DVjwp8LhGuDJgvip6A, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>A4Wq2SqH28XuB6GC8WA1BjxE.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE SealOnlyLanded'
 BY ONLY <1>A4Wq2SqH28XuB6GC8WA1BjxE, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>G9t6fvIpv2SxbhtzpoTpR.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE GenFiltered'
 BY ONLY <1>G9t6fvIpv2SxbhtzpoTpR, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KzAMuXvMcz5c8op7HW.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE OneReply'
 BY ONLY <1>KzAMuXvMcz5c8op7HW, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BWPXaXvpfsMXWGXtAi6C.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE ReplyTruth'
 BY ONLY <1>BWPXaXvpfsMXWGXtAi6C, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>b4vR6SL9SMMUOZziq1ozplQON.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE QuarNeverMapped'
 BY ONLY <1>b4vR6SL9SMMUOZziq1ozplQON, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TIg9r2Rc7W7FcMXVeoLLQbMF8kx.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE QuietConservation'
 BY ONLY <1>TIg9r2Rc7W7FcMXVeoLLQbMF8kx, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Wj1WcUi1KIApGl3eZt0Wy1dae.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE NoFreeUnderRead'
 BY ONLY <1>Wj1WcUi1KIApGl3eZt0Wy1dae, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uyZ6Irk3ETPuAPjM6DIlUYlv.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE KReadIntegrity'
 BY ONLY <1>uyZ6Irk3ETPuAPjM6DIlUYlv, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ae1Ug1bTpyklbVSWXYa.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>Ae1Ug1bTpyklbVSWXYa, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wWuC32D9LLvnWx6Ep5IVQUQ7NA.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>wWuC32D9LLvnWx6Ep5IVQUQ7NA, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TdQJFsnfel5AIfNnannx4x.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE SharedLedRef'
 BY ONLY <1>TdQJFsnfel5AIfNnannx4x, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fvwX0LSkg5ZVdX8eT6bw5D0QPQqQv.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>fvwX0LSkg5ZVdX8eT6bw5D0QPQqQv, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bYlT6LToeoamsXRwkwYuMTOmG.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE SharedImmutable'
 BY ONLY <1>bYlT6LToeoamsXRwkwYuMTOmG, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ivo2W23VGliIPGgBvwM74.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE HitIdentity'
 BY ONLY <1>Ivo2W23VGliIPGgBvwM74, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zrXXRLh8TOa0Y.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE P_SI1'
 BY ONLY <1>zrXXRLh8TOa0Y, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HXmOloeGwIA7Q.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE P_SI2'
 BY ONLY <1>HXmOloeGwIA7Q, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RsoMYXaV0Okr2.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE P_SI3'
 BY ONLY <1>RsoMYXaV0Okr2, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HZXkpZJ0tEy6m.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE P_SI4'
 BY ONLY <1>HZXkpZJ0tEy6m, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zL2qKgeITau1r.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE P_SI5'
 BY ONLY <1>zL2qKgeITau1r, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fQU5QiV4Uqkq2.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE P_SI6'
 BY ONLY <1>fQU5QiV4Uqkq2, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kyOW2lvsSAblT.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE SI7'
 BY ONLY <1>kyOW2lvsSAblT, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k1hEGbPQva0Cc.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE SI8'
 BY ONLY <1>k1hEGbPQva0Cc, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>my4RCnVxwSDQLR9Yvhl.        
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE P_B2OffInit'
 BY ONLY <1>my4RCnVxwSDQLR9Yvhl, Sizes, Location, Design, <1>yGiLSpzQp7CHZIENnQ DEF Sizes, Location, Design
\* T2M-END R2M0263_PdPDisabled_KLaunchWG


<1>ELdbkO6iZ591636Um6N.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, PinInv, KLaunchWG(i,s,r,p), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>ELdbkO6iZ591636Um6N, Sizes, Location, Design, DomainKeep_KLaunchWG, SMTT(5)
\* T2M-END R2M0298_PdPDomain_KLaunchWG


<1> QED BY <1>wOxSlIoyDjiZ5UIUbtmyrA4p6NRLiVs2aq, <1>Rj9caJqOHZafOXMRz92ST87yFN, <1>gqHfGYdXnooDEtmd, <1>bWeupWZMQcZn, <1>WEGpS0hgUZri, <1>sLe54fHQ8Xsy, <1>dYOy8OJFV9oQ, <1>a8Pzow2fg5mK, <1>I7sH9IJltYwI, <1>e5xpK8UDkFWy, <1>fNIY9pU0WBFp, <1>Qkd9Y4DnZU44, <1>jyNwyJWcbWy4m, <1>P9T6fb35Ittcq, <1>u2exkq34OZb1c, <1>JnhqmfAmwhaMR, <1>O4SYJT1JR7NzR, <1>P8JEHopaZ25EF, <1>BQp8rowf8oq5S, <1>EYUq98CUsgAza, <1>m7H6QwKO6mn6, <1>GhLqcbbUpR90, <1>xgZk5HwGPoos, <1>ECApotTTNcdZ, <1>zx4OQN5rG0xt, <1>CkApaNmq2U5Q, <1>vwFFuHS3WkjLT3szMpSx5BE, <1>ivv3roBR82HlmuMXNoIEkZU, <1>tVFp2DVjwp8LhGuDJgvip6A, <1>A4Wq2SqH28XuB6GC8WA1BjxE, <1>G9t6fvIpv2SxbhtzpoTpR, <1>KzAMuXvMcz5c8op7HW, <1>BWPXaXvpfsMXWGXtAi6C, <1>b4vR6SL9SMMUOZziq1ozplQON, <1>TIg9r2Rc7W7FcMXVeoLLQbMF8kx, <1>Wj1WcUi1KIApGl3eZt0Wy1dae, <1>uyZ6Irk3ETPuAPjM6DIlUYlv, <1>Ae1Ug1bTpyklbVSWXYa, <1>wWuC32D9LLvnWx6Ep5IVQUQ7NA, <1>TdQJFsnfel5AIfNnannx4x, <1>fvwX0LSkg5ZVdX8eT6bw5D0QPQqQv, <1>bYlT6LToeoamsXRwkwYuMTOmG, <1>Ivo2W23VGliIPGgBvwM74, <1>zrXXRLh8TOa0Y, <1>HXmOloeGwIA7Q, <1>RsoMYXaV0Okr2, <1>HZXkpZJ0tEy6m, <1>zL2qKgeITau1r, <1>fQU5QiV4Uqkq2, <1>kyOW2lvsSAblT, <1>k1hEGbPQva0Cc, <1>my4RCnVxwSDQLR9Yvhl, <1>ELdbkO6iZ591636Um6N, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF ProofInvParts, ProofTypeWeakenNext, ShapeKeep_KLaunchWG
HIDE DEF DomainKeep_KLaunchWG, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V21_SFollowStatic, V22_SF_Choice, V22_SF_Map, V22_SF_Off, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_KLaunchWG ==
 ASSUME NEW i \in Inst, NEW s \in KSlots, NEW r \in Rq, NEW p \in Pages, Sizes, Location, Design, PinInv, KLaunchWG(i,s,r,p), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, NEW v \in KSlots, NEW w \in Rq, NEW y \in Pages, Sizes, Location, Design, PinInv, KLaunchWG(u,v,w,y), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Group_KLaunchWG_01, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Group_KLaunchWG_01, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, KLaunchWG(i,s,r,p), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, KLaunchWG(i,s,r,p), ShapeKeep_KLaunchWG, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
