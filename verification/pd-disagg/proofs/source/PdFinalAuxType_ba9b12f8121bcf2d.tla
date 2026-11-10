---- MODULE PdFinalAuxType_ba9b12f8121bcf2d ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_ba9b12f8121bcf2d ==        
  ASSUME Sizes, Location, Design,
         NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
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

           Z4FEHDiV(p) == {r \in Rq : ph[Loc(p)][r] \in {"run","ovl"} /\ rhit[Loc(p)][r] /\ rpg[Loc(p)][r] = p}

           \* T2M-LOCAL-VISIBILITY

           RD_R2ReqReplyCase(j,r,m) ==
            /\ m.t="req" /\ m.to=j /\ m.r=r
            /\ (UNCHANGED drep \/ drep'=[drep EXCEPT ![r][m.g]=Bump(@)])

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, jwtl0, SGcCC, q_NsQ, vP96R, w5FT2, QA0WX, mO95d, xrQPm, dzHFn, lG5iqS, oAjKAqK, Z4FEHDiV, RD_R2ReqReplyCase

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

<1>qATejwlthlvQ0RBs.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<rtV, instV, crep, dsucc>>
  BY ONLY <1>qATejwlthlvQ0RBs, Sizes, Location, Design, Design, Zenon DEF DRecvReq, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>H0jGXTuTrAsK1g.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r
  PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
<2> USE ONLY <1>H0jGXTuTrAsK1g, Sizes, Location, Design
<2>1. K1 /\ K12
  BY SMTT(10), V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. oAjKAqK(m)
  BY <2>1, <1>jEmp1841Mb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. m.g \in Gens /\ m.g <= gen[r] /\ (j = hp[r][m.g] \/ j = hd[r][m.g])
  BY <2>2, SMTT(10), Sizes, Location, Design DEF oAjKAqK, jwtl0, q_NsQ, Sizes, Location, Design
<2>4. QED BY <2>1, <2>3, Sizes, SMTT(10), Location, Design DEF K1, IsD, PInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ZNHDxv.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW m \in net, PinInv,
         IsD(j), m.t = "req", m.to = j, m.r = r
  PROVE m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
        /\ m.pe = hp[r][m.g] /\ m.pe \in PInst /\ m.pe \in Inst
<2> USE ONLY <1>ZNHDxv, Sizes, Location, Design
<2>1. K1 /\ K12
  BY SMTT(10), V21_Inv_K1, V21_Inv_K12, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. m.g \in Gens /\ m.g <= gen[r] /\ j = hd[r][m.g]
  BY <1>H0jGXTuTrAsK1g, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. hp[r][m.g] \in PInst /\ hd[r][m.g] \in DInst
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, Sizes, Location, Design
<2>4. oAjKAqK(m)
  BY <2>1, <1>jEmp1841Mb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. hp[r][m.g] # j /\ hp[r][m.g] \in Inst
  BY <2>3, <1>VLROWBcOqe16ENnb, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. QED BY <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF oAjKAqK, q_NsQ, Sizes, Location, Design
\* T2M-END R2M0943_PdRDPort_PdD2RecvFacts

\* T2M-SCOPE R2M0944_PdRDPort_PdD2RecvProjection
\* T2M-BODY R2M0944_PdRDPort_PdD2RecvProjection
\* T2M-LOCAL-VISIBILITY

<1>TfbBw4J1UlUiS0.        
  ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
  PROVE UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,torn,nfail,kpin,kfly,krs,crep,dsucc,pqp,xsrc,xlt,hw,hok,iv>>
  BY ONLY <1>TfbBw4J1UlUiS0, Sizes, Location, Design, Design, <1>qATejwlthlvQ0RBs, SMTT(10) DEF DRecvReq, rtV, instV, kV, xV, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lEBX83swSz4.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE ~Active(j,r) /\ IsD(j) /\ j \in DInst
  BY ONLY <1>lEBX83swSz4, Sizes, Location, Design, Design, <1>VLROWBcOqe16ENnb, SMTT(10) DEF DRecvReq, NewGen, Active, DResetLedger, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rFTOZqyE36.        
  ASSUME NEW j \in Inst, NEW r \in Rq, NEW p \in Pages, PinInv, DRecvReq(j,r), Loc(p) = j, pst[p] = "shared"
  PROVE prefc[p] \in 0..(NR-1)
<2> USE ONLY <1>rFTOZqyE36, Sizes, Location, Design
<2>1. K7 /\ AtabIBD /\ ~Active(j,r)
  BY <1>lEBX83swSz4, <1>TLVER4XMUn, SMTT(10), V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. prefc[p] = Cardinality(Z4FEHDiV(p)) /\ Z4FEHDiV(p) \subseteq Rq \ {r}
 <3>1. prefc[p] = NHits(p)
  BY ONLY <1>rFTOZqyE36, <2>1, SMTT(10), Sizes, Location, Design DEF K7, Sizes, Location, Design
 <3>2. NHits(p) = Cardinality(Z4FEHDiV(p))
  BY ONLY SMTT(10), Sizes, Location, Design DEF NHits, Z4FEHDiV, Sizes, Location, Design
 <3>3. Z4FEHDiV(p) \subseteq Rq \ {r}
  BY ONLY <1>rFTOZqyE36, <2>1, SMTT(10), Sizes, Location, Design DEF Z4FEHDiV, Active, Sizes, Location, Design
 <3>4. QED BY ONLY <3>1, <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. NR \in Int /\ 1 \in Int /\ 1 <= NR
  BY ONLY Sizes, SMTT(10), Location, Design DEF Sizes, Location, Design
<2>4. IsFiniteSet(Rq) /\ Cardinality(Rq) = NR
  BY ONLY <2>3, FS_Interval, IsaT(10), Sizes, Location, Design DEF Rq, Sizes, Location, Design
<2>5. IsFiniteSet(Rq \ {r}) /\ Cardinality(Rq \ {r}) = NR-1
  BY <2>4, FS_RemoveElement, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. Cardinality(Z4FEHDiV(p)) <= NR-1
  BY <2>2, <2>5, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED BY <2>1, <2>2, <2>6, SMTT(10), Sizes, Location, Design DEF AtabIBD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qo6nLZvdqaLb.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE ItYdB' /\ RIu4' /\ VTew' /\ JTuv' /\ RLaS' /\ gnQB' /\ txvQrA7' /\ lcBzRZJ' /\ AZlSME' /\ MDTwQr' /\ Y4aUFf' /\ tqQeS' /\ WDYhkn' /\ XIw5jsz' /\ xhIfp' /\ KbhysL' /\ uq0GF' /\ ychB' /\ tBG7n' /\ LGvs'
<2> USE ONLY <1>qo6nLZvdqaLb, Sizes, Location, Design
<2>1. TEJtP /\ UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,crep,dsucc,pqp,xsrc,xlt,hw,hok,iv>>
  BY <1>TLVER4XMUn, <1>TfbBw4J1UlUiS0, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF TEJtP, ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, WDYhkn, XIw5jsz, xhIfp, KbhysL, uq0GF, ychB, tBG7n, LGvs, Sizes, Location, Design
\* T2M-END R2M0950_PdRDPort_PdD2RecvTypeFrameD2

\* T2M-SCOPE R2M0951_PdRDPort_PdD2RecvType_phD2

<1>F6a6oL9tEh.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE vn9M'
<2> HIDE DEF DRecvReq, vn9M, CoreTypeOK, STypeOK
<2>old. ph \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>F6a6oL9tEh, V22_T_ph, SMTT(5)
<2>effect. ph'=[ph EXCEPT ![j][r]="run"] \/ ph'=[ph EXCEPT ![j][r]="wait"] \/ ph'=[ph EXCEPT ![j][r]="end"]
 BY ONLY <1>F6a6oL9tEh, ZenonT(5) DEF DRecvReq
<2>qed. QED BY ONLY <1>F6a6oL9tEh, <2>old, <2>effect, SMTT(5) DEF vn9M, PhSet

\* T2M-LOCAL-VISIBILITY

\* T2M-END R2M0951_PdRDPort_PdD2RecvType_phD2

\* T2M-SCOPE R2M0952_PdRDPort_PdD2RecvType_rgD2

<1>E0WCbNkQnM.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE oGG7'
<2> HIDE DEF DRecvReq, oGG7, K12, CoreTypeOK, STypeOK
<2>old. rg \in [Inst -> [Rq -> 0..MG]]
 BY ONLY <1>E0WCbNkQnM, V22_T_rg, SMTT(5)
<2>msgtype. K12
 BY ONLY <1>E0WCbNkQnM, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>witness. PICK m \in net : m.t="req" /\ rg'=[rg EXCEPT ![j][r]=m.g]
 BY ONLY <1>E0WCbNkQnM, ZenonT(5) DEF DRecvReq
<2>gen. m.g \in 0..MG
 BY ONLY <2>witness, <2>msgtype, SMTT(5) DEF K12, Gens
<2>qed. QED BY ONLY <1>E0WCbNkQnM, <2>old, <2>witness, <2>gen, SMTT(5) DEF oGG7

\* T2M-END R2M0952_PdRDPort_PdD2RecvType_rgD2
\* T2M-SCOPE R2M0953_PdRDPort_PdD2RecvType_rpgD2

<1>iHQIjHVmRY6.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE bNpAu'
<2> USE ONLY <1>iHQIjHVmRY6, Sizes, Location, Design
<2>1. bNpAu /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, bNpAu, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0953_PdRDPort_PdD2RecvType_rpgD2

\* T2M-SCOPE R2M0954_PdRDPort_PdD2RecvType_rpeD2

<1>skSylEPYUK6.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE fdIJv'
<2> USE ONLY <1>skSylEPYUK6, Sizes, Location, Design
<2>1. fdIJv /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, fdIJv, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0954_PdRDPort_PdD2RecvType_rpeD2

\* T2M-SCOPE R2M0955_PdRDPort_PdD2RecvType_rxD2

<1>eXZevDyTj1.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE sld6'
<2> USE ONLY <1>eXZevDyTj1, Sizes, Location, Design
<2>1. sld6 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, sld6, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0955_PdRDPort_PdD2RecvType_rxD2

\* T2M-SCOPE R2M0956_PdRDPort_PdD2RecvType_rhitD2

<1>hP2ZIPsJJN9V.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE BDN6_c'
<2> USE ONLY <1>hP2ZIPsJJN9V, Sizes, Location, Design
<2>1. BDN6_c /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, BDN6_c, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0956_PdRDPort_PdD2RecvType_rhitD2

\* T2M-SCOPE R2M0957_PdRDPort_PdD2RecvType_pstD2

<1>jjqZlGMItCh.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE X6zX5'
<2> USE ONLY <1>jjqZlGMItCh, Sizes, Location, Design
<2>1. X6zX5 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, X6zX5, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0957_PdRDPort_PdD2RecvType_pstD2


<1>rRNslgVEei.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE gv2_'
<2> USE ONLY <1>rRNslgVEei, Sizes, Location, Design
<2>1. gv2_ /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, gv2_, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0958_PdRDPort_PdD2RecvType_prD2

\* T2M-SCOPE R2M0959_PdRDPort_PdD2RecvType_pgnD2

<1>IRYQ7uSt9OQ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE PwqP6'
<2> USE ONLY <1>IRYQ7uSt9OQ, Sizes, Location, Design
<2>1. PwqP6 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, PwqP6, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0959_PdRDPort_PdD2RecvType_pgnD2

\* T2M-SCOPE R2M0960_PdRDPort_PdD2RecvType_pltD2

<1>F1yzirNlxUh.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE jyWjj'
<2> USE ONLY <1>F1yzirNlxUh, Sizes, Location, Design
<2>1. jyWjj /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, jyWjj, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0960_PdRDPort_PdD2RecvType_pltD2

\* T2M-SCOPE R2M0961_PdRDPort_PdD2RecvType_ptlD2

<1>R4MyTWYxvP0.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE vwKWM'
<2> USE ONLY <1>R4MyTWYxvP0, Sizes, Location, Design
<2>1. vwKWM /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, vwKWM, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0961_PdRDPort_PdD2RecvType_ptlD2

\* T2M-SCOPE R2M0962_PdRDPort_PdD2RecvType_pvisD2

<1>w57rWcmlHyAd.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE eWP7z1'
<2> USE ONLY <1>w57rWcmlHyAd, Sizes, Location, Design
<2>1. eWP7z1 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, eWP7z1, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0962_PdRDPort_PdD2RecvType_pvisD2

\* T2M-SCOPE R2M0963_PdRDPort_PdD2RecvType_ledD2

<1>gVXDIkkz6ie.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE ZpUxx'
<2> USE ONLY <1>gVXDIkkz6ie, Sizes, Location, Design
<2>1. ZpUxx /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, ZpUxx, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0963_PdRDPort_PdD2RecvType_ledD2

\* T2M-SCOPE R2M0964_PdRDPort_PdD2RecvType_sflyD2

<1>DvITOgV9rDWY.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE sBjpCf'
<2> USE ONLY <1>DvITOgV9rDWY, Sizes, Location, Design
<2>1. sBjpCf /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, sBjpCf, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0964_PdRDPort_PdD2RecvType_sflyD2

\* T2M-SCOPE R2M0965_PdRDPort_PdD2RecvType_sledD2

<1>wjT4CeaMEVEK.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE a4GqBP'
<2> USE ONLY <1>wjT4CeaMEVEK, Sizes, Location, Design
<2>1. a4GqBP /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, a4GqBP, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0965_PdRDPort_PdD2RecvType_sledD2


<1>vse0tTRh82fQ0.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE AtabIBD'
<2> USE ONLY <1>vse0tTRh82fQ0, Sizes, Location, Design
<2>1. AtabIBD /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. \A p \in Pages : (Loc(p) = j /\ pst[p] = "shared") => prefc[p] \in 0..(NR-1)
  BY <1>rFTOZqyE36, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, AtabIBD, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0966_PdRDPort_PdD2RecvType_prefcD2

\* T2M-SCOPE R2M0967_PdRDPort_PdD2RecvType_xrD2

<1>uiwDRhTXAw.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE ZhBZ'
<2> USE ONLY <1>uiwDRhTXAw, Sizes, Location, Design
<2>1. ZhBZ /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, ZhBZ, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0967_PdRDPort_PdD2RecvType_xrD2

\* T2M-SCOPE R2M0968_PdRDPort_PdD2RecvType_xgD2

<1>xZlStTChIj.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE HiUz'
<2> USE ONLY <1>xZlStTChIj, Sizes, Location, Design
<2>1. HiUz /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, HiUz, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0968_PdRDPort_PdD2RecvType_xgD2

\* T2M-SCOPE R2M0969_PdRDPort_PdD2RecvType_xkD2

<1>ITtr8eyDer.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE qcWy'
<2> USE ONLY <1>ITtr8eyDer, Sizes, Location, Design
<2>1. qcWy /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, qcWy, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0969_PdRDPort_PdD2RecvType_xkD2

\* T2M-SCOPE R2M0970_PdRDPort_PdD2RecvType_xpD2

<1>BebA1z2Pnk.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE I3KH'
<2> USE ONLY <1>BebA1z2Pnk, Sizes, Location, Design
<2>1. I3KH /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, I3KH, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0970_PdRDPort_PdD2RecvType_xpD2

\* T2M-SCOPE R2M0971_PdRDPort_PdD2RecvType_xdD2

<1>SuJCFKsSkJ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE Vikm'
<2> USE ONLY <1>SuJCFKsSkJ, Sizes, Location, Design
<2>1. Vikm /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, Vikm, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0971_PdRDPort_PdD2RecvType_xdD2

\* T2M-SCOPE R2M0972_PdRDPort_PdD2RecvType_xdstD2

<1>Fg3NAuDCQiEJ.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE bpmgv4'
<2> USE ONLY <1>Fg3NAuDCQiEJ, Sizes, Location, Design
<2>1. bpmgv4 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, bpmgv4, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0972_PdRDPort_PdD2RecvType_xdstD2

\* T2M-SCOPE R2M0973_PdRDPort_PdD2RecvType_xntD2

<1>cqEaC5JA53P.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE loK6p'
<2> USE ONLY <1>cqEaC5JA53P, Sizes, Location, Design
<2>1. loK6p /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, loK6p, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0973_PdRDPort_PdD2RecvType_xntD2


<1>YDNgmknM2Xy.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE H3aTc'
<2> USE ONLY <1>YDNgmknM2Xy, Sizes, Location, Design
<2>1. H3aTc /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, H3aTc, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0974_PdRDPort_PdD2RecvType_xstD2

\* T2M-SCOPE R2M0975_PdRDPort_PdD2RecvType_nxD2

<1>oprjDpDGai.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE XX2v'
<2> USE ONLY <1>oprjDpDGai, Sizes, Location, Design
<2>1. XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0975_PdRDPort_PdD2RecvType_nxD2

\* T2M-SCOPE R2M0976_PdRDPort_PdD2RecvType_netD2

<1>EhIkUTkHw1p.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE QdnU2'
<2> USE ONLY <1>EhIkUTkHw1p, Sizes, Location, Design
<2>1. QdnU2 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, QdnU2, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0976_PdRDPort_PdD2RecvType_netD2


<1>qmmnGcYLb5h.         PinInv => CoreTypeOK
 BY ZenonT(10), V21_Inv_BaseTypeOK, Sizes, Location, Design DEF Sizes, Location, Design


<1>DFoJI9nVRLa6fKY4hmPw.        
 ASSUME NEW j \in Inst, NEW r \in Rq, DRecvReq(j,r)
 PROVE IsD(j) /\ \E m \in net : RD_R2ReqReplyCase(j,r,m)
 BY ONLY <1>DFoJI9nVRLa6fKY4hmPw, Sizes, Location, Design, ZenonT(10) DEF DRecvReq, RD_R2ReqReplyCase, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YwifmIgTEfS9ns.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
 PROVE ZCaSEo'
<2> USE ONLY <1>YwifmIgTEfS9ns, Sizes, Location, Design
<2>1. ZCaSEo 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>YwifmIgTEfS9ns, V22_T_drep, SMTT(5) DEF ZCaSEo

<2>2. PICK m \in net : IsD(j) /\ RD_R2ReqReplyCase(j,r,m)
 BY <1>DFoJI9nVRLa6fKY4hmPw, ZenonT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. m.g \in Gens BY <2>2, <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF RD_R2ReqReplyCase, Sizes, Location, Design
<2>4. Bump(drep[r][m.g]) \in 0..2 BY <2>1, <2>3, SMTT(10), Sizes, Location, Design DEF ZCaSEo, Bump, Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF RD_R2ReqReplyCase, ZCaSEo, Sizes, Location, Design
\* T2M-END R2M0978_PdRDR2ReqReply


<1>jdEJt0MO7oN1.        
 ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
 PROVE ZCaSEo'
 BY ONLY <1>jdEJt0MO7oN1, Sizes, Location, Design, <1>YwifmIgTEfS9ns, SMTT(10) DEF Sizes, Location, Design
\* T2M-END R2M0979_PdRDPort_PdD2RecvType_drepD2


<1>h440kgYqnQzU.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE kmCLbA'
<2> USE ONLY <1>h440kgYqnQzU, Sizes, Location, Design
<2>1. kmCLbA /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. \A m \in net : (IsD(j) /\ m.t = "req" /\ m.to = j /\ m.r = r) =>
       m.g \in Gens /\ m.pe \in Inst
  BY <1>ZNHDxv, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, Design, Sizes, <1>K1Rdt8, <1>jmSmRiUer8x2Pp, SMTT(10), Location DEF DRecvReq, xV, kmCLbA, XX2v, Xids, Gens, Rq, Pages, Tag, PhSet, Bump, NTok, Msg, MsgT, DResetLedger, Sizes, Location, Design
\* T2M-END R2M0980_PdRDPort_PdD2RecvType_gbadD2


<1>qOdN50JBCGLL.        
  ASSUME NEW j \in Inst, NEW r \in Rq, PinInv, DRecvReq(j,r)
  PROVE CoreTypeOK'
<2> USE ONLY <1>qOdN50JBCGLL, Sizes, Location, Design
<2>1. TEJtP'
  BY <1>qo6nLZvdqaLb, <1>F6a6oL9tEh, <1>E0WCbNkQnM, <1>iHQIjHVmRY6, <1>skSylEPYUK6, <1>eXZevDyTj1, <1>hP2ZIPsJJN9V, <1>jjqZlGMItCh, <1>rRNslgVEei, <1>IRYQ7uSt9OQ, <1>F1yzirNlxUh, <1>R4MyTWYxvP0, <1>w57rWcmlHyAd, <1>gVXDIkkz6ie, <1>DvITOgV9rDWY, <1>wjT4CeaMEVEK, <1>vse0tTRh82fQ0, <1>uiwDRhTXAw, <1>xZlStTChIj, <1>ITtr8eyDer, <1>BebA1z2Pnk, <1>SuJCFKsSkJ, <1>Fg3NAuDCQiEJ, <1>cqEaC5JA53P, <1>YDNgmknM2Xy, <1>oprjDpDGai, <1>EhIkUTkHw1p, <1>jdEJt0MO7oN1, <1>h440kgYqnQzU, SMTT(10), Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. QED BY <2>1, <1>ubJULuad4PEo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0981_PdRDPort_PdD2DRecvReqTypes


<1> QED BY <1>qOdN50JBCGLL, Sizes, Location, Design DEF Sizes, Location, Design
====
