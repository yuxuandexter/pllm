---- MODULE PdFinalAuxType_fe8bb090b8ff1fa3 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_fe8bb090b8ff1fa3 ==          
  ASSUME Sizes, Location, Design,
         NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
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


<1>R3iBCUstytUF4BkBvG8kj.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PTimeout(i,r)
  PROVE net' = net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)} \cup (IF ph[i][r] = "reg" /\ rx[i][r] \in Xids /\ iv[rx[i][r]] = "reg" THEN {Msg("nopost",i,xd[rx[i][r]],r,xg[rx[i][r]],rx[i][r],0,0,FALSE)} ELSE {})
  BY ONLY <1>R3iBCUstytUF4BkBvG8kj, Sizes, Location, Design, Design, SMTT(10) DEF PTimeout, PEnd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zFmgJuUZwBbDvtnEcwg.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE RP2BT_T_net'
<2> USE ONLY <1>zFmgJuUZwBbDvtnEcwg, Sizes, Location, Design
<2>1. RP2BT_T_net /\ RP2BT_T_rg /\ RP2BT_T_rpe /\ RP2BT_T_xd /\ RP2BT_T_xg
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. net' = net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)} \cup (IF ph[i][r] = "reg" /\ rx[i][r] \in Xids /\ iv[rx[i][r]] = "reg" THEN {Msg("nopost",i,xd[rx[i][r]],r,xg[rx[i][r]],rx[i][r],0,0,FALSE)} ELSE {})
  BY SMTT(10), <1>R3iBCUstytUF4BkBvG8kj, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, Location, <1>aj6UN7XVDsae, SMTT(10), Sizes, Design DEF Msg, MsgT, RP2BT_T_net, RP2BT_T_rg, RP2BT_T_rpe, RP2BT_T_xd, RP2BT_T_xg, Xids, Sizes, Location, Design
\* T2M-END R2M2061_PdRPR2BTPdPTimeoutNet

\* T2M-SCOPE R2M2062_PdRPR2BTPdPTimeoutFrames

<1>R7xLUAFOwVYxpgrhD.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PTimeout(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>R7xLUAFOwVYxpgrhD, Sizes, Location, Design, Zenon DEF PEnd, PTimeout, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M2062_PdRPR2BTPdPTimeoutFrames

\* T2M-SCOPE R2M2063_PdRPR2BTPdPTimeoutTypes

<1>LjB2X1ttMFQvXxJ9e3pta1.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE RP2BT_T_alive' /\ RP2BT_T_crep' /\ RP2BT_T_drep' /\ RP2BT_T_dsucc' /\ RP2BT_T_gbad' /\ RP2BT_T_gen' /\ RP2BT_T_hd' /\ RP2BT_T_hok' /\ RP2BT_T_hp' /\ RP2BT_T_hw' /\ RP2BT_T_kfly' /\ RP2BT_T_kpin' /\ RP2BT_T_krs' /\ RP2BT_T_nfail' /\ RP2BT_T_nx' /\ RP2BT_T_ptl' /\ RP2BT_T_pvis' /\ RP2BT_T_rd' /\ RP2BT_T_rg' /\ RP2BT_T_rhit' /\ RP2BT_T_rp' /\ RP2BT_T_rpe' /\ RP2BT_T_rpg' /\ RP2BT_T_rt' /\ RP2BT_T_rx' /\ RP2BT_T_sfly' /\ RP2BT_T_torn' /\ RP2BT_T_xd' /\ RP2BT_T_xdst' /\ RP2BT_T_xg' /\ RP2BT_T_xk' /\ RP2BT_T_xlt' /\ RP2BT_T_xnt' /\ RP2BT_T_xp' /\ RP2BT_T_xr' /\ RP2BT_T_xsrc' /\ RP2BT_T_xst'
<2> USE ONLY <1>LjB2X1ttMFQvXxJ9e3pta1, Sizes, Location, Design
<2>1. RP2BT_Types
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY SMTT(10), <1>R7xLUAFOwVYxpgrhD, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RP2BT_Types, RP2BT_T_alive, RP2BT_T_crep, RP2BT_T_drep, RP2BT_T_dsucc, RP2BT_T_gbad, RP2BT_T_gen, RP2BT_T_hd, RP2BT_T_hok, RP2BT_T_hp, RP2BT_T_hw, RP2BT_T_kfly, RP2BT_T_kpin, RP2BT_T_krs, RP2BT_T_nfail, RP2BT_T_nx, RP2BT_T_ptl, RP2BT_T_pvis, RP2BT_T_rd, RP2BT_T_rg, RP2BT_T_rhit, RP2BT_T_rp, RP2BT_T_rpe, RP2BT_T_rpg, RP2BT_T_rt, RP2BT_T_rx, RP2BT_T_sfly, RP2BT_T_torn, RP2BT_T_xd, RP2BT_T_xdst, RP2BT_T_xg, RP2BT_T_xk, RP2BT_T_xlt, RP2BT_T_xnt, RP2BT_T_xp, RP2BT_T_xr, RP2BT_T_xsrc, RP2BT_T_xst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rtOo1PJhITC8lOdwvZi.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE RP2BT_T_iv'
<2> HIDE DEF PTimeout, PEnd, PageTo, GiveUpToN, CoreTypeOK, STypeOK, RP2BT_Types, RP2BT_T_iv
<2>old. RP2BT_T_iv
 BY ONLY <1>rtOo1PJhITC8lOdwvZi, V22_T_iv, SMTT(5) DEF RP2BT_T_iv
<2>effect. iv'=iv \/ iv'=[iv EXCEPT ![rx[i][r]]="nopost"]
 BY ONLY <1>rtOo1PJhITC8lOdwvZi, ZenonT(5) DEF PTimeout, PEnd
<2>qed. QED BY ONLY <1>rtOo1PJhITC8lOdwvZi, <2>old, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_iv, Sizes

\* T2M-LOCAL-VISIBILITY

<1>S3FF6F705FrzhmuD0swb.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE RP2BT_T_led'
<2> HIDE DEF PTimeout, PEnd, PageTo, GiveUpToN, CoreTypeOK, STypeOK, RP2BT_Types, RP2BT_T_led
<2>old. RP2BT_T_led
 BY ONLY <1>S3FF6F705FrzhmuD0swb, V22_T_led, SMTT(5) DEF RP2BT_T_led
<2>effect. led'=[led EXCEPT ![rpg[i][r]]={}] \/ led'=[led EXCEPT ![rpg[i][r]]=led[rpg[i][r]]] \/ led'=[led EXCEPT ![rpg[i][r]]=led[rpg[i][r]] \ {rx[i][r]}]
 BY ONLY <1>S3FF6F705FrzhmuD0swb, ZenonT(5) DEF PTimeout, PEnd, PageTo
<2>qed. QED BY ONLY <1>S3FF6F705FrzhmuD0swb, <2>old, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_led, Sizes

\* T2M-LOCAL-VISIBILITY

<1>UjlzkKeJwCET3gn6WTli.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE RP2BT_T_pgn'
<2> HIDE DEF PTimeout, PEnd, PageTo, GiveUpToN, CoreTypeOK, STypeOK, RP2BT_Types, RP2BT_T_pgn
<2>old. RP2BT_T_pgn
 BY ONLY <1>UjlzkKeJwCET3gn6WTli, V22_T_pgn, SMTT(5) DEF RP2BT_T_pgn
<2>effect. pgn'=pgn \/ pgn'=[pgn EXCEPT ![rpg[i][r]]=0]
 BY ONLY <1>UjlzkKeJwCET3gn6WTli, ZenonT(5) DEF PTimeout, PEnd, PageTo
<2>qed. QED BY ONLY <1>UjlzkKeJwCET3gn6WTli, <2>old, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_pgn, Sizes

\* T2M-LOCAL-VISIBILITY

<1>RTrlR18NFfoOYDtGDcP.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE RP2BT_T_ph'
<2> HIDE DEF PTimeout, PEnd, PageTo, GiveUpToN, CoreTypeOK, STypeOK, RP2BT_Types, RP2BT_T_ph
<2>old. RP2BT_T_ph
 BY ONLY <1>RTrlR18NFfoOYDtGDcP, V22_T_ph, SMTT(5) DEF RP2BT_T_ph
<2>effect. ph'=[ph EXCEPT ![i][r]="end"]
 BY ONLY <1>RTrlR18NFfoOYDtGDcP, ZenonT(5) DEF PTimeout, PEnd
<2>qed. QED BY ONLY <1>RTrlR18NFfoOYDtGDcP, <2>old, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_ph, Sizes, PhSet

\* T2M-LOCAL-VISIBILITY

<1>h2zVRQK5TODt1IY5qw4X.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE RP2BT_T_plt'
<2> HIDE DEF PTimeout, PEnd, PageTo, GiveUpToN, CoreTypeOK, STypeOK, RP2BT_Types, RP2BT_T_plt
<2>old. RP2BT_T_plt
 BY ONLY <1>h2zVRQK5TODt1IY5qw4X, V22_T_plt, SMTT(5) DEF RP2BT_T_plt
<2>effect. plt'=plt \/ plt'=[plt EXCEPT ![rpg[i][r]]=0]
 BY ONLY <1>h2zVRQK5TODt1IY5qw4X, ZenonT(5) DEF PTimeout, PEnd, PageTo
<2>qed. QED BY ONLY <1>h2zVRQK5TODt1IY5qw4X, <2>old, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_plt, Sizes

\* T2M-LOCAL-VISIBILITY

<1>k3ad0931rRbZ2nJrXYaH.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE RP2BT_T_pqp'
<2> HIDE DEF PTimeout, PEnd, PageTo, GiveUpToN, CoreTypeOK, STypeOK, RP2BT_Types, RP2BT_T_pqp
<2>old. RP2BT_T_pqp
 BY ONLY <1>k3ad0931rRbZ2nJrXYaH, V22_T_pqp, SMTT(5) DEF RP2BT_T_pqp
<2>peer_type. rpe \in [Inst -> [Rq -> {0} \cup Inst]]
 BY ONLY <1>k3ad0931rRbZ2nJrXYaH, V22_T_rpe, SMTT(5)
<2>effect. pqp'=[pqp EXCEPT ![rpg[i][r]]=0] \/ pqp'=[pqp EXCEPT ![rpg[i][r]]=pqp[rpg[i][r]]] \/ pqp'=[pqp EXCEPT ![rpg[i][r]]=rpe[i][r]]
 BY ONLY <1>k3ad0931rRbZ2nJrXYaH, ZenonT(5) DEF PTimeout, PEnd, PageTo
<2>qed. QED BY ONLY <1>k3ad0931rRbZ2nJrXYaH, <2>old, <2>effect, <2>peer_type, Sizes, SMTT(5) DEF RP2BT_T_pqp, Sizes

\* T2M-LOCAL-VISIBILITY

<1>SVgfWR5UeKkkeEkRfIK.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE RP2BT_T_pr'
<2> HIDE DEF PTimeout, PEnd, PageTo, GiveUpToN, CoreTypeOK, STypeOK, RP2BT_Types, RP2BT_T_pr
<2>old. RP2BT_T_pr
 BY ONLY <1>SVgfWR5UeKkkeEkRfIK, V22_T_pr, SMTT(5) DEF RP2BT_T_pr
<2>effect. pr'=pr \/ pr'=[pr EXCEPT ![rpg[i][r]]=0]
 BY ONLY <1>SVgfWR5UeKkkeEkRfIK, ZenonT(5) DEF PTimeout, PEnd, PageTo
<2>qed. QED BY ONLY <1>SVgfWR5UeKkkeEkRfIK, <2>old, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_pr, Sizes

\* T2M-LOCAL-VISIBILITY

<1>aPmZGaSOtTUkDIjnErfQ6n.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE RP2BT_T_prefc'
<2> HIDE DEF PTimeout, PEnd, PageTo, GiveUpToN, CoreTypeOK, STypeOK, RP2BT_Types, RP2BT_T_prefc
<2>old. RP2BT_T_prefc
 BY ONLY <1>aPmZGaSOtTUkDIjnErfQ6n, V22_T_prefc, SMTT(5) DEF RP2BT_T_prefc
<2>effect. prefc'=prefc \/ prefc'=[prefc EXCEPT ![rpg[i][r]]=0]
 BY ONLY <1>aPmZGaSOtTUkDIjnErfQ6n, ZenonT(5) DEF PTimeout, PEnd, PageTo
<2>qed. QED BY ONLY <1>aPmZGaSOtTUkDIjnErfQ6n, <2>old, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_prefc, Sizes

\* T2M-LOCAL-VISIBILITY

<1>kbNu8pfqgRV3qRtQMAyo.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE RP2BT_T_pst'
<2> HIDE DEF PTimeout, PEnd, PageTo, GiveUpToN, CoreTypeOK, STypeOK, RP2BT_Types, RP2BT_T_pst
<2>old. RP2BT_T_pst
 BY ONLY <1>kbNu8pfqgRV3qRtQMAyo, V22_T_pst, SMTT(5) DEF RP2BT_T_pst
<2>effect. pst'=[pst EXCEPT ![rpg[i][r]]="free"] \/ pst'=[pst EXCEPT ![rpg[i][r]]="drain"] \/ pst'=[pst EXCEPT ![rpg[i][r]]="priv"] \/ pst'=[pst EXCEPT ![rpg[i][r]]="quar"]
 BY ONLY <1>kbNu8pfqgRV3qRtQMAyo, ZenonT(5) DEF PTimeout, PEnd, PageTo, GiveUpToN
<2>qed. QED BY ONLY <1>kbNu8pfqgRV3qRtQMAyo, <2>old, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_pst, Sizes

\* T2M-LOCAL-VISIBILITY

<1>Qn3uzWzliFSN2r9hVR0vP.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE RP2BT_T_sled'
<2> HIDE DEF PTimeout, RP2BT_T_sled, CoreTypeOK, STypeOK
<2>old. sled \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>Qn3uzWzliFSN2r9hVR0vP, V22_T_sled, SMTT(5)
<2>effect. sled'=[sled EXCEPT ![rpg[i][r]]={}] \/ sled'=[sled EXCEPT ![rpg[i][r]]=sled[rpg[i][r]]]
 BY ONLY <1>Qn3uzWzliFSN2r9hVR0vP, ZenonT(5) DEF PTimeout, PEnd, PageTo
<2>qed. QED BY ONLY <1>Qn3uzWzliFSN2r9hVR0vP, <2>old, <2>effect, SMTT(5) DEF RP2BT_T_sled

\* T2M-LOCAL-VISIBILITY

<1>JhZgvxuWt4asSuBlFc.          
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PTimeout(i,r)
  PROVE CoreTypeOK'
<2> USE ONLY <1>JhZgvxuWt4asSuBlFc, Sizes, Location, Design
<2>1. RP2BT_Types'
  BY SMTT(10), <1>LjB2X1ttMFQvXxJ9e3pta1, <1>zFmgJuUZwBbDvtnEcwg, <1>rtOo1PJhITC8lOdwvZi, <1>S3FF6F705FrzhmuD0swb, <1>UjlzkKeJwCET3gn6WTli, <1>RTrlR18NFfoOYDtGDcP, <1>h2zVRQK5TODt1IY5qw4X, <1>k3ad0931rRbZ2nJrXYaH, <1>SVgfWR5UeKkkeEkRfIK, <1>aPmZGaSOtTUkDIjnErfQ6n, <1>kbNu8pfqgRV3qRtQMAyo, <1>Qn3uzWzliFSN2r9hVR0vP, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY SMTT(10), <2>1, <1>CHOHBThA20rasQxfw0, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2063_PdRPR2BTPdPTimeoutTypes


<1> QED BY <1>JhZgvxuWt4asSuBlFc, Sizes, Location, Design DEF Sizes, Location, Design
====
