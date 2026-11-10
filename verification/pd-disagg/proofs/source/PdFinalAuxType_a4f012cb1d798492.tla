---- MODULE PdFinalAuxType_a4f012cb1d798492 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_a4f012cb1d798492 ==        
  ASSUME Sizes, Location, Design,
         NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r)
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

<1>hgpI8qqIypc.        
  ASSUME NEW i \in Inst, NEW r \in Rq, TEJtP, K8, DLanded(i,r)
  PROVE CoreTypeOK'
<2> USE ONLY <1>hgpI8qqIypc, Sizes, Location, Design
<2>1. rpg[i][r] \in Pages /\ rg[i][r] \in Gens
  BY K8, SMT, Sizes, Location, Design DEF DLanded, K8, Active, Sizes, Location, Design
<2>2. Tag(r,rg[i][r]) \in Rq \X Gens
  BY <2>1, SMT, Sizes, Location, Design DEF Tag, Sizes, Location, Design
<2>3. ItYdB'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, ItYdB, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>4. RIu4'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, RIu4, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>5. VTew'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, VTew, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>6. JTuv'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, JTuv, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>7. RLaS'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, RLaS, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>8. gnQB'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, gnQB, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>9. txvQrA7'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, txvQrA7, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>10. lcBzRZJ'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, lcBzRZJ, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>11. AZlSME'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, AZlSME, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>12. MDTwQr'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, MDTwQr, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>13. Y4aUFf'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, Y4aUFf, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>14. tqQeS'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, tqQeS, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>15. vn9M'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, vn9M, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>16. oGG7'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, oGG7, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>17. bNpAu'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, bNpAu, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>18. fdIJv'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, fdIJv, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>19. sld6'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, sld6, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>20. BDN6_c'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, BDN6_c, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>21. X6zX5'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, X6zX5, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>22. gv2_'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, gv2_, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>23. PwqP6'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, PwqP6, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>24. jyWjj'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, jyWjj, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>25. vwKWM'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, vwKWM, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>26. eWP7z1'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, eWP7z1, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>27. ZpUxx'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, ZpUxx, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>28. sBjpCf'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, sBjpCf, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>29. a4GqBP'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, a4GqBP, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>30. AtabIBD'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, AtabIBD, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>31. xhIfp'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, xhIfp, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>32. ZhBZ'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, ZhBZ, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>33. HiUz'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, HiUz, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>34. qcWy'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, qcWy, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>35. I3KH'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, I3KH, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>36. Vikm'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, Vikm, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>37. KbhysL'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, KbhysL, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>38. bpmgv4'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, bpmgv4, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>39. loK6p'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, loK6p, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>40. ychB'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, ychB, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>41. tBG7n'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, tBG7n, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>42. LGvs'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, LGvs, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>43. H3aTc'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, H3aTc, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>44. uq0GF'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, uq0GF, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>45. XX2v'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, XX2v, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>46. QdnU2'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, QdnU2, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>47. ZCaSEo'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, ZCaSEo, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>48. WDYhkn'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, WDYhkn, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>49. XIw5jsz'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, XIw5jsz, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>50. kmCLbA'
  BY <2>1, <2>2, <1>omcrGOxsGJCm, SMT, Sizes, Location, Design DEF DLanded, DStartRun, TEJtP, kmCLbA, sBjpCf, a4GqBP, loK6p, PhSet, rtV, recV, instV, kV, xV, pgV, ghV, Sizes, Location, Design
<2>99. QED
  BY <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, <2>11, <2>12, <2>13, <2>14, <2>15, <2>16, <2>17, <2>18, <2>19, <2>20, <2>21, <2>22, <2>23, <2>24, <2>25, <2>26, <2>27, <2>28, <2>29, <2>30, <2>31, <2>32, <2>33, <2>34, <2>35, <2>36, <2>37, <2>38, <2>39, <2>40, <2>41, <2>42, <2>43, <2>44, <2>45, <2>46, <2>47, <2>48, <2>49, <2>50, <1>ubJULuad4PEo, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
\* T2M-END R2M0819_PdRDPort_PdTypeProofs


<1>aMMn8xSvyMnzQXEFO.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DLanded(j, r)
  PROVE CoreTypeOK'
<2> USE ONLY <1>aMMn8xSvyMnzQXEFO, Sizes, Location, Design
<2>1. TEJtP /\ K8
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K8, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>hgpI8qqIypc, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>aMMn8xSvyMnzQXEFO, Sizes, Location, Design DEF Sizes, Location, Design
====
