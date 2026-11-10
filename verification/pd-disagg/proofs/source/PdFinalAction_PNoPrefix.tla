---- MODULE PdFinalAction_PNoPrefix ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalGroup_PNoPrefix_01 SHA f0318f12e4e13b47cd5876084693dfc0c9ed2ccadda9cc54dcc81859b906ab17
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_P_B2OffInit, V21_Inv_P_SI1, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable
THEOREM Group_PNoPrefix_01 ==
 ASSUME Sizes, Location, Design,
        NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE (TypInv)' /\ (K1)' /\ (K2)' /\ (K3)' /\ (K4)' /\ (K5)' /\ (K6)' /\ (K7)' /\ (K8)' /\ (K9)' /\ (K10)' /\ (K11)' /\ (K12)' /\ (K13)' /\ (K14)' /\ (K15)' /\ (K16)' /\ (K17)' /\ (S1)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (S5)' /\ (S6)' /\ (NoStrayAccess)' /\ (ReadOwnLanded)' /\ (SendOwnLanded)' /\ (SealOnlyLanded)' /\ (GenFiltered)' /\ (OneReply)' /\ (ReplyTruth)' /\ (QuarNeverMapped)' /\ (QuietConservation)' /\ (NoFreeUnderRead)' /\ (KReadIntegrity)' /\ (QuarNoReg)' /\ (NoEvictUnderRDMA)' /\ (SharedLedRef)' /\ (PrefcMatchesHolders)' /\ (SharedImmutable)' /\ (HitIdentity)' /\ (P_SI2)' /\ (P_SI3)' /\ (P_SI4)' /\ (P_SI5)' /\ (SI7)' /\ (SI8)'
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


<1>OVg4h90W2yOETehwKlF.        
 PrefcMatchesHolders /\ UNCHANGED <<rpgS, sentry, sprefc, squar, xsrcS>> => PrefcMatchesHolders'
 BY IsaT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
\* T2M-END R2M0385_PdPF_PrefcMatchesHolders


<1>awLhek8Og2WpH.        
 NoStrayAccess /\ UNCHANGED <<hw, kfly, krs, pgn, pr, pst, sfly, sgen, sown, spst, xdst, xg, xr, xsrc>> => NoStrayAccess'
 BY P_PagePoolsDisjoint, IsaT(10), Sizes, Location, Design DEF Held, InFl, KHeld, NoStrayAccess, SHeld, Writing, Sizes, Location, Design
\* T2M-END R2M0404_PdPF_NoStrayAccess

\* T2M-SCOPE R2M0406_PdPF_NoFreeUnderRead

<1>unKEqtNGzAKBBp6.        
 NoFreeUnderRead /\ UNCHANGED <<kpin, krs, pgn, pr, pst, sgen, sown, spst>> => NoFreeUnderRead'
 BY P_PagePoolsDisjoint, IsaT(10), Sizes, Location, Design DEF KHeld, NoFreeUnderRead, SHeld, Sizes, Location, Design
\* T2M-END R2M0406_PdPF_NoFreeUnderRead

\* T2M-SCOPE R2M0407_PdPF_NoEvictUnderRDMA

<1>Uo4zrIitxFf46gUp.        
 NoEvictUnderRDMA /\ UNCHANGED <<hw, sentry, sgen, skey, sown, spst, squar, xg, xr, xsrcP, xsrcS>> => NoEvictUnderRDMA'
 BY IsaT(10), Sizes, Location, Design DEF NoEvictUnderRDMA, SAccess, Sizes, Location, Design
\* T2M-END R2M0407_PdPF_NoEvictUnderRDMA

\* T2M-SCOPE R2M0409_PdPF_SI4

<1>xas.        
 P_SI4 /\ UNCHANGED <<hw, iv, nx, sentry, skey, spst, squar, xg, xk, xp, xprefixOK, xr, xsrc, xsrcP, xsrcS, xst>> => P_SI4'
 BY IsaT(10), Sizes, Location, Design DEF P_SI4, SI4, Sizes, Location, Design
\* T2M-END R2M0409_PdPF_SI4


<1>w8vWhwdBhzZMoR.        
 SealOnlyLanded /\ UNCHANGED <<hw, pst, ptl, sdata, spst, sready, swrite, xdst>> => SealOnlyLanded'
 BY IsaT(10), Sizes, Location, Design DEF BaseSealOnlyLanded, InFl, NoWriteInto, SealOnlyLanded, SharedImmutable, Writing, Sizes, Location, Design
\* T2M-END R2M0405_PdPF_SealOnlyLanded

\* T2M-SCOPE R2M0408_PdPF_SharedImmutable

<1>sKxSSes4t7WEt3s.        
 SharedImmutable /\ UNCHANGED <<hw, sdata, spst, sready, swrite, xdst>> => SharedImmutable'
 BY IsaT(10), Sizes, Location, Design DEF InFl, NoWriteInto, SharedImmutable, Writing, Sizes, Location, Design
\* T2M-END R2M0408_PdPF_SharedImmutable


<1>SaXX19sFdnAE.        
 SharedLedRef /\ UNCHANGED <<kpin, krs, sentry, sprefc, spst, squar, xsrcS>> => SharedLedRef'
 BY IsaT(10), Sizes, Location, Design DEF SPin, SharedLedRef, Sizes, Location, Design
\* T2M-END R2M0414_PdPF_SharedLedRef

\* T2M-SCOPE R2M0415_PdPF_HitIdentity

<1>B7Z1nHo1UfT.        
 HitIdentity /\ UNCHANGED <<ph, rg, rpgS, skey, smap, spst>> => HitIdentity'
 BY IsaT(10), Sizes, Location, Design DEF Active, HitIdentity, Sizes, Location, Design
\* T2M-END R2M0415_PdPF_HitIdentity

\* T2M-SCOPE R2M0418_PdPF_SI5

<1>Moz.        
 P_SI5 /\ UNCHANGED <<dpreOK, hok, hw, iv, nx, pgn, ph, pr, pst, skey, smap, spst, squar, xdst, xg, xr, xsrcS>> => P_SI5'
 BY IsaT(10), Sizes, Location, Design DEF Active, Held, P_SI5, SI5, Sizes, Location, Design
\* T2M-END R2M0418_PdPF_SI5


<1>PWAfgC0aVWVwjVgg7.        
 QuietConservation /\ UNCHANGED <<kpin, krs, led, ph, prefc, pst, sentry, sled, sprefc, spst, squar, sready, swrite>> => QuietConservation'
 BY IsaT(10), Sizes, Location, Design DEF Active, BaseQuietConservation, KPinned, Quiet, QuietConservation, SPin, Sizes, Location, Design
\* T2M-END R2M0412_PdPF_QuietConservation

\* T2M-SCOPE R2M0413_PdPF_KReadIntegrity

<1>PTIXEpkPakc2hq.        
 KReadIntegrity /\ UNCHANGED <<hw, kfly, krs, pgn, ph, plt, pr, pst, ptl, pvis, sdata, sfly, sgen, skey, smap, sown, spst, swrite, xdst>> => KReadIntegrity'
 BY P_PagePoolsDisjoint, IsaT(10), Sizes, Location, Design DEF Active, BaseKReadIntegrity, InFl, KData, KHeld, KReadIntegrity, NoWriteInto, SData, SHeld, SMapIntegrity, Writing, Sizes, Location, Design
\* T2M-END R2M0413_PdPF_KReadIntegrity

\* T2M-SCOPE R2M0416_PdPF_SI2

<1>ZpZ.        
 P_SI2 /\ UNCHANGED <<kpin, krs, ph, rg, sdata, sgen, skey, smap, sown, sprefc, spst, sready, swrite>> => P_SI2'
 BY IsaT(10), Sizes, Location, Design DEF Active, P_SI2, SI2, SPin, Sizes, Location, Design
\* T2M-END R2M0416_PdPF_SI2

\* T2M-SCOPE R2M0417_PdPF_SI3

<1>izZ.        
 P_SI3 /\ UNCHANGED <<kpin, krs, rpgS, sdata, sgen, skey, sown, spst, swrite>> => P_SI3'
 BY IsaT(10), Sizes, Location, Design DEF P_SI3, SData, SHeld, SI3, Sizes, Location, Design
\* T2M-END R2M0417_PdPF_SI3

\* T2M-SCOPE R2M0419_PdPFrames_PNoPrefix

<1>p1j9QkvR3Atxt6PAM.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rpgS, rt, rx, sdata, sentry, sfly, sgen, skey, sled, smap, sown, sprefc, spst, squar, sready, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xprefixOK, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RnGkHLCAHLOU.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K1'
<2> USE ONLY <1>RnGkHLCAHLOU, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D7QLLqLKfiwG.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K2'
<2> USE ONLY <1>D7QLLqLKfiwG, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ovt0UCnToClP.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K3'
<2> USE ONLY <1>Ovt0UCnToClP, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QKS86t7o97GW.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K4'
<2> USE ONLY <1>QKS86t7o97GW, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>U5I54eISrIkW.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K5'
<2> USE ONLY <1>U5I54eISrIkW, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QfJVJzCXni4h.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K6'
<2> USE ONLY <1>QfJVJzCXni4h, Sizes, Location, Design
<2>1. K6
 BY V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, pgn, pr, pst, sfly, sled>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>IM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Fay7Go2RplFG.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K7'
<2> USE ONLY <1>Fay7Go2RplFG, Sizes, Location, Design
<2>1. K7
 BY V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Gk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KMavS3NmsMhC.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K8'
<2> USE ONLY <1>KMavS3NmsMhC, Sizes, Location, Design
<2>1. K8
 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, ph, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>J7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AyoBBEYED6h1.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K9'
<2> USE ONLY <1>AyoBBEYED6h1, Sizes, Location, Design
<2>1. K9
 BY V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Dv, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LwIXlAkDzXMbT.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K10'
<2> USE ONLY <1>LwIXlAkDzXMbT, Sizes, Location, Design
<2>1. K10
 BY V21_Inv_K10, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, nx, pgn, ph, pr, pst, ptl, rg, xdst, xg, xlt, xr>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ahB, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EPX15ksdVIY1e.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K11'
<2> USE ONLY <1>EPX15ksdVIY1e, Sizes, Location, Design
<2>1. K11
 BY V21_Inv_K11, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>tpP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>V0dVnLydX0VvA.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K12'
<2> USE ONLY <1>V0dVnLydX0VvA, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jiITCHxjzAL4C.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K13'
<2> USE ONLY <1>jiITCHxjzAL4C, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>R2mBtrMXeR7SA.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K14'
<2> USE ONLY <1>R2mBtrMXeR7SA, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>agJJnjnTJVsF0.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K15'
<2> USE ONLY <1>agJJnjnTJVsF0, Sizes, Location, Design
<2>1. K15
 BY V21_Inv_K15, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, kpin, krs, led, plt, ptl, pvis, sdata, sfly, skey, sled, swrite, xdst>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>LBf, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FIfa0VZ5UITCe.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K16'
<2> USE ONLY <1>FIfa0VZ5UITCe, Sizes, Location, Design
<2>1. K16
 BY V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, led, pgn, ph, plt, pr, pst, ptl, rg, rpg, sfly, sled, xdst>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>M6Z, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sn1JJUuekGIco.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE K17'
<2> USE ONLY <1>sn1JJUuekGIco, Sizes, Location, Design
<2>1. K17
 BY V21_Inv_K17, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpg>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aXu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GY5ykZwzE3OZ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE S1'
<2> USE ONLY <1>GY5ykZwzE3OZ, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hI1l3k3vungZ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE S2'
<2> USE ONLY <1>hI1l3k3vungZ, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dzGhmNNHA25S.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE S3'
<2> USE ONLY <1>dzGhmNNHA25S, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VNH1pS3AjDFd.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE S4'
<2> USE ONLY <1>VNH1pS3AjDFd, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r4neIF9P1tny.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE S5'
<2> USE ONLY <1>r4neIF9P1tny, Sizes, Location, Design
<2>1. S5
 BY V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Po, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kQwyL91r90kW.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE S6'
<2> USE ONLY <1>kQwyL91r90kW, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AD5xCVe5lFIm8iy9Kg91Dya.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE NoStrayAccess'
<2> USE ONLY <1>AD5xCVe5lFIm8iy9Kg91Dya, Sizes, Location, Design
<2>1. NoStrayAccess
 BY V21_Inv_NoStrayAccess, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, kfly, krs, pgn, pr, pst, sfly, sgen, sown, spst, xdst, xg, xr, xsrc>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>awLhek8Og2WpH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cdVm5RSbMvf2xb3ufUkIe4Q.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE ReadOwnLanded'
<2> USE ONLY <1>cdVm5RSbMvf2xb3ufUkIe4Q, Sizes, Location, Design
<2>1. ReadOwnLanded
 BY V21_Inv_ReadOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<dpreOK, hw, pgn, ph, pr, pst, ptl, pvis, rg, rhit, rpg, xdst>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>V0LNJhFJZYV3Y, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Wcm60qQxXgkaDsceE7Rcunq.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE SendOwnLanded'
<2> USE ONLY <1>Wcm60qQxXgkaDsceE7Rcunq, Sizes, Location, Design
<2>1. SendOwnLanded
 BY V21_Inv_SendOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, ptl, sdata, sfly, skey, swrite, xg, xlt, xr, xsrc, xsrcP, xsrcS>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>lDA42xkFPLxcY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RO1wpKuagY7e6yYD0gRSUQ6r.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE SealOnlyLanded'
<2> USE ONLY <1>RO1wpKuagY7e6yYD0gRSUQ6r, Sizes, Location, Design
<2>1. SealOnlyLanded
 BY V21_Inv_SealOnlyLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, pst, ptl, sdata, spst, sready, swrite, xdst>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>w8vWhwdBhzZMoR, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MbivR11TBYiY1144SKLIr.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE GenFiltered'
<2> USE ONLY <1>MbivR11TBYiY1144SKLIr, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VwXQR1YkskK0i00Q0H.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE OneReply'
<2> USE ONLY <1>VwXQR1YkskK0i00Q0H, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jYcXdPw4V9AWe9sS8XOq.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE ReplyTruth'
<2> USE ONLY <1>jYcXdPw4V9AWe9sS8XOq, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>luMul5YWzxYtSdoCLJb5Rs4fY.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QuarNeverMapped'
<2> USE ONLY <1>luMul5YWzxYtSdoCLJb5Rs4fY, Sizes, Location, Design
<2>1. QuarNeverMapped
 BY V21_Inv_QuarNeverMapped, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ph, pst, rpg>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>CHHI4E3y3uZD9LA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RTqDhei3Be5dFNOGNKoSn1sjWGw.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QuietConservation'
<2> USE ONLY <1>RTqDhei3Be5dFNOGNKoSn1sjWGw, Sizes, Location, Design
<2>1. QuietConservation
 BY V21_Inv_QuietConservation, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, led, ph, prefc, pst, sentry, sled, sprefc, spst, squar, sready, swrite>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PWAfgC0aVWVwjVgg7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AU9C6ML0JS0qDomTFrJIcQSe3.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>AU9C6ML0JS0qDomTFrJIcQSe3, Sizes, Location, Design
<2>1. NoFreeUnderRead
 BY V21_Inv_NoFreeUnderRead, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, pgn, pr, pst, sgen, sown, spst>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>unKEqtNGzAKBBp6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T4IucX7K1QUtCS4BInXzDrKJ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE KReadIntegrity'
<2> USE ONLY <1>T4IucX7K1QUtCS4BInXzDrKJ, Sizes, Location, Design
<2>1. KReadIntegrity
 BY V21_Inv_KReadIntegrity, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, kfly, krs, pgn, ph, plt, pr, pst, ptl, pvis, sdata, sfly, sgen, skey, smap, sown, spst, swrite, xdst>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PTIXEpkPakc2hq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gW5bcfSa1PptTU5fdCd.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QuarNoReg'
<2> USE ONLY <1>gW5bcfSa1PptTU5fdCd, Sizes, Location, Design
<2>1. QuarNoReg
 BY V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, pst>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>agy0tgaoa, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xfEFD4Ke8O2y9OUNe1zRMpeCF3.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>xfEFD4Ke8O2y9OUNe1zRMpeCF3, Sizes, Location, Design
<2>1. NoEvictUnderRDMA
 BY V21_Inv_NoEvictUnderRDMA, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, sentry, sgen, skey, sown, spst, squar, xg, xr, xsrcP, xsrcS>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Uo4zrIitxFf46gUp, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ufOCqdqef8gVZ1NdVjzNGc.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE SharedLedRef'
<2> USE ONLY <1>ufOCqdqef8gVZ1NdVjzNGc, Sizes, Location, Design
<2>1. SharedLedRef
 BY V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, sentry, sprefc, spst, squar, xsrcS>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>SaXX19sFdnAE, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SonXlANR24M4s8pLARN0fdpqoOG1A.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>SonXlANR24M4s8pLARN0fdpqoOG1A, Sizes, Location, Design
<2>1. PrefcMatchesHolders
 BY V21_Inv_PrefcMatchesHolders, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<rpgS, sentry, sprefc, squar, xsrcS>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>OVg4h90W2yOETehwKlF, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KIKtZ6LX7tZiiG4Qqyvis6OAP.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE SharedImmutable'
<2> USE ONLY <1>KIKtZ6LX7tZiiG4Qqyvis6OAP, Sizes, Location, Design
<2>1. SharedImmutable
 BY V21_Inv_SharedImmutable, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, sdata, spst, sready, swrite, xdst>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sKxSSes4t7WEt3s, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LqILbkhMlEbDV6jz8aeRz.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE HitIdentity'
<2> USE ONLY <1>LqILbkhMlEbDV6jz8aeRz, Sizes, Location, Design
<2>1. HitIdentity
 BY V21_Inv_HitIdentity, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ph, rg, rpgS, skey, smap, spst>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>B7Z1nHo1UfT, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PzZII7pyJ51Cv.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE P_SI2'
<2> USE ONLY <1>PzZII7pyJ51Cv, Sizes, Location, Design
<2>1. P_SI2
 BY V21_Inv_P_SI2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, sdata, sgen, skey, smap, sown, sprefc, spst, sready, swrite>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ZpZ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CpAG71K1GLFDb.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE P_SI3'
<2> USE ONLY <1>CpAG71K1GLFDb, Sizes, Location, Design
<2>1. P_SI3
 BY V21_Inv_P_SI3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, rpgS, sdata, sgen, skey, sown, spst, swrite>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>izZ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>af1KTtJyt62s9.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE P_SI4'
<2> USE ONLY <1>af1KTtJyt62s9, Sizes, Location, Design
<2>1. P_SI4
 BY V21_Inv_P_SI4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, iv, nx, sentry, skey, spst, squar, xg, xk, xp, xprefixOK, xr, xsrc, xsrcP, xsrcS, xst>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>xas, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aj5hQ405A3Vr3.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE P_SI5'
<2> USE ONLY <1>aj5hQ405A3Vr3, Sizes, Location, Design
<2>1. P_SI5
 BY V21_Inv_P_SI5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<dpreOK, hok, hw, iv, nx, pgn, ph, pr, pst, skey, smap, spst, squar, xdst, xg, xr, xsrcS>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Moz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g4QCiB3UKXLoF.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE SI7'
<2> USE ONLY <1>g4QCiB3UKXLoF, Sizes, Location, Design
<2>1. SI7
 BY V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, sentry>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>YC9, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>R0ksK4Pr3J2kb.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE SI8'
<2> USE ONLY <1>R0ksK4Pr3J2kb, Sizes, Location, Design
<2>1. SI8
 BY V21_Inv_SI8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<sentry, squar, xk, xsrcS, xst>>
 BY <1>p1j9QkvR3Atxt6PAM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aMI, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0419_PdPFrames_PNoPrefix

\* T2M-SCOPE R2M0491_PdPOff_PNoPrefix

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


<1>xC4FDPYZiR4Ww0F.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_spst'
<2> USE ONLY <1>xC4FDPYZiR4Ww0F, Sizes, Location, Design
<2>1. QT_spst /\ UNCHANGED spst
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_spst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uYP1ecwQPsYLndh.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_sown'
<2> USE ONLY <1>uYP1ecwQPsYLndh, Sizes, Location, Design
<2>1. QT_sown /\ UNCHANGED sown
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sown, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>REaFDvkNzNORSVR.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_sgen'
<2> USE ONLY <1>REaFDvkNzNORSVR, Sizes, Location, Design
<2>1. QT_sgen /\ UNCHANGED sgen
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sgen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RB7eh23QzLPHPMc.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_skey'
<2> USE ONLY <1>RB7eh23QzLPHPMc, Sizes, Location, Design
<2>1. QT_skey /\ UNCHANGED skey
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_skey, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kGbQZTwRint7s3zWN.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_swrite'
<2> USE ONLY <1>kGbQZTwRint7s3zWN, Sizes, Location, Design
<2>1. QT_swrite /\ UNCHANGED swrite
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_swrite, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mHrhy0k3ZQ1tJ7cD.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_sdata'
<2> USE ONLY <1>mHrhy0k3ZQ1tJ7cD, Sizes, Location, Design
<2>1. QT_sdata /\ UNCHANGED sdata
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sdata, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vQrhQepCxJVjTzUBv.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_sready'
<2> USE ONLY <1>vQrhQepCxJVjTzUBv, Sizes, Location, Design
<2>1. QT_sready /\ UNCHANGED sready
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sready, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>A751WUL4Ckes3QBx8.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_sprefc'
<2> USE ONLY <1>A751WUL4Ckes3QBx8, Sizes, Location, Design
<2>1. QT_sprefc /\ UNCHANGED sprefc
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sprefc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GMbxFKXCD3PSDIT.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_smap'
<2> USE ONLY <1>GMbxFKXCD3PSDIT, Sizes, Location, Design
<2>1. QT_smap /\ UNCHANGED smap
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_smap, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SbYmWKZ6MFoytJqTJi.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_schoice'
<2> USE ONLY <1>SbYmWKZ6MFoytJqTJi, Sizes, Location, Design
<2>1. QT_schoice
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, Sizes, <1>Jlun1oO4ue, SMTT(5), Location DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, QT_schoice, SH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>isUn0sYVjoefNng.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_rpgS'
<2> USE ONLY <1>isUn0sYVjoefNng, Sizes, Location, Design
<2>1. QT_rpgS /\ UNCHANGED rpgS
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_rpgS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iRTBLJoILs9wjTuP.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_xsrcS'
<2> USE ONLY <1>iRTBLJoILs9wjTuP, Sizes, Location, Design
<2>1. QT_xsrcS /\ UNCHANGED xsrcS
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_xsrcS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D2FYeEqwj19Ylj5v.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_xsrcP'
<2> USE ONLY <1>D2FYeEqwj19Ylj5v, Sizes, Location, Design
<2>1. QT_xsrcP /\ UNCHANGED xsrcP
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_xsrcP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YTxycOGuYRXfBD1E5.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_sentry'
<2> USE ONLY <1>YTxycOGuYRXfBD1E5, Sizes, Location, Design
<2>1. QT_sentry /\ UNCHANGED sentry
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_sentry, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tz2MsGKhdpzZPblP.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_squar'
<2> USE ONLY <1>Tz2MsGKhdpzZPblP, Sizes, Location, Design
<2>1. QT_squar /\ UNCHANGED squar
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_squar, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>S8jguvBiMGCcVV0y5DSb.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_xprefixOK'
<2> USE ONLY <1>S8jguvBiMGCcVV0y5DSb, Sizes, Location, Design
<2>1. QT_xprefixOK /\ UNCHANGED xprefixOK
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_xprefixOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FH4IV6hYTEp655qj3.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_dpreOK'
<2> USE ONLY <1>FH4IV6hYTEp655qj3, Sizes, Location, Design
<2>1. QT_dpreOK /\ UNCHANGED dpreOK
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_dpreOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>l8n2nWffTEpHa2mouI.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_hitSeen'
<2> USE ONLY <1>l8n2nWffTEpHa2mouI, Sizes, Location, Design
<2>1. QT_hitSeen /\ UNCHANGED hitSeen
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_hitSeen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yZcEj6bt7einOMkd14SH.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE QT_dedupSeen'
<2> USE ONLY <1>yZcEj6bt7einOMkd14SH, Sizes, Location, Design
<2>1. QT_dedupSeen /\ UNCHANGED dedupSeen
 BY <1>fZ0t, SMTT(5), Sizes, Location, Design DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, Sizes, Location, Design DEF QT_dedupSeen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AZXrHL1hRr4UAZs2r.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE CoreTypeOK'
<2> HIDE DEF CoreTypeOK, STypeOK, PNoPrefix
<2>frame. UNCHANGED basevars
 BY ONLY <1>AZXrHL1hRr4UAZs2r, SMTT(5) DEF PNoPrefix
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
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>rtVFrame, V22_T_gen, SMTT(5)
<2>rtNext. rt' \in [Rq -> {"idle", "wait", "ok", "err"}]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>rtVFrame, V22_T_rt, SMTT(5)
<2>rpNext. rp' \in [Rq -> {0} \cup Inst]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>rtVFrame, V22_T_rp, SMTT(5)
<2>rdNext. rd' \in [Rq -> {0} \cup Inst]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>rtVFrame, V22_T_rd, SMTT(5)
<2>hpNext. hp' \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>rtVFrame, V22_T_hp, SMTT(5)
<2>hdNext. hd' \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>rtVFrame, V22_T_hd, SMTT(5)
<2>aliveNext. alive' \in [Inst -> BOOLEAN]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>instVFrame, V22_T_alive, SMTT(5)
<2>nfailNext. nfail' \in 0..MaxFail
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>instVFrame, V22_T_nfail, SMTT(5)
<2>tornNext. torn' \in [Inst -> SUBSET Inst]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>instVFrame, V22_T_torn, SMTT(5)
<2>kpinNext. kpin' \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>instVFrame, V22_T_kpin, SMTT(5)
<2>kflyNext. kfly' \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>instVFrame, V22_T_kfly, SMTT(5)
<2>krsNext. krs' \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>instVFrame, V22_T_krs, SMTT(5)
<2>phNext. ph' \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>recVFrame, V22_T_ph, SMTT(5)
<2>rgNext. rg' \in [Inst -> [Rq -> 0..MG]]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>recVFrame, V22_T_rg, SMTT(5)
<2>rpgNext. rpg' \in [Inst -> [Rq -> 0..NP]]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>recVFrame, V22_T_rpg, SMTT(5)
<2>rpeNext. rpe' \in [Inst -> [Rq -> {0} \cup Inst]]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>recVFrame, V22_T_rpe, SMTT(5)
<2>rxNext. rx' \in [Inst -> [Rq -> 0..MX]]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>recVFrame, V22_T_rx, SMTT(5)
<2>rhitNext. rhit' \in [Inst -> [Rq -> BOOLEAN]]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>recVFrame, V22_T_rhit, SMTT(5)
<2>pstNext. pst' \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>pgVFrame, V22_T_pst, SMTT(5)
<2>prNext. pr' \in [Pages -> 0..NR]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>pgVFrame, V22_T_pr, SMTT(5)
<2>pgnNext. pgn' \in [Pages -> 0..MG]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>pgVFrame, V22_T_pgn, SMTT(5)
<2>pltNext. plt' \in [Pages -> 0..PS]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>pgVFrame, V22_T_plt, SMTT(5)
<2>ptlNext. ptl' \in [Pages -> -1..PS]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>pgVFrame, V22_T_ptl, SMTT(5)
<2>pvisNext. pvis' \in [Pages -> BOOLEAN]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>pgVFrame, V22_T_pvis, SMTT(5)
<2>ledNext. led' \in [Pages -> SUBSET Xids]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>pgVFrame, V22_T_led, SMTT(5)
<2>sflyNext. sfly' \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>pgVFrame, V22_T_sfly, SMTT(5)
<2>sledNext. sled' \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>pgVFrame, V22_T_sled, SMTT(5)
<2>prefcNext. prefc' \in [Pages -> 0..NR]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>pgVFrame, V22_T_prefc, SMTT(5)
<2>pqpNext. pqp' \in [Pages -> {0} \cup Inst]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>pgVFrame, V22_T_pqp, SMTT(5)
<2>xrNext. xr' \in [Xids -> 0..NR]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>xVFrame, V22_T_xr, SMTT(5)
<2>xgNext. xg' \in [Xids -> 0..MG]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>xVFrame, V22_T_xg, SMTT(5)
<2>xkNext. xk' \in [Xids -> {"none", "wr", "rd"}]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>xVFrame, V22_T_xk, SMTT(5)
<2>xpNext. xp' \in [Xids -> {0} \cup Inst]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>xVFrame, V22_T_xp, SMTT(5)
<2>xdNext. xd' \in [Xids -> {0} \cup Inst]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>xVFrame, V22_T_xd, SMTT(5)
<2>xsrcNext. xsrc' \in [Xids -> 0..NP]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>xVFrame, V22_T_xsrc, SMTT(5)
<2>xdstNext. xdst' \in [Xids -> 0..NP]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>xVFrame, V22_T_xdst, SMTT(5)
<2>xntNext. xnt' \in [Xids -> 0..PS]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>xVFrame, V22_T_xnt, SMTT(5)
<2>hwNext. hw' \in [Xids -> {"none", "fly", "issued", "stop"}]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>xVFrame, V22_T_hw, SMTT(5)
<2>hokNext. hok' \in [Xids -> BOOLEAN]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>xVFrame, V22_T_hok, SMTT(5)
<2>ivNext. iv' \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>xVFrame, V22_T_iv, SMTT(5)
<2>xstNext. xst' \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>xVFrame, V22_T_xst, SMTT(5)
<2>xltNext. xlt' \in [Xids -> 0..PS]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>xVFrame, V22_T_xlt, SMTT(5)
<2>nxNext. nx' \in 1..(MX + 1)
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>xVFrame, V22_T_nx, SMTT(5)
<2>netNext. net' \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                      r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                      pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>netFrame, V22_T_net, SMTT(5) DEF MessageShape
<2>drepNext. drep' \in [Rq -> [Gens -> 0..2]]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>ghVFrame, V22_T_drep, SMTT(5)
<2>crepNext. crep' \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>ghVFrame, V22_T_crep, SMTT(5)
<2>dsuccNext. dsucc' \in [Rq -> [Gens -> BOOLEAN]]
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>ghVFrame, V22_T_dsucc, SMTT(5)
<2>gbadNext. gbad' \in BOOLEAN
 BY ONLY <1>AZXrHL1hRr4UAZs2r, <2>ghVFrame, V22_T_gbad, SMTT(5)
<2>qed. QED BY ONLY <2>genNext, <2>rtNext, <2>rpNext, <2>rdNext, <2>hpNext, <2>hdNext, <2>aliveNext, <2>nfailNext, <2>tornNext, <2>kpinNext, <2>kflyNext, <2>krsNext, <2>phNext, <2>rgNext, <2>rpgNext, <2>rpeNext, <2>rxNext, <2>rhitNext, <2>pstNext, <2>prNext, <2>pgnNext, <2>pltNext, <2>ptlNext, <2>pvisNext, <2>ledNext, <2>sflyNext, <2>sledNext, <2>prefcNext, <2>pqpNext, <2>xrNext, <2>xgNext, <2>xkNext, <2>xpNext, <2>xdNext, <2>xsrcNext, <2>xdstNext, <2>xntNext, <2>hwNext, <2>hokNext, <2>ivNext, <2>xstNext, <2>xltNext, <2>nxNext, <2>netNext, <2>drepNext, <2>crepNext, <2>dsuccNext, <2>gbadNext, ZenonT(10) DEF CoreTypeOK

\* T2M-LOCAL-VISIBILITY

<1>UHXCbzUQMiq052f.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE TypInv'
 BY ONLY <1>UHXCbzUQMiq052f, Sizes, Location, Design, <1>AZXrHL1hRr4UAZs2r, <1>xC4FDPYZiR4Ww0F, <1>uYP1ecwQPsYLndh, <1>REaFDvkNzNORSVR, <1>RB7eh23QzLPHPMc, <1>kGbQZTwRint7s3zWN, <1>mHrhy0k3ZQ1tJ7cD, <1>vQrhQepCxJVjTzUBv, <1>A751WUL4Ckes3QBx8, <1>GMbxFKXCD3PSDIT, <1>SbYmWKZ6MFoytJqTJi, <1>isUn0sYVjoefNng, <1>iRTBLJoILs9wjTuP, <1>D2FYeEqwj19Ylj5v, <1>YTxycOGuYRXfBD1E5, <1>Tz2MsGKhdpzZPblP, <1>S8jguvBiMGCcVV0y5DSb, <1>FH4IV6hYTEp655qj3, <1>l8n2nWffTEpHa2mouI, <1>yZcEj6bt7einOMkd14SH DEF TypInv, STypeOK, QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, Sizes, Location, Design
\* T2M-END R2M0566_PdQPNoPrefix_TypeOK


<1> QED BY <1>UHXCbzUQMiq052f, <1>RnGkHLCAHLOU, <1>D7QLLqLKfiwG, <1>Ovt0UCnToClP, <1>QKS86t7o97GW, <1>U5I54eISrIkW, <1>QfJVJzCXni4h, <1>Fay7Go2RplFG, <1>KMavS3NmsMhC, <1>AyoBBEYED6h1, <1>LwIXlAkDzXMbT, <1>EPX15ksdVIY1e, <1>V0dVnLydX0VvA, <1>jiITCHxjzAL4C, <1>R2mBtrMXeR7SA, <1>agJJnjnTJVsF0, <1>FIfa0VZ5UITCe, <1>sn1JJUuekGIco, <1>GY5ykZwzE3OZ, <1>hI1l3k3vungZ, <1>dzGhmNNHA25S, <1>VNH1pS3AjDFd, <1>r4neIF9P1tny, <1>kQwyL91r90kW, <1>AD5xCVe5lFIm8iy9Kg91Dya, <1>cdVm5RSbMvf2xb3ufUkIe4Q, <1>Wcm60qQxXgkaDsceE7Rcunq, <1>RO1wpKuagY7e6yYD0gRSUQ6r, <1>MbivR11TBYiY1144SKLIr, <1>VwXQR1YkskK0i00Q0H, <1>jYcXdPw4V9AWe9sS8XOq, <1>luMul5YWzxYtSdoCLJb5Rs4fY, <1>RTqDhei3Be5dFNOGNKoSn1sjWGw, <1>AU9C6ML0JS0qDomTFrJIcQSe3, <1>T4IucX7K1QUtCS4BInXzDrKJ, <1>gW5bcfSa1PptTU5fdCd, <1>xfEFD4Ke8O2y9OUNe1zRMpeCF3, <1>ufOCqdqef8gVZ1NdVjzNGc, <1>SonXlANR24M4s8pLARN0fdpqoOG1A, <1>KIKtZ6LX7tZiiG4Qqyvis6OAP, <1>LqILbkhMlEbDV6jz8aeRz, <1>PzZII7pyJ51Cv, <1>CpAG71K1GLFDb, <1>af1KTtJyt62s9, <1>aj5hQ405A3Vr3, <1>g4QCiB3UKXLoF, <1>R0ksK4Pr3J2kb, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_PNoPrefix SHA d72e9094a63de58578a629129038b9df5e74b461035afc5877886c8930b5cd28
USE DEF ShapeNetFrame
HIDE DEF Group_PNoPrefix_01, P_PagePoolsDisjoint, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_SFollowStatic, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst
LEMMA ShapeEffect_PNoPrefix ==
 ASSUME NEW i \in PInst, NEW r \in Rq, Sizes, Design, PNoPrefix(i,r)
 PROVE net'=net
 BY ONLY PNoPrefix(i,r), Sizes, Design, SMTT(5) DEF PNoPrefix, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_PNoPrefix ==
 ASSUME NEW i \in PInst, NEW r \in Rq, Sizes, Design, IndInv, MessageShape, PNoPrefix(i,r)
 PROVE MessageShape'
 BY ONLY Sizes, Design, PNoPrefix(i,r), MessageShape, ShapeEffect_PNoPrefix, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_PNoPrefix SHA 592106481998f4cd6c2154e278e1168a06bd44720256037e92c8191ceb4edb46
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_PNoPrefix, ShapeNetFrame
THEOREM DomainKeep_PNoPrefix ==
 ASSUME NEW i \in PInst, NEW r \in Rq, Sizes, Location, Design, PinInv, PNoPrefix(i,r)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, PNoPrefix(i,r), ShapeEffect_PNoPrefix
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_PNoPrefix_02 SHA c59c9903843dd2f9f59a92a421fad56a6a6b3a1161115bbb279f23c4bc395136
USE DEF V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_P_SI1, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_PNoPrefix, V21_Inv_MsgXDomain
THEOREM Group_PNoPrefix_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE (PrivateMapOwner)' /\ (EntryQuarantineDisjoint)' /\ (P_SI1)' /\ (P_SI6)' /\ (MsgXDomain)' /\ (P_B2OffInit)'
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


<1>OLjwT3ThQgnCAzcqXRRD1HoFeiPZ8ScVKArN8YE.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>OLjwT3ThQgnCAzcqXRRD1HoFeiPZ8ScVKArN8YE, Sizes, Location, Design
<2>1. EntryQuarantineDisjoint /\ STypeOK /\ Ex6xsGb
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF PNoPrefix, EntryQuarantineDisjoint, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, Sizes, Location, Design


<1>c7ow53hkOBn5tOOsh0TQ1gSYmDPWWkS.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE PrivateMapOwner'
<2> USE ONLY <1>c7ow53hkOBn5tOOsh0TQ1gSYmDPWWkS, Sizes, Location, Design
<2>1. PrivateMapOwner /\ STypeOK /\ Ex6xsGb
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF PNoPrefix, PrivateMapOwner, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, Sizes, Location, Design


<1>WV1rqHYfM8rzpxfWV1P.        
  ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
  PROVE MsgXDomain'
 BY ONLY <1>WV1rqHYfM8rzpxfWV1P, Sizes, Location, Design, DomainKeep_PNoPrefix, SMTT(5)
\* T2M-END R2M0309_PdPDomain_PNoPrefix


<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


<1>OE4os5kgpZkpYJPhmez.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE P_B2OffInit'
 BY ONLY <1>OE4os5kgpZkpYJPhmez, Sizes, Location, Design, SMTT(10) DEF PNoPrefix, P_B2OffInit, Sizes, Location, Design
\* T2M-END R2M0491_PdPOff_PNoPrefix


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


<1>gcZYmnmet9CB.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE P_SI1'
<2> USE ONLY <1>gcZYmnmet9CB, Sizes, Location, Design
<2>1. P_SI1 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI1, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, P_SI1, SH, SHPin, SI1, SSendReady, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0564_PdQPNoPrefix_SI1

\* T2M-SCOPE R2M0565_PdQPNoPrefix_SI6

<1>NgouJ6QxQyhT.        
 ASSUME NEW i \in PInst, NEW r \in Rq, PinInv, PNoPrefix(i,r)
 PROVE P_SI6'
<2> USE ONLY <1>NgouJ6QxQyhT, Sizes, Location, Design
<2>1. P_SI6 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PNoPrefix, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, P_SI6, SI6, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0565_PdQPNoPrefix_SI6

\* T2M-SCOPE R2M0566_PdQPNoPrefix_TypeOK

<1> QED BY <1>c7ow53hkOBn5tOOsh0TQ1gSYmDPWWkS, <1>OLjwT3ThQgnCAzcqXRRD1HoFeiPZ8ScVKArN8YE, <1>gcZYmnmet9CB, <1>NgouJ6QxQyhT, <1>WV1rqHYfM8rzpxfWV1P, <1>OE4os5kgpZkpYJPhmez, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Group_PNoPrefix_01, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_PNoPrefix
HIDE DEF DomainKeep_PNoPrefix, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_P_SI1, V21_Inv_P_SI6, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_PNoPrefix ==
 ASSUME NEW i \in PInst, NEW r \in Rq, Sizes, Location, Design, PinInv, PNoPrefix(i,r)
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in PInst, NEW v \in Rq, Sizes, Location, Design, PinInv, PNoPrefix(u,v)
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Group_PNoPrefix_01, Group_PNoPrefix_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Group_PNoPrefix_01, Group_PNoPrefix_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, PNoPrefix(i,r), <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, PNoPrefix(i,r), ShapeKeep_PNoPrefix, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
