---- MODULE PdV22State ----
EXTENDS FiniteSetTheorems, MC_pd_ind, PdABB_Init_EntryQuarantineDisjoint, PdABB_Init_PrivateMapOwner, PdPBase, PdPinnedProofModel, PdR3InitBaseTypeOK, PdR3InitFacts, PdR3InitSTypeOK, PdR3InitSharedFacts
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, Init_R3BaseTypeOKField01, Init_R3BaseTypeOKField02, Init_R3BaseTypeOKField03, Init_R3BaseTypeOKField04, Init_R3BaseTypeOKField05, Init_R3BaseTypeOKField06, Init_R3BaseTypeOKField07, Init_R3BaseTypeOKField08, Init_R3BaseTypeOKField09, Init_R3BaseTypeOKField10, Init_R3BaseTypeOKField11, Init_R3BaseTypeOKField12, Init_R3BaseTypeOKField13, Init_R3BaseTypeOKField14, Init_R3BaseTypeOKField15, Init_R3BaseTypeOKField16, Init_R3BaseTypeOKField17, Init_R3BaseTypeOKField18, Init_R3BaseTypeOKField19, Init_R3BaseTypeOKField20, Init_R3BaseTypeOKField21, Init_R3BaseTypeOKField22, Init_R3BaseTypeOKField23, Init_R3BaseTypeOKField24, Init_R3BaseTypeOKField25, Init_R3BaseTypeOKField26, Init_R3BaseTypeOKField27, Init_R3BaseTypeOKField28, Init_R3BaseTypeOKField29, Init_R3BaseTypeOKField30, Init_R3BaseTypeOKField31, Init_R3BaseTypeOKField32, Init_R3BaseTypeOKField33, Init_R3BaseTypeOKField34, Init_R3BaseTypeOKField35, Init_R3BaseTypeOKField36, Init_R3BaseTypeOKField37, Init_R3BaseTypeOKField38, Init_R3BaseTypeOKField39, Init_R3BaseTypeOKField40, Init_R3BaseTypeOKField41, Init_R3BaseTypeOKField42, Init_R3BaseTypeOKField43, Init_R3BaseTypeOKField44, Init_R3BaseTypeOKField45, Init_R3BaseTypeOKField46, Init_R3BaseTypeOKField47, Init_R3BaseTypeOKField48, Init_R3STypeOKField01, Init_R3STypeOKField02, Init_R3STypeOKField03, Init_R3STypeOKField04, Init_R3STypeOKField05, Init_R3STypeOKField06, Init_R3STypeOKField07, Init_R3STypeOKField08, Init_R3STypeOKField09, Init_R3STypeOKField10, Init_R3STypeOKField11, Init_R3STypeOKField12, Init_R3STypeOKField13, Init_R3STypeOKField14, Init_R3STypeOKField15, Init_R3STypeOKField16, Init_R3STypeOKField17, Init_R3STypeOKField18, Init_R3STypeOKField19, NVyNQP0wFYciiCa35emkbgYb, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, R3CardEmpty, R3InitDomains, R3Init_BaseTypeOK, R3Init_STypeOK, R3InitialNoSPin, R3InitialRefE, R3InitialRefQ, R3InitialRefR, R3InitialSharedLayout, R3InitialXUnionCard, R3Initial_alive, R3Initial_crep, R3Initial_dedupSeen, R3Initial_dpreOK, R3Initial_drep, R3Initial_dsucc, R3Initial_gbad, R3Initial_gen, R3Initial_hd, R3Initial_hitSeen, R3Initial_hok, R3Initial_hp, R3Initial_hw, R3Initial_iv, R3Initial_kfly, R3Initial_kpin, R3Initial_krs, R3Initial_led, R3Initial_net, R3Initial_nfail, R3Initial_nx, R3Initial_pgn, R3Initial_ph, R3Initial_plt, R3Initial_pqp, R3Initial_pr, R3Initial_prefc, R3Initial_pst, R3Initial_ptl, R3Initial_pvis, R3Initial_rd, R3Initial_rg, R3Initial_rhit, R3Initial_rp, R3Initial_rpe, R3Initial_rpg, R3Initial_rpgS, R3Initial_rt, R3Initial_rx, R3Initial_schoice, R3Initial_sdata, R3Initial_sentry, R3Initial_sfly, R3Initial_sgen, R3Initial_skey, R3Initial_sled, R3Initial_smap, R3Initial_sown, R3Initial_sprefc, R3Initial_spst, R3Initial_squar, R3Initial_sready, R3Initial_swrite, R3Initial_torn, R3Initial_xd, R3Initial_xdst, R3Initial_xg, R3Initial_xk, R3Initial_xlt, R3Initial_xnt, R3Initial_xp, R3Initial_xprefixOK, R3Initial_xr, R3Initial_xsrc, R3Initial_xsrcP, R3Initial_xsrcS, R3Initial_xst, RrDy1aCnsbQiQOd3AktgNaFyTKNpfMbX, ShapeImpliesTags, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, rgBrCdU91SzjkhB_h88, sgSShmXFCWW8F



\* V22-SCOPE: per-proof-cited-defs; copied Init contracts are local proof steps.
THEOREM V22_InitClosure ==
 ASSUME Sizes, Design
 PROVE Init => PinInv
<1>LocationFact. Location BY ONLY Sizes, PinnedLocationFact DEF PinnedLocationFact
<1>I1.
 ASSUME Sizes, Location, Design
 PROVE
                       Init => TypInv
 BY R3Init_BaseTypeOK, R3Init_STypeOK, Sizes, Location, Design DEF R3Init_BaseTypeOK, R3Init_STypeOK, TypInv, Sizes, Location, Design

<1>I2.
 ASSUME Sizes, Location, Design
 PROVE
                   Init => K1
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K1, Gens, Sizes, Location, Design

<1>I3.
 ASSUME Sizes, Location, Design
 PROVE
                   Init => K2
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K2, Xids, Sizes, Location, Design

<1>I4.
 ASSUME Sizes, Location, Design
 PROVE
                   Init => K3
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K3, InFl, Sizes, Location, Design

<1>I5.
 ASSUME Sizes, Location, Design
 PROVE
                   Init => K4
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K4, Xids, Sizes, Location, Design

<1>I6.
 ASSUME Sizes, Location, Design
 PROVE
                   Init => K5
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K5, Sizes, Location, Design

<1>I7.
 ASSUME Sizes, Location, Design
 PROVE
                   Init => K6
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K6, Sizes, Location, Design

<1>I8.
 ASSUME Sizes, Location, Design
 PROVE
                   Init => K7
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K7, KPinned, Maps, Active, Sizes, Location, Design

<1>I9.
 ASSUME Sizes, Location, Design
 PROVE
                   Init => K8
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K8, IsP, IsD, Active, Inst, NL, DInst, Sizes, Location, Design

<1>I10.
 ASSUME Sizes, Location, Design
 PROVE
                   Init => K9
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K9, Active, DInst, Inst, NL, Sizes, Location, Design

<1>I11.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => K10
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K10, Xids, Sizes, Location, Design

<1>I12.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => K11
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K11, Xids, Sizes, Location, Design

<1>I13.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => K12
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K12, Sizes, Location, Design

<1>I14.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => K13
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K13, Sizes, Location, Design

<1>I15.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => K14
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K14, Sizes, Location, Design

<1>I16.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => K15
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K15, Sizes, Location, Design

<1>I17.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => K16
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K16, GrownP, Sizes, Location, Design

<1>I18.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => K17
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, K17, Sizes, Location, Design

<1>I19.
 ASSUME Sizes, Location, Design
 PROVE
                   Init => S1
<2>1. Init => nx = 1
 BY ONLY ZenonT(10), Sizes, Location, Design DEF Init, BaseInit, Sizes, Location, Design
<2>2. Init => \A x \in Xids : ~(x < nx)
 BY ONLY <2>1, Sizes, SMTT(10), Location, Design DEF Xids, Sizes, Location, Design
<2>3. QED BY ONLY <2>2, ZenonT(10), Sizes, Location, Design DEF S1, Sizes, Location, Design

<1>I20.
 ASSUME Sizes, Location, Design
 PROVE
                   Init => S2
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, S2, Xids, Sizes, Location, Design

<1>I21.
 ASSUME Sizes, Location, Design
 PROVE
                   Init => S3
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, S3, Sizes, Location, Design

<1>I22.
 ASSUME Sizes, Location, Design
 PROVE
                   Init => S4
<2> SUFFICES ASSUME Init PROVE S4
  OBVIOUS
<2>1. {i \in Inst : ~alive[i]} = {}
  BY SMTT(10), Sizes, Location, Design DEF Init, BaseInit, Sizes, Location, Design
<2>2. Cardinality({}) = 0
  BY FS_EmptySet, Sizes, Location, Design DEF Sizes, Location, Design
<2>3. QED
  BY <2>1, <2>2, SMTT(10), Sizes, Location, Design DEF Init, BaseInit, S4, Sizes, Location, Design

<1>I23.
 ASSUME Sizes, Location, Design
 PROVE
                   Init => S5
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, S5, DInst, Inst, NL, Sizes, Location, Design

<1>I24.
 ASSUME Sizes, Location, Design
 PROVE
                   Init => S6
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, S6, Xids, Sizes, Location, Design

<1>I25.
 ASSUME Sizes, Location, Design
 PROVE
                              Init => NoStrayAccess
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, NoStrayAccess, Writing, InFl, Sizes, Location, Design

<1>I26.
 ASSUME Sizes, Location, Design
 PROVE
                              Init => ReadOwnLanded
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, BaseReadOwnLanded, ReadOwnLanded, DInst, Inst, NL, Sizes, Location, Design

<1>I27.
 ASSUME Sizes, Location, Design
 PROVE
                              Init => SendOwnLanded
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, BaseSendOwnLanded, SendOwnLanded, Sizes, Location, Design

<1>I28.
 ASSUME Sizes, Location, Design
 PROVE
                               Init => SealOnlyLanded
 BY ONLY R3InitDomains, R3CardEmpty, R3Initial_hw, R3Initial_pst, R3Initial_ptl, R3Initial_sdata, R3Initial_spst, R3Initial_sready, R3Initial_swrite, R3Initial_xdst, SMTT(20), Sizes, Location, Design DEF R3CardEmpty, R3InitDomains, R3Initial_hw, R3Initial_pst, R3Initial_ptl, R3Initial_sdata, R3Initial_spst, R3Initial_sready, R3Initial_swrite, R3Initial_xdst, SealOnlyLanded, BaseSealOnlyLanded, SharedImmutable, NoWriteInto, Writing, InFl, Sizes, Location, Design

<1>I29.
 ASSUME Sizes, Location, Design
 PROVE
                            Init => GenFiltered
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, GenFiltered, Sizes, Location, Design

<1>I30.
 ASSUME Sizes, Location, Design
 PROVE
                         Init => OneReply
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, OneReply, Sizes, Location, Design

<1>I31.
 ASSUME Sizes, Location, Design
 PROVE
                           Init => ReplyTruth
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, ReplyTruth, Sizes, Location, Design

<1>I32.
 ASSUME Sizes, Location, Design
 PROVE
                                Init => QuarNeverMapped
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, QuarNeverMapped, Active, Sizes, Location, Design

<1>I33.
 ASSUME Sizes, Location, Design
 PROVE
                                  Init => QuietConservation
 BY ONLY R3InitialSharedLayout, R3InitialRefQ, R3Initial_sprefc, R3Initial_pst, SMTT(10), Sizes, Location, Design DEF R3InitialRefQ, R3InitialSharedLayout, R3Initial_pst, R3Initial_sprefc, QuietConservation, BaseQuietConservation, Sizes, Location, Design

<1>I34.
 ASSUME Sizes, Location, Design
 PROVE
                                Init => NoFreeUnderRead
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, NoFreeUnderRead, Sizes, Location, Design

<1>I35.
 ASSUME Sizes, Location, Design
 PROVE
                               Init => KReadIntegrity
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, BaseKReadIntegrity, SMapIntegrity, Active, PInst, Inst, NL, KReadIntegrity, Sizes, Location, Design

<1>I36.
 ASSUME Sizes, Location, Design
 PROVE
                          Init => QuarNoReg
  BY Sizes, SMTT(10), Location, Design DEF Init, BaseInit, QuarNoReg, Sizes, Location, Design

<1>I37.
 ASSUME Sizes, Location, Design
 PROVE
                           Init => MsgXDomain
 BY ONLY R3InitDomains, R3CardEmpty, R3Initial_net, SMTT(20), Sizes, Location, Design DEF R3CardEmpty, R3InitDomains, R3Initial_net, MsgXDomain, Sizes, Location, Design

<1>I38.
 ASSUME Sizes, Location, Design
 PROVE
                                 Init => NoEvictUnderRDMA
 BY ONLY R3InitDomains, R3CardEmpty, R3Initial_hw, R3Initial_sentry, R3Initial_sgen, R3Initial_skey, R3Initial_sown, R3Initial_spst, R3Initial_squar, R3Initial_xg, R3Initial_xr, R3Initial_xsrcP, R3Initial_xsrcS, SMTT(20), Sizes, Location, Design DEF R3CardEmpty, R3InitDomains, R3Initial_hw, R3Initial_sentry, R3Initial_sgen, R3Initial_skey, R3Initial_sown, R3Initial_spst, R3Initial_squar, R3Initial_xg, R3Initial_xr, R3Initial_xsrcP, R3Initial_xsrcS, NoEvictUnderRDMA, SAccess, Sizes, Location, Design

<1>I39.
 ASSUME Sizes, Location, Design
 PROVE
                             Init => SharedLedRef
 BY ONLY R3InitialNoSPin, R3InitialRefE, R3InitialRefQ, R3Initial_sprefc, SMTT(10), Sizes, Location, Design DEF R3InitialNoSPin, R3InitialRefE, R3InitialRefQ, R3Initial_sprefc, SharedLedRef, Sizes, Location, Design

<1>I40.
 ASSUME Sizes, Location, Design
 PROVE
                                    Init => PrefcMatchesHolders
 BY ONLY R3InitialRefR, R3InitialRefE, R3InitialRefQ, R3Initial_sprefc, SMTT(10), Sizes, Location, Design DEF R3InitialRefE, R3InitialRefQ, R3InitialRefR, R3Initial_sprefc, PrefcMatchesHolders, Sizes, Location, Design

<1>I41.
 ASSUME Sizes, Location, Design
 PROVE
                                Init => SharedImmutable
 BY ONLY R3InitDomains, R3CardEmpty, R3Initial_hw, R3Initial_sdata, R3Initial_spst, R3Initial_sready, R3Initial_swrite, R3Initial_xdst, SMTT(20), Sizes, Location, Design DEF R3CardEmpty, R3InitDomains, R3Initial_hw, R3Initial_sdata, R3Initial_spst, R3Initial_sready, R3Initial_swrite, R3Initial_xdst, SharedImmutable, NoWriteInto, Writing, InFl, Sizes, Location, Design

<1>I42.
 ASSUME Sizes, Location, Design
 PROVE
                            Init => HitIdentity
 BY ONLY R3InitDomains, R3CardEmpty, R3Initial_ph, R3Initial_rg, R3Initial_rpgS, R3Initial_skey, R3Initial_smap, R3Initial_spst, SMTT(20), Sizes, Location, Design DEF R3CardEmpty, R3InitDomains, R3Initial_ph, R3Initial_rg, R3Initial_rpgS, R3Initial_skey, R3Initial_smap, R3Initial_spst, HitIdentity, Active, Sizes, Location, Design

<1>I43.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => P_SI1
 BY ONLY R3InitDomains, R3CardEmpty, R3Initial_gen, R3Initial_ph, R3Initial_rg, R3Initial_rpgS, R3Initial_schoice, R3Initial_smap, R3Initial_spst, SMTT(20), Sizes, Location, Design DEF R3CardEmpty, R3InitDomains, R3Initial_gen, R3Initial_ph, R3Initial_rg, R3Initial_rpgS, R3Initial_schoice, R3Initial_smap, R3Initial_spst, P_SI1, SI1, Active, Sizes, Location, Design

<1>I44.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => P_SI2
 BY ONLY R3InitDomains, R3CardEmpty, R3Initial_rg, R3Initial_sdata, R3Initial_sgen, R3Initial_skey, R3Initial_smap, R3Initial_sown, R3Initial_sprefc, R3Initial_spst, R3Initial_sready, R3Initial_swrite, SMTT(20), Sizes, Location, Design DEF R3CardEmpty, R3InitDomains, R3Initial_rg, R3Initial_sdata, R3Initial_sgen, R3Initial_skey, R3Initial_smap, R3Initial_sown, R3Initial_sprefc, R3Initial_spst, R3Initial_sready, R3Initial_swrite, P_SI2, SI2, Sizes, Location, Design

<1>I45.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => P_SI3
 BY ONLY R3InitDomains, R3CardEmpty, R3Initial_kpin, R3Initial_krs, R3Initial_rpgS, R3Initial_sgen, R3Initial_sown, R3Initial_spst, SMTT(20), Sizes, Location, Design DEF R3CardEmpty, R3InitDomains, R3Initial_kpin, R3Initial_krs, R3Initial_rpgS, R3Initial_sgen, R3Initial_sown, R3Initial_spst, P_SI3, SI3, Sizes, Location, Design

<1>I46.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => P_SI4
 BY ONLY R3InitialXUnionCard, R3InitDomains, R3CardEmpty, R3Initial_hw, R3Initial_iv, R3Initial_nx, R3Initial_sentry, R3Initial_skey, R3Initial_spst, R3Initial_squar, R3Initial_xg, R3Initial_xk, R3Initial_xp, R3Initial_xprefixOK, R3Initial_xr, R3Initial_xsrc, R3Initial_xsrcP, R3Initial_xsrcS, R3Initial_xst, SMTT(20), Sizes, Location, Design DEF R3CardEmpty, R3InitDomains, R3InitialXUnionCard, R3Initial_hw, R3Initial_iv, R3Initial_nx, R3Initial_sentry, R3Initial_skey, R3Initial_spst, R3Initial_squar, R3Initial_xg, R3Initial_xk, R3Initial_xp, R3Initial_xprefixOK, R3Initial_xr, R3Initial_xsrc, R3Initial_xsrcP, R3Initial_xsrcS, R3Initial_xst, P_SI4, SI4, Sizes, Location, Design

<1>I47.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => P_SI5
 BY ONLY R3InitDomains, R3CardEmpty, R3Initial_dpreOK, R3Initial_hok, R3Initial_hw, R3Initial_iv, R3Initial_nx, R3Initial_ph, R3Initial_skey, R3Initial_smap, R3Initial_spst, R3Initial_squar, R3Initial_xdst, R3Initial_xg, R3Initial_xr, R3Initial_xsrcS, SMTT(20), Sizes, Location, Design DEF R3CardEmpty, R3InitDomains, R3Initial_dpreOK, R3Initial_hok, R3Initial_hw, R3Initial_iv, R3Initial_nx, R3Initial_ph, R3Initial_skey, R3Initial_smap, R3Initial_spst, R3Initial_squar, R3Initial_xdst, R3Initial_xg, R3Initial_xr, R3Initial_xsrcS, P_SI5, SI5, Active, Sizes, Location, Design

<1>I48.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => P_SI6
 BY ONLY R3InitDomains, R3CardEmpty, R3Initial_kpin, R3Initial_krs, R3Initial_ph, R3Initial_rg, R3Initial_rpgS, R3Initial_schoice, R3Initial_smap, SMTT(20), Sizes, Location, Design DEF R3CardEmpty, R3InitDomains, R3Initial_kpin, R3Initial_krs, R3Initial_ph, R3Initial_rg, R3Initial_rpgS, R3Initial_schoice, R3Initial_smap, P_SI6, SI6, Active, Sizes, Location, Design

<1>I49.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => SI7
 BY ONLY R3InitDomains, R3CardEmpty, R3Initial_iv, R3Initial_sentry, SMTT(20), Sizes, Location, Design DEF R3CardEmpty, R3InitDomains, R3Initial_iv, R3Initial_sentry, SI7, Sizes, Location, Design

<1>I50.
 ASSUME Sizes, Location, Design
 PROVE
                    Init => SI8
 BY ONLY R3InitDomains, R3CardEmpty, R3Initial_rd, R3Initial_sentry, R3Initial_squar, R3Initial_xk, R3Initial_xsrcS, R3Initial_xst, SMTT(20), Sizes, Location, Design DEF R3CardEmpty, R3InitDomains, R3Initial_rd, R3Initial_sentry, R3Initial_squar, R3Initial_xk, R3Initial_xsrcS, R3Initial_xst, SI8, Sizes, Location, Design

<1>I51.
 ASSUME Sizes, Location, Design
 PROVE
                          Init => P_B2OffInit
 BY Sizes, Location, Design DEF Init, P_B2OffInit, Sizes, Location, Design

<1>I52.
 ASSUME Sizes, Location, Design
 PROVE
                                Init => PrivateMapOwner
 BY NVyNQP0wFYciiCa35emkbgYb, Sizes, Location, Design DEF NVyNQP0wFYciiCa35emkbgYb, Sizes, Location, Design

<1>I53.
 ASSUME Sizes, Location, Design
 PROVE
                                        Init => EntryQuarantineDisjoint
 BY RrDy1aCnsbQiQOd3AktgNaFyTKNpfMbX, Sizes, Location, Design DEF RrDy1aCnsbQiQOd3AktgNaFyTKNpfMbX, Sizes, Location, Design

<1>InitConj. Init => QConj
 BY ONLY Sizes, Design, <1>LocationFact, <1>I1, <1>I2, <1>I3, <1>I4, <1>I5, <1>I6, <1>I7, <1>I8, <1>I9, <1>I10, <1>I11, <1>I12, <1>I13, <1>I14, <1>I15, <1>I16, <1>I17, <1>I18, <1>I19, <1>I20, <1>I21, <1>I22, <1>I23, <1>I24, <1>I25, <1>I26, <1>I27, <1>I28, <1>I29, <1>I30, <1>I31, <1>I32, <1>I33, <1>I34, <1>I35, <1>I36, <1>I37, <1>I38, <1>I39, <1>I40, <1>I41, <1>I42, <1>I43, <1>I44, <1>I45, <1>I46, <1>I47, <1>I48, <1>I49, <1>I50, <1>I51, <1>I52, <1>I53, SMTT(10) DEF QConj
<1>Shape. Init => MessageShape
 BY ONLY InitImpliesMessageShape DEF InitImpliesMessageShape
<1>Close. QED
 BY ONLY Sizes, Design, <1>LocationFact, <1>InitConj, <1>Shape, P_IndInvDecomposition, SMTT(5) DEF P_IndInvDecomposition

THEOREM V22_SafetyClosure ==
 ASSUME Sizes, Design
 PROVE PinInv => Safety
 BY ONLY SMTT(5) DEF PinInv, IndInv
====
