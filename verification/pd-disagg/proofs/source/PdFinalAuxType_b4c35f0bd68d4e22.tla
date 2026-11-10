---- MODULE PdFinalAuxType_b4c35f0bd68d4e22 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_b4c35f0bd68d4e22 ==          
  ASSUME Sizes, Location, Design,
         NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE CoreTypeOK'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RP2BT_T_gen == gen \in [Rq -> 0..MG]


           RP2BT_T_rt == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           RP2BT_T_rp == rp \in [Rq -> {0} \cup Inst]


           RP2BT_T_rd == rd \in [Rq -> {0} \cup Inst]


           RP2BT_T_hp == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           RP2BT_T_hd == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           RP2BT_T_alive == alive \in [Inst -> BOOLEAN]


           RP2BT_T_nfail == nfail \in 0..MaxFail


           RP2BT_T_torn == torn \in [Inst -> SUBSET Inst]


           RP2BT_T_kpin == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           RP2BT_T_kfly == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           RP2BT_T_krs == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           RP2BT_T_ph == ph \in [Inst -> [Rq -> PhSet]]


           RP2BT_T_rg == rg \in [Inst -> [Rq -> 0..MG]]


           RP2BT_T_rpg == rpg \in [Inst -> [Rq -> 0..NP]]


           RP2BT_T_rpe == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           RP2BT_T_rx == rx \in [Inst -> [Rq -> 0..MX]]


           RP2BT_T_rhit == rhit \in [Inst -> [Rq -> BOOLEAN]]


           RP2BT_T_pst == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           RP2BT_T_pr == pr \in [Pages -> 0..NR]


           RP2BT_T_pgn == pgn \in [Pages -> 0..MG]


           RP2BT_T_plt == plt \in [Pages -> 0..PS]


           RP2BT_T_ptl == ptl \in [Pages -> -1..PS]


           RP2BT_T_pvis == pvis \in [Pages -> BOOLEAN]


           RP2BT_T_led == led \in [Pages -> SUBSET Xids]


           RP2BT_T_sfly == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           RP2BT_T_sled == sled \in [Pages -> SUBSET (Rq \X Gens)]


           RP2BT_T_prefc == prefc \in [Pages -> 0..NR]


           RP2BT_T_pqp == pqp \in [Pages -> {0} \cup Inst]


           RP2BT_T_xr == xr \in [Xids -> 0..NR]


           RP2BT_T_xg == xg \in [Xids -> 0..MG]


           RP2BT_T_xk == xk \in [Xids -> {"none", "wr", "rd"}]


           RP2BT_T_xp == xp \in [Xids -> {0} \cup Inst]


           RP2BT_T_xd == xd \in [Xids -> {0} \cup Inst]


           RP2BT_T_xsrc == xsrc \in [Xids -> 0..NP]


           RP2BT_T_xdst == xdst \in [Xids -> 0..NP]


           RP2BT_T_xnt == xnt \in [Xids -> 0..PS]


           RP2BT_T_hw == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           RP2BT_T_hok == hok \in [Xids -> BOOLEAN]


           RP2BT_T_iv == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           RP2BT_T_xst == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           RP2BT_T_xlt == xlt \in [Xids -> 0..PS]


           RP2BT_T_nx == nx \in 1..(MX + 1)


           RP2BT_T_net == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           RP2BT_T_drep == drep \in [Rq -> [Gens -> 0..2]]


           RP2BT_T_crep == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           RP2BT_T_dsucc == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           RP2BT_T_gbad == gbad \in BOOLEAN


           RP2BT_Types == RP2BT_T_gen /\ RP2BT_T_rt /\ RP2BT_T_rp /\ RP2BT_T_rd /\ RP2BT_T_hp /\ RP2BT_T_hd /\ RP2BT_T_alive /\ RP2BT_T_nfail /\ RP2BT_T_torn /\ RP2BT_T_kpin /\ RP2BT_T_kfly /\ RP2BT_T_krs /\ RP2BT_T_ph /\ RP2BT_T_rg /\ RP2BT_T_rpg /\ RP2BT_T_rpe /\ RP2BT_T_rx /\ RP2BT_T_rhit /\ RP2BT_T_pst /\ RP2BT_T_pr /\ RP2BT_T_pgn /\ RP2BT_T_plt /\ RP2BT_T_ptl /\ RP2BT_T_pvis /\ RP2BT_T_led /\ RP2BT_T_sfly /\ RP2BT_T_sled /\ RP2BT_T_prefc /\ RP2BT_T_pqp /\ RP2BT_T_xr /\ RP2BT_T_xg /\ RP2BT_T_xk /\ RP2BT_T_xp /\ RP2BT_T_xd /\ RP2BT_T_xsrc /\ RP2BT_T_xdst /\ RP2BT_T_xnt /\ RP2BT_T_hw /\ RP2BT_T_hok /\ RP2BT_T_iv /\ RP2BT_T_xst /\ RP2BT_T_xlt /\ RP2BT_T_nx /\ RP2BT_T_net /\ RP2BT_T_drep /\ RP2BT_T_crep /\ RP2BT_T_dsucc /\ RP2BT_T_gbad

           \* T2M-LOCAL-VISIBILITY

           RP2BT_MsgC1(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])


           RP2BT_MsgC2(m) == m.t = "hello" => m.fr \in Inst


           RP2BT_MsgC3(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))


           RP2BT_MsgC4(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))


           RP2BT_MsgC5(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])


           RP2BT_MsgC6(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])


           RP2BT_MsgC7(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")


           RP2BT_MsgC8(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)


           RP2BT_MsgC9(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))


           RP2BT_MsgC10(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))


           RP2BT_MsgSafe(m) ==
             /\ RP2BT_MsgC1(m)
             /\ RP2BT_MsgC2(m)
             /\ RP2BT_MsgC3(m)
             /\ RP2BT_MsgC4(m)
             /\ RP2BT_MsgC5(m)
             /\ RP2BT_MsgC6(m)
             /\ RP2BT_MsgC7(m)
             /\ RP2BT_MsgC8(m)
             /\ RP2BT_MsgC9(m)
             /\ RP2BT_MsgC10(m)

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP2BT_T_gen, RP2BT_T_rt, RP2BT_T_rp, RP2BT_T_rd, RP2BT_T_hp, RP2BT_T_hd, RP2BT_T_alive, RP2BT_T_nfail, RP2BT_T_torn, RP2BT_T_kpin, RP2BT_T_kfly, RP2BT_T_krs, RP2BT_T_ph, RP2BT_T_rg, RP2BT_T_rpg, RP2BT_T_rpe, RP2BT_T_rx, RP2BT_T_rhit, RP2BT_T_pst, RP2BT_T_pr, RP2BT_T_pgn, RP2BT_T_plt, RP2BT_T_ptl, RP2BT_T_pvis, RP2BT_T_led, RP2BT_T_sfly, RP2BT_T_sled, RP2BT_T_prefc, RP2BT_T_pqp, RP2BT_T_xr, RP2BT_T_xg, RP2BT_T_xk, RP2BT_T_xp, RP2BT_T_xd, RP2BT_T_xsrc, RP2BT_T_xdst, RP2BT_T_xnt, RP2BT_T_hw, RP2BT_T_hok, RP2BT_T_iv, RP2BT_T_xst, RP2BT_T_xlt, RP2BT_T_nx, RP2BT_T_net, RP2BT_T_drep, RP2BT_T_crep, RP2BT_T_dsucc, RP2BT_T_gbad, RP2BT_Types, RP2BT_MsgC1, RP2BT_MsgC2, RP2BT_MsgC3, RP2BT_MsgC4, RP2BT_MsgC5, RP2BT_MsgC6, RP2BT_MsgC7, RP2BT_MsgC8, RP2BT_MsgC9, RP2BT_MsgC10, RP2BT_MsgSafe

<1>MBt71i0AtN8OEmSc.         TypInv => RP2BT_Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, RP2BT_Types, RP2BT_T_gen, RP2BT_T_rt, RP2BT_T_rp, RP2BT_T_rd, RP2BT_T_hp, RP2BT_T_hd, RP2BT_T_alive, RP2BT_T_nfail, RP2BT_T_torn, RP2BT_T_kpin, RP2BT_T_kfly, RP2BT_T_krs, RP2BT_T_ph, RP2BT_T_rg, RP2BT_T_rpg, RP2BT_T_rpe, RP2BT_T_rx, RP2BT_T_rhit, RP2BT_T_pst, RP2BT_T_pr, RP2BT_T_pgn, RP2BT_T_plt, RP2BT_T_ptl, RP2BT_T_pvis, RP2BT_T_led, RP2BT_T_sfly, RP2BT_T_sled, RP2BT_T_prefc, RP2BT_T_pqp, RP2BT_T_xr, RP2BT_T_xg, RP2BT_T_xk, RP2BT_T_xp, RP2BT_T_xd, RP2BT_T_xsrc, RP2BT_T_xdst, RP2BT_T_xnt, RP2BT_T_hw, RP2BT_T_hok, RP2BT_T_iv, RP2BT_T_xst, RP2BT_T_xlt, RP2BT_T_nx, RP2BT_T_net, RP2BT_T_drep, RP2BT_T_crep, RP2BT_T_dsucc, RP2BT_T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CHOHBThA20rasQxfw0.         RP2BT_Types' => CoreTypeOK'
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, RP2BT_Types, RP2BT_T_gen, RP2BT_T_rt, RP2BT_T_rp, RP2BT_T_rd, RP2BT_T_hp, RP2BT_T_hd, RP2BT_T_alive, RP2BT_T_nfail, RP2BT_T_torn, RP2BT_T_kpin, RP2BT_T_kfly, RP2BT_T_krs, RP2BT_T_ph, RP2BT_T_rg, RP2BT_T_rpg, RP2BT_T_rpe, RP2BT_T_rx, RP2BT_T_rhit, RP2BT_T_pst, RP2BT_T_pr, RP2BT_T_pgn, RP2BT_T_plt, RP2BT_T_ptl, RP2BT_T_pvis, RP2BT_T_led, RP2BT_T_sfly, RP2BT_T_sled, RP2BT_T_prefc, RP2BT_T_pqp, RP2BT_T_xr, RP2BT_T_xg, RP2BT_T_xk, RP2BT_T_xp, RP2BT_T_xd, RP2BT_T_xsrc, RP2BT_T_xdst, RP2BT_T_xnt, RP2BT_T_hw, RP2BT_T_hok, RP2BT_T_iv, RP2BT_T_xst, RP2BT_T_xlt, RP2BT_T_nx, RP2BT_T_net, RP2BT_T_drep, RP2BT_T_crep, RP2BT_T_dsucc, RP2BT_T_gbad, Sizes, Location, Design
\* T2M-END R2M1995_PdRPR2BTPdProofBase


<1>Y5m6WzCUe30Oah5G.         K12 <=> (\A m \in net : RP2BT_MsgSafe(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, RP2BT_MsgSafe, RP2BT_MsgC1, RP2BT_MsgC2, RP2BT_MsgC3, RP2BT_MsgC4, RP2BT_MsgC5, RP2BT_MsgC6, RP2BT_MsgC7, RP2BT_MsgC8, RP2BT_MsgC9, RP2BT_MsgC10, Sizes, Location, Design
\* T2M-END R2M1996_PdRPR2BTPdMessagePred


<1>aj6UN7XVDsae.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1997_PdRPR2BTPdMsgBase


<1>MZ4pNdxw46uuvgcOSFf6Bbb.        
  ASSUME NEW m \in net, PinInv, m.t = "req"
  PROVE m.pe \in Inst
<2> USE ONLY <1>MZ4pNdxw46uuvgcOSFf6Bbb, Sizes, Location, Design
<2>1. K1 /\ K12
  BY SMTT(10), V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RP2BT_MsgSafe(m)
  BY <2>1, <1>Y5m6WzCUe30Oah5G, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r]
      /\ (m.pe = hp[m.r][m.g] \/ m.pe = hd[m.r][m.g])
  BY <2>2, SMTT(10), Sizes, Location, Design DEF RP2BT_MsgSafe, RP2BT_MsgC1, RP2BT_MsgC3, Sizes, Location, Design
<2>4. hp[m.r][m.g] \in PInst /\ hd[m.r][m.g] \in DInst
  BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>5. QED
  BY <2>3, <2>4, <1>aj6UN7XVDsae, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2001_PdRPR2BTPdRequestPeer


<1>xo26v7ejywZ14Wghnmb8I39.        
  ASSUME NEW x \in Xids, PCancelReg(x)
  PROVE net' = net \cup {Msg("nopost",xp[x],xd[x],xr[x],xg[x],x,0,0,FALSE)}
  BY ONLY <1>xo26v7ejywZ14Wghnmb8I39, Sizes, Location, Design, Design, SMTT(10) DEF PCancelReg, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>egIgkmRF2X9bxcSXJzw5Y.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE RP2BT_T_net'
<2> USE ONLY <1>egIgkmRF2X9bxcSXJzw5Y, Sizes, Location, Design
<2>1. RP2BT_T_net /\ RP2BT_T_xd /\ RP2BT_T_xg /\ RP2BT_T_xp /\ RP2BT_T_xr
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. net' = net \cup {Msg("nopost",xp[x],xd[x],xr[x],xg[x],x,0,0,FALSE)}
  BY SMTT(10), <1>xo26v7ejywZ14Wghnmb8I39, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, Location, <1>aj6UN7XVDsae, SMTT(10), Sizes, Design DEF Msg, MsgT, RP2BT_T_net, RP2BT_T_xd, RP2BT_T_xg, RP2BT_T_xp, RP2BT_T_xr, Xids, Sizes, Location, Design
\* T2M-END R2M2004_PdRPR2BTPdPCancelRegNet

\* T2M-SCOPE R2M2005_PdRPR2BTPdPCancelRegFrames

<1>VqEjqZZbRo5tNOsuynO.        
  ASSUME NEW x \in Xids, PCancelReg(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>VqEjqZZbRo5tNOsuynO, Sizes, Location, Design, ZenonT(5) DEF EvidenceAt, PCancelReg, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M2005_PdRPR2BTPdPCancelRegFrames

\* T2M-SCOPE R2M2006_PdRPR2BTPdPCancelRegTypes

<1>NHFfods96EOnC3ErEQlA17Zc.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE RP2BT_T_alive' /\ RP2BT_T_crep' /\ RP2BT_T_drep' /\ RP2BT_T_dsucc' /\ RP2BT_T_gbad' /\ RP2BT_T_gen' /\ RP2BT_T_hd' /\ RP2BT_T_hok' /\ RP2BT_T_hp' /\ RP2BT_T_hw' /\ RP2BT_T_kfly' /\ RP2BT_T_kpin' /\ RP2BT_T_krs' /\ RP2BT_T_nfail' /\ RP2BT_T_nx' /\ RP2BT_T_ptl' /\ RP2BT_T_pvis' /\ RP2BT_T_rd' /\ RP2BT_T_rg' /\ RP2BT_T_rhit' /\ RP2BT_T_rp' /\ RP2BT_T_rpe' /\ RP2BT_T_rpg' /\ RP2BT_T_rt' /\ RP2BT_T_rx' /\ RP2BT_T_sfly' /\ RP2BT_T_torn' /\ RP2BT_T_xd' /\ RP2BT_T_xdst' /\ RP2BT_T_xg' /\ RP2BT_T_xk' /\ RP2BT_T_xlt' /\ RP2BT_T_xnt' /\ RP2BT_T_xp' /\ RP2BT_T_xr' /\ RP2BT_T_xsrc' /\ RP2BT_T_xst'
<2> USE ONLY <1>NHFfods96EOnC3ErEQlA17Zc, Sizes, Location, Design
<2>1. RP2BT_Types
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY SMTT(10), <1>VqEjqZZbRo5tNOsuynO, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RP2BT_Types, RP2BT_T_alive, RP2BT_T_crep, RP2BT_T_drep, RP2BT_T_dsucc, RP2BT_T_gbad, RP2BT_T_gen, RP2BT_T_hd, RP2BT_T_hok, RP2BT_T_hp, RP2BT_T_hw, RP2BT_T_kfly, RP2BT_T_kpin, RP2BT_T_krs, RP2BT_T_nfail, RP2BT_T_nx, RP2BT_T_ptl, RP2BT_T_pvis, RP2BT_T_rd, RP2BT_T_rg, RP2BT_T_rhit, RP2BT_T_rp, RP2BT_T_rpe, RP2BT_T_rpg, RP2BT_T_rt, RP2BT_T_rx, RP2BT_T_sfly, RP2BT_T_torn, RP2BT_T_xd, RP2BT_T_xdst, RP2BT_T_xg, RP2BT_T_xk, RP2BT_T_xlt, RP2BT_T_xnt, RP2BT_T_xp, RP2BT_T_xr, RP2BT_T_xsrc, RP2BT_T_xst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>y5bVdL42FArHyghqSMiW8.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE RP2BT_T_iv'
<2> HIDE DEF CoreTypeOK, RP2BT_Types, RP2BT_T_iv
<2>type. RP2BT_T_iv
 BY ONLY <1>y5bVdL42FArHyghqSMiW8, V22_T_iv, SMTT(5) DEF RP2BT_T_iv
<2>effect. iv'=[iv EXCEPT ![x]="nopost"]
 BY ONLY <1>y5bVdL42FArHyghqSMiW8, ZenonT(5) DEF PCancelReg
<2>qed. QED
 BY ONLY <2>type, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_iv, Sizes

\* T2M-LOCAL-VISIBILITY

<1>bPkNvoam7rWlWhVZsmanG1.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE RP2BT_T_led'
<2> HIDE DEF CoreTypeOK, RP2BT_Types, RP2BT_T_led
<2>type. RP2BT_T_led
 BY ONLY <1>bPkNvoam7rWlWhVZsmanG1, V22_T_led, SMTT(5) DEF RP2BT_T_led
<2>effect. led'=[led EXCEPT ![xsrc[x]]={}] \/ led'=[led EXCEPT ![xsrc[x]]=led[xsrc[x]] \ {x}]
 BY ONLY <1>bPkNvoam7rWlWhVZsmanG1, ZenonT(5) DEF PCancelReg, PageTo, EvidenceAt
<2>qed. QED
 BY ONLY <2>type, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_led, Sizes

\* T2M-LOCAL-VISIBILITY

<1>KnwCyLvaf3rYgwD4nUly2F.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE RP2BT_T_pgn'
<2> HIDE DEF CoreTypeOK, RP2BT_Types, RP2BT_T_pgn
<2>type. RP2BT_T_pgn
 BY ONLY <1>KnwCyLvaf3rYgwD4nUly2F, V22_T_pgn, SMTT(5) DEF RP2BT_T_pgn
<2>effect. pgn'=pgn \/ pgn'=[pgn EXCEPT ![xsrc[x]]=0]
 BY ONLY <1>KnwCyLvaf3rYgwD4nUly2F, ZenonT(5) DEF PCancelReg, PageTo, EvidenceAt
<2>qed. QED
 BY ONLY <2>type, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_pgn, Sizes

\* T2M-LOCAL-VISIBILITY

<1>N8LHubW5uy8iX6Y9qP5cr.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE RP2BT_T_ph'
<2> HIDE DEF CoreTypeOK, RP2BT_Types, RP2BT_T_ph
<2>type. RP2BT_T_ph
 BY ONLY <1>N8LHubW5uy8iX6Y9qP5cr, V22_T_ph, SMTT(5) DEF RP2BT_T_ph
<2>effect. ph'=ph \/ ph'=[ph EXCEPT ![xp[x]][xr[x]]="end"]
 BY ONLY <1>N8LHubW5uy8iX6Y9qP5cr, ZenonT(5) DEF PCancelReg
<2>end. "end" \in PhSet
 BY ONLY SMTT(5) DEF PhSet
<2>qed. QED
 BY ONLY <2>type, <2>effect, <2>end, Sizes, SMTT(5) DEF RP2BT_T_ph, Sizes

\* T2M-LOCAL-VISIBILITY

<1>fR62R1EmEdzIOgPUhVctI7.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE RP2BT_T_plt'
<2> HIDE DEF CoreTypeOK, RP2BT_Types, RP2BT_T_plt
<2>type. RP2BT_T_plt
 BY ONLY <1>fR62R1EmEdzIOgPUhVctI7, V22_T_plt, SMTT(5) DEF RP2BT_T_plt
<2>effect. plt'=plt \/ plt'=[plt EXCEPT ![xsrc[x]]=0]
 BY ONLY <1>fR62R1EmEdzIOgPUhVctI7, ZenonT(5) DEF PCancelReg, PageTo, EvidenceAt
<2>qed. QED
 BY ONLY <2>type, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_plt, Sizes

\* T2M-LOCAL-VISIBILITY

<1>Rc8QtPuvnroB36mQNFcNEH.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE RP2BT_T_pqp'
<2> HIDE DEF CoreTypeOK, RP2BT_Types, RP2BT_T_pqp
<2>type. RP2BT_T_pqp
 BY ONLY <1>Rc8QtPuvnroB36mQNFcNEH, V22_T_pqp, SMTT(5) DEF RP2BT_T_pqp
<2>effect. pqp'=[pqp EXCEPT ![xsrc[x]]=0] \/ pqp'=[pqp EXCEPT ![xsrc[x]]=pqp[xsrc[x]]]
 BY ONLY <1>Rc8QtPuvnroB36mQNFcNEH, ZenonT(5) DEF PCancelReg, PageTo, EvidenceAt, AfterEv
<2>qed. QED
 BY ONLY <2>type, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_pqp, Sizes

\* T2M-LOCAL-VISIBILITY

<1>FfxglqMFrWR4fL2A6Z3gW.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE RP2BT_T_pr'
<2> HIDE DEF CoreTypeOK, RP2BT_Types, RP2BT_T_pr
<2>type. RP2BT_T_pr
 BY ONLY <1>FfxglqMFrWR4fL2A6Z3gW, V22_T_pr, SMTT(5) DEF RP2BT_T_pr
<2>effect. pr'=pr \/ pr'=[pr EXCEPT ![xsrc[x]]=0]
 BY ONLY <1>FfxglqMFrWR4fL2A6Z3gW, ZenonT(5) DEF PCancelReg, PageTo, EvidenceAt
<2>qed. QED
 BY ONLY <2>type, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_pr, Sizes

\* T2M-LOCAL-VISIBILITY

<1>LWbmGcdItEjv8UHCMErk3Js9.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE RP2BT_T_prefc'
<2> HIDE DEF CoreTypeOK, RP2BT_Types, RP2BT_T_prefc
<2>type. RP2BT_T_prefc
 BY ONLY <1>LWbmGcdItEjv8UHCMErk3Js9, V22_T_prefc, SMTT(5) DEF RP2BT_T_prefc
<2>effect. prefc'=prefc \/ prefc'=[prefc EXCEPT ![xsrc[x]]=0]
 BY ONLY <1>LWbmGcdItEjv8UHCMErk3Js9, ZenonT(5) DEF PCancelReg, PageTo, EvidenceAt
<2>qed. QED
 BY ONLY <2>type, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_prefc, Sizes

\* T2M-LOCAL-VISIBILITY

<1>InVuosEg62HtGI2NZ1TCLA.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE RP2BT_T_pst'
<2> HIDE DEF CoreTypeOK, RP2BT_Types, RP2BT_T_pst
<2>type. RP2BT_T_pst
 BY ONLY <1>InVuosEg62HtGI2NZ1TCLA, V22_T_pst, SMTT(5) DEF RP2BT_T_pst
<2>effect. pst'=[pst EXCEPT ![xsrc[x]]="free"] \/ pst'=[pst EXCEPT ![xsrc[x]]="drain"] \/ pst'=[pst EXCEPT ![xsrc[x]]=pst[xsrc[x]]]
 BY ONLY <1>InVuosEg62HtGI2NZ1TCLA, ZenonT(5) DEF PCancelReg, PageTo, EvidenceAt, AfterEv
<2>qed. QED
 BY ONLY <2>type, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_pst, Sizes

\* T2M-LOCAL-VISIBILITY

<1>OderppthsYBSOVGZOSxG8Vk.        
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE RP2BT_T_sled'
<2> HIDE DEF CoreTypeOK, RP2BT_Types, RP2BT_T_sled
<2>type. RP2BT_T_sled
 BY ONLY <1>OderppthsYBSOVGZOSxG8Vk, V22_T_sled, SMTT(5) DEF RP2BT_T_sled
<2>effect. sled'=[sled EXCEPT ![xsrc[x]]={}] \/ sled'=[sled EXCEPT ![xsrc[x]]=sled[xsrc[x]]]
 BY ONLY <1>OderppthsYBSOVGZOSxG8Vk, ZenonT(5) DEF PCancelReg, PageTo, EvidenceAt
<2>qed. QED
 BY ONLY <2>type, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_sled, Sizes

\* T2M-LOCAL-VISIBILITY

<1>DAer5nMFZX5hTBwIK9Pw.          
  ASSUME NEW x \in Xids, PinInv, PCancelReg(x)
  PROVE CoreTypeOK'
<2> USE ONLY <1>DAer5nMFZX5hTBwIK9Pw, Sizes, Location, Design
<2>1. RP2BT_Types'
  BY SMTT(10), <1>NHFfods96EOnC3ErEQlA17Zc, <1>egIgkmRF2X9bxcSXJzw5Y, <1>y5bVdL42FArHyghqSMiW8, <1>bPkNvoam7rWlWhVZsmanG1, <1>KnwCyLvaf3rYgwD4nUly2F, <1>N8LHubW5uy8iX6Y9qP5cr, <1>fR62R1EmEdzIOgPUhVctI7, <1>Rc8QtPuvnroB36mQNFcNEH, <1>FfxglqMFrWR4fL2A6Z3gW, <1>LWbmGcdItEjv8UHCMErk3Js9, <1>InVuosEg62HtGI2NZ1TCLA, <1>OderppthsYBSOVGZOSxG8Vk, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY SMTT(10), <2>1, <1>CHOHBThA20rasQxfw0, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2006_PdRPR2BTPdPCancelRegTypes


<1> QED BY <1>DAer5nMFZX5hTBwIK9Pw, Sizes, Location, Design DEF Sizes, Location, Design
====
