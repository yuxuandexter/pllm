---- MODULE PdFinalAuxType_acbb4c559b8b11da ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_acbb4c559b8b11da ==          
  ASSUME Sizes, Location, Design,
         NEW s \in Pages, PinInv, Evict(s)
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


<1>fipTxNmp.        
  ASSUME NEW s \in Pages, Evict(s)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>fipTxNmp, Sizes, Location, Design, Design, SMTT(10) DEF Evict, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, LegacyEvict, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Yq4vIaebn.        
  ASSUME NEW s \in Pages, PinInv, Evict(s)
  PROVE /\ pst[s] = "shared" /\ led[s] = {} /\ sled[s] = {} /\ prefc[s] = 0
        /\ pst' = [pst EXCEPT ![s] = "free"]
        /\ pr' = [pr EXCEPT ![s] = 0]
        /\ pgn' = [pgn EXCEPT ![s] = 0]
        /\ plt' = [plt EXCEPT ![s] = 0]
        /\ pqp' = [pqp EXCEPT ![s] = 0]
        /\ UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, ph, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
<2> USE ONLY <1>Yq4vIaebn, Sizes, Location, Design
<2>1. CQcwS /\ gwX1nH /\ uhaZUCa
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMTT(10), Sizes, Location, Design DEF Evict, PageTo, CQcwS, gwX1nH, uhaZUCa, rtV, instV, kV, recV, xV, ghV, LegacyEvict, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tE64gX6xuXxN.        
  /\ NP \in Nat /\ 0 \in 0..NP /\ 0 \in 0..NR /\ 0 \in 0..MG
  /\ 0 \in 0..PS /\ 0 \in -1..PS /\ 0 \in 0..MX /\ 0 \in 0..MaxFail
  /\ 1 \in 1..(MX+1) /\ 1 \in 0..PS /\ 1 \in -1..PS
  /\ 0 \notin Inst /\ 0 \notin Pages /\ 0 \notin Rq /\ 0 \notin Gens /\ 0 \notin Xids
  BY Sizes, SMT, Location, Design DEF Inst, NL, Pages, Rq, Gens, Xids, Sizes, Location, Design
\* T2M-END R2M2704_PdROBase_PdTypeProofs


<1>bsK9ZYlbz6IZi.        
  ASSUME NEW s \in Pages, PinInv, Evict(s)
  PROVE dfknOma' /\ fikvOb' /\ jnT8ZH' /\ wBRWE5u' /\ Le6TxG' /\ wOTr_' /\ qC4t' /\ NFMkE' /\ f9Jo' /\ JojO' /\ vQ8m' /\ UUdTOK' /\ kyOog2' /\ dMRAk' /\ j95de' /\ TiBl9dL' /\ NHqB' /\ lwx7' /\ Oet5P' /\ toA96a' /\ Gi91' /\ azLu' /\ WFFocH' /\ vdfp' /\ DRkCp' /\ T2_wJ' /\ Qjrp' /\ u6eb' /\ pgoLyw' /\ nvVdwJ' /\ FBnj' /\ tP64Zt' /\ oZ1G' /\ TMQx' /\ Og_ZB' /\ Rl_wH' /\ vvyr' /\ tOrh' /\ Sbgpxn' /\ tMnUG'
<2> USE ONLY <1>bsK9ZYlbz6IZi, Sizes, Location, Design
<2>1. soyHJ
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>fipTxNmp, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF soyHJ, dfknOma, fikvOb, jnT8ZH, wBRWE5u, Le6TxG, wOTr_, qC4t, NFMkE, f9Jo, JojO, vQ8m, UUdTOK, kyOog2, dMRAk, j95de, TiBl9dL, NHqB, lwx7, Oet5P, toA96a, Gi91, azLu, WFFocH, vdfp, DRkCp, T2_wJ, Qjrp, u6eb, pgoLyw, nvVdwJ, FBnj, tP64Zt, oZ1G, TMQx, Og_ZB, Rl_wH, vvyr, tOrh, Sbgpxn, tMnUG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qD9a0FqQ4oc.        
  ASSUME NEW s \in Pages, PinInv, Evict(s)
  PROVE CQcwS'
<2> USE ONLY <1>qD9a0FqQ4oc, Sizes, Location, Design
<2>1. CQcwS
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. led' = led
  BY <1>Yq4vIaebn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>tE64gX6xuXxN, Sizes, SMTT(10), Location, Design DEF CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NQWCdpMQeOO.        
  ASSUME NEW s \in Pages, PinInv, Evict(s)
  PROVE ejARA'
<2> USE ONLY <1>NQWCdpMQeOO, Sizes, Location, Design
<2>1. ejARA
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pgn' = [pgn EXCEPT ![s] = 0]
  BY <1>Yq4vIaebn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>tE64gX6xuXxN, Sizes, SMTT(10), Location, Design DEF ejARA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FvC0KyhBTLW.        
  ASSUME NEW s \in Pages, PinInv, Evict(s)
  PROVE nhDFh'
<2> USE ONLY <1>FvC0KyhBTLW, Sizes, Location, Design
<2>1. nhDFh
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. plt' = [plt EXCEPT ![s] = 0]
  BY <1>Yq4vIaebn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>tE64gX6xuXxN, Sizes, SMTT(10), Location, Design DEF nhDFh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uaOWGDo6QXc.        
  ASSUME NEW s \in Pages, PinInv, Evict(s)
  PROVE j9ZB2'
<2> USE ONLY <1>uaOWGDo6QXc, Sizes, Location, Design
<2>1. j9ZB2
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pqp' = [pqp EXCEPT ![s] = 0]
  BY <1>Yq4vIaebn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>tE64gX6xuXxN, Sizes, SMTT(10), Location, Design DEF j9ZB2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>b5mHynLmbW.        
  ASSUME NEW s \in Pages, PinInv, Evict(s)
  PROVE voSc'
<2> USE ONLY <1>b5mHynLmbW, Sizes, Location, Design
<2>1. voSc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pr' = [pr EXCEPT ![s] = 0]
  BY <1>Yq4vIaebn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>tE64gX6xuXxN, Sizes, SMTT(10), Location, Design DEF voSc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mByeHVAjW3eWu.        
  ASSUME NEW s \in Pages, PinInv, Evict(s)
  PROVE uhaZUCa'
<2> USE ONLY <1>mByeHVAjW3eWu, Sizes, Location, Design
<2>1. uhaZUCa
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. prefc' = prefc
  BY <1>Yq4vIaebn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>tE64gX6xuXxN, Sizes, SMTT(10), Location, Design DEF uhaZUCa, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>x22DHRFihok.        
  ASSUME NEW s \in Pages, PinInv, Evict(s)
  PROVE mWgRR'
<2> USE ONLY <1>x22DHRFihok, Sizes, Location, Design
<2>1. mWgRR
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pst' = [pst EXCEPT ![s] = "free"]
  BY <1>Yq4vIaebn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>tE64gX6xuXxN, Sizes, SMTT(10), Location, Design DEF mWgRR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SOGpOIwaKh31.        
  ASSUME NEW s \in Pages, PinInv, Evict(s)
  PROVE gwX1nH'
<2> USE ONLY <1>SOGpOIwaKh31, Sizes, Location, Design
<2>1. gwX1nH
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. sled' = sled
  BY <1>Yq4vIaebn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>tE64gX6xuXxN, Sizes, SMTT(10), Location, Design DEF gwX1nH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EcTDk9vFE.          
  ASSUME NEW s \in Pages, PinInv, Evict(s)
  PROVE CoreTypeOK'
<2> USE ONLY <1>EcTDk9vFE, Sizes, Location, Design
<2>1. soyHJ'
  BY <1>bsK9ZYlbz6IZi, <1>qD9a0FqQ4oc, <1>NQWCdpMQeOO, <1>FvC0KyhBTLW, <1>uaOWGDo6QXc, <1>b5mHynLmbW, <1>mByeHVAjW3eWu, <1>x22DHRFihok, <1>SOGpOIwaKh31, SMTT(10), Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>LKcJBIJVI4s5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2705_PdROBase_PdEvictTypesA


<1> QED BY <1>EcTDk9vFE, Sizes, Location, Design DEF Sizes, Location, Design
====
