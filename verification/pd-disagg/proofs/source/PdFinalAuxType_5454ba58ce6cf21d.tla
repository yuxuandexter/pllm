---- MODULE PdFinalAuxType_5454ba58ce6cf21d ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_5454ba58ce6cf21d ==          
  ASSUME Sizes, Location, Design,
         NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
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

           DSinfoBadLenD2Pages(j,r) ==
             /\ led[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {} /\ PageTo(rpg[j][r],FreeOrDrain(rpg[j][r]),0,{},{})
             /\ UNCHANGED <<ptl,pvis,sfly,kpin,kfly,krs,hw,xr,xg,xk,xsrc,xdst,xnt,xlt,hok,xst,nx>>

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, jwtl0, SGcCC, q_NsQ, vP96R, w5FT2, QA0WX, mO95d, xrQPm, dzHFn, lG5iqS, oAjKAqK, DSinfoBadLenD2Pages

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

<1>ifRGm5FgdlQgywE.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DSinfoBadLen(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>ifRGm5FgdlQgywE, Sizes, Location, Design, ZenonT(5) DEF DSinfoBadLen, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

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


<1>vzIw7gdmQ5thZh8W.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE /\ IsD(j) /\ j \in DInst /\ Active(j,r)
        /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
        /\ rg[j][r] \in Gens /\ rg[j][r] <= gen[r]
        /\ drep[r][rg[j][r]] = 0 /\ ~rhit[j][r] /\ pst[rpg[j][r]] = "priv" /\ ph[j][r] = "wait"
<2> USE ONLY <1>vzIw7gdmQ5thZh8W, Sizes, Location, Design
<2>1. IsD(j) /\ Active(j,r) /\ K8 /\ K9 /\ ph[j][r] = "wait"
  BY SMTT(10), V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF DSinfoBadLen, Active, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>VBlwMBLC5pBW9rEeNkh7, <1>H6vDv84Wz3n8J, <1>KUUrHEFvbxmFhGeG2, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Active, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ObOWfCF8avamwwQyGGrWP.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DSinfoBadLen(j,r)
  PROVE DSinfoBadLenD2Pages(j,r)
  BY ONLY <1>ObOWfCF8avamwwQyGGrWP, Sizes, Location, Design, Design, SMTT(10) DEF DSinfoBadLenD2Pages, DSinfoBadLen, rtV, instV, kV, recV, pgV, xV, ghV, vars, Sizes, Location, Design
\* T2M-END R2M1021_PdRDPort_PdD2DSinfoBadLenEffect


<1>OoVmc4OKE664BJeRb.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE /\ led' = led /\ sled' = sled
        /\ \A p \in Pages : sled'[p] \subseteq sled[p]
<2> USE ONLY <1>OoVmc4OKE664BJeRb, Sizes, Location, Design
<2>1. ZpUxx /\ a4GqBP /\ rpg[j][r] \in Pages
  BY <1>vzIw7gdmQ5thZh8W, <1>TLVER4XMUn, SMTT(10), V21_Inv_KStruct, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, KStruct, Sizes, Location, Design
<2>2. DSinfoBadLenD2Pages(j,r)
  BY <1>ObOWfCF8avamwwQyGGrWP, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF DSinfoBadLenD2Pages, PageTo, PageToG, GrownOwn, GFr, GTo, GrownOf, GiveUpTo, GiveUpToN, FreeOrDrain, PinBlocks, ZpUxx, a4GqBP, Sizes, Location, Design

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


<1>G5vIUVWwIiwZC8DRTs4.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DSinfoBadLen(j,r)
  PROVE \E m \in net : m.x \in Xids /\ net' = net \cup {Msg("relsrc",j,m.fr,r,m.g,m.x,0,0,FALSE),Msg("reply",j,0,r,m.g,0,0,0,FALSE)}
  BY ONLY <1>G5vIUVWwIiwZC8DRTs4, Sizes, Location, Design, SMTT(10), Design, Zenon DEF DSinfoBadLen, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zQNAOancYled378lI.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE QdnU2'
<2> USE ONLY <1>zQNAOancYled378lI, Sizes, Location, Design
<2>1. QdnU2
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \E m \in net : m.x \in Xids /\ net' = net \cup {Msg("relsrc",j,m.fr,r,m.g,m.x,0,0,FALSE),Msg("reply",j,0,r,m.g,0,0,0,FALSE)}
  BY SMTT(10), <1>G5vIUVWwIiwZC8DRTs4, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, Location, <1>K1Rdt8, SMTT(10), Sizes, Design DEF Msg, MsgT, QdnU2, Xids, KPages, Sizes, Location, Design
\* T2M-END R2M1048_PdRDPort_PdDSinfoBadLenNet

\* T2M-SCOPE R2M1049_PdRDPort_PdDSinfoBadLenTypes

<1>FA9n0OeXGL5nbQ8btp5J.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE txvQrA7' /\ WDYhkn' /\ XIw5jsz' /\ kmCLbA' /\ ItYdB' /\ gnQB' /\ tBG7n' /\ RLaS' /\ ychB' /\ Y4aUFf' /\ MDTwQr' /\ tqQeS' /\ lcBzRZJ' /\ XX2v' /\ vwKWM' /\ eWP7z1' /\ JTuv' /\ oGG7' /\ BDN6_c' /\ VTew' /\ fdIJv' /\ bNpAu' /\ RIu4' /\ sld6' /\ sBjpCf' /\ AZlSME' /\ Vikm' /\ bpmgv4' /\ HiUz' /\ qcWy' /\ uq0GF' /\ loK6p' /\ I3KH' /\ ZhBZ' /\ KbhysL' /\ H3aTc'
<2> USE ONLY <1>FA9n0OeXGL5nbQ8btp5J, Sizes, Location, Design
<2>1. TEJtP
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY SMTT(10), <1>ifRGm5FgdlQgywE, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF TEJtP, txvQrA7, WDYhkn, XIw5jsz, kmCLbA, ItYdB, gnQB, tBG7n, RLaS, ychB, Y4aUFf, MDTwQr, tqQeS, lcBzRZJ, XX2v, vwKWM, eWP7z1, JTuv, oGG7, BDN6_c, VTew, fdIJv, bNpAu, RIu4, sld6, sBjpCf, AZlSME, Vikm, bpmgv4, HiUz, qcWy, uq0GF, loK6p, I3KH, ZhBZ, KbhysL, H3aTc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>itQRjrNZNtwQm5E5c3l.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE ZCaSEo'
<2> USE ONLY <1>itQRjrNZNtwQm5E5c3l, Sizes, Location, Design
<2>1. ZCaSEo
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DSinfoBadLen, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, ZCaSEo, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xkuedLQsA2L8YxbYA.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE LGvs'
<2> USE ONLY <1>xkuedLQsA2L8YxbYA, Sizes, Location, Design
<2>1. LGvs
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DSinfoBadLen, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, LGvs, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vULOxvTxU7rXyzwMb8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE ZpUxx'
<2> USE ONLY <1>vULOxvTxU7rXyzwMb8, Sizes, Location, Design
<2>1. ZpUxx /\ QdnU2 /\ XX2v
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DSinfoBadLen, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, ZpUxx, QdnU2, XX2v, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MvFRBI61olPMgiX8c4.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE PwqP6'
<2> USE ONLY <1>MvFRBI61olPMgiX8c4, Sizes, Location, Design
<2>1. QdnU2 /\ PwqP6 /\ oGG7
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>3. \A m \in net : m.t = "req" => m.pe \in Inst
  BY SMTT(10), <1>ygdV9x3ct9EpCA2XD, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, <2>3, SMTT(10), Location DEF AfterEv, Bump, DSinfoBadLen, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, QdnU2, PwqP6, oGG7, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rqUW4yDbfU1iHunC7.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE vn9M'
<2> HIDE DEF DSinfoBadLen, vn9M, CoreTypeOK, STypeOK
<2>old. ph \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>rqUW4yDbfU1iHunC7, V22_T_ph, SMTT(5)
<2>effect. ph'=[ph EXCEPT ![j][r]="end"]
 BY ONLY <1>rqUW4yDbfU1iHunC7, ZenonT(5) DEF DSinfoBadLen
<2>qed. QED BY ONLY <1>rqUW4yDbfU1iHunC7, <2>old, <2>effect, SMTT(5) DEF vn9M, PhSet

\* T2M-LOCAL-VISIBILITY

<1>Xxgl1B52TIQx9NoeSz.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE jyWjj'
<2> USE ONLY <1>Xxgl1B52TIQx9NoeSz, Sizes, Location, Design
<2>1. jyWjj /\ loK6p
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DSinfoBadLen, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, jyWjj, loK6p, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bPkyg4ozl5q90tMmhq.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE xhIfp'
<2> USE ONLY <1>bPkyg4ozl5q90tMmhq, Sizes, Location, Design
<2>1. xhIfp /\ fdIJv /\ Vikm /\ I3KH
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DSinfoBadLen, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, xhIfp, fdIJv, Vikm, I3KH, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rtzI9o0sZlOGk04ZD.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE gv2_'
<2> USE ONLY <1>rtzI9o0sZlOGk04ZD, Sizes, Location, Design
<2>1. gv2_
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DSinfoBadLen, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, gv2_, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lBeZeGomRXZS4R6MTRGC.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE AtabIBD'
<2> USE ONLY <1>lBeZeGomRXZS4R6MTRGC, Sizes, Location, Design
<2>1. AtabIBD
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DSinfoBadLen, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, AtabIBD, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>j0yuQ4tjt55NzkD6CC.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE X6zX5'
<2> USE ONLY <1>j0yuQ4tjt55NzkD6CC, Sizes, Location, Design
<2>1. X6zX5
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>4. QED
  BY <2>1, <1>K1Rdt8, Design, Sizes, SMTT(10), Location DEF AfterEv, Bump, DSinfoBadLen, FreeOrDrain, GFr, GTo, GenOK, GiveUpTo, GiveUpToN, PageTo, PhSet, X6zX5, Tag, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dMkV8EEFnHPl3y3sEVe.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE a4GqBP'
<2> USE ONLY <1>dMkV8EEFnHPl3y3sEVe, Sizes, Location, Design
<2>1. QdnU2 /\ oGG7 /\ a4GqBP
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. sled'=sled
  BY ONLY <1>dMkV8EEFnHPl3y3sEVe, <1>OoVmc4OKE664BJeRb, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY ONLY <2>1, <2>2, SMTT(20), Sizes, Location, Design DEF a4GqBP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZwjAqCz8J3RMQGso.          
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DSinfoBadLen(j,r)
  PROVE CoreTypeOK'
<2> USE ONLY <1>ZwjAqCz8J3RMQGso, Sizes, Location, Design
<2>1. TEJtP'
  BY SMTT(10), <1>FA9n0OeXGL5nbQ8btp5J, <1>zQNAOancYled378lI, <1>itQRjrNZNtwQm5E5c3l, <1>xkuedLQsA2L8YxbYA, <1>vULOxvTxU7rXyzwMb8, <1>MvFRBI61olPMgiX8c4, <1>rqUW4yDbfU1iHunC7, <1>Xxgl1B52TIQx9NoeSz, <1>bPkyg4ozl5q90tMmhq, <1>rtzI9o0sZlOGk04ZD, <1>lBeZeGomRXZS4R6MTRGC, <1>j0yuQ4tjt55NzkD6CC, <1>dMkV8EEFnHPl3y3sEVe, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED
  BY SMTT(10), <2>1, <1>ubJULuad4PEo, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1049_PdRDPort_PdDSinfoBadLenTypes


<1> QED BY <1>ZwjAqCz8J3RMQGso, Sizes, Location, Design DEF Sizes, Location, Design
====
