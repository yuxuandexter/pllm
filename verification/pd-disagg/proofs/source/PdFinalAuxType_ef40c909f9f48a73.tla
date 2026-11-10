---- MODULE PdFinalAuxType_ef40c909f9f48a73 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_ef40c909f9f48a73 ==        
  ASSUME Sizes, Location, Design,
         NEW x \in Xids, PinInv, DBadLen(x)
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

           eTGFkYYLEEr9b(x) == Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]] = xg[x] /\ rx[xd[x]][xr[x]] = x


           AKc36xQrbcwQ8AX(x) ==
             /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] # xnt[x]
             /\ pst[xdst[x]] \in {"priv","drain"} /\ x \in led[xdst[x]]
             /\ xst' = [xst EXCEPT ![x] = "failed"]
             /\ ph' = IF eTGFkYYLEEr9b(x) THEN [ph EXCEPT ![xd[x]][xr[x]] = "end"] ELSE ph
             /\ drep' = IF eTGFkYYLEEr9b(x) THEN [drep EXCEPT ![xr[x]][xg[x]] = Bump(@)] ELSE drep
             /\ net' = IF eTGFkYYLEEr9b(x) THEN net \cup {Msg("reply",xd[x],0,xr[x],xg[x],0,0,0,FALSE)} ELSE net
             /\ IF eTGFkYYLEEr9b(x)
                 THEN PageTo(xdst[x], IF led[xdst[x]] \ {x} = {} /\ sled[xdst[x]] = {} /\ ~PinBlocks(xdst[x]) THEN "free" ELSE "drain",0,led[xdst[x]] \ {x},sled[xdst[x]])
                 ELSE EvidenceAt(xdst[x],x)

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, PageTypesD2, eTGFkYYLEEr9b, AKc36xQrbcwQ8AX

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

<1>dEpIubzbA3.        
  ASSUME NEW x \in Xids, DBadLen(x)
  PROVE UNCHANGED <<alive, crep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>dEpIubzbA3, Sizes, Location, Design, ZenonT(5) DEF DBadLen, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jmSmRiUer8x2Pp.        
  /\ NP \in Nat /\ 0 \in 0..NP /\ 0 \in 0..NR /\ 0 \in 0..MG
  /\ 0 \in 0..PS /\ 0 \in -1..PS /\ 0 \in 0..MX /\ 0 \in 0..MaxFail
  /\ 1 \in 1..(MX+1) /\ 1 \in 0..PS /\ 1 \in -1..PS
  /\ 0 \notin Inst /\ 0 \notin Pages /\ 0 \notin Rq /\ 0 \notin Gens /\ 0 \notin Xids
  BY ONLY Sizes, SMTT(5) DEF Inst, NL, Pages, Rq, Gens, Xids, Sizes
\* T2M-END R2M0702_PdRDPort_PdD2PageTypes


<1>VLROWBcOqe16ENnb.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>COZbdUc0j3ifgnaCHg.        
  ASSUME NEW x \in Xids, XX2v, K2, x < nx
  PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>COZbdUc0j3ifgnaCHg, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, XX2v, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nbt9Ybbxl0y3.        
  ASSUME NEW x \in Xids, PinInv, xk[x] = "wr", xst[x] = "posted"
  PROVE /\ x < nx /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>nbt9Ybbxl0y3, Sizes, Location, Design
<2>1. K1 /\ K2 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, XX2v, Xids, Sizes, Location, Design
<2>3. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
       /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
       /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
  BY <2>1, <2>2, <1>COZbdUc0j3ifgnaCHg, SMTT(10), Sizes, Location, Design DEF ExpPage, ExpInst, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t2nskagTic.        
  ASSUME NEW x \in Xids, NEW m \in net, PinInv, m.t = "notice", m.x = x
  PROVE /\ m.ok = hok[x] /\ m.pg = xlt[x] /\ iv[x] = "cqe"
        /\ (m.ok => hw[x] = "stop")
<2> USE ONLY <1>t2nskagTic, Sizes, Location, Design
<2>1. K12
  BY SMTT(10), V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. m.ok = hok[x] /\ m.pg = xlt[x] /\ iv[x] = "cqe" /\ hw[x] \in CqeHw(x)
  BY <2>1, SMTT(10), Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>3. QED BY <2>2, Design, SMTT(10), Sizes, Location DEF CqeHw, Sizes, Location, Design
\* T2M-END R2M0737_PdRDPort_PdD2TransferFacts

\* T2M-SCOPE R2M0746_PdRDPort_PdD2PostedWait
\* T2M-BODY R2M0746_PdRDPort_PdD2PostedWait
\* T2M-LOCAL-VISIBILITY

<1>zmK3iQq0h2S.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE /\ xk[x] = "wr" /\ xst[x] = "posted" /\ x < nx
        /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] \in PInst /\ xd[x] \in DInst /\ xd[x] \in Inst /\ xp[x] \in Inst
        /\ xdst[x] \in Pages /\ Loc(xdst[x]) = xd[x]
        /\ xd[x] = hd[xr[x]][xg[x]] /\ xp[x] = hp[xr[x]][xg[x]]
<2> USE ONLY <1>zmK3iQq0h2S, Sizes, Location, Design
<2>1. xk[x] = "wr" /\ xst[x] = "posted"
  BY SMTT(10), Sizes, Location, Design DEF DBadLen, Sizes, Location, Design
<2>2. QED BY <2>1, <1>nbt9Ybbxl0y3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xDQlMm2aVfSh.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE AKc36xQrbcwQ8AX(x) /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,xlt,hw,hok,iv,nx,crep,dsucc,gbad>>
<2> USE ONLY <1>xDQlMm2aVfSh, Sizes, Location, Design
<2>1. \A m \in net : (m.t = "notice" /\ m.x = x) =>
          m.ok = hok[x] /\ m.pg = xlt[x] /\ (m.ok => hw[x] = "stop")
  BY <1>t2nskagTic, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED
  BY <2>1, Design, SMTT(10), Sizes, Location DEF DBadLen, AKc36xQrbcwQ8AX, eTGFkYYLEEr9b, rtV, instV, kV, Sizes, Location, Design
\* T2M-END R2M0738_PdRDPort_PdD2DBadLenEffect


<1>tI00EhJO6tsyVtTG.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE ItYdB' /\ RIu4' /\ VTew' /\ JTuv' /\ RLaS' /\ gnQB' /\ txvQrA7' /\ lcBzRZJ' /\ AZlSME' /\ MDTwQr' /\ Y4aUFf' /\ tqQeS' /\ oGG7' /\ bNpAu' /\ fdIJv' /\ sld6' /\ BDN6_c' /\ vwKWM' /\ eWP7z1' /\ sBjpCf' /\ ZhBZ' /\ HiUz' /\ qcWy' /\ I3KH' /\ Vikm' /\ KbhysL' /\ bpmgv4' /\ loK6p' /\ ychB' /\ tBG7n' /\ LGvs' /\ uq0GF' /\ XX2v' /\ WDYhkn' /\ XIw5jsz' /\ kmCLbA'
<2> USE ONLY <1>tI00EhJO6tsyVtTG, Sizes, Location, Design
<2>1. TEJtP /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,iv,xlt,nx,crep,dsucc,gbad>>
  BY <1>TLVER4XMUn, <1>dEpIubzbA3, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, oGG7, bNpAu, fdIJv, sld6, BDN6_c, vwKWM, eWP7z1, sBjpCf, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, uq0GF, XX2v, WDYhkn, XIw5jsz, kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iiFeygmQCDpzCMDQ4Z.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE PageTypesD2'
<2> USE ONLY <1>iiFeygmQCDpzCMDQ4Z, Sizes, Location, Design
<2>1. PageTypesD2 /\ loK6p /\ xd[x] \in Inst /\ xp[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xdst[x] \in Pages
  BY <1>TLVER4XMUn, <1>zmK3iQq0h2S, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, PageTypesD2, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x)
  BY <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. X6zX5'
  BY <2>1, <2>2, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, EvidenceAt, AfterEv, PageTo, PageTypesD2, X6zX5, X6zX5, ZpUxx, a4GqBP, Sizes, Location, Design
<2>4. xhIfp'
  BY <2>1, <2>2, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, EvidenceAt, AfterEv, PageTo, PageTypesD2, xhIfp, X6zX5, ZpUxx, a4GqBP, Sizes, Location, Design
<2>5. gv2_'
  BY <2>1, <2>2, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, EvidenceAt, AfterEv, PageTo, PageTypesD2, gv2_, X6zX5, ZpUxx, a4GqBP, Sizes, Location, Design
<2>6. PwqP6'
  BY <2>1, <2>2, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, EvidenceAt, AfterEv, PageTo, PageTypesD2, PwqP6, X6zX5, ZpUxx, a4GqBP, Sizes, Location, Design
<2>7. jyWjj'
  BY <2>1, <2>2, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, EvidenceAt, AfterEv, PageTo, PageTypesD2, jyWjj, X6zX5, ZpUxx, a4GqBP, Sizes, Location, Design
<2>8. ZpUxx'
  BY <2>1, <2>2, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, EvidenceAt, AfterEv, PageTo, PageTypesD2, ZpUxx, X6zX5, ZpUxx, a4GqBP, Sizes, Location, Design
<2>9. a4GqBP'
  BY <2>1, <2>2, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, EvidenceAt, AfterEv, PageTo, PageTypesD2, a4GqBP, X6zX5, ZpUxx, a4GqBP, Sizes, Location, Design
<2>10. AtabIBD'
  BY <2>1, <2>2, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF AKc36xQrbcwQ8AX, EvidenceAt, AfterEv, PageTo, PageTypesD2, AtabIBD, X6zX5, ZpUxx, a4GqBP, Sizes, Location, Design
<2>11. QED BY <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, <2>9, <2>10, SMTT(10), Sizes, Location, Design DEF PageTypesD2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tQkHenhmuA8MQ.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE vn9M'
<2> USE ONLY <1>tQkHenhmuA8MQ, Sizes, Location, Design
<2>1. vn9M /\ xd[x] \in Inst /\ xp[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xdst[x] \in Pages
  BY <1>TLVER4XMUn, <1>zmK3iQq0h2S, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x)
  BY <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF vn9M, AKc36xQrbcwQ8AX, PhSet, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PP2YPKdJapPJXI7.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE ZCaSEo'
<2> USE ONLY <1>PP2YPKdJapPJXI7, Sizes, Location, Design
<2>1. ZCaSEo /\ xd[x] \in Inst /\ xp[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xdst[x] \in Pages
  BY <1>TLVER4XMUn, <1>zmK3iQq0h2S, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x)
  BY <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF ZCaSEo, AKc36xQrbcwQ8AX, Bump, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>viesx0S2OgCYJQ.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE QdnU2'
<2> USE ONLY <1>viesx0S2OgCYJQ, Sizes, Location, Design
<2>1. QdnU2 /\ xd[x] \in Inst /\ xp[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xdst[x] \in Pages
  BY <1>TLVER4XMUn, <1>zmK3iQq0h2S, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x)
  BY <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF QdnU2, AKc36xQrbcwQ8AX, Msg, MsgT, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HH16u6RNZ6qLlr.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE H3aTc'
<2> USE ONLY <1>HH16u6RNZ6qLlr, Sizes, Location, Design
<2>1. H3aTc /\ xd[x] \in Inst /\ xp[x] \in Inst /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xdst[x] \in Pages
  BY <1>TLVER4XMUn, <1>zmK3iQq0h2S, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. AKc36xQrbcwQ8AX(x)
  BY <1>xDQlMm2aVfSh, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Sizes, Location, Design DEF H3aTc, AKc36xQrbcwQ8AX, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YbQclmR0JDs.        
  ASSUME NEW x \in Xids, PinInv, DBadLen(x)
  PROVE CoreTypeOK'
<2> USE ONLY <1>YbQclmR0JDs, Sizes, Location, Design
<2>1. TEJtP'
  BY <1>tI00EhJO6tsyVtTG, <1>iiFeygmQCDpzCMDQ4Z, <1>tQkHenhmuA8MQ, <1>PP2YPKdJapPJXI7, <1>viesx0S2OgCYJQ, <1>HH16u6RNZ6qLlr, SMTT(10), Sizes, Location, Design DEF TEJtP, PageTypesD2, Sizes, Location, Design
<2>2. QED BY <2>1, <1>ubJULuad4PEo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0739_PdRDPort_PdD2DBadLenTypes


<1> QED BY <1>YbQclmR0JDs, Sizes, Location, Design DEF Sizes, Location, Design
====
