---- MODULE PdR3InitFacts ----
EXTENDS PdPBase, FiniteSetTheorems

\* R3-VISIBILITY

LEMMA R3InitDomains ==
 ASSUME Sizes, Location, Design
 PROVE
                       /\ PInst \subseteq Inst /\ DInst \subseteq Inst /\ 0 \notin SPages
 BY Sizes, SMTT(10), Location, Design DEF PInst, DInst, Inst, NL, SPages, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3CardEmpty ==
 ASSUME Sizes, Location, Design
 PROVE
                     Cardinality({}) = 0
 BY FS_EmptySet, Sizes, Location, Design DEF Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_spst ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => spst = [p \in SPages |-> IF B2 /\ (p - NP - 1) % SWidth = 0 THEN "shared" ELSE "free"]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_sown ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => sown = [p \in SPages |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_sgen ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => sgen = [p \in SPages |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_skey ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => skey = [p \in SPages |-> IF B2 /\ (p - NP - 1) % SWidth = 0 THEN 1 ELSE 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_swrite ==
 ASSUME Sizes, Location, Design
 PROVE
                          Init => swrite = [p \in SPages |-> FALSE]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_sdata ==
 ASSUME Sizes, Location, Design
 PROVE
                         Init => sdata = [p \in SPages |-> B2 /\ (p - NP - 1) % SWidth = 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_sready ==
 ASSUME Sizes, Location, Design
 PROVE
                          Init => sready = sdata
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_sprefc ==
 ASSUME Sizes, Location, Design
 PROVE
                          Init => sprefc = [p \in SPages |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_smap ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => smap = [i \in PInst |-> [r \in Rq |-> 0]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_schoice ==
 ASSUME Sizes, Location, Design
 PROVE
                           Init => schoice = [i \in PInst |-> [r \in Rq |-> FALSE]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_rpgS ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => rpgS = {}
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_xsrcS ==
 ASSUME Sizes, Location, Design
 PROVE
                         Init => xsrcS = [x \in Xids |-> {}]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_xsrcP ==
 ASSUME Sizes, Location, Design
 PROVE
                         Init => xsrcP = [x \in Xids |-> {}]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_sentry ==
 ASSUME Sizes, Location, Design
 PROVE
                          Init => sentry = {}
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_squar ==
 ASSUME Sizes, Location, Design
 PROVE
                         Init => squar = {}
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_xprefixOK ==
 ASSUME Sizes, Location, Design
 PROVE
                             Init => xprefixOK = [x \in Xids |-> FALSE]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_dpreOK ==
 ASSUME Sizes, Location, Design
 PROVE
                          Init => dpreOK = [p \in Pages |-> FALSE]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_hitSeen ==
 ASSUME Sizes, Location, Design
 PROVE
                           Init => hitSeen = FALSE
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_dedupSeen ==
 ASSUME Sizes, Location, Design
 PROVE
                             Init => dedupSeen = FALSE
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_gen ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => gen = [r \in Rq |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_rt ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => rt = [r \in Rq |-> "idle"]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_rp ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => rp = [r \in Rq |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_rd ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => rd = [r \in Rq |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_hp ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => hp = [r \in Rq |-> [g \in Gens |-> 0]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_hd ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => hd = [r \in Rq |-> [g \in Gens |-> 0]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_alive ==
 ASSUME Sizes, Location, Design
 PROVE
                         Init => alive = [i \in Inst |-> TRUE]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_nfail ==
 ASSUME Sizes, Location, Design
 PROVE
                         Init => nfail = 0
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_torn ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => torn = [i \in Inst |-> {}]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_kpin ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => kpin = [i \in Inst |-> [s \in KSlots |-> FALSE]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_kfly ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => kfly = [i \in Inst |-> [s \in KSlots |-> FALSE]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_krs ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => krs = [i \in Inst |-> [s \in KSlots |-> {}]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_ph ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => ph = [i \in Inst |-> [r \in Rq |-> "none"]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_rg ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => rg = [i \in Inst |-> [r \in Rq |-> 0]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_rpg ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => rpg = [i \in Inst |-> [r \in Rq |-> 0]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_rpe ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => rpe = [i \in Inst |-> [r \in Rq |-> 0]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_rx ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => rx = [i \in Inst |-> [r \in Rq |-> 0]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_rhit ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => rhit = [i \in Inst |-> [r \in Rq |-> FALSE]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_pst ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => pst = [p \in Pages |-> "free"]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_pr ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => pr = [p \in Pages |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_pgn ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => pgn = [p \in Pages |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_plt ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => plt = [p \in Pages |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_ptl ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => ptl = [p \in Pages |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_pvis ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => pvis = [p \in Pages |-> FALSE]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_led ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => led = [p \in Pages |-> {}]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_sfly ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => sfly = [p \in Pages |-> {}]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_sled ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => sled = [p \in Pages |-> {}]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_prefc ==
 ASSUME Sizes, Location, Design
 PROVE
                         Init => prefc = [p \in Pages |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_pqp ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => pqp = [p \in Pages |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_xr ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => xr = [x \in Xids |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_xg ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => xg = [x \in Xids |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_xk ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => xk = [x \in Xids |-> "none"]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_xp ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => xp = [x \in Xids |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_xd ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => xd = [x \in Xids |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_xsrc ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => xsrc = [x \in Xids |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_xdst ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => xdst = [x \in Xids |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_xnt ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => xnt = [x \in Xids |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_hw ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => hw = [x \in Xids |-> "none"]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_hok ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => hok = [x \in Xids |-> FALSE]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_iv ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => iv = [x \in Xids |-> "none"]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_xst ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => xst = [x \in Xids |-> "none"]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_nx ==
 ASSUME Sizes, Location, Design
 PROVE
                      Init => nx = 1
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_xlt ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => xlt = [x \in Xids |-> 0]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_net ==
 ASSUME Sizes, Location, Design
 PROVE
                       Init => net = {}
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_drep ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => drep = [r \in Rq |-> [g \in Gens |-> 0]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_crep ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => crep = [r \in Rq |-> [g \in Gens |-> "none"]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_dsucc ==
 ASSUME Sizes, Location, Design
 PROVE
                         Init => dsucc = [r \in Rq |-> [g \in Gens |-> FALSE]]
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

\* R3-VISIBILITY

LEMMA R3Initial_gbad ==
 ASSUME Sizes, Location, Design
 PROVE
                        Init => gbad = FALSE
 BY Sizes, Location, Design DEF Init, BaseInit, SInit, Sizes, Location, Design

====
