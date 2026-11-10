---- MODULE PdFinalAuxType_dc8120345fba5649 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_dc8120345fba5649 ==        
  ASSUME Sizes, Location, Design,
         NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
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

           PageTypesD2 == X6zX5 /\ xhIfp /\ gv2_ /\ PwqP6 /\ jyWjj /\ ZpUxx /\ a4GqBP /\ AtabIBD

           \* T2M-LOCAL-VISIBILITY

           McO6Nv_c6YAPZXLgH(j,r) == LET q == rpg[j][r] x == rx[j][r] g == rg[j][r] IN
             IF hok[x]
             THEN /\ ph' = [ph EXCEPT ![j][r] = "run"]
                  /\ plt' = [plt EXCEPT ![q] = NTok(r,g)] /\ pvis' = [pvis EXCEPT ![q] = TRUE]
                  /\ sfly' = [sfly EXCEPT ![q] = {Tag(r,g)}] /\ sled' = [sled EXCEPT ![q] = {Tag(r,g)}]
                  /\ UNCHANGED <<pst,pr,pgn,led,prefc,pqp,drep,net>>
             ELSE /\ ph' = [ph EXCEPT ![j][r] = "end"]
                  /\ PageTo(q,FreeOrDrain(q),0,{},{})
                  /\ drep' = [drep EXCEPT ![r][g] = Bump(@)]
                  /\ net' = net \cup {Msg("reply",j,0,r,g,0,0,0,FALSE)}
                  /\ UNCHANGED <<sfly,pvis>>

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, PageTypesD2, McO6Nv_c6YAPZXLgH

<1>TLVER4XMUn.         TypInv => TEJtP
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ubJULuad4PEo.         TEJtP' => CoreTypeOK'
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design
\* T2M-END R2M0691_PdRDPort_PdProofBase


<1>K1Rdt8.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jmSmRiUer8x2Pp.        
  /\ NP \in Nat /\ 0 \in 0..NP /\ 0 \in 0..NR /\ 0 \in 0..MG
  /\ 0 \in 0..PS /\ 0 \in -1..PS /\ 0 \in 0..MX /\ 0 \in 0..MaxFail
  /\ 1 \in 1..(MX+1) /\ 1 \in 0..PS /\ 1 \in -1..PS
  /\ 0 \notin Inst /\ 0 \notin Pages /\ 0 \notin Rq /\ 0 \notin Gens /\ 0 \notin Xids
  BY Sizes, SMTT(10), Location, Design DEF Inst, NL, Pages, Rq, Gens, Xids, Sizes, Location, Design
\* T2M-END R2M0702_PdRDPort_PdD2PageTypes


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

<1>jEpjrevi4yov.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DReadDone(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, rd, rg, rhit, rp, rpe, rpg, rt, rx, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>jEpjrevi4yov, Sizes, Location, Design, ZenonT(5) DEF DReadDone, DStartRun, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lj6TLHCRSebC4evFzFNGyYT.        
  ASSUME NEW S, NEW T, NEW f \in [S -> SUBSET T], NEW q \in S, NEW e, f[q] = {}
  PROVE [f EXCEPT ![q] = @ \cup {e}] = [f EXCEPT ![q] = {e}]
<2> USE ONLY <1>lj6TLHCRSebC4evFzFNGyYT, Sizes, Location, Design
<2>1. f[q] \cup {e} = {e}
  BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY ONLY <2>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0837_PdRDPort_D2Finite_PdEmptyUnionA


<1>kIY9yVDTy6Cnr.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE LET q == rpg[j][r] x == rx[j][r] g == rg[j][r] IN
        /\ j \in DInst /\ Mode = "pull" /\ ph[j][r] = "rd"
        /\ q \in Pages /\ Loc(q) = j /\ g \in Gens /\ g <= gen[r]
        /\ ~rhit[j][r] /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = g
        /\ x \in Xids /\ x < nx /\ xr[x] = r /\ xg[x] = g /\ xdst[x] = q
        /\ iv[x] = "cqe" /\ hw[x] = "stop" /\ xlt[x] = xnt[x] /\ xnt[x] = NTok(r,g)
        /\ led[q] = {} /\ sfly[q] = {} /\ sled[q] = {}
        /\ (hok[x] => ptl[q] = NTok(r,g))
<2> USE ONLY <1>kIY9yVDTy6Cnr, Sizes, Location, Design
<2>1. K2 /\ K3 /\ K8 /\ K9 /\ K10 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K10, V21_Inv_K2, V21_Inv_K3, V21_Inv_K8, V21_Inv_K9, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. IsD(j) /\ Mode = "pull" /\ ph[j][r] = "rd" /\ iv[rx[j][r]] = "cqe" /\ led[rpg[j][r]] = {}
  BY SMTT(10), Sizes, Location, Design DEF DReadDone, Sizes, Location, Design
<2>3. j \in DInst /\ Active(j,r) /\ ~rhit[j][r]
  BY <2>1, <2>2, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Active, K9, Sizes, Location, Design
<2>4. rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ rg[j][r] \in Gens /\ rg[j][r] <= gen[r]
       /\ pst[rpg[j][r]] = "priv" /\ pr[rpg[j][r]] = r /\ pgn[rpg[j][r]] = rg[j][r]
  BY <2>1, <2>2, <2>3, <1>VBlwMBLC5pBW9rEeNkh7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. rx[j][r] \in Xids /\ rx[j][r] < nx /\ xr[rx[j][r]] = r /\ xg[rx[j][r]] = rg[j][r]
       /\ xdst[rx[j][r]] = rpg[j][r] /\ sfly[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {}
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K9, Sizes, Location, Design
<2>6. hw[rx[j][r]] = "stop" /\ xlt[rx[j][r]] = xnt[rx[j][r]] /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <2>1, <2>2, <2>5, Design, SMTT(10), Sizes, Location DEF K2, K3, CqeHw, XX2v, Xids, Sizes, Location, Design
<2>7. hok[rx[j][r]] => ptl[rpg[j][r]] = NTok(r,rg[j][r])
  BY <2>1, <2>2, <2>4, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF K10, OwnedBy, Sizes, Location, Design
<2>8. QED BY <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EcclSb9YoHpDCL.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE McO6Nv_c6YAPZXLgH(j,r)
        /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,
                       xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,xst,nx,crep,dsucc,gbad>>
<2> USE ONLY <1>EcclSb9YoHpDCL, Sizes, Location, Design
<2>1. sBjpCf /\ a4GqBP /\ vn9M /\ jyWjj /\ eWP7z1
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. rpg[j][r] \in Pages /\ sfly[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {}
       /\ hw[rx[j][r]] = "stop" /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <1>kIY9yVDTy6Cnr, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, <1>lj6TLHCRSebC4evFzFNGyYT, <1>jEpjrevi4yov, Design, SMTT(10), Sizes, Location DEF DReadDone, DStartRun, McO6Nv_c6YAPZXLgH, sBjpCf, a4GqBP, vn9M, jyWjj, eWP7z1, rtV, instV, kV, xV, Sizes, Location, Design
\* T2M-END R2M0838_PdRDPort_PdD2DReadDoneEffect


<1>PSwx5anYZR8O23cZGA.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE ItYdB' /\ RIu4' /\ VTew' /\ JTuv' /\ RLaS' /\ gnQB' /\ txvQrA7' /\ lcBzRZJ' /\ AZlSME' /\ MDTwQr' /\ Y4aUFf' /\ tqQeS' /\ oGG7' /\ bNpAu' /\ fdIJv' /\ sld6' /\ BDN6_c' /\ vwKWM' /\ ZhBZ' /\ HiUz' /\ qcWy' /\ I3KH' /\ Vikm' /\ KbhysL' /\ bpmgv4' /\ loK6p' /\ ychB' /\ tBG7n' /\ LGvs' /\ H3aTc' /\ uq0GF' /\ XX2v' /\ WDYhkn' /\ XIw5jsz' /\ kmCLbA'
<2> USE ONLY <1>PSwx5anYZR8O23cZGA, Sizes, Location, Design
<2>1. TEJtP /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,iv,xst,xlt,nx,crep,dsucc,gbad>>
  BY <1>TLVER4XMUn, <1>jEpjrevi4yov, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, oGG7, bNpAu, fdIJv, sld6, BDN6_c, vwKWM, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QN8GqodOZFtibPWvkNrE.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE PageTypesD2'
<2> USE ONLY <1>QN8GqodOZFtibPWvkNrE, Sizes, Location, Design
<2>1. PageTypesD2 /\ loK6p /\ rpg[j][r] \in Pages /\ rg[j][r] \in Gens /\ rx[j][r] \in Xids /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <1>TLVER4XMUn, <1>kIY9yVDTy6Cnr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, PageTypesD2, Sizes, Location, Design
<2>2. McO6Nv_c6YAPZXLgH(j,r)
  BY <1>EcclSb9YoHpDCL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. NTok(r,rg[j][r]) \in 0..PS
  BY <2>1, SMTT(10), Sizes, Location, Design DEF loK6p, Sizes, Location, Design
<2>4. CASE hok[rx[j][r]]
<3>1. jyWjj' /\ a4GqBP'
  BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, PageTypesD2, jyWjj, a4GqBP, Tag, Sizes, Location, Design
<3>2. QED BY <2>1, <2>2, <2>4, <3>1, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, PageTypesD2, X6zX5, xhIfp, gv2_, PwqP6, ZpUxx, AtabIBD, Sizes, Location, Design
<2>5. CASE ~hok[rx[j][r]]
<3>1. X6zX5'
  BY <2>1, <2>2, <2>5, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, PageTo, FreeOrDrain, PageTypesD2, X6zX5, Sizes, Location, Design
<3>2. xhIfp'
  BY <2>1, <2>2, <2>5, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, PageTo, FreeOrDrain, PageTypesD2, xhIfp, Sizes, Location, Design
<3>3. gv2_'
  BY <2>1, <2>2, <2>5, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, PageTo, FreeOrDrain, PageTypesD2, gv2_, Sizes, Location, Design
<3>4. PwqP6'
  BY <2>1, <2>2, <2>5, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, PageTo, FreeOrDrain, PageTypesD2, PwqP6, Sizes, Location, Design
<3>5. jyWjj'
  BY <2>1, <2>2, <2>5, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, PageTo, FreeOrDrain, PageTypesD2, jyWjj, Sizes, Location, Design
<3>6. ZpUxx'
  BY <2>1, <2>2, <2>5, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, PageTo, FreeOrDrain, PageTypesD2, ZpUxx, Sizes, Location, Design
<3>7. a4GqBP'
  BY <2>1, <2>2, <2>5, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, PageTo, FreeOrDrain, PageTypesD2, a4GqBP, Sizes, Location, Design
<3>8. AtabIBD'
  BY <2>1, <2>2, <2>5, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF McO6Nv_c6YAPZXLgH, PageTo, FreeOrDrain, PageTypesD2, AtabIBD, Sizes, Location, Design
<3>9. QED BY <3>1, <3>2, <3>3, <3>4, <3>5, <3>6, <3>7, <3>8, SMTT(10), Sizes, Location, Design DEF PageTypesD2, Sizes, Location, Design
<2>6. QED BY <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NTSv7F2ZdTcLdSw.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE vn9M'
<2> USE ONLY <1>NTSv7F2ZdTcLdSw, Sizes, Location, Design
<2>1. vn9M /\ rpg[j][r] \in Pages /\ rg[j][r] \in Gens /\ rx[j][r] \in Xids /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <1>TLVER4XMUn, <1>kIY9yVDTy6Cnr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. McO6Nv_c6YAPZXLgH(j,r)
  BY <1>EcclSb9YoHpDCL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF vn9M, McO6Nv_c6YAPZXLgH, PhSet, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tRXt8npg2A3bWhR4w.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE ZCaSEo'
<2> USE ONLY <1>tRXt8npg2A3bWhR4w, Sizes, Location, Design
<2>1. ZCaSEo /\ rpg[j][r] \in Pages /\ rg[j][r] \in Gens /\ rx[j][r] \in Xids /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <1>TLVER4XMUn, <1>kIY9yVDTy6Cnr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. McO6Nv_c6YAPZXLgH(j,r)
  BY <1>EcclSb9YoHpDCL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF ZCaSEo, McO6Nv_c6YAPZXLgH, Bump, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rPEYp036Rg7D9nQN.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE QdnU2'
<2> USE ONLY <1>rPEYp036Rg7D9nQN, Sizes, Location, Design
<2>1. QdnU2 /\ rpg[j][r] \in Pages /\ rg[j][r] \in Gens /\ rx[j][r] \in Xids /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <1>TLVER4XMUn, <1>kIY9yVDTy6Cnr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. McO6Nv_c6YAPZXLgH(j,r)
  BY <1>EcclSb9YoHpDCL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF QdnU2, McO6Nv_c6YAPZXLgH, Msg, MsgT, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zHN4Y8xiCCTzfBYQW.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE sBjpCf'
<2> USE ONLY <1>zHN4Y8xiCCTzfBYQW, Sizes, Location, Design
<2>1. sBjpCf /\ loK6p /\ rpg[j][r] \in Pages /\ rg[j][r] \in Gens /\ rx[j][r] \in Xids /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <1>TLVER4XMUn, <1>kIY9yVDTy6Cnr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. McO6Nv_c6YAPZXLgH(j,r)
  BY <1>EcclSb9YoHpDCL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF sBjpCf, McO6Nv_c6YAPZXLgH, Tag, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dOrsAARqJk685mFM8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE eWP7z1'
<2> USE ONLY <1>dOrsAARqJk685mFM8, Sizes, Location, Design
<2>1. eWP7z1 /\ rpg[j][r] \in Pages /\ rg[j][r] \in Gens /\ rx[j][r] \in Xids /\ xnt[rx[j][r]] = NTok(r,rg[j][r])
  BY <1>TLVER4XMUn, <1>kIY9yVDTy6Cnr, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. McO6Nv_c6YAPZXLgH(j,r)
  BY <1>EcclSb9YoHpDCL, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF eWP7z1, McO6Nv_c6YAPZXLgH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ctCrL1fkkFQ3S.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DReadDone(j,r)
  PROVE CoreTypeOK'
<2> USE ONLY <1>ctCrL1fkkFQ3S, Sizes, Location, Design
<2>1. TEJtP'
  BY <1>PSwx5anYZR8O23cZGA, <1>QN8GqodOZFtibPWvkNrE, <1>NTSv7F2ZdTcLdSw, <1>tRXt8npg2A3bWhR4w, <1>rPEYp036Rg7D9nQN, <1>zHN4Y8xiCCTzfBYQW, <1>dOrsAARqJk685mFM8, SMTT(10), Sizes, Location, Design DEF TEJtP, PageTypesD2, Sizes, Location, Design
<2>2. QED BY <2>1, <1>ubJULuad4PEo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0839_PdRDPort_PdD2DReadDoneTypes


<1> QED BY <1>ctCrL1fkkFQ3S, Sizes, Location, Design DEF Sizes, Location, Design
====
