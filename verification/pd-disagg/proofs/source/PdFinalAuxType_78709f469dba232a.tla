---- MODULE PdFinalAuxType_78709f469dba232a ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_78709f469dba232a ==          
  ASSUME Sizes, Location, Design,
         NEW j \in Inst, NEW r \in Rq, PinInv, DXferFailed(j,r)
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

           jwtl0(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])


           SGcCC(m) == m.t = "hello" => m.fr \in Inst


           q_NsQ(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))


           vP96R(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))


           w5FT2(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])


           QA0WX(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])


           mO95d(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")


           xrQPm(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)


           dzHFn(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))


           lG5iqS(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))


           oAjKAqK(m) ==
             /\ jwtl0(m)
             /\ SGcCC(m)
             /\ q_NsQ(m)
             /\ vP96R(m)
             /\ w5FT2(m)
             /\ QA0WX(m)
             /\ mO95d(m)
             /\ xrQPm(m)
             /\ dzHFn(m)
             /\ lG5iqS(m)

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, jwtl0, SGcCC, q_NsQ, vP96R, w5FT2, QA0WX, mO95d, xrQPm, dzHFn, lG5iqS, oAjKAqK

<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ubJULuad4PEo.         TEJtP' => CoreTypeOK'
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design
\* T2M-END R2M0691_PdRDPort_PdProofBase


<1>jEmp1841Mb.         K12 <=> (\A m \in net : oAjKAqK(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, oAjKAqK, jwtl0, SGcCC, q_NsQ, vP96R, w5FT2, QA0WX, mO95d, xrQPm, dzHFn, lG5iqS, Sizes, Location, Design
\* T2M-END R2M0692_PdRDPort_PdMessagePred


<1>K1Rdt8.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YPhMWOlCGtTCsN.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DXferFailed(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>YPhMWOlCGtTCsN, Sizes, Location, Design, ZenonT(5) DEF DXferFailed, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ygdV9x3ct9EpCA2XD.        
  ASSUME NEW m \in net, PinInv, m.t = "req"
  PROVE m.pe \in Inst
<2> USE ONLY <1>ygdV9x3ct9EpCA2XD, Sizes, Location, Design
<2>1. K1 /\ K12
  BY SMTT(10), V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. oAjKAqK(m)
  BY <2>1, <1>jEmp1841Mb, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r]
      /\ (m.pe = hp[m.r][m.g] \/ m.pe = hd[m.r][m.g])
  BY <2>2, SMTT(10), Sizes, Location, Design DEF oAjKAqK, jwtl0, q_NsQ, Sizes, Location, Design
<2>4. hp[m.r][m.g] \in PInst /\ hd[m.r][m.g] \in DInst
  BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>5. QED
  BY <2>3, <2>4, <1>K1Rdt8, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0901_PdRDPort_PdRequestPeer


<1>PIsF13ulZjXHrUOxgg.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DXferFailed(j,r)
  PROVE net' = net \cup {Msg("reply",j,0,r,rg[j][r],0,0,0,FALSE)}
  BY ONLY <1>PIsF13ulZjXHrUOxgg, Sizes, Location, Design, Design, SMTT(10) DEF DXferFailed, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XvCIBiDEZGBsG6sx.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DXferFailed(j,r)
  PROVE QdnU2'
<2> USE ONLY <1>XvCIBiDEZGBsG6sx, Sizes, Location, Design
<2>1. QdnU2 /\ oGG7
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. net' = net \cup {Msg("reply",j,0,r,rg[j][r],0,0,0,FALSE)}
  BY SMTT(10), <1>PIsF13ulZjXHrUOxgg, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, Location, <1>K1Rdt8, SMTT(10), Sizes, Design DEF Msg, MsgT, QdnU2, oGG7, Xids, KPages, Sizes, Location, Design
\* T2M-END R2M1094_PdRDPort_PdDXferFailedNet

\* T2M-SCOPE R2M1095_PdRDPort_PdDXferFailedTypes

<1>vfS1oCUGgsjHic5rnRd.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DXferFailed(j,r)
  PROVE txvQrA7' /\ WDYhkn' /\ XIw5jsz' /\ kmCLbA' /\ ItYdB' /\ gnQB' /\ tBG7n' /\ RLaS' /\ ychB' /\ LGvs' /\ Y4aUFf' /\ MDTwQr' /\ tqQeS' /\ lcBzRZJ' /\ XX2v' /\ vwKWM' /\ eWP7z1' /\ JTuv' /\ oGG7' /\ BDN6_c' /\ VTew' /\ fdIJv' /\ bNpAu' /\ RIu4' /\ sld6' /\ sBjpCf' /\ AZlSME' /\ Vikm' /\ bpmgv4' /\ HiUz' /\ qcWy' /\ uq0GF' /\ loK6p' /\ I3KH' /\ ZhBZ' /\ KbhysL' /\ H3aTc'
<2> USE ONLY <1>vfS1oCUGgsjHic5rnRd, Sizes, Location, Design
<2>1. TEJtP
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY SMTT(10), <1>YPhMWOlCGtTCsN, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF TEJtP, txvQrA7, WDYhkn, XIw5jsz, kmCLbA, ItYdB, gnQB, tBG7n, RLaS, ychB, LGvs, Y4aUFf, MDTwQr, tqQeS, lcBzRZJ, XX2v, vwKWM, eWP7z1, JTuv, oGG7, BDN6_c, VTew, fdIJv, bNpAu, RIu4, sld6, sBjpCf, AZlSME, Vikm, bpmgv4, HiUz, qcWy, uq0GF, loK6p, I3KH, ZhBZ, KbhysL, H3aTc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>h76ChKbYk1A0jXYHeF.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DXferFailed(j,r)
  PROVE ZCaSEo'
<2> USE ONLY <1>h76ChKbYk1A0jXYHeF, Sizes, Location, Design
<2>1. ZCaSEo
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DXferFailed, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, ZCaSEo, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qdps0yfSA2DDx3vHg.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DXferFailed(j,r)
  PROVE ZpUxx'
<2> USE ONLY <1>qdps0yfSA2DDx3vHg, Sizes, Location, Design
<2>1. ZpUxx /\ QdnU2 /\ XX2v
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DXferFailed, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, ZpUxx, QdnU2, XX2v, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QRJqMBwLC5ur0WjUB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DXferFailed(j,r)
  PROVE PwqP6'
<2> USE ONLY <1>QRJqMBwLC5ur0WjUB, Sizes, Location, Design
<2>1. QdnU2 /\ PwqP6 /\ oGG7
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>3. \A m \in net : m.t = "req" => m.pe \in Inst
  BY SMTT(10), <1>ygdV9x3ct9EpCA2XD, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, <2>3, SMTT(10), Location DEF AfterEv, Bump, DXferFailed, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, QdnU2, PwqP6, oGG7, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LP8ViPWzHqn94cKm.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DXferFailed(j,r)
  PROVE vn9M'
<2> USE ONLY <1>LP8ViPWzHqn94cKm, Sizes, Location, Design
<2>1. vn9M
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DXferFailed, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, vn9M, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>awOitSVT4DxjydCeI.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DXferFailed(j,r)
  PROVE jyWjj'
<2> USE ONLY <1>awOitSVT4DxjydCeI, Sizes, Location, Design
<2>1. jyWjj /\ loK6p
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DXferFailed, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, jyWjj, loK6p, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Xa4DocCSIgIv1A9Tz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DXferFailed(j,r)
  PROVE xhIfp'
<2> USE ONLY <1>Xa4DocCSIgIv1A9Tz, Sizes, Location, Design
<2>1. xhIfp /\ fdIJv /\ Vikm /\ I3KH
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DXferFailed, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, xhIfp, fdIJv, Vikm, I3KH, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>k8dpmQmjJVDqbz9B.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DXferFailed(j,r)
  PROVE gv2_'
<2> USE ONLY <1>k8dpmQmjJVDqbz9B, Sizes, Location, Design
<2>1. gv2_
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DXferFailed, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, gv2_, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>y5IGiIHkn5XeAxOHbv4.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DXferFailed(j,r)
  PROVE AtabIBD'
<2> USE ONLY <1>y5IGiIHkn5XeAxOHbv4, Sizes, Location, Design
<2>1. AtabIBD
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DXferFailed, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, AtabIBD, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OAIW657bJYLotcH6w.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DXferFailed(j,r)
  PROVE X6zX5'
<2> USE ONLY <1>OAIW657bJYLotcH6w, Sizes, Location, Design
<2>1. X6zX5
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DXferFailed, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, X6zX5, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vaXFXSdyJwVjUsk2LN.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DXferFailed(j,r)
  PROVE a4GqBP'
<2> HIDE DEF DXferFailed, a4GqBP, CoreTypeOK, STypeOK
<2>old. sled \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY <1>vaXFXSdyJwVjUsk2LN, V22_T_sled, SMTT(5)
<2>effect. sled'=[sled EXCEPT ![rpg[j][r]]={}]
 BY ONLY <1>vaXFXSdyJwVjUsk2LN, ZenonT(5) DEF DXferFailed, PageTo
<2>qed. QED BY ONLY <1>vaXFXSdyJwVjUsk2LN, <2>old, <2>effect, SMTT(5) DEF a4GqBP

\* T2M-LOCAL-VISIBILITY

<1>auo90mI1PgIuSZB.          
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DXferFailed(j,r)
  PROVE CoreTypeOK'
<2> USE ONLY <1>auo90mI1PgIuSZB, Sizes, Location, Design
<2>1. TEJtP'
  BY SMTT(10), <1>vfS1oCUGgsjHic5rnRd, <1>XvCIBiDEZGBsG6sx, <1>h76ChKbYk1A0jXYHeF, <1>qdps0yfSA2DDx3vHg, <1>QRJqMBwLC5ur0WjUB, <1>LP8ViPWzHqn94cKm, <1>awOitSVT4DxjydCeI, <1>Xa4DocCSIgIv1A9Tz, <1>k8dpmQmjJVDqbz9B, <1>y5IGiIHkn5XeAxOHbv4, <1>OAIW657bJYLotcH6w, <1>vaXFXSdyJwVjUsk2LN, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED
  BY SMTT(10), <2>1, <1>ubJULuad4PEo, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1095_PdRDPort_PdDXferFailedTypes


<1> QED BY <1>auo90mI1PgIuSZB, Sizes, Location, Design DEF Sizes, Location, Design
====
