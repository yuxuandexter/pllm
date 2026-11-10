---- MODULE PdActionSlice_PHit_02 ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects, PdShapeBase, PdActionSlice_PHit_01

\* Complete original body PdFinalPart_PHit_01_02 SHA 47a2bb830bda176f4ec65d79c465a8dd5c163fa02a4e2bcfd8a498e7f2eaf1b3
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PostIndInvDecomposition, Part_PHit_01_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_BaseSafety, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_KStruct, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_P_B2OffInit, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_QuietConservation, V21_Inv_S2, V21_Inv_S3, V21_Inv_SI7, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_Safety, V21_Inv_SharedImmutable, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sfly, V22_T_sled, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_PHit_01_02 ==
 ASSUME Sizes, Location, Design,
        NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE (KReadIntegrity)' /\ (SharedLedRef)' /\ (K1)' /\ (K2)' /\ (K3)' /\ (K4)' /\ (K5)' /\ (K6)' /\ (K7)' /\ (K8)' /\ (K9)' /\ (K10)' /\ (K11)' /\ (K12)' /\ (K13)' /\ (K14)' /\ (K15)' /\ (K16)' /\ (K17)' /\ (S1)' /\ (S4)' /\ (S5)' /\ (S6)' /\ (NoStrayAccess)' /\ (ReadOwnLanded)' /\ (SendOwnLanded)' /\ (SealOnlyLanded)' /\ (GenFiltered)' /\ (OneReply)' /\ (ReplyTruth)'
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

<1>je.        
 S4 /\ UNCHANGED <<alive, nfail>> => S4'
 BY IsaT(10), Sizes, Location, Design DEF S4, Sizes, Location, Design
\* T2M-END R2M0344_PdPF_S4


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

<1>Jlun1oO4ue.         /\ PInst \subseteq Inst /\ DInst \subseteq Inst
 /\ PInst \cap DInst = {} /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design
\* T2M-END R2M0512_PdQBase


<1>lDA42xkFPLxcY.        
 SendOwnLanded /\ UNCHANGED <<hw, ptl, sdata, sfly, skey, swrite, xg, xlt, xr, xsrc, xsrcP, xsrcS>> => SendOwnLanded'
 BY IsaT(10), Sizes, Location, Design DEF BaseSendOwnLanded, SendOwnLanded, Sizes, Location, Design
\* T2M-END R2M0384_PdPF_SendOwnLanded


<1>awLhek8Og2WpH.        
 NoStrayAccess /\ UNCHANGED <<hw, kfly, krs, pgn, pr, pst, sfly, sgen, sown, spst, xdst, xg, xr, xsrc>> => NoStrayAccess'
 BY P_PagePoolsDisjoint, IsaT(10), Sizes, Location, Design DEF Held, InFl, KHeld, NoStrayAccess, SHeld, Writing, Sizes, Location, Design
\* T2M-END R2M0404_PdPF_NoStrayAccess

\* T2M-SCOPE R2M0406_PdPF_NoFreeUnderRead

<1>w8vWhwdBhzZMoR.        
 SealOnlyLanded /\ UNCHANGED <<hw, pst, ptl, sdata, spst, sready, swrite, xdst>> => SealOnlyLanded'
 BY IsaT(10), Sizes, Location, Design DEF BaseSealOnlyLanded, InFl, NoWriteInto, SealOnlyLanded, SharedImmutable, Writing, Sizes, Location, Design
\* T2M-END R2M0405_PdPF_SealOnlyLanded

\* T2M-SCOPE R2M0408_PdPF_SharedImmutable

<1>xQyCTI6kYpAt.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE UNCHANGED <<alive, crep, dpreOK, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sdata, sentry, sfly, sgen, skey, sled, sown, spst, squar, sready, swrite, torn, xd, xdst, xg, xk, xlt, xnt, xp, xprefixOK, xr, xsrc, xsrcP, xsrcS, xst>>
 BY ONLY <1>xQyCTI6kYpAt, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zRiV0rz.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K1'
<2> USE ONLY <1>zRiV0rz, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UP8Y5bD.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K2'
<2> USE ONLY <1>UP8Y5bD, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mpQF1E9.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K3'
<2> USE ONLY <1>mpQF1E9, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kX9kdTm.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K4'
<2> USE ONLY <1>kX9kdTm, Sizes, Location, Design
<2>1. K4
 BY V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<iv, led, nx, xdst, xk, xsrc, xst>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>pJ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vrwKlxY.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K5'
<2> USE ONLY <1>vrwKlxY, Sizes, Location, Design
<2>1. K5
 BY V21_Inv_K5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, pgn, pr, pst, xg, xr>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>rd, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wOxFNLV.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K6'
<2> USE ONLY <1>wOxFNLV, Sizes, Location, Design
<2>1. K6
 BY V21_Inv_K6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, pgn, pr, pst, sfly, sled>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>IM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DoVOt4p.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K7'
<2> USE ONLY <1>DoVOt4p, Sizes, Location, Design
<2>1. K7
 BY V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kpin, krs, led, pgn, ph, plt, pqp, pr, prefc, pst, ptl, rg, rhit, rpg, sfly, sled>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Gk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tKsjw3a.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K8'
<2> USE ONLY <1>tKsjw3a, Sizes, Location, Design
<2>1. K8
 BY V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hp, iv, led, nx, pgn, ph, plt, pr, pst, ptl, rg, rhit, rpe, rpg, rx, sfly, sled, xg, xlt, xr, xsrc>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>J7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Kk47pbT.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K9'
<2> USE ONLY <1>Kk47pbT, Sizes, Location, Design
<2>1. K9
 BY V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, iv, led, nx, ph, plt, pst, ptl, pvis, rg, rhit, rpg, rx, sfly, sled, xdst, xg, xr>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Dv, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>O9tvWs09.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K10'
<2> USE ONLY <1>O9tvWs09, Sizes, Location, Design
<2>1. K10
 BY V21_Inv_K10, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, nx, pgn, ph, pr, pst, ptl, rg, xdst, xg, xlt, xr>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ahB, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ycdzys55.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K11'
<2> USE ONLY <1>Ycdzys55, Sizes, Location, Design
<2>1. K11
 BY V21_Inv_K11, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<led, nx, ptl, sfly, sled, xlt, xsrc>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>tpP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PNIGyK1O.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K12'
<2> USE ONLY <1>PNIGyK1O, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GvkV42V2.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K13'
<2> USE ONLY <1>GvkV42V2, Sizes, Location, Design
<2>1. K13
 BY V21_Inv_K13, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, hd, ph, rg>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>s6g, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iLct8mYF.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K14'
<2> USE ONLY <1>iLct8mYF, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>U61qDxTV.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K15'
<2> USE ONLY <1>U61qDxTV, Sizes, Location, Design
<2>1. K15
 BY V21_Inv_K15, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, kpin, krs, led, plt, ptl, pvis, sdata, sfly, skey, sled, swrite, xdst>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>LBf, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>INrcrMCV.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K16'
<2> USE ONLY <1>INrcrMCV, Sizes, Location, Design
<2>1. K16
 BY V21_Inv_K16, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, led, pgn, ph, plt, pr, pst, ptl, rg, rpg, sfly, sled, xdst>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>M6Z, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GADBqmjQ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE K17'
<2> USE ONLY <1>GADBqmjQ, Sizes, Location, Design
<2>1. K17
 BY V21_Inv_K17, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpg>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aXu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VbGyWCH.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE S1'
<2> USE ONLY <1>VbGyWCH, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SXGgapX.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE S4'
<2> USE ONLY <1>SXGgapX, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ALolHbZ.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE S5'
<2> USE ONLY <1>ALolHbZ, Sizes, Location, Design
<2>1. S5
 BY V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, nx, ph, rg, rhit, rpg, rx, xdst, xg, xlt, xnt, xr, xst>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Po, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kijS8xW.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE S6'
<2> USE ONLY <1>kijS8xW, Sizes, Location, Design
<2>1. S6
 BY V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xdst, xg, xk, xp, xr, xsrc>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>sk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kWcJY5kEgdNKarkvZU.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE NoStrayAccess'
<2> USE ONLY <1>kWcJY5kEgdNKarkvZU, Sizes, Location, Design
<2>1. NoStrayAccess
 BY V21_Inv_NoStrayAccess, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, kfly, krs, pgn, pr, pst, sfly, sgen, sown, spst, xdst, xg, xr, xsrc>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>awLhek8Og2WpH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q2VLwPwAnrjcXbIO1O.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE ReadOwnLanded'
<2> USE ONLY <1>Q2VLwPwAnrjcXbIO1O, Sizes, Location, Design
<2>1. ReadOwnLanded
 BY V21_Inv_ReadOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<dpreOK, hw, pgn, ph, pr, pst, ptl, pvis, rg, rhit, rpg, xdst>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>V0LNJhFJZYV3Y, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TyArR7BtyCvDIpYteD.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE SendOwnLanded'
<2> USE ONLY <1>TyArR7BtyCvDIpYteD, Sizes, Location, Design
<2>1. SendOwnLanded
 BY V21_Inv_SendOwnLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, ptl, sdata, sfly, skey, swrite, xg, xlt, xr, xsrc, xsrcP, xsrcS>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>lDA42xkFPLxcY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dL64VYZARukflIVSy1w.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE SealOnlyLanded'
<2> USE ONLY <1>dL64VYZARukflIVSy1w, Sizes, Location, Design
<2>1. SealOnlyLanded
 BY V21_Inv_SealOnlyLanded, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hw, pst, ptl, sdata, spst, sready, swrite, xdst>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>w8vWhwdBhzZMoR, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tXIDhLz9WoMcq2A0.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE GenFiltered'
<2> USE ONLY <1>tXIDhLz9WoMcq2A0, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bSs8KtgFLwQOm.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE OneReply'
<2> USE ONLY <1>bSs8KtgFLwQOm, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EdE7b6cjDmItawq.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE ReplyTruth'
<2> USE ONLY <1>EdE7b6cjDmItawq, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>xQyCTI6kYpAt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

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


<1>aSuqsX9.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE P_SI3'
<2> USE ONLY <1>aSuqsX9, Sizes, Location, Design
<2>1. P_SI3 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI3, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, P_SI3, SData, SH, SHeld, SI3, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0561_PdQPHit_SI3

\* T2M-SCOPE R2M0562_PdQPHit_SI5

<1>mtLEHdw.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE SMapIntegrity'
<2> USE ONLY <1>mtLEHdw, Sizes, Location, Design
<2>1. SMapIntegrity /\ P_SI1 /\ P_SI2 /\ STypeOK /\ QT_Base
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF KReadIntegrity, Sizes, Location, Design
<2>3. QED BY <2>1, Design, <1>Jlun1oO4ue, SMTT(5), Sizes, Location DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, SMapIntegrity, P_SI1, P_SI2, SI1, SI2, Active, STypeOK, QT_Base, Sizes, Location, Design
\* T2M-END R2M0632_PdQPHit_Map

\* T2M-SCOPE R2M0633_PdQRead_PHit_KReadIntegrity

<1>SGegLmxufPhegpG3HNs.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE KReadIntegrity'
<2> USE ONLY <1>SGegLmxufPhegpG3HNs, Sizes, Location, Design
<2>1. B2 /\ UNCHANGED basevars
 BY SMTT(10), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>2. SI3'
 BY <2>1, <1>aSuqsX9, Sizes, Location, Design DEF P_SI3, Sizes, Location, Design
<2>3. NoFreeUnderRead' /\ K15' /\ SMapIntegrity'
 BY <2>1, <2>2, <1>NOq3QYRHhz, <1>d4WAbs6, <1>mtLEHdw, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>iYha333pZ, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0633_PdQRead_PHit_KReadIntegrity


<1>jG8FmTxINuSHLwNN.        
 ASSUME PinInv, B2, UNCHANGED <<sentry,xsrcS,squar,kpin,krs>>,
 \A p \in SPages : /\ sprefc'[p] \in Int /\ sprefc'[p]>=sprefc[p]
 /\ (spst'[p]="shared" /\ spst[p] # "shared" => sprefc'[p]>=1)
 PROVE SharedLedRef'
<2> USE ONLY <1>jG8FmTxINuSHLwNN, Sizes, Location, Design
<2>1. SharedLedRef /\ STypeOK
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, V21_Inv_SharedLedRef, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. SUFFICES ASSUME NEW p \in SPages
 PROVE /\ (((spst'[p]="shared" /\ (SRefE(sentry',xsrcS',p)>0 \/ SPin(p)')) \/ SRefQ(squar',p)>0) => sprefc'[p]>=1)
 /\ sprefc'[p]>=SRefQ(squar',p)
 BY Sizes, Location, Design DEF SharedLedRef, Sizes, Location, Design
<2>3. SRefQ(squar,p) \in Nat /\ SRefE(sentry,xsrcS,p) \in Nat
 BY <2>1, <1>JEJP2nT, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF SharedLedRef, SPin, STypeOK, Sizes, Location, Design
\* T2M-END R2M0648_PdQRefSafety


<1>O9xsL.        
 ASSUME NEW i \in PInst, NEW r \in Rq, NEW p \in SPages, PinInv, PHit(i,r,p)
 PROVE SharedLedRef'
<2> USE ONLY <1>O9xsL, Sizes, Location, Design
<2>1. QT_sprefc /\ QT_spst /\ P_SI2
 BY <1>fZ0t, V21_Inv_BaseTypeOK, V21_Inv_P_SI2, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. B2 /\ UNCHANGED <<sentry,xsrcS,squar,kpin,krs>>
 BY SMTT(10), Sizes, Location, Design DEF PHit, basevars, ghV, instV, kV, pgV, recV, rtV, xV, Sizes, Location, Design
<2>3. \A z \in SPages : /\ sprefc'[z] \in Int /\ sprefc'[z]>=sprefc[z]
 /\ (spst'[z]="shared" /\ spst[z] # "shared" => sprefc'[z]>=1)
 BY <2>1, Design, SMTT(10), Sizes, Location DEF PHit, QT_sprefc, QT_spst, P_SI2, SI2, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, <1>jG8FmTxINuSHLwNN, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0650_PdQRef_PHit


<1> QED BY <1>SGegLmxufPhegpG3HNs, <1>O9xsL, <1>zRiV0rz, <1>UP8Y5bD, <1>mpQF1E9, <1>kX9kdTm, <1>vrwKlxY, <1>wOxFNLV, <1>DoVOt4p, <1>tKsjw3a, <1>Kk47pbT, <1>O9tvWs09, <1>Ycdzys55, <1>PNIGyK1O, <1>GvkV42V2, <1>iLct8mYF, <1>U61qDxTV, <1>INrcrMCV, <1>GADBqmjQ, <1>VbGyWCH, <1>SXGgapX, <1>ALolHbZ, <1>kijS8xW, <1>kWcJY5kEgdNKarkvZU, <1>Q2VLwPwAnrjcXbIO1O, <1>TyArR7BtyCvDIpYteD, <1>dL64VYZARukflIVSy1w, <1>tXIDhLz9WoMcq2A0, <1>bSs8KtgFLwQOm, <1>EdE7b6cjDmItawq, Sizes, Location, Design DEF Sizes, Location, Design
HIDE DEF P_PagePoolsDisjoint, Part_PHit_01_02, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KReadIntegrity, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S1, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_STypeOK, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, V21_Inv_SharedLedRef, V21_SFollowStatic, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_kpin, V22_T_krs, V22_T_ph, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
====
