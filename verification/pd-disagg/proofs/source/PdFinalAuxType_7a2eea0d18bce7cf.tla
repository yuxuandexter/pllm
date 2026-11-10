---- MODULE PdFinalAuxType_7a2eea0d18bce7cf ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_7a2eea0d18bce7cf ==          
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE CoreTypeOK'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE ylR0LBEy3St == gen \in [Rq -> 0..MG]


           XQ7XaxmP1l == rt \in [Rq -> {"idle", "wait", "ok", "err"}]


           J01JF16PaE == rp \in [Rq -> {0} \cup Inst]


           BuYOreHF98 == rd \in [Rq -> {0} \cup Inst]


           ZnRKwgvIBR == hp \in [Rq -> [Gens -> {0} \cup Inst]]


           IZhhUTOGv8 == hd \in [Rq -> [Gens -> {0} \cup Inst]]


           NvPXDcmKXZsTp == alive \in [Inst -> BOOLEAN]


           x0RaFEzCq9v4C == nfail \in 0..MaxFail


           zo8ixzrz7wHm == torn \in [Inst -> SUBSET Inst]


           mj7L41TfHUZm == kpin \in [Inst -> [KSlots -> BOOLEAN]]


           jkGgSvV54ECj == kfly \in [Inst -> [KSlots -> BOOLEAN]]


           o1sHIEFf11S == krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]


           agorv30pby == ph \in [Inst -> [Rq -> PhSet]]


           ygIZjTcbVW == rg \in [Inst -> [Rq -> 0..MG]]


           yFa6dcDlBVS == rpg \in [Inst -> [Rq -> 0..NP]]


           lNul_Lx45ak == rpe \in [Inst -> [Rq -> {0} \cup Inst]]


           Wm6H2cY5fj == rx \in [Inst -> [Rq -> 0..MX]]


           RG2TPVCFgrTo == rhit \in [Inst -> [Rq -> BOOLEAN]]


           ANoJHAKJSFA == pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]


           DZB1eX4Rh3 == pr \in [Pages -> 0..NR]


           vVwYUq39RLe == pgn \in [Pages -> 0..MG]


           VQ6pJlqc7__ == plt \in [Pages -> 0..PS]


           klzdnqf9B0k == ptl \in [Pages -> -1..PS]


           i9yX3Vim7Eua == pvis \in [Pages -> BOOLEAN]


           vuHcQ8LC20a == led \in [Pages -> SUBSET Xids]


           ifz_NNwBOqjC == sfly \in [Pages -> SUBSET (Rq \X Gens)]


           LxIMxPCP9nJz == sled \in [Pages -> SUBSET (Rq \X Gens)]


           nznOuXHhcYItf == prefc \in [Pages -> 0..NR]


           OhAsiOx49z5 == pqp \in [Pages -> {0} \cup Inst]


           UYekt3DvL5 == xr \in [Xids -> 0..NR]


           WlCHpwlqvB == xg \in [Xids -> 0..MG]


           MTMGkq38Qq == xk \in [Xids -> {"none", "wr", "rd"}]


           gmzsIHURDU == xp \in [Xids -> {0} \cup Inst]


           bcLSMy3Kol == xd \in [Xids -> {0} \cup Inst]


           ZMSuPTLDjlpT == xsrc \in [Xids -> 0..NP]


           uEoex9FWaBG1 == xdst \in [Xids -> 0..NP]


           QAtyVQxoron == xnt \in [Xids -> 0..PS]


           DOobTF_rSk == hw \in [Xids -> {"none", "fly", "issued", "stop"}]


           Aap2aizqmvX == hok \in [Xids -> BOOLEAN]


           bv1yBh4PIF == iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]


           JKDi_xwy2QF == xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]


           vsOorc_9Jjh == xlt \in [Xids -> 0..PS]


           mlnqAztrRn == nx \in 1..(MX + 1)


           HL5ZYlXRJTb == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                                 r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                                 pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]


           ecjUitOmUW7d == drep \in [Rq -> [Gens -> 0..2]]


           HQIm3IAXqLUV == crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]


           RgYv1QDMi6zkL == dsucc \in [Rq -> [Gens -> BOOLEAN]]


           s36RwK3zVLML == gbad \in BOOLEAN


           WYlDDw5YFIV == ylR0LBEy3St /\ XQ7XaxmP1l /\ J01JF16PaE /\ BuYOreHF98 /\ ZnRKwgvIBR /\ IZhhUTOGv8 /\ NvPXDcmKXZsTp /\ x0RaFEzCq9v4C /\ zo8ixzrz7wHm /\ mj7L41TfHUZm /\ jkGgSvV54ECj /\ o1sHIEFf11S /\ agorv30pby /\ ygIZjTcbVW /\ yFa6dcDlBVS /\ lNul_Lx45ak /\ Wm6H2cY5fj /\ RG2TPVCFgrTo /\ ANoJHAKJSFA /\ DZB1eX4Rh3 /\ vVwYUq39RLe /\ VQ6pJlqc7__ /\ klzdnqf9B0k /\ i9yX3Vim7Eua /\ vuHcQ8LC20a /\ ifz_NNwBOqjC /\ LxIMxPCP9nJz /\ nznOuXHhcYItf /\ OhAsiOx49z5 /\ UYekt3DvL5 /\ WlCHpwlqvB /\ MTMGkq38Qq /\ gmzsIHURDU /\ bcLSMy3Kol /\ ZMSuPTLDjlpT /\ uEoex9FWaBG1 /\ QAtyVQxoron /\ DOobTF_rSk /\ Aap2aizqmvX /\ bv1yBh4PIF /\ JKDi_xwy2QF /\ vsOorc_9Jjh /\ mlnqAztrRn /\ HL5ZYlXRJTb /\ ecjUitOmUW7d /\ HQIm3IAXqLUV /\ RgYv1QDMi6zkL /\ s36RwK3zVLML


           XqqwOkEcpgA(i,r) ==
             LET p == rpg[i][r]
                 g == rg[i][r]
                 t == Tag(r, g)
                 x == rx[i][r]
             IN
             /\ IsP(i) => (ph[i][r] \in {"none", "pre", "ready", "reg", "sent", "exp", "end"} /\ ~rhit[i][r])
             /\ IsD(i) => ph[i][r] \in {"none", "wait", "rd", "run", "ovl", "end"}
             /\ ph[i][r] = "none" => (g = 0 /\ p = 0 /\ x = 0 /\ ~rhit[i][r])
             /\ ph[i][r] # "none" => (g \in Gens /\ g <= gen[r])
             /\ ph[i][r] # "none" /\ IsP(i) => (hp[r][g] = i /\ rpe[i][r] = hd[r][g])
             /\ ph[i][r] # "none" /\ IsD(i) => (hd[r][g] = i /\ rpe[i][r] = hp[r][g])
             /\ Active(i, r) => (p \in Pages /\ Loc(p) = i)
             /\ Active(i, r) /\ ~rhit[i][r] => OwnedBy(p, r, g) /\ pst[p] = "priv"
             /\ ph[i][r] = "pre" => (x = 0 /\ led[p] = {} /\ sled[p] = {t} /\ sfly[p] \subseteq {t} /\ plt[p] = 0
                                     /\ (IF t \in sfly[p] THEN ptl[p] = 0 ELSE ptl[p] \in PLens(r, g)))
             /\ ph[i][r] = "ready" => (x = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g))
             /\ ph[i][r] = "reg" => (Mode = "push" /\ PReg /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = r /\ xg[x] = g
                                     /\ iv[x] = "reg" /\ sled[p] = {} /\ sfly[p] = {}
                                     /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g) /\ xlt[x] = ptl[p])
             /\ ph[i][r] = "sent" => (Mode = "push" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = r /\ xg[x] = g
                                      /\ iv[x] \in {"posted", "cqe", "failret"} /\ sled[p] = {} /\ sfly[p] = {}
                                      /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g) /\ xlt[x] = ptl[p])
             /\ ph[i][r] = "exp" => (Mode = "pull" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = r /\ xg[x] = g
                                     /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g) /\ xlt[x] = ptl[p])


           UED9TbBeVK2(p) ==
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


           CpK_oo1Y76x6V(m) == m.x # 0 /\ iv[m.x] = "none"


           zfuzBtBIUox(i,r,m) ==
            /\ m \in net /\ m.t = "dinfo" /\ m.to = i /\ m.r = r /\ m.g = rg[i][r]
            /\ IF CpK_oo1Y76x6V(m)
               THEN /\ iv' = [iv EXCEPT ![m.x] = "reg"]
                    /\ xsrc' = [xsrc EXCEPT ![m.x] = rpg[i][r]]
                    /\ xlt' = [xlt EXCEPT ![m.x] = LtOf(i,r)]
                    /\ led' = [led EXCEPT ![rpg[i][r]] = @ \cup {m.x}]
                    /\ ph' = [ph EXCEPT ![i][r] = "reg"] /\ rx' = [rx EXCEPT ![i][r] = m.x]
                    /\ UNCHANGED <<pst,pr,pgn,plt,sled,prefc,pqp,xr,xg,xk,xp,xd,xdst,xnt,xst,nx>>
               ELSE /\ ph' = [ph EXCEPT ![i][r] = "end"] /\ rx' = [rx EXCEPT ![i][r] = m.x]
                    /\ PageTo(rpg[i][r], IF KPinned(rpg[i][r]) THEN "drain" ELSE "free", 0, {}, {})
                    /\ UNCHANGED xV


<1> HIDE DEF ylR0LBEy3St, XQ7XaxmP1l, J01JF16PaE, BuYOreHF98, ZnRKwgvIBR, IZhhUTOGv8, NvPXDcmKXZsTp, x0RaFEzCq9v4C, zo8ixzrz7wHm, mj7L41TfHUZm, jkGgSvV54ECj, o1sHIEFf11S, agorv30pby, ygIZjTcbVW, yFa6dcDlBVS, lNul_Lx45ak, Wm6H2cY5fj, RG2TPVCFgrTo, ANoJHAKJSFA, DZB1eX4Rh3, vVwYUq39RLe, VQ6pJlqc7__, klzdnqf9B0k, i9yX3Vim7Eua, vuHcQ8LC20a, ifz_NNwBOqjC, LxIMxPCP9nJz, nznOuXHhcYItf, OhAsiOx49z5, UYekt3DvL5, WlCHpwlqvB, MTMGkq38Qq, gmzsIHURDU, bcLSMy3Kol, ZMSuPTLDjlpT, uEoex9FWaBG1, QAtyVQxoron, DOobTF_rSk, Aap2aizqmvX, bv1yBh4PIF, JKDi_xwy2QF, vsOorc_9Jjh, mlnqAztrRn, HL5ZYlXRJTb, ecjUitOmUW7d, HQIm3IAXqLUV, RgYv1QDMi6zkL, s36RwK3zVLML, WYlDDw5YFIV, XqqwOkEcpgA, UED9TbBeVK2, CpK_oo1Y76x6V, zfuzBtBIUox

<1>ldolEP0z8Yv53hp5.         TypInv => WYlDDw5YFIV
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, WYlDDw5YFIV, ylR0LBEy3St, XQ7XaxmP1l, J01JF16PaE, BuYOreHF98, ZnRKwgvIBR, IZhhUTOGv8, NvPXDcmKXZsTp, x0RaFEzCq9v4C, zo8ixzrz7wHm, mj7L41TfHUZm, jkGgSvV54ECj, o1sHIEFf11S, agorv30pby, ygIZjTcbVW, yFa6dcDlBVS, lNul_Lx45ak, Wm6H2cY5fj, RG2TPVCFgrTo, ANoJHAKJSFA, DZB1eX4Rh3, vVwYUq39RLe, VQ6pJlqc7__, klzdnqf9B0k, i9yX3Vim7Eua, vuHcQ8LC20a, ifz_NNwBOqjC, LxIMxPCP9nJz, nznOuXHhcYItf, OhAsiOx49z5, UYekt3DvL5, WlCHpwlqvB, MTMGkq38Qq, gmzsIHURDU, bcLSMy3Kol, ZMSuPTLDjlpT, uEoex9FWaBG1, QAtyVQxoron, DOobTF_rSk, Aap2aizqmvX, bv1yBh4PIF, JKDi_xwy2QF, vsOorc_9Jjh, mlnqAztrRn, HL5ZYlXRJTb, ecjUitOmUW7d, HQIm3IAXqLUV, RgYv1QDMi6zkL, s36RwK3zVLML, Sizes, Location, Design


<1>dEYtwi6SKw2gQAIsrP.         WYlDDw5YFIV' => CoreTypeOK'
  BY ZenonT(5), Sizes, Location, Design DEF TypInv, CoreTypeOK, WYlDDw5YFIV, ylR0LBEy3St, XQ7XaxmP1l, J01JF16PaE, BuYOreHF98, ZnRKwgvIBR, IZhhUTOGv8, NvPXDcmKXZsTp, x0RaFEzCq9v4C, zo8ixzrz7wHm, mj7L41TfHUZm, jkGgSvV54ECj, o1sHIEFf11S, agorv30pby, ygIZjTcbVW, yFa6dcDlBVS, lNul_Lx45ak, Wm6H2cY5fj, RG2TPVCFgrTo, ANoJHAKJSFA, DZB1eX4Rh3, vVwYUq39RLe, VQ6pJlqc7__, klzdnqf9B0k, i9yX3Vim7Eua, vuHcQ8LC20a, ifz_NNwBOqjC, LxIMxPCP9nJz, nznOuXHhcYItf, OhAsiOx49z5, UYekt3DvL5, WlCHpwlqvB, MTMGkq38Qq, gmzsIHURDU, bcLSMy3Kol, ZMSuPTLDjlpT, uEoex9FWaBG1, QAtyVQxoron, DOobTF_rSk, Aap2aizqmvX, bv1yBh4PIF, JKDi_xwy2QF, vsOorc_9Jjh, mlnqAztrRn, HL5ZYlXRJTb, ecjUitOmUW7d, HQIm3IAXqLUV, RgYv1QDMi6zkL, s36RwK3zVLML, Sizes, Location, Design


<1>sbZFRWPwlwnM.        
  /\ 0 \in 0..MG /\ 0 \in 0..NP /\ 0 \in 0..PS /\ 0 \in 0..NR /\ 0 \in 0..MX
  /\ 1 \in 0..PS /\ NP \in Nat
  /\ (0..NP) = {0} \cup Pages /\ (0..MG) = {0} \cup Gens
  /\ (0..NR) = {0} \cup Rq /\ (0..MX) = {0} \cup Xids
  /\ PInst \subseteq Inst /\ DInst \subseteq Inst
  BY Sizes, SMTT(5), Location, Design DEF Pages, Gens, Rq, Xids, Inst, PInst, DInst, NL, Sizes, Location, Design


<1>kSb6Azw1B8RVJX.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PPost(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gen, hd, hp, kfly, kpin, krs, nfail, nx, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, torn, xd, xdst, xg, xk, xnt, xp, xr, xst>>
  BY ONLY <1>kSb6Azw1B8RVJX, Sizes, Location, Design, ZenonT(5) DEF PPost, PageTo, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design


<1>iL3IPdXB5d9.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE XqqwOkEcpgA(i,r)
  BY ONLY <1>iL3IPdXB5d9, Sizes, Location, Design DEF K8, XqqwOkEcpgA, Sizes, Location, Design


<1>Q4gkcy80MKE.        
  ASSUME NEW p \in Pages, K7
  PROVE UED9TbBeVK2(p)
  BY ONLY <1>Q4gkcy80MKE, Sizes, Location, Design DEF K7, UED9TbBeVK2, Sizes, Location, Design


<1>vK8sxPEFFSUP6a.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE /\ Mode = "push" /\ IsP(i) /\ ph[i][r] = "ready"
       /\ UNCHANGED <<hw,hok,net,gbad>> /\ \E m \in net : zfuzBtBIUox(i,r,m)
<2> USE ONLY <1>vK8sxPEFFSUP6a, Sizes, Location, Design
 <2>1. s36RwK3zVLML BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, SMTT(5), Sizes, Location DEF PPost, zfuzBtBIUox, CpK_oo1Y76x6V, SendReady, GenOK, FreeOrDrain, PinBlocks, s36RwK3zVLML, xV, Sizes, Location, Design


<1>uyleNtrSbgRwix.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ hp[r][rg[i][r]] = i /\ hd[r][rg[i][r]] = rpe[i][r]
       /\ led[rpg[i][r]] = {} /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
       /\ rx[i][r] = 0 /\ plt[rpg[i][r]] = ptl[rpg[i][r]] /\ ptl[rpg[i][r]] \in PLens(r,rg[i][r])
       /\ LtOf(i,r) = ptl[rpg[i][r]] /\ prefc[rpg[i][r]] = 0 /\ pqp[rpg[i][r]] = 0
<2> USE ONLY <1>uyleNtrSbgRwix, Sizes, Location, Design
 <2>1. K8 /\ K1 /\ K7 /\ ph[i][r] = "ready" /\ IsP(i)
  BY <1>vK8sxPEFFSUP6a, V21_Inv_K1, V21_Inv_K7, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. XqqwOkEcpgA(i,r) BY <2>1, <1>iL3IPdXB5d9, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rpg[i][r] \in Pages /\ pst[rpg[i][r]] = "priv" /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>1, <2>2, SMTT(5), Sizes, Location, Design DEF XqqwOkEcpgA, Active, OwnedBy, Sizes, Location, Design
 <2>4. UED9TbBeVK2(rpg[i][r]) BY <2>1, <2>3, <1>Q4gkcy80MKE, Sizes, Location, Design DEF Sizes, Location, Design
 <2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(5), Sizes, Location, Design DEF XqqwOkEcpgA, UED9TbBeVK2, K1, Active, OwnedBy, LtOf, Sizes, Location, Design


<1>X2a33Dy1hb6CtTu.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), zfuzBtBIUox(i,r,m)
 PROVE /\ m.x \in {0} \cup Xids /\ m.fr = rpe[i][r]
       /\ (m.x # 0 => m.x \in Xids /\ m.x < nx /\ xr[m.x] = r /\ xg[m.x] = rg[i][r]
                      /\ xk[m.x] = "wr" /\ xp[m.x] = i /\ xd[m.x] = rpe[i][r])
       /\ (CpK_oo1Y76x6V(m) => xsrc[m.x] = 0 /\ hw[m.x] = "none")
<2>message. /\ m \in net /\ m.t="dinfo" /\ m.to=i /\ m.r=r /\ m.g=rg[i][r]
 BY ONLY <1>X2a33Dy1hb6CtTu, SMTT(5) DEF zfuzBtBIUox
<2>shape. MessageShape
 BY ONLY <1>X2a33Dy1hb6CtTu, V22_T_net, SMTT(5)
<2>domain. m.x \in {0} \cup Xids
 BY ONLY <2>message, <2>shape, SMTT(5) DEF MessageShape
<2>oldKeys. K12
 BY ONLY <1>X2a33Dy1hb6CtTu, V21_Inv_K12, Sizes, Location, Design, SMTT(5)
<2>key. /\ Mode="push" /\ m.fr=hd[r][rg[i][r]] /\ i=hp[r][rg[i][r]]
        /\ (m.x # 0 => m.x<nx /\ xr[m.x]=r /\ xg[m.x]=rg[i][r])
 BY ONLY <2>message, <2>oldKeys, SMTT(5) DEF K12
<2>peer. rpe[i][r]=hd[r][rg[i][r]]
 BY ONLY <1>X2a33Dy1hb6CtTu, <1>uyleNtrSbgRwix, SMTT(5)
<2>records. K2 /\ K3
 BY ONLY <1>X2a33Dy1hb6CtTu, V21_Inv_K2, V21_Inv_K3, Sizes, Location, Design, SMTT(5)
<2>allocated. ASSUME m.x # 0
 PROVE xk[m.x]="wr" /\ xp[m.x]=i /\ xd[m.x]=rpe[i][r]
 <3>domain. m.x \in Xids
  BY ONLY <2>domain, <2>allocated, SMTT(5)
 <3>integers. m.x \in Int /\ nx \in Int
  BY ONLY <1>X2a33Dy1hb6CtTu, <3>domain, V22_T_nx, SMTT(5) DEF Xids
 <3>allocatedIndex. ~(m.x>=nx)
  BY ONLY <3>integers, <2>allocated, <2>key, SMTT(5)
 <3>record. xk[m.x]="wr" /\ xp[m.x]=hp[xr[m.x]][xg[m.x]] /\ xd[m.x]=hd[xr[m.x]][xg[m.x]]
  BY ONLY <2>records, <2>key, <3>domain, <3>allocatedIndex, SMTT(5) DEF K2
 <3>qed. QED BY ONLY <2>key, <2>peer, <2>allocated, <3>record, SMTT(5)
<2>unposted. ASSUME CpK_oo1Y76x6V(m)
 PROVE xsrc[m.x]=0 /\ hw[m.x]="none"
 <3>guard. m.x # 0 /\ iv[m.x]="none"
  BY ONLY <2>unposted, SMTT(5) DEF CpK_oo1Y76x6V
 <3>domain. m.x \in Xids
  BY ONLY <2>domain, <3>guard, SMTT(5)
 <3>kind. xk[m.x]="wr"
  BY ONLY <2>allocated, <3>guard, SMTT(5)
 <3>source. xsrc[m.x]=0
  BY ONLY <2>records, <2>key, <3>guard, <3>domain, <3>kind, SMTT(5) DEF K2, InitPage
 <3>hardware. hw[m.x]="none"
  BY ONLY <2>records, <3>guard, <3>domain, SMTT(5) DEF K3
 <3>qed. QED BY ONLY <3>source, <3>hardware
<2>qed. QED BY ONLY <2>domain, <2>key, <2>peer, <2>allocated, <2>unposted, SMTT(5)

<1>lUnkcKEgqFr4iiWhr4.        
 ASSUME NEW i \in Inst, NEW r \in Rq, NEW m, PinInv, PPost(i,r), zfuzBtBIUox(i,r,m)
 PROVE UNCHANGED <<sled,prefc,pqp>>
<2> USE ONLY <1>lUnkcKEgqFr4iiWhr4, Sizes, Location, Design
 <2>1. LxIMxPCP9nJz /\ nznOuXHhcYItf /\ OhAsiOx49z5 BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>uyleNtrSbgRwix, SMTT(5), Sizes, Location, Design DEF zfuzBtBIUox, PageTo, LxIMxPCP9nJz, nznOuXHhcYItf, OhAsiOx49z5, Sizes, Location, Design


<1>ciGG4zQ04rbOwHlkLMIO.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE NvPXDcmKXZsTp' /\ HQIm3IAXqLUV' /\ ecjUitOmUW7d' /\ RgYv1QDMi6zkL' /\ ylR0LBEy3St' /\ IZhhUTOGv8' /\ ZnRKwgvIBR' /\ jkGgSvV54ECj' /\ mj7L41TfHUZm' /\ o1sHIEFf11S' /\ x0RaFEzCq9v4C' /\ mlnqAztrRn' /\ klzdnqf9B0k' /\ i9yX3Vim7Eua' /\ BuYOreHF98' /\ ygIZjTcbVW' /\ RG2TPVCFgrTo' /\ J01JF16PaE' /\ lNul_Lx45ak' /\ yFa6dcDlBVS' /\ XQ7XaxmP1l' /\ ifz_NNwBOqjC' /\ zo8ixzrz7wHm' /\ bcLSMy3Kol' /\ uEoex9FWaBG1' /\ WlCHpwlqvB' /\ MTMGkq38Qq' /\ QAtyVQxoron' /\ gmzsIHURDU' /\ UYekt3DvL5' /\ JKDi_xwy2QF'
<2> USE ONLY <1>ciGG4zQ04rbOwHlkLMIO, Sizes, Location, Design
<2>1. WYlDDw5YFIV BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>kSb6Azw1B8RVJX, SMTT(5), Sizes, Location, Design DEF WYlDDw5YFIV, NvPXDcmKXZsTp, HQIm3IAXqLUV, ecjUitOmUW7d, RgYv1QDMi6zkL, ylR0LBEy3St, IZhhUTOGv8, ZnRKwgvIBR, jkGgSvV54ECj, mj7L41TfHUZm, o1sHIEFf11S, x0RaFEzCq9v4C, mlnqAztrRn, klzdnqf9B0k, i9yX3Vim7Eua, BuYOreHF98, ygIZjTcbVW, RG2TPVCFgrTo, J01JF16PaE, lNul_Lx45ak, yFa6dcDlBVS, XQ7XaxmP1l, ifz_NNwBOqjC, zo8ixzrz7wHm, bcLSMy3Kol, uEoex9FWaBG1, WlCHpwlqvB, MTMGkq38Qq, QAtyVQxoron, gmzsIHURDU, UYekt3DvL5, JKDi_xwy2QF, Sizes, Location, Design


<1>elz3utRiKJwH6On0.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE s36RwK3zVLML'
<2> USE ONLY <1>elz3utRiKJwH6On0, Sizes, Location, Design
 <2>1. s36RwK3zVLML
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>vK8sxPEFFSUP6a, SMTT(5), Sizes, Location, Design DEF s36RwK3zVLML, Sizes, Location, Design


<1>ce5IOVWqJCRTgjo.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE Aap2aizqmvX'
<2> USE ONLY <1>ce5IOVWqJCRTgjo, Sizes, Location, Design
 <2>1. Aap2aizqmvX
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>vK8sxPEFFSUP6a, SMTT(5), Sizes, Location, Design DEF Aap2aizqmvX, Sizes, Location, Design


<1>B9ICuMaADWkIXs.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE DOobTF_rSk'
<2> USE ONLY <1>B9ICuMaADWkIXs, Sizes, Location, Design
 <2>1. DOobTF_rSk
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>vK8sxPEFFSUP6a, SMTT(5), Sizes, Location, Design DEF DOobTF_rSk, Sizes, Location, Design


<1>ugx2SgLQR77FKl.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE bv1yBh4PIF'
<2> USE ONLY <1>ugx2SgLQR77FKl, Sizes, Location, Design
 <2>1. bv1yBh4PIF
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. PICK m \in net : zfuzBtBIUox(i,r,m)
  BY <1>vK8sxPEFFSUP6a, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>vK8sxPEFFSUP6a, <1>uyleNtrSbgRwix, <1>X2a33Dy1hb6CtTu, <1>sbZFRWPwlwnM, Design, Sizes, SMTT(5), Location DEF zfuzBtBIUox, CpK_oo1Y76x6V, Gens, LtOf, PageTo, PhSet, bv1yBh4PIF, Xids, xV, Sizes, Location, Design


<1>ovIz9l6KZ57iU0S.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE vuHcQ8LC20a'
<2> USE ONLY <1>ovIz9l6KZ57iU0S, Sizes, Location, Design
 <2>1. vuHcQ8LC20a
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. PICK m \in net : zfuzBtBIUox(i,r,m)
  BY <1>vK8sxPEFFSUP6a, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>vK8sxPEFFSUP6a, <1>uyleNtrSbgRwix, <1>X2a33Dy1hb6CtTu, <1>sbZFRWPwlwnM, Design, Sizes, SMTT(5), Location DEF zfuzBtBIUox, CpK_oo1Y76x6V, Gens, LtOf, PageTo, PhSet, vuHcQ8LC20a, Xids, xV, Sizes, Location, Design


<1>r2tlhZOouKmICOq.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE HL5ZYlXRJTb'
<2> USE ONLY <1>r2tlhZOouKmICOq, Sizes, Location, Design
 <2>1. HL5ZYlXRJTb
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>vK8sxPEFFSUP6a, SMTT(5), Sizes, Location, Design DEF HL5ZYlXRJTb, Sizes, Location, Design


<1>kTmXU818tKc58EX.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE vVwYUq39RLe'
<2> USE ONLY <1>kTmXU818tKc58EX, Sizes, Location, Design
 <2>1. vVwYUq39RLe
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. PICK m \in net : zfuzBtBIUox(i,r,m)
  BY <1>vK8sxPEFFSUP6a, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>vK8sxPEFFSUP6a, <1>uyleNtrSbgRwix, <1>X2a33Dy1hb6CtTu, <1>sbZFRWPwlwnM, Design, Sizes, SMTT(5), Location DEF zfuzBtBIUox, CpK_oo1Y76x6V, Gens, LtOf, PageTo, PhSet, vVwYUq39RLe, Xids, xV, Sizes, Location, Design


<1>mdTVrJWNtDSnd6.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE agorv30pby'
<2>old. ph \in [Inst -> [Rq -> PhSet]]
 BY ONLY <1>mdTVrJWNtDSnd6, V22_T_ph, SMTT(5)
<2>message. PICK m \in net : zfuzBtBIUox(i,r,m)
 BY ONLY <1>mdTVrJWNtDSnd6, <1>vK8sxPEFFSUP6a, SMTT(5)
<2>effect. ph' = IF CpK_oo1Y76x6V(m)
                    THEN [ph EXCEPT ![i][r] = "reg"]
                    ELSE [ph EXCEPT ![i][r] = "end"]
 BY ONLY <2>message, SMTT(5) DEF zfuzBtBIUox
<2>values. "reg" \in PhSet /\ "end" \in PhSet
 BY ONLY SMTT(5) DEF PhSet
<2>qed. QED BY ONLY <1>mdTVrJWNtDSnd6, <2>old, <2>effect, <2>values, SMTT(5) DEF agorv30pby


<1>Dk145uK3jCMZhUB.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE VQ6pJlqc7__'
<2> USE ONLY <1>Dk145uK3jCMZhUB, Sizes, Location, Design
 <2>1. VQ6pJlqc7__
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. PICK m \in net : zfuzBtBIUox(i,r,m)
  BY <1>vK8sxPEFFSUP6a, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>vK8sxPEFFSUP6a, <1>uyleNtrSbgRwix, <1>X2a33Dy1hb6CtTu, <1>sbZFRWPwlwnM, Design, Sizes, SMTT(5), Location DEF zfuzBtBIUox, CpK_oo1Y76x6V, Gens, LtOf, PageTo, PhSet, VQ6pJlqc7__, Xids, xV, Sizes, Location, Design


<1>BFVc20XfHlVGjEo.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE OhAsiOx49z5'
<2> USE ONLY <1>BFVc20XfHlVGjEo, Sizes, Location, Design
 <2>1. OhAsiOx49z5
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. PICK m \in net : zfuzBtBIUox(i,r,m)
  BY <1>vK8sxPEFFSUP6a, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>lUnkcKEgqFr4iiWhr4, SMTT(5), Sizes, Location, Design DEF OhAsiOx49z5, Sizes, Location, Design


<1>zmRcRvQAnklSOc.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE DZB1eX4Rh3'
<2> USE ONLY <1>zmRcRvQAnklSOc, Sizes, Location, Design
 <2>1. DZB1eX4Rh3
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. PICK m \in net : zfuzBtBIUox(i,r,m)
  BY <1>vK8sxPEFFSUP6a, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>vK8sxPEFFSUP6a, <1>uyleNtrSbgRwix, <1>X2a33Dy1hb6CtTu, <1>sbZFRWPwlwnM, Design, Sizes, SMTT(5), Location DEF zfuzBtBIUox, CpK_oo1Y76x6V, Gens, LtOf, PageTo, PhSet, DZB1eX4Rh3, Xids, xV, Sizes, Location, Design


<1>k8jTeczkeUqaYlQvN.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE nznOuXHhcYItf'
<2> USE ONLY <1>k8jTeczkeUqaYlQvN, Sizes, Location, Design
 <2>1. nznOuXHhcYItf
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. PICK m \in net : zfuzBtBIUox(i,r,m)
  BY <1>vK8sxPEFFSUP6a, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>lUnkcKEgqFr4iiWhr4, SMTT(5), Sizes, Location, Design DEF nznOuXHhcYItf, Sizes, Location, Design


<1>b287HJRuHJGa5BC.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE ANoJHAKJSFA'
<2> USE ONLY <1>b287HJRuHJGa5BC, Sizes, Location, Design
 <2>1. ANoJHAKJSFA
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. PICK m \in net : zfuzBtBIUox(i,r,m)
  BY <1>vK8sxPEFFSUP6a, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>vK8sxPEFFSUP6a, <1>uyleNtrSbgRwix, <1>X2a33Dy1hb6CtTu, <1>sbZFRWPwlwnM, Design, Sizes, SMTT(5), Location DEF zfuzBtBIUox, CpK_oo1Y76x6V, Gens, LtOf, PageTo, PhSet, ANoJHAKJSFA, Xids, xV, Sizes, Location, Design


<1>IFf9LqnqJxjVs6.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE Wm6H2cY5fj'
<2> USE ONLY <1>IFf9LqnqJxjVs6, Sizes, Location, Design
 <2>1. Wm6H2cY5fj
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. PICK m \in net : zfuzBtBIUox(i,r,m)
  BY <1>vK8sxPEFFSUP6a, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>vK8sxPEFFSUP6a, <1>uyleNtrSbgRwix, <1>X2a33Dy1hb6CtTu, <1>sbZFRWPwlwnM, Design, Sizes, SMTT(5), Location DEF zfuzBtBIUox, CpK_oo1Y76x6V, Gens, LtOf, PageTo, PhSet, Wm6H2cY5fj, Xids, xV, Sizes, Location, Design


<1>tEr2JMjN3JSboAJj.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE LxIMxPCP9nJz'
<2> USE ONLY <1>tEr2JMjN3JSboAJj, Sizes, Location, Design
 <2>1. LxIMxPCP9nJz
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. PICK m \in net : zfuzBtBIUox(i,r,m)
  BY <1>vK8sxPEFFSUP6a, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>lUnkcKEgqFr4iiWhr4, SMTT(5), Sizes, Location, Design DEF LxIMxPCP9nJz, Sizes, Location, Design


<1>mXRGfdywUv38oAM.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE vsOorc_9Jjh'
<2> USE ONLY <1>mXRGfdywUv38oAM, Sizes, Location, Design
 <2>1. VQ6pJlqc7__ /\ vsOorc_9Jjh
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. PICK m \in net : zfuzBtBIUox(i,r,m)
  BY <1>vK8sxPEFFSUP6a, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>vK8sxPEFFSUP6a, <1>uyleNtrSbgRwix, <1>X2a33Dy1hb6CtTu, <1>sbZFRWPwlwnM, Design, Sizes, SMTT(5), Location DEF zfuzBtBIUox, CpK_oo1Y76x6V, Gens, LtOf, PageTo, PhSet, VQ6pJlqc7__, vsOorc_9Jjh, Xids, xV, Sizes, Location, Design


<1>RIdBMrhjpH29NO4A.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE ZMSuPTLDjlpT'
<2> USE ONLY <1>RIdBMrhjpH29NO4A, Sizes, Location, Design
 <2>1. ZMSuPTLDjlpT
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. PICK m \in net : zfuzBtBIUox(i,r,m)
  BY <1>vK8sxPEFFSUP6a, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. QED BY <2>1, <2>2, <1>vK8sxPEFFSUP6a, <1>uyleNtrSbgRwix, <1>X2a33Dy1hb6CtTu, <1>sbZFRWPwlwnM, Design, Sizes, SMTT(5), Location DEF zfuzBtBIUox, CpK_oo1Y76x6V, Gens, LtOf, PageTo, PhSet, ZMSuPTLDjlpT, Xids, xV, Sizes, Location, Design


<1>hzPOBcIR7u63bZs.          
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PPost(i,r)
 PROVE CoreTypeOK'
<2> USE ONLY <1>hzPOBcIR7u63bZs, Sizes, Location, Design
<2>1. WYlDDw5YFIV'
 BY <1>ciGG4zQ04rbOwHlkLMIO, <1>elz3utRiKJwH6On0, <1>ce5IOVWqJCRTgjo, <1>B9ICuMaADWkIXs, <1>ugx2SgLQR77FKl, <1>ovIz9l6KZ57iU0S, <1>r2tlhZOouKmICOq, <1>kTmXU818tKc58EX, <1>mdTVrJWNtDSnd6, <1>Dk145uK3jCMZhUB, <1>BFVc20XfHlVGjEo, <1>zmRcRvQAnklSOc, <1>k8jTeczkeUqaYlQvN, <1>b287HJRuHJGa5BC, <1>IFf9LqnqJxjVs6, <1>tEr2JMjN3JSboAJj, <1>mXRGfdywUv38oAM, <1>RIdBMrhjpH29NO4A, SMTT(5), Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>dEYtwi6SKw2gQAIsrP, Sizes, Location, Design DEF Sizes, Location, Design


<1> QED BY <1>hzPOBcIR7u63bZs, Sizes, Location, Design DEF Sizes, Location, Design
====
