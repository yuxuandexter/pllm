---- MODULE PdFinalAuxType_8bb3fe86f1f5f291 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_8bb3fe86f1f5f291 ==        
  ASSUME Sizes, Location, Design,
         NEW x \in Xids, PinInv, Cqe(x)
  PROVE CoreTypeOK'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE wOTr_ == gen \in [Rq -> 0..MG]


           Qjrp == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           vdfp == rp \in [Rq -> {0} \cup Inst]


           Gi91 == rd \in [Rq -> {0} \cup Inst]


           f9Jo == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           qC4t == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           dfknOma == alive \in [Inst -> BOOLEAN]


           TiBl9dL == nfail \in 0..MaxFail


           nvVdwJ == torn \in [Inst -> SUBSET Inst]


           kyOog2 == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           UUdTOK == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           dMRAk == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           lwx7 == ph \in [Inst -> [Rq -> PhSet]]


           azLu == rg \in [Inst -> [Rq -> 0..MG]]


           T2_wJ == rpg \in [Inst -> [Rq -> 0..NP]]


           DRkCp == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           u6eb == rx \in [Inst -> [Rq -> 0..MX]]


           WFFocH == rhit \in [Inst -> [Rq -> BOOLEAN]]


           mWgRR == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           voSc == pr \in [Pages -> 0..NR]


           ejARA == pgn \in [Pages -> 0..MG]


           nhDFh == plt \in [Pages -> 0..PS]


           Oet5P == ptl \in [Pages -> -1..PS]


           toA96a == pvis \in [Pages -> BOOLEAN]


           CQcwS == led \in [Pages -> SUBSET Xids]


           pgoLyw == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           gwX1nH == sled \in [Pages -> SUBSET (Rq \X Gens)]


           uhaZUCa == prefc \in [Pages -> 0..NR]


           j9ZB2 == pqp \in [Pages -> {0} \cup Inst]


           tOrh == xr \in [Xids -> 0..NR]


           oZ1G == xg \in [Xids -> 0..MG]


           TMQx == xk \in [Xids -> {"none", "wr", "rd"}]


           vvyr == xp \in [Xids -> {0} \cup Inst]


           FBnj == xd \in [Xids -> {0} \cup Inst]


           Sbgpxn == xsrc \in [Xids -> 0..NP]


           tP64Zt == xdst \in [Xids -> 0..NP]


           Rl_wH == xnt \in [Xids -> 0..PS]


           JojO == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           NFMkE == hok \in [Xids -> BOOLEAN]


           vQ8m == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           tMnUG == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           Og_ZB == xlt \in [Xids -> 0..PS]


           NHqB == nx \in 1..(MX + 1)


           j95de == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           jnT8ZH == drep \in [Rq -> [Gens -> 0..2]]


           fikvOb == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           wBRWE5u == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           Le6TxG == gbad \in BOOLEAN


           soyHJ == wOTr_ /\ Qjrp /\ vdfp /\ Gi91 /\ f9Jo /\ qC4t /\ dfknOma /\ TiBl9dL /\ nvVdwJ /\ kyOog2 /\ UUdTOK /\ dMRAk /\ lwx7 /\ azLu /\ T2_wJ /\ DRkCp /\ u6eb /\ WFFocH /\ mWgRR /\ voSc /\ ejARA /\ nhDFh /\ Oet5P /\ toA96a /\ CQcwS /\ pgoLyw /\ gwX1nH /\ uhaZUCa /\ j9ZB2 /\ tOrh /\ oZ1G /\ TMQx /\ vvyr /\ FBnj /\ Sbgpxn /\ tP64Zt /\ Rl_wH /\ JojO /\ NFMkE /\ vQ8m /\ tMnUG /\ Og_ZB /\ NHqB /\ j95de /\ jnT8ZH /\ fikvOb /\ wBRWE5u /\ Le6TxG

           \* T2M-LOCAL-VISIBILITY

           ryYQWMe72hB == mWgRR /\ j9ZB2 /\ voSc /\ ejARA /\ nhDFh /\ CQcwS /\ gwX1nH /\ uhaZUCa

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ, ryYQWMe72hB

<1>OJpowx54MQ.         TypInv => soyHJ
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, soyHJ, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LKcJBIJVI4s5.         soyHJ' => CoreTypeOK'
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, soyHJ, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d9xjhNZcw.         PinInv =>
 /\ BaseReadOwnLanded /\ BaseSendOwnLanded /\ BaseSealOnlyLanded /\ BaseQuietConservation /\ BaseKReadIntegrity
 BY V21_Inv_KReadIntegrity, V21_Inv_QuietConservation, V21_Inv_ReadOwnLanded, V21_Inv_SealOnlyLanded, V21_Inv_SendOwnLanded, Sizes, Location, Design DEF ReadOwnLanded, SendOwnLanded, SealOnlyLanded, QuietConservation, KReadIntegrity, Sizes, Location, Design
\* T2M-END R2M2195_PdROBase_PdProofBase


<1>FeJ2oW.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qAeogR.        
  ASSUME NEW x \in Xids, Cqe(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, kfly, kpin, krs, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc, xst>>
  BY ONLY <1>qAeogR, Sizes, Location, Design, ZenonT(5) DEF Cqe, EvidenceAt, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m9YGPGMDLHsGD7zp.        
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ PInst \cap DInst = {} /\ Inst = PInst \cup DInst
  /\ \A i \in Inst : (IsP(i) <=> i \in PInst) /\ (IsD(i) <=> i \in DInst)
  BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, IsP, IsD, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>T0H4lJJVFNVhPUpDZl.        
  ASSUME NEW x \in Xids, NHqB, K2, x < nx
  PROVE /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
        /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
        /\ xst[x] # "none"
        /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
        /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
        /\ (InitPage(x) # 0 => InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
  BY ONLY <1>T0H4lJJVFNVhPUpDZl, Sizes, Location, Design, Sizes, SMTT(10) DEF K2, NHqB, Xids, Sizes, Location, Design
\* T2M-END R2M2203_PdROBase_D2Finite_PdFactsA

\* T2M-SCOPE R2M2205_PdROBase_D2Finite_PdDDataA

<1>xGJxtsL.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE /\ iv[x] = "posted" /\ x < nx
        /\ InitPage(x) \in Pages /\ ExpPage(x) \in Pages
        /\ InitPage(x) # ExpPage(x) /\ x \in led[InitPage(x)]
<2> USE ONLY <1>xGJxtsL, Sizes, Location, Design
<2>1. K1 /\ K2 /\ K3 /\ K4 /\ NHqB /\ iv[x] = "posted"
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_K1, V21_Inv_K2, V21_Inv_K3, V21_Inv_K4, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Cqe, Sizes, Location, Design
<2>2. x < nx /\ InitPage(x) # 0
  BY <2>1, Sizes, SMTT(10), Location, Design DEF K2, NHqB, Xids, Sizes, Location, Design
<2>3. InitPage(x) \in Pages /\ ExpPage(x) \in Pages
       /\ Loc(InitPage(x)) = InitInst(x) /\ Loc(ExpPage(x)) = ExpInst(x)
  BY <2>1, <2>2, <1>T0H4lJJVFNVhPUpDZl, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. xp[x] \in PInst /\ xd[x] \in DInst
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF K1, K2, NHqB, Xids, Sizes, Location, Design
<2>5. x \in led[InitPage(x)]
  BY <2>1, <2>2, <2>3, SMTT(10), Sizes, Location, Design DEF K4, Sizes, Location, Design
<2>6. QED BY <2>1, <2>2, <2>3, <2>4, <2>5, <1>m9YGPGMDLHsGD7zp, SMTT(10), Sizes, Location, Design DEF InitInst, ExpInst, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>taDAGjbSYd.        
  ASSUME NEW x \in Xids, Cqe(x)
  PROVE iv[x] = "posted" /\ net' = net \cup {IF xk[x] = "wr" THEN Msg("notice",Loc(xsrc[x]),xd[x],xr[x],xg[x],x,xlt[x],1,hok[x]) ELSE Msg("relsrc",Loc(xdst[x]),xp[x],xr[x],xg[x],x,0,0,hok[x])}
  BY ONLY <1>taDAGjbSYd, Sizes, Location, Design, Design, SMTT(10) DEF Cqe, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>fPOsmyJv.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE j95de'
<2> USE ONLY <1>fPOsmyJv, Sizes, Location, Design
<2>1. j95de /\ NFMkE /\ FBnj /\ tP64Zt /\ oZ1G /\ Og_ZB /\ vvyr /\ tOrh /\ Sbgpxn /\ TMQx /\ NHqB /\ vQ8m
  BY <1>d9xjhNZcw, SMTT(10), <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. iv[x] = "posted" /\ net' = net \cup {IF xk[x] = "wr" THEN Msg("notice",Loc(xsrc[x]),xd[x],xr[x],xg[x],x,xlt[x],1,hok[x]) ELSE Msg("relsrc",Loc(xdst[x]),xp[x],xr[x],xg[x],x,0,0,hok[x])}
  BY SMTT(10), <1>taDAGjbSYd, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. K2
  BY <1>d9xjhNZcw, SMTT(10), V21_Inv_K2, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. (IF xk[x] = "wr" THEN xsrc[x] ELSE xdst[x]) \in Pages
  BY <1>xGJxtsL, SMTT(10), Sizes, Location, Design DEF InitPage, Sizes, Location, Design
<2>5. QED
  BY <2>1, <2>2, <2>4, Location, <1>FeJ2oW, SMTT(10), Sizes, Design DEF Msg, MsgT, NFMkE, vQ8m, j95de, NHqB, FBnj, tP64Zt, oZ1G, TMQx, Og_ZB, vvyr, tOrh, Sbgpxn, Xids, KPages, Sizes, Location, Design
\* T2M-END R2M2213_PdROBase_PdD2CqeNet


<1>LzQ3C70N3vZjLr.        
  /\ NP \in Nat /\ 0 \in 0..NP /\ 0 \in 0..NR /\ 0 \in 0..MG
  /\ 0 \in 0..PS /\ 0 \in -1..PS /\ 0 \in 0..MX /\ 0 \in 0..MaxFail
  /\ 1 \in 1..(MX+1) /\ 1 \in 0..PS /\ 1 \in -1..PS
  /\ 0 \notin Inst /\ 0 \notin Pages /\ 0 \notin Rq /\ 0 \notin Gens /\ 0 \notin Xids
  BY ONLY Sizes, SMTT(5) DEF Inst, NL, Pages, Rq, Gens, Xids, Sizes


<1>oMJ6rlYK4zQ.        
  ASSUME NEW p \in Pages, NEW st \in {"free","priv","shared","drain","quar"},
         NEW q \in {0} \cup Inst, NEW nl \in SUBSET Xids,
         NEW ns \in SUBSET (Rq \X Gens), ryYQWMe72hB, PageTo(p,st,q,nl,ns)
  PROVE ryYQWMe72hB'
<2> USE ONLY <1>oMJ6rlYK4zQ, Sizes, Location, Design
<2>1. mWgRR'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, mWgRR, PageTo, Sizes, Location, Design
<2>2. j9ZB2'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, j9ZB2, PageTo, Sizes, Location, Design
<2>3. voSc'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, voSc, PageTo, Sizes, Location, Design
<2>4. ejARA'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, ejARA, PageTo, Sizes, Location, Design
<2>5. nhDFh'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, nhDFh, PageTo, Sizes, Location, Design
<2>6. CQcwS'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, CQcwS, PageTo, Sizes, Location, Design
<2>7. gwX1nH'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, gwX1nH, PageTo, Sizes, Location, Design
<2>8. uhaZUCa'
  BY <1>LzQ3C70N3vZjLr, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, uhaZUCa, PageTo, Sizes, Location, Design
<2>9. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>5, <2>6, <2>7, <2>8, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, Sizes, Location, Design
\* T2M-END R2M2214_PdROBase_PdD2PageTypes


<1>Sqpjyyd05dNJ.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE wOTr_' /\ Qjrp' /\ vdfp' /\ Gi91' /\ f9Jo' /\ qC4t' /\ dfknOma' /\ TiBl9dL' /\ nvVdwJ' /\ kyOog2' /\ UUdTOK' /\ dMRAk' /\ lwx7' /\ azLu' /\ T2_wJ' /\ DRkCp' /\ u6eb' /\ WFFocH' /\ Oet5P' /\ toA96a' /\ pgoLyw' /\ tOrh' /\ oZ1G' /\ TMQx' /\ vvyr' /\ FBnj' /\ Sbgpxn' /\ tP64Zt' /\ Rl_wH' /\ JojO' /\ NFMkE' /\ tMnUG' /\ Og_ZB' /\ NHqB' /\ jnT8ZH' /\ fikvOb' /\ wBRWE5u' /\ Le6TxG'
<2> USE ONLY <1>Sqpjyyd05dNJ, Sizes, Location, Design
<2>1. soyHJ
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<gen,rt,rp,rd,hp,hd,alive,nfail,torn,kpin,kfly,krs,ph,rg,rpg,rpe,rx,rhit,ptl,pvis,sfly,xr,xg,xk,xp,xd,xsrc,xdst,xnt,hw,hok,xst,xlt,nx,drep,crep,dsucc,gbad>>
  BY <1>qAeogR, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF soyHJ, wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, Oet5P, toA96a, pgoLyw, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, tMnUG, Og_ZB, NHqB, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OlWfbBkt7VW.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE ryYQWMe72hB'
<2> USE ONLY <1>OlWfbBkt7VW, Sizes, Location, Design
<2>1. ryYQWMe72hB /\ InitPage(x) \in Pages
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>xGJxtsL, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, ryYQWMe72hB, Sizes, Location, Design
<2>2. LET p == InitPage(x) IN PageTo(p,AfterEv(p,led[p] \ {x},sled[p]),pqp[p],led[p] \ {x},sled[p])
  BY SMTT(10), Sizes, Location, Design DEF Cqe, InitPage, EvidenceAt, Sizes, Location, Design
<2>3. LET p == InitPage(x) IN
      /\ AfterEv(p,led[p] \ {x},sled[p]) \in {"free","priv","shared","drain","quar"}
      /\ pqp[p] \in {0} \cup Inst /\ (led[p] \ {x}) \in SUBSET Xids
      /\ sled[p] \in SUBSET (Rq \X Gens)
  BY <2>1, SMTT(10), Sizes, Location, Design DEF ryYQWMe72hB, mWgRR, j9ZB2, CQcwS, gwX1nH, AfterEv, Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, <1>oMJ6rlYK4zQ, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KCYp3oyj.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE vQ8m'
<2> USE ONLY <1>KCYp3oyj, Sizes, Location, Design
<2>1. vQ8m /\ iv' = [iv EXCEPT ![x] = "cqe"]
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, SMTT(10), V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Cqe, Sizes, Location, Design
<2>2. QED BY <2>1, SMTT(10), Sizes, Location, Design DEF vQ8m, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PYxfe5K.        
  ASSUME NEW x \in Xids, PinInv, Cqe(x)
  PROVE CoreTypeOK'
<2> USE ONLY <1>PYxfe5K, Sizes, Location, Design
<2>1. soyHJ'
  BY <1>Sqpjyyd05dNJ, <1>OlWfbBkt7VW, <1>KCYp3oyj, <1>fPOsmyJv, SMTT(10), Sizes, Location, Design DEF soyHJ, ryYQWMe72hB, Sizes, Location, Design
<2>2. QED BY <2>1, <1>LKcJBIJVI4s5, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2215_PdROBase_PdD2CqeTypes


<1> QED BY <1>PYxfe5K, Sizes, Location, Design DEF Sizes, Location, Design
====
