---- MODULE PdFinalAuxType_483df3501ce352ae ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_483df3501ce352ae ==          
  ASSUME Sizes, Location, Design,
         NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
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

           SinfoUpdateA(j,r,m) ==
             /\ m \in net /\ m.t = "sinfo" /\ m.to = j /\ m.r = r /\ m.g = rg[j][r]
             /\ m.x \in Xids /\ iv[m.x] = "none" /\ m.pe = NTok(r,rg[j][r])
             /\ iv' = [iv EXCEPT ![m.x] = "posted"]
             /\ hw' = [hw EXCEPT ![m.x] = IF Torn(m.x) THEN "stop" ELSE "fly"]
             /\ hok' = [hok EXCEPT ![m.x] = FALSE]
             /\ xdst' = [xdst EXCEPT ![m.x] = rpg[j][r]]
             /\ led' = [led EXCEPT ![rpg[j][r]] = @ \cup {m.x}]
             /\ ph' = [ph EXCEPT ![j][r] = "rd"]
             /\ rx' = [rx EXCEPT ![j][r] = m.x]
             /\ gbad' = gbad

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, SinfoUpdateA

<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ubJULuad4PEo.         TEJtP' => CoreTypeOK'
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design
\* T2M-END R2M0691_PdRDPort_PdProofBase


<1>q2QyUi1oSBW.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, Active(i,r)
  PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (~rhit[i][r] => pst[rpg[i][r]] = "priv" /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r])
        /\ (IsP(i) => ~rhit[i][r])
        /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  BY ONLY <1>q2QyUi1oSBW, Sizes, Location, Design, SMTT(10) DEF K8, Active, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>omcrGOxsGJCm.        
  /\ NP \in Nat /\ 0 \in 0..NP /\ 0 \in 0..NR /\ 0 \in 0..MG
  /\ 0 \in 0..PS /\ 0 \in -1..PS /\ 0 \in 0..MX /\ 0 \in 0..MaxFail
  /\ 1 \in 1..(MX+1) /\ 1 \in 0..PS /\ 1 \in -1..PS
  /\ 0 \notin Inst /\ 0 \notin Pages /\ 0 \notin Rq /\ 0 \notin Gens /\ 0 \notin Xids
  BY Sizes, SMT, Location, Design DEF Inst, NL, Pages, Rq, Gens, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lpERRf1zlgfCn.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvSinfo(j, r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hp, kfly, kpin, krs, net, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>lpERRf1zlgfCn, Sizes, Location, Design, Design, SMTT(10) DEF DRecvSinfo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fKJsgwXHCSpm1X.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
  PROVE /\ Mode = "pull" /\ IsD(j) /\ ph[j][r] = "wait"
        /\ \E m \in net : SinfoUpdateA(j,r,m)
        /\ UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hp, kfly, kpin, krs, net, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
<2> USE ONLY <1>fKJsgwXHCSpm1X, Sizes, Location, Design
<2>1. kmCLbA
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(10), Sizes, Location DEF DRecvSinfo, SinfoUpdateA, GenOK, kmCLbA, rtV, instV, kV, ghV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dtItKmO3om08.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j,r)
  PROVE rpg[j][r] \in Pages
<2> USE ONLY <1>dtItKmO3om08, Sizes, Location, Design
<2>1. K8 /\ ph[j][r] = "wait"
  BY <1>fKJsgwXHCSpm1X, SMTT(10), V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>q2QyUi1oSBW, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design
\* T2M-END R2M1005_PdRDPort_PdDRecvSinfoEffectsA


<1>VCFOOcSHpj61v0zEWj.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE txvQrA7' /\ WDYhkn' /\ ZCaSEo' /\ XIw5jsz' /\ ItYdB' /\ gnQB' /\ RLaS' /\ Y4aUFf' /\ MDTwQr' /\ tqQeS' /\ QdnU2' /\ lcBzRZJ' /\ XX2v' /\ PwqP6' /\ jyWjj' /\ xhIfp' /\ gv2_' /\ AtabIBD' /\ X6zX5' /\ vwKWM' /\ eWP7z1' /\ JTuv' /\ oGG7' /\ BDN6_c' /\ VTew' /\ fdIJv' /\ bNpAu' /\ RIu4' /\ sBjpCf' /\ a4GqBP' /\ AZlSME' /\ Vikm' /\ HiUz' /\ qcWy' /\ uq0GF' /\ loK6p' /\ I3KH' /\ ZhBZ' /\ KbhysL' /\ H3aTc'
<2> USE ONLY <1>VCFOOcSHpj61v0zEWj, Sizes, Location, Design
<2>1. TEJtP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hp, kfly, kpin, krs, net, nfail, nx, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xd, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>lpERRf1zlgfCn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF TEJtP, txvQrA7, WDYhkn, ZCaSEo, XIw5jsz, ItYdB, gnQB, RLaS, Y4aUFf, MDTwQr, tqQeS, QdnU2, lcBzRZJ, XX2v, PwqP6, jyWjj, xhIfp, gv2_, AtabIBD, X6zX5, vwKWM, eWP7z1, JTuv, oGG7, BDN6_c, VTew, fdIJv, bNpAu, RIu4, sBjpCf, a4GqBP, AZlSME, Vikm, HiUz, qcWy, uq0GF, loK6p, I3KH, ZhBZ, KbhysL, H3aTc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eZ0z7ZJXnyZmOEFdt.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE kmCLbA'
<2> USE ONLY <1>eZ0z7ZJXnyZmOEFdt, Sizes, Location, Design
<2>1. kmCLbA
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \E m \in net : SinfoUpdateA(j,r,m)
  BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>dtItKmO3om08, <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PhSet, SinfoUpdateA, kmCLbA, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CZy49jBNyFUQYFAX.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE tBG7n'
<2> USE ONLY <1>CZy49jBNyFUQYFAX, Sizes, Location, Design
<2>1. tBG7n
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \E m \in net : SinfoUpdateA(j,r,m)
  BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>dtItKmO3om08, <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PhSet, SinfoUpdateA, tBG7n, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WzxpOFMXlOYnyen.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE ychB'
<2> USE ONLY <1>WzxpOFMXlOYnyen, Sizes, Location, Design
<2>1. ychB
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \E m \in net : SinfoUpdateA(j,r,m)
  BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>dtItKmO3om08, <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PhSet, SinfoUpdateA, ychB, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>utg7pRSWhGQ7eQv.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE LGvs'
<2> USE ONLY <1>utg7pRSWhGQ7eQv, Sizes, Location, Design
<2>1. LGvs
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \E m \in net : SinfoUpdateA(j,r,m)
  BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>dtItKmO3om08, <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PhSet, SinfoUpdateA, LGvs, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ocg0rpDNobvxhlZE.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE ZpUxx'
<2> USE ONLY <1>Ocg0rpDNobvxhlZE, Sizes, Location, Design
<2>1. ZpUxx
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \E m \in net : SinfoUpdateA(j,r,m)
  BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>dtItKmO3om08, <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PhSet, SinfoUpdateA, ZpUxx, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Qlyp7xHi5OM0Vdc.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE vn9M'
<2> USE ONLY <1>Qlyp7xHi5OM0Vdc, Sizes, Location, Design
<2>1. vn9M
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \E m \in net : SinfoUpdateA(j,r,m)
  BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>dtItKmO3om08, <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PhSet, SinfoUpdateA, vn9M, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zfI3EFcyiZ9iqDY.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE sld6'
<2> USE ONLY <1>zfI3EFcyiZ9iqDY, Sizes, Location, Design
<2>1. sld6
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \E m \in net : SinfoUpdateA(j,r,m)
  BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>dtItKmO3om08, <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PhSet, SinfoUpdateA, sld6, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bXIfYJIPTvlYJIAWB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE bpmgv4'
<2> USE ONLY <1>bXIfYJIPTvlYJIAWB, Sizes, Location, Design
<2>1. bNpAu /\ bpmgv4
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \E m \in net : SinfoUpdateA(j,r,m)
  BY <1>fKJsgwXHCSpm1X, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>dtItKmO3om08, <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PhSet, SinfoUpdateA, bNpAu, bpmgv4, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>C5njpw4kT4K6EQ.          
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvSinfo(j, r)
  PROVE CoreTypeOK'
<2> USE ONLY <1>C5njpw4kT4K6EQ, Sizes, Location, Design
<2>1. TEJtP'
  BY <1>VCFOOcSHpj61v0zEWj, <1>eZ0z7ZJXnyZmOEFdt, <1>CZy49jBNyFUQYFAX, <1>WzxpOFMXlOYnyen, <1>utg7pRSWhGQ7eQv, <1>Ocg0rpDNobvxhlZE, <1>Qlyp7xHi5OM0Vdc, <1>zfI3EFcyiZ9iqDY, <1>bXIfYJIPTvlYJIAWB, SMTT(10), Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ubJULuad4PEo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1010_PdRDPort_PdDRecvSinfoTypesA


<1> QED BY <1>C5njpw4kT4K6EQ, Sizes, Location, Design DEF Sizes, Location, Design
====
