---------------------------- MODULE PdCore ----------------------------
(***************************************************************************)
(* PD ledger: design model of our own PD-disaggregated KV protocol.        *)
(* Follows the page lifecycle design (page states, the two transitions that need *)
(* stop evidence, the in-flight ledger with local CUDA streams, xfer records and monotonic ids, generations, *)
(* quarantine and the step-1 fallback, push/pull table and modes) and the environment-contract assumptions (widest reading). *)
(* Starting point: the single-node ledger ArchivedRustLedger (ledger/inflight idea), extended here to *)
(* "location x mover x generation"; the single-node ledger itself (shared prefix chain, table rows) is not modeled again. *)
(*                                                                         *)
(* Shape:                                                                  *)
(*  - Instances 1..NPI are P, NPI+1..NPI+NDI are D; one instance = one location, PPL pages. *)
(*  - Request slot r (= room); each reuse bumps the generation by 1 (gen); the router (untrusted policy) picks any *)
(*    one P and one D. Each request uses 1 page (NTok(r, g) tokens, page_size = PS). *)
(*  - One xfer per page (ids monotonic, never reused); the "exposer" creates the record: in push D exposes the dst page *)
(*    and gives x; in pull P exposes the src page and gives x. Initiator: push = P (WRITE), *)
(*    pull = D (READ).                                                     *)
(*  - Ledger led[p]: the xfers the core thinks may still touch p (added at expose or initiate, removed only on *)
(*    "stopped" evidence); sled[p]: local-stream ops not yet confirmed complete (P's prefill write, *)
(*    D's decode read/write). Environment ground truth: hw[x] (fly / issued / stop), sfly[p]. *)
(*  - Control messages net: a grow-only message set = arbitrary delay, duplication, reordering, loss (never delivered). *)
(*                                                                         *)
(* ASSUMES (not checked by this module, stated as assumptions):            *)
(*  SubmitAfterVisibility H-visible: a reader makes new CUDA submissions from the CPU only after it has landed evidence (decode ops *)
(*     launch only after the evidence); visibility follows from this; PCIe-level reordering is not modeled. *)
(*  StreamCompletion: local-stream ops eventually complete on the GPU (StreamLand is weakly fair); event query true => op has *)
(*     completed (CUDA event semantics).                                   *)
(*  ReadCompletion: in pull mode, the initiator D's READ completion event => data is in D's page and the P side is no longer read *)
(*     (the H-complete reading for READ).                                  *)
(*  The push-mode evidence chain (push is primary, matching SGLang + Mooncake) is split into three reading switches: *)
(*   HComplete: "narrow" = P's WRITE completion event => data is placed at D (hw = stop); *)
(*              "widest" = only says the source is fully read and the peer NIC acknowledged (hw = issued suffices). *)
(*   HOrder: "strict" = when a notice P sent after the completion event is delivered, the data is placed; *)
(*           "widest" = no such guarantee (discussed only for notices "sent after the sender saw completion"). *)
(*   HVisible: "narrow" = kernels launched by the CPU after placement see the data; "widest" = visible only *)
(*            if cudaDeviceFlushGPUDirectRDMAWrites was done after placement. *)
(*   Design switches: PushEv = "notice" (SGLang/Mooncake style: D takes P's notice as landed) *)
(*            or "inband" (in-band completion local to D, InbandPlacementEvidence); Flush = after D decides landed, before launching *)
(*            decode, do a GPUDirect flush (covers only writes already placed). *)
(*  InbandPlacementEvidence PushEv = "inband": D can see locally an in-band completion meaning "data is placed" (on the same QP, *)
(*     WRITE_WITH_IMM or similar, relaxed ordering off, evidence per path); this is the assumption the visibility litmus must measure. *)
(*  UnmodeledLayoutAndTransport: H-layout, H-lib, H-path are not modeled. TP = 1. *)
(*  PeerAccessRevoked Unquar = TRUE (optional, step two): after Teardown(j, i), all ops between j and the old instance i *)
(*     stop and never land, and every later op from i is rejected (QP in ERR/destroyed, CQ drained, *)
(*     retry queue cleared, reconnects from the old instance refused, quarantine rule); the H-revoke experiment of the visibility litmus must confirm it. *)
(* Written for Apalache: variables and constants carry type annotations; no CHOOSE, no recursion. *)
(*                                                                         *)
(* KernelReadPins (3) (kernel read pin design): kernel reads move into the core. Each instance has KR step slots; *)
(*  KLaunch(i, s, rows): the core does the launch check and computes the read set krs (one pin per step, not *)
(*  recorded per page in sled); KLand is the GPU finishing (environment); KDone is, once the event query is true, *)
(*  the core removing the pin (= step_done, stream completion). A pinned page does not change state (no return to Free, no new owner, no *)
(*  unquarantine). The attention kernel does not write KV (store.cu writes by out_loc, covered by the existing local-stream ops). *)
(*  KernelCompletion: local kernel steps eventually finish (KLand weakly fair); completion order is unrestricted (widest). *)
(* Submit separated from registration: PReg = p_post only registers, p_begin submits (PSubmit); *)
(*  a registered entry can be cancelled (PCancelReg; stop evidence = never submitted, same as nopost). *)
(* decode growth and cancellation ((1) decode growth and the PReg timeout fix, as modeled): *)
(*  DGrow(j, r): D adds pages while decoding (glue allocate_paged -> ledger.alloc). Guard = the branch of the core's *)
(*   D allocation window after expose (x already VISIBLE, owner LIVE) = record in run / ovl. Grown pages *)
(*   are not exposed and enter no RDMA / local-stream ledger; every later step pins them (read set = all pages of this generation on this *)
(*   instance, as the core launch's rlp); the step whose write range covers a page writes it, only later steps read *)
(*   it (the core's rd <= max(rwr, rla)); it is released with the record when the record ends (unpinned Free, pinned Drain). *)
(*  StreamFIFO (in-stream FIFO): kernel steps of one instance run on one stream in launch order; when a later step starts reading, *)
(*   the store writes of earlier steps have completed (premise of the core's rla branch and of the glue overlap loop launching k+2 before *)
(*   collecting k+1). Used only for the data ground truth of grown pages; step completion order stays unrestricted. *)
(*  The PReg timeout fix (LedgerProtocol of registered-work cancellation) is in the default Spec: PEnd first cancels a registered x; while a P page's *)
(*   ledger holds a registered x, DrainTimeout is disabled (PCancelReg releases the page). QuarNoReg. *)
(***************************************************************************)
EXTENDS Integers, FiniteSets

CONSTANTS
  \* @type: Str;
  Mode,      \* "push" | "pull"
  \* @type: Str;
  HComplete, \* "narrow" | "widest" (H-complete: what P's WRITE completion event implies)
  \* @type: Str;
  HOrder,    \* "strict" | "widest" (H-order: whether the notice or the data arrives first)
  \* @type: Str;
  HVisible,  \* "narrow" | "widest" (H-visible: when kernels see the data after placement)
  \* @type: Str;
  PushEv,    \* design: what D relies on in push to decide landed: "notice" | "inband"
  \* @type: Bool;
  Flush,     \* design: after D decides landed and before launching decode, do a GPUDirect flush
  \* @type: Bool;
  Unquar,    \* design (optional, step two): lift quarantine after tearing down all QPs to the old peer instance
  \* @type: Bool;
  PRel,      \* source-release ordering (switch): P's request may end normally while its x has not stopped (glue: release right after p_post); the src page goes to Drain(h)
  \* @type: Bool;
  BadLen,    \* transfer-length consistency (switch, environment): the token count P actually computes may differ from D's plan (inconsistent input, Cloudflare-like)
  \* @type: Bool;
  Ovl,       \* overlapped-finish drain (switch): overlap scheduling - D's request finishes successfully while the next step containing it is launched and still running; the page goes to Drain(h)
  \* @type: Int;
  KR,        \* KernelReadPins: kernel step slots per instance (bound on steps in flight at once; 0 = kernel reads not modeled)
  \* @type: Bool;
  PReg,      \* submit separated from registration (switch): P's p_post only registers (cancellable); p_begin hands the WRITE to the transfer library
  \* @type: Str;
  Mut,       \* "none" or a mutant (see Mutants)
  \* @type: Bool;
  Faults,    \* TRUE: ops may fail, the library may return failure (H-fail), timeouts may fire at any time; FALSE: timeouts only when the peer hangs
  \* @type: Int;
  MaxFail,   \* maximum number of peer hangs (Hang)
  \* @type: Int;
  NPI,       \* number of P instances
  \* @type: Int;
  NDI,       \* number of D instances
  \* @type: Int;
  NR,        \* number of request slots
  \* @type: Int;
  MG,        \* maximum generations per slot
  \* @type: Int;
  PPL,       \* pages per location
  \* @type: Int;
  NP,        \* total pages = (NPI + NDI) * PPL
  \* @type: Int;
  PS,        \* page_size (tokens)
  \* @type: Int;
  MX,        \* upper bound on xfer ids
  \* @type: Bool;
  PrefixSharing,
  \* @type: Int;
  SPP        \* P prefix slots per instance; disjoint from suffix Pages

\* Mutants (Mut): push-specific ones first
\*  timeoutRelease          SGLang / vLLM lease expiry: release the page on timeout (no quarantine)
\*  noticeBeforeCompletion  Mooncake#3406: P sends the success notice as soon as it issues the WRITE, without waiting for the completion event
\*  failedAsDrained         failed-write-not-drained: a failure return (-1) from the library is treated as drained: send the notice, release the src page
\*  sourceFreedBeforeAck    source-lease-expiry (pull): P releases the src page without waiting for ReleaseSource (lease expiry or abort received)
\*  noGeneration            queued_chunk_generation: request-level messages are not filtered by generation
\*  inflightResetOnReuse    inflight_counter_reuse: when a slot starts a new generation, clear that slot's in-flight accounting
\*  sealPartial             a page with only some tokens written is also sealed as shared
\*  unquarantineOnRehandshake  lift quarantine on seeing the peer re-handshake (QPs not torn down)
\*  sendEarly               sglang#41395: send before prefill is confirmed complete
\*  leakOnAbort             on D abort, do not release the page even with an empty ledger (leak; calibrates page conservation)
\*  noDeadline              negative calibration for request completion: router, P, D and Draining pages have no deadline (wait forever for evidence or replies)
\*  noDeadlineD / noDeadlineP  remove only D's (or P's) own deadline and its Draining deadline, plus the router deadline
\*  noDeadlineDOnly / noRouterDeadline  remove only D's deadline / only the router's deadline (shows which deadline layer carries the load)
\*  pReleaseFree            source-release ordering: P's request ends while x has not stopped and releases the src page directly (no Drain)
\*  ignoreLt                transfer-length consistency: D does not check lt in notice / sinfo / in-band completion and treats lt # plan as landed too
\*  freeOnFinish            overlapped-finish drain: on successful finish under overlap, release the page directly, ignoring that the next step still runs (sled # {})
\*  nokFrees                treat a ~ok notice as stop (failure) evidence: x leaves the ledger, page released (the earlier choice for the failed-completion reading)
\*  KernelReadPins (kernel reads):
\*  kLaunchUnlanded         launch check ignores landing: D may launch in wait / rd (x not stopped), P in pre (prefill write has no stream completion yet)
\*  kLaunchUnflushed        D launches after landed evidence (push: xst landed; pull: READ complete) but before the flush
\*  kWrongGen               launch check finds the page by room without checking generation (prefill room identity / decode room identity class: room as identity), reading an older generation's page of the same room
\*  kFreeUnderRead          all page-release decisions ignore step pins (a page being read is freed / evicted)
\*  kQuarRelUnderRead       unquarantine (Unquar) ignores step pins
\*  kDoneEarly              KDone does not wait for the step's event (unpins while the GPU is still reading)
\*  kDoneNeedsNext          a step's completion is handled only once a next step is launched (main loop collects completions only when there is a new step; the shape of completion polling)
\*  cancelSubmitted         PReg: cancel also treats a submitted entry (after p_begin) as unsubmitted, releases the src page, replies nopost
\*  decode growth and cancellation (DGrow / PReg timeout fix):
\*  growNoRun               D grows pages even before the record is committed (wait / rd: x not yet VISIBLE) (core does not check VISIBLE in d_alloc_ok)
\*  growNonFree             a grown page need not be free (Drain / quarantined / shared / another record's private page: in-use pages mixed into the free list)
\*  growFreeUnderPin        releasing grown pages at record end ignores kernel pins
\*  kReadUnwritten          launch reads a grown page that no step has written yet as if written (core does not check rd <= max(rwr, rla))
\*  kGrowNoFifo             the step writing a grown page and later steps reading it are not on one stream (StreamFIFO fails): the write lands only when the writing step finishes
\*  pEndNoCancel            PEnd does not first cancel a registered x (a src page only registered, never submitted, goes to quarantine on timeout)
\*  drainTimeoutReg         while a P page's ledger holds a registered x, Drain still times out to quarantine (original cancellation behavior)
Mutants == {"none", "timeoutRelease", "noticeBeforeCompletion", "failedAsDrained", "sourceFreedBeforeAck",
            "noGeneration", "inflightResetOnReuse", "sealPartial", "unquarantineOnRehandshake", "sendEarly", "leakOnAbort",
            "noDeadline", "noDeadlineD", "noDeadlineP", "noDeadlineDOnly", "noRouterDeadline", "pReleaseFree", "ignoreLt", "freeOnFinish", "nokFrees",
            "kLaunchUnlanded", "kLaunchUnflushed", "kWrongGen", "kFreeUnderRead", "kQuarRelUnderRead", "kDoneEarly",
            "kDoneNeedsNext", "cancelSubmitted",
            "growNoRun", "growNonFree", "growFreeUnderPin", "kReadUnwritten", "kGrowNoFifo", "pEndNoCancel", "drainTimeoutReg"}
\* deadline mutants: which party has no deadline
NoDLRouter == Mut \in {"noDeadline", "noDeadlineD", "noDeadlineP", "noRouterDeadline"}
NoDLD      == Mut \in {"noDeadline", "noDeadlineD", "noDeadlineDOnly"}
NoDLP      == Mut \in {"noDeadline", "noDeadlineP"}

NL == NPI + NDI
Inst == 1..NL
PInst == 1..NPI
DInst == (NPI + 1)..NL
Rq == 1..NR
Gens == 1..MG
Xids == 1..MX
Pages == 1..NP
KSlots == 1..KR
IsP(i) == i <= NPI
IsD(i) == i > NPI
BaseLoc(p) == IF p <= PPL THEN 1 ELSE IF p <= PPL + PPL THEN 2 ELSE IF p <= PPL + PPL + PPL THEN 3 ELSE 4
SPages == (NP + 1)..(NP + NPI * SPP)
KPages == Pages \cup SPages
SWidth == IF SPP > 0 THEN SPP ELSE 1
Loc(p) == IF p <= NP THEN BaseLoc(p) ELSE 1 + (p - NP - 1) \div SWidth
\* token count of request (r, g): odd generations fill the page, even ones are one token short (with PS > 1 the last page is partial; a full-page request can follow a partial one,
\* so "a partial page is sealed and later hit by a full-page request" is reachable). With PS = 1 or MG <= 2 this equals "only generation 1 fills the page"
NTok(r, g) == IF PS = 1 \/ g % 2 = 1 THEN PS ELSE PS - 1
\* transfer-length consistency: tokens P's prefill actually writes; with BadLen it may be one less than planned (P's input disagrees with D's plan)
PLens(r, g) == IF BadLen THEN {NTok(r, g), NTok(r, g) - 1} ELSE {NTok(r, g)}

\* @type: (Str, Int, Int, Int, Int, Int, Int, Int, Bool) => {t: Str, fr: Int, to: Int, r: Int, g: Int, x: Int, pg: Int, pe: Int, ok: Bool};
Msg(t, fr, to, r, g, x, pg, pe, ok) ==
  [t |-> t, fr |-> fr, to |-> to, r |-> r, g |-> g, x |-> x, pg |-> pg, pe |-> pe, ok |-> ok]

VARIABLES
  \* ---- router (untrusted policy + client replies) ----
  \* @type: Int -> Int;
  gen,      \* current generation of slot r (0 = never used)
  \* @type: Int -> Str;
  rt,       \* "idle" | "wait" | "ok" | "err"
  \* @type: Int -> Int;
  rp,       \* P instance of the current generation
  \* @type: Int -> Int;
  rd,       \* D instance of the current generation
  \* @type: Int -> (Int -> Int);
  hp,       \* ghost: P instance assigned to (r, g) (history, used only by the inductive invariant)
  \* @type: Int -> (Int -> Int);
  hd,       \* ghost: D instance assigned to (r, g)
  \* ---- instances ----
  \* @type: Int -> Bool;
  alive,    \* FALSE = hung (receives no messages, takes no actions; its NIC keeps working)
  \* @type: Int;
  nfail,
  \* @type: Int -> Set(Int);
  torn,     \* Unquar: j has torn down all QPs to these instances (all later RDMA between them is rejected)
  \* ---- KernelReadPins: kernel steps per instance (slot s \in 1..KR) ----
  \* @type: Int -> (Int -> Bool);
  kpin,     \* ledger: step s is launched and the core has not received its completion (until KDone, pages in the read set are pinned)
  \* @type: Int -> (Int -> Bool);
  kfly,     \* environment ground truth: step s's kernel is still running on the GPU (still reading pages in its read set)
  \* @type: Int -> (Int -> Set(<<Int, Int, Int, Int>>));
  krs,      \* read set computed by the core at the launch check: one row <<slot r, gen g, page p, sh>> each; sh = 1 means a shared page is read
  \* ---- request record per instance per slot ----
  \* @type: Int -> (Int -> Str);
  ph,       \* P: "none" "pre" "ready" "reg" (PReg: registered, not submitted) "sent" "exp" "end"; D: "none" "wait" "rd" "run" "ovl" "end"
  \* @type: Int -> (Int -> Int);
  rg,       \* generation of the record
  \* @type: Int -> (Int -> Int);
  rpg,      \* page of the record (P src page; D dst page or the shared page hit)
  \* @type: Int -> (Int -> Int);
  rpe,      \* peer instance
  \* @type: Int -> (Int -> Int);
  rx,       \* xfer id (0 = none)
  \* @type: Int -> (Int -> Bool);
  rhit,     \* D: prefix hit on a shared page
  \* ---- pages (page states) ----
  \* @type: Int -> Str;
  pst,      \* "free" | "priv" | "shared" | "drain" | "quar"
  \* @type: Int -> Int;
  pr,       \* owner (slot) of priv / drain / quar
  \* @type: Int -> Int;
  pgn,      \* generation of the owner
  \* @type: Int -> Int;
  plt,      \* landed_tokens: token count the core takes as landed based on evidence
  \* @type: Int -> Int;
  ptl,      \* ghost ground truth: tokens of the owner's generation that really landed (-1 = written by someone else's bytes)
  \* @type: Int -> Bool;
  pvis,     \* ghost ground truth: placed data is visible to kernels launched later (H-visible)
  \* @type: Int -> Set(Int);
  led,      \* in-flight ledger (RDMA): xfers that may still touch this page
  \* @type: Int -> Set(<<Int, Int>>);
  sfly,     \* environment ground truth: local-stream ops still running on this page (the (slot, gen) that issued each)
  \* @type: Int -> Set(<<Int, Int>>);
  sled,     \* in-flight ledger (local stream): stream ops the core has not yet confirmed complete
  \* @type: Int -> Int;
  prefc,    \* reference count of a shared page
  \* @type: Int -> Int;
  pqp,      \* quar page: which peer instance it is waiting for
  \* ---- xfer records (transfer ledger) ----
  \* @type: Int -> Int;
  xr,
  \* @type: Int -> Int;
  xg,
  \* @type: Int -> Str;
  xk,       \* "none" | "wr" (push: P WRITE) | "rd" (pull: D READ)
  \* @type: Int -> Int;
  xp,       \* P instance
  \* @type: Int -> Int;
  xd,       \* D instance
  \* @type: Int -> Int;
  xsrc,     \* src page (on P; filled in push when P initiates)
  \* @type: Int -> Int;
  xdst,     \* dst page (on D; filled in pull when D initiates)
  \* @type: Int -> Int;
  xnt,      \* token count
  \* @type: Int -> Str;
  hw,       \* environment ground truth: "none" (not issued) | "fly" (queued, in transit, retried in the library: may read src, may write dst)
            \*            | "issued" (WRITE: src fully read, peer NIC acknowledged, dst may not be placed yet) | "stop"
  \* @type: Int -> Bool;
  hok,      \* whether it fully succeeded at stop (FALSE = partial write, H-partial)
  \* @type: Int -> Str;
  iv,       \* what the initiator sees: "none" | "posted" | "cqe" (completion event, stop evidence) | "failret" (library returned failure or timed out:
            \*   not stop evidence, handle dropped) | "nopost" (initiator promises never to issue)
  \* @type: Int -> Str;
  xst,      \* exposer's record state (Posted/Landed/Failed/Revoked): "none" | "posted" | "landed" | "failed" | "revoked"
  \* @type: Int;
  nx,       \* next xfer id (monotonic)
  \* @type: Int -> Int;
  xlt,      \* transfer-length consistency: token count lt actually carried by x (push: set when P issues = P's count on the src page; pull: when P exposes; 0 before)
  \* ---- control plane ----
  \* @type: Set({t: Str, fr: Int, to: Int, r: Int, g: Int, x: Int, pg: Int, pe: Int, ok: Bool});
  net,
  \* ---- ghosts ----
  \* @type: Int -> (Int -> Int);
  drep,     \* number of final replies D sent for (r, g)
  \* @type: Int -> (Int -> Str);
  crep,     \* reply the client received for (r, g): "none" | "ok" | "err" | "two"
  \* @type: Int -> (Int -> Bool);
  dsucc,    \* D really finished (r, g) reading landed pages
  \* @type: Bool;
  gbad      \* some message with a mismatched generation was accepted

rtV   == <<gen, rt, rp, rd, hp, hd>>
kV    == <<kpin, kfly, krs>>
instV == <<alive, nfail, torn, kV>>   \* KernelReadPins: kernel steps are instance-level state; only KLaunch / KLand / KDone change kV
recV  == <<ph, rg, rpg, rpe, rx, rhit>>
pgV   == <<pst, pr, pgn, plt, ptl, pvis, led, sfly, sled, prefc, pqp>>
xV    == <<xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, iv, xst, nx>>
ghV   == <<drep, crep, dsucc, gbad>>
basevars == <<rtV, instV, recV, pgV, xV, net, ghV>>

\* PrefixSharing proposal: suffix protocol is unchanged; prefix slots are a separate P pool.
\* D's destination is an aggregate full-payload receive buffer (dpreOK checks prefix).
VARIABLES
  \* @type: Int -> Str;
  spst,
  \* @type: Int -> Int;
  sown,
  \* @type: Int -> Int;
  sgen,
  \* @type: Int -> Int;
  skey,
  \* @type: Int -> Bool;
  swrite,
  \* @type: Int -> Bool;
  sdata,
  \* @type: Int -> Bool;
  sready,
  \* @type: Int -> Int;
  sprefc,
  \* @type: Int -> (Int -> Int);
  smap,
  \* @type: Int -> (Int -> Bool);
  schoice,
  \* @type: Set(<<Int, Int, Int, Int>>);
  rpgS,
  \* @type: Int -> Set(Int);
  xsrcS,
  \* @type: Int -> Set(Int);
  xsrcP,
  \* @type: Set(Int);
  sentry,
  \* @type: Set(<<Int, Int>>);
  squar,
  \* @type: Int -> Bool;
  xprefixOK,
  \* @type: Int -> Bool;
  dpreOK,
  \* @type: Bool;
  hitSeen,
  \* @type: Bool;
  dedupSeen
sV == <<spst, sown, sgen, skey, swrite, sdata, sready, sprefc, smap, schoice, rpgS,
        xsrcS, xsrcP, sentry, squar, xprefixOK, dpreOK, hitSeen, dedupSeen>>
vars == <<basevars, sV>>
\* Token-page identity deliberately has two values; requests in the same generation
\* share a prefix, a later generation may have a different prefix.
STok(r, g) == 1 + ((g - 1) % 2)
\* @type: (Int, Int, Int, Int) => <<Int, Int, Int, Int>>;
SH(i, r, g, p) == <<i, r, g, p>>
\* @type: <<Int, Int, Int, Int>> => Bool;
SHPin(h) == \E k \in KSlots : kpin[h[1]][k] /\ \E e \in krs[h[1]][k] : e[1] = h[2] /\ e[2] = h[3] /\ e[3] = h[4]
SPin(p) == \E i \in PInst, k \in KSlots : kpin[i][k] /\ \E e \in krs[i][k] : e[3] = p
\* @type: (Set(<<Int, Int, Int, Int>>), Int) => Int;
SRefR(H, p) == Cardinality({h \in H : h[4] = p})
\* @type: (Set(Int), Int -> Set(Int), Int) => Int;
SRefE(E, X, p) == Cardinality({x \in E : p \in X[x]})
\* @type: (Set(<<Int, Int>>), Int) => Int;
SRefQ(Q, p) == Cardinality({h \in Q : h[2] = p})
SSendReady(i, r) == schoice[i][r] /\ (IF smap[i][r] = 0 THEN TRUE ELSE spst[smap[i][r]] = "shared" \/ (Mut = "postBeforeDedup" /\ sready[smap[i][r]]))
SRowReady(i, r) == schoice[i][r] /\ (IF smap[i][r] = 0 THEN TRUE ELSE
  spst[smap[i][r]] \in {"priv", "shared"} /\ sready[smap[i][r]])
\* @type: (Int, Set(Int)) => Set(<<Int, Int, Int, Int>>);
SRows(i, rows) == IF PrefixSharing /\ IsP(i) THEN
  {<<r, rg[i][r], smap[i][r], IF spst[smap[i][r]] = "shared" THEN 1 ELSE 4>> :
    r \in {r \in rows : smap[i][r] # 0}} ELSE {}
\* @type: <<Int, Int, Int, Int>> => Bool;
SHeld(e) == IF e[4] = 1 THEN spst[e[3]] = "shared"
  ELSE spst[e[3]] \in {"priv", "shared", "dup", "drain", "quar"} /\ sown[e[3]] = e[1] /\ sgen[e[3]] = e[2]
\* @type: <<Int, Int, Int, Int>> => Bool;
SData(e) == sdata[e[3]] /\ ~swrite[e[3]] /\ skey[e[3]] = STok(e[1], e[2])
SInit ==
  /\ spst = [p \in SPages |-> IF PrefixSharing /\ (p - NP - 1) % SWidth = 0 THEN "shared" ELSE "free"]
  /\ sown = [p \in SPages |-> 0] /\ sgen = [p \in SPages |-> 0]
  /\ skey = [p \in SPages |-> IF PrefixSharing /\ (p - NP - 1) % SWidth = 0 THEN 1 ELSE 0]
  /\ swrite = [p \in SPages |-> FALSE]
  /\ sdata = [p \in SPages |-> PrefixSharing /\ (p - NP - 1) % SWidth = 0]
  /\ sready = sdata /\ sprefc = [p \in SPages |-> 0]
  /\ smap = [i \in PInst |-> [r \in Rq |-> 0]] /\ schoice = [i \in PInst |-> [r \in Rq |-> FALSE]]
  /\ rpgS = {} /\ xsrcS = [x \in Xids |-> {}] /\ xsrcP = [x \in Xids |-> {}]
  /\ sentry = {} /\ squar = {} /\ xprefixOK = [x \in Xids |-> FALSE] /\ dpreOK = [p \in Pages |-> FALSE]
  /\ hitSeen = FALSE /\ dedupSeen = FALSE

BaseInit ==
  /\ gen = [r \in Rq |-> 0] /\ rt = [r \in Rq |-> "idle"] /\ rp = [r \in Rq |-> 0] /\ rd = [r \in Rq |-> 0]
  /\ hp = [r \in Rq |-> [g \in Gens |-> 0]] /\ hd = [r \in Rq |-> [g \in Gens |-> 0]]
  /\ alive = [i \in Inst |-> TRUE] /\ nfail = 0 /\ torn = [i \in Inst |-> {}]
  /\ kpin = [i \in Inst |-> [s \in KSlots |-> FALSE]] /\ kfly = [i \in Inst |-> [s \in KSlots |-> FALSE]]
  /\ krs = [i \in Inst |-> [s \in KSlots |-> {}]]
  /\ ph = [i \in Inst |-> [r \in Rq |-> "none"]] /\ rg = [i \in Inst |-> [r \in Rq |-> 0]]
  /\ rpg = [i \in Inst |-> [r \in Rq |-> 0]] /\ rpe = [i \in Inst |-> [r \in Rq |-> 0]]
  /\ rx = [i \in Inst |-> [r \in Rq |-> 0]] /\ rhit = [i \in Inst |-> [r \in Rq |-> FALSE]]
  /\ pst = [p \in Pages |-> "free"] /\ pr = [p \in Pages |-> 0] /\ pgn = [p \in Pages |-> 0]
  /\ plt = [p \in Pages |-> 0] /\ ptl = [p \in Pages |-> 0] /\ pvis = [p \in Pages |-> FALSE] /\ led = [p \in Pages |-> {}]
  /\ sfly = [p \in Pages |-> {}] /\ sled = [p \in Pages |-> {}] /\ prefc = [p \in Pages |-> 0] /\ pqp = [p \in Pages |-> 0]
  /\ xr = [x \in Xids |-> 0] /\ xg = [x \in Xids |-> 0] /\ xk = [x \in Xids |-> "none"]
  /\ xp = [x \in Xids |-> 0] /\ xd = [x \in Xids |-> 0] /\ xsrc = [x \in Xids |-> 0] /\ xdst = [x \in Xids |-> 0]
  /\ xnt = [x \in Xids |-> 0] /\ hw = [x \in Xids |-> "none"] /\ hok = [x \in Xids |-> FALSE]
  /\ iv = [x \in Xids |-> "none"] /\ xst = [x \in Xids |-> "none"] /\ nx = 1 /\ xlt = [x \in Xids |-> 0]
  /\ net = {}
  /\ drep = [r \in Rq |-> [g \in Gens |-> 0]] /\ crep = [r \in Rq |-> [g \in Gens |-> "none"]]
  /\ dsucc = [r \in Rq |-> [g \in Gens |-> FALSE]] /\ gbad = FALSE

\* ============================ helpers ============================
Active(i, r) == ph[i][r] \notin {"none", "end"}
\* timeout: with Faults it may fire at any time (widest: timeouts are unrelated to network delay); otherwise only when the peer hangs
TOk(peer) == Faults \/ (peer \in Inst /\ ~alive[peer])
\* peer instance of xfer x on the side of page p
PeerOf(x, p) == IF Loc(p) = xp[x] THEN xd[x] ELSE xp[x]
\* new request record: accept only a generation newer than the record (generation filter); noGeneration: accept any different generation
NewGen(i, r, g) == \/ ph[i][r] = "none"
                   \/ ph[i][r] = "end" /\ (g > rg[i][r] \/ (Mut = "noGeneration" /\ g # rg[i][r]))
\* generation filter for request-level messages
GenOK(i, r, g) == g = rg[i][r] \/ Mut = "noGeneration"
Bump(n) == IF n < 2 THEN n + 1 ELSE 2
\* tag of a local-stream op: the (slot, gen) that issued it
\* @type: (Int, Int) => <<Int, Int>>;
Tag(r, g) == <<r, g>>
\* Unquar: the QPs between the two ends of x have been torn down by one end (all later ops are rejected)
InFl(x) == hw[x] \in {"fly", "issued"}
Torn(x) == (xp[x] \in Inst /\ xd[x] \in torn[xp[x]]) \/ (xd[x] \in Inst /\ xp[x] \in torn[xd[x]])

\* KernelReadPins: page p is in the read set of some step on its instance that is launched and not yet KDone (one pin per step)
KPinned(p) == \E s \in KSlots : kpin[Loc(p)][s] /\ \E e \in krs[Loc(p)][s] : e[3] = p
\* page-release decisions count pins as in flight (mutant kFreeUnderRead: ignore pins); unquarantine has its own mutant kQuarRelUnderRead
PinBlocks(p) == KPinned(p) /\ Mut # "kFreeUnderRead"
QPinBlocks(p) == PinBlocks(p) /\ Mut # "kQuarRelUnderRead"
\* record ends normally with evidence and the page's RDMA / local-stream ledgers are empty: unpinned -> Free, pinned -> Drain (back to Free at KDone)
FreeOrDrain(p) == IF PinBlocks(p) THEN "drain" ELSE "free"

\* page p changes state (on free, clear owner, ledgers, references)
PageTo(p, s, q, nl, ns) ==
  /\ pst' = [pst EXCEPT ![p] = s]
  /\ pqp' = [pqp EXCEPT ![p] = IF s = "quar" THEN q ELSE IF s = "free" THEN 0 ELSE pqp[p]]
  /\ IF s = "free"
     THEN /\ pr' = [pr EXCEPT ![p] = 0] /\ pgn' = [pgn EXCEPT ![p] = 0] /\ plt' = [plt EXCEPT ![p] = 0]
          /\ led' = [led EXCEPT ![p] = {}] /\ sled' = [sled EXCEPT ![p] = {}] /\ prefc' = [prefc EXCEPT ![p] = 0]
     ELSE /\ led' = [led EXCEPT ![p] = nl] /\ sled' = [sled EXCEPT ![p] = ns]
          /\ UNCHANGED <<pr, pgn, plt, prefc>>

\* give up page p (record ends): empty ledger -> Free; in flight -> Draining (abort) or Quarantined (timeout with remote ops in flight)
\* decode growth and cancellation: GiveUpToN decides on the given RDMA ledger nl (the ledger after PEnd first cancels a registered x); GiveUpTo uses the page's current ledger, keeping the original cancellation behavior
GiveUpToN(p, how, nl) ==
  IF nl = {} /\ sled[p] = {} /\ ~PinBlocks(p) THEN (IF Mut = "leakOnAbort" /\ how = "abort" /\ IsD(Loc(p)) THEN "priv" ELSE "free")
  ELSE IF nl = {} /\ sled[p] = {} THEN "drain"   \* KernelReadPins: only kernel step pins remain (local, eventually complete): Drain, no quarantine
  ELSE IF Mut = "sourceFreedBeforeAck" /\ Mode = "pull" /\ IsP(Loc(p)) /\ sled[p] = {} THEN "free"
  ELSE IF how = "timeout" /\ nl # {} THEN (IF Mut = "timeoutRelease" THEN "free" ELSE "quar")
  ELSE "drain"
GiveUpTo(p, how) == GiveUpToN(p, how, led[p])

\* decode growth and cancellation (DGrow, (1)): pages grown by D record (j, r) while decoding = private pages of this generation on this instance other than the mapped page rpg (rpg is the exposed / hit
\* page; grown pages are not exposed and have no RDMA / local-stream ledger, GrownPageConsistency)
GrownOf(j, r) == {q \in Pages : IsD(j) /\ Loc(q) = j /\ q # rpg[j][r] /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = rg[j][r]}
\* releasing grown pages at record end: only kernel pins matter. Unpinned -> Free, pinned -> Drain (back to Free at KDone). Mutant growFreeUnderPin: ignore pins
GTo(q) == IF PinBlocks(q) /\ Mut # "growFreeUnderPin" THEN "drain" ELSE "free"
GFr(G, q) == q \in G /\ GTo(q) = "free"
\* when grown pages G return to Free, clear owner and write progress (RDMA / local-stream ledgers are already empty, refc and pqp already 0; pst' is written by the caller)
GrownOwn(G) ==
  /\ pr' = [x \in Pages |-> IF GFr(G, x) THEN 0 ELSE pr[x]]
  /\ pgn' = [x \in Pages |-> IF GFr(G, x) THEN 0 ELSE pgn[x]]
  /\ plt' = [x \in Pages |-> IF GFr(G, x) THEN 0 ELSE plt[x]]
\* PageTo, plus releasing a set of grown pages G in the same step (G excludes p; with G = {} identical to PageTo(p, s, q, nl, ns) variable by variable)
PageToG(p, s, q, nl, ns, G) ==
  /\ pst' = [x \in Pages |-> IF x = p THEN s ELSE IF x \in G THEN GTo(x) ELSE pst[x]]
  /\ pqp' = [pqp EXCEPT ![p] = IF s = "quar" THEN q ELSE IF s = "free" THEN 0 ELSE pqp[p]]
  /\ led' = [led EXCEPT ![p] = IF s = "free" THEN {} ELSE nl]
  /\ sled' = [sled EXCEPT ![p] = IF s = "free" THEN {} ELSE ns]
  /\ prefc' = [prefc EXCEPT ![p] = IF s = "free" THEN 0 ELSE prefc[p]]
  /\ pr' = [x \in Pages |-> IF (x = p /\ s = "free") \/ GFr(G, x) THEN 0 ELSE pr[x]]
  /\ pgn' = [x \in Pages |-> IF (x = p /\ s = "free") \/ GFr(G, x) THEN 0 ELSE pgn[x]]
  /\ plt' = [x \in Pages |-> IF (x = p /\ s = "free") \/ GFr(G, x) THEN 0 ELSE plt[x]]

\* page state after removing x from the ledger: a Draining page whose ledgers empty returns to Free (atomically)
\* @type: (Int, Set(Int), Set(<<Int, Int>>)) => Str;
AfterEv(p, nl, ns) == IF pst[p] = "drain" /\ nl = {} /\ ns = {} /\ ~PinBlocks(p) THEN "free" ELSE pst[p]
EvidenceAt(p, x) ==
  LET nl == led[p] \ {x} IN PageTo(p, AfterEv(p, nl, sled[p]), pqp[p], nl, sled[p])

\* ============================ router ============================
Arrive(r, i, j) ==
  /\ IsP(i) /\ IsD(j) /\ rt[r] # "wait" /\ gen[r] < MG
  /\ LET g == gen[r] + 1 IN
       /\ gen' = [gen EXCEPT ![r] = g]
       /\ rt' = [rt EXCEPT ![r] = "wait"]
       /\ rp' = [rp EXCEPT ![r] = i] /\ rd' = [rd EXCEPT ![r] = j]
       /\ hp' = [hp EXCEPT ![r][g] = i] /\ hd' = [hd EXCEPT ![r][g] = j]
       /\ net' = net \cup {Msg("req", 0, i, r, g, 0, 0, j, FALSE), Msg("req", 0, j, r, g, 0, 0, i, FALSE)}
  /\ UNCHANGED <<instV, recV, pgV, xV, ghV>>

\* router deadline: give the client an error and tell P and D to abort
RTimeout(r) ==
  /\ rt[r] = "wait" /\ (Faults \/ ~alive[rp[r]] \/ ~alive[rd[r]]) /\ ~NoDLRouter
  /\ rt' = [rt EXCEPT ![r] = "err"]
  /\ crep' = [crep EXCEPT ![r][gen[r]] = IF crep[r][gen[r]] = "none" THEN "err" ELSE "two"]
  /\ net' = net \cup {Msg("abort", 0, rp[r], r, gen[r], 0, 0, 0, FALSE), Msg("abort", 0, rd[r], r, gen[r], 0, 0, 0, FALSE)}
  /\ UNCHANGED <<gen, rp, rd, hp, hd, instV, recV, pgV, xV, drep, dsucc, gbad>>

RRecvReply(r) ==
  /\ rt[r] = "wait"
  /\ \E m \in net :
       /\ m.t = "reply" /\ m.r = r /\ (m.g = gen[r] \/ Mut = "noGeneration")
       /\ rt' = [rt EXCEPT ![r] = IF m.ok THEN "ok" ELSE "err"]
       /\ crep' = [crep EXCEPT ![r][gen[r]] = IF crep[r][gen[r]] # "none" THEN "two" ELSE IF m.ok THEN "ok" ELSE "err"]
       /\ gbad' = (gbad \/ m.g # gen[r])
  /\ UNCHANGED <<gen, rp, rd, hp, hd, instV, recV, pgV, xV, net, drep, dsucc>>

\* ============================ P ============================
\* request received: allocate a src page, launch prefill (local-stream write, recorded in sled); if no page is free, report the error via D
PRecvReq(i, r) ==
  /\ IsP(i) /\ alive[i]
  /\ \E m \in net :
       /\ m.t = "req" /\ m.to = i /\ m.r = r /\ NewGen(i, r, m.g)
       /\ gbad' = (gbad \/ (ph[i][r] = "end" /\ m.g <= rg[i][r]))
       /\ rg' = [rg EXCEPT ![i][r] = m.g] /\ rpe' = [rpe EXCEPT ![i][r] = m.pe] /\ rx' = [rx EXCEPT ![i][r] = 0]
       /\ led' = IF Mut = "inflightResetOnReuse"      \* inflight_counter_reuse: clear this slot's in-flight accounting when a new generation starts
                 THEN [p \in Pages |-> IF Loc(p) = i THEN {x \in led[p] : xr[x] # r} ELSE led[p]] ELSE led
       /\ IF \E p \in Pages : Loc(p) = i /\ pst[p] = "free"
          THEN \E p \in Pages :
                 /\ Loc(p) = i /\ pst[p] = "free"
                 /\ pst' = [pst EXCEPT ![p] = "priv"] /\ pr' = [pr EXCEPT ![p] = r] /\ pgn' = [pgn EXCEPT ![p] = m.g]
                 /\ plt' = [plt EXCEPT ![p] = 0] /\ ptl' = [ptl EXCEPT ![p] = 0] /\ pvis' = [pvis EXCEPT ![p] = FALSE]
                 /\ sfly' = [sfly EXCEPT ![p] = @ \cup {Tag(r, m.g)}] /\ sled' = [sled EXCEPT ![p] = @ \cup {Tag(r, m.g)}]
                 /\ ph' = [ph EXCEPT ![i][r] = "pre"] /\ rpg' = [rpg EXCEPT ![i][r] = p]
                 /\ UNCHANGED <<prefc, pqp, net>>
          ELSE /\ ph' = [ph EXCEPT ![i][r] = "end"] /\ rpg' = [rpg EXCEPT ![i][r] = 0]
               /\ net' = net \cup {Msg("abort", i, m.pe, r, m.g, 0, 0, 0, FALSE)}
               /\ UNCHANGED <<pst, pr, pgn, plt, ptl, pvis, sfly, sled, prefc, pqp>>
  /\ UNCHANGED <<rtV, instV, rhit, xV, drep, crep, dsucc>>

\* prefill event query is true (the op really completed): P's core records the tokens prefill wrote (with BadLen off = planned NTok)
PPoll(i, r) ==
  /\ IsP(i) /\ alive[i] /\ ph[i][r] = "pre"
  /\ LET p == rpg[i][r]
         t == Tag(r, rg[i][r])
     IN /\ t \notin sfly[p] /\ t \in sled[p]
        /\ sled' = [sled EXCEPT ![p] = @ \ {t}]
        /\ plt' = [plt EXCEPT ![p] = ptl[p]]
        /\ ph' = [ph EXCEPT ![i][r] = "ready"]
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, pst, pr, pgn, ptl, pvis, led, sfly, prefc, pqp, xV, net, ghV>>

\* Ready, or (mutant sendEarly: prefill not yet confirmed)
SendReady(i, r) == /\ ph[i][r] = "ready" \/ (Mut = "sendEarly" /\ ph[i][r] = "pre")
                   /\ ~PrefixSharing \/ SSendReady(i, r)
\* the lt P reports to D: in the design = the count P recorded for the prefill write; mutant sendEarly sends before prefill is confirmed and reports the planned length (prompt length)
LtOf(i, r) == IF ph[i][r] = "pre" THEN NTok(r, rg[i][r]) ELSE plt[rpg[i][r]]

\* push: after receiving D's dinfo(r, g, x, q), issue WRITE x (x = 0: D prefix hit, no transfer needed; x already nopost: give up)
PPost(i, r) ==
  /\ Mode = "push" /\ IsP(i) /\ alive[i] /\ SendReady(i, r)
  /\ \E m \in net :
       /\ m.t = "dinfo" /\ m.to = i /\ m.r = r /\ GenOK(i, r, m.g)
       /\ gbad' = (gbad \/ m.g # rg[i][r])
       /\ LET p == rpg[i][r] IN
          IF m.x = 0 \/ iv[m.x] # "none"
          THEN /\ ph[i][r] = "ready" /\ led[p] = {} /\ sled[p] = {}
               /\ ph' = [ph EXCEPT ![i][r] = "end"] /\ rx' = [rx EXCEPT ![i][r] = m.x]
               /\ PageTo(p, FreeOrDrain(p), 0, {}, {})
               /\ UNCHANGED <<xV, net>>
          ELSE \* PReg (= glue p_post): register only (iv = reg, the src page enters the ledger, the WRITE is not yet handed to the transfer library, cancellable); otherwise register + submit in one step
               /\ iv' = [iv EXCEPT ![m.x] = IF PReg THEN "reg" ELSE "posted"]
               \* Unquar: cannot issue to a torn-down peer (connection rejected, the op stops at once with failure and never lands)
               /\ hw' = IF PReg THEN hw ELSE [hw EXCEPT ![m.x] = IF Torn(m.x) THEN "stop" ELSE "fly"]
               /\ hok' = IF PReg THEN hok ELSE [hok EXCEPT ![m.x] = FALSE]
               /\ xsrc' = [xsrc EXCEPT ![m.x] = p] /\ xlt' = [xlt EXCEPT ![m.x] = LtOf(i, r)]   \* transfer-length consistency: token count carried by x = the count P recorded
               /\ led' = [led EXCEPT ![p] = @ \cup {m.x}]
               /\ ph' = [ph EXCEPT ![i][r] = IF PReg THEN "reg" ELSE "sent"] /\ rx' = [rx EXCEPT ![i][r] = m.x]
               \* mutant noticeBeforeCompletion (Mooncake#3406): send the success notice as soon as the WRITE is issued (pe = 0: completion event not seen); under PReg it is sent in PSubmit
               /\ net' = IF Mut = "noticeBeforeCompletion" /\ ~PReg
                         THEN net \cup {Msg("notice", i, m.fr, r, m.g, m.x, LtOf(i, r), 0, TRUE)} ELSE net
               /\ UNCHANGED <<pst, pr, pgn, plt, sled, prefc, pqp, xr, xg, xk, xp, xd, xdst, xnt, xst, nx>>
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rhit, ptl, pvis, sfly, drep, crep, dsucc>>

\* push: P's WRITE has a completion event; the src page returns to Free
PSentDone(i, r) ==
  /\ IsP(i) /\ alive[i] /\ ph[i][r] = "sent" /\ iv[rx[i][r]] = "cqe"
  /\ LET p == rpg[i][r] IN
       /\ led[p] = {} /\ sled[p] = {}
       /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ PageTo(p, FreeOrDrain(p), 0, {}, {})
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, net, ghV>>

\* the initiator's library returned failure or timed out (not stop evidence): quarantine the initiator's page, notify the peer
PSentFailBroken(i, r) ==
  /\ IsP(i) /\ alive[i] /\ ph[i][r] = "sent" /\ iv[rx[i][r]] = "failret"
  /\ LET p == rpg[i][r] IN
       /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ PageTo(p, "free", 0, {}, {})
               /\ net' = net \cup {Msg("notice", i, rpe[i][r], r, rg[i][r], rx[i][r], xlt[rx[i][r]], 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, ghV>>


PSentFailSafe(i, r) ==
  /\ IsP(i) /\ alive[i] /\ ph[i][r] = "sent" /\ iv[rx[i][r]] = "failret"
  /\ LET p == rpg[i][r] IN
       /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ PageTo(p, GiveUpTo(p, "timeout"), rpe[i][r], led[p], sled[p])
               /\ net' = net \cup {Msg("abort", i, rpe[i][r], r, rg[i][r], 0, 0, 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, ghV>>


PSentFail(i, r) == IF Mut = "failedAsDrained" THEN PSentFailBroken(i, r) ELSE PSentFailSafe(i, r)

\* pull: P exposes the src page, creates xfer record x, sends sinfo(r, g, x, p)
PExpose(i, r) ==
  /\ Mode = "pull" /\ IsP(i) /\ alive[i] /\ SendReady(i, r) /\ nx <= MX
  /\ LET x == nx
         p == rpg[i][r]
         g == rg[i][r]
     IN /\ nx' = nx + 1
        /\ xr' = [xr EXCEPT ![x] = r] /\ xg' = [xg EXCEPT ![x] = g] /\ xk' = [xk EXCEPT ![x] = "rd"]
        /\ xp' = [xp EXCEPT ![x] = i] /\ xd' = [xd EXCEPT ![x] = rpe[i][r]]
        /\ xsrc' = [xsrc EXCEPT ![x] = p] /\ xnt' = [xnt EXCEPT ![x] = NTok(r, g)] /\ xlt' = [xlt EXCEPT ![x] = LtOf(i, r)]
        /\ xst' = [xst EXCEPT ![x] = "posted"]
        /\ led' = [led EXCEPT ![p] = @ \cup {x}]
        /\ ph' = [ph EXCEPT ![i][r] = "exp"] /\ rx' = [rx EXCEPT ![i][r] = x]
        /\ net' = net \cup {Msg("sinfo", i, rpe[i][r], r, g, x, p, LtOf(i, r), FALSE)}   \* transfer-length consistency: the pe field of sinfo = lt
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rhit, pst, pr, pgn, plt, ptl, pvis, sfly, sled, prefc, pqp, xdst, hw, hok, iv, ghV>>

\* pull: D's ReleaseSource arrived (XRecvRel already updated xst); the src page returns to Free
PExpDone(i, r) ==
  /\ IsP(i) /\ alive[i] /\ ph[i][r] = "exp" /\ xst[rx[i][r]] \in {"landed", "failed"}
  /\ LET p == rpg[i][r] IN
       /\ led[p] = {} /\ sled[p] = {}
       /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ PageTo(p, FreeOrDrain(p), 0, {}, {})
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, net, ghV>>

\* P ends a live record (abort message or timeout): the src page goes to Free / Draining / Quarantined per its ledger; notify D.
\* decode growth and cancellation (PReg timeout fix; = PEndC of registered-work cancellation): while the record is still registered (x registered, never handed to the transfer library), first apply the effect of PCancelReg
\*   to cancel x (x leaves the src page ledger, iv -> nopost, reply nopost = ABORT_ACK to D), then release the page by the remaining ledger; only an x handed to the library quarantines the src page.
\*   mutant pEndNoCancel: do not cancel first (original cancellation behavior)
PEnd(i, r, how) ==
  LET p  == rpg[i][r]
      x  == rx[i][r]
      cr == ph[i][r] = "reg" /\ x \in Xids /\ iv[x] = "reg" /\ Mut # "pEndNoCancel"
      nl == IF cr THEN led[p] \ {x} ELSE led[p]
  IN /\ ph' = [ph EXCEPT ![i][r] = "end"]
     /\ PageTo(p, GiveUpToN(p, how, nl), rpe[i][r], nl, sled[p])
     /\ iv' = IF cr THEN [iv EXCEPT ![x] = "nopost"] ELSE iv
     /\ net' = net \cup {Msg("abort", i, rpe[i][r], r, rg[i][r], 0, 0, 0, FALSE)}
                   \cup (IF cr THEN {Msg("nopost", i, xd[x], r, xg[x], x, 0, 0, FALSE)} ELSE {})
     /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly,
                    xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, xst, nx, drep, crep, dsucc>>

PAbort(i, r) ==
  /\ IsP(i) /\ alive[i] /\ Active(i, r)
  /\ \E m \in net :
       /\ m.t = "abort" /\ m.to = i /\ m.r = r /\ GenOK(i, r, m.g)
       /\ gbad' = (gbad \/ m.g # rg[i][r])
       /\ PEnd(i, r, "abort")

PTimeout(i, r) ==
  /\ IsP(i) /\ alive[i] /\ Active(i, r) /\ TOk(rpe[i][r]) /\ ~NoDLP
  /\ PEnd(i, r, "timeout") /\ UNCHANGED gbad

\* push: a dinfo that arrives after the record has ended (or given up), or D's revoke: x not yet issued, promise never to issue it, reply nopost
PNoPost(i) ==
  /\ Mode = "push" /\ IsP(i) /\ alive[i]
  /\ \E m \in net :
       /\ m.to = i /\ m.x \in Xids /\ iv[m.x] = "none"
       /\ \/ m.t = "revoke"
          \/ m.t = "dinfo" /\ ph[i][m.r] = "end" /\ rg[i][m.r] = m.g
       /\ iv' = [iv EXCEPT ![m.x] = "nopost"]
       /\ net' = net \cup {Msg("nopost", i, m.fr, m.r, m.g, m.x, 0, 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, recV, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, xst, nx, ghV>>

\* ============================ D ============================
\* request received: prefix hit on a shared page (no transfer), allocate a dst page (push: create xfer x and expose it), or report no capacity
DResetLedger(j,r) == IF Mut = "inflightResetOnReuse" THEN [p \in Pages |-> IF Loc(p)=j THEN {x \in led[p] : xr[x] # r} ELSE led[p]] ELSE led
DRecvReq(j, r) ==
  /\ IsD(j) /\ alive[j]
  /\ \E m \in net :
       /\ m.t = "req" /\ m.to = j /\ m.r = r /\ NewGen(j, r, m.g)
       /\ gbad' = (gbad \/ (ph[j][r] = "end" /\ m.g <= rg[j][r]))
       /\ rg' = [rg EXCEPT ![j][r] = m.g] /\ rpe' = [rpe EXCEPT ![j][r] = m.pe]
       /\
          \/ \* prefix hit: map the shared page, launch the decode op, run directly; in push tell P that no transfer is needed
             /\ ~PrefixSharing /\ NTok(r, m.g) = PS
             /\ \E s \in Pages :
                  /\ Loc(s) = j /\ pst[s] = "shared"
                  /\ prefc' = [prefc EXCEPT ![s] = @ + 1]
                  /\ sfly' = [sfly EXCEPT ![s] = @ \cup {Tag(r, m.g)}] /\ sled' = [sled EXCEPT ![s] = @ \cup {Tag(r, m.g)}]
                  /\ ph' = [ph EXCEPT ![j][r] = "run"] /\ rpg' = [rpg EXCEPT ![j][r] = s]
                  /\ rhit' = [rhit EXCEPT ![j][r] = TRUE] /\ rx' = [rx EXCEPT ![j][r] = 0]
                  /\ net' = net \cup (IF Mode = "push" THEN {Msg("dinfo", j, m.pe, r, m.g, 0, s, 0, FALSE)} ELSE {})
                  /\ led' = DResetLedger(j,r)
                  /\ UNCHANGED <<pst, pr, pgn, plt, ptl, pvis, pqp, xV, drep>>
          \/ \* allocate a dst page
             /\ Mode = "pull" \/ nx <= MX
             /\ \E q \in Pages :
                  /\ Loc(q) = j /\ pst[q] = "free"
                  /\ pst' = [pst EXCEPT ![q] = "priv"] /\ pr' = [pr EXCEPT ![q] = r] /\ pgn' = [pgn EXCEPT ![q] = m.g]
                  /\ plt' = [plt EXCEPT ![q] = 0] /\ ptl' = [ptl EXCEPT ![q] = 0] /\ pvis' = [pvis EXCEPT ![q] = FALSE]
                  /\ rpg' = [rpg EXCEPT ![j][r] = q] /\ rhit' = [rhit EXCEPT ![j][r] = FALSE]
                  /\ ph' = [ph EXCEPT ![j][r] = "wait"]
                  /\ IF Mode = "push"
                     THEN LET x == nx IN
                          /\ nx' = nx + 1
                          /\ xr' = [xr EXCEPT ![x] = r] /\ xg' = [xg EXCEPT ![x] = m.g] /\ xk' = [xk EXCEPT ![x] = "wr"]
                          /\ xp' = [xp EXCEPT ![x] = m.pe] /\ xd' = [xd EXCEPT ![x] = j]
                          /\ xdst' = [xdst EXCEPT ![x] = q] /\ xnt' = [xnt EXCEPT ![x] = NTok(r, m.g)]
                          /\ xst' = [xst EXCEPT ![x] = "posted"]
                          /\ led' = [DResetLedger(j,r) EXCEPT ![q] = {x}]
                          /\ rx' = [rx EXCEPT ![j][r] = x]
                          /\ net' = net \cup {Msg("dinfo", j, m.pe, r, m.g, x, q, 0, FALSE)}
                          /\ UNCHANGED <<xsrc, xlt, hw, hok, iv>>
                     ELSE /\ rx' = [rx EXCEPT ![j][r] = 0] /\ led' = DResetLedger(j,r)
                          /\ UNCHANGED <<xV, net>>
                  /\ UNCHANGED <<sfly, sled, prefc, pqp, drep>>
          \/ \* no capacity: report an explicit error
             /\ ~(\E q \in Pages : Loc(q) = j /\ pst[q] = "free") \/ (Mode = "push" /\ nx > MX)
             /\ ph' = [ph EXCEPT ![j][r] = "end"] /\ rpg' = [rpg EXCEPT ![j][r] = 0] /\ rx' = [rx EXCEPT ![j][r] = 0]
             /\ rhit' = [rhit EXCEPT ![j][r] = FALSE]
             /\ drep' = [drep EXCEPT ![r][m.g] = Bump(@)]
             /\ net' = net \cup {Msg("reply", j, 0, r, m.g, 0, 0, 0, FALSE), Msg("abort", j, m.pe, r, m.g, 0, 0, 0, FALSE)}
             /\ led' = DResetLedger(j,r)
             /\ UNCHANGED <<pst, pr, pgn, plt, ptl, pvis, sfly, sled, prefc, pqp, xV>>
  /\ UNCHANGED <<rtV, instV, crep, dsucc>>

\* launch the decode op (reads/writes the dst page) and enter run; the page's landed_tokens is set to the value given by the evidence.
\* Flush: before launch do cudaDeviceFlushGPUDirectRDMAWrites, which makes only the writes "placed by now" visible (x already stop)
DStartRun(j, r, q, n, x) ==
  /\ ph' = [ph EXCEPT ![j][r] = "run"]
  /\ plt' = [plt EXCEPT ![q] = n]
  /\ pvis' = [pvis EXCEPT ![q] = IF Flush /\ hw[x] = "stop" THEN TRUE ELSE @]
  /\ sfly' = [sfly EXCEPT ![q] = @ \cup {Tag(r, rg[j][r])}] /\ sled' = [sled EXCEPT ![q] = @ \cup {Tag(r, rg[j][r])}]

\* push: exposer D starts decode after getting landed evidence for x (DInband / DRecvNotice)
DLanded(j, r) ==
  /\ Mode = "push" /\ IsD(j) /\ alive[j] /\ ph[j][r] = "wait" /\ rx[j][r] \in Xids /\ xst[rx[j][r]] = "landed"
  /\ led[rpg[j][r]] = {}
  /\ DStartRun(j, r, rpg[j][r], xnt[rx[j][r]], rx[j][r])
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, pst, pr, pgn, ptl, led, prefc, pqp, xV, net, ghV>>

\* push: x stopped but failed, or P promised not to issue (nopost): report an explicit error, the page returns to Free
DXferFailed(j, r) ==
  /\ Mode = "push" /\ IsD(j) /\ alive[j] /\ ph[j][r] = "wait" /\ rx[j][r] \in Xids
  /\ xst[rx[j][r]] \in {"failed", "revoked"}
  /\ LET q == rpg[j][r] IN
       /\ led[q] = {} /\ sled[q] = {}
       /\ ph' = [ph EXCEPT ![j][r] = "end"]
       /\ PageTo(q, FreeOrDrain(q), 0, {}, {})
  /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(@)]
  /\ net' = net \cup {Msg("reply", j, 0, r, rg[j][r], 0, 0, 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, crep, dsucc, gbad>>

\* pull: on receiving sinfo(r, g, x, p), D issues READ x into its own dst page
DRecvSinfo(j, r) ==
  /\ Mode = "pull" /\ IsD(j) /\ alive[j] /\ ph[j][r] = "wait"
  /\ \E m \in net :
       /\ m.t = "sinfo" /\ m.to = j /\ m.r = r /\ GenOK(j, r, m.g) /\ m.x \in Xids /\ iv[m.x] = "none"
       /\ m.pe = NTok(r, rg[j][r]) \/ Mut = "ignoreLt"   \* transfer-length consistency: read only if lt = D's plan; otherwise DSinfoBadLen
       /\ gbad' = (gbad \/ m.g # rg[j][r])
       /\ LET q == rpg[j][r] IN
            /\ iv' = [iv EXCEPT ![m.x] = "posted"]
            /\ hw' = [hw EXCEPT ![m.x] = IF Torn(m.x) THEN "stop" ELSE "fly"] /\ hok' = [hok EXCEPT ![m.x] = FALSE]
            /\ xdst' = [xdst EXCEPT ![m.x] = q]
            /\ led' = [led EXCEPT ![q] = @ \cup {m.x}]
            /\ ph' = [ph EXCEPT ![j][r] = "rd"] /\ rx' = [rx EXCEPT ![j][r] = m.x]
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rhit, pst, pr, pgn, plt, ptl, pvis, sfly, sled, prefc, pqp,
                 xr, xg, xk, xp, xd, xsrc, xnt, xlt, xst, nx, net, drep, crep, dsucc>>

\* pull: D's READ has a completion event (Cqe already sent ReleaseSource): on success start decode, on failure report an error and the page returns to Free
DReadDone(j, r) ==
  /\ Mode = "pull" /\ IsD(j) /\ alive[j] /\ ph[j][r] = "rd" /\ iv[rx[j][r]] = "cqe"
  /\ LET q == rpg[j][r]
         x == rx[j][r]
     IN /\ led[q] = {}
        /\ IF hok[x]
           THEN /\ DStartRun(j, r, q, xnt[x], x)
                /\ UNCHANGED <<pst, pr, pgn, led, prefc, pqp, drep, net>>
           ELSE /\ sled[q] = {}
                /\ ph' = [ph EXCEPT ![j][r] = "end"]
                /\ PageTo(q, FreeOrDrain(q), 0, {}, {})
                /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(@)]
                /\ net' = net \cup {Msg("reply", j, 0, r, rg[j][r], 0, 0, 0, FALSE)}
                /\ UNCHANGED <<sfly, pvis>>
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, xV, crep, dsucc, gbad>>

\* pull: D's library returned failure or timed out: quarantine the dst page, report an error; send no ReleaseSource (the P-side src page reaches quarantine by timeout)
DReadFail(j, r) ==
  /\ Mode = "pull" /\ IsD(j) /\ alive[j] /\ ph[j][r] = "rd" /\ iv[rx[j][r]] = "failret"
  /\ LET q == rpg[j][r] IN
       /\ ph' = [ph EXCEPT ![j][r] = "end"]
       /\ PageTo(q, GiveUpTo(q, "timeout"), rpe[j][r], led[q], sled[q])
  /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(@)]
  /\ net' = net \cup {Msg("reply", j, 0, r, rg[j][r], 0, 0, 0, FALSE), Msg("abort", j, rpe[j][r], r, rg[j][r], 0, 0, 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, crep, dsucc, gbad>>

\* pull: a sinfo D no longer needs (record ended, or prefix hit): x will never be read; reply ReleaseSource directly
DRelUnneeded(j) ==
  /\ Mode = "pull" /\ IsD(j) /\ alive[j]
  /\ \E m \in net :
       /\ m.t = "sinfo" /\ m.to = j /\ m.x \in Xids /\ iv[m.x] = "none" /\ rg[j][m.r] = m.g
       /\ ph[j][m.r] = "end" \/ (ph[j][m.r] = "run" /\ rhit[j][m.r])
       /\ iv' = [iv EXCEPT ![m.x] = "nopost"]
       /\ net' = net \cup {Msg("relsrc", j, m.fr, m.r, m.g, m.x, 0, 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, recV, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, xst, nx, ghV>>

\* decode op completes (event query true): reply success; seal the private page as shared (full page landed) or release it to Free; decrement the refcount of a hit shared page
DFinish(j, r) ==
  /\ IsD(j) /\ alive[j] /\ ph[j][r] = "run"
  /\ (Tag(r, rg[j][r])) \notin sfly[(rpg[j][r])] /\ (Tag(r, rg[j][r])) \in sled[(rpg[j][r])]
  /\ ph' = [ph EXCEPT ![j][r] = "end"]
  /\ dsucc' = [dsucc EXCEPT ![r][(rg[j][r])] = TRUE]
  /\ drep' = [drep EXCEPT ![r][(rg[j][r])] = Bump(@)]
  /\ net' = net \cup {Msg("reply", j, 0, r, (rg[j][r]), 0, 0, 0, TRUE)}
  /\ IF rhit[j][r]
     THEN /\ prefc' = [prefc EXCEPT ![(rpg[j][r])] = @ - 1] /\ sled' = [sled EXCEPT ![(rpg[j][r])] = @ \ {(Tag(r, rg[j][r]))}]
          /\ pst' = [x \in Pages |-> IF x \in (GrownOf(j,r)) THEN GTo(x) ELSE pst[x]] /\ GrownOwn((GrownOf(j,r)))
          /\ UNCHANGED <<led, pqp>>
     ELSE /\ led[(rpg[j][r])] = {} /\ sled[(rpg[j][r])] = {(Tag(r, rg[j][r]))}
          /\ \/ \* seal: Private -> Shared, requires the write to have landed and a full page (plt = PS)
                /\ ~PrefixSharing /\ (plt[(rpg[j][r])] = PS \/ (Mut = "sealPartial" /\ plt[(rpg[j][r])] >= 1))
                /\ pst' = [x \in Pages |-> IF x = (rpg[j][r]) THEN "shared" ELSE IF x \in (GrownOf(j,r)) THEN GTo(x) ELSE pst[x]]
                /\ prefc' = [prefc EXCEPT ![(rpg[j][r])] = 0]
                /\ sled' = [sled EXCEPT ![(rpg[j][r])] = {}]
                /\ GrownOwn((GrownOf(j,r))) /\ UNCHANGED <<led, pqp>>
             \/ PageToG((rpg[j][r]), FreeOrDrain((rpg[j][r])), 0, {}, {}, (GrownOf(j,r)))
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, crep, gbad>>


\* overlapped-finish drain (switch Ovl): overlap scheduling. D's decode op has completed (this step's result is known) and the scheduler has launched the next step containing this request:
\* the event query collects the previous step while the next step is launched (the same tag enters sfly again); the record goes to "ovl"
DLaunchNext(j, r) ==
  /\ Ovl /\ IsD(j) /\ alive[j] /\ ph[j][r] = "run"
  /\ LET q == rpg[j][r]
         t == Tag(r, rg[j][r])
     IN /\ t \notin sfly[q] /\ t \in sled[q]
        /\ sfly' = [sfly EXCEPT ![q] = @ \cup {t}]
        /\ ph' = [ph EXCEPT ![j][r] = "ovl"]
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, pst, pr, pgn, plt, ptl, pvis, led, sled, prefc, pqp, xV, net, ghV>>

\* overlapped-finish drain: an ovl request finishes successfully (success reply as usual); the next step still runs (its tag is still in sled): the private page goes to Drain(h) and returns to Free only via stream completion
\* (PagePoll, local-stream completion); decrement the refcount of a hit shared page, the tag stays in sled and blocks eviction. Mutant freeOnFinish: release the page directly
DFinishOvl(j, r) ==
  /\ IsD(j) /\ alive[j] /\ ph[j][r] = "ovl"
  /\ LET q == rpg[j][r]
         g == rg[j][r]
         G == GrownOf(j, r)   \* decode growth and cancellation: grown pages are released with the record
     IN /\ ph' = [ph EXCEPT ![j][r] = "end"]
        /\ dsucc' = [dsucc EXCEPT ![r][g] = TRUE]
        /\ drep' = [drep EXCEPT ![r][g] = Bump(@)]
        /\ net' = net \cup {Msg("reply", j, 0, r, g, 0, 0, 0, TRUE)}
        /\ IF rhit[j][r]
           THEN /\ prefc' = [prefc EXCEPT ![q] = @ - 1]
                /\ pst' = [x \in Pages |-> IF x \in G THEN GTo(x) ELSE pst[x]] /\ GrownOwn(G)
                /\ UNCHANGED <<led, sled, pqp>>
           ELSE PageToG(q, IF Mut = "freeOnFinish" THEN "free" ELSE GiveUpTo(q, "done"), 0, led[q], sled[q], G)
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, crep, gbad>>
\* D ends a live record (abort or timeout): report an error; in push revoke the exposure (revoke, best effort); pages handled per ledger.
\* decode growth and cancellation: grown pages are released with the record (in the design only run / ovl records have grown pages; the other end paths from wait / rd - DXferFailed, quarantine on a ~ok notice,
\*   BAD_LEN, pull read failure - release only the record's mapped page, so DGrow's run guard carries weight: mutant growNoRun leaks pages on those paths)
DEnd(j, r, how) ==
  LET q == rpg[j][r]
      g == rg[j][r]
      G == GrownOf(j, r)
  IN /\ ph' = [ph EXCEPT ![j][r] = "end"]
     /\ drep' = [drep EXCEPT ![r][g] = Bump(@)]
     /\ net' = net \cup {Msg("reply", j, 0, r, g, 0, 0, 0, FALSE), Msg("abort", j, rpe[j][r], r, g, 0, 0, 0, FALSE)}
                   \cup (IF Mode = "push" /\ rx[j][r] \in Xids /\ xst[rx[j][r]] = "posted"
                         THEN {Msg("revoke", j, rpe[j][r], r, g, rx[j][r], 0, 0, FALSE)} ELSE {})
     /\ IF rhit[j][r]
        THEN /\ prefc' = [prefc EXCEPT ![q] = @ - 1]
             /\ pst' = [x \in Pages |-> IF x \in G THEN GTo(x) ELSE pst[x]] /\ GrownOwn(G)
             /\ UNCHANGED <<led, sled, pqp>>
        ELSE PageToG(q, GiveUpTo(q, how), rpe[j][r], led[q], sled[q], G)

DAbort(j, r) ==
  /\ IsD(j) /\ alive[j] /\ Active(j, r)
  /\ \E m \in net :
       /\ m.t = "abort" /\ m.to = j /\ m.r = r /\ GenOK(j, r, m.g)
       /\ gbad' = (gbad \/ m.g # rg[j][r])
       /\ DEnd(j, r, "abort")
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, crep, dsucc>>

DTimeout(j, r) ==
  /\ IsD(j) /\ alive[j] /\ Active(j, r) /\ TOk(rpe[j][r]) /\ ~NoDLD
  /\ DEnd(j, r, "timeout")
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, crep, dsucc, gbad>>

\* ============================ evidence (per xfer, independent of records) ============================
\* initiator's completion event (library completion, including an empty retry queue):
\*   push = P's WRITE: with HComplete = narrow the data must be placed (stop); with widest it suffices that the src is fully read and the peer NIC acknowledged (issued).
\*   pull = D's READ: the data is in D's page (stop, ReadCompletion).
\* remove x from the initiator's page; push sends notice(x, ok) to D (pe = 1: sent after the completion event), pull sends ReleaseSource(x) to P
Cqe(x) ==
  /\ iv[x] = "posted"
  /\ LET ip == IF xk[x] = "wr" THEN xsrc[x] ELSE xdst[x]
         ii == Loc(ip)
     IN /\ alive[ii]
        \* failed-completion reading: under HComplete narrow a successful completion event implies placement; an error completion does not (bytes acknowledged earlier may still be placing),
        \* so an error completion of a WRITE can already appear at issued
        /\ IF xk[x] = "wr" /\ (HComplete = "widest" \/ ~hok[x]) THEN hw[x] \in {"issued", "stop"} ELSE hw[x] = "stop"
        /\ iv' = [iv EXCEPT ![x] = "cqe"]
        /\ EvidenceAt(ip, x)
        /\ net' = net \cup {IF xk[x] = "wr"
                            THEN Msg("notice", ii, xd[x], xr[x], xg[x], x, xlt[x], 1, hok[x])   \* pg = lt; ok = the outcome (fixed at issued)
                            ELSE Msg("relsrc", ii, xp[x], xr[x], xg[x], x, 0, 0, hok[x])}
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, xst, nx, ghV>>

\* push exposer D's evidence (1) (PushEv = "inband"): in-band completion (InbandPlacementEvidence, appears only after the data is placed)
DInband(x) ==
  /\ Mode = "push" /\ PushEv = "inband" /\ xk[x] = "wr" /\ xst[x] = "posted" /\ alive[xd[x]]
  /\ hw[x] = "stop" /\ hok[x]
  /\ xlt[x] = xnt[x] \/ Mut = "ignoreLt"   \* transfer-length consistency: the in-band completion also carries lt; lt # plan goes to DBadLen
  /\ xst' = [xst EXCEPT ![x] = "landed"]
  /\ EvidenceAt(xdst[x], x)
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, iv, nx, net, ghV>>

\* push exposer D's evidence (2) (PushEv = "notice", SGLang/Mooncake style): P's notice(x, ok, lt) (lt in field pg).
\* delivery timing is up to the environment: with HOrder = strict, a notice P sent after the completion event (pe = 1) is delivered only after the data is placed;
\* with widest it may be delivered at any time. A notice not sent after the completion event (pe = 0, only mutants send one) is not protected by strict.
\* Two branches:
\*  ok branch: success and lt = plan -> landed evidence, x leaves the ledger (then DLanded: flush, run); success with lt # plan goes to DBadLen.
\*  ~ok branch: not stop evidence (the failed-completion reading is settled by the conservative choice of SPEC): x stays in the ledger, pages holding x go to quarantine; a D record still waiting for it ends with an error.
\*        mutant nokFrees: treat ~ok as "stopped (failed)" evidence, x leaves the ledger (the old failure-handling behavior).
DRecvNotice(x) ==
  /\ Mode = "push" /\ PushEv = "notice" /\ xk[x] = "wr" /\ xst[x] = "posted" /\ alive[xd[x]]
  /\ \E m \in net :
       /\ m.t = "notice" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
       /\ (HOrder = "strict" /\ m.pe = 1) => hw[x] = "stop"
       /\ \/ /\ m.ok /\ (m.pg = xnt[x] \/ Mut = "ignoreLt")
             /\ xst' = [xst EXCEPT ![x] = "landed"]
             /\ EvidenceAt(xdst[x], x)
             /\ UNCHANGED <<ph, drep, net>>
          \/ /\ ~m.ok /\ Mut = "nokFrees"
             /\ xst' = [xst EXCEPT ![x] = "failed"]
             /\ EvidenceAt(xdst[x], x)
             /\ UNCHANGED <<ph, drep, net>>
          \/ /\ ~m.ok /\ Mut # "nokFrees"
             /\ pst[xdst[x]] \in {"priv", "drain"} /\ x \in led[xdst[x]]
             /\ PageTo((xdst[x]), "quar", xp[x], led[(xdst[x])], sled[(xdst[x])])
             /\ ph' = IF (Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]]=xg[x] /\ rx[xd[x]][xr[x]]=x) THEN [ph EXCEPT ![(xd[x])][(xr[x])] = "end"] ELSE ph
             /\ drep' = IF (Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]]=xg[x] /\ rx[xd[x]][xr[x]]=x) THEN [drep EXCEPT ![(xr[x])][xg[x]] = Bump(@)] ELSE drep
             /\ net' = IF (Active(xd[x],xr[x]) /\ rg[xd[x]][xr[x]]=xg[x] /\ rx[xd[x]][xr[x]]=x) THEN net \cup {Msg("reply", (xd[x]), 0, (xr[x]), xg[x], 0, 0, 0, FALSE)} ELSE net
             /\ UNCHANGED xst
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, iv, nx,
                 crep, dsucc, gbad>>

\* push exposer D's evidence (3): P promises x is never issued (nopost)
DRecvNopost(x) ==
  /\ Mode = "push" /\ xk[x] = "wr" /\ xst[x] = "posted" /\ alive[xd[x]]
  /\ \E m \in net : m.t = "nopost" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
  /\ xst' = [xst EXCEPT ![x] = "revoked"]
  /\ EvidenceAt(xdst[x], x)
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, iv, nx, net, ghV>>

\* pull exposer P's evidence: D's ReleaseSource(r, g, x) (D sends it only after its own completion event, or after promising not to read)
XRecvRel(x) ==
  /\ Mode = "pull" /\ xk[x] = "rd" /\ xst[x] = "posted" /\ alive[xp[x]]
  /\ \E m \in net :
       /\ m.t = "relsrc" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x]
       /\ xst' = [xst EXCEPT ![x] = IF m.ok THEN "landed" ELSE "failed"]
  /\ EvidenceAt(xsrc[x], x)
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, iv, nx, net, ghV>>

\* a local-stream op's event query is true (the record no longer waits for it): remove it from sled; a Draining page whose ledgers empty returns to Free
PagePoll(p) ==
  /\ alive[Loc(p)]
  /\ \E t \in sled[p] :
       /\ t \notin sfly[p]
       /\ ~(ph[Loc(p)][t[1]] \in {"pre", "run", "ovl"} /\ rg[Loc(p)][t[1]] = t[2])
       /\ LET ns == sled[p] \ {t} IN PageTo(p, AfterEv(p, led[p], ns), pqp[p], led[p], ns)
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, net, ghV>>

\* a Draining page that gets no remote evidence times out into quarantine (step-1 fallback: it never returns to Free afterwards)
DrainTimeout(p) ==
  /\ pst[p] = "drain" /\ led[p] # {} /\ alive[Loc(p)]
  /\ ~(IsD(Loc(p)) /\ NoDLD) /\ ~(IsP(Loc(p)) /\ NoDLP)
  \* decode growth and cancellation (PReg timeout fix; = DrainTimeoutC of registered-work cancellation): while a P page's ledger still holds a registered x (never handed to the transfer library), do not time out into quarantine:
  \*   the record has already ended normally (PRelease in reg; the real glue order is p_post -> release -> p_begin); this page's exit is PCancelReg (same enabling condition:
  \*   P alive, TOk(D)), so no exit is lost. Mutant drainTimeoutReg: time out as before
  /\ ~(IsP(Loc(p)) /\ \E x \in led[p] : iv[x] = "reg") \/ Mut = "drainTimeoutReg"
  /\ \E x \in led[p] :
       /\ TOk(PeerOf(x, p))
       /\ PageTo(p, IF Mut = "timeoutRelease" THEN "free" ELSE "quar", PeerOf(x, p), led[p], sled[p])
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, net, ghV>>


\* a Draining page whose ledgers are empty returns to Free (the implementation's "release when the count reaches zero" check). In the design ledgers become empty only in evidence actions, which already
\* return the page to Free atomically, so this action is never enabled in the design (inductive invariant PageStateConsistency: drain => nonempty ledger); mutant inflightResetOnReuse exposes inflight_counter_reuse through it
DrainDone(p) ==
  /\ pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {} /\ ~PinBlocks(p) /\ alive[Loc(p)]   \* KernelReadPins: pins count as in flight too
  /\ PageTo(p, "free", 0, {}, {})
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, net, ghV>>
\* evict a shared page: no references, no reads in flight
LegacyEvict(s) ==
  /\ pst[s] = "shared" /\ prefc[s] = 0 /\ led[s] = {} /\ sled[s] = {} /\ ~PinBlocks(s) /\ alive[Loc(s)]   \* KernelReadPins: a shared page being read by a kernel is not evicted
  /\ PageTo(s, "free", 0, {}, {})
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, net, ghV>>

\* ============================ peer faults ============================
Hang(i) ==
  /\ alive[i] /\ nfail < MaxFail
  /\ alive' = [alive EXCEPT ![i] = FALSE] /\ nfail' = nfail + 1
  /\ UNCHANGED <<rtV, torn, kV, recV, pgV, xV, net, ghV>>

\* a hung instance recovers and re-handshakes (sends hello); state is kept (it was only paused)
Resume(i) ==
  /\ ~alive[i]
  /\ alive' = [alive EXCEPT ![i] = TRUE]
  /\ net' = net \cup {Msg("hello", i, 0, 0, 0, 0, 0, 0, FALSE)}
  /\ UNCHANGED <<rtV, nfail, torn, kV, recV, pgV, xV, ghV>>

\* mutant unquarantineOnRehandshake: on seeing the peer re-handshake, return the pages quarantined for it to Free
RecvHello(j) ==
  /\ Mut = "unquarantineOnRehandshake" /\ alive[j]
  /\ \E m \in net, p \in Pages :
       /\ m.t = "hello" /\ m.fr # j /\ Loc(p) = j /\ pst[p] = "quar" /\ pqp[p] = m.fr
       /\ PageTo(p, "free", 0, {}, {})
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, net, ghV>>

\* Unquar (optional, step two, PeerAccessRevoked): j tears down all QPs to peer i (ERR/destroy, drain the CQ, clear the retry queue, refuse reconnects from i).
\* environment effect: all in-flight ops between j and i stop (fail, never land); later ops between them are all rejected (Torn)
Teardown(j, i) ==
  /\ Unquar /\ alive[j] /\ i \in Inst /\ i # j /\ i \notin torn[j]
  /\ \E p \in Pages : Loc(p) = j /\ pst[p] = "quar" /\ pqp[p] = i
  /\ torn' = [torn EXCEPT ![j] = @ \cup {i}]
  /\ LET K(x) == InFl(x) /\ {xp[x], xd[x]} = {i, j} IN
       /\ hw' = [x \in Xids |-> IF K(x) THEN "stop" ELSE hw[x]]
       /\ hok' = [x \in Xids |-> IF K(x) THEN FALSE ELSE hok[x]]
  /\ UNCHANGED <<rtV, alive, nfail, kV, recV, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, iv, xst, nx, net, ghV>>

\* Unquar: a quarantined page returns to Free once the peer it waits for, and the peer of every xfer in its ledger, have been torn down by this end; no local-stream ops
Unquarantine(p) ==
  /\ Unquar /\ pst[p] = "quar" /\ alive[Loc(p)]
  /\ pqp[p] \in torn[Loc(p)]
  /\ \A x \in led[p] : PeerOf(x, p) \in torn[Loc(p)]
  /\ sled[p] = {} /\ ~QPinBlocks(p)   \* KernelReadPins: a page being read by a kernel is not unquarantined (mutant kQuarRelUnderRead ignores this)
  /\ PageTo(p, "free", 0, {}, {})
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, net, ghV>>

\* ============================ environment: hardware and library ============================
\* the WRITE's src is fully read and the peer NIC acknowledged (the dst may not be placed yet)
HwIssue(x) ==
  /\ xk[x] = "wr" /\ hw[x] = "fly"
  /\ hw' = [hw EXCEPT ![x] = "issued"]
  \* the outcome is fixed once the src is read and the peer NIC acknowledges (under Faults it may be failure: a later slice errors while acknowledged bytes are still being placed)
  /\ \E ok \in (IF Faults THEN BOOLEAN ELSE {TRUE}) : hok' = [hok EXCEPT ![x] = ok]
  /\ UNCHANGED <<rtV, instV, recV, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, iv, xst, nx, net, ghV>>

Held(p, x) == pst[p] \in {"priv", "drain", "quar"} /\ pr[p] = xr[x] /\ pgn[p] = xg[x]

\* op stops: success (the dst page gets complete data) or failure (partial write, H-partial); landing on a page it does not own = corrupting someone else (ptl = -1)
HwStop(x) ==
  /\ hw[x] \in {"fly", "issued"}
  /\ \E ok \in (IF hw[x] = "issued" THEN {hok[x]} ELSE IF ~Faults THEN {TRUE} ELSE BOOLEAN) :
       /\ hw' = [hw EXCEPT ![x] = "stop"] /\ hok' = [hok EXCEPT ![x] = ok]
       /\ ptl' = [ptl EXCEPT ![xdst[x]] = IF Held(xdst[x], x) THEN (IF ok THEN xlt[x] ELSE 0) ELSE -1]   \* what lands is the lt tokens that x actually carries
       /\ pvis' = [pvis EXCEPT ![xdst[x]] = IF ok THEN HVisible = "narrow" ELSE @]
  /\ UNCHANGED <<rtV, instV, recV, pst, pr, pgn, plt, led, sfly, sled, prefc, pqp,
                 xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, iv, xst, nx, net, ghV>>

\* library returns failure or timeout (H-fail widest: the op may still be running and may later land on retry; the handle is dropped, no completion event is ever seen)
LibFailRet(x) ==
  /\ Faults /\ iv[x] = "posted"
  /\ alive[Loc(IF xk[x] = "wr" THEN xsrc[x] ELSE xdst[x])]
  /\ iv' = [iv EXCEPT ![x] = "failret"]
  /\ UNCHANGED <<rtV, instV, recV, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, xst, nx, net, ghV>>

\* local-stream op completes: P's prefill writes Len tokens; landing on a page it does not own = corrupting someone else
StreamLand(p) ==
  /\ \E t \in sfly[p] : \E n \in PLens(t[1], t[2]) :
       /\ sfly' = [sfly EXCEPT ![p] = @ \ {t}]
       \* P's prefill writes n tokens (with BadLen off n = NTok; with it on n may be one less: P's input disagrees with D's plan)
       /\ ptl' = [ptl EXCEPT ![p] =
              IF pst[p] \in {"priv", "drain", "quar"} /\ pr[p] = t[1] /\ pgn[p] = t[2]
              THEN (IF IsP(Loc(p)) THEN n ELSE ptl[p])
              ELSE IF pst[p] = "shared" /\ IsD(Loc(p)) THEN ptl[p] ELSE -1]
  /\ UNCHANGED <<rtV, instV, recV, pst, pr, pgn, plt, pvis, led, sled, prefc, pqp, xV, net, ghV>>


\* ============================ branches for source-release ordering / transfer-length consistency ============================
\* source-release ordering (switch PRel): P's request ends normally while its x has not stopped (glue: release right after p_post; pull: after expose).
\* the src page goes to Drain(h) by its ledger (x still in the ledger) and returns to Free only via Cqe (transfer completion, push) / ReleaseSource (pull), or goes to quarantine via PDrainLibFail
\* (PLibFail rule) or DrainTimeout. Sends no message (Cqe sends the notice as usual). Mutant pReleaseFree: release the src page directly.
PRelease(i, r) ==
  /\ PRel /\ IsP(i) /\ alive[i]
  /\ \/ ph[i][r] = "sent" /\ iv[rx[i][r]] = "posted"
     \/ ph[i][r] = "reg" /\ iv[rx[i][r]] = "reg"     \* PReg: glue releases after p_post and before p_begin (trace conformance round 2: all 2,453 requests had this order)
     \/ ph[i][r] = "exp" /\ xst[rx[i][r]] = "posted"
  /\ LET p == rpg[i][r] IN
       /\ ph' = [ph EXCEPT ![i][r] = "end"]
       /\ PageTo(p, IF Mut = "pReleaseFree" THEN "free" ELSE GiveUpTo(p, "done"), rpe[i][r], led[p], sled[p])
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xV, net, ghV>>

\* source-release ordering: the PLibFail rule applied to a src page whose request has ended: the library returns failure or timeout for x (not stop evidence) -> src page to quarantine, tell D
PDrainLibFailBroken(p) ==
  /\ PRel /\ IsP(Loc(p)) /\ alive[Loc(p)] /\ pst[p] = "drain"
  /\ \E x \in led[p] :
       /\ xk[x] = "wr" /\ xsrc[x] = p /\ iv[x] = "failret"
       /\ PageTo(p, "free", 0, {}, {})
               /\ net' = net \cup {Msg("notice", Loc(p), xd[x], xr[x], xg[x], x, xlt[x], 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, ghV>>


PDrainLibFailSafe(p) ==
  /\ PRel /\ IsP(Loc(p)) /\ alive[Loc(p)] /\ pst[p] = "drain"
  /\ \E x \in led[p] :
       /\ xk[x] = "wr" /\ xsrc[x] = p /\ iv[x] = "failret"
       /\ PageTo(p, GiveUpTo(p, "timeout"), xd[x], led[p], sled[p])
               /\ net' = net \cup {Msg("abort", Loc(p), xd[x], xr[x], xg[x], 0, 0, 0, FALSE)}
  /\ UNCHANGED <<rtV, instV, recV, ptl, pvis, sfly, xV, ghV>>


PDrainLibFail(p) == IF Mut = "failedAsDrained" THEN PDrainLibFailBroken(p) ELSE PDrainLibFailSafe(p)

\* transfer-length consistency (push, corrected): D gets a "stopped, successful, but lt # plan" message (lt of a success notice or of an in-band completion): the data is unusable (BAD_LEN).
\* the notice is sent only after Cqe (in-band completion appears only after placement), so it is stop evidence: x leaves the ledger; a D record still waiting for it ends with an error,
\* the page returns to Free (Drain if sled is nonempty); an ended record's page (Drain) returns to Free when its ledgers empty. No quarantine.
\* mutant ignoreLt: D does not do this check (DRecvNotice and DInband accept everything; this action is not enabled).
DBadLen(x) ==
  /\ Mode = "push" /\ xk[x] = "wr" /\ xst[x] = "posted" /\ alive[xd[x]] /\ Mut # "ignoreLt"
  /\ pst[xdst[x]] \in {"priv", "drain"} /\ x \in led[xdst[x]]
  /\ \/ /\ PushEv = "notice"
        /\ \E m \in net : /\ m.t = "notice" /\ m.x = x /\ m.r = xr[x] /\ m.g = xg[x] /\ m.ok /\ m.pg # xnt[x]
                          /\ (HOrder = "strict" /\ m.pe = 1) => hw[x] = "stop"
     \/ PushEv = "inband" /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] # xnt[x]
  /\ xst' = [xst EXCEPT ![x] = "failed"]
  /\ LET q == xdst[x]
         j == xd[x]
         r == xr[x]
         live == Active(j, r) /\ rg[j][r] = xg[x] /\ rx[j][r] = x
         nl == led[q] \ {x}
     IN IF live
        THEN /\ ph' = [ph EXCEPT ![j][r] = "end"]
             /\ drep' = [drep EXCEPT ![r][xg[x]] = Bump(@)]
             /\ net' = net \cup {Msg("reply", j, 0, r, xg[x], 0, 0, 0, FALSE)}
             /\ PageTo(q, IF nl = {} /\ sled[q] = {} /\ ~PinBlocks(q) THEN "free" ELSE "drain", 0, nl, sled[q])
        ELSE /\ EvidenceAt(q, x)
             /\ UNCHANGED <<ph, drep, net>>
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, iv, nx,
                 crep, dsucc, gbad>>

\* transfer-length consistency (pull): lt in sinfo # D's plan: D issues no READ, ends with an error, replies ReleaseSource (promise never to read); the dst page ledger is empty, back to Free
DSinfoBadLen(j, r) ==
  /\ Mode = "pull" /\ IsD(j) /\ alive[j] /\ ph[j][r] = "wait" /\ Mut # "ignoreLt"
  /\ led[rpg[j][r]] = {} /\ sled[rpg[j][r]] = {}
  /\ \E m \in net :
       /\ m.t = "sinfo" /\ m.to = j /\ m.r = r /\ m.g = rg[j][r] /\ m.x \in Xids /\ iv[m.x] = "none"
       /\ m.pe # NTok(r, rg[j][r])
       /\ iv' = [iv EXCEPT ![m.x] = "nopost"]
       /\ net' = net \cup {Msg("relsrc", j, m.fr, r, m.g, m.x, 0, 0, FALSE), Msg("reply", j, 0, r, m.g, 0, 0, 0, FALSE)}
  /\ ph' = [ph EXCEPT ![j][r] = "end"]
  /\ PageTo(rpg[j][r], FreeOrDrain(rpg[j][r]), 0, {}, {})
  /\ drep' = [drep EXCEPT ![r][rg[j][r]] = Bump(@)]
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt,
                 hw, hok, xst, nx, crep, dsucc, gbad>>
\* ============================ P registration / submit split (switch PReg) ============================
\* glue: p_post (ledger.py) registers the outgoing entry as POSTED and the src page is pinned by pops (2, eid); the scheduler then releases
\* (prefill.py; P's record ends in on_prefill_done); the worker's p_begin (ledger.py, prefill.py)
\* moves POSTED -> SUBMITTED before calling the transfer library; if an abort / peer loss has already cancelled the entry (CANCELLED) it returns False and does not call the library.
\* PSubmit(x) = p_begin returns True: only from here on can the WRITE be in flight. Mutant noticeBeforeCompletion sends the notice here under PReg.
PSubmit(x) ==
  /\ PReg /\ xk[x] = "wr" /\ iv[x] = "reg" /\ alive[xp[x]]
  /\ iv' = [iv EXCEPT ![x] = "posted"]
  /\ hw' = [hw EXCEPT ![x] = IF Torn(x) THEN "stop" ELSE "fly"] /\ hok' = [hok EXCEPT ![x] = FALSE]
  /\ LET i == xp[x]
         r == xr[x]
     IN ph' = IF ph[i][r] = "reg" /\ rg[i][r] = xg[x] /\ rx[i][r] = x THEN [ph EXCEPT ![i][r] = "sent"] ELSE ph
  /\ net' = IF Mut = "noticeBeforeCompletion"
            THEN net \cup {Msg("notice", xp[x], xd[x], xr[x], xg[x], x, xlt[x], 0, TRUE)} ELSE net
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, pgV, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, xst, nx, ghV>>

\* a registered, not yet submitted entry is cancelled (p_abort finding POSTED -> CANCELLED + ACK, ledger.py; peer loss: peer_lost / p_begin
\* finding the peer gone, ledger.py): the stop evidence is "never submitted" (P's own queue, like nopost / the never-posted evidence on the D side). x leaves the src page ledger,
\* reply nopost (= ABORT_ACK) to D; if P's record is still live it ends with an error. Mutant cancelSubmitted: also release submitted entries (WRITE may be in flight) this way
PCancelReg(x) ==
  /\ PReg /\ xk[x] = "wr" /\ alive[xp[x]]
  /\ iv[x] = "reg" \/ (Mut = "cancelSubmitted" /\ iv[x] = "posted")
  /\ \/ \E m \in net : m.t = "revoke" /\ m.x = x /\ m.to = xp[x]
     \/ TOk(xd[x])
  /\ iv' = [iv EXCEPT ![x] = "nopost"]
  /\ net' = net \cup {Msg("nopost", xp[x], xd[x], xr[x], xg[x], x, 0, 0, FALSE)}
  /\ LET p == xsrc[x]
         i == xp[x]
         r == xr[x]
         live == ph[i][r] \in {"reg", "sent"} /\ rg[i][r] = xg[x] /\ rx[i][r] = x
         nl == led[p] \ {x}
     IN IF live
        THEN /\ ph' = [ph EXCEPT ![i][r] = "end"]
             /\ PageTo(p, IF nl = {} /\ sled[p] = {} /\ ~PinBlocks(p) THEN "free" ELSE "drain", 0, nl, sled[p])
        ELSE /\ EvidenceAt(p, x)
             /\ UNCHANGED ph
  /\ UNCHANGED <<rtV, instV, rg, rpg, rpe, rx, rhit, ptl, pvis, sfly, xr, xg, xk, xp, xd, xsrc, xdst, xnt, xlt, hw, hok, xst, nx, ghV>>

\* ============================ decode growth and cancellation: D adds pages while decoding (decode growth) ============================
\* glue: before launch, every decode step that crosses a page (Scheduler._prepare_batch, scheduler/scheduler.py) calls
\* LedgerCacheManager.allocate_paged (disagg/scheduler_pd.py) -> ledger.alloc(gen, last_page - first_page); in the overlap loop
\* the previous step is still running on the GPU at this point (overlap_loop calls _schedule_next_batch before _process_last_data, scheduler.py).
\* core: alloc_en = owner R_LIVE /\ d_alloc_ok (D: not yet exposed, or x already X_VISIBLE; local.rs alloc_en / d_alloc_ok, ledger lifecycle rule;
\* that is: the record is in run, so x is VISIBLE and the owner LIVE). The "not yet exposed" branch is the first half of DRecvReq (pre-exposure allocation); the after-expose branch in PdCore
\* means the record is committed: run / ovl (after DLanded / DReadDone, flushed; a hit record has no x and is likewise in run / ovl). The core does not distinguish run and ovl
\* (no decode op tag, decode-step accounting), so ovl also grows pages. One call takes a set of free pages (the core's got), all become Priv(r, g): write progress 0 (no step has written them yet),
\* not exposed, not in the RDMA / local-stream ledgers (a free page's ledgers are already empty, PageStateConsistency).
\* mutant growNoRun: grow pages even before the record is committed (wait / rd); growNonFree: taken pages need not be free (only not this record's own pages)
DGrow(j, r) ==
  /\ IsD(j) /\ alive[j]
  /\ IF Mut = "growNoRun" THEN Active(j, r) ELSE ph[j][r] \in {"run", "ovl"}
  /\ \E Q \in SUBSET Pages :
       /\ Q # {}
       /\ \A q \in Q : /\ Loc(q) = j /\ q # rpg[j][r] /\ ~(pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = rg[j][r])
                       /\ pst[q] = "free" \/ Mut = "growNonFree"
       /\ pst' = [p \in Pages |-> IF p \in Q THEN "priv" ELSE pst[p]]
       /\ pr' = [p \in Pages |-> IF p \in Q THEN r ELSE pr[p]]
       /\ pgn' = [p \in Pages |-> IF p \in Q THEN rg[j][r] ELSE pgn[p]]
       /\ plt' = [p \in Pages |-> IF p \in Q THEN 0 ELSE plt[p]]
       /\ ptl' = [p \in Pages |-> IF p \in Q THEN 0 ELSE ptl[p]]
       /\ pvis' = [p \in Pages |-> IF p \in Q THEN FALSE ELSE pvis[p]]
  /\ UNCHANGED <<rtV, instV, recV, led, sfly, sled, prefc, pqp, xV, net, ghV>>

\* ============================ KernelReadPins: kernel reads (launch check, one pin per step, step completion) ============================
\* the core's launch check: may this step read row r on instance i (looks only at the core's own state; corresponds to launch in glue ledger.py, KernelReadPins (2) moved into the core)
\*   D non-hit: record committed (run / ovl: after landed evidence and after the flush in DStartRun), page is Priv(r, g), RDMA ledger empty, lt = plan;
\*   D hit: the mapped shared page (sealed = full page landed);
\*   P: the prefill write of its own generation has reached stream completion (after PPoll: ready / reg / sent / exp), page is Priv(r, g). PrefixSharing adds the P-side shared prefix pages.
KRowOK(i, r) ==
  LET g == rg[i][r]
      p == rpg[i][r]
      x == rx[i][r]
  IN /\ Active(i, r) /\ p \in Pages
     /\ IF IsD(i)
        THEN \/ ph[i][r] \in {"run", "ovl"} /\ rhit[i][r] /\ pst[p] = "shared"
             \/ /\ ph[i][r] \in {"run", "ovl"} /\ ~rhit[i][r]
                /\ pst[p] = "priv" /\ pr[p] = r /\ pgn[p] = g /\ led[p] = {} /\ plt[p] = NTok(r, g)
             \/ /\ Mut = "kLaunchUnflushed" /\ ph[i][r] \in {"wait", "rd"} /\ x \in Xids   \* landed evidence has arrived, not yet flushed
                /\ IF Mode = "push" THEN xst[x] = "landed" ELSE (iv[x] = "cqe" /\ hok[x])
                /\ pst[p] = "priv" /\ pr[p] = r /\ pgn[p] = g
             \/ /\ Mut = "kLaunchUnlanded" /\ ph[i][r] \in {"wait", "rd"}                 \* x not yet stopped
                /\ pst[p] = "priv" /\ pr[p] = r /\ pgn[p] = g
        ELSE \/ /\ ph[i][r] \in {"ready", "reg", "sent", "exp"}
                /\ pst[p] = "priv" /\ pr[p] = r /\ pgn[p] = g /\ Tag(r, g) \notin sled[p]
             \/ /\ Mut = "kLaunchUnlanded" /\ ph[i][r] = "pre"                          \* prefill write has no stream completion yet
                /\ pst[p] = "priv" /\ pr[p] = r /\ pgn[p] = g
\* an element of the read set: the page the core computes for h = (r, g) (indices / indptr / last_page_len are computed by the core, glue only copies them)
\* @type: (Int, Int) => <<Int, Int, Int, Int>>;
KEnt(i, r) == <<r, rg[i][r], rpg[i][r], IF rhit[i][r] THEN 1 ELSE 0>>

\* decode growth and cancellation (DGrow): a row's read set = all pages of this generation on this instance (as the core launch's rlp = page count of this generation): the record's mapped page (KEnt),
\*   plus every grown page. Grown-page elements come in two kinds by write progress before launch (4th field sh): 2 = read it (an earlier step wrote it: plt >= 1, the core's
\*   rd <= max(rwr, rla)); 3 = this step does not read it (no step has written it: this step writes it, or does not touch it). Mutant kReadUnwritten: read unwritten ones as 2 too
GrownRows(i, rows) == {q \in Pages : IsD(i) /\ Loc(q) = i /\ pst[q] = "priv" /\ \E r \in rows : pr[q] = r /\ pgn[q] = rg[i][r] /\ q # rpg[i][r]}
\* @type: Int => <<Int, Int, Int, Int>>;
KGEnt(q) == <<pr[q], pgn[q], q, IF plt[q] >= 1 \/ Mut = "kReadUnwritten" THEN 2 ELSE 3>>

\* launch a step (rows nonempty): check every row, record the read set, pin (kpin), the GPU starts reading (kfly). Which rows the scheduler picks is untrusted policy (universally quantified).
\* decode growth and cancellation: this step writes a subset W of the grown pages no step has written yet (those covered by the store write range [rd, wr); chosen by the scheduler, universally quantified): records plt = 1 (core
\*   rla); the ground truth ptl = 1 is also recorded at launch: by StreamFIFO (in-stream FIFO), when any later step on this instance starts reading, this step's store has completed, and this step's own
\*   attention reads after its own store (kernel argument contract (e)). Mutant kGrowNoFifo: the write lands only at this step's KLand; kReadUnwritten: no write
KLaunch(i, s, rows) ==
  /\ alive[i] /\ ~kpin[i][s] /\ ~kfly[i][s]
  /\ rows # {} /\ \A r \in rows : KRowOK(i, r) /\ (IF PrefixSharing /\ IsP(i) THEN SRowReady(i, r) ELSE TRUE)
  /\ kpin' = [kpin EXCEPT ![i][s] = TRUE] /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
  /\ LET GR == GrownRows(i, rows) IN
       /\ krs' = [krs EXCEPT ![i][s] = {KEnt(i, r) : r \in rows} \cup {KGEnt(q) : q \in GR} \cup SRows(i, rows)]
       /\ \E W \in SUBSET {q \in GR : plt[q] = 0} :
            /\ Mut = "kReadUnwritten" => W = {}
            /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
            /\ ptl' = [p \in Pages |-> IF p \in W /\ Mut # "kGrowNoFifo" THEN 1 ELSE ptl[p]]
  /\ UNCHANGED <<rtV, alive, nfail, torn, recV, pst, pr, pgn, pvis, led, sfly, sled, prefc, pqp, xV, net, ghV>>

\* mutant kWrongGen: the check finds the page by room (pr = r) without checking generation; the read set records the row's current generation
KLaunchWG(i, s, r, p) ==
  /\ Mut = "kWrongGen" /\ alive[i] /\ ~kpin[i][s] /\ ~kfly[i][s]
  /\ Active(i, r) /\ ~rhit[i][r] /\ ph[i][r] \in (IF IsD(i) THEN {"run", "ovl"} ELSE {"ready", "reg", "sent", "exp"})
  /\ Loc(p) = i /\ pst[p] \in {"priv", "drain", "quar"} /\ pr[p] = r
  /\ ~(pst[p] = "priv" /\ pgn[p] = rg[i][r] /\ p # rpg[i][r])   \* decode growth and cancellation: this generation's own grown pages are not among this mutant's choices (KLaunch reads them by sh 2 / 3)
  /\ IF IsD(i) THEN led[p] = {} /\ plt[p] = NTok(r, pgn[p]) ELSE sled[p] = {}
  /\ kpin' = [kpin EXCEPT ![i][s] = TRUE] /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
  /\ krs' = [krs EXCEPT ![i][s] = {<<r, rg[i][r], p, 0>>}]
  /\ UNCHANGED <<rtV, alive, nfail, torn, recV, pgV, xV, net, ghV>>

\* environment (KernelCompletion): the GPU finishes this step (a hung instance's GPU still finishes). The read set is cleared only when the pin is also gone (after mutant kDoneEarly)
KLand(i, s) ==
  /\ kfly[i][s]
  /\ kfly' = [kfly EXCEPT ![i][s] = FALSE]
  /\ krs' = IF kpin[i][s] THEN krs ELSE [krs EXCEPT ![i][s] = {}]
  \* mutant kGrowNoFifo: the grown pages this step writes (sh = 3, plt = 1 already recorded) land only when the GPU finishes (in the design they land at launch: StreamFIFO)
  /\ ptl' = IF Mut = "kGrowNoFifo"
            THEN [p \in Pages |-> IF \E e \in krs[i][s] : /\ e[3] = p /\ e[4] = 3 /\ plt[p] = 1
                                                          /\ pst[p] \in {"priv", "drain"} /\ pr[p] = e[1] /\ pgn[p] = e[2]
                                  THEN 1 ELSE ptl[p]]
            ELSE ptl
  /\ UNCHANGED <<rtV, alive, nfail, torn, kpin, recV, pst, pr, pgn, plt, pvis, led, sfly, sled, prefc, pqp, xV, net, ghV>>

\* this step's event query is true (stream completion, = core step_done(step)): unpin; Drain pages in the read set whose ledgers are empty and that no other step pins return to Free atomically
\* (= glue complete -> _try_free). Mutant kDoneEarly: do not wait for the event; kDoneNeedsNext: handle it only when another step has been launched
KDone(i, s) ==
  /\ alive[i] /\ kpin[i][s] /\ (~kfly[i][s] \/ Mut = "kDoneEarly")
  /\ Mut = "kDoneNeedsNext" => \E s2 \in KSlots : s2 # s /\ kpin[i][s2]
  /\ LET kp2 == [kpin EXCEPT ![i][s] = FALSE]
         RS == {e[3] : e \in krs[i][s]}
         PinnedAfterStep(p) ==
                    \E s2 \in KSlots : kp2[i][s2] /\ \E e \in krs[i][s2] : e[3] = p
         Fr(p) == p \in RS /\ pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {} /\ ~(PinnedAfterStep(p) /\ Mut # "kFreeUnderRead")
     IN /\ kpin' = kp2
        /\ krs' = IF kfly[i][s] THEN krs ELSE [krs EXCEPT ![i][s] = {}]
        /\ pst' = [p \in Pages |-> IF Fr(p) THEN "free" ELSE pst[p]]
        /\ pr' = [p \in Pages |-> IF Fr(p) THEN 0 ELSE pr[p]]
        /\ pgn' = [p \in Pages |-> IF Fr(p) THEN 0 ELSE pgn[p]]
        /\ plt' = [p \in Pages |-> IF Fr(p) THEN 0 ELSE plt[p]]
        /\ pqp' = [p \in Pages |-> IF Fr(p) THEN 0 ELSE pqp[p]]
  /\ UNCHANGED <<rtV, alive, nfail, torn, kfly, recV, ptl, pvis, led, sfly, sled, prefc, xV, net, ghV>>

\* ================= PrefixSharing joint prefix actions =================
PHit(i, r, p) ==
  /\ PrefixSharing /\ alive[i] /\ ph[i][r] \in {"pre","ready"} /\ ~schoice[i][r]
  /\ Loc(p) = i /\ spst[p] = "shared" /\ skey[p] = STok(r, rg[i][r])
  /\ smap' = [smap EXCEPT ![i][r] = p] /\ schoice' = [schoice EXCEPT ![i][r] = TRUE]
  /\ rpgS' = rpgS \cup {SH(i,r,rg[i][r],p)}
  /\ sprefc' = [sprefc EXCEPT ![p] = @ + (IF Mut = "hitNoRef" THEN 0 ELSE 1)]
  /\ hitSeen' = TRUE
  /\ UNCHANGED <<basevars, spst,sown,sgen,skey,swrite,sdata,sready,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,dedupSeen>>
PNoPrefix(i,r) ==
  /\ PrefixSharing /\ alive[i] /\ ph[i][r] \in {"pre","ready"} /\ ~schoice[i][r]
  /\ schoice' = [schoice EXCEPT ![i][r] = TRUE]
  /\ UNCHANGED <<basevars, spst,sown,sgen,skey,swrite,sdata,sready,sprefc,smap,rpgS,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
PAllocPrefix(i,r,p) ==
  /\ PrefixSharing /\ alive[i] /\ ph[i][r] \in {"pre","ready"} /\ ~schoice[i][r]
  /\ Loc(p) = i /\ spst[p] = "free"
  /\ smap' = [smap EXCEPT ![i][r] = p] /\ schoice' = [schoice EXCEPT ![i][r] = TRUE]
  /\ spst' = [spst EXCEPT ![p] = "priv"] /\ sown' = [sown EXCEPT ![p] = r] /\ sgen' = [sgen EXCEPT ![p] = rg[i][r]]
  /\ skey' = [skey EXCEPT ![p] = STok(r,rg[i][r])]
  /\ swrite' = [swrite EXCEPT ![p] = TRUE] /\ sdata' = [sdata EXCEPT ![p] = FALSE] /\ sready' = [sready EXCEPT ![p] = FALSE]
  /\ UNCHANGED <<basevars,sprefc,rpgS,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
SPrefixLand(p) ==
  /\ PrefixSharing /\ swrite[p]
  /\ swrite' = [swrite EXCEPT ![p] = FALSE]
  /\ sdata' = [sdata EXCEPT ![p] = spst[p] \in {"priv","drain","quar"}]
  /\ UNCHANGED <<basevars,spst,sown,sgen,skey,sready,sprefc,smap,schoice,rpgS,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
SPrefixPoll(p) ==
  /\ PrefixSharing /\ alive[Loc(p)] /\ ~swrite[p] /\ ~sready[p] /\ spst[p] \in {"priv","drain"}
  /\ sready' = [sready EXCEPT ![p] = TRUE]
  /\ spst' = [spst EXCEPT ![p] = IF @ = "drain" /\ ~SPin(p) /\ ~(\E x \in sentry : p \in xsrcP[x]) THEN "free" ELSE @]
  /\ UNCHANGED <<basevars,sown,sgen,skey,swrite,sdata,sprefc,smap,schoice,rpgS,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
PSeal(i,r) ==
  /\ PrefixSharing /\ alive[i] /\ ph[i][r] \in {"pre","ready"} /\ schoice[i][r]
  /\ LET p == smap[i][r] IN
       /\ p \in SPages /\ spst[p] = "priv" /\ (sready[p] \/ Mut = "sealUnwritten")
       /\ spst' = [spst EXCEPT ![p] = "shared"]
       /\ rpgS' = rpgS \cup {SH(i,r,rg[i][r],p)}
       /\ sprefc' = [sprefc EXCEPT ![p] = @ + 1]
  /\ UNCHANGED <<basevars,sown,sgen,skey,swrite,sdata,sready,smap,schoice,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
PDedup(i,r,q) ==
  /\ PrefixSharing /\ alive[i] /\ schoice[i][r]
  /\ ph[i][r] \in {"pre","ready"} \/ (Mut = "postBeforeDedup" /\ ph[i][r] \in {"reg","sent"})
  /\ LET p == smap[i][r] IN
       /\ p \in SPages /\ spst[p] = "priv" /\ sready[p]
       /\ Loc(q) = i /\ spst[q] = "shared" /\ skey[q] = skey[p]
       /\ smap' = IF Mut = "dedupNoRemap" THEN smap ELSE [smap EXCEPT ![i][r] = q]
       /\ spst' = [spst EXCEPT ![p] = IF SPin(p) THEN "dup" ELSE "free"]
       /\ rpgS' = rpgS \cup {SH(i,r,rg[i][r],q)}
       /\ sprefc' = [sprefc EXCEPT ![q] = @ + 1]
  /\ dedupSeen' = TRUE
  /\ UNCHANGED <<basevars,sown,sgen,skey,swrite,sdata,sready,schoice,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen>>
SEvict(p) ==
  /\ PrefixSharing /\ spst[p] = "shared" /\ sprefc[p] = 0 /\ alive[Loc(p)]
  /\ spst' = [spst EXCEPT ![p] = "free"]
  /\ UNCHANGED <<basevars,sown,sgen,skey,swrite,sdata,sready,sprefc,smap,schoice,rpgS,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
\* Destructive cache reset has the same guard as repeated evict. Mutant drops entry and quarantine holders.
FlushAll(i) ==
  /\ PrefixSharing /\ alive[i]
  /\ \E p \in SPages : Loc(p)=i /\ spst[p]="shared"
  /\ \A p \in SPages : (Loc(p)=i /\ spst[p]="shared") =>
       IF Mut="flushIgnoresEntries" THEN SRefR(rpgS,p)=0 ELSE sprefc[p]=0
  /\ spst' = [p \in SPages |-> IF Loc(p)=i /\ spst[p]="shared" THEN "free" ELSE spst[p]]
  /\ UNCHANGED <<basevars,sown,sgen,skey,swrite,sdata,sready,sprefc,smap,schoice,rpgS,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
SBadUnref(i,r,p) ==
  /\ PrefixSharing /\ alive[i] /\ spst[p]="shared" /\ Loc(p)=i
  /\ \/ Mut="doubleRelease" /\ ph[i][r]="end" /\ smap[i][r]=p /\ SH(i,r,rg[i][r],p) \notin rpgS
     \/ Mut="unrefWrongHolder" /\ Active(i,r) /\ schoice[i][r] /\ smap[i][r]=0 /\ sprefc[p]>0
  /\ sprefc' = [sprefc EXCEPT ![p]=@-1]
  /\ UNCHANGED <<basevars,spst,sown,sgen,skey,swrite,sdata,sready,smap,schoice,rpgS,xsrcS,xsrcP,sentry,squar,xprefixOK,dpreOK,hitSeen,dedupSeen>>
\* Every base transition has this simultaneous extension. Counts change by holder deltas,
\* rather than being overwritten with the desired invariant.
SFollow == IF ~PrefixSharing THEN UNCHANGED sV ELSE
  LET New(i,r) == rg'[i][r] # rg[i][r]
      \* @type: <<Int, Int, Int, Int>> => Bool;
      HPin(h) == \E k \in KSlots : kpin'[h[1]][k] /\ \E e \in krs'[h[1]][k] : e[1]=h[2] /\ e[2]=h[3] /\ e[3]=h[4]
      \* @type: <<Int, Int, Int, Int>> => Bool;
      HLive(h) == rg'[h[1]][h[2]]=h[3] /\ ph'[h[1]][h[2]] \notin {"none","end"}
      \* @type: Int => Set(<<Int, Int, Int, Int>>);
      RemainingRequestHolders(unused) ==
                    {h \in rpgS : HLive(h) \/ (HPin(h) /\ Mut # "unrefBeforeKDone")}
      Posted(x) == xsrc'[x] \in Pages /\ xsrc[x]=0
      Src(x) == IF Posted(x) THEN smap[xp'[x]][xr'[x]] ELSE 0
      \* @type: Int => Int -> Set(Int);
      SX(unused) == [x \in Xids |-> IF Posted(x) THEN (IF Src(x) \in SPages /\ spst[Src(x)]="shared" THEN {Src(x)} ELSE {}) ELSE xsrcS[x]]
      \* @type: Int => Int -> Set(Int);
      PX(unused) == [x \in Xids |-> IF Posted(x) THEN (IF Src(x) \in SPages /\ spst[Src(x)]="priv" THEN {Src(x)} ELSE {}) ELSE xsrcP[x]]
      Close(x) == IF xk[x]="wr" THEN iv'[x] \in {"cqe","nopost"} ELSE xst'[x] \in {"landed","failed"}
      Quarantine(x) == x \in sentry /\ ~Close(x) /\
          ((xk[x]="wr" /\ iv'[x]="failret") \/ (xsrc[x] \in Pages /\ pst'[xsrc[x]]="quar"))
      \* @type: Int => Set(Int);
      RemainingTransferEntries(unused) ==
                    (sentry \cup {x \in Xids : Posted(x)}) \ {x \in Xids : Close(x) \/ Quarantine(x)}
      \* @type: Int => Set(<<Int, Int>>);
      NextQuarantineHolders(unused) ==
                    squar \cup (IF Mut="sharedFailUnref" THEN {} ELSE
                        UNION {{<<x,p>> : p \in xsrcS[x]} : x \in {x \in Xids : Quarantine(x)}})
      Ended(p) == spst[p]="priv" /\ sown[p] \in Rq /\
         (rg'[Loc(p)][sown[p]] # sgen[p] \/ ph'[Loc(p)][sown[p]]="end")
      PinnedAfterStep(p) ==
                    \E i \in PInst,k \in KSlots : kpin'[i][k] /\ \E e \in krs'[i][k] : e[3]=p
      Drop(p) == (Ended(p) \/ spst[p] \in {"drain","dup"}) /\ ~PinnedAfterStep(p) /\ sready[p] /\ ~(\E x \in RemainingTransferEntries(0) : p \in PX(0)[x])
      Valid(x) == \A p \in xsrcS[x] \cup xsrcP[x] :
         spst[p] \in {"priv","shared","drain","quar"} /\ sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])
  IN /\ rpgS'=RemainingRequestHolders(0) /\ xsrcS'=SX(0) /\ xsrcP'=PX(0) /\ sentry'=RemainingTransferEntries(0) /\ squar'=NextQuarantineHolders(0)
     /\ sprefc'=[p \in SPages |-> sprefc[p]+SRefR(RemainingRequestHolders(0),p)-SRefR(rpgS,p)
                         +SRefE(RemainingTransferEntries(0),SX(0),p)-SRefE(sentry,xsrcS,p)+SRefQ(NextQuarantineHolders(0),p)-SRefQ(squar,p)]
     /\ smap'=[i \in PInst |-> [r \in Rq |-> IF New(i,r) THEN 0 ELSE smap[i][r]]]
     /\ schoice'=[i \in PInst |-> [r \in Rq |-> IF New(i,r) THEN FALSE ELSE schoice[i][r]]]
     /\ spst'=[p \in SPages |-> IF \E x \in Xids : Quarantine(x) /\ p \in xsrcP[x] THEN "quar"
                         ELSE IF Drop(p) THEN "free" ELSE IF Ended(p) THEN "drain" ELSE spst[p]]
     /\ xprefixOK'=[x \in Xids |-> IF hw[x]="fly" /\ hw'[x] \in {"issued","stop"} THEN Valid(x) ELSE xprefixOK[x]]
     /\ dpreOK'=[p \in Pages |-> IF \E x \in Xids : xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop"
                         THEN \A x \in Xids : (xdst[x]=p /\ hw[x] \in {"fly","issued"} /\ hw'[x]="stop") =>
                               (IF hw[x]="issued" THEN xprefixOK[x] ELSE Valid(x))
                         ELSE IF pst'[p]="priv" /\ pst[p]="free" THEN FALSE ELSE dpreOK[p]]
     /\ UNCHANGED <<sown,sgen,skey,swrite,sdata,sready,hitSeen,dedupSeen>>
SNext ==
  \/ \E i \in PInst,r \in Rq : PNoPrefix(i,r) \/ PSeal(i,r) \/
       (\E p \in SPages : PHit(i,r,p) \/ PAllocPrefix(i,r,p) \/ PDedup(i,r,p) \/ SBadUnref(i,r,p))
  \/ \E p \in SPages : SPrefixLand(p) \/ SPrefixPoll(p) \/ SEvict(p)
  \/ \E i \in PInst : FlushAll(i)
Evict(p) == LegacyEvict(p)

\* legal final state: the router has no waiting requests, generations are used up, no live records on live instances, no in-flight ops (KernelReadPins: no running steps, no pins on live instances;
\* PReg: no entries registered but not yet submitted)
Done ==
  /\ \A r \in Rq : rt[r] # "wait" /\ gen[r] = MG
  /\ \A i \in Inst, r \in Rq : alive[i] => ~Active(i, r)
  /\ \A x \in Xids : hw[x] \notin {"fly", "issued"} /\ iv[x] # "reg"
  /\ \A i \in Inst, s \in KSlots : ~kfly[i][s] /\ (alive[i] => ~kpin[i][s])
  /\ UNCHANGED basevars

BaseNext ==
  \/ \E r \in Rq : \/ \E i \in PInst, j \in DInst : Arrive(r, i, j)
                   \/ RTimeout(r) \/ RRecvReply(r)
  \/ \E i \in Inst, r \in Rq :
       \/ PRecvReq(i, r) \/ PPoll(i, r) \/ PPost(i, r) \/ PSentDone(i, r) \/ PSentFail(i, r)
       \/ PExpose(i, r) \/ PExpDone(i, r) \/ PAbort(i, r) \/ PTimeout(i, r)
       \/ DRecvReq(i, r) \/ DLanded(i, r) \/ DXferFailed(i, r) \/ DRecvSinfo(i, r) \/ DReadDone(i, r)
       \/ DReadFail(i, r) \/ DFinish(i, r) \/ DAbort(i, r) \/ DTimeout(i, r)
       \/ PRelease(i, r) \/ DSinfoBadLen(i, r) \/ DLaunchNext(i, r) \/ DFinishOvl(i, r) \/ DGrow(i, r)
  \/ \E i \in Inst : PNoPost(i) \/ DRelUnneeded(i) \/ Hang(i) \/ Resume(i) \/ RecvHello(i)
  \/ \E j, i \in Inst : Teardown(j, i)
  \/ \E x \in Xids : Cqe(x) \/ DInband(x) \/ DRecvNotice(x) \/ DRecvNopost(x) \/ XRecvRel(x)
                     \/ HwIssue(x) \/ HwStop(x) \/ LibFailRet(x) \/ DBadLen(x) \/ PSubmit(x) \/ PCancelReg(x)
  \/ \E p \in Pages : PagePoll(p) \/ DrainTimeout(p) \/ DrainDone(p) \/ Evict(p) \/ StreamLand(p) \/ Unquarantine(p)
                      \/ PDrainLibFail(p)
  \/ \E i \in Inst, s \in KSlots : \/ \E rows \in SUBSET Rq : KLaunch(i, s, rows)
                                   \/ KLand(i, s) \/ KDone(i, s)
                                   \/ \E r \in Rq, p \in Pages : KLaunchWG(i, s, r, p)
  \/ Done

Init == BaseInit /\ SInit
Next == (BaseNext /\ SFollow) \/ SNext

Spec == Init /\ [][Next]_vars

\* fairness for liveness: protocol actions, message delivery (no loss), hardware progress and local streams are weakly fair; Arrive is not required (clients may stop coming)
Fair ==
  /\ \A r \in Rq : WF_vars(RTimeout(r)) /\ WF_vars(RRecvReply(r))
  /\ \A i \in Inst, r \in Rq :
       /\ WF_vars(PRecvReq(i, r)) /\ WF_vars(PPoll(i, r)) /\ WF_vars(PPost(i, r)) /\ WF_vars(PSentDone(i, r))
       /\ WF_vars(PSentFail(i, r)) /\ WF_vars(PExpose(i, r)) /\ WF_vars(PExpDone(i, r)) /\ WF_vars(PAbort(i, r))
       /\ WF_vars(PTimeout(i, r)) /\ WF_vars(DRecvReq(i, r)) /\ WF_vars(DLanded(i, r)) /\ WF_vars(DXferFailed(i, r))
       /\ WF_vars(DRecvSinfo(i, r)) /\ WF_vars(DReadDone(i, r)) /\ WF_vars(DReadFail(i, r)) /\ WF_vars(DFinish(i, r))
       /\ WF_vars(DAbort(i, r)) /\ WF_vars(DTimeout(i, r)) /\ WF_vars(PRelease(i, r)) /\ WF_vars(DSinfoBadLen(i, r))
       /\ WF_vars(DLaunchNext(i, r)) /\ WF_vars(DFinishOvl(i, r))
  /\ \A i \in Inst : WF_vars(PNoPost(i)) /\ WF_vars(DRelUnneeded(i))
  /\ \A x \in Xids : WF_vars(Cqe(x)) /\ WF_vars(DInband(x)) /\ WF_vars(DRecvNotice(x)) /\ WF_vars(DRecvNopost(x))
                     /\ WF_vars(XRecvRel(x)) /\ WF_vars(HwStop(x)) /\ WF_vars(DBadLen(x))
  /\ \A p \in Pages : WF_vars(PagePoll(p)) /\ WF_vars(DrainTimeout(p)) /\ WF_vars(DrainDone(p)) /\ WF_vars(StreamLand(p))
                      /\ WF_vars(PDrainLibFail(p))
  \* PReg: the worker eventually processes registered entries; KernelReadPins: the GPU eventually finishes a step (KernelCompletion) and the core eventually collects its completion. KLaunch is not required (the scheduler may stop launching)
  /\ \A x \in Xids : WF_vars(PSubmit(x)) /\ WF_vars(PCancelReg(x))
  /\ \A i \in Inst, s \in KSlots : WF_vars(KLand(i, s)) /\ WF_vars(KDone(i, s))
LSpec == Spec /\ Fair

\* ============================ types ============================
PhSet == {"none", "pre", "ready", "reg", "sent", "exp", "end", "wait", "rd", "run", "ovl"}
MsgT == {"req", "dinfo", "sinfo", "notice", "nopost", "revoke", "relsrc", "abort", "reply", "hello"}
BaseTypeOK ==
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
  /\ \A m \in net : m.t \in MsgT
  /\ drep \in [Rq -> [Gens -> 0..2]] /\ crep \in [Rq -> [Gens -> {"none", "ok", "err", "two"}]]
  /\ dsucc \in [Rq -> [Gens -> BOOLEAN]] /\ gbad \in BOOLEAN

\* ============================ properties (design candidates) ============================
Writing(x) == InFl(x)
NoWriteInto(p) == \A x \in Xids : Writing(x) => xdst[x] # p

\* FreeIsQuiet + SourceHeld NoStrayAccess: pages touched by in-flight writes (dst page), in-flight reads (src page) and local-stream ops are still held for them
\*   (they have not left that generation's Private / Draining / Quarantined for Free or a new owner); shared pages are only read by D's decode
\* KernelReadPins: the page of a read-set element e = <<r, g, p, sh>> is still held for it: a private read = the page still belongs to (r, g) (priv / drain / quar, or the
\*   shared page it sealed: sealing changes neither pr nor pgn, read only); a shared read = the page is still shared (not evicted). Returning to Free clears pr, pgn; a new owner changes them
\* @type: <<Int, Int, Int, Int>> => Bool;
KHeld(e) == LET p == e[3] IN
  IF p \in SPages THEN SHeld(e) ELSE IF e[4] = 1 THEN pst[p] = "shared"
  ELSE pst[p] \in {"priv", "drain", "quar", "shared"} /\ pr[p] = e[1] /\ pgn[p] = e[2]

NoStrayAccess ==
  /\ \A x \in Xids : Writing(x) => Held(xdst[x], x)
  /\ \A x \in Xids : hw[x] = "fly" => Held(xsrc[x], x)
  /\ \A p \in Pages : \A t \in sfly[p] :
        \/ pst[p] \in {"priv", "drain", "quar"} /\ pr[p] = t[1] /\ pgn[p] = t[2]
        \/ pst[p] = "shared" /\ IsD(Loc(p))
  \* KernelReadPins (ground-truth layer): pages read by steps still running on the GPU are still held for the rows in the read set
  /\ \A i \in Inst, s \in KSlots : kfly[i][s] => \A e \in krs[i][s] : KHeld(e)

\* KernelReadPins NoFreeUnderRead (ledger layer): for a step launched and not yet KDone, pages in its read set stay with the generation that pinned them (pr, pgn unchanged), do not return to Free,
\*   are not reallocated or unquarantined, and shared pages are not evicted. Priv -> Drain / Quar is allowed (the overlap scheduler releases the request while the k+1 step reading it is still in flight,
\*   the same reading as the ledger); Priv -> Shared sealing (read only, pr / pgn unchanged) is also allowed in this model (see W_KSealPinned, pending ledger alignment).
\*   "nothing is written in while pinned" is not part of this property: RDMA writes are proved inductively by PinnedDataIntegrity of MC_pd_ind (pinned => KData, incl. NoWriteInto), and TLC checks KReadIntegrity
\*   during GPU reads; local-stream ops of other generations are excluded by the sfly clause of NoStrayAccess; the row's own decode / store writes (positions >= read_upto)
\*   are not modeled per token and are allowed
NoFreeUnderRead == \A i \in Inst, s \in KSlots : kpin[i][s] => \A e \in krs[i][s] : KHeld(e)

\* KernelReadPins KReadIntegrity (ground-truth layer): every cell the GPU is still reading is a landed, visible private page of this row's generation (D: the planned NTok tokens landed,
\*   pvis; P: the lt recorded by the core = the count really landed, no local write in flight on the page), or a shared page landed as a full page; no RDMA write in flight while reading
\* @type: (Int, <<Int, Int, Int, Int>>) => Bool;
\* decode growth and cancellation (DGrow): grown-page elements: sh = 2 (read) = KV written by an earlier step of this row's generation has landed (ptl >= 1; 0 = nobody wrote it yet, the page holds the previous
\*   owner's bytes; -1 = written by someone else); sh = 3 (not read in this step) only requires no RDMA write in flight
KData(i, e) == LET p == e[3] IN
  /\ NoWriteInto(p)
  /\ IF p \in SPages THEN SData(e) ELSE IF e[4] = 1 THEN ptl[p] = PS
     ELSE IF e[4] = 2 THEN ptl[p] >= 1
     ELSE IF e[4] = 3 THEN TRUE
     ELSE IF IsD(i) THEN ptl[p] = NTok(e[1], e[2]) /\ pvis[p]
     ELSE ptl[p] = plt[p] /\ sfly[p] = {}
BaseKReadIntegrity == \A i \in Inst, s \in KSlots : kfly[i][s] => \A e \in krs[i][s] : Loc(e[3]) = i /\ KHeld(e) /\ KData(i, e)

\* ReadOwnLanded: D's decode reads only private pages of its own generation that have landed and are visible to kernels (H-visible) (all Len tokens),
\*   or shared pages landed as a full page; no write in flight while reading
BaseReadOwnLanded ==
  \A j \in DInst, r \in Rq : ph[j][r] \in {"run", "ovl"} =>
    LET q == rpg[j][r] IN
      /\ q \in Pages /\ NoWriteInto(q)
      /\ \/ ~rhit[j][r] /\ pst[q] = "priv" /\ pr[q] = r /\ pgn[q] = rg[j][r] /\ ptl[q] = NTok(r, rg[j][r]) /\ pvis[q]
         \/ rhit[j][r] /\ pst[q] = "shared" /\ ptl[q] = PS

\* ReadOwnLanded (source side), SendOwnLanded: when the NIC reads the src page, this generation's data on it has landed and no local write is in flight (sglang#41395 class)
BaseSendOwnLanded == \A x \in Xids : hw[x] = "fly" => (ptl[xsrc[x]] = xlt[x] /\ sfly[xsrc[x]] = {})   \* transfer-length consistency: compares with the lt that x claims to carry (= plan with BadLen off)

\* PrefixImmutable SealOnlyLanded: a shared page has landed as a full page (with page_size > 1 only full pages), and no write is in flight
BaseSealOnlyLanded == \A p \in Pages : pst[p] = "shared" => (ptl[p] = PS /\ NoWriteInto(p))

\* GenerationFiltering GenFiltered: messages with a mismatched generation are always dropped (ghost gbad records "ever accepted")
GenFiltered == ~gbad

\* SingleReply OneReply: at most one final reply per (r, g) (sent by D, received by the client)
OneReply == \A r \in Rq, g \in Gens : drep[r][g] <= 1 /\ crep[r][g] # "two"

\* TruthfulReply ReplyTruth: the client receives success => D really finished reading this generation's landed pages
ReplyTruth == \A r \in Rq, g \in Gens : crep[r][g] = "ok" => dsucc[r][g]

\* QuarNeverMapped: a quarantined page is not mapped by any live record
QuarNeverMapped == \A i \in Inst, r \in Rq : (Active(i, r) /\ rpg[i][r] \in Pages) => pst[rpg[i][r]] # "quar"

\* QuarSticky (step-1 fallback): a quarantined page never leaves quarantine during the process lifetime (action property)
QuarSticky == [][\A p \in Pages : (pst[p] = "quar" /\ ~Unquar) => pst'[p] = "quar"]_vars

\* page conservation at rest: no live records and all non-quarantined pages' ledgers empty => a non-quarantined page is either Free or a Shared page with refc = 0
Quiet == /\ \A i \in Inst, r \in Rq : ~Active(i, r)
         /\ \A p \in Pages : pst[p] # "quar" => (led[p] = {} /\ sled[p] = {} /\ ~KPinned(p))   \* KernelReadPins: pins count as in flight too
BaseQuietConservation == Quiet => \A p \in Pages : pst[p] \in {"free", "quar"} \/ (pst[p] = "shared" /\ prefc[p] = 0)

\* decode growth and cancellation (PReg timeout fix; formerly in the quarantine-entry check) QuarNoReg: a quarantined P page's ledger holds no registered x (never handed to the transfer library). "Never submitted" is
\*   stop evidence that P holds itself (PCancelReg); quarantine is only for pages that cannot get stop evidence. A P page ledger holds at most one x and is nonempty when the page enters quarantine, so at that moment this equals
\*   "the x in the ledger was handed to the transfer library" (QuarHasSubmitted of the quarantine-entry check is too strong: a correctly quarantined page has an empty ledger after a late Cqe)
QuarNoReg == \A p \in Pages : (IsP(Loc(p)) /\ pst[p] = "quar") => \A x \in led[p] : iv[x] # "reg"

\* ================= PrefixSharing proposed safety =================
STypeOK ==
  /\ spst \in [SPages -> {"free","priv","shared","drain","dup","quar"}]
  /\ sown \in [SPages -> 0..NR] /\ sgen \in [SPages -> 0..MG] /\ skey \in [SPages -> 0..2]
  /\ swrite \in [SPages -> BOOLEAN] /\ sdata \in [SPages -> BOOLEAN] /\ sready \in [SPages -> BOOLEAN]
  /\ sprefc \in [SPages -> 0..(NPI*NR*MG+MX)]
  /\ smap \in [PInst -> [Rq -> {0} \cup SPages]] /\ schoice \in [PInst -> [Rq -> BOOLEAN]]
  /\ rpgS \in SUBSET (PInst \X Rq \X Gens \X SPages)
  /\ xsrcS \in [Xids -> SUBSET SPages] /\ xsrcP \in [Xids -> SUBSET SPages]
  /\ sentry \in SUBSET Xids /\ squar \in SUBSET (Xids \X SPages)
  /\ xprefixOK \in [Xids -> BOOLEAN] /\ dpreOK \in [Pages -> BOOLEAN]
  /\ hitSeen \in BOOLEAN /\ dedupSeen \in BOOLEAN
PrefcMatchesHolders == IF ~PrefixSharing THEN TRUE ELSE \A p \in SPages :
  sprefc[p] = SRefR(rpgS,p)+SRefE(sentry,xsrcS,p)+SRefQ(squar,p)
SAccess(x) == x \in sentry \/ hw[x]="fly" \/ (\E h \in squar : h[1]=x)
NoEvictUnderRDMA == IF ~PrefixSharing THEN TRUE ELSE \A x \in Xids : SAccess(x) =>
  /\ \A p \in xsrcS[x] : spst[p]="shared" /\ skey[p]=STok(xr[x],xg[x])
  /\ \A p \in xsrcP[x] : spst[p] \in {"priv","drain","quar"} /\ sown[p]=xr[x] /\ sgen[p]=xg[x]
SharedLedRef == IF ~PrefixSharing THEN TRUE ELSE \A p \in SPages :
  /\ ((spst[p]="shared" /\ (SRefE(sentry,xsrcS,p)>0 \/ SPin(p))) \/ SRefQ(squar,p)>0) => sprefc[p]>=1
  /\ sprefc[p]>=SRefQ(squar,p)
SharedImmutable == IF ~PrefixSharing THEN TRUE ELSE \A p \in SPages : spst[p]="shared" => sready[p] /\ sdata[p] /\ ~swrite[p] /\ NoWriteInto(p)
HitIdentity == IF ~PrefixSharing THEN TRUE ELSE
  /\ \A h \in rpgS : spst[h[4]]="shared" /\ skey[h[4]]=STok(h[2],h[3])
  /\ \A i \in PInst,r \in Rq : (Active(i,r) /\ smap[i][r] \in SPages) => skey[smap[i][r]]=STok(r,rg[i][r])
SMapIntegrity == IF ~PrefixSharing THEN TRUE ELSE \A i \in PInst,r \in Rq : (Active(i,r) /\ smap[i][r] \in SPages) => spst[smap[i][r]] \in {"priv","shared"}
KReadIntegrity == BaseKReadIntegrity /\ SMapIntegrity
SendOwnLanded == BaseSendOwnLanded /\ (IF ~PrefixSharing THEN TRUE ELSE
  (\A x \in Xids : hw[x]="fly" => \A p \in xsrcS[x] \cup xsrcP[x] :
     sdata[p] /\ ~swrite[p] /\ skey[p]=STok(xr[x],xg[x])))
ReadOwnLanded == BaseReadOwnLanded /\ (PrefixSharing =>
  \A j \in DInst,r \in Rq : ph[j][r] \in {"run","ovl"} => dpreOK[rpg[j][r]])
SealOnlyLanded == BaseSealOnlyLanded /\ SharedImmutable
QuietConservation == BaseQuietConservation /\ (IF ~PrefixSharing THEN TRUE ELSE
  ((Quiet /\ sentry={} /\ \A p \in SPages : ~swrite[p] /\ (spst[p] \in {"priv","drain"} => sready[p]) /\ ~SPin(p)) =>
   \A p \in SPages : spst[p] \in {"free","quar"} \/ (spst[p]="shared" /\ sprefc[p]=SRefQ(squar,p))))
W_PHit == ~hitSeen
W_PDedup == ~dedupSeen
W_SharedQuar == squar={}
W_PSeal == ~\E p \in SPages : spst[p]="shared" /\ sown[p] # 0

W_TwoShared == ~\E p \in SPages : SRefR(rpgS,p)>=2
W_QuarHit == [][~(\E i \in PInst,r \in Rq,p \in SPages : SRefQ(squar,p)>0 /\ PHit(i,r,p))]_vars

BaseSafety == NoStrayAccess /\ ReadOwnLanded /\ SendOwnLanded /\ SealOnlyLanded /\ GenFiltered /\ OneReply
          /\ ReplyTruth /\ QuarNeverMapped /\ QuietConservation /\ NoFreeUnderRead /\ KReadIntegrity /\ QuarNoReg

Safety == BaseSafety /\ NoEvictUnderRDMA /\ SharedLedRef /\ PrefcMatchesHolders /\ SharedImmutable /\ HitIdentity
TypeOK == BaseTypeOK /\ STypeOK

\* liveness (under LSpec): RequestCompletion: every accepted request eventually ends (success or explicit error); every live record eventually ends
ReqEnds == \A r \in Rq : (rt[r] = "wait") ~> (rt[r] # "wait")
RecEnds == \A i \in Inst, r \in Rq : Active(i, r) ~> (~Active(i, r) \/ ~alive[i])   \* not required for a hung instance's own records
\* ResourceReclamation (only in runs without peer faults, Faults = FALSE): eventually all pages return to Free or Shared, none quarantined
PagesBack == <>[](\A p \in Pages : pst[p] \in {"free", "shared"})
\* ResourceReclamation (any run): a Draining page eventually leaves Draining (back to Free with evidence, or to quarantine on timeout)
DrainEnds == \A p \in Pages : (pst[p] = "drain") ~> (pst[p] # "drain" \/ ~alive[Loc(p)])   \* not required for a hung instance's own pages
\* KernelReadPins: the core eventually collects a launched step's completion (unpins); not required for a hung instance's own steps
KStepEnds == \A i \in Inst, s \in KSlots : kpin[i][s] ~> (~kpin[i][s] \/ ~alive[i])

\* ============================ reachability witnesses (should be violated) ============================
W_Success   == ~\E r \in Rq, g \in Gens : dsucc[r][g]
W_Reuse     == ~\E r \in Rq : MG >= 2 /\ dsucc[r][2]
W_ErrReply  == ~\E r \in Rq, g \in Gens : crep[r][g] = "err"
W_DrainD    == ~\E p \in Pages : IsD(Loc(p)) /\ pst[p] = "drain"
W_DrainP    == ~\E p \in Pages : IsP(Loc(p)) /\ pst[p] = "drain"
W_Quar      == ~\E p \in Pages : pst[p] = "quar"
W_QuarD     == ~\E p \in Pages : IsD(Loc(p)) /\ pst[p] = "quar"
W_QuarP     == ~\E p \in Pages : IsP(Loc(p)) /\ pst[p] = "quar"
W_PeerFailQuar == ~(nfail > 0 /\ \E p \in Pages : pst[p] = "quar" /\ pqp[p] \in Inst /\ ~alive[pqp[p]])
W_LateLand  == ~\E x \in Xids : hw[x] = "stop" /\ hok[x] /\ xdst[x] \in Pages /\ pst[xdst[x]] = "quar"
W_Shared    == ~\E p \in Pages : pst[p] = "shared"
W_Hit       == ~\E j \in DInst, r \in Rq : rhit[j][r] /\ ph[j][r] = "run"
W_Revoked   == ~\E x \in Xids : xst[x] = "revoked"
W_FailRet   == ~\E x \in Xids : iv[x] = "failret"
W_DrainFreed == [][\A p \in Pages : pst[p] = "drain" => pst'[p] # "free"]_vars
\* Unquar: a quarantined page really did return to Free (action property, should be violated)
W_QuarLeft == [][\A p \in Pages : pst[p] = "quar" => pst'[p] = "quar"]_vars
\* witnesses for source-release ordering / transfer-length consistency (action properties, should be violated = this branch is reachable)
W_PRelease    == [][\A i \in Inst, r \in Rq : ~PRelease(i, r)]_vars
W_PDrainFreed == [][\A p \in Pages : (IsP(Loc(p)) /\ pst[p] = "drain" /\ led[p] # {}) => pst'[p] # "free"]_vars
W_PDrainLibFail == [][\A p \in Pages : ~PDrainLibFail(p)]_vars
W_BadLen      == [][\A x \in Xids : ~DBadLen(x)]_vars
W_SinfoBadLen == [][\A j \in Inst, r \in Rq : ~DSinfoBadLen(j, r)]_vars
\* source-release ordering: the same P slot already bound a newer generation while its first x was still in flight (or still exposed)
W_PRebind     == ~\E x \in Xids : /\ xk[x] # "none" /\ xp[x] \in Inst
                                  /\ IF xk[x] = "wr" THEN InFl(x) /\ iv[x] \in {"posted", "failret"} ELSE xst[x] = "posted"
                                  /\ Active(xp[x], xr[x]) /\ rg[xp[x]][xr[x]] > xg[x]
\* overlapped-finish drain: successful finish under overlap while the page is still in Drain (next step running)
W_FinishOvl   == [][\A j \in Inst, r \in Rq : ~DFinishOvl(j, r)]_vars
W_SuccDrain   == ~\E p \in Pages : IsD(Loc(p)) /\ pst[p] = "drain" /\ pr[p] \in Rq /\ pgn[p] \in Gens /\ dsucc[pr[p]][pgn[p]]
\* the quarantine branch for a ~ok notice really happened (this branch does not change xst)
W_NokQuar     == [][\A x \in Xids : DRecvNotice(x) => xst'[x] # "posted"]_vars
\* KernelReadPins witnesses (should be violated = reachable)
W_KLaunchD    == ~\E i \in DInst, s \in KSlots : kpin[i][s]
W_KLaunchP    == ~\E i \in PInst, s \in KSlots : kpin[i][s]
W_KHit        == ~\E i \in DInst, s \in KSlots : kpin[i][s] /\ \E e \in krs[i][s] : e[4] = 1
W_KOverlap    == ~\E i \in Inst, s1, s2 \in KSlots : s1 # s2 /\ kpin[i][s1] /\ kpin[i][s2]
W_KPinDrain   == ~\E p \in Pages : pst[p] = "drain" /\ led[p] = {} /\ sled[p] = {} /\ KPinned(p)   \* page pinned when the record ends -> Drain
W_KSealPinned == ~\E p \in Pages : pst[p] = "shared" /\ \E s \in KSlots : kpin[Loc(p)][s] /\ \E e \in krs[Loc(p)][s] : e[3] = p /\ e[4] = 0
W_KQuarPinned == ~\E p \in Pages : pst[p] = "quar" /\ KPinned(p)
W_KDoneFrees  == [][\A i \in Inst, s \in KSlots : KDone(i, s) => \A p \in Pages : ~(pst[p] = "drain" /\ pst'[p] = "free")]_vars
\* PReg witnesses: release in the registered state (the real glue order), submit only after release, cancel before submit
W_PRegRelease == [][\A i \in Inst, r \in Rq : ph[i][r] = "reg" => ~PRelease(i, r)]_vars
W_PSubmitLate == [][\A x \in Xids : (PSubmit(x) /\ rg[xp[x]][xr[x]] = xg[x]) => ph[xp[x]][xr[x]] = "reg"]_vars
W_PCancelReg  == [][\A x \in Xids : ~PCancelReg(x)]_vars
\* failedAsDrained wired into PDrainLibFail: this branch really released the src page (reachable only under the mutant; in the design PDrainLibFail only quarantines)
W_FadDrain    == [][\A p \in Pages : PDrainLibFail(p) => pst'[p] # "free"]_vars
\* decode growth and cancellation witnesses (should be violated = reachable)
\* DGrow: a grown page is read by a later step (sh = 2: one step writes it, completed or still in flight, then another step launches and reads it)
W_GrowRead    == ~\E i \in DInst, s \in KSlots : kpin[i][s] /\ \E e \in krs[i][s] : e[4] = 2
\* DGrow: pages grown while the record is in ovl (next step launched, still running)
W_GrowOvl     == [][\A j \in Inst, r \in Rq : DGrow(j, r) => ph[j][r] # "ovl"]_vars
\* DGrow: at record end a grown page is still pinned by a step and goes to Drain (back to Free at KDone)
W_GrowDrain   == ~\E i \in DInst, s \in KSlots : kpin[i][s] /\ \E e \in krs[i][s] : e[4] \in {2, 3} /\ pst[e[3]] = "drain"
\* DGrow: the shape of the glue overlap loop (launch k+2 before collecting k+1): a step launches reading a grown page while another step (for which that page was still unwritten at its launch) is still on the GPU
W_GrowOvlRead == [][\A i \in DInst, s \in KSlots, rows \in SUBSET Rq :
                    KLaunch(i, s, rows) =>
                      ~\E e \in krs'[i][s], s1 \in KSlots :
                         /\ e[4] = 2 /\ s1 # s /\ kfly[i][s1]
                         /\ \E e1 \in krs[i][s1] : e1[3] = e[3] /\ e1[4] = 3]_vars
\* PReg timeout fix: the branch where PEnd first cancels a registered x really happened
W_PEndCancelReg == [][\A i \in Inst, r \in Rq : ~(ph[i][r] = "reg" /\ (PTimeout(i, r) \/ PAbort(i, r)))]_vars
\* PReg timeout fix: a registered x during the src page's Drain after the record ended is released by PCancelReg (the exit used when DrainTimeout is disabled)
W_PCancelDrain == [][\A x \in Xids : PCancelReg(x) => ~(pst[xsrc[x]] = "drain" /\ ph[xp[x]][xr[x]] = "end")]_vars
=============================================================================
