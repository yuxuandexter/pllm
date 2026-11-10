---- MODULE PdFinalAuxType_4cf173485b87d54f ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_4cf173485b87d54f ==          
  ASSUME Sizes, Location, Design,
         NEW x \in Xids, PinInv, DRecvNopost(x)
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

           PageTypesA == X6zX5 /\ xhIfp /\ gv2_ /\ PwqP6 /\ jyWjj /\ ZpUxx /\ a4GqBP /\ AtabIBD

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF ItYdB, RIu4, VTew, JTuv, RLaS, gnQB, txvQrA7, lcBzRZJ, AZlSME, MDTwQr, Y4aUFf, tqQeS, vn9M, oGG7, bNpAu, fdIJv, sld6, BDN6_c, X6zX5, gv2_, PwqP6, jyWjj, vwKWM, eWP7z1, ZpUxx, sBjpCf, a4GqBP, AtabIBD, xhIfp, ZhBZ, HiUz, qcWy, I3KH, Vikm, KbhysL, bpmgv4, loK6p, ychB, tBG7n, LGvs, H3aTc, uq0GF, XX2v, QdnU2, ZCaSEo, WDYhkn, XIw5jsz, kmCLbA, TEJtP, PageTypesA

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
  BY ONLY Sizes, SMTT(5) DEF Inst, NL, Pages, Rq, Gens, Xids, Sizes

\* T2M-LOCAL-VISIBILITY

<1>e0lZiYK4tB4yDC.        
  ASSUME NEW x \in Xids, DRecvNopost(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>e0lZiYK4tB4yDC, Sizes, Location, Design, Design, SMTT(10) DEF DRecvNopost, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eFJfpqpHau0q65.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE /\ Mode = "push" /\ xk[x] = "wr" /\ xst[x] = "posted"
        /\ x < nx /\ xdst[x] \in Pages /\ x \in led[xdst[x]]
        /\ iv[x] = "nopost" /\ hw[x] = "none"
<2> USE ONLY <1>eFJfpqpHau0q65, Sizes, Location, Design
<2>1. K2 /\ K3 /\ K4 /\ K12 /\ XX2v
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_K12, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. Mode = "push" /\ xk[x] = "wr" /\ xst[x] = "posted"
          /\ \E m \in net : m.t = "nopost" /\ m.x = x
  BY SMTT(10), Sizes, Location, Design DEF DRecvNopost, Sizes, Location, Design
<2>3. x < nx /\ xdst[x] \in Pages
  BY <2>1, <2>2, Sizes, SMTT(10), Location, Design DEF K2, XX2v, Xids, ExpPage, Sizes, Location, Design
<2>4. iv[x] = "nopost"
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K12, Sizes, Location, Design
<2>5. hw[x] = "none" /\ x \in led[xdst[x]]
  BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF K3, K4, ExpPage, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>3, <2>4, <2>5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0906_PdRDPort_PdDRecvNopostFactsA


<1>DTSrKQX243.        
  ASSUME NEW p \in Pages, NEW st \in {"free","priv","shared","drain","quar"},
         NEW q \in {0} \cup Inst, NEW nl \in SUBSET Xids,
         NEW ns \in SUBSET (Rq \X Gens), PageTypesA, PageTo(p,st,q,nl,ns)
  PROVE PageTypesA'
<2> USE ONLY <1>DTSrKQX243, Sizes, Location, Design
<2>1. X6zX5'
  BY <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PageTypesA, X6zX5, PageTo, Sizes, Location, Design
<2>2. xhIfp'
  BY <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PageTypesA, xhIfp, PageTo, Sizes, Location, Design
<2>3. gv2_'
  BY <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PageTypesA, gv2_, PageTo, Sizes, Location, Design
<2>4. PwqP6'
  BY <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PageTypesA, PwqP6, PageTo, Sizes, Location, Design
<2>5. jyWjj'
  BY <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PageTypesA, jyWjj, PageTo, Sizes, Location, Design
<2>6. ZpUxx'
  BY <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PageTypesA, ZpUxx, PageTo, Sizes, Location, Design
<2>7. a4GqBP'
  BY <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PageTypesA, a4GqBP, PageTo, Sizes, Location, Design
<2>8. AtabIBD'
  BY <1>omcrGOxsGJCm, SMTT(10), Sizes, Location, Design DEF PageTypesA, AtabIBD, PageTo, Sizes, Location, Design
<2>9. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, SMTT(10), Sizes, Location, Design DEF PageTypesA, Sizes, Location, Design
\* T2M-END R2M0911_PdRDPort_PdPageTypesA


<1>M7oPgdZ6fjwAPx4iV0v.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE txvQrA7' /\ WDYhkn' /\ ZCaSEo' /\ XIw5jsz' /\ kmCLbA' /\ ItYdB' /\ gnQB' /\ tBG7n' /\ RLaS' /\ ychB' /\ LGvs' /\ Y4aUFf' /\ MDTwQr' /\ tqQeS' /\ QdnU2' /\ lcBzRZJ' /\ XX2v' /\ vn9M' /\ vwKWM' /\ eWP7z1' /\ JTuv' /\ oGG7' /\ BDN6_c' /\ VTew' /\ fdIJv' /\ bNpAu' /\ RIu4' /\ sld6' /\ sBjpCf' /\ AZlSME' /\ Vikm' /\ bpmgv4' /\ HiUz' /\ qcWy' /\ uq0GF' /\ loK6p' /\ I3KH' /\ ZhBZ' /\ KbhysL'
<2> USE ONLY <1>M7oPgdZ6fjwAPx4iV0v, Sizes, Location, Design
<2>1. TEJtP
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY <1>e0lZiYK4tB4yDC, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF TEJtP, txvQrA7, WDYhkn, ZCaSEo, XIw5jsz, kmCLbA, ItYdB, gnQB, tBG7n, RLaS, ychB, LGvs, Y4aUFf, MDTwQr, tqQeS, QdnU2, lcBzRZJ, XX2v, vn9M, vwKWM, eWP7z1, JTuv, oGG7, BDN6_c, VTew, fdIJv, bNpAu, RIu4, sld6, sBjpCf, AZlSME, Vikm, bpmgv4, HiUz, qcWy, uq0GF, loK6p, I3KH, ZhBZ, KbhysL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kBbC3ZdAcMm5CTQAey.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE PageTypesA'
<2> USE ONLY <1>kBbC3ZdAcMm5CTQAey, Sizes, Location, Design
<2>1. PageTypesA /\ xdst[x] \in Pages
  BY <1>TLVER4XMUn, <1>eFJfpqpHau0q65, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, PageTypesA, Sizes, Location, Design
<2>2. LET p == xdst[x] IN PageTo(p,AfterEv(p,led[p] \ {x},sled[p]),pqp[p],led[p] \ {x},sled[p])
  BY SMTT(10), Sizes, Location, Design DEF DRecvNopost, EvidenceAt, Sizes, Location, Design
<2>3. LET p == xdst[x] IN
      /\ AfterEv(p,led[p] \ {x},sled[p]) \in {"free","priv","shared","drain","quar"}
      /\ pqp[p] \in {0} \cup Inst /\ (led[p] \ {x}) \in SUBSET Xids
      /\ sled[p] \in SUBSET (Rq \X Gens)
  BY <2>1, SMTT(10), Sizes, Location, Design DEF PageTypesA, X6zX5, xhIfp, ZpUxx, a4GqBP, AfterEv, Sizes, Location, Design
<2>4. QED
  BY <2>1, <2>2, <2>3, <1>DTSrKQX243, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xKyF91hNQmLN7T139.        
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE H3aTc'
<2> USE ONLY <1>xKyF91hNQmLN7T139, Sizes, Location, Design
<2>1. H3aTc
  BY <1>TLVER4XMUn, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF TEJtP, Sizes, Location, Design
<2>2. xst' = [xst EXCEPT ![x] = "revoked"]
  BY SMTT(10), Sizes, Location, Design DEF DRecvNopost, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF H3aTc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>xFEw1WOjGMiIjW6.          
  ASSUME NEW x \in Xids, PinInv, DRecvNopost(x)
  PROVE CoreTypeOK'
<2> USE ONLY <1>xFEw1WOjGMiIjW6, Sizes, Location, Design
<2>1. TEJtP'
  BY <1>M7oPgdZ6fjwAPx4iV0v, <1>kBbC3ZdAcMm5CTQAey, <1>xKyF91hNQmLN7T139, SMTT(10), Sizes, Location, Design DEF TEJtP, PageTypesA, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ubJULuad4PEo, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M0912_PdRDPort_PdDRecvNopostTypesA


<1> QED BY <1>xFEw1WOjGMiIjW6, Sizes, Location, Design DEF Sizes, Location, Design
====
