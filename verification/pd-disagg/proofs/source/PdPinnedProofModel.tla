---- MODULE PdPinnedProofModel ----
EXTENDS PdPinnedBridge

CoreTypeOK ==
  /\ gen \in [Rq -> 0..MG] /\ rt \in [Rq -> {"idle", "wait", "ok", "err"}]
  /\ rp \in [Rq -> {0} \cup Inst] /\ rd \in [Rq -> {0} \cup Inst]
  /\ hp \in [Rq -> [Gens -> {0} \cup Inst]] /\ hd \in [Rq -> [Gens -> {0} \cup Inst]]
  /\ alive \in [Inst -> BOOLEAN] /\ nfail \in 0..MaxFail /\ torn \in [Inst -> SUBSET Inst]
  /\ kpin \in [Inst -> [KSlots -> BOOLEAN]] /\ kfly \in [Inst -> [KSlots -> BOOLEAN]]
  /\ krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]   \* B 修订：sh 2 / 3 = 加页
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
TypInv == CoreTypeOK /\ STypeOK
Inv == IndInv /\ MessageShape
PinInv == IndInv /\ MessageShape
Location == /\ \A p \in KPages : Loc(p) \in Inst
            /\ \A p \in SPages : Loc(p) \in PInst

LEMMA PinnedLocationFact ==
 ASSUME Sizes
 PROVE Location
<1>1. \A p \in KPages : Loc(p) \in Inst
 BY ONLY Sizes, SizeArithmetic, PinnedPrivateLocation, PinnedSharedLocation, SMTT(5) DEF KPages, PInst, Inst, NL
<1>2. \A p \in SPages : Loc(p) \in PInst
 BY ONLY Sizes, PinnedSharedLocation, SMTT(5)
<1>3. QED BY ONLY <1>1, <1>2 DEF Location

LEMMA ProofTypeBridge == TypInv <=> (TypeOK /\ MessageShape)
 BY ONLY ExactTypeBridge, SMTT(5) DEF TypInv, CoreTypeOK, T2BaseTypeOK, TypeOK

LEMMA ProofTypeWeaken == TypInv => TypeOK
 BY ONLY ProofTypeBridge, SMTT(5)

LEMMA ProofInvParts == PinInv => IndInv /\ MessageShape
 BY ONLY SMTT(5) DEF PinInv

LEMMA ProofTypeBridgeNext == TypInv' <=> (TypeOK' /\ MessageShape')
<1>1. MessageShape' => \A m \in net' : m.t \in MsgT
 BY ONLY SMTT(5) DEF MessageShape
<1>2. QED BY ONLY <1>1, SMTT(10) DEF TypInv, CoreTypeOK, TypeOK, BaseTypeOK, MessageShape

LEMMA ProofTypeWeakenNext == TypInv' => TypeOK'
 BY ONLY ProofTypeBridgeNext, SMTT(5)
====
