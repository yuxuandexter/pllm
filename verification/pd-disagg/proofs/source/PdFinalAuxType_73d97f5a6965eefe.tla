---- MODULE PdFinalAuxType_73d97f5a6965eefe ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_73d97f5a6965eefe ==          
  ASSUME Sizes, Location, Design,
         NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
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

           RP2BT_BK8At(i,r) ==
             LET p == rpg[i][r]
                 g == rg[i][r]
                 t == Tag(r, g)
                 x == rx[i][r]
             IN
             /\ IsP(i) => (ph[i][r] \in {"none", "pre", "ready", "reg", "sent", "exp", "end"} /\ ~rhit[i][r])
             /\ IsD(i) => ph[i][r] \in {"none", "wait", "rd", "run", "ovl", "end"}
             /\ ph[i][r] = "none" => (g = 0 /\ p = 0 /\ x = 0 /\ ~rhit[i][r])
             /\ ph[i][r] # "none" => (g \in Gens /\ g <= gen[r])
             /\ ph[i][r] # "none" /\ IsP(i) => (hp[r][g] = i /\ rpe[i][r] = hd[r][g])
             /\ ph[i][r] # "none" /\ IsD(i) => (hd[r][g] = i /\ rpe[i][r] = hp[r][g])
             /\ Active(i, r) => (p \in Pages /\ Loc(p) = i)
             /\ Active(i, r) /\ ~rhit[i][r] => OwnedBy(p, r, g) /\ pst[p] = "priv"
             /\ ph[i][r] = "pre" => (x = 0 /\ led[p] = {} /\ sled[p] = {t} /\ sfly[p] \subseteq {t} /\ plt[p] = 0
                                     /\ (IF t \in sfly[p] THEN ptl[p] = 0 ELSE ptl[p] \in PLens(r, g)))
             /\ ph[i][r] = "ready" => (x = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g))
             /\ ph[i][r] = "reg" => (Mode = "push" /\ PReg /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = r /\ xg[x] = g
                                     /\ iv[x] = "reg" /\ sled[p] = {} /\ sfly[p] = {}
                                     /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g) /\ xlt[x] = ptl[p])
             /\ ph[i][r] = "sent" => (Mode = "push" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = r /\ xg[x] = g
                                      /\ iv[x] \in {"posted", "cqe", "failret"} /\ sled[p] = {} /\ sfly[p] = {}
                                      /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g) /\ xlt[x] = ptl[p])
             /\ ph[i][r] = "exp" => (Mode = "pull" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = r /\ xg[x] = g
                                     /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g) /\ xlt[x] = ptl[p])


<1> HIDE DEF RP2BT_T_gen, RP2BT_T_rt, RP2BT_T_rp, RP2BT_T_rd, RP2BT_T_hp, RP2BT_T_hd, RP2BT_T_alive, RP2BT_T_nfail, RP2BT_T_torn, RP2BT_T_kpin, RP2BT_T_kfly, RP2BT_T_krs, RP2BT_T_ph, RP2BT_T_rg, RP2BT_T_rpg, RP2BT_T_rpe, RP2BT_T_rx, RP2BT_T_rhit, RP2BT_T_pst, RP2BT_T_pr, RP2BT_T_pgn, RP2BT_T_plt, RP2BT_T_ptl, RP2BT_T_pvis, RP2BT_T_led, RP2BT_T_sfly, RP2BT_T_sled, RP2BT_T_prefc, RP2BT_T_pqp, RP2BT_T_xr, RP2BT_T_xg, RP2BT_T_xk, RP2BT_T_xp, RP2BT_T_xd, RP2BT_T_xsrc, RP2BT_T_xdst, RP2BT_T_xnt, RP2BT_T_hw, RP2BT_T_hok, RP2BT_T_iv, RP2BT_T_xst, RP2BT_T_xlt, RP2BT_T_nx, RP2BT_T_net, RP2BT_T_drep, RP2BT_T_crep, RP2BT_T_dsucc, RP2BT_T_gbad, RP2BT_Types, RP2BT_MsgC1, RP2BT_MsgC2, RP2BT_MsgC3, RP2BT_MsgC4, RP2BT_MsgC5, RP2BT_MsgC6, RP2BT_MsgC7, RP2BT_MsgC8, RP2BT_MsgC9, RP2BT_MsgC10, RP2BT_MsgSafe, RP2BT_BK8At

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


<1>kwyArjF6IXJk4WmQmy.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PSentFail(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>kwyArjF6IXJk4WmQmy, Sizes, Location, Design, Zenon DEF PSentFail, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, PSentFailSafe, PSentFailBroken, Sizes, Location, Design
\* T2M-END R2M2053_PdRPR2BTPdPSentFailFrames


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


<1>tq6yJ8kuJIE.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE RP2BT_BK8At(i,r)
  BY ONLY <1>tq6yJ8kuJIE, Sizes, Location, Design DEF K8, RP2BT_BK8At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RWKMyy1g8ZsO4ROBqxU5.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE RP2BT_T_net'
<2> USE ONLY <1>RWKMyy1g8ZsO4ROBqxU5, Sizes, Location, Design
 <2>1. K8 /\ K1 /\ RP2BT_T_net /\ IsP(i) /\ ph[i][r] = "sent"
  BY <1>MBt71i0AtN8OEmSc, V21_Inv_K1, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, PSentFail, PSentFailSafe, PSentFailBroken, Sizes, Location, Design
 <2>2. RP2BT_BK8At(i,r) BY <2>1, <1>tq6yJ8kuJIE, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF RP2BT_BK8At, Sizes, Location, Design
 <2>4. rpe[i][r] \in DInst BY <2>1, <2>3, SMTT(5), Sizes, Location, Design DEF K1, Sizes, Location, Design
 <2>5. net' = net \cup {Msg("abort",i,rpe[i][r],r,rg[i][r],0,0,0,FALSE)}
  BY Design, SMTT(5), Sizes, Location DEF PSentFail, PSentFailSafe, PSentFailBroken, Sizes, Location, Design
 <2>6. QED BY <2>1, <2>3, <2>4, <2>5, <1>aj6UN7XVDsae, Sizes, SMTT(5), Location, Design DEF RP2BT_T_net, Msg, MsgT, Inst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M2054_PdRPR2BTPdESentFailNet

\* T2M-SCOPE R2M2055_PdRPR2BTPdE_PSentFail_TypeOK

<1>TSDUMF0DSVdOhgVHn1qsvyf.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
  PROVE RP2BT_T_alive' /\ RP2BT_T_crep' /\ RP2BT_T_drep' /\ RP2BT_T_dsucc' /\ RP2BT_T_gen' /\ RP2BT_T_hd' /\ RP2BT_T_hok' /\ RP2BT_T_hp' /\ RP2BT_T_hw' /\ RP2BT_T_kfly' /\ RP2BT_T_kpin' /\ RP2BT_T_krs' /\ RP2BT_T_nfail' /\ RP2BT_T_nx' /\ RP2BT_T_ptl' /\ RP2BT_T_pvis' /\ RP2BT_T_rd' /\ RP2BT_T_rg' /\ RP2BT_T_rhit' /\ RP2BT_T_rp' /\ RP2BT_T_rpe' /\ RP2BT_T_rpg' /\ RP2BT_T_rt' /\ RP2BT_T_rx' /\ RP2BT_T_sfly' /\ RP2BT_T_torn' /\ RP2BT_T_xd' /\ RP2BT_T_xdst' /\ RP2BT_T_xg' /\ RP2BT_T_xk' /\ RP2BT_T_xlt' /\ RP2BT_T_xnt' /\ RP2BT_T_xp' /\ RP2BT_T_xr' /\ RP2BT_T_xsrc' /\ RP2BT_T_xst'
<2> USE ONLY <1>TSDUMF0DSVdOhgVHn1qsvyf, Sizes, Location, Design
<2>1. RP2BT_Types
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY SMTT(10), <1>kwyArjF6IXJk4WmQmy, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RP2BT_Types, RP2BT_T_alive, RP2BT_T_crep, RP2BT_T_drep, RP2BT_T_dsucc, RP2BT_T_gen, RP2BT_T_hd, RP2BT_T_hok, RP2BT_T_hp, RP2BT_T_hw, RP2BT_T_kfly, RP2BT_T_kpin, RP2BT_T_krs, RP2BT_T_nfail, RP2BT_T_nx, RP2BT_T_ptl, RP2BT_T_pvis, RP2BT_T_rd, RP2BT_T_rg, RP2BT_T_rhit, RP2BT_T_rp, RP2BT_T_rpe, RP2BT_T_rpg, RP2BT_T_rt, RP2BT_T_rx, RP2BT_T_sfly, RP2BT_T_torn, RP2BT_T_xd, RP2BT_T_xdst, RP2BT_T_xg, RP2BT_T_xk, RP2BT_T_xlt, RP2BT_T_xnt, RP2BT_T_xp, RP2BT_T_xr, RP2BT_T_xsrc, RP2BT_T_xst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cvHUmp6yVMD5y9w29I9CDM.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
  PROVE RP2BT_T_gbad'
<2> USE ONLY <1>cvHUmp6yVMD5y9w29I9CDM, Sizes, Location, Design
<2>1. RP2BT_T_gbad
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>aj6UN7XVDsae, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PSentFail, PEnd, PageTo, PhSet, RP2BT_T_gbad, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, PSentFailSafe, PSentFailBroken, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NWsW1FZurlylw04RnEWy.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
  PROVE RP2BT_T_iv'
<2> USE ONLY <1>NWsW1FZurlylw04RnEWy, Sizes, Location, Design
<2>1. RP2BT_T_iv
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>aj6UN7XVDsae, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PSentFail, PEnd, PageTo, PhSet, RP2BT_T_iv, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, PSentFailSafe, PSentFailBroken, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gUAMhAejFpTzLCeweXZvs.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
  PROVE RP2BT_T_led'
<2> HIDE DEF PSentFail, RP2BT_T_led, CoreTypeOK, STypeOK
<2>old. led \in [Pages -> SUBSET Xids]
 BY ONLY <1>gUAMhAejFpTzLCeweXZvs, V22_T_led, SMTT(5)
<2>mut. Mut="none"
 BY ONLY Design, ZenonT(5) DEF Design
<2>effect. led'=[led EXCEPT ![rpg[i][r]]={}] \/ led'=[led EXCEPT ![rpg[i][r]]=led[rpg[i][r]]]
 BY ONLY <1>gUAMhAejFpTzLCeweXZvs, <2>mut, ZenonT(5) DEF PSentFail, PSentFailSafe, PageTo
<2>qed. QED BY ONLY <1>gUAMhAejFpTzLCeweXZvs, <2>old, <2>effect, SMTT(5) DEF RP2BT_T_led

\* T2M-LOCAL-VISIBILITY

<1>VvOsMyArMEVqiydNagceP.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
  PROVE RP2BT_T_pgn'
<2> HIDE DEF PSentFail, PageTo, GiveUpTo, GiveUpToN, RP2BT_Types, RP2BT_T_pgn, CoreTypeOK, STypeOK
<2>old. RP2BT_T_pgn
 BY ONLY <1>VvOsMyArMEVqiydNagceP, V22_T_pgn, SMTT(5) DEF RP2BT_T_pgn
<2>effect. pgn'=pgn \/ pgn'=[pgn EXCEPT ![rpg[i][r]]=0]
 BY ONLY <1>VvOsMyArMEVqiydNagceP, ZenonT(5) DEF PSentFail, PSentFailSafe, PSentFailBroken, PageTo
<2>qed. QED BY ONLY <1>VvOsMyArMEVqiydNagceP, <2>old, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_pgn, Sizes

\* T2M-LOCAL-VISIBILITY

<1>uAriPsttQ6dE4nMjjx64.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
  PROVE RP2BT_T_ph'
<2> HIDE DEF PSentFail, PageTo, GiveUpTo, GiveUpToN, RP2BT_Types, RP2BT_T_ph, CoreTypeOK, STypeOK
<2>old. RP2BT_T_ph
 BY ONLY <1>uAriPsttQ6dE4nMjjx64, V22_T_ph, SMTT(5) DEF RP2BT_T_ph
<2>effect. ph'=[ph EXCEPT ![i][r]="end"]
 BY ONLY <1>uAriPsttQ6dE4nMjjx64, ZenonT(5) DEF PSentFail, PSentFailSafe, PSentFailBroken
<2>qed. QED BY ONLY <1>uAriPsttQ6dE4nMjjx64, <2>old, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_ph, Sizes, PhSet

\* T2M-LOCAL-VISIBILITY

<1>USZ9fuku9LtQNxiDLWQxH.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
  PROVE RP2BT_T_plt'
<2> HIDE DEF PSentFail, PageTo, GiveUpTo, GiveUpToN, RP2BT_Types, RP2BT_T_plt, CoreTypeOK, STypeOK
<2>old. RP2BT_T_plt
 BY ONLY <1>USZ9fuku9LtQNxiDLWQxH, V22_T_plt, SMTT(5) DEF RP2BT_T_plt
<2>effect. plt'=plt \/ plt'=[plt EXCEPT ![rpg[i][r]]=0]
 BY ONLY <1>USZ9fuku9LtQNxiDLWQxH, ZenonT(5) DEF PSentFail, PSentFailSafe, PSentFailBroken, PageTo
<2>qed. QED BY ONLY <1>USZ9fuku9LtQNxiDLWQxH, <2>old, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_plt, Sizes

\* T2M-LOCAL-VISIBILITY

<1>itQQIKgdlHcDkk1WeuwyP.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
  PROVE RP2BT_T_pqp'
<2> HIDE DEF PSentFail, PageTo, GiveUpTo, GiveUpToN, RP2BT_Types, RP2BT_T_pqp, CoreTypeOK, STypeOK
<2>old. RP2BT_T_pqp
 BY ONLY <1>itQQIKgdlHcDkk1WeuwyP, V22_T_pqp, SMTT(5) DEF RP2BT_T_pqp
<2>peer_type. rpe \in [Inst -> [Rq -> {0} \cup Inst]]
 BY ONLY <1>itQQIKgdlHcDkk1WeuwyP, V22_T_rpe, SMTT(5)
<2>effect. pqp'=[pqp EXCEPT ![rpg[i][r]]=0] \/ pqp'=[pqp EXCEPT ![rpg[i][r]]=pqp[rpg[i][r]]] \/ pqp'=[pqp EXCEPT ![rpg[i][r]]=rpe[i][r]]
 BY ONLY <1>itQQIKgdlHcDkk1WeuwyP, ZenonT(5) DEF PSentFail, PSentFailSafe, PSentFailBroken, PageTo
<2>qed. QED BY ONLY <1>itQQIKgdlHcDkk1WeuwyP, <2>old, <2>effect, <2>peer_type, Sizes, SMTT(5) DEF RP2BT_T_pqp, Sizes

\* T2M-LOCAL-VISIBILITY

<1>kgOVGoqlwugk8Hg02Jbn.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
  PROVE RP2BT_T_pr'
<2> HIDE DEF PSentFail, PageTo, GiveUpTo, GiveUpToN, RP2BT_Types, RP2BT_T_pr, CoreTypeOK, STypeOK
<2>old. RP2BT_T_pr
 BY ONLY <1>kgOVGoqlwugk8Hg02Jbn, V22_T_pr, SMTT(5) DEF RP2BT_T_pr
<2>effect. pr'=pr \/ pr'=[pr EXCEPT ![rpg[i][r]]=0]
 BY ONLY <1>kgOVGoqlwugk8Hg02Jbn, ZenonT(5) DEF PSentFail, PSentFailSafe, PSentFailBroken, PageTo
<2>qed. QED BY ONLY <1>kgOVGoqlwugk8Hg02Jbn, <2>old, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_pr, Sizes

\* T2M-LOCAL-VISIBILITY

<1>GLiEb24Vh9AfNQ3T7s3L2Pt.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
  PROVE RP2BT_T_prefc'
<2> HIDE DEF PSentFail, PageTo, GiveUpTo, GiveUpToN, RP2BT_Types, RP2BT_T_prefc, CoreTypeOK, STypeOK
<2>old. RP2BT_T_prefc
 BY ONLY <1>GLiEb24Vh9AfNQ3T7s3L2Pt, V22_T_prefc, SMTT(5) DEF RP2BT_T_prefc
<2>effect. prefc'=prefc \/ prefc'=[prefc EXCEPT ![rpg[i][r]]=0]
 BY ONLY <1>GLiEb24Vh9AfNQ3T7s3L2Pt, ZenonT(5) DEF PSentFail, PSentFailSafe, PSentFailBroken, PageTo
<2>qed. QED BY ONLY <1>GLiEb24Vh9AfNQ3T7s3L2Pt, <2>old, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_prefc, Sizes

\* T2M-LOCAL-VISIBILITY

<1>g9FfZiqL0WJ3fk5Xrj07k.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
  PROVE RP2BT_T_pst'
<2> HIDE DEF PSentFail, PageTo, GiveUpTo, GiveUpToN, RP2BT_Types, RP2BT_T_pst, CoreTypeOK, STypeOK
<2>old. RP2BT_T_pst
 BY ONLY <1>g9FfZiqL0WJ3fk5Xrj07k, V22_T_pst, SMTT(5) DEF RP2BT_T_pst
<2>effect. pst'=[pst EXCEPT ![rpg[i][r]]="free"] \/ pst'=[pst EXCEPT ![rpg[i][r]]="drain"] \/ pst'=[pst EXCEPT ![rpg[i][r]]="priv"] \/ pst'=[pst EXCEPT ![rpg[i][r]]="quar"]
 BY ONLY <1>g9FfZiqL0WJ3fk5Xrj07k, ZenonT(5) DEF PSentFail, PSentFailSafe, PSentFailBroken, PageTo, GiveUpTo, GiveUpToN
<2>qed. QED BY ONLY <1>g9FfZiqL0WJ3fk5Xrj07k, <2>old, <2>effect, Sizes, SMTT(5) DEF RP2BT_T_pst, Sizes

\* T2M-LOCAL-VISIBILITY

<1>MbH4OXJxypQshLuhBe7JG8.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
 PROVE RP2BT_T_sled'
<2> USE ONLY <1>MbH4OXJxypQshLuhBe7JG8, Sizes, Location, Design
 <2>1. RP2BT_T_sled BY <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, SMTT(10), Sizes, Location DEF PSentFail, PageTo, RP2BT_T_sled, PSentFailSafe, PSentFailBroken, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ryQBMhtNktXowR6tmEQ.          
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PSentFail(i,r)
  PROVE CoreTypeOK'
<2> USE ONLY <1>ryQBMhtNktXowR6tmEQ, Sizes, Location, Design
<2>1. RP2BT_Types'
  BY SMTT(10), <1>TSDUMF0DSVdOhgVHn1qsvyf, <1>RWKMyy1g8ZsO4ROBqxU5, <1>cvHUmp6yVMD5y9w29I9CDM, <1>NWsW1FZurlylw04RnEWy, <1>gUAMhAejFpTzLCeweXZvs, <1>VvOsMyArMEVqiydNagceP, <1>uAriPsttQ6dE4nMjjx64, <1>USZ9fuku9LtQNxiDLWQxH, <1>itQQIKgdlHcDkk1WeuwyP, <1>kgOVGoqlwugk8Hg02Jbn, <1>GLiEb24Vh9AfNQ3T7s3L2Pt, <1>g9FfZiqL0WJ3fk5Xrj07k, <1>MbH4OXJxypQshLuhBe7JG8, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY SMTT(10), <2>1, <1>CHOHBThA20rasQxfw0, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2055_PdRPR2BTPdE_PSentFail_TypeOK


<1> QED BY <1>ryQBMhtNktXowR6tmEQ, Sizes, Location, Design DEF Sizes, Location, Design
====
