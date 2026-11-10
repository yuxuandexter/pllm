---- MODULE PdBridgeArith ----
EXTENDS Integers, TLAPS

LEMMA PositiveNatFact ==
 ASSUME NEW a \in Nat \ {0}
 PROVE a \in Int /\ a >= 1
 BY SMTT(5)

LEMMA NonnegativeNatFact ==
 ASSUME NEW a \in Nat
 PROVE a \in Int /\ a >= 0
 BY SMTT(5)

LEMMA ProductIsInteger ==
 ASSUME NEW a \in Int, NEW b \in Int, NEW c \in Int
 PROVE (a+b)*c \in Int
 BY SMTT(5)

LEMMA PrivateRange ==
 ASSUME NEW n \in Int, NEW d \in Int, NEW w \in Int, NEW p \in Int,
        n >= 1, d >= 1, w >= 1, 1 <= p, p <= (n+d)*w
 PROVE (IF p <= w THEN 1 ELSE IF p <= w+w THEN 2
        ELSE IF p <= w+w+w THEN 3 ELSE 4) \in 1..(n+d)
 BY SMTT(5)

LEMMA SharedRange ==
 ASSUME NEW n \in Int, NEW w \in Int, NEW p \in Int,
        n >= 1, w >= 1, 1 <= p, p <= n*w
 PROVE 1 + (p-1) \div w \in 1..n
 BY SMTT(5)

LEMMA ShiftedSharedRange ==
 ASSUME NEW n \in Int, NEW w \in Int, NEW z \in Int, NEW p \in Int,
        n >= 1, w >= 0, p \in (z+1)..(z+n*w)
 PROVE w > 0 /\ p > z /\ (1 + (p-z-1) \div w) \in 1..n
 BY SMTT(5)
====
