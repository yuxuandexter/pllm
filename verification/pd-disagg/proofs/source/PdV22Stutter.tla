---- MODULE PdV22Stutter ----
EXTENDS PdR3StutterVars
\* V22-SCOPE: sequential-interface
\* Pure congruence: replace unchanged free state variables in the invariant.
LEMMA StutterPreservesIndInv ==
 ASSUME Sizes, Design
 PROVE PinInv /\ UNCHANGED vars => PinInv'
<1>1. Location BY ONLY Sizes, PinnedLocationFact
<1>2. UNCHANGED vars => (PinInv' = PinInv)
 BY ONLY Sizes, Design, <1>1, R3UnchangedVars, IsaMT("clarsimp",20)
 DEF Active, BaseKReadIntegrity, BaseLoc, BaseQuietConservation, BaseReadOwnLanded, BaseSafety, BaseSealOnlyLanded, BaseSendOwnLanded, BaseTypeOK, CqeHw, DInst, EntryQuarantineDisjoint, ExpInst, ExpPage, GenFiltered, Gens, GrownP, Held, HitIdentity, InFl, IndInv, InitInst, InitPage, Inst, IsD, IsP, K1, K10, K11, K12, K13, K14, K15, K16, K17, K2, K3, K4, K5, K6, K7, K8, K9, KData, KHeld, KPages, KPinned, KReadIntegrity, KSlots, KStruct, Loc, Maps, MessageShape, MsgT, MsgXDomain, NHits, NL, NTok, NoEvictUnderRDMA, NoFreeUnderRead, NoStrayAccess, NoWriteInto, OneReply, OwnedBy, PInst, PLens, Pages, PhSet, PinInv, PrefcMatchesHolders, PrivateMapOwner, QuarNeverMapped, QuarNoReg, Quiet, QuietConservation, ReadOwnLanded, ReplyTruth, Rq, S1, S2, S3, S4, S5, S6, SAccess, SData, SH, SHPin, SHeld, SI1, SI2, SI3, SI4, SI5, SI6, SI7, SI8, SInd, SInit, SMapIntegrity, SPages, SPin, SRefE, SRefQ, SRefR, SSendReady, STok, STypeOK, SWidth, Safety, SealOnlyLanded, SendOwnLanded, SharedImmutable, SharedLedRef, Strengthen, Tag, TypeOK, Writing, Xids
<1>3. QED BY ONLY <1>2, SMTT(5)
====
