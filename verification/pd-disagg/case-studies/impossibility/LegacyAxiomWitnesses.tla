----------------------- MODULE LegacyAxiomWitnesses -----------------------
EXTENDS Integers, TLAPS

(*************************************************************************
 Explicit INFINITE execution countermodels to two weakened versions of DelayedAccess.
 These are positive proofs of concrete models, not timeout-based evidence.
 Isolation/Integrity/Finality are instantiated FROM the original module.
 DelayedAccess itself is not retained: each model violates exactly the removed clause.
 The original theorem and the pinned legacy/ledger engine models are unchanged.
*************************************************************************)
Never2(k, t) == FALSE
Zero2(k, t) == 0

\* Remove identical observations: the failed execution has a distinguishing
\* observation at time 0. A single local policy releases only in that trace.
DPi(h) == h = 0
DFailed(t) == 0
DLate(k, t) == 1
DRFailed(t) == TRUE
DRLate(k, t) == FALSE
DAccess(k, t) == t = k + 1
D == INSTANCE LegacyImpossibility
     WITH Pi <- DPi, ObsFailed <- DFailed, ObsLate <- DLate,
          ReleaseFailed <- DRFailed, ReleaseLate <- DRLate,
          AccessLate <- DAccess, GenChecked <- Never2,
          Consume <- Never2, ReadValue <- Zero2, ExpectedValue <- Zero2

DistinguishableDelayedAccess ==
                \A cut \in Nat : DAccess(cut, cut + 1)
LEMMA DistinctObservationModel ==
  DistinguishableDelayedAccess /\ D!LocalPolicy /\ D!NoGenerationValidation /\ D!Isolation /\ D!Integrity
  BY SMT DEF DistinguishableDelayedAccess, DAccess, D!LocalPolicy, D!NoGenerationValidation,
             D!Isolation, D!Integrity, DRFailed, DRLate, DPi, DFailed,
             DLate, Never2, Zero2
LEMMA DistinctObservationFinality == D!Finality
<1>1. 0 \in Nat /\ DRFailed(0)
  BY SMT DEF DRFailed
<1>2. QED BY <1>1 DEF D!Finality
LEMMA DistinctObservationBreaksDelayedAccess == ~D!DelayedAccess
<1>1. 0 \in Nat /\ 0 \in 0..0 /\ DLate(0, 0) # DFailed(0)
  BY SMT DEF DLate, DFailed
<1>2. QED BY <1>1 DEF D!DelayedAccess

\* Remove the old-access extension: all histories are identical, but the
\* environment guarantees there is no remaining old access. Release at 0.
NPi(h) == TRUE
NObsFailed(t) == 0
NObsLate(k, t) == 0
NReleaseFailed(t) == TRUE
NReleaseLate(k, t) == TRUE
N == INSTANCE LegacyImpossibility
     WITH Pi <- NPi, ObsFailed <- NObsFailed, ObsLate <- NObsLate,
          ReleaseFailed <- NReleaseFailed, ReleaseLate <- NReleaseLate,
          AccessLate <- Never2, GenChecked <- Never2,
          Consume <- Never2, ReadValue <- Zero2, ExpectedValue <- Zero2

IndistinguishableNoAccess ==
                \A cut \in Nat : \A t \in 0..cut :
                 NObsLate(cut, t) = NObsFailed(t)
LEMMA NoOldAccessModel ==
  IndistinguishableNoAccess /\ N!LocalPolicy /\ N!NoGenerationValidation /\ N!Isolation /\ N!Integrity
  BY SMT DEF IndistinguishableNoAccess, NObsLate, NObsFailed, NPi,
             NReleaseFailed, NReleaseLate, Never2, Zero2,
             N!LocalPolicy, N!NoGenerationValidation, N!Isolation, N!Integrity
LEMMA NoOldAccessFinality == N!Finality
<1>1. 0 \in Nat /\ NReleaseFailed(0)
  BY SMT DEF NReleaseFailed
<1>2. QED BY <1>1 DEF N!Finality
LEMMA NoOldAccessBreaksDelayedAccess == ~N!DelayedAccess
<1>1. 0 \in Nat /\ ~Never2(0, 1)
  BY SMT DEF Never2
<1>2. QED BY <1>1 DEF N!DelayedAccess

THEOREM WeakenedAxiomCountermodels ==
  /\ DistinguishableDelayedAccess /\ D!LocalPolicy /\ D!NoGenerationValidation
  /\ D!Isolation /\ D!Integrity /\ D!Finality /\ ~D!DelayedAccess
  /\ IndistinguishableNoAccess /\ N!LocalPolicy /\ N!NoGenerationValidation
  /\ N!Isolation /\ N!Integrity /\ N!Finality /\ ~N!DelayedAccess
  BY DistinctObservationModel, DistinctObservationFinality,
     DistinctObservationBreaksDelayedAccess, NoOldAccessModel, NoOldAccessFinality,
     NoOldAccessBreaksDelayedAccess
=============================================================================
