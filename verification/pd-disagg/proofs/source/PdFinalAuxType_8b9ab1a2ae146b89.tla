---- MODULE PdFinalAuxType_8b9ab1a2ae146b89 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_8b9ab1a2ae146b89 ==          
  ASSUME Sizes, Location, Design,
         NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
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


<1>KFZDqHPjISfWMV5KAaVF7.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PRecvReq(i,r)
  PROVE \E m \in net : m.t = "req" /\ m.r = r /\ (net' = net \/ net' = net \cup {Msg("abort",i,m.pe,r,m.g,0,0,0,FALSE)})
  BY ONLY <1>KFZDqHPjISfWMV5KAaVF7, Sizes, Location, Design, Design, SMTT(10) DEF PRecvReq, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zv5ODn0TGjiz9dODiCZ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_net'
<2> USE ONLY <1>zv5ODn0TGjiz9dODiCZ, Sizes, Location, Design
<2>1. RP2BT_T_net
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. \E m \in net : m.t = "req" /\ m.r = r /\ (net' = net \/ net' = net \cup {Msg("abort",i,m.pe,r,m.g,0,0,0,FALSE)})
  BY SMTT(10), <1>KFZDqHPjISfWMV5KAaVF7, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A m \in net : m.t = "req" => m.pe \in Inst
  BY SMTT(10), <1>MZ4pNdxw46uuvgcOSFf6Bbb, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, Location, <1>aj6UN7XVDsae, SMTT(10), Sizes, Design DEF Msg, MsgT, RP2BT_T_net, Xids, Sizes, Location, Design
\* T2M-END R2M2041_PdRPR2BTPdPRecvReqNet

\* T2M-SCOPE R2M2042_PdRPR2BTPdPRecvReqFrames

<1>QH5pbZKoeqhhOSYzt.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PRecvReq(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, pqp, prefc, rd, rhit, rp, rt, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>QH5pbZKoeqhhOSYzt, Sizes, Location, Design, Zenon DEF PRecvReq, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M2042_PdRPR2BTPdPRecvReqFrames

\* T2M-SCOPE R2M2043_PdRPR2BTPdPRecvReqTypes

<1>eqOn35P7cmE352J2j8KPiA.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_alive' /\ RP2BT_T_crep' /\ RP2BT_T_drep' /\ RP2BT_T_dsucc' /\ RP2BT_T_gen' /\ RP2BT_T_hd' /\ RP2BT_T_hok' /\ RP2BT_T_hp' /\ RP2BT_T_hw' /\ RP2BT_T_iv' /\ RP2BT_T_kfly' /\ RP2BT_T_kpin' /\ RP2BT_T_krs' /\ RP2BT_T_nfail' /\ RP2BT_T_nx' /\ RP2BT_T_pqp' /\ RP2BT_T_prefc' /\ RP2BT_T_rd' /\ RP2BT_T_rhit' /\ RP2BT_T_rp' /\ RP2BT_T_rt' /\ RP2BT_T_torn' /\ RP2BT_T_xd' /\ RP2BT_T_xdst' /\ RP2BT_T_xg' /\ RP2BT_T_xk' /\ RP2BT_T_xlt' /\ RP2BT_T_xnt' /\ RP2BT_T_xp' /\ RP2BT_T_xr' /\ RP2BT_T_xsrc' /\ RP2BT_T_xst'
<2> USE ONLY <1>eqOn35P7cmE352J2j8KPiA, Sizes, Location, Design
<2>1. RP2BT_Types
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, pqp, prefc, rd, rhit, rp, rt, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY SMTT(10), <1>QH5pbZKoeqhhOSYzt, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RP2BT_Types, RP2BT_T_alive, RP2BT_T_crep, RP2BT_T_drep, RP2BT_T_dsucc, RP2BT_T_gen, RP2BT_T_hd, RP2BT_T_hok, RP2BT_T_hp, RP2BT_T_hw, RP2BT_T_iv, RP2BT_T_kfly, RP2BT_T_kpin, RP2BT_T_krs, RP2BT_T_nfail, RP2BT_T_nx, RP2BT_T_pqp, RP2BT_T_prefc, RP2BT_T_rd, RP2BT_T_rhit, RP2BT_T_rp, RP2BT_T_rt, RP2BT_T_torn, RP2BT_T_xd, RP2BT_T_xdst, RP2BT_T_xg, RP2BT_T_xk, RP2BT_T_xlt, RP2BT_T_xnt, RP2BT_T_xp, RP2BT_T_xr, RP2BT_T_xsrc, RP2BT_T_xst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qciXbwBeA2AnBzM63MqyX.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_gbad'
<2> USE ONLY <1>qciXbwBeA2AnBzM63MqyX, Sizes, Location, Design
<2>1. RP2BT_T_gbad
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>aj6UN7XVDsae, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PRecvReq, PhSet, RP2BT_T_gbad, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fZNse44E5ZqlUwjJEMRU.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_led'
<2> USE ONLY <1>fZNse44E5ZqlUwjJEMRU, Sizes, Location, Design
<2>1. RP2BT_T_led /\ RP2BT_T_net /\ RP2BT_T_nx
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>aj6UN7XVDsae, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PRecvReq, PhSet, RP2BT_T_led, RP2BT_T_net, RP2BT_T_nx, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>s5AoHwr2FzuRkBJfKQeA.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_pgn'
<2> USE ONLY <1>s5AoHwr2FzuRkBJfKQeA, Sizes, Location, Design
<2>1. RP2BT_T_net /\ RP2BT_T_pgn /\ RP2BT_T_rg
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>3. \A m \in net : m.t = "req" => m.pe \in Inst
  BY SMTT(10), <1>MZ4pNdxw46uuvgcOSFf6Bbb, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>aj6UN7XVDsae, Design, Sizes, <2>3, SMTT(10), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PRecvReq, PhSet, RP2BT_T_net, RP2BT_T_pgn, RP2BT_T_rg, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DUavc7oWvdwwLPUNFFj.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_ph'
<2> USE ONLY <1>DUavc7oWvdwwLPUNFFj, Sizes, Location, Design
<2>1. RP2BT_T_ph
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>aj6UN7XVDsae, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PRecvReq, PhSet, RP2BT_T_ph, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KI8oxXT7xjZVQKtyevut.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_plt'
<2> USE ONLY <1>KI8oxXT7xjZVQKtyevut, Sizes, Location, Design
<2>1. RP2BT_T_plt /\ RP2BT_T_xnt
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>aj6UN7XVDsae, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PRecvReq, PhSet, RP2BT_T_plt, RP2BT_T_xnt, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gkJwwFNw4Fx4xSSpJdj.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_pr'
<2> USE ONLY <1>gkJwwFNw4Fx4xSSpJdj, Sizes, Location, Design
<2>1. RP2BT_T_pr
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>aj6UN7XVDsae, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PRecvReq, PhSet, RP2BT_T_pr, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kvbNczIvILAnDeiOu6r3.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_pst'
<2> USE ONLY <1>kvbNczIvILAnDeiOu6r3, Sizes, Location, Design
<2>1. RP2BT_T_pst
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>aj6UN7XVDsae, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PRecvReq, PhSet, RP2BT_T_pst, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nQTieAWFq7MLCktKq7gL.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_ptl'
<2> USE ONLY <1>nQTieAWFq7MLCktKq7gL, Sizes, Location, Design
<2>1. RP2BT_T_ptl
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>aj6UN7XVDsae, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PRecvReq, PhSet, RP2BT_T_ptl, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UfX6e4eFTxTZgPjKQDKp6.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_pvis'
<2> USE ONLY <1>UfX6e4eFTxTZgPjKQDKp6, Sizes, Location, Design
<2>1. RP2BT_T_pvis
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>aj6UN7XVDsae, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PRecvReq, PhSet, RP2BT_T_pvis, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lBh4vv8aN3FTZsF6N4X.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_rg'
<2> USE ONLY <1>lBh4vv8aN3FTZsF6N4X, Sizes, Location, Design
<2>1. RP2BT_T_net /\ RP2BT_T_rg
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>3. \A m \in net : m.t = "req" => m.pe \in Inst
  BY SMTT(10), <1>MZ4pNdxw46uuvgcOSFf6Bbb, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>aj6UN7XVDsae, Design, Sizes, <2>3, SMTT(10), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PRecvReq, PhSet, RP2BT_T_net, RP2BT_T_rg, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rP8CK1iKAQLzJW6ir0eS.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_rpe'
<2> USE ONLY <1>rP8CK1iKAQLzJW6ir0eS, Sizes, Location, Design
<2>1. RP2BT_T_net /\ RP2BT_T_rpe
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>3. \A m \in net : m.t = "req" => m.pe \in Inst
  BY SMTT(10), <1>MZ4pNdxw46uuvgcOSFf6Bbb, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>aj6UN7XVDsae, Design, Sizes, <2>3, SMTT(10), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PRecvReq, PhSet, RP2BT_T_net, RP2BT_T_rpe, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TgzGMvz7dwvhJww36RnZ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_rpg'
<2> USE ONLY <1>TgzGMvz7dwvhJww36RnZ, Sizes, Location, Design
<2>1. RP2BT_T_net /\ RP2BT_T_rpg
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>aj6UN7XVDsae, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PRecvReq, PhSet, RP2BT_T_net, RP2BT_T_rpg, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YQBip69UnB6R6PqQWx2.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_rx'
<2> USE ONLY <1>YQBip69UnB6R6PqQWx2, Sizes, Location, Design
<2>1. RP2BT_T_net /\ RP2BT_T_nx /\ RP2BT_T_rx
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>aj6UN7XVDsae, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PRecvReq, PhSet, RP2BT_T_net, RP2BT_T_nx, RP2BT_T_rx, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VXigf8kGkt4tDLvZHZ1Fm.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_sfly'
<2> HIDE DEF PRecvReq, RP2BT_T_sfly, CoreTypeOK, STypeOK
<2>old. sfly \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>VXigf8kGkt4tDLvZHZ1Fm, V22_T_sfly, SMTT(5)
<2>k12. K12
 BY ONLY <1>VXigf8kGkt4tDLvZHZ1Fm, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>witness. PICK m \in net : m.t="req" /\
 (UNCHANGED sfly \/ (\E p \in Pages : sfly'=[sfly EXCEPT ![p]=@ \cup {Tag(r,m.g)}]))
 BY ONLY <1>VXigf8kGkt4tDLvZHZ1Fm, ZenonT(5) DEF PRecvReq
<2>gen. m.g \in Gens
 BY ONLY <2>witness, <2>k12, SMTT(5) DEF K12
<2>qed. QED BY ONLY <1>VXigf8kGkt4tDLvZHZ1Fm, <2>old, <2>witness, <2>gen, SMTT(5) DEF RP2BT_T_sfly, Tag

\* T2M-LOCAL-VISIBILITY

<1>Gk9zBJfysbOV2gUzTb0Ym.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE RP2BT_T_sled'
<2> HIDE DEF PRecvReq, K12, RP2BT_T_sled, CoreTypeOK, STypeOK
<2>old. sled \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>Gk9zBJfysbOV2gUzTb0Ym, V22_T_sled, SMTT(5)
<2>message. K12
 BY ONLY <1>Gk9zBJfysbOV2gUzTb0Ym, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>witness. PICK msg \in net : msg.t="req" /\
 (sled'=sled \/ \E p \in Pages : sled'=[sled EXCEPT ![p]=@ \cup {Tag(r,msg.g)}])
 BY ONLY <1>Gk9zBJfysbOV2gUzTb0Ym, ZenonT(5) DEF PRecvReq
<2>generation. msg.g \in Gens
 BY ONLY <2>witness, <2>message, SMTT(5) DEF K12
<2>tag_type. Tag(r,msg.g) \in Rq \X Gens
 BY ONLY <1>Gk9zBJfysbOV2gUzTb0Ym, <2>generation, SMTT(5) DEF Tag
<2>qed. QED BY ONLY <2>old, <2>witness, <2>tag_type, SMTT(5) DEF RP2BT_T_sled

\* T2M-LOCAL-VISIBILITY

<1>nrAhl5xQJrCGOYaEYe.          
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PRecvReq(i,r)
  PROVE CoreTypeOK'
<2> USE ONLY <1>nrAhl5xQJrCGOYaEYe, Sizes, Location, Design
<2>1. RP2BT_Types'
  BY SMTT(10), <1>eqOn35P7cmE352J2j8KPiA, <1>zv5ODn0TGjiz9dODiCZ, <1>qciXbwBeA2AnBzM63MqyX, <1>fZNse44E5ZqlUwjJEMRU, <1>s5AoHwr2FzuRkBJfKQeA, <1>DUavc7oWvdwwLPUNFFj, <1>KI8oxXT7xjZVQKtyevut, <1>gkJwwFNw4Fx4xSSpJdj, <1>kvbNczIvILAnDeiOu6r3, <1>nQTieAWFq7MLCktKq7gL, <1>UfX6e4eFTxTZgPjKQDKp6, <1>lBh4vv8aN3FTZsF6N4X, <1>rP8CK1iKAQLzJW6ir0eS, <1>TgzGMvz7dwvhJww36RnZ, <1>YQBip69UnB6R6PqQWx2, <1>VXigf8kGkt4tDLvZHZ1Fm, <1>Gk9zBJfysbOV2gUzTb0Ym, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY SMTT(10), <2>1, <1>CHOHBThA20rasQxfw0, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2043_PdRPR2BTPdPRecvReqTypes


<1> QED BY <1>nrAhl5xQJrCGOYaEYe, Sizes, Location, Design DEF Sizes, Location, Design
====
