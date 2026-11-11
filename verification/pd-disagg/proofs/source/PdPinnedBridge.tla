---- MODULE PdPinnedBridge ----
EXTENDS MC_pd_ind, PdBridgeArith

Sizes == /\ NPI \in Nat \ {0} /\ NDI \in Nat \ {0}
                /\ NR \in Nat \ {0} /\ MG \in Nat \ {0}
                /\ PPL \in Nat \ {0} /\ PS \in Nat \ {0}
                /\ KR \in Nat /\ MX \in Nat /\ MaxFail \in Nat
                /\ B2 \in BOOLEAN /\ SPP \in Nat
                /\ NP = (NPI + NDI) * PPL
AbstractLocation(LocOf) == /\ LocOf \in [KPages -> Inst]
                   /\ \A p \in SPages : LocOf[p] \in PInst
Design == /\ Mode \in {"push", "pull"}
                 /\ HComplete = "narrow" /\ HOrder = "widest"
                 /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
                 /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE
                 /\ Ovl = TRUE /\ PReg = TRUE /\ Mut = "none" /\ Faults = TRUE



PinnedLocOf == [p \in KPages |-> Loc(p)]


LEMMA SizeArithmetic ==
 ASSUME Sizes
 PROVE NPI \in Int /\ NDI \in Int /\ PPL \in Int /\ SPP \in Int /\ NP \in Int
       /\ NPI >= 1 /\ NDI >= 1 /\ PPL >= 1 /\ SPP >= 0
       /\ NP = (NPI+NDI)*PPL
 BY ONLY Sizes, PositiveNatFact, NonnegativeNatFact, ProductIsInteger, ZenonT(10) DEF Sizes

LEMMA PinnedPrivateLocation ==
 ASSUME Sizes, NEW p \in Pages
 PROVE Loc(p) \in Inst
<1>1. NPI \in Int /\ NDI \in Int /\ PPL \in Int /\ NP \in Int
       /\ NPI >= 1 /\ NDI >= 1 /\ PPL >= 1 /\ NP = (NPI+NDI)*PPL
 BY ONLY Sizes, SizeArithmetic
<1>2. p \in Int /\ 1 <= p /\ p <= NP
 BY ONLY <1>1, SMTT(5) DEF Pages
<1>3. BaseLoc(p) \in Inst
 BY ONLY <1>1, <1>2, PrivateRange, ZenonT(10) DEF BaseLoc, Inst, NL
<1>4. QED BY ONLY <1>2, <1>3, SMTT(5) DEF Loc

LEMMA PinnedSharedLocation ==
 ASSUME Sizes, NEW p \in SPages
 PROVE Loc(p) \in PInst
<1>1. NPI \in Int /\ SPP \in Int /\ NP \in Int /\ NPI >= 1 /\ SPP >= 0
 BY ONLY Sizes, SizeArithmetic
<1>2. p \in Int
 BY ONLY <1>1, SMTT(5) DEF SPages
<1>3. SPP > 0 /\ p > NP /\ (1 + (p-NP-1) \div SPP) \in PInst
 BY ONLY <1>1, <1>2, ShiftedSharedRange, ZenonT(10) DEF SPages, PInst
<1>4. QED BY ONLY <1>1, <1>2, <1>3, SMTT(5) DEF Loc, SWidth

LEMMA PinnedLocation ==
 ASSUME Sizes
 PROVE AbstractLocation(PinnedLocOf)
<1>1. \A p \in KPages : Loc(p) \in Inst
 BY ONLY Sizes, SizeArithmetic, PinnedPrivateLocation, PinnedSharedLocation, SMTT(5)
    DEF KPages, PInst, Inst, NL
<1>2. QED
 BY ONLY <1>1, Sizes, PinnedSharedLocation, SMTT(5)
    DEF AbstractLocation, PinnedLocOf, KPages

LEMMA PinnedLocAgreement ==
 \A p \in KPages : PinnedLocOf[p] = Loc(p)
 BY ONLY SMTT(10) DEF PinnedLocOf

MessageShape == net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                      r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                      pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]

T2BaseTypeOK ==
  /\ gen \in [Rq -> 0..MG] /\ rt \in [Rq -> {"idle", "wait", "ok", "err"}]
  /\ rp \in [Rq -> {0} \cup Inst] /\ rd \in [Rq -> {0} \cup Inst]
  /\ hp \in [Rq -> [Gens -> {0} \cup Inst]] /\ hd \in [Rq -> [Gens -> {0} \cup Inst]]
  /\ alive \in [Inst -> BOOLEAN] /\ nfail \in 0..MaxFail /\ torn \in [Inst -> SUBSET Inst]
  /\ kpin \in [Inst -> [KSlots -> BOOLEAN]] /\ kfly \in [Inst -> [KSlots -> BOOLEAN]]
  /\ krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]   \* decode growth and cancellation: sh 2 / 3 = grown pages
  /\ ph \in [Inst -> [Rq -> PhSet]] /\ rg \in [Inst -> [Rq -> 0..MG]]
  /\ rpg \in [Inst -> [Rq -> 0..NP]] /\ rpe \in [Inst -> [Rq -> {0} \cup Inst]]
  /\ rx \in [Inst -> [Rq -> 0..MX]] /\ rhit \in [Inst -> [Rq -> BOOLEAN]]
  /\ pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
  /\ pr \in [Pages -> 0..NR] /\ pgn \in [Pages -> 0..MG] /\ plt \in [Pages -> 0..PS] /\ ptl \in [Pages -> -1..PS]
  /\ pvis \in [Pages -> BOOLEAN]
  /\ led \in [Pages -> SUBSET Xids]
  /\ sfly \in [Pages -> SUBSET (Rq \X Gens)] /\ sled \in [Pages -> SUBSET (Rq \X Gens)]
  /\ prefc \in [Pages -> 0..NR] /\ pqp \in [Pages -> {0} \cup Inst]
  /\ xr \in [Xids -> 0..NR] /\ xg \in [Xids -> 0..MG] /\ xk \in [Xids -> {"none", "wr", "rd"}]
  /\ xp \in [Xids -> {0} \cup Inst] /\ xd \in [Xids -> {0} \cup Inst]
  /\ xsrc \in [Xids -> 0..NP] /\ xdst \in [Xids -> 0..NP] /\ xnt \in [Xids -> 0..PS]
  /\ hw \in [Xids -> {"none", "fly", "issued", "stop"}] /\ hok \in [Xids -> BOOLEAN]
  /\ iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
  /\ xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}] /\ xlt \in [Xids -> 0..PS]
  /\ nx \in 1..(MX + 1)
  /\ net \subseteq [t: MsgT, fr: {0} \cup Inst, to: {0} \cup Inst,
                      r: {0} \cup Rq, g: {0} \cup Gens, x: {0} \cup Xids,
                      pg: {0} \cup Pages \cup (0..PS), pe: {0} \cup Inst \cup (0..PS), ok: BOOLEAN]
  /\ drep \in [Rq -> [Gens -> 0..2]] /\ crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]
  /\ dsucc \in [Rq -> [Gens -> BOOLEAN]] /\ gbad \in BOOLEAN

LEMMA ShapeImpliesTags ==
 ASSUME MessageShape
 PROVE \A m \in net : m.t \in MsgT
 BY SMTT(10) DEF MessageShape

LEMMA ExactTypeBridge ==
 T2BaseTypeOK <=> (BaseTypeOK /\ MessageShape)
 BY ONLY ShapeImpliesTags, SMTT(10) DEF T2BaseTypeOK, BaseTypeOK, MessageShape

LEMMA TypeBridgeUnderShape ==
 ASSUME MessageShape
 PROVE T2BaseTypeOK <=> BaseTypeOK
 BY ONLY MessageShape, ExactTypeBridge

LEMMA TypeBridgeForward == T2BaseTypeOK => BaseTypeOK
 BY ONLY ExactTypeBridge

LEMMA InitImpliesMessageShape == Init => MessageShape
<1>1. Init => net = {}
 BY ONLY SMTT(5) DEF Init, BaseInit
<1>2. net = {} => MessageShape
 BY ONLY SMTT(5) DEF MessageShape
<1>3. QED BY ONLY <1>1, <1>2
====
