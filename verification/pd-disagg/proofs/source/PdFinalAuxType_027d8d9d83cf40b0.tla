---- MODULE PdFinalAuxType_027d8d9d83cf40b0 ----
EXTENDS PdPBase, FiniteSetTheorems, PdFinalInvProjections, PdFinalEffects

THEOREM AuxType_027d8d9d83cf40b0 ==        
 ASSUME Sizes, Location, Design,
        PinInv, SFollow
 PROVE STypeOK'
<1> HIDE DEF PinInv, QConj, TypInv, SFollow
<1> DEFINE SKXMH9(i,r) == rg'[i][r] # rg[i][r]


           YoZCNdW(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]


           yRiuUrmy(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}


           o2PqE(unused) == {h \in rpgS : yRiuUrmy(h) \/ (YoZCNdW(h) /\ Mut # "unrefBeforeKDone")}


           xGwcBEcmY(x) == xsrc'[x] \in Pages /\ xsrc[x]=0


           rd1IZu(x) == IF xGwcBEcmY(x) THEN smap[xp'[x]][xr'[x]] ELSE 0


           SuEEX(unused) == [x \in Xids |-> IF xGwcBEcmY(x) THEN (IF rd1IZu(x) \in SPages /\ spst[rd1IZu(x)]="shared" THEN {rd1IZu(x)} ELSE {}) ELSE xsrcS[x]]


           XjZJP(unused) == [x \in Xids |-> IF xGwcBEcmY(x) THEN (IF rd1IZu(x) \in SPages /\ spst[rd1IZu(x)]="priv" THEN {rd1IZu(x)} ELSE {}) ELSE xsrcP[x]]


           csjI5RPR(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}


           ZdeEe4zmp3uag(x) == x \in sentry /\ ~csjI5RPR(x) /\
                     ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))


           vLn7d(unused) == (sentry \cup {x \in Xids : xGwcBEcmY(x)}) \ {x \in Xids : csjI5RPR(x) \/ ZdeEe4zmp3uag(x)}


           dLu17(unused) == squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
                                   UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : ZdeEe4zmp3uag(x)}})


           NXhXrvU9(p) == spst[p]="priv" /\ sown[p] \in Rq /\
                    (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")


           i08nRBE(p) == \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p


           K9XTdyW(p) == (NXhXrvU9(p) \/ spst[p] \in {"drain","dup"}) /\ ~i08nRBE(p) /\ sready[p] /\ ~(\E x \in vLn7d(0) : p \in XjZJP(0)[x])


           JBL3tE9j(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
                    spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])


           vuZd9ejUPGa3lV56 == /\ rpgS'=o2PqE(0) /\ xsrcS'=SuEEX(0) /\ xsrcP'=XjZJP(0) /\ sentry'=vLn7d(0) /\ squar'=dLu17(0)
                /\ sprefc'=[p \in SPages |-> sprefc[p]+SRefR(o2PqE(0),p)-SRefR(rpgS,p)
                                    +SRefE(vLn7d(0),SuEEX(0),p)-SRefE(sentry,xsrcS,p)+SRefQ(dLu17(0),p)-SRefQ(squar,p)]
                /\ smap'=[i \in PInst |-> [r \in Rq |-> IF SKXMH9(i,r) THEN 0 ELSE smap[i][r]]]
                /\ schoice'=[i \in PInst |-> [r \in Rq |-> IF SKXMH9(i,r) THEN FALSE ELSE schoice[i][r]]]
                /\ spst'=[p \in SPages |-> IF \E x \in Xids : ZdeEe4zmp3uag(x) /\ p \in xsrcP[x] THEN "quar"
                                    ELSE IF K9XTdyW(p) THEN "free" ELSE IF NXhXrvU9(p) THEN "drain" ELSE spst[p]]
                /\ xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN JBL3tE9j(x) ELSE xprefixOK[x]]
                /\ dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                                    THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                                          (IF hw[x]="issued" THEN xprefixOK[x] ELSE JBL3tE9j(x))
                                    ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
                /\ UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>


           YfPe0m5q1 == spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]


           YdCtBYTQm == sown \in [SPages -> 0..NR]


           wHZgkUQ5A == sgen \in [SPages -> 0..MG]


           jwCCpMCQs == skey \in [SPages -> 0..2]


           RGaYuDKlNbS == swrite \in [SPages -> BOOLEAN]


           QLOuavCG8S == sdata \in [SPages -> BOOLEAN]


           vlGnCHk2lgz == sready \in [SPages -> BOOLEAN]


           Tur4PdTdfsH == sprefc \in [SPages -> 0..(NPI*NR*MG+MX)]


           VobrEp6pe == smap \in [PInst -> [Rq -> {0} \cup SPages]]


           ZH7gnzsAx6MY == schoice \in [PInst -> [Rq -> BOOLEAN]]


           MCh921_lJ == rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)


           M_cM8gKk7Y == xsrcS \in [Xids -> SUBSET SPages]


           FY_4Jvp73B == xsrcP \in [Xids -> SUBSET SPages]


           kcDJExnnyGc == sentry \in SUBSET Xids


           huhVgHxFnp == squar \in SUBSET (Xids \X SPages)


           ErqYbkzUsxkZvl == xprefixOK \in [Xids -> BOOLEAN]


           MjMNPIvIqmw == dpreOK \in [Pages -> BOOLEAN]


           L8v4iL9GDr3O == hitSeen \in BOOLEAN


           Lh6z6kHb6NSd_Z == dedupSeen \in BOOLEAN


           iBM6OX7Avgw == sprefc'=[p \in SPages |-> sprefc[p]+SRefR(rpgS',p)-SRefR(rpgS,p)
            +SRefE(sentry',xsrcS',p)-SRefE(sentry,xsrcS,p)+SRefQ(squar',p)-SRefQ(squar,p)]


<1> HIDE DEF SKXMH9, YoZCNdW, yRiuUrmy, o2PqE, xGwcBEcmY, rd1IZu, SuEEX, XjZJP, csjI5RPR, ZdeEe4zmp3uag, vLn7d, dLu17, NXhXrvU9, i08nRBE, K9XTdyW, JBL3tE9j, vuZd9ejUPGa3lV56, YfPe0m5q1, YdCtBYTQm, wHZgkUQ5A, jwCCpMCQs, RGaYuDKlNbS, QLOuavCG8S, vlGnCHk2lgz, Tur4PdTdfsH, VobrEp6pe, ZH7gnzsAx6MY, MCh921_lJ, M_cM8gKk7Y, FY_4Jvp73B, kcDJExnnyGc, huhVgHxFnp, ErqYbkzUsxkZvl, MjMNPIvIqmw, L8v4iL9GDr3O, Lh6z6kHb6NSd_Z, iBM6OX7Avgw

<1>pd2OFU6YkaUFY95tm.        
 ASSUME B2, SFollow
 PROVE vuZd9ejUPGa3lV56
 BY ONLY <1>pd2OFU6YkaUFY95tm, Sizes, Location, Design, ZenonT(10) DEF SFollow, vuZd9ejUPGa3lV56, SKXMH9, YoZCNdW, yRiuUrmy, o2PqE, xGwcBEcmY, rd1IZu, SuEEX, XjZJP, csjI5RPR, ZdeEe4zmp3uag, vLn7d, dLu17, NXhXrvU9, i08nRBE, K9XTdyW, JBL3tE9j, Sizes, Location, Design


<1>WgHhghZX0y.        
 ASSUME PinInv, SFollow
 PROVE EntryQuarantineDisjoint'
<2> USE ONLY <1>WgHhghZX0y, Sizes, Location, Design
<2>1. EntryQuarantineDisjoint /\ STypeOK /\ (B2 => SI4 /\ SI5)
 BY V21_Inv_EntryQuarantineDisjoint, V21_Inv_P_SI4, V21_Inv_P_SI5, V21_Inv_STypeOK, Sizes, Location, Design DEF P_SI4, P_SI5, Sizes, Location, Design
<2>2. CASE ~B2 BY <2>2, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
<2>3. CASE B2
 <3>1. vuZd9ejUPGa3lV56 BY <2>3, <1>pd2OFU6YkaUFY95tm, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW x \in sentry', NEW p \in xsrcS'[x]
        PROVE <<x,p>> \notin squar'
  <4>1. x \in Xids /\ ~ZdeEe4zmp3uag(x) /\ (x \in sentry \/ xGwcBEcmY(x))
   BY <2>1, <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF STypeOK, vuZd9ejUPGa3lV56, vLn7d, Sizes, Location, Design
  <4>2. CASE xGwcBEcmY(x)
   <5>1. xsrcS[x]={}
    BY <2>1, <2>3, <4>1, <4>2, Sizes, SMTT(10), Location, Design DEF SI4, xGwcBEcmY, Pages, Sizes, Location, Design
   <5>2. <<x,p>> \notin squar
    BY <2>1, <2>3, <5>1, SMTT(10), Sizes, Location, Design DEF SI5, Sizes, Location, Design
   <5>3. QED BY <3>1, <4>1, <5>2, SMTT(10), Sizes, Location, Design DEF vuZd9ejUPGa3lV56, dLu17, Sizes, Location, Design
  <4>3. CASE ~xGwcBEcmY(x)
   <5>1. x \in sentry /\ p \in xsrcS[x]
    BY <3>1, <3>2, <4>1, <4>3, SMTT(10), Sizes, Location, Design DEF vuZd9ejUPGa3lV56, SuEEX, Sizes, Location, Design
   <5>2. <<x,p>> \notin squar
    BY <2>1, <2>3, <5>1, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
   <5>3. QED BY <3>1, <4>1, <5>2, SMTT(10), Sizes, Location, Design DEF vuZd9ejUPGa3lV56, dLu17, Sizes, Location, Design
  <4>4. QED BY <4>2, <4>3, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <2>3, <3>2, Sizes, Location, Design DEF EntryQuarantineDisjoint, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>hWoiZoQliuEgI.        
 /\ IsFiniteSet(PInst) /\ IsFiniteSet(Rq) /\ IsFiniteSet(Gens)
 /\ IsFiniteSet(SPages) /\ IsFiniteSet(Xids)
 BY Sizes, FS_Interval, SMTT(10), Location, Design DEF PInst, Rq, Gens, SPages, Xids, Sizes, Location, Design


<1>kFpho6lWsy.        
 ASSUME NEW A, NEW B, NEW C, NEW D,
        IsFiniteSet(A), IsFiniteSet(B), IsFiniteSet(C), IsFiniteSet(D)
 PROVE IsFiniteSet(A \X B \X C \X D)
<2> USE ONLY <1>kFpho6lWsy, Sizes, Location, Design
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


<1>RFrqq0F6WoIoTOZt0Ah.        
 /\ IsFiniteSet(PInst \X Rq \X Gens \X SPages)
 /\ IsFiniteSet(Xids \X SPages)
 BY <1>hWoiZoQliuEgI, <1>kFpho6lWsy, FS_Product, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


<1>u9zLkska1Q.        
 ASSUME NEW H \in SUBSET (PInst \X Rq \X Gens \X SPages),
        NEW E \in SUBSET Xids, NEW X, NEW Q \in SUBSET (Xids \X SPages), NEW p
 PROVE SRefR(H,p) \in Nat /\ SRefE(E,X,p) \in Nat /\ SRefQ(Q,p) \in Nat
<2> USE ONLY <1>u9zLkska1Q, Sizes, Location, Design
<2>1. IsFiniteSet(H) /\ IsFiniteSet(E) /\ IsFiniteSet(Q)
 BY <1>RFrqq0F6WoIoTOZt0Ah, <1>hWoiZoQliuEgI, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. {h \in H : h[4]=p} \subseteq H
       /\ {x \in E : p \in X[x]} \subseteq E
       /\ {h \in Q : h[2]=p} \subseteq Q
 BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet({h \in H : h[4]=p})
       /\ IsFiniteSet({x \in E : p \in X[x]})
       /\ IsFiniteSet({h \in Q : h[2]=p})
 BY <2>1, <2>2, FS_Subset, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>4. QED BY <2>3, FS_CardinalityType, SMTT(10), Sizes, Location, Design DEF SRefR, SRefE, SRefQ, Sizes, Location, Design


<1>L6W1N1gGDJEDRN.        
 ASSUME STypeOK, SFollow
 PROVE YfPe0m5q1'
<2>1. YfPe0m5q1
 BY ONLY <1>L6W1N1gGDJEDRN, SMTT(5) DEF STypeOK, YfPe0m5q1
<2>2. CASE ~B2
 BY ONLY <1>L6W1N1gGDJEDRN, <2>1, <2>2, V22_SF_Off, SMTT(5) DEF sV, YfPe0m5q1
<2>3. CASE B2
 BY ONLY <1>L6W1N1gGDJEDRN, <2>1, <2>3, V22_SF_Status, SMTT(5) DEF YfPe0m5q1
<2>4. QED BY ONLY <2>2, <2>3

<1>PC2cAGolntDV30.        
 ASSUME STypeOK, SFollow
 PROVE YdCtBYTQm'
<2>1. YdCtBYTQm
 BY ONLY <1>PC2cAGolntDV30, SMTT(5) DEF STypeOK, YdCtBYTQm
<2>2. QED
 BY ONLY <1>PC2cAGolntDV30, <2>1, V22_SF_Static, SMTT(5) DEF YdCtBYTQm

<1>YINgNwlVBOdzRR.        
 ASSUME STypeOK, SFollow
 PROVE wHZgkUQ5A'
<2>1. wHZgkUQ5A
 BY ONLY <1>YINgNwlVBOdzRR, SMTT(5) DEF STypeOK, wHZgkUQ5A
<2>2. QED
 BY ONLY <1>YINgNwlVBOdzRR, <2>1, V22_SF_Static, SMTT(5) DEF wHZgkUQ5A

<1>FTfzZoHBR46kWh.        
 ASSUME STypeOK, SFollow
 PROVE jwCCpMCQs'
<2>1. jwCCpMCQs
 BY ONLY <1>FTfzZoHBR46kWh, SMTT(5) DEF STypeOK, jwCCpMCQs
<2>2. QED
 BY ONLY <1>FTfzZoHBR46kWh, <2>1, V22_SF_Static, SMTT(5) DEF jwCCpMCQs

<1>Q5I8yAYUstZpVUpA.        
 ASSUME STypeOK, SFollow
 PROVE RGaYuDKlNbS'
<2>1. RGaYuDKlNbS
 BY ONLY <1>Q5I8yAYUstZpVUpA, SMTT(5) DEF STypeOK, RGaYuDKlNbS
<2>2. QED
 BY ONLY <1>Q5I8yAYUstZpVUpA, <2>1, V22_SF_Static, SMTT(5) DEF RGaYuDKlNbS

<1>GshgadCjHeuzFi8.        
 ASSUME STypeOK, SFollow
 PROVE QLOuavCG8S'
<2>1. QLOuavCG8S
 BY ONLY <1>GshgadCjHeuzFi8, SMTT(5) DEF STypeOK, QLOuavCG8S
<2>2. QED
 BY ONLY <1>GshgadCjHeuzFi8, <2>1, V22_SF_Static, SMTT(5) DEF QLOuavCG8S

<1>EY9g9dTm5xx4A1cX.        
 ASSUME STypeOK, SFollow
 PROVE vlGnCHk2lgz'
<2>1. vlGnCHk2lgz
 BY ONLY <1>EY9g9dTm5xx4A1cX, SMTT(5) DEF STypeOK, vlGnCHk2lgz
<2>2. QED
 BY ONLY <1>EY9g9dTm5xx4A1cX, <2>1, V22_SF_Static, SMTT(5) DEF vlGnCHk2lgz

<1>dseVU1OUmNq0Cw.        
 ASSUME STypeOK, SFollow
 PROVE VobrEp6pe'
<2>1. VobrEp6pe
 BY ONLY <1>dseVU1OUmNq0Cw, SMTT(5) DEF STypeOK, VobrEp6pe
<2>2. CASE ~B2
 BY ONLY <1>dseVU1OUmNq0Cw, <2>1, <2>2, V22_SF_Off, SMTT(5) DEF sV, VobrEp6pe
<2>3. CASE B2
 BY ONLY <1>dseVU1OUmNq0Cw, <2>1, <2>3, V22_SF_Map, SMTT(5) DEF VobrEp6pe
<2>4. QED BY ONLY <2>2, <2>3

<1>jkNtbUGLyeYTOW0UA.        
 ASSUME STypeOK, SFollow
 PROVE ZH7gnzsAx6MY'
<2>1. ZH7gnzsAx6MY
 BY ONLY <1>jkNtbUGLyeYTOW0UA, SMTT(5) DEF STypeOK, ZH7gnzsAx6MY
<2>2. CASE ~B2
 BY ONLY <1>jkNtbUGLyeYTOW0UA, <2>1, <2>2, V22_SF_Off, SMTT(5) DEF sV, ZH7gnzsAx6MY
<2>3. CASE B2
 BY ONLY <1>jkNtbUGLyeYTOW0UA, <2>1, <2>3, V22_SF_Choice, SMTT(5) DEF ZH7gnzsAx6MY
<2>4. QED BY ONLY <2>2, <2>3

<1>h1SvtVFyaVKjc3.        
 ASSUME STypeOK, SFollow
 PROVE MCh921_lJ'
<2>1. MCh921_lJ
 BY ONLY <1>h1SvtVFyaVKjc3, SMTT(5) DEF STypeOK, MCh921_lJ
<2>2. CASE ~B2
 BY ONLY <1>h1SvtVFyaVKjc3, <2>1, <2>2, V22_SF_Off, SMTT(5) DEF sV, MCh921_lJ
<2>3. CASE B2
 BY ONLY <1>h1SvtVFyaVKjc3, <2>1, <2>3, V22_SF_Holders, SMTT(5) DEF MCh921_lJ, V22_FH2
<2>4. QED BY ONLY <2>2, <2>3

<1>C2oq5oNR5dOh0qj.        
 ASSUME STypeOK, SFollow
 PROVE M_cM8gKk7Y'
<2>1. M_cM8gKk7Y
 BY ONLY <1>C2oq5oNR5dOh0qj, SMTT(5) DEF STypeOK, M_cM8gKk7Y
<2>2. CASE ~B2
 BY ONLY <1>C2oq5oNR5dOh0qj, <2>1, <2>2, V22_SF_Off, SMTT(5) DEF sV, M_cM8gKk7Y
<2>3. CASE B2
 BY ONLY <1>C2oq5oNR5dOh0qj, <2>1, <2>3, V22_SF_SourceShared, SMTT(5) DEF M_cM8gKk7Y, V22_FSX
<2>4. QED BY ONLY <2>2, <2>3

<1>fECX0f8VtveTx24.        
 ASSUME STypeOK, SFollow
 PROVE FY_4Jvp73B'
<2>1. FY_4Jvp73B
 BY ONLY <1>fECX0f8VtveTx24, SMTT(5) DEF STypeOK, FY_4Jvp73B
<2>2. CASE ~B2
 BY ONLY <1>fECX0f8VtveTx24, <2>1, <2>2, V22_SF_Off, SMTT(5) DEF sV, FY_4Jvp73B
<2>3. CASE B2
 BY ONLY <1>fECX0f8VtveTx24, <2>1, <2>3, V22_SF_SourcePrivate, SMTT(5) DEF FY_4Jvp73B, V22_FPX
<2>4. QED BY ONLY <2>2, <2>3

<1>HCPxNms8qZ31TPNj.        
 ASSUME STypeOK, SFollow
 PROVE kcDJExnnyGc'
<2>1. kcDJExnnyGc
 BY ONLY <1>HCPxNms8qZ31TPNj, SMTT(5) DEF STypeOK, kcDJExnnyGc
<2>2. CASE ~B2
 BY ONLY <1>HCPxNms8qZ31TPNj, <2>1, <2>2, V22_SF_Off, SMTT(5) DEF sV, kcDJExnnyGc
<2>3. CASE B2
 BY ONLY <1>HCPxNms8qZ31TPNj, <2>1, <2>3, V22_SF_Sentry, SMTT(5) DEF kcDJExnnyGc, V22_FE2
<2>4. QED BY ONLY <2>2, <2>3

<1>D6eR1hgDZYVrPxr.        
 ASSUME STypeOK, SFollow
 PROVE huhVgHxFnp'
<2>1. huhVgHxFnp /\ M_cM8gKk7Y
 BY ONLY <1>D6eR1hgDZYVrPxr, SMTT(5) DEF STypeOK, huhVgHxFnp, M_cM8gKk7Y
<2>2. CASE ~B2
 BY ONLY <1>D6eR1hgDZYVrPxr, <2>1, <2>2, V22_SF_Off, SMTT(5) DEF sV, huhVgHxFnp
<2>3. CASE B2
 BY ONLY <1>D6eR1hgDZYVrPxr, <2>1, <2>3, V22_SF_Squar, SMTT(5) DEF huhVgHxFnp, M_cM8gKk7Y, V22_FQ2
<2>4. QED BY ONLY <2>2, <2>3

<1>eqQWNo4gR3F7mjCVvZm.        
 ASSUME STypeOK, SFollow
 PROVE ErqYbkzUsxkZvl'
<2>1. ErqYbkzUsxkZvl
 BY ONLY <1>eqQWNo4gR3F7mjCVvZm, SMTT(5) DEF STypeOK, ErqYbkzUsxkZvl
<2>2. CASE ~B2
 BY ONLY <1>eqQWNo4gR3F7mjCVvZm, <2>1, <2>2, V22_SF_Off, SMTT(5) DEF sV, ErqYbkzUsxkZvl
<2>3. CASE B2
 <3>effect. xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN JBL3tE9j(x) ELSE xprefixOK[x]]
  BY ONLY <1>eqQWNo4gR3F7mjCVvZm, <2>3, <1>pd2OFU6YkaUFY95tm, SMTT(5) DEF vuZd9ejUPGa3lV56
 <3>qed. QED
  BY ONLY <2>1, <3>effect, SMTT(5) DEF ErqYbkzUsxkZvl, JBL3tE9j
<2>4. QED BY ONLY <2>2, <2>3

<1>ScrSpQj9DEJxVcec.        
 ASSUME STypeOK, SFollow
 PROVE MjMNPIvIqmw'
<2>1. MjMNPIvIqmw /\ ErqYbkzUsxkZvl
 BY ONLY <1>ScrSpQj9DEJxVcec, SMTT(5) DEF STypeOK, MjMNPIvIqmw, ErqYbkzUsxkZvl
<2>2. CASE ~B2
 BY ONLY <1>ScrSpQj9DEJxVcec, <2>1, <2>2, V22_SF_Off, SMTT(5) DEF sV, MjMNPIvIqmw
<2>3. CASE B2
 <3>effect. dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                                    THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                                          (IF hw[x]="issued" THEN xprefixOK[x] ELSE JBL3tE9j(x))
                                    ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
  BY ONLY <1>ScrSpQj9DEJxVcec, <2>3, <1>pd2OFU6YkaUFY95tm, SMTT(5) DEF vuZd9ejUPGa3lV56
 <3>qed. QED
  BY ONLY <2>1, <3>effect, SMTT(5) DEF MjMNPIvIqmw, ErqYbkzUsxkZvl, JBL3tE9j
<2>4. QED BY ONLY <2>2, <2>3

<1>aQVzBKMU35mhAbQvq.        
 ASSUME STypeOK, SFollow
 PROVE L8v4iL9GDr3O'
<2>1. L8v4iL9GDr3O
 BY ONLY <1>aQVzBKMU35mhAbQvq, SMTT(5) DEF STypeOK, L8v4iL9GDr3O
<2>2. QED
 BY ONLY <1>aQVzBKMU35mhAbQvq, <2>1, V22_SF_Static, SMTT(5) DEF L8v4iL9GDr3O

<1>jTCfmZZq5BsU3R36PEj.        
 ASSUME STypeOK, SFollow
 PROVE Lh6z6kHb6NSd_Z'
<2>1. Lh6z6kHb6NSd_Z
 BY ONLY <1>jTCfmZZq5BsU3R36PEj, SMTT(5) DEF STypeOK, Lh6z6kHb6NSd_Z
<2>2. QED
 BY ONLY <1>jTCfmZZq5BsU3R36PEj, <2>1, V22_SF_Static, SMTT(5) DEF Lh6z6kHb6NSd_Z

<1>aCURhxBia6GRY5R.        
 ASSUME B2, SFollow
 PROVE iBM6OX7Avgw
 BY ONLY <1>aCURhxBia6GRY5R, Sizes, Location, Design, ZenonT(10) DEF iBM6OX7Avgw, SFollow, Sizes, Location, Design


<1>w11gH7yoeIGc5x.        
 ASSUME STypeOK, SFollow, NEW p \in SPages
 PROVE /\ SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
       /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
       /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
<2> USE ONLY <1>w11gH7yoeIGc5x, Sizes, Location, Design
<2>1. MCh921_lJ /\ kcDJExnnyGc /\ huhVgHxFnp
 BY Sizes, Location, Design DEF STypeOK, MCh921_lJ, kcDJExnnyGc, huhVgHxFnp, Sizes, Location, Design
<2>2. MCh921_lJ' /\ kcDJExnnyGc' /\ huhVgHxFnp'
 BY <1>h1SvtVFyaVKjc3, <1>HCPxNms8qZ31TPNj, <1>D6eR1hgDZYVrPxr, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>u9zLkska1Q, Sizes, Location, Design DEF MCh921_lJ, kcDJExnnyGc, huhVgHxFnp, Sizes, Location, Design


<1>wGG6QbMksvPUMMB99KPGhqw9HAm.        
 ASSUME PinInv, SFollow
 PROVE PrefcMatchesHolders'
<2> USE ONLY <1>wGG6QbMksvPUMMB99KPGhqw9HAm, Sizes, Location, Design
<2>1. PrefcMatchesHolders /\ STypeOK
 BY V21_Inv_PrefcMatchesHolders, V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. CASE ~B2
 BY <2>2, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>3. CASE B2
 <3>1. iBM6OX7Avgw BY <2>3, <1>aCURhxBia6GRY5R, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. ASSUME NEW p \in SPages
        PROVE sprefc'[p] = SRefR(rpgS',p)+SRefE(sentry',xsrcS',p)+SRefQ(squar',p)
  <4>1. SRefR(rpgS,p) \in Nat /\ SRefR(rpgS',p) \in Nat
        /\ SRefE(sentry,xsrcS,p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat
        /\ SRefQ(squar,p) \in Nat /\ SRefQ(squar',p) \in Nat
   BY <2>1, <1>w11gH7yoeIGc5x, Sizes, Location, Design DEF Sizes, Location, Design
  <4>2. sprefc[p] = SRefR(rpgS,p)+SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
   BY <2>1, <2>3, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
  <4>3. QED BY <3>1, <4>1, <4>2, SMTT(10), Sizes, Location, Design DEF iBM6OX7Avgw, Sizes, Location, Design
 <3>3. QED BY <2>3, <3>2, Sizes, Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>q9QalVL1cEYX.        
 ASSUME NEW n \in Nat
 PROVE IsFiniteSet(1..n) /\ Cardinality(1..n)=n
<2> USE ONLY <1>q9QalVL1cEYX, Sizes, Location, Design
<2>1. n \in Int BY SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>2. IsFiniteSet(1..n) /\ Cardinality(1..n)=(IF 1>n THEN 0 ELSE n-1+1)
 BY <2>1, FS_Interval, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design


<1>MAUghsz28tNk0xsc.        
 ASSUME NEW H \in SUBSET (PInst \X Rq \X Gens \X SPages), NEW p
 PROVE SRefR(H,p) <= NPI*NR*MG
<2> USE ONLY <1>MAUghsz28tNk0xsc, Sizes, Location, Design
<2>1. IsFiniteSet(PInst) /\ Cardinality(PInst)=NPI
 /\ IsFiniteSet(Rq) /\ Cardinality(Rq)=NR
 /\ IsFiniteSet(Gens) /\ Cardinality(Gens)=MG
 BY Sizes, <1>q9QalVL1cEYX, SMTT(10), Location, Design DEF PInst, Rq, Gens, Sizes, Location, Design
<2>2. IsFiniteSet(PInst \X Rq) /\ Cardinality(PInst \X Rq)=NPI*NR
 BY <2>1, FS_Product, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. IsFiniteSet((PInst \X Rq) \X Gens) /\ Cardinality((PInst \X Rq) \X Gens)=NPI*NR*MG
 BY <2>1, <2>2, FS_Product, Sizes, Location, Design DEF Sizes, Location, Design
<2>4. DEFINE V == {h \in H : h[4]=p}
              F == [h \in V |-> <<<<h[1],h[2]>>,h[3]>>]
<2>5. F \in Injection(V,(PInst \X Rq) \X Gens)
 BY SMTT(10), Sizes, Location, Design DEF F, V, Injection, IsInjective, Sizes, Location, Design
<2>6. QED BY <2>3, <2>5, FS_Injection, Sizes, Location, Design DEF V, SRefR, Sizes, Location, Design


<1>N4XYZSDAHy5OBIv9j.        
 ASSUME NEW E \in SUBSET Xids, NEW X, NEW Q \in SUBSET (Xids \X SPages), NEW p,
        \A x \in E : \A q \in X[x] : <<x,q>> \notin Q
 PROVE SRefE(E,X,p)+SRefQ(Q,p) <= MX
<2> USE ONLY <1>N4XYZSDAHy5OBIv9j, Sizes, Location, Design
<2>1. IsFiniteSet(Xids) /\ Cardinality(Xids)=MX
 BY Sizes, <1>q9QalVL1cEYX, SMTT(10), Location, Design DEF Xids, Sizes, Location, Design
<2>2. DEFINE F == {x \in E : p \in X[x]}
              U == {h \in Q : h[2]=p}
              G == [h \in U |-> h[1]]
<2>3. F \subseteq Xids /\ IsFiniteSet(F)
 BY <2>1, FS_Subset, SMTT(10), Sizes, Location, Design DEF F, Sizes, Location, Design
<2>4. G \in Injection(U,Xids \ F)
 <3>1. \A h \in U : h[1] \in Xids \ F
  BY SMTT(10), Sizes, Location, Design DEF U, F, Sizes, Location, Design
 <3>2. G \in [U -> Xids \ F]
  BY <3>1, SMTT(10), Sizes, Location, Design DEF G, Sizes, Location, Design
 <3>3. \A h,k \in U : G[h]=G[k] => h=k
  BY SMTT(10), Sizes, Location, Design DEF G, U, Sizes, Location, Design
 <3>4. QED BY <3>2, <3>3, SMTT(10), Sizes, Location, Design DEF Injection, IsInjective, Sizes, Location, Design
<2>5. IsFiniteSet(Xids \ F) /\ Cardinality(Xids \ F)=Cardinality(Xids)-Cardinality(F)
 <3>1. Xids \cap F = F BY <2>3, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. IsFiniteSet(Xids \ F) /\ Cardinality(Xids \ F)=Cardinality(Xids)-Cardinality(Xids \cap F)
  BY <2>1, FS_Difference, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. QED BY <3>1, <3>2, SMTT(10), Sizes, Location, Design DEF Sizes, Location, Design
<2>6. IsFiniteSet(U) /\ Cardinality(U)<=Cardinality(Xids \ F)
 BY <2>4, <2>5, FS_Injection, Sizes, Location, Design DEF Sizes, Location, Design
<2>7. Cardinality(U) \in Nat /\ Cardinality(F) \in Nat
 BY <2>3, <2>6, FS_CardinalityType, Sizes, Location, Design DEF Sizes, Location, Design
<2>8. QED BY <2>1, <2>5, <2>6, <2>7, Sizes, SMTT(10), Location, Design DEF SRefE, SRefQ, F, U, Sizes, Location, Design


<1>DOTdTKqtNbi51cU.        
 ASSUME PinInv, SFollow
 PROVE Tur4PdTdfsH'
<2> USE ONLY <1>DOTdTKqtNbi51cU, Sizes, Location, Design
<2>1. STypeOK /\ Tur4PdTdfsH BY V21_Inv_STypeOK, Sizes, Location, Design DEF STypeOK, Tur4PdTdfsH, Sizes, Location, Design
<2>2. CASE ~B2
 BY <2>1, <2>2, ZenonT(10), V21_SFollowOff, Sizes, Location, Design DEF sV, Tur4PdTdfsH, Sizes, Location, Design
<2>3. CASE B2
 <3>1. PrefcMatchesHolders' BY <1>wGG6QbMksvPUMMB99KPGhqw9HAm, Sizes, Location, Design DEF Sizes, Location, Design
 <3>2. EntryQuarantineDisjoint' BY <1>WgHhghZX0y, Sizes, Location, Design DEF Sizes, Location, Design
 <3>3. MCh921_lJ' /\ kcDJExnnyGc' /\ huhVgHxFnp'
 BY <2>1, <1>h1SvtVFyaVKjc3, <1>HCPxNms8qZ31TPNj, <1>D6eR1hgDZYVrPxr, Sizes, Location, Design DEF Sizes, Location, Design
 <3>4. ASSUME NEW p \in SPages
        PROVE sprefc'[p] \in 0..(NPI*NR*MG+MX)
  <4>1. SRefR(rpgS',p) <= NPI*NR*MG
   BY <3>3, <1>MAUghsz28tNk0xsc, Sizes, Location, Design DEF MCh921_lJ, Sizes, Location, Design
  <4>2. SRefE(sentry',xsrcS',p)+SRefQ(squar',p) <= MX
   BY <2>3, <3>2, <3>3, <1>N4XYZSDAHy5OBIv9j, Sizes, Location, Design DEF kcDJExnnyGc, huhVgHxFnp, EntryQuarantineDisjoint, Sizes, Location, Design
  <4>3. SRefR(rpgS',p) \in Nat /\ SRefE(sentry',xsrcS',p) \in Nat /\ SRefQ(squar',p) \in Nat
   BY <3>3, <1>u9zLkska1Q, Sizes, Location, Design DEF MCh921_lJ, kcDJExnnyGc, huhVgHxFnp, Sizes, Location, Design
  <4>4. QED BY <2>3, <3>1, <3>4, <4>1, <4>2, <4>3, Sizes, SMTT(10), Location, Design DEF PrefcMatchesHolders, Sizes, Location, Design
 <3>5. iBM6OX7Avgw BY <2>3, <1>aCURhxBia6GRY5R, Sizes, Location, Design DEF Sizes, Location, Design
 <3>6. QED BY <3>4, <3>5, SMTT(10), Sizes, Location, Design DEF Tur4PdTdfsH, iBM6OX7Avgw, Sizes, Location, Design
<2>4. QED BY <2>2, <2>3, Sizes, Location, Design DEF Sizes, Location, Design


<1>s12kzN51xWp6X.        
 ASSUME PinInv, SFollow
 PROVE STypeOK'
<2> USE ONLY <1>s12kzN51xWp6X, Sizes, Location, Design
<2>1. STypeOK BY V21_Inv_STypeOK, Sizes, Location, Design DEF Sizes, Location, Design
<2>2. Tur4PdTdfsH' BY <1>DOTdTKqtNbi51cU, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED BY <2>1, <2>2, <1>L6W1N1gGDJEDRN, <1>PC2cAGolntDV30, <1>YINgNwlVBOdzRR, <1>FTfzZoHBR46kWh, <1>Q5I8yAYUstZpVUpA, <1>GshgadCjHeuzFi8, <1>EY9g9dTm5xx4A1cX, <1>dseVU1OUmNq0Cw, <1>jkNtbUGLyeYTOW0UA, <1>h1SvtVFyaVKjc3, <1>C2oq5oNR5dOh0qj, <1>fECX0f8VtveTx24, <1>HCPxNms8qZ31TPNj, <1>D6eR1hgDZYVrPxr, <1>eqQWNo4gR3F7mjCVvZm, <1>ScrSpQj9DEJxVcec, <1>aQVzBKMU35mhAbQvq, <1>jTCfmZZq5BsU3R36PEj, ZenonT(10), Sizes, Location, Design DEF STypeOK, YfPe0m5q1, YdCtBYTQm, wHZgkUQ5A, jwCCpMCQs, RGaYuDKlNbS, QLOuavCG8S, vlGnCHk2lgz, Tur4PdTdfsH, VobrEp6pe, ZH7gnzsAx6MY, MCh921_lJ, M_cM8gKk7Y, FY_4Jvp73B, kcDJExnnyGc, huhVgHxFnp, ErqYbkzUsxkZvl, MjMNPIvIqmw, L8v4iL9GDr3O, Lh6z6kHb6NSd_Z, Sizes, Location, Design


<1> QED BY <1>s12kzN51xWp6X, Sizes, Location, Design DEF Sizes, Location, Design
====
