---- MODULE PdFinalAuxType_8a1e7e9a2c567b2e ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_8a1e7e9a2c567b2e ==        
  ASSUME Sizes, Location, Design,
         NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
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

           Z4FEHDiV(p) == {r \in Rq : ph[Loc(p)][r] \in {"run","ovl"} /\ rhit[Loc(p)][r] /\ rpg[Loc(p)][r] = p}

           \* T2M-LOCAL-VISIBILITY

           NA18aiZML44EB(j,r) ==
             /\ IF rhit[j][r]
                     THEN /\ prefc' = [prefc EXCEPT ![rpg[j][r]] = @ - 1]
                          /\ pst' = [p \in Pages |-> IF p \in GrownOf(j,r) THEN GTo(p) ELSE pst[p]]
                          /\ GrownOwn(GrownOf(j,r)) /\ UNCHANGED <<led,sled,pqp>>
                     ELSE PageToG(rpg[j][r],GiveUpTo(rpg[j][r],"abort"),rpe[j][r],led[rpg[j][r]],sled[rpg[j][r]],GrownOf(j,r))
             /\ UNCHANGED <<ptl,pvis,sfly,kpin,kfly,krs,hw,xr,xg,xk,xsrc,xdst,xnt,xlt,hok,xst,nx>>

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, Z4FEHDiV, NA18aiZML44EB

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

<1>HzccRCldH.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DAbort(j,r)
  PROVE UNCHANGED <<alive, crep, dsucc, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>HzccRCldH, Sizes, Location, Design, ZenonT(5) DEF DAbort, DEnd, GrownOwn, PageToG, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

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

<1>f8BuFvgvx.        
  ASSUME NEW p \in Pages
  PROVE IsFiniteSet(Z4FEHDiV(p)) /\ Cardinality(Z4FEHDiV(p)) \in 0..NR
<2> USE ONLY <1>f8BuFvgvx, Sizes, Location, Design
<2>0. NR \in Int /\ 1 \in Int /\ 1 <= NR
  BY Sizes, SMTT(10), Location, Design DEF Sizes, Location, Design
<2>1. IsFiniteSet(Rq) /\ Cardinality(Rq) = NR
  BY ONLY <2>0, FS_Interval, IsaT(10), Sizes, Location, Design DEF Rq, Sizes, Location, Design
<2>2. IsFiniteSet(Z4FEHDiV(p)) /\ Cardinality(Z4FEHDiV(p)) <= NR
  BY <2>1, FS_Subset, SMTT(10), Sizes, Location, Design DEF Z4FEHDiV, Sizes, Location, Design
<2>3. QED BY <2>2, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SycOyKc1k0LaMkX0N.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, IsD(j), Active(j,r), rhit[j][r]
  PROVE prefc[rpg[j][r]] \in 1..NR
<2> USE ONLY <1>SycOyKc1k0LaMkX0N, Sizes, Location, Design
<2>1. K7 /\ K8 /\ K9 /\ j \in DInst
  BY <1>VLROWBcOqe16ENnb, SMTT(10), V21_Inv_K7, V21_Inv_K8, V21_Inv_K9, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j /\ pst[rpg[j][r]] = "shared" /\ ph[j][r] \in {"run","ovl"}
  BY <2>1, <1>VBlwMBLC5pBW9rEeNkh7, <1>KUUrHEFvbxmFhGeG2, SMTT(10), Sizes, Location, Design DEF Active, K9, Sizes, Location, Design
<2>3a. prefc[rpg[j][r]] = NHits(rpg[j][r])
  BY ONLY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K7, Sizes, Location, Design
<2>3b. r \in Z4FEHDiV(rpg[j][r])
  BY <2>2, SMTT(10), Sizes, Location, Design DEF Z4FEHDiV, Sizes, Location, Design
<2>3. r \in Z4FEHDiV(rpg[j][r]) /\ prefc[rpg[j][r]] = Cardinality(Z4FEHDiV(rpg[j][r]))
  BY <2>3a, <2>3b, SMTT(10), Sizes, Location, Design DEF NHits, Z4FEHDiV, Sizes, Location, Design
<2>4. IsFiniteSet(Z4FEHDiV(rpg[j][r])) /\ Cardinality(Z4FEHDiV(rpg[j][r])) \in 0..NR
  BY <2>2, <1>f8BuFvgvx, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, FS_EmptySet, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jmSmRiUer8x2Pp.        
  /\ NP \in Nat /\ 0 \in 0..NP /\ 0 \in 0..NR /\ 0 \in 0..MG
  /\ 0 \in 0..PS /\ 0 \in -1..PS /\ 0 \in 0..MX /\ 0 \in 0..MaxFail
  /\ 1 \in 1..(MX+1) /\ 1 \in 0..PS /\ 1 \in -1..PS
  /\ 0 \notin Inst /\ 0 \notin Pages /\ 0 \notin Rq /\ 0 \notin Gens /\ 0 \notin Xids
  BY Sizes, SMTT(10), Location, Design DEF Inst, NL, Pages, Rq, Gens, Xids, Sizes, Location, Design
\* T2M-END R2M0702_PdRDPort_PdD2PageTypes


<1>H6vDv84Wz3n8J.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, IsD(j), Active(j,r)
  PROVE rg[j][r] \in Gens /\ drep[r][rg[j][r]] = 0
<2> USE ONLY <1>H6vDv84Wz3n8J, Sizes, Location, Design
<2>1. K8 /\ K9 /\ j \in DInst
  BY Sizes, SMTT(10), V21_Inv_K8, V21_Inv_K9, Location, Design DEF IsD, Inst, DInst, NL, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF K8, K9, Active, Sizes, Location, Design
\* T2M-END R2M0697_PdRDPort_PdOneReplyIncrement


<1>iUWHseU1gV.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
  PROVE /\ IsD(j) /\ j \in DInst /\ Active(j,r)
        /\ rpg[j][r] \in Pages /\ Loc(rpg[j][r]) = j
        /\ rg[j][r] \in Gens /\ rg[j][r] <= gen[r]
        /\ drep[r][rg[j][r]] = 0
<2> USE ONLY <1>iUWHseU1gV, Sizes, Location, Design
<2>1. IsD(j) /\ Active(j,r) /\ K8
  BY SMTT(10), V21_Inv_K8, Sizes, Location, Design DEF DAbort, Active, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>VBlwMBLC5pBW9rEeNkh7, <1>H6vDv84Wz3n8J, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yvv6v1HDj131.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DAbort(j,r)
  PROVE /\ ph' = [ph EXCEPT ![j][r] = "end"]
        /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(drep[r][rg[j][r]])]
        /\ UNCHANGED dsucc
        /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,crep,rg,rpg,rpe,rx,rhit>>
  BY ONLY <1>yvv6v1HDj131, Sizes, Location, Design, SMTT(10) DEF DAbort, DEnd, rtV, instV, kV, recV, pgV, xV, ghV, vars, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xmCq4YL8lyhebGx.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DAbort(j,r)
  PROVE NA18aiZML44EB(j,r)
  BY ONLY <1>xmCq4YL8lyhebGx, Sizes, Location, Design, Design, SMTT(10) DEF NA18aiZML44EB, DAbort, DEnd, rtV, instV, kV, recV, pgV, xV, ghV, vars, Sizes, Location, Design
\* T2M-END R2M0698_PdRDPort_PdD2DAbortEffect


<1>nxlytK1JA64Sf.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
  PROVE UNCHANGED gbad
<2> USE ONLY <1>nxlytK1JA64Sf, Sizes, Location, Design
<2>1. kmCLbA
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \E m \in net : GenOK(j,r,m.g) /\ gbad' = (gbad \/ m.g # rg[j][r])
  BY ZenonT(10), Sizes, Location, Design DEF DAbort, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Design, SMTT(10), Sizes, Location DEF GenOK, kmCLbA, Sizes, Location, Design
\* T2M-END R2M0699_PdRDPort_PdD2DAbortBadFrame


<1>ywqyOvAEySjiy.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DAbort(j,r)
  PROVE net' = net \cup {Msg("reply",j,0,r,rg[j][r],0,0,0,FALSE),Msg("abort",j,rpe[j][r],r,rg[j][r],0,0,0,FALSE)} \cup (IF Mode = "push" /\ rx[j][r] \in Xids /\ xst[rx[j][r]] = "posted" THEN {Msg("revoke",j,rpe[j][r],r,rg[j][r],rx[j][r],0,0,FALSE)} ELSE {})
  BY ONLY <1>ywqyOvAEySjiy, Sizes, Location, Design, SMTT(10), Design, Zenon DEF DAbort, DEnd, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>StHMN1YNIAB.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
  PROVE QdnU2'
<2> USE ONLY <1>StHMN1YNIAB, Sizes, Location, Design
<2>1. QdnU2 /\ oGG7 /\ fdIJv
  BY SMTT(10), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. net' = net \cup {Msg("reply",j,0,r,rg[j][r],0,0,0,FALSE),Msg("abort",j,rpe[j][r],r,rg[j][r],0,0,0,FALSE)} \cup (IF Mode = "push" /\ rx[j][r] \in Xids /\ xst[rx[j][r]] = "posted" THEN {Msg("revoke",j,rpe[j][r],r,rg[j][r],rx[j][r],0,0,FALSE)} ELSE {})
  BY SMTT(10), <1>ywqyOvAEySjiy, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, Location, <1>K1Rdt8, SMTT(10), Sizes, Design DEF Msg, MsgT, QdnU2, oGG7, fdIJv, Xids, KPages, Sizes, Location, Design
\* T2M-END R2M0700_PdRDPort_PdD2DAbortNet


<1>K09fGDFZqrjPNZJ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
  PROVE ItYdB' /\ RIu4' /\ VTew' /\ JTuv' /\ RLaS' /\ gnQB' /\ txvQrA7' /\ lcBzRZJ' /\ AZlSME' /\ MDTwQr' /\ Y4aUFf' /\ tqQeS' /\ oGG7' /\ bNpAu' /\ fdIJv' /\ sld6' /\ BDN6_c' /\ vwKWM' /\ eWP7z1' /\ sBjpCf' /\ ZhBZ' /\ HiUz' /\ qcWy' /\ I3KH' /\ Vikm' /\ KbhysL' /\ bpmgv4' /\ loK6p' /\ ychB' /\ tBG7n' /\ LGvs' /\ H3aTc' /\ uq0GF' /\ XX2v' /\ WDYhkn' /\ XIw5jsz' /\ kmCLbA'
<2> USE ONLY <1>K09fGDFZqrjPNZJ, Sizes, Location, Design
<2>1. TEJtP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,iv,xst,xlt,nx,crep,dsucc>>
  BY <1>HzccRCldH, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. UNCHANGED gbad
  BY <1>nxlytK1JA64Sf, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, oGG7, bNpAu, fdIJv, sld6, BDN6_c, vwKWM, eWP7z1, sBjpCf, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pTL6IsT7oQbee.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
  PROVE X6zX5'
<2> USE ONLY <1>pTL6IsT7oQbee, Sizes, Location, Design
<2>1. X6zX5 /\ fdIJv
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. NA18aiZML44EB(j,r) /\ rpg[j][r] \in Pages /\ rg[j][r] \in Gens
       /\ (rhit[j][r] => prefc[rpg[j][r]] \in 1..NR)
  BY <1>xmCq4YL8lyhebGx, <1>iUWHseU1gV, <1>SycOyKc1k0LaMkX0N, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yvv6v1HDj131, <1>jmSmRiUer8x2Pp, Design, SMTT(10), Sizes, Location DEF X6zX5, fdIJv, NA18aiZML44EB, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, Bump, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GqwKHh1QItMi.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
  PROVE gv2_'
<2> USE ONLY <1>GqwKHh1QItMi, Sizes, Location, Design
<2>1. gv2_ /\ fdIJv
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. NA18aiZML44EB(j,r) /\ rpg[j][r] \in Pages /\ rg[j][r] \in Gens
       /\ (rhit[j][r] => prefc[rpg[j][r]] \in 1..NR)
  BY <1>xmCq4YL8lyhebGx, <1>iUWHseU1gV, <1>SycOyKc1k0LaMkX0N, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yvv6v1HDj131, <1>jmSmRiUer8x2Pp, Design, SMTT(10), Sizes, Location DEF gv2_, fdIJv, NA18aiZML44EB, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, Bump, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DTC9Pe92F4GRL.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
  PROVE PwqP6'
<2> USE ONLY <1>DTC9Pe92F4GRL, Sizes, Location, Design
<2>1. PwqP6 /\ fdIJv
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. NA18aiZML44EB(j,r) /\ rpg[j][r] \in Pages /\ rg[j][r] \in Gens
       /\ (rhit[j][r] => prefc[rpg[j][r]] \in 1..NR)
  BY <1>xmCq4YL8lyhebGx, <1>iUWHseU1gV, <1>SycOyKc1k0LaMkX0N, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yvv6v1HDj131, <1>jmSmRiUer8x2Pp, Design, SMTT(10), Sizes, Location DEF PwqP6, fdIJv, NA18aiZML44EB, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, Bump, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hFmnShWnZnPNM.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
  PROVE jyWjj'
<2> USE ONLY <1>hFmnShWnZnPNM, Sizes, Location, Design
<2>1. jyWjj /\ fdIJv
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. NA18aiZML44EB(j,r) /\ rpg[j][r] \in Pages /\ rg[j][r] \in Gens
       /\ (rhit[j][r] => prefc[rpg[j][r]] \in 1..NR)
  BY <1>xmCq4YL8lyhebGx, <1>iUWHseU1gV, <1>SycOyKc1k0LaMkX0N, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yvv6v1HDj131, <1>jmSmRiUer8x2Pp, Design, SMTT(10), Sizes, Location DEF jyWjj, fdIJv, NA18aiZML44EB, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, Bump, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JIgaQe2hrcG5e.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
  PROVE ZpUxx'
<2> USE ONLY <1>JIgaQe2hrcG5e, Sizes, Location, Design
<2>1. ZpUxx /\ fdIJv
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. NA18aiZML44EB(j,r) /\ rpg[j][r] \in Pages /\ rg[j][r] \in Gens
       /\ (rhit[j][r] => prefc[rpg[j][r]] \in 1..NR)
  BY <1>xmCq4YL8lyhebGx, <1>iUWHseU1gV, <1>SycOyKc1k0LaMkX0N, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yvv6v1HDj131, <1>jmSmRiUer8x2Pp, Design, SMTT(10), Sizes, Location DEF ZpUxx, fdIJv, NA18aiZML44EB, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, Bump, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RI1NwtLTKmPq5Z.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
  PROVE a4GqBP'
<2> USE ONLY <1>RI1NwtLTKmPq5Z, Sizes, Location, Design
<2>1. a4GqBP /\ fdIJv
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. NA18aiZML44EB(j,r) /\ rpg[j][r] \in Pages /\ rg[j][r] \in Gens
       /\ (rhit[j][r] => prefc[rpg[j][r]] \in 1..NR)
  BY <1>xmCq4YL8lyhebGx, <1>iUWHseU1gV, <1>SycOyKc1k0LaMkX0N, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yvv6v1HDj131, <1>jmSmRiUer8x2Pp, Design, SMTT(10), Sizes, Location DEF a4GqBP, fdIJv, NA18aiZML44EB, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, Bump, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>QJrCqzq8o5F6vBN.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
  PROVE AtabIBD'
<2> USE ONLY <1>QJrCqzq8o5F6vBN, Sizes, Location, Design
<2>1. AtabIBD /\ fdIJv
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. NA18aiZML44EB(j,r) /\ rpg[j][r] \in Pages /\ rg[j][r] \in Gens
       /\ (rhit[j][r] => prefc[rpg[j][r]] \in 1..NR)
  BY <1>xmCq4YL8lyhebGx, <1>iUWHseU1gV, <1>SycOyKc1k0LaMkX0N, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. prefc' = [p \in Pages |-> prefc'[p]]
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF AtabIBD, NA18aiZML44EB, PageTo, PageToG, Sizes, Location, Design
<2>4. ASSUME NEW p \in Pages PROVE prefc'[p] \in 0..NR
<3>1. CASE rhit[j][r] /\ p = rpg[j][r]
  BY <2>1, <2>2, <3>1, Sizes, SMTT(10), Location, Design DEF AtabIBD, NA18aiZML44EB, Sizes, Location, Design
<3>2. CASE ~rhit[j][r] \/ p # rpg[j][r]
  BY <2>1, <2>2, <3>2, Sizes, SMTT(10), Location, Design DEF AtabIBD, NA18aiZML44EB, PageTo, PageToG, Sizes, Location, Design
<3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF AtabIBD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yaGf0kZUpKSFg.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
  PROVE xhIfp'
<2> USE ONLY <1>yaGf0kZUpKSFg, Sizes, Location, Design
<2>1. xhIfp /\ fdIJv
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. NA18aiZML44EB(j,r) /\ rpg[j][r] \in Pages /\ rg[j][r] \in Gens
       /\ (rhit[j][r] => prefc[rpg[j][r]] \in 1..NR)
  BY <1>xmCq4YL8lyhebGx, <1>iUWHseU1gV, <1>SycOyKc1k0LaMkX0N, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>yvv6v1HDj131, <1>jmSmRiUer8x2Pp, Design, SMTT(10), Sizes, Location DEF xhIfp, fdIJv, NA18aiZML44EB, PageTo, PageToG, GrownOwn, GFr, GTo, GiveUpTo, GiveUpToN, FreeOrDrain, Bump, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fPlvNd4gxUt8.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
  PROVE vn9M'
<2> USE ONLY <1>fPlvNd4gxUt8, Sizes, Location, Design
<2>1. vn9M /\ fdIJv
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. ph' = [ph EXCEPT ![j][r] = "end"]
  BY ONLY <1>fPlvNd4gxUt8, <1>yvv6v1HDj131, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. "end" \in PhSet
  BY ONLY SMTT(20), Sizes, Location, Design DEF PhSet, Sizes, Location, Design
<2>4. QED BY ONLY <1>fPlvNd4gxUt8, <2>1, <2>2, <2>3, SMTT(20), Sizes, Location, Design DEF vn9M, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CeY7RLjTBXcdEQ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
  PROVE ZCaSEo'
<2> USE ONLY <1>CeY7RLjTBXcdEQ, Sizes, Location, Design
<2>1. ZCaSEo /\ fdIJv
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. NA18aiZML44EB(j,r) /\ rpg[j][r] \in Pages /\ rg[j][r] \in Gens
       /\ (rhit[j][r] => prefc[rpg[j][r]] \in 1..NR)
  BY <1>xmCq4YL8lyhebGx, <1>iUWHseU1gV, <1>SycOyKc1k0LaMkX0N, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. drep[r][rg[j][r]] \in 0..2
  BY ONLY <1>CeY7RLjTBXcdEQ, <2>1, <2>2, SMTT(20), Sizes, Location, Design DEF ZCaSEo, Sizes, Location, Design
<2>4. Bump(drep[r][rg[j][r]]) \in 0..2
  BY ONLY <2>3, SMTT(20), Sizes, Location, Design DEF Bump, Sizes, Location, Design
<2>5. drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(drep[r][rg[j][r]])]
  BY ONLY <1>CeY7RLjTBXcdEQ, <1>yvv6v1HDj131, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY ONLY <1>CeY7RLjTBXcdEQ, <2>1, <2>2, <2>4, <2>5, SMTT(20), Sizes, Location, Design DEF ZCaSEo, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gYGKzCKs1C.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DAbort(j,r)
  PROVE CoreTypeOK'
<2> USE ONLY <1>gYGKzCKs1C, Sizes, Location, Design
<2>1. TEJtP'
  BY <1>K09fGDFZqrjPNZJ, <1>StHMN1YNIAB, <1>pTL6IsT7oQbee, <1>GqwKHh1QItMi, <1>DTC9Pe92F4GRL, <1>hFmnShWnZnPNM, <1>JIgaQe2hrcG5e, <1>RI1NwtLTKmPq5Z, <1>QJrCqzq8o5F6vBN, <1>yaGf0kZUpKSFg, <1>fPlvNd4gxUt8, <1>CeY7RLjTBXcdEQ, SMTT(10), Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, <1>ubJULuad4PEo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0703_PdRDPort_PdD2DAbortTypes


<1> QED BY <1>gYGKzCKs1C, Sizes, Location, Design DEF Sizes, Location, Design
====
