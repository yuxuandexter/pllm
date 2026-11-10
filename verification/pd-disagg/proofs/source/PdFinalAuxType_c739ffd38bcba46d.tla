---- MODULE PdFinalAuxType_c739ffd38bcba46d ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_c739ffd38bcba46d ==        
  ASSUME Sizes, Location, Design,
         NEW x \in Xids, PinInv, XRecvRel(x)
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

           cfSmf(m) == m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])


           MzApF(m) == m.t = "hello" => m.fr \in Inst


           FCKuU(m) == m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                                       ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))


           BUBIt(m) == m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                                         /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))


           r2Xn1(m) == m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                                         /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])


           HU6aO(m) == m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                                          /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])


           DeQaF(m) == m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")


           KILoj(m) == m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)


           afxwj(m) == m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                                          /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))


           DfoqKS(m) == m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))


           xxWeDyN(m) ==
             /\ cfSmf(m)
             /\ MzApF(m)
             /\ FCKuU(m)
             /\ BUBIt(m)
             /\ r2Xn1(m)
             /\ HU6aO(m)
             /\ DeQaF(m)
             /\ KILoj(m)
             /\ afxwj(m)
             /\ DfoqKS(m)

           \* T2M-LOCAL-VISIBILITY

           BEvFree(p,x) == pst[p] = "drain" /\ led[p] \ {x} = {} /\ sled[p] = {} /\ ~KPinned(p)

           \* T2M-LOCAL-VISIBILITY

           NMgti(p) ==
             /\ ptl[p] >= 0
             /\ pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {}
                                    /\ prefc[p] = 0 /\ pqp[p] = 0)
             /\ pst[p] \in {"priv", "drain", "quar"} => (pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]])
             /\ pst[p] = "quar" => pqp[p] \in Inst
             /\ pst[p] # "quar" => pqp[p] = 0
             /\ pst[p] # "shared" => prefc[p] = 0
             /\ pst[p] = "shared" => (IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p))
             /\ pst[p] = "drain" => (led[p] # {} \/ sled[p] # {} \/ KPinned(p))   
             /\ pst[p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(p), r, p)
             /\ pst[p] = "priv" => \/ (Maps(Loc(p), pr[p], p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]])
                                   \/ GrownP(p)


           BXFree(x) == pst[xsrc[x]] = "drain" /\ led[xsrc[x]] \ {x} = {} /\ sled[xsrc[x]] = {} /\ ~KPinned(xsrc[x])


           BXRel(x) ==
             /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
             /\ \E m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
                  /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
             /\ LET p == xsrc[x] IN
                  /\ pst' = [pst EXCEPT ![p] = IF BXFree(x) THEN "free" ELSE @]
                  /\ pr' = [pr EXCEPT ![p] = IF BXFree(x) THEN 0 ELSE @]
                  /\ pgn' = [pgn EXCEPT ![p] = IF BXFree(x) THEN 0 ELSE @]
                  /\ plt' = [plt EXCEPT ![p] = IF BXFree(x) THEN 0 ELSE @]
                  /\ led' = [led EXCEPT ![p] = @ \ {x}]
             /\ UNCHANGED <<sled, prefc, pqp>>

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF wOTr_, Qjrp, vdfp, Gi91, f9Jo, qC4t, dfknOma, TiBl9dL, nvVdwJ, kyOog2, UUdTOK, dMRAk, lwx7, azLu, T2_wJ, DRkCp, u6eb, WFFocH, mWgRR, voSc, ejARA, nhDFh, Oet5P, toA96a, CQcwS, pgoLyw, gwX1nH, uhaZUCa, j9ZB2, tOrh, oZ1G, TMQx, vvyr, FBnj, Sbgpxn, tP64Zt, Rl_wH, JojO, NFMkE, vQ8m, tMnUG, Og_ZB, NHqB, j95de, jnT8ZH, fikvOb, wBRWE5u, Le6TxG, soyHJ, cfSmf, MzApF, FCKuU, BUBIt, r2Xn1, HU6aO, DeQaF, KILoj, afxwj, DfoqKS, xxWeDyN, BEvFree, NMgti, BXFree, BXRel

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


<1>E9A5rXMgGx.         K12 <=> (\A m \in net : xxWeDyN(m))
  BY ZenonT(5), Sizes, Location, Design DEF K12, xxWeDyN, cfSmf, MzApF, FCKuU, BUBIt, r2Xn1, HU6aO, DeQaF, KILoj, afxwj, DfoqKS, Sizes, Location, Design
\* T2M-END R2M2196_PdROBase_PdMessagePred


<1>Bhx03WnOR.        
  wOTr_ /\ UNCHANGED gen => wOTr_'
  BY SMT, Sizes, Location, Design DEF wOTr_, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>HvgN1jOy.        
  Qjrp /\ UNCHANGED rt => Qjrp'
  BY SMT, Sizes, Location, Design DEF Qjrp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kw4jQB4N.        
  vdfp /\ UNCHANGED rp => vdfp'
  BY SMT, Sizes, Location, Design DEF vdfp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XYHegQw4.        
  Gi91 /\ UNCHANGED rd => Gi91'
  BY SMT, Sizes, Location, Design DEF Gi91, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KdTVsDuK.        
  f9Jo /\ UNCHANGED hp => f9Jo'
  BY SMT, Sizes, Location, Design DEF f9Jo, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>dJNCBm1b.        
  qC4t /\ UNCHANGED hd => qC4t'
  BY SMT, Sizes, Location, Design DEF qC4t, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ybNDu613eAs.        
  dfknOma /\ UNCHANGED alive => dfknOma'
  BY SMT, Sizes, Location, Design DEF dfknOma, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XdiVkyyvMpb.        
  TiBl9dL /\ UNCHANGED nfail => TiBl9dL'
  BY SMT, Sizes, Location, Design DEF TiBl9dL, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>r7E4f80cl1.        
  nvVdwJ /\ UNCHANGED torn => nvVdwJ'
  BY SMT, Sizes, Location, Design DEF nvVdwJ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>REGdo9n2Yx.        
  kyOog2 /\ UNCHANGED kpin => kyOog2'
  BY SMT, Sizes, Location, Design DEF kyOog2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IJYdQTdZJP.        
  UUdTOK /\ UNCHANGED kfly => UUdTOK'
  BY SMT, Sizes, Location, Design DEF UUdTOK, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kRHsSWPEr.        
  dMRAk /\ UNCHANGED krs => dMRAk'
  BY SMT, Sizes, Location, Design DEF dMRAk, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LnpSgDJL.        
  lwx7 /\ UNCHANGED ph => lwx7'
  BY SMT, Sizes, Location, Design DEF lwx7, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MnaluSJc.        
  azLu /\ UNCHANGED rg => azLu'
  BY SMT, Sizes, Location, Design DEF azLu, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hD9vGdVka.        
  T2_wJ /\ UNCHANGED rpg => T2_wJ'
  BY SMT, Sizes, Location, Design DEF T2_wJ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>MBHJWRO3n.        
  DRkCp /\ UNCHANGED rpe => DRkCp'
  BY SMT, Sizes, Location, Design DEF DRkCp, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>XMxwxbvo.        
  u6eb /\ UNCHANGED rx => u6eb'
  BY SMT, Sizes, Location, Design DEF u6eb, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qU6W3UivmX.        
  WFFocH /\ UNCHANGED rhit => WFFocH'
  BY SMT, Sizes, Location, Design DEF WFFocH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>a5adykzx1.        
  Oet5P /\ UNCHANGED ptl => Oet5P'
  BY SMT, Sizes, Location, Design DEF Oet5P, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ODzOj7OF5G.        
  toA96a /\ UNCHANGED pvis => toA96a'
  BY SMT, Sizes, Location, Design DEF toA96a, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RYFggVMOUb.        
  pgoLyw /\ UNCHANGED sfly => pgoLyw'
  BY SMT, Sizes, Location, Design DEF pgoLyw, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>JQwbMQnQtE.        
  gwX1nH /\ UNCHANGED sled => gwX1nH'
  BY SMT, Sizes, Location, Design DEF gwX1nH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iZKDPpjzcRe.        
  uhaZUCa /\ UNCHANGED prefc => uhaZUCa'
  BY SMT, Sizes, Location, Design DEF uhaZUCa, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tDH6Dz5Bl.        
  j9ZB2 /\ UNCHANGED pqp => j9ZB2'
  BY SMT, Sizes, Location, Design DEF j9ZB2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NvuQjA2B.        
  tOrh /\ UNCHANGED xr => tOrh'
  BY SMT, Sizes, Location, Design DEF tOrh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RD9Q7CJK.        
  oZ1G /\ UNCHANGED xg => oZ1G'
  BY SMT, Sizes, Location, Design DEF oZ1G, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sH1Q96QM.        
  TMQx /\ UNCHANGED xk => TMQx'
  BY SMT, Sizes, Location, Design DEF TMQx, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Yc0eXbL9.        
  vvyr /\ UNCHANGED xp => vvyr'
  BY SMT, Sizes, Location, Design DEF vvyr, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oHjgydo5.        
  FBnj /\ UNCHANGED xd => FBnj'
  BY SMT, Sizes, Location, Design DEF FBnj, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jyzFwH33xk.        
  Sbgpxn /\ UNCHANGED xsrc => Sbgpxn'
  BY SMT, Sizes, Location, Design DEF Sbgpxn, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LUNproxt6M.        
  tP64Zt /\ UNCHANGED xdst => tP64Zt'
  BY SMT, Sizes, Location, Design DEF tP64Zt, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eG0tfbZbK.        
  Rl_wH /\ UNCHANGED xnt => Rl_wH'
  BY SMT, Sizes, Location, Design DEF Rl_wH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>sK7o4ORt.        
  JojO /\ UNCHANGED hw => JojO'
  BY SMT, Sizes, Location, Design DEF JojO, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>j5qfHiLkn.        
  NFMkE /\ UNCHANGED hok => NFMkE'
  BY SMT, Sizes, Location, Design DEF NFMkE, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>tPtUyRbA.        
  vQ8m /\ UNCHANGED iv => vQ8m'
  BY SMT, Sizes, Location, Design DEF vQ8m, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Vo9aCkTx7.        
  Og_ZB /\ UNCHANGED xlt => Og_ZB'
  BY SMT, Sizes, Location, Design DEF Og_ZB, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hgtESZog.        
  NHqB /\ UNCHANGED nx => NHqB'
  BY SMT, Sizes, Location, Design DEF NHqB, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WjszWllEY.        
  j95de /\ UNCHANGED net => j95de'
  BY SMT, Sizes, Location, Design DEF j95de, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PqsERF6Gbr.        
  jnT8ZH /\ UNCHANGED drep => jnT8ZH'
  BY SMT, Sizes, Location, Design DEF jnT8ZH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uEqnZsrhy6.        
  fikvOb /\ UNCHANGED crep => fikvOb'
  BY SMT, Sizes, Location, Design DEF fikvOb, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FY0ZxsA4n3A.        
  wBRWE5u /\ UNCHANGED dsucc => wBRWE5u'
  BY SMT, Sizes, Location, Design DEF wBRWE5u, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>t3VCppqYgZ.        
  Le6TxG /\ UNCHANGED gbad => Le6TxG'
  BY SMT, Sizes, Location, Design DEF Le6TxG, Sizes, Location, Design
\* T2M-END R2M2235_PdROBase_PdBFrames


<1>YfveNqRTYXF.        
  ASSUME NEW x \in Xids, XRecvRel(x)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, net, nfail, nx, ph, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, rx, sfly, torn, xd, xdst, xg, xk, xlt, xnt, xp, xr, xsrc>>
  BY ONLY <1>YfveNqRTYXF, Sizes, Location, Design, Zenon DEF EvidenceAt, PageTo, XRecvRel, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uDIX08cG2u3.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, mWgRR, PageTo(p,s,q,nl,ns)
  PROVE pst' = [pst EXCEPT ![p] = s]
  BY ONLY <1>uDIX08cG2u3, Sizes, Location, Design, SMT DEF PageTo, mWgRR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ar4X9H09zh.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, voSc, PageTo(p,s,q,nl,ns)
  PROVE pr' = [pr EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>Ar4X9H09zh, Sizes, Location, Design, SMT DEF PageTo, voSc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NM5iZLLL51s.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, ejARA, PageTo(p,s,q,nl,ns)
  PROVE pgn' = [pgn EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>NM5iZLLL51s, Sizes, Location, Design, SMT DEF PageTo, ejARA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nBWZ3HHBgPv.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, nhDFh, PageTo(p,s,q,nl,ns)
  PROVE plt' = [plt EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>nBWZ3HHBgPv, Sizes, Location, Design, SMT DEF PageTo, nhDFh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KIqeLLc4DaY.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, CQcwS, PageTo(p,s,q,nl,ns)
  PROVE led' = [led EXCEPT ![p] = IF s = "free" THEN {} ELSE nl]
  BY ONLY <1>KIqeLLc4DaY, Sizes, Location, Design, SMT DEF PageTo, CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>c2IhQ0JdJmx3.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, gwX1nH, PageTo(p,s,q,nl,ns)
  PROVE sled' = [sled EXCEPT ![p] = IF s = "free" THEN {} ELSE ns]
  BY ONLY <1>c2IhQ0JdJmx3, Sizes, Location, Design, SMT DEF PageTo, gwX1nH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Tm2JOZeAYiMf4.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, uhaZUCa, PageTo(p,s,q,nl,ns)
  PROVE prefc' = [prefc EXCEPT ![p] = IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>Tm2JOZeAYiMf4, Sizes, Location, Design, SMT DEF PageTo, uhaZUCa, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Uh4NhWw0xs0.        
  ASSUME NEW p \in Pages, NEW s, NEW q, NEW nl, NEW ns, j9ZB2, PageTo(p,s,q,nl,ns)
  PROVE pqp' = [pqp EXCEPT ![p] = IF s = "quar" THEN q ELSE IF s = "free" THEN 0 ELSE @]
  BY ONLY <1>Uh4NhWw0xs0, Sizes, Location, Design, SMT DEF PageTo, j9ZB2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J7N8RIbn490q.        
  ASSUME NEW p, NEW x, pst[p] # "free"
  PROVE AfterEv(p,led[p] \ {x},sled[p]) = (IF BEvFree(p,x) THEN "free" ELSE pst[p])
    /\ (AfterEv(p,led[p] \ {x},sled[p]) = "free" <=> BEvFree(p,x))
  BY ONLY <1>J7N8RIbn490q, Sizes, Location, Design, Design, Zenon DEF AfterEv, PinBlocks, BEvFree, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ctE8KoRCgp.        
  ASSUME NEW p \in Pages, NEW x, mWgRR, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pst' = [pst EXCEPT ![p] = IF BEvFree(p,x) THEN "free" ELSE @]
<2> USE ONLY <1>ctE8KoRCgp, Sizes, Location, Design
<2>1. pst' = [pst EXCEPT ![p] = AfterEv(p,led[p] \ {x},sled[p])]
  BY <1>uDIX08cG2u3, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, mWgRR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>owHjt2cnA.        
  ASSUME NEW p \in Pages, NEW x, voSc, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pr' = [pr EXCEPT ![p] = IF BEvFree(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>owHjt2cnA, Sizes, Location, Design
<2>1. pr' = [pr EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>Ar4X9H09zh, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, voSc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>YfuasBWQJz.        
  ASSUME NEW p \in Pages, NEW x, ejARA, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE pgn' = [pgn EXCEPT ![p] = IF BEvFree(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>YfuasBWQJz, Sizes, Location, Design
<2>1. pgn' = [pgn EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>NM5iZLLL51s, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, ejARA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PEn2N84IUA.        
  ASSUME NEW p \in Pages, NEW x, nhDFh, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE plt' = [plt EXCEPT ![p] = IF BEvFree(p,x) THEN 0 ELSE @]
<2> USE ONLY <1>PEn2N84IUA, Sizes, Location, Design
<2>1. plt' = [plt EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>nBWZ3HHBgPv, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, nhDFh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>UjuAbMKhK6.        
  ASSUME NEW p \in Pages, NEW x, CQcwS, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE led' = [led EXCEPT ![p] = @ \ {x}]
<2> USE ONLY <1>UjuAbMKhK6, Sizes, Location, Design
<2>1. led' = [led EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE led[p] \ {x}]
  BY <1>KIqeLLc4DaY, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KpKoxRq8tn7.        
  ASSUME NEW p \in Pages, NEW x, gwX1nH, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED sled
<2> USE ONLY <1>KpKoxRq8tn7, Sizes, Location, Design
<2>1. sled' = [sled EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN {} ELSE sled[p]]
  BY <1>c2IhQ0JdJmx3, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, gwX1nH, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WxYgjy59R6fw.        
  ASSUME NEW p \in Pages, NEW x, uhaZUCa, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED prefc
<2> USE ONLY <1>WxYgjy59R6fw, Sizes, Location, Design
<2>1. prefc' = [prefc EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>Tm2JOZeAYiMf4, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, uhaZUCa, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bXiTxirVXq.        
  ASSUME NEW p \in Pages, NEW x, j9ZB2, pst[p] # "free", prefc[p] = 0, (pst[p] = "drain" => pqp[p] = 0), EvidenceAt(p,x)
  PROVE UNCHANGED pqp
<2> USE ONLY <1>bXiTxirVXq, Sizes, Location, Design
<2>1. pqp' = [pqp EXCEPT ![p] = IF AfterEv(p,led[p] \ {x},sled[p]) = "quar" THEN pqp[p] ELSE IF AfterEv(p,led[p] \ {x},sled[p]) = "free" THEN 0 ELSE @]
  BY <1>Uh4NhWw0xs0, Sizes, Location, Design DEF EvidenceAt, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>J7N8RIbn490q, SMT, Sizes, Location, Design DEF BEvFree, j9ZB2, Sizes, Location, Design
\* T2M-END R2M2282_PdROBase_PdCEvidence


<1>kHb.        
  ASSUME NEW x \in Xids, PinInv, x < nx, xsrc[x] \in Pages
  PROVE Loc(xsrc[x]) \in PInst
<2> USE ONLY <1>kHb, Sizes, Location, Design
<2>1. K1 /\ K2 /\ NHqB
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K1, V21_Inv_K2, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]] /\ xp[x] = hp[xr[x]][xg[x]]
        /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, Design, SMT, Sizes, Location DEF K2, ExpPage, InitPage, ExpInst, InitInst, Pages, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF K1, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lNS6N.        
  ASSUME NEW p \in Pages, K7
  PROVE NMgti(p)
  BY ONLY <1>lNS6N, Sizes, Location, Design DEF K7, NMgti, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Ta3YpEMcfTGE.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
    /\ x < nx /\ xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x] /\ xp[x] \in PInst
    /\ pst[xsrc[x]] \in {"priv", "drain", "quar"} /\ prefc[xsrc[x]] = 0
<2> USE ONLY <1>Ta3YpEMcfTGE, Sizes, Location, Design
<2>1. K2 /\ K4 /\ K5 /\ K7 /\ NHqB /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted"
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K2, V21_Inv_K4, V21_Inv_K5, V21_Inv_K7, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, XRecvRel, Sizes, Location, Design
<2>2. x < nx
  BY <2>1, SMT, Sizes, Location, Design DEF K2, NHqB, Xids, Sizes, Location, Design
<2>3. xsrc[x] \in Pages /\ Loc(xsrc[x]) = xp[x]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K2, ExpPage, ExpInst, Sizes, Location, Design
<2>4. Loc(xsrc[x]) \in PInst
  BY <2>2, <2>3, <1>kHb, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. x \in led[xsrc[x]]
  BY <2>1, <2>2, Zenon, Sizes, Location, Design DEF K4, ExpPage, Sizes, Location, Design
<2>6. OwnedBy(xsrc[x],xr[x],xg[x]) /\ NMgti(xsrc[x])
  BY <2>1, <2>3, <2>5, <1>lNS6N, Sizes, Location, Design DEF K5, Sizes, Location, Design
<2>7. QED
  BY <2>1, <2>2, <2>3, <2>4, <2>6, Zenon, Sizes, Location, Design DEF OwnedBy, NMgti, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FC4DC9nDcJoU.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE BXRel(x)
<2> USE ONLY <1>FC4DC9nDcJoU, Sizes, Location, Design
<2>1. K7 /\ xsrc[x] \in Pages /\ prefc[xsrc[x]] = 0 /\ pst[xsrc[x]] # "free"
  BY <1>d9xjhNZcw, <1>Ta3YpEMcfTGE, Zenon, V21_Inv_K7, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. mWgRR /\ gwX1nH /\ uhaZUCa /\ j9ZB2 /\ voSc /\ ejARA /\ nhDFh /\ CQcwS
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>3. (pst[xsrc[x]] = "drain" => pqp[xsrc[x]] = 0) /\ EvidenceAt(xsrc[x],x)
  BY <2>1, Zenon, Sizes, Location, Design DEF K7, XRecvRel, Sizes, Location, Design
<2>4. pst' = [pst EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN "free" ELSE @]
    /\ pr' = [pr EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN 0 ELSE @]
    /\ pgn' = [pgn EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN 0 ELSE @]
    /\ plt' = [plt EXCEPT ![xsrc[x]] = IF BEvFree(xsrc[x],x) THEN 0 ELSE @]
    /\ led' = [led EXCEPT ![xsrc[x]] = @ \ {x}] /\ UNCHANGED <<sled,prefc,pqp>>
  BY <2>1, <2>2, <2>3, <1>ctE8KoRCgp, <1>owHjt2cnA, <1>YfuasBWQJz, <1>PEn2N84IUA, <1>UjuAbMKhK6, <1>KpKoxRq8tn7, <1>WxYgjy59R6fw, <1>bXiTxirVXq, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED
  BY <2>4, Zenon, Sizes, Location, Design DEF XRecvRel, BXRel, BXFree, BEvFree, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>WEy8K93NWXGYb.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE \E ok \in BOOLEAN :
    /\ ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ok = hok[x]) \/ (iv[x] = "nopost" /\ ~ok))
    /\ xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"]
<2> USE ONLY <1>WEy8K93NWXGYb, Sizes, Location, Design
<2>1. K12 /\ j95de
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_K12, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. PICK m \in net : m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
      /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
  BY Zenon, Sizes, Location, Design DEF XRecvRel, Sizes, Location, Design
<2>3. xxWeDyN(m)
  BY <2>1, <2>2, <1>E9A5rXMgGx, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. ((iv[x] = "cqe" /\ hw[x] = "stop" /\ m.ok = hok[x]) \/ (iv[x] = "nopost" /\ ~m.ok))
  BY <2>2, <2>3, Zenon, Sizes, Location, Design DEF xxWeDyN, afxwj, Sizes, Location, Design
<2>5. m.ok \in BOOLEAN
  BY <2>1, <2>2, SMT, Sizes, Location, Design DEF j95de, Sizes, Location, Design
<2>6. QED
  BY <2>2, <2>4, <2>5, Zenon, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NWGV1fihVPU.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE wOTr_'
<2> USE ONLY <1>NWGV1fihVPU, Sizes, Location, Design
<2>1. wOTr_ /\ UNCHANGED gen
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Bhx03WnOR, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FtQeGTuVdK.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE Qjrp'
<2> USE ONLY <1>FtQeGTuVdK, Sizes, Location, Design
<2>1. Qjrp /\ UNCHANGED rt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>HvgN1jOy, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wpC1x5LUWL.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE vdfp'
<2> USE ONLY <1>wpC1x5LUWL, Sizes, Location, Design
<2>1. vdfp /\ UNCHANGED rp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>kw4jQB4N, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>q406Eno5l8.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE Gi91'
<2> USE ONLY <1>q406Eno5l8, Sizes, Location, Design
<2>1. Gi91 /\ UNCHANGED rd
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>XYHegQw4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>uoL4nNOwzi.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE f9Jo'
<2> USE ONLY <1>uoL4nNOwzi, Sizes, Location, Design
<2>1. f9Jo /\ UNCHANGED hp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>KdTVsDuK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>PIN9DDPeJC.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE qC4t'
<2> USE ONLY <1>PIN9DDPeJC, Sizes, Location, Design
<2>1. qC4t /\ UNCHANGED hd
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>dJNCBm1b, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oUq2dS3pc8uPC.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE dfknOma'
<2> USE ONLY <1>oUq2dS3pc8uPC, Sizes, Location, Design
<2>1. dfknOma /\ UNCHANGED alive
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ybNDu613eAs, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kgFVJXSh9IDEC.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE TiBl9dL'
<2> USE ONLY <1>kgFVJXSh9IDEC, Sizes, Location, Design
<2>1. TiBl9dL /\ UNCHANGED nfail
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>XdiVkyyvMpb, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>s05PbQtffmao.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE nvVdwJ'
<2> USE ONLY <1>s05PbQtffmao, Sizes, Location, Design
<2>1. nvVdwJ /\ UNCHANGED torn
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>r7E4f80cl1, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FUlb6kOxIz4p.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE kyOog2'
<2> USE ONLY <1>FUlb6kOxIz4p, Sizes, Location, Design
<2>1. kyOog2 /\ UNCHANGED kpin
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>REGdo9n2Yx, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>aUKeV12NH0qh.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE UUdTOK'
<2> USE ONLY <1>aUKeV12NH0qh, Sizes, Location, Design
<2>1. UUdTOK /\ UNCHANGED kfly
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>IJYdQTdZJP, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KaM3ygYW4qz.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE dMRAk'
<2> USE ONLY <1>KaM3ygYW4qz, Sizes, Location, Design
<2>1. dMRAk /\ UNCHANGED krs
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>kRHsSWPEr, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gf7cXfFsIf.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE lwx7'
<2> USE ONLY <1>gf7cXfFsIf, Sizes, Location, Design
<2>1. lwx7 /\ UNCHANGED ph
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>LnpSgDJL, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VevH9AzttN.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE azLu'
<2> USE ONLY <1>VevH9AzttN, Sizes, Location, Design
<2>1. azLu /\ UNCHANGED rg
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>MnaluSJc, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>DAfBeddPyRd.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE T2_wJ'
<2> USE ONLY <1>DAfBeddPyRd, Sizes, Location, Design
<2>1. T2_wJ /\ UNCHANGED rpg
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>hD9vGdVka, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Jer2GMfY3aC.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE DRkCp'
<2> USE ONLY <1>Jer2GMfY3aC, Sizes, Location, Design
<2>1. DRkCp /\ UNCHANGED rpe
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>MBHJWRO3n, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ANZEJo9T3R.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE u6eb'
<2> USE ONLY <1>ANZEJo9T3R, Sizes, Location, Design
<2>1. u6eb /\ UNCHANGED rx
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>XMxwxbvo, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>djF5vD8oFcw7.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE WFFocH'
<2> USE ONLY <1>djF5vD8oFcw7, Sizes, Location, Design
<2>1. WFFocH /\ UNCHANGED rhit
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>qU6W3UivmX, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iU4r5QtmWBk.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE mWgRR'
<2> USE ONLY <1>iU4r5QtmWBk, Sizes, Location, Design
<2>1. mWgRR
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pst' = [pst EXCEPT ![xsrc[x]] = IF BXFree(x) THEN "free" ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Sizes, SMT, Location, Design DEF mWgRR, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>d67seYVXB4.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE voSc'
<2> USE ONLY <1>d67seYVXB4, Sizes, Location, Design
<2>1. voSc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pr' = [pr EXCEPT ![xsrc[x]] = IF BXFree(x) THEN 0 ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Sizes, SMT, Location, Design DEF voSc, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pzBkD3EI8Qu.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE ejARA'
<2> USE ONLY <1>pzBkD3EI8Qu, Sizes, Location, Design
<2>1. ejARA
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. pgn' = [pgn EXCEPT ![xsrc[x]] = IF BXFree(x) THEN 0 ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Sizes, SMT, Location, Design DEF ejARA, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>e5hgbajJTb8.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE nhDFh'
<2> USE ONLY <1>e5hgbajJTb8, Sizes, Location, Design
<2>1. nhDFh
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. plt' = [plt EXCEPT ![xsrc[x]] = IF BXFree(x) THEN 0 ELSE @]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Sizes, SMT, Location, Design DEF nhDFh, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>cla2yEE9mgd.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE Oet5P'
<2> USE ONLY <1>cla2yEE9mgd, Sizes, Location, Design
<2>1. Oet5P /\ UNCHANGED ptl
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>a5adykzx1, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>wRr8ODahIqmm.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE toA96a'
<2> USE ONLY <1>wRr8ODahIqmm, Sizes, Location, Design
<2>1. toA96a /\ UNCHANGED pvis
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>ODzOj7OF5G, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nKfBfbvASFg.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE CQcwS'
<2> USE ONLY <1>nKfBfbvASFg, Sizes, Location, Design
<2>1. CQcwS
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. led' = [led EXCEPT ![xsrc[x]] = @ \ {x}]
  BY <1>FC4DC9nDcJoU, Zenon, Sizes, Location, Design DEF BXRel, Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, Sizes, SMT, Location, Design DEF CQcwS, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NOhZICYKhfaV.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE pgoLyw'
<2> USE ONLY <1>NOhZICYKhfaV, Sizes, Location, Design
<2>1. pgoLyw /\ UNCHANGED sfly
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>RYFggVMOUb, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ohFGJM2HPfHT.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE gwX1nH'
<2> USE ONLY <1>ohFGJM2HPfHT, Sizes, Location, Design
<2>1. gwX1nH /\ UNCHANGED sled
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>FC4DC9nDcJoU, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, BXRel, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>JQwbMQnQtE, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Zk3QdAD6vV1BY.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE uhaZUCa'
<2> USE ONLY <1>Zk3QdAD6vV1BY, Sizes, Location, Design
<2>1. uhaZUCa /\ UNCHANGED prefc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>FC4DC9nDcJoU, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, BXRel, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>iZKDPpjzcRe, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>bzEkhAfrpTg.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE j9ZB2'
<2> USE ONLY <1>bzEkhAfrpTg, Sizes, Location, Design
<2>1. j9ZB2 /\ UNCHANGED pqp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>FC4DC9nDcJoU, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, BXRel, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>tDH6Dz5Bl, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kk4fVREmKu.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE tOrh'
<2> USE ONLY <1>kk4fVREmKu, Sizes, Location, Design
<2>1. tOrh /\ UNCHANGED xr
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>NvuQjA2B, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BCaLP7Wu1O.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE oZ1G'
<2> USE ONLY <1>BCaLP7Wu1O, Sizes, Location, Design
<2>1. oZ1G /\ UNCHANGED xg
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>RD9Q7CJK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>V4CtzoaDtO.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE TMQx'
<2> USE ONLY <1>V4CtzoaDtO, Sizes, Location, Design
<2>1. TMQx /\ UNCHANGED xk
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>sH1Q96QM, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zRxUynIEc5.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE vvyr'
<2> USE ONLY <1>zRxUynIEc5, Sizes, Location, Design
<2>1. vvyr /\ UNCHANGED xp
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Yc0eXbL9, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>v3QvumisB7.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE FBnj'
<2> USE ONLY <1>v3QvumisB7, Sizes, Location, Design
<2>1. FBnj /\ UNCHANGED xd
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>oHjgydo5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>c3Y9uXjRYFyk.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE Sbgpxn'
<2> USE ONLY <1>c3Y9uXjRYFyk, Sizes, Location, Design
<2>1. Sbgpxn /\ UNCHANGED xsrc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>jyzFwH33xk, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>N7DteltvwMbU.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE tP64Zt'
<2> USE ONLY <1>N7DteltvwMbU, Sizes, Location, Design
<2>1. tP64Zt /\ UNCHANGED xdst
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>LUNproxt6M, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ufKGtpMoYua.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE Rl_wH'
<2> USE ONLY <1>ufKGtpMoYua, Sizes, Location, Design
<2>1. Rl_wH /\ UNCHANGED xnt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>eG0tfbZbK, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rgsn34GWvw.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE JojO'
<2> USE ONLY <1>rgsn34GWvw, Sizes, Location, Design
<2>1. JojO /\ UNCHANGED hw
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>sK7o4ORt, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>gKz5z7zfXSw.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE NFMkE'
<2> USE ONLY <1>gKz5z7zfXSw, Sizes, Location, Design
<2>1. NFMkE /\ UNCHANGED hok
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>j5qfHiLkn, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>yg1tpNa4Gz.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE vQ8m'
<2> USE ONLY <1>yg1tpNa4Gz, Sizes, Location, Design
<2>1. vQ8m /\ UNCHANGED iv
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>tPtUyRbA, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>EElbqBUvlwc.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE tMnUG'
<2> USE ONLY <1>EElbqBUvlwc, Sizes, Location, Design
<2>1. tMnUG /\ (\E ok \in BOOLEAN : xst' = [xst EXCEPT ![x] = IF ok THEN "landed" ELSE "failed"])
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>WEy8K93NWXGYb, Zenon, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, SMT, Sizes, Location, Design DEF tMnUG, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ycsl6SslzPD.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE Og_ZB'
<2> USE ONLY <1>ycsl6SslzPD, Sizes, Location, Design
<2>1. Og_ZB /\ UNCHANGED xlt
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>Vo9aCkTx7, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>W8P9Rdw8aw.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE NHqB'
<2> USE ONLY <1>W8P9Rdw8aw, Sizes, Location, Design
<2>1. NHqB /\ UNCHANGED nx
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>hgtESZog, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>VLC4XDVs538.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE j95de'
<2> USE ONLY <1>VLC4XDVs538, Sizes, Location, Design
<2>1. j95de /\ UNCHANGED net
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>WjszWllEY, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>hzCajMb41uM6.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE jnT8ZH'
<2> USE ONLY <1>hzCajMb41uM6, Sizes, Location, Design
<2>1. jnT8ZH /\ UNCHANGED drep
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>PqsERF6Gbr, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>zBSU72qpJ0T6.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE fikvOb'
<2> USE ONLY <1>zBSU72qpJ0T6, Sizes, Location, Design
<2>1. fikvOb /\ UNCHANGED crep
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>uEqnZsrhy6, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BiJgdh3iPSCKa.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE wBRWE5u'
<2> USE ONLY <1>BiJgdh3iPSCKa, Sizes, Location, Design
<2>1. wBRWE5u /\ UNCHANGED dsucc
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>FY0ZxsA4n3A, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RlBQdbjCd3Kb.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE Le6TxG'
<2> USE ONLY <1>RlBQdbjCd3Kb, Sizes, Location, Design
<2>1. Le6TxG /\ UNCHANGED gbad
  BY <1>d9xjhNZcw, <1>OJpowx54MQ, <1>YfveNqRTYXF, V21_Inv_TypeOK, Sizes, Location, Design DEF soyHJ, Sizes, Location, Design
<2>2. QED
  BY <2>1, <1>t3VCppqYgZ, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>OGLiFsF7FrgU.        
  ASSUME NEW x \in Xids, PinInv, XRecvRel(x)
  PROVE CoreTypeOK'
  BY ONLY <1>OGLiFsF7FrgU, Sizes, Location, Design, <1>LKcJBIJVI4s5, <1>oUq2dS3pc8uPC, <1>zBSU72qpJ0T6, <1>hzCajMb41uM6, <1>BiJgdh3iPSCKa, <1>RlBQdbjCd3Kb, <1>NWGV1fihVPU, <1>PIN9DDPeJC, <1>gKz5z7zfXSw, <1>uoL4nNOwzi, <1>rgsn34GWvw, <1>yg1tpNa4Gz, <1>aUKeV12NH0qh, <1>FUlb6kOxIz4p, <1>KaM3ygYW4qz, <1>nKfBfbvASFg, <1>VLC4XDVs538, <1>kgFVJXSh9IDEC, <1>W8P9Rdw8aw, <1>pzBkD3EI8Qu, <1>gf7cXfFsIf, <1>e5hgbajJTb8, <1>bzEkhAfrpTg, <1>d67seYVXB4, <1>Zk3QdAD6vV1BY, <1>iU4r5QtmWBk, <1>cla2yEE9mgd, <1>wRr8ODahIqmm, <1>q406Eno5l8, <1>VevH9AzttN, <1>djF5vD8oFcw7, <1>wpC1x5LUWL, <1>Jer2GMfY3aC, <1>DAfBeddPyRd, <1>FtQeGTuVdK, <1>ANZEJo9T3R, <1>NOhZICYKhfaV, <1>ohFGJM2HPfHT, <1>s05PbQtffmao, <1>v3QvumisB7, <1>N7DteltvwMbU, <1>BCaLP7Wu1O, <1>V4CtzoaDtO, <1>ycsl6SslzPD, <1>ufKGtpMoYua, <1>zRxUynIEc5, <1>kk4fVREmKu, <1>c3Y9uXjRYFyk, <1>EElbqBUvlwc DEF soyHJ, Sizes, Location, Design
\* T2M-END R2M2284_PdROBase_PdCXRecvRelTypes


<1> QED BY <1>OGLiFsF7FrgU, Sizes, Location, Design DEF Sizes, Location, Design
====
