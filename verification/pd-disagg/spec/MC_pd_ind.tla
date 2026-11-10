---- MODULE MC_pd_ind ----
\* Inductive strengthening for the PD ledger design model PdCore: Apalache single-step induction (the contract §2.3).
\*   init: --cinit=<C> --init=Init    --inv=IndInv --length=0
\*   step: --cinit=<C> --init=IndInit --inv=IndInv --length=1
\*   safe: --cinit=<C> --init=IndInit --inv=Safety --length=0
\* Run with run_ind.sh <tag> init step safe (CINIT=<name> picks the constant set).
\* IndInv = TypeOK /\ Safety /\ structural conjuncts /\ reachability strengthening.
\* Scope of the induction: Unquar = FALSE (step-1 rule), Mut = "none"; push under (HComplete narrow, HOrder widest,
\* HVisible widest, notice, flush) = the the contract design under the reading visibility litmus must confirm; pull under widest readings + flush.
EXTENDS PdCore
IndNext == SNext \/ (BaseNext /\ SFollow)

\* ---------------- constant sets ----------------
CBase == /\ PrefixSharing = FALSE /\ SPP = 0
         /\ /\ HComplete = "narrow" /\ HOrder = "widest" /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
         /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE /\ Ovl = TRUE /\ KR = 1 /\ PReg = TRUE /\ Mut = "none" /\ Faults = TRUE /\ MaxFail = 1
CPush == CBase /\ Mode = "push" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2
CPull == CBase /\ Mode = "pull" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2
\* scale + 1 (the contract §3): page_size 2 (tail pages), and 1P2D
CPushPS2 == CBase /\ Mode = "push" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 2 /\ MX = 2
CPullPS2 == CBase /\ Mode = "pull" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 2 /\ MX = 2
CPush12 == CBase /\ Mode = "push" /\ NPI = 1 /\ NDI = 2 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 3 /\ PS = 1 /\ MX = 2
CPull12 == CBase /\ Mode = "pull" /\ NPI = 1 /\ NDI = 2 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 3 /\ PS = 1 /\ MX = 2
\* induction calibration: one mutant each (step must report a CTI)
CPushTO   == /\ PrefixSharing=FALSE /\ SPP=0 /\ HComplete = "narrow" /\ HOrder = "widest" /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
             /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE /\ Ovl = TRUE /\ KR = 1 /\ PReg = TRUE /\ Mut = "timeoutRelease" /\ Faults = TRUE /\ MaxFail = 1
             /\ Mode = "push" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2
CPushNBC  == /\ PrefixSharing=FALSE /\ SPP=0 /\ HComplete = "narrow" /\ HOrder = "widest" /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
             /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE /\ Ovl = TRUE /\ KR = 1 /\ PReg = TRUE /\ Mut = "noticeBeforeCompletion" /\ Faults = TRUE /\ MaxFail = 1
             /\ Mode = "push" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2
CPushHCW  == /\ PrefixSharing=FALSE /\ SPP=0 /\ HComplete = "widest" /\ HOrder = "widest" /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
             /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE /\ Ovl = TRUE /\ KR = 1 /\ PReg = TRUE /\ Mut = "none" /\ Faults = TRUE /\ MaxFail = 1
             /\ Mode = "push" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2
CPullSFA2 == /\ PrefixSharing=FALSE /\ SPP=0 /\ HComplete = "narrow" /\ HOrder = "widest" /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
             /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE /\ Ovl = TRUE /\ KR = 1 /\ PReg = TRUE /\ Mut = "sourceFreedBeforeAck" /\ Faults = TRUE /\ MaxFail = 1
             /\ Mode = "pull" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2
\* source-release ordering / transfer-length consistency self-calibration (step must report a CTI)
CMut(m, md) == /\ PrefixSharing=FALSE /\ SPP=0 /\ HComplete = "narrow" /\ HOrder = "widest" /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
             /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE /\ Ovl = TRUE /\ KR = 1 /\ PReg = TRUE /\ Mut = m /\ Faults = TRUE /\ MaxFail = 1
             /\ Mode = md /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2
CPushPRF == CMut("pReleaseFree", "push")
CPullPRF == CMut("pReleaseFree", "pull")
CPushIgn == CMut("ignoreLt", "push")
CPullIgn == CMut("ignoreLt", "pull")
CPushFOF == CMut("freeOnFinish", "push")
CPullFOF == CMut("freeOnFinish", "pull")
\* KernelReadPins / PReg self-calibration (step must report a CTI on the expected conjunct)
CPushKUL == CMut("kLaunchUnlanded", "push")
CPullKUL == CMut("kLaunchUnlanded", "pull")
CPushKUF == CMut("kLaunchUnflushed", "push")
CPushKFU == CMut("kFreeUnderRead", "push")
CPullKFU == CMut("kFreeUnderRead", "pull")
CPushKDE == CMut("kDoneEarly", "push")
CPushCS  == CMut("cancelSubmitted", "push")
\* decode growth and cancellation：PReg 超时修法的自校准（step 必须给 CTI）
CPushPNC == CMut("pEndNoCancel", "push")
CPushDTR == CMut("drainTimeoutReg", "push")
\* the contract：¬ok notice 当作已停证据（设计前提 HComplete narrow 之内：错误完成可以在 issued 时出现）
CPushNok == /\ PrefixSharing=FALSE /\ SPP=0 /\ HComplete = "narrow" /\ HOrder = "widest" /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
            /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE /\ Ovl = TRUE /\ KR = 1 /\ PReg = TRUE /\ Mut = "nokFrees" /\ Faults = TRUE /\ MaxFail = 1
            /\ Mode = "push" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2


CPrefixBase ==
           /\ PrefixSharing=TRUE /\ SPP=2 /\ HComplete="narrow" /\ HOrder="widest" /\ HVisible="widest" /\ PushEv="notice"
 /\ Flush=TRUE /\ Unquar=FALSE /\ PRel=TRUE /\ BadLen=TRUE /\ Ovl=TRUE /\ KR=1 /\ PReg=TRUE
 /\ Mut="none" /\ Faults=TRUE /\ MaxFail=1 /\ NPI=1 /\ NDI=1 /\ NR=1 /\ PPL=1 /\ NP=2 /\ PS=1
CPrefixPush ==
           CPrefixBase /\ Mode="push" /\ MG=2 /\ MX=2
CPrefixPull ==
           CPrefixBase /\ Mode="pull" /\ MG=2 /\ MX=2
CPrefixSmall ==
            CPrefixBase /\ Mode="push" /\ MG=1 /\ MX=1

\* ---------------- the finite message universe (IndInit draws net from SUBSET MsgU) ----------------
MsgU ==
  {Msg("req", 0, i, r, g, 0, 0, j, FALSE) : i \in PInst, j \in DInst, r \in Rq, g \in Gens}
  \cup {Msg("req", 0, j, r, g, 0, 0, i, FALSE) : i \in PInst, j \in DInst, r \in Rq, g \in Gens}
  \cup {Msg("dinfo", j, i, r, g, x, q, 0, FALSE) : j \in DInst, i \in PInst, r \in Rq, g \in Gens, x \in 0..MX, q \in Pages}
  \cup {Msg("sinfo", i, j, r, g, x, p, l, FALSE) : i \in PInst, j \in DInst, r \in Rq, g \in Gens, x \in Xids, p \in Pages, l \in 0..PS}
  \cup {Msg("notice", i, j, r, g, x, l, e, b) : i \in PInst, j \in DInst, r \in Rq, g \in Gens, x \in Xids, l \in 0..PS, e \in {0, 1}, b \in BOOLEAN}
  \cup {Msg("nopost", i, j, r, g, x, 0, 0, FALSE) : i \in PInst, j \in DInst, r \in Rq, g \in Gens, x \in Xids}
  \cup {Msg("revoke", j, i, r, g, x, 0, 0, FALSE) : i \in PInst, j \in DInst, r \in Rq, g \in Gens, x \in Xids}
  \cup {Msg("relsrc", j, i, r, g, x, 0, 0, b) : i \in PInst, j \in DInst, r \in Rq, g \in Gens, x \in Xids, b \in BOOLEAN}
  \cup {Msg("abort", f, t, r, g, 0, 0, 0, FALSE) : f \in {0} \cup Inst, t \in Inst, r \in Rq, g \in Gens}
  \cup {Msg("reply", j, 0, r, g, 0, 0, 0, b) : j \in DInst, r \in Rq, g \in Gens, b \in BOOLEAN}
  \cup {Msg("hello", i, 0, 0, 0, 0, 0, 0, FALSE) : i \in Inst}

\* ---------------- helpers ----------------
ExpPage(x)  == IF xk[x] = "wr" THEN xdst[x] ELSE xsrc[x]     \* the exposer's page (push: D's dst; pull: P's src)
InitPage(x) == IF xk[x] = "wr" THEN xsrc[x] ELSE xdst[x]     \* the initiator's page (0 until posted)
ExpInst(x)  == IF xk[x] = "wr" THEN xd[x] ELSE xp[x]
InitInst(x) == IF xk[x] = "wr" THEN xp[x] ELSE xd[x]
OwnedBy(p, r, g) == pst[p] \in {"priv", "drain", "quar"} /\ pr[p] = r /\ pgn[p] = g
Maps(i, r, p) == Active(i, r) /\ rpg[i][r] = p
NHits(p) == Cardinality({r \in Rq : ph[Loc(p)][r] \in {"run", "ovl"} /\ rhit[Loc(p)][r] /\ rpg[Loc(p)][r] = p})   \* overlapped-finish drain：ovl 的命中记录也持有引用
CqeHw(x) == IF xk[x] = "wr" /\ (HComplete = "widest" \/ ~hok[x]) THEN {"issued", "stop"} ELSE {"stop"}
\* decode growth and cancellation（DGrow）：D 上的加页 = 私有页、不是它那个槽的记录映射页（PageStateConsistency、GrownPageConsistency）
GrownP(p) == IsD(Loc(p)) /\ pst[p] = "priv" /\ pr[p] \in Rq /\ rpg[Loc(p)][pr[p]] # p

\* ================= Structural conjuncts (written before the first step check) =================
\* RouterConsistency router
RouterConsistency ==
      \A r \in Rq :
        /\ (rt[r] = "idle") <=> (gen[r] = 0)
        /\ gen[r] >= 1 => (rp[r] = hp[r][gen[r]] /\ rd[r] = hd[r][gen[r]])
        /\ rt[r] = "wait" => crep[r][gen[r]] = "none"
        /\ \A g \in Gens :
             /\ g <= gen[r] => (hp[r][g] \in PInst /\ hd[r][g] \in DInst)
             /\ g > gen[r] => (hp[r][g] = 0 /\ hd[r][g] = 0 /\ crep[r][g] = "none" /\ drep[r][g] = 0 /\ ~dsucc[r][g])
\* TransferRecordConsistency xfer records: fresh ids are blank; allocated ids have the mode's kind and consistent endpoints
TransferRecordConsistency ==
      \A x \in Xids :
        IF x >= nx
        THEN /\ xk[x] = "none" /\ xr[x] = 0 /\ xg[x] = 0 /\ xp[x] = 0 /\ xd[x] = 0 /\ xsrc[x] = 0 /\ xdst[x] = 0
             /\ xnt[x] = 0 /\ hw[x] = "none" /\ ~hok[x] /\ iv[x] = "none" /\ xst[x] = "none" /\ xlt[x] = 0
        ELSE /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
             /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
             /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
             /\ xnt[x] = NTok(xr[x], xg[x]) /\ xst[x] # "none"
             /\ IF xk[x] = "wr" /\ InitPage(x) = 0 THEN xlt[x] = 0 ELSE xlt[x] \in PLens(xr[x], xg[x])   \* TransferLengthConsistency（transfer-length consistency；PReg：取消后的 nopost 有源页、有 lt）
             /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
             /\ iv[x] = "none" => InitPage(x) = 0
             /\ iv[x] \notin {"none", "nopost"} => InitPage(x) # 0
             /\ (iv[x] = "nopost" /\ InitPage(x) # 0) => (xk[x] = "wr" /\ PReg)   \* PReg：登记后被取消
             /\ InitPage(x) # 0 => (InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
\* TransferStateConsistency hardware vs. initiator vs. exposer states
TransferStateConsistency ==
      \A x \in Xids :
        /\ (iv[x] \in {"none", "nopost", "reg"}) <=> (hw[x] = "none")
        /\ iv[x] = "reg" => (xk[x] = "wr" /\ PReg /\ xst[x] = "posted")
        /\ iv[x] = "cqe" => hw[x] \in CqeHw(x)
        /\ hw[x] = "issued" => xk[x] = "wr"
        /\ xst[x] = "revoked" => iv[x] = "nopost"
        /\ xst[x] = "landed" => (hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x])   \* transfer-length consistency：只有 lt = 计划才算落地
        /\ (xk[x] = "rd" /\ iv[x] \notin {"none", "nopost"}) => xlt[x] = xnt[x]   \* transfer-length consistency：pull 的 D 只在 lt = 计划时发 READ
        /\ xst[x] = "failed" => IF xk[x] = "wr" THEN (hw[x] = "stop" /\ hok[x] /\ xlt[x] # xnt[x])   \* the contract：push 的 failed 只来自 BAD_LEN
                                 ELSE ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ~hok[x]) \/ iv[x] = "nopost")
        /\ InFl(x) => (xst[x] = "posted" /\ (iv[x] \in {"posted", "failret"} \/ (iv[x] = "cqe" /\ hw[x] = "issued" /\ ~hok[x])))
\* ExactTransferLedger the ledger is exact: exposer side <-> xst posted; initiator side <-> iv posted/failret; nothing else is in a ledger
ExactTransferLedger ==
      /\ \A x \in Xids : x < nx =>
           /\ (x \in led[ExpPage(x)]) <=> (xst[x] = "posted")
           /\ InitPage(x) \in Pages => ((x \in led[InitPage(x)]) <=> (iv[x] \in {"reg", "posted", "failret"}))
      /\ \A p \in Pages : \A x \in led[p] : x < nx /\ (p = ExpPage(x) \/ p = InitPage(x))
\* LedgerEntryOwnership ledger entries are owned: a page with x in its ledger is still held for x's (r, g)
LedgerEntryOwnership ==
      \A p \in Pages : \A x \in led[p] : OwnedBy(p, xr[x], xg[x])
\* StreamLedgerOwnership stream ledger: truth within ledger; every tag is the owner's (or a D decode read of a shared page)
StreamLedgerOwnership ==
      \A p \in Pages :
        /\ sfly[p] \subseteq sled[p]
        /\ \A t \in sled[p] : t[2] <= gen[t[1]] /\ (OwnedBy(p, t[1], t[2]) \/ (pst[p] = "shared" /\ IsD(Loc(p))))
\* PageStateConsistency page fields by state
PageStateConsistency ==
      \A p \in Pages :
        /\ ptl[p] >= 0
        /\ pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {}
                               /\ prefc[p] = 0 /\ pqp[p] = 0)
        /\ pst[p] \in {"priv", "drain", "quar"} => (pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]])
        /\ pst[p] = "quar" => pqp[p] \in Inst
        /\ pst[p] # "quar" => pqp[p] = 0
        /\ pst[p] # "shared" => prefc[p] = 0
        /\ pst[p] = "shared" => (IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p))
        /\ pst[p] = "drain" => (led[p] # {} \/ sled[p] # {} \/ KPinned(p))   \* KernelReadPins：钉也是在途
        /\ pst[p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(p), r, p)
        /\ pst[p] = "priv" => \/ (Maps(Loc(p), pr[p], p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]])
                              \/ GrownP(p)   \* decode growth and cancellation：D 的加页（GrownPageConsistency）
\* PrefillRecordConsistency P records
PrefillRecordConsistency ==
      \A i \in Inst, r \in Rq :
        LET p == rpg[i][r]
            g == rg[i][r]
            t == Tag(r, g)
            x == rx[i][r]
        IN
        /\ IsP(i) => (ph[i][r] \in {"none", "pre", "ready", "reg", "sent", "exp", "end"} /\ ~rhit[i][r])
        /\ IsD(i) => ph[i][r] \in {"none", "wait", "rd", "run", "ovl", "end"}
        /\ ph[i][r] = "none" => (g = 0 /\ p = 0 /\ x = 0 /\ ~rhit[i][r])
        /\ ph[i][r] # "none" => (g \in Gens /\ g <= gen[r])
        /\ ph[i][r] # "none" /\ IsP(i) => (hp[r][g] = i /\ rpe[i][r] = hd[r][g])
        /\ ph[i][r] # "none" /\ IsD(i) => (hd[r][g] = i /\ rpe[i][r] = hp[r][g])
        /\ Active(i, r) => (p \in Pages /\ Loc(p) = i)
        /\ Active(i, r) /\ ~rhit[i][r] => OwnedBy(p, r, g) /\ pst[p] = "priv"
        /\ ph[i][r] = "pre" => (x = 0 /\ led[p] = {} /\ sled[p] = {t} /\ sfly[p] \subseteq {t} /\ plt[p] = 0
                                /\ (IF t \in sfly[p] THEN ptl[p] = 0 ELSE ptl[p] \in PLens(r, g)))
        /\ ph[i][r] = "ready" => (x = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g))
        /\ ph[i][r] = "reg" => (Mode = "push" /\ PReg /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = r /\ xg[x] = g
                                /\ iv[x] = "reg" /\ sled[p] = {} /\ sfly[p] = {}
                                /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g) /\ xlt[x] = ptl[p])
        /\ ph[i][r] = "sent" => (Mode = "push" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = r /\ xg[x] = g
                                 /\ iv[x] \in {"posted", "cqe", "failret"} /\ sled[p] = {} /\ sfly[p] = {}
                                 /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g) /\ xlt[x] = ptl[p])
        /\ ph[i][r] = "exp" => (Mode = "pull" /\ x \in Xids /\ x < nx /\ xsrc[x] = p /\ xr[x] = r /\ xg[x] = g
                                /\ sled[p] = {} /\ sfly[p] = {} /\ plt[p] = ptl[p] /\ ptl[p] \in PLens(r, g) /\ xlt[x] = ptl[p])
\* DecodeRecordConsistency D records
DecodeRecordConsistency ==
      \A j \in DInst, r \in Rq :
        LET q == rpg[j][r]
            g == rg[j][r]
            t == Tag(r, g)
            x == rx[j][r]
        IN
        /\ Active(j, r) => drep[r][g] = 0
        /\ ph[j][r] = "end" => drep[r][g] = 1
        /\ rhit[j][r] => ph[j][r] \in {"run", "ovl", "end"}
        /\ ph[j][r] = "wait" /\ Mode = "push" => (x \in Xids /\ x < nx /\ xdst[x] = q /\ xr[x] = r /\ xg[x] = g
                                                  /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0)
        /\ ph[j][r] = "wait" /\ Mode = "pull" => (x = 0 /\ led[q] = {} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0 /\ ptl[q] = 0)
        /\ ph[j][r] = "rd" => (Mode = "pull" /\ x \in Xids /\ x < nx /\ xdst[x] = q /\ xr[x] = r /\ xg[x] = g
                               /\ iv[x] \in {"posted", "cqe", "failret"} /\ sled[q] = {} /\ sfly[q] = {} /\ plt[q] = 0)
        /\ ph[j][r] \in {"run", "ovl"} /\ ~rhit[j][r] => (led[q] = {} /\ sled[q] = {t} /\ plt[q] = NTok(r, g) /\ ptl[q] = NTok(r, g) /\ pvis[q])
        /\ ph[j][r] \in {"run", "ovl"} /\ rhit[j][r] => (pst[q] = "shared" /\ t \in sled[q] /\ x = 0)
\* DestinationDataTruth D-side destination truth: while the page is still held for x, it holds exactly what x has placed
\*   DestinationGenerationTruth (generation-aware destination exemption): the run / ovl exemption is only for the record of x's own generation. The slot-only exemption
\*   in the earlier destination-truth predicate let a g2 record in run on another page exempt g1's failed x, whose page is still
\*   pinned in Drain: CTI at PPL = 2 (two-page pull configuration), unreachable, brought in by KernelReadPins's pins.
DestinationDataTruth ==
       \A x \in Xids :
         (x < nx /\ xdst[x] \in Pages /\ OwnedBy(xdst[x], xr[x], xg[x])
            /\ ~(ph[Loc(xdst[x])][xr[x]] \in {"run", "ovl"} /\ rg[Loc(xdst[x])][xr[x]] = xg[x]))
           => ptl[xdst[x]] = (IF hw[x] = "stop" /\ hok[x] THEN xlt[x] ELSE 0)
\* SourceDataTruth source truth: a page with x in its ledger on the source side has the full prefill and no local op
SourceDataTruth ==
       \A x \in Xids :
         (x < nx /\ xsrc[x] \in Pages /\ x \in led[xsrc[x]])
           => (ptl[xsrc[x]] = xlt[x] /\ sfly[xsrc[x]] = {} /\ sled[xsrc[x]] = {})
\* MessageConsistency messages
MessageConsistency ==
       \A m \in net :
         /\ m.t # "hello" => (m.r \in Rq /\ m.g \in Gens /\ m.g <= gen[m.r])
         /\ m.t = "hello" => m.fr \in Inst
         /\ m.t = "req" => (m.fr = 0 /\ m.x = 0 /\
                            ((m.to = hp[m.r][m.g] /\ m.pe = hd[m.r][m.g]) \/ (m.to = hd[m.r][m.g] /\ m.pe = hp[m.r][m.g])))
         /\ m.t = "dinfo" => (Mode = "push" /\ m.fr = hd[m.r][m.g] /\ m.to = hp[m.r][m.g]
                              /\ (m.x # 0 => (m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xdst[m.x] = m.pg)))
         /\ m.t = "sinfo" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ xsrc[m.x] = m.pg /\ m.pe = xlt[m.x]
                              /\ m.fr = hp[m.r][m.g] /\ m.to = hd[m.r][m.g])
         /\ m.t = "notice" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ m.pe = 1 /\ m.pg = xlt[m.x]
                               /\ iv[m.x] = "cqe" /\ hw[m.x] \in CqeHw(m.x) /\ m.ok = hok[m.x])
         /\ m.t = "nopost" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g /\ iv[m.x] = "nopost")
         /\ m.t = "revoke" => (Mode = "push" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g)
         /\ m.t = "relsrc" => (Mode = "pull" /\ m.x < nx /\ xr[m.x] = m.r /\ xg[m.x] = m.g
                               /\ ((iv[m.x] = "cqe" /\ hw[m.x] = "stop" /\ m.ok = hok[m.x]) \/ (iv[m.x] = "nopost" /\ ~m.ok)))
         /\ m.t = "reply" => (m.fr = hd[m.r][m.g] /\ drep[m.r][m.g] = 1 /\ (m.ok => dsucc[m.r][m.g]))
\* ReplyConsistency replies and ghosts
ReplyConsistency ==
       /\ ~gbad
       /\ \A r \in Rq, g \in Gens :
            /\ drep[r][g] <= 1
            /\ dsucc[r][g] => drep[r][g] = 1
            /\ crep[r][g] = "ok" => dsucc[r][g]
            /\ crep[r][g] # "two"
            /\ drep[r][g] = 1 => (rg[hd[r][g]][r] > g \/ (rg[hd[r][g]][r] = g /\ ph[hd[r][g]][r] = "end"))

\* KernelSlotConsistency KernelReadPins kernel step slots: the truth runs only under a pin; a pin has a nonempty read set; entries are well formed
KernelSlotConsistency ==
       \A i \in Inst, s \in KSlots :
         /\ kfly[i][s] => kpin[i][s]
         /\ (krs[i][s] # {}) <=> kpin[i][s]
         /\ \A e \in krs[i][s] : Loc(e[3]) = i /\ e[2] <= gen[e[1]] /\ (IF e[3] \in SPages THEN PrefixSharing /\ IsP(i) /\ e[4] \in {1,4} ELSE (e[4] \in {0,1,2,3} /\ (e[4] # 0 => IsD(i))))   \* decode growth and cancellation：sh 2 / 3（加页）也只在 D
\* PinnedDataIntegrity KernelReadPins pinned data: while pinned (not only while the GPU runs) every read entry keeps the launch-time data facts
\*   (KReadIntegrity is PinnedDataIntegrity restricted to kfly, via KernelSlotConsistency); D private entries have an empty RDMA ledger, P entries no stream op
PinnedDataIntegrity ==
       \A i \in Inst, s \in KSlots : kpin[i][s] => \A e \in krs[i][s] :
         /\ KData(i, e)
         /\ (IsD(i) /\ e[4] # 1) => led[e[3]] = {}   \* decode growth and cancellation：加页（sh 2 / 3）同私有页
         /\ (IsP(i) /\ e[3] \in Pages) => sled[e[3]] = {}

\* GrownPageConsistency decode growth and cancellation（DGrow）：D 上不是记录映射页的私有页 = 加页。它属于本实例上该槽当前那一代、在 run / ovl 的记录；没有任何账本条目、
\*   没有本地流 op（不暴露、不进 RDMA）；核心记下的写进度 = 真值，只取 0（还没有步写过）或 1（某一步已写下，StreamFIFO）；没有 RDMA 写在途
GrownPageConsistency ==
       \A p \in Pages : GrownP(p) =>
         /\ ph[Loc(p)][pr[p]] \in {"run", "ovl"} /\ rg[Loc(p)][pr[p]] = pgn[p]
         /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {}
         /\ plt[p] = ptl[p] /\ ptl[p] \in {0, 1}
         /\ NoWriteInto(p)

\* GrownPinGeneration decode growth and cancellation（DGrow）：被钉的加页元素（sh 2 / 3）属于一个已经提交过的代：发射时那一代的记录在 run / ovl（只有它们有加页），之后
\*   只会走到 end 或被同槽更新的一代顶替；它的页不是那一代记录映射的页。CTI pull-growth counterexample（第一次 step，GrownPageConsistency 之后）：前态里
\*   D 的 g2 记录还在 wait、映射页 4，读集合却有 <<1, 2, 4, 3>>；DRecvSinfo 往页 4 发 READ，PinnedDataIntegrity 的 NoWriteInto 假。不可达：sh 3 的
\*   元素只由 KLaunch 对加页建出，那时记录已在 run，代不回退
GrownPinGeneration ==
       \A i \in Inst, s \in KSlots : kpin[i][s] => \A e \in krs[i][s] :
         e[4] \in {2, 3} =>
           \/ rg[i][e[1]] > e[2]
           \/ rg[i][e[1]] = e[2] /\ ph[i][e[1]] \in {"run", "ovl", "end"} /\ rpg[i][e[1]] # e[3]

KStruct == RouterConsistency /\ TransferRecordConsistency /\ TransferStateConsistency /\ ExactTransferLedger /\ LedgerEntryOwnership /\ StreamLedgerOwnership /\ PageStateConsistency /\ PrefillRecordConsistency /\ DecodeRecordConsistency /\ DestinationDataTruth /\ SourceDataTruth /\ MessageConsistency /\ ReplyConsistency /\ KernelSlotConsistency /\ PinnedDataIntegrity /\ GrownPageConsistency /\ GrownPinGeneration

\* ================= Reachability strengthening forced by CTIs (added after the first step checks) =================
\* TransferBornOfRecord XferBornOfRecord. CTI push-generation counterexample (push): s0 has x1 for (r1, g2) (landed, dst page 2) while D's record for slot 1 is
\*   still at g1 (end) and page 2 is free; DRecvReq(r1, g2) allocates page 2 for (r1, g2) and a second xfer x2, so x1 now
\*   "owns" page 2 with ptl 0 (DestinationDataTruth'). Unreachable: an xfer for (r, g) is created only by the exposer's record for (r, g)
\*   (push: D at DRecvReq; pull: P at PExpose), and a record's generation never goes back.
TransferBornOfRecord ==
      \A x \in Xids : x < nx =>
        /\ ph[ExpInst(x)][xr[x]] # "none" /\ rg[ExpInst(x)][xr[x]] >= xg[x]
        /\ (rg[ExpInst(x)][xr[x]] = xg[x] /\ Active(ExpInst(x), xr[x])) => rx[ExpInst(x)][xr[x]] = x
\* UniqueTransferPerGeneration XferUnique (same CTI): at most one xfer per (r, g) (one page per request, one record per (r, g)).
UniqueTransferPerGeneration ==
      \A x1, x2 \in Xids : (x1 < nx /\ x2 < nx /\ x1 # x2) => (xr[x1] # xr[x2] \/ xg[x1] # xg[x2])
\* NoTeardownWithoutUnquarantine NoTeardown (same CTI shows torn = {1} with Unquar = FALSE): without Unquar nothing is ever torn down.
NoTeardownWithoutUnquarantine ==
      ~Unquar => \A i \in Inst : torn[i] = {}
\* FailureCountBound HangCount (same CTI shows alive[1] = FALSE with nfail = 0).
FailureCountBound ==
      Cardinality({i \in Inst : ~alive[i]}) <= nfail

\* RunningDecodeHasLanded RunHasLanded. CTI decode-landing counterexample (push): s0 has D's record (r1, g2) in run on page 2 with rx = x1, but xst[x1] = failed and
\*   hok[x1] = FALSE (ptl 1 from another xfer); DAbort drains page 2 and DestinationDataTruth' fails. Unreachable: a non-hit record enters run
\*   only by DLanded (xst landed, hence stop and ok) or DReadDone with hok; the xfer then never changes.
RunningDecodeHasLanded ==
      \A j \in DInst, r \in Rq :
        (ph[j][r] \in {"run", "ovl"} /\ ~rhit[j][r]) =>
          LET x == rx[j][r] IN
            /\ x \in Xids /\ x < nx /\ xdst[x] = rpg[j][r] /\ xr[x] = r /\ xg[x] = rg[j][r]
            /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x]
            /\ (Mode = "push" => xst[x] = "landed") /\ (Mode = "pull" => iv[x] = "cqe")

\* TransferPostedByRecord XferPostedByRecord (initiator-side twin of TransferBornOfRecord). CTI pull-generation counterexample (pull): s0 has x2 for (r1, g2) posted (xdst = page 2,
\*   stop, ok) while D's record for slot 1 is still at g1; DRecvReq(r1, g2) allocates page 2 for (r1, g2) with ptl 0, and x2
\*   now "owns" it (DestinationDataTruth'). Unreachable: only the initiator's record for (r, g) posts x (push: P's PPost; pull: D's DRecvSinfo),
\*   and it keeps rx = x until it ends.
TransferPostedByRecord ==
      \A x \in Xids : (x < nx /\ InitPage(x) # 0) =>
        /\ ph[InitInst(x)][xr[x]] # "none" /\ rg[InitInst(x)][xr[x]] >= xg[x]
        /\ (rg[InitInst(x)][xr[x]] = xg[x] /\ Active(InitInst(x), xr[x])) => rx[InitInst(x)][xr[x]] = x

Strengthen == TransferBornOfRecord /\ UniqueTransferPerGeneration /\ NoTeardownWithoutUnquarantine /\ FailureCountBound /\ RunningDecodeHasLanded /\ TransferPostedByRecord

\* PrefixSharing candidate strengthening; based on classified counterexamples to induction.
PrefixRequestHolders ==
  /\ \A i \in PInst,r \in Rq :
       /\ ph[i][r]="none" => smap[i][r]=0 /\ ~schoice[i][r]
       /\ smap[i][r] # 0 => schoice[i][r] /\ Loc(smap[i][r])=i
       /\ (Active(i,r) /\ smap[i][r] \in SPages /\ spst[smap[i][r]]="shared") => SH(i,r,rg[i][r],smap[i][r]) \in rpgS
       /\ ph[i][r] \in {"reg","sent","exp"} => SSendReady(i,r)
  /\ \A h \in rpgS :
       /\ Loc(h[4])=h[1] /\ h[3]<=gen[h[2]]
       /\ (rg[h[1]][h[2]]=h[3] /\ Active(h[1],h[2]) /\ smap[h[1]][h[2]]=h[4]) \/ SHPin(h)
PrefixPageConsistency ==
       \A p \in SPages :
  /\ spst[p]="priv" => sown[p] \in Rq /\ sgen[p] \in Gens /\ rg[Loc(p)][sown[p]]=sgen[p]
       /\ Active(Loc(p),sown[p]) /\ smap[Loc(p)][sown[p]]=p /\ skey[p]=STok(sown[p],sgen[p])
  /\ spst[p]="free" => ~swrite[p] /\ sprefc[p]=0
  /\ spst[p] \in {"priv","drain"} => swrite[p] \/ sdata[p]
  /\ swrite[p] => spst[p] \in {"priv","drain"} /\ ~sdata[p] /\ ~sready[p]
  /\ sready[p] => sdata[p] /\ ~swrite[p]
  /\ spst[p]="shared" => skey[p] \in 1..2
  /\ spst[p] \in {"drain","dup"} => ~sready[p] \/ SPin(p)
  /\ spst[p] # "shared" => sprefc[p]=0
  /\ spst[p]="dup" => sready[p]
  /\ spst[p] # "quar"
PrefixPinIntegrity ==
       \A i \in PInst,k \in KSlots : kpin[i][k] => \A e \in krs[i][k] : e[3] \in SPages =>
  /\ e[4] \in {1,4} /\ SData(e) /\ SHeld(e)
  /\ spst[e[3]]="shared" => SH(i,e[1],e[2],e[3]) \in rpgS
  /\ e[4]=4 => sown[e[3]]=e[1] /\ sgen[e[3]]=e[2]
PrefixTransferSnapshots ==
       \A x \in Xids :
  /\ xsrcS[x] \cap xsrcP[x]={}
  /\ Cardinality(xsrcS[x] \cup xsrcP[x])<=1
  /\ xsrcP[x]={} \* Correct design inserts before posting.
  /\ xsrcS[x] # {} => x<nx /\ xsrc[x] \in Pages
  /\ \A p \in xsrcS[x] : Loc(p)=xp[x]
  /\ x \in sentry => x<nx /\ xsrc[x] \in Pages /\
       (IF xk[x]="wr" THEN iv[x] \in {"reg","posted","failret"} ELSE xst[x]="posted")
  /\ hw[x]="fly" => x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)
  /\ (x \in sentry) => \A p \in xsrcS[x] : spst[p]="shared" /\ skey[p]=STok(xr[x],xg[x])
  /\ hw[x] \in {"issued","stop"} => xprefixOK[x]
PrefixQuarantineIntegrity ==
  /\ \A h \in squar : h[1]<nx /\ h[2] \in xsrcS[h[1]] /\ spst[h[2]]="shared" /\ skey[h[2]]=STok(xr[h[1]],xg[h[1]]) /\ iv[h[1]] # "reg"
  /\ \A x \in Xids : (hw[x]="stop" /\ hok[x] /\ xdst[x] \in Pages /\ Held(xdst[x],x)) => dpreOK[xdst[x]]
  /\ \A i \in PInst,r \in Rq : (Active(i,r) /\ smap[i][r] \in SPages /\ spst[smap[i][r]]="priv") =>
       ph[i][r] \in {"pre","ready"}
\* prefix-choice counterexample: phantom prefix pin in pre before prefix choice permits double acquisition.
PrefixPinProvenance ==
  /\ \A i \in PInst,k \in KSlots : kpin[i][k] => \A e \in krs[i][k] : e[3] \in SPages =>
       /\ rg[i][e[1]] >= e[2]
       /\ rg[i][e[1]]=e[2] => schoice[i][e[1]] /\ ph[i][e[1]] \in {"ready","reg","sent","exp","end"}
       /\ (e[4]=1 /\ rg[i][e[1]]=e[2] /\ Active(i,e[1])) => smap[i][e[1]]=e[3]
  /\ \A h \in rpgS : (rg[h[1]][h[2]]=h[3] /\ Active(h[1],h[2])) => smap[h[1]][h[2]]=h[4]
SInd == IF ~PrefixSharing THEN SInit ELSE PrefixRequestHolders /\ PrefixPageConsistency /\ PrefixPinIntegrity /\ PrefixTransferSnapshots /\ PrefixQuarantineIntegrity /\ PrefixPinProvenance

RegisteredEntryHeld ==
       IF ~PrefixSharing THEN TRUE ELSE \A x \in Xids : iv[x]="reg" => x \in sentry

\* pull source-holder counterexample CPrefixPull part1: a pull exposer with xst=posted cannot lose all source holders.
\* PExpose creates sentry with the snapshot; SFollow removes it only on Close (terminal xst)
\* or Quarantine (which transfers every source to squar). squar never shrinks in this model.
PullSourceHeld ==
       IF ~PrefixSharing THEN TRUE ELSE \A x \in Xids : (xk[x]="rd" /\ xst[x]="posted") =>
          x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)

\* the contract: message x-domain is an explicit structural invariant, independent of MsgU.
\* TypeOK and Safety remain unchanged. All five message families use allocated x ids.
MsgXDomain == \A m \in net :
  m.t \in {"sinfo","notice","nopost","revoke","relsrc"} => m.x \in Xids

\* the contract: strengthen only the induction candidate, without changing Init or actions.
PrivateMapOwner == IF ~PrefixSharing THEN TRUE ELSE
 \A i \in PInst, r \in Rq :
  (Active(i,r) /\ smap[i][r] \in SPages /\ spst[smap[i][r]]="priv")
  => sown[smap[i][r]]=r /\ sgen[smap[i][r]]=rg[i][r]

EntryQuarantineDisjoint == IF ~PrefixSharing THEN TRUE ELSE
 \A x \in sentry : \A p \in xsrcS[x] : <<x,p>> \notin squar

IndInv == TypeOK /\ MsgXDomain /\ SInd /\ Safety /\ KStruct /\ Strengthen /\ RegisteredEntryHeld /\ PullSourceHeld /\ PrivateMapOwner /\ EntryQuarantineDisjoint
IndInit == /\ net \in SUBSET MsgU
           /\ IndInv
====
