---- MODULE PdFinalAuxType_8329c94b73925111 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_8329c94b73925111 ==          
  ASSUME Sizes, Location, Design,
         NEW p \in Pages, PinInv, PDrainLibFail(p)
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

<1> HIDE DEF RP2BT_T_gen, RP2BT_T_rt, RP2BT_T_rp, RP2BT_T_rd, RP2BT_T_hp, RP2BT_T_hd, RP2BT_T_alive, RP2BT_T_nfail, RP2BT_T_torn, RP2BT_T_kpin, RP2BT_T_kfly, RP2BT_T_krs, RP2BT_T_ph, RP2BT_T_rg, RP2BT_T_rpg, RP2BT_T_rpe, RP2BT_T_rx, RP2BT_T_rhit, RP2BT_T_pst, RP2BT_T_pr, RP2BT_T_pgn, RP2BT_T_plt, RP2BT_T_ptl, RP2BT_T_pvis, RP2BT_T_led, RP2BT_T_sfly, RP2BT_T_sled, RP2BT_T_prefc, RP2BT_T_pqp, RP2BT_T_xr, RP2BT_T_xg, RP2BT_T_xk, RP2BT_T_xp, RP2BT_T_xd, RP2BT_T_xsrc, RP2BT_T_xdst, RP2BT_T_xnt, RP2BT_T_hw, RP2BT_T_hok, RP2BT_T_iv, RP2BT_T_xst, RP2BT_T_xlt, RP2BT_T_nx, RP2BT_T_net, RP2BT_T_drep, RP2BT_T_crep, RP2BT_T_dsucc, RP2BT_T_gbad, RP2BT_Types

<1>MBt71i0AtN8OEmSc.         TypInv => RP2BT_Types
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, RP2BT_Types, RP2BT_T_gen, RP2BT_T_rt, RP2BT_T_rp, RP2BT_T_rd, RP2BT_T_hp, RP2BT_T_hd, RP2BT_T_alive, RP2BT_T_nfail, RP2BT_T_torn, RP2BT_T_kpin, RP2BT_T_kfly, RP2BT_T_krs, RP2BT_T_ph, RP2BT_T_rg, RP2BT_T_rpg, RP2BT_T_rpe, RP2BT_T_rx, RP2BT_T_rhit, RP2BT_T_pst, RP2BT_T_pr, RP2BT_T_pgn, RP2BT_T_plt, RP2BT_T_ptl, RP2BT_T_pvis, RP2BT_T_led, RP2BT_T_sfly, RP2BT_T_sled, RP2BT_T_prefc, RP2BT_T_pqp, RP2BT_T_xr, RP2BT_T_xg, RP2BT_T_xk, RP2BT_T_xp, RP2BT_T_xd, RP2BT_T_xsrc, RP2BT_T_xdst, RP2BT_T_xnt, RP2BT_T_hw, RP2BT_T_hok, RP2BT_T_iv, RP2BT_T_xst, RP2BT_T_xlt, RP2BT_T_nx, RP2BT_T_net, RP2BT_T_drep, RP2BT_T_crep, RP2BT_T_dsucc, RP2BT_T_gbad, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CHOHBThA20rasQxfw0.         RP2BT_Types' => CoreTypeOK'
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, RP2BT_Types, RP2BT_T_gen, RP2BT_T_rt, RP2BT_T_rp, RP2BT_T_rd, RP2BT_T_hp, RP2BT_T_hd, RP2BT_T_alive, RP2BT_T_nfail, RP2BT_T_torn, RP2BT_T_kpin, RP2BT_T_kfly, RP2BT_T_krs, RP2BT_T_ph, RP2BT_T_rg, RP2BT_T_rpg, RP2BT_T_rpe, RP2BT_T_rx, RP2BT_T_rhit, RP2BT_T_pst, RP2BT_T_pr, RP2BT_T_pgn, RP2BT_T_plt, RP2BT_T_ptl, RP2BT_T_pvis, RP2BT_T_led, RP2BT_T_sfly, RP2BT_T_sled, RP2BT_T_prefc, RP2BT_T_pqp, RP2BT_T_xr, RP2BT_T_xg, RP2BT_T_xk, RP2BT_T_xp, RP2BT_T_xd, RP2BT_T_xsrc, RP2BT_T_xdst, RP2BT_T_xnt, RP2BT_T_hw, RP2BT_T_hok, RP2BT_T_iv, RP2BT_T_xst, RP2BT_T_xlt, RP2BT_T_nx, RP2BT_T_net, RP2BT_T_drep, RP2BT_T_crep, RP2BT_T_dsucc, RP2BT_T_gbad, Sizes, Location, Design
\* T2M-END R2M1995_PdRPR2BTPdProofBase


<1>aj6UN7XVDsae.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design
\* T2M-END R2M1997_PdRPR2BTPdMsgBase


<1>LGwgB38YkqDYiF3rwDEOQH.        
  ASSUME NEW p \in Pages, PDrainLibFail(p)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>LGwgB38YkqDYiF3rwDEOQH, Sizes, Location, Design, ZenonT(5) DEF PDrainLibFail, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, PDrainLibFailSafe, PDrainLibFailBroken, Sizes, Location, Design
\* T2M-END R2M2008_PdRPR2BTPdPDrainLibFailFrames

\* T2M-SCOPE R2M2009_PdRPR2BTPdPDrainLibFailStepsSupport
\* T2M-BODY R2M2009_PdRPR2BTPdPDrainLibFailStepsSupport
\* T2M-LOCAL-VISIBILITY

<1>XYo3oTvWMvWK1Y.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p)
  PROVE /\ pst[p] = "drain"
        /\ pst' = [pst EXCEPT ![p] = "quar"]
        /\ UNCHANGED <<pr,pgn,plt,led,sled,prefc>>
        /\ \E x \in led[p] : /\ xk[x] = "wr" /\ xsrc[x] = p /\ iv[x] = "failret"
                            /\ pqp' = [pqp EXCEPT ![p] = xd[x]]
                            /\ net' = net \cup {Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)}
<2> USE ONLY <1>XYo3oTvWMvWK1Y, Sizes, Location, Design
<2>1. RP2BT_T_led /\ RP2BT_T_sled
  BY <1>MBt71i0AtN8OEmSc, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(10), Sizes, Location DEF PDrainLibFail, PageTo, GiveUpTo, GiveUpToN, RP2BT_T_led, RP2BT_T_sled, PDrainLibFailSafe, PDrainLibFailBroken, Sizes, Location, Design
\* T2M-END R2M2009_PdRPR2BTPdPDrainLibFailStepsSupport

\* T2M-SCOPE R2M2010_PdRPR2BTPdPDrainLibFailNet

<1>sJLg7UMg3DztfzGONV41RsWfwU.        
  ASSUME NEW p \in Pages, PDrainLibFail(p)
  PROVE \E x \in led[p] : net' = net \cup {Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)}
  BY ONLY <1>sJLg7UMg3DztfzGONV41RsWfwU, Sizes, Location, Design, Design, ZenonT(10) DEF PDrainLibFail, PDrainLibFailSafe, PDrainLibFailBroken, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pFcLdivr3bITsFHKWARk5okF.        
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p)
  PROVE RP2BT_T_net'
<2> USE ONLY <1>pFcLdivr3bITsFHKWARk5okF, Sizes, Location, Design
<2>1. RP2BT_T_net /\ RP2BT_T_led /\ RP2BT_T_xd /\ RP2BT_T_xg /\ RP2BT_T_xr /\ RP2BT_T_led
  BY SMTT(10), <1>MBt71i0AtN8OEmSc, V21_Inv_TypeOK, Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>2. \E x \in led[p] : net' = net \cup {Msg("abort",Loc(p),xd[x],xr[x],xg[x],0,0,0,FALSE)}
  BY SMTT(10), <1>sJLg7UMg3DztfzGONV41RsWfwU, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. Loc(p) \in Inst
  BY Location, Sizes, SMTT(10), Design DEF KPages, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <1>aj6UN7XVDsae, SMTT(10), Sizes, Location, Design DEF Msg, MsgT, RP2BT_T_led, RP2BT_T_net, RP2BT_T_xd, RP2BT_T_xg, RP2BT_T_xr, Xids, Sizes, Location, Design
\* T2M-END R2M2010_PdRPR2BTPdPDrainLibFailNet

\* T2M-SCOPE R2M2011_PdRPR2BTPdPDrainLibFailTypes

<1>ssLoagoNn8ZnYweR67Tk0VV.          
  ASSUME NEW p \in Pages, PinInv, PDrainLibFail(p)
  PROVE CoreTypeOK'
<2> USE ONLY <1>ssLoagoNn8ZnYweR67Tk0VV, Sizes, Location, Design
<2>1. RP2BT_Types
  BY <1>MBt71i0AtN8OEmSc, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen, rt, rp, rd, hp, hd, alive, nfail, torn, kpin, kfly, krs, ph, rg, rpg, rpe, rx, rhit, pr, pgn, plt, ptl, pvis, led, sfly, sled, prefc, xr, xg, xk, xp, xd, xsrc, xdst, xnt, hw, hok, iv, xst, xlt, nx, drep, crep, dsucc, gbad>>
  BY <1>XYo3oTvWMvWK1Y, <1>LGwgB38YkqDYiF3rwDEOQH, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RP2BT_T_gen' /\ RP2BT_T_rt' /\ RP2BT_T_rp' /\ RP2BT_T_rd' /\ RP2BT_T_hp' /\ RP2BT_T_hd' /\ RP2BT_T_alive' /\ RP2BT_T_nfail' /\ RP2BT_T_torn' /\ RP2BT_T_kpin' /\ RP2BT_T_kfly' /\ RP2BT_T_krs' /\ RP2BT_T_ph' /\ RP2BT_T_rg' /\ RP2BT_T_rpg' /\ RP2BT_T_rpe' /\ RP2BT_T_rx' /\ RP2BT_T_rhit' /\ RP2BT_T_pr' /\ RP2BT_T_pgn' /\ RP2BT_T_plt' /\ RP2BT_T_ptl' /\ RP2BT_T_pvis' /\ RP2BT_T_led' /\ RP2BT_T_sfly' /\ RP2BT_T_sled' /\ RP2BT_T_prefc' /\ RP2BT_T_xr' /\ RP2BT_T_xg' /\ RP2BT_T_xk' /\ RP2BT_T_xp' /\ RP2BT_T_xd' /\ RP2BT_T_xsrc' /\ RP2BT_T_xdst' /\ RP2BT_T_xnt' /\ RP2BT_T_hw' /\ RP2BT_T_hok' /\ RP2BT_T_iv' /\ RP2BT_T_xst' /\ RP2BT_T_xlt' /\ RP2BT_T_nx' /\ RP2BT_T_drep' /\ RP2BT_T_crep' /\ RP2BT_T_dsucc' /\ RP2BT_T_gbad'
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RP2BT_Types, RP2BT_T_gen, RP2BT_T_rt, RP2BT_T_rp, RP2BT_T_rd, RP2BT_T_hp, RP2BT_T_hd, RP2BT_T_alive, RP2BT_T_nfail, RP2BT_T_torn, RP2BT_T_kpin, RP2BT_T_kfly, RP2BT_T_krs, RP2BT_T_ph, RP2BT_T_rg, RP2BT_T_rpg, RP2BT_T_rpe, RP2BT_T_rx, RP2BT_T_rhit, RP2BT_T_pr, RP2BT_T_pgn, RP2BT_T_plt, RP2BT_T_ptl, RP2BT_T_pvis, RP2BT_T_led, RP2BT_T_sfly, RP2BT_T_sled, RP2BT_T_prefc, RP2BT_T_xr, RP2BT_T_xg, RP2BT_T_xk, RP2BT_T_xp, RP2BT_T_xd, RP2BT_T_xsrc, RP2BT_T_xdst, RP2BT_T_xnt, RP2BT_T_hw, RP2BT_T_hok, RP2BT_T_iv, RP2BT_T_xst, RP2BT_T_xlt, RP2BT_T_nx, RP2BT_T_drep, RP2BT_T_crep, RP2BT_T_dsucc, RP2BT_T_gbad, Sizes, Location, Design
<2>4. RP2BT_T_pst'
  BY <2>1, <1>XYo3oTvWMvWK1Y, SMTT(10), Sizes, Location, Design DEF RP2BT_Types, RP2BT_T_pst, Sizes, Location, Design
<2>5. PICK x \in led[p] : pqp' = [pqp EXCEPT ![p] = xd[x]]
  BY <1>XYo3oTvWMvWK1Y, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. x \in Xids
  BY <2>1, <2>5, SMTT(10), Sizes, Location, Design DEF RP2BT_Types, RP2BT_T_led, Sizes, Location, Design
<2>7. RP2BT_T_pqp'
  BY <2>1, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF RP2BT_Types, RP2BT_T_pqp, RP2BT_T_xd, Sizes, Location, Design
<2>8. RP2BT_Types'
  BY <2>3, <2>4, <2>7, <1>pFcLdivr3bITsFHKWARk5okF, SMTT(10), Sizes, Location, Design DEF RP2BT_Types, Sizes, Location, Design
<2>9. QED BY <2>8, <1>CHOHBThA20rasQxfw0, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2011_PdRPR2BTPdPDrainLibFailTypes


<1> QED BY <1>ssLoagoNn8ZnYweR67Tk0VV, Sizes, Location, Design DEF Sizes, Location, Design
====
