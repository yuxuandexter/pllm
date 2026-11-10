---- MODULE PdFinalAction_RecvHello ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdShape_RecvHello SHA ea988bae490e4bb7b2be2f187e9d75bed9ea22cf231f4aae041d14811e80c9b4
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
LEMMA ShapeEffect_RecvHello ==
 ASSUME NEW j \in Inst, Sizes, Design, RecvHello(j)
 PROVE net'=net
 BY ONLY RecvHello(j), Sizes, Design, SMTT(5) DEF RecvHello, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_RecvHello ==
 ASSUME NEW j \in Inst, Sizes, Design, IndInv, MessageShape, RecvHello(j)
 PROVE MessageShape'
 BY ONLY Sizes, Design, RecvHello(j), MessageShape, ShapeEffect_RecvHello, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_RecvHello SHA 69becc8923dfe90ea0048f9be9431e207102babe88a611e22e37f82f62eb642c
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_RecvHello, ShapeNetFrame
THEOREM DomainKeep_RecvHello ==
 ASSUME NEW j \in Inst, Sizes, Location, Design, PinInv, RecvHello(j)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, RecvHello(j), ShapeEffect_RecvHello
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_RecvHello_01 SHA b281d218e31167c34f3a6b74f05315d2d0dc7cd93966b520819af41639eb520f
USE DEF V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V21_SFollowOff, V21_SFollowStatic, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_RecvHello, V21_Inv_MsgXDomain
THEOREM Group_RecvHello_01 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, PinInv, RecvHello(j), SFollow
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


<1>XX48s91sav5ebQdxvBGnMXUpcd.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE PrivateMapOwner'
<2> USE ONLY <1>XX48s91sav5ebQdxvBGnMXUpcd, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF RecvHello, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>Ehr2pMdg5uoVBObEEj2Ppij, Sizes, Location, Design DEF Sizes, Location, Design


<1>ujjWiex6la5c0bdhmfnTpnfr1EYQAefhZl.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>ujjWiex6la5c0bdhmfnTpnfr1EYQAefhZl, Sizes, Location, Design
<2>1. UNCHANGED <<ph,rg,xsrc>>
 BY Design, ZenonT(10), Sizes, Location DEF RecvHello, recV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>n2rC7W1khbQZwsGyP7kq90KYMEuf2Xy, Sizes, Location, Design DEF Sizes, Location, Design


<1>Y5Yb6HwTfJFUtJaAW0.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE FALSE
 BY ONLY <1>Y5Yb6HwTfJFUtJaAW0, Sizes, Location, Design, Design, SMTT(10) DEF RecvHello, Sizes, Location, Design


<1>y64VH8c4GNtf5KRT.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE TypInv'
 BY ONLY <1>y64VH8c4GNtf5KRT, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pMzV0uYi4nY1.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K1'
 BY ONLY <1>pMzV0uYi4nY1, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PJ7qFDDX6NFh.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K2'
 BY ONLY <1>PJ7qFDDX6NFh, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ldstq2WF8jMF.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K3'
 BY ONLY <1>Ldstq2WF8jMF, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eSVLeLgiXj0K.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K4'
 BY ONLY <1>eSVLeLgiXj0K, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KjXq5GkROTks.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K5'
 BY ONLY <1>KjXq5GkROTks, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BRMBdJa57j42.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K6'
 BY ONLY <1>BRMBdJa57j42, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZDFhNMsOyaoI.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K7'
 BY ONLY <1>ZDFhNMsOyaoI, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qFNe9oPtxwfs.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K8'
 BY ONLY <1>qFNe9oPtxwfs, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YkoM5jTo1FPM.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K9'
 BY ONLY <1>YkoM5jTo1FPM, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LRbF7TuqoYKcN.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K10'
 BY ONLY <1>LRbF7TuqoYKcN, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>numtphB2oNjT3.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K11'
 BY ONLY <1>numtphB2oNjT3, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mNAMmzdmx1F9s.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K12'
 BY ONLY <1>mNAMmzdmx1F9s, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NhTiJxZNvChig.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K13'
 BY ONLY <1>NhTiJxZNvChig, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vHDpXnCYjDAlB.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K14'
 BY ONLY <1>vHDpXnCYjDAlB, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dN9pD7MFWaQbT.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K15'
 BY ONLY <1>dN9pD7MFWaQbT, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DF9Cc2g6AdlrY.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K16'
 BY ONLY <1>DF9Cc2g6AdlrY, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MOXPhdQbW2P7N.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE K17'
 BY ONLY <1>MOXPhdQbW2P7N, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uqPsHhOl7Yak.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE S1'
 BY ONLY <1>uqPsHhOl7Yak, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>E51aLd2J2siw.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE S2'
 BY ONLY <1>E51aLd2J2siw, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MxOkO5337dT4.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE S3'
 BY ONLY <1>MxOkO5337dT4, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Kzg2gVGhv43y.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE S4'
 BY ONLY <1>Kzg2gVGhv43y, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lpWGVFDA5g4N.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE S5'
 BY ONLY <1>lpWGVFDA5g4N, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EN0UvOmF3Usx.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE S6'
 BY ONLY <1>EN0UvOmF3Usx, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J9KCgsKFj7ubIh9ATjAwjLV.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE NoStrayAccess'
 BY ONLY <1>J9KCgsKFj7ubIh9ATjAwjLV, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cdfQoAIve5bkkpUKdZKD20j.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE ReadOwnLanded'
 BY ONLY <1>cdfQoAIve5bkkpUKdZKD20j, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jhYqNWLckAZoKK77y6WKJOY.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE SendOwnLanded'
 BY ONLY <1>jhYqNWLckAZoKK77y6WKJOY, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Nr49nyu4DqD6qmpSqEQHrFor.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE SealOnlyLanded'
 BY ONLY <1>Nr49nyu4DqD6qmpSqEQHrFor, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Vp7HJy7lSWVD1pTcgCsl3.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE GenFiltered'
 BY ONLY <1>Vp7HJy7lSWVD1pTcgCsl3, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xSDI8Jnf0dOXjT5W3z.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE OneReply'
 BY ONLY <1>xSDI8Jnf0dOXjT5W3z, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tSllo7tgEbeynkIttQJb.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE ReplyTruth'
 BY ONLY <1>tSllo7tgEbeynkIttQJb, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cQdxSciD9l2V6JzGhEE0yaKXo.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE QuarNeverMapped'
 BY ONLY <1>cQdxSciD9l2V6JzGhEE0yaKXo, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g4Oc9tpgwBn7DqqXN2wUDM7BYhM.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE QuietConservation'
 BY ONLY <1>g4Oc9tpgwBn7DqqXN2wUDM7BYhM, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pAAkUl34GEt5bSQ0b0BhK1e5n.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE NoFreeUnderRead'
 BY ONLY <1>pAAkUl34GEt5bSQ0b0BhK1e5n, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jMB1xk4rRBwIahoiAO5FmTnT.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE KReadIntegrity'
 BY ONLY <1>jMB1xk4rRBwIahoiAO5FmTnT, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qwRRi1pGgOpMgpgqGqQ.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE QuarNoReg'
 BY ONLY <1>qwRRi1pGgOpMgpgqGqQ, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>INQjj1FNUxt6ZiFCFjb98c4qwe.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE NoEvictUnderRDMA'
 BY ONLY <1>INQjj1FNUxt6ZiFCFjb98c4qwe, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yxnrJTdAMNr6JrZUcoOd4r.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE SharedLedRef'
 BY ONLY <1>yxnrJTdAMNr6JrZUcoOd4r, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zG0EGHUeSXUyUOvown0iiSxgXvaE1.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>zG0EGHUeSXUyUOvown0iiSxgXvaE1, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yoDgFtoiN8forUtQxsWRig2Ri.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE SharedImmutable'
 BY ONLY <1>yoDgFtoiN8forUtQxsWRig2Ri, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LeSHNvsXVNL2cs4WBjTbZ.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE HitIdentity'
 BY ONLY <1>LeSHNvsXVNL2cs4WBjTbZ, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wkMCQdF1sIRaI.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE P_SI1'
 BY ONLY <1>wkMCQdF1sIRaI, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ErPcarXZcgbas.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE P_SI2'
 BY ONLY <1>ErPcarXZcgbas, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pSHjnY7VGq95S.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE P_SI3'
 BY ONLY <1>pSHjnY7VGq95S, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hEY34sA7mAwG6.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE P_SI4'
 BY ONLY <1>hEY34sA7mAwG6, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>anuLJgXSb85Ok.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE P_SI5'
 BY ONLY <1>anuLJgXSb85Ok, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qbvFLPVVbXjik.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE P_SI6'
 BY ONLY <1>qbvFLPVVbXjik, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HIVkcnARMTTrU.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE SI7'
 BY ONLY <1>HIVkcnARMTTrU, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Udz8RU3YN0dYJ.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE SI8'
 BY ONLY <1>Udz8RU3YN0dYJ, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UE5KWR63UsQrotsSbnv.        
 ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
 PROVE P_B2OffInit'
 BY ONLY <1>UE5KWR63UsQrotsSbnv, Sizes, Location, Design, <1>Y5Yb6HwTfJFUtJaAW0 DEF Sizes, Location, Design
\* T2M-END R2M0264_PdPDisabled_RecvHello


<1>mJedu2gXbxMy28wQFcv.        
  ASSUME NEW j \in Inst, PinInv, RecvHello(j), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>mJedu2gXbxMy28wQFcv, Sizes, Location, Design, DomainKeep_RecvHello, SMTT(5)
\* T2M-END R2M0322_PdPDomain_RecvHello


<1> QED BY <1>ujjWiex6la5c0bdhmfnTpnfr1EYQAefhZl, <1>XX48s91sav5ebQdxvBGnMXUpcd, <1>y64VH8c4GNtf5KRT, <1>pMzV0uYi4nY1, <1>PJ7qFDDX6NFh, <1>Ldstq2WF8jMF, <1>eSVLeLgiXj0K, <1>KjXq5GkROTks, <1>BRMBdJa57j42, <1>ZDFhNMsOyaoI, <1>qFNe9oPtxwfs, <1>YkoM5jTo1FPM, <1>LRbF7TuqoYKcN, <1>numtphB2oNjT3, <1>mNAMmzdmx1F9s, <1>NhTiJxZNvChig, <1>vHDpXnCYjDAlB, <1>dN9pD7MFWaQbT, <1>DF9Cc2g6AdlrY, <1>MOXPhdQbW2P7N, <1>uqPsHhOl7Yak, <1>E51aLd2J2siw, <1>MxOkO5337dT4, <1>Kzg2gVGhv43y, <1>lpWGVFDA5g4N, <1>EN0UvOmF3Usx, <1>J9KCgsKFj7ubIh9ATjAwjLV, <1>cdfQoAIve5bkkpUKdZKD20j, <1>jhYqNWLckAZoKK77y6WKJOY, <1>Nr49nyu4DqD6qmpSqEQHrFor, <1>Vp7HJy7lSWVD1pTcgCsl3, <1>xSDI8Jnf0dOXjT5W3z, <1>tSllo7tgEbeynkIttQJb, <1>cQdxSciD9l2V6JzGhEE0yaKXo, <1>g4Oc9tpgwBn7DqqXN2wUDM7BYhM, <1>pAAkUl34GEt5bSQ0b0BhK1e5n, <1>jMB1xk4rRBwIahoiAO5FmTnT, <1>qwRRi1pGgOpMgpgqGqQ, <1>INQjj1FNUxt6ZiFCFjb98c4qwe, <1>yxnrJTdAMNr6JrZUcoOd4r, <1>zG0EGHUeSXUyUOvown0iiSxgXvaE1, <1>yoDgFtoiN8forUtQxsWRig2Ri, <1>LeSHNvsXVNL2cs4WBjTbZ, <1>wkMCQdF1sIRaI, <1>ErPcarXZcgbas, <1>pSHjnY7VGq95S, <1>hEY34sA7mAwG6, <1>anuLJgXSb85Ok, <1>qbvFLPVVbXjik, <1>HIVkcnARMTTrU, <1>Udz8RU3YN0dYJ, <1>UE5KWR63UsQrotsSbnv, <1>mJedu2gXbxMy28wQFcv, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF ProofInvParts, ProofTypeWeakenNext, ShapeKeep_RecvHello
HIDE DEF DomainKeep_RecvHello, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V21_SFollowOff, V21_SFollowStatic, V22_T_rpgS, V22_T_schoice, V22_T_sentry, V22_T_smap, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_RecvHello ==
 ASSUME NEW j \in Inst, Sizes, Location, Design, PinInv, RecvHello(j), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, Sizes, Location, Design, PinInv, RecvHello(u), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Group_RecvHello_01, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Group_RecvHello_01, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, RecvHello(j), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, RecvHello(j), ShapeKeep_RecvHello, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
