---- MODULE PdFinalAuxType_76cfbb88b566ee53 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_76cfbb88b566ee53 ==        
  ASSUME Sizes, Location, Design,
         NEW i \in Inst, PinInv, Hang(i)
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

           LO6X8S5(i) ==
             alive[i] /\ nfail < MaxFail /\ alive' = [alive EXCEPT ![i] = FALSE] /\ nfail' = nfail + 1

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ, LO6X8S5

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

<1>a5adykzx1.        
  Oet5P /\ UNCHANGED ptl => Oet5P'
  BY SMT, Sizes, Location, Design DEF Oet5P, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ODzOj7OF5G.        
  toA96a /\ UNCHANGED pvis => toA96a'
  BY SMT, Sizes, Location, Design DEF toA96a, Sizes, Location, Design

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

<1>sK7o4ORt.        
  JojO /\ UNCHANGED hw => JojO'
  BY SMT, Sizes, Location, Design DEF JojO, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>j5qfHiLkn.        
  NFMkE /\ UNCHANGED hok => NFMkE'
  BY SMT, Sizes, Location, Design DEF NFMkE, Sizes, Location, Design

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


<1>joocjfn.        
  ASSUME NEW i \in Inst, Hang(i)
  PROVE UNCHANGED <<crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>joocjfn, Sizes, Location, Design, Zenon DEF Hang, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XitrigMe.        
  ASSUME NEW i \in Inst, Hang(i)
  PROVE LO6X8S5(i)
  BY ONLY <1>XitrigMe, Sizes, Location, Design, Design, Zenon DEF Hang, LO6X8S5, Sizes, Location, Design
\* T2M-END R2M2707_PdROBase_PdBHangEffects


<1>EqF2Hkb.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE wOTr_'
<2> USE ONLY <1>EqF2Hkb, Sizes, Location, Design
<2>1. wOTr_ /\ UNCHANGED gen
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Bhx03WnOR, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Hy3PjO.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE Qjrp'
<2> USE ONLY <1>Hy3PjO, Sizes, Location, Design
<2>1. Qjrp /\ UNCHANGED rt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>HvgN1jOy, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ojzqit.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE vdfp'
<2> USE ONLY <1>Ojzqit, Sizes, Location, Design
<2>1. vdfp /\ UNCHANGED rp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>kw4jQB4N, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Qub0U6.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE Gi91'
<2> USE ONLY <1>Qub0U6, Sizes, Location, Design
<2>1. Gi91 /\ UNCHANGED rd
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>XYHegQw4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xv1N5Q.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE f9Jo'
<2> USE ONLY <1>xv1N5Q, Sizes, Location, Design
<2>1. f9Jo /\ UNCHANGED hp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>KdTVsDuK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EzArkH.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE qC4t'
<2> USE ONLY <1>EzArkH, Sizes, Location, Design
<2>1. qC4t /\ UNCHANGED hd
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>dJNCBm1b, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>atdDQpHgg.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE dfknOma'
<2> USE ONLY <1>atdDQpHgg, Sizes, Location, Design
<2>1. dfknOma
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_KStruct, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, soyHJ, Sizes, Location, Design
<2>2. LO6X8S5(i)
  BY <1>XitrigMe, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF LO6X8S5, dfknOma, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hkYSFWTJF.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE TiBl9dL'
<2> USE ONLY <1>hkYSFWTJF, Sizes, Location, Design
<2>1. TiBl9dL
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_KStruct, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, soyHJ, Sizes, Location, Design
<2>2. LO6X8S5(i)
  BY <1>XitrigMe, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF LO6X8S5, TiBl9dL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hOAcGPYT.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE nvVdwJ'
<2> USE ONLY <1>hOAcGPYT, Sizes, Location, Design
<2>1. nvVdwJ /\ UNCHANGED torn
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>r7E4f80cl1, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wA6B56qs.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE kyOog2'
<2> USE ONLY <1>wA6B56qs, Sizes, Location, Design
<2>1. kyOog2 /\ UNCHANGED kpin
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>REGdo9n2Yx, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>thv3iHVV.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE UUdTOK'
<2> USE ONLY <1>thv3iHVV, Sizes, Location, Design
<2>1. UUdTOK /\ UNCHANGED kfly
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>IJYdQTdZJP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OTVBe7y.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE dMRAk'
<2> USE ONLY <1>OTVBe7y, Sizes, Location, Design
<2>1. dMRAk /\ UNCHANGED krs
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>kRHsSWPEr, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>V3J8Jk.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE lwx7'
<2> USE ONLY <1>V3J8Jk, Sizes, Location, Design
<2>1. lwx7 /\ UNCHANGED ph
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>LnpSgDJL, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OHCmCM.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE azLu'
<2> USE ONLY <1>OHCmCM, Sizes, Location, Design
<2>1. azLu /\ UNCHANGED rg
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>MnaluSJc, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tChWnIr.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE T2_wJ'
<2> USE ONLY <1>tChWnIr, Sizes, Location, Design
<2>1. T2_wJ /\ UNCHANGED rpg
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>hD9vGdVka, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cKv5Dx8.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE DRkCp'
<2> USE ONLY <1>cKv5Dx8, Sizes, Location, Design
<2>1. DRkCp /\ UNCHANGED rpe
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>MBHJWRO3n, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Y9mVKk.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE u6eb'
<2> USE ONLY <1>Y9mVKk, Sizes, Location, Design
<2>1. u6eb /\ UNCHANGED rx
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>XMxwxbvo, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lvNqlMgb.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE WFFocH'
<2> USE ONLY <1>lvNqlMgb, Sizes, Location, Design
<2>1. WFFocH /\ UNCHANGED rhit
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>qU6W3UivmX, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>okDaTAy.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE mWgRR'
<2> USE ONLY <1>okDaTAy, Sizes, Location, Design
<2>1. mWgRR /\ UNCHANGED pst
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>IqC1LFgEj, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BfkMLo.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE voSc'
<2> USE ONLY <1>BfkMLo, Sizes, Location, Design
<2>1. voSc /\ UNCHANGED pr
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>JG8RKj1K, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>raQlFNr.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE ejARA'
<2> USE ONLY <1>raQlFNr, Sizes, Location, Design
<2>1. ejARA /\ UNCHANGED pgn
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>JGoie9cAR, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cGXGZtn.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE nhDFh'
<2> USE ONLY <1>cGXGZtn, Sizes, Location, Design
<2>1. nhDFh /\ UNCHANGED plt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>dznlczdV0, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tQe4DUq.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE Oet5P'
<2> USE ONLY <1>tQe4DUq, Sizes, Location, Design
<2>1. Oet5P /\ UNCHANGED ptl
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>a5adykzx1, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T05YtY5M.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE toA96a'
<2> USE ONLY <1>T05YtY5M, Sizes, Location, Design
<2>1. toA96a /\ UNCHANGED pvis
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ODzOj7OF5G, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>A8EcCpe.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE CQcwS'
<2> USE ONLY <1>A8EcCpe, Sizes, Location, Design
<2>1. CQcwS /\ UNCHANGED led
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>n99ZzQEeO, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BcvFOHlA.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE pgoLyw'
<2> USE ONLY <1>BcvFOHlA, Sizes, Location, Design
<2>1. pgoLyw /\ UNCHANGED sfly
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>RYFggVMOUb, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Mj8s8lH7.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE gwX1nH'
<2> USE ONLY <1>Mj8s8lH7, Sizes, Location, Design
<2>1. gwX1nH /\ UNCHANGED sled
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>JQwbMQnQtE, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ddjKQqufh.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE uhaZUCa'
<2> USE ONLY <1>ddjKQqufh, Sizes, Location, Design
<2>1. uhaZUCa /\ UNCHANGED prefc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>iZKDPpjzcRe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AyhbS8W.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE j9ZB2'
<2> USE ONLY <1>AyhbS8W, Sizes, Location, Design
<2>1. j9ZB2 /\ UNCHANGED pqp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>tDH6Dz5Bl, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WBgvup.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE tOrh'
<2> USE ONLY <1>WBgvup, Sizes, Location, Design
<2>1. tOrh /\ UNCHANGED xr
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>NvuQjA2B, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Uf90Uq.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE oZ1G'
<2> USE ONLY <1>Uf90Uq, Sizes, Location, Design
<2>1. oZ1G /\ UNCHANGED xg
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>RD9Q7CJK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>i7GdPS.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE TMQx'
<2> USE ONLY <1>i7GdPS, Sizes, Location, Design
<2>1. TMQx /\ UNCHANGED xk
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>sH1Q96QM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lOXpH2.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE vvyr'
<2> USE ONLY <1>lOXpH2, Sizes, Location, Design
<2>1. vvyr /\ UNCHANGED xp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Yc0eXbL9, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BoXDUE.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE FBnj'
<2> USE ONLY <1>BoXDUE, Sizes, Location, Design
<2>1. FBnj /\ UNCHANGED xd
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>oHjgydo5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IvvyyjcE.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE Sbgpxn'
<2> USE ONLY <1>IvvyyjcE, Sizes, Location, Design
<2>1. Sbgpxn /\ UNCHANGED xsrc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>jyzFwH33xk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dXubGHRV.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE tP64Zt'
<2> USE ONLY <1>dXubGHRV, Sizes, Location, Design
<2>1. tP64Zt /\ UNCHANGED xdst
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>LUNproxt6M, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qp5HIzx.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE Rl_wH'
<2> USE ONLY <1>qp5HIzx, Sizes, Location, Design
<2>1. Rl_wH /\ UNCHANGED xnt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>eG0tfbZbK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YQc5MW.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE JojO'
<2> USE ONLY <1>YQc5MW, Sizes, Location, Design
<2>1. JojO /\ UNCHANGED hw
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>sK7o4ORt, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Xvl1ADs.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE NFMkE'
<2> USE ONLY <1>Xvl1ADs, Sizes, Location, Design
<2>1. NFMkE /\ UNCHANGED hok
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>j5qfHiLkn, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hLPx4v.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE vQ8m'
<2> USE ONLY <1>hLPx4v, Sizes, Location, Design
<2>1. vQ8m /\ UNCHANGED iv
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>tPtUyRbA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H2XAc0v.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE tMnUG'
<2> USE ONLY <1>H2XAc0v, Sizes, Location, Design
<2>1. tMnUG /\ UNCHANGED xst
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>OG6BaXg6W, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>e5vWrnR.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE Og_ZB'
<2> USE ONLY <1>e5vWrnR, Sizes, Location, Design
<2>1. Og_ZB /\ UNCHANGED xlt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Vo9aCkTx7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iOlVtJ.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE NHqB'
<2> USE ONLY <1>iOlVtJ, Sizes, Location, Design
<2>1. NHqB /\ UNCHANGED nx
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>hgtESZog, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iN2mlQD.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE j95de'
<2> USE ONLY <1>iN2mlQD, Sizes, Location, Design
<2>1. j95de /\ UNCHANGED net
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>WjszWllEY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xA0p33D3.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE jnT8ZH'
<2> USE ONLY <1>xA0p33D3, Sizes, Location, Design
<2>1. jnT8ZH /\ UNCHANGED drep
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>PqsERF6Gbr, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Wg2vAiF1.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE fikvOb'
<2> USE ONLY <1>Wg2vAiF1, Sizes, Location, Design
<2>1. fikvOb /\ UNCHANGED crep
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>uEqnZsrhy6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NT9rr3IbX.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE wBRWE5u'
<2> USE ONLY <1>NT9rr3IbX, Sizes, Location, Design
<2>1. wBRWE5u /\ UNCHANGED dsucc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>FY0ZxsA4n3A, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Qbiv1p3l.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE Le6TxG'
<2> USE ONLY <1>Qbiv1p3l, Sizes, Location, Design
<2>1. Le6TxG /\ UNCHANGED gbad
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>joocjfn, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>t3VCppqYgZ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hWjiHABo.        
  ASSUME NEW i \in Inst, PinInv, Hang(i)
  PROVE CoreTypeOK'
  BY ONLY <1>hWjiHABo, Sizes, Location, Design, <1>LKcJBIJVI4s5, <1>atdDQpHgg, <1>Wg2vAiF1, <1>xA0p33D3, <1>NT9rr3IbX, <1>Qbiv1p3l, <1>EqF2Hkb, <1>EzArkH, <1>Xvl1ADs, <1>xv1N5Q, <1>YQc5MW, <1>hLPx4v, <1>thv3iHVV, <1>wA6B56qs, <1>OTVBe7y, <1>A8EcCpe, <1>iN2mlQD, <1>hkYSFWTJF, <1>iOlVtJ, <1>raQlFNr, <1>V3J8Jk, <1>cGXGZtn, <1>AyhbS8W, <1>BfkMLo, <1>ddjKQqufh, <1>okDaTAy, <1>tQe4DUq, <1>T05YtY5M, <1>Qub0U6, <1>OHCmCM, <1>lvNqlMgb, <1>Ojzqit, <1>cKv5Dx8, <1>tChWnIr, <1>Hy3PjO, <1>Y9mVKk, <1>BcvFOHlA, <1>Mj8s8lH7, <1>hOAcGPYT, <1>BoXDUE, <1>dXubGHRV, <1>Uf90Uq, <1>i7GdPS, <1>e5vWrnR, <1>qp5HIzx, <1>lOXpH2, <1>WBgvup, <1>IvvyyjcE, <1>H2XAc0v DEF soyHJ, Sizes, Location, Design
\* T2M-END R2M2708_PdROBase_PdBHangTypes


<1> QED BY <1>hWjiHABo, Sizes, Location, Design DEF Sizes, Location, Design
====
