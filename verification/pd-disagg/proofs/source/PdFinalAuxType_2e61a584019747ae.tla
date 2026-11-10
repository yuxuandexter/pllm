---- MODULE PdFinalAuxType_2e61a584019747ae ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_2e61a584019747ae ==        
  ASSUME Sizes, Location, Design,
         PinInv, Done, SFollow
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


<1>Ow1CnfDgB.        
  ItYdB /\ UNCHANGED gen => ItYdB'
  BY SMT, Sizes, Location, Design DEF ItYdB, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xkGyx7qF.        
  RIu4 /\ UNCHANGED rt => RIu4'
  BY SMT, Sizes, Location, Design DEF RIu4, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>u1Pr0LE8.        
  VTew /\ UNCHANGED rp => VTew'
  BY SMT, Sizes, Location, Design DEF VTew, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HfZbGSUR.        
  JTuv /\ UNCHANGED rd => JTuv'
  BY SMT, Sizes, Location, Design DEF JTuv, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yXJbrVoE.        
  RLaS /\ UNCHANGED hp => RLaS'
  BY SMT, Sizes, Location, Design DEF RLaS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gdp9rxXV.        
  gnQB /\ UNCHANGED hd => gnQB'
  BY SMT, Sizes, Location, Design DEF gnQB, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hI17DH4Jlbz.        
  txvQrA7 /\ UNCHANGED alive => txvQrA7'
  BY SMT, Sizes, Location, Design DEF txvQrA7, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>igrWjU8ZSDS.        
  lcBzRZJ /\ UNCHANGED nfail => lcBzRZJ'
  BY SMT, Sizes, Location, Design DEF lcBzRZJ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CLFoJA4rdY.        
  AZlSME /\ UNCHANGED torn => AZlSME'
  BY SMT, Sizes, Location, Design DEF AZlSME, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tq9DgiAJPO.        
  MDTwQr /\ UNCHANGED kpin => MDTwQr'
  BY SMT, Sizes, Location, Design DEF MDTwQr, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>g62S7ygkJn.        
  Y4aUFf /\ UNCHANGED kfly => Y4aUFf'
  BY SMT, Sizes, Location, Design DEF Y4aUFf, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>phzEXyziA.        
  tqQeS /\ UNCHANGED krs => tqQeS'
  BY SMT, Sizes, Location, Design DEF tqQeS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RP10ielI.        
  vn9M /\ UNCHANGED ph => vn9M'
  BY SMT, Sizes, Location, Design DEF vn9M, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dtjBTbrG.        
  oGG7 /\ UNCHANGED rg => oGG7'
  BY SMT, Sizes, Location, Design DEF oGG7, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>A2HU7IIXN.        
  bNpAu /\ UNCHANGED rpg => bNpAu'
  BY SMT, Sizes, Location, Design DEF bNpAu, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CX8v4bF8D.        
  fdIJv /\ UNCHANGED rpe => fdIJv'
  BY SMT, Sizes, Location, Design DEF fdIJv, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>O2oCUzet.        
  sld6 /\ UNCHANGED rx => sld6'
  BY SMT, Sizes, Location, Design DEF sld6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YtrBXPOumh.        
  BDN6_c /\ UNCHANGED rhit => BDN6_c'
  BY SMT, Sizes, Location, Design DEF BDN6_c, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>U3tflTV0G.        
  X6zX5 /\ UNCHANGED pst => X6zX5'
  BY SMT, Sizes, Location, Design DEF X6zX5, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Or8T4xI1.        
  gv2_ /\ UNCHANGED pr => gv2_'
  BY SMT, Sizes, Location, Design DEF gv2_, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oAMeuK1ER.        
  PwqP6 /\ UNCHANGED pgn => PwqP6'
  BY SMT, Sizes, Location, Design DEF PwqP6, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Pe90LpHim.        
  jyWjj /\ UNCHANGED plt => jyWjj'
  BY SMT, Sizes, Location, Design DEF jyWjj, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fuY98115L.        
  vwKWM /\ UNCHANGED ptl => vwKWM'
  BY SMT, Sizes, Location, Design DEF vwKWM, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UzxM3bdqrI.        
  eWP7z1 /\ UNCHANGED pvis => eWP7z1'
  BY SMT, Sizes, Location, Design DEF eWP7z1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>GnBHeeToD.        
  ZpUxx /\ UNCHANGED led => ZpUxx'
  BY SMT, Sizes, Location, Design DEF ZpUxx, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J4Yn9TM0As.        
  sBjpCf /\ UNCHANGED sfly => sBjpCf'
  BY SMT, Sizes, Location, Design DEF sBjpCf, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qJPEQOQarQ.        
  a4GqBP /\ UNCHANGED sled => a4GqBP'
  BY SMT, Sizes, Location, Design DEF a4GqBP, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NjuzR0s6a88.        
  AtabIBD /\ UNCHANGED prefc => AtabIBD'
  BY SMT, Sizes, Location, Design DEF AtabIBD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ml3WCRT9X.        
  xhIfp /\ UNCHANGED pqp => xhIfp'
  BY SMT, Sizes, Location, Design DEF xhIfp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ykc4hfSQ.        
  ZhBZ /\ UNCHANGED xr => ZhBZ'
  BY SMT, Sizes, Location, Design DEF ZhBZ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zusatIr7.        
  HiUz /\ UNCHANGED xg => HiUz'
  BY SMT, Sizes, Location, Design DEF HiUz, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>N7qC0YLj.        
  qcWy /\ UNCHANGED xk => qcWy'
  BY SMT, Sizes, Location, Design DEF qcWy, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hCJiIYos.        
  I3KH /\ UNCHANGED xp => I3KH'
  BY SMT, Sizes, Location, Design DEF I3KH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cztCLbok.        
  Vikm /\ UNCHANGED xd => Vikm'
  BY SMT, Sizes, Location, Design DEF Vikm, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J2QC8Du1ov.        
  KbhysL /\ UNCHANGED xsrc => KbhysL'
  BY SMT, Sizes, Location, Design DEF KbhysL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WRnwVjvwvY.        
  bpmgv4 /\ UNCHANGED xdst => bpmgv4'
  BY SMT, Sizes, Location, Design DEF bpmgv4, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oicUHntTF.        
  loK6p /\ UNCHANGED xnt => loK6p'
  BY SMT, Sizes, Location, Design DEF loK6p, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FYTo7JeE.        
  ychB /\ UNCHANGED hw => ychB'
  BY SMT, Sizes, Location, Design DEF ychB, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rhCiu1hEh.        
  tBG7n /\ UNCHANGED hok => tBG7n'
  BY SMT, Sizes, Location, Design DEF tBG7n, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JiHlcQ3B.        
  LGvs /\ UNCHANGED iv => LGvs'
  BY SMT, Sizes, Location, Design DEF LGvs, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UPCP8Tkqu.        
  H3aTc /\ UNCHANGED xst => H3aTc'
  BY SMT, Sizes, Location, Design DEF H3aTc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sYGZacosC.        
  uq0GF /\ UNCHANGED xlt => uq0GF'
  BY SMT, Sizes, Location, Design DEF uq0GF, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yXpGLMEg.        
  XX2v /\ UNCHANGED nx => XX2v'
  BY SMT, Sizes, Location, Design DEF XX2v, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NWCn1IKqg.        
  QdnU2 /\ UNCHANGED net => QdnU2'
  BY SMT, Sizes, Location, Design DEF QdnU2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>toom14rRQ9.        
  ZCaSEo /\ UNCHANGED drep => ZCaSEo'
  BY SMT, Sizes, Location, Design DEF ZCaSEo, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EFiR0d4Csg.        
  WDYhkn /\ UNCHANGED crep => WDYhkn'
  BY SMT, Sizes, Location, Design DEF WDYhkn, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xMPQSzgXFHk.        
  XIw5jsz /\ UNCHANGED dsucc => XIw5jsz'
  BY SMT, Sizes, Location, Design DEF XIw5jsz, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>h1HEwiRFod.        
  kmCLbA /\ UNCHANGED gbad => kmCLbA'
  BY SMT, Sizes, Location, Design DEF kmCLbA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lxYPh73r5V.        
  ASSUME TypInv, UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  PROVE CoreTypeOK'
<2> USE ONLY <1>lxYPh73r5V, Sizes, Location, Design
<2>1. TEJtP
  BY <1>TLVER4XMUn, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. TEJtP'
  BY <2>1, <1>hI17DH4Jlbz, <1>EFiR0d4Csg, <1>toom14rRQ9, <1>xMPQSzgXFHk, <1>h1HEwiRFod, <1>Ow1CnfDgB, <1>gdp9rxXV, <1>rhCiu1hEh, <1>yXJbrVoE, <1>FYTo7JeE, <1>JiHlcQ3B, <1>g62S7ygkJn, <1>Tq9DgiAJPO, <1>phzEXyziA, <1>GnBHeeToD, <1>NWCn1IKqg, <1>igrWjU8ZSDS, <1>yXpGLMEg, <1>oAMeuK1ER, <1>RP10ielI, <1>Pe90LpHim, <1>ml3WCRT9X, <1>Or8T4xI1, <1>NjuzR0s6a88, <1>U3tflTV0G, <1>fuY98115L, <1>UzxM3bdqrI, <1>HfZbGSUR, <1>dtjBTbrG, <1>YtrBXPOumh, <1>u1Pr0LE8, <1>CX8v4bF8D, <1>A2HU7IIXN, <1>xkGyx7qF, <1>O2oCUzet, <1>J4Yn9TM0As, <1>qJPEQOQarQ, <1>CLFoJA4rdY, <1>cztCLbok, <1>WRnwVjvwvY, <1>zusatIr7, <1>N7qC0YLj, <1>sYGZacosC, <1>oicUHntTF, <1>hCJiIYos, <1>ykc4hfSQ, <1>J2QC8Du1ov, <1>UPCP8Tkqu, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>3. QED
  BY <2>2, <1>ubJULuad4PEo, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1098_PdRDPort_PdBFrames


<1>HF6rhGh.        
  ASSUME Done
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>HF6rhGh, Sizes, Location, Design, Zenon DEF Done, basevars, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Juy3hreX.        
  ASSUME PinInv, Done, SFollow
  PROVE CoreTypeOK'
<2> USE ONLY <1>Juy3hreX, Sizes, Location, Design
<2>1. TypInv /\ UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, led, net, nfail, nx, pgn, ph, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, sled, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY <1>HF6rhGh, V21_Inv_BaseSafety, V21_Inv_KStruct, V21_Inv_Safety, V21_Inv_Strengthen, V21_Inv_TypeOK, Sizes, Location, Design DEF KStruct, Strengthen, Safety, BaseSafety, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>lxYPh73r5V, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1> QED BY <1>Juy3hreX, Sizes, Location, Design DEF Sizes, Location, Design
====
