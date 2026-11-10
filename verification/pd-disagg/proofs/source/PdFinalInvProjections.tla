---- MODULE PdFinalInvProjections ----
EXTENDS PdPBase, PdFinalEffects
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape, V21_MsgDomainTransfer, V21_PEndNet, V21_SFollowOff, V21_SFollowStatic, V22_Ind_SType, V22_Ind_SharedImmutable, V22_Ind_T_alive, V22_Ind_T_crep, V22_Ind_T_dedupSeen, V22_Ind_T_dpreOK, V22_Ind_T_drep, V22_Ind_T_dsucc, V22_Ind_T_gbad, V22_Ind_T_gen, V22_Ind_T_hd, V22_Ind_T_hitSeen, V22_Ind_T_hok, V22_Ind_T_hp, V22_Ind_T_hw, V22_Ind_T_iv, V22_Ind_T_kfly, V22_Ind_T_kpin, V22_Ind_T_krs, V22_Ind_T_led, V22_Ind_T_nfail, V22_Ind_T_nx, V22_Ind_T_pgn, V22_Ind_T_ph, V22_Ind_T_plt, V22_Ind_T_pqp, V22_Ind_T_pr, V22_Ind_T_prefc, V22_Ind_T_pst, V22_Ind_T_ptl, V22_Ind_T_pvis, V22_Ind_T_rd, V22_Ind_T_rg, V22_Ind_T_rhit, V22_Ind_T_rp, V22_Ind_T_rpe, V22_Ind_T_rpg, V22_Ind_T_rpgS, V22_Ind_T_rt, V22_Ind_T_rx, V22_Ind_T_schoice, V22_Ind_T_sdata, V22_Ind_T_sentry, V22_Ind_T_sfly, V22_Ind_T_sgen, V22_Ind_T_skey, V22_Ind_T_sled, V22_Ind_T_smap, V22_Ind_T_sown, V22_Ind_T_sprefc, V22_Ind_T_spst, V22_Ind_T_squar, V22_Ind_T_sready, V22_Ind_T_swrite, V22_Ind_T_torn, V22_Ind_T_xd, V22_Ind_T_xdst, V22_Ind_T_xg, V22_Ind_T_xk, V22_Ind_T_xlt, V22_Ind_T_xnt, V22_Ind_T_xp, V22_Ind_T_xprefixOK, V22_Ind_T_xr, V22_Ind_T_xsrc, V22_Ind_T_xsrcP, V22_Ind_T_xsrcS, V22_Ind_T_xst, V22_SF_Choice, V22_SF_Holders, V22_SF_Map, V22_SF_MapFrame, V22_SF_MapOrigin, V22_SF_MapPoint, V22_SF_Off, V22_SF_PrivateOrigin, V22_SF_RefCount, V22_SF_Sentry, V22_SF_SentryFrame, V22_SF_SharedData, V22_SF_SharedImmutable, V22_SF_SharedOrigin, V22_SF_SourcePrivate, V22_SF_SourceShared, V22_SF_Squar, V22_SF_SquarFrame, V22_SF_Static, V22_SF_Status, V22_SFollowSharedOrigin, V22_SharedDestinationExcluded, V22_SharedNoWrite, V22_SharedNoWriteNext, V22_T_SharedImmutable, V22_T_alive, V22_T_crep, V22_T_dedupSeen, V22_T_dpreOK, V22_T_drep, V22_T_dsucc, V22_T_gbad, V22_T_gen, V22_T_hd, V22_T_hitSeen, V22_T_hok, V22_T_hp, V22_T_hw, V22_T_iv, V22_T_kfly, V22_T_kpin, V22_T_krs, V22_T_led, V22_T_net, V22_T_nfail, V22_T_nx, V22_T_pgn, V22_T_ph, V22_T_plt, V22_T_pqp, V22_T_pr, V22_T_prefc, V22_T_pst, V22_T_ptl, V22_T_pvis, V22_T_rd, V22_T_rg, V22_T_rhit, V22_T_rp, V22_T_rpe, V22_T_rpg, V22_T_rpgS, V22_T_rt, V22_T_rx, V22_T_schoice, V22_T_sdata, V22_T_sentry, V22_T_sfly, V22_T_sgen, V22_T_skey, V22_T_sled, V22_T_smap, V22_T_sown, V22_T_sprefc, V22_T_spst, V22_T_squar, V22_T_sready, V22_T_swrite, V22_T_torn, V22_T_xd, V22_T_xdst, V22_T_xg, V22_T_xk, V22_T_xlt, V22_T_xnt, V22_T_xp, V22_T_xprefixOK, V22_T_xr, V22_T_xsrc, V22_T_xsrcP, V22_T_xsrcS, V22_T_xst




\* Only this interface opens the invariant directory. All statements are proved.
LEMMA V21_Inv_TypeOK ==
 ASSUME Sizes, Location, Design
 PROVE
                        PinInv => TypInv
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K1 ==
 ASSUME Sizes, Location, Design
 PROVE
                    PinInv => K1
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K2 ==
 ASSUME Sizes, Location, Design
 PROVE
                    PinInv => K2
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K3 ==
 ASSUME Sizes, Location, Design
 PROVE
                    PinInv => K3
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K4 ==
 ASSUME Sizes, Location, Design
 PROVE
                    PinInv => K4
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K5 ==
 ASSUME Sizes, Location, Design
 PROVE
                    PinInv => K5
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K6 ==
 ASSUME Sizes, Location, Design
 PROVE
                    PinInv => K6
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K7 ==
 ASSUME Sizes, Location, Design
 PROVE
                    PinInv => K7
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K8 ==
 ASSUME Sizes, Location, Design
 PROVE
                    PinInv => K8
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K9 ==
 ASSUME Sizes, Location, Design
 PROVE
                    PinInv => K9
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K10 ==
 ASSUME Sizes, Location, Design
 PROVE
                     PinInv => K10
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K11 ==
 ASSUME Sizes, Location, Design
 PROVE
                     PinInv => K11
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K12 ==
 ASSUME Sizes, Location, Design
 PROVE
                     PinInv => K12
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K13 ==
 ASSUME Sizes, Location, Design
 PROVE
                     PinInv => K13
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K14 ==
 ASSUME Sizes, Location, Design
 PROVE
                     PinInv => K14
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K15 ==
 ASSUME Sizes, Location, Design
 PROVE
                     PinInv => K15
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K16 ==
 ASSUME Sizes, Location, Design
 PROVE
                     PinInv => K16
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_K17 ==
 ASSUME Sizes, Location, Design
 PROVE
                     PinInv => K17
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_S1 ==
 ASSUME Sizes, Location, Design
 PROVE
                    PinInv => S1
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_S2 ==
 ASSUME Sizes, Location, Design
 PROVE
                    PinInv => S2
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_S3 ==
 ASSUME Sizes, Location, Design
 PROVE
                    PinInv => S3
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_S4 ==
 ASSUME Sizes, Location, Design
 PROVE
                    PinInv => S4
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_S5 ==
 ASSUME Sizes, Location, Design
 PROVE
                    PinInv => S5
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_S6 ==
 ASSUME Sizes, Location, Design
 PROVE
                    PinInv => S6
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_NoStrayAccess ==
 ASSUME Sizes, Location, Design
 PROVE
                               PinInv => NoStrayAccess
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_ReadOwnLanded ==
 ASSUME Sizes, Location, Design
 PROVE
                               PinInv => ReadOwnLanded
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_SendOwnLanded ==
 ASSUME Sizes, Location, Design
 PROVE
                               PinInv => SendOwnLanded
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_SealOnlyLanded ==
 ASSUME Sizes, Location, Design
 PROVE
                                PinInv => SealOnlyLanded
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_GenFiltered ==
 ASSUME Sizes, Location, Design
 PROVE
                             PinInv => GenFiltered
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_OneReply ==
 ASSUME Sizes, Location, Design
 PROVE
                          PinInv => OneReply
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_ReplyTruth ==
 ASSUME Sizes, Location, Design
 PROVE
                            PinInv => ReplyTruth
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_QuarNeverMapped ==
 ASSUME Sizes, Location, Design
 PROVE
                                 PinInv => QuarNeverMapped
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_QuietConservation ==
 ASSUME Sizes, Location, Design
 PROVE
                                   PinInv => QuietConservation
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_NoFreeUnderRead ==
 ASSUME Sizes, Location, Design
 PROVE
                                 PinInv => NoFreeUnderRead
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_KReadIntegrity ==
 ASSUME Sizes, Location, Design
 PROVE
                                PinInv => KReadIntegrity
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_QuarNoReg ==
 ASSUME Sizes, Location, Design
 PROVE
                           PinInv => QuarNoReg
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_MsgXDomain ==
 ASSUME Sizes, Location, Design
 PROVE
                            PinInv => MsgXDomain
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_NoEvictUnderRDMA ==
 ASSUME Sizes, Location, Design
 PROVE
                                  PinInv => NoEvictUnderRDMA
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_SharedLedRef ==
 ASSUME Sizes, Location, Design
 PROVE
                              PinInv => SharedLedRef
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_PrefcMatchesHolders ==
 ASSUME Sizes, Location, Design
 PROVE
                                     PinInv => PrefcMatchesHolders
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_SharedImmutable ==
 ASSUME Sizes, Location, Design
 PROVE
                                 PinInv => SharedImmutable
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_HitIdentity ==
 ASSUME Sizes, Location, Design
 PROVE
                             PinInv => HitIdentity
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_P_SI1 ==
 ASSUME Sizes, Location, Design
 PROVE
                       PinInv => P_SI1
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_P_SI2 ==
 ASSUME Sizes, Location, Design
 PROVE
                       PinInv => P_SI2
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_P_SI3 ==
 ASSUME Sizes, Location, Design
 PROVE
                       PinInv => P_SI3
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_P_SI4 ==
 ASSUME Sizes, Location, Design
 PROVE
                       PinInv => P_SI4
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_P_SI5 ==
 ASSUME Sizes, Location, Design
 PROVE
                       PinInv => P_SI5
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_P_SI6 ==
 ASSUME Sizes, Location, Design
 PROVE
                       PinInv => P_SI6
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_SI7 ==
 ASSUME Sizes, Location, Design
 PROVE
                     PinInv => SI7
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_SI8 ==
 ASSUME Sizes, Location, Design
 PROVE
                     PinInv => SI8
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_P_B2OffInit ==
 ASSUME Sizes, Location, Design
 PROVE
                             PinInv => P_B2OffInit
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_PrivateMapOwner ==
 ASSUME Sizes, Location, Design
 PROVE
                                 PinInv => PrivateMapOwner
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_EntryQuarantineDisjoint ==
 ASSUME Sizes, Location, Design
 PROVE
                                         PinInv => EntryQuarantineDisjoint
 BY ONLY P_IndInvDecomposition, SMTT(5), Sizes, Location, Design DEF QConj, Sizes, Location, Design

LEMMA V21_Inv_KStruct ==
 ASSUME Sizes, Location, Design
 PROVE
                         PinInv => KStruct
 BY ONLY SMTT(5), Sizes, Location, Design, ProofTypeBridge DEF PinInv, Sizes, Location, Design, IndInv

LEMMA V21_Inv_Strengthen ==
 ASSUME Sizes, Location, Design
 PROVE
                            PinInv => Strengthen
 BY ONLY SMTT(5), Sizes, Location, Design, ProofTypeBridge DEF PinInv, Sizes, Location, Design, IndInv

LEMMA V21_Inv_Safety ==
 ASSUME Sizes, Location, Design
 PROVE
                        PinInv => Safety
 BY ONLY SMTT(5), Sizes, Location, Design, ProofTypeBridge DEF PinInv, Sizes, Location, Design, IndInv

LEMMA V21_Inv_BaseSafety ==
 ASSUME Sizes, Location, Design
 PROVE
                            PinInv => BaseSafety
 BY ONLY V21_Inv_Safety, SMTT(5), Sizes, Location, Design DEF Safety, Sizes, Location, Design

LEMMA V21_Inv_SInd ==
 ASSUME Sizes, Location, Design
 PROVE
                      PinInv => SInd
 BY ONLY SMTT(5), Sizes, Location, Design, ProofTypeBridge DEF PinInv, Sizes, Location, Design, IndInv

LEMMA V21_Inv_BaseTypeOK ==
 ASSUME Sizes, Location, Design
 PROVE
                            PinInv => CoreTypeOK
 BY ONLY V21_Inv_TypeOK, SMTT(5), Sizes, Location, Design DEF TypInv, Sizes, Location, Design

LEMMA V21_Inv_STypeOK ==
 ASSUME Sizes, Location, Design
 PROVE
                         PinInv => STypeOK
 BY ONLY V21_Inv_TypeOK, SMTT(5), Sizes, Location, Design DEF TypInv, Sizes, Location, Design

====
