---- MODULE PdFinalAuxType_d2a2a7e3af4f9691 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_d2a2a7e3af4f9691 ==        
  ASSUME Sizes, Location, Design,
         NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
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


           RP2BT_BK7At(p) ==
             /\ ptl[p] >= 0
             /\ pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {}
                                    /\ prefc[p] = 0 /\ pqp[p] = 0)
             /\ pst[p] \in {"priv", "drain", "quar"} => (pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]])
             /\ pst[p] = "quar" => pqp[p] \in Inst
             /\ pst[p] # "quar" => pqp[p] = 0
             /\ pst[p] # "shared" => prefc[p] = 0
             /\ pst[p] = "shared" => (IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p))
             /\ pst[p] = "drain" => (led[p] # {} \/ sled[p] # {} \/ KPinned(p))   
             /\ pst[p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(p), r, p)
             /\ pst[p] = "priv" => \/ (Maps(Loc(p), pr[p], p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]])
                                   \/ GrownP(p)


           RP2BT_BE_PPoll(i, r) ==
             IsP(i) /\ ph[i][r] = "pre" /\
              LET p == rpg[i][r] t == Tag(r, rg[i][r])
              IN /\ t \notin sfly[p] /\ t \in sled[p]
                 /\ sled' = [sled EXCEPT ![p] = @ \ {t}]
                 /\ plt' = [plt EXCEPT ![p] = ptl[p]]
                 /\ ph' = [ph EXCEPT ![i][r] = "ready"]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP2BT_T_gen, RP2BT_T_rt, RP2BT_T_rp, RP2BT_T_rd, RP2BT_T_hp, RP2BT_T_hd, RP2BT_T_alive, RP2BT_T_nfail, RP2BT_T_torn, RP2BT_T_kpin, RP2BT_T_kfly, RP2BT_T_krs, RP2BT_T_ph, RP2BT_T_rg, RP2BT_T_rpg, RP2BT_T_rpe, RP2BT_T_rx, RP2BT_T_rhit, RP2BT_T_pst, RP2BT_T_pr, RP2BT_T_pgn, RP2BT_T_plt, RP2BT_T_ptl, RP2BT_T_pvis, RP2BT_T_led, RP2BT_T_sfly, RP2BT_T_sled, RP2BT_T_prefc, RP2BT_T_pqp, RP2BT_T_xr, RP2BT_T_xg, RP2BT_T_xk, RP2BT_T_xp, RP2BT_T_xd, RP2BT_T_xsrc, RP2BT_T_xdst, RP2BT_T_xnt, RP2BT_T_hw, RP2BT_T_hok, RP2BT_T_iv, RP2BT_T_xst, RP2BT_T_xlt, RP2BT_T_nx, RP2BT_T_net, RP2BT_T_drep, RP2BT_T_crep, RP2BT_T_dsucc, RP2BT_T_gbad, RP2BT_Types, RP2BT_BK8At, RP2BT_BK7At, RP2BT_BE_PPoll

<1>MBt71i0AtN8OEmSc.         TypInv => RP2BT_Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, RP2BT_Types, RP2BT_T_gen, RP2BT_T_rt, RP2BT_T_rp, RP2BT_T_rd, RP2BT_T_hp, RP2BT_T_hd, RP2BT_T_alive, RP2BT_T_nfail, RP2BT_T_torn, RP2BT_T_kpin, RP2BT_T_kfly, RP2BT_T_krs, RP2BT_T_ph, RP2BT_T_rg, RP2BT_T_rpg, RP2BT_T_rpe, RP2BT_T_rx, RP2BT_T_rhit, RP2BT_T_pst, RP2BT_T_pr, RP2BT_T_pgn, RP2BT_T_plt, RP2BT_T_ptl, RP2BT_T_pvis, RP2BT_T_led, RP2BT_T_sfly, RP2BT_T_sled, RP2BT_T_prefc, RP2BT_T_pqp, RP2BT_T_xr, RP2BT_T_xg, RP2BT_T_xk, RP2BT_T_xp, RP2BT_T_xd, RP2BT_T_xsrc, RP2BT_T_xdst, RP2BT_T_xnt, RP2BT_T_hw, RP2BT_T_hok, RP2BT_T_iv, RP2BT_T_xst, RP2BT_T_xlt, RP2BT_T_nx, RP2BT_T_net, RP2BT_T_drep, RP2BT_T_crep, RP2BT_T_dsucc, RP2BT_T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CHOHBThA20rasQxfw0.         RP2BT_Types' => CoreTypeOK'
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, RP2BT_Types, RP2BT_T_gen, RP2BT_T_rt, RP2BT_T_rp, RP2BT_T_rd, RP2BT_T_hp, RP2BT_T_hd, RP2BT_T_alive, RP2BT_T_nfail, RP2BT_T_torn, RP2BT_T_kpin, RP2BT_T_kfly, RP2BT_T_krs, RP2BT_T_ph, RP2BT_T_rg, RP2BT_T_rpg, RP2BT_T_rpe, RP2BT_T_rx, RP2BT_T_rhit, RP2BT_T_pst, RP2BT_T_pr, RP2BT_T_pgn, RP2BT_T_plt, RP2BT_T_ptl, RP2BT_T_pvis, RP2BT_T_led, RP2BT_T_sfly, RP2BT_T_sled, RP2BT_T_prefc, RP2BT_T_pqp, RP2BT_T_xr, RP2BT_T_xg, RP2BT_T_xk, RP2BT_T_xp, RP2BT_T_xd, RP2BT_T_xsrc, RP2BT_T_xdst, RP2BT_T_xnt, RP2BT_T_hw, RP2BT_T_hok, RP2BT_T_iv, RP2BT_T_xst, RP2BT_T_xlt, RP2BT_T_nx, RP2BT_T_net, RP2BT_T_drep, RP2BT_T_crep, RP2BT_T_dsucc, RP2BT_T_gbad, Sizes, Location, Design
\* T2M-END R2M1995_PdRPR2BTPdProofBase


<1>uQBHBUE4KrdZGsP.        
  RP2BT_T_gen /\ UNCHANGED gen => RP2BT_T_gen'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_gen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JZWHry1pWw91dI.        
  RP2BT_T_rt /\ UNCHANGED rt => RP2BT_T_rt'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_rt, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WBOM5aPw8r954S.        
  RP2BT_T_rp /\ UNCHANGED rp => RP2BT_T_rp'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_rp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WUvI7UXxVQZPxn.        
  RP2BT_T_rd /\ UNCHANGED rd => RP2BT_T_rd'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_rd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>URdVYxo0pYZLAb.        
  RP2BT_T_hp /\ UNCHANGED hp => RP2BT_T_hp'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_hp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mPTe5FsdEDYcRy.        
  RP2BT_T_hd /\ UNCHANGED hd => RP2BT_T_hd'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_hd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wGJzdtzmU1DcRVTxq.        
  RP2BT_T_alive /\ UNCHANGED alive => RP2BT_T_alive'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_alive, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kfyrKCUnJVXY9bSit.        
  RP2BT_T_nfail /\ UNCHANGED nfail => RP2BT_T_nfail'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_nfail, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BixFQxQ1L75eILQ3.        
  RP2BT_T_torn /\ UNCHANGED torn => RP2BT_T_torn'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_torn, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PLD7SK4z8vsJRIyV.        
  RP2BT_T_kpin /\ UNCHANGED kpin => RP2BT_T_kpin'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_kpin, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gHuwkticQ1ROSLOz.        
  RP2BT_T_kfly /\ UNCHANGED kfly => RP2BT_T_kfly'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_kfly, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HX61p8urGwoOed4.        
  RP2BT_T_krs /\ UNCHANGED krs => RP2BT_T_krs'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_krs, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RVIaRt4FnXlfPA.        
  RP2BT_T_rg /\ UNCHANGED rg => RP2BT_T_rg'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_rg, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>c6p2Cb9CmkVySdK.        
  RP2BT_T_rpg /\ UNCHANGED rpg => RP2BT_T_rpg'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_rpg, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dmZhv07HnXqUrWN.        
  RP2BT_T_rpe /\ UNCHANGED rpe => RP2BT_T_rpe'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_rpe, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>glzBXCanzSI08r.        
  RP2BT_T_rx /\ UNCHANGED rx => RP2BT_T_rx'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_rx, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BubY9NNjmy37wsie.        
  RP2BT_T_rhit /\ UNCHANGED rhit => RP2BT_T_rhit'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_rhit, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xJgZ3QKkrqjOea2.        
  RP2BT_T_pst /\ UNCHANGED pst => RP2BT_T_pst'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_pst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KT48taS0t0P8RM.        
  RP2BT_T_pr /\ UNCHANGED pr => RP2BT_T_pr'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_pr, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Xbs4aVbws27fyD7.        
  RP2BT_T_pgn /\ UNCHANGED pgn => RP2BT_T_pgn'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_pgn, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ronUQnROSJZ1081.        
  RP2BT_T_ptl /\ UNCHANGED ptl => RP2BT_T_ptl'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_ptl, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bsiNVmjnGk0gShvt.        
  RP2BT_T_pvis /\ UNCHANGED pvis => RP2BT_T_pvis'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_pvis, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ysosnR1qz3TCaPq.        
  RP2BT_T_led /\ UNCHANGED led => RP2BT_T_led'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_led, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>w1adTD6pum11lhCO.        
  RP2BT_T_sfly /\ UNCHANGED sfly => RP2BT_T_sfly'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_sfly, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RNrNSgtQ1oN3FHnHW.        
  RP2BT_T_prefc /\ UNCHANGED prefc => RP2BT_T_prefc'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_prefc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>y9VEa3peVjuHlfm.        
  RP2BT_T_pqp /\ UNCHANGED pqp => RP2BT_T_pqp'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_pqp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gFSdQtXbcb7shS.        
  RP2BT_T_xr /\ UNCHANGED xr => RP2BT_T_xr'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_xr, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YqWLH3G75pdzOn.        
  RP2BT_T_xg /\ UNCHANGED xg => RP2BT_T_xg'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_xg, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fc1xGxtnm14j4X.        
  RP2BT_T_xk /\ UNCHANGED xk => RP2BT_T_xk'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_xk, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rW18iBrTCq3x5G.        
  RP2BT_T_xp /\ UNCHANGED xp => RP2BT_T_xp'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_xp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fQ26FQr7crQovF.        
  RP2BT_T_xd /\ UNCHANGED xd => RP2BT_T_xd'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_xd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ApLV3oxLHmcr5wpK.        
  RP2BT_T_xsrc /\ UNCHANGED xsrc => RP2BT_T_xsrc'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_xsrc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jsYuQUf2Do24vGwj.        
  RP2BT_T_xdst /\ UNCHANGED xdst => RP2BT_T_xdst'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_xdst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t8QyxvDJRMbyv0s.        
  RP2BT_T_xnt /\ UNCHANGED xnt => RP2BT_T_xnt'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_xnt, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zjtIgLkUyyke2v.        
  RP2BT_T_hw /\ UNCHANGED hw => RP2BT_T_hw'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_hw, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yXle4CAhO88Dz2l.        
  RP2BT_T_hok /\ UNCHANGED hok => RP2BT_T_hok'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_hok, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GkifNnmL7cb2UT.        
  RP2BT_T_iv /\ UNCHANGED iv => RP2BT_T_iv'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_iv, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Efczfp7Yu9fLKmn.        
  RP2BT_T_xst /\ UNCHANGED xst => RP2BT_T_xst'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_xst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FdB6VLR7rLbXbo8.        
  RP2BT_T_xlt /\ UNCHANGED xlt => RP2BT_T_xlt'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_xlt, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rBSlrIJNnJhCsB.        
  RP2BT_T_nx /\ UNCHANGED nx => RP2BT_T_nx'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_nx, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>paTB6dBh3ZtFjdr.        
  RP2BT_T_net /\ UNCHANGED net => RP2BT_T_net'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_net, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gKx7kYgUNjLUz1yu.        
  RP2BT_T_drep /\ UNCHANGED drep => RP2BT_T_drep'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_drep, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Gx9hkMNlJLdC6RHB.        
  RP2BT_T_crep /\ UNCHANGED crep => RP2BT_T_crep'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_crep, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tSo1IhIabAvGrqAoi.        
  RP2BT_T_dsucc /\ UNCHANGED dsucc => RP2BT_T_dsucc'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_dsucc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DA3CRmvINX2SWFkq.        
  RP2BT_T_gbad /\ UNCHANGED gbad => RP2BT_T_gbad'
  BY SMT, Sizes, Location, Design DEF RP2BT_T_gbad, Sizes, Location, Design
\* T2M-END R2M2013_PdRPR2BTPdBFrames


<1>nF33R7ismprS5B.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PPoll(i, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>nF33R7ismprS5B, Sizes, Location, Design, Zenon DEF PPoll, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design
\* T2M-END R2M2037_PdRPR2BTPdBPPollFrames


<1>tq6yJ8kuJIE.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE RP2BT_BK8At(i,r)
  BY ONLY <1>tq6yJ8kuJIE, Sizes, Location, Design DEF K8, RP2BT_BK8At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>R7KndzQ1h1L.        
  ASSUME NEW p \in Pages, K7
  PROVE RP2BT_BK7At(p)
  BY ONLY <1>R7KndzQ1h1L, Sizes, Location, Design DEF K7, RP2BT_BK7At, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q2cyLhdu834xbLG.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PPoll(i, r)
  PROVE RP2BT_BE_PPoll(i, r)
  BY ONLY <1>Q2cyLhdu834xbLG, Sizes, Location, Design, Design, Zenon DEF PPoll, RP2BT_BE_PPoll, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vltlFb04Ij8h5.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i,r)
  PROVE rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ IsP(i)
    /\ ptl[rpg[i][r]] \in 0..PS
    /\ sled[rpg[i][r]] = {Tag(r,rg[i][r])} /\ sfly[rpg[i][r]] = {} /\ led[rpg[i][r]] = {}
<2> USE ONLY <1>vltlFb04Ij8h5, Sizes, Location, Design
<2>1. K8 /\ K7 /\ RP2BT_T_ptl /\ RP2BT_BE_PPoll(i,r)
  BY <1>MBt71i0AtN8OEmSc, <1>Q2cyLhdu834xbLG, V21_Inv_K7, V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. RP2BT_BK8At(i,r) /\ IsP(i) /\ ph[i][r] = "pre"
  BY <2>1, <1>tq6yJ8kuJIE, Sizes, Location, Design DEF RP2BT_BE_PPoll, Sizes, Location, Design
<2>3. rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
      /\ sled[rpg[i][r]] = {Tag(r,rg[i][r])} /\ sfly[rpg[i][r]] \subseteq {Tag(r,rg[i][r])} /\ led[rpg[i][r]] = {}
  BY <2>2, Zenon, Sizes, Location, Design DEF RP2BT_BK8At, Active, Sizes, Location, Design
<2>4. RP2BT_BK7At(rpg[i][r])
  BY <2>1, <2>3, <1>R7KndzQ1h1L, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. ptl[rpg[i][r]] >= 0
  BY <2>4, Zenon, Sizes, Location, Design DEF RP2BT_BK7At, Sizes, Location, Design
<2>6. ptl[rpg[i][r]] \in -1..PS
  BY <2>1, <2>3, SMT, Sizes, Location, Design DEF RP2BT_T_ptl, Sizes, Location, Design
<2>7. ptl[rpg[i][r]] \in 0..PS
  BY <2>5, <2>6, SMT, Sizes, Location, Design DEF Sizes, Location, Design
<2>8. sfly[rpg[i][r]] = {}
  BY <2>1, <2>3, Zenon, Sizes, Location, Design DEF RP2BT_BE_PPoll, Sizes, Location, Design
<2>9. QED
  BY <2>2, <2>3, <2>7, <2>8, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2038_PdRPR2BTPdBPPollEffects


<1>dLBljuciMiKAdB.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_gen'
<2> USE ONLY <1>dLBljuciMiKAdB, Sizes, Location, Design
<2>1. RP2BT_T_gen /\ UNCHANGED gen
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>uQBHBUE4KrdZGsP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VtfNbFruAyRna.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_rt'
<2> USE ONLY <1>VtfNbFruAyRna, Sizes, Location, Design
<2>1. RP2BT_T_rt /\ UNCHANGED rt
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>JZWHry1pWw91dI, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TC4T0EbMXNqMs.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_rp'
<2> USE ONLY <1>TC4T0EbMXNqMs, Sizes, Location, Design
<2>1. RP2BT_T_rp /\ UNCHANGED rp
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>WBOM5aPw8r954S, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kRcf70Vc8DObW.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_rd'
<2> USE ONLY <1>kRcf70Vc8DObW, Sizes, Location, Design
<2>1. RP2BT_T_rd /\ UNCHANGED rd
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>WUvI7UXxVQZPxn, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UdpUvtpRcAPv4.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_hp'
<2> USE ONLY <1>UdpUvtpRcAPv4, Sizes, Location, Design
<2>1. RP2BT_T_hp /\ UNCHANGED hp
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>URdVYxo0pYZLAb, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Wjx2dPsmr1RYJ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_hd'
<2> USE ONLY <1>Wjx2dPsmr1RYJ, Sizes, Location, Design
<2>1. RP2BT_T_hd /\ UNCHANGED hd
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>mPTe5FsdEDYcRy, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PHzhgLzwaKEdXNzS.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_alive'
<2> USE ONLY <1>PHzhgLzwaKEdXNzS, Sizes, Location, Design
<2>1. RP2BT_T_alive /\ UNCHANGED alive
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>wGJzdtzmU1DcRVTxq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wSl3aY69ylzUJHA1.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_nfail'
<2> USE ONLY <1>wSl3aY69ylzUJHA1, Sizes, Location, Design
<2>1. RP2BT_T_nfail /\ UNCHANGED nfail
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>kfyrKCUnJVXY9bSit, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>c4lEGZwSLCipn0w.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_torn'
<2> USE ONLY <1>c4lEGZwSLCipn0w, Sizes, Location, Design
<2>1. RP2BT_T_torn /\ UNCHANGED torn
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>BixFQxQ1L75eILQ3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zIx9gRTBCXGr7VD.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_kpin'
<2> USE ONLY <1>zIx9gRTBCXGr7VD, Sizes, Location, Design
<2>1. RP2BT_T_kpin /\ UNCHANGED kpin
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>PLD7SK4z8vsJRIyV, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BXOxlpzIlWPJxwA.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_kfly'
<2> USE ONLY <1>BXOxlpzIlWPJxwA, Sizes, Location, Design
<2>1. RP2BT_T_kfly /\ UNCHANGED kfly
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>gHuwkticQ1ROSLOz, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kRmGD19q2Vu1AT.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_krs'
<2> USE ONLY <1>kRmGD19q2Vu1AT, Sizes, Location, Design
<2>1. RP2BT_T_krs /\ UNCHANGED krs
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>HX61p8urGwoOed4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XBLl5ylrl91GG.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i,r)
  PROVE RP2BT_T_ph'
<2> USE ONLY <1>XBLl5ylrl91GG, Sizes, Location, Design
<2>1. RP2BT_T_ph /\ RP2BT_BE_PPoll(i,r)
  BY <1>MBt71i0AtN8OEmSc, <1>Q2cyLhdu834xbLG, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>3. QED
  BY <2>1, SMT, Sizes, Location, Design DEF RP2BT_BE_PPoll, RP2BT_T_ph, PhSet, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xPHkHY7xhmOOw.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_rg'
<2> USE ONLY <1>xPHkHY7xhmOOw, Sizes, Location, Design
<2>1. RP2BT_T_rg /\ UNCHANGED rg
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>RVIaRt4FnXlfPA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FXddhzTbqr7CTN.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_rpg'
<2> USE ONLY <1>FXddhzTbqr7CTN, Sizes, Location, Design
<2>1. RP2BT_T_rpg /\ UNCHANGED rpg
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>c6p2Cb9CmkVySdK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ph36SZY6BhAyIS.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_rpe'
<2> USE ONLY <1>ph36SZY6BhAyIS, Sizes, Location, Design
<2>1. RP2BT_T_rpe /\ UNCHANGED rpe
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>dmZhv07HnXqUrWN, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H1Iujsrt96yfW.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_rx'
<2> USE ONLY <1>H1Iujsrt96yfW, Sizes, Location, Design
<2>1. RP2BT_T_rx /\ UNCHANGED rx
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>glzBXCanzSI08r, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NtjiI0MxdFozwY6.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_rhit'
<2> USE ONLY <1>NtjiI0MxdFozwY6, Sizes, Location, Design
<2>1. RP2BT_T_rhit /\ UNCHANGED rhit
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>BubY9NNjmy37wsie, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AyXC1EJKDDxS2l.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_pst'
<2> USE ONLY <1>AyXC1EJKDDxS2l, Sizes, Location, Design
<2>1. RP2BT_T_pst /\ UNCHANGED pst
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>xJgZ3QKkrqjOea2, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hp3gttXmwuHJb.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_pr'
<2> USE ONLY <1>hp3gttXmwuHJb, Sizes, Location, Design
<2>1. RP2BT_T_pr /\ UNCHANGED pr
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>KT48taS0t0P8RM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tBMbuKgm4nBRDx.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_pgn'
<2> USE ONLY <1>tBMbuKgm4nBRDx, Sizes, Location, Design
<2>1. RP2BT_T_pgn /\ UNCHANGED pgn
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Xbs4aVbws27fyD7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ptS3HjHd7cqTY5.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i,r)
  PROVE RP2BT_T_plt'
<2> USE ONLY <1>ptS3HjHd7cqTY5, Sizes, Location, Design
<2>1. RP2BT_T_plt /\ RP2BT_BE_PPoll(i,r)
  BY <1>MBt71i0AtN8OEmSc, <1>Q2cyLhdu834xbLG, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. rpg[i][r] \in Pages /\ ptl[rpg[i][r]] \in 0..PS
  BY <1>vltlFb04Ij8h5, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF RP2BT_BE_PPoll, RP2BT_T_plt, PhSet, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jOOijGokRaeOqx.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_ptl'
<2> USE ONLY <1>jOOijGokRaeOqx, Sizes, Location, Design
<2>1. RP2BT_T_ptl /\ UNCHANGED ptl
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ronUQnROSJZ1081, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XCoODmGA7dkV37a.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_pvis'
<2> USE ONLY <1>XCoODmGA7dkV37a, Sizes, Location, Design
<2>1. RP2BT_T_pvis /\ UNCHANGED pvis
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>bsiNVmjnGk0gShvt, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mmLLxYrXNXDVch.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_led'
<2> USE ONLY <1>mmLLxYrXNXDVch, Sizes, Location, Design
<2>1. RP2BT_T_led /\ UNCHANGED led
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ysosnR1qz3TCaPq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>deD730WpIx7HGlO.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_sfly'
<2> USE ONLY <1>deD730WpIx7HGlO, Sizes, Location, Design
<2>1. RP2BT_T_sfly /\ UNCHANGED sfly
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>w1adTD6pum11lhCO, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vkt55wGoizKIvN8.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i,r)
  PROVE RP2BT_T_sled'
<2> USE ONLY <1>vkt55wGoizKIvN8, Sizes, Location, Design
<2>1. RP2BT_T_sled /\ RP2BT_BE_PPoll(i,r)
  BY <1>MBt71i0AtN8OEmSc, <1>Q2cyLhdu834xbLG, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>3. QED
  BY <2>1, SMT, Sizes, Location, Design DEF RP2BT_BE_PPoll, RP2BT_T_sled, PhSet, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iRmJHaeyWwcvNjLQ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_prefc'
<2> USE ONLY <1>iRmJHaeyWwcvNjLQ, Sizes, Location, Design
<2>1. RP2BT_T_prefc /\ UNCHANGED prefc
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>RNrNSgtQ1oN3FHnHW, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bPjmLXJ5dymUrH.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_pqp'
<2> USE ONLY <1>bPjmLXJ5dymUrH, Sizes, Location, Design
<2>1. RP2BT_T_pqp /\ UNCHANGED pqp
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>y9VEa3peVjuHlfm, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cigFPrkYoU3G7.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_xr'
<2> USE ONLY <1>cigFPrkYoU3G7, Sizes, Location, Design
<2>1. RP2BT_T_xr /\ UNCHANGED xr
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>gFSdQtXbcb7shS, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pREy7dI2QqmYq.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_xg'
<2> USE ONLY <1>pREy7dI2QqmYq, Sizes, Location, Design
<2>1. RP2BT_T_xg /\ UNCHANGED xg
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>YqWLH3G75pdzOn, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>du36FTML8pxmb.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_xk'
<2> USE ONLY <1>du36FTML8pxmb, Sizes, Location, Design
<2>1. RP2BT_T_xk /\ UNCHANGED xk
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>fc1xGxtnm14j4X, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XI9g0TLgmIeiY.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_xp'
<2> USE ONLY <1>XI9g0TLgmIeiY, Sizes, Location, Design
<2>1. RP2BT_T_xp /\ UNCHANGED xp
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>rW18iBrTCq3x5G, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EbGAejBX5qVXG.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_xd'
<2> USE ONLY <1>EbGAejBX5qVXG, Sizes, Location, Design
<2>1. RP2BT_T_xd /\ UNCHANGED xd
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>fQ26FQr7crQovF, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>a0T6fIYr5D6CHe8.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_xsrc'
<2> USE ONLY <1>a0T6fIYr5D6CHe8, Sizes, Location, Design
<2>1. RP2BT_T_xsrc /\ UNCHANGED xsrc
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ApLV3oxLHmcr5wpK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>O2bNoIJ4Zbm4koX.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_xdst'
<2> USE ONLY <1>O2bNoIJ4Zbm4koX, Sizes, Location, Design
<2>1. RP2BT_T_xdst /\ UNCHANGED xdst
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>jsYuQUf2Do24vGwj, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZBh7Fk034Pe0OF.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_xnt'
<2> USE ONLY <1>ZBh7Fk034Pe0OF, Sizes, Location, Design
<2>1. RP2BT_T_xnt /\ UNCHANGED xnt
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>t8QyxvDJRMbyv0s, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>isp05YeCpmZmi.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_hw'
<2> USE ONLY <1>isp05YeCpmZmi, Sizes, Location, Design
<2>1. RP2BT_T_hw /\ UNCHANGED hw
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>zjtIgLkUyyke2v, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sFoodWGFxeU1Ag.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_hok'
<2> USE ONLY <1>sFoodWGFxeU1Ag, Sizes, Location, Design
<2>1. RP2BT_T_hok /\ UNCHANGED hok
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>yXle4CAhO88Dz2l, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AzcEIKOBMoRcZ.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_iv'
<2> USE ONLY <1>AzcEIKOBMoRcZ, Sizes, Location, Design
<2>1. RP2BT_T_iv /\ UNCHANGED iv
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>GkifNnmL7cb2UT, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dTq7s3NTlTA9aL.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_xst'
<2> USE ONLY <1>dTq7s3NTlTA9aL, Sizes, Location, Design
<2>1. RP2BT_T_xst /\ UNCHANGED xst
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Efczfp7Yu9fLKmn, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qiDKjaDRBJ94Bl.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_xlt'
<2> USE ONLY <1>qiDKjaDRBJ94Bl, Sizes, Location, Design
<2>1. RP2BT_T_xlt /\ UNCHANGED xlt
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>FdB6VLR7rLbXbo8, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bYfm3IEQpPAQo.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_nx'
<2> USE ONLY <1>bYfm3IEQpPAQo, Sizes, Location, Design
<2>1. RP2BT_T_nx /\ UNCHANGED nx
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>rBSlrIJNnJhCsB, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mEU5RBmVidWbFP.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_net'
<2> USE ONLY <1>mEU5RBmVidWbFP, Sizes, Location, Design
<2>1. RP2BT_T_net /\ UNCHANGED net
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>paTB6dBh3ZtFjdr, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pjpa8GdbPia2ZPH.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_drep'
<2> USE ONLY <1>pjpa8GdbPia2ZPH, Sizes, Location, Design
<2>1. RP2BT_T_drep /\ UNCHANGED drep
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>gKx7kYgUNjLUz1yu, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rVM01GybaxfDeLk.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_crep'
<2> USE ONLY <1>rVM01GybaxfDeLk, Sizes, Location, Design
<2>1. RP2BT_T_crep /\ UNCHANGED crep
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Gx9hkMNlJLdC6RHB, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Dcqf7RhJacLtUjxa.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_dsucc'
<2> USE ONLY <1>Dcqf7RhJacLtUjxa, Sizes, Location, Design
<2>1. RP2BT_T_dsucc /\ UNCHANGED dsucc
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>tSo1IhIabAvGrqAoi, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EjRd6SPPPKw3Ovn.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE RP2BT_T_gbad'
<2> USE ONLY <1>EjRd6SPPPKw3Ovn, Sizes, Location, Design
<2>1. RP2BT_T_gbad /\ UNCHANGED gbad
  BY <1>MBt71i0AtN8OEmSc, <1>nF33R7ismprS5B, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>DA3CRmvINX2SWFkq, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TLwfXxc1HhKFrtm.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPoll(i, r)
  PROVE CoreTypeOK'
  BY ONLY <1>TLwfXxc1HhKFrtm, Sizes, Location, Design, <1>CHOHBThA20rasQxfw0, <1>PHzhgLzwaKEdXNzS, <1>rVM01GybaxfDeLk, <1>pjpa8GdbPia2ZPH, <1>Dcqf7RhJacLtUjxa, <1>EjRd6SPPPKw3Ovn, <1>dLBljuciMiKAdB, <1>Wjx2dPsmr1RYJ, <1>sFoodWGFxeU1Ag, <1>UdpUvtpRcAPv4, <1>isp05YeCpmZmi, <1>AzcEIKOBMoRcZ, <1>BXOxlpzIlWPJxwA, <1>zIx9gRTBCXGr7VD, <1>kRmGD19q2Vu1AT, <1>mmLLxYrXNXDVch, <1>mEU5RBmVidWbFP, <1>wSl3aY69ylzUJHA1, <1>bYfm3IEQpPAQo, <1>tBMbuKgm4nBRDx, <1>XBLl5ylrl91GG, <1>ptS3HjHd7cqTY5, <1>bPjmLXJ5dymUrH, <1>hp3gttXmwuHJb, <1>iRmJHaeyWwcvNjLQ, <1>AyXC1EJKDDxS2l, <1>jOOijGokRaeOqx, <1>XCoODmGA7dkV37a, <1>kRcf70Vc8DObW, <1>xPHkHY7xhmOOw, <1>NtjiI0MxdFozwY6, <1>TC4T0EbMXNqMs, <1>ph36SZY6BhAyIS, <1>FXddhzTbqr7CTN, <1>VtfNbFruAyRna, <1>H1Iujsrt96yfW, <1>deD730WpIx7HGlO, <1>vkt55wGoizKIvN8, <1>c4lEGZwSLCipn0w, <1>EbGAejBX5qVXG, <1>O2bNoIJ4Zbm4koX, <1>pREy7dI2QqmYq, <1>du36FTML8pxmb, <1>qiDKjaDRBJ94Bl, <1>ZBh7Fk034Pe0OF, <1>XI9g0TLgmIeiY, <1>cigFPrkYoU3G7, <1>a0T6fIYr5D6CHe8, <1>dTq7s3NTlTA9aL DEF RP2BT_Types, Sizes, Location, Design
\* T2M-END R2M2039_PdRPR2BTPdBPPollTypes


<1> QED BY <1>TLwfXxc1HhKFrtm, Sizes, Location, Design DEF Sizes, Location, Design
====
