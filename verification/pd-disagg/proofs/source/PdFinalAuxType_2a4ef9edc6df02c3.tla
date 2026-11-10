---- MODULE PdFinalAuxType_2a4ef9edc6df02c3 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_2a4ef9edc6df02c3 ==          
  ASSUME Sizes, Location, Design,
         NEW j \in Inst, PinInv, DRelUnneeded(j)
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


<1>K1Rdt8.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BRv2xUQt7sFffsT.        
  ASSUME NEW j \in Inst, DRelUnneeded(j)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, led, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>BRv2xUQt7sFffsT, Sizes, Location, Design, ZenonT(5) DEF DRelUnneeded, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>o3HyLvF96583vIBAoz8.        
  ASSUME NEW j \in Inst, DRelUnneeded(j)
  PROVE \E m \in net : m.x \in Xids /\ net' = net \cup {Msg("relsrc",j,m.fr,m.r,m.g,m.x,0,0,FALSE)}
  BY ONLY <1>o3HyLvF96583vIBAoz8, Sizes, Location, Design, Design, SMTT(20) DEF DRelUnneeded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RItZrL2mfL0VvsuFt.        
  ASSUME NEW j \in Inst, PinInv, DRelUnneeded(j)
  PROVE QdnU2'
<2> USE ONLY <1>RItZrL2mfL0VvsuFt, Sizes, Location, Design
<2>1. QdnU2
  BY SMTT(20), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \E m \in net : m.x \in Xids /\ net' = net \cup {Msg("relsrc",j,m.fr,m.r,m.g,m.x,0,0,FALSE)}
  BY SMTT(20), <1>o3HyLvF96583vIBAoz8, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, Location, <1>K1Rdt8, SMTT(20), Sizes, Design DEF Msg, MsgT, QdnU2, Xids, KPages, Sizes, Location, Design
\* T2M-END R2M1015_PdRDPort_PdDRelUnneededNet


<1>itifXzil1P8ksiT.        
  ASSUME LGvs, NEW x \in Xids, iv' = [iv EXCEPT ![x] = "nopost"]
  PROVE LGvs'
  BY ONLY <1>itifXzil1P8ksiT, Sizes, Location, Design, SMTT(5) DEF LGvs, Sizes, Location, Design
\* T2M-END R2M1016_PdRDPort_PdMsgExtra


<1>AvTUJLbEXR2DYGUIncmW.        
  ASSUME NEW j \in Inst, PinInv, DRelUnneeded(j)
  PROVE txvQrA7' /\ WDYhkn' /\ ZCaSEo' /\ XIw5jsz' /\ kmCLbA' /\ ItYdB' /\ gnQB' /\ tBG7n' /\ RLaS' /\ ychB' /\ Y4aUFf' /\ MDTwQr' /\ tqQeS' /\ ZpUxx' /\ lcBzRZJ' /\ XX2v' /\ PwqP6' /\ vn9M' /\ jyWjj' /\ xhIfp' /\ gv2_' /\ AtabIBD' /\ X6zX5' /\ vwKWM' /\ eWP7z1' /\ JTuv' /\ oGG7' /\ BDN6_c' /\ VTew' /\ fdIJv' /\ bNpAu' /\ RIu4' /\ sld6' /\ sBjpCf' /\ a4GqBP' /\ AZlSME' /\ Vikm' /\ bpmgv4' /\ HiUz' /\ qcWy' /\ uq0GF' /\ loK6p' /\ I3KH' /\ ZhBZ' /\ KbhysL' /\ H3aTc'
<2> USE ONLY <1>AvTUJLbEXR2DYGUIncmW, Sizes, Location, Design
<2>1. TEJtP
  BY SMTT(5), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, led, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY SMTT(5), <1>BRv2xUQt7sFffsT, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, ZenonT(5), Sizes, Location, Design DEF TEJtP, txvQrA7, WDYhkn, ZCaSEo, XIw5jsz, kmCLbA, ItYdB, gnQB, tBG7n, RLaS, ychB, Y4aUFf, MDTwQr, tqQeS, ZpUxx, lcBzRZJ, XX2v, PwqP6, vn9M, jyWjj, xhIfp, gv2_, AtabIBD, X6zX5, vwKWM, eWP7z1, JTuv, oGG7, BDN6_c, VTew, fdIJv, bNpAu, RIu4, sld6, sBjpCf, a4GqBP, AZlSME, Vikm, bpmgv4, HiUz, qcWy, uq0GF, loK6p, I3KH, ZhBZ, KbhysL, H3aTc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Gd0I9cCsBDSVzKMFjG.        
  ASSUME NEW j \in Inst, DRelUnneeded(j)
  PROVE \E x \in Xids : iv' = [iv EXCEPT ![x] = "nopost"]
  BY ONLY <1>Gd0I9cCsBDSVzKMFjG, Sizes, Location, Design, ZenonT(5) DEF DRelUnneeded, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KgmZ9QhDvPtwX8tJ1.        
  ASSUME NEW j \in Inst, PinInv, DRelUnneeded(j)
  PROVE LGvs'
<2> USE ONLY <1>KgmZ9QhDvPtwX8tJ1, Sizes, Location, Design
<2>1. LGvs
  BY SMTT(5), <1>TLVER4XMUn, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \E x \in Xids : iv' = [iv EXCEPT ![x] = "nopost"]
  BY SMTT(5), <1>Gd0I9cCsBDSVzKMFjG, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY SMTT(5), <2>1, <2>2, <1>itifXzil1P8ksiT, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>K9uco9BKHxBSR7s5.          
  ASSUME NEW j \in Inst, PinInv, DRelUnneeded(j)
  PROVE CoreTypeOK'
<2> USE ONLY <1>K9uco9BKHxBSR7s5, Sizes, Location, Design
<2>1. TEJtP'
  BY SMTT(5), <1>AvTUJLbEXR2DYGUIncmW, <1>RItZrL2mfL0VvsuFt, <1>KgmZ9QhDvPtwX8tJ1, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED
  BY SMTT(5), <2>1, <1>ubJULuad4PEo, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1017_PdRDPort_PdDRelUnneededTypes


<1> QED BY <1>K9uco9BKHxBSR7s5, Sizes, Location, Design DEF Sizes, Location, Design
====
