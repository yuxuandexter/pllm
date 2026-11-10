---- MODULE PdFinalAuxType_2f2fcf8857229685 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_2f2fcf8857229685 ==          
  ASSUME Sizes, Location, Design,
         NEW p \in Pages, PinInv, StreamLand(p)
  PROVE CoreTypeOK'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE wOTr_ == gen \in [Rq -> 0..MG]


           Qjrp == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           vdfp == rp \in [Rq -> {0} \cup Inst]


           Gi91 == rd \in [Rq -> {0} \cup Inst]


           f9Jo == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           qC4t == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           dfknOma == alive \in [Inst -> BOOLEAN]


           TiBl9dL == nfail \in 0..MaxFail


           nvVdwJ == torn \in [Inst -> SUBSET Inst]


           kyOog2 == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           UUdTOK == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           dMRAk == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           lwx7 == ph \in [Inst -> [Rq -> PhSet]]


           azLu == rg \in [Inst -> [Rq -> 0..MG]]


           T2_wJ == rpg \in [Inst -> [Rq -> 0..NP]]


           DRkCp == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           u6eb == rx \in [Inst -> [Rq -> 0..MX]]


           WFFocH == rhit \in [Inst -> [Rq -> BOOLEAN]]


           mWgRR == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           voSc == pr \in [Pages -> 0..NR]


           ejARA == pgn \in [Pages -> 0..MG]


           nhDFh == plt \in [Pages -> 0..PS]


           Oet5P == ptl \in [Pages -> -1..PS]


           toA96a == pvis \in [Pages -> BOOLEAN]


           CQcwS == led \in [Pages -> SUBSET Xids]


           pgoLyw == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           gwX1nH == sled \in [Pages -> SUBSET (Rq \X Gens)]


           uhaZUCa == prefc \in [Pages -> 0..NR]


           j9ZB2 == pqp \in [Pages -> {0} \cup Inst]


           tOrh == xr \in [Xids -> 0..NR]


           oZ1G == xg \in [Xids -> 0..MG]


           TMQx == xk \in [Xids -> {"none", "wr", "rd"}]


           vvyr == xp \in [Xids -> {0} \cup Inst]


           FBnj == xd \in [Xids -> {0} \cup Inst]


           Sbgpxn == xsrc \in [Xids -> 0..NP]


           tP64Zt == xdst \in [Xids -> 0..NP]


           Rl_wH == xnt \in [Xids -> 0..PS]


           JojO == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           NFMkE == hok \in [Xids -> BOOLEAN]


           vQ8m == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           tMnUG == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           Og_ZB == xlt \in [Xids -> 0..PS]


           NHqB == nx \in 1..(MX + 1)


           j95de == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           jnT8ZH == drep \in [Rq -> [Gens -> 0..2]]


           fikvOb == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           wBRWE5u == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           Le6TxG == gbad \in BOOLEAN


           soyHJ == wOTr_ /\ Qjrp /\ vdfp /\ Gi91 /\ f9Jo /\ qC4t /\ dfknOma /\ TiBl9dL /\ nvVdwJ /\ kyOog2 /\ UUdTOK /\ dMRAk /\ lwx7 /\ azLu /\ T2_wJ /\ DRkCp /\ u6eb /\ WFFocH /\ mWgRR /\ voSc /\ ejARA /\ nhDFh /\ Oet5P /\ toA96a /\ CQcwS /\ pgoLyw /\ gwX1nH /\ uhaZUCa /\ j9ZB2 /\ tOrh /\ oZ1G /\ TMQx /\ vvyr /\ FBnj /\ Sbgpxn /\ tP64Zt /\ Rl_wH /\ JojO /\ NFMkE /\ vQ8m /\ tMnUG /\ Og_ZB /\ NHqB /\ j95de /\ jnT8ZH /\ fikvOb /\ wBRWE5u /\ Le6TxG

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ

<1>OJpowx54MQ.         TypInv => soyHJ
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, soyHJ, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LKcJBIJVI4s5.         soyHJ' => CoreTypeOK'
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, soyHJ, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>v46YEpNGo6.        
  ASSUME NEW p \in Pages
  PROVE Loc(p) \in Inst /\ (IsP(Loc(p)) <=> ~IsD(Loc(p)))
  BY ONLY <1>v46YEpNGo6, Sizes, Location, Design, Location, Sizes, SMTT(10) DEF IsP, IsD, Inst, NL, KPages, Sizes, Location, Design
\* T2M-END R2M2225_PdROBase_PdFactsA


<1>WCwtnD45cImjy.        
  ASSUME NEW p \in Pages, StreamLand(p)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>WCwtnD45cImjy, Sizes, Location, Design, Design, SMTT(10) DEF StreamLand, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sm6WyDvlYMkbWw.        
  ASSUME NEW p \in Pages, PinInv, StreamLand(p)
  PROVE /\ \E t \in sfly[p] : \E n \in PLens(t[1],t[2]) :
             /\ sfly' = [sfly EXCEPT ![p] = @ \ {t}]
             /\ ptl' = [ptl EXCEPT ![p] = IF IsP(Loc(p)) THEN n ELSE ptl[p]]
        /\ UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
<2> USE ONLY <1>sm6WyDvlYMkbWw, Sizes, Location, Design
<2>1. K6 /\ Oet5P
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_K6, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. PICK t, n : /\ t \in sfly[p] /\ n \in PLens(t[1],t[2])
        /\ sfly' = [sfly EXCEPT ![p] = @ \ {t}]
        /\ ptl' = [ptl EXCEPT ![p] =
              IF pst[p] \in {"priv", "drain", "quar"} /\ pr[p] = t[1] /\ pgn[p] = t[2]
              THEN (IF IsP(Loc(p)) THEN n ELSE ptl[p])
              ELSE IF pst[p] = "shared" /\ IsD(Loc(p)) THEN ptl[p] ELSE -1]
  BY Zenon, Sizes, Location, Design DEF StreamLand, Sizes, Location, Design
<2>3. OwnedBy(p,t[1],t[2]) \/ (pst[p] = "shared" /\ IsD(Loc(p)))
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K6, Sizes, Location, Design
<2>4. ptl' = [ptl EXCEPT ![p] = IF IsP(Loc(p)) THEN n ELSE ptl[p]]
  BY <2>1, <2>2, <2>3, <1>v46YEpNGo6, SMTT(10), Sizes, Location, Design DEF Oet5P, OwnedBy, Sizes, Location, Design
<2>5. QED
  BY <2>2, <2>4, <1>WCwtnD45cImjy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tE64gX6xuXxN.        
  /\ NP \in Nat /\ 0 \in 0..NP /\ 0 \in 0..NR /\ 0 \in 0..MG
  /\ 0 \in 0..PS /\ 0 \in -1..PS /\ 0 \in 0..MX /\ 0 \in 0..MaxFail
  /\ 1 \in 1..(MX+1) /\ 1 \in 0..PS /\ 1 \in -1..PS
  /\ 0 \notin Inst /\ 0 \notin Pages /\ 0 \notin Rq /\ 0 \notin Gens /\ 0 \notin Xids
  BY Sizes, SMT, Location, Design DEF Inst, NL, Pages, Rq, Gens, Xids, Sizes, Location, Design
\* T2M-END R2M2704_PdROBase_PdTypeProofs


<1>Tr6HvuqMs6HBzbHrOt.        
  ASSUME NEW p \in Pages, PinInv, StreamLand(p)
  PROVE dfknOma' /\ fikvOb' /\ jnT8ZH' /\ wBRWE5u' /\ Le6TxG' /\ wOTr_' /\ qC4t' /\ NFMkE' /\ f9Jo' /\ JojO' /\ vQ8m' /\ UUdTOK' /\ kyOog2' /\ dMRAk' /\ CQcwS' /\ j95de' /\ TiBl9dL' /\ NHqB' /\ ejARA' /\ lwx7' /\ nhDFh' /\ j9ZB2' /\ voSc' /\ uhaZUCa' /\ mWgRR' /\ toA96a' /\ Gi91' /\ azLu' /\ WFFocH' /\ vdfp' /\ DRkCp' /\ T2_wJ' /\ Qjrp' /\ u6eb' /\ gwX1nH' /\ nvVdwJ' /\ FBnj' /\ tP64Zt' /\ oZ1G' /\ TMQx' /\ Og_ZB' /\ Rl_wH' /\ vvyr' /\ tOrh' /\ Sbgpxn' /\ tMnUG'
<2> USE ONLY <1>Tr6HvuqMs6HBzbHrOt, Sizes, Location, Design
<2>1. soyHJ
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>WCwtnD45cImjy, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF soyHJ, dfknOma, fikvOb, jnT8ZH, wBRWE5u, Le6TxG, wOTr_, qC4t, NFMkE, f9Jo, JojO, vQ8m, UUdTOK, kyOog2, dMRAk, CQcwS, j95de, TiBl9dL, NHqB, ejARA, lwx7, nhDFh, j9ZB2, voSc, uhaZUCa, mWgRR, toA96a, Gi91, azLu, WFFocH, vdfp, DRkCp, T2_wJ, Qjrp, u6eb, gwX1nH, nvVdwJ, FBnj, tP64Zt, oZ1G, TMQx, Og_ZB, Rl_wH, vvyr, tOrh, Sbgpxn, tMnUG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>e8rKD1NaqAA06Tcu.        
  ASSUME NEW p \in Pages, PinInv, StreamLand(p)
  PROVE Oet5P'
<2> USE ONLY <1>e8rKD1NaqAA06Tcu, Sizes, Location, Design
<2>1. Oet5P
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. \E t \in sfly[p] : \E n \in PLens(t[1],t[2]) : ptl' = [ptl EXCEPT ![p] = IF IsP(Loc(p)) THEN n ELSE ptl[p]]
  BY <1>sm6WyDvlYMkbWw, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>tE64gX6xuXxN, Sizes, SMTT(10), Location, Design DEF NTok, PLens, Oet5P, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Y3wKOYH4Q1wbf0ZRJ.        
  ASSUME NEW p \in Pages, PinInv, StreamLand(p)
  PROVE pgoLyw'
<2> USE ONLY <1>Y3wKOYH4Q1wbf0ZRJ, Sizes, Location, Design
<2>1. pgoLyw
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. \E t \in sfly[p] : \E n \in PLens(t[1],t[2]) : sfly' = [sfly EXCEPT ![p] = @ \ {t}]
  BY <1>sm6WyDvlYMkbWw, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>tE64gX6xuXxN, Sizes, SMTT(10), Location, Design DEF NTok, PLens, pgoLyw, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WSB6hMYuIVMmAz.          
  ASSUME NEW p \in Pages, PinInv, StreamLand(p)
  PROVE CoreTypeOK'
<2> USE ONLY <1>WSB6hMYuIVMmAz, Sizes, Location, Design
<2>1. soyHJ'
  BY <1>Tr6HvuqMs6HBzbHrOt, <1>e8rKD1NaqAA06Tcu, <1>Y3wKOYH4Q1wbf0ZRJ, SMTT(10), Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>LKcJBIJVI4s5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2731_PdROBase_PdStreamLandTypesA


<1> QED BY <1>WSB6hMYuIVMmAz, Sizes, Location, Design DEF Sizes, Location, Design
====
