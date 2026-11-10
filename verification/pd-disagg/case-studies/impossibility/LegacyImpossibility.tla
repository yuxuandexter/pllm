----------------------- MODULE LegacyImpossibility -----------------------
EXTENDS Integers, TLAPS

(*************************************************************************
 Relational, infinite-trace theorem. No finite state bound, clock deadline,
 or fixed policy. cut and time range over Nat. Obs* denotes the COMPLETE
 causal local history, including clocks/errors/leases and all descriptors.
 Each delayed trace is chosen by the adversary AFTER the failed trace's
 release witness is chosen. No inference from "hold at T" to "hold forever".

 This is an abstraction theorem, NOT a refinement proof from the engines.
 Strict physical Isolation below already contradicts DelayedAccess+LocalPolicy+Finality; the
 requested NoGenerationValidation-necessity claim is false. Integrity is not weakened to obtain
 three successful ablations. See README and check.py.
*************************************************************************)
CONSTANTS Pi(_), ObsFailed(_), ObsLate(_, _), ReleaseFailed(_),
          ReleaseLate(_, _), AccessLate(_, _), GenChecked(_, _),
          Consume(_, _), ReadValue(_, _), ExpectedValue(_, _)

\* DelayedAccess is the environment's delayed-trace closure: for EVERY finite cut,
\* an indistinguishable trace can touch the very same physical page later.
\* No sound stop observation has occurred in the common local prefix.
DelayedAccess ==
  \A cut \in Nat :
    /\ \A t \in 0..cut : ObsLate(cut, t) = ObsFailed(t)
    /\ AccessLate(cut, cut + 1)

\* LocalPolicy: arbitrary deterministic causal control. Internal/random choices can
\* be included in the shared prefix; not a probabilistic guarantee theorem.
LocalPolicy ==
  /\ \A t \in Nat : ReleaseFailed(t) = Pi(ObsFailed(t))
  /\ \A cut, t \in Nat : ReleaseLate(cut, t) = Pi(ObsLate(cut, t))

NoGenerationValidation ==
                   \A cut, t \in Nat : ~GenChecked(cut, t)
LegacyArch_Axioms == DelayedAccess /\ LocalPolicy /\ NoGenerationValidation

\* A release relinquishes the OLD transfer's ownership permanently; a later
\* allocation or software generation bump cannot undo the historical release.
\* Bad access at a finite t has a finite counterexample prefix: safety.
Isolation ==
  \A cut, t \in Nat : AccessLate(cut, t) =>
    \A releasedAt \in 0..t : ~ReleaseLate(cut, releasedAt)
Integrity ==
  \A cut, t \in Nat : Consume(cut, t) =>
    ReadValue(cut, t) = ExpectedValue(cut, t)

\* Eventual release on the permanently failed trace: exists a finite t.
\* It is neither a fixed uniform timeout nor mere request error completion.
\* This is <>Released in an extensional Nat-indexed trace representation.
Finality == \E t \in Nat : ReleaseFailed(t)

LEMMA SameDecision ==
  ASSUME DelayedAccess, LocalPolicy,
         NEW cut \in Nat, ReleaseFailed(cut)
  PROVE ReleaseLate(cut, cut)
<1>1. cut \in 0..cut
  BY SMT
<1>2. ObsLate(cut, cut) = ObsFailed(cut)
  BY <1>1 DEF DelayedAccess
<1>3. ReleaseFailed(cut) = Pi(ObsFailed(cut))
  BY DEF LocalPolicy
<1>4. ReleaseLate(cut, cut) = Pi(ObsLate(cut, cut))
  BY DEF LocalPolicy
<1>5. QED BY <1>2, <1>3, <1>4

LEMMA ReleaseConflictsWithDelayedAccess ==
  ASSUME DelayedAccess, NEW cut \in Nat, ReleaseLate(cut, cut)
  PROVE ~Isolation
<1>1. AccessLate(cut, cut + 1)
  BY DEF DelayedAccess
<1>2. cut + 1 \in Nat /\ cut \in 0..(cut + 1)
  BY SMT
<1>3. QED BY <1>1, <1>2 DEF Isolation

THEOREM PhysicalImpossibility ==
  (DelayedAccess /\ LocalPolicy) => ~(Isolation /\ Finality)
<1>1. ASSUME DelayedAccess, LocalPolicy, Isolation, Finality
      PROVE FALSE
  <2>1. PICK cut \in Nat : ReleaseFailed(cut)
    BY <1>1 DEF Finality
  <2>2. ReleaseLate(cut, cut)
    BY <1>1, <2>1, SameDecision
  <2>3. ~Isolation
    BY <1>1, <2>1, <2>2, ReleaseConflictsWithDelayedAccess
  <2>4. QED BY <1>1, <2>3
<1>2. QED BY <1>1

THEOREM LegacyArchitectureImpossibility ==
  LegacyArch_Axioms => ~(Isolation /\ Integrity /\ Finality)
  BY PhysicalImpossibility DEF LegacyArch_Axioms

(*************************************************************************
 stop-evidence CONSISTENCY WITNESS, not a proof about PdCore.tla.
 On delayed trace k: last old access at k+1; trustworthy stop evidence at
 k+2; reclaim and initialize the new generation then; consume from k+3.
 On the failed trace: sound local teardown evidence at time 1, then reclaim.
 Eventual availability of this evidence is an EXTRA environment premise.
 A mere software label does not cause the old hardware access to disappear.
*************************************************************************)
EvidenceAccess(k, t) ==
                 t = k + 1
EvidenceStop(k, t) ==
               t >= k + 2
EvidenceRelease(k, t) ==
                  EvidenceStop(k, t)
EvidenceStopFailed(t) ==
                  t >= 1
EvidenceReleaseFailed(t) ==
                     EvidenceStopFailed(t)
EvidenceConsume(k, t) ==
                  t >= k + 3
EvidenceValue(k, t) ==
                IF t >= k + 2 THEN "new" ELSE "old"
EvidenceIsolation ==
              \A k, t \in Nat : EvidenceAccess(k, t) =>
                \A r \in 0..t : ~EvidenceRelease(k, r)
EvidenceIntegrity ==
              \A k, t \in Nat : EvidenceConsume(k, t) => EvidenceValue(k, t) = "new"
EvidenceFinality ==
             /\ \E t \in Nat : EvidenceReleaseFailed(t)
             /\ \A k \in Nat : \E t \in Nat : EvidenceRelease(k, t)

LEMMA EvidenceIsolationWitness == EvidenceIsolation
  BY SMT DEF EvidenceIsolation, EvidenceAccess, EvidenceRelease, EvidenceStop
LEMMA EvidenceIntegrityWitness == EvidenceIntegrity
  BY SMT DEF EvidenceIntegrity, EvidenceConsume, EvidenceValue
LEMMA EvidenceFailedReleases == \E t \in Nat : EvidenceReleaseFailed(t)
<1>1. 1 \in Nat /\ EvidenceReleaseFailed(1)
  BY SMT DEF EvidenceReleaseFailed, EvidenceStopFailed
<1>2. QED BY <1>1
LEMMA EvidenceLateReleases == \A k \in Nat : \E t \in Nat : EvidenceRelease(k, t)
<1>1. TAKE k \in Nat
<1>2. k + 2 \in Nat /\ EvidenceRelease(k, k + 2)
  BY SMT DEF EvidenceRelease, EvidenceStop
<1>3. QED BY <1>2

THEOREM StopEvidenceArchitectureWitness == EvidenceIsolation /\ EvidenceIntegrity /\ EvidenceFinality
  BY EvidenceIsolationWitness, EvidenceIntegrityWitness, EvidenceFailedReleases, EvidenceLateReleases
  DEF EvidenceFinality
=============================================================================
