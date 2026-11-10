---- MODULE PdFinalAction_DReadFail ----
\* V22-SCOPE: sequential-interface; unreferenced named-theorem definitions hidden for each copied body.
EXTENDS PdPBase, FiniteSetTheorems, PdFinalAuxType_065f61dad67eb9e2, PdFinalInvProjections, PdFinalEffects, PdSharedRefCounts, PdShapeBase, PdActionSlice_DReadFail_02

\* Complete original body PdFinalPart_DReadFail_03_02 SHA 8042c2cda77ef73899aff895579846d79484c9ce7501d1282302b71a810b8e86
HIDE DEF AuxType_065f61dad67eb9e2, ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, Part_DReadFail_01_01, Part_DReadFail_01_02, Part_DReadFail_02_01, Part_DReadFail_02_02, Part_DReadFail_03_01, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_Inv_EntryQuarantineDisjoint, V21_Inv_HitIdentity, V21_Inv_K10, V21_Inv_K11, V21_Inv_K14, V21_Inv_K15, V21_Inv_K17, V21_Inv_K3, V21_Inv_KReadIntegrity, V21_Inv_MsgXDomain, V21_Inv_NoEvictUnderRDMA, V21_Inv_NoFreeUnderRead, V21_Inv_NoStrayAccess, V21_Inv_P_B2OffInit, V21_Inv_PrivateMapOwner, V21_Inv_QuarNeverMapped, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_Inv_SI7, V21_Inv_SInd, V21_Inv_SealOnlyLanded, V21_Inv_SharedImmutable, V21_Inv_SharedLedRef, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_PostSharedRefZero, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SRefE_Empty, V22_SRefQ_Empty, V22_SRefR_Empty, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_SharedRefZero, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_pgn, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP
THEOREM Part_DReadFail_03_02 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE (K12)' /\ (K13)' /\ (PrefcMatchesHolders)' /\ (K4)' /\ (K6)' /\ (QuarNoReg)' /\ (SendOwnLanded)' /\ (K5)' /\ (SI8)' /\ (S1)' /\ (S6)' /\ (OneReply)' /\ (S5)'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RD_SFrame == UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>


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

           RD_RdOpenBack == \A x \in Xids : (xk'[x]="rd" /\ xst'[x]="posted") => (xk[x]="rd" /\ xst[x]="posted")

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

           PdJrO(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])



           IVktI(m) == m.t = "hello" => m.fr \in Inst



           VawcR(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))



           njcW8(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))



           dJpcb(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])



           Y8U_7(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])



           Hdijl(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")



           AL7Oa(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)



           jjAuj(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))



           CsPNLN(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))



           wuoDNx7(m) ==
             /\ PdJrO(m)
             /\ IVktI(m)
             /\ VawcR(m)
             /\ njcW8(m)
             /\ dJpcb(m)
             /\ Y8U_7(m)
             /\ Hdijl(m)
             /\ AL7Oa(m)
             /\ jjAuj(m)
             /\ CsPNLN(m)


           \* T2M-LOCAL-VISIBILITY

           PE_PhType == ph \in [Inst -> [Rq -> PhSet]]


           PE_NxType == nx \in 1..(MX+1)


           PE_Types == PE_PhType /\ PE_NxType



           PE_Domains == \A x \in Xids : x < nx =>
            /\ xr[x] \in Rq
            /\ ExpInst(x) \in Inst
            /\ (InitPage(x) # 0 => InitInst(x) \in Inst)



           PE_Effect(j,r) ==
            /\ ph' = [ph EXCEPT ![j][r] = "end"]
            /\ UNCHANGED <<nx, rg, rx, xr, xg, xk, xp, xd, xsrc, xdst>>



           PE_Monotone == \A i \in Inst, s \in Rq :
            /\ (ph[i][s] # "none" => ph'[i][s] # "none")
            /\ (ph'[i][s] \notin {"none","end"} => ph'[i][s] = ph[i][s])


           \* T2M-LOCAL-VISIBILITY

           KzCrkyAp2x2bxL6h(j,r) ==
             /\ PageTo(rpg[j][r],GiveUpTo(rpg[j][r],"timeout"),rpe[j][r],led[rpg[j][r]],sled[rpg[j][r]])
             /\ UNCHANGED <<ptl,pvis,sfly,kpin,kfly,krs,hw,xr,xg,xk,xsrc,xdst,xnt,xlt,hok,xst,nx>>


           \* T2M-LOCAL-VISIBILITY

           SbBYu4pWxTHT(j,r,g,ok) ==
             /\ ph' = [ph EXCEPT ![j][r] = "end"]
             /\ drep' = [drep EXCEPT ![r][g] = 1]
             /\ dsucc' = IF ok THEN [dsucc EXCEPT ![r][g] = TRUE] ELSE dsucc
             /\ UNCHANGED <<rg,hd,crep>> /\ ~gbad'


           \* T2M-LOCAL-VISIBILITY

           DReadFailD2Added(j,r) == {Msg("reply",j,0,r,rg[j][r],0,0,0,FALSE),Msg("abort",j,rpe[j][r],r,rg[j][r],0,0,0,FALSE)}


           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RD_SFrame, RD_HPin, RD_HLive, RD_HUpdate, RD_MUpdate, RD_Posted, RD_Src, RD_XUpdate, RD_Close, RD_Quarantine, RD_E2, RD_RefDelta, RD_HolderTypes, RD_Q2, RD_EQUpdate, RD_RdOpenBack, RD_SendShared, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, QLAWp, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, wuoDNx7, PE_PhType, PE_NxType, PE_Types, PE_Domains, PE_Effect, PE_Monotone, KzCrkyAp2x2bxL6h, SbBYu4pWxTHT, DReadFailD2Added

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

<1>XSpO6sXnRte.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc, RD_RdOpenBack
 PROVE SI8'
<2> USE ONLY <1>XSpO6sXnRte, Sizes, Location, Design
<2>1. SI8 /\ UNCHANGED <<xsrcS,xsrcP>>
 BY <1>cIrFCXuTtPxBU, SMTT(10), V21_Inv_SI8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY <2>2, SMTT(10), Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>3. CASE B2
 <3>1. squar \subseteq squar'
 BY <2>3, <1>WNRe9PPHkoFy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW x \in Xids, xk'[x]="rd", xst'[x]="posted"
        PROVE x \in sentry' \/ (\A p \in xsrcS'[x] : <<x,p>> \in squar')
  <4>1. xk[x]="rd" /\ xst[x]="posted" /\ ~RD_Close(x)
  BY <3>2, SMTT(10), Sizes, Location, Design DEF RD_RdOpenBack, RD_Close, Sizes, Location, Design
  <4>2. x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
  BY <2>1, <2>3, <4>1, SMTT(10), Sizes, Location, Design DEF SI8, Sizes, Location, Design
  <4>3. QED BY <2>1, <2>3, <3>1, <4>1, <4>2, <1>vyedVpubW3KMqNND, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>3, <3>2, SMTT(10), Sizes, Location, Design DEF SI8, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0730_PdRDSharedTransfer


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

<1>LXErE8Da9f6QJDe9lrY.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE UNCHANGED <<kpin,krs,gen,xsrc>>
 BY ONLY <1>LXErE8Da9f6QJDe9lrY, Sizes, Location, Design, SMTT(10) DEF DReadFail, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CN0mZYNfgIVf1Nqh.        
  BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>> => BaseSendOwnLanded'
  BY SMTT(5), Sizes, Location, Design DEF BaseSendOwnLanded, SendOwnLanded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Op0Ft7ueVlhM.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DReadFail(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>Op0Ft7ueVlhM, Sizes, Location, Design, ZenonT(5) DEF DReadFail, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tK1LgzYhF9LXEAdAA2oV.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE BaseSendOwnLanded'
<2> USE ONLY <1>tK1LgzYhF9LXEAdAA2oV, Sizes, Location, Design
<2>1. BaseSendOwnLanded /\ UNCHANGED <<hw, ptl, sfly, xlt, xsrc>>
  BY SMTT(5), <1>Op0Ft7ueVlhM, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, SendOwnLanded, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>CN0mZYNfgIVf1Nqh, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0880_PdRDPort_PdDReadFailFrames


<1>kniiXUXunygr4B5IHZpZMlS.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE SendOwnLanded'
<2> USE ONLY <1>kniiXUXunygr4B5IHZpZMlS, Sizes, Location, Design
<2>1. UNCHANGED <<xsrc,hw,xr,xg>>
 BY SMTT(10), Sizes, Location, Design DEF DReadFail, instV, kV, rtV, xV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>tK1LgzYhF9LXEAdAA2oV, <1>BeoqOTbNFxOyFnZ, <1>UukBaziv337, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>ClI7nF3fVhqxMmCMWnVS8jUtly1aJ.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE PrefcMatchesHolders'
 BY ONLY <1>ClI7nF3fVhqxMmCMWnVS8jUtly1aJ, Sizes, Location, Design, <1>RWvTkqQsVDwnRge2Q5E0XkOXe, SMTT(10) DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>HnScJK1sgtcQ4.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE SI8'
<2> USE ONLY <1>HnScJK1sgtcQ4, Sizes, Location, Design
<2>1. UNCHANGED xsrc
 BY <1>LXErE8Da9f6QJDe9lrY, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xk \in [Xids -> {"none","wr","rd"}] /\ xst \in [Xids -> {"none","posted","landed","failed","revoked"}]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>HnScJK1sgtcQ4, V22_T_xk, V22_T_xst, SMTT(5)

<2>3. RD_RdOpenBack
 BY <2>2, SMTT(10), Sizes, Location, Design DEF DReadFail, instV, kV, rtV, xV, RD_RdOpenBack, Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, <1>XSpO6sXnRte, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>UwwC5LVwQr.         TypInv => QLAWp
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, QLAWp, AEZsS, o5G2, Zd4y, jY_U, O0Gm, RwXY, jb4aTlh, zaBQrrW, pc8eUz, m1zx9S, djyOpL, c02OO, AydA, nNeM, q1Ohy, E1MnW, QC9Q, EYS1sP, OyyWS, IwCp, vS7em, bFwlN, rO4YE, Bq5Edl, dcfPK, Xc_ngV, h9WLgd, p1YmMe5, vRZWI, a1R5, CXAy, ok5g, vdyX, C4fb, Uzgo58, JjZ1PO, PwcfA, DpA4, DnMxp, fr1A, PD2ZN, OfQy9, SHJS, qvLUP, Q1j7VI, jC41VF, MuHyNw3, MZsmqs, Sizes, Location, Design
\* T2M-END R2M1108_PdRDLegacy_PP_PdProofBase


<1>laJZVswepl.         K12 <=> (\A m \in net : wuoDNx7(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>zYALeEc.         (\A m \in net' : wuoDNx7(m)') => K12'
  BY ZenonT(5), Sizes, Location, Design DEF K12, wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, Sizes, Location, Design
\* T2M-END R2M1109_PdRDLegacy_PP_PdMessagePred


<1>FbURRGUaI8mg.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DReadFail(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>FbURRGUaI8mg, Sizes, Location, Design, ZenonT(5) DEF DReadFail, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M1111_PdRDLegacy_PP_PdDReadFailFrames

\* T2M-SCOPE R2M1113_PdRDLegacy_PP_PdCell_DReadFail_K17

<1>iQGAp6rWOISLd.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, IsD(j), Active(j,r)
  PROVE rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
<2> USE ONLY <1>iQGAp6rWOISLd, Sizes, Location, Design
<2>1. K8 /\ K9 /\ j \in DInst
  BY Sizes, SMTT(10), V21_Inv_K8, V21_Inv_K9, Location, Design DEF IsD, Inst, DInst, NL, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>OkHaBqshrpAuN.        
  ASSUME NEW r \in Rq, NEW g \in Gens, OneReply, Q1j7VI,
         drep[r][g] = 0, UNCHANGED crep,
         drep' = [drep EXCEPT ![r][g] = Bump(drep[r][g])]
  PROVE OneReply'
<2> USE ONLY <1>OkHaBqshrpAuN, Sizes, Location, Design
<2>1. drep' = [drep EXCEPT ![r][g] = 1]
  BY SMTT(10), Sizes, Location, Design DEF Bump, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF OneReply, Q1j7VI, Sizes, Location, Design
\* T2M-END R2M1115_PdRDLegacy_PP_PdOneReplyIncrement


<1>u5UkXBhTAgXzc2M.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE OneReply'
<2> USE ONLY <1>u5UkXBhTAgXzc2M, Sizes, Location, Design
<2>1. OneReply /\ Q1j7VI
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_OneReply, V21_Inv_Safety, V21_Inv_TypeOK, Sizes, Location, Design DEF Safety, QLAWp, Sizes, Location, Design
<2>2. IsD(j) /\ Active(j,r) /\ UNCHANGED crep
        /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(drep[r][rg[j][r]])]
  BY <1>FbURRGUaI8mg, SMTT(10), Sizes, Location, Design DEF Active, DReadFail, Sizes, Location, Design
<2>3. rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
  BY <2>2, <1>iQGAp6rWOISLd, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>OkHaBqshrpAuN, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1116_PdRDLegacy_PP_PdCell_DReadFail_OneReply


<1>JVZlQLz67CH6.        
 ASSUME PinInv
 PROVE PE_Types
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY <1>JVZlQLz67CH6, V22_T_nx, V22_T_ph, SMTT(5) DEF PE_NxType, PE_PhType, PE_Types

\* T2M-LOCAL-VISIBILITY

<1>vsvT20zUzXQavt.        
 ASSUME PinInv
 PROVE PE_Domains
<2> USE ONLY <1>vsvT20zUzXQavt, Sizes, Location, Design
<2>1. K2 /\ PE_NxType
 BY <1>JVZlQLz67CH6, SMTT(10), V21_Inv_K2, Sizes, Location, Design DEF PE_Types, Sizes, Location, Design
<2>2. \A p \in Pages : Loc(p) \in Inst
 BY Location, SMTT(10), Sizes, Design DEF KPages, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF PE_Domains, K2, PE_NxType, Xids, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>LJJ34B5zOk2.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, PE_Effect(j,r)
 PROVE PE_Monotone
<2> USE ONLY <1>LJJ34B5zOk2, Sizes, Location, Design
<2>1. PE_PhType
 BY <1>JVZlQLz67CH6, SMTT(10), Sizes, Location, Design DEF PE_Types, Sizes, Location, Design
<2>2. \A i \in Inst, s \in Rq :
 ph'[i][s] = IF i=j /\ s=r THEN "end" ELSE ph[i][s]
 BY <2>1, SMTT(10), Sizes, Location, Design DEF PE_Effect, PE_PhType, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF PE_Monotone, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>xUO2wrsz.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, PE_Effect(j,r)
 PROVE S1' /\ S6'
<2> USE ONLY <1>xUO2wrsz, Sizes, Location, Design
<2>1. S1 /\ S6 /\ PE_Domains
 BY <1>vsvT20zUzXQavt, SMTT(10), V21_Inv_S1, V21_Inv_S6, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. PE_Monotone BY <1>LJJ34B5zOk2, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED <<nx, rg, rx, xr, xg, xk, xp, xd, xsrc, xdst>>
 BY SMTT(10), Sizes, Location, Design DEF PE_Effect, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF PE_Domains, PE_Monotone, S1, S6, Active, ExpInst, InitInst, InitPage, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>elVi3tbwjOc1ZKJ.        
 ASSUME NEW j \in Inst, NEW r \in Rq, DReadFail(j,r)
 PROVE PE_Effect(j,r)
 BY ONLY <1>elVi3tbwjOc1ZKJ, Sizes, Location, Design, SMTT(10) DEF DReadFail, PE_Effect, rtV, instV, xV, Sizes, Location, Design
\* T2M-END R2M1117_PdRDLegacy_PdPEndDReadFail


<1>gnrkEzyto.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
 PROVE S1'
 BY ONLY <1>gnrkEzyto, Sizes, Location, Design, <1>elVi3tbwjOc1ZKJ, <1>xUO2wrsz, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1118_PdRDLegacy_PP_PdCell_DReadFail_S1


<1>qI3lA.        
  ASSUME S5, UNCHANGED <<rx,rpg,rg,rhit,hw,hok,xlt,xnt,xst,iv,xdst,xr,xg,nx>>,
         \A a \in Inst, u \in Rq : ph'[a][u] \in {"run","ovl"} => ph[a][u] \in {"run","ovl"}
  PROVE S5'
  BY ONLY <1>qI3lA, Sizes, Location, Design, Sizes, SMTT(10) DEF S5, Inst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1120_PdRDLegacy_PP_PdRecordPhaseFrames


<1>Dh5INA3Df.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE S5'
<2> USE ONLY <1>Dh5INA3Df, Sizes, Location, Design
<2>1. S5 /\ AydA
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_S5, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. UNCHANGED <<rx,rpg,rg,rhit,hw,hok,xlt,xnt,xst,iv,xdst,xr,xg,nx>>
  BY <1>FbURRGUaI8mg, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A a \in Inst, u \in Rq :
           /\ (ph[a][u] # "none" => ph'[a][u] # "none")
           /\ (Active(a,u)' => Active(a,u))
           /\ (ph'[a][u] \in {"run","ovl"} => ph[a][u] \in {"run","ovl"})
  BY <2>1, SMTT(10), Sizes, Location, Design DEF Active, DReadFail, AydA, ghV, instV, kV, recV, rtV, xV, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>qI3lA, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1121_PdRDLegacy_PP_PdCell_DReadFail_S5


<1>ftUeMWYzU.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
 PROVE S6'
 BY ONLY <1>ftUeMWYzU, Sizes, Location, Design, <1>elVi3tbwjOc1ZKJ, <1>xUO2wrsz, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M1122_PdRDLegacy_PP_PdCell_DReadFail_S6


<1>KeUX3AwuU5dZGL50.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>g8jy7gNFRfg8tk1s77xK.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, Active(i,r)
  PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (~rhit[i][r] => pst[rpg[i][r]] = "priv" /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r])
        /\ (IsP(i) => ~rhit[i][r])
        /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  BY ONLY <1>g8jy7gNFRfg8tk1s77xK, Sizes, Location, Design, SMTT(10) DEF K8, Active, OwnedBy, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>q1AhR7YJDkbhhVWM7.        
  ASSUME NEW i \in DInst, NEW r \in Rq, K9, rhit[i][r]
  PROVE /\ ph[i][r] \in {"run","ovl","end"}
        /\ (ph[i][r] \in {"run","ovl"} => pst[rpg[i][r]] = "shared" /\ Tag(r,rg[i][r]) \in sled[rpg[i][r]])
  BY ONLY <1>q1AhR7YJDkbhhVWM7, Sizes, Location, Design, Zenon DEF K9, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>aePmohnVtJzWT.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE /\ IsD(j) /\ j \in DInst /\ Active(j,r)
        /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
        /\ rg[j][r] \in Gens /\ rg[j][r] <= gen[r]
        /\ drep[r][rg[j][r]] = 0 /\ ~rhit[j][r] /\ pst[rpg[j][r]] = "priv" /\ ph[j][r] = "rd"
<2> USE ONLY <1>aePmohnVtJzWT, Sizes, Location, Design
<2>1. IsD(j) /\ Active(j,r) /\ K8 /\ K9 /\ ph[j][r] = "rd"
  BY SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF DReadFail, Active, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>g8jy7gNFRfg8tk1s77xK, <1>iQGAp6rWOISLd, <1>q1AhR7YJDkbhhVWM7, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>PaTRXeVzGij3cu2.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DReadFail(j,r)
  PROVE /\ ph' = [ph EXCEPT ![j][r] = "end"]
        /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(drep[r][rg[j][r]])]
        /\ UNCHANGED dsucc
        /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,crep,rg,rpg,rpe,rx,rhit>>
  BY ONLY <1>PaTRXeVzGij3cu2, Sizes, Location, Design, SMTT(10) DEF DReadFail, rtV, instV, kV, recV, pgV, xV, ghV, vars, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>jpQ3kdSbyp03XOEVZX.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DReadFail(j,r)
  PROVE KzCrkyAp2x2bxL6h(j,r)
  BY ONLY <1>jpQ3kdSbyp03XOEVZX, Sizes, Location, Design, Design, SMTT(10) DEF KzCrkyAp2x2bxL6h, DReadFail, rtV, instV, kV, recV, pgV, xV, ghV, vars, Sizes, Location, Design
\* T2M-END R2M1124_PdRDLegacy_PP_PdD2DReadFailEffect


<1>siZMoIk7IzKyu9.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE /\ led' = led /\ sled' = sled
        /\ \A p \in Pages : sled'[p] \subseteq sled[p]
<2> USE ONLY <1>siZMoIk7IzKyu9, Sizes, Location, Design
<2>1. dcfPK /\ h9WLgd /\ rpg[j][r] \in Pages
  BY <1>aePmohnVtJzWT, <1>UwwC5LVwQr, SMTT(10), V21_Inv_KStruct, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, KStruct, Sizes, Location, Design
<2>2. KzCrkyAp2x2bxL6h(j,r)
  BY <1>jpQ3kdSbyp03XOEVZX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF KzCrkyAp2x2bxL6h, PageTo, PageToG, GrownOwn, GFr, GTo, GrownOf, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, dcfPK, h9WLgd, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>REMPM4C1ZQLpNz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE \A p \in Pages : IsP(Loc(p)) => UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<2> USE ONLY <1>REMPM4C1ZQLpNz, Sizes, Location, Design
<2>1. OyyWS /\ IwCp /\ vS7em /\ bFwlN /\ dcfPK /\ h9WLgd
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. IsD(j) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
  BY <1>aePmohnVtJzWT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. KzCrkyAp2x2bxL6h(j,r)
  BY <1>jpQ3kdSbyp03XOEVZX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ASSUME NEW p \in Pages, IsP(Loc(p)) PROVE UNCHANGED <<pst[p],pr[p],pgn[p],plt[p],led[p],sled[p]>>
<3>1. p # rpg[j][r] /\ p \notin GrownOf(j,r)
  BY <2>4, <2>2, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF GrownOf, Sizes, Location, Design
<3>2. QED BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF KzCrkyAp2x2bxL6h, PageTo, PageToG, GrownOwn, GFr, OyyWS, IwCp, vS7em, bFwlN, dcfPK, h9WLgd, Sizes, Location, Design
<2>5. QED BY <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1126_PdRDLegacy_PP_PdD2DReadFailMasks


<1>XzrNSwVoqvC.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, IsD(j), Active(j,r), Mode = "push", rx[j][r] \in Xids
  PROVE rx[j][r] < nx /\ xr[rx[j][r]] = r /\ xg[rx[j][r]] = rg[j][r]
<2> USE ONLY <1>XzrNSwVoqvC, Sizes, Location, Design
<2>1. K8 /\ K9 /\ S5 /\ j \in DInst
  BY <1>KeUX3AwuU5dZGL50, SMTT(10), V21_Inv_K8, V21_Inv_K9, V21_Inv_S5, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ph[j][r] \in {"wait","run","ovl"}
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
<2>3. ~rhit[j][r]
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K9, Xids, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K9, S5, Sizes, Location, Design
\* T2M-END R2M1134_PdRDLegacy_PP_PdD2RevokeFacts


<1>A0pfkf7m3VQpQ.        
  ASSUME PinInv
  PROVE \A u \in Rq, g \in Gens : drep[u][g] = 1 => hd[u][g] \in Inst
<2> USE ONLY <1>A0pfkf7m3VQpQ, Sizes, Location, Design
<2>1. K1 /\ AEZsS
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K1, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. \A u \in Rq, g \in Gens : drep[u][g] = 1 => g <= gen[u]
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K1, AEZsS, Gens, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>KeUX3AwuU5dZGL50, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>ZEkgOWKiWFnqgZ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW g \in Gens, NEW ok \in BOOLEAN,
         K13, Q1j7VI, MuHyNw3, AydA, nNeM,
         drep[r][g] = 0, hd[r][g] = j, rg[j][r] = g,
         \A u \in Rq, h \in Gens : drep[u][h] = 1 => hd[u][h] \in Inst,
         SbBYu4pWxTHT(j,r,g,ok)
  PROVE K13'
<2> USE ONLY <1>ZEkgOWKiWFnqgZ, Sizes, Location, Design
<2>1. ASSUME NEW u \in Rq, NEW h \in Gens
       PROVE /\ drep'[u][h] <= 1
             /\ (dsucc'[u][h] => drep'[u][h] = 1)
             /\ (crep'[u][h] = "ok" => dsucc'[u][h])
             /\ crep'[u][h] # "two"
             /\ (drep'[u][h] = 1 => (rg'[hd'[u][h]][u] > h \/
                   (rg'[hd'[u][h]][u] = h /\ ph'[hd'[u][h]][u] = "end")))
<3>1. CASE u = r /\ h = g
  BY <3>1, SMTT(10), Sizes, Location, Design DEF K13, SbBYu4pWxTHT, Q1j7VI, MuHyNw3, AydA, Sizes, Location, Design
<3>2. CASE u # r \/ h # g
<4>1. drep'[u][h] = drep[u][h] /\ dsucc'[u][h] = dsucc[u][h]
  BY <3>2, SMTT(10), Sizes, Location, Design DEF SbBYu4pWxTHT, Q1j7VI, MuHyNw3, Sizes, Location, Design
<4>2. drep[u][h] = 1 => hd[u][h] \in Inst /\ (ph[hd[u][h]][u] = "end" => ph'[hd[u][h]][u] = "end")
  BY <3>2, SMTT(10), Sizes, Location, Design DEF SbBYu4pWxTHT, AydA, Sizes, Location, Design
<4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF K13, SbBYu4pWxTHT, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K13, SbBYu4pWxTHT, Sizes, Location, Design


\* T2M-LOCAL-VISIBILITY

<1>LNzZvPPaTR5r.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW g \in Gens, NEW ok \in BOOLEAN,
         NEW m, wuoDNx7(m), Q1j7VI, MuHyNw3, drep[r][g] = 0,
         SbBYu4pWxTHT(j,r,g,ok),
         UNCHANGED <<gen,hp,nx,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok>>
  PROVE wuoDNx7(m)'
<2> USE ONLY <1>LNzZvPPaTR5r, Sizes, Location, Design
<2>1. m.t = "reply" => m.r \in Rq /\ m.g \in Gens /\ (m.r # r \/ m.g # g)
  BY SMTT(10), Sizes, Location, Design DEF wuoDNx7, PdJrO, CsPNLN, Sizes, Location, Design
<2>2. CsPNLN(m)'
  BY <2>1, SMTT(10), Sizes, Location, Design DEF wuoDNx7, CsPNLN, SbBYu4pWxTHT, Q1j7VI, MuHyNw3, Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, SbBYu4pWxTHT, CqeHw, Sizes, Location, Design
\* T2M-END R2M1132_PdRDLegacy_PP_PdD2History


<1>gzIVjiS4fZE2xbrP55e4H.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE SbBYu4pWxTHT(j,r,rg[j][r],FALSE)
<2> USE ONLY <1>gzIVjiS4fZE2xbrP55e4H, Sizes, Location, Design
<2>1. drep[r][rg[j][r]] = 0
  BY <1>aePmohnVtJzWT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. ph' = [ph EXCEPT ![j][r] = "end"]
       /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(drep[r][rg[j][r]])]
       /\ UNCHANGED dsucc
       /\ UNCHANGED <<rg,hd,crep>>
  BY <1>PaTRXeVzGij3cu2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. ~gbad'
  BY Design, SMTT(10), V21_Inv_GenFiltered, V21_Inv_Safety, Sizes, Location DEF DReadFail, Safety, GenFiltered, ghV, rtV, instV, kV, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF SbBYu4pWxTHT, Bump, Sizes, Location, Design
\* T2M-END R2M1133_PdRDLegacy_PP_PdD2DReadFailHistory


<1>IkBhV9lpU8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE K12'
<2> USE ONLY <1>IkBhV9lpU8, Sizes, Location, Design
<2>1. K8 /\ K12 /\ Q1j7VI /\ MuHyNw3
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K12, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. rg[j][r] \in Gens /\ rg[j][r] <= gen[r] /\ drep[r][rg[j][r]] = 0 /\ IsD(j) /\ Active(j,r)
  BY <1>aePmohnVtJzWT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hd[r][rg[j][r]] = j
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K8, Active, Sizes, Location, Design
<2>4. SbBYu4pWxTHT(j,r,rg[j][r],FALSE)
       /\ UNCHANGED <<gen,hp,nx,xr,xg,xdst,xsrc,xlt,iv,hw,xk,hok>>
  BY <1>gzIVjiS4fZE2xbrP55e4H, <1>FbURRGUaI8mg, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. net' = net \cup DReadFailD2Added(j,r)
  BY SMTT(10), Sizes, Location, Design DEF DReadFail, DReadFailD2Added, Sizes, Location, Design
<2>6. \A m \in net : wuoDNx7(m)'
  BY <2>1, <2>2, <2>4, <1>laJZVswepl, <1>LNzZvPPaTR5r, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. (Mode = "push" /\ rx[j][r] \in Xids) =>
       rx[j][r] < nx /\ xr[rx[j][r]] = r /\ xg[rx[j][r]] = rg[j][r]
  BY <2>2, <1>XzrNSwVoqvC, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>8. ASSUME NEW m \in DReadFailD2Added(j,r) PROVE wuoDNx7(m)'
  BY <2>1, <2>2, <2>3, <2>4, <2>7, SMTT(10), Sizes, Location, Design DEF DReadFailD2Added, SbBYu4pWxTHT, Q1j7VI, MuHyNw3, Msg, wuoDNx7, PdJrO, IVktI, VawcR, njcW8, dJpcb, Y8U_7, Hdijl, AL7Oa, jjAuj, CsPNLN, Sizes, Location, Design
<2>9. QED BY <2>5, <2>6, <2>8, <1>zYALeEc, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1135_PdRDLegacy_PP_PdD2DReadFail_K12


<1>BAgeUMPvrs.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE K13'
<2> USE ONLY <1>BAgeUMPvrs, Sizes, Location, Design
<2>1. K8 /\ K13 /\ Q1j7VI /\ MuHyNw3 /\ AydA /\ nNeM
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K13, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. IsD(j) /\ Active(j,r) /\ rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
  BY <1>aePmohnVtJzWT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hd[r][rg[j][r]] = j
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K8, Active, Sizes, Location, Design
<2>4. SbBYu4pWxTHT(j,r,rg[j][r],FALSE)
  BY <1>gzIVjiS4fZE2xbrP55e4H, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, <1>A0pfkf7m3VQpQ, <1>ZEkgOWKiWFnqgZ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1136_PdRDLegacy_PP_PdD2DReadFail_K13


<1>ovf3YrN0y.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE K4'
<2> USE ONLY <1>ovf3YrN0y, Sizes, Location, Design
<2>1. K4 /\ UNCHANGED <<iv,nx,xdst,xk,xsrc,xst>>
  BY <1>FbURRGUaI8mg, SMTT(10), V21_Inv_K4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED led
  BY <1>siZMoIk7IzKyu9, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K4, ExpPage, InitPage, Sizes, Location, Design
\* T2M-END R2M1138_PdRDLegacy_PP_PdD2DReadFail_K4

\* T2M-SCOPE R2M1139_PdRDLegacy_PP_PdD2DReadFail_K5

<1>rat7OSj2o.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE K5'
<2> USE ONLY <1>rat7OSj2o, Sizes, Location, Design
<2>1. K5 /\ K7 /\ K16 /\ AEZsS /\ DpA4 /\ m1zx9S /\ c02OO /\ dcfPK /\ vS7em /\ AydA /\ bFwlN /\ vRZWI /\ IwCp /\ p1YmMe5 /\ OyyWS /\ rO4YE /\ nNeM /\ EYS1sP /\ q1Ohy /\ Xc_ngV /\ h9WLgd /\ JjZ1PO /\ CXAy /\ a1R5
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_BaseSafety, V21_Inv_K16, V21_Inv_K5, V21_Inv_K7, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF Strengthen, Safety, QLAWp, BaseSafety, Sizes, Location, Design
<2>2. IsD(j) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
  BY <1>aePmohnVtJzWT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. KzCrkyAp2x2bxL6h(j,r)
  BY <1>jpQ3kdSbyp03XOEVZX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, Design, Location, Sizes, SMTT(10) DEF KzCrkyAp2x2bxL6h, Active, FreeOrDrain, GFr, GTo, GiveUpTo, GiveUpToN, GrownOf, GrownOwn, GrownP, InFl, IsD, IsP, K16, K5, K7, KPinned, Maps, NHits, NoWriteInto, OwnedBy, PageTo, PageToG, PinBlocks, AEZsS, DpA4, m1zx9S, c02OO, dcfPK, vS7em, AydA, bFwlN, vRZWI, IwCp, p1YmMe5, OyyWS, rO4YE, nNeM, EYS1sP, q1Ohy, Xc_ngV, h9WLgd, JjZ1PO, CXAy, a1R5, Tag, Writing, KPages, Sizes, Location, Design
\* T2M-END R2M1139_PdRDLegacy_PP_PdD2DReadFail_K5

\* T2M-SCOPE R2M1140_PdRDLegacy_PP_PdD2DReadFail_K6

<1>gKyJgmBjJ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE K6'
<2> USE ONLY <1>gKyJgmBjJ, Sizes, Location, Design
<2>1. K9 /\ K8 /\ K6 /\ K16 /\ Xc_ngV /\ h9WLgd /\ OyyWS /\ IwCp /\ vS7em
  BY <1>UwwC5LVwQr, SMTT(10), V21_Inv_K16, V21_Inv_K6, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF QLAWp, Sizes, Location, Design
<2>2. IsD(j) /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ (~rhit[j][r] /\ pst[rpg[j][r]] = "priv")
  BY <2>1, <1>aePmohnVtJzWT, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. KzCrkyAp2x2bxL6h(j,r)
  BY <1>jpQ3kdSbyp03XOEVZX, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. \A p \in GrownOf(j,r) : sled[p] = {}
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K16, GrownOf, GrownP, Sizes, Location, Design
<2>5. UNCHANGED <<gen,sfly,sled>> /\ \A p \in Pages : sled'[p] \subseteq sled[p]
  BY <1>FbURRGUaI8mg, <1>siZMoIk7IzKyu9, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. \A p \in Pages : sfly'[p] \subseteq sled'[p]
  BY <2>1, <2>5, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
<2>7. ASSUME NEW p \in Pages, NEW t \in sled'[p]
       PROVE t[2] <= gen'[t[1]] /\ (OwnedBy(p,t[1],t[2])' \/ (pst'[p] = "shared" /\ IsD(Loc(p))))
<3>1. t \in sled[p] /\ p \notin GrownOf(j,r)
       /\ t[2] <= gen[t[1]] /\ (OwnedBy(p,t[1],t[2]) \/ (pst[p] = "shared" /\ IsD(Loc(p))))
  BY <2>1, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
<3>2. QED
  BY <2>1, <2>2, <2>3, <2>5, <3>1, Design, SMTT(10), Sizes, Location DEF KzCrkyAp2x2bxL6h, OwnedBy, PageTo, PageToG, GrownOwn, GFr, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, OyyWS, IwCp, vS7em, h9WLgd, Sizes, Location, Design
<2>8. QED BY <2>6, <2>7, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
\* T2M-END R2M1140_PdRDLegacy_PP_PdD2DReadFail_K6


<1>xO9m1wM0GPxgDclj.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE QuarNoReg'
<2> USE ONLY <1>xO9m1wM0GPxgDclj, Sizes, Location, Design
<2>1. QuarNoReg /\ UNCHANGED iv
  BY <1>FbURRGUaI8mg, SMTT(10), V21_Inv_QuarNoReg, V21_Inv_Safety, Sizes, Location, Design DEF Safety, Sizes, Location, Design
<2>2. \A p \in Pages : IsP(Loc(p)) => UNCHANGED <<pst[p],led[p]>>
  BY <1>REMPM4C1ZQLpNz, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF QuarNoReg, Sizes, Location, Design
\* T2M-END R2M1146_PdRDLegacy_PP_PdD2DReadFail_QuarNoReg


<1>VFadXqhUdHF.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
  PROVE K4'
  BY ONLY <1>VFadXqhUdHF, Sizes, Location, Design, <1>ovf3YrN0y, V21_Inv_K4 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>socDjJSdChT.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
  PROVE K5'
  BY ONLY <1>socDjJSdChT, Sizes, Location, Design, <1>rat7OSj2o, V21_Inv_K5 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>iHAEheh65f9.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
  PROVE K6'
  BY ONLY <1>iHAEheh65f9, Sizes, Location, Design, <1>gKyJgmBjJ, V21_Inv_K6 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>ObuT51KItkB3.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
  PROVE K12'
  BY ONLY <1>ObuT51KItkB3, Sizes, Location, Design, <1>IkBhV9lpU8, V21_Inv_K12 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>r2ebKWEMpYVr.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
  PROVE K13'
  BY ONLY <1>r2ebKWEMpYVr, Sizes, Location, Design, <1>BAgeUMPvrs, V21_Inv_K13 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>aC0Vq2cxuHK.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
  PROVE S1'
  BY ONLY <1>aC0Vq2cxuHK, Sizes, Location, Design, <1>gnrkEzyto, V21_Inv_S1 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>ikfvwb2KiWR.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
  PROVE S5'
  BY ONLY <1>ikfvwb2KiWR, Sizes, Location, Design, <1>Dh5INA3Df, V21_Inv_S5 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>uP0dm6WbRuC.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
  PROVE S6'
  BY ONLY <1>uP0dm6WbRuC, Sizes, Location, Design, <1>ftUeMWYzU, V21_Inv_S6 DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>eVdujIUW16URVsaE8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
  PROVE OneReply'
  BY ONLY <1>eVdujIUW16URVsaE8, Sizes, Location, Design, <1>u5UkXBhTAgXzc2M, V21_Inv_OneReply DEF Sizes, Location, Design



\* T2M-LOCAL-VISIBILITY

<1>r4hz9uTmCXl2jXQMwf.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
  PROVE QuarNoReg'
  BY ONLY <1>r4hz9uTmCXl2jXQMwf, Sizes, Location, Design, <1>xO9m1wM0GPxgDclj, V21_Inv_QuarNoReg DEF Sizes, Location, Design
\* T2M-END R2M1147_PdRDLegacy_PdPAgg_DReadFail


<1> QED BY <1>ObuT51KItkB3, <1>r2ebKWEMpYVr, <1>ClI7nF3fVhqxMmCMWnVS8jUtly1aJ, <1>VFadXqhUdHF, <1>iHAEheh65f9, <1>r4hz9uTmCXl2jXQMwf, <1>kniiXUXunygr4B5IHZpZMlS, <1>socDjJSdChT, <1>HnScJK1sgtcQ4, <1>aC0Vq2cxuHK, <1>uP0dm6WbRuC, <1>eVdujIUW16URVsaE8, <1>ikfvwb2KiWR, Sizes, Location, Design DEF Sizes, Location, Design

\* Complete original body PdShape_DReadFail SHA a3c472f57aa9151852b583b14835c8fb45968408b764abe107ff3c2e29f6fb02
USE DEF Shape_T_rg, Shape_T_rpe
HIDE DEF Part_DReadFail_03_02, V21_Inv_BaseSafety, V21_Inv_BaseTypeOK, V21_Inv_GenFiltered, V21_Inv_K1, V21_Inv_K12, V21_Inv_K13, V21_Inv_K16, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K6, V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, V21_Inv_KStruct, V21_Inv_OneReply, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_QuarNoReg, V21_Inv_S1, V21_Inv_S5, V21_Inv_S6, V21_Inv_SI8, V21_Inv_STypeOK, V21_Inv_Safety, V21_Inv_SendOwnLanded, V21_Inv_Strengthen, V21_Inv_TypeOK, V21_SFollowOff, V22_T_nx, V22_T_ph, V22_T_rpgS, V22_T_sentry, V22_T_squar, V22_T_xk, V22_T_xsrcS, V22_T_xst
LEMMA ShapeEffect_DReadFail ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Design, DReadFail(j,r)
 PROVE net' = net \cup {Msg("reply",j,0,r,rg[j][r],0,0,0,FALSE),Msg("abort",j,rpe[j][r],r,rg[j][r],0,0,0,FALSE)}
 BY ONLY DReadFail(j,r), Sizes, Design, SMTT(5) DEF DReadFail, basevars, rtV, instV, recV, pgV, xV, ghV, kV, Design

THEOREM ShapeKeep_DReadFail ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Design, IndInv, MessageShape, DReadFail(j,r)
 PROVE MessageShape'
<1>1. net' = net \cup {Msg("reply",j,0,r,rg[j][r],0,0,0,FALSE),Msg("abort",j,rpe[j][r],r,rg[j][r],0,0,0,FALSE)}
 BY ONLY Sizes, Design, DReadFail(j,r), ShapeEffect_DReadFail
<1>2. rg \in [Inst -> [Rq -> 0..MG]] /\ rpe \in [Inst -> [Rq -> {0} \cup Inst]]
 BY ONLY IndInv, Shape_T_rg, Shape_T_rpe
<1>3. rg[j][r] \in {0} \cup Gens /\ rpe[j][r] \in {0} \cup Inst
 BY ONLY <1>2, j \in Inst, r \in Rq, Sizes, SMTT(5) DEF Sizes, Gens
<1>4. Msg("reply",j,0,r,rg[j][r],0,0,0,FALSE) \in MsgSpace
 BY ONLY <1>3, j \in Inst, r \in Rq, SMTT(5) DEF Msg, MsgSpace, MsgT
<1>5. Msg("abort",j,rpe[j][r],r,rg[j][r],0,0,0,FALSE) \in MsgSpace
 BY ONLY <1>3, j \in Inst, r \in Rq, SMTT(5) DEF Msg, MsgSpace, MsgT
<1>6. QED
 BY ONLY <1>1, <1>4, <1>5, MessageShape, SMTT(5) DEF MessageShape, MsgSpace

\* Complete original body PdDomain_DReadFail SHA a0c74513f7b2a3b61ca7c0dda523f82788086d41cb54c9e8ae706789c47f7023
USE DEF V21_Inv_MsgXDomain
HIDE DEF ShapeKeep_DReadFail, Shape_T_rg, Shape_T_rpe
THEOREM DomainKeep_DReadFail ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, DReadFail(j,r)
 PROVE MsgXDomain'
<1>1. MsgXDomain
 BY ONLY Sizes, Location, Design, PinInv, V21_Inv_MsgXDomain
<1>2. net' = net \cup {Msg("reply",j,0,r,rg[j][r],0,0,0,FALSE),Msg("abort",j,rpe[j][r],r,rg[j][r],0,0,0,FALSE)}
 BY ONLY Sizes, Location, Design, PinInv, DReadFail(j,r), ShapeEffect_DReadFail
<1>4. QED BY ONLY <1>1, <1>2, SMTT(5) DEF MsgXDomain, Msg

\* Complete original body PdFinalGroup_DReadFail_04 SHA 928ef8d3bc6fcffb5784c32b1fbf776f044fd540b890e03de1854360713ab929
USE DEF V21_Inv_GenFiltered, V21_Inv_K14, V21_Inv_K2, V21_Inv_K3, V21_Inv_P_B2OffInit, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst
HIDE DEF ShapeEffect_DReadFail, V21_Inv_MsgXDomain
THEOREM Group_DReadFail_04 ==
 ASSUME Sizes, Location, Design,
        NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE (K2)' /\ (K3)' /\ (K14)' /\ (S2)' /\ (S3)' /\ (S4)' /\ (GenFiltered)' /\ (ReplyTruth)' /\ (SharedImmutable)' /\ (P_B2OffInit)' /\ (MsgXDomain)'
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

<1>eAfG8nxShOGNIAzE48b4W85qD.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE SharedImmutable'
<2> USE ONLY <1>eAfG8nxShOGNIAzE48b4W85qD, Sizes, Location, Design
<2>1. xdst \in [Xids -> 0..NP]

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>eAfG8nxShOGNIAzE48b4W85qD, V22_T_xdst, SMTT(5)

<2>2. UNCHANGED xdst
 BY Design, SMTT(10), Sizes, Location DEF DReadFail, instV, kV, rtV, xV, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>UoOnqFdN5hlmOkH5yaHH03rU, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qMpfr4dxT30EEoG4jF2.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
  PROVE MsgXDomain'
 BY ONLY <1>qMpfr4dxT30EEoG4jF2, Sizes, Location, Design, DomainKeep_DReadFail, SMTT(5)
\* T2M-END R2M0278_PdPDomain_DReadFail


<1>nhjUq2OEs98FL.         SFollow => UNCHANGED <<sown, sgen, skey, swrite, sdata, sready, hitSeen, dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design
\* T2M-END R2M0331_PdPSFollowFacts

\* T2M-SCOPE R2M0343_PdPF_S3

<1>Tq.        
 S3 /\ UNCHANGED <<torn>> => S3'
 BY IsaT(10), Sizes, Location, Design DEF S3, Sizes, Location, Design
\* T2M-END R2M0343_PdPF_S3

\* T2M-SCOPE R2M0451_PdPF_B2OffInit

<1>m948gxWe0.        
 P_B2OffInit /\ UNCHANGED <<dedupSeen, dpreOK, hitSeen, rpgS, schoice, sdata, sentry, sgen, skey, smap, sown, sprefc, spst, squar, sready, swrite, xprefixOK, xsrcP, xsrcS>> => P_B2OffInit'
 BY IsaT(10), Sizes, Location, Design DEF P_B2OffInit, SInit, Sizes, Location, Design
\* T2M-END R2M0451_PdPF_B2OffInit


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


<1>ve.        
 K3 /\ UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>> => K3'
 BY IsaT(10), Sizes, Location, Design DEF CqeHw, InFl, K3, Sizes, Location, Design
\* T2M-END R2M0332_PdPF_K3


<1>PH.        
 K2 /\ UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>> => K2'
 BY IsaT(10), Sizes, Location, Design DEF ExpInst, ExpPage, InitInst, InitPage, K2, Sizes, Location, Design
\* T2M-END R2M0357_PdPF_K2


<1>O339bLlNfeq3fIbJy.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY ONLY <1>O339bLlNfeq3fIbJy, Sizes, Location, Design, <1>nhjUq2OEs98FL, Design, SMTT(10) DEF DReadFail, instV, kV, rtV, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WYowcwcv9qsD.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE K2'
<2> USE ONLY <1>WYowcwcv9qsD, Sizes, Location, Design
<2>1. K2
 BY V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, hd, hok, hp, hw, iv, nx, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
 BY <1>O339bLlNfeq3fIbJy, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>PH, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GP4TQeSDYdI3.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE K3'
<2> USE ONLY <1>GP4TQeSDYdI3, Sizes, Location, Design
<2>1. K3
 BY V21_Inv_K3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<hok, hw, iv, xk, xlt, xnt, xst>>
 BY <1>O339bLlNfeq3fIbJy, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ve, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dAsXFkxrVDEbZ.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE K14'
<2> USE ONLY <1>dAsXFkxrVDEbZ, Sizes, Location, Design
<2>1. K14
 BY V21_Inv_K14, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, kfly, kpin, krs>>
 BY <1>O339bLlNfeq3fIbJy, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yYI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>l24eibOldnvU.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE S2'
<2> USE ONLY <1>l24eibOldnvU, Sizes, Location, Design
<2>1. S2
 BY V21_Inv_S2, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<nx, xg, xr>>
 BY <1>O339bLlNfeq3fIbJy, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Af, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>saUROaUvh1tB.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE S3'
<2> USE ONLY <1>saUROaUvh1tB, Sizes, Location, Design
<2>1. S3
 BY V21_Inv_S3, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<torn>>
 BY <1>O339bLlNfeq3fIbJy, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>Tq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>w16F91ehhogK.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE S4'
<2> USE ONLY <1>w16F91ehhogK, Sizes, Location, Design
<2>1. S4
 BY V21_Inv_S4, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, nfail>>
 BY <1>O339bLlNfeq3fIbJy, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>je, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sER3FIOUKI9lHNSeZ5zc4.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE GenFiltered'
<2> USE ONLY <1>sER3FIOUKI9lHNSeZ5zc4, Sizes, Location, Design
<2>1. GenFiltered
 BY V21_Inv_GenFiltered, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gbad>>
 BY <1>O339bLlNfeq3fIbJy, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ujEUqBpYoFz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AEa5IHbPkS4uy13wxIzM.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE ReplyTruth'
<2> USE ONLY <1>AEa5IHbPkS4uy13wxIzM, Sizes, Location, Design
<2>1. ReplyTruth
 BY V21_Inv_ReplyTruth, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, dsucc>>
 BY <1>O339bLlNfeq3fIbJy, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>BBQUQLHXJe, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0368_PdPFrames_DReadFail

\* T2M-SCOPE R2M0462_PdPOff_DReadFail

<1>m50Amn1M7OXCrrpAUNd.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r), SFollow
 PROVE P_B2OffInit'
<2> USE ONLY <1>m50Amn1M7OXCrrpAUNd, Sizes, Location, Design
 <2>1. ~B2 => UNCHANGED sV
 BY V21_SFollowOff, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. P_B2OffInit
 BY V21_Inv_P_B2OffInit, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY ONLY <2>1, <2>2, <1>m948gxWe0, SMTT(10), Sizes, Location, Design DEF P_B2OffInit, sV, Sizes, Location, Design
\* T2M-END R2M0462_PdPOff_DReadFail


<1> QED BY <1>WYowcwcv9qsD, <1>GP4TQeSDYdI3, <1>dAsXFkxrVDEbZ, <1>l24eibOldnvU, <1>saUROaUvh1tB, <1>w16F91ehhogK, <1>sER3FIOUKI9lHNSeZ5zc4, <1>AEa5IHbPkS4uy13wxIzM, <1>eAfG8nxShOGNIAzE48b4W85qD, <1>m50Amn1M7OXCrrpAUNd, <1>qMpfr4dxT30EEoG4jF2, Sizes, Location, Design DEF Sizes, Location, Design
USE DEF Part_DReadFail_01_01, Part_DReadFail_01_02, Part_DReadFail_02_01, Part_DReadFail_02_02, Part_DReadFail_03_01, Part_DReadFail_03_02, ProofInvParts, ProofTypeWeakenNext, ShapeKeep_DReadFail
HIDE DEF DomainKeep_DReadFail, V21_Inv_GenFiltered, V21_Inv_K14, V21_Inv_K2, V21_Inv_K3, V21_Inv_P_B2OffInit, V21_Inv_ReplyTruth, V21_Inv_S2, V21_Inv_S3, V21_Inv_S4, V21_SFollowOff, V21_SFollowStatic, V22_SF_SharedOrigin, V22_SF_Static, V22_SFollowSharedOrigin, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_xdst

THEOREM Step_DReadFail ==
 ASSUME NEW j \in Inst, NEW r \in Rq, Sizes, Location, Design, PinInv, DReadFail(j,r), SFollow
 PROVE PinInv'
<1>TypeCell.
 ASSUME NEW u \in Inst, NEW v \in Rq, Sizes, Location, Design, PinInv, DReadFail(u,v), SFollow
 PROVE TypeOK'
<2>1. QConj'
 BY ONLY <1>TypeCell, Part_DReadFail_01_01, Part_DReadFail_01_02, Part_DReadFail_02_01, Part_DReadFail_02_02, Part_DReadFail_03_01, Part_DReadFail_03_02, Group_DReadFail_04, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<2>2. QED BY ONLY <2>1, ProofTypeWeakenNext, SMTT(5) DEF QConj

<1>1. QConj'
 BY Part_DReadFail_01_01, Part_DReadFail_01_02, Part_DReadFail_02_01, Part_DReadFail_02_02, Part_DReadFail_03_01, Part_DReadFail_03_02, Group_DReadFail_04, Sizes, Location, Design DEF QConj, Sizes, Location, Design
<1>2. TypeOK'
 BY ONLY Sizes, Location, Design, PinInv, DReadFail(j,r), SFollow, <1>TypeCell
<1>3. PConj'
 BY ONLY <1>1, <1>2, SMTT(5) DEF QConj, PConj
<1>4. MessageShape'
 BY ONLY Sizes, Design, PinInv, ProofInvParts, DReadFail(j,r), ShapeKeep_DReadFail, SMTT(5)
<1>5. QED
 BY ONLY <1>3, <1>4, SMTT(5) DEF PinInv, IndInv, PConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit
====
