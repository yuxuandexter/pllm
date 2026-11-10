---- MODULE PdFinalAuxType_0075e37f7f3c91ec ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_0075e37f7f3c91ec ==        
  ASSUME Sizes, Location, Design,
         NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j, r)
  PROVE CoreTypeOK'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE ItYdB == gen \in [Rq -> 0..MG]


           RIu4 == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           VTew == rp \in [Rq -> {0} \cup Inst]


           JTuv == rd \in [Rq -> {0} \cup Inst]


           RLaS == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           gnQB == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           txvQrA7 == alive \in [Inst -> BOOLEAN]


           lcBzRZJ == nfail \in 0..MaxFail


           AZlSME == torn \in [Inst -> SUBSET Inst]


           MDTwQr == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           Y4aUFf == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           tqQeS == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           vn9M == ph \in [Inst -> [Rq -> PhSet]]


           oGG7 == rg \in [Inst -> [Rq -> 0..MG]]


           bNpAu == rpg \in [Inst -> [Rq -> 0..NP]]


           fdIJv == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           sld6 == rx \in [Inst -> [Rq -> 0..MX]]


           BDN6_c == rhit \in [Inst -> [Rq -> BOOLEAN]]


           X6zX5 == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           gv2_ == pr \in [Pages -> 0..NR]


           PwqP6 == pgn \in [Pages -> 0..MG]


           jyWjj == plt \in [Pages -> 0..PS]


           vwKWM == ptl \in [Pages -> -1..PS]


           eWP7z1 == pvis \in [Pages -> BOOLEAN]


           ZpUxx == led \in [Pages -> SUBSET Xids]


           sBjpCf == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           a4GqBP == sled \in [Pages -> SUBSET (Rq \X Gens)]


           AtabIBD == prefc \in [Pages -> 0..NR]


           xhIfp == pqp \in [Pages -> {0} \cup Inst]


           ZhBZ == xr \in [Xids -> 0..NR]


           HiUz == xg \in [Xids -> 0..MG]


           qcWy == xk \in [Xids -> {"none", "wr", "rd"}]


           I3KH == xp \in [Xids -> {0} \cup Inst]


           Vikm == xd \in [Xids -> {0} \cup Inst]


           KbhysL == xsrc \in [Xids -> 0..NP]


           bpmgv4 == xdst \in [Xids -> 0..NP]


           loK6p == xnt \in [Xids -> 0..PS]


           ychB == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           tBG7n == hok \in [Xids -> BOOLEAN]


           LGvs == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           H3aTc == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           uq0GF == xlt \in [Xids -> 0..PS]


           XX2v == nx \in 1..(MX + 1)


           QdnU2 == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           ZCaSEo == drep \in [Rq -> [Gens -> 0..2]]


           WDYhkn == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           XIw5jsz == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           kmCLbA == gbad \in BOOLEAN


           TEJtP == ItYdB /\ RIu4 /\ VTew /\ JTuv /\ RLaS /\ gnQB /\ txvQrA7 /\ lcBzRZJ /\ AZlSME /\ MDTwQr /\ Y4aUFf /\ tqQeS /\ vn9M /\ oGG7 /\ bNpAu /\ fdIJv /\ sld6 /\ BDN6_c /\ X6zX5 /\ gv2_ /\ PwqP6 /\ jyWjj /\ vwKWM /\ eWP7z1 /\ ZpUxx /\ sBjpCf /\ a4GqBP /\ AtabIBD /\ xhIfp /\ ZhBZ /\ HiUz /\ qcWy /\ I3KH /\ Vikm /\ KbhysL /\ bpmgv4 /\ loK6p /\ ychB /\ tBG7n /\ LGvs /\ H3aTc /\ uq0GF /\ XX2v /\ QdnU2 /\ ZCaSEo /\ WDYhkn /\ XIw5jsz /\ kmCLbA

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP

<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ubJULuad4PEo.         TEJtP' => CoreTypeOK'
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design
\* T2M-END R2M0691_PdRDPort_PdProofBase


<1>omcrGOxsGJCm.        
  /\ NP \in Nat /\ 0 \in 0..NP /\ 0 \in 0..NR /\ 0 \in 0..MG
  /\ 0 \in 0..PS /\ 0 \in -1..PS /\ 0 \in 0..MX /\ 0 \in 0..MaxFail
  /\ 1 \in 1..(MX+1) /\ 1 \in 0..PS /\ 1 \in -1..PS
  /\ 0 \notin Inst /\ 0 \notin Pages /\ 0 \notin Rq /\ 0 \notin Gens /\ 0 \notin Xids
  BY Sizes, SMT, Location, Design DEF Inst, NL, Pages, Rq, Gens, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>n9IPu10OE.        
  ASSUME NEW i \in Inst, NEW r \in Rq, TEJtP, DGrow(i,r)
  PROVE CoreTypeOK'
<2> USE ONLY <1>n9IPu10OE, Sizes, Location, Design
<2>1. PICK Q \in SUBSET Pages :
  /\ pst' = [p \in Pages |-> IF p \in Q THEN "priv" ELSE pst[p]]
  /\ pr' = [p \in Pages |-> IF p \in Q THEN r ELSE pr[p]]
  /\ pgn' = [p \in Pages |-> IF p \in Q THEN rg[i][r] ELSE pgn[p]]
  /\ plt' = [p \in Pages |-> IF p \in Q THEN 0 ELSE plt[p]]
  /\ ptl' = [p \in Pages |-> IF p \in Q THEN 0 ELSE ptl[p]]
  /\ pvis' = [p \in Pages |-> IF p \in Q THEN FALSE ELSE pvis[p]]
  BY SMT, Sizes, Location, Design DEF DGrow, Sizes, Location, Design
<2>2. UNCHANGED <<rtV, instV, recV, led, sfly, sled, prefc, pqp, xV, net, ghV>>
  BY SMT, Sizes, Location, Design DEF DGrow, Sizes, Location, Design
<2>3. r \in 0..NR /\ rg[i][r] \in 0..MG
  BY SMT, Sizes, Location, Design DEF Rq, TEJtP, oGG7, Sizes, Location, Design
<2>4. ItYdB'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, ItYdB, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>5. RIu4'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, RIu4, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>6. VTew'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, VTew, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>7. JTuv'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, JTuv, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>8. RLaS'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, RLaS, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>9. gnQB'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, gnQB, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>10. txvQrA7'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, txvQrA7, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>11. lcBzRZJ'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, lcBzRZJ, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>12. AZlSME'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, AZlSME, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>13. MDTwQr'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, MDTwQr, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>14. Y4aUFf'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, Y4aUFf, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>15. tqQeS'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, tqQeS, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>16. vn9M'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, vn9M, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>17. oGG7'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, oGG7, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>18. bNpAu'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, bNpAu, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>19. fdIJv'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, fdIJv, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>20. sld6'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, sld6, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>21. BDN6_c'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, BDN6_c, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>22. X6zX5'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, X6zX5, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>23. gv2_'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, gv2_, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>24. PwqP6'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, PwqP6, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>25. jyWjj'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, jyWjj, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>26. vwKWM'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, vwKWM, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>27. eWP7z1'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, eWP7z1, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>28. ZpUxx'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, ZpUxx, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>29. sBjpCf'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, sBjpCf, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>30. a4GqBP'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, a4GqBP, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>31. AtabIBD'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, AtabIBD, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>32. xhIfp'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, xhIfp, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>33. ZhBZ'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, ZhBZ, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>34. HiUz'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, HiUz, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>35. qcWy'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, qcWy, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>36. I3KH'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, I3KH, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>37. Vikm'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, Vikm, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>38. KbhysL'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, KbhysL, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>39. bpmgv4'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, bpmgv4, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>40. loK6p'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, loK6p, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>41. ychB'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, ychB, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>42. tBG7n'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, tBG7n, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>43. LGvs'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, LGvs, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>44. H3aTc'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, H3aTc, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>45. uq0GF'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, uq0GF, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>46. XX2v'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, XX2v, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>47. QdnU2'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, QdnU2, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>48. ZCaSEo'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, ZCaSEo, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>49. WDYhkn'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, WDYhkn, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>50. XIw5jsz'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, XIw5jsz, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>51. kmCLbA'
  BY <2>1, <2>2, <2>3, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF TEJtP, kmCLbA, rtV, recV, instV, kV, xV, ghV, Sizes, Location, Design
<2>99. QED
  BY <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, <2>12, <2>13, <2>14, <2>15, <2>16, <2>17, <2>18, <2>19, <2>20, <2>21, <2>22, <2>23, <2>24, <2>25, <2>26, <2>27, <2>28, <2>29, <2>30, <2>31, <2>32, <2>33, <2>34, <2>35, <2>36, <2>37, <2>38, <2>39, <2>40, <2>41, <2>42, <2>43, <2>44, <2>45, <2>46, <2>47, <2>48, <2>49, <2>50, <2>51, <1>ubJULuad4PEo, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kj5o1fjG5TdRx1S.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DGrow(j, r)
  PROVE CoreTypeOK'
<2> USE ONLY <1>kj5o1fjG5TdRx1S, Sizes, Location, Design
<2>1. TEJtP /\ K8
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>n9IPu10OE, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0820_PdRDPort_PdDReuseTypes


<1> QED BY <1>kj5o1fjG5TdRx1S, Sizes, Location, Design DEF Sizes, Location, Design
====
