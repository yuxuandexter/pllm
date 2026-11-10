---- MODULE PdFinalAction_Unquarantine ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdShape_Unquarantine SHA ba3a89244e57acac0c4e9ec8c6a4f537eb736b0c9dd517d27c346ffd5bf394b4
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
LEMMA ShapeEffect_Unquarantine ==
 ASSUME NEW p \in Pages, Sizes, Design, Unquarantine(p)
 PROVE net'=net
 BY ONLY Unquarantine(p), Sizes, Design, SMTT(5) DEF Unquarantine, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_Unquarantine ==
 ASSUME NEW p \in Pages, Sizes, Design, IndInv, MessageShape, Unquarantine(p)
 PROVE MessageShape'
 BY ONLY Sizes, Design, Unquarantine(p), MessageShape, ShapeEffect_Unquarantine, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_Unquarantine SHA 0d492a2b62a311df589cd1f5b4ee9d57317a10847818d485f8a4e55dc9958f89
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_Unquarantine, ShapeNetFrame
THEOREM DomainKeep_Unquarantine ==
 ASSUME NEW p \in Pages, Sizes, Location, Design, PinInv, Unquarantine(p)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, Unquarantine(p), ShapeEffect_Unquarantine
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_Unquarantine_01 SHA c549bd0ab41ab8b83f15cd02b5c0aa1450ab8abb6ca5c111c5d8f2029bdc525d
USE DEF V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V21_SFollowOff, V21_SFollowStatic, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_Unquarantine, V21_Inv_MsgXDomain
THEOREM Group_Unquarantine_01 ==
 ASSUME Sizes, Location, Design,
        NEW p \in Pages, PinInv, Unquarantine(p), SFollow
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


<1>cp3Rcw1wDYTXxLDQbpRH0ZEfqllH9.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE PrivateMapOwner'
<2> USE ONLY <1>cp3Rcw1wDYTXxLDQbpRH0ZEfqllH9, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF Unquarantine, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>Ehr2pMdg5uoVBObEEj2Ppij, Sizes, Location, Design DEF Sizes, Location, Design


<1>CqsiPLkZBfxRcmPygzybqN0FgK8R37ogr2wiX.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>CqsiPLkZBfxRcmPygzybqN0FgK8R37ogr2wiX, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF Unquarantine, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy, Sizes, Location, Design DEF Sizes, Location, Design


<1>yx1dhgLWadQ2m1Y3lDqR4.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE FALSE
 BY ONLY <1>yx1dhgLWadQ2m1Y3lDqR4, Sizes, Location, Design, Design, SMTT(10) DEF Unquarantine, Sizes, Location, Design


<1>k5TC2aTQASWg0iwDazg.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE TypInv'
 BY ONLY <1>k5TC2aTQASWg0iwDazg, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VWDSgIM2GJr87HG.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K1'
 BY ONLY <1>VWDSgIM2GJr87HG, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GtXrJAO1IClhFJs.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K2'
 BY ONLY <1>GtXrJAO1IClhFJs, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oorGMT9zngWEj45.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K3'
 BY ONLY <1>oorGMT9zngWEj45, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AMOL99WUV4c7PhD.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K4'
 BY ONLY <1>AMOL99WUV4c7PhD, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yrVoq9DosrMyqQG.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K5'
 BY ONLY <1>yrVoq9DosrMyqQG, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lWv6eN5DWfs4l1u.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K6'
 BY ONLY <1>lWv6eN5DWfs4l1u, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DPuQUhy3un9GVY1.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K7'
 BY ONLY <1>DPuQUhy3un9GVY1, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eMqJeCgIJc8bdmE.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K8'
 BY ONLY <1>eMqJeCgIJc8bdmE, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>P6q3d0oYh5FjvJM.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K9'
 BY ONLY <1>P6q3d0oYh5FjvJM, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CAw48Xvzcu5sWk09.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K10'
 BY ONLY <1>CAw48Xvzcu5sWk09, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GVDiTcyE0ikdMzkv.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K11'
 BY ONLY <1>GVDiTcyE0ikdMzkv, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>S23ipvfEH2P76btU.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K12'
 BY ONLY <1>S23ipvfEH2P76btU, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>L4QjKw7YTvyCp0tf.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K13'
 BY ONLY <1>L4QjKw7YTvyCp0tf, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gvttgtjz79lL2tSS.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K14'
 BY ONLY <1>gvttgtjz79lL2tSS, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lxdt5e7csxirrid5.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K15'
 BY ONLY <1>lxdt5e7csxirrid5, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tlfgo2cxIS6Jn1qM.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K16'
 BY ONLY <1>Tlfgo2cxIS6Jn1qM, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ExmieMIR3RcGpLh1.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE K17'
 BY ONLY <1>ExmieMIR3RcGpLh1, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MfQcTEZ8d7UtQXO.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE S1'
 BY ONLY <1>MfQcTEZ8d7UtQXO, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>i02u8FiU1hDSuQg.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE S2'
 BY ONLY <1>i02u8FiU1hDSuQg, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jHM6PvYXyptDm9Q.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE S3'
 BY ONLY <1>jHM6PvYXyptDm9Q, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oRmTOCCq7SDyCF2.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE S4'
 BY ONLY <1>oRmTOCCq7SDyCF2, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aFHC46DCHLeRj25.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE S5'
 BY ONLY <1>aFHC46DCHLeRj25, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ECQBj76JzYuINbV.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE S6'
 BY ONLY <1>ECQBj76JzYuINbV, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LaPLPri9D59u4aj5UuhbmaggXt.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE NoStrayAccess'
 BY ONLY <1>LaPLPri9D59u4aj5UuhbmaggXt, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TEgdyDGis2QQ6Ul9AC68nPSFvS.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE ReadOwnLanded'
 BY ONLY <1>TEgdyDGis2QQ6Ul9AC68nPSFvS, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>C5nBI4ng6Dq5cOHOU4T6i8GRQO.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE SendOwnLanded'
 BY ONLY <1>C5nBI4ng6Dq5cOHOU4T6i8GRQO, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>K1N8eNyZUO7OSjgX0qyrmgYdUqK.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE SealOnlyLanded'
 BY ONLY <1>K1N8eNyZUO7OSjgX0qyrmgYdUqK, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lrlWGTNZyFEoRz5XJdS48dDl.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE GenFiltered'
 BY ONLY <1>lrlWGTNZyFEoRz5XJdS48dDl, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zWEqZhZ5Qzuf2POo3qURN.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE OneReply'
 BY ONLY <1>zWEqZhZ5Qzuf2POo3qURN, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>P8FYjMCN8kZgesy0RbI8are.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE ReplyTruth'
 BY ONLY <1>P8FYjMCN8kZgesy0RbI8are, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dzOyP4e7X6JaAnCzA7yV4uwwL5yR.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE QuarNeverMapped'
 BY ONLY <1>dzOyP4e7X6JaAnCzA7yV4uwwL5yR, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qYGlM6mIId9KrsTCqEOLQ14IwUwqRq.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE QuietConservation'
 BY ONLY <1>qYGlM6mIId9KrsTCqEOLQ14IwUwqRq, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>O0LvnsZjtg08LH1BZoy0pKN82alD.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE NoFreeUnderRead'
 BY ONLY <1>O0LvnsZjtg08LH1BZoy0pKN82alD, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T0D4aOYhLEjr7hTmwkCQbTtHHZo.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE KReadIntegrity'
 BY ONLY <1>T0D4aOYhLEjr7hTmwkCQbTtHHZo, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jx6c2z3ziMWPkXwKLW75YC.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>jx6c2z3ziMWPkXwKLW75YC, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sMJDCgMfceEAXd5HDFQ4Jv0XYtodZ.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>sMJDCgMfceEAXd5HDFQ4Jv0XYtodZ, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>f8fp2BnKvMH1gmXrlyqAjRpae.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE SharedLedRef'
 BY ONLY <1>f8fp2BnKvMH1gmXrlyqAjRpae, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cUf3bJ0LkDVNIyrS30hq0r1p9dAqn9o0.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>cUf3bJ0LkDVNIyrS30hq0r1p9dAqn9o0, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TiIzZ0fBx8FJFvG7ZC3NeS58s4xJ.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE SharedImmutable'
 BY ONLY <1>TiIzZ0fBx8FJFvG7ZC3NeS58s4xJ, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NhNw7V0VbeYgoMbf7TOUpISQ.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE HitIdentity'
 BY ONLY <1>NhNw7V0VbeYgoMbf7TOUpISQ, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>A3nsMV7GCW5AB1Ky.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE P_SI1'
 BY ONLY <1>A3nsMV7GCW5AB1Ky, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Pw6fPx0yhUZMv2Hp.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE P_SI2'
 BY ONLY <1>Pw6fPx0yhUZMv2Hp, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HgZavVL5zjMDpz8f.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE P_SI3'
 BY ONLY <1>HgZavVL5zjMDpz8f, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lB3BBi5gvT6uXGBr.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE P_SI4'
 BY ONLY <1>lB3BBi5gvT6uXGBr, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kXPVj38tvqQtlwwC.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE P_SI5'
 BY ONLY <1>kXPVj38tvqQtlwwC, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>v0QIe9R82tIoFlAh.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE P_SI6'
 BY ONLY <1>v0QIe9R82tIoFlAh, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jDvi1KEO8RuT7TLE.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE SI7'
 BY ONLY <1>jDvi1KEO8RuT7TLE, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>osxyoouvNDxIyJky.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE SI8'
 BY ONLY <1>osxyoouvNDxIyJky, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hFqFaK9Mc56UkXtFvsjrhN.        
 ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
 PROVE P_B2OffInit'
 BY ONLY <1>hFqFaK9Mc56UkXtFvsjrhN, Sizes, Location, Design, <1>yx1dhgLWadQ2m1Y3lDqR4 DEF Sizes, Location, Design
\* T2M-END R2M0266_PdPDisabled_Unquarantine


<1>VQ78Bq7rR5zZSoBCoS5RuO.        
  ASSUME NEW p \in Pages, PinInv, Unquarantine(p), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>VQ78Bq7rR5zZSoBCoS5RuO, Sizes, Location, Design, DomainKeep_Unquarantine, SMTT(5)
\* T2M-END R2M0329_PdPDomain_Unquarantine


<1> QED BY <1>CqsiPLkZBfxRcmPygzybqN0FgK8R37ogr2wiX, <1>cp3Rcw1wDYTXxLDQbpRH0ZEfqllH9, <1>k5TC2aTQASWg0iwDazg, <1>VWDSgIM2GJr87HG, <1>GtXrJAO1IClhFJs, <1>oorGMT9zngWEj45, <1>AMOL99WUV4c7PhD, <1>yrVoq9DosrMyqQG, <1>lWv6eN5DWfs4l1u, <1>DPuQUhy3un9GVY1, <1>eMqJeCgIJc8bdmE, <1>P6q3d0oYh5FjvJM, <1>CAw48Xvzcu5sWk09, <1>GVDiTcyE0ikdMzkv, <1>S23ipvfEH2P76btU, <1>L4QjKw7YTvyCp0tf, <1>gvttgtjz79lL2tSS, <1>lxdt5e7csxirrid5, <1>Tlfgo2cxIS6Jn1qM, <1>ExmieMIR3RcGpLh1, <1>MfQcTEZ8d7UtQXO, <1>i02u8FiU1hDSuQg, <1>jHM6PvYXyptDm9Q, <1>oRmTOCCq7SDyCF2, <1>aFHC46DCHLeRj25, <1>ECQBj76JzYuINbV, <1>LaPLPri9D59u4aj5UuhbmaggXt, <1>TEgdyDGis2QQ6Ul9AC68nPSFvS, <1>C5nBI4ng6Dq5cOHOU4T6i8GRQO, <1>K1N8eNyZUO7OSjgX0qyrmgYdUqK, <1>lrlWGTNZyFEoRz5XJdS48dDl, <1>zWEqZhZ5Qzuf2POo3qURN, <1>P8FYjMCN8kZgesy0RbI8are, <1>dzOyP4e7X6JaAnCzA7yV4uwwL5yR, <1>qYGlM6mIId9KrsTCqEOLQ14IwUwqRq, <1>O0LvnsZjtg08LH1BZoy0pKN82alD, <1>T0D4aOYhLEjr7hTmwkCQbTtHHZo, <1>jx6c2z3ziMWPkXwKLW75YC, <1>sMJDCgMfceEAXd5HDFQ4Jv0XYtodZ, <1>f8fp2BnKvMH1gmXrlyqAjRpae, <1>cUf3bJ0LkDVNIyrS30hq0r1p9dAqn9o0, <1>TiIzZ0fBx8FJFvG7ZC3NeS58s4xJ, <1>NhNw7V0VbeYgoMbf7TOUpISQ, <1>A3nsMV7GCW5AB1Ky, <1>Pw6fPx0yhUZMv2Hp, <1>HgZavVL5zjMDpz8f, <1>lB3BBi5gvT6uXGBr, <1>kXPVj38tvqQtlwwC, <1>v0QIe9R82tIoFlAh, <1>jDvi1KEO8RuT7TLE, <1>osxyoouvNDxIyJky, <1>hFqFaK9Mc56UkXtFvsjrhN, <1>VQ78Bq7rR5zZSoBCoS5RuO, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF ProofInvParts, ProofTypeWeakenNext, ShapeKeep_Unquarantine
HIDE DEF DomainKeep_Unquarantine, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V21_SFollowOff, V21_SFollowStatic, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_Unquarantine ==
 ASSUME NEW p \in Pages, Sizes, Location, Design, PinInv, Unquarantine(p), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Pages, Sizes, Location, Design, PinInv, Unquarantine(u), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Group_Unquarantine_01, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Group_Unquarantine_01, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, Unquarantine(p), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, Unquarantine(p), ShapeKeep_Unquarantine, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
