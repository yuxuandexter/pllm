---- MODULE PdFinalAuxType_9ef278c147c12b12 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects

THEOREM AuxType_9ef278c147c12b12 ==        
 ASSUME Sizes, Location, Design,
        PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE STypeOK'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RO_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           RO_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           RO_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           RO_Src(x) == IF RO_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           RO_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           RO_Quarantine(x) == x \in sentry /\ ~RO_Close(x) /\
            ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           RO_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\ (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           RO_Pin(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           RO_Drop(p) == (RO_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RO_Pin(p) /\ sready[p] /\ ~(\E x \in sentry' : p \in xsrcP'[x])


           RO_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
            spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           RO_E_rpgS == rpgS'={h \in rpgS : RO_HLive(h) \/ (RO_HPin(h) /\ Mut # "unrefBeforeKDone")}


           RO_E_xsrcS == xsrcS'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="shared" THEN {RO_Src(x)} ELSE {}) ELSE xsrcS[x]]


           RO_E_xsrcP == xsrcP'=[x \in Xids |-> IF RO_Posted(x) THEN (IF RO_Src(x) \in SPages /\ spst[RO_Src(x)]="priv" THEN {RO_Src(x)} ELSE {}) ELSE xsrcP[x]]


           RO_E_sentry == sentry'=(sentry \cup {x \in Xids : RO_Posted(x)}) \ {x \in Xids : RO_Close(x) \/ RO_Quarantine(x)}


           RO_E_squar == squar'=squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RO_Quarantine(x)}})


           RO_E_smap == smap'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN 0 ELSE smap[i][r]]]


           RO_E_schoice == schoice'=[i \in PInst |-> [r \in Rq |-> IF rg'[i][r] # rg[i][r] THEN FALSE ELSE schoice[i][r]]]


           RO_E_spst == spst'=[p \in SPages |-> IF \E x \in Xids : RO_Quarantine(x) /\ p \in xsrcP[x] THEN "quar" ELSE IF RO_Drop(p) THEN "free" ELSE IF RO_Ended(p) THEN "drain" ELSE spst[p]]


           RO_E_xprefixOK == xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RO_Valid(x) ELSE xprefixOK[x]]


           RO_E_dpreOK == dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop" THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") => (IF hw[x]="issued" THEN xprefixOK[x] ELSE RO_Valid(x)) ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]


           RO_E_sprefc == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)+SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

           \* T2M-LOCAL-VISIBILITY

           RO_Flat(e) == <<e[1][1],e[1][2],e[2][1],e[2][2]>>

           \* T2M-LOCAL-VISIBILITY

           RO_Pairs(E,p) == {<<x,p>> : x \in E}

           \* T2M-LOCAL-VISIBILITY

           RO_ESet(E,X,p) == {<<x,p>> : x \in {x \in E : p \in X[x]}}


           RO_QSet(Q,p) == {h \in Q : h[2]=p}


           RO_RSet(H,p) == {h \in H : h[4]=p}

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, RO_E_rpgS, RO_E_xsrcS, RO_E_xsrcP, RO_E_sentry, RO_E_squar, RO_E_smap, RO_E_schoice, RO_E_spst, RO_E_xprefixOK, RO_E_dpreOK, RO_E_sprefc, RO_Flat, RO_Pairs, RO_ESet, RO_QSet, RO_RSet

<1>H0Dre0I9dt5V.        
 ASSUME B2, SFollow
 PROVE RO_E_rpgS
 BY ONLY <1>H0Dre0I9dt5V, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_rpgS, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>m0crpwxTDdjmI.        
 ASSUME B2, SFollow
 PROVE RO_E_xsrcS
 BY ONLY <1>m0crpwxTDdjmI, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_xsrcS, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ifwDg0IoVKTvz.        
 ASSUME B2, SFollow
 PROVE RO_E_xsrcP
 BY ONLY <1>ifwDg0IoVKTvz, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_xsrcP, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>oVMEMsT8gqQqbk.        
 ASSUME B2, SFollow
 PROVE RO_E_sentry
 BY ONLY <1>oVMEMsT8gqQqbk, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_sentry, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>lIuyiSzJ58zq2.        
 ASSUME B2, SFollow
 PROVE RO_E_squar
 BY ONLY <1>lIuyiSzJ58zq2, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_squar, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kcdhaxe1yPn5.        
 ASSUME B2, SFollow
 PROVE RO_E_smap
 BY ONLY <1>kcdhaxe1yPn5, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_smap, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FuwCbPxDgseJUUg.        
 ASSUME B2, SFollow
 PROVE RO_E_schoice
 BY ONLY <1>FuwCbPxDgseJUUg, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_schoice, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>LQE0C5CV3kHl.        
 ASSUME B2, SFollow
 PROVE RO_E_spst
 BY ONLY <1>LQE0C5CV3kHl, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_spst, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>icyzRs1WpaOrfYqB8.        
 ASSUME B2, SFollow
 PROVE RO_E_xprefixOK
 BY ONLY <1>icyzRs1WpaOrfYqB8, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_xprefixOK, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>kgOzghpuDBjlN1.        
 ASSUME B2, SFollow
 PROVE RO_E_dpreOK
 BY ONLY <1>kgOzghpuDBjlN1, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_dpreOK, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ugzpmKUcZ3Dcdb.        
 ASSUME B2, SFollow
 PROVE RO_E_sprefc
 BY ONLY <1>ugzpmKUcZ3Dcdb, Sizes, Location, Design, ZenonT(10) DEF SFollow, RO_E_sprefc, RO_HLive, RO_HPin, RO_Posted, RO_Src, RO_Close, RO_Quarantine, RO_Ended, RO_Pin, RO_Drop, RO_Valid, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>pDDs2iPJ6v1.        
 ASSUME PinInv, B2
 PROVE STypeOK /\ SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6 /\ SharedImmutable /\ PrefcMatchesHolders /\ HitIdentity /\ SMapIntegrity
 BY ONLY <1>pDDs2iPJ6v1, Sizes, Location, Design, V21_Inv_HitIdentity, V21_Inv_KReadIntegrity, V21_Inv_P_SI1, V21_Inv_P_SI2, V21_Inv_P_SI3, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_P_SI6, V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, V21_Inv_SharedImmutable DEF P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, KReadIntegrity, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>jGg3R.         SFollow => UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ZenonT(10), V21_SFollowStatic, Sizes, Location, Design DEF sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>eav3Mlg8.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~RO_Posted(x)
 BY ONLY <1>eav3Mlg8, Sizes, Location, Design, SMTT(10) DEF RO_Posted, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J0yx6oHL5UyrV.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
<2> USE ONLY <1>J0yx6oHL5UyrV, Sizes, Location, Design
<2>1. STypeOK BY V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY ONLY <1>J0yx6oHL5UyrV, <2>2, SMTT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RO_E_smap /\ RO_E_schoice /\ RO_E_xsrcS /\ RO_E_xsrcP /\ (\A x \in Xids : ~RO_Posted(x))
 BY <2>3, <1>kcdhaxe1yPn5, <1>FuwCbPxDgseJUUg, <1>m0crpwxTDdjmI, <1>ifwDg0IoVKTvz, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED rg
 BY <1>J0yx6oHL5UyrV, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. /\ smap \in [PInst -> [Rq -> {0} \cup SPages]]
       /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>J0yx6oHL5UyrV, V22_T_schoice, V22_T_smap, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

 <3>4. /\ smap' = [i \in PInst |-> [r \in Rq |-> smap[i][r]]]
       /\ schoice' = [i \in PInst |-> [r \in Rq |-> schoice[i][r]]]
       /\ xsrcS' = [x \in Xids |-> xsrcS[x]] /\ xsrcP' = [x \in Xids |-> xsrcP[x]]
 BY ONLY <3>1, <3>2, SMTT(20), Sizes, Location, Design DEF RO_E_smap, RO_E_schoice, RO_E_xsrcS, RO_E_xsrcP, Sizes, Location, Design
 <3>5. QED BY ONLY <3>3, <3>4, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>SvtT5da.        
 ASSUME PinInv, B2
 PROVE /\ spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
       /\ rpgS \subseteq PInst \X Rq \X Gens \X SPages
       /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
       /\ sentry \subseteq Xids /\ squar \subseteq Xids \X SPages
 
<2> HIDE DEF CoreTypeOK, STypeOK
<2>fields. QED
 BY ONLY <1>SvtT5da, V22_T_rpgS, V22_T_sentry, V22_T_spst, V22_T_squar, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>L8DIG3nRD9Lv3.        
 IsFiniteSet(PInst) /\ IsFiniteSet(Rq) /\ IsFiniteSet(Gens) /\ IsFiniteSet(Xids) /\ IsFiniteSet(SPages)
 BY Sizes, FS_Interval, SMTT(10), Location, Design DEF PInst, Rq, Gens, Xids, SPages, Sizes, Location, Design


<1>ePMf4RNB21H.        
 IsFiniteSet(PInst \X Rq \X Gens \X SPages) /\ IsFiniteSet(Xids \X SPages)
<2>1. IsFiniteSet((PInst \X Rq) \X (Gens \X SPages)) /\ IsFiniteSet(Xids \X SPages)
 BY <1>L8DIG3nRD9Lv3, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. {RO_Flat(e) : e \in (PInst \X Rq) \X (Gens \X SPages)} = PInst \X Rq \X Gens \X SPages
 <3>1. ASSUME NEW e \in (PInst \X Rq) \X (Gens \X SPages)
        PROVE RO_Flat(e) \in PInst \X Rq \X Gens \X SPages
 BY SMTT(10), Sizes, Location, Design DEF RO_Flat, Sizes, Location, Design
 <3>2. ASSUME NEW e \in PInst \X Rq \X Gens \X SPages
        PROVE e \in {RO_Flat(t) : t \in (PInst \X Rq) \X (Gens \X SPages)}
  <4>1. <<<<e[1],e[2]>>,<<e[3],e[4]>>>> \in (PInst \X Rq) \X (Gens \X SPages)
   BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. RO_Flat(<<<<e[1],e[2]>>,<<e[3],e[4]>>>>)=e
   BY SMTT(10), Sizes, Location, Design DEF RO_Flat, Sizes, Location, Design
  <4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet({RO_Flat(e) : e \in (PInst \X Rq) \X (Gens \X SPages)})
 BY <2>1, FS_Image, IsaT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>1, <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>l9BskpKB8.        
 ASSUME NEW U, IsFiniteSet(U), NEW V \in SUBSET U, NEW P(_)
 PROVE Cardinality({x \in V : P(x)}) \in Nat
<2> USE ONLY <1>l9BskpKB8, Sizes, Location, Design
<2>1. {x \in V : P(x)} \subseteq U BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet({x \in V : P(x)}) BY <2>1, FS_Subset, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, FS_CardinalityType, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>Hl2eKc2VBkR40pk.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc
 PROVE /\ rpgS' \subseteq PInst \X Rq \X Gens \X SPages
       /\ sentry' \subseteq Xids
       /\ squar' \subseteq Xids \X SPages
<2> USE ONLY <1>Hl2eKc2VBkR40pk, Sizes, Location, Design
<2>1. RO_E_rpgS /\ RO_E_sentry /\ RO_E_squar /\ (\A x \in Xids : ~RO_Posted(x))
 BY <1>H0Dre0I9dt5V, <1>oVMEMsT8gqQqbk, <1>lIuyiSzJ58zq2, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpgS \subseteq PInst \X Rq \X Gens \X SPages /\ sentry \subseteq Xids
       /\ squar \subseteq Xids \X SPages /\ xsrcS \in [Xids -> SUBSET SPages]
 BY <1>SvtT5da, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. rpgS' \subseteq PInst \X Rq \X Gens \X SPages
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_rpgS, Sizes, Location, Design
<2>4. sentry' \subseteq Xids
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_sentry, Sizes, Location, Design
<2>5. squar' \subseteq Xids \X SPages
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_squar, Sizes, Location, Design
<2>6. QED BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>x8eiSet.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc, NEW p \in SPages
 PROVE /\ SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
       /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
       /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
<2> USE ONLY <1>x8eiSet, Sizes, Location, Design
<2>1. rpgS \subseteq PInst \X Rq \X Gens \X SPages /\ sentry \subseteq Xids /\ squar \subseteq Xids \X SPages
 BY <1>SvtT5da, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. rpgS' \subseteq PInst \X Rq \X Gens \X SPages /\ sentry' \subseteq Xids /\ squar' \subseteq Xids \X SPages
 BY <1>Hl2eKc2VBkR40pk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>ePMf4RNB21H, <1>L8DIG3nRD9Lv3, <1>l9BskpKB8, IsaT(20), Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>BhJJoZwTfyo0ME.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>BhJJoZwTfyo0ME, Sizes, Location, Design
<2>1. CASE ~B2
 BY <2>1, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>2. CASE B2
 <3>1. PrefcMatchesHolders /\ RO_E_sprefc BY <2>2, <1>pDDs2iPJ6v1, <1>ugzpmKUcZ3Dcdb, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW p \in SPages
        PROVE sprefc'[p]=SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
  <4>1. SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
       /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
       /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
   BY <2>2, <1>x8eiSet, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. QED BY <2>2, <3>1, <4>1, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, RO_E_sprefc, Sizes, Location, Design
 <3>3. QED BY <3>2, <2>2, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2183_PdROFinite


<1>mOh3OooP8NUD.        
 ASSUME NEW S, IsFiniteSet(S), NEW P(_)
 PROVE IsFiniteSet({x \in S : P(x)})
 BY ONLY <1>mOh3OooP8NUD, Sizes, Location, Design, FS_Subset, SMTT(10) DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>IYlMa3uC.        
 ASSUME NEW E, IsFiniteSet(E), NEW p
 PROVE IsFiniteSet(RO_Pairs(E,p)) /\ Cardinality(RO_Pairs(E,p))=Cardinality(E)
<2> USE ONLY <1>IYlMa3uC, Sizes, Location, Design
<2>1. IsFiniteSet(RO_Pairs(E,p)) /\ Cardinality(RO_Pairs(E,p))<=Cardinality(E)
 BY FS_Image, IsaT(20), Sizes, Location, Design DEF RO_Pairs, Sizes, Location, Design
<2>2. {h[1] : h \in RO_Pairs(E,p)}=E
 BY SMTT(10), Sizes, Location, Design DEF RO_Pairs, Sizes, Location, Design
<2>3. Cardinality({h[1] : h \in RO_Pairs(E,p)})<=Cardinality(RO_Pairs(E,p))
 BY <2>1, FS_Image, IsaT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. Cardinality(E) \in Nat /\ Cardinality(RO_Pairs(E,p)) \in Nat
 BY <2>1, FS_CardinalityType, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>1, <2>2, <2>3, <2>4, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>KX0JlCaSzwTGo.        
 ASSUME NEW E, NEW Q, IsFiniteSet(E), IsFiniteSet(Q), NEW F \in SUBSET E,
        NEW Z \in SUBSET (Q \cup (E \ F))
 PROVE Cardinality(F)+Cardinality(Z)<=Cardinality(E)+Cardinality(Q)
<2> USE ONLY <1>KX0JlCaSzwTGo, Sizes, Location, Design
<2>1. IsFiniteSet(F) /\ IsFiniteSet(E \ F) /\ IsFiniteSet(Q \cap (E \ F))
 BY FS_Subset, FS_Difference, FS_Intersection, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. E \cap F = F BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. Cardinality(E \ F)=Cardinality(E)-Cardinality(F)
 BY <2>2, FS_Difference, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. IsFiniteSet(Q \cup (E \ F)) /\ Cardinality(Q \cup (E \ F))=Cardinality(Q)+Cardinality(E \ F)-Cardinality(Q \cap (E \ F))
 BY <2>1, FS_Union, Sizes, Location, Design DEF Sizes, Location, Design
<2>5. IsFiniteSet(Z) /\ Cardinality(Z)<=Cardinality(Q \cup (E \ F))
 BY <2>4, FS_Subset, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. Cardinality(E) \in Nat /\ Cardinality(Q) \in Nat /\ Cardinality(F) \in Nat /\ Cardinality(Q \cap (E \ F)) \in Nat /\ Cardinality(Z) \in Nat
 BY <2>1, <2>5, FS_CardinalityType, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED BY <2>3, <2>4, <2>5, <2>6, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2189_PdROCountMath


<1>XphvGfnKv.        
 ASSUME PinInv, SFollow, B2, UNCHANGED xsrc, NEW p \in SPages
 PROVE /\ IsFiniteSet(RO_ESet(sentry,xsrcS,p)) /\ IsFiniteSet(RO_QSet(squar,p))
       /\ SRefE(sentry,xsrcS,p)=Cardinality(RO_ESet(sentry,xsrcS,p))
       /\ SRefE(sentry',xsrcS',p)=Cardinality(RO_ESet(sentry',xsrcS',p))
       /\ IsFiniteSet(RO_RSet(rpgS,p))
<2> USE ONLY <1>XphvGfnKv, Sizes, Location, Design
<2>1. sentry \subseteq Xids /\ squar \subseteq Xids \X SPages /\ rpgS \subseteq PInst \X Rq \X Gens \X SPages
 BY <1>SvtT5da, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. sentry' \subseteq Xids BY <1>Hl2eKc2VBkR40pk, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet(sentry) /\ IsFiniteSet(sentry') /\ IsFiniteSet(squar) /\ IsFiniteSet(rpgS)
 BY <2>1, <2>2, <1>L8DIG3nRD9Lv3, <1>ePMf4RNB21H, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. IsFiniteSet({x \in sentry : p \in xsrcS[x]}) /\ IsFiniteSet({x \in sentry' : p \in xsrcS'[x]})
 BY <2>3, <1>mOh3OooP8NUD, IsaT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, <1>mOh3OooP8NUD, <1>IYlMa3uC, IsaT(20), Sizes, Location, Design DEF RO_ESet, RO_QSet, RO_RSet, RO_Pairs, SRefE, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CLnA74jLnQr0f.        
 ASSUME PinInv, SFollow, B2, UNCHANGED <<xsrc,xsrcS>>, NEW p \in SPages
 PROVE /\ RO_ESet(sentry',xsrcS',p) \subseteq RO_ESet(sentry,xsrcS,p)
       /\ RO_QSet(squar',p) \subseteq RO_QSet(squar,p) \cup (RO_ESet(sentry,xsrcS,p) \ RO_ESet(sentry',xsrcS',p))
       /\ RO_RSet(rpgS',p) \subseteq RO_RSet(rpgS,p)
<2> USE ONLY <1>CLnA74jLnQr0f, Sizes, Location, Design
<2>1. RO_E_sentry /\ RO_E_squar /\ RO_E_rpgS /\ (\A x \in Xids : ~RO_Posted(x))
 BY <1>oVMEMsT8gqQqbk, <1>lIuyiSzJ58zq2, <1>H0Dre0I9dt5V, <1>eav3Mlg8, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. STypeOK BY <1>pDDs2iPJ6v1, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RO_ESet(sentry',xsrcS',p) \subseteq RO_ESet(sentry,xsrcS,p)
 BY <2>1, SMTT(10), Sizes, Location, Design DEF RO_E_sentry, RO_ESet, Sizes, Location, Design
<2>4. RO_QSet(squar',p) \subseteq RO_QSet(squar,p) \cup (RO_ESet(sentry,xsrcS,p) \ RO_ESet(sentry',xsrcS',p))
 BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF RO_E_sentry, RO_E_squar, RO_Quarantine, RO_QSet, RO_ESet, STypeOK, Sizes, Location, Design
<2>5. RO_RSet(rpgS',p) \subseteq RO_RSet(rpgS,p)
 BY <2>1, SMTT(10), Sizes, Location, Design DEF RO_E_rpgS, RO_RSet, Sizes, Location, Design
<2>6. QED BY <2>3, <2>4, <2>5, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>rWXjSmJIZJDbH.        
 ASSUME PinInv, SFollow, B2, UNCHANGED <<xsrc,xsrcS>>, NEW p \in SPages
 PROVE sprefc'[p] \in 0..(NPI*NR*MG+MX)
<2> USE ONLY <1>rWXjSmJIZJDbH, Sizes, Location, Design
<2>1. PrefcMatchesHolders /\ PrefcMatchesHolders' /\ STypeOK
 BY <1>pDDs2iPJ6v1, <1>BhJJoZwTfyo0ME, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet(RO_ESet(sentry,xsrcS,p)) /\ IsFiniteSet(RO_QSet(squar,p))
       /\ SRefE(sentry,xsrcS,p)=Cardinality(RO_ESet(sentry,xsrcS,p))
       /\ SRefE(sentry',xsrcS',p)=Cardinality(RO_ESet(sentry',xsrcS',p))
       /\ IsFiniteSet(RO_RSet(rpgS,p))
 BY <1>XphvGfnKv, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RO_ESet(sentry',xsrcS',p) \subseteq RO_ESet(sentry,xsrcS,p)
       /\ RO_QSet(squar',p) \subseteq RO_QSet(squar,p) \cup (RO_ESet(sentry,xsrcS,p) \ RO_ESet(sentry',xsrcS',p))
       /\ RO_RSet(rpgS',p) \subseteq RO_RSet(rpgS,p)
 BY <1>CLnA74jLnQr0f, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. SRefE(sentry',xsrcS',p)+SRefQ(squar',p)<=SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
 BY <2>2, <2>3, <1>KX0JlCaSzwTGo, SMTT(10), Sizes, Location, Design DEF SRefQ, RO_QSet, Sizes, Location, Design
<2>5. SRefR(rpgS',p)<=SRefR(rpgS,p)
 BY <2>2, <2>3, FS_Subset, Sizes, Location, Design DEF SRefR, RO_RSet, Sizes, Location, Design
<2>6. SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
       /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
       /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
 BY <1>x8eiSet, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. QED BY <2>1, <2>4, <2>5, <2>6, Sizes, SMTT(10), Location, Design DEF PrefcMatchesHolders, STypeOK, Sizes, Location, Design
\* T2M-END R2M2190_PdROCountBound


<1>g4ukMt7rga0IPw.        
 ASSUME PinInv, SFollow, UNCHANGED <<rg,xsrc>>
 PROVE STypeOK'
<2> USE ONLY <1>g4ukMt7rga0IPw, Sizes, Location, Design
<2>1. STypeOK BY V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY <2>1, <2>2, ZenonT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, STypeOK, Sizes, Location, Design
<2>3. CASE B2
 <3>1. UNCHANGED <<smap,schoice,xsrcS,xsrcP>>
 BY <1>J0yx6oHL5UyrV, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY <1>jGg3R, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. rpgS' \subseteq PInst \X Rq \X Gens \X SPages /\ sentry' \subseteq Xids /\ squar' \subseteq Xids \X SPages
 BY <2>3, <1>Hl2eKc2VBkR40pk, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. RO_E_spst /\ RO_E_sprefc /\ RO_E_xprefixOK /\ RO_E_dpreOK
 BY <2>3, <1>LQE0C5CV3kHl, <1>ugzpmKUcZ3Dcdb, <1>icyzRs1WpaOrfYqB8, <1>kgOzghpuDBjlN1, Sizes, Location, Design DEF Sizes, Location, Design
 <3>5. spst' \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>g4ukMt7rga0IPw, <3>4, V22_T_spst, SMTT(5) DEF RO_E_spst

 <3>6. \A p \in SPages : sprefc'[p] \in 0..(NPI*NR*MG+MX)
 BY <2>3, <3>1, <1>rWXjSmJIZJDbH, Sizes, Location, Design DEF Sizes, Location, Design
 <3>7. sprefc' \in [SPages -> 0..(NPI*NR*MG+MX)]
 BY <3>4, <3>6, IsaT(20), Sizes, Location, Design DEF RO_E_sprefc, Sizes, Location, Design
 <3>8. xprefixOK' \in [Xids -> BOOLEAN]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>g4ukMt7rga0IPw, <3>4, V22_T_xprefixOK, SMTT(5) DEF RO_E_xprefixOK, RO_Valid

 <3>9. dpreOK' \in [Pages -> BOOLEAN]
 
 <4> HIDE DEF CoreTypeOK, STypeOK
 <4>fields. QED
  BY ONLY <1>g4ukMt7rga0IPw, <3>4, V22_T_dpreOK, V22_T_xprefixOK, SMTT(5) DEF RO_E_dpreOK, RO_Valid

 <3>10. QED BY <2>1, <3>1, <3>2, <3>3, <3>5, <3>7, <3>8, <3>9, ZenonT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M2191_PdROSType


<1> QED BY <1>g4ukMt7rga0IPw, Sizes, Location, Design DEF Sizes, Location, Design
====
