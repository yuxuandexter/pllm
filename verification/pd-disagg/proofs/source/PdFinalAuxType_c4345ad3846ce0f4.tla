---- MODULE PdFinalAuxType_c4345ad3846ce0f4 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_c4345ad3846ce0f4 ==          
  ASSUME Sizes, Location, Design,
         NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
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

<1>ZFJpLve3.        
  ASSUME NEW I, NEW S, NEW B, NEW f \in [I -> [S -> B]],
         NEW i \in I, NEW s \in S, NEW v \in B
  PROVE [f EXCEPT ![i][s] = v] \in [I -> [S -> B]]
  BY ONLY <1>ZFJpLve3, Sizes, Location, Design, SMTT(5) DEF Sizes, Location, Design

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

<1>xlEjS107o.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, Arrive(r,i,j)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, hok, hw, iv, kfly, kpin, krs, led, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rg, rhit, rpe, rpg, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>xlEjS107o, Sizes, Location, Design, ZenonT(5) DEF Arrive, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hl6AG6QQSoNVe.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, Arrive(r,i,j)
  PROVE gen[r] < MG /\ net' = net \cup {Msg("req",0,i,r,gen[r]+1,0,0,j,FALSE), Msg("req",0,j,r,gen[r]+1,0,0,i,FALSE)}
  BY ONLY <1>hl6AG6QQSoNVe, Sizes, Location, Design, Design, SMTT(10) DEF Arrive, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TK3eMwsOKG4.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE j95de'
<2> USE ONLY <1>TK3eMwsOKG4, Sizes, Location, Design
<2> DEFINE NetT == [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                   r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                   pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]
<2>type. j95de /\ wOTr_
 <3>project. CoreTypeOK => j95de /\ wOTr_
  BY ONLY ZenonT(5) DEF CoreTypeOK, j95de, wOTr_
 <3>core. CoreTypeOK
  BY ONLY <1>TK3eMwsOKG4, V21_Inv_BaseTypeOK, Sizes, Location, Design, SMTT(5)
 <3>qed. QED BY ONLY <3>project, <3>core, SMTT(5)
<2>effect. gen[r]<MG /\ net'=net \cup {Msg("req",0,i,r,gen[r]+1,0,0,j,FALSE), Msg("req",0,j,r,gen[r]+1,0,0,i,FALSE)}
 BY ONLY <1>TK3eMwsOKG4, ZenonT(5) DEF Arrive
<2>generation. gen[r]+1 \in Gens
 <3>value. gen[r] \in 0..MG
  BY ONLY <2>type, SMTT(5) DEF wOTr_
 <3>bound. gen[r]<MG BY ONLY <2>effect, SMTT(5)
 <3>integer. MG \in Nat BY ONLY Sizes, SMTT(5) DEF Sizes
 <3>qed. QED BY ONLY <3>value, <3>bound, <3>integer, SMTT(5) DEF Gens
<2>subsets. PInst \subseteq Inst /\ DInst \subseteq Inst
 BY ONLY <1>FeJ2oW, SMTT(5)
<2>locations. i \in Inst /\ j \in Inst
 BY ONLY <2>subsets, SMTT(5)
<2>request. ASSUME NEW a \in Inst, NEW b \in Inst
 PROVE Msg("req",0,a,r,gen[r]+1,0,0,b,FALSE) \in NetT
 <3>tag. "req" \in MsgT
  BY ONLY SMTT(5) DEF MsgT
 <3>qed. QED BY ONLY <1>TK3eMwsOKG4, <2>request, <2>generation, <3>tag, SMTT(5) DEF Msg, NetT
<2>new. {Msg("req",0,i,r,gen[r]+1,0,0,j,FALSE), Msg("req",0,j,r,gen[r]+1,0,0,i,FALSE)} \subseteq NetT
 BY ONLY <2>request, <2>locations, SMTT(5)
<2>old. net \subseteq NetT
 BY ONLY <2>type, SMTT(5) DEF j95de, NetT
<2>qed. QED BY ONLY <2>effect, <2>new, <2>old, SMTT(5) DEF j95de, NetT

\* T2M-END R2M2698_PdROBase_PdArriveNet

\* T2M-SCOPE R2M2699_PdROBase_PdArriveHistory

<1>ycawtQMo3D.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE wOTr_'
<2> USE ONLY <1>ycawtQMo3D, Sizes, Location, Design
<2>1. wOTr_
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. gen[r] < MG /\ gen' = [gen EXCEPT ![r] = gen[r]+1]
  BY SMTT(10), Sizes, Location, Design DEF Arrive, Sizes, Location, Design
<2>3. gen[r]+1 \in 0..MG
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF wOTr_, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF wOTr_, Sizes, Location, Design
\* T2M-END R2M2700_PdROBase_PdArriveGen

\* T2M-SCOPE R2M2701_PdROBase_PdArriveTypes

<1>xYgiYBkUXTQZi4.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE dfknOma' /\ fikvOb' /\ jnT8ZH' /\ wBRWE5u' /\ Le6TxG' /\ NFMkE' /\ JojO' /\ vQ8m' /\ UUdTOK' /\ kyOog2' /\ dMRAk' /\ CQcwS' /\ TiBl9dL' /\ NHqB' /\ ejARA' /\ lwx7' /\ nhDFh' /\ j9ZB2' /\ voSc' /\ uhaZUCa' /\ mWgRR' /\ Oet5P' /\ toA96a' /\ azLu' /\ WFFocH' /\ DRkCp' /\ T2_wJ' /\ u6eb' /\ pgoLyw' /\ gwX1nH' /\ nvVdwJ' /\ FBnj' /\ tP64Zt' /\ oZ1G' /\ TMQx' /\ Og_ZB' /\ Rl_wH' /\ vvyr' /\ tOrh' /\ Sbgpxn' /\ tMnUG'
<2> USE ONLY <1>xYgiYBkUXTQZi4, Sizes, Location, Design
<2>1. soyHJ
  BY <1>d9xjhNZcw, SMTT(10), <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, hok, hw, iv, kfly, kpin, krs, led, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rg, rhit, rpe, rpg, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY SMTT(10), <1>xlEjS107o, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, ZenonT(10), Sizes, Location, Design DEF soyHJ, dfknOma, fikvOb, jnT8ZH, wBRWE5u, Le6TxG, NFMkE, JojO, vQ8m, UUdTOK, kyOog2, dMRAk, CQcwS, TiBl9dL, NHqB, ejARA, lwx7, nhDFh, j9ZB2, voSc, uhaZUCa, mWgRR, Oet5P, toA96a, azLu, WFFocH, DRkCp, T2_wJ, u6eb, pgoLyw, gwX1nH, nvVdwJ, FBnj, tP64Zt, oZ1G, TMQx, Og_ZB, Rl_wH, vvyr, tOrh, Sbgpxn, tMnUG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QgPmjTc9dCyb.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE wOTr_'
  BY ONLY <1>QgPmjTc9dCyb, Sizes, Location, Design, <1>ycawtQMo3D, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZEKzCqoKldm.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE qC4t'
<2> USE ONLY <1>ZEKzCqoKldm, Sizes, Location, Design
<2>1. wOTr_ /\ qC4t
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. gen[r] < MG /\ hd' = [hd EXCEPT ![r][gen[r]+1] = j]
  BY SMTT(10), Sizes, Location, Design DEF Arrive, Sizes, Location, Design
<2>3. gen[r]+1 \in Gens /\ j \in {0} \cup Inst
  BY <2>1, <2>2, Sizes, <1>FeJ2oW, SMTT(10), Location, Design DEF wOTr_, Gens, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, <1>ZFJpLve3, SMTT(10), Sizes, Location, Design DEF qC4t, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ULM1Qb9YMUZ.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE f9Jo'
<2> USE ONLY <1>ULM1Qb9YMUZ, Sizes, Location, Design
<2>1. wOTr_ /\ f9Jo
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. gen[r] < MG /\ hp' = [hp EXCEPT ![r][gen[r]+1] = i]
  BY SMTT(10), Sizes, Location, Design DEF Arrive, Sizes, Location, Design
<2>3. gen[r]+1 \in Gens /\ i \in {0} \cup Inst
  BY <2>1, <2>2, Sizes, <1>FeJ2oW, SMTT(10), Location, Design DEF wOTr_, Gens, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, <1>ZFJpLve3, SMTT(10), Sizes, Location, Design DEF f9Jo, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k6kW8JysIlN.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE Gi91'
<2> USE ONLY <1>k6kW8JysIlN, Sizes, Location, Design
<2>1. Gi91
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. rd' = [rd EXCEPT ![r] = j]
  BY SMTT(10), Sizes, Location, Design DEF Arrive, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>FeJ2oW, SMTT(10), Sizes, Location, Design DEF Gi91, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JG7Vwchon5o.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE vdfp'
<2> USE ONLY <1>JG7Vwchon5o, Sizes, Location, Design
<2>1. vdfp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. rp' = [rp EXCEPT ![r] = i]
  BY SMTT(10), Sizes, Location, Design DEF Arrive, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>FeJ2oW, SMTT(10), Sizes, Location, Design DEF vdfp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KaagPCcHRNu.        
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE Qjrp'
<2> USE ONLY <1>KaagPCcHRNu, Sizes, Location, Design
<2>1. Qjrp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. rt' = [rt EXCEPT ![r] = "wait"]
  BY SMTT(10), Sizes, Location, Design DEF Arrive, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>FeJ2oW, SMTT(10), Sizes, Location, Design DEF Qjrp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Q7N5983I5V.          
  ASSUME NEW r \in Rq, NEW i \in PInst, NEW j \in DInst, PinInv, Arrive(r,i,j)
  PROVE CoreTypeOK'
<2> USE ONLY <1>Q7N5983I5V, Sizes, Location, Design
<2>1. soyHJ'
  BY SMTT(10), <1>xYgiYBkUXTQZi4, <1>TK3eMwsOKG4, <1>QgPmjTc9dCyb, <1>ZEKzCqoKldm, <1>ULM1Qb9YMUZ, <1>k6kW8JysIlN, <1>JG7Vwchon5o, <1>KaagPCcHRNu, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY SMTT(10), <2>1, <1>LKcJBIJVI4s5, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2701_PdROBase_PdArriveTypes


<1> QED BY <1>Q7N5983I5V, Sizes, Location, Design DEF Sizes, Location, Design
====
