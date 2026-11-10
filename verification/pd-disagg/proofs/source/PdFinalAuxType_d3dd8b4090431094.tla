---- MODULE PdFinalAuxType_d3dd8b4090431094 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects

THEOREM AuxType_d3dd8b4090431094 ==        
 ASSUME Sizes, Location, Design,
        PinInv, SFollow, UNCHANGED xsrc
 PROVE STypeOK'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE RP_New(i,r) == rg'[i][r] # rg[i][r]


           RP_HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           RP_HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           RP_H2(unused) == {h \in rpgS : RP_HLive(h) \/ (RP_HPin(h) /\ Mut # "unrefBeforeKDone")}


           RP_Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           RP_Src(x) == IF RP_Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           RP_SX(unused) == [x \in Xids |-> IF RP_Posted(x) THEN (IF RP_Src(x) \in SPages /\ spst[RP_Src(x)]="shared" THEN {RP_Src(x)} ELSE {}) ELSE xsrcS[x]]


           RP_PX(unused) == [x \in Xids |-> IF RP_Posted(x) THEN (IF RP_Src(x) \in SPages /\ spst[RP_Src(x)]="priv" THEN {RP_Src(x)} ELSE {}) ELSE xsrcP[x]]


           RP_Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           RP_Quarantine(x) == x \in sentry /\ ~RP_Close(x) /\
                     ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           RP_E2(unused) == (sentry \cup {x \in Xids : RP_Posted(x)}) \ {x \in Xids : RP_Close(x) \/ RP_Quarantine(x)}


           RP_Q2(unused) == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
                                   UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : RP_Quarantine(x)}})


           RP_Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\
                    (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           RP_Pin2(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           RP_Drop(p) == (RP_Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~RP_Pin2(p) /\ sready[p] /\ ~(\E x \in RP_E2(0) : p \in RP_PX(0)[x])


           RP_Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
                    spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           RP_SFollowEffect == /\ rpgS'=RP_H2(0) /\ xsrcS'=RP_SX(0) /\ xsrcP'=RP_PX(0) /\ sentry'=RP_E2(0) /\ squar'=RP_Q2(0)
                /\ sprefc'=[p \in SPages |-> sprefc[p]+SRefR(RP_H2(0),p)-SRefR(rpgS,p)
                                    +SRefE(RP_E2(0),RP_SX(0),p)-SRefE(sentry,xsrcS,p)+SRefQ(RP_Q2(0),p)-SRefQ(squar,p)]
                /\ smap'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN 0 ELSE smap[i][r]]]
                /\ schoice'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN FALSE ELSE schoice[i][r]]]
                /\ spst'=[p \in SPages |-> IF \E x \in Xids : RP_Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                                    ELSE IF RP_Drop(p) THEN "free" ELSE IF RP_Ended(p) THEN "drain" ELSE spst[p]]
                /\ xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RP_Valid(x) ELSE xprefixOK[x]]
                /\ dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                                    THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                                          (IF hw[x]="issued" THEN xprefixOK[x] ELSE RP_Valid(x))
                                    ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
                /\ UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>

           \* T2M-LOCAL-VISIBILITY

           RP_T_spst == spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]


           RP_T_sown == sown \in [SPages -> 0..NR]


           RP_T_sgen == sgen \in [SPages -> 0..MG]


           RP_T_skey == skey \in [SPages -> 0..2]


           RP_T_swrite == swrite \in [SPages -> BOOLEAN]


           RP_T_sdata == sdata \in [SPages -> BOOLEAN]


           RP_T_sready == sready \in [SPages -> BOOLEAN]


           RP_T_sprefc == sprefc \in [SPages -> 0..(NPI*NR*MG+MX)]


           RP_T_smap == smap \in [PInst -> [Rq -> {0} \cup SPages]]


           RP_T_schoice == schoice \in [PInst -> [Rq -> BOOLEAN]]


           RP_T_rpgS == rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)


           RP_T_xsrcS == xsrcS \in [Xids -> SUBSET SPages]


           RP_T_xsrcP == xsrcP \in [Xids -> SUBSET SPages]


           RP_T_sentry == sentry \in SUBSET Xids


           RP_T_squar == squar \in SUBSET (Xids \X SPages)


           RP_T_xprefixOK == xprefixOK \in [Xids -> BOOLEAN]


           RP_T_dpreOK == dpreOK \in [Pages -> BOOLEAN]


           RP_T_hitSeen == hitSeen \in BOOLEAN


           RP_T_dedupSeen == dedupSeen \in BOOLEAN

           \* T2M-LOCAL-VISIBILITY

           RP_RefDelta == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)
            +SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]

           \* T2M-LOCAL-VISIBILITY

<1> HIDE DEF RP_New, RP_HPin, RP_HLive, RP_H2, RP_Posted, RP_Src, RP_SX, RP_PX, RP_Close, RP_Quarantine, RP_E2, RP_Q2, RP_Ended, RP_Pin2, RP_Drop, RP_Valid, RP_SFollowEffect, RP_T_spst, RP_T_sown, RP_T_sgen, RP_T_skey, RP_T_swrite, RP_T_sdata, RP_T_sready, RP_T_sprefc, RP_T_smap, RP_T_schoice, RP_T_rpgS, RP_T_xsrcS, RP_T_xsrcP, RP_T_sentry, RP_T_squar, RP_T_xprefixOK, RP_T_dpreOK, RP_T_hitSeen, RP_T_dedupSeen, RP_RefDelta

<1>PKl1lJKpXGVI0yrZ8.        
 ASSUME B2, SFollow
 PROVE RP_SFollowEffect
<2> HIDE DEF SFollow, RP_SFollowEffect, V22_FH2, V22_FSX, V22_FPX, V22_FE2, V22_FQ2, V22_FDrop, V22_FEnded, V22_FQuarantine
<2>hAlias. RP_H2(0)=V22_FH2
 BY ONLY SMTT(5) DEF RP_H2, RP_HLive, RP_HPin, V22_FH2, V22_FHLive, V22_FHPin
<2>sxAlias. RP_SX(0)=V22_FSX
 BY ONLY SMTT(5) DEF RP_SX, RP_Posted, RP_Src, V22_FSX, V22_FPosted, V22_FSrc
<2>pxAlias. RP_PX(0)=V22_FPX
 BY ONLY SMTT(5) DEF RP_PX, RP_Posted, RP_Src, V22_FPX, V22_FPosted, V22_FSrc
<2>eAlias. RP_E2(0)=V22_FE2
 BY ONLY SMTT(5) DEF RP_E2, RP_Posted, RP_Close, RP_Quarantine, V22_FE2, V22_FPosted, V22_FClose, V22_FQuarantine
<2>qAlias. RP_Q2(0)=V22_FQ2
 BY ONLY SMTT(5) DEF RP_Q2, RP_Quarantine, RP_Close, V22_FQ2, V22_FQuarantine, V22_FClose
<2>statusAlias. \A p \in SPages : RP_Ended(p)=V22_FEnded(p) /\ RP_Drop(p)=V22_FDrop(p)
 BY ONLY <2>pxAlias, <2>eAlias, SMTT(5) DEF RP_Ended, RP_Drop, RP_Pin2, V22_FEnded, V22_FDrop, V22_FPin2
<2>quarantineAlias. \A x \in Xids : RP_Quarantine(x)=V22_FQuarantine(x)
 BY ONLY SMTT(5) DEF RP_Quarantine, RP_Close, V22_FQuarantine, V22_FClose
<2>holders. rpgS'=RP_H2(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>hAlias, V22_SF_Holders, SMTT(5) DEF V22_SF_Holders
<2>sourceShared. xsrcS'=RP_SX(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>sxAlias, V22_SF_SourceShared, SMTT(5) DEF V22_SF_SourceShared
<2>sourcePrivate. xsrcP'=RP_PX(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>pxAlias, V22_SF_SourcePrivate, SMTT(5) DEF V22_SF_SourcePrivate
<2>sentry. sentry'=RP_E2(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>eAlias, V22_SF_Sentry, SMTT(5) DEF V22_SF_Sentry
<2>squar. squar'=RP_Q2(0)
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>qAlias, V22_SF_Squar, SMTT(5) DEF V22_SF_Squar
<2>refcount. sprefc'=[p \in SPages |-> sprefc[p]+SRefR(RP_H2(0),p)-SRefR(rpgS,p)
                      +SRefE(RP_E2(0),RP_SX(0),p)-SRefE(sentry,xsrcS,p)+SRefQ(RP_Q2(0),p)-SRefQ(squar,p)]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>hAlias, <2>sxAlias, <2>eAlias, <2>qAlias, V22_SF_RefCount, SMTT(5) DEF V22_SF_RefCount
<2>map. smap'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN 0 ELSE smap[i][r]]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, V22_SF_Map, SMTT(5) DEF RP_New, V22_SF_Map
<2>choice. schoice'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN FALSE ELSE schoice[i][r]]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, V22_SF_Choice, SMTT(5) DEF RP_New, V22_SF_Choice
<2>status. spst'=[p \in SPages |-> IF \E x \in Xids : RP_Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                      ELSE IF RP_Drop(p) THEN "free" ELSE IF RP_Ended(p) THEN "drain" ELSE spst[p]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, <2>statusAlias, <2>quarantineAlias, V22_SF_Status, SMTT(5) DEF V22_SF_Status
<2>prefix. xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RP_Valid(x) ELSE xprefixOK[x]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, ZenonT(10) DEF SFollow, RP_Valid
<2>dpre. dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                      THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                         (IF hw[x]="issued" THEN xprefixOK[x] ELSE RP_Valid(x))
                      ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, ZenonT(10) DEF SFollow, RP_Valid
<2>static. UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
 BY ONLY <1>PKl1lJKpXGVI0yrZ8, V22_SF_Static, SMTT(5) DEF V22_SF_Static
<2>qed. QED
 BY ONLY <2>holders, <2>sourceShared, <2>sourcePrivate, <2>sentry, <2>squar,
         <2>refcount, <2>map, <2>choice, <2>status, <2>prefix, <2>dpre, <2>static, SMTT(5) DEF RP_SFollowEffect

\* T2M-LOCAL-VISIBILITY

<1>ZXxq7ZUlh0hBhsql.        
 ASSUME UNCHANGED xsrc
 PROVE \A x \in Xids : ~RP_Posted(x)
 BY ONLY <1>ZXxq7ZUlh0hBhsql, Sizes, Location, Design, Sizes, SMTT(10) DEF RP_Posted, Pages, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ESBouXiucduyoSgqYf8M.        
 ASSUME PinInv, B2, SFollow, UNCHANGED xsrc
 PROVE UNCHANGED <<xsrcS,xsrcP>> /\ sentry' \subseteq sentry
<2> USE ONLY <1>ESBouXiucduyoSgqYf8M, Sizes, Location, Design
<2>1. \A x \in Xids : ~RP_Posted(x) BY <1>ZXxq7ZUlh0hBhsql, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>ESBouXiucduyoSgqYf8M, V22_T_xsrcP, V22_T_xsrcS, SMTT(5)

<2>3. QED BY <2>1, <2>2, <1>PKl1lJKpXGVI0yrZ8, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_SX, RP_PX, RP_E2, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>f1Y0wBZYE4Htz.        
 /\ IsFiniteSet(PInst) /\ IsFiniteSet(Rq) /\ IsFiniteSet(Gens)
 /\ IsFiniteSet(SPages) /\ IsFiniteSet(Xids)
 BY Sizes, FS_Interval, SMTT(10), Location, Design DEF PInst, Rq, Gens, SPages, Xids, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nQKL75Fxdx.        
 ASSUME NEW A, NEW B, NEW C, NEW D,
        IsFiniteSet(A), IsFiniteSet(B), IsFiniteSet(C), IsFiniteSet(D)
 PROVE IsFiniteSet(A \X B \X C \X D)
<2> USE ONLY <1>nQKL75Fxdx, Sizes, Location, Design
<2>1. IsFiniteSet(A \X B) BY FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet((A \X B) \X C) BY <2>1, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet(((A \X B) \X C) \X D) BY <2>2, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. DEFINE U == ((A \X B) \X C) \X D
              F == [t \in U |-> <<t[1][1][1],t[1][1][2],t[1][2],t[2]>>]
<2>5. F \in [U -> (A \X B \X C \X D)]
 BY SMTT(10), Sizes, Location, Design DEF F, U, Sizes, Location, Design
<2>6. \A z \in (A \X B \X C \X D) : <<<<<<z[1],z[2]>>,z[3]>>,z[4]>> \in U
 BY SMTT(10), Sizes, Location, Design DEF U, Sizes, Location, Design
<2>7. \A z \in (A \X B \X C \X D) : F[<<<<<<z[1],z[2]>>,z[3]>>,z[4]>>]=z
 BY SMTT(10), Sizes, Location, Design DEF F, U, Sizes, Location, Design
<2>8. F \in Surjection(U,A \X B \X C \X D)
 BY <2>5, <2>6, <2>7, SMTT(10), Sizes, Location, Design DEF Surjection, Sizes, Location, Design
<2>9. QED BY <2>3, <2>8, FS_Surjection, SMTT(10), Sizes, Location, Design DEF U, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>mOXdb4AFBe0It6kG2Px.        
 /\ IsFiniteSet(PInst \X Rq \X Gens \X SPages)
 /\ IsFiniteSet(Xids \X SPages)
 BY <1>f1Y0wBZYE4Htz, <1>nQKL75Fxdx, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>qVeeMREBfC.        
 ASSUME NEW H \in SUBSET (PInst \X Rq \X Gens \X SPages),
        NEW E \in SUBSET Xids, NEW X, NEW Q \in SUBSET (Xids \X SPages), NEW p
 PROVE SRefR(H,p) \in Nat /\ SRefE(E,X,p) \in Nat /\ SRefQ(Q,p) \in Nat
<2> USE ONLY <1>qVeeMREBfC, Sizes, Location, Design
<2>1. IsFiniteSet(H) /\ IsFiniteSet(E) /\ IsFiniteSet(Q)
 BY <1>mOXdb4AFBe0It6kG2Px, <1>f1Y0wBZYE4Htz, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. {h \in H : h[4]=p} \subseteq H
       /\ {x \in E : p \in X[x]} \subseteq E
       /\ {h \in Q : h[2]=p} \subseteq Q
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet({h \in H : h[4]=p})
       /\ IsFiniteSet({x \in E : p \in X[x]})
       /\ IsFiniteSet({h \in Q : h[2]=p})
 BY <2>1, <2>2, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>3, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design
\* T2M-END R2M1408_PdRPFinite


<1>cguDrmIVkET7Lr.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_spst'
<2> USE ONLY <1>cguDrmIVkET7Lr, Sizes, Location, Design
<2>1. RP_T_spst
 BY ONLY <1>cguDrmIVkET7Lr, Sizes, Location, Design DEF STypeOK, RP_T_spst, Sizes, Location, Design
<2>2. CASE ~B2
 <3>1. UNCHANGED spst
  BY ONLY <2>2, <1>cguDrmIVkET7Lr, V21_SFollowOff, Sizes, Location, Design, SMTT(5) DEF sV
 <3>2. QED BY ONLY <2>1, <3>1, SMTT(5) DEF RP_T_spst
<2>3. CASE B2
 <3>1. spst'=[p \in SPages |-> IF \E x \in Xids : RP_Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                                    ELSE IF RP_Drop(p) THEN "free" ELSE IF RP_Ended(p) THEN "drain" ELSE spst[p]]
  BY ONLY <2>3, <1>cguDrmIVkET7Lr, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design, SMTT(5) DEF RP_SFollowEffect
 <3>2. QED BY ONLY <2>1, <3>1, SMTT(10) DEF RP_T_spst
<2>4. QED BY ONLY <2>2, <2>3, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>O43NDPRMCHZipF.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_sown'
<2> USE ONLY <1>O43NDPRMCHZipF, Sizes, Location, Design
<2>1. RP_T_sown
 BY Sizes, Location, Design DEF STypeOK, RP_T_sown, Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF RP_T_sown, SFollow, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>J6vFNTJXq05bed.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_sgen'
<2> USE ONLY <1>J6vFNTJXq05bed, Sizes, Location, Design
<2>1. RP_T_sgen
 BY Sizes, Location, Design DEF STypeOK, RP_T_sgen, Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF RP_T_sgen, SFollow, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>iEIYmL9D2NTLiP.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_skey'
<2> USE ONLY <1>iEIYmL9D2NTLiP, Sizes, Location, Design
<2>1. RP_T_skey
 BY Sizes, Location, Design DEF STypeOK, RP_T_skey, Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF RP_T_skey, SFollow, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>ILdOwoLqYvcouRcA.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_swrite'
<2> USE ONLY <1>ILdOwoLqYvcouRcA, Sizes, Location, Design
<2>1. RP_T_swrite
 BY Sizes, Location, Design DEF STypeOK, RP_T_swrite, Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF RP_T_swrite, SFollow, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>RJCPkvvE0UHF89C.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_sdata'
<2> USE ONLY <1>RJCPkvvE0UHF89C, Sizes, Location, Design
<2>1. RP_T_sdata
 BY Sizes, Location, Design DEF STypeOK, RP_T_sdata, Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF RP_T_sdata, SFollow, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>L2BBadFOVqD3KRm3.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_sready'
<2> USE ONLY <1>L2BBadFOVqD3KRm3, Sizes, Location, Design
<2>1. RP_T_sready
 BY Sizes, Location, Design DEF STypeOK, RP_T_sready, Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF RP_T_sready, SFollow, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>vqv59PriMuASKO.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_smap'
<2> USE ONLY <1>vqv59PriMuASKO, Sizes, Location, Design
<2>1. RP_T_smap
 BY ONLY <1>vqv59PriMuASKO, Sizes, Location, Design DEF STypeOK, RP_T_smap, Sizes, Location, Design
<2>2. CASE ~B2
 <3>fxFrame. UNCHANGED smap
  BY ONLY <2>2, <1>vqv59PriMuASKO, V21_SFollowOff, Sizes, Location, Design, SMTT(5) DEF sV
 <3>fxDone. QED BY ONLY <2>1, <3>fxFrame, SMTT(5) DEF RP_T_smap
<2>3. CASE B2
 <3>fxEffect. smap'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN 0 ELSE smap[i][r]]]
  BY ONLY <2>3, <1>vqv59PriMuASKO, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design, SMTT(5) DEF RP_SFollowEffect
 <3>fxDone. QED BY ONLY <2>1, <3>fxEffect, SMTT(5) DEF RP_T_smap
<2>4. QED BY ONLY <2>2, <2>3, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>N6NXHhuZCHMjBh8mb.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_schoice'
<2> USE ONLY <1>N6NXHhuZCHMjBh8mb, Sizes, Location, Design
<2>1. RP_T_schoice
 BY ONLY <1>N6NXHhuZCHMjBh8mb, Sizes, Location, Design DEF STypeOK, RP_T_schoice, Sizes, Location, Design
<2>2. CASE ~B2
 <3>fxFrame. UNCHANGED schoice
  BY ONLY <2>2, <1>N6NXHhuZCHMjBh8mb, V21_SFollowOff, Sizes, Location, Design, SMTT(5) DEF sV
 <3>fxDone. QED BY ONLY <2>1, <3>fxFrame, SMTT(5) DEF RP_T_schoice
<2>3. CASE B2
 <3>fxEffect. schoice'=[i \in PInst |-> [r \in Rq |-> IF RP_New(i,r) THEN FALSE ELSE schoice[i][r]]]
  BY ONLY <2>3, <1>N6NXHhuZCHMjBh8mb, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design, SMTT(5) DEF RP_SFollowEffect
 <3>fxDone. QED BY ONLY <2>1, <3>fxEffect, SMTT(5) DEF RP_T_schoice
<2>4. QED BY ONLY <2>2, <2>3, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>g2d0XcDvt56Baa.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_rpgS'
<2> USE ONLY <1>g2d0XcDvt56Baa, Sizes, Location, Design
<2>1. RP_T_rpgS
 BY Sizes, Location, Design DEF STypeOK, RP_T_rpgS, Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF RP_T_rpgS, SFollow, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NihcZSRWJ3K6iOp.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_xsrcS'
<2> USE ONLY <1>NihcZSRWJ3K6iOp, Sizes, Location, Design
<2>1. RP_T_xsrcS
 BY ONLY <1>NihcZSRWJ3K6iOp, Sizes, Location, Design DEF STypeOK, RP_T_xsrcS, Sizes, Location, Design
<2>2. CASE ~B2
 <3>fxFrame. UNCHANGED xsrcS
  BY ONLY <2>2, <1>NihcZSRWJ3K6iOp, V21_SFollowOff, Sizes, Location, Design, SMTT(5) DEF sV
 <3>fxDone. QED BY ONLY <2>1, <3>fxFrame, SMTT(5) DEF RP_T_xsrcS
<2>3. CASE B2
 <3>fxEffect. xsrcS'=RP_SX(0)
  BY ONLY <2>3, <1>NihcZSRWJ3K6iOp, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design, SMTT(5) DEF RP_SFollowEffect
 <3>fxDone. QED BY ONLY <2>1, <3>fxEffect, SMTT(5) DEF RP_T_xsrcS, RP_SX
<2>4. QED BY ONLY <2>2, <2>3, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>EWf7xpKSKdMxNg6.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_xsrcP'
<2> USE ONLY <1>EWf7xpKSKdMxNg6, Sizes, Location, Design
<2>1. RP_T_xsrcP
 BY ONLY <1>EWf7xpKSKdMxNg6, Sizes, Location, Design DEF STypeOK, RP_T_xsrcP, Sizes, Location, Design
<2>2. CASE ~B2
 <3>fxFrame. UNCHANGED xsrcP
  BY ONLY <2>2, <1>EWf7xpKSKdMxNg6, V21_SFollowOff, Sizes, Location, Design, SMTT(5) DEF sV
 <3>fxDone. QED BY ONLY <2>1, <3>fxFrame, SMTT(5) DEF RP_T_xsrcP
<2>3. CASE B2
 <3>fxEffect. xsrcP'=RP_PX(0)
  BY ONLY <2>3, <1>EWf7xpKSKdMxNg6, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design, SMTT(5) DEF RP_SFollowEffect
 <3>fxDone. QED BY ONLY <2>1, <3>fxEffect, SMTT(5) DEF RP_T_xsrcP, RP_PX
<2>4. QED BY ONLY <2>2, <2>3, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>NjvYCjaSlJxhU8e0.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_sentry'
<2> USE ONLY <1>NjvYCjaSlJxhU8e0, Sizes, Location, Design
<2>1. RP_T_sentry
 BY Sizes, Location, Design DEF STypeOK, RP_T_sentry, Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF RP_T_sentry, SFollow, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>A1Sb5mM7HaVTJal.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_squar'
<2> USE ONLY <1>A1Sb5mM7HaVTJal, Sizes, Location, Design
<2>1. RP_T_squar /\ RP_T_xsrcS
 BY ONLY <1>A1Sb5mM7HaVTJal, Sizes, Location, Design DEF STypeOK, RP_T_squar, RP_T_xsrcS, Sizes, Location, Design
<2>2. CASE ~B2
 <3>1. UNCHANGED squar
  BY ONLY <2>2, <1>A1Sb5mM7HaVTJal, V21_SFollowOff, Sizes, Location, Design, SMTT(5) DEF sV
 <3>2. QED BY ONLY <2>1, <3>1, SMTT(5) DEF RP_T_squar
<2>3. CASE B2
 <3>1. squar'=RP_Q2(0)
  BY ONLY <2>3, <1>A1Sb5mM7HaVTJal, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design, SMTT(5) DEF RP_SFollowEffect
 <3>2. RP_Q2(0) \subseteq Xids \X SPages
  BY ONLY <2>1, SMTT(10) DEF RP_Q2, RP_T_squar, RP_T_xsrcS
 <3>3. QED BY ONLY <3>1, <3>2, SMTT(5) DEF RP_T_squar
<2>4. QED BY ONLY <2>2, <2>3, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>aeOLC7J1ClC3WlDl7U5.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_xprefixOK'
<2> USE ONLY <1>aeOLC7J1ClC3WlDl7U5, Sizes, Location, Design
<2>1. RP_T_xprefixOK
 BY ONLY <1>aeOLC7J1ClC3WlDl7U5, Sizes, Location, Design DEF STypeOK, RP_T_xprefixOK, Sizes, Location, Design
<2>2. CASE ~B2
 <3>fxFrame. UNCHANGED xprefixOK
  BY ONLY <2>2, <1>aeOLC7J1ClC3WlDl7U5, V21_SFollowOff, Sizes, Location, Design, SMTT(5) DEF sV
 <3>fxDone. QED BY ONLY <2>1, <3>fxFrame, SMTT(5) DEF RP_T_xprefixOK
<2>3. CASE B2
 <3>fxEffect. xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN RP_Valid(x) ELSE xprefixOK[x]]
  BY ONLY <2>3, <1>aeOLC7J1ClC3WlDl7U5, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design, SMTT(5) DEF RP_SFollowEffect
 <3>fxBoolean. \A x \in Xids : RP_Valid(x) \in BOOLEAN
  BY ONLY SMTT(5) DEF RP_Valid
 <3>fxDone. QED BY ONLY <2>1, <3>fxEffect, <3>fxBoolean, SMTT(5) DEF RP_T_xprefixOK
<2>4. QED BY ONLY <2>2, <2>3, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>RxSDRDRiwj5psIX9.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_dpreOK'
<2> USE ONLY <1>RxSDRDRiwj5psIX9, Sizes, Location, Design
<2>1. RP_T_dpreOK
 BY ONLY <1>RxSDRDRiwj5psIX9, Sizes, Location, Design DEF STypeOK, RP_T_dpreOK, Sizes, Location, Design
<2>2. CASE ~B2
 <3>fxFrame. UNCHANGED dpreOK
  BY ONLY <2>2, <1>RxSDRDRiwj5psIX9, V21_SFollowOff, Sizes, Location, Design, SMTT(5) DEF sV
 <3>fxDone. QED BY ONLY <2>1, <3>fxFrame, SMTT(5) DEF RP_T_dpreOK
<2>3. CASE B2
 <3>fxEffect. dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                 THEN (\A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                       (IF hw[x]="issued" THEN xprefixOK[x] ELSE RP_Valid(x)))
                 ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
  BY ONLY <2>3, <1>RxSDRDRiwj5psIX9, <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design, SMTT(5) DEF RP_SFollowEffect
 <3>fxBoolean. \A x \in Xids : RP_Valid(x) \in BOOLEAN
  BY ONLY SMTT(5) DEF RP_Valid
 <3>fxPrefix. RP_T_xprefixOK
  BY ONLY <1>RxSDRDRiwj5psIX9, ZenonT(5) DEF STypeOK, RP_T_xprefixOK
 <3>fxDone. QED BY ONLY <2>1, <3>fxEffect, <3>fxBoolean, <3>fxPrefix, SMTT(5) DEF RP_T_dpreOK, RP_T_xprefixOK
<2>4. QED BY ONLY <2>2, <2>3, SMTT(5)

\* T2M-LOCAL-VISIBILITY

<1>RM88eNzl44ggwlLcf.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_hitSeen'
<2> USE ONLY <1>RM88eNzl44ggwlLcf, Sizes, Location, Design
<2>1. RP_T_hitSeen
 BY Sizes, Location, Design DEF STypeOK, RP_T_hitSeen, Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF RP_T_hitSeen, SFollow, sV, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>nX8CR96RdMxQjW8xavQ.        
 ASSUME STypeOK, SFollow
 PROVE RP_T_dedupSeen'
<2> USE ONLY <1>nX8CR96RdMxQjW8xavQ, Sizes, Location, Design
<2>1. RP_T_dedupSeen
 BY Sizes, Location, Design DEF STypeOK, RP_T_dedupSeen, Sizes, Location, Design
<2>2. QED BY <2>1, ZenonT(10), Sizes, Location, Design DEF RP_T_dedupSeen, SFollow, sV, Sizes, Location, Design
\* T2M-END R2M1409_PdRPSharedTypes


<1>ak2jPIltdDiaCVc.        
 ASSUME B2, SFollow
 PROVE RP_RefDelta
 BY ONLY <1>ak2jPIltdDiaCVc, Sizes, Location, Design, ZenonT(10) DEF RP_RefDelta, SFollow, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>NSUGzTM423PsEC.        
 ASSUME STypeOK, SFollow, NEW p \in SPages
 PROVE /\ SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
       /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
       /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
<2> USE ONLY <1>NSUGzTM423PsEC, Sizes, Location, Design
<2>1. RP_T_rpgS /\ RP_T_sentry /\ RP_T_squar
 BY Sizes, Location, Design DEF STypeOK, RP_T_rpgS, RP_T_sentry, RP_T_squar, Sizes, Location, Design
<2>2. RP_T_rpgS' /\ RP_T_sentry' /\ RP_T_squar'
 BY <1>g2d0XcDvt56Baa, <1>NjvYCjaSlJxhU8e0, <1>A1Sb5mM7HaVTJal, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>qVeeMREBfC, Sizes, Location, Design DEF RP_T_rpgS, RP_T_sentry, RP_T_squar, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>AnajBeZS7htcLkTpZ8C91mxOHTa.        
 ASSUME PinInv, SFollow
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>AnajBeZS7htcLkTpZ8C91mxOHTa, Sizes, Location, Design
<2>1. PrefcMatchesHolders /\ STypeOK
 BY V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY <2>2, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>3. CASE B2
 <3>1. RP_RefDelta BY <2>3, <1>ak2jPIltdDiaCVc, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW p \in SPages
        PROVE sprefc'[p] = SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
  <4>1. SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
        /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
        /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
   BY <2>1, <1>NSUGzTM423PsEC, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. sprefc[p] = SRefR(rpgS,p)+SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
   BY <2>1, <2>3, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
  <4>3. QED BY <3>1, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF RP_RefDelta, Sizes, Location, Design
 <3>3. QED BY <2>3, <3>2, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design
\* T2M-END R2M1410_PdRPRefCount


<1>CpwUMnO7eKqcfN93A1CM.        
 ASSUME NEW E, NEW Q, NEW F, NEW U, NEW p,
        IsFiniteSet(E), IsFiniteSet(Q), F \subseteq E,
        U \subseteq Q \cup ((E \ F) \X {p})
 PROVE Cardinality(F)+Cardinality(U) <= Cardinality(E)+Cardinality(Q)
<2> USE ONLY <1>CpwUMnO7eKqcfN93A1CM, Sizes, Location, Design
<2>1. IsFiniteSet(F) /\ IsFiniteSet(E \ F)
 BY FS_Subset, FS_Difference, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Cardinality(E \ F)=Cardinality(E)-Cardinality(F)
 <3>1. E \cap F = F BY ONLY <1>CpwUMnO7eKqcfN93A1CM, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. Cardinality(E \ F)=Cardinality(E)-Cardinality(E \cap F)
  BY ONLY <1>CpwUMnO7eKqcfN93A1CM, FS_Difference, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY ONLY <3>1, <3>2, SMTT(20), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet({p}) /\ Cardinality({p})=1
 BY FS_Singleton, Sizes, Location, Design DEF Sizes, Location, Design
<2>35. Cardinality(E \ F) \in Nat BY <2>1, FS_CardinalityType, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. IsFiniteSet((E \ F) \X {p}) /\ Cardinality((E \ F) \X {p})=Cardinality(E \ F)
 BY <2>1, <2>3, <2>35, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>5. IsFiniteSet(Q \cup ((E \ F) \X {p}))
 /\ Cardinality(Q \cup ((E \ F) \X {p}))=Cardinality(Q)+Cardinality((E \ F) \X {p})-Cardinality(Q \cap ((E \ F) \X {p}))
 BY <2>4, FS_Union, Sizes, Location, Design DEF Sizes, Location, Design
<2>6. Cardinality(U)<=Cardinality(Q \cup ((E \ F) \X {p}))
 BY <2>5, FS_Subset, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. Cardinality(Q \cap ((E \ F) \X {p})) \in Nat
 BY FS_Intersection, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>8. Cardinality(E) \in Nat /\ Cardinality(F) \in Nat /\ Cardinality(Q) \in Nat
 /\ Cardinality(U) \in Nat /\ Cardinality((E \ F) \X {p}) \in Nat /\ Cardinality(E \ F) \in Nat
 /\ Cardinality(Q \cup ((E \ F) \X {p})) \in Nat
 BY <2>1, <2>4, <2>5, FS_Subset, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>9. QED BY <2>2, <2>4, <2>5, <2>6, <2>7, <2>8, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>CcS4vVmcgKBYFXB8.        
 ASSUME PinInv, B2, SFollow, UNCHANGED xsrc, NEW p \in SPages
 PROVE SRefR(rpgS',p)<=SRefR(rpgS,p)
       /\ SRefE(sentry',xsrcS',p)+SRefQ(squar',p)<=SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
<2> USE ONLY <1>CcS4vVmcgKBYFXB8, Sizes, Location, Design
<2>1. STypeOK BY V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. UNCHANGED <<xsrcS,xsrcP>> /\ sentry' \subseteq sentry
 BY <1>ESBouXiucduyoSgqYf8M, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. RP_SFollowEffect BY <1>PKl1lJKpXGVI0yrZ8, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. rpgS' \subseteq rpgS BY <2>3, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_H2, Sizes, Location, Design
<2>5. IsFiniteSet(rpgS) /\ IsFiniteSet(sentry) /\ IsFiniteSet(squar)
 BY <2>1, <1>mOXdb4AFBe0It6kG2Px, <1>f1Y0wBZYE4Htz, FS_Subset, SMTT(10), Sizes, Location, Design DEF STypeOK, Sizes, Location, Design
<2>6. IsFiniteSet({h \in rpgS : h[4]=p}) /\ {h \in rpgS' : h[4]=p} \subseteq {h \in rpgS : h[4]=p}
 BY <2>4, <2>5, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>7. SRefR(rpgS',p)<=SRefR(rpgS,p)
 BY <2>6, FS_Subset, Sizes, Location, Design DEF SRefR, Sizes, Location, Design
<2>8. DEFINE E == {x \in sentry : p \in xsrcS[x]}
              F == {x \in sentry' : p \in xsrcS'[x]}
              Q == {h \in squar : h[2]=p}
              U == {h \in squar' : h[2]=p}
<2>9. IsFiniteSet(E) /\ IsFiniteSet(Q) /\ F \subseteq E
 BY <2>2, <2>5, FS_Subset, SMTT(10), Sizes, Location, Design DEF E, F, Q, Sizes, Location, Design
<2>10. U \subseteq Q \cup ((E \ F) \X {p})
 <3>1. ASSUME NEW h \in U, h \notin Q
        PROVE h \in (E \ F) \X {p}
  <4>1. h \in Xids \X SPages /\ h[2]=p /\ RP_Quarantine(h[1]) /\ p \in xsrcS[h[1]]
   BY <2>1, <2>3, <3>1, SMTT(10), Sizes, Location, Design DEF U, Q, RP_SFollowEffect, RP_Q2, STypeOK, Sizes, Location, Design
  <4>2. h[1] \in sentry /\ h[1] \notin sentry'
   BY <2>3, <4>1, SMTT(10), Sizes, Location, Design DEF RP_SFollowEffect, RP_E2, RP_Quarantine, Sizes, Location, Design
  <4>3. QED BY <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF E, F, Sizes, Location, Design
 <3>2. QED BY <3>1, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>11. QED BY <2>7, <2>9, <2>10, <1>CpwUMnO7eKqcfN93A1CM, Sizes, Location, Design DEF SRefE, SRefQ, E, F, Q, U, Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>E4G6VKufay1VjXiSSttwd5.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE \A p \in SPages : sprefc'[p] \in Nat /\ sprefc'[p]<=sprefc[p]
<2> USE ONLY <1>E4G6VKufay1VjXiSSttwd5, Sizes, Location, Design
<2>1. STypeOK /\ PrefcMatchesHolders
 BY V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 <3>1. UNCHANGED sprefc BY <2>2, ZenonT(10), Sizes, Location, Design, V21_SFollowOff DEF sV, Sizes, Location, Design
 <3>2. QED BY <2>1, <3>1, Sizes, SMTT(10), Location, Design DEF STypeOK, Sizes, Location, Design
<2>3. CASE B2
 <3>1. PrefcMatchesHolders' BY <1>AnajBeZS7htcLkTpZ8C91mxOHTa, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW p \in SPages
        PROVE sprefc'[p] \in Nat /\ sprefc'[p]<=sprefc[p]
  <4>1. SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
        /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
        /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
   BY <2>1, <3>2, <1>NSUGzTM423PsEC, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. SRefR(rpgS',p)<=SRefR(rpgS,p)
       /\ SRefE(sentry',xsrcS',p)+SRefQ(squar',p)<=SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
   BY <2>3, <3>2, <1>CcS4vVmcgKBYFXB8, Sizes, Location, Design DEF Sizes, Location, Design
  <4>3. QED BY <2>1, <2>3, <3>1, <3>2, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
 <3>3. QED BY <3>2, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>irQ0Vsp7wmV8CkT.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE RP_T_sprefc'
<2> USE ONLY <1>irQ0Vsp7wmV8CkT, Sizes, Location, Design
<2>1. RP_T_sprefc 
<3> HIDE DEF CoreTypeOK, STypeOK
<3>fields. QED
 BY ONLY <1>irQ0Vsp7wmV8CkT, V22_T_sprefc, SMTT(5) DEF RP_T_sprefc

<2>2. \A p \in SPages : sprefc'[p] \in Nat /\ sprefc'[p]<=sprefc[p]
 BY <1>E4G6VKufay1VjXiSSttwd5, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. CASE ~B2
 BY <2>1, <2>3, ZenonT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, RP_T_sprefc, Sizes, Location, Design
<2>4. CASE B2
 <3>1. RP_RefDelta BY <2>4, <1>ak2jPIltdDiaCVc, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. QED BY <2>1, <2>2, <3>1, Sizes, SMTT(10), Location, Design DEF RP_T_sprefc, RP_RefDelta, Sizes, Location, Design
<2>5. QED BY <2>3, <2>4, Sizes, Location, Design DEF Sizes, Location, Design

\* T2M-LOCAL-VISIBILITY

<1>FOFtOay2erdyG.        
 ASSUME PinInv, SFollow, UNCHANGED xsrc
 PROVE STypeOK'
<2> USE ONLY <1>FOFtOay2erdyG, Sizes, Location, Design
<2>1. STypeOK BY V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. RP_T_sprefc' BY <1>irQ0Vsp7wmV8CkT, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>cguDrmIVkET7Lr, <1>O43NDPRMCHZipF, <1>J6vFNTJXq05bed, <1>iEIYmL9D2NTLiP, <1>ILdOwoLqYvcouRcA, <1>RJCPkvvE0UHF89C, <1>L2BBadFOVqD3KRm3, <1>vqv59PriMuASKO, <1>N6NXHhuZCHMjBh8mb, <1>g2d0XcDvt56Baa, <1>NihcZSRWJ3K6iOp, <1>EWf7xpKSKdMxNg6, <1>NjvYCjaSlJxhU8e0, <1>A1Sb5mM7HaVTJal, <1>aeOLC7J1ClC3WlDl7U5, <1>RxSDRDRiwj5psIX9, <1>RM88eNzl44ggwlLcf, <1>nX8CR96RdMxQjW8xavQ, ZenonT(10), Sizes, Location, Design DEF STypeOK, RP_T_spst, RP_T_sown, RP_T_sgen, RP_T_skey, RP_T_swrite, RP_T_sdata, RP_T_sready, RP_T_sprefc, RP_T_smap, RP_T_schoice, RP_T_rpgS, RP_T_xsrcS, RP_T_xsrcP, RP_T_sentry, RP_T_squar, RP_T_xprefixOK, RP_T_dpreOK, RP_T_hitSeen, RP_T_dedupSeen, Sizes, Location, Design
\* T2M-END R2M1994_PdRPR2RefBound


<1> QED BY <1>FOFtOay2erdyG, Sizes, Location, Design DEF Sizes, Location, Design
====
