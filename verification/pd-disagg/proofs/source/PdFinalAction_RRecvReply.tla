---- MODULE PdFinalAction_RRecvReply ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_9ef278c147c12b12, PdFinalAuxType_cfb21e925ad63826, PdFinalInvProjections, PdFinalEffects, PdSharedRefCounts, PdShapeBase, PdActionSlice_RRecvReply_02

\* Complete original body PdFinalPart_RRecvReply_03_02 SHA 819eed96b983aef44ffd11ea38a99cda04c1f941d3de3ed890020e522b2ab67f
HIDE DEF AuxType_9ef278c147c12b12, AuxType_cfb21e925ad63826, ExactTypeBridge, Group_RRecvReply_01, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_RRecvReply_02_01, Part_RRecvReply_02_02, Part_RRecvReply_03_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K13, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_ReplyTruth, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_PostSharedRefZero, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Status, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedRefZero, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
THEOREM Part_RRecvReply_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE (SI7)' /\ (SealOnlyLanded)' /\ (K2)' /\ (K3)' /\ (K4)' /\ (K5)' /\ (K6)' /\ (K7)' /\ (K8)' /\ (K9)' /\ (K10)' /\ (K11)' /\ (K12)' /\ (K14)' /\ (K15)' /\ (K16)' /\ (K17)' /\ (S1)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (S5)' /\ (S6)' /\ (QuarNeverMapped)' /\ (QuarNoReg)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RO_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           RO_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           RO_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           RO_Src(x) == IF RO_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           RO_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           RO_Quarantine(x) == x \in sentry /\ ~RO_Close(x) /\
            ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           RO_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\ (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           RO_Pin(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           RO_Drop(p) == (RO_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RO_Pin(p) /\ sready[p] /\ ~(\E x \in sentry' : p \in xsrcP'[x])


           RO_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
            spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           RO_E_sentry == sentry'=(sentry \cup {x \in Xids : RO_Posted(x)}) \ {x \in Xids : RO_Close(x) \/ RO_Quarantine(x)}


<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_E_sentry

<1>ELvtX9yoPlInf.        
 ASSUME NEW p \in SPages, B2, SFollow, spst'[p]="shared"
 PROVE spst[p]="shared" /\ UNCHANGED <<sready,sdata,swrite>>
 BY ONLY <1>ELvtX9yoPlInf, Sizes, Location, Design, ZenonT(10), V21_SFollowStatic, V22_SFollowSharedOrigin DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UoOnqFdN5hlmOkH5yaHH03rU.        
 ASSUME PinInv, SFollow, xdst' \in [Xids -> 0..NP]
 PROVE SharedImmutable'
<2> HIDE DEF SFollow, CoreTypeOK, STypeOK
<2>old. SharedImmutable
 BY ONLY <1>UoOnqFdN5hlmOkH5yaHH03rU, V22_T_SharedImmutable, SMTT(5) DEF V22_T_SharedImmutable
<2>off. CASE ~B2
 BY ONLY <2>off, SMTT(5) DEF SharedImmutable
<2>on. CASE B2
 <3>each. ASSUME NEW p \in SPages, spst'[p]="shared"
          PROVE sready'[p] /\ sdata'[p] /\ ~swrite'[p] /\ NoWriteInto(p)'
  <4>origin. spst[p]="shared"
   BY ONLY <1>UoOnqFdN5hlmOkH5yaHH03rU, <2>on, <3>each, V22_SF_SharedOrigin, SMTT(5) DEF V22_SF_SharedOrigin
  <4>static. UNCHANGED <<sready,sdata,swrite>>
   BY ONLY <1>UoOnqFdN5hlmOkH5yaHH03rU, V22_SF_Static, SMTT(5) DEF V22_SF_Static
  <4>data. sready'[p] /\ sdata'[p] /\ ~swrite'[p]
   BY ONLY <2>old, <2>on, <3>each, <4>origin, <4>static, SMTT(5) DEF SharedImmutable
  <4>noWrite. NoWriteInto(p)'
   BY ONLY <1>UoOnqFdN5hlmOkH5yaHH03rU, <3>each, Sizes, V22_SharedNoWriteNext, SMTT(5) DEF V22_SharedNoWriteNext
  <4>qed. QED BY ONLY <4>data, <4>noWrite, SMTT(5)
 <3>qed. QED BY ONLY <2>on, <3>each, SMTT(5) DEF SharedImmutable
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

\* T2M-END R2M0510_PdPSFollowShared

\* T2M-SCOPE R2M0511_PdPSharedOld
\* T2M-BODY R2M0511_PdPSharedOld
\* T2M-LOCAL-VISIBILITY

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


<1>yYI.        
 K14 /\ UNCHANGED <<gen, kfly, kpin, krs>> => K14'
 BY IsaT(10), Sizes, Location, Design DEF K14, Sizes, Location, Design
\* T2M-END R2M0355_PdPF_K14


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


<1>b9XK3Jc7n0UyN6VlCb.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE UNCHANGED <<alive, drep, dsucc, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rg, rhit, rpe, rpg, rx, sdata, sfly, skey, sled, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF RRecvReply, instV, kV, pgV, recV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H7tbwGHc2Kp96.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE K2'
<2> USE ONLY <1>H7tbwGHc2Kp96, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OOLK6OgjXP3l6.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE K3'
<2> USE ONLY <1>OOLK6OgjXP3l6, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g1leW60N3Rbjg.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE K4'
<2> USE ONLY <1>g1leW60N3Rbjg, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WtZlRSfV4BTo6.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE K5'
<2> USE ONLY <1>WtZlRSfV4BTo6, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tFafOmccJyHxh.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE K6'
<2> USE ONLY <1>tFafOmccJyHxh, Sizes, Location, Design
<2>1. K6
 BY V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, pgn, pr, pst, sfly, sled>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>IM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>i0Sh7Rc4SOea3.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE K7'
<2> USE ONLY <1>i0Sh7Rc4SOea3, Sizes, Location, Design
<2>1. K7
 BY V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Gk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ReVbDgBXnQhSW.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE K8'
<2> USE ONLY <1>ReVbDgBXnQhSW, Sizes, Location, Design
<2>1. K8
 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, ph, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>J7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ieEgGsFnOo9pT.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE K9'
<2> USE ONLY <1>ieEgGsFnOo9pT, Sizes, Location, Design
<2>1. K9
 BY V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Dv, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sHbYyStqNIbabv.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE K10'
<2> USE ONLY <1>sHbYyStqNIbabv, Sizes, Location, Design
<2>1. K10
 BY V21_Inv_K10, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, nx, pgn, ph, pr, pst, ptl, rg, xdst, xg, xlt, xr>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ahB, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EXNq2iUbRK80yW.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE K11'
<2> USE ONLY <1>EXNq2iUbRK80yW, Sizes, Location, Design
<2>1. K11
 BY V21_Inv_K11, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>tpP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QsHDibym7gQk83.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE K12'
<2> USE ONLY <1>QsHDibym7gQk83, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jEFTJVzCmy7avK.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE K14'
<2> USE ONLY <1>jEFTJVzCmy7avK, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QYC6n4YzRVDaoE.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE K15'
<2> USE ONLY <1>QYC6n4YzRVDaoE, Sizes, Location, Design
<2>1. K15
 BY V21_Inv_K15, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, kpin, krs, led, plt, ptl, pvis, sdata, sfly, skey, sled, swrite, xdst>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>LBf, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Zm311T8LH1iUnr.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE K16'
<2> USE ONLY <1>Zm311T8LH1iUnr, Sizes, Location, Design
<2>1. K16
 BY V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, led, pgn, ph, plt, pr, pst, ptl, rg, rpg, sfly, sled, xdst>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>M6Z, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bi5tsARxyabB06.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE K17'
<2> USE ONLY <1>bi5tsARxyabB06, Sizes, Location, Design
<2>1. K17
 BY V21_Inv_K17, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpg>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aXu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mcGIHNN2PlGTf.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE S1'
<2> USE ONLY <1>mcGIHNN2PlGTf, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YImLvm0Fth1Un.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE S2'
<2> USE ONLY <1>YImLvm0Fth1Un, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lJ4WP15xgbQJ1.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE S3'
<2> USE ONLY <1>lJ4WP15xgbQJ1, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PdWQYYmvUHgig.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE S4'
<2> USE ONLY <1>PdWQYYmvUHgig, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gLhCvV8MuDpTl.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE S5'
<2> USE ONLY <1>gLhCvV8MuDpTl, Sizes, Location, Design
<2>1. S5
 BY V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Po, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Sx6oI3EJ9AhB5.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE S6'
<2> USE ONLY <1>Sx6oI3EJ9AhB5, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>x4Z0s2Ie049iNK7cKk3erMlQA0.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE QuarNeverMapped'
<2> USE ONLY <1>x4Z0s2Ie049iNK7cKk3erMlQA0, Sizes, Location, Design
<2>1. QuarNeverMapped
 BY V21_Inv_QuarNeverMapped, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ph, pst, rpg>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>CHHI4E3y3uZD9LA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FWAGs2u04wT9u8Tcj72U.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE QuarNoReg'
<2> USE ONLY <1>FWAGs2u04wT9u8Tcj72U, Sizes, Location, Design
<2>1. QuarNoReg
 BY V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, pst>>
 BY <1>b9XK3Jc7n0UyN6VlCb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>agy0tgaoa, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oVMEMsT8gqQqbk.        
 ASSUME B2, SFollow
 PROVE RO_E_sentry
 BY ONLY <1>oVMEMsT8gqQqbk, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_sentry, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eav3Mlg8.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~RO_Posted(x)
 BY ONLY <1>eav3Mlg8, Sizes, Location, Design, SMTT(10) DEF RO_Posted, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cg3ikpihvVLpb3qO.        
 ASSUME PinInv, NEW x \in Xids, iv[x]="reg"
 PROVE xsrc[x] \in Pages /\ pst[xsrc[x]] # "quar"
<2> USE ONLY <1>cg3ikpihvVLpb3qO, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ QuarNoReg
 BY V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. nx \in 1..(MX+1) 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>cg3ikpihvVLpb3qO, V22_T_nx, SMTT(5)

<2>3. x<nx /\ xk[x]="wr" BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, K3, Xids, Sizes, Location, Design
<2>4. xsrc[x] \in Pages /\ Loc(xsrc[x])=xp[x] /\ xp[x] \in PInst
 BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K1, K2, InitPage, InitInst, Sizes, Location, Design
<2>5. x \in led[xsrc[x]] BY <2>1, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF K4, InitPage, Sizes, Location, Design
<2>6. QED BY <2>1, <2>4, <2>5, Sizes, SMTT(10), Location, Design DEF QuarNoReg, IsP, PInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FVK4MYGoOHs3gti.        
 ASSUME PinInv, UNCHANGED xsrc,
        \A x \in Xids : iv'[x]="reg" => iv[x]="reg",
        \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
 PROVE \A x \in Xids : iv'[x]="reg" => ~RO_Quarantine(x)
 BY ONLY <1>FVK4MYGoOHs3gti, Sizes, Location, Design, <1>cg3ikpihvVLpb3qO, SMTT(10) DEF RO_Quarantine, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dhSsfJA1lMG4.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,xk>>,
        \A x \in Xids : iv'[x]="reg" => iv[x]="reg",
        \A x \in Xids : iv'[x]="reg" => ~RO_Quarantine(x)
 PROVE SI7'
<2> USE ONLY <1>dhSsfJA1lMG4, Sizes, Location, Design
<2>1. SI7 /\ K3 BY V21_Inv_K3, V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF SI7, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RO_E_sentry /\ (\A x \in Xids : ~RO_Posted(x)) BY <2>3, <1>oVMEMsT8gqQqbk, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF SI7, K3, RO_E_sentry, RO_Close, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vFDVjLxBJLtELzJkIzPmDN.        
 ASSUME NEW r \in Rq, RRecvReply(r)
 PROVE UNCHANGED <<ph,rg,rpg,rhit,xsrc,xr,xg,xk,xdst,xp,nx>>
 BY ONLY <1>vFDVjLxBJLtELzJkIzPmDN, Sizes, Location, Design, Design, ZenonT(10) DEF RRecvReply, instV, kV, pgV, recV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CzT8gSZCXK7YdkjqTutH.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
 PROVE \A p \in Pages : pst'[p]="quar" => pst[p]="quar"
<2> USE ONLY <1>CzT8gSZCXK7YdkjqTutH, Sizes, Location, Design
<2>1. pst \in [Pages -> {"free","priv","shared","drain","quar"}]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>CzT8gSZCXK7YdkjqTutH, V22_T_pst, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF RRecvReply, instV, kV, pgV, recV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>S1oNQ8WoiXNOPxdRwz5w.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
 PROVE \A x \in Xids : iv'[x]="reg" => iv[x]="reg"
<2> USE ONLY <1>S1oNQ8WoiXNOPxdRwz5w, Sizes, Location, Design
<2>1. iv \in [Xids -> {"none","reg","posted","cqe","failret","nopost"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>S1oNQ8WoiXNOPxdRwz5w, V22_T_iv, SMTT(5)

<2>2. QED BY <2>1, Sizes, Design, SMTT(10), Location DEF RRecvReply, instV, kV, pgV, recV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Fl23L4OzIDSEyj.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE SI7'
 BY ONLY <1>Fl23L4OzIDSEyj, Sizes, Location, Design, <1>vFDVjLxBJLtELzJkIzPmDN, <1>S1oNQ8WoiXNOPxdRwz5w, <1>CzT8gSZCXK7YdkjqTutH, <1>FVK4MYGoOHs3gti, <1>dhSsfJA1lMG4 DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>S60mcUA4kCxg87q0tN.        
  BaseSealOnlyLanded /\ UNCHANGED <<hw, pst, ptl, xdst>> => BaseSealOnlyLanded'
  BY SMT, Sizes, Location, Design DEF InFl, NoWriteInto, BaseSealOnlyLanded, Writing, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PTkWKoljFHDOj.        
  ASSUME NEW r \in Rq, RRecvReply(r)
  PROVE UNCHANGED <<alive, drep, dsucc, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>PTkWKoljFHDOj, Sizes, Location, Design, Zenon DEF RRecvReply, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XAPdzBqFuxwtVr2Y82UOFS.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE BaseSealOnlyLanded'
<2> USE ONLY <1>XAPdzBqFuxwtVr2Y82UOFS, Sizes, Location, Design
<2>1. BaseSealOnlyLanded /\ UNCHANGED <<hw, pst, ptl, xdst>>
  BY <1>d9xjhNZcw, <1>PTkWKoljFHDOj, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>S60mcUA4kCxg87q0tN, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zYj8CM30KLtfdIsrJR8Df2aws.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE SealOnlyLanded'
<2> USE ONLY <1>zYj8CM30KLtfdIsrJR8Df2aws, Sizes, Location, Design
<2>1. BaseSealOnlyLanded' BY <1>XAPdzBqFuxwtVr2Y82UOFS, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xdst' \in [Xids -> 0..NP]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>zYj8CM30KLtfdIsrJR8Df2aws, <1>vFDVjLxBJLtELzJkIzPmDN, V22_T_xdst, SMTT(5)

<2>3. SharedImmutable' BY <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, Location, Design DEF SealOnlyLanded, Sizes, Location, Design
\* T2M-END R2M2680_PdROSafety_RRecvReply_SealOnlyLanded

\* T2M-SCOPE R2M2681_PdROSafety_RRecvReply_SendOwnLanded

<1> QED BY <1>Fl23L4OzIDSEyj, <1>zYj8CM30KLtfdIsrJR8Df2aws, <1>H7tbwGHc2Kp96, <1>OOLK6OgjXP3l6, <1>g1leW60N3Rbjg, <1>WtZlRSfV4BTo6, <1>tFafOmccJyHxh, <1>i0Sh7Rc4SOea3, <1>ReVbDgBXnQhSW, <1>ieEgGsFnOo9pT, <1>sHbYyStqNIbabv, <1>EXNq2iUbRK80yW, <1>QsHDibym7gQk83, <1>jEFTJVzCmy7avK, <1>QYC6n4YzRVDaoE, <1>Zm311T8LH1iUnr, <1>bi5tsARxyabB06, <1>mcGIHNN2PlGTf, <1>YImLvm0Fth1Un, <1>lJ4WP15xgbQJ1, <1>PdWQYYmvUHgig, <1>gLhCvV8MuDpTl, <1>Sx6oI3EJ9AhB5, <1>x4Z0s2Ie049iNK7cKk3erMlQA0, <1>FWAGs2u04wT9u8Tcj72U, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_RRecvReply SHA 4aee6c738ebba4a14603bdf51306d2f7679cb7a4510388a352e9b56a6709de76
USE DEF ShapeNetFrame
HIDE DEF P_PagePoolsDisjoint, Part_RRecvReply_03_02, V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_KStruct, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_Safety, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_iv, V22_T_nx, V22_T_pst, V22_T_xdst
LEMMA ShapeEffect_RRecvReply ==
 ASSUME NEW r \in Rq, Sizes, Design, RRecvReply(r)
 PROVE net'=net
 BY ONLY RRecvReply(r), Sizes, Design, SMTT(5) DEF RRecvReply, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_RRecvReply ==
 ASSUME NEW r \in Rq, Sizes, Design, IndInv, MessageShape, RRecvReply(r)
 PROVE MessageShape'
 BY ONLY Sizes, Design, RRecvReply(r), MessageShape, ShapeEffect_RRecvReply, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_RRecvReply SHA 642d2360f53cdac601549e846cb20e77004c24ff343e63488aaf6d9c83db913d
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_RRecvReply, ShapeNetFrame
THEOREM DomainKeep_RRecvReply ==
 ASSUME NEW r \in Rq, Sizes, Location, Design, PinInv, RRecvReply(r)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, RRecvReply(r), ShapeEffect_RRecvReply
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_RRecvReply_04 SHA f2c7b65dd89a68ca0a9ca705ea7dd2ce4b6bb925d9aaa8d62c47b58a6126c8aa
USE DEF V21_Inv_P_B2OffInit, V21_SFollowOff
HIDE DEF ShapeEffect_RRecvReply, V21_Inv_MsgXDomain
THEOREM Group_RRecvReply_04 ==
 ASSUME Sizes, Location, Design,
        NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE (P_B2OffInit)' /\ (MsgXDomain)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1>oxAKR8VqgIabY8CFog1L.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>oxAKR8VqgIabY8CFog1L, Sizes, Location, Design, DomainKeep_RRecvReply, SMTT(5)
\* T2M-END R2M0320_PdPDomain_RRecvReply


<1>m948gxWe0.        
 P_B2OffInit /\ UNCHANGED <<dedupSeen, dpreOK, hitSeen, rpgS, schoice, sdata, sentry, sgen, skey, smap, sown, sprefc, spst, squar, sready, swrite, xprefixOK, xsrcP, xsrcS>> => P_B2OffInit'
 BY IsaT(10), Sizes, Location, Design DEF P_B2OffInit, SInit, Sizes, Location, Design
\* T2M-END R2M0451_PdPF_B2OffInit


<1>GuN0nqA3AeYHVqRIvrMk.        
 ASSUME NEW r \in Rq, PinInv, RRecvReply(r), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>GuN0nqA3AeYHVqRIvrMk, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0502_PdPOff_RRecvReply


<1> QED BY <1>GuN0nqA3AeYHVqRIvrMk, <1>oxAKR8VqgIabY8CFog1L, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Group_RRecvReply_01, Part_RRecvReply_02_01, Part_RRecvReply_02_02, Part_RRecvReply_03_01, Part_RRecvReply_03_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_RRecvReply
HIDE DEF DomainKeep_RRecvReply, V21_Inv_P_B2OffInit, V21_SFollowOff

THEOREM Step_RRecvReply ==
 ASSUME NEW r \in Rq, Sizes, Location, Design, PinInv, RRecvReply(r), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Rq, Sizes, Location, Design, PinInv, RRecvReply(u), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Group_RRecvReply_01, Part_RRecvReply_02_01, Part_RRecvReply_02_02, Part_RRecvReply_03_01, Part_RRecvReply_03_02, Group_RRecvReply_04, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Group_RRecvReply_01, Part_RRecvReply_02_01, Part_RRecvReply_02_02, Part_RRecvReply_03_01, Part_RRecvReply_03_02, Group_RRecvReply_04, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, RRecvReply(r), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, RRecvReply(r), ShapeKeep_RRecvReply, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
