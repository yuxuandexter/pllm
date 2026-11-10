---- MODULE PdSFollowInterfaces ----
EXTENDS PdFinalFieldTypes
\* V22-SCOPE: sequential-interface
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst


\* These names mirror the pinned SFollow LET exactly; they add no assumptions.
V22_FNew(i,r) == rg'[i][r] # rg[i][r]
V22_FHPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]
V22_FHLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}
V22_FH2 == {h \in rpgS : V22_FHLive(h) \/ (V22_FHPin(h) /\ Mut # "unrefBeforeKDone")}
V22_FPosted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0
V22_FSrc(x) == IF V22_FPosted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0
V22_FSX == [x \in Xids |-> IF V22_FPosted(x) THEN (IF V22_FSrc(x) \in SPages /\ spst[V22_FSrc(x)]="shared" THEN {V22_FSrc(x)} ELSE {}) ELSE xsrcS[x]]
V22_FPX == [x \in Xids |-> IF V22_FPosted(x) THEN (IF V22_FSrc(x) \in SPages /\ spst[V22_FSrc(x)]="priv" THEN {V22_FSrc(x)} ELSE {}) ELSE xsrcP[x]]
V22_FClose(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}
V22_FQuarantine(x) == x \in sentry /\ ~V22_FClose(x) /\
          ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))
V22_FE2 == (sentry \cup {x \in Xids : V22_FPosted(x)}) \ {x \in Xids : V22_FClose(x) \/ V22_FQuarantine(x)}
V22_FQ2 == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
                        UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : V22_FQuarantine(x)}})
V22_FEnded(p) == spst[p]="priv" /\ sown[p] \in Rq /\
         (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")
V22_FPin2(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p
V22_FDrop(p) == (V22_FEnded(p) \/ spst[p] \in {"drain","dup"}) /\ ~V22_FPin2(p) /\ sready[p] /\ ~(\E x \in V22_FE2 : p \in V22_FPX[x])

LEMMA V22_SF_Map ==
 ASSUME B2, SFollow
 PROVE smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]
 BY ONLY B2, SFollow, SMTT(5) DEF SFollow

HIDE DEF V22_SF_Map

LEMMA V22_SF_Choice ==
 ASSUME B2, SFollow
 PROVE schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]
 BY ONLY B2, SFollow, SMTT(5) DEF SFollow

HIDE DEF V22_SF_Choice

LEMMA V22_SF_Sentry ==
 ASSUME B2, SFollow
 PROVE sentry'=V22_FE2
 BY ONLY B2, SFollow, SMTT(5) DEF SFollow, V22_FE2, V22_FPosted, V22_FClose, V22_FQuarantine

HIDE DEF V22_SF_Sentry

LEMMA V22_SF_Squar ==
 ASSUME B2, SFollow
 PROVE squar'=V22_FQ2
 BY ONLY B2, SFollow, SMTT(5) DEF SFollow, V22_FQ2, V22_FQuarantine, V22_FClose

HIDE DEF V22_SF_Squar

LEMMA V22_SF_SourceShared ==
 ASSUME B2, SFollow
 PROVE xsrcS'=V22_FSX
 BY ONLY B2, SFollow, SMTT(5) DEF SFollow, V22_FSX, V22_FPosted, V22_FSrc

HIDE DEF V22_SF_SourceShared

LEMMA V22_SF_SourcePrivate ==
 ASSUME B2, SFollow
 PROVE xsrcP'=V22_FPX
 BY ONLY B2, SFollow, SMTT(5) DEF SFollow, V22_FPX, V22_FPosted, V22_FSrc

HIDE DEF V22_SF_SourcePrivate

LEMMA V22_SF_Holders ==
 ASSUME B2, SFollow
 PROVE rpgS'=V22_FH2
 BY ONLY B2, SFollow, SMTT(5) DEF SFollow, V22_FH2, V22_FHLive, V22_FHPin

HIDE DEF V22_SF_Holders

LEMMA V22_SF_Status ==
 ASSUME B2, SFollow
 PROVE spst'=[p \in SPages |-> IF \E x \in Xids : V22_FQuarantine(x) /\ p \in xsrcP[x] THEN "quar"
                         ELSE IF V22_FDrop(p) THEN "free" ELSE IF V22_FEnded(p) THEN "drain" ELSE spst[p]]
 BY ONLY B2, SFollow, ZenonT(10) DEF SFollow, V22_FQuarantine, V22_FClose, V22_FDrop, V22_FEnded, V22_FPin2, V22_FE2, V22_FPX, V22_FPosted, V22_FSrc

HIDE DEF V22_SF_Status

LEMMA V22_SF_RefCount ==
 ASSUME B2, SFollow
 PROVE sprefc'=[p \in SPages |-> sprefc[p]+SRefR(V22_FH2,p)-SRefR(rpgS,p)
                         +SRefE(V22_FE2,V22_FSX,p)-SRefE(sentry,xsrcS,p)+SRefQ(V22_FQ2,p)-SRefQ(squar,p)]
 BY ONLY B2, SFollow, ZenonT(10) DEF SFollow, V22_FH2, V22_FHLive, V22_FHPin, V22_FE2, V22_FSX, V22_FPosted, V22_FSrc, V22_FClose, V22_FQuarantine, V22_FQ2

HIDE DEF V22_SF_RefCount

LEMMA V22_SF_Static ==
 SFollow => UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ONLY SMTT(5) DEF SFollow, sV

HIDE DEF V22_SF_Static

LEMMA V22_SF_Off == SFollow /\ ~B2 => UNCHANGED sV
 BY ONLY SMTT(5) DEF SFollow

HIDE DEF V22_SF_Off

LEMMA V22_SF_MapPoint ==
 ASSUME B2, SFollow, NEW i \in PInst, NEW r \in Rq
 PROVE smap'[i][r] = IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]
 BY ONLY B2, SFollow, i \in PInst, r \in Rq, V22_SF_Map, SMTT(5) DEF V22_SF_Map

HIDE DEF V22_SF_MapPoint

LEMMA V22_SF_MapFrame ==
 ASSUME B2, SFollow, UNCHANGED rg, smap \in [PInst -> [Rq -> {0} \cup SPages]]
 PROVE UNCHANGED smap
 BY ONLY B2, SFollow, UNCHANGED rg, smap \in [PInst -> [Rq -> {0} \cup SPages]],
         V22_SF_Map, SMTT(5) DEF V22_SF_Map

HIDE DEF V22_SF_MapFrame

LEMMA V22_SF_MapOrigin ==
 ASSUME B2, SFollow, NEW i \in PInst, NEW r \in Rq, smap'[i][r] # 0
 PROVE smap'[i][r] = smap[i][r] /\ rg'[i][r] = rg[i][r]
 BY ONLY B2, SFollow, i \in PInst, r \in Rq, smap'[i][r] # 0,
         V22_SF_MapPoint, SMTT(5) DEF V22_SF_MapPoint

HIDE DEF V22_SF_MapOrigin

LEMMA V22_SF_SharedOrigin ==
 ASSUME B2, SFollow, NEW p \in SPages, spst'[p]="shared"
 PROVE spst[p]="shared"
 BY ONLY B2, SFollow, p \in SPages, spst'[p]="shared", SMTT(5) DEF SFollow

HIDE DEF V22_SF_SharedOrigin

LEMMA V22_SF_PrivateOrigin ==
 ASSUME B2, SFollow, NEW p \in SPages, spst'[p]="priv"
 PROVE spst[p]="priv"
 BY ONLY B2, SFollow, p \in SPages, spst'[p]="priv", SMTT(5) DEF SFollow

HIDE DEF V22_SF_PrivateOrigin

LEMMA V22_SF_SentryFrame ==
 ASSUME B2, SFollow, sentry \subseteq Xids,
        \A x \in Xids : ~V22_FPosted(x) /\ ~V22_FClose(x) /\ ~V22_FQuarantine(x)
 PROVE UNCHANGED sentry
<1>1. {x \in Xids : V22_FPosted(x)} = {}
 BY ONLY \A x \in Xids : ~V22_FPosted(x) /\ ~V22_FClose(x) /\ ~V22_FQuarantine(x), ZenonT(5)
<1>2. {x \in Xids : V22_FClose(x) \/ V22_FQuarantine(x)} = {}
 BY ONLY \A x \in Xids : ~V22_FPosted(x) /\ ~V22_FClose(x) /\ ~V22_FQuarantine(x), ZenonT(5)
<1>3. V22_FE2 = sentry
 BY ONLY <1>1, <1>2, ZenonT(5) DEF V22_FE2
<1>4. QED
 BY ONLY B2, SFollow, <1>3, V22_SF_Sentry, SMTT(5) DEF V22_SF_Sentry

HIDE DEF V22_SF_SentryFrame

LEMMA V22_SF_SquarFrame ==
 ASSUME B2, SFollow, \A x \in Xids : ~V22_FQuarantine(x)
 PROVE UNCHANGED squar
 BY ONLY B2, SFollow, \A x \in Xids : ~V22_FQuarantine(x),
         V22_SF_Squar, ZenonT(10) DEF V22_FQ2, V22_SF_Squar

HIDE DEF V22_SF_SquarFrame

LEMMA V22_SF_SharedData ==
 ASSUME B2, SFollow, IndInv, NEW p \in SPages, spst'[p]="shared"
 PROVE sready'[p] /\ sdata'[p] /\ ~swrite'[p]
<1>1. spst[p]="shared"
 BY ONLY B2, SFollow, p \in SPages, spst'[p]="shared", V22_SF_SharedOrigin, SMTT(5) DEF V22_SF_SharedOrigin
<1>2. SharedImmutable
 BY ONLY IndInv, V22_Ind_SharedImmutable, SMTT(5) DEF V22_Ind_SharedImmutable
<1>3. UNCHANGED <<sready,sdata,swrite>>
 BY ONLY SFollow, V22_SF_Static, SMTT(5) DEF V22_SF_Static
<1>4. QED BY ONLY B2, p \in SPages, <1>1, <1>2, <1>3, SMTT(5) DEF SharedImmutable

HIDE DEF V22_SF_SharedData

LEMMA V22_SF_SharedImmutable ==
 ASSUME Sizes, PinInv, SFollow, UNCHANGED xdst
 PROVE SharedImmutable'
<1>1. CASE ~B2
 BY ONLY <1>1, SMTT(5) DEF SharedImmutable
<1>2. CASE B2
 <2>1. xdst' \in [Xids -> 0..NP]
  BY ONLY PinInv, UNCHANGED xdst, V22_T_xdst, SMTT(5) DEF V22_T_xdst
 <2>2. IndInv
  BY ONLY PinInv, ProofInvParts, SMTT(5) DEF ProofInvParts
 <2>3. \A p \in SPages : spst'[p]="shared" =>
        sready'[p] /\ sdata'[p] /\ ~swrite'[p] /\ NoWriteInto(p)'
  BY ONLY Sizes, SFollow, <1>2, <2>1, <2>2, V22_SF_SharedData, V22_SharedNoWriteNext, SMTT(5) DEF V22_SF_SharedData, V22_SharedNoWriteNext
 <2>4. QED BY ONLY <1>2, <2>3, SMTT(5) DEF SharedImmutable
<1>3. QED BY ONLY <1>1, <1>2, SMTT(5)
HIDE DEF V22_SF_SharedImmutable

====
