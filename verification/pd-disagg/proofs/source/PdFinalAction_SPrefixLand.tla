---- MODULE PdFinalAction_SPrefixLand ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdShapeBase

\* Complete original body PdFinalPart_SPrefixLand_01_01 SHA f582837c7c324d2162e13797c4f1803ad651f0503e1e6875a5ff414e0a26a8a9
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K11, V21_Inv_K13, V21_Inv_K17, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_P_SI2, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_SI7, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable
THEOREM Part_SPrefixLand_01_01 ==
 ASSUME Sizes, Location, Design,
        NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE (TypInv)' /\ (KReadIntegrity)' /\ (K15)' /\ (K2)' /\ (K7)' /\ (K8)' /\ (K9)' /\ (K10)' /\ (K12)' /\ (K16)' /\ (S1)' /\ (S5)' /\ (S6)' /\ (NoStrayAccess)' /\ (ReadOwnLanded)' /\ (ReplyTruth)' /\ (QuarNeverMapped)' /\ (NoFreeUnderRead)' /\ (NoEvictUnderRDMA)' /\ (SharedLedRef)' /\ (PrefcMatchesHolders)' /\ (HitIdentity)' /\ (P_SI1)' /\ (P_SI4)' /\ (P_SI5)' /\ (P_SI6)' /\ (SI8)' /\ (SealOnlyLanded)'
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

<1>BBQUQLHXJe.        
 ReplyTruth /\ UNCHANGED <<crep, dsucc>> => ReplyTruth'
 BY IsaT(10), Sizes, Location, Design DEF ReplyTruth, Sizes, Location, Design
\* T2M-END R2M0349_PdPF_ReplyTruth


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


<1>ui5.        
 K12 /\ UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>> => K12'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, K12, Sizes, Location, Design
\* T2M-END R2M0362_PdPF_K12


<1>Po.        
 S5 /\ UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>> => S5'
 BY IsaT(10), Sizes, Location, Design DEF S5, Sizes, Location, Design
\* T2M-END R2M0345_PdPF_S5


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


<1>Gk.        
 K7 /\ UNCHANGED <<gen, kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>> => K7'
 BY IsaT(10), Sizes, Location, Design DEF Active, GrownP, K7, KPinned, Maps, NHits, Sizes, Location, Design
\* T2M-END R2M0374_PdPF_K7


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

<1>aMI.        
 SI8 /\ UNCHANGED <<sentry, squar, xk, xsrcS, xst>> => SI8'
 BY IsaT(10), Sizes, Location, Design DEF SI8, Sizes, Location, Design
\* T2M-END R2M0388_PdPF_SI8

\* T2M-SCOPE R2M0512_PdQBase

<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


<1>OVg4h90W2yOETehwKlF.        
 PrefcMatchesHolders /\ UNCHANGED <<rpgS, sentry, sprefc, squar, xsrcS>> => PrefcMatchesHolders'
 BY IsaT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
\* T2M-END R2M0385_PdPF_PrefcMatchesHolders


<1>oWe.        
 P_SI6 /\ UNCHANGED <<kpin, krs, ph, rg, rpgS, schoice, smap>> => P_SI6'
 BY IsaT(10), Sizes, Location, Design DEF Active, P_SI6, SI6, Sizes, Location, Design
\* T2M-END R2M0386_PdPF_SI6


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


<1>yYQ.        
 P_SI1 /\ UNCHANGED <<gen, kpin, krs, ph, rg, rpgS, schoice, smap, spst, sready>> => P_SI1'
 BY IsaT(10), Sizes, Location, Design DEF Active, P_SI1, SHPin, SI1, SSendReady, Sizes, Location, Design
\* T2M-END R2M0434_PdPF_SI1

\* T2M-SCOPE R2M0435_PdPFrames_SPrefixLand

<1>tBwTmQQcbnLwQhG1tDC.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rpgS, rt, rx, schoice, sentry, sfly, sgen, skey, sled, smap, sown, sprefc, spst, squar, sready, torn, xd, xdst, xg, xk, xlt, xnt, xp, xprefixOK, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF SPrefixLand, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qFlFR56Y3LSUBZ.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K2'
<2> USE ONLY <1>qFlFR56Y3LSUBZ, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HNu3HBv3ofnme8.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K7'
<2> USE ONLY <1>HNu3HBv3ofnme8, Sizes, Location, Design
<2>1. K7
 BY V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Gk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EMUBMx3yxzcEt7.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K8'
<2> USE ONLY <1>EMUBMx3yxzcEt7, Sizes, Location, Design
<2>1. K8
 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, ph, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>J7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oWiaajFu2cU15Y.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K9'
<2> USE ONLY <1>oWiaajFu2cU15Y, Sizes, Location, Design
<2>1. K9
 BY V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Dv, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T49NIYjS0b9FqVX.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K10'
<2> USE ONLY <1>T49NIYjS0b9FqVX, Sizes, Location, Design
<2>1. K10
 BY V21_Inv_K10, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, nx, pgn, ph, pr, pst, ptl, rg, xdst, xg, xlt, xr>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ahB, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kRDyyRsvbvV2zfd.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K12'
<2> USE ONLY <1>kRDyyRsvbvV2zfd, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ud3yKTO2iShBriS.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K16'
<2> USE ONLY <1>Ud3yKTO2iShBriS, Sizes, Location, Design
<2>1. K16
 BY V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, led, pgn, ph, plt, pr, pst, ptl, rg, rpg, sfly, sled, xdst>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>M6Z, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Z7iIHsVBcMVNXr.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE S1'
<2> USE ONLY <1>Z7iIHsVBcMVNXr, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JFCxc0wCkhhUYy.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE S5'
<2> USE ONLY <1>JFCxc0wCkhhUYy, Sizes, Location, Design
<2>1. S5
 BY V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Po, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>G5UCEl5PYKr05Q.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE S6'
<2> USE ONLY <1>G5UCEl5PYKr05Q, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g2jCTZhMeeKYTd6oRb2HKt67y.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE NoStrayAccess'
<2> USE ONLY <1>g2jCTZhMeeKYTd6oRb2HKt67y, Sizes, Location, Design
<2>1. NoStrayAccess
 BY V21_Inv_NoStrayAccess, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, kfly, krs, pgn, pr, pst, sfly, sgen, sown, spst, xdst, xg, xr, xsrc>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>awLhek8Og2WpH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HuhZLkECRIFuKaNM9NmQlwdAq.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE ReadOwnLanded'
<2> USE ONLY <1>HuhZLkECRIFuKaNM9NmQlwdAq, Sizes, Location, Design
<2>1. ReadOwnLanded
 BY V21_Inv_ReadOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<dpreOK, hw, pgn, ph, pr, pst, ptl, pvis, rg, rhit, rpg, xdst>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>V0LNJhFJZYV3Y, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hknDhzjjwJEUQBGsiBEgjN.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE ReplyTruth'
<2> USE ONLY <1>hknDhzjjwJEUQBGsiBEgjN, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qAHhRu76duxQue2eYqkibnn37Eu.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QuarNeverMapped'
<2> USE ONLY <1>qAHhRu76duxQue2eYqkibnn37Eu, Sizes, Location, Design
<2>1. QuarNeverMapped
 BY V21_Inv_QuarNeverMapped, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ph, pst, rpg>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>CHHI4E3y3uZD9LA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>G4qGbI15lfdJ0N26Yw1jC93P8KC.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE NoFreeUnderRead'
<2> USE ONLY <1>G4qGbI15lfdJ0N26Yw1jC93P8KC, Sizes, Location, Design
<2>1. NoFreeUnderRead
 BY V21_Inv_NoFreeUnderRead, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, pgn, pr, pst, sgen, sown, spst>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>unKEqtNGzAKBBp6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nAIdewZ43LlfJm8XR4WCSz8hayXN.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE NoEvictUnderRDMA'
<2> USE ONLY <1>nAIdewZ43LlfJm8XR4WCSz8hayXN, Sizes, Location, Design
<2>1. NoEvictUnderRDMA
 BY V21_Inv_NoEvictUnderRDMA, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, sentry, sgen, skey, sown, spst, squar, xg, xr, xsrcP, xsrcS>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Uo4zrIitxFf46gUp, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gkSkVxK4VI8FZT7htGeio8og.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE SharedLedRef'
<2> USE ONLY <1>gkSkVxK4VI8FZT7htGeio8og, Sizes, Location, Design
<2>1. SharedLedRef
 BY V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, sentry, sprefc, spst, squar, xsrcS>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>SaXX19sFdnAE, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>c3HQoacmma690k7rSN2FGzb9EKc7uZY.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>c3HQoacmma690k7rSN2FGzb9EKc7uZY, Sizes, Location, Design
<2>1. PrefcMatchesHolders
 BY V21_Inv_PrefcMatchesHolders, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<rpgS, sentry, sprefc, squar, xsrcS>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>OVg4h90W2yOETehwKlF, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NG22aXVSrl713XW1RRWJQp2.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE HitIdentity'
<2> USE ONLY <1>NG22aXVSrl713XW1RRWJQp2, Sizes, Location, Design
<2>1. HitIdentity
 BY V21_Inv_HitIdentity, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<ph, rg, rpgS, skey, smap, spst>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>B7Z1nHo1UfT, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TgMo8WhFaehtw12.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE P_SI1'
<2> USE ONLY <1>TgMo8WhFaehtw12, Sizes, Location, Design
<2>1. P_SI1
 BY V21_Inv_P_SI1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kpin, krs, ph, rg, rpgS, schoice, smap, spst, sready>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYQ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ywsG70aSlx4FE1s.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE P_SI4'
<2> USE ONLY <1>ywsG70aSlx4FE1s, Sizes, Location, Design
<2>1. P_SI4
 BY V21_Inv_P_SI4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, iv, nx, sentry, skey, spst, squar, xg, xk, xp, xprefixOK, xr, xsrc, xsrcP, xsrcS, xst>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>xas, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RRHcYX9KOM5299s.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE P_SI5'
<2> USE ONLY <1>RRHcYX9KOM5299s, Sizes, Location, Design
<2>1. P_SI5
 BY V21_Inv_P_SI5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<dpreOK, hok, hw, iv, nx, pgn, ph, pr, pst, skey, smap, spst, squar, xdst, xg, xr, xsrcS>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Moz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vzK7ylIoEYCDuMX.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE P_SI6'
<2> USE ONLY <1>vzK7ylIoEYCDuMX, Sizes, Location, Design
<2>1. P_SI6
 BY V21_Inv_P_SI6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpgS, schoice, smap>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>oWe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xylXnqshMdonse5.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE SI8'
<2> USE ONLY <1>xylXnqshMdonse5, Sizes, Location, Design
<2>1. SI8
 BY V21_Inv_SI8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<sentry, squar, xk, xsrcS, xst>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aMI, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0435_PdPFrames_SPrefixLand

\* T2M-SCOPE R2M0506_PdPOff_SPrefixLand

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

<1>d4WAbs6.        
 ASSUME PinInv, B2, UNCHANGED basevars, SI3'
 PROVE K15'
<2> USE ONLY <1>d4WAbs6, Sizes, Location, Design
<2>1. K15 BY V21_Inv_K15, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. SUFFICES ASSUME NEW i \in Inst, NEW k \in KSlots, kpin'[i][k], NEW e \in krs'[i][k]
 PROVE KData(i,e)' /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
 /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY Sizes, Location, Design DEF K15, Sizes, Location, Design
<2>3. kpin[i][k] /\ e \in krs[i][k]
 BY <2>2, SMTT(10), Sizes, Location, Design DEF basevars, instV, kV, Sizes, Location, Design
<2>4. KData(i,e) /\ ((IsD(i) /\ e[4] # 1) => led'[e[3]]={})
 /\ ((IsP(i) /\ e[3] \in Pages) => sled'[e[3]]={})
 BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K15, basevars, pgV, Sizes, Location, Design
<2>5. CASE e[3] \in SPages
 <3>1. i \in PInst BY <2>3, <2>5, <1>sfw, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. SData(e)' BY <2>2, <3>1, <2>5, SMTT(10), Sizes, Location, Design DEF SI3, Sizes, Location, Design
 <3>3. QED BY <2>4, <2>5, <3>2, SMTT(10), Sizes, Location, Design DEF KData, NoWriteInto, Writing, InFl, basevars, xV, Sizes, Location, Design
<2>6. CASE e[3] \notin SPages
 BY <2>4, <2>6, SMTT(10), Sizes, Location, Design DEF KData, NoWriteInto, Writing, InFl, basevars, pgV, xV, Sizes, Location, Design
<2>7. QED BY <2>5, <2>6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iYha333pZ.        
 ASSUME PinInv, UNCHANGED basevars, NoFreeUnderRead', K15', SMapIntegrity'
 PROVE NoStrayAccess' /\ KReadIntegrity'
<2> USE ONLY <1>iYha333pZ, Sizes, Location, Design
<2>1. NoStrayAccess /\ K14
 BY V21_Inv_K14, V21_Inv_NoStrayAccess, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. K14'
 BY <2>1, SMTT(10), Sizes, Location, Design DEF K14, basevars, rtV, instV, kV, Sizes, Location, Design
<2>3. NoStrayAccess'
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF NoStrayAccess, NoFreeUnderRead, K14, Held, Writing, InFl, basevars, pgV, xV, Sizes, Location, Design
<2>4. KReadIntegrity'
 BY <2>2, SMTT(10), Sizes, Location, Design DEF KReadIntegrity, BaseKReadIntegrity, NoFreeUnderRead, K15, K14, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0620_PdQReadLift


<1>ycgoQRJndTbdJ7.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE P_SI3'
<2> USE ONLY <1>ycgoQRJndTbdJ7, Sizes, Location, Design
<2>1. P_SI3 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI3, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixLand, basevars, ghV, instV, kV, pgV, recV, rtV, xV, P_SI3, SData, SH, SHeld, SI3, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0639_PdQSPrefixLand_SI3

\* T2M-SCOPE R2M0640_PdQRead_SPrefixLand_K15

<1>tbcR2FdGij8jmNp.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K15'
<2> USE ONLY <1>tbcR2FdGij8jmNp, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY SMTT(10), Sizes, Location, Design DEF SPrefixLand, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. SI3'
 BY <2>1, <1>ycgoQRJndTbdJ7, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>d4WAbs6, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0640_PdQRead_SPrefixLand_K15

\* T2M-SCOPE R2M0641_PdQSPrefixLand_Map

<1>TRRD0o7wvcLgGN.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE SMapIntegrity'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand, SMapIntegrity
<2>oldMap. SMapIntegrity
 BY ONLY <1>TRRD0o7wvcLgGN, V21_Inv_KReadIntegrity, Sizes, Location, Design, SMTT(5) DEF KReadIntegrity
<2>frame. UNCHANGED <<ph, smap, spst>>
 BY ONLY <1>TRRD0o7wvcLgGN, <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design, SMTT(5)
<2>qed. QED BY ONLY <2>oldMap, <2>frame, SMTT(5) DEF SMapIntegrity, Active

<1>Fam1GJMcUYGuhhOQ1Ar6BNffEc.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE KReadIntegrity'
<2> USE ONLY <1>Fam1GJMcUYGuhhOQ1Ar6BNffEc, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY SMTT(10), Sizes, Location, Design DEF SPrefixLand, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. SI3'
 BY <2>1, <1>ycgoQRJndTbdJ7, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. NoFreeUnderRead' /\ K15' /\ SMapIntegrity'
 BY <2>1, <2>2, <1>NOq3QYRHhz, <1>d4WAbs6, <1>TRRD0o7wvcLgGN, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>iYha333pZ, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0642_PdQRead_SPrefixLand_KReadIntegrity

\* T2M-SCOPE R2M0665_PdQSPrefixLand_QuietConservation

<1>uZUMVBRRET3fLLz4I5KymRiEB.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE SealOnlyLanded'
<2> USE ONLY <1>uZUMVBRRET3fLLz4I5KymRiEB, Sizes, Location, Design
<2>1. SealOnlyLanded /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixLand, basevars, ghV, instV, kV, pgV, recV, rtV, xV, BaseSealOnlyLanded, InFl, NoWriteInto, SealOnlyLanded, SharedImmutable, Writing, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0667_PdQSPrefixLand_SealOnlyLanded

\* T2M-SCOPE R2M0668_PdQSPrefixLand_SendOwnLanded

<1>jv3GJqvf3Dk8FDDne.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_spst'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_spst
 BY ONLY <1>jv3GJqvf3Dk8FDDne, V22_T_spst, SMTT(5) DEF QT_spst
<2>effect. UNCHANGED spst
 BY ONLY <1>jv3GJqvf3Dk8FDDne, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>jv3GJqvf3Dk8FDDne, <2>oldType, <2>effect, SMTT(5) DEF QT_spst

<1>UA5vBd81iq1Dww0TI.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_sown'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_sown
 BY ONLY <1>UA5vBd81iq1Dww0TI, V22_T_sown, SMTT(5) DEF QT_sown
<2>effect. UNCHANGED sown
 BY ONLY <1>UA5vBd81iq1Dww0TI, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>UA5vBd81iq1Dww0TI, <2>oldType, <2>effect, SMTT(5) DEF QT_sown

<1>HrzKdE1HX10KidKGr.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_sgen'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_sgen
 BY ONLY <1>HrzKdE1HX10KidKGr, V22_T_sgen, SMTT(5) DEF QT_sgen
<2>effect. UNCHANGED sgen
 BY ONLY <1>HrzKdE1HX10KidKGr, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>HrzKdE1HX10KidKGr, <2>oldType, <2>effect, SMTT(5) DEF QT_sgen

<1>JNL0lMKqYc2uq8eDr.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_skey'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_skey
 BY ONLY <1>JNL0lMKqYc2uq8eDr, V22_T_skey, SMTT(5) DEF QT_skey
<2>effect. UNCHANGED skey
 BY ONLY <1>JNL0lMKqYc2uq8eDr, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>JNL0lMKqYc2uq8eDr, <2>oldType, <2>effect, SMTT(5) DEF QT_skey

<1>ImVtGWl3KLOF46KrrwN.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_swrite'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_swrite
 BY ONLY <1>ImVtGWl3KLOF46KrrwN, V22_T_swrite, SMTT(5) DEF QT_swrite
<2>effect. swrite' = [swrite EXCEPT ![p] = FALSE]
 BY ONLY <1>ImVtGWl3KLOF46KrrwN, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>ImVtGWl3KLOF46KrrwN, <2>oldType, <2>effect, SMTT(5) DEF QT_swrite

<1>HjJbBrP69Nrp3LoqBZ.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_sdata'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_sdata
 BY ONLY <1>HjJbBrP69Nrp3LoqBZ, V22_T_sdata, SMTT(5) DEF QT_sdata
<2>effect. sdata' = [sdata EXCEPT ![p] = spst[p] \in {"priv","drain","quar"}]
 BY ONLY <1>HjJbBrP69Nrp3LoqBZ, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>HjJbBrP69Nrp3LoqBZ, <2>oldType, <2>effect, SMTT(5) DEF QT_sdata

<1>LeBPHd5F96tPhNAY2kW.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_sready'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_sready
 BY ONLY <1>LeBPHd5F96tPhNAY2kW, V22_T_sready, SMTT(5) DEF QT_sready
<2>effect. UNCHANGED sready
 BY ONLY <1>LeBPHd5F96tPhNAY2kW, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>LeBPHd5F96tPhNAY2kW, <2>oldType, <2>effect, SMTT(5) DEF QT_sready

<1>qHkbyZikzQajkntin3B.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_sprefc'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_sprefc
 BY ONLY <1>qHkbyZikzQajkntin3B, V22_T_sprefc, SMTT(5) DEF QT_sprefc
<2>effect. UNCHANGED sprefc
 BY ONLY <1>qHkbyZikzQajkntin3B, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>qHkbyZikzQajkntin3B, <2>oldType, <2>effect, SMTT(5) DEF QT_sprefc

<1>lODKTENBDbbf514It.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_smap'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_smap
 BY ONLY <1>lODKTENBDbbf514It, V22_T_smap, SMTT(5) DEF QT_smap
<2>effect. UNCHANGED smap
 BY ONLY <1>lODKTENBDbbf514It, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>lODKTENBDbbf514It, <2>oldType, <2>effect, SMTT(5) DEF QT_smap

<1>wUg7vB5w1OstGMADlupI.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_schoice'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_schoice
 BY ONLY <1>wUg7vB5w1OstGMADlupI, V22_T_schoice, SMTT(5) DEF QT_schoice
<2>effect. UNCHANGED schoice
 BY ONLY <1>wUg7vB5w1OstGMADlupI, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>wUg7vB5w1OstGMADlupI, <2>oldType, <2>effect, SMTT(5) DEF QT_schoice

<1>qTzfe3CbFGsUEphC9.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_rpgS'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_rpgS
 BY ONLY <1>qTzfe3CbFGsUEphC9, V22_T_rpgS, SMTT(5) DEF QT_rpgS
<2>effect. UNCHANGED rpgS
 BY ONLY <1>qTzfe3CbFGsUEphC9, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>qTzfe3CbFGsUEphC9, <2>oldType, <2>effect, SMTT(5) DEF QT_rpgS

<1>o5crodUABw83WUiovM.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_xsrcS'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_xsrcS
 BY ONLY <1>o5crodUABw83WUiovM, V22_T_xsrcS, SMTT(5) DEF QT_xsrcS
<2>effect. UNCHANGED xsrcS
 BY ONLY <1>o5crodUABw83WUiovM, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>o5crodUABw83WUiovM, <2>oldType, <2>effect, SMTT(5) DEF QT_xsrcS

<1>N00QC2ySAPM2FskrLx.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_xsrcP'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_xsrcP
 BY ONLY <1>N00QC2ySAPM2FskrLx, V22_T_xsrcP, SMTT(5) DEF QT_xsrcP
<2>effect. UNCHANGED xsrcP
 BY ONLY <1>N00QC2ySAPM2FskrLx, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>N00QC2ySAPM2FskrLx, <2>oldType, <2>effect, SMTT(5) DEF QT_xsrcP

<1>rfoGxV8y0CPxWf6eU3X.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_sentry'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_sentry
 BY ONLY <1>rfoGxV8y0CPxWf6eU3X, V22_T_sentry, SMTT(5) DEF QT_sentry
<2>effect. UNCHANGED sentry
 BY ONLY <1>rfoGxV8y0CPxWf6eU3X, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>rfoGxV8y0CPxWf6eU3X, <2>oldType, <2>effect, SMTT(5) DEF QT_sentry

<1>gOQofE6vqIPdQqZxdK.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_squar'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_squar
 BY ONLY <1>gOQofE6vqIPdQqZxdK, V22_T_squar, SMTT(5) DEF QT_squar
<2>effect. UNCHANGED squar
 BY ONLY <1>gOQofE6vqIPdQqZxdK, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>gOQofE6vqIPdQqZxdK, <2>oldType, <2>effect, SMTT(5) DEF QT_squar

<1>XKJ39EKyDs1K6kvrFgTmPe.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_xprefixOK'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_xprefixOK
 BY ONLY <1>XKJ39EKyDs1K6kvrFgTmPe, V22_T_xprefixOK, SMTT(5) DEF QT_xprefixOK
<2>effect. UNCHANGED xprefixOK
 BY ONLY <1>XKJ39EKyDs1K6kvrFgTmPe, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>XKJ39EKyDs1K6kvrFgTmPe, <2>oldType, <2>effect, SMTT(5) DEF QT_xprefixOK

<1>Ug5yGWPOrrDT7gNkDJq.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_dpreOK'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_dpreOK
 BY ONLY <1>Ug5yGWPOrrDT7gNkDJq, V22_T_dpreOK, SMTT(5) DEF QT_dpreOK
<2>effect. UNCHANGED dpreOK
 BY ONLY <1>Ug5yGWPOrrDT7gNkDJq, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>Ug5yGWPOrrDT7gNkDJq, <2>oldType, <2>effect, SMTT(5) DEF QT_dpreOK

<1>mGsinVXOYqYmNjjc6nqp.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_hitSeen'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_hitSeen
 BY ONLY <1>mGsinVXOYqYmNjjc6nqp, V22_T_hitSeen, SMTT(5) DEF QT_hitSeen
<2>effect. UNCHANGED hitSeen
 BY ONLY <1>mGsinVXOYqYmNjjc6nqp, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>mGsinVXOYqYmNjjc6nqp, <2>oldType, <2>effect, SMTT(5) DEF QT_hitSeen

<1>JSNyN5efO9L1SLVW0CHT0G.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QT_dedupSeen'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>oldType. QT_dedupSeen
 BY ONLY <1>JSNyN5efO9L1SLVW0CHT0G, V22_T_dedupSeen, SMTT(5) DEF QT_dedupSeen
<2>effect. UNCHANGED dedupSeen
 BY ONLY <1>JSNyN5efO9L1SLVW0CHT0G, SMTT(5) DEF SPrefixLand
<2>qed. QED BY ONLY <1>JSNyN5efO9L1SLVW0CHT0G, <2>oldType, <2>effect, SMTT(5) DEF QT_dedupSeen

<1>RV1OlOyLsyQrtORdF9J.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE CoreTypeOK'
<2> HIDE DEF CoreTypeOK, STypeOK, SPrefixLand
<2>frame. UNCHANGED basevars
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, SMTT(5) DEF SPrefixLand
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
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>rtVFrame, V22_T_gen, SMTT(5)
<2>rtNext. rt' \in [Rq -> {"idle", "wait", "ok", "err"}]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>rtVFrame, V22_T_rt, SMTT(5)
<2>rpNext. rp' \in [Rq -> {0} \cup Inst]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>rtVFrame, V22_T_rp, SMTT(5)
<2>rdNext. rd' \in [Rq -> {0} \cup Inst]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>rtVFrame, V22_T_rd, SMTT(5)
<2>hpNext. hp' \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>rtVFrame, V22_T_hp, SMTT(5)
<2>hdNext. hd' \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>rtVFrame, V22_T_hd, SMTT(5)
<2>aliveNext. alive' \in [Inst -> BOOLEAN]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>instVFrame, V22_T_alive, SMTT(5)
<2>nfailNext. nfail' \in 0..MaxFail
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>instVFrame, V22_T_nfail, SMTT(5)
<2>tornNext. torn' \in [Inst -> SUBSET Inst]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>instVFrame, V22_T_torn, SMTT(5)
<2>kpinNext. kpin' \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>instVFrame, V22_T_kpin, SMTT(5)
<2>kflyNext. kfly' \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>instVFrame, V22_T_kfly, SMTT(5)
<2>krsNext. krs' \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>instVFrame, V22_T_krs, SMTT(5)
<2>phNext. ph' \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>recVFrame, V22_T_ph, SMTT(5)
<2>rgNext. rg' \in [Inst -> [Rq -> 0..MG]]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>recVFrame, V22_T_rg, SMTT(5)
<2>rpgNext. rpg' \in [Inst -> [Rq -> 0..NP]]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>recVFrame, V22_T_rpg, SMTT(5)
<2>rpeNext. rpe' \in [Inst -> [Rq -> {0} \cup Inst]]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>recVFrame, V22_T_rpe, SMTT(5)
<2>rxNext. rx' \in [Inst -> [Rq -> 0..MX]]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>recVFrame, V22_T_rx, SMTT(5)
<2>rhitNext. rhit' \in [Inst -> [Rq -> BOOLEAN]]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>recVFrame, V22_T_rhit, SMTT(5)
<2>pstNext. pst' \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>pgVFrame, V22_T_pst, SMTT(5)
<2>prNext. pr' \in [Pages -> 0..NR]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>pgVFrame, V22_T_pr, SMTT(5)
<2>pgnNext. pgn' \in [Pages -> 0..MG]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>pgVFrame, V22_T_pgn, SMTT(5)
<2>pltNext. plt' \in [Pages -> 0..PS]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>pgVFrame, V22_T_plt, SMTT(5)
<2>ptlNext. ptl' \in [Pages -> -1..PS]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>pgVFrame, V22_T_ptl, SMTT(5)
<2>pvisNext. pvis' \in [Pages -> BOOLEAN]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>pgVFrame, V22_T_pvis, SMTT(5)
<2>ledNext. led' \in [Pages -> SUBSET Xids]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>pgVFrame, V22_T_led, SMTT(5)
<2>sflyNext. sfly' \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>pgVFrame, V22_T_sfly, SMTT(5)
<2>sledNext. sled' \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>pgVFrame, V22_T_sled, SMTT(5)
<2>prefcNext. prefc' \in [Pages -> 0..NR]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>pgVFrame, V22_T_prefc, SMTT(5)
<2>pqpNext. pqp' \in [Pages -> {0} \cup Inst]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>pgVFrame, V22_T_pqp, SMTT(5)
<2>xrNext. xr' \in [Xids -> 0..NR]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>xVFrame, V22_T_xr, SMTT(5)
<2>xgNext. xg' \in [Xids -> 0..MG]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>xVFrame, V22_T_xg, SMTT(5)
<2>xkNext. xk' \in [Xids -> {"none", "wr", "rd"}]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>xVFrame, V22_T_xk, SMTT(5)
<2>xpNext. xp' \in [Xids -> {0} \cup Inst]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>xVFrame, V22_T_xp, SMTT(5)
<2>xdNext. xd' \in [Xids -> {0} \cup Inst]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>xVFrame, V22_T_xd, SMTT(5)
<2>xsrcNext. xsrc' \in [Xids -> 0..NP]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>xVFrame, V22_T_xsrc, SMTT(5)
<2>xdstNext. xdst' \in [Xids -> 0..NP]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>xVFrame, V22_T_xdst, SMTT(5)
<2>xntNext. xnt' \in [Xids -> 0..PS]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>xVFrame, V22_T_xnt, SMTT(5)
<2>hwNext. hw' \in [Xids -> {"none", "fly", "issued", "stop"}]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>xVFrame, V22_T_hw, SMTT(5)
<2>hokNext. hok' \in [Xids -> BOOLEAN]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>xVFrame, V22_T_hok, SMTT(5)
<2>ivNext. iv' \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>xVFrame, V22_T_iv, SMTT(5)
<2>xstNext. xst' \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>xVFrame, V22_T_xst, SMTT(5)
<2>xltNext. xlt' \in [Xids -> 0..PS]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>xVFrame, V22_T_xlt, SMTT(5)
<2>nxNext. nx' \in 1..(MX + 1)
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>xVFrame, V22_T_nx, SMTT(5)
<2>netNext. net' \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                      r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                      pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>netFrame, V22_T_net, SMTT(5) DEF MessageShape
<2>drepNext. drep' \in [Rq -> [Gens -> 0..2]]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>ghVFrame, V22_T_drep, SMTT(5)
<2>crepNext. crep' \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>ghVFrame, V22_T_crep, SMTT(5)
<2>dsuccNext. dsucc' \in [Rq -> [Gens -> BOOLEAN]]
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>ghVFrame, V22_T_dsucc, SMTT(5)
<2>gbadNext. gbad' \in BOOLEAN
 BY ONLY <1>RV1OlOyLsyQrtORdF9J, <2>ghVFrame, V22_T_gbad, SMTT(5)
<2>qed. QED BY ONLY <2>genNext, <2>rtNext, <2>rpNext, <2>rdNext, <2>hpNext, <2>hdNext, <2>aliveNext, <2>nfailNext, <2>tornNext, <2>kpinNext, <2>kflyNext, <2>krsNext, <2>phNext, <2>rgNext, <2>rpgNext, <2>rpeNext, <2>rxNext, <2>rhitNext, <2>pstNext, <2>prNext, <2>pgnNext, <2>pltNext, <2>ptlNext, <2>pvisNext, <2>ledNext, <2>sflyNext, <2>sledNext, <2>prefcNext, <2>pqpNext, <2>xrNext, <2>xgNext, <2>xkNext, <2>xpNext, <2>xdNext, <2>xsrcNext, <2>xdstNext, <2>xntNext, <2>hwNext, <2>hokNext, <2>ivNext, <2>xstNext, <2>xltNext, <2>nxNext, <2>netNext, <2>drepNext, <2>crepNext, <2>dsuccNext, <2>gbadNext, ZenonT(10) DEF CoreTypeOK

\* T2M-LOCAL-VISIBILITY

<1>xo0Vo9fN5Z9kuBghb.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE TypInv'
 BY ONLY <1>xo0Vo9fN5Z9kuBghb, Sizes, Location, Design, <1>RV1OlOyLsyQrtORdF9J, <1>jv3GJqvf3Dk8FDDne, <1>UA5vBd81iq1Dww0TI, <1>HrzKdE1HX10KidKGr, <1>JNL0lMKqYc2uq8eDr, <1>ImVtGWl3KLOF46KrrwN, <1>HjJbBrP69Nrp3LoqBZ, <1>LeBPHd5F96tPhNAY2kW, <1>qHkbyZikzQajkntin3B, <1>lODKTENBDbbf514It, <1>wUg7vB5w1OstGMADlupI, <1>qTzfe3CbFGsUEphC9, <1>o5crodUABw83WUiovM, <1>N00QC2ySAPM2FskrLx, <1>rfoGxV8y0CPxWf6eU3X, <1>gOQofE6vqIPdQqZxdK, <1>XKJ39EKyDs1K6kvrFgTmPe, <1>Ug5yGWPOrrDT7gNkDJq, <1>mGsinVXOYqYmNjjc6nqp, <1>JSNyN5efO9L1SLVW0CHT0G DEF TypInv, STypeOK, QT_spst, QT_sown, QT_sgen, QT_skey, QT_swrite, QT_sdata, QT_sready, QT_sprefc, QT_smap, QT_schoice, QT_rpgS, QT_xsrcS, QT_xsrcP, QT_sentry, QT_squar, QT_xprefixOK, QT_dpreOK, QT_hitSeen, QT_dedupSeen, Sizes, Location, Design
\* T2M-END R2M0670_PdQSPrefixLand_TypeOK


<1> QED BY <1>xo0Vo9fN5Z9kuBghb, <1>Fam1GJMcUYGuhhOQ1Ar6BNffEc, <1>tbcR2FdGij8jmNp, <1>qFlFR56Y3LSUBZ, <1>HNu3HBv3ofnme8, <1>EMUBMx3yxzcEt7, <1>oWiaajFu2cU15Y, <1>T49NIYjS0b9FqVX, <1>kRDyyRsvbvV2zfd, <1>Ud3yKTO2iShBriS, <1>Z7iIHsVBcMVNXr, <1>JFCxc0wCkhhUYy, <1>G5UCEl5PYKr05Q, <1>g2jCTZhMeeKYTd6oRb2HKt67y, <1>HuhZLkECRIFuKaNM9NmQlwdAq, <1>hknDhzjjwJEUQBGsiBEgjN, <1>qAHhRu76duxQue2eYqkibnn37Eu, <1>G4qGbI15lfdJ0N26Yw1jC93P8KC, <1>nAIdewZ43LlfJm8XR4WCSz8hayXN, <1>gkSkVxK4VI8FZT7htGeio8og, <1>c3HQoacmma690k7rSN2FGzb9EKc7uZY, <1>NG22aXVSrl713XW1RRWJQp2, <1>TgMo8WhFaehtw12, <1>ywsG70aSlx4FE1s, <1>RRHcYX9KOM5299s, <1>vzK7ylIoEYCDuMX, <1>xylXnqshMdonse5, <1>uZUMVBRRET3fLLz4I5KymRiEB, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdFinalPart_SPrefixLand_01_02 SHA 2971f83491f571a01ac658a2a1492549a820cca59479134c7a45e13def907b6f
USE DEF V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K11, V21_Inv_K13, V21_Inv_K17, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_OneReply, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_SI7, V21_Inv_SendOwnLanded
HIDE DEF P_PagePoolsDisjoint, Part_SPrefixLand_01_01, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K12, V21_Inv_K15, V21_Inv_K16, V21_Inv_K2, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_SI1, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNeverMapped, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V21_Inv_SealOnlyLanded, V21_Inv_SharedLedRef, V22_T_alive, V22_T_crep, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sfly, V22_T_sled, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_SPrefixLand_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE (K1)' /\ (K3)' /\ (K4)' /\ (K5)' /\ (K6)' /\ (K11)' /\ (K13)' /\ (K14)' /\ (K17)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (GenFiltered)' /\ (OneReply)' /\ (QuarNoReg)' /\ (SI7)' /\ (PrivateMapOwner)' /\ (EntryQuarantineDisjoint)' /\ (SendOwnLanded)'
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


<1>UJG1c0SBnmoMxrIiuODuUV1tN8TeDtVVnpik4ihgM.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>UJG1c0SBnmoMxrIiuODuUV1tN8TeDtVVnpik4ihgM, Sizes, Location, Design
<2>1. EntryQuarantineDisjoint /\ STypeOK /\ Ex6xsGb
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF SPrefixLand, EntryQuarantineDisjoint, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, Sizes, Location, Design


<1>kMDNVyaPMtq8pxwkLlb6jVDMSjZyK4doO.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE PrivateMapOwner'
<2> USE ONLY <1>kMDNVyaPMtq8pxwkLlb6jVDMSjZyK4doO, Sizes, Location, Design
<2>1. PrivateMapOwner /\ STypeOK /\ Ex6xsGb
 BY <1>HPPdcIR, <1>rC6T, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_PrivateMapOwner, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>HsRNXPeY1C, SMTT(10), Sizes, Location DEF SPrefixLand, PrivateMapOwner, basevars, rtV, instV, kV, recV, pgV, xV, ghV, STypeOK, Ex6xsGb, Active, Sizes, Location, Design


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


<1>aXu.        
 K17 /\ UNCHANGED <<kpin, krs, ph, rg, rpg>> => K17'
 BY IsaT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
\* T2M-END R2M0340_PdPF_K17


<1>s6g.        
 K13 /\ UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>> => K13'
 BY IsaT(10), Sizes, Location, Design DEF K13, Sizes, Location, Design
\* T2M-END R2M0354_PdPF_K13


<1>rd.        
 K5 /\ UNCHANGED <<led, pgn, pr, pst, xg, xr>> => K5'
 BY IsaT(10), Sizes, Location, Design DEF K5, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0334_PdPF_K5


<1>pJ.        
 K4 /\ UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>> => K4'
 BY IsaT(10), Sizes, Location, Design DEF ExpPage, InitPage, K4, Sizes, Location, Design
\* T2M-END R2M0333_PdPF_K4


<1>IM.        
 K6 /\ UNCHANGED <<gen, pgn, pr, pst, sfly, sled>> => K6'
 BY IsaT(10), Sizes, Location, Design DEF K6, OwnedBy, Sizes, Location, Design
\* T2M-END R2M0372_PdPF_K6


<1>agy0tgaoa.        
 QuarNoReg /\ UNCHANGED <<iv, led, pst>> => QuarNoReg'
 BY IsaT(10), Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
\* T2M-END R2M0351_PdPF_QuarNoReg


<1>tpP.        
 K11 /\ UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>> => K11'
 BY IsaT(10), Sizes, Location, Design DEF K11, Sizes, Location, Design
\* T2M-END R2M0337_PdPF_K11


<1>YC9.        
 SI7 /\ UNCHANGED <<iv, sentry>> => SI7'
 BY IsaT(10), Sizes, Location, Design DEF SI7, Sizes, Location, Design
\* T2M-END R2M0387_PdPF_SI7

\* T2M-SCOPE R2M0388_PdPF_SI8

<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


<1>tBwTmQQcbnLwQhG1tDC.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rpgS, rt, rx, schoice, sentry, sfly, sgen, skey, sled, smap, sown, sprefc, spst, squar, sready, torn, xd, xdst, xg, xk, xlt, xnt, xp, xprefixOK, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF SPrefixLand, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kaM21zASX82iL0.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K1'
<2> USE ONLY <1>kaM21zASX82iL0, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YSx2aA1OebSLzS.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K3'
<2> USE ONLY <1>YSx2aA1OebSLzS, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ddgbiyxjiCd2wi.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K4'
<2> USE ONLY <1>ddgbiyxjiCd2wi, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LIWq3JqaklFj5l.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K5'
<2> USE ONLY <1>LIWq3JqaklFj5l, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OgdQjwJS5BafWb.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K6'
<2> USE ONLY <1>OgdQjwJS5BafWb, Sizes, Location, Design
<2>1. K6
 BY V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, pgn, pr, pst, sfly, sled>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>IM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uzxoPPRuHrNWW8B.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K11'
<2> USE ONLY <1>uzxoPPRuHrNWW8B, Sizes, Location, Design
<2>1. K11
 BY V21_Inv_K11, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>tpP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZcqjG1hJQrFoEBG.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K13'
<2> USE ONLY <1>ZcqjG1hJQrFoEBG, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Uo7hyBBcujRR1P1.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K14'
<2> USE ONLY <1>Uo7hyBBcujRR1P1, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q81jJCNJGOdWDMw.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE K17'
<2> USE ONLY <1>Q81jJCNJGOdWDMw, Sizes, Location, Design
<2>1. K17
 BY V21_Inv_K17, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpg>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aXu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>i9Unbl3ymzbiOn.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE S2'
<2> USE ONLY <1>i9Unbl3ymzbiOn, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jSkaxAoetr3yiK.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE S3'
<2> USE ONLY <1>jSkaxAoetr3yiK, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Txks9RbVYjI5HL.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE S4'
<2> USE ONLY <1>Txks9RbVYjI5HL, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>l2auHwogYXNBOihVjURDP2K.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE GenFiltered'
<2> USE ONLY <1>l2auHwogYXNBOihVjURDP2K, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WmFixI5qTnEXzJZYOfpo.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE OneReply'
<2> USE ONLY <1>WmFixI5qTnEXzJZYOfpo, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TmDrpreuzpjhohhuDavUq.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QuarNoReg'
<2> USE ONLY <1>TmDrpreuzpjhohhuDavUq, Sizes, Location, Design
<2>1. QuarNoReg
 BY V21_Inv_QuarNoReg, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, pst>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>agy0tgaoa, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CuISNiOcsBZzOGB.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE SI7'
<2> USE ONLY <1>CuISNiOcsBZzOGB, Sizes, Location, Design
<2>1. SI7
 BY V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, sentry>>
 BY <1>tBwTmQQcbnLwQhG1tDC, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>YC9, Sizes, Location, Design DEF Sizes, Location, Design

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


<1>knT42UB9YEYmwYY9jKIfEM2F.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE SendOwnLanded'
<2> USE ONLY <1>knT42UB9YEYmwYY9jKIfEM2F, Sizes, Location, Design
<2>1. SendOwnLanded /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixLand, basevars, ghV, instV, kV, pgV, recV, rtV, xV, BaseSendOwnLanded, SendOwnLanded, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0668_PdQSPrefixLand_SendOwnLanded


<1> QED BY <1>kaM21zASX82iL0, <1>YSx2aA1OebSLzS, <1>ddgbiyxjiCd2wi, <1>LIWq3JqaklFj5l, <1>OgdQjwJS5BafWb, <1>uzxoPPRuHrNWW8B, <1>ZcqjG1hJQrFoEBG, <1>Uo7hyBBcujRR1P1, <1>Q81jJCNJGOdWDMw, <1>i9Unbl3ymzbiOn, <1>jSkaxAoetr3yiK, <1>Txks9RbVYjI5HL, <1>l2auHwogYXNBOihVjURDP2K, <1>WmFixI5qTnEXzJZYOfpo, <1>TmDrpreuzpjhohhuDavUq, <1>CuISNiOcsBZzOGB, <1>kMDNVyaPMtq8pxwkLlb6jVDMSjZyK4doO, <1>UJG1c0SBnmoMxrIiuODuUV1tN8TeDtVVnpik4ihgM, <1>knT42UB9YEYmwYY9jKIfEM2F, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_SPrefixLand SHA e50979ac54547cad8997c7a244b2a355c99ca9aa42fedf2649287008496d2a1b
USE DEF ShapeNetFrame
HIDE DEF Part_SPrefixLand_01_02, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K11, V21_Inv_K13, V21_Inv_K14, V21_Inv_K17, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_OneReply, V21_Inv_PrivateMapOwner, V21_Inv_QuarNoReg, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_SendOwnLanded, V21_SFollowStatic, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
LEMMA ShapeEffect_SPrefixLand ==
 ASSUME NEW p \in SPages, Sizes, Design, SPrefixLand(p)
 PROVE net'=net
 BY ONLY SPrefixLand(p), Sizes, Design, SMTT(5) DEF SPrefixLand, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_SPrefixLand ==
 ASSUME NEW p \in SPages, Sizes, Design, IndInv, MessageShape, SPrefixLand(p)
 PROVE MessageShape'
 BY ONLY Sizes, Design, SPrefixLand(p), MessageShape, ShapeEffect_SPrefixLand, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_SPrefixLand SHA 69d225b04e1cf76715695dba9492f328bb06a6a74a392c588c29809a4a7cfd5c
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_SPrefixLand, ShapeNetFrame
THEOREM DomainKeep_SPrefixLand ==
 ASSUME NEW p \in SPages, Sizes, Location, Design, PinInv, SPrefixLand(p)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, SPrefixLand(p), ShapeEffect_SPrefixLand
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_SPrefixLand_02 SHA aeca4a55e217e031e4084e487d0b11900244f0605d466b44d71e10fd972d063e
USE DEF V21_Inv_BaseTypeOK, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_QuietConservation, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
HIDE DEF ShapeEffect_SPrefixLand, V21_Inv_MsgXDomain
THEOREM Group_SPrefixLand_02 ==
 ASSUME Sizes, Location, Design,
        NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE (QuietConservation)' /\ (SharedImmutable)' /\ (P_SI2)' /\ (P_SI3)' /\ (MsgXDomain)' /\ (P_B2OffInit)'
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

<1>NSCkmxb0dJwWnvVGC3Aje.        
  ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
  PROVE MsgXDomain'
 BY ONLY <1>NSCkmxb0dJwWnvVGC3Aje, Sizes, Location, Design, DomainKeep_SPrefixLand, SMTT(5)
\* T2M-END R2M0325_PdPDomain_SPrefixLand


<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


<1>pBsIdmqt4D2puddf06CeP.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE P_B2OffInit'
 BY ONLY <1>pBsIdmqt4D2puddf06CeP, Sizes, Location, Design, SMTT(10) DEF SPrefixLand, P_B2OffInit, Sizes, Location, Design
\* T2M-END R2M0506_PdPOff_SPrefixLand


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


<1>jtFNG1OiYVOMGJ.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE P_SI3'
<2> USE ONLY <1>jtFNG1OiYVOMGJ, Sizes, Location, Design
<2>1. P_SI3 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI3, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixLand, basevars, ghV, instV, kV, pgV, recV, rtV, xV, P_SI3, SData, SH, SHeld, SI3, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0639_PdQSPrefixLand_SI3

\* T2M-SCOPE R2M0640_PdQRead_SPrefixLand_K15

<1>Ki0IwxYaksOBxhweKZKz59FAyV99.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE QuietConservation'
<2> USE ONLY <1>Ki0IwxYaksOBxhweKZKz59FAyV99, Sizes, Location, Design
<2>1. QuietConservation /\ P_SI2 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI2, V21_Inv_QuietConservation, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixLand, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, BaseQuietConservation, KPinned, Quiet, QuietConservation, SPin, P_SI2, SI2, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0665_PdQSPrefixLand_QuietConservation

\* T2M-SCOPE R2M0666_PdQSPrefixLand_SI2

<1>EOoj0kTP3ItvOZ.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE P_SI2'
<2> USE ONLY <1>EOoj0kTP3ItvOZ, Sizes, Location, Design
<2>1. P_SI2 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixLand, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Active, P_SI2, SI2, SPin, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0666_PdQSPrefixLand_SI2

\* T2M-SCOPE R2M0667_PdQSPrefixLand_SealOnlyLanded

<1>RpzMFoixk8gXVS6wUilBh6xZT2.        
 ASSUME NEW p \in SPages, PinInv, SPrefixLand(p)
 PROVE SharedImmutable'
<2> USE ONLY <1>RpzMFoixk8gXVS6wUilBh6xZT2, Sizes, Location, Design
<2>1. SharedImmutable /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, V21_Inv_SharedImmutable, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF SPrefixLand, basevars, ghV, instV, kV, pgV, recV, rtV, xV, InFl, NoWriteInto, SharedImmutable, Writing, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0669_PdQSPrefixLand_SharedImmutable

\* T2M-SCOPE R2M0670_PdQSPrefixLand_TypeOK

<1> QED BY <1>Ki0IwxYaksOBxhweKZKz59FAyV99, <1>RpzMFoixk8gXVS6wUilBh6xZT2, <1>EOoj0kTP3ItvOZ, <1>jtFNG1OiYVOMGJ, <1>NSCkmxb0dJwWnvVGC3Aje, <1>pBsIdmqt4D2puddf06CeP, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_SPrefixLand_01_01, Part_SPrefixLand_01_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_SPrefixLand
HIDE DEF DomainKeep_SPrefixLand, V21_Inv_BaseTypeOK, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_QuietConservation, V21_Inv_STypeOK, V21_Inv_SharedImmutable, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS

THEOREM Step_SPrefixLand ==
 ASSUME NEW p \in SPages, Sizes, Location, Design, PinInv, SPrefixLand(p)
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in SPages, Sizes, Location, Design, PinInv, SPrefixLand(u)
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_SPrefixLand_01_01, Part_SPrefixLand_01_02, Group_SPrefixLand_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_SPrefixLand_01_01, Part_SPrefixLand_01_02, Group_SPrefixLand_02, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, SPrefixLand(p), <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, SPrefixLand(p), ShapeKeep_SPrefixLand, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
