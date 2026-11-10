---- MODULE PdFinalFieldTypes ----
EXTENDS PdPBase, PdShapeBase
\* V22-SCOPE: sequential-interface
HIDE DEF ExactTypeBridge, InitImpliesMessageShape, NonnegativeNatFact, P_IndInvDecomposition, P_PagePoolsDisjoint, P_PostIndInvDecomposition, PinnedLocAgreement, PinnedLocation, PinnedLocationFact, PinnedPrivateLocation, PinnedSharedLocation, PositiveNatFact, PrivateRange, ProductIsInteger, ProofInvParts, ProofTypeBridge, ProofTypeBridgeNext, ProofTypeWeaken, ProofTypeWeakenNext, ShapeBaseType, ShapeImpliesTags, ShapeInitiatorLocation, ShapeMessage, ShapeNetFrame, ShapeReadyLength, ShapeReqPeers, Shape_K12, Shape_K2, Shape_K8, Shape_T_alive, Shape_T_crep, Shape_T_drep, Shape_T_dsucc, Shape_T_gbad, Shape_T_gen, Shape_T_hd, Shape_T_hok, Shape_T_hp, Shape_T_hw, Shape_T_iv, Shape_T_kfly, Shape_T_kpin, Shape_T_krs, Shape_T_led, Shape_T_nfail, Shape_T_nx, Shape_T_pgn, Shape_T_ph, Shape_T_plt, Shape_T_pqp, Shape_T_pr, Shape_T_prefc, Shape_T_pst, Shape_T_ptl, Shape_T_pvis, Shape_T_rd, Shape_T_rg, Shape_T_rhit, Shape_T_rp, Shape_T_rpe, Shape_T_rpg, Shape_T_rt, Shape_T_rx, Shape_T_sfly, Shape_T_sled, Shape_T_torn, Shape_T_xd, Shape_T_xdst, Shape_T_xg, Shape_T_xk, Shape_T_xlt, Shape_T_xnt, Shape_T_xp, Shape_T_xr, Shape_T_xsrc, Shape_T_xst, SharedRange, ShiftedSharedRange, SizeArithmetic, TypeBridgeForward, TypeBridgeUnderShape


\* Fine projections are proved once here; clients never unfold CoreTypeOK.
LEMMA V22_Ind_SType == IndInv => STypeOK
 BY ONLY SMTT(5) DEF IndInv, TypeOK

HIDE DEF V22_Ind_SType

LEMMA V22_Ind_T_gen == IndInv => gen \in [Rq -> 0..MG]
 BY ONLY Shape_T_gen, SMTT(5) DEF Shape_T_gen

HIDE DEF V22_Ind_T_gen

LEMMA V22_T_gen == PinInv => gen \in [Rq -> 0..MG]
 BY ONLY ProofInvParts, V22_Ind_T_gen, SMTT(5) DEF ProofInvParts, V22_Ind_T_gen

HIDE DEF V22_T_gen

LEMMA V22_Ind_T_rt == IndInv => rt \in [Rq -> {"idle", "wait", "ok", "err"}]
 BY ONLY Shape_T_rt, SMTT(5) DEF Shape_T_rt

HIDE DEF V22_Ind_T_rt

LEMMA V22_T_rt == PinInv => rt \in [Rq -> {"idle", "wait", "ok", "err"}]
 BY ONLY ProofInvParts, V22_Ind_T_rt, SMTT(5) DEF ProofInvParts, V22_Ind_T_rt

HIDE DEF V22_T_rt

LEMMA V22_Ind_T_rp == IndInv => rp \in [Rq -> {0} \cup Inst]
 BY ONLY Shape_T_rp, SMTT(5) DEF Shape_T_rp

HIDE DEF V22_Ind_T_rp

LEMMA V22_T_rp == PinInv => rp \in [Rq -> {0} \cup Inst]
 BY ONLY ProofInvParts, V22_Ind_T_rp, SMTT(5) DEF ProofInvParts, V22_Ind_T_rp

HIDE DEF V22_T_rp

LEMMA V22_Ind_T_rd == IndInv => rd \in [Rq -> {0} \cup Inst]
 BY ONLY Shape_T_rd, SMTT(5) DEF Shape_T_rd

HIDE DEF V22_Ind_T_rd

LEMMA V22_T_rd == PinInv => rd \in [Rq -> {0} \cup Inst]
 BY ONLY ProofInvParts, V22_Ind_T_rd, SMTT(5) DEF ProofInvParts, V22_Ind_T_rd

HIDE DEF V22_T_rd

LEMMA V22_Ind_T_hp == IndInv => hp \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY Shape_T_hp, SMTT(5) DEF Shape_T_hp

HIDE DEF V22_Ind_T_hp

LEMMA V22_T_hp == PinInv => hp \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY ProofInvParts, V22_Ind_T_hp, SMTT(5) DEF ProofInvParts, V22_Ind_T_hp

HIDE DEF V22_T_hp

LEMMA V22_Ind_T_hd == IndInv => hd \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY Shape_T_hd, SMTT(5) DEF Shape_T_hd

HIDE DEF V22_Ind_T_hd

LEMMA V22_T_hd == PinInv => hd \in [Rq -> [Gens -> {0} \cup Inst]]
 BY ONLY ProofInvParts, V22_Ind_T_hd, SMTT(5) DEF ProofInvParts, V22_Ind_T_hd

HIDE DEF V22_T_hd

LEMMA V22_Ind_T_alive == IndInv => alive \in [Inst -> BOOLEAN]
 BY ONLY Shape_T_alive, SMTT(5) DEF Shape_T_alive

HIDE DEF V22_Ind_T_alive

LEMMA V22_T_alive == PinInv => alive \in [Inst -> BOOLEAN]
 BY ONLY ProofInvParts, V22_Ind_T_alive, SMTT(5) DEF ProofInvParts, V22_Ind_T_alive

HIDE DEF V22_T_alive

LEMMA V22_Ind_T_nfail == IndInv => nfail \in 0..MaxFail
 BY ONLY Shape_T_nfail, SMTT(5) DEF Shape_T_nfail

HIDE DEF V22_Ind_T_nfail

LEMMA V22_T_nfail == PinInv => nfail \in 0..MaxFail
 BY ONLY ProofInvParts, V22_Ind_T_nfail, SMTT(5) DEF ProofInvParts, V22_Ind_T_nfail

HIDE DEF V22_T_nfail

LEMMA V22_Ind_T_torn == IndInv => torn \in [Inst -> SUBSET Inst]
 BY ONLY Shape_T_torn, SMTT(5) DEF Shape_T_torn

HIDE DEF V22_Ind_T_torn

LEMMA V22_T_torn == PinInv => torn \in [Inst -> SUBSET Inst]
 BY ONLY ProofInvParts, V22_Ind_T_torn, SMTT(5) DEF ProofInvParts, V22_Ind_T_torn

HIDE DEF V22_T_torn

LEMMA V22_Ind_T_kpin == IndInv => kpin \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY Shape_T_kpin, SMTT(5) DEF Shape_T_kpin

HIDE DEF V22_Ind_T_kpin

LEMMA V22_T_kpin == PinInv => kpin \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY ProofInvParts, V22_Ind_T_kpin, SMTT(5) DEF ProofInvParts, V22_Ind_T_kpin

HIDE DEF V22_T_kpin

LEMMA V22_Ind_T_kfly == IndInv => kfly \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY Shape_T_kfly, SMTT(5) DEF Shape_T_kfly

HIDE DEF V22_Ind_T_kfly

LEMMA V22_T_kfly == PinInv => kfly \in [Inst -> [KSlots -> BOOLEAN]]
 BY ONLY ProofInvParts, V22_Ind_T_kfly, SMTT(5) DEF ProofInvParts, V22_Ind_T_kfly

HIDE DEF V22_T_kfly

LEMMA V22_Ind_T_krs == IndInv => krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]
 BY ONLY Shape_T_krs, SMTT(5) DEF Shape_T_krs

HIDE DEF V22_Ind_T_krs

LEMMA V22_T_krs == PinInv => krs \in [Inst -> [KSlots -> SUBSET (Rq \X Gens \X KPages \X {0, 1, 2, 3, 4})]]
 BY ONLY ProofInvParts, V22_Ind_T_krs, SMTT(5) DEF ProofInvParts, V22_Ind_T_krs

HIDE DEF V22_T_krs

LEMMA V22_Ind_T_ph == IndInv => ph \in [Inst -> [Rq -> PhSet]]
 BY ONLY Shape_T_ph, SMTT(5) DEF Shape_T_ph

HIDE DEF V22_Ind_T_ph

LEMMA V22_T_ph == PinInv => ph \in [Inst -> [Rq -> PhSet]]
 BY ONLY ProofInvParts, V22_Ind_T_ph, SMTT(5) DEF ProofInvParts, V22_Ind_T_ph

HIDE DEF V22_T_ph

LEMMA V22_Ind_T_rg == IndInv => rg \in [Inst -> [Rq -> 0..MG]]
 BY ONLY Shape_T_rg, SMTT(5) DEF Shape_T_rg

HIDE DEF V22_Ind_T_rg

LEMMA V22_T_rg == PinInv => rg \in [Inst -> [Rq -> 0..MG]]
 BY ONLY ProofInvParts, V22_Ind_T_rg, SMTT(5) DEF ProofInvParts, V22_Ind_T_rg

HIDE DEF V22_T_rg

LEMMA V22_Ind_T_rpg == IndInv => rpg \in [Inst -> [Rq -> 0..NP]]
 BY ONLY Shape_T_rpg, SMTT(5) DEF Shape_T_rpg

HIDE DEF V22_Ind_T_rpg

LEMMA V22_T_rpg == PinInv => rpg \in [Inst -> [Rq -> 0..NP]]
 BY ONLY ProofInvParts, V22_Ind_T_rpg, SMTT(5) DEF ProofInvParts, V22_Ind_T_rpg

HIDE DEF V22_T_rpg

LEMMA V22_Ind_T_rpe == IndInv => rpe \in [Inst -> [Rq -> {0} \cup Inst]]
 BY ONLY Shape_T_rpe, SMTT(5) DEF Shape_T_rpe

HIDE DEF V22_Ind_T_rpe

LEMMA V22_T_rpe == PinInv => rpe \in [Inst -> [Rq -> {0} \cup Inst]]
 BY ONLY ProofInvParts, V22_Ind_T_rpe, SMTT(5) DEF ProofInvParts, V22_Ind_T_rpe

HIDE DEF V22_T_rpe

LEMMA V22_Ind_T_rx == IndInv => rx \in [Inst -> [Rq -> 0..MX]]
 BY ONLY Shape_T_rx, SMTT(5) DEF Shape_T_rx

HIDE DEF V22_Ind_T_rx

LEMMA V22_T_rx == PinInv => rx \in [Inst -> [Rq -> 0..MX]]
 BY ONLY ProofInvParts, V22_Ind_T_rx, SMTT(5) DEF ProofInvParts, V22_Ind_T_rx

HIDE DEF V22_T_rx

LEMMA V22_Ind_T_rhit == IndInv => rhit \in [Inst -> [Rq -> BOOLEAN]]
 BY ONLY Shape_T_rhit, SMTT(5) DEF Shape_T_rhit

HIDE DEF V22_Ind_T_rhit

LEMMA V22_T_rhit == PinInv => rhit \in [Inst -> [Rq -> BOOLEAN]]
 BY ONLY ProofInvParts, V22_Ind_T_rhit, SMTT(5) DEF ProofInvParts, V22_Ind_T_rhit

HIDE DEF V22_T_rhit

LEMMA V22_Ind_T_pst == IndInv => pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 BY ONLY Shape_T_pst, SMTT(5) DEF Shape_T_pst

HIDE DEF V22_Ind_T_pst

LEMMA V22_T_pst == PinInv => pst \in [Pages -> {"free", "priv", "shared", "drain", "quar"}]
 BY ONLY ProofInvParts, V22_Ind_T_pst, SMTT(5) DEF ProofInvParts, V22_Ind_T_pst

HIDE DEF V22_T_pst

LEMMA V22_Ind_T_pr == IndInv => pr \in [Pages -> 0..NR]
 BY ONLY Shape_T_pr, SMTT(5) DEF Shape_T_pr

HIDE DEF V22_Ind_T_pr

LEMMA V22_T_pr == PinInv => pr \in [Pages -> 0..NR]
 BY ONLY ProofInvParts, V22_Ind_T_pr, SMTT(5) DEF ProofInvParts, V22_Ind_T_pr

HIDE DEF V22_T_pr

LEMMA V22_Ind_T_pgn == IndInv => pgn \in [Pages -> 0..MG]
 BY ONLY Shape_T_pgn, SMTT(5) DEF Shape_T_pgn

HIDE DEF V22_Ind_T_pgn

LEMMA V22_T_pgn == PinInv => pgn \in [Pages -> 0..MG]
 BY ONLY ProofInvParts, V22_Ind_T_pgn, SMTT(5) DEF ProofInvParts, V22_Ind_T_pgn

HIDE DEF V22_T_pgn

LEMMA V22_Ind_T_plt == IndInv => plt \in [Pages -> 0..PS]
 BY ONLY Shape_T_plt, SMTT(5) DEF Shape_T_plt

HIDE DEF V22_Ind_T_plt

LEMMA V22_T_plt == PinInv => plt \in [Pages -> 0..PS]
 BY ONLY ProofInvParts, V22_Ind_T_plt, SMTT(5) DEF ProofInvParts, V22_Ind_T_plt

HIDE DEF V22_T_plt

LEMMA V22_Ind_T_ptl == IndInv => ptl \in [Pages -> -1..PS]
 BY ONLY Shape_T_ptl, SMTT(5) DEF Shape_T_ptl

HIDE DEF V22_Ind_T_ptl

LEMMA V22_T_ptl == PinInv => ptl \in [Pages -> -1..PS]
 BY ONLY ProofInvParts, V22_Ind_T_ptl, SMTT(5) DEF ProofInvParts, V22_Ind_T_ptl

HIDE DEF V22_T_ptl

LEMMA V22_Ind_T_pvis == IndInv => pvis \in [Pages -> BOOLEAN]
 BY ONLY Shape_T_pvis, SMTT(5) DEF Shape_T_pvis

HIDE DEF V22_Ind_T_pvis

LEMMA V22_T_pvis == PinInv => pvis \in [Pages -> BOOLEAN]
 BY ONLY ProofInvParts, V22_Ind_T_pvis, SMTT(5) DEF ProofInvParts, V22_Ind_T_pvis

HIDE DEF V22_T_pvis

LEMMA V22_Ind_T_led == IndInv => led \in [Pages -> SUBSET Xids]
 BY ONLY Shape_T_led, SMTT(5) DEF Shape_T_led

HIDE DEF V22_Ind_T_led

LEMMA V22_T_led == PinInv => led \in [Pages -> SUBSET Xids]
 BY ONLY ProofInvParts, V22_Ind_T_led, SMTT(5) DEF ProofInvParts, V22_Ind_T_led

HIDE DEF V22_T_led

LEMMA V22_Ind_T_sfly == IndInv => sfly \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY Shape_T_sfly, SMTT(5) DEF Shape_T_sfly

HIDE DEF V22_Ind_T_sfly

LEMMA V22_T_sfly == PinInv => sfly \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY ProofInvParts, V22_Ind_T_sfly, SMTT(5) DEF ProofInvParts, V22_Ind_T_sfly

HIDE DEF V22_T_sfly

LEMMA V22_Ind_T_sled == IndInv => sled \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY Shape_T_sled, SMTT(5) DEF Shape_T_sled

HIDE DEF V22_Ind_T_sled

LEMMA V22_T_sled == PinInv => sled \in [Pages -> SUBSET (Rq \X Gens)]
 BY ONLY ProofInvParts, V22_Ind_T_sled, SMTT(5) DEF ProofInvParts, V22_Ind_T_sled

HIDE DEF V22_T_sled

LEMMA V22_Ind_T_prefc == IndInv => prefc \in [Pages -> 0..NR]
 BY ONLY Shape_T_prefc, SMTT(5) DEF Shape_T_prefc

HIDE DEF V22_Ind_T_prefc

LEMMA V22_T_prefc == PinInv => prefc \in [Pages -> 0..NR]
 BY ONLY ProofInvParts, V22_Ind_T_prefc, SMTT(5) DEF ProofInvParts, V22_Ind_T_prefc

HIDE DEF V22_T_prefc

LEMMA V22_Ind_T_pqp == IndInv => pqp \in [Pages -> {0} \cup Inst]
 BY ONLY Shape_T_pqp, SMTT(5) DEF Shape_T_pqp

HIDE DEF V22_Ind_T_pqp

LEMMA V22_T_pqp == PinInv => pqp \in [Pages -> {0} \cup Inst]
 BY ONLY ProofInvParts, V22_Ind_T_pqp, SMTT(5) DEF ProofInvParts, V22_Ind_T_pqp

HIDE DEF V22_T_pqp

LEMMA V22_Ind_T_xr == IndInv => xr \in [Xids -> 0..NR]
 BY ONLY Shape_T_xr, SMTT(5) DEF Shape_T_xr

HIDE DEF V22_Ind_T_xr

LEMMA V22_T_xr == PinInv => xr \in [Xids -> 0..NR]
 BY ONLY ProofInvParts, V22_Ind_T_xr, SMTT(5) DEF ProofInvParts, V22_Ind_T_xr

HIDE DEF V22_T_xr

LEMMA V22_Ind_T_xg == IndInv => xg \in [Xids -> 0..MG]
 BY ONLY Shape_T_xg, SMTT(5) DEF Shape_T_xg

HIDE DEF V22_Ind_T_xg

LEMMA V22_T_xg == PinInv => xg \in [Xids -> 0..MG]
 BY ONLY ProofInvParts, V22_Ind_T_xg, SMTT(5) DEF ProofInvParts, V22_Ind_T_xg

HIDE DEF V22_T_xg

LEMMA V22_Ind_T_xk == IndInv => xk \in [Xids -> {"none", "wr", "rd"}]
 BY ONLY Shape_T_xk, SMTT(5) DEF Shape_T_xk

HIDE DEF V22_Ind_T_xk

LEMMA V22_T_xk == PinInv => xk \in [Xids -> {"none", "wr", "rd"}]
 BY ONLY ProofInvParts, V22_Ind_T_xk, SMTT(5) DEF ProofInvParts, V22_Ind_T_xk

HIDE DEF V22_T_xk

LEMMA V22_Ind_T_xp == IndInv => xp \in [Xids -> {0} \cup Inst]
 BY ONLY Shape_T_xp, SMTT(5) DEF Shape_T_xp

HIDE DEF V22_Ind_T_xp

LEMMA V22_T_xp == PinInv => xp \in [Xids -> {0} \cup Inst]
 BY ONLY ProofInvParts, V22_Ind_T_xp, SMTT(5) DEF ProofInvParts, V22_Ind_T_xp

HIDE DEF V22_T_xp

LEMMA V22_Ind_T_xd == IndInv => xd \in [Xids -> {0} \cup Inst]
 BY ONLY Shape_T_xd, SMTT(5) DEF Shape_T_xd

HIDE DEF V22_Ind_T_xd

LEMMA V22_T_xd == PinInv => xd \in [Xids -> {0} \cup Inst]
 BY ONLY ProofInvParts, V22_Ind_T_xd, SMTT(5) DEF ProofInvParts, V22_Ind_T_xd

HIDE DEF V22_T_xd

LEMMA V22_Ind_T_xsrc == IndInv => xsrc \in [Xids -> 0..NP]
 BY ONLY Shape_T_xsrc, SMTT(5) DEF Shape_T_xsrc

HIDE DEF V22_Ind_T_xsrc

LEMMA V22_T_xsrc == PinInv => xsrc \in [Xids -> 0..NP]
 BY ONLY ProofInvParts, V22_Ind_T_xsrc, SMTT(5) DEF ProofInvParts, V22_Ind_T_xsrc

HIDE DEF V22_T_xsrc

LEMMA V22_Ind_T_xdst == IndInv => xdst \in [Xids -> 0..NP]
 BY ONLY Shape_T_xdst, SMTT(5) DEF Shape_T_xdst

HIDE DEF V22_Ind_T_xdst

LEMMA V22_T_xdst == PinInv => xdst \in [Xids -> 0..NP]
 BY ONLY ProofInvParts, V22_Ind_T_xdst, SMTT(5) DEF ProofInvParts, V22_Ind_T_xdst

HIDE DEF V22_T_xdst

LEMMA V22_Ind_T_xnt == IndInv => xnt \in [Xids -> 0..PS]
 BY ONLY Shape_T_xnt, SMTT(5) DEF Shape_T_xnt

HIDE DEF V22_Ind_T_xnt

LEMMA V22_T_xnt == PinInv => xnt \in [Xids -> 0..PS]
 BY ONLY ProofInvParts, V22_Ind_T_xnt, SMTT(5) DEF ProofInvParts, V22_Ind_T_xnt

HIDE DEF V22_T_xnt

LEMMA V22_Ind_T_hw == IndInv => hw \in [Xids -> {"none", "fly", "issued", "stop"}]
 BY ONLY Shape_T_hw, SMTT(5) DEF Shape_T_hw

HIDE DEF V22_Ind_T_hw

LEMMA V22_T_hw == PinInv => hw \in [Xids -> {"none", "fly", "issued", "stop"}]
 BY ONLY ProofInvParts, V22_Ind_T_hw, SMTT(5) DEF ProofInvParts, V22_Ind_T_hw

HIDE DEF V22_T_hw

LEMMA V22_Ind_T_hok == IndInv => hok \in [Xids -> BOOLEAN]
 BY ONLY Shape_T_hok, SMTT(5) DEF Shape_T_hok

HIDE DEF V22_Ind_T_hok

LEMMA V22_T_hok == PinInv => hok \in [Xids -> BOOLEAN]
 BY ONLY ProofInvParts, V22_Ind_T_hok, SMTT(5) DEF ProofInvParts, V22_Ind_T_hok

HIDE DEF V22_T_hok

LEMMA V22_Ind_T_iv == IndInv => iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
 BY ONLY Shape_T_iv, SMTT(5) DEF Shape_T_iv

HIDE DEF V22_Ind_T_iv

LEMMA V22_T_iv == PinInv => iv \in [Xids -> {"none", "reg", "posted", "cqe", "failret", "nopost"}]
 BY ONLY ProofInvParts, V22_Ind_T_iv, SMTT(5) DEF ProofInvParts, V22_Ind_T_iv

HIDE DEF V22_T_iv

LEMMA V22_Ind_T_xst == IndInv => xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]
 BY ONLY Shape_T_xst, SMTT(5) DEF Shape_T_xst

HIDE DEF V22_Ind_T_xst

LEMMA V22_T_xst == PinInv => xst \in [Xids -> {"none", "posted", "landed", "failed", "revoked"}]
 BY ONLY ProofInvParts, V22_Ind_T_xst, SMTT(5) DEF ProofInvParts, V22_Ind_T_xst

HIDE DEF V22_T_xst

LEMMA V22_Ind_T_xlt == IndInv => xlt \in [Xids -> 0..PS]
 BY ONLY Shape_T_xlt, SMTT(5) DEF Shape_T_xlt

HIDE DEF V22_Ind_T_xlt

LEMMA V22_T_xlt == PinInv => xlt \in [Xids -> 0..PS]
 BY ONLY ProofInvParts, V22_Ind_T_xlt, SMTT(5) DEF ProofInvParts, V22_Ind_T_xlt

HIDE DEF V22_T_xlt

LEMMA V22_Ind_T_nx == IndInv => nx \in 1..(MX + 1)
 BY ONLY Shape_T_nx, SMTT(5) DEF Shape_T_nx

HIDE DEF V22_Ind_T_nx

LEMMA V22_T_nx == PinInv => nx \in 1..(MX + 1)
 BY ONLY ProofInvParts, V22_Ind_T_nx, SMTT(5) DEF ProofInvParts, V22_Ind_T_nx

HIDE DEF V22_T_nx

LEMMA V22_Ind_T_drep == IndInv => drep \in [Rq -> [Gens -> 0..2]]
 BY ONLY Shape_T_drep, SMTT(5) DEF Shape_T_drep

HIDE DEF V22_Ind_T_drep

LEMMA V22_T_drep == PinInv => drep \in [Rq -> [Gens -> 0..2]]
 BY ONLY ProofInvParts, V22_Ind_T_drep, SMTT(5) DEF ProofInvParts, V22_Ind_T_drep

HIDE DEF V22_T_drep

LEMMA V22_Ind_T_crep == IndInv => crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]
 BY ONLY Shape_T_crep, SMTT(5) DEF Shape_T_crep

HIDE DEF V22_Ind_T_crep

LEMMA V22_T_crep == PinInv => crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]
 BY ONLY ProofInvParts, V22_Ind_T_crep, SMTT(5) DEF ProofInvParts, V22_Ind_T_crep

HIDE DEF V22_T_crep

LEMMA V22_Ind_T_dsucc == IndInv => dsucc \in [Rq -> [Gens -> BOOLEAN]]
 BY ONLY Shape_T_dsucc, SMTT(5) DEF Shape_T_dsucc

HIDE DEF V22_Ind_T_dsucc

LEMMA V22_T_dsucc == PinInv => dsucc \in [Rq -> [Gens -> BOOLEAN]]
 BY ONLY ProofInvParts, V22_Ind_T_dsucc, SMTT(5) DEF ProofInvParts, V22_Ind_T_dsucc

HIDE DEF V22_T_dsucc

LEMMA V22_Ind_T_gbad == IndInv => gbad \in BOOLEAN
 BY ONLY Shape_T_gbad, SMTT(5) DEF Shape_T_gbad

HIDE DEF V22_Ind_T_gbad

LEMMA V22_T_gbad == PinInv => gbad \in BOOLEAN
 BY ONLY ProofInvParts, V22_Ind_T_gbad, SMTT(5) DEF ProofInvParts, V22_Ind_T_gbad

HIDE DEF V22_T_gbad

LEMMA V22_Ind_T_spst == IndInv => spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_spst

LEMMA V22_T_spst == PinInv => spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
 BY ONLY ProofInvParts, V22_Ind_T_spst, SMTT(5) DEF ProofInvParts, V22_Ind_T_spst

HIDE DEF V22_T_spst

LEMMA V22_Ind_T_sown == IndInv => sown \in [SPages -> 0..NR]
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_sown

LEMMA V22_T_sown == PinInv => sown \in [SPages -> 0..NR]
 BY ONLY ProofInvParts, V22_Ind_T_sown, SMTT(5) DEF ProofInvParts, V22_Ind_T_sown

HIDE DEF V22_T_sown

LEMMA V22_Ind_T_sgen == IndInv => sgen \in [SPages -> 0..MG]
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_sgen

LEMMA V22_T_sgen == PinInv => sgen \in [SPages -> 0..MG]
 BY ONLY ProofInvParts, V22_Ind_T_sgen, SMTT(5) DEF ProofInvParts, V22_Ind_T_sgen

HIDE DEF V22_T_sgen

LEMMA V22_Ind_T_skey == IndInv => skey \in [SPages -> 0..2]
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_skey

LEMMA V22_T_skey == PinInv => skey \in [SPages -> 0..2]
 BY ONLY ProofInvParts, V22_Ind_T_skey, SMTT(5) DEF ProofInvParts, V22_Ind_T_skey

HIDE DEF V22_T_skey

LEMMA V22_Ind_T_swrite == IndInv => swrite \in [SPages -> BOOLEAN]
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_swrite

LEMMA V22_T_swrite == PinInv => swrite \in [SPages -> BOOLEAN]
 BY ONLY ProofInvParts, V22_Ind_T_swrite, SMTT(5) DEF ProofInvParts, V22_Ind_T_swrite

HIDE DEF V22_T_swrite

LEMMA V22_Ind_T_sdata == IndInv => sdata \in [SPages -> BOOLEAN]
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_sdata

LEMMA V22_T_sdata == PinInv => sdata \in [SPages -> BOOLEAN]
 BY ONLY ProofInvParts, V22_Ind_T_sdata, SMTT(5) DEF ProofInvParts, V22_Ind_T_sdata

HIDE DEF V22_T_sdata

LEMMA V22_Ind_T_sready == IndInv => sready \in [SPages -> BOOLEAN]
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_sready

LEMMA V22_T_sready == PinInv => sready \in [SPages -> BOOLEAN]
 BY ONLY ProofInvParts, V22_Ind_T_sready, SMTT(5) DEF ProofInvParts, V22_Ind_T_sready

HIDE DEF V22_T_sready

LEMMA V22_Ind_T_sprefc == IndInv => sprefc \in [SPages -> 0..(NPI*NR*MG+MX)]
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_sprefc

LEMMA V22_T_sprefc == PinInv => sprefc \in [SPages -> 0..(NPI*NR*MG+MX)]
 BY ONLY ProofInvParts, V22_Ind_T_sprefc, SMTT(5) DEF ProofInvParts, V22_Ind_T_sprefc

HIDE DEF V22_T_sprefc

LEMMA V22_Ind_T_smap == IndInv => smap \in [PInst -> [Rq -> {0} \cup SPages]]
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_smap

LEMMA V22_T_smap == PinInv => smap \in [PInst -> [Rq -> {0} \cup SPages]]
 BY ONLY ProofInvParts, V22_Ind_T_smap, SMTT(5) DEF ProofInvParts, V22_Ind_T_smap

HIDE DEF V22_T_smap

LEMMA V22_Ind_T_schoice == IndInv => schoice \in [PInst -> [Rq -> BOOLEAN]]
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_schoice

LEMMA V22_T_schoice == PinInv => schoice \in [PInst -> [Rq -> BOOLEAN]]
 BY ONLY ProofInvParts, V22_Ind_T_schoice, SMTT(5) DEF ProofInvParts, V22_Ind_T_schoice

HIDE DEF V22_T_schoice

LEMMA V22_Ind_T_rpgS == IndInv => rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_rpgS

LEMMA V22_T_rpgS == PinInv => rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)
 BY ONLY ProofInvParts, V22_Ind_T_rpgS, SMTT(5) DEF ProofInvParts, V22_Ind_T_rpgS

HIDE DEF V22_T_rpgS

LEMMA V22_Ind_T_xsrcS == IndInv => xsrcS \in [Xids -> SUBSET SPages]
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_xsrcS

LEMMA V22_T_xsrcS == PinInv => xsrcS \in [Xids -> SUBSET SPages]
 BY ONLY ProofInvParts, V22_Ind_T_xsrcS, SMTT(5) DEF ProofInvParts, V22_Ind_T_xsrcS

HIDE DEF V22_T_xsrcS

LEMMA V22_Ind_T_xsrcP == IndInv => xsrcP \in [Xids -> SUBSET SPages]
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_xsrcP

LEMMA V22_T_xsrcP == PinInv => xsrcP \in [Xids -> SUBSET SPages]
 BY ONLY ProofInvParts, V22_Ind_T_xsrcP, SMTT(5) DEF ProofInvParts, V22_Ind_T_xsrcP

HIDE DEF V22_T_xsrcP

LEMMA V22_Ind_T_sentry == IndInv => sentry \in SUBSET Xids
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_sentry

LEMMA V22_T_sentry == PinInv => sentry \in SUBSET Xids
 BY ONLY ProofInvParts, V22_Ind_T_sentry, SMTT(5) DEF ProofInvParts, V22_Ind_T_sentry

HIDE DEF V22_T_sentry

LEMMA V22_Ind_T_squar == IndInv => squar \in SUBSET (Xids \X SPages)
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_squar

LEMMA V22_T_squar == PinInv => squar \in SUBSET (Xids \X SPages)
 BY ONLY ProofInvParts, V22_Ind_T_squar, SMTT(5) DEF ProofInvParts, V22_Ind_T_squar

HIDE DEF V22_T_squar

LEMMA V22_Ind_T_xprefixOK == IndInv => xprefixOK \in [Xids -> BOOLEAN]
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_xprefixOK

LEMMA V22_T_xprefixOK == PinInv => xprefixOK \in [Xids -> BOOLEAN]
 BY ONLY ProofInvParts, V22_Ind_T_xprefixOK, SMTT(5) DEF ProofInvParts, V22_Ind_T_xprefixOK

HIDE DEF V22_T_xprefixOK

LEMMA V22_Ind_T_dpreOK == IndInv => dpreOK \in [Pages -> BOOLEAN]
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_dpreOK

LEMMA V22_T_dpreOK == PinInv => dpreOK \in [Pages -> BOOLEAN]
 BY ONLY ProofInvParts, V22_Ind_T_dpreOK, SMTT(5) DEF ProofInvParts, V22_Ind_T_dpreOK

HIDE DEF V22_T_dpreOK

LEMMA V22_Ind_T_hitSeen == IndInv => hitSeen \in BOOLEAN
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_hitSeen

LEMMA V22_T_hitSeen == PinInv => hitSeen \in BOOLEAN
 BY ONLY ProofInvParts, V22_Ind_T_hitSeen, SMTT(5) DEF ProofInvParts, V22_Ind_T_hitSeen

HIDE DEF V22_T_hitSeen

LEMMA V22_Ind_T_dedupSeen == IndInv => dedupSeen \in BOOLEAN
 BY ONLY V22_Ind_SType, SMTT(5) DEF STypeOK, V22_Ind_SType

HIDE DEF V22_Ind_T_dedupSeen

LEMMA V22_T_dedupSeen == PinInv => dedupSeen \in BOOLEAN
 BY ONLY ProofInvParts, V22_Ind_T_dedupSeen, SMTT(5) DEF ProofInvParts, V22_Ind_T_dedupSeen

HIDE DEF V22_T_dedupSeen

LEMMA V22_T_net == PinInv => MessageShape
 BY ONLY ProofInvParts, SMTT(5) DEF ProofInvParts

HIDE DEF V22_T_net

LEMMA V22_Ind_SharedImmutable == IndInv => SharedImmutable
 BY ONLY SMTT(5) DEF IndInv, Safety

HIDE DEF V22_Ind_SharedImmutable

LEMMA V22_T_SharedImmutable == PinInv => SharedImmutable
 BY ONLY ProofInvParts, V22_Ind_SharedImmutable, SMTT(5) DEF ProofInvParts, V22_Ind_SharedImmutable

HIDE DEF V22_T_SharedImmutable

LEMMA V22_SharedDestinationExcluded ==
 ASSUME Sizes, NEW p \in SPages, NEW x \in Xids,
        xdst \in [Xids -> 0..NP]
 PROVE xdst[x] # p
 BY ONLY Sizes, p \in SPages, x \in Xids,
         xdst \in [Xids -> 0..NP], SMTT(5) DEF Sizes, SPages

HIDE DEF V22_SharedDestinationExcluded

LEMMA V22_SharedNoWrite ==
 ASSUME Sizes, NEW p \in SPages, xdst \in [Xids -> 0..NP]
 PROVE NoWriteInto(p)
 BY ONLY Sizes, p \in SPages, xdst \in [Xids -> 0..NP],
         V22_SharedDestinationExcluded, SMTT(5) DEF NoWriteInto, V22_SharedDestinationExcluded

HIDE DEF V22_SharedNoWrite

LEMMA V22_SharedNoWriteNext ==
 ASSUME Sizes, NEW p \in SPages, xdst' \in [Xids -> 0..NP]
 PROVE NoWriteInto(p)'
 BY ONLY Sizes, p \in SPages, xdst' \in [Xids -> 0..NP], SMTT(5)
 DEF NoWriteInto, Sizes, SPages
HIDE DEF V22_SharedNoWriteNext

====
