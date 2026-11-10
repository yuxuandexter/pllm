------------------------------ MODULE PdTrace ------------------------------
\* observed: PdCore 05e988a5. Explicit DGrow, W/StreamFIFO, SFollow and PrefixSharing prefix actions.
\* P prefill remains the model stream; raw P pin lifetimes are checked by observe.
EXTENDS PdCore, Sequences, TLC

CONSTANTS TraceLog, MaxSilent   \* MaxSilent: kept for the cfg format; no silent steps are used
\* compatibility: every use of the log goes through TLog, a zero-arity constant-level definition, which TLC evaluates ONCE
\* (when it processes the constant definitions) and keeps as a value.  The cfg override "TraceLog <- Log" alone is
\* re-evaluated at every access: each TraceLog[l] rebuilt the whole Log literal (O(events) per access; the ASSUME
\* below was O(events^2), README §17).  TLog = TraceLog by definition: same states, same verdicts.
TLog == TraceLog

VARIABLES l, todo, fl, la, kid   \* la: the PdCore action (or check) of the last step (coverage, README §4)
tvars == <<vars, l, todo, fl, la, kid>>

\* @type: Set(Seq(Str));
DFinP     == {<<"Land", "DFinish">>, <<"Land", "DLaunchNext", "DFinishOvl">>}
DCancelP  == {<<"RTimeout", "DAbort">>, <<"RTimeout", "DAbort", "Land", "PagePoll">>,
              <<"DAbort">>, <<"DAbort", "Land", "PagePoll">>}
DRelFailP == {<<"DXferFailed">>, <<"ChkEnded">>}

\* @type: (Str) => Set(Seq(Str));
LegacyPrograms(k) ==
  CASE k = "DExpose"      -> {<<"DRecvReq">>}
    [] k = "DFlush"       -> {<<"FlushChk">>}
    [] k = "DNotice"      -> {<<"DRecvNotice">>}
    [] k = "DVisible"     -> {<<"DLanded">>}
    [] k = "DStopped"     -> {<<"DRecvNopost">>, <<"DRecvNoticeAny">>}
    [] k = "DUnstop"      -> {<<"DTimeout">>, <<"DAbort", "DrainTimeout">>, <<"DrainTimeout">>}
    [] k = "DFin"         -> DFinP
    [] k = "DCancel"      -> DCancelP
    [] k = "DRelFail"     -> DRelFailP
    [] k = "DRelease"     -> DFinP \cup DCancelP \cup DRelFailP
    [] k = "DRead"        -> {<<"KLaunch1">>}
    [] k = "DKDone"       -> {<<"KLand1", "KDone1">>}
    [] k = "DStep"        -> {<<"KLaunchE">>}                \* compatibility: every D step (klaunch line)
    [] k = "DStepDone"    -> {<<"KLandE", "KDoneE">>}        \* compatibility: the kdone line
    [] k = "PStep"        -> {<<"ChkPreAll">>}               \* compatibility: every P step: its items are prefilling
    [] k = "DFinS"        -> {<<"Land", "DFinish">>}         \* compatibility: a finish; a launched step still reading pins the page (Drain)
    [] k = "DCancelR"     -> {<<"RTimeout", "DAbort", "Land", "PagePoll">>, <<"DAbort", "Land", "PagePoll">>}  \* compatibility: abort of a running record
    [] k = "PAlloc"       -> {<<"PRecvReq">>}
    [] k = "PRead"        -> {<<"ChkPre">>}
    [] k = "PFill"        -> {<<"Land", "PPoll">>}
    [] k = "PPostReg"     -> {<<"ChkReady">>}
    [] k = "PReg"         -> {<<"PPost">>}
    [] k = "PPostRej"     -> {<<"PTimeout", "PNoPost">>, <<"PAbort", "PNoPost">>}
    [] k = "PRelease"     -> {<<"Nop">>, <<"PAbort">>, <<"PTimeout">>, <<"PRelease">>}
    [] k = "PBegin"       -> {<<"PPost">>}
    [] k = "PBeginCancel" -> {<<"PCancelReg">>}
    [] k = "PSubmit"      -> {<<"PSubmitX">>}
    [] k = "PDoneOK"      -> {<<"HwStopOK", "Cqe", "PSentDone">>, <<"HwStopOK", "Cqe", "ChkPEnd">>}  \* 2nd: after PRelease (source-release ordering)
    [] k = "PDoneAck"     -> {<<"HwStopOK", "Cqe">>}
    [] k = "PDoneFail"    -> {<<"LibFailRet", "PSentFail">>, <<"LibFailRet", "PDrainLibFail">>}   \* failed-transfer mapping: p_done(False) = LibFailRet + PSentFail / PDrainLibFail (compatibility: the DrainTimeout alternative dropped)
    [] k = "PAbortCancel" -> {<<"PCancelReg">>}
    [] k = "PAbortRun"    -> {<<"PAbort">>, <<"ChkPEnd">>}   \* 2nd: the abort reaches P after PRelease ended its record
    [] k = "PTomb"        -> {<<"PTimeout", "PNoPost">>, <<"PNoPost">>, <<"PRecvReq", "PTimeout", "PNoPost">>, <<"Nop">>}
    [] k = "PCancelLost"  -> {<<"PCancelReg">>, <<"PTimeout">>}
    [] OTHER              -> {}

Programs(k) ==
  CASE k = "DGrow" -> {<<"DGrow">>}
    [] k = "SBadUnref" -> {<<"SBadUnref">>}
    [] k = "ObservationCheck" -> {<<"Nop">>}
    [] k = "PBoot" -> {<<"SEvict">>}
    [] k = "PPrefixAlloc" -> {<<"PAllocPrefix">>}
    [] k = "PNoPrefix" -> {<<"PNoPrefix">>}
    [] k = "PPrefixReady" -> {<<"SPrefixLand", "SPrefixPoll">>}
    [] k = "PHit" -> {<<"PHit">>}
    [] k = "PSeal" -> {<<"PSeal">>}
    [] k = "PDedup" -> {<<"PDedup">>}
    [] k = "SEvict" -> {<<"SEvict">>}
    [] k = "FlushAll" -> {<<"FlushAll">>}
    [] k = "PDrainTimeout" -> {<<"DrainTimeout">>}
    [] k = "PEndTimeout" -> {<<"PTimeout">>}
    [] k = "PKRead" -> {<<"KLaunchE">>}
    [] k = "PLocalDone" -> {<<"PLocalLand", "PLocalDone">>}
    [] OTHER -> LegacyPrograms(k)


KnownKinds == {"DExpose", "DFlush", "DNotice", "DVisible", "DStopped", "DUnstop", "DFin", "DCancel", "DRelFail",
               "DRelease", "DRead", "PAlloc", "PRead", "PFill", "PPostReg", "PPostRej", "PRelease", "PBegin",
               "PBeginCancel", "PDoneOK", "PDoneAck", "PDoneFail", "PAbortCancel", "PAbortRun", "PTomb",
               "PCancelLost", "PSubmit", "PReg", "DKDone", "DStep", "DStepDone", "PStep", "DFinS", "DCancelR",
               "DGrow", "SBadUnref", "ObservationCheck", "PBoot", "PPrefixAlloc", "PNoPrefix", "PPrefixReady", "PHit", "PSeal", "PDedup", "SEvict", "FlushAll", "PDrainTimeout", "PEndTimeout", "PKRead", "PLocalDone"}

ASSUME \A n \in 1..Len(TLog) :
  /\ {"k", "i", "pe", "r", "g", "x", "p", "ok", "rs", "pg", "a", "seq"} \subseteq DOMAIN TLog[n]
  /\ TLog[n].k \in KnownKinds
  /\ TLog[n].i \in Inst /\ TLog[n].pe \in Inst /\ TLog[n].r \in Rq /\ TLog[n].g \in Gens
  /\ TLog[n].x \in {0} \cup Xids /\ TLog[n].p \in {0} \cup Pages
  \* compatibility: a step carries its items <<r, g, p>> (fail-closed: a malformed one is an ASSUME error)
  /\ TLog[n].k \in {"DStep", "DStepDone", "PStep"} =>
       /\ "it" \in DOMAIN TLog[n] /\ Len(TLog[n].it) >= 1
       /\ \A m \in 1..Len(TLog[n].it) : /\ TLog[n].it[m][1] \in Rq /\ TLog[n].it[m][2] \in Gens
                                           /\ TLog[n].it[m][3] \in Pages

\* the record of the event on its own instance is this (r, g)
OwnGen(e) == rg[e.i][e.r] = e.g
\* compatibility: the read set of slot s of instance i (without the hit flag) and a step event's items as such a set
KRead(i, s) == {<<t[1], t[2], t[3]>> : t \in krs[i][s]}
ItSet(e) == {<<e.it[m][1], e.it[m][2], e.it[m][3]>> : m \in 1..Len(e.it)}
PP(e) == IF IsP(e.i) THEN e.i ELSE e.pe
DD(e) == IF IsD(e.i) THEN e.i ELSE e.pe

\* observed input is mandatory. Missing old fields never acquire a success default.
KernelArgsOK(e) == e.ka /\
  \A m \in 1..Len(e.it) :
    LET r == e.it[m][1] g == e.it[m][2] p == e.it[m][3] IN
      /\ rg[e.i][r] = g /\ rpg[e.i][r] = p
      /\ pst[p] = "priv" /\ pr[p] = r /\ pgn[p] = g
SeqSet(xs) == {xs[n] : n \in 1..Len(xs)}
Snap(e) == {<<e.it[m][1],e.it[m][2],e.it[m][3],0>> : m \in 1..Len(e.it)} \cup SeqSet(e.gr)
SharedPost(e) ==
  IF "ss" \in DOMAIN e THEN
    /\ SeqSet(e.ss) = {<<p,sprefc'[p], SRefR(rpgS',p), SRefE(sentry',xsrcS',p), SRefQ(squar',p)>> :
                          p \in {p \in SPages : Loc(p)=e.i /\ spst'[p]="shared"}}
    /\ ("spmap" \in DOMAIN e => smap'[e.i][e.r]=e.spmap)
  ELSE TRUE

\* one model step named a, for event e (fl is handled in Step)
\* Exact singleton specialization: byte-equal to pinned DGrow except its Q domain.
DGrowExact(j, r, q0) ==
  /\ IsD(j) /\ alive[j]
  /\ IF Mut = "growNoRun" THEN Active(j, r) ELSE ph[j][r] \in {"run", "ovl"}
  /\ \E Q \in {{q0}} :
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

\* Exact W specialization; all core guards/effects retained.
KLaunchExact(i, s, rows, writeSet) ==
  /\ alive[i] /\ ~kpin[i][s] /\ ~kfly[i][s]
  /\ rows # {} /\ \A r \in rows : KRowOK(i, r) /\ (IF PrefixSharing /\ IsP(i) THEN SRowReady(i, r) ELSE TRUE)
  /\ kpin' = [kpin EXCEPT ![i][s] = TRUE] /\ kfly' = [kfly EXCEPT ![i][s] = TRUE]
  /\ LET GR == GrownRows(i, rows) IN
       /\ krs' = [krs EXCEPT ![i][s] = {KEnt(i, r) : r \in rows} \cup {KGEnt(q) : q \in GR} \cup SRows(i, rows)]
       /\ \E W \in {writeSet} :
            /\ W \subseteq {q \in GR : plt[q] = 0}
            /\ Mut = "kReadUnwritten" => W = {}
            /\ plt' = [p \in Pages |-> IF p \in W THEN 1 ELSE plt[p]]
            /\ ptl' = [p \in Pages |-> IF p \in W /\ Mut # "kGrowNoFifo" THEN 1 ELSE ptl[p]]
  /\ UNCHANGED <<rtV, alive, nfail, torn, recV, pst, pr, pgn, pvis, led, sfly, sled, prefc, pqp, xV, net, ghV>>

BaseExec(a, e) ==
  CASE a = "DGrow" -> /\ OwnGen(e) /\ DGrowExact(e.i,e.r,e.q)
                        /\ e.q \in Pages
    [] a = "PLocalLand" -> IF OwnGen(e) /\ ph[e.i][e.r]="end" /\ sfly[e.p] # {}
                            THEN StreamLand(e.p) ELSE UNCHANGED basevars
    [] a = "PLocalDone" -> IF OwnGen(e) /\ ph[e.i][e.r]="end" /\ sled[e.p] # {}
                            THEN PagePoll(e.p) ELSE UNCHANGED basevars
    [] a = "Router1"        -> IF rt[e.r] = "wait"
                               THEN IF \E m \in net : m.t = "reply" /\ m.r = e.r /\ m.g = gen[e.r]
                                    THEN RRecvReply(e.r) ELSE RTimeout(e.r)
                               ELSE UNCHANGED basevars
    [] a = "Router2"        -> gen[e.r] + 1 = e.g /\ Arrive(e.r, PP(e), DD(e))
    [] a = "RTimeout"       -> RTimeout(e.r)
    [] a = "Land"           -> \/ e.p \in Pages /\ StreamLand(e.p)
                               \/ e.p \in Pages /\ sfly[e.p] = {} /\ UNCHANGED basevars
    [] a = "HwStopOK"       -> \/ hw[e.x] \in {"fly", "issued"} /\ HwStop(e.x) /\ hok'[e.x]
                               \/ hw[e.x] = "stop" /\ hok[e.x] /\ UNCHANGED basevars
    [] a = "DRecvReq"       -> DRecvReq(e.i, e.r) /\ rg'[e.i][e.r] = e.g /\ rpg'[e.i][e.r] = e.p /\ rx'[e.i][e.r] = e.x
                               /\ pst'[e.p] = "priv" /\ ~rhit'[e.i][e.r]
    [] a = "DRecvNotice"    -> DRecvNotice(e.x) /\ xst'[e.x] = (IF e.ok THEN "landed" ELSE "failed")
    [] a = "DRecvNoticeAny" -> DRecvNotice(e.x)
    [] a = "DRecvNopost"    -> DRecvNopost(e.x)
    [] a = "DLanded"        -> OwnGen(e) /\ rx[e.i][e.r] = e.x /\ (Flush => e.x \in fl) /\ DLanded(e.i, e.r)
    [] a = "DTimeout"       -> OwnGen(e) /\ DTimeout(e.i, e.r)
    [] a = "DAbort"         -> OwnGen(e) /\ DAbort(e.i, e.r)
    [] a = "DrainTimeout"   -> e.p \in Pages /\ DrainTimeout(e.p)
    [] a = "DFinish"        -> OwnGen(e) /\ DFinish(e.i, e.r)
    [] a = "DLaunchNext"    -> OwnGen(e) /\ DLaunchNext(e.i, e.r)
    [] a = "DFinishOvl"     -> OwnGen(e) /\ DFinishOvl(e.i, e.r)
    [] a = "PRelease"       -> OwnGen(e) /\ PRelease(e.i, e.r)
    [] a = "PDrainLibFail"  -> e.p \in Pages /\ PDrainLibFail(e.p)
    [] a = "DXferFailed"    -> OwnGen(e) /\ DXferFailed(e.i, e.r)
    [] a = "PagePoll"       -> e.p \in Pages /\ PagePoll(e.p)
    [] a = "PRecvReq"       -> e.p \in Pages /\ PRecvReq(e.i, e.r) /\ rg'[e.i][e.r] = e.g /\ rpg'[e.i][e.r] = e.p
                               /\ pst'[e.p] = "priv"
    [] a = "PPoll"          -> OwnGen(e) /\ PPoll(e.i, e.r)
    [] a = "PPost"          -> OwnGen(e) /\ PPost(e.i, e.r) /\ rx'[e.i][e.r] = e.x
    [] a = "Cqe"            -> Cqe(e.x)
    [] a = "PSentDone"      -> OwnGen(e) /\ rx[e.i][e.r] = e.x /\ PSentDone(e.i, e.r)
    [] a = "LibFailRet"     -> LibFailRet(e.x)
    [] a = "PSentFail"      -> OwnGen(e) /\ rx[e.i][e.r] = e.x /\ PSentFail(e.i, e.r)
    [] a = "PAbort"         -> OwnGen(e) /\ PAbort(e.i, e.r)
    [] a = "PTimeout"       -> OwnGen(e) /\ PTimeout(e.i, e.r)
    [] a = "PNoPost"        -> PNoPost(e.i) /\ iv'[e.x] = "nopost"
    \* checks only (the glue's step is not a PdCore action; the model state must allow it)
    [] a = "FlushChk"       -> hw[e.x] = "stop" /\ hok[e.x] /\ xdst[e.x] = e.p /\ UNCHANGED basevars
    [] a = "ChkRun"         -> OwnGen(e) /\ ph[e.i][e.r] = "run" /\ UNCHANGED basevars
    [] a = "ChkPre"         -> OwnGen(e) /\ ph[e.i][e.r] = "pre" /\ UNCHANGED basevars
    [] a = "ChkReady"       -> OwnGen(e) /\ ph[e.i][e.r] = "ready"
                               /\ (\E m \in net : m.t = "dinfo" /\ m.to = e.i /\ m.r = e.r /\ m.g = e.g /\ m.x = e.x)
                               /\ UNCHANGED basevars
    [] a = "ChkEnded"       -> OwnGen(e) /\ ph[e.i][e.r] = "end" /\ UNCHANGED basevars
    [] a = "ChkPosted"      -> e.x \in Xids /\ iv[e.x] = "posted" /\ UNCHANGED basevars
    [] a = "ChkPEnd"        -> (rg[e.i][e.r] = e.g => ph[e.i][e.r] = "end") /\ UNCHANGED basevars
    [] a = "KLaunch1"       -> OwnGen(e) /\ e.p \in Pages /\ rpg[e.i][e.r] = e.p /\ KLaunch(e.i, 1, {e.r})
    [] a = "KLand1"         -> KLand(e.i, 1)
    [] a = "KDone1"         -> KDone(e.i, 1)
    \* compatibility: one D step on some free slot (slots are symmetric: the model chooses); the rows are the items' slots r,
    \* each row's record is the item's (g, p).  Its kdone: the slot whose read set is this step's items
    [] a = "KLaunchE" ->
         LET R == {e.it[m][1] : m \in 1..Len(e.it)} IN
         /\ Cardinality(R) = Len(e.it)
         /\ KernelArgsOK(e)
         /\ \E s \in KSlots : /\ KLaunchExact(e.i,s,R,SeqSet(e.w)) /\ krs'[e.i][s] = Snap(e)
                                 /\ (\A q \in Pages : plt'[q] = IF q \in SeqSet(e.w) THEN 1 ELSE plt[q])
                                 /\ (\A q \in SeqSet(e.w) : ptl'[q] = 1)
    [] a = "KLandE" -> \E s \in KSlots : kid[e.i][s]=e.step /\ kpin[e.i][s] /\ KLand(e.i,s)
    [] a = "KDoneE" -> \E s \in KSlots : kid[e.i][s]=e.step /\ kpin[e.i][s] /\ KDone(e.i,s)
    [] a = "ChkPreAll"      -> /\ \A m \in 1..Len(e.it) : rg[e.i][e.it[m][1]] = e.it[m][2] /\ ph[e.i][e.it[m][1]] = "pre"
                               /\ UNCHANGED basevars
    [] a = "PSubmitX"       -> e.x \in Xids /\ PSubmit(e.x)
    [] a = "PCancelReg"     -> e.x \in Xids /\ PCancelReg(e.x)
    [] a = "Nop"            -> UNCHANGED basevars
    [] OTHER                -> FALSE

PrefixActions == {"PAllocPrefix","PNoPrefix","SPrefixLand","SPrefixPoll","PHit","PSeal","PDedup","SEvict","FlushAll","SBadUnref"}
Exec(a,e) ==
  IF a \in PrefixActions THEN
    CASE a="PAllocPrefix" -> PAllocPrefix(e.i,e.r,e.q)
      [] a="PNoPrefix" -> PNoPrefix(e.i,e.r)
      [] a="SPrefixLand" -> SPrefixLand(e.q)
      [] a="SPrefixPoll" -> SPrefixPoll(e.q)
      [] a="PHit" -> PHit(e.i,e.r,e.q)
      [] a="PSeal" -> PSeal(e.i,e.r)
      [] a="PDedup" -> PDedup(e.i,e.r,e.q)
      [] a="SEvict" -> SEvict(e.q)
      [] a="FlushAll" -> FlushAll(e.i)
      [] a="SBadUnref" -> SBadUnref(e.i,e.r,e.q)
  ELSE BaseExec(a,e) /\ SFollow

\* the observation after the event: page state of the event's page (exact on D; "held" = priv or drain)
PagePostOK(e) ==
  \/ e.pg = ""
  \/ e.p \in Pages /\ (IF e.pg = "held" THEN pst'[e.p] \in {"priv", "drain"} ELSE pst'[e.p] = e.pg)

PostOK(e) == /\ PagePostOK(e) /\ SharedPost(e)
             /\ IF "gs" \in DOMAIN e THEN \A n \in 1..Len(e.gs) : pst'[e.gs[n][1]]=e.gs[n][2] ELSE TRUE

\* the PdCore action name a step stands for (coverage; checks keep their own names)
LaName(a, e) ==
  CASE a = "Router1"        -> IF rt[e.r] # "wait" THEN "Nop"
                               ELSE IF \E m \in net : m.t = "reply" /\ m.r = e.r /\ m.g = gen[e.r]
                                    THEN "RRecvReply" ELSE "RTimeout"
    [] a = "Router2"        -> "Arrive"
    [] a = "Land"           -> IF e.p \in Pages /\ sfly[e.p] # {} THEN "StreamLand" ELSE "Nop"
    [] a = "HwStopOK"       -> IF hw[e.x] # "stop" THEN "HwStop" ELSE "Nop"
    [] a = "DRecvNoticeAny" -> "DRecvNotice"
    [] a = "KLaunch1"       -> "KLaunch"
    [] a = "KLand1"         -> "KLand"
    [] a = "KDone1"         -> "KDone"
    [] a = "KLaunchE"       -> "KLaunch"
    [] a = "KLandE"         -> "KLand"
    [] a = "KDoneE"         -> "KDone"
    [] a = "PSubmitX"       -> "PSubmit"
    [] OTHER                -> a

Step(prog) ==
  LET e == TLog[l]
      a == Head(prog)
  IN /\ e.observed /\ e.obs
     /\ (IF e.k \in {"DStep", "PStep"} THEN KernelArgsOK(e) ELSE TRUE)
     /\ Exec(a, e)
     /\ kid' = [i \in Inst |-> [s \in KSlots |->
          IF ~kpin[i][s] /\ kpin'[i][s] THEN e.step
          ELSE IF ~kpin'[i][s] THEN 0 ELSE kid[i][s]]]
     /\ fl' = IF a = "FlushChk" THEN fl \cup {e.x} ELSE fl
     /\ la' = LaName(a, e)
     /\ IF Len(prog) = 1
        THEN PostOK(e) /\ l' = l + 1 /\ todo' = << >>
        ELSE l' = l /\ todo' = Tail(prog)

Logged ==
  /\ l <= Len(TLog)
  /\ \/ todo = << >> /\ \E prog \in Programs(TLog[l].k) :
          Step(IF TLog[l].a = 1 THEN <<"Router1", "Router2">> \o prog ELSE prog)
     \/ todo # << >> /\ Step(todo)

TraceInit == Init /\ kid = [i \in Inst |-> [s \in KSlots |-> 0]] /\ l = 1 /\ todo = << >> /\ fl = {} /\ la = ""
TraceNext == Logged
TraceSpec == TraceInit /\ [][TraceNext]_tvars

TraceNotDone == l <= Len(TLog)
ASSUME TLCSet(1, 0)
\* progress register: the largest cursor seen (NOT_CONSUMED: event TLCGet(1) is the first unmatched one)
TraceProgress == l <= TLCGet(1) \/ (TLCSet(1, l) /\ PrintT(<<"PDTRACE_REACHED_L", l>>))
=============================================================================
