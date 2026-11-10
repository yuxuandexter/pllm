---- MODULE PdFinalAuxType_065f61dad67eb9e2 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_065f61dad67eb9e2 ==          
  ASSUME Sizes, Location, Design,
         NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
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

           DReadFailD2Pages(j,r) ==
             /\ PageTo(rpg[j][r],GiveUpTo(rpg[j][r],"timeout"),rpe[j][r],led[rpg[j][r]],sled[rpg[j][r]])
             /\ UNCHANGED <<ptl,pvis,sfly,kpin,kfly,krs,hw,xr,xg,xk,xsrc,xdst,xnt,xlt,hok,xst,nx>>

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, jwtl0, SGcCC, q_NsQ, vP96R, w5FT2, QA0WX, mO95d, xrQPm, dzHFn, lG5iqS, oAjKAqK, DReadFailD2Pages

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

<1>Op0Ft7ueVlhM.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DReadFail(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>Op0Ft7ueVlhM, Sizes, Location, Design, ZenonT(5) DEF DReadFail, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VLROWBcOqe16ENnb.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VBlwMBLC5pBW9rEeNkh7.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8, Active(i,r)
  PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i
        /\ (~rhit[i][r] => pst[rpg[i][r]] = "priv" /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r])
        /\ (IsP(i) => ~rhit[i][r])
        /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r]
  BY ONLY <1>VBlwMBLC5pBW9rEeNkh7, Sizes, Location, Design, SMTT(10) DEF K8, Active, OwnedBy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KUUrHEFvbxmFhGeG2.        
  ASSUME NEW i \in DInst, NEW r \in Rq, K9, rhit[i][r]
  PROVE /\ ph[i][r] \in {"run","ovl","end"}
        /\ (ph[i][r] \in {"run","ovl"} => pst[rpg[i][r]] = "shared" /\ Tag(r,rg[i][r]) \in sled[rpg[i][r]])
  BY ONLY <1>KUUrHEFvbxmFhGeG2, Sizes, Location, Design, Zenon DEF K9, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H6vDv84Wz3n8J.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, IsD(j), Active(j,r)
  PROVE rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
<2> USE ONLY <1>H6vDv84Wz3n8J, Sizes, Location, Design
<2>1. K8 /\ K9 /\ j \in DInst
  BY Sizes, SMTT(10), V21_Inv_K8, V21_Inv_K9, Location, Design DEF IsD, Inst, DInst, NL, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
\* T2M-END R2M0697_PdRDPort_PdOneReplyIncrement


<1>VfqajHlQzjmyW.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE /\ IsD(j) /\ j \in DInst /\ Active(j,r)
        /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
        /\ rg[j][r] \in Gens /\ rg[j][r] <= gen[r]
        /\ drep[r][rg[j][r]] = 0 /\ ~rhit[j][r] /\ pst[rpg[j][r]] = "priv" /\ ph[j][r] = "rd"
<2> USE ONLY <1>VfqajHlQzjmyW, Sizes, Location, Design
<2>1. IsD(j) /\ Active(j,r) /\ K8 /\ K9 /\ ph[j][r] = "rd"
  BY SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF DReadFail, Active, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>VBlwMBLC5pBW9rEeNkh7, <1>H6vDv84Wz3n8J, <1>KUUrHEFvbxmFhGeG2, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SOJfb34kUbF5m5mTnn.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DReadFail(j,r)
  PROVE DReadFailD2Pages(j,r)
  BY ONLY <1>SOJfb34kUbF5m5mTnn, Sizes, Location, Design, Design, SMTT(10) DEF DReadFailD2Pages, DReadFail, rtV, instV, kV, recV, pgV, xV, ghV, vars, Sizes, Location, Design
\* T2M-END R2M0881_PdRDPort_PdD2DReadFailEffect


<1>KhhP2z4y3CObMM.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE /\ led' = led /\ sled' = sled
        /\ \A p \in Pages : sled'[p] \subseteq sled[p]
<2> USE ONLY <1>KhhP2z4y3CObMM, Sizes, Location, Design
<2>1. ZpUxx /\ a4GqBP /\ rpg[j][r] \in Pages
  BY <1>VfqajHlQzjmyW, <1>TLVER4XMUn, SMTT(10), V21_Inv_KStruct, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, KStruct, Sizes, Location, Design
<2>2. DReadFailD2Pages(j,r)
  BY <1>SOJfb34kUbF5m5mTnn, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF DReadFailD2Pages, PageTo, PageToG, GrownOwn, GFr, GTo, GrownOf, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, ZpUxx, a4GqBP, Sizes, Location, Design

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


<1>w1hqQ7UUgC1AbbW1.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DReadFail(j,r)
  PROVE net' = net \cup {Msg("reply",j,0,r,rg[j][r],0,0,0,FALSE),Msg("abort",j,rpe[j][r],r,rg[j][r],0,0,0,FALSE)}
  BY ONLY <1>w1hqQ7UUgC1AbbW1, Sizes, Location, Design, Design, SMTT(10) DEF DReadFail, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nHB5nzndhyDySK.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE QdnU2'
<2> USE ONLY <1>nHB5nzndhyDySK, Sizes, Location, Design
<2>1. QdnU2 /\ oGG7 /\ fdIJv
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. net' = net \cup {Msg("reply",j,0,r,rg[j][r],0,0,0,FALSE),Msg("abort",j,rpe[j][r],r,rg[j][r],0,0,0,FALSE)}
  BY SMTT(10), <1>w1hqQ7UUgC1AbbW1, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, Location, <1>K1Rdt8, SMTT(10), Sizes, Design DEF Msg, MsgT, QdnU2, oGG7, fdIJv, Xids, KPages, Sizes, Location, Design
\* T2M-END R2M0899_PdRDPort_PdDReadFailNet

\* T2M-SCOPE R2M0902_PdRDPort_PdDReadFailTypes

<1>tIkYEbQ70Iv5yJOsT.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE txvQrA7' /\ WDYhkn' /\ XIw5jsz' /\ kmCLbA' /\ ItYdB' /\ gnQB' /\ tBG7n' /\ RLaS' /\ ychB' /\ LGvs' /\ Y4aUFf' /\ MDTwQr' /\ tqQeS' /\ lcBzRZJ' /\ XX2v' /\ vwKWM' /\ eWP7z1' /\ JTuv' /\ oGG7' /\ BDN6_c' /\ VTew' /\ fdIJv' /\ bNpAu' /\ RIu4' /\ sld6' /\ sBjpCf' /\ AZlSME' /\ Vikm' /\ bpmgv4' /\ HiUz' /\ qcWy' /\ uq0GF' /\ loK6p' /\ I3KH' /\ ZhBZ' /\ KbhysL' /\ H3aTc'
<2> USE ONLY <1>tIkYEbQ70Iv5yJOsT, Sizes, Location, Design
<2>1. TEJtP
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY SMTT(10), <1>Op0Ft7ueVlhM, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF TEJtP, txvQrA7, WDYhkn, XIw5jsz, kmCLbA, ItYdB, gnQB, tBG7n, RLaS, ychB, LGvs, Y4aUFf, MDTwQr, tqQeS, lcBzRZJ, XX2v, vwKWM, eWP7z1, JTuv, oGG7, BDN6_c, VTew, fdIJv, bNpAu, RIu4, sld6, sBjpCf, AZlSME, Vikm, bpmgv4, HiUz, qcWy, uq0GF, loK6p, I3KH, ZhBZ, KbhysL, H3aTc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cSK4IE6XIyKUMaYq.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE ZCaSEo'
<2> USE ONLY <1>cSK4IE6XIyKUMaYq, Sizes, Location, Design
<2>1. ZCaSEo
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DReadFail, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, ZCaSEo, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ASMp1QA5cdMcsj6.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE ZpUxx'
<2> USE ONLY <1>ASMp1QA5cdMcsj6, Sizes, Location, Design
<2>type. ZpUxx
 <3>project. CoreTypeOK => ZpUxx
  BY ONLY ZenonT(5) DEF CoreTypeOK, ZpUxx
 <3>core. CoreTypeOK BY ONLY <1>ASMp1QA5cdMcsj6, V21_Inv_BaseTypeOK, Sizes, Location, Design, SMTT(5)
 <3>qed. QED BY ONLY <3>project, <3>core, SMTT(5)
<2> DEFINE EndState == GiveUpTo(rpg[j][r], "timeout")
<2> HIDE DEF EndState
<2>effect. (EndState="free" /\ led'=[led EXCEPT ![rpg[j][r]]={}])
       \/ (EndState # "free" /\ led'=[led EXCEPT ![rpg[j][r]]=led[rpg[j][r]]])
 BY ONLY <1>ASMp1QA5cdMcsj6, ZenonT(5) DEF DReadFail, PageTo, EndState
<2>clear. CASE EndState="free"
 BY ONLY <2>type, <2>effect, <2>clear, Sizes, SMTT(5) DEF ZpUxx, Sizes
<2>keep. CASE EndState # "free"
 BY ONLY <2>type, <2>effect, <2>keep, SMTT(5) DEF ZpUxx
<2>qed. QED BY ONLY <2>clear, <2>keep, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>qlFovytpaOHHvJS.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE PwqP6'
<2> USE ONLY <1>qlFovytpaOHHvJS, Sizes, Location, Design
<2>type. PwqP6
 <3>project. CoreTypeOK => PwqP6
  BY ONLY ZenonT(5) DEF CoreTypeOK, PwqP6
 <3>core. CoreTypeOK BY ONLY <1>qlFovytpaOHHvJS, V21_Inv_BaseTypeOK, Sizes, Location, Design, SMTT(5)
 <3>qed. QED BY ONLY <3>project, <3>core, SMTT(5)
<2> DEFINE EndState == GiveUpTo(rpg[j][r], "timeout")
<2> HIDE DEF EndState
<2>effect. (EndState="free" /\ pgn'=[pgn EXCEPT ![rpg[j][r]]=0])
       \/ (EndState # "free" /\ pgn'=pgn)
 BY ONLY <1>qlFovytpaOHHvJS, ZenonT(5) DEF DReadFail, PageTo, EndState
<2>clear. CASE EndState="free"
 BY ONLY <2>type, <2>effect, <2>clear, Sizes, SMTT(5) DEF PwqP6, Sizes
<2>keep. CASE EndState # "free"
 BY ONLY <2>type, <2>effect, <2>keep, SMTT(5) DEF PwqP6
<2>qed. QED BY ONLY <2>clear, <2>keep, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>sRc4VYHC8aCWRT.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE vn9M'
<2> USE ONLY <1>sRc4VYHC8aCWRT, Sizes, Location, Design
<2>type. vn9M
 <3>project. CoreTypeOK => vn9M
  BY ONLY ZenonT(5) DEF CoreTypeOK, vn9M
 <3>core. CoreTypeOK BY ONLY <1>sRc4VYHC8aCWRT, V21_Inv_BaseTypeOK, Sizes, Location, Design, SMTT(5)
 <3>qed. QED BY ONLY <3>project, <3>core, SMTT(5)
<2>effect. ph'=[ph EXCEPT ![j][r]="end"]
 BY ONLY <1>sRc4VYHC8aCWRT, ZenonT(5) DEF DReadFail
<2>end. "end" \in PhSet BY ONLY SMTT(5) DEF PhSet
<2>qed. QED BY ONLY <2>type, <2>effect, <2>end, SMTT(5) DEF vn9M

\* T2M-LOCAL-VISIBILITY

<1>xHpuqpUKPuJkfvK.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE jyWjj'
<2> USE ONLY <1>xHpuqpUKPuJkfvK, Sizes, Location, Design
<2>1. jyWjj /\ loK6p
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DReadFail, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, jyWjj, loK6p, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t8eUfVgdEniEsmG.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE xhIfp'
<2> USE ONLY <1>t8eUfVgdEniEsmG, Sizes, Location, Design
<2>1. xhIfp /\ fdIJv /\ Vikm /\ I3KH
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DReadFail, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, xhIfp, fdIJv, Vikm, I3KH, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yKn9scbC179Tub.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE gv2_'
<2> USE ONLY <1>yKn9scbC179Tub, Sizes, Location, Design
<2>1. gv2_
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DReadFail, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, gv2_, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>B3Vplck6KfGzQwi3l.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE AtabIBD'
<2> USE ONLY <1>B3Vplck6KfGzQwi3l, Sizes, Location, Design
<2>1. AtabIBD
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DReadFail, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, AtabIBD, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>l4tkbPyivDr7Btg.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE X6zX5'
<2> USE ONLY <1>l4tkbPyivDr7Btg, Sizes, Location, Design
<2>1. X6zX5
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DReadFail, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, X6zX5, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oryOMS7jTsw0k9A9.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE a4GqBP'
<2> USE ONLY <1>oryOMS7jTsw0k9A9, Sizes, Location, Design
<2>type. a4GqBP
 <3>project. CoreTypeOK => a4GqBP
  BY ONLY ZenonT(5) DEF CoreTypeOK, a4GqBP
 <3>core. CoreTypeOK BY ONLY <1>oryOMS7jTsw0k9A9, V21_Inv_BaseTypeOK, Sizes, Location, Design, SMTT(5)
 <3>qed. QED BY ONLY <3>project, <3>core, SMTT(5)
<2> DEFINE EndState == GiveUpTo(rpg[j][r], "timeout")
<2> HIDE DEF EndState
<2>effect. (EndState="free" /\ sled'=[sled EXCEPT ![rpg[j][r]]={}])
       \/ (EndState # "free" /\ sled'=[sled EXCEPT ![rpg[j][r]]=sled[rpg[j][r]]])
 BY ONLY <1>oryOMS7jTsw0k9A9, ZenonT(5) DEF DReadFail, PageTo, EndState
<2>clear. CASE EndState="free"
 BY ONLY <2>type, <2>effect, <2>clear, Sizes, SMTT(5) DEF a4GqBP, Sizes
<2>keep. CASE EndState # "free"
 BY ONLY <2>type, <2>effect, <2>keep, SMTT(5) DEF a4GqBP
<2>qed. QED BY ONLY <2>clear, <2>keep, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>WINsrm2OJxItr.          
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadFail(j,r)
  PROVE CoreTypeOK'
<2> USE ONLY <1>WINsrm2OJxItr, Sizes, Location, Design
<2>1. TEJtP'
  BY SMTT(10), <1>tIkYEbQ70Iv5yJOsT, <1>nHB5nzndhyDySK, <1>cSK4IE6XIyKUMaYq, <1>ASMp1QA5cdMcsj6, <1>qlFovytpaOHHvJS, <1>sRc4VYHC8aCWRT, <1>xHpuqpUKPuJkfvK, <1>t8eUfVgdEniEsmG, <1>yKn9scbC179Tub, <1>B3Vplck6KfGzQwi3l, <1>l4tkbPyivDr7Btg, <1>oryOMS7jTsw0k9A9, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED
  BY SMTT(10), <2>1, <1>ubJULuad4PEo, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0902_PdRDPort_PdDReadFailTypes


<1> QED BY <1>WINsrm2OJxItr, Sizes, Location, Design DEF Sizes, Location, Design
====
