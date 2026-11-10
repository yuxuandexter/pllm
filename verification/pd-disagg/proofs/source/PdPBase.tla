---- MODULE PdPBase ----
EXTENDS PdPinnedProofModel

\* T1 proposal: parameters are arbitrary, never enumerated configurations.
\* No state predicate is assumed globally. All pre-state invariants appear
\* explicitly as theorem hypotheses. Generation and xfer IDs remain ordered Nat.

P_SI1 == B2 => SI1
P_SI2 == B2 => SI2
P_SI3 == B2 => SI3
P_SI4 == B2 => SI4
P_SI5 == B2 => SI5
P_SI6 == B2 => SI6
P_B2OffInit == ~B2 => SInit

QConj == TypInv /\ K1 /\ K2 /\ K3 /\ K4 /\ K5 /\ K6 /\ K7 /\ K8 /\ K9 /\ K10 /\ K11 /\ K12 /\ K13 /\ K14 /\ K15 /\ K16 /\ K17 /\ S1 /\ S2 /\ S3 /\ S4 /\ S5 /\ S6 /\ NoStrayAccess /\ ReadOwnLanded /\ SendOwnLanded /\ SealOnlyLanded /\ GenFiltered /\ OneReply /\ ReplyTruth /\ QuarNeverMapped /\ QuietConservation /\ NoFreeUnderRead /\ KReadIntegrity /\ QuarNoReg /\ MsgXDomain /\ NoEvictUnderRDMA /\ SharedLedRef /\ PrefcMatchesHolders /\ SharedImmutable /\ HitIdentity /\ P_SI1 /\ P_SI2 /\ P_SI3 /\ P_SI4 /\ P_SI5 /\ P_SI6 /\ SI7 /\ SI8 /\ P_B2OffInit /\ PrivateMapOwner /\ EntryQuarantineDisjoint

PConj == TypeOK /\ K1 /\ K2 /\ K3 /\ K4 /\ K5 /\ K6 /\ K7 /\ K8 /\ K9 /\ K10 /\ K11 /\ K12 /\ K13 /\ K14 /\ K15 /\ K16 /\ K17 /\ S1 /\ S2 /\ S3 /\ S4 /\ S5 /\ S6 /\ NoStrayAccess /\ ReadOwnLanded /\ SendOwnLanded /\ SealOnlyLanded /\ GenFiltered /\ OneReply /\ ReplyTruth /\ QuarNeverMapped /\ QuietConservation /\ NoFreeUnderRead /\ KReadIntegrity /\ QuarNoReg /\ MsgXDomain /\ NoEvictUnderRDMA /\ SharedLedRef /\ PrefcMatchesHolders /\ SharedImmutable /\ HitIdentity /\ P_SI1 /\ P_SI2 /\ P_SI3 /\ P_SI4 /\ P_SI5 /\ P_SI6 /\ SI7 /\ SI8 /\ P_B2OffInit /\ PrivateMapOwner /\ EntryQuarantineDisjoint

LEMMA P_IndInvDecomposition ==
 ASSUME Sizes, Location, Design
 PROVE
                               PinInv <=> QConj
 BY ONLY ProofTypeBridge, SMTT(5), Sizes, Location, Design DEF PinInv, IndInv, QConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit, Sizes, Location, Design

LEMMA P_PagePoolsDisjoint ==
 ASSUME Sizes, Location, Design
 PROVE
                             Pages \cap SPages = {}
 BY Sizes, SMTT(10), Location, Design DEF Pages, SPages, Sizes, Location, Design


LEMMA P_PostIndInvDecomposition ==
 ASSUME Sizes, Location, Design
 PROVE QConj' <=> PinInv'
 BY ONLY Sizes, Location, Design, ProofTypeBridgeNext, SMTT(5)
 DEF PinInv, IndInv, QConj, Safety, BaseSafety, KStruct, Strengthen, SInd, P_SI1, P_SI2, P_SI3, P_SI4, P_SI5, P_SI6, P_B2OffInit, Sizes, Location, Design
====
