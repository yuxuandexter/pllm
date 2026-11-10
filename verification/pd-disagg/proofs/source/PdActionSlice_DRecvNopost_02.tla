---- MODULE PdActionSlice_DRecvNopost_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_4cf173485b87d54f, PdFinalInvProjections, PdFinalEffects, PdSizeFacts, PdShapeBase, PdActionSlice_DRecvNopost_01

\* Complete original body PdFinalPart_DRecvNopost_01_02 SHA 5d3f4657221b17867701702329600b83893e5dc65b6bef46c1fc999860cde55e
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_DRecvNopost_01_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K5, V21_Inv_K6, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S3, V21_Inv_S4, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Holders, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_Squar, V22_SF_SquarFrame, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SizeParameterTypes, V22_SizeProductBound, V22_SizeRangeFacts, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_plt, V22_T_pqp, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sfly, V22_T_sled, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc
THEOREM Part_DRecvNopost_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE (TypInv)' /\ (P_SI5)' /\ (SharedLedRef)' /\ (P_SI4)' /\ (NoEvictUnderRDMA)' /\ (HitIdentity)' /\ (P_SI1)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RD_PFrame == /\ \A i \in PInst, r \in Rq : ph'[i][r]=ph[i][r] /\ rg'[i][r]=rg[i][r]
                        /\ UNCHANGED <<kpin,krs>>

           RD_SFrame == UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>


           RD_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]

           RD_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}

           RD_HUpdate == rpgS'={h \in rpgS : RD_HLive(h) \/ (RD_HPin(h) /\ Mut # "unrefBeforeKDone")}

           RD_MUpdate == /\ smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]
                        /\ schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]

           RD_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0

           RD_Src(x) == IF RD_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0

           RD_XUpdate == /\ xsrcS'=[x \in Xids |-> IF RD_Posted(x) THEN (IF RD_Src(x) \in SPages /\ spst[RD_Src(x)]="shared" THEN {RD_Src(x)} ELSE {}) ELSE xsrcS[x]]
                        /\ xsrcP'=[x \in Xids |-> IF RD_Posted(x) THEN (IF RD_Src(x) \in SPages /\ spst[RD_Src(x)]="priv" THEN {RD_Src(x)} ELSE {}) ELSE xsrcP[x]]

           RD_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}

           RD_Quarantine(x) == x \in sentry /\ ~RD_Close(x) /\
                     ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))

           RD_E2 == (sentry \cup {x \in Xids : RD_Posted(x)}) \ {x \in Xids : RD_Close(x) \/ RD_Quarantine(x)}

           RD_PX == [x \in Xids |-> IF RD_Posted(x) THEN (IF RD_Src(x) \in SPages /\ spst[RD_Src(x)]="priv" THEN {RD_Src(x)} ELSE {}) ELSE xsrcP[x]]

           RD_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\
                    (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")

           RD_Pin2(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p

           RD_Drop(p) == (RD_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RD_Pin2(p) /\ sready[p] /\ ~(\E x \in RD_E2 : p \in RD_PX[x])

           RD_SUpdate == spst'=[p \in SPages |-> IF \E x \in Xids : RD_Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                                    ELSE IF RD_Drop(p) THEN "free" ELSE IF RD_Ended(p) THEN "drain" ELSE spst[p]]
           \* T2M-LOCAL-VISIBILITY

           RD_PhType == ph \in [Inst -> [Rq -> PhSet]]

           RD_RgType == rg \in [Inst -> [Rq -> 0..MG]]

           RD_NxType == nx \in 1..(MX+1)
           \* T2M-LOCAL-VISIBILITY

           RD_RefDelta == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)
            +SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

           \* T2M-LOCAL-VISIBILITY

           RD_HolderTypes == /\ rpgS \subseteq (PInst \X Rq \X Gens \X SPages)
                             /\ sentry \subseteq Xids
                             /\ squar \subseteq (Xids \X SPages)

           RD_Q2 == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
                                   UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RD_Quarantine(x)}})

           RD_EQUpdate == sentry'=RD_E2 /\ squar'=RD_Q2

           \* T2M-LOCAL-VISIBILITY

           RD_STypeRest ==
             /\ spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
             /\ sown \in [SPages -> 0..NR] /\ sgen \in [SPages -> 0..MG] /\ skey \in [SPages -> 0..2]
             /\ swrite \in [SPages -> BOOLEAN] /\ sdata \in [SPages -> BOOLEAN] /\ sready \in [SPages -> BOOLEAN]

             /\ smap \in [PInst -> [Rq -> {0} \cup SPages]] /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
             /\ rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)
             /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
             /\ sentry \in SUBSET Xids /\ squar \in SUBSET (Xids \X SPages)
             /\ xprefixOK \in [Xids -> BOOLEAN] /\ dpreOK \in [Pages -> BOOLEAN]
             /\ hitSeen \in BOOLEAN /\ dedupSeen \in BOOLEAN


           RD_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
                    spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])

           RD_XPrefixUpdate == xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RD_Valid(x) ELSE xprefixOK[x]]

           RD_DPreUpdate == dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                                    THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                                          (IF hw[x]="issued" THEN xprefixOK[x] ELSE RD_Valid(x))
                                    ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
           \* T2M-LOCAL-VISIBILITY

           RD_XKeysFrame == UNCHANGED <<xsrc,xp,xr,xg,xk,nx>>

           RD_EntryRange == \A x \in sentry : IF xk[x]="wr" THEN iv'[x] \in {"reg","posted","failret","cqe","nopost"}
                                          ELSE xst'[x] \in {"posted","landed","failed"}


           RD_Controls == /\ \A x \in Xids : iv'[x] # iv[x] => iv[x]="none"
                          /\ \A x \in Xids : xst'[x] # xst[x] => xk[x]="wr"

           \* T2M-LOCAL-VISIBILITY

           RD_NoStop == \A x \in Xids : ~(hw[x] \in {"fly","issued"} /\ hw'[x]="stop")

           RD_RegSafe == \A x \in Xids : iv'[x]="reg" => iv[x]="reg" /\ pst'[xsrc[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

           RD_KeyOnSource == \A x \in Xids : xsrcS[x] \cup xsrcP[x] # {} => xr'[x]=xr[x] /\ xg'[x]=xg[x]

           \* T2M-LOCAL-VISIBILITY

           RD_StopBack == \A x \in Xids : (hw'[x]="stop" /\ hok'[x] /\ xdst'[x] \in Pages /\ Held(xdst[x],x)') =>
               hw[x]="stop" /\ hok[x] /\ xdst'[x]=xdst[x] /\ Held(xdst[x],x)

           RD_SI5Quar == \A h \in squar : h[1]<nx /\ h[2] \in xsrcS[h[1]] /\ spst[h[2]]="shared" /\ skey[h[2]]=STok(xr[h[1]],xg[h[1]]) /\ iv[h[1]] # "reg"

           RD_SI5Stop == \A x \in Xids : (hw[x]="stop" /\ hok[x] /\ xdst[x] \in Pages /\ Held(xdst[x],x)) => dpreOK[xdst[x]]

           RD_SI5Map == \A i \in PInst,r \in Rq : (Active(i,r) /\ smap[i][r] \in SPages /\ spst[smap[i][r]]="priv") => ph[i][r] \in {"pre","ready"}

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RD_PFrame, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_SUpdate, RD_PhType, RD_RgType, RD_NxType, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_STypeRest, RD_Valid, RD_XPrefixUpdate, RD_DPreUpdate, RD_XKeysFrame, RD_EntryRange, RD_Controls, RD_NoStop, RD_RegSafe, RD_KeyOnSource, RD_StopBack, RD_SI5Quar, RD_SI5Stop, RD_SI5Map

<1>dbfJSAnRudgsXK.         B2 /\ SFollow => RD_SUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_SUpdate, RD_Close, RD_Quarantine, RD_E2, RD_PX, RD_Ended, RD_Pin2, RD_Drop, RD_Posted, RD_Src, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ivFfcVr6Rc1eHuIs8.         B2 /\ SFollow => RD_HUpdate /\ RD_MUpdate /\ RD_XUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_HUpdate, RD_MUpdate, RD_XUpdate, RD_HPin, RD_HLive, RD_Posted, RD_Src, Sizes, Location, Design


<1>EnXJwndWG1D4vkee.         PinInv => RD_PhType /\ RD_RgType /\ RD_NxType
<2> HIDE DEF CoreTypeOK, STypeOK
<2>part0. PinInv => RD_PhType
 BY ONLY V22_T_ph, SMTT(5) DEF RD_PhType
<2>part1. PinInv => RD_RgType
 BY ONLY V22_T_rg, SMTT(5) DEF RD_RgType
<2>part2. PinInv => RD_NxType
 BY ONLY V22_T_nx, SMTT(5) DEF RD_NxType
<2>qed. QED BY ONLY <2>part0, <2>part1, <2>part2, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>lQA2.         PinInv => STypeOK /\ (B2 => SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6)
 BY SMTT(10), V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uaJsMuSZCFU.         SFollow => RD_SFrame
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_SFrame, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MWG2x9W8WQcG1.         \A p \in SPages : Loc(p) \in PInst
 BY Location, SMTT(10), Sizes, Design DEF KPages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fIPaydrEb.        
 ASSUME PinInv, SFollow, RD_PFrame
 PROVE UNCHANGED spst
<2> USE ONLY <1>fIPaydrEb, Sizes, Location, Design
<2>1. STypeOK /\ (B2 => SI2 /\ SI4)
 BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <1>lQA2, SMTT(10) DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <2>2, <2>2, SMTT(10), V21_SFollowOff DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. \A x \in Xids : xsrcP[x]={}
 BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <2>3, <2>1, <2>3, SMTT(10) DEF SI4, Sizes, Location, Design
 <3>2. \A p \in SPages : spst[p]="priv" =>
        sown[p] \in Rq /\ rg'[Loc(p)][sown[p]]=sgen[p] /\ ph'[Loc(p)][sown[p]] # "end"
 BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <2>3, <2>1, <2>3, <1>MWG2x9W8WQcG1, SMTT(10) DEF SI2, RD_PFrame, Active, Sizes, Location, Design
 <3>3. \A p \in SPages : (spst[p] \in {"drain","dup"} /\ sready[p]) =>
        \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p
 BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <2>3, <2>1, <2>3, SMTT(10) DEF SI2, RD_PFrame, SPin, Sizes, Location, Design
 <3>4. ASSUME NEW p \in SPages PROVE spst'[p]=spst[p]
  <4>1. spst[p]="priv" => sown[p] \in Rq /\ rg'[Loc(p)][sown[p]]=sgen[p] /\ ph'[Loc(p)][sown[p]] # "end"
  BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <2>3, <3>2, SMTT(10) DEF Sizes, Location, Design
  <4>2. (spst[p] \in {"drain","dup"} /\ sready[p]) =>
        \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p
  BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <2>3, <3>3, SMTT(10) DEF Sizes, Location, Design
  <4>3. QED BY <2>3, <3>1, <4>1, <4>2, <1>dbfJSAnRudgsXK, SMTT(10), Sizes, Location, Design DEF RD_SUpdate, RD_Drop, RD_Ended, RD_Pin2, Sizes, Location, Design
 <3>5. DOMAIN spst'=SPages /\ spst' \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
 BY ONLY <1>fIPaydrEb, Sizes, Location, Design, <2>3, <2>1, <2>3, <1>dbfJSAnRudgsXK, SMTT(10) DEF RD_SUpdate, STypeOK, Sizes, Location, Design
 <3>6. QED BY <2>1, <3>4, <3>5, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YSvRDxZGd.        
 ASSUME PinInv, SFollow, RD_PFrame
 PROVE UNCHANGED rpgS
<2> USE ONLY <1>YSvRDxZGd, Sizes, Location, Design
<2>1. STypeOK /\ (B2 => SI1)
 BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <1>lQA2, SMTT(10) DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <2>2, <2>2, SMTT(10), V21_SFollowOff DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. \A h \in rpgS : h[1] \in PInst /\ h[2] \in Rq
 BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <2>3, <2>1, SMTT(10) DEF STypeOK, Sizes, Location, Design
 <3>2. \A h \in rpgS :
       (rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}) \/
       (\E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4])
 BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <2>3, <2>1, <2>3, <3>1, SMTT(10) DEF SI1, RD_PFrame, Active, SHPin, Sizes, Location, Design
 <3>3. rpgS' \subseteq rpgS
 BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <2>3, <2>3, <1>ivFfcVr6Rc1eHuIs8, ZenonT(10) DEF RD_HUpdate, Sizes, Location, Design
 <3>4. ASSUME NEW h \in rpgS PROVE h \in rpgS'
  <4>1. (rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}) \/
       (\E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4])
  BY ONLY <1>YSvRDxZGd, Sizes, Location, Design, <2>3, <3>2, SMTT(10) DEF Sizes, Location, Design
  <4>2. QED BY <2>3, <4>1, <1>ivFfcVr6Rc1eHuIs8, Design, SMTT(10), Sizes, Location DEF RD_HUpdate, RD_HPin, RD_HLive, Sizes, Location, Design
 <3>5. QED BY <3>3, <3>4, ZenonT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zMokmOdGw.        
 ASSUME PinInv, SFollow, RD_PFrame
 PROVE UNCHANGED <<smap,schoice>>
<2> HIDE DEF CoreTypeOK, STypeOK, SFollow, V22_FPosted, V22_FSX, V22_FPX, V22_FSrc
<2>off. CASE ~B2
 BY ONLY <1>zMokmOdGw, <2>off, V22_SF_Off, SMTT(5) DEF sV
<2>on. CASE B2
 <3>rg. \A i \in PInst, r \in Rq : rg'[i][r]=rg[i][r]
  BY ONLY <1>zMokmOdGw, SMTT(5) DEF RD_PFrame
 <3>smapType. smap \in [PInst -> [Rq -> {0} \cup SPages]]
  BY ONLY <1>zMokmOdGw, V22_T_smap, SMTT(5)
 <3>smapEffect. smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]
  BY ONLY <1>zMokmOdGw, <2>on, V22_SF_Map, SMTT(5)
 <3>smapFrame. UNCHANGED smap
  BY ONLY <3>smapType, <3>smapEffect, <3>rg, SMTT(5)
 <3>schoiceType. schoice \in [PInst -> [Rq -> BOOLEAN]]
  BY ONLY <1>zMokmOdGw, V22_T_schoice, SMTT(5)
 <3>schoiceEffect. schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]
  BY ONLY <1>zMokmOdGw, <2>on, V22_SF_Choice, SMTT(5)
 <3>schoiceFrame. UNCHANGED schoice
  BY ONLY <3>schoiceType, <3>schoiceEffect, <3>rg, SMTT(5)
 <3>qed. QED BY ONLY <3>smapFrame, <3>schoiceFrame, SMTT(5)
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>cIrFCXuTtPxBU.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE UNCHANGED <<xsrcS,xsrcP>>
<2> HIDE DEF CoreTypeOK, STypeOK, SFollow, V22_FPosted, V22_FSX, V22_FPX, V22_FSrc
<2>off. CASE ~B2
 BY ONLY <1>cIrFCXuTtPxBU, <2>off, V22_SF_Off, SMTT(5) DEF sV
<2>on. CASE B2
 <3>pageDomain. 0 \notin Pages
  BY ONLY Sizes, SMTT(5) DEF Sizes, Pages
 <3>noPosted. \A x \in Xids : ~V22_FPosted(x)
  BY ONLY <1>cIrFCXuTtPxBU, <3>pageDomain, SMTT(5) DEF V22_FPosted
 <3>xsrcSType. xsrcS \in [Xids -> SUBSET SPages]
  BY ONLY <1>cIrFCXuTtPxBU, V22_T_xsrcS, SMTT(5)
 <3>xsrcSEffect. xsrcS'=V22_FSX
  BY ONLY <1>cIrFCXuTtPxBU, <2>on, V22_SF_SourceShared, SMTT(5)
 <3>xsrcSFrame. UNCHANGED xsrcS
  BY ONLY <3>xsrcSType, <3>xsrcSEffect, <3>noPosted, SMTT(5) DEF V22_FSX
 <3>xsrcPType. xsrcP \in [Xids -> SUBSET SPages]
  BY ONLY <1>cIrFCXuTtPxBU, V22_T_xsrcP, SMTT(5)
 <3>xsrcPEffect. xsrcP'=V22_FPX
  BY ONLY <1>cIrFCXuTtPxBU, <2>on, V22_SF_SourcePrivate, SMTT(5)
 <3>xsrcPFrame. UNCHANGED xsrcP
  BY ONLY <3>xsrcPType, <3>xsrcPEffect, <3>noPosted, SMTT(5) DEF V22_FPX
 <3>qed. QED BY ONLY <3>xsrcSFrame, <3>xsrcPFrame, SMTT(5)
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

\* T2M-END R2M0682_PdRDSharedBase


<1>sWUiUol.        
 ASSUME NEW A, NEW B, NEW C, NEW D,
        IsFiniteSet(A), IsFiniteSet(B), IsFiniteSet(C), IsFiniteSet(D)
 PROVE IsFiniteSet(A \X B \X C \X D)
<2> USE ONLY <1>sWUiUol, Sizes, Location, Design
<2>1. IsFiniteSet(A \X B)
 BY FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet((A \X B) \X C)
 BY <2>1, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet(((A \X B) \X C) \X D)
 BY <2>2, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. A \X B \X C \X D \subseteq {<<t[1][1][1],t[1][1][2],t[1][2],t[2]>> : t \in (((A \X B) \X C) \X D)}
 <3>1. ASSUME NEW u \in A \X B \X C \X D
        PROVE u \in {<<t[1][1][1],t[1][1][2],t[1][2],t[2]>> : t \in (((A \X B) \X C) \X D)}
  <4>1. u = <<u[1],u[2],u[3],u[4]>> /\ u[1] \in A /\ u[2] \in B /\ u[3] \in C /\ u[4] \in D
  BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. <<<<<<u[1],u[2]>>,u[3]>>,u[4]>> \in (((A \X B) \X C) \X D)
  BY <4>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <3>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. IsFiniteSet({<<t[1][1][1],t[1][1][2],t[1][2],t[2]>> : t \in (((A \X B) \X C) \X D)})
 BY <2>3, FS_Image, IsaT(10), SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yXEVXb54O9q5W.        
 IsFiniteSet(PInst) /\ IsFiniteSet(Rq) /\ IsFiniteSet(Gens) /\ IsFiniteSet(SPages) /\ IsFiniteSet(Xids)
 BY Sizes, FS_Interval, SMTT(10), Location, Design DEF PInst, Rq, Gens, SPages, Xids, Sizes, Location, Design
\* T2M-END R2M0683_PdRDFinite


<1>SExsPOAumjk344.         B2 /\ SFollow => RD_RefDelta
 BY ZenonT(10), Sizes, Location, Design DEF RD_RefDelta, SFollow, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cPqz9TtB.        
 ASSUME NEW H, NEW E, NEW Q, NEW X, IsFiniteSet(H), IsFiniteSet(E), IsFiniteSet(Q), NEW p
 PROVE SRefR(H,p) \in Nat /\ SRefE(E,X,p) \in Nat /\ SRefQ(Q,p) \in Nat
<2> USE ONLY <1>cPqz9TtB, Sizes, Location, Design
<2>1. IsFiniteSet({h \in H : h[4]=p}) BY FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet({x \in E : p \in X[x]}) BY FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet({h \in Q : h[2]=p}) BY FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design


<1>x1ffOQE1KPtJ.        
 ASSUME PrefcMatchesHolders, RD_RefDelta,
        IsFiniteSet(rpgS), IsFiniteSet(sentry), IsFiniteSet(squar),
        IsFiniteSet(rpgS'), IsFiniteSet(sentry'), IsFiniteSet(squar')
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>x1ffOQE1KPtJ, Sizes, Location, Design
<2>1. ASSUME NEW p \in SPages PROVE
        SRefR(rpgS,p) \in Nat /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefQ(squar,p) \in Nat /\
        SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat
 BY <1>cPqz9TtB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, RD_RefDelta, Sizes, Location, Design
\* T2M-END R2M0684_PdRDRefCount


<1>y69bbnw8OExl0j.         B2 /\ SFollow => RD_EQUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_EQUpdate, RD_E2, RD_Q2, RD_Close, RD_Quarantine, RD_Posted, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aGGTPadibFyx5jUm6wA.        
 ASSUME NEW H, NEW E, NEW Q, H \subseteq (PInst \X Rq \X Gens \X SPages), E \subseteq Xids, Q \subseteq (Xids \X SPages)
 PROVE IsFiniteSet(H) /\ IsFiniteSet(E) /\ IsFiniteSet(Q)
<2> USE ONLY <1>aGGTPadibFyx5jUm6wA, Sizes, Location, Design
<2>1. IsFiniteSet(PInst \X Rq \X Gens \X SPages)
 BY <1>yXEVXb54O9q5W, <1>sWUiUol, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet(Xids \X SPages)
 BY <1>yXEVXb54O9q5W, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yXEVXb54O9q5W, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>euftvuGfUGzVhYLlW.        
 ASSUME PinInv, SFollow
 PROVE RD_HolderTypes'
<2> USE ONLY <1>euftvuGfUGzVhYLlW, Sizes, Location, Design
<2>1. RD_HolderTypes /\ xsrcS \in [Xids -> SUBSET SPages]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>euftvuGfUGzVhYLlW, V22_T_rpgS, V22_T_sentry, V22_T_squar, V22_T_xsrcS, SMTT(5) DEF RD_HolderTypes

<2>2. CASE ~B2
 BY <2>1, <2>2, ZenonT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, RD_HolderTypes, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RD_HUpdate /\ RD_EQUpdate
 BY <2>3, <1>ivFfcVr6Rc1eHuIs8, <1>y69bbnw8OExl0j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. rpgS' \subseteq rpgS /\ sentry' \subseteq sentry \cup Xids
 BY <3>1, SMTT(10), Sizes, Location, Design DEF RD_HUpdate, RD_EQUpdate, RD_E2, Sizes, Location, Design
 <3>3. squar' \subseteq (Xids \X SPages)
 BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF RD_HolderTypes, RD_EQUpdate, RD_Q2, Sizes, Location, Design
 <3>4. QED BY <2>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF RD_HolderTypes, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RWvTkqQsVDwnRge2Q5E0XkOXe.        
 ASSUME PinInv, SFollow
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>RWvTkqQsVDwnRge2Q5E0XkOXe, Sizes, Location, Design
<2>1. PrefcMatchesHolders /\ RD_HolderTypes /\ RD_HolderTypes'
 BY <1>lQA2, <1>euftvuGfUGzVhYLlW, SMTT(10), V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF STypeOK, RD_HolderTypes, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. IsFiniteSet(rpgS) /\ IsFiniteSet(sentry) /\ IsFiniteSet(squar) /\ IsFiniteSet(rpgS') /\ IsFiniteSet(sentry') /\ IsFiniteSet(squar')
 BY <2>1, <1>aGGTPadibFyx5jUm6wA, SMTT(10), Sizes, Location, Design DEF RD_HolderTypes, Sizes, Location, Design
<2>3. CASE ~B2
 BY <2>3, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>4. CASE B2
 <3>1. RD_RefDelta BY <2>4, <1>SExsPOAumjk344, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>2, <3>1, <1>x1ffOQE1KPtJ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0685_PdRDHolderTypes


<1>dCj1oPpXLfODIy.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY ONLY <1>dCj1oPpXLfODIy, Sizes, Location, Design, <1>uaJsMuSZCFU, <1>fIPaydrEb, <1>YSvRDxZGd, <1>zMokmOdGw, <1>cIrFCXuTtPxBU, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VDsAIqq0.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,gen>>
 PROVE P_SI1'
<2> USE ONLY <1>VDsAIqq0, Sizes, Location, Design
<2>1. P_SI1
 BY SMTT(10), V21_Inv_P_SI1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. STypeOK BY <1>lQA2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF P_SI1, SI1, RD_PFrame, RD_SFrame, STypeOK, Active, SHPin, SSendReady, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FPQA7M3w.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,gen>>
 PROVE P_SI3'
<2> USE ONLY <1>FPQA7M3w, Sizes, Location, Design
<2>1. P_SI3
 BY SMTT(10), V21_Inv_P_SI3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF P_SI3, SI3, RD_PFrame, RD_SFrame, SData, SHeld, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ueaxxwWI.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,gen>>
 PROVE HitIdentity'
<2> USE ONLY <1>ueaxxwWI, Sizes, Location, Design
<2>1. HitIdentity /\ STypeOK
 BY SMTT(10), V21_Inv_HitIdentity, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,smap,schoice,rpgS,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF HitIdentity, RD_PFrame, RD_SFrame, STypeOK, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HyTxass4cKRoY43Ha.         B2 /\ SFollow => RD_XPrefixUpdate /\ RD_DPreUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_XPrefixUpdate, RD_DPreUpdate, RD_Valid, Sizes, Location, Design
\* T2M-LOCAL-VISIBILITY

<1>mmyDIW0RP.        
 ASSUME STypeOK, NEW x \in Xids
 PROVE RD_Valid(x) \in BOOLEAN
 BY ONLY <1>mmyDIW0RP, Sizes, Location, Design, SMTT(10) DEF STypeOK, RD_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hrFKh7axpajm.         RD_STypeRest' /\ sprefc' \in [SPages -> 0..(NPI*NR*MG+MX)] => STypeOK'
 BY SMTT(10), Sizes, Location, Design DEF RD_STypeRest, STypeOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>c0gZZhOiBg4Hvw4.        
 ASSUME PinInv, SFollow
 PROVE RD_STypeRest'
<2> HIDE DEF CoreTypeOK, STypeOK, SFollow
<2> USE ONLY <1>c0gZZhOiBg4Hvw4, Sizes, Location, Design
<2>1. STypeOK /\ RD_HolderTypes'
 BY <1>lQA2, <1>euftvuGfUGzVhYLlW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY <2>1, <2>2, ZenonT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, RD_STypeRest, STypeOK, Sizes, Location, Design
<2>3. CASE B2
 <3>status. spst' \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
  BY ONLY <1>c0gZZhOiBg4Hvw4, <2>3, V22_T_spst, V22_SF_Status, SMTT(5)
 <3>map. smap' \in [PInst -> [Rq -> {0} \cup SPages]]
  BY ONLY <1>c0gZZhOiBg4Hvw4, <2>3, V22_T_smap, V22_SF_Map, SMTT(5)
 <3>choice. schoice' \in [PInst -> [Rq -> BOOLEAN]]
  BY ONLY <1>c0gZZhOiBg4Hvw4, <2>3, V22_T_schoice, V22_SF_Choice, SMTT(5)
 <3>sourceS. xsrcS' \in [Xids -> SUBSET SPages]
  BY ONLY <1>c0gZZhOiBg4Hvw4, <2>3, V22_T_xsrcS, V22_SF_SourceShared, SMTT(5) DEF V22_FSX
 <3>sourceP. xsrcP' \in [Xids -> SUBSET SPages]
  BY ONLY <1>c0gZZhOiBg4Hvw4, <2>3, V22_T_xsrcP, V22_SF_SourcePrivate, SMTT(5) DEF V22_FPX
 <3>valid. \A x \in Xids : RD_Valid(x) \in BOOLEAN
  BY ONLY <2>1, <1>mmyDIW0RP, SMTT(5)
 <3>updates. RD_XPrefixUpdate /\ RD_DPreUpdate
  BY ONLY <1>c0gZZhOiBg4Hvw4, <2>3, <1>HyTxass4cKRoY43Ha, SMTT(5)
 <3>prefix. xprefixOK' \in [Xids -> BOOLEAN]
  BY ONLY <1>c0gZZhOiBg4Hvw4, <3>updates, <3>valid, V22_T_xprefixOK, SMTT(5) DEF RD_XPrefixUpdate
 <3>pre. dpreOK' \in [Pages -> BOOLEAN]
  BY ONLY <1>c0gZZhOiBg4Hvw4, <3>updates, <3>valid, V22_T_dpreOK, V22_T_xprefixOK, SMTT(5) DEF RD_DPreUpdate
 <3>static. UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
  BY ONLY <1>c0gZZhOiBg4Hvw4, V22_SF_Static, SMTT(5)
 <3>staticTypes. /\ sown' \in [SPages -> 0..NR]
                   /\ sgen' \in [SPages -> 0..MG]
                   /\ skey' \in [SPages -> 0..2]
                   /\ swrite' \in [SPages -> BOOLEAN]
                   /\ sdata' \in [SPages -> BOOLEAN]
                   /\ sready' \in [SPages -> BOOLEAN]
                   /\ hitSeen' \in BOOLEAN /\ dedupSeen' \in BOOLEAN
  BY ONLY <1>c0gZZhOiBg4Hvw4, <3>static, V22_T_sown, V22_T_sgen, V22_T_skey, V22_T_swrite, V22_T_sdata, V22_T_sready, V22_T_hitSeen, V22_T_dedupSeen, SMTT(5)
 <3>qed. QED BY ONLY <2>1, <3>status, <3>map, <3>choice, <3>sourceS, <3>sourceP, <3>prefix, <3>pre, <3>staticTypes, ZenonT(10) DEF RD_STypeRest, RD_HolderTypes
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0686_PdRDSharedTypes


<1>PEnevEmtaL.        
 ASSUME NEW E, NEW Q, NEW E2, NEW Q2, NEW p,
        IsFiniteSet(E), IsFiniteSet(Q), E2 \subseteq E,
        Q2 \subseteq Q \cup ((E \ E2) \X {p})
 PROVE Cardinality(E2)+Cardinality(Q2)<=Cardinality(E)+Cardinality(Q)
<2> USE ONLY <1>PEnevEmtaL, Sizes, Location, Design
<2>1. IsFiniteSet(E2) /\ IsFiniteSet(E \ E2) /\ E \cap E2=E2
 BY FS_Subset, FS_Difference, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Cardinality(E \ E2)=Cardinality(E)-Cardinality(E2)
 BY <2>1, FS_Difference, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet(((E \ E2) \X {p})) /\ Cardinality(((E \ E2) \X {p}))<=Cardinality(E \ E2)
 BY <2>1, FS_Product, FS_Singleton, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. IsFiniteSet(Q \cup ((E \ E2) \X {p})) /\ IsFiniteSet(Q \cap ((E \ E2) \X {p}))
 BY <2>3, FS_Union, FS_Intersection, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. IsFiniteSet(Q2) /\ Cardinality(Q2)<=Cardinality(Q \cup ((E \ E2) \X {p}))
 BY <2>4, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. Cardinality(Q \cup ((E \ E2) \X {p}))=Cardinality(Q)+Cardinality(((E \ E2) \X {p}))-Cardinality(Q \cap ((E \ E2) \X {p}))
 BY <2>3, FS_Union, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. Cardinality(E) \in Nat /\ Cardinality(E2) \in Nat /\ Cardinality(Q) \in Nat /\ Cardinality(Q2) \in Nat /\
       Cardinality(E \ E2) \in Nat /\ Cardinality(((E \ E2) \X {p})) \in Nat /\
       Cardinality(Q \cup ((E \ E2) \X {p})) \in Nat /\ Cardinality(Q \cap ((E \ E2) \X {p})) \in Nat
 BY <2>1, <2>3, <2>4, <2>5, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>8. QED BY <2>2, <2>3, <2>5, <2>6, <2>7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XRWgJTae.        
 ASSUME B2, PinInv, SFollow, UNCHANGED xsrc, NEW p \in SPages
 PROVE SRefE(sentry',xsrcS',p)+SRefQ(squar',p)<=SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
<2> USE ONLY <1>XRWgJTae, Sizes, Location, Design
<2>1. RD_EQUpdate /\ STypeOK /\ UNCHANGED xsrcS
 BY <1>y69bbnw8OExl0j, <1>lQA2, <1>cIrFCXuTtPxBU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A x \in Xids : ~RD_Posted(x)
 BY Sizes, SMTT(10), Location, Design DEF RD_Posted, Pages, Sizes, Location, Design
<2>3. {x \in sentry' : p \in xsrcS'[x]} \subseteq {x \in sentry : p \in xsrcS[x]}
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_E2, Sizes, Location, Design
<2>4. {h \in squar' : h[2]=p} \subseteq {h \in squar : h[2]=p} \cup
       (({x \in sentry : p \in xsrcS[x]} \ {x \in sentry' : p \in xsrcS'[x]}) \X {p})
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_Q2, RD_E2, RD_Quarantine, STypeOK, Sizes, Location, Design
<2>5. IsFiniteSet(Xids) /\ IsFiniteSet(Xids \X SPages)
 BY <1>yXEVXb54O9q5W, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. IsFiniteSet(sentry) /\ IsFiniteSet(squar)
 BY <2>1, <2>5, FS_Subset, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
<2>7. IsFiniteSet({x \in sentry : p \in xsrcS[x]}) /\ IsFiniteSet({h \in squar : h[2]=p})
 BY <2>6, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>8. QED BY <2>3, <2>4, <2>7, <1>PEnevEmtaL, SMTT(10), Sizes, Location, Design DEF SRefE, SRefQ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yGAZy5dd1d.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE sprefc' \in [SPages -> 0..(NPI*NR*MG+MX)]
<2> USE ONLY <1>yGAZy5dd1d, Sizes, Location, Design
<2>1. STypeOK /\ PrefcMatchesHolders /\ PrefcMatchesHolders' /\ RD_HolderTypes'
 BY <1>lQA2, <1>RWvTkqQsVDwnRge2Q5E0XkOXe, <1>euftvuGfUGzVhYLlW, SMTT(10), V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. CASE ~B2
 <3>1. UNCHANGED sprefc BY ONLY <1>yGAZy5dd1d, <2>2, SMTT(10), Sizes, Location, Design, V21_SFollowOff DEF sV, Sizes, Location, Design
 <3>2. sprefc \in [SPages -> 0..(NPI*NR*MG+MX)] 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>yGAZy5dd1d, V22_T_sprefc, SMTT(5)

 <3>3. QED BY ONLY <3>1, <3>2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE B2
 <3>1. UNCHANGED rpgS /\ RD_RefDelta
 BY <2>3, <1>YSvRDxZGd, <1>SExsPOAumjk344, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. IsFiniteSet(rpgS) /\ IsFiniteSet(sentry) /\ IsFiniteSet(squar) /\ IsFiniteSet(rpgS') /\ IsFiniteSet(sentry') /\ IsFiniteSet(squar')
 <4>1. rpgS \subseteq (PInst \X Rq \X Gens \X SPages) /\ sentry \subseteq Xids /\ squar \subseteq (Xids \X SPages)
  
 <5> HIDE DEF CoreTypeOK, STypeOK
 <5>fields. QED
  BY ONLY <1>yGAZy5dd1d, V22_T_rpgS, V22_T_sentry, V22_T_squar, SMTT(5)

 <4>2. IsFiniteSet(rpgS) /\ IsFiniteSet(sentry) /\ IsFiniteSet(squar)
  BY ONLY <4>1, <1>aGGTPadibFyx5jUm6wA, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <4>3. IsFiniteSet(rpgS') /\ IsFiniteSet(sentry') /\ IsFiniteSet(squar')
  BY ONLY <2>1, <1>aGGTPadibFyx5jUm6wA, SMTT(20), Sizes, Location, Design DEF RD_HolderTypes, Sizes, Location, Design
 <4>4. QED BY ONLY <4>2, <4>3, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A p \in SPages : SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat /\
                              SRefR(rpgS,p) \in Nat /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefQ(squar,p) \in Nat
 BY <3>2, <1>cPqz9TtB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. \A p \in SPages : SRefE(sentry',xsrcS',p)+SRefQ(squar',p)<=SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
 BY <2>3, <1>XRWgJTae, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>5. \A p \in SPages : 0<=sprefc'[p] /\ sprefc'[p]<=sprefc[p]
 BY <2>1, <2>3, <3>1, <3>3, <3>4, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
 <3>6. QED BY <2>1, <2>3, <3>1, <3>3, <3>5, Sizes, SMTT(10), Location, Design DEF STypeOK, RD_RefDelta, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NDQyqiufWt5zT.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE STypeOK'
 BY ONLY <1>NDQyqiufWt5zT, Sizes, Location, Design, <1>c0gZZhOiBg4Hvw4, <1>yGAZy5dd1d, <1>hrFKh7axpajm, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M0688_PdRDBudget


<1>IhhNBTxyzZz.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc, B2
 PROVE sentry' \subseteq sentry /\
       \A h \in squar' : h \in squar \/ (h[1] \in sentry /\ h[1] \in Xids /\ h[2] \in xsrcS[h[1]])
<2> USE ONLY <1>IhhNBTxyzZz, Sizes, Location, Design
<2>1. RD_EQUpdate /\ sentry \subseteq Xids /\ squar \subseteq (Xids \X SPages)
 BY <1>y69bbnw8OExl0j, <1>lQA2, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
<2>2. \A x \in Xids : ~RD_Posted(x)
 BY Sizes, SMTT(10), Location, Design DEF RD_Posted, Pages, Sizes, Location, Design
<2>3. sentry' \subseteq sentry
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_E2, Sizes, Location, Design
<2>4. \A h \in squar' : h \in squar \/ (h[1] \in sentry /\ h[1] \in Xids /\ h[2] \in xsrcS[h[1]])
 BY <2>1, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_Q2, RD_Quarantine, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WVSoMLTftzUA.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,hw>>, B2
 PROVE \A x \in Xids : SAccess(x)' => SAccess(x)
<2> USE ONLY <1>WVSoMLTftzUA, Sizes, Location, Design
<2>1. sentry' \subseteq sentry /\
       \A h \in squar' : h \in squar \/ (h[1] \in sentry /\ h[1] \in Xids /\ h[2] \in xsrcS[h[1]])
 BY <1>IhhNBTxyzZz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF SAccess, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HJqiycb18Jq3.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,hw,xr,xg>>
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>HJqiycb18Jq3, Sizes, Location, Design
<2>1. NoEvictUnderRDMA
 BY SMTT(10), V21_Inv_NoEvictUnderRDMA, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. B2 => \A x \in Xids : SAccess(x)' => SAccess(x)
 BY <1>WVSoMLTftzUA, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, RD_SFrame, Sizes, Location, Design
\* T2M-END R2M0727_PdRDSharedAccess


<1>JVh1GjbLzR.        
 ASSUME B2, SI3', PrefcMatchesHolders', RD_HolderTypes'
 PROVE SharedLedRef'
<2> USE ONLY <1>JVh1GjbLzR, Sizes, Location, Design
<2>1. IsFiniteSet(rpgS') /\ IsFiniteSet(sentry') /\ IsFiniteSet(squar')
 BY <1>aGGTPadibFyx5jUm6wA, SMTT(10), Sizes, Location, Design DEF RD_HolderTypes, Sizes, Location, Design
<2>2. ASSUME NEW p \in SPages PROVE
       /\ ((spst'[p]="shared" /\ (SRefE(sentry',xsrcS',p)>0 \/ SPin(p)')) \/ SRefQ(squar',p)>0) => sprefc'[p]>=1
       /\ sprefc'[p]>=SRefQ(squar',p)
 <3>1. SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat
 BY <2>1, <1>cPqz9TtB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. (spst'[p]="shared" /\ SPin(p)') => \E h \in rpgS' : h[4]=p
 BY SMTT(10), Sizes, Location, Design DEF SI3, SPin, SH, Sizes, Location, Design
 <3>3. IsFiniteSet({h \in rpgS' : h[4]=p})
 BY <2>1, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. (spst'[p]="shared" /\ SPin(p)') => SRefR(rpgS',p)>=1
  <4>positiveCard. ASSUME NEW S, IsFiniteSet(S), S # {}
                   PROVE Cardinality(S)>=1
   <5>natural. Cardinality(S) \in Nat BY ONLY <4>positiveCard, FS_CardinalityType, SMTT(5)
   <5>nonzero. Cardinality(S) # 0 BY ONLY <4>positiveCard, FS_EmptySet, SMTT(5)
   <5>qed. QED BY ONLY <5>natural, <5>nonzero, SMTT(5)
  <4>nonempty. (spst'[p]="shared" /\ SPin(p)') => {h \in rpgS' : h[4]=p} # {}
   BY ONLY <3>2, SMTT(5)
  <4>qed. QED BY ONLY <3>3, <4>nonempty, <4>positiveCard, SMTT(5) DEF SRefR
 <3>5. QED
  <4>sumBounds. ASSUME NEW a \in Nat, NEW b \in Nat, NEW c \in Nat, NEW total, total=a+b+c
               PROVE total>=c /\ ((a>=1 \/ b>0 \/ c>0) => total>=1)
   <5>integer. a \in Int /\ b \in Int /\ c \in Int BY ONLY <4>sumBounds, SMTT(5)
   <5>nonnegative. a>=0 /\ b>=0 /\ c>=0 BY ONLY <4>sumBounds, SMTT(5)
   <5>qed. QED BY ONLY <4>sumBounds, <5>integer, <5>nonnegative, SMTT(5)
  <4>count. sprefc'[p]=SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
   BY ONLY <1>JVh1GjbLzR, <2>2, SMTT(5) DEF PrefcMatchesHolders
  <4>bounds. sprefc'[p]>=SRefQ(squar',p) /\
    ((SRefR(rpgS',p)>=1 \/ SRefE(sentry',xsrcS',p)>0 \/ SRefQ(squar',p)>0) => sprefc'[p]>=1)
   BY ONLY <3>1, <4>count, <4>sumBounds, SMTT(5)
  <4>qed. QED BY ONLY <3>4, <4>bounds, SMTT(5)
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WNuC2jkOhy0.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED <<xsrc,gen>>
 PROVE SharedLedRef'
<2> USE ONLY <1>WNuC2jkOhy0, Sizes, Location, Design
<2>1. P_SI3' /\ PrefcMatchesHolders' /\ RD_HolderTypes'
 BY <1>FPQA7M3w, <1>RWvTkqQsVDwnRge2Q5E0XkOXe, <1>euftvuGfUGzVhYLlW, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE B2
 BY <2>1, <2>2, <1>JVh1GjbLzR, SMTT(10), Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. CASE ~B2 BY <2>3, SMTT(10), Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


<1>WNRe9PPHkoFy.         B2 /\ SFollow => squar \subseteq squar'
 BY <1>y69bbnw8OExl0j, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_Q2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vyedVpubW3KMqNND.        
 ASSUME B2, SFollow, NEW x \in Xids, x \in sentry, ~RD_Close(x)
 PROVE x \in sentry' \/ (\A p \in xsrcS[x] : <<x,p>> \in squar')
<2> USE ONLY <1>vyedVpubW3KMqNND, Sizes, Location, Design
<2>1. RD_EQUpdate BY <1>y69bbnw8OExl0j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ~RD_Quarantine(x) => x \in sentry'
 BY <2>1, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_E2, Sizes, Location, Design
<2>3. RD_Quarantine(x) => \A p \in xsrcS[x] : <<x,p>> \in squar'
 <3>1. Mut # "sharedFailUnref" BY ONLY Design, SMTT(10), Sizes, Location DEF Sizes, Location, Design
 <3>2. squar' = squar \cup UNION {{<<y,p>> : p \in xsrcS[y]} : y \in {y \in Xids : RD_Quarantine(y)}}
  BY ONLY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_Q2, Sizes, Location, Design
 <3>3. ASSUME RD_Quarantine(x), NEW p \in xsrcS[x]
        PROVE <<x,p>> \in squar'
  <4>1. x \in {y \in Xids : RD_Quarantine(y)}
   BY ONLY <1>vyedVpubW3KMqNND, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. {<<x,q>> : q \in xsrcS[x]} \in {{<<y,q>> : q \in xsrcS[y]} : y \in {y \in Xids : RD_Quarantine(y)}}
   BY ONLY <4>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. <<x,p>> \in {<<x,q>> : q \in xsrcS[x]}
   BY ONLY <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>4. QED BY ONLY <3>2, <4>2, <4>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. QED BY ONLY <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xURm4FKOBGVsLMRCdjs.        
 ASSUME PinInv, RD_Controls
 PROVE (B2 => RD_EntryRange) /\ (\A x \in Xids : hw[x]="fly" => ~RD_Close(x))
<2> USE ONLY <1>xURm4FKOBGVsLMRCdjs, Sizes, Location, Design
<2>1. (B2 => SI4) /\ K3 /\ STypeOK BY <1>lQA2, SMTT(10), V21_Inv_K3, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. B2 => RD_EntryRange
 BY <2>1, SMTT(10), Sizes, Location, Design DEF SI4, RD_Controls, RD_EntryRange, STypeOK, Sizes, Location, Design
<2>3. \A x \in Xids : hw[x]="fly" => ~RD_Close(x)
 BY <2>1, SMTT(10), Sizes, Location, Design DEF K3, RD_Controls, RD_Close, CqeHw, InFl, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pKZHVuY8rKqV.        
 ASSUME PinInv, SFollow, UNCHANGED hw
 PROVE UNCHANGED xprefixOK
<2> USE ONLY <1>pKZHVuY8rKqV, Sizes, Location, Design
<2>1. STypeOK BY ONLY <1>pKZHVuY8rKqV, Sizes, Location, Design, <1>lQA2, SMTT(10) DEF Sizes, Location, Design
<2>2. CASE ~B2 BY ONLY <1>pKZHVuY8rKqV, Sizes, Location, Design, <2>2, <2>2, SMTT(10), V21_SFollowOff DEF sV, Sizes, Location, Design
<2>3. CASE B2 BY ONLY <1>pKZHVuY8rKqV, Sizes, Location, Design, <2>3, <2>1, <2>3, <1>HyTxass4cKRoY43Ha, SMTT(10) DEF STypeOK, RD_XPrefixUpdate, Sizes, Location, Design
<2>4. QED BY ONLY <1>pKZHVuY8rKqV, Sizes, Location, Design, <2>2, <2>3, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZILTCH9iBT8cyR.        
 ASSUME B2, PinInv, SFollow, UNCHANGED xsrc, RD_EntryRange
 PROVE \A x \in sentry' : x \in sentry /\
           (IF xk[x]="wr" THEN iv'[x] \in {"reg","posted","failret"} ELSE xst'[x]="posted")
<2> USE ONLY <1>ZILTCH9iBT8cyR, Sizes, Location, Design
<2>1. RD_EQUpdate /\ STypeOK
 BY <1>y69bbnw8OExl0j, <1>lQA2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, SMTT(10), Location, Design DEF RD_EQUpdate, RD_E2, RD_Posted, RD_Close, RD_EntryRange, STypeOK, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FnDxdfjQ9.        
 ASSUME PinInv, SFollow, RD_PFrame, RD_XKeysFrame, UNCHANGED hw, RD_EntryRange,
        \A x \in Xids : hw[x]="fly" => ~RD_Close(x)
 PROVE P_SI4'
<2> USE ONLY <1>FnDxdfjQ9, Sizes, Location, Design
<2>1. P_SI4 /\ STypeOK
 BY SMTT(10), V21_Inv_P_SI4, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF RD_XKeysFrame, Sizes, Location, Design
<2>3. UNCHANGED xprefixOK BY <1>pKZHVuY8rKqV, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. CASE ~B2 BY <2>4, SMTT(10), Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>5. CASE B2
 <3>1. \A x \in sentry' : x \in sentry /\
           (IF xk[x]="wr" THEN iv'[x] \in {"reg","posted","failret"} ELSE xst'[x]="posted")
 BY <2>5, <1>ZILTCH9iBT8cyR, SMTT(10), Sizes, Location, Design DEF RD_XKeysFrame, Sizes, Location, Design
 <3>2. squar \subseteq squar' BY <2>5, <1>WNRe9PPHkoFy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. \A x \in Xids : hw'[x]="fly" => x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
 BY <2>1, <2>2, <2>5, <3>2, <1>vyedVpubW3KMqNND, SMTT(10), Sizes, Location, Design DEF P_SI4, SI4, RD_XKeysFrame, Sizes, Location, Design
 <3>4. QED BY <2>1, <2>2, <2>3, <2>5, <3>1, <3>3, SMTT(10), Sizes, Location, Design DEF P_SI4, SI4, RD_XKeysFrame, RD_SFrame, Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0731_PdRDSharedProtocol


<1>YCfapvemrZ4.        
 ASSUME PinInv, SFollow, RD_NoStop
 PROVE \A p \in Pages : pst[p] # "free" => dpreOK'[p]=dpreOK[p]
<2> USE ONLY <1>YCfapvemrZ4, Sizes, Location, Design
<2>1. STypeOK BY <1>lQA2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 <3>1. SFollow BY ONLY <1>YCfapvemrZ4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED sV BY ONLY <3>1, <2>2, SMTT(10), Sizes, Location, Design, V21_SFollowOff DEF Sizes, Location, Design
 <3>3. UNCHANGED dpreOK BY ONLY <3>2, SMTT(10), Sizes, Location, Design DEF sV, Sizes, Location, Design
 <3>4. QED BY ONLY <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE B2
 BY <2>1, <2>3, <1>HyTxass4cKRoY43Ha, SMTT(10), Sizes, Location, Design DEF STypeOK, RD_DPreUpdate, RD_NoStop, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HTeEgT30WI5cH9vvom9sB.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>HTeEgT30WI5cH9vvom9sB, Sizes, Location, Design, SMTT(10) DEF DRecvNopost, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JedbHIfCfZIYLNzS4q.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE RD_PFrame
<2> USE ONLY <1>JedbHIfCfZIYLNzS4q, Sizes, Location, Design
<2>1. RD_PhType /\ RD_RgType
 BY <1>EnXJwndWG1D4vkee, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>HTeEgT30WI5cH9vvom9sB, Sizes, SMTT(10), Location, Design DEF DRecvNopost, ghV, instV, kV, recV, rtV, RD_PFrame, PInst, DInst, Inst, NL, IsD, RD_PhType, RD_RgType, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xFEw1WOjGMiIjW6.          
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE CoreTypeOK'
 BY ONLY <1>xFEw1WOjGMiIjW6, AuxType_4cf173485b87d54f, Sizes, Location, Design DEF Sizes, Location, Design

<1>RC0phhEskvapCySbHAo3urV92Z1L.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>RC0phhEskvapCySbHAo3urV92Z1L, Sizes, Location, Design
<2>1. UNCHANGED <<xsrc,hw,xr,xg>>
 BY SMTT(10), Sizes, Location, Design DEF DRecvNopost, ghV, instV, kV, recV, rtV, Sizes, Location, Design
<2>2. RD_PFrame BY <1>JedbHIfCfZIYLNzS4q, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>HJqiycb18Jq3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>f11PuICqy8oBWSnYPo.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE TypInv'
<2> USE ONLY <1>f11PuICqy8oBWSnYPo, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED xsrc
 BY <1>JedbHIfCfZIYLNzS4q, <1>HTeEgT30WI5cH9vvom9sB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK'
 BY <2>1, <1>NDQyqiufWt5zT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, <1>xFEw1WOjGMiIjW6, SMTT(10), Sizes, Location, Design DEF TypInv, Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>qRTWV2SZWu6NRA0mEkO0XE4G.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE SharedLedRef'
<2> USE ONLY <1>qRTWV2SZWu6NRA0mEkO0XE4G, Sizes, Location, Design
<2>1. RD_PFrame /\ UNCHANGED <<xsrc,gen>>
 BY <1>JedbHIfCfZIYLNzS4q, <1>HTeEgT30WI5cH9vvom9sB, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>WNuC2jkOhy0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>VC7x5YEZIYgqbrT.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE P_SI4'
<2> USE ONLY <1>VC7x5YEZIYgqbrT, Sizes, Location, Design
<2>1. RD_XKeysFrame /\ UNCHANGED hw /\ RD_PFrame
 BY <1>JedbHIfCfZIYLNzS4q, SMTT(10), Sizes, Location, Design DEF DRecvNopost, ghV, instV, kV, recV, rtV, RD_XKeysFrame, Sizes, Location, Design
<2>2. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}] /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>VC7x5YEZIYgqbrT, V22_T_iv, V22_T_xst, SMTT(5)

<2>3. RD_Controls
 BY <2>2, SMTT(10), Sizes, Location, Design DEF DRecvNopost, ghV, instV, kV, recV, rtV, RD_Controls, Sizes, Location, Design
<2>4. CASE B2 BY <2>1, <2>3, <2>4, <1>xURm4FKOBGVsLMRCdjs, <1>FnDxdfjQ9, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. CASE ~B2 BY <2>5, SMTT(10), Sizes, Location, Design DEF P_SI4, Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>dyKXk1OSN7UTTsb.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE P_SI1'
 BY ONLY <1>dyKXk1OSN7UTTsb, Sizes, Location, Design, <1>JedbHIfCfZIYLNzS4q, <1>HTeEgT30WI5cH9vvom9sB, <1>VDsAIqq0, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oqaQZCozzqoB7bdeUYGH1RV.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE HitIdentity'
 BY ONLY <1>oqaQZCozzqoB7bdeUYGH1RV, Sizes, Location, Design, <1>JedbHIfCfZIYLNzS4q, <1>HTeEgT30WI5cH9vvom9sB, <1>ueaxxwWI, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M0914_PdRDBatch_DRecvNopost


<1>qmmnGcYLb5h.         PinInv => CoreTypeOK
 BY ZenonT(10), V21_Inv_BaseTypeOK, Sizes, Location, Design DEF Sizes, Location, Design


<1>R3YtSwiPG37j.        
 PinInv => iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY V22_T_iv, V22_T_pst, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>eCzjL4PMdcNbssJhsk.        
 ASSUME PinInv
 PROVE \A i \in Inst,r \in Rq : Active(i,r) => rpg[i][r] \in Pages /\ Loc(rpg[i][r])=i
 BY ONLY <1>eCzjL4PMdcNbssJhsk, Sizes, Location, Design, SMTT(10), V21_Inv_K8 DEF K8, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>b8FOS7RlDgygbk6kJ4t.        
 ASSUME PinInv
 PROVE \A x \in Xids : xdst[x] \in Pages => IsD(Loc(xdst[x]))
<2> USE ONLY <1>b8FOS7RlDgygbk6kJ4t, Sizes, Location, Design
<2>1. K1 /\ K2 /\ nx \in 1..(MX+1)
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>b8FOS7RlDgygbk6kJ4t, V22_T_nx, V21_Inv_K1, V21_Inv_K2, Sizes, Location, Design, SMTT(5)

<2>2. ASSUME NEW x \in Xids, xdst[x] \in Pages PROVE IsD(Loc(xdst[x]))
 <3>1. x<nx BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, Pages, Xids, Sizes, Location, Design
 <3>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x]<=gen[xr[x]] /\ xd[x]=hd[xr[x]][xg[x]] /\ Loc(xdst[x])=xd[x]
 BY <2>1, <2>2, <3>1, Design, Sizes, SMTT(10), Location DEF K2, Pages, ExpPage, ExpInst, InitPage, InitInst, Sizes, Location, Design
 <3>3. xd[x] \in DInst
  <4>fxRouter. \A g \in Gens : g <= gen[xr[x]] => hd[xr[x]][g] \in DInst
   BY ONLY <2>1, <3>2, ZenonT(5) DEF K1
  <4>fxGeneration. hd[xr[x]][xg[x]] \in DInst
   BY ONLY <3>2, <4>fxRouter, SMTT(5)
  <4>fxDone. QED BY ONLY <3>2, <4>fxGeneration, SMTT(5)
 <3>4. QED BY <3>2, <3>3, Sizes, SMTT(10), Location, Design DEF DInst, IsD, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qMRysA0Y1KQeN.        
 ASSUME PinInv, nx' \in Int, nx' >= nx
 PROVE \A x \in Xids : x<nx => x<nx'
<2> USE ONLY <1>qMRysA0Y1KQeN, Sizes, Location, Design
<2>1. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>qMRysA0Y1KQeN, V22_T_nx, SMTT(5)

<2>2. QED BY <2>1, Sizes, SMTT(10), Location, Design DEF Xids, Sizes, Location, Design
\* T2M-END R2M1345_PdRDR2Location


<1>XdqzW5jl.        
 ASSUME PinInv, NEW x \in Xids, iv[x]="reg"
 PROVE x<nx /\ xk[x]="wr" /\ xsrc[x] \in Pages /\ IsP(Loc(xsrc[x])) /\ x \in led[xsrc[x]] /\ pst[xsrc[x]] # "quar"
<2> USE ONLY <1>XdqzW5jl, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ QuarNoReg /\ CoreTypeOK
 BY SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. x<nx /\ xk[x]="wr"
 BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, K3, CoreTypeOK, Xids, Sizes, Location, Design
<2>3. xsrc[x] \in Pages /\ Loc(xsrc[x])=xp[x] /\ xp[x] \in PInst
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, K2, InitPage, InitInst, Sizes, Location, Design
<2>4. x \in led[xsrc[x]]
 BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K4, InitPage, Sizes, Location, Design
<2>5. IsP(Loc(xsrc[x])) /\ pst[xsrc[x]] # "quar"
 BY <2>1, <2>3, <2>4, Sizes, SMTT(10), Location, Design DEF IsP, PInst, QuarNoReg, Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TxrwntymJCbMclu4t3HHdv.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE RD_RegSafe
<2> USE ONLY <1>TxrwntymJCbMclu4t3HHdv, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}] /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
 BY <1>R3YtSwiPG37j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
 BY <2>1, SMTT(10), Sizes, Location, Design DEF DRecvNopost, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, Sizes, Location, Design
<2>3. ASSUME NEW y \in Xids, iv'[y]="reg" PROVE pst'[xsrc[y]] # "quar"
 <3>1. iv[y]="reg" BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. y<nx /\ xk[y]="wr" /\ xsrc[y] \in Pages /\ IsP(Loc(xsrc[y])) /\ y \in led[xsrc[y]] /\ pst[xsrc[y]] # "quar"
 BY <3>1, <1>XdqzW5jl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3a. \A i \in Inst,u \in Rq : Active(i,u) => rpg[i][u] \in Pages /\ Loc(rpg[i][u])=i
 BY <1>eCzjL4PMdcNbssJhsk, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3b. \A x \in Xids : xdst[x] \in Pages => IsD(Loc(xdst[x]))
 BY <1>b8FOS7RlDgygbk6kJ4t, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>1, <2>3, <3>1, <3>2, <3>3a, <3>3b, Design, Sizes, Location, SMTT(20) DEF DRecvNopost, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, PageToG, GTo, Active, Held, OwnedBy, IsD, IsP, PInst, DInst, Inst, NL, GrownOf, GiveUpTo, FreeOrDrain, GiveUpToN, AfterEv, GFr, Rq, Gens, Xids, Sizes, Location, Design
<2>4. RD_RegSafe BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF RD_RegSafe, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>O1T0jJ637c6.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r), B2
 PROVE RD_KeyOnSource
<2> USE ONLY <1>O1T0jJ637c6, Sizes, Location, Design
<2>1. SI4 /\ STypeOK /\ xr \in [Xids -> 0..NR] /\ xg \in [Xids -> 0..MG]
 BY <1>lQA2, SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF CoreTypeOK, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. \A x \in Xids : xsrcS[x] \cup xsrcP[x] # {} => x # nx
 BY <2>1, SMTT(10), Sizes, Location, Design DEF SI4, STypeOK, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF DRecvReq, xV, RD_KeyOnSource, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XBdE5iLtx.         P_SI5 => (B2 => RD_SI5Quar /\ RD_SI5Stop /\ RD_SI5Map)
 BY SMTT(10), Sizes, Location, Design DEF P_SI5, SI5, RD_SI5Quar, RD_SI5Stop, RD_SI5Map, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fErdwnjvr21LizP.        
 ASSUME B2, PinInv, SFollow, RD_PFrame, UNCHANGED xsrc, RD_KeyOnSource,
        nx' \in Int /\ nx' >= nx, RD_RegSafe
 PROVE RD_SI5Quar'
<2> USE ONLY <1>fErdwnjvr21LizP, Sizes, Location, Design
<2>1. P_SI5 /\ SI4 /\ STypeOK /\ RD_SI5Quar
 BY <1>lQA2, <1>XBdE5iLtx, SMTT(10), V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<spst,xsrcS,xsrcP>>
 BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RD_EQUpdate BY <1>y69bbnw8OExl0j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3a. \A x \in Xids : x<nx => x<nx'
 BY <1>qMRysA0Y1KQeN, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW h \in squar' PROVE h[1]<nx' /\ h[2] \in xsrcS'[h[1]] /\ spst'[h[2]]="shared" /\ skey'[h[2]]=STok(xr'[h[1]],xg'[h[1]]) /\ iv'[h[1]] # "reg"
 <3>1. h \in squar \/ (h \in Xids \X SPages /\ h[1] \in sentry /\ h[2] \in xsrcS[h[1]] /\ RD_Quarantine(h[1]))
 BY <2>1, <2>3, <2>4, SMTT(20), Sizes, Location, Design DEF RD_EQUpdate, RD_Q2, RD_Quarantine, STypeOK, Sizes, Location, Design
 <3>2. h[1] \in Xids /\ h[2] \in SPages /\ h[1]<nx /\ h[2] \in xsrcS[h[1]] /\ spst[h[2]]="shared" /\ skey[h[2]]=STok(xr[h[1]],xg[h[1]])
 BY <2>1, <3>1, SMTT(10), Sizes, Location, Design DEF RD_SI5Quar, SI4, STypeOK, Sizes, Location, Design
 <3>3. iv'[h[1]] # "reg"
 BY <2>1, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF RD_SI5Quar, RD_RegSafe, RD_Quarantine, Sizes, Location, Design
 <3>4. QED BY <2>2, <2>3a, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF RD_KeyOnSource, RD_SFrame, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF RD_SI5Quar, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jF87HmB4Cu8WHjr.        
 ASSUME B2, PinInv, SFollow, RD_NoStop, RD_StopBack
 PROVE RD_SI5Stop'
<2> USE ONLY <1>jF87HmB4Cu8WHjr, Sizes, Location, Design
<2>1. P_SI5 /\ RD_SI5Stop BY <1>XBdE5iLtx, SMTT(10), V21_Inv_P_SI5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. \A p \in Pages : pst[p] # "free" => dpreOK'[p]=dpreOK[p]
 BY <1>YCfapvemrZ4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_StopBack, RD_SI5Stop, Held, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>q8zxJ6ek1XjRPz.        
 ASSUME B2, PinInv, SFollow, RD_PFrame, UNCHANGED xsrc
 PROVE RD_SI5Map'
<2> USE ONLY <1>q8zxJ6ek1XjRPz, Sizes, Location, Design
<2>1. P_SI5 /\ RD_SI5Map BY <1>XBdE5iLtx, SMTT(10), V21_Inv_P_SI5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<spst,smap>> BY <1>dCj1oPpXLfODIy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_PFrame, RD_SI5Map, Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QYS9t7p6Fr.        
 ASSUME PinInv, SFollow, RD_PFrame, UNCHANGED xsrc,
        B2 => RD_KeyOnSource /\ nx' \in Int /\ nx' >= nx /\ RD_RegSafe /\ RD_NoStop /\ RD_StopBack
 PROVE P_SI5'
<2> USE ONLY <1>QYS9t7p6Fr, Sizes, Location, Design
<2>1. CASE ~B2 BY <2>1, SMTT(10), Sizes, Location, Design DEF P_SI5, Sizes, Location, Design
<2>2. CASE B2
 <3>1. RD_SI5Quar' /\ RD_SI5Stop' /\ RD_SI5Map'
 BY <2>2, <1>fErdwnjvr21LizP, <1>jF87HmB4Cu8WHjr, <1>q8zxJ6ek1XjRPz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>2, <3>1, SMTT(10), Sizes, Location, Design DEF P_SI5, SI5, RD_SI5Quar, RD_SI5Stop, RD_SI5Map, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1351_PdRDR2SI5Base


<1>E9jSTRck46PCj0x0Ff.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE P_SI5'
<2> HIDE DEF CoreTypeOK, STypeOK, SFollow
<2> USE ONLY <1>E9jSTRck46PCj0x0Ff, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K8 /\ K9 /\ K10 /\ K7 /\ QuarNoReg /\ CoreTypeOK
 BY ONLY <1>E9jSTRck46PCj0x0Ff, Sizes, Location, Design, SMTT(10), V21_Inv_BaseTypeOK, V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_P_SI5, V21_Inv_QuarNoReg DEF Sizes, Location, Design
<2>4. RD_RegSafe BY ONLY <1>E9jSTRck46PCj0x0Ff, Sizes, Location, Design, <1>TxrwntymJCbMclu4t3HHdv, SMTT(10) DEF Sizes, Location, Design
<2>5. RD_PFrame /\ UNCHANGED xsrc
 BY ONLY <1>E9jSTRck46PCj0x0Ff, Sizes, Location, Design, <1>JedbHIfCfZIYLNzS4q, <1>HTeEgT30WI5cH9vvom9sB, SMTT(10) DEF Sizes, Location, Design
<2>NSFrame. UNCHANGED <<hw,nx,xr,xg>>
 BY ONLY <1>E9jSTRck46PCj0x0Ff, SMTT(5) DEF DRecvNopost
<2>NxInt. nx \in Int
 BY ONLY <1>E9jSTRck46PCj0x0Ff, V22_T_nx, Sizes, SMTT(5) DEF Sizes
<2>6. RD_NoStop /\ nx' \in Int /\ nx' >= nx
 BY ONLY <2>NSFrame, <2>NxInt, SMTT(5) DEF RD_NoStop
<2>7. B2 => RD_KeyOnSource
 BY ONLY <2>NSFrame, SMTT(5) DEF RD_KeyOnSource
<2>8. S1 /\ S2 /\ S5 /\ S6
 BY ONLY <1>E9jSTRck46PCj0x0Ff, Sizes, Location, Design, SMTT(10), V21_Inv_P_SI5, V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6 DEF Sizes, Location, Design
<2>SBFrame. UNCHANGED <<hw,hok,xdst,xr,xg>>
 BY ONLY <1>E9jSTRck46PCj0x0Ff, SMTT(10), Sizes, Location, Design DEF DRecvNopost, xV, rtV, instV, recV, pgV, ghV, kV, Sizes, Location, Design
<2>SBTypes. /\ pst \in [Pages -> {"free","priv","shared","drain","quar"}]
        /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>E9jSTRck46PCj0x0Ff, V22_T_pgn, V22_T_pr, V22_T_pst, SMTT(5)

<2>SBMaps. \A i \in Inst,q \in Rq : Active(i,q) /\ ~rhit[i][q] => pst[rpg[i][q]]="priv"
 BY ONLY <1>E9jSTRck46PCj0x0Ff, SMTT(10), V21_Inv_K8, V21_Inv_P_SI5, Sizes, Location, Design DEF K8, Sizes, Location, Design
<2>SBPage. ASSUME NEW p \in Pages, pst'[p] \in {"priv","drain","quar"}
        PROVE pst[p] \in {"priv","drain","quar"} /\ pr'[p]=pr[p] /\ pgn'[p]=pgn[p]
 BY ONLY <1>E9jSTRck46PCj0x0Ff, <2>SBTypes, <2>SBMaps, <2>SBPage, Design, Sizes, Location, SMTT(10) DEF DRecvNopost, EvidenceAt, PageTo, ghV, instV, kV, recV, rtV, PageToG, GTo, IsD, IsP, PInst, DInst, Inst, NL, GrownOf, GiveUpTo, FreeOrDrain, Active, Rq, GiveUpToN, AfterEv, GFr, GrownOwn, Sizes, Location, Design
<2>9. RD_StopBack
 BY ONLY <2>SBFrame, <2>SBPage, SMTT(10), Sizes, Location, Design DEF RD_StopBack, Held, Sizes, Location, Design
<2>10. QED BY ONLY <1>E9jSTRck46PCj0x0Ff, Sizes, Location, Design, <2>4, <2>5, <2>6, <2>7, <2>9, <1>QYS9t7p6Fr, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1371_PdRDR2SI5_DRecvNopost


<1> QED BY <1>f11PuICqy8oBWSnYPo, <1>E9jSTRck46PCj0x0Ff, <1>qRTWV2SZWu6NRA0mEkO0XE4G, <1>VC7x5YEZIYgqbrT, <1>RC0phhEskvapCySbHAo3urV92Z1L, <1>oqaQZCozzqoB7bdeUYGH1RV, <1>dyKXk1OSN7UTTsb, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF AuxType_4cf173485b87d54f, Part_DRecvNopost_01_02, V21_Inv_BaseTypeOK, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNoReg, V21_Inv_S1, V21_Inv_S2, V21_Inv_S5, V21_Inv_S6, V21_Inv_STypeOK, V21_SFollowOff, V22_SF_Choice, V22_SF_Map, V22_SF_Off, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Static, V22_SF_Status, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_iv, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_pr, V22_T_pst, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
====
