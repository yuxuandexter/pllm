---- MODULE PdFinalAuxType_0cd814f5e0dc64c0 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections

THEOREM AuxType_0cd814f5e0dc64c0 ==          
 ASSUME Sizes, Location, Design,
        NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
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


<1> HIDE DEF ylR0LBEy3St, XQ7XaxmP1l, J01JF16PaE, BuYOreHF98, ZnRKwgvIBR, IZhhUTOGv8, NvPXDcmKXZsTp, x0RaFEzCq9v4C, zo8ixzrz7wHm, mj7L41TfHUZm, jkGgSvV54ECj, o1sHIEFf11S, agorv30pby, ygIZjTcbVW, yFa6dcDlBVS, lNul_Lx45ak, Wm6H2cY5fj, RG2TPVCFgrTo, ANoJHAKJSFA, DZB1eX4Rh3, vVwYUq39RLe, VQ6pJlqc7__, klzdnqf9B0k, i9yX3Vim7Eua, vuHcQ8LC20a, ifz_NNwBOqjC, LxIMxPCP9nJz, nznOuXHhcYItf, OhAsiOx49z5, UYekt3DvL5, WlCHpwlqvB, MTMGkq38Qq, gmzsIHURDU, bcLSMy3Kol, ZMSuPTLDjlpT, uEoex9FWaBG1, QAtyVQxoron, DOobTF_rSk, Aap2aizqmvX, bv1yBh4PIF, JKDi_xwy2QF, vsOorc_9Jjh, mlnqAztrRn, HL5ZYlXRJTb, ecjUitOmUW7d, HQIm3IAXqLUV, RgYv1QDMi6zkL, s36RwK3zVLML, WYlDDw5YFIV, XqqwOkEcpgA

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


<1>zgFNlviI7lqEpSfd.        
  ASSUME NEW i \in Inst, NEW r \in Rq, PExpose(i,r)
  PROVE UNCHANGED <<alive, crep, drep, dsucc, gbad, gen, hd, hok, hp, hw, iv, kfly, kpin, krs, nfail, pgn, plt, pqp, pr, prefc, pst, ptl, pvis, rd, rg, rhit, rp, rpe, rpg, rt, sfly, sled, torn, xdst>>
  BY ONLY <1>zgFNlviI7lqEpSfd, Sizes, Location, Design, ZenonT(5) DEF PExpose, ghV, instV, kV, pgV, recV, rtV, vars, xV, Sizes, Location, Design


<1>iL3IPdXB5d9.        
  ASSUME NEW i \in Inst, NEW r \in Rq, K8
  PROVE XqqwOkEcpgA(i,r)
  BY ONLY <1>iL3IPdXB5d9, Sizes, Location, Design DEF K8, XqqwOkEcpgA, Sizes, Location, Design


<1>abpUulH8kAx6Fbx.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE Mode = "pull" /\ IsP(i) /\ ph[i][r] = "ready" /\ nx <= MX /\ nx \in Xids
<2> USE ONLY <1>abpUulH8kAx6Fbx, Sizes, Location, Design
 <2>1. mlnqAztrRn BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, Design, Sizes, SMTT(5), Location DEF PExpose, SendReady, mlnqAztrRn, Xids, Sizes, Location, Design


<1>uLHwEHVpgLQ4fpjy.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE /\ rpg[i][r] \in Pages /\ Loc(rpg[i][r]) = i /\ pst[rpg[i][r]] = "priv"
       /\ pr[rpg[i][r]] = r /\ pgn[rpg[i][r]] = rg[i][r]
       /\ rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] \in DInst
       /\ hp[r][rg[i][r]] = i /\ hd[r][rg[i][r]] = rpe[i][r]
       /\ led[rpg[i][r]] = {} /\ sled[rpg[i][r]] = {} /\ sfly[rpg[i][r]] = {}
       /\ rx[i][r] = 0 /\ plt[rpg[i][r]] = ptl[rpg[i][r]] /\ ptl[rpg[i][r]] \in PLens(r,rg[i][r])
       /\ LtOf(i,r) = ptl[rpg[i][r]]
<2> USE ONLY <1>uLHwEHVpgLQ4fpjy, Sizes, Location, Design
 <2>1. K8 /\ K1 /\ ph[i][r] = "ready" /\ IsP(i)
  BY <1>abpUulH8kAx6Fbx, V21_Inv_K1, V21_Inv_K8, Sizes, Location, Design DEF Sizes, Location, Design
 <2>2. XqqwOkEcpgA(i,r) BY <2>1, <1>iL3IPdXB5d9, Sizes, Location, Design DEF Sizes, Location, Design
 <2>3. rg[i][r] \in Gens /\ rg[i][r] <= gen[r] /\ rpe[i][r] = hd[r][rg[i][r]]
  BY <2>2, <2>1, SMTT(5), Sizes, Location, Design DEF XqqwOkEcpgA, Sizes, Location, Design
 <2>4. QED BY <2>1, <2>2, <2>3, SMTT(5), Sizes, Location, Design DEF XqqwOkEcpgA, K1, Active, OwnedBy, LtOf, Sizes, Location, Design


<1>CiuxYthKnLyXuzAfspbUGv.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE NvPXDcmKXZsTp' /\ HQIm3IAXqLUV' /\ ecjUitOmUW7d' /\ RgYv1QDMi6zkL' /\ s36RwK3zVLML' /\ ylR0LBEy3St' /\ IZhhUTOGv8' /\ Aap2aizqmvX' /\ ZnRKwgvIBR' /\ DOobTF_rSk' /\ bv1yBh4PIF' /\ jkGgSvV54ECj' /\ mj7L41TfHUZm' /\ o1sHIEFf11S' /\ x0RaFEzCq9v4C' /\ vVwYUq39RLe' /\ VQ6pJlqc7__' /\ OhAsiOx49z5' /\ DZB1eX4Rh3' /\ nznOuXHhcYItf' /\ ANoJHAKJSFA' /\ klzdnqf9B0k' /\ i9yX3Vim7Eua' /\ BuYOreHF98' /\ ygIZjTcbVW' /\ RG2TPVCFgrTo' /\ J01JF16PaE' /\ lNul_Lx45ak' /\ yFa6dcDlBVS' /\ XQ7XaxmP1l' /\ ifz_NNwBOqjC' /\ LxIMxPCP9nJz' /\ zo8ixzrz7wHm' /\ uEoex9FWaBG1'
<2> USE ONLY <1>CiuxYthKnLyXuzAfspbUGv, Sizes, Location, Design
<2>1. WYlDDw5YFIV BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. QED BY <2>1, <1>zgFNlviI7lqEpSfd, SMTT(5), Sizes, Location, Design DEF WYlDDw5YFIV, NvPXDcmKXZsTp, HQIm3IAXqLUV, ecjUitOmUW7d, RgYv1QDMi6zkL, s36RwK3zVLML, ylR0LBEy3St, IZhhUTOGv8, Aap2aizqmvX, ZnRKwgvIBR, DOobTF_rSk, bv1yBh4PIF, jkGgSvV54ECj, mj7L41TfHUZm, o1sHIEFf11S, x0RaFEzCq9v4C, vVwYUq39RLe, VQ6pJlqc7__, OhAsiOx49z5, DZB1eX4Rh3, nznOuXHhcYItf, ANoJHAKJSFA, klzdnqf9B0k, i9yX3Vim7Eua, BuYOreHF98, ygIZjTcbVW, RG2TPVCFgrTo, J01JF16PaE, lNul_Lx45ak, yFa6dcDlBVS, XQ7XaxmP1l, ifz_NNwBOqjC, LxIMxPCP9nJz, zo8ixzrz7wHm, uEoex9FWaBG1, Sizes, Location, Design


<1>SZeDmV59GW6bSKIZ8.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE vuHcQ8LC20a'
<2> USE ONLY <1>SZeDmV59GW6bSKIZ8, Sizes, Location, Design
 <2>1. vuHcQ8LC20a /\ mlnqAztrRn
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>abpUulH8kAx6Fbx, <1>uLHwEHVpgLQ4fpjy, Design, Sizes, Location, <1>sbZFRWPwlwnM, SMTT(5) DEF PExpose, LtOf, PhSet, SendReady, NTok, PLens, Gens, Xids, vuHcQ8LC20a, mlnqAztrRn, Sizes, Location, Design


<1>PGeaQWeKNasnGDoma.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE HL5ZYlXRJTb'
<2> USE ONLY <1>PGeaQWeKNasnGDoma, Sizes, Location, Design
 <2>1. HL5ZYlXRJTb /\ mlnqAztrRn /\ VQ6pJlqc7__
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>abpUulH8kAx6Fbx, <1>uLHwEHVpgLQ4fpjy, Design, Sizes, Location, <1>sbZFRWPwlwnM, SMTT(5) DEF PExpose, Msg, MsgT, LtOf, HL5ZYlXRJTb, VQ6pJlqc7__, mlnqAztrRn, Xids, Gens, PInst, DInst, Inst, NL, PhSet, PLens, NTok, SendReady, Sizes, Location, Design


<1>CnelhujqO1htf62L.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE mlnqAztrRn'
<2> USE ONLY <1>CnelhujqO1htf62L, Sizes, Location, Design
 <2>1. mlnqAztrRn
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>abpUulH8kAx6Fbx, <1>uLHwEHVpgLQ4fpjy, Design, Sizes, Location, <1>sbZFRWPwlwnM, SMTT(5) DEF PExpose, LtOf, PhSet, SendReady, NTok, PLens, Gens, Xids, mlnqAztrRn, Sizes, Location, Design


<1>ZfpmGHAfzDAATExk.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE agorv30pby'
<2> USE ONLY <1>ZfpmGHAfzDAATExk, Sizes, Location, Design
<2>type. agorv30pby

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ZfpmGHAfzDAATExk, V22_T_ph, SMTT(5) DEF agorv30pby

<2>effect. ph'=[ph EXCEPT ![i][r]="exp"]
 BY ONLY <1>ZfpmGHAfzDAATExk, ZenonT(5) DEF PExpose
<2>value. "exp" \in PhSet
 BY ONLY SMTT(5) DEF PhSet
<2>qed. QED BY ONLY <1>ZfpmGHAfzDAATExk, <2>type, <2>effect, <2>value, SMTT(5) DEF agorv30pby

<1>bydja8YHGVgh1ZHE.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE Wm6H2cY5fj'
<2> USE ONLY <1>bydja8YHGVgh1ZHE, Sizes, Location, Design
<2>type. Wm6H2cY5fj /\ mlnqAztrRn

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>bydja8YHGVgh1ZHE, V22_T_nx, V22_T_rx, SMTT(5) DEF Wm6H2cY5fj, mlnqAztrRn

<2>effect. rx'=[rx EXCEPT ![i][r]=nx]
 BY ONLY <1>bydja8YHGVgh1ZHE, ZenonT(5) DEF PExpose
<2>bound. nx <= MX
 BY ONLY <1>bydja8YHGVgh1ZHE, ZenonT(5) DEF PExpose
<2>value. nx \in 0..MX
 BY ONLY <2>type, <2>bound, Sizes, SMTT(5) DEF mlnqAztrRn, Sizes
<2>qed. QED BY ONLY <1>bydja8YHGVgh1ZHE, <2>type, <2>effect, <2>value, SMTT(5) DEF Wm6H2cY5fj

<1>QDbjOSIfOM8PaI2L.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE bcLSMy3Kol'
<2> USE ONLY <1>QDbjOSIfOM8PaI2L, Sizes, Location, Design
<2>type. bcLSMy3Kol /\ lNul_Lx45ak

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>QDbjOSIfOM8PaI2L, V22_T_rpe, V22_T_xd, SMTT(5) DEF bcLSMy3Kol, lNul_Lx45ak

<2>effect. xd'=[xd EXCEPT ![nx]=rpe[i][r]]
 BY ONLY <1>QDbjOSIfOM8PaI2L, ZenonT(5) DEF PExpose
<2>value. rpe[i][r] \in {0} \cup Inst
 BY ONLY <1>QDbjOSIfOM8PaI2L, <2>type, SMTT(5) DEF lNul_Lx45ak
<2>qed. QED BY ONLY <1>QDbjOSIfOM8PaI2L, <2>type, <2>effect, <2>value, SMTT(5) DEF bcLSMy3Kol

<1>nClmMngn9WZp531T.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE WlCHpwlqvB'
<2> USE ONLY <1>nClmMngn9WZp531T, Sizes, Location, Design
<2>type. WlCHpwlqvB /\ ygIZjTcbVW

<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>nClmMngn9WZp531T, V22_T_rg, V22_T_xg, SMTT(5) DEF WlCHpwlqvB, ygIZjTcbVW

<2>effect. xg'=[xg EXCEPT ![nx]=rg[i][r]]
 BY ONLY <1>nClmMngn9WZp531T, ZenonT(5) DEF PExpose
<2>value. rg[i][r] \in 0..MG
 BY ONLY <2>type, SMTT(5) DEF ygIZjTcbVW
<2>qed. QED BY ONLY <2>type, <2>effect, <2>value, SMTT(5) DEF WlCHpwlqvB

<1>RWiZKeaTOLkg6iYD.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE MTMGkq38Qq'
<2> USE ONLY <1>RWiZKeaTOLkg6iYD, Sizes, Location, Design
 <2>1. MTMGkq38Qq
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>abpUulH8kAx6Fbx, <1>uLHwEHVpgLQ4fpjy, Design, Sizes, Location, <1>sbZFRWPwlwnM, SMTT(5) DEF PExpose, LtOf, PhSet, SendReady, NTok, PLens, Gens, Xids, MTMGkq38Qq, Sizes, Location, Design


<1>xse0kwr4h7CVOOXrP.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE vsOorc_9Jjh'
<2> USE ONLY <1>xse0kwr4h7CVOOXrP, Sizes, Location, Design
 <2>1. vsOorc_9Jjh /\ VQ6pJlqc7__
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>abpUulH8kAx6Fbx, <1>uLHwEHVpgLQ4fpjy, Design, Sizes, Location, <1>sbZFRWPwlwnM, SMTT(5) DEF PExpose, LtOf, PhSet, SendReady, NTok, PLens, Gens, Xids, vsOorc_9Jjh, VQ6pJlqc7__, Sizes, Location, Design


<1>ZvyuvqkdT02dPEofu.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE QAtyVQxoron'
<2> USE ONLY <1>ZvyuvqkdT02dPEofu, Sizes, Location, Design
 <2>1. QAtyVQxoron
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>abpUulH8kAx6Fbx, <1>uLHwEHVpgLQ4fpjy, Design, Sizes, Location, <1>sbZFRWPwlwnM, SMTT(5) DEF PExpose, LtOf, PhSet, SendReady, NTok, PLens, Gens, Xids, QAtyVQxoron, Sizes, Location, Design


<1>iiUpKYIBFPgvWN1z.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE gmzsIHURDU'
<2> USE ONLY <1>iiUpKYIBFPgvWN1z, Sizes, Location, Design
 <2>1. gmzsIHURDU
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>abpUulH8kAx6Fbx, <1>uLHwEHVpgLQ4fpjy, Design, Sizes, Location, <1>sbZFRWPwlwnM, SMTT(5) DEF PExpose, LtOf, PhSet, SendReady, NTok, PLens, Gens, Xids, gmzsIHURDU, Sizes, Location, Design


<1>NnaWpm5nvxB7kH00.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE UYekt3DvL5'
<2> USE ONLY <1>NnaWpm5nvxB7kH00, Sizes, Location, Design
 <2>1. UYekt3DvL5
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>abpUulH8kAx6Fbx, <1>uLHwEHVpgLQ4fpjy, Design, Sizes, Location, <1>sbZFRWPwlwnM, SMTT(5) DEF PExpose, LtOf, PhSet, SendReady, NTok, PLens, Gens, Xids, UYekt3DvL5, Sizes, Location, Design


<1>pdXwdXA1J49KM7dMoq.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE ZMSuPTLDjlpT'
<2>1. ZMSuPTLDjlpT
 BY ONLY <1>pdXwdXA1J49KM7dMoq, V22_T_xsrc, SMTT(5) DEF ZMSuPTLDjlpT
<2>2. rpg \in [Inst -> [Rq -> 0..NP]]
 BY ONLY <1>pdXwdXA1J49KM7dMoq, V22_T_rpg, SMTT(5)
<2>3. rpg[i][r] \in 0..NP
 BY ONLY <1>pdXwdXA1J49KM7dMoq, <2>2, SMTT(5)
<2>4. xsrc' = [xsrc EXCEPT ![nx] = rpg[i][r]]
 BY ONLY <1>pdXwdXA1J49KM7dMoq, SMTT(5) DEF PExpose
<2>5. QED
 BY ONLY <2>1, <2>3, <2>4, SMTT(5) DEF ZMSuPTLDjlpT

<1>Oz5cAHltUlVIDHhYZ.        
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE JKDi_xwy2QF'
<2> USE ONLY <1>Oz5cAHltUlVIDHhYZ, Sizes, Location, Design
 <2>1. JKDi_xwy2QF
  BY <1>ldolEP0z8Yv53hp5, V21_Inv_TypeOK, Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
 <2>2. QED BY <2>1, <1>abpUulH8kAx6Fbx, <1>uLHwEHVpgLQ4fpjy, Design, Sizes, Location, <1>sbZFRWPwlwnM, SMTT(5) DEF PExpose, LtOf, PhSet, SendReady, NTok, PLens, Gens, Xids, JKDi_xwy2QF, Sizes, Location, Design


<1>tFEZaVYyNmzlIQiQc.          
 ASSUME NEW i \in Inst, NEW r \in Rq, PinInv, PExpose(i,r)
 PROVE CoreTypeOK'
<2> USE ONLY <1>tFEZaVYyNmzlIQiQc, Sizes, Location, Design
<2>1. WYlDDw5YFIV'
 BY <1>CiuxYthKnLyXuzAfspbUGv, <1>SZeDmV59GW6bSKIZ8, <1>PGeaQWeKNasnGDoma, <1>CnelhujqO1htf62L, <1>ZfpmGHAfzDAATExk, <1>bydja8YHGVgh1ZHE, <1>QDbjOSIfOM8PaI2L, <1>nClmMngn9WZp531T, <1>RWiZKeaTOLkg6iYD, <1>xse0kwr4h7CVOOXrP, <1>ZvyuvqkdT02dPEofu, <1>iiUpKYIBFPgvWN1z, <1>NnaWpm5nvxB7kH00, <1>pdXwdXA1J49KM7dMoq, <1>Oz5cAHltUlVIDHhYZ, SMTT(5), Sizes, Location, Design DEF WYlDDw5YFIV, Sizes, Location, Design
<2>2. QED BY <2>1, <1>dEYtwi6SKw2gQAIsrP, Sizes, Location, Design DEF Sizes, Location, Design


<1> QED BY <1>tFEZaVYyNmzlIQiQc, Sizes, Location, Design DEF Sizes, Location, Design
====
