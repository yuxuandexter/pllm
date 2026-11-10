---- MODULE PdFinalAuxType_cfb21e925ad63826 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_cfb21e925ad63826 ==        
  ASSUME Sizes, Location, Design,
         NEW r \in Rq, PinInv, RRecvReply(r)
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

           BE_RRecvReply(r) ==
             rt[r] = "wait" /\ \E m \in net :
               /\ m.t = "reply" /\ m.r = r /\ m.g = gen[r]
               /\ rt' = [rt EXCEPT ![r] = IF m.ok THEN "ok" ELSE "err"]
               /\ crep' = [crep EXCEPT ![r][gen[r]] = IF crep[r][gen[r]] # "none" THEN "two" ELSE IF m.ok THEN "ok" ELSE "err"]
               /\ gbad' = (gbad \/ m.g # gen[r])


           BRReply(r) ==
             /\ rt[r] = "wait" /\ gen[r] \in Gens /\ crep[r][gen[r]] = "none"
             /\ \E ok \in BOOLEAN :
                  /\ (ok => dsucc[r][gen[r]])
                  /\ rt' = [rt EXCEPT ![r] = IF ok THEN "ok" ELSE "err"]
                  /\ crep' = [crep EXCEPT ![r][gen[r]] = IF ok THEN "ok" ELSE "err"]
             /\ gbad' = gbad


<1> HIDE DEF wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ, BE_RRecvReply, BRReply

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

<1>FY0ZxsA4n3A.        
  wBRWE5u /\ UNCHANGED dsucc => wBRWE5u'
  BY SMT, Sizes, Location, Design DEF wBRWE5u, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PTkWKoljFHDOj.        
  ASSUME NEW r \in Rq, RRecvReply(r)
  PROVE UNCHANGED <<alive, drep, dsucc, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>PTkWKoljFHDOj, Sizes, Location, Design, Zenon DEF RRecvReply, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eT8jk3Vjx83wCM.        
  ASSUME NEW r \in Rq, RRecvReply(r)
  PROVE BE_RRecvReply(r)
  BY ONLY <1>eT8jk3Vjx83wCM, Sizes, Location, Design, Design, Zenon DEF RRecvReply, BE_RRecvReply, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>B39slHc9nI0.        
  ASSUME K12, NEW m \in net, m.t = "reply"
  PROVE m.r \in Rq /\ m.g \in Gens /\ (m.ok => dsucc[m.r][m.g])
  BY ONLY <1>B39slHc9nI0, Sizes, Location, Design, Zenon DEF K12, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gALG.        
  ASSUME j95de, NEW m \in net
  PROVE m.ok \in BOOLEAN
  BY ONLY <1>gALG, Sizes, Location, Design, SMT DEF j95de, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GT7m4Cdp.        
  ASSUME K1, NEW r \in Rq, rt[r] = "wait"
  PROVE crep[r][gen[r]] = "none"
  BY ONLY <1>GT7m4Cdp, Sizes, Location, Design, Zenon DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zSIbrgkA2Iaf2.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE BRReply(r)
<2> USE ONLY <1>zSIbrgkA2Iaf2, Sizes, Location, Design
<2>1. K1 /\ K12 /\ j95de /\ Le6TxG /\ BE_RRecvReply(r)
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>eT8jk3Vjx83wCM, V21_Inv_K1, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. PICK m \in net :
        /\ m.t = "reply" /\ m.r = r /\ m.g = gen[r]
        /\ rt' = [rt EXCEPT ![r] = IF m.ok THEN "ok" ELSE "err"]
        /\ crep' = [crep EXCEPT ![r][gen[r]] = IF crep[r][gen[r]] # "none" THEN "two" ELSE IF m.ok THEN "ok" ELSE "err"]
        /\ gbad' = (gbad \/ m.g # gen[r])
  BY <2>1, Sizes, Location, Design DEF BE_RRecvReply, Sizes, Location, Design
<2>3. rt[r] = "wait"
  BY <2>1, Sizes, Location, Design DEF BE_RRecvReply, Sizes, Location, Design
<2>4. gen[r] \in Gens /\ crep[r][gen[r]] = "none" /\ m.ok \in BOOLEAN /\ (m.ok => dsucc[r][gen[r]])
  BY <2>1, <2>2, <2>3, <1>B39slHc9nI0, <1>gALG, <1>GT7m4Cdp, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>3, <2>4, SMT, Sizes, Location, Design DEF BRReply, Le6TxG, Sizes, Location, Design
\* T2M-END R2M2261_PdROBase_PdBRRecvReplyControl


<1>w7liVBVeLCmJV.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE wOTr_'
<2> USE ONLY <1>w7liVBVeLCmJV, Sizes, Location, Design
<2>1. wOTr_ /\ UNCHANGED gen
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Bhx03WnOR, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rSsPBd5qrSjr.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE Qjrp'
<2> USE ONLY <1>rSsPBd5qrSjr, Sizes, Location, Design
<2>1. Qjrp /\ BRReply(r)
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>zSIbrgkA2Iaf2, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF Qjrp, BRReply, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TKBSKA4ZxUv5.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE vdfp'
<2> USE ONLY <1>TKBSKA4ZxUv5, Sizes, Location, Design
<2>1. vdfp /\ UNCHANGED rp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>kw4jQB4N, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AvO6tUTQEwRo.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE Gi91'
<2> USE ONLY <1>AvO6tUTQEwRo, Sizes, Location, Design
<2>1. Gi91 /\ UNCHANGED rd
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>XYHegQw4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>B7J9dxBrwcdY.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE f9Jo'
<2> USE ONLY <1>B7J9dxBrwcdY, Sizes, Location, Design
<2>1. f9Jo /\ UNCHANGED hp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>KdTVsDuK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aYx8Z9SnHYSg.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE qC4t'
<2> USE ONLY <1>aYx8Z9SnHYSg, Sizes, Location, Design
<2>1. qC4t /\ UNCHANGED hd
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>dJNCBm1b, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tGFzH5T3PLBQYs6.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE dfknOma'
<2> USE ONLY <1>tGFzH5T3PLBQYs6, Sizes, Location, Design
<2>1. dfknOma /\ UNCHANGED alive
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ybNDu613eAs, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>W7p4PDjaYdauU5a.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE TiBl9dL'
<2> USE ONLY <1>W7p4PDjaYdauU5a, Sizes, Location, Design
<2>1. TiBl9dL /\ UNCHANGED nfail
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>XdiVkyyvMpb, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HAz1pLgJi3ojzQ.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE nvVdwJ'
<2> USE ONLY <1>HAz1pLgJi3ojzQ, Sizes, Location, Design
<2>1. nvVdwJ /\ UNCHANGED torn
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>r7E4f80cl1, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yiFrAukluD5nnp.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE kyOog2'
<2> USE ONLY <1>yiFrAukluD5nnp, Sizes, Location, Design
<2>1. kyOog2 /\ UNCHANGED kpin
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>REGdo9n2Yx, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eb8IJzjFai7XfA.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE UUdTOK'
<2> USE ONLY <1>eb8IJzjFai7XfA, Sizes, Location, Design
<2>1. UUdTOK /\ UNCHANGED kfly
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>IJYdQTdZJP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m4ZdiY5AbMkzc.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE dMRAk'
<2> USE ONLY <1>m4ZdiY5AbMkzc, Sizes, Location, Design
<2>1. dMRAk /\ UNCHANGED krs
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>kRHsSWPEr, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HIvKvnBVHvXf.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE lwx7'
<2> USE ONLY <1>HIvKvnBVHvXf, Sizes, Location, Design
<2>1. lwx7 /\ UNCHANGED ph
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>LnpSgDJL, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PyeezaIvLhr5.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE azLu'
<2> USE ONLY <1>PyeezaIvLhr5, Sizes, Location, Design
<2>1. azLu /\ UNCHANGED rg
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>MnaluSJc, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sUfYAi8D1pusY.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE T2_wJ'
<2> USE ONLY <1>sUfYAi8D1pusY, Sizes, Location, Design
<2>1. T2_wJ /\ UNCHANGED rpg
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>hD9vGdVka, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nurW3DF4wPjIL.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE DRkCp'
<2> USE ONLY <1>nurW3DF4wPjIL, Sizes, Location, Design
<2>1. DRkCp /\ UNCHANGED rpe
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>MBHJWRO3n, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kWOwAWuxUdQO.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE u6eb'
<2> USE ONLY <1>kWOwAWuxUdQO, Sizes, Location, Design
<2>1. u6eb /\ UNCHANGED rx
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>XMxwxbvo, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JebcE5u7kbajhu.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE WFFocH'
<2> USE ONLY <1>JebcE5u7kbajhu, Sizes, Location, Design
<2>1. WFFocH /\ UNCHANGED rhit
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>qU6W3UivmX, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>i3gYeMgpLH6ik.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE mWgRR'
<2> USE ONLY <1>i3gYeMgpLH6ik, Sizes, Location, Design
<2>1. mWgRR /\ UNCHANGED pst
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>IqC1LFgEj, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tjCtTcYDXXAy.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE voSc'
<2> USE ONLY <1>tjCtTcYDXXAy, Sizes, Location, Design
<2>1. voSc /\ UNCHANGED pr
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>JG8RKj1K, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DdnwdfURxbANN.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE ejARA'
<2> USE ONLY <1>DdnwdfURxbANN, Sizes, Location, Design
<2>1. ejARA /\ UNCHANGED pgn
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>JGoie9cAR, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Pas893b517LDC.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE nhDFh'
<2> USE ONLY <1>Pas893b517LDC, Sizes, Location, Design
<2>1. nhDFh /\ UNCHANGED plt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>dznlczdV0, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uGx5nn8RZZPdF.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE Oet5P'
<2> USE ONLY <1>uGx5nn8RZZPdF, Sizes, Location, Design
<2>1. Oet5P /\ UNCHANGED ptl
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>a5adykzx1, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LcncTa2FH69N5n.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE toA96a'
<2> USE ONLY <1>LcncTa2FH69N5n, Sizes, Location, Design
<2>1. toA96a /\ UNCHANGED pvis
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ODzOj7OF5G, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RWqKHrKjhEgzh.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE CQcwS'
<2> USE ONLY <1>RWqKHrKjhEgzh, Sizes, Location, Design
<2>1. CQcwS /\ UNCHANGED led
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>n99ZzQEeO, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sG224Ay10PcsJa.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE pgoLyw'
<2> USE ONLY <1>sG224Ay10PcsJa, Sizes, Location, Design
<2>1. pgoLyw /\ UNCHANGED sfly
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>RYFggVMOUb, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fY9wVLvGNsLZuc.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE gwX1nH'
<2> USE ONLY <1>fY9wVLvGNsLZuc, Sizes, Location, Design
<2>1. gwX1nH /\ UNCHANGED sled
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>JQwbMQnQtE, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HvT952xTrkzFJml.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE uhaZUCa'
<2> USE ONLY <1>HvT952xTrkzFJml, Sizes, Location, Design
<2>1. uhaZUCa /\ UNCHANGED prefc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>iZKDPpjzcRe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AVaOlQJPogVdw.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE j9ZB2'
<2> USE ONLY <1>AVaOlQJPogVdw, Sizes, Location, Design
<2>1. j9ZB2 /\ UNCHANGED pqp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>tDH6Dz5Bl, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lX6f5unANGUT.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE tOrh'
<2> USE ONLY <1>lX6f5unANGUT, Sizes, Location, Design
<2>1. tOrh /\ UNCHANGED xr
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>NvuQjA2B, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WVsaZAEVQW90.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE oZ1G'
<2> USE ONLY <1>WVsaZAEVQW90, Sizes, Location, Design
<2>1. oZ1G /\ UNCHANGED xg
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>RD9Q7CJK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uy2FXXEHR9Am.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE TMQx'
<2> USE ONLY <1>uy2FXXEHR9Am, Sizes, Location, Design
<2>1. TMQx /\ UNCHANGED xk
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>sH1Q96QM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kJanvViOsMGo.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE vvyr'
<2> USE ONLY <1>kJanvViOsMGo, Sizes, Location, Design
<2>1. vvyr /\ UNCHANGED xp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Yc0eXbL9, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>egTCYm6MR9Je.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE FBnj'
<2> USE ONLY <1>egTCYm6MR9Je, Sizes, Location, Design
<2>1. FBnj /\ UNCHANGED xd
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>oHjgydo5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>o9itpxWowPoPNy.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE Sbgpxn'
<2> USE ONLY <1>o9itpxWowPoPNy, Sizes, Location, Design
<2>1. Sbgpxn /\ UNCHANGED xsrc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>jyzFwH33xk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OyuTAE9jP2P9fe.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE tP64Zt'
<2> USE ONLY <1>OyuTAE9jP2P9fe, Sizes, Location, Design
<2>1. tP64Zt /\ UNCHANGED xdst
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>LUNproxt6M, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gvLt6TCUzOaNA.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE Rl_wH'
<2> USE ONLY <1>gvLt6TCUzOaNA, Sizes, Location, Design
<2>1. Rl_wH /\ UNCHANGED xnt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>eG0tfbZbK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UMiqnwpClFst.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE JojO'
<2> USE ONLY <1>UMiqnwpClFst, Sizes, Location, Design
<2>1. JojO /\ UNCHANGED hw
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>sK7o4ORt, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uPVsiROgyGGzg.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE NFMkE'
<2> USE ONLY <1>uPVsiROgyGGzg, Sizes, Location, Design
<2>1. NFMkE /\ UNCHANGED hok
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>j5qfHiLkn, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ptah9XjhEU4H.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE vQ8m'
<2> USE ONLY <1>ptah9XjhEU4H, Sizes, Location, Design
<2>1. vQ8m /\ UNCHANGED iv
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>tPtUyRbA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iMMQfHCKJVFaV.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE tMnUG'
<2> USE ONLY <1>iMMQfHCKJVFaV, Sizes, Location, Design
<2>1. tMnUG /\ UNCHANGED xst
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>OG6BaXg6W, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aKGzUt1ctUvIa.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE Og_ZB'
<2> USE ONLY <1>aKGzUt1ctUvIa, Sizes, Location, Design
<2>1. Og_ZB /\ UNCHANGED xlt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Vo9aCkTx7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SRKcXwTwrPZ4.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE NHqB'
<2> USE ONLY <1>SRKcXwTwrPZ4, Sizes, Location, Design
<2>1. NHqB /\ UNCHANGED nx
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>hgtESZog, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JSpa59XsT6y08.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE j95de'
<2> USE ONLY <1>JSpa59XsT6y08, Sizes, Location, Design
<2>1. j95de /\ UNCHANGED net
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>WjszWllEY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cvfkROdfAjPPnS.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE jnT8ZH'
<2> USE ONLY <1>cvfkROdfAjPPnS, Sizes, Location, Design
<2>1. jnT8ZH /\ UNCHANGED drep
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>PqsERF6Gbr, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KX4ke7TF2dUFz6.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE fikvOb'
<2> USE ONLY <1>KX4ke7TF2dUFz6, Sizes, Location, Design
<2>1. fikvOb /\ BRReply(r)
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>zSIbrgkA2Iaf2, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF fikvOb, BRReply, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DroADhGEwLkGkg0.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE wBRWE5u'
<2> USE ONLY <1>DroADhGEwLkGkg0, Sizes, Location, Design
<2>1. wBRWE5u /\ UNCHANGED dsucc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>PTkWKoljFHDOj, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>FY0ZxsA4n3A, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OJvaJ7HCjgDZ6s.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE Le6TxG'
<2> USE ONLY <1>OJvaJ7HCjgDZ6s, Sizes, Location, Design
<2>1. Le6TxG /\ BRReply(r)
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>zSIbrgkA2Iaf2, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF Le6TxG, BRReply, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SR3PqJf4BvpYBN.        
  ASSUME NEW r \in Rq, PinInv, RRecvReply(r)
  PROVE CoreTypeOK'
  BY ONLY <1>SR3PqJf4BvpYBN, Sizes, Location, Design, <1>LKcJBIJVI4s5, <1>tGFzH5T3PLBQYs6, <1>KX4ke7TF2dUFz6, <1>cvfkROdfAjPPnS, <1>DroADhGEwLkGkg0, <1>OJvaJ7HCjgDZ6s, <1>w7liVBVeLCmJV, <1>aYx8Z9SnHYSg, <1>uPVsiROgyGGzg, <1>B7J9dxBrwcdY, <1>UMiqnwpClFst, <1>ptah9XjhEU4H, <1>eb8IJzjFai7XfA, <1>yiFrAukluD5nnp, <1>m4ZdiY5AbMkzc, <1>RWqKHrKjhEgzh, <1>JSpa59XsT6y08, <1>W7p4PDjaYdauU5a, <1>SRKcXwTwrPZ4, <1>DdnwdfURxbANN, <1>HIvKvnBVHvXf, <1>Pas893b517LDC, <1>AVaOlQJPogVdw, <1>tjCtTcYDXXAy, <1>HvT952xTrkzFJml, <1>i3gYeMgpLH6ik, <1>uGx5nn8RZZPdF, <1>LcncTa2FH69N5n, <1>AvO6tUTQEwRo, <1>PyeezaIvLhr5, <1>JebcE5u7kbajhu, <1>TKBSKA4ZxUv5, <1>nurW3DF4wPjIL, <1>sUfYAi8D1pusY, <1>rSsPBd5qrSjr, <1>kWOwAWuxUdQO, <1>sG224Ay10PcsJa, <1>fY9wVLvGNsLZuc, <1>HAz1pLgJi3ojzQ, <1>egTCYm6MR9Je, <1>OyuTAE9jP2P9fe, <1>WVsaZAEVQW90, <1>uy2FXXEHR9Am, <1>aKGzUt1ctUvIa, <1>gvLt6TCUzOaNA, <1>kJanvViOsMGo, <1>lX6f5unANGUT, <1>o9itpxWowPoPNy, <1>iMMQfHCKJVFaV DEF soyHJ, Sizes, Location, Design
\* T2M-END R2M2718_PdROBase_PdBRRecvReplyTypes


<1> QED BY <1>SR3PqJf4BvpYBN, Sizes, Location, Design DEF Sizes, Location, Design
====
