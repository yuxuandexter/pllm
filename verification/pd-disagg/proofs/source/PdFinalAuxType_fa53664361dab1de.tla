---- MODULE PdFinalAuxType_fa53664361dab1de ----
EXTENDS PdPBase, FiniteSetTheorems

THEOREM AuxType_fa53664361dab1de ==        
  ASSUME Sizes, Location, Design,
         NEW i \in Inst, NEW s \in KSlots, TypInv, K14, KLand(i,s)
  PROVE CoreTypeOK'
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

<1>IQO9tLE.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, K14, KLand(i,s)
  PROVE /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, krs, recV, pgV, xV, net, ghV>>
        /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  BY ONLY <1>IQO9tLE, Sizes, Location, Design, Design DEF K14, KLand, pgV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>D3tafyok3.        
  ASSUME NEW i \in Inst, NEW s \in KSlots, TypInv, K14, KLand(i,s)
  PROVE CoreTypeOK'
<2> USE ONLY <1>D3tafyok3, Sizes, Location, Design
<2>1. /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, krs, recV, pgV, xV, net, ghV>>
       /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  BY <1>IQO9tLE, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. soyHJ
  BY <1>OJpowx54MQ, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UUdTOK'
  BY <2>1, <2>2, <1>ZFJpLve3, Sizes, Location, Design DEF soyHJ, UUdTOK, Sizes, Location, Design

<2>4. wOTr_'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, wOTr_, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>5. Qjrp'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, Qjrp, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>6. vdfp'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, vdfp, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>7. Gi91'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, Gi91, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>8. f9Jo'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, f9Jo, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>9. qC4t'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, qC4t, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>10. dfknOma'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, dfknOma, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>11. TiBl9dL'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, TiBl9dL, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>12. nvVdwJ'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, nvVdwJ, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>13. kyOog2'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, kyOog2, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>15. dMRAk'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, dMRAk, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>16. lwx7'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, lwx7, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>17. azLu'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, azLu, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>18. T2_wJ'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, T2_wJ, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>19. DRkCp'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, DRkCp, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>20. u6eb'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, u6eb, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>21. WFFocH'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, WFFocH, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>22. mWgRR'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, mWgRR, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>23. voSc'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, voSc, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>24. ejARA'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, ejARA, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>25. nhDFh'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, nhDFh, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>26. Oet5P'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, Oet5P, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>27. toA96a'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, toA96a, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>28. CQcwS'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, CQcwS, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>29. pgoLyw'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, pgoLyw, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>30. gwX1nH'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, gwX1nH, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>31. uhaZUCa'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, uhaZUCa, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>32. j9ZB2'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, j9ZB2, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>33. tOrh'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, tOrh, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>34. oZ1G'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, oZ1G, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>35. TMQx'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, TMQx, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>36. vvyr'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, vvyr, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>37. FBnj'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, FBnj, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>38. Sbgpxn'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, Sbgpxn, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>39. tP64Zt'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, tP64Zt, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>40. Rl_wH'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, Rl_wH, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>41. JojO'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, JojO, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>42. NFMkE'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, NFMkE, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>43. vQ8m'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, vQ8m, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>44. tMnUG'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, tMnUG, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>45. Og_ZB'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, Og_ZB, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>46. NHqB'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, NHqB, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>47. j95de'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, j95de, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>48. jnT8ZH'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, jnT8ZH, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>49. fikvOb'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, fikvOb, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>50. wBRWE5u'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, wBRWE5u, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>51. Le6TxG'
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF soyHJ, Le6TxG, rtV, recV, pgV, xV, ghV, Sizes, Location, Design

<2>99. QED
  BY <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, <2>12, <2>13, <2>15, <2>16, <2>17, <2>18, <2>19, <2>20, <2>21, <2>22, <2>23, <2>24, <2>25, <2>26, <2>27, <2>28, <2>29, <2>30, <2>31, <2>32, <2>33, <2>34, <2>35, <2>36, <2>37, <2>38, <2>39, <2>40, <2>41, <2>42, <2>43, <2>44, <2>45, <2>46, <2>47, <2>48, <2>49, <2>50, <2>51, <1>LKcJBIJVI4s5, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
\* T2M-END R2M2249_PdROBase_PdLandProofs


<1> QED BY <1>D3tafyok3, Sizes, Location, Design DEF Sizes, Location, Design
====
