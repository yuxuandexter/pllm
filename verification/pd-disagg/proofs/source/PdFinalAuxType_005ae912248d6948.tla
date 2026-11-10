---- MODULE PdFinalAuxType_005ae912248d6948 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_005ae912248d6948 ==        
  ASSUME Sizes, Location, Design,
         NEW x \in Xids, PinInv, HwStop(x)
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

           NlAXTwIvW(x) ==
             hw[x] \in {"fly", "issued"} /\ \E ok \in (IF hw[x] = "issued" THEN {hok[x]} ELSE BOOLEAN) :
              /\ hw' = [hw EXCEPT ![x] = "stop"] /\ hok' = [hok EXCEPT ![x] = ok]
              /\ ptl' = [ptl EXCEPT ![xdst[x]] = IF Held(xdst[x], x) THEN (IF ok THEN xlt[x] ELSE 0) ELSE -1]
              /\ pvis' = [pvis EXCEPT ![xdst[x]] = IF ok THEN FALSE ELSE @]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ, NlAXTwIvW

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


<1>Bhx03WnOR.        
  wOTr_ /\ UNCHANGED gen => wOTr_'
  BY SMT, Sizes, Location, Design DEF wOTr_, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HvgN1jOy.        
  Qjrp /\ UNCHANGED rt => Qjrp'
  BY SMT, Sizes, Location, Design DEF Qjrp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kw4jQB4N.        
  vdfp /\ UNCHANGED rp => vdfp'
  BY SMT, Sizes, Location, Design DEF vdfp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XYHegQw4.        
  Gi91 /\ UNCHANGED rd => Gi91'
  BY SMT, Sizes, Location, Design DEF Gi91, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KdTVsDuK.        
  f9Jo /\ UNCHANGED hp => f9Jo'
  BY SMT, Sizes, Location, Design DEF f9Jo, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dJNCBm1b.        
  qC4t /\ UNCHANGED hd => qC4t'
  BY SMT, Sizes, Location, Design DEF qC4t, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ybNDu613eAs.        
  dfknOma /\ UNCHANGED alive => dfknOma'
  BY SMT, Sizes, Location, Design DEF dfknOma, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XdiVkyyvMpb.        
  TiBl9dL /\ UNCHANGED nfail => TiBl9dL'
  BY SMT, Sizes, Location, Design DEF TiBl9dL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r7E4f80cl1.        
  nvVdwJ /\ UNCHANGED torn => nvVdwJ'
  BY SMT, Sizes, Location, Design DEF nvVdwJ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>REGdo9n2Yx.        
  kyOog2 /\ UNCHANGED kpin => kyOog2'
  BY SMT, Sizes, Location, Design DEF kyOog2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IJYdQTdZJP.        
  UUdTOK /\ UNCHANGED kfly => UUdTOK'
  BY SMT, Sizes, Location, Design DEF UUdTOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kRHsSWPEr.        
  dMRAk /\ UNCHANGED krs => dMRAk'
  BY SMT, Sizes, Location, Design DEF dMRAk, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LnpSgDJL.        
  lwx7 /\ UNCHANGED ph => lwx7'
  BY SMT, Sizes, Location, Design DEF lwx7, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MnaluSJc.        
  azLu /\ UNCHANGED rg => azLu'
  BY SMT, Sizes, Location, Design DEF azLu, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hD9vGdVka.        
  T2_wJ /\ UNCHANGED rpg => T2_wJ'
  BY SMT, Sizes, Location, Design DEF T2_wJ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MBHJWRO3n.        
  DRkCp /\ UNCHANGED rpe => DRkCp'
  BY SMT, Sizes, Location, Design DEF DRkCp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XMxwxbvo.        
  u6eb /\ UNCHANGED rx => u6eb'
  BY SMT, Sizes, Location, Design DEF u6eb, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qU6W3UivmX.        
  WFFocH /\ UNCHANGED rhit => WFFocH'
  BY SMT, Sizes, Location, Design DEF WFFocH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IqC1LFgEj.        
  mWgRR /\ UNCHANGED pst => mWgRR'
  BY SMT, Sizes, Location, Design DEF mWgRR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JG8RKj1K.        
  voSc /\ UNCHANGED pr => voSc'
  BY SMT, Sizes, Location, Design DEF voSc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JGoie9cAR.        
  ejARA /\ UNCHANGED pgn => ejARA'
  BY SMT, Sizes, Location, Design DEF ejARA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dznlczdV0.        
  nhDFh /\ UNCHANGED plt => nhDFh'
  BY SMT, Sizes, Location, Design DEF nhDFh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>n99ZzQEeO.        
  CQcwS /\ UNCHANGED led => CQcwS'
  BY SMT, Sizes, Location, Design DEF CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RYFggVMOUb.        
  pgoLyw /\ UNCHANGED sfly => pgoLyw'
  BY SMT, Sizes, Location, Design DEF pgoLyw, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JQwbMQnQtE.        
  gwX1nH /\ UNCHANGED sled => gwX1nH'
  BY SMT, Sizes, Location, Design DEF gwX1nH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iZKDPpjzcRe.        
  uhaZUCa /\ UNCHANGED prefc => uhaZUCa'
  BY SMT, Sizes, Location, Design DEF uhaZUCa, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tDH6Dz5Bl.        
  j9ZB2 /\ UNCHANGED pqp => j9ZB2'
  BY SMT, Sizes, Location, Design DEF j9ZB2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NvuQjA2B.        
  tOrh /\ UNCHANGED xr => tOrh'
  BY SMT, Sizes, Location, Design DEF tOrh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RD9Q7CJK.        
  oZ1G /\ UNCHANGED xg => oZ1G'
  BY SMT, Sizes, Location, Design DEF oZ1G, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sH1Q96QM.        
  TMQx /\ UNCHANGED xk => TMQx'
  BY SMT, Sizes, Location, Design DEF TMQx, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Yc0eXbL9.        
  vvyr /\ UNCHANGED xp => vvyr'
  BY SMT, Sizes, Location, Design DEF vvyr, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oHjgydo5.        
  FBnj /\ UNCHANGED xd => FBnj'
  BY SMT, Sizes, Location, Design DEF FBnj, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jyzFwH33xk.        
  Sbgpxn /\ UNCHANGED xsrc => Sbgpxn'
  BY SMT, Sizes, Location, Design DEF Sbgpxn, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LUNproxt6M.        
  tP64Zt /\ UNCHANGED xdst => tP64Zt'
  BY SMT, Sizes, Location, Design DEF tP64Zt, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eG0tfbZbK.        
  Rl_wH /\ UNCHANGED xnt => Rl_wH'
  BY SMT, Sizes, Location, Design DEF Rl_wH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tPtUyRbA.        
  vQ8m /\ UNCHANGED iv => vQ8m'
  BY SMT, Sizes, Location, Design DEF vQ8m, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OG6BaXg6W.        
  tMnUG /\ UNCHANGED xst => tMnUG'
  BY SMT, Sizes, Location, Design DEF tMnUG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Vo9aCkTx7.        
  Og_ZB /\ UNCHANGED xlt => Og_ZB'
  BY SMT, Sizes, Location, Design DEF Og_ZB, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hgtESZog.        
  NHqB /\ UNCHANGED nx => NHqB'
  BY SMT, Sizes, Location, Design DEF NHqB, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WjszWllEY.        
  j95de /\ UNCHANGED net => j95de'
  BY SMT, Sizes, Location, Design DEF j95de, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PqsERF6Gbr.        
  jnT8ZH /\ UNCHANGED drep => jnT8ZH'
  BY SMT, Sizes, Location, Design DEF jnT8ZH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uEqnZsrhy6.        
  fikvOb /\ UNCHANGED crep => fikvOb'
  BY SMT, Sizes, Location, Design DEF fikvOb, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FY0ZxsA4n3A.        
  wBRWE5u /\ UNCHANGED dsucc => wBRWE5u'
  BY SMT, Sizes, Location, Design DEF wBRWE5u, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t3VCppqYgZ.        
  Le6TxG /\ UNCHANGED gbad => Le6TxG'
  BY SMT, Sizes, Location, Design DEF Le6TxG, Sizes, Location, Design
\* T2M-END R2M2235_PdROBase_PdBFrames


<1>O8DCAEAnW.        
  ASSUME NEW x \in Xids, HwStop(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hp, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>O8DCAEAnW, Sizes, Location, Design, Zenon DEF HwStop, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>W9CGEbFDUe.        
  ASSUME NEW x \in Xids, HwStop(x)
  PROVE NlAXTwIvW(x)
  BY ONLY <1>W9CGEbFDUe, Sizes, Location, Design, Design, Zenon DEF HwStop, NlAXTwIvW, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bWISMshPp.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE wOTr_'
<2> USE ONLY <1>bWISMshPp, Sizes, Location, Design
<2>1. wOTr_ /\ UNCHANGED gen
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Bhx03WnOR, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J0oaSByy.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE Qjrp'
<2> USE ONLY <1>J0oaSByy, Sizes, Location, Design
<2>1. Qjrp /\ UNCHANGED rt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>HvgN1jOy, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sqyIKwuq.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE vdfp'
<2> USE ONLY <1>sqyIKwuq, Sizes, Location, Design
<2>1. vdfp /\ UNCHANGED rp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>kw4jQB4N, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>f1JLq0mT.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE Gi91'
<2> USE ONLY <1>f1JLq0mT, Sizes, Location, Design
<2>1. Gi91 /\ UNCHANGED rd
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>XYHegQw4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fHGNLaHz.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE f9Jo'
<2> USE ONLY <1>fHGNLaHz, Sizes, Location, Design
<2>1. f9Jo /\ UNCHANGED hp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>KdTVsDuK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>C7qcjFTb.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE qC4t'
<2> USE ONLY <1>C7qcjFTb, Sizes, Location, Design
<2>1. qC4t /\ UNCHANGED hd
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>dJNCBm1b, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nAaJEp8kZXI.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE dfknOma'
<2> USE ONLY <1>nAaJEp8kZXI, Sizes, Location, Design
<2>1. dfknOma /\ UNCHANGED alive
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ybNDu613eAs, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fTQ7rndiKjp.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE TiBl9dL'
<2> USE ONLY <1>fTQ7rndiKjp, Sizes, Location, Design
<2>1. TiBl9dL /\ UNCHANGED nfail
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>XdiVkyyvMpb, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kyBHmNc0sU.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE nvVdwJ'
<2> USE ONLY <1>kyBHmNc0sU, Sizes, Location, Design
<2>1. nvVdwJ /\ UNCHANGED torn
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>r7E4f80cl1, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ph6guQ3x4w.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE kyOog2'
<2> USE ONLY <1>Ph6guQ3x4w, Sizes, Location, Design
<2>1. kyOog2 /\ UNCHANGED kpin
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>REGdo9n2Yx, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Drv6UQaD9I.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE UUdTOK'
<2> USE ONLY <1>Drv6UQaD9I, Sizes, Location, Design
<2>1. UUdTOK /\ UNCHANGED kfly
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>IJYdQTdZJP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ckgoZCUeS.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE dMRAk'
<2> USE ONLY <1>ckgoZCUeS, Sizes, Location, Design
<2>1. dMRAk /\ UNCHANGED krs
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>kRHsSWPEr, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WRCFeO0Q.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE lwx7'
<2> USE ONLY <1>WRCFeO0Q, Sizes, Location, Design
<2>1. lwx7 /\ UNCHANGED ph
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>LnpSgDJL, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dfSbgmf6.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE azLu'
<2> USE ONLY <1>dfSbgmf6, Sizes, Location, Design
<2>1. azLu /\ UNCHANGED rg
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>MnaluSJc, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>s2WpkNX3L.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE T2_wJ'
<2> USE ONLY <1>s2WpkNX3L, Sizes, Location, Design
<2>1. T2_wJ /\ UNCHANGED rpg
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>hD9vGdVka, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eM8vpHqqj.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE DRkCp'
<2> USE ONLY <1>eM8vpHqqj, Sizes, Location, Design
<2>1. DRkCp /\ UNCHANGED rpe
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>MBHJWRO3n, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mgE1kNQY.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE u6eb'
<2> USE ONLY <1>mgE1kNQY, Sizes, Location, Design
<2>1. u6eb /\ UNCHANGED rx
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>XMxwxbvo, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r4UolR8bNT.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE WFFocH'
<2> USE ONLY <1>r4UolR8bNT, Sizes, Location, Design
<2>1. WFFocH /\ UNCHANGED rhit
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>qU6W3UivmX, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Do2XsdIEM.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE mWgRR'
<2> USE ONLY <1>Do2XsdIEM, Sizes, Location, Design
<2>1. mWgRR /\ UNCHANGED pst
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>IqC1LFgEj, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VCMwuEl8.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE voSc'
<2> USE ONLY <1>VCMwuEl8, Sizes, Location, Design
<2>1. voSc /\ UNCHANGED pr
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>JG8RKj1K, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UxSbTwP75.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE ejARA'
<2> USE ONLY <1>UxSbTwP75, Sizes, Location, Design
<2>1. ejARA /\ UNCHANGED pgn
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>JGoie9cAR, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gurMe14Lh.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE nhDFh'
<2> USE ONLY <1>gurMe14Lh, Sizes, Location, Design
<2>1. nhDFh /\ UNCHANGED plt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>dznlczdV0, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LKjVv8dR3.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE Oet5P'
<2> USE ONLY <1>LKjVv8dR3, Sizes, Location, Design
<2>1. NFMkE /\ Oet5P /\ Og_ZB
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. NlAXTwIvW(x)
  BY <1>W9CGEbFDUe, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Sizes, SMTT(15), Location, Design DEF NlAXTwIvW, NFMkE, Oet5P, Og_ZB, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uv3EE2sJEH.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE toA96a'
<2> USE ONLY <1>uv3EE2sJEH, Sizes, Location, Design
<2>1. NFMkE /\ toA96a
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. NlAXTwIvW(x)
  BY <1>W9CGEbFDUe, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Sizes, SMTT(15), Location, Design DEF NlAXTwIvW, NFMkE, toA96a, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JctIUIZzS.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE CQcwS'
<2> USE ONLY <1>JctIUIZzS, Sizes, Location, Design
<2>1. CQcwS /\ UNCHANGED led
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>n99ZzQEeO, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eKeLdVEAdu.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE pgoLyw'
<2> USE ONLY <1>eKeLdVEAdu, Sizes, Location, Design
<2>1. pgoLyw /\ UNCHANGED sfly
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>RYFggVMOUb, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>elws53vRFx.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE gwX1nH'
<2> USE ONLY <1>elws53vRFx, Sizes, Location, Design
<2>1. gwX1nH /\ UNCHANGED sled
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>JQwbMQnQtE, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pf9sd2Rg5Ig.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE uhaZUCa'
<2> USE ONLY <1>pf9sd2Rg5Ig, Sizes, Location, Design
<2>1. uhaZUCa /\ UNCHANGED prefc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>iZKDPpjzcRe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OrU6RcuOb.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE j9ZB2'
<2> USE ONLY <1>OrU6RcuOb, Sizes, Location, Design
<2>1. j9ZB2 /\ UNCHANGED pqp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>tDH6Dz5Bl, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bavsOvqi.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE tOrh'
<2> USE ONLY <1>bavsOvqi, Sizes, Location, Design
<2>1. tOrh /\ UNCHANGED xr
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>NvuQjA2B, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nFsU2sBK.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE oZ1G'
<2> USE ONLY <1>nFsU2sBK, Sizes, Location, Design
<2>1. oZ1G /\ UNCHANGED xg
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>RD9Q7CJK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>W0OjVOst.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE TMQx'
<2> USE ONLY <1>W0OjVOst, Sizes, Location, Design
<2>1. TMQx /\ UNCHANGED xk
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>sH1Q96QM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XRxAUNCl.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE vvyr'
<2> USE ONLY <1>XRxAUNCl, Sizes, Location, Design
<2>1. vvyr /\ UNCHANGED xp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Yc0eXbL9, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DxzZHlva.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE FBnj'
<2> USE ONLY <1>DxzZHlva, Sizes, Location, Design
<2>1. FBnj /\ UNCHANGED xd
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>oHjgydo5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YTj8G48bMD.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE Sbgpxn'
<2> USE ONLY <1>YTj8G48bMD, Sizes, Location, Design
<2>1. Sbgpxn /\ UNCHANGED xsrc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>jyzFwH33xk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>grj91NkROS.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE tP64Zt'
<2> USE ONLY <1>grj91NkROS, Sizes, Location, Design
<2>1. tP64Zt /\ UNCHANGED xdst
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>LUNproxt6M, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IhUU4RkqZ.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE Rl_wH'
<2> USE ONLY <1>IhUU4RkqZ, Sizes, Location, Design
<2>1. Rl_wH /\ UNCHANGED xnt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>eG0tfbZbK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OSlSmMhz.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE JojO'
<2> USE ONLY <1>OSlSmMhz, Sizes, Location, Design
<2>1. NFMkE /\ JojO
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. NlAXTwIvW(x)
  BY <1>W9CGEbFDUe, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Sizes, SMTT(15), Location, Design DEF NlAXTwIvW, NFMkE, JojO, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Kd19t8F4Z.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE NFMkE'
<2> USE ONLY <1>Kd19t8F4Z, Sizes, Location, Design
<2>1. NFMkE
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. NlAXTwIvW(x)
  BY <1>W9CGEbFDUe, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Sizes, SMTT(15), Location, Design DEF NlAXTwIvW, NFMkE, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q74MnF3h.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE vQ8m'
<2> USE ONLY <1>Q74MnF3h, Sizes, Location, Design
<2>1. vQ8m /\ UNCHANGED iv
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>tPtUyRbA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aiYKJyO5W.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE tMnUG'
<2> USE ONLY <1>aiYKJyO5W, Sizes, Location, Design
<2>1. tMnUG /\ UNCHANGED xst
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>OG6BaXg6W, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rbTaZXqYd.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE Og_ZB'
<2> USE ONLY <1>rbTaZXqYd, Sizes, Location, Design
<2>1. Og_ZB /\ UNCHANGED xlt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Vo9aCkTx7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RnwAb0vG.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE NHqB'
<2> USE ONLY <1>RnwAb0vG, Sizes, Location, Design
<2>1. NHqB /\ UNCHANGED nx
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>hgtESZog, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J3MCfP9Gn.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE j95de'
<2> USE ONLY <1>J3MCfP9Gn, Sizes, Location, Design
<2>1. j95de /\ UNCHANGED net
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>WjszWllEY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZNzYpAAq11.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE jnT8ZH'
<2> USE ONLY <1>ZNzYpAAq11, Sizes, Location, Design
<2>1. jnT8ZH /\ UNCHANGED drep
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>PqsERF6Gbr, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>toWQj4yl0S.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE fikvOb'
<2> USE ONLY <1>toWQj4yl0S, Sizes, Location, Design
<2>1. fikvOb /\ UNCHANGED crep
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>uEqnZsrhy6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZNTAK2s7hAb.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE wBRWE5u'
<2> USE ONLY <1>ZNTAK2s7hAb, Sizes, Location, Design
<2>1. wBRWE5u /\ UNCHANGED dsucc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>FY0ZxsA4n3A, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xJaKC0Fjc7.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE Le6TxG'
<2> USE ONLY <1>xJaKC0Fjc7, Sizes, Location, Design
<2>1. Le6TxG /\ UNCHANGED gbad
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>O8DCAEAnW, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>t3VCppqYgZ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>z94bHZuslb.        
  ASSUME NEW x \in Xids, PinInv, HwStop(x)
  PROVE CoreTypeOK'
  BY ONLY <1>z94bHZuslb, Sizes, Location, Design, <1>LKcJBIJVI4s5, <1>nAaJEp8kZXI, <1>toWQj4yl0S, <1>ZNzYpAAq11, <1>ZNTAK2s7hAb, <1>xJaKC0Fjc7, <1>bWISMshPp, <1>C7qcjFTb, <1>Kd19t8F4Z, <1>fHGNLaHz, <1>OSlSmMhz, <1>Q74MnF3h, <1>Drv6UQaD9I, <1>Ph6guQ3x4w, <1>ckgoZCUeS, <1>JctIUIZzS, <1>J3MCfP9Gn, <1>fTQ7rndiKjp, <1>RnwAb0vG, <1>UxSbTwP75, <1>WRCFeO0Q, <1>gurMe14Lh, <1>OrU6RcuOb, <1>VCMwuEl8, <1>pf9sd2Rg5Ig, <1>Do2XsdIEM, <1>LKjVv8dR3, <1>uv3EE2sJEH, <1>f1JLq0mT, <1>dfSbgmf6, <1>r4UolR8bNT, <1>sqyIKwuq, <1>eM8vpHqqj, <1>s2WpkNX3L, <1>J0oaSByy, <1>mgE1kNQY, <1>eKeLdVEAdu, <1>elws53vRFx, <1>kyBHmNc0sU, <1>DxzZHlva, <1>grj91NkROS, <1>nFsU2sBK, <1>W0OjVOst, <1>rbTaZXqYd, <1>IhUU4RkqZ, <1>XRxAUNCl, <1>bavsOvqi, <1>YTj8G48bMD, <1>aiYKJyO5W DEF soyHJ, Sizes, Location, Design
\* T2M-END R2M2670_PdROBase_PdBHwStopTypes


<1> QED BY <1>z94bHZuslb, Sizes, Location, Design DEF Sizes, Location, Design
====
