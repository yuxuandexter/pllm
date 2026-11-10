---- MODULE PdFinalAuxType_9858bc13478432c3 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_9858bc13478432c3 ==          
  ASSUME Sizes, Location, Design,
         NEW i \in Inst, PinInv, Resume(i)
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

           RGV7A2 == [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                      r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                      pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ, RGV7A2

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


<1>FeJ2oW.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tlQAmwzk0.        
  ASSUME NEW i \in Inst, Resume(i)
  PROVE UNCHANGED <<crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>tlQAmwzk0, Sizes, Location, Design, ZenonT(5) DEF Resume, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>og7w0PtNYT5u.        
  ASSUME NEW t \in MsgT, NEW fr \in {0} \cup Inst, NEW to \in {0} \cup Inst,
         NEW r \in {0} \cup Rq, NEW g \in {0} \cup Gens, NEW x \in {0} \cup Xids,
         NEW pg \in {0} \cup Pages \cup (0..PS), NEW pe \in {0} \cup Inst \cup (0..PS),
         NEW ok \in BOOLEAN
  PROVE Msg(t,fr,to,r,g,x,pg,pe,ok) \in RGV7A2
  BY ONLY <1>og7w0PtNYT5u, Sizes, Location, Design, SMTT(5) DEF Msg, RGV7A2, Sizes, Location, Design
\* T2M-END R2M2720_PdROBase_PdMsgExtra


<1>o6SlcYrErISiv.         j95de => net \subseteq RGV7A2
  BY SMTT(5), Sizes, Location, Design DEF j95de, RGV7A2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XNlzWX5vgze.         net' \subseteq RGV7A2 => j95de'
  BY SMTT(5), Sizes, Location, Design DEF j95de, RGV7A2, Sizes, Location, Design
\* T2M-END R2M2721_PdROBase_PdNetTyping

\* T2M-SCOPE R2M2722_PdROBase_PdMessageRecords
\* T2M-BODY R2M2722_PdROBase_PdMessageRecords
\* T2M-LOCAL-VISIBILITY

<1>HXh9q6IFxh7D.        
  ASSUME NEW i \in Inst
  PROVE Msg("hello",i,0,0,0,0,0,0,FALSE) \in RGV7A2
<2> USE ONLY <1>HXh9q6IFxh7D, Sizes, Location, Design
<2>1. "hello" \in MsgT /\ i \in {0} \cup Inst /\ 0 \in {0} \cup Inst
       /\ 0 \in {0} \cup Rq /\ 0 \in {0} \cup Gens /\ 0 \in {0} \cup Xids
       /\ 0 \in {0} \cup Pages \cup (0..PS) /\ 0 \in {0} \cup Inst \cup (0..PS) /\ FALSE \in BOOLEAN
  BY SMTT(5), Sizes, Location, Design DEF MsgT, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>og7w0PtNYT5u, ZenonT(5), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2722_PdROBase_PdMessageRecords


<1>ucNgv7QPFVrQp.        
  ASSUME NEW i \in Inst, Resume(i)
  PROVE net' = net \cup {Msg("hello",i,0,0,0,0,0,0,FALSE)}
  BY ONLY <1>ucNgv7QPFVrQp, Sizes, Location, Design, Design, ZenonT(5) DEF Resume, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>W2AoKhNl1Sp.        
  ASSUME NEW i \in Inst, PinInv, Resume(i)
  PROVE j95de'
<2> USE ONLY <1>W2AoKhNl1Sp, Sizes, Location, Design
<2>1. j95de
  BY <1>d9xjhNZcw, SMTT(5), <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. net \subseteq RGV7A2 /\ net' = net \cup {Msg("hello",i,0,0,0,0,0,0,FALSE)}
  BY SMTT(5), <2>1, <1>o6SlcYrErISiv, <1>ucNgv7QPFVrQp, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. Msg("hello",i,0,0,0,0,0,0,FALSE) \in RGV7A2
  BY SMTT(5), <1>HXh9q6IFxh7D, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. net' \subseteq RGV7A2
  BY SMTT(5), <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY SMTT(5), <2>4, <1>XNlzWX5vgze, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2728_PdROBase_PdResumeNet

\* T2M-SCOPE R2M2729_PdROBase_PdResumeTypes

<1>rDfoDyyQO0U5td.        
  ASSUME NEW i \in Inst, PinInv, Resume(i)
  PROVE fikvOb' /\ jnT8ZH' /\ wBRWE5u' /\ Le6TxG' /\ wOTr_' /\ qC4t' /\ NFMkE' /\ f9Jo' /\ JojO' /\ vQ8m' /\ UUdTOK' /\ kyOog2' /\ dMRAk' /\ CQcwS' /\ TiBl9dL' /\ NHqB' /\ ejARA' /\ lwx7' /\ nhDFh' /\ j9ZB2' /\ voSc' /\ uhaZUCa' /\ mWgRR' /\ Oet5P' /\ toA96a' /\ Gi91' /\ azLu' /\ WFFocH' /\ vdfp' /\ DRkCp' /\ T2_wJ' /\ Qjrp' /\ u6eb' /\ pgoLyw' /\ gwX1nH' /\ nvVdwJ' /\ FBnj' /\ tP64Zt' /\ oZ1G' /\ TMQx' /\ Og_ZB' /\ Rl_wH' /\ vvyr' /\ tOrh' /\ Sbgpxn' /\ tMnUG'
<2> USE ONLY <1>rDfoDyyQO0U5td, Sizes, Location, Design
<2>1. soyHJ
  BY <1>d9xjhNZcw, SMTT(5), <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY SMTT(5), <1>tlQAmwzk0, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, ZenonT(5), Sizes, Location, Design DEF soyHJ, fikvOb, jnT8ZH, wBRWE5u, Le6TxG, wOTr_, qC4t, NFMkE, f9Jo, JojO, vQ8m, UUdTOK, kyOog2, dMRAk, CQcwS, TiBl9dL, NHqB, ejARA, lwx7, nhDFh, j9ZB2, voSc, uhaZUCa, mWgRR, Oet5P, toA96a, Gi91, azLu, WFFocH, vdfp, DRkCp, T2_wJ, Qjrp, u6eb, pgoLyw, gwX1nH, nvVdwJ, FBnj, tP64Zt, oZ1G, TMQx, Og_ZB, Rl_wH, vvyr, tOrh, Sbgpxn, tMnUG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>O79rmGmo8UREwi.        
  ASSUME NEW i \in Inst, PinInv, Resume(i)
  PROVE dfknOma'
<2> USE ONLY <1>O79rmGmo8UREwi, Sizes, Location, Design
<2>1. dfknOma
  BY <1>d9xjhNZcw, SMTT(5), <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>FeJ2oW, Design, Sizes, SMTT(5), Location DEF AfterEv, Bump, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PhSet, Resume, dfknOma, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>N7zcukWe04.          
  ASSUME NEW i \in Inst, PinInv, Resume(i)
  PROVE CoreTypeOK'
<2> USE ONLY <1>N7zcukWe04, Sizes, Location, Design
<2>1. soyHJ'
  BY SMTT(5), <1>rDfoDyyQO0U5td, <1>W2AoKhNl1Sp, <1>O79rmGmo8UREwi, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>LKcJBIJVI4s5, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2729_PdROBase_PdResumeTypes


<1> QED BY <1>N7zcukWe04, Sizes, Location, Design DEF Sizes, Location, Design
====
