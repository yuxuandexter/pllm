---- MODULE PdFinalAction_DRecvNopost ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_4cf173485b87d54f, PdFinalInvProjections, PdFinalEffects, PdSizeFacts, PdShapeBase, PdActionSlice_DRecvNopost_03

\* Complete original body PdFinalPart_DRecvNopost_02_02 SHA f0c2b86c63162f4c818d8e22d54aebbfff443f206bcbee86a3aa10df49ddf7bb
HIDE DEF AuxType_4cf173485b87d54f, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_DRecvNopost_01_01, Part_DRecvNopost_01_02, Part_DRecvNopost_02_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_GenFiltered, V21_Inv_HitIdentity, V21_Inv_K13, V21_Inv_K14, V21_Inv_K15, V21_Inv_K16, V21_Inv_K6, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S4, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SizeParameterTypes, V22_SizeProductBound, V22_SizeRangeFacts, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_kfly, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_sfly, V22_T_sled, V22_T_torn, V22_T_xd, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xr, V22_T_xsrc, V22_T_xst
THEOREM Part_DRecvNopost_02_02 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE (PrefcMatchesHolders)' /\ (SendOwnLanded)' /\ (K3)' /\ (K5)' /\ (K8)' /\ (K9)' /\ (K10)' /\ (K11)' /\ (QuarNeverMapped)' /\ (QuarNoReg)' /\ (SI7)' /\ (EntryQuarantineDisjoint)' /\ (K1)' /\ (K12)' /\ (K17)' /\ (S1)' /\ (S2)' /\ (S3)'
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


           ez8hZbQN7k == \A i \in PInst, r \in Rq : ph'[i][r]=ph[i][r] /\ rg'[i][r]=rg[i][r]


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

           RD_SendShared == B2 => \A x \in Xids : hw[x]="fly" => \A p \in xsrcS[x] \cup xsrcP[x] :
                sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])

           AEZsS == gen \in [Rq -> 0..MG]



           o5G2 == rt \in [Rq -> {"idle", "wait", "ok", "err"}]



           Zd4y == rp \in [Rq -> {0} \cup Inst]



           jY_U == rd \in [Rq -> {0} \cup Inst]



           O0Gm == hp \in [Rq -> [Gens -> {0} \cup Inst]]



           RwXY == hd \in [Rq -> [Gens -> {0} \cup Inst]]



           jb4aTlh == alive \in [Inst -> BOOLEAN]



           zaBQrrW == nfail \in 0..MaxFail



           pc8eUz == torn \in [Inst -> SUBSET Inst]



           m1zx9S == kpin \in [Inst -> [KSlots -> BOOLEAN]]



           djyOpL == kfly \in [Inst -> [KSlots -> BOOLEAN]]



           c02OO == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]



           AydA == ph \in [Inst -> [Rq -> PhSet]]



           nNeM == rg \in [Inst -> [Rq -> 0..MG]]



           q1Ohy == rpg \in [Inst -> [Rq -> 0..NP]]



           E1MnW == rpe \in [Inst -> [Rq -> {0} \cup Inst]]



           QC9Q == rx \in [Inst -> [Rq -> 0..MX]]



           EYS1sP == rhit \in [Inst -> [Rq -> BOOLEAN]]



           OyyWS == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]



           IwCp == pr \in [Pages -> 0..NR]



           vS7em == pgn \in [Pages -> 0..MG]



           bFwlN == plt \in [Pages -> 0..PS]



           rO4YE == ptl \in [Pages -> -1..PS]



           Bq5Edl == pvis \in [Pages -> BOOLEAN]



           dcfPK == led \in [Pages -> SUBSET Xids]



           Xc_ngV == sfly \in [Pages -> SUBSET (Rq \X Gens)]



           h9WLgd == sled \in [Pages -> SUBSET (Rq \X Gens)]



           p1YmMe5 == prefc \in [Pages -> 0..NR]



           vRZWI == pqp \in [Pages -> {0} \cup Inst]



           a1R5 == xr \in [Xids -> 0..NR]



           CXAy == xg \in [Xids -> 0..MG]



           ok5g == xk \in [Xids -> {"none", "wr", "rd"}]



           vdyX == xp \in [Xids -> {0} \cup Inst]



           C4fb == xd \in [Xids -> {0} \cup Inst]



           Uzgo58 == xsrc \in [Xids -> 0..NP]



           JjZ1PO == xdst \in [Xids -> 0..NP]



           PwcfA == xnt \in [Xids -> 0..PS]



           DpA4 == hw \in [Xids -> {"none", "fly", "issued", "stop"}]



           DnMxp == hok \in [Xids -> BOOLEAN]



           fr1A == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]



           PD2ZN == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]



           OfQy9 == xlt \in [Xids -> 0..PS]



           SHJS == nx \in 1..(MX + 1)



           qvLUP == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]



           Q1j7VI == drep \in [Rq -> [Gens -> 0..2]]



           jC41VF == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]



           MuHyNw3 == dsucc \in [Rq -> [Gens -> BOOLEAN]]



           MZsmqs == gbad \in BOOLEAN



           QLAWp == AEZsS /\ o5G2 /\ Zd4y /\ jY_U /\ O0Gm /\ RwXY /\ jb4aTlh /\ zaBQrrW /\ pc8eUz /\ m1zx9S /\ djyOpL /\ c02OO /\ AydA /\ nNeM /\ q1Ohy /\ E1MnW /\ QC9Q /\ EYS1sP /\ OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ rO4YE /\ Bq5Edl /\ dcfPK /\ Xc_ngV /\ h9WLgd /\ p1YmMe5 /\ vRZWI /\ a1R5 /\ CXAy /\ ok5g /\ vdyX /\ C4fb /\ Uzgo58 /\ JjZ1PO /\ PwcfA /\ DpA4 /\ DnMxp /\ fr1A /\ PD2ZN /\ OfQy9 /\ SHJS /\ qvLUP /\ Q1j7VI /\ jC41VF /\ MuHyNw3 /\ MZsmqs


           \* T2M-LOCAL-VISIBILITY

           ceHpLbR5HIr(x) == LET p == xdst[x] IN
               pst[p] = "drain" /\ led[p] \ {x} = {} /\ sled[p] = {} /\ ~KPinned(p)



           la_ki7li_iL7z(x) == LET p == xdst[x] IN
             /\ pst' = [pst EXCEPT ![p] = IF ceHpLbR5HIr(x) THEN "free" ELSE @]
             /\ pr' = [pr EXCEPT ![p] = IF ceHpLbR5HIr(x) THEN 0 ELSE @]
             /\ pgn' = [pgn EXCEPT ![p] = IF ceHpLbR5HIr(x) THEN 0 ELSE @]
             /\ plt' = [plt EXCEPT ![p] = IF ceHpLbR5HIr(x) THEN 0 ELSE @]
             /\ led' = [led EXCEPT ![p] = @ \ {x}]
             /\ xst' = [xst EXCEPT ![x] = "revoked"]


           \* T2M-LOCAL-VISIBILITY

           RD_RegSafe == \A x \in Xids : iv'[x]="reg" => iv[x]="reg" /\ pst'[xsrc[x]] # "quar"

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF XDML1U9, tlO9iBs, QBnU7cB, iGX8myh, lFqpdWPov, ymH9PIO1, fPjFBORLz, F1sonJDZX, PROpiGS, ZvLl9MXuDe, UocQWXW, DS5PFCAl, adGzfibq, xquGDY0L5, Ik68hrHx, cqEVxOCSG2bV, bUx1Ft3v1, gDlQbBc2EG, BDe_IdWz8uGR, Ex6xsGb, ez8hZbQN7k, RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_SendShared, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, ceHpLbR5HIr, la_ki7li_iL7z, RD_RegSafe

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


<1>IGL3qfJM.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE EntryQuarantineDisjoint'
<2> HIDE DEF SFollow, CoreTypeOK, STypeOK
<2>old. EntryQuarantineDisjoint
 BY ONLY <1>IGL3qfJM, V21_Inv_EntryQuarantineDisjoint, Sizes, Location, Design, SMTT(5)
<2>zero. 0 \notin Pages
 BY ONLY Sizes, SMTT(5) DEF Pages, Sizes
<2> DEFINE DQ_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0
           DQ_Src(x) == IF DQ_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0
           DQ_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}
           DQ_Quarantine(x) == x \in sentry /\ ~DQ_Close(x) /\
             ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))
           DQ_SX == [x \in Xids |-> IF DQ_Posted(x) THEN
             (IF DQ_Src(x) \in SPages /\ spst[DQ_Src(x)]="shared" THEN {DQ_Src(x)} ELSE {}) ELSE xsrcS[x]]
           DQ_E == (sentry \cup {x \in Xids : DQ_Posted(x)}) \ {x \in Xids : DQ_Close(x) \/ DQ_Quarantine(x)}
           DQ_Q == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
             UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : DQ_Quarantine(x)}})
<2> HIDE DEF DQ_Posted, DQ_Src, DQ_Close, DQ_Quarantine, DQ_SX, DQ_E, DQ_Q
<2>off. CASE ~B2
 BY ONLY <2>off, SMTT(5) DEF EntryQuarantineDisjoint
<2>on. CASE B2
 <3>noNew. \A x \in Xids : ~DQ_Posted(x)
  BY ONLY <1>IGL3qfJM, <2>zero, SMTT(5) DEF DQ_Posted
 <3>sentry. sentry'=DQ_E
  BY ONLY <1>IGL3qfJM, <2>on, V22_SF_Sentry, SMTT(5)
  DEF V22_SF_Sentry, V22_FE2, V22_FPosted, V22_FClose, V22_FQuarantine, DQ_E, DQ_Posted, DQ_Close, DQ_Quarantine
 <3>source. xsrcS'=DQ_SX
  BY ONLY <1>IGL3qfJM, <2>on, V22_SF_SourceShared, SMTT(5)
  DEF V22_SF_SourceShared, V22_FSX, V22_FPosted, V22_FSrc, DQ_SX, DQ_Posted, DQ_Src
 <3>squar. squar'=DQ_Q
  BY ONLY <1>IGL3qfJM, <2>on, V22_SF_Squar, SMTT(5)
  DEF V22_SF_Squar, V22_FQ2, V22_FQuarantine, V22_FClose, DQ_Q, DQ_Quarantine, DQ_Close
 <3>type. sentry \subseteq Xids
  BY ONLY <1>IGL3qfJM, V22_T_sentry, SMTT(5)
 <3>member. \A x \in sentry' : x \in sentry /\ x \in Xids /\ ~DQ_Quarantine(x)
  BY ONLY <3>noNew, <3>sentry, <3>type, SMTT(5) DEF DQ_E
 <3>each. ASSUME NEW x \in sentry', NEW p \in xsrcS'[x]
          PROVE <<x,p>> \notin squar'
  <4>oldX. x \in sentry /\ x \in Xids /\ ~DQ_Quarantine(x)
   BY ONLY <3>member, <3>each, SMTT(5)
  <4>oldP. p \in xsrcS[x]
   BY ONLY <3>noNew, <3>source, <3>each, <4>oldX, SMTT(5) DEF DQ_SX
  <4>oldPair. <<x,p>> \notin squar
   BY ONLY <2>old, <2>on, <4>oldX, <4>oldP, SMTT(5) DEF EntryQuarantineDisjoint
  <4>qed. QED BY ONLY <3>squar, <4>oldX, <4>oldPair, SMTT(5) DEF DQ_Q
 <3>qed. QED BY ONLY <2>on, <3>each, SMTT(5) DEF EntryQuarantineDisjoint
<2>qed. QED BY ONLY <2>off, <2>on, SMTT(5)

<1>vx9OnCyVIC.        
 PinInv => \A x \in Xids : xk[x] # "none" => xp[x] \in PInst /\ xd[x] \in DInst
<2>1. PinInv => K1 /\ K2 BY V21_Inv_K1, V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K1, K2, Sizes, Location, Design


<1>FucRHugzSvH45SIUQE.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
 PROVE ez8hZbQN7k /\ UNCHANGED xsrc
<2> USE ONLY <1>FucRHugzSvH45SIUQE, Sizes, Location, Design
<2>1. Ex6xsGb /\ (\A x \in Xids : xk[x] # "none" => xp[x] \in PInst /\ xd[x] \in DInst)
 BY <1>rC6T, <1>vx9OnCyVIC, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>HsRNXPeY1C, Sizes, Design, SMTT(10), Location DEF ez8hZbQN7k, AfterEv, DRecvNopost, EvidenceAt, KPinned, KSlots, PageTo, PinBlocks, ghV, instV, kV, recV, rtV, PInst, Ex6xsGb, Sizes, Location, Design


<1>O2jjLxO3uy6k0pq6yp89GmjmyqiZs5RStKSo.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x) /\ SFollow
 PROVE EntryQuarantineDisjoint'
 BY ONLY <1>O2jjLxO3uy6k0pq6yp89GmjmyqiZs5RStKSo, Sizes, Location, Design, <1>FucRHugzSvH45SIUQE, <1>IGL3qfJM DEF Sizes, Location, Design


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Tq.        
 S3 /\ UNCHANGED <<torn>> => S3'
 BY IsaT(10), Sizes, Location, Design DEF S3, Sizes, Location, Design
\* T2M-END R2M0343_PdPF_S3

\* T2M-SCOPE R2M0451_PdPF_B2OffInit

<1>Af.        
 S2 /\ UNCHANGED <<nx, xg, xr>> => S2'
 BY IsaT(10), Sizes, Location, Design DEF S2, Sizes, Location, Design
\* T2M-END R2M0342_PdPF_S2


<1>Wu.        
 K1 /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>> => K1'
 BY IsaT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
\* T2M-END R2M0353_PdPF_K1


<1>ps.        
 S1 /\ UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>> => S1'
 BY IsaT(10), Sizes, Location, Design DEF Active, ExpInst, S1, Sizes, Location, Design
\* T2M-END R2M0341_PdPF_S1

\* T2M-SCOPE R2M0346_PdPF_S6

<1>aXu.        
 K17 /\ UNCHANGED <<kpin, krs, ph, rg, rpg>> => K17'
 BY IsaT(10), Sizes, Location, Design DEF K17, Sizes, Location, Design
\* T2M-END R2M0340_PdPF_K17


<1>ui5.        
 K12 /\ UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>> => K12'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, K12, Sizes, Location, Design
\* T2M-END R2M0362_PdPF_K12


<1>qwG2OTwwfkJZyI7a4ni.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, rd, rg, rp, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xp, xr, xsrc>>
 BY ONLY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF DRecvNopost, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GOMlbegF657fwk.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE K1'
<2> USE ONLY <1>GOMlbegF657fwk, Sizes, Location, Design
<2>1. K1
 BY V21_Inv_K1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gen, hd, hp, rd, rp, rt>>
 BY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Wu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OzGhBC8YQTnF8OA.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE K12'
<2> USE ONLY <1>OzGhBC8YQTnF8OA, Sizes, Location, Design
<2>1. K12
 BY V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<drep, dsucc, gen, hd, hok, hp, hw, iv, net, nx, xdst, xg, xk, xlt, xr, xsrc>>
 BY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ui5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ELeVEct6kpCjG2h.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE K17'
<2> USE ONLY <1>ELeVEct6kpCjG2h, Sizes, Location, Design
<2>1. K17
 BY V21_Inv_K17, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<kpin, krs, ph, rg, rpg>>
 BY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>aXu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qNaDecEIsCS0NN.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE S1'
<2> USE ONLY <1>qNaDecEIsCS0NN, Sizes, Location, Design
<2>1. S1
 BY V21_Inv_S1, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, ph, rg, rx, xd, xg, xk, xp, xr>>
 BY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ps, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ft1Pyw7GNuC0iX.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE S2'
<2> USE ONLY <1>ft1Pyw7GNuC0iX, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Dkw8taBuHkthAF.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE S3'
<2> USE ONLY <1>Dkw8taBuHkthAF, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ivFfcVr6Rc1eHuIs8.         B2 /\ SFollow => RD_HUpdate /\ RD_MUpdate /\ RD_XUpdate
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_HUpdate, RD_MUpdate, RD_XUpdate, RD_HPin, RD_HLive, RD_Posted, RD_Src, Sizes, Location, Design


<1>lQA2.         PinInv => STypeOK /\ (B2 => SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6)
 BY SMTT(10), V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uaJsMuSZCFU.         SFollow => RD_SFrame
 BY ZenonT(10), Sizes, Location, Design DEF SFollow, RD_SFrame, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cIrFCXuTtPxBU.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE UNCHANGED <<xsrcS,xsrcP>>
<2> USE ONLY <1>cIrFCXuTtPxBU, Sizes, Location, Design
<2>1. STypeOK /\ xsrc \in [Xids -> 0..NP]
 <3>project. CoreTypeOK => xsrc \in [Xids -> 0..NP]
  BY ONLY ZenonT(5) DEF CoreTypeOK
 <3>base. CoreTypeOK /\ STypeOK
  BY ONLY <1>cIrFCXuTtPxBU, V21_Inv_BaseTypeOK, V21_Inv_STypeOK, Sizes, Location, Design, SMTT(5)
 <3>qed. QED BY ONLY <3>project, <3>base, SMTT(5)
<2>2. CASE ~B2
 BY ONLY <1>cIrFCXuTtPxBU, Sizes, Location, Design, <2>2, <2>2, SMTT(10), V21_SFollowOff DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. \A x \in Xids : ~(xsrc'[x] \in Pages /\ xsrc[x]=0)
 BY ONLY <1>cIrFCXuTtPxBU, Sizes, Location, Design, <2>3, Sizes, SMTT(10) DEF Pages, Sizes, Location, Design
 <3>2. xsrcS'=[x \in Xids |-> xsrcS[x]] /\ xsrcP'=[x \in Xids |-> xsrcP[x]]
 BY ONLY <1>cIrFCXuTtPxBU, Sizes, Location, Design, <2>3, <2>3, <3>1, <1>ivFfcVr6Rc1eHuIs8, SMTT(10) DEF RD_XUpdate, RD_Posted, Sizes, Location, Design
 <3>3. QED BY <2>1, <3>2, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
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


<1>BeoqOTbNFxOyFnZ.        
 ASSUME PinInv, SFollow, UNCHANGED <<xsrc,hw,xr,xg>>
 PROVE RD_SendShared'
<2> USE ONLY <1>BeoqOTbNFxOyFnZ, Sizes, Location, Design
<2>1. RD_SendShared
 BY SMTT(10), V21_Inv_SendOwnLanded, Sizes, Location, Design DEF SendOwnLanded, RD_SendShared, Sizes, Location, Design
<2>2. RD_SFrame /\ UNCHANGED <<xsrcS,xsrcP>>
 BY <1>uaJsMuSZCFU, <1>cIrFCXuTtPxBU, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RD_SendShared, RD_SFrame, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UukBaziv337.         BaseSendOwnLanded' /\ RD_SendShared' => SendOwnLanded'
 BY SMTT(10), Sizes, Location, Design DEF SendOwnLanded, RD_SendShared, Sizes, Location, Design
\* T2M-LOCAL-VISIBILITY

<1>tTZ2hqRJK6ZWpo9by.        
  BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>> => BaseSendOwnLanded'
  BY Zenon, Sizes, Location, Design DEF BaseSendOwnLanded, SendOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>e0lZiYK4tB4yDC.        
  ASSUME NEW x \in Xids, DRecvNopost(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>e0lZiYK4tB4yDC, Sizes, Location, Design, Design, SMTT(10) DEF DRecvNopost, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Sntpb9MpD4ZSxg5N3Lo5H3.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>Sntpb9MpD4ZSxg5N3Lo5H3, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>>
  BY <1>e0lZiYK4tB4yDC, SMTT(10), V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, SendOwnLanded, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>tTZ2hqRJK6ZWpo9by, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0905_PdRDPort_PdDRecvNopostFramesA

\* T2M-SCOPE R2M0906_PdRDPort_PdDRecvNopostFactsA

<1>jCiajANmrqmcSHNQnPQysWr3t.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE SendOwnLanded'
<2> USE ONLY <1>jCiajANmrqmcSHNQnPQysWr3t, Sizes, Location, Design
<2>1. UNCHANGED <<xsrc,hw,xr,xg>>
 BY SMTT(10), Sizes, Location, Design DEF DRecvNopost, ghV, instV, kV, recV, rtV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>Sntpb9MpD4ZSxg5N3Lo5H3, <1>BeoqOTbNFxOyFnZ, <1>UukBaziv337, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>ehhcsRiRFo2AgxFG2NMvHrkVJZuwCr3.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>ehhcsRiRFo2AgxFG2NMvHrkVJZuwCr3, Sizes, Location, Design, <1>RWvTkqQsVDwnRge2Q5E0XkOXe, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>ztnr6iAa3fuRil.        
  ASSUME NEW x \in Xids, SHJS, K2, InFl(x)
  PROVE x < nx
  BY ONLY <1>ztnr6iAa3fuRil, Sizes, Location, Design, SMT DEF SHJS, Xids, K2, InFl, Sizes, Location, Design



<1>msaCiIFaNrC6o7cs.        
  ASSUME NEW x \in Xids, SHJS, K1, K2, K3, InFl(x)
  PROVE xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x] /\ xd[x] \in DInst
<2> USE ONLY <1>msaCiIFaNrC6o7cs, Sizes, Location, Design
<2>1. x < nx
  BY <1>ztnr6iAa3fuRil, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMT, Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M1152_PdRDLegacy_PP_PdDataLemmas


<1>ImL4YAUizwx.        
  ASSUME NEW x \in Xids, PinInv, InFl(x)
  PROVE xdst[x] \in Pages /\ x \in led[xdst[x]]
<2> USE ONLY <1>ImL4YAUizwx, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. x < nx /\ xdst[x] \in Pages
  BY <2>1, <1>ztnr6iAa3fuRil, <1>msaCiIFaNrC6o7cs, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K2, K3, K4, InFl, ExpPage, InitPage, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>jgHIH5Q17K7.        
  ASSUME NEW x \in Xids, PinInv, hw[x] = "fly"
  PROVE xsrc[x] \in Pages /\ Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>jgHIH5Q17K7, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, <1>ztnr6iAa3fuRil, SMTT(10), Sizes, Location, Design DEF InFl, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF K1, K2, K3, ExpPage, InitPage, ExpInst, InitInst, InFl, Sizes, Location, Design
\* T2M-END R2M1153_PdRDLegacy_PP_PdDDataA


<1>HAf1afl7XEIWE2.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE /\ Mode = "push" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ x < nx /\ xdst[x] \in Pages /\ x \in led[xdst[x]]
        /\ iv[x] = "nopost" /\ hw[x] = "none"
<2> USE ONLY <1>HAf1afl7XEIWE2, Sizes, Location, Design
<2>1. K2 /\ K3 /\ K4 /\ K12 /\ SHJS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. Mode = "push" /\ xk[x] = "wr" /\ xst[x] = "posted"
          /\ \E m \in net : m.t = "nopost" /\ m.x = x
  BY SMTT(10), Sizes, Location, Design DEF DRecvNopost, Sizes, Location, Design
<2>3. x < nx /\ xdst[x] \in Pages
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, SHJS, Xids, ExpPage, Sizes, Location, Design
<2>4. iv[x] = "nopost"
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>5. hw[x] = "none" /\ x \in led[xdst[x]]
  BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF K3, K4, ExpPage, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>LCKGW1iMOUB8BVR.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE /\ la_ki7li_iL7z(x)
        /\ UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, pqp, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
<2> USE ONLY <1>LCKGW1iMOUB8BVR, Sizes, Location, Design
<2>1. K7 /\ OyyWS /\ dcfPK /\ h9WLgd /\ p1YmMe5 /\ vRZWI /\ IwCp /\ vS7em /\ bFwlN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. xdst[x] \in Pages /\ x \in led[xdst[x]]
  BY <1>HAf1afl7XEIWE2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF DRecvNopost, EvidenceAt, PageTo, AfterEv, PinBlocks, ceHpLbR5HIr, la_ki7li_iL7z, K7, OyyWS, dcfPK, h9WLgd, p1YmMe5, vRZWI, IwCp, vS7em, bFwlN, rtV, instV, kV, recV, ghV, Sizes, Location, Design
\* T2M-END R2M1154_PdRDLegacy_PP_PdDRecvNopostEffectsA


<1>eJjlpL5PAK8.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE K3'
<2> USE ONLY <1>eJjlpL5PAK8, Sizes, Location, Design
<2>1. K3 /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K3, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. la_ki7li_iL7z(x) /\ UNCHANGED <<hok, hw, iv, xk, xlt, xnt>>
  BY <1>LCKGW1iMOUB8BVR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>HAf1afl7XEIWE2, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF CqeHw, DInst, InFl, Inst, IsD, IsP, K3, KPinned, NL, ceHpLbR5HIr, la_ki7li_iL7z, PD2ZN, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>Sf95P2tRPrA.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE K5'
<2> USE ONLY <1>Sf95P2tRPrA, Sizes, Location, Design
<2>1. K5 /\ dcfPK /\ vS7em /\ IwCp /\ OyyWS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K5, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. la_ki7li_iL7z(x) /\ UNCHANGED <<xg, xr>>
  BY <1>LCKGW1iMOUB8BVR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>HAf1afl7XEIWE2, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K5, KPinned, NL, ceHpLbR5HIr, la_ki7li_iL7z, OwnedBy, dcfPK, vS7em, IwCp, OyyWS, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>aG0MNY5y6AZ.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE K8'
<2> USE ONLY <1>aG0MNY5y6AZ, Sizes, Location, Design
<2>1. K8 /\ K1 /\ K2 /\ dcfPK /\ vS7em /\ bFwlN /\ IwCp /\ OyyWS /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K2, V21_Inv_K8, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. la_ki7li_iL7z(x) /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hok, hp, hw, iv, nx, ph, ptl, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>LCKGW1iMOUB8BVR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>HAf1afl7XEIWE2, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF Active, DInst, ExpInst, ExpPage, InitInst, InitPage, Inst, IsD, IsP, K1, K2, K8, KPinned, NL, ceHpLbR5HIr, la_ki7li_iL7z, OwnedBy, dcfPK, vS7em, bFwlN, IwCp, OyyWS, PD2ZN, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>xGENfC5TNGv.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE K9'
<2> USE ONLY <1>xGENfC5TNGv, Sizes, Location, Design
<2>1. K9 /\ K8 /\ dcfPK /\ vS7em /\ bFwlN /\ IwCp /\ OyyWS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K8, V21_Inv_K9, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. la_ki7li_iL7z(x) /\ UNCHANGED <<drep, gen, hd, hp, iv, nx, ph, ptl, pvis, rg, rhit, rpe, rpg, rx, sfly, sled, xdst, xg, xlt, xr, xsrc>>
  BY <1>LCKGW1iMOUB8BVR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>HAf1afl7XEIWE2, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF Active, DInst, Inst, IsD, IsP, K8, K9, KPinned, NL, ceHpLbR5HIr, la_ki7li_iL7z, OwnedBy, dcfPK, vS7em, bFwlN, IwCp, OyyWS, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>GWT45kCAPMDM.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE K10'
<2> USE ONLY <1>GWT45kCAPMDM, Sizes, Location, Design
<2>1. K10 /\ vS7em /\ IwCp /\ OyyWS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K10, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. la_ki7li_iL7z(x) /\ UNCHANGED <<hok, hw, nx, ph, ptl, rg, xdst, xg, xlt, xr>>
  BY <1>LCKGW1iMOUB8BVR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>HAf1afl7XEIWE2, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, K10, KPinned, NL, ceHpLbR5HIr, la_ki7li_iL7z, OwnedBy, vS7em, IwCp, OyyWS, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>tM0O5PchdlEf.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE K11'
<2> USE ONLY <1>tM0O5PchdlEf, Sizes, Location, Design
<2>1. K11 /\ K1 /\ K2 /\ dcfPK /\ PD2ZN
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K1, V21_Inv_K11, V21_Inv_K2, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. la_ki7li_iL7z(x) /\ UNCHANGED <<crep, drep, dsucc, gen, hd, hok, hp, hw, iv, nx, ptl, rd, rp, rt, sfly, sled, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>LCKGW1iMOUB8BVR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>HAf1afl7XEIWE2, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF DInst, ExpInst, ExpPage, InitInst, InitPage, Inst, IsD, IsP, K1, K11, K2, KPinned, NL, ceHpLbR5HIr, la_ki7li_iL7z, dcfPK, PD2ZN, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>McWg9UCf17d1QcQaR2NTpHkS.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE QuarNeverMapped'
<2> USE ONLY <1>McWg9UCf17d1QcQaR2NTpHkS, Sizes, Location, Design
<2>1. QuarNeverMapped /\ K7 /\ dcfPK /\ vS7em /\ bFwlN /\ IwCp /\ OyyWS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K7, V21_Inv_QuarNeverMapped, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. la_ki7li_iL7z(x) /\ UNCHANGED <<gen, kpin, krs, ph, pqp, prefc, ptl, rg, rhit, rpg, sfly, sled>>
  BY <1>LCKGW1iMOUB8BVR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>HAf1afl7XEIWE2, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF Active, DInst, GrownP, Inst, IsD, IsP, K7, KPinned, Maps, NHits, NL, ceHpLbR5HIr, la_ki7li_iL7z, QuarNeverMapped, dcfPK, vS7em, bFwlN, IwCp, OyyWS, Tag, KPages, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>fBg96qObXUXRHyc3mV.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE QuarNoReg'
<2> USE ONLY <1>fBg96qObXUXRHyc3mV, Sizes, Location, Design
<2>1. QuarNoReg /\ dcfPK /\ OyyWS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_KStruct, V21_Inv_QuarNoReg, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, QLAWp, Sizes, Location, Design
<2>2. la_ki7li_iL7z(x) /\ UNCHANGED <<iv>>
  BY <1>LCKGW1iMOUB8BVR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>HAf1afl7XEIWE2, <1>ImL4YAUizwx, <1>jgHIH5Q17K7, Design, Location, Sizes, SMTT(10) DEF DInst, Inst, IsD, IsP, KPinned, NL, ceHpLbR5HIr, la_ki7li_iL7z, QuarNoReg, dcfPK, OyyWS, Tag, KPages, Sizes, Location, Design
\* T2M-END R2M1162_PdRDLegacy_PP_PdDRecvNopostStepsA

\* T2M-SCOPE R2M1163_PdRDLegacy_PdPAgg_DRecvNopost
\* T2M-BODY R2M1163_PdRDLegacy_PdPAgg_DRecvNopost
\* T2M-LOCAL-VISIBILITY

<1>LDQTEIbfmyfiL.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
  PROVE K3'
  BY ONLY <1>LDQTEIbfmyfiL, Sizes, Location, Design, <1>eJjlpL5PAK8, V21_Inv_K3 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>fND6LNSgETp9e.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
  PROVE K5'
  BY ONLY <1>fND6LNSgETp9e, Sizes, Location, Design, <1>Sf95P2tRPrA, V21_Inv_K5 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>JYfKPWfBcYtYb.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
  PROVE K8'
  BY ONLY <1>JYfKPWfBcYtYb, Sizes, Location, Design, <1>aG0MNY5y6AZ, V21_Inv_K8 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>AmFW93Obcw0K8.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
  PROVE K9'
  BY ONLY <1>AmFW93Obcw0K8, Sizes, Location, Design, <1>xGENfC5TNGv, V21_Inv_K9 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>oehBoNZa1UelrX.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
  PROVE K10'
  BY ONLY <1>oehBoNZa1UelrX, Sizes, Location, Design, <1>GWT45kCAPMDM, V21_Inv_K10 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>f5OLUIc2XfSGf0.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
  PROVE K11'
  BY ONLY <1>f5OLUIc2XfSGf0, Sizes, Location, Design, <1>tM0O5PchdlEf, V21_Inv_K11 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>FSXwbD1hzMhrEmFUXbjanBcIdp.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
  PROVE QuarNeverMapped'
  BY ONLY <1>FSXwbD1hzMhrEmFUXbjanBcIdp, Sizes, Location, Design, <1>McWg9UCf17d1QcQaR2NTpHkS, V21_Inv_QuarNeverMapped DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>q4RsOekIwrfhUl6Tya31.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>q4RsOekIwrfhUl6Tya31, Sizes, Location, Design, <1>fBg96qObXUXRHyc3mV, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1163_PdRDLegacy_PdPAgg_DRecvNopost


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

<1>lsjuoBt9NWo.        
 ASSUME PinInv, SFollow, RD_RegSafe
 PROVE SI7'
<2> USE ONLY <1>lsjuoBt9NWo, Sizes, Location, Design
<2>1. SI7 /\ K3
 BY SMTT(10), V21_Inv_K3, V21_Inv_SI7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, SMTT(10), Sizes, Location, Design DEF SI7, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RD_EQUpdate BY <2>3, <1>y69bbnw8OExl0j, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW x \in Xids, iv'[x]="reg" PROVE x \in sentry'
  <4>1. iv[x]="reg" /\ pst'[xsrc[x]] # "quar" /\ xk[x]="wr" /\ x \in sentry
  BY <2>1, <2>3, <3>2, SMTT(10), Sizes, Location, Design DEF RD_RegSafe, SI7, K3, Sizes, Location, Design
  <4>2. ~RD_Close(x) /\ ~RD_Quarantine(x)
  BY <3>2, <4>1, SMTT(10), Sizes, Location, Design DEF RD_Close, RD_Quarantine, Sizes, Location, Design
  <4>3. QED BY <3>1, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF RD_EQUpdate, RD_E2, Sizes, Location, Design
 <3>3. QED BY <3>2, SMTT(10), Sizes, Location, Design DEF SI7, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1349_PdRDRegPreserve


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

<1>lshiFRLrwaCjvhfSKE.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE SI7'
 BY ONLY <1>lshiFRLrwaCjvhfSKE, Sizes, Location, Design, <1>TxrwntymJCbMclu4t3HHdv, <1>lsjuoBt9NWo, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1370_PdRDR2SI7_DRecvNopost


<1> QED BY <1>ehhcsRiRFo2AgxFG2NMvHrkVJZuwCr3, <1>jCiajANmrqmcSHNQnPQysWr3t, <1>LDQTEIbfmyfiL, <1>fND6LNSgETp9e, <1>JYfKPWfBcYtYb, <1>AmFW93Obcw0K8, <1>oehBoNZa1UelrX, <1>f5OLUIc2XfSGf0, <1>FSXwbD1hzMhrEmFUXbjanBcIdp, <1>q4RsOekIwrfhUl6Tya31, <1>lshiFRLrwaCjvhfSKE, <1>O2jjLxO3uy6k0pq6yp89GmjmyqiZs5RStKSo, <1>GOMlbegF657fwk, <1>OzGhBC8YQTnF8OA, <1>ELeVEct6kpCjG2h, <1>qNaDecEIsCS0NN, <1>ft1Pyw7GNuC0iX, <1>Dkw8taBuHkthAF, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_DRecvNopost SHA 8fb5d7557d25273f9168f8bf804b50a9ac0baebb5ed085da2673bfdcd423da85
USE DEF ShapeNetFrame
HIDE DEF Part_DRecvNopost_02_02, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_EntryQuarantineDisjoint, V21_Inv_K1, V21_Inv_K10, V21_Inv_K11, V21_Inv_K12, V21_Inv_K17, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuarNoReg, V21_Inv_S1, V21_Inv_S2, V21_Inv_S3, V21_Inv_SI7, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V21_SFollowStatic, V22_SF_Sentry, V22_SF_SourceShared, V22_SF_Squar, V22_T_dedupSeen, V22_T_dpreOK, V22_T_hitSeen, V22_T_iv, V22_T_kpin, V22_T_krs, V22_T_nx, V22_T_ph, V22_T_pst, V22_T_rg, V22_T_rpgS, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sgen, V22_T_skey, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_xdst, V22_T_xprefixOK, V22_T_xsrcP, V22_T_xsrcS
LEMMA ShapeEffect_DRecvNopost ==
 ASSUME NEW x \in Xids, Sizes, Design, DRecvNopost(x)
 PROVE net'=net
 BY ONLY DRecvNopost(x), Sizes, Design, SMTT(5) DEF DRecvNopost, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_DRecvNopost ==
 ASSUME NEW x \in Xids, Sizes, Design, IndInv, MessageShape, DRecvNopost(x)
 PROVE MessageShape'
 BY ONLY Sizes, Design, DRecvNopost(x), MessageShape, ShapeEffect_DRecvNopost, ShapeNetFrame, SMTT(5)

\* Complete original body PdDomain_DRecvNopost SHA dc797bd2f7a7ec8be4bcfc6d98f9e01e94f3a6b0e5fb95cab3f257d99b8ce2dd
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_DRecvNopost, ShapeNetFrame
THEOREM DomainKeep_DRecvNopost ==
 ASSUME NEW x \in Xids, Sizes, Location, Design, PinInv, DRecvNopost(x)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net'=net
 BY ONLY Sizes, Location, Design, PinInv, DRecvNopost(x), ShapeEffect_DRecvNopost
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_DRecvNopost_03 SHA 4240aab86e532aaaf5abc4d144bc0eb4c72f26a0d40f133ee73606a21d6b8079
USE DEF V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_ReplyTruth, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst
HIDE DEF ShapeEffect_DRecvNopost, V21_Inv_MsgXDomain
THEOREM Group_DRecvNopost_03 ==
 ASSUME Sizes, Location, Design,
        NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE (OneReply)' /\ (ReplyTruth)' /\ (SharedImmutable)' /\ (P_B2OffInit)' /\ (MsgXDomain)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
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

<1>VBu1FdlWsc2WG1M1jBulYcF10kh.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>VBu1FdlWsc2WG1M1jBulYcF10kh, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>VBu1FdlWsc2WG1M1jBulYcF10kh, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF DRecvNopost, ghV, instV, kV, recV, rtV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dvTvEjDPal6Fsn2iL1ata.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>dvTvEjDPal6Fsn2iL1ata, Sizes, Location, Design, DomainKeep_DRecvNopost, SMTT(5)
\* T2M-END R2M0279_PdPDomain_DRecvNopost


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>m948gxWe0.        
 P_B2OffInit /\ UNCHANGED <<dedupSeen, dpreOK, hitSeen, rpgS, schoice, sdata, sentry, sgen, skey, smap, sown, sprefc, spst, squar, sready, swrite, xprefixOK, xsrcP, xsrcS>> => P_B2OffInit'
 BY IsaT(10), Sizes, Location, Design DEF P_B2OffInit, SInit, Sizes, Location, Design
\* T2M-END R2M0451_PdPF_B2OffInit


<1>BBQUQLHXJe.        
 ReplyTruth /\ UNCHANGED <<crep, dsucc>> => ReplyTruth'
 BY IsaT(10), Sizes, Location, Design DEF ReplyTruth, Sizes, Location, Design
\* T2M-END R2M0349_PdPF_ReplyTruth


<1>XnYly5EW.        
 OneReply /\ UNCHANGED <<crep, drep>> => OneReply'
 BY IsaT(10), Sizes, Location, Design DEF OneReply, Sizes, Location, Design
\* T2M-END R2M0348_PdPF_OneReply


<1>qwG2OTwwfkJZyI7a4ni.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, rd, rg, rp, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xp, xr, xsrc>>
 BY ONLY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF DRecvNopost, ghV, instV, kV, recV, rtV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Kfw5gN9X3NOK6pAnH6eJ.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE OneReply'
<2> USE ONLY <1>Kfw5gN9X3NOK6pAnH6eJ, Sizes, Location, Design
<2>1. OneReply
 BY V21_Inv_OneReply, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep>>
 BY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>XnYly5EW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H13ng0tzxb8EscQ1umjsYS.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>H13ng0tzxb8EscQ1umjsYS, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>qwG2OTwwfkJZyI7a4ni, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OHVEf9ynzi2yAeu1Sjglr.        
 ASSUME NEW x \in Xids, PinInv, DRecvNopost(x), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>OHVEf9ynzi2yAeu1Sjglr, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0463_PdPOff_DRecvNopost


<1> QED BY <1>Kfw5gN9X3NOK6pAnH6eJ, <1>H13ng0tzxb8EscQ1umjsYS, <1>VBu1FdlWsc2WG1M1jBulYcF10kh, <1>OHVEf9ynzi2yAeu1Sjglr, <1>dvTvEjDPal6Fsn2iL1ata, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_DRecvNopost_01_01, Part_DRecvNopost_01_02, Part_DRecvNopost_02_01, Part_DRecvNopost_02_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_DRecvNopost
HIDE DEF DomainKeep_DRecvNopost, V21_Inv_OneReply, V21_Inv_P_B2OffInit, V21_Inv_ReplyTruth, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst

THEOREM Step_DRecvNopost ==
 ASSUME NEW x \in Xids, Sizes, Location, Design, PinInv, DRecvNopost(x), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Xids, Sizes, Location, Design, PinInv, DRecvNopost(u), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_DRecvNopost_01_01, Part_DRecvNopost_01_02, Part_DRecvNopost_02_01, Part_DRecvNopost_02_02, Group_DRecvNopost_03, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_DRecvNopost_01_01, Part_DRecvNopost_01_02, Part_DRecvNopost_02_01, Part_DRecvNopost_02_02, Group_DRecvNopost_03, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, DRecvNopost(x), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, DRecvNopost(x), ShapeKeep_DRecvNopost, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
