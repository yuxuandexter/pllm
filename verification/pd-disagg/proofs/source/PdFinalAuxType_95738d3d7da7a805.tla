---- MODULE PdFinalAuxType_95738d3d7da7a805 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_95738d3d7da7a805 ==          
  ASSUME Sizes, Location, Design,
         NEW p \in Pages, PinInv, DrainTimeout(p)
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

<1>Y85tNw5n8s3dLO1.        
  ASSUME NEW p \in Pages, DrainTimeout(p)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>Y85tNw5n8s3dLO1, Sizes, Location, Design, Design, SMTT(10) DEF DrainTimeout, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dxeQaWkmTnpqbAPP.        
  ASSUME NEW p \in Pages, PinInv, DrainTimeout(p)
  PROVE /\ pst[p] = "drain"
        /\ pst' = [pst EXCEPT ![p] = "quar"]
        /\ \E x \in led[p] : pqp' = [pqp EXCEPT ![p] = PeerOf(x,p)]
        /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,ph,rg,rpg,rpe,rx,rhit,
                       pr,pgn,plt,ptl,pvis,led,sfly,sled,prefc,xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,iv,xst,xlt,nx,net,drep,crep,dsucc,gbad>>
<2> USE ONLY <1>dxeQaWkmTnpqbAPP, Sizes, Location, Design
<2>1. ZpUxx /\ a4GqBP
  BY <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. /\ pst[p] = "drain" /\ pst' = [pst EXCEPT ![p] = "quar"]
        /\ \E x \in led[p] : pqp' = [pqp EXCEPT ![p] = PeerOf(x,p)]
        /\ led' = [led EXCEPT ![p] = led[p]]
        /\ sled' = [sled EXCEPT ![p] = sled[p]]
        /\ UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, pgn, ph, plt, pr, prefc, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY Design, Zenon, Sizes, Location DEF DrainTimeout, PageTo, rtV, instV, kV, recV, xV, ghV, Sizes, Location, Design
<2>3. led' = led /\ sled' = sled
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF ZpUxx, a4GqBP, Sizes, Location, Design
<2>4. QED
  BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SV10QGpY3XPZNk6s.        
  ASSUME NEW x \in Xids, PinInv, x < nx
  PROVE xp[x] \in Inst /\ xd[x] \in Inst
<2> USE ONLY <1>SV10QGpY3XPZNk6s, Sizes, Location, Design
<2>1. K1 /\ K2 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, XX2v, Xids, Sizes, Location, Design
<2>3. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. QED
  BY <2>3, Sizes, SMTT(10), Location, Design DEF Inst, PInst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MTglgWKWl20Rw5.        
  ASSUME NEW p \in Pages, PinInv, DrainTimeout(p)
  PROVE \E q \in Inst : pqp' = [pqp EXCEPT ![p] = q]
<2> USE ONLY <1>MTglgWKWl20Rw5, Sizes, Location, Design
<2>1. K4 /\ ZpUxx
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A x \in led[p] : x \in Xids /\ x < nx
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K4, ZpUxx, Sizes, Location, Design
<2>3. \A x \in led[p] : PeerOf(x,p) \in Inst
  BY <2>2, <1>SV10QGpY3XPZNk6s, SMTT(10), Sizes, Location, Design DEF PeerOf, Sizes, Location, Design
<2>4. QED
  BY <2>3, <1>dxeQaWkmTnpqbAPP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XYxgFAMbgeihT7K4qtig.        
  ASSUME NEW p \in Pages, PinInv, DrainTimeout(p)
  PROVE txvQrA7' /\ WDYhkn' /\ ZCaSEo' /\ XIw5jsz' /\ kmCLbA' /\ ItYdB' /\ gnQB' /\ tBG7n' /\ RLaS' /\ ychB' /\ LGvs' /\ Y4aUFf' /\ MDTwQr' /\ tqQeS' /\ QdnU2' /\ lcBzRZJ' /\ XX2v' /\ vn9M' /\ vwKWM' /\ eWP7z1' /\ JTuv' /\ oGG7' /\ BDN6_c' /\ VTew' /\ fdIJv' /\ bNpAu' /\ RIu4' /\ sld6' /\ sBjpCf' /\ AZlSME' /\ Vikm' /\ bpmgv4' /\ HiUz' /\ qcWy' /\ uq0GF' /\ loK6p' /\ I3KH' /\ ZhBZ' /\ KbhysL' /\ H3aTc'
<2> USE ONLY <1>XYxgFAMbgeihT7K4qtig, Sizes, Location, Design
<2>1. TEJtP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>Y85tNw5n8s3dLO1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF TEJtP, txvQrA7, WDYhkn, ZCaSEo, XIw5jsz, kmCLbA, ItYdB, gnQB, tBG7n, RLaS, ychB, LGvs, Y4aUFf, MDTwQr, tqQeS, QdnU2, lcBzRZJ, XX2v, vn9M, vwKWM, eWP7z1, JTuv, oGG7, BDN6_c, VTew, fdIJv, bNpAu, RIu4, sld6, sBjpCf, AZlSME, Vikm, bpmgv4, HiUz, qcWy, uq0GF, loK6p, I3KH, ZhBZ, KbhysL, H3aTc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SAeecL08LBW20YOGzl.        
  ASSUME NEW p \in Pages, PinInv, DrainTimeout(p)
  PROVE ZpUxx'
<2> USE ONLY <1>SAeecL08LBW20YOGzl, Sizes, Location, Design
<2>1. ZpUxx
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. led' = led
  BY <1>dxeQaWkmTnpqbAPP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>omcrGOxsGJCm, Sizes, SMTT(10), Location, Design DEF ZpUxx, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ct1yhE0zqgw1iPdBfB.        
  ASSUME NEW p \in Pages, PinInv, DrainTimeout(p)
  PROVE PwqP6'
<2> USE ONLY <1>ct1yhE0zqgw1iPdBfB, Sizes, Location, Design
<2>1. PwqP6
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. pgn' = pgn
  BY <1>dxeQaWkmTnpqbAPP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>omcrGOxsGJCm, Sizes, SMTT(10), Location, Design DEF PwqP6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XvdmkVgVVsrLn2EIA0.        
  ASSUME NEW p \in Pages, PinInv, DrainTimeout(p)
  PROVE jyWjj'
<2> USE ONLY <1>XvdmkVgVVsrLn2EIA0, Sizes, Location, Design
<2>1. jyWjj
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. plt' = plt
  BY <1>dxeQaWkmTnpqbAPP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>omcrGOxsGJCm, Sizes, SMTT(10), Location, Design DEF jyWjj, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xNFlVuiROU3Y4N7EGB.        
  ASSUME NEW p \in Pages, PinInv, DrainTimeout(p)
  PROVE xhIfp'
<2> USE ONLY <1>xNFlVuiROU3Y4N7EGB, Sizes, Location, Design
<2>1. xhIfp
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \E q \in Inst : pqp' = [pqp EXCEPT ![p] = q]
  BY <1>MTglgWKWl20Rw5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>omcrGOxsGJCm, Sizes, SMTT(10), Location, Design DEF xhIfp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TFXU8GtHWUNb6walC.        
  ASSUME NEW p \in Pages, PinInv, DrainTimeout(p)
  PROVE gv2_'
<2> USE ONLY <1>TFXU8GtHWUNb6walC, Sizes, Location, Design
<2>1. gv2_
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. pr' = pr
  BY <1>dxeQaWkmTnpqbAPP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>omcrGOxsGJCm, Sizes, SMTT(10), Location, Design DEF gv2_, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>TRBRnUcQEauEepFfL3Cr.        
  ASSUME NEW p \in Pages, PinInv, DrainTimeout(p)
  PROVE AtabIBD'
<2> USE ONLY <1>TRBRnUcQEauEepFfL3Cr, Sizes, Location, Design
<2>1. AtabIBD
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. prefc' = prefc
  BY <1>dxeQaWkmTnpqbAPP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>omcrGOxsGJCm, Sizes, SMTT(10), Location, Design DEF AtabIBD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kVSX94T2VVL8iwLzdR.        
  ASSUME NEW p \in Pages, PinInv, DrainTimeout(p)
  PROVE X6zX5'
<2> USE ONLY <1>kVSX94T2VVL8iwLzdR, Sizes, Location, Design
<2>1. X6zX5
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. pst' = [pst EXCEPT ![p] = "quar"]
  BY <1>dxeQaWkmTnpqbAPP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>omcrGOxsGJCm, Sizes, SMTT(10), Location, Design DEF X6zX5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YQ6WKuvgPJUz5vtbN8o.        
  ASSUME NEW p \in Pages, PinInv, DrainTimeout(p)
  PROVE a4GqBP'
<2> USE ONLY <1>YQ6WKuvgPJUz5vtbN8o, Sizes, Location, Design
<2>1. a4GqBP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. sled' = sled
  BY <1>dxeQaWkmTnpqbAPP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>omcrGOxsGJCm, Sizes, SMTT(10), Location, Design DEF a4GqBP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BTTJYOwIJN2u3uZQ.          
  ASSUME NEW p \in Pages, PinInv, DrainTimeout(p)
  PROVE CoreTypeOK'
<2> USE ONLY <1>BTTJYOwIJN2u3uZQ, Sizes, Location, Design
<2>1. TEJtP'
  BY <1>XYxgFAMbgeihT7K4qtig, <1>SAeecL08LBW20YOGzl, <1>ct1yhE0zqgw1iPdBfB, <1>XvdmkVgVVsrLn2EIA0, <1>xNFlVuiROU3Y4N7EGB, <1>TFXU8GtHWUNb6walC, <1>TRBRnUcQEauEepFfL3Cr, <1>kVSX94T2VVL8iwLzdR, <1>YQ6WKuvgPJUz5vtbN8o, SMTT(10), Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ubJULuad4PEo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1106_PdRDPort_PdDrainTimeoutTypesA


<1> QED BY <1>BTTJYOwIJN2u3uZQ, Sizes, Location, Design DEF Sizes, Location, Design
====
