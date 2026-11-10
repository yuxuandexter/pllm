---- MODULE PdFinalAuxType_6c567d3bddaad3dd ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_6c567d3bddaad3dd ==        
  ASSUME Sizes, Location, Design,
         NEW x \in Xids, PinInv, LibFailRet(x)
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

           RVwpGut6WVd1P(x) ==
             iv[x] = "posted" /\ iv' = [iv EXCEPT ![x] = "failret"]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ, RVwpGut6WVd1P

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


<1>CikkJiRY9hxFA.        
  ASSUME NEW x \in Xids, LibFailRet(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>CikkJiRY9hxFA, Sizes, Location, Design, Zenon DEF LibFailRet, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Dyz2lnBmL67xfy.        
  ASSUME NEW x \in Xids, LibFailRet(x)
  PROVE RVwpGut6WVd1P(x)
  BY ONLY <1>Dyz2lnBmL67xfy, Sizes, Location, Design, Design, Zenon DEF LibFailRet, RVwpGut6WVd1P, Sizes, Location, Design
\* T2M-END R2M2256_PdROBase_PdBLibFailRetControl


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


<1>hvdEwjGRZ3Uwj.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE wOTr_'
<2> USE ONLY <1>hvdEwjGRZ3Uwj, Sizes, Location, Design
<2>1. wOTr_ /\ UNCHANGED gen
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Bhx03WnOR, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PbXiJXAVAunQ.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE Qjrp'
<2> USE ONLY <1>PbXiJXAVAunQ, Sizes, Location, Design
<2>1. Qjrp /\ UNCHANGED rt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>HvgN1jOy, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dVihfUKUbrow.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE vdfp'
<2> USE ONLY <1>dVihfUKUbrow, Sizes, Location, Design
<2>1. vdfp /\ UNCHANGED rp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>kw4jQB4N, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Mo0Z5shX7gjo.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE Gi91'
<2> USE ONLY <1>Mo0Z5shX7gjo, Sizes, Location, Design
<2>1. Gi91 /\ UNCHANGED rd
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>XYHegQw4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MzySRntmRcJ8.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE f9Jo'
<2> USE ONLY <1>MzySRntmRcJ8, Sizes, Location, Design
<2>1. f9Jo /\ UNCHANGED hp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>KdTVsDuK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ENmxOeOK005e.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE qC4t'
<2> USE ONLY <1>ENmxOeOK005e, Sizes, Location, Design
<2>1. qC4t /\ UNCHANGED hd
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>dJNCBm1b, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fqDojA3PDcUmIZD.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE dfknOma'
<2> USE ONLY <1>fqDojA3PDcUmIZD, Sizes, Location, Design
<2>1. dfknOma /\ UNCHANGED alive
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ybNDu613eAs, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qtx7PhZBfrrjbgJ.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE TiBl9dL'
<2> USE ONLY <1>qtx7PhZBfrrjbgJ, Sizes, Location, Design
<2>1. TiBl9dL /\ UNCHANGED nfail
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>XdiVkyyvMpb, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Mo5sK5i4UeVEoH.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE nvVdwJ'
<2> USE ONLY <1>Mo5sK5i4UeVEoH, Sizes, Location, Design
<2>1. nvVdwJ /\ UNCHANGED torn
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>r7E4f80cl1, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JqXL7S2swIc855.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE kyOog2'
<2> USE ONLY <1>JqXL7S2swIc855, Sizes, Location, Design
<2>1. kyOog2 /\ UNCHANGED kpin
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>REGdo9n2Yx, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gMFMxCcIj8TtZy.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE UUdTOK'
<2> USE ONLY <1>gMFMxCcIj8TtZy, Sizes, Location, Design
<2>1. UUdTOK /\ UNCHANGED kfly
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>IJYdQTdZJP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>y6Wppv8XlKh8W.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE dMRAk'
<2> USE ONLY <1>y6Wppv8XlKh8W, Sizes, Location, Design
<2>1. dMRAk /\ UNCHANGED krs
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>kRHsSWPEr, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PypxvyiDmrEr.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE lwx7'
<2> USE ONLY <1>PypxvyiDmrEr, Sizes, Location, Design
<2>1. lwx7 /\ UNCHANGED ph
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>LnpSgDJL, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nvYSiEvS8HgK.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE azLu'
<2> USE ONLY <1>nvYSiEvS8HgK, Sizes, Location, Design
<2>1. azLu /\ UNCHANGED rg
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>MnaluSJc, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Aa5hsTgaaSFDG.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE T2_wJ'
<2> USE ONLY <1>Aa5hsTgaaSFDG, Sizes, Location, Design
<2>1. T2_wJ /\ UNCHANGED rpg
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>hD9vGdVka, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OEnJe4cMxiwIC.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE DRkCp'
<2> USE ONLY <1>OEnJe4cMxiwIC, Sizes, Location, Design
<2>1. DRkCp /\ UNCHANGED rpe
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>MBHJWRO3n, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VNOB0VYEIrF9.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE u6eb'
<2> USE ONLY <1>VNOB0VYEIrF9, Sizes, Location, Design
<2>1. u6eb /\ UNCHANGED rx
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>XMxwxbvo, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tzlVYiBZDFgEIM.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE WFFocH'
<2> USE ONLY <1>tzlVYiBZDFgEIM, Sizes, Location, Design
<2>1. WFFocH /\ UNCHANGED rhit
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>qU6W3UivmX, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kEeNThMvgO0j6.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE mWgRR'
<2> USE ONLY <1>kEeNThMvgO0j6, Sizes, Location, Design
<2>1. mWgRR /\ UNCHANGED pst
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>IqC1LFgEj, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PZoI1YaGmIju.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE voSc'
<2> USE ONLY <1>PZoI1YaGmIju, Sizes, Location, Design
<2>1. voSc /\ UNCHANGED pr
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>JG8RKj1K, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Rtz2dv6jEhx4s.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE ejARA'
<2> USE ONLY <1>Rtz2dv6jEhx4s, Sizes, Location, Design
<2>1. ejARA /\ UNCHANGED pgn
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>JGoie9cAR, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aZZhZzozu5lZq.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE nhDFh'
<2> USE ONLY <1>aZZhZzozu5lZq, Sizes, Location, Design
<2>1. nhDFh /\ UNCHANGED plt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>dznlczdV0, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wejtbbU5ciVbi.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE Oet5P'
<2> USE ONLY <1>wejtbbU5ciVbi, Sizes, Location, Design
<2>1. Oet5P /\ UNCHANGED ptl
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>a5adykzx1, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SEjNsLdbztSiPy.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE toA96a'
<2> USE ONLY <1>SEjNsLdbztSiPy, Sizes, Location, Design
<2>1. toA96a /\ UNCHANGED pvis
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ODzOj7OF5G, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>akk6eZViWMs5y.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE CQcwS'
<2> USE ONLY <1>akk6eZViWMs5y, Sizes, Location, Design
<2>1. CQcwS /\ UNCHANGED led
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>n99ZzQEeO, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Xj6fKWiIKixGoZ.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE pgoLyw'
<2> USE ONLY <1>Xj6fKWiIKixGoZ, Sizes, Location, Design
<2>1. pgoLyw /\ UNCHANGED sfly
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>RYFggVMOUb, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FsZhTjH4qJ5zSc.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE gwX1nH'
<2> USE ONLY <1>FsZhTjH4qJ5zSc, Sizes, Location, Design
<2>1. gwX1nH /\ UNCHANGED sled
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>JQwbMQnQtE, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AOTbGZL2hWb4uFE.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE uhaZUCa'
<2> USE ONLY <1>AOTbGZL2hWb4uFE, Sizes, Location, Design
<2>1. uhaZUCa /\ UNCHANGED prefc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>iZKDPpjzcRe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mQNLd6tN2gPzx.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE j9ZB2'
<2> USE ONLY <1>mQNLd6tN2gPzx, Sizes, Location, Design
<2>1. j9ZB2 /\ UNCHANGED pqp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>tDH6Dz5Bl, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BQZR766gze71.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE tOrh'
<2> USE ONLY <1>BQZR766gze71, Sizes, Location, Design
<2>1. tOrh /\ UNCHANGED xr
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>NvuQjA2B, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>djyC2wiegpZW.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE oZ1G'
<2> USE ONLY <1>djyC2wiegpZW, Sizes, Location, Design
<2>1. oZ1G /\ UNCHANGED xg
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>RD9Q7CJK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rWvxfcSJpZuu.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE TMQx'
<2> USE ONLY <1>rWvxfcSJpZuu, Sizes, Location, Design
<2>1. TMQx /\ UNCHANGED xk
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>sH1Q96QM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>S9SnpdVOzi7P.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE vvyr'
<2> USE ONLY <1>S9SnpdVOzi7P, Sizes, Location, Design
<2>1. vvyr /\ UNCHANGED xp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Yc0eXbL9, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>X4Ax24OnhiSD.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE FBnj'
<2> USE ONLY <1>X4Ax24OnhiSD, Sizes, Location, Design
<2>1. FBnj /\ UNCHANGED xd
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>oHjgydo5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yuRjyAjmRpfsxV.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE Sbgpxn'
<2> USE ONLY <1>yuRjyAjmRpfsxV, Sizes, Location, Design
<2>1. Sbgpxn /\ UNCHANGED xsrc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>jyzFwH33xk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mQN8YJhjsdqqXc.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE tP64Zt'
<2> USE ONLY <1>mQN8YJhjsdqqXc, Sizes, Location, Design
<2>1. tP64Zt /\ UNCHANGED xdst
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>LUNproxt6M, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>newAj13kUCqli.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE Rl_wH'
<2> USE ONLY <1>newAj13kUCqli, Sizes, Location, Design
<2>1. Rl_wH /\ UNCHANGED xnt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>eG0tfbZbK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m2aEJIgMxOEY.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE JojO'
<2> USE ONLY <1>m2aEJIgMxOEY, Sizes, Location, Design
<2>1. JojO /\ UNCHANGED hw
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>sK7o4ORt, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZDBhZ0MDTNxst.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE NFMkE'
<2> USE ONLY <1>ZDBhZ0MDTNxst, Sizes, Location, Design
<2>1. NFMkE /\ UNCHANGED hok
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>j5qfHiLkn, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cTwEW4rS0KIV.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE vQ8m'
<2> USE ONLY <1>cTwEW4rS0KIV, Sizes, Location, Design
<2>1. vQ8m
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_KStruct, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, soyHJ, Sizes, Location, Design
<2>2. RVwpGut6WVd1P(x)
  BY <1>Dyz2lnBmL67xfy, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Sizes, Design, SMT, Location DEF NL, Active, RVwpGut6WVd1P, CqeHw, ExpPage, Gens, Held, InFl, InitPage, Inst, PhSet, Rq, vQ8m, Tag, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WlzeBdDZlPtLs.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE tMnUG'
<2> USE ONLY <1>WlzeBdDZlPtLs, Sizes, Location, Design
<2>1. tMnUG /\ UNCHANGED xst
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>OG6BaXg6W, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uqxY0XiuebwU7.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE Og_ZB'
<2> USE ONLY <1>uqxY0XiuebwU7, Sizes, Location, Design
<2>1. Og_ZB /\ UNCHANGED xlt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Vo9aCkTx7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tKizrFtOZkVH.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE NHqB'
<2> USE ONLY <1>tKizrFtOZkVH, Sizes, Location, Design
<2>1. NHqB /\ UNCHANGED nx
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>hgtESZog, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Np1pN2dEw2eXH.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE j95de'
<2> USE ONLY <1>Np1pN2dEw2eXH, Sizes, Location, Design
<2>1. j95de /\ UNCHANGED net
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>WjszWllEY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>REMqhDwtyg1a5q.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE jnT8ZH'
<2> USE ONLY <1>REMqhDwtyg1a5q, Sizes, Location, Design
<2>1. jnT8ZH /\ UNCHANGED drep
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>PqsERF6Gbr, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lNX3yxG7AkvXRl.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE fikvOb'
<2> USE ONLY <1>lNX3yxG7AkvXRl, Sizes, Location, Design
<2>1. fikvOb /\ UNCHANGED crep
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>uEqnZsrhy6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eESqKF2PxrhBtnb.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE wBRWE5u'
<2> USE ONLY <1>eESqKF2PxrhBtnb, Sizes, Location, Design
<2>1. wBRWE5u /\ UNCHANGED dsucc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>FY0ZxsA4n3A, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YsEAAKVkFkK6RG.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE Le6TxG'
<2> USE ONLY <1>YsEAAKVkFkK6RG, Sizes, Location, Design
<2>1. Le6TxG /\ UNCHANGED gbad
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>CikkJiRY9hxFA, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>t3VCppqYgZ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rdHbOsx3bv5QFa.        
  ASSUME NEW x \in Xids, PinInv, LibFailRet(x)
  PROVE CoreTypeOK'
  BY ONLY <1>rdHbOsx3bv5QFa, Sizes, Location, Design, <1>LKcJBIJVI4s5, <1>fqDojA3PDcUmIZD, <1>lNX3yxG7AkvXRl, <1>REMqhDwtyg1a5q, <1>eESqKF2PxrhBtnb, <1>YsEAAKVkFkK6RG, <1>hvdEwjGRZ3Uwj, <1>ENmxOeOK005e, <1>ZDBhZ0MDTNxst, <1>MzySRntmRcJ8, <1>m2aEJIgMxOEY, <1>cTwEW4rS0KIV, <1>gMFMxCcIj8TtZy, <1>JqXL7S2swIc855, <1>y6Wppv8XlKh8W, <1>akk6eZViWMs5y, <1>Np1pN2dEw2eXH, <1>qtx7PhZBfrrjbgJ, <1>tKizrFtOZkVH, <1>Rtz2dv6jEhx4s, <1>PypxvyiDmrEr, <1>aZZhZzozu5lZq, <1>mQNLd6tN2gPzx, <1>PZoI1YaGmIju, <1>AOTbGZL2hWb4uFE, <1>kEeNThMvgO0j6, <1>wejtbbU5ciVbi, <1>SEjNsLdbztSiPy, <1>Mo0Z5shX7gjo, <1>nvYSiEvS8HgK, <1>tzlVYiBZDFgEIM, <1>dVihfUKUbrow, <1>OEnJe4cMxiwIC, <1>Aa5hsTgaaSFDG, <1>PbXiJXAVAunQ, <1>VNOB0VYEIrF9, <1>Xj6fKWiIKixGoZ, <1>FsZhTjH4qJ5zSc, <1>Mo5sK5i4UeVEoH, <1>X4Ax24OnhiSD, <1>mQN8YJhjsdqqXc, <1>djyC2wiegpZW, <1>rWvxfcSJpZuu, <1>uqxY0XiuebwU7, <1>newAj13kUCqli, <1>S9SnpdVOzi7P, <1>BQZR766gze71, <1>yuRjyAjmRpfsxV, <1>WlzeBdDZlPtLs DEF soyHJ, Sizes, Location, Design
\* T2M-END R2M2715_PdROBase_PdBLibFailRetTypes


<1> QED BY <1>rdHbOsx3bv5QFa, Sizes, Location, Design DEF Sizes, Location, Design
====
