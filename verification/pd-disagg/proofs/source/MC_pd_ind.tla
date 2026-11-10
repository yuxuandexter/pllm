---- MODULE MC_pd_ind ----
\* Source D (D-057 §2) for the certus-pd B-line design model PdCore: Apalache single-step induction (D-055 §2.3).
\*   init: --cinit=<C> --init=Init    --inv=IndInv --length=0
\*   step: --cinit=<C> --init=IndInit --inv=IndInv --length=1
\*   safe: --cinit=<C> --init=IndInit --inv=Safety --length=0
\* Run with run_ind.sh <tag> init step safe (CINIT=<name> picks the constant set).
\* IndInv = TypeOK /\ Safety /\ K-conjuncts (structural) /\ S-conjuncts (strengthening forced by CTIs; table in README).
\* Scope of the induction: Unquar = FALSE (step-1 rule), Mut = "none"; push under (HComplete narrow, HOrder widest,
\* HVisible widest, notice, flush) = the D-071 design under the reading W0 must confirm; pull under widest readings + flush.
EXTENDS PdCore
IndNext == SNext \/ (BaseNext /\ SFollow)

\* ---------------- constant sets ----------------
CBase == /\ B2 = FALSE /\ SPP = 0
         /\ /\ HComplete = "narrow" /\ HOrder = "widest" /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
         /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE /\ Ovl = TRUE /\ KR = 1 /\ PReg = TRUE /\ Mut = "none" /\ Faults = TRUE /\ MaxFail = 1
CPush == CBase /\ Mode = "push" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2
CPull == CBase /\ Mode = "pull" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2
\* scale + 1 (D-057 §3): page_size 2 (tail pages), and 1P2D
CPushPS2 == CBase /\ Mode = "push" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 2 /\ MX = 2
CPullPS2 == CBase /\ Mode = "pull" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 2 /\ MX = 2
CPush12 == CBase /\ Mode = "push" /\ NPI = 1 /\ NDI = 2 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 3 /\ PS = 1 /\ MX = 2
CPull12 == CBase /\ Mode = "pull" /\ NPI = 1 /\ NDI = 2 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 3 /\ PS = 1 /\ MX = 2
\* induction calibration: one mutant each (step must report a CTI)
CPushTO   == /\ B2=FALSE /\ SPP=0 /\ HComplete = "narrow" /\ HOrder = "widest" /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
             /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE /\ Ovl = TRUE /\ KR = 1 /\ PReg = TRUE /\ Mut = "timeoutRelease" /\ Faults = TRUE /\ MaxFail = 1
             /\ Mode = "push" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2
CPushNBC  == /\ B2=FALSE /\ SPP=0 /\ HComplete = "narrow" /\ HOrder = "widest" /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
             /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE /\ Ovl = TRUE /\ KR = 1 /\ PReg = TRUE /\ Mut = "noticeBeforeCompletion" /\ Faults = TRUE /\ MaxFail = 1
             /\ Mode = "push" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2
CPushHCW  == /\ B2=FALSE /\ SPP=0 /\ HComplete = "widest" /\ HOrder = "widest" /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
             /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE /\ Ovl = TRUE /\ KR = 1 /\ PReg = TRUE /\ Mut = "none" /\ Faults = TRUE /\ MaxFail = 1
             /\ Mode = "push" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2
CPullSFA2 == /\ B2=FALSE /\ SPP=0 /\ HComplete = "narrow" /\ HOrder = "widest" /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
             /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE /\ Ovl = TRUE /\ KR = 1 /\ PReg = TRUE /\ Mut = "sourceFreedBeforeAck" /\ Faults = TRUE /\ MaxFail = 1
             /\ Mode = "pull" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2
\* RB-001 / RB-002 self-calibration (step must report a CTI)
CMut(m, md) == /\ B2=FALSE /\ SPP=0 /\ HComplete = "narrow" /\ HOrder = "widest" /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
             /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE /\ Ovl = TRUE /\ KR = 1 /\ PReg = TRUE /\ Mut = m /\ Faults = TRUE /\ MaxFail = 1
             /\ Mode = md /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2
CPushPRF == CMut("pReleaseFree", "push")
CPullPRF == CMut("pReleaseFree", "pull")
CPushIgn == CMut("ignoreLt", "push")
CPullIgn == CMut("ignoreLt", "pull")
CPushFOF == CMut("freeOnFinish", "push")
CPullFOF == CMut("freeOnFinish", "pull")
\* B1 / PReg self-calibration (step must report a CTI on the expected conjunct)
CPushKUL == CMut("kLaunchUnlanded", "push")
CPullKUL == CMut("kLaunchUnlanded", "pull")
CPushKUF == CMut("kLaunchUnflushed", "push")
CPushKFU == CMut("kFreeUnderRead", "push")
CPullKFU == CMut("kFreeUnderRead", "pull")
CPushKDE == CMut("kDoneEarly", "push")
CPushCS  == CMut("cancelSubmitted", "push")
\* B 修订：PReg 超时修法的自校准（step 必须给 CTI）
CPushPNC == CMut("pEndNoCancel", "push")
CPushDTR == CMut("drainTimeoutReg", "push")
\* D-082：¬ok notice 当作已停证据（设计前提 HComplete narrow 之内：错误完成可以在 issued 时出现）
CPushNok == /\ B2=FALSE /\ SPP=0 /\ HComplete = "narrow" /\ HOrder = "widest" /\ HVisible = "widest" /\ PushEv = "notice" /\ Flush = TRUE
            /\ Unquar = FALSE /\ PRel = TRUE /\ BadLen = TRUE /\ Ovl = TRUE /\ KR = 1 /\ PReg = TRUE /\ Mut = "nokFrees" /\ Faults = TRUE /\ MaxFail = 1
            /\ Mode = "push" /\ NPI = 1 /\ NDI = 1 /\ NR = 1 /\ MG = 2 /\ PPL = 1 /\ NP = 2 /\ PS = 1 /\ MX = 2


CB2Base == /\ B2=TRUE /\ SPP=2 /\ HComplete="narrow" /\ HOrder="widest" /\ HVisible="widest" /\ PushEv="notice"
 /\ Flush=TRUE /\ Unquar=FALSE /\ PRel=TRUE /\ BadLen=TRUE /\ Ovl=TRUE /\ KR=1 /\ PReg=TRUE
 /\ Mut="none" /\ Faults=TRUE /\ MaxFail=1 /\ NPI=1 /\ NDI=1 /\ NR=1 /\ PPL=1 /\ NP=2 /\ PS=1
CB2Push == CB2Base /\ Mode="push" /\ MG=2 /\ MX=2
CB2Pull == CB2Base /\ Mode="pull" /\ MG=2 /\ MX=2
CB2Small == CB2Base /\ Mode="push" /\ MG=1 /\ MX=1

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
NHits(p) == Cardinality({r \in Rq : ph[Loc(p)][r] \in {"run", "ovl"} /\ rhit[Loc(p)][r] /\ rpg[Loc(p)][r] = p})   \* RB-004：ovl 的命中记录也持有引用
CqeHw(x) == IF xk[x] = "wr" /\ (HComplete = "widest" \/ ~hok[x]) THEN {"issued", "stop"} ELSE {"stop"}
\* B 修订（DGrow）：D 上的加页 = 私有页、不是它那个槽的记录映射页（K7、K16）
GrownP(p) == IsD(Loc(p)) /\ pst[p] = "priv" /\ pr[p] \in Rq /\ rpg[Loc(p)][pr[p]] # p

\* ================= K: structural conjuncts (written before the first step check) =================
\* K1 router
K1 == \A r \in Rq :
        /\ (rt[r] = "idle") <=> (gen[r] = 0)
        /\ gen[r] >= 1 => (rp[r] = hp[r][gen[r]] /\ rd[r] = hd[r][gen[r]])
        /\ rt[r] = "wait" => crep[r][gen[r]] = "none"
        /\ \A g \in Gens :
             /\ g <= gen[r] => (hp[r][g] \in PInst /\ hd[r][g] \in DInst)
             /\ g > gen[r] => (hp[r][g] = 0 /\ hd[r][g] = 0 /\ crep[r][g] = "none" /\ drep[r][g] = 0 /\ ~dsucc[r][g])
\* K2 xfer records: fresh ids are blank; allocated ids have the mode's kind and consistent endpoints
K2 == \A x \in Xids :
        IF x >= nx
        THEN /\ xk[x] = "none" /\ xr[x] = 0 /\ xg[x] = 0 /\ xp[x] = 0 /\ xd[x] = 0 /\ xsrc[x] = 0 /\ xdst[x] = 0
             /\ xnt[x] = 0 /\ hw[x] = "none" /\ ~hok[x] /\ iv[x] = "none" /\ xst[x] = "none" /\ xlt[x] = 0
        ELSE /\ xk[x] = (IF Mode = "push" THEN "wr" ELSE "rd")
             /\ xr[x] \in Rq /\ xg[x] \in Gens /\ xg[x] <= gen[xr[x]]
             /\ xp[x] = hp[xr[x]][xg[x]] /\ xd[x] = hd[xr[x]][xg[x]]
             /\ xnt[x] = NTok(xr[x], xg[x]) /\ xst[x] # "none"
             /\ IF xk[x] = "wr" /\ InitPage(x) = 0 THEN xlt[x] = 0 ELSE xlt[x] \in PLens(xr[x], xg[x])   \* K2b（RB-002；PReg：取消后的 nopost 有源页、有 lt）
             /\ ExpPage(x) \in Pages /\ Loc(ExpPage(x)) = ExpInst(x)
             /\ iv[x] = "none" => InitPage(x) = 0
             /\ iv[x] \notin {"none", "nopost"} => InitPage(x) # 0
             /\ (iv[x] = "nopost" /\ InitPage(x) # 0) => (xk[x] = "wr" /\ PReg)   \* PReg：登记后被取消
             /\ InitPage(x) # 0 => (InitPage(x) \in Pages /\ Loc(InitPage(x)) = InitInst(x))
\* K3 hardware vs. initiator vs. exposer states
K3 == \A x \in Xids :
        /\ (iv[x] \in {"none", "nopost", "reg"}) <=> (hw[x] = "none")
        /\ iv[x] = "reg" => (xk[x] = "wr" /\ PReg /\ xst[x] = "posted")
        /\ iv[x] = "cqe" => hw[x] \in CqeHw(x)
        /\ hw[x] = "issued" => xk[x] = "wr"
        /\ xst[x] = "revoked" => iv[x] = "nopost"
        /\ xst[x] = "landed" => (hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x])   \* RB-002：只有 lt = 计划才算落地
        /\ (xk[x] = "rd" /\ iv[x] \notin {"none", "nopost"}) => xlt[x] = xnt[x]   \* RB-002：pull 的 D 只在 lt = 计划时发 READ
        /\ xst[x] = "failed" => IF xk[x] = "wr" THEN (hw[x] = "stop" /\ hok[x] /\ xlt[x] # xnt[x])   \* D-082：push 的 failed 只来自 BAD_LEN
                                 ELSE ((iv[x] = "cqe" /\ hw[x] = "stop" /\ ~hok[x]) \/ iv[x] = "nopost")
        /\ InFl(x) => (xst[x] = "posted" /\ (iv[x] \in {"posted", "failret"} \/ (iv[x] = "cqe" /\ hw[x] = "issued" /\ ~hok[x])))
\* K4 the ledger is exact: exposer side <-> xst posted; initiator side <-> iv posted/failret; nothing else is in a ledger
K4 == /\ \A x \in Xids : x < nx =>
           /\ (x \in led[ExpPage(x)]) <=> (xst[x] = "posted")
           /\ InitPage(x) \in Pages => ((x \in led[InitPage(x)]) <=> (iv[x] \in {"reg", "posted", "failret"}))
      /\ \A p \in Pages : \A x \in led[p] : x < nx /\ (p = ExpPage(x) \/ p = InitPage(x))
\* K5 ledger entries are owned: a page with x in its ledger is still held for x's (r, g)
K5 == \A p \in Pages : \A x \in led[p] : OwnedBy(p, xr[x], xg[x])
\* K6 stream ledger: truth within ledger; every tag is the owner's (or a D decode read of a shared page)
K6 == \A p \in Pages :
        /\ sfly[p] \subseteq sled[p]
        /\ \A t \in sled[p] : t[2] <= gen[t[1]] /\ (OwnedBy(p, t[1], t[2]) \/ (pst[p] = "shared" /\ IsD(Loc(p))))
\* K7 page fields by state
K7 == \A p \in Pages :
        /\ ptl[p] >= 0
        /\ pst[p] = "free" => (pr[p] = 0 /\ pgn[p] = 0 /\ plt[p] = 0 /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {}
                               /\ prefc[p] = 0 /\ pqp[p] = 0)
        /\ pst[p] \in {"priv", "drain", "quar"} => (pr[p] \in Rq /\ pgn[p] \in Gens /\ pgn[p] <= gen[pr[p]])
        /\ pst[p] = "quar" => pqp[p] \in Inst
        /\ pst[p] # "quar" => pqp[p] = 0
        /\ pst[p] # "shared" => prefc[p] = 0
        /\ pst[p] = "shared" => (IsD(Loc(p)) /\ led[p] = {} /\ ptl[p] = PS /\ prefc[p] = NHits(p))
        /\ pst[p] = "drain" => (led[p] # {} \/ sled[p] # {} \/ KPinned(p))   \* B1：钉也是在途
        /\ pst[p] \in {"drain", "quar"} => \A r \in Rq : ~Maps(Loc(p), r, p)
        /\ pst[p] = "priv" => \/ (Maps(Loc(p), pr[p], p) /\ rg[Loc(p)][pr[p]] = pgn[p] /\ ~rhit[Loc(p)][pr[p]])
                              \/ GrownP(p)   \* B 修订：D 的加页（K16）
\* K8 P records
K8 == \A i \in Inst, r \in Rq :
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
\* K9 D records
K9 == \A j \in DInst, r \in Rq :
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
\* K10 D-side destination truth: while the page is still held for x, it holds exactly what x has placed
\*   K10g (D-106, REPIN §9.3): the run / ovl exemption is only for the record of x's own generation. The slot-only exemption
\*   of b91f0f75 (kept in MC_pd_ind_k10.tla) let a g2 record in run on another page exempt g1's failed x, whose page is still
\*   pinned in Drain: CTI at PPL = 2 (CPullPPL2), unreachable, brought in by B1's pins.
K10 == \A x \in Xids :
         (x < nx /\ xdst[x] \in Pages /\ OwnedBy(xdst[x], xr[x], xg[x])
            /\ ~(ph[Loc(xdst[x])][xr[x]] \in {"run", "ovl"} /\ rg[Loc(xdst[x])][xr[x]] = xg[x]))
           => ptl[xdst[x]] = (IF hw[x] = "stop" /\ hok[x] THEN xlt[x] ELSE 0)
\* K11 source truth: a page with x in its ledger on the source side has the full prefill and no local op
K11 == \A x \in Xids :
         (x < nx /\ xsrc[x] \in Pages /\ x \in led[xsrc[x]])
           => (ptl[xsrc[x]] = xlt[x] /\ sfly[xsrc[x]] = {} /\ sled[xsrc[x]] = {})
\* K12 messages
K12 == \A m \in net :
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
\* K13 replies and ghosts
K13 == /\ ~gbad
       /\ \A r \in Rq, g \in Gens :
            /\ drep[r][g] <= 1
            /\ dsucc[r][g] => drep[r][g] = 1
            /\ crep[r][g] = "ok" => dsucc[r][g]
            /\ crep[r][g] # "two"
            /\ drep[r][g] = 1 => (rg[hd[r][g]][r] > g \/ (rg[hd[r][g]][r] = g /\ ph[hd[r][g]][r] = "end"))

\* K14 B1 kernel step slots: the truth runs only under a pin; a pin has a nonempty read set; entries are well formed
K14 == \A i \in Inst, s \in KSlots :
         /\ kfly[i][s] => kpin[i][s]
         /\ (krs[i][s] # {}) <=> kpin[i][s]
         /\ \A e \in krs[i][s] : Loc(e[3]) = i /\ e[2] <= gen[e[1]] /\ (IF e[3] \in SPages THEN B2 /\ IsP(i) /\ e[4] \in {1,4} ELSE (e[4] \in {0,1,2,3} /\ (e[4] # 0 => IsD(i))))   \* B 修订：sh 2 / 3（加页）也只在 D
\* K15 B1 pinned data: while pinned (not only while the GPU runs) every read entry keeps the launch-time data facts
\*   (KReadIntegrity is K15 restricted to kfly, via K14); D private entries have an empty RDMA ledger, P entries no stream op
K15 == \A i \in Inst, s \in KSlots : kpin[i][s] => \A e \in krs[i][s] :
         /\ KData(i, e)
         /\ (IsD(i) /\ e[4] # 1) => led[e[3]] = {}   \* B 修订：加页（sh 2 / 3）同私有页
         /\ (IsP(i) /\ e[3] \in Pages) => sled[e[3]] = {}

\* K16 B 修订（DGrow）：D 上不是记录映射页的私有页 = 加页。它属于本实例上该槽当前那一代、在 run / ovl 的记录；没有任何账本条目、
\*   没有本地流 op（不暴露、不进 RDMA）；核心记下的写进度 = 真值，只取 0（还没有步写过）或 1（某一步已写下，A9）；没有 RDMA 写在途
K16 == \A p \in Pages : GrownP(p) =>
         /\ ph[Loc(p)][pr[p]] \in {"run", "ovl"} /\ rg[Loc(p)][pr[p]] = pgn[p]
         /\ led[p] = {} /\ sled[p] = {} /\ sfly[p] = {}
         /\ plt[p] = ptl[p] /\ ptl[p] \in {0, 1}
         /\ NoWriteInto(p)

\* K17 B 修订（DGrow）：被钉的加页元素（sh 2 / 3）属于一个已经提交过的代：发射时那一代的记录在 run / ovl（只有它们有加页），之后
\*   只会走到 end 或被同槽更新的一代顶替；它的页不是那一代记录映射的页。CTI rev_CPullPPL2_step（第一次 step，K16 之后）：前态里
\*   D 的 g2 记录还在 wait、映射页 4，读集合却有 <<1, 2, 4, 3>>；DRecvSinfo 往页 4 发 READ，K15 的 NoWriteInto 假。不可达：sh 3 的
\*   元素只由 KLaunch 对加页建出，那时记录已在 run，代不回退
K17 == \A i \in Inst, s \in KSlots : kpin[i][s] => \A e \in krs[i][s] :
         e[4] \in {2, 3} =>
           \/ rg[i][e[1]] > e[2]
           \/ rg[i][e[1]] = e[2] /\ ph[i][e[1]] \in {"run", "ovl", "end"} /\ rpg[i][e[1]] # e[3]

KStruct == K1 /\ K2 /\ K3 /\ K4 /\ K5 /\ K6 /\ K7 /\ K8 /\ K9 /\ K10 /\ K11 /\ K12 /\ K13 /\ K14 /\ K15 /\ K16 /\ K17

\* ================= S: strengthening conjuncts forced by CTIs (added after the first step checks) =================
\* S1 XferBornOfRecord. CTI p0_step (push): s0 has x1 for (r1, g2) (landed, dst page 2) while D's record for slot 1 is
\*   still at g1 (end) and page 2 is free; DRecvReq(r1, g2) allocates page 2 for (r1, g2) and a second xfer x2, so x1 now
\*   "owns" page 2 with ptl 0 (K10'). Unreachable: an xfer for (r, g) is created only by the exposer's record for (r, g)
\*   (push: D at DRecvReq; pull: P at PExpose), and a record's generation never goes back.
S1 == \A x \in Xids : x < nx =>
        /\ ph[ExpInst(x)][xr[x]] # "none" /\ rg[ExpInst(x)][xr[x]] >= xg[x]
        /\ (rg[ExpInst(x)][xr[x]] = xg[x] /\ Active(ExpInst(x), xr[x])) => rx[ExpInst(x)][xr[x]] = x
\* S2 XferUnique (same CTI): at most one xfer per (r, g) (one page per request, one record per (r, g)).
S2 == \A x1, x2 \in Xids : (x1 < nx /\ x2 < nx /\ x1 # x2) => (xr[x1] # xr[x2] \/ xg[x1] # xg[x2])
\* S3 NoTeardown (same CTI shows torn = {1} with Unquar = FALSE): without Unquar nothing is ever torn down.
S3 == ~Unquar => \A i \in Inst : torn[i] = {}
\* S4 HangCount (same CTI shows alive[1] = FALSE with nfail = 0).
S4 == Cardinality({i \in Inst : ~alive[i]}) <= nfail

\* S5 RunHasLanded. CTI p1_step (push): s0 has D's record (r1, g2) in run on page 2 with rx = x1, but xst[x1] = failed and
\*   hok[x1] = FALSE (ptl 1 from another xfer); DAbort drains page 2 and K10' fails. Unreachable: a non-hit record enters run
\*   only by DLanded (xst landed, hence stop and ok) or DReadDone with hok; the xfer then never changes.
S5 == \A j \in DInst, r \in Rq :
        (ph[j][r] \in {"run", "ovl"} /\ ~rhit[j][r]) =>
          LET x == rx[j][r] IN
            /\ x \in Xids /\ x < nx /\ xdst[x] = rpg[j][r] /\ xr[x] = r /\ xg[x] = rg[j][r]
            /\ hw[x] = "stop" /\ hok[x] /\ xlt[x] = xnt[x]
            /\ (Mode = "push" => xst[x] = "landed") /\ (Mode = "pull" => iv[x] = "cqe")

\* S6 XferPostedByRecord (initiator-side twin of S1). CTI q0_step (pull): s0 has x2 for (r1, g2) posted (xdst = page 2,
\*   stop, ok) while D's record for slot 1 is still at g1; DRecvReq(r1, g2) allocates page 2 for (r1, g2) with ptl 0, and x2
\*   now "owns" it (K10'). Unreachable: only the initiator's record for (r, g) posts x (push: P's PPost; pull: D's DRecvSinfo),
\*   and it keeps rx = x until it ends.
S6 == \A x \in Xids : (x < nx /\ InitPage(x) # 0) =>
        /\ ph[InitInst(x)][xr[x]] # "none" /\ rg[InitInst(x)][xr[x]] >= xg[x]
        /\ (rg[InitInst(x)][xr[x]] = xg[x] /\ Active(InitInst(x), xr[x])) => rx[InitInst(x)][xr[x]] = x

Strengthen == S1 /\ S2 /\ S3 /\ S4 /\ S5 /\ S6

\* B2 candidate strengthening; CTIs are classified in CTI.md before strengthening.
SI1 ==
  /\ \A i \in PInst,r \in Rq :
       /\ ph[i][r]="none" => smap[i][r]=0 /\ ~schoice[i][r]
       /\ smap[i][r] # 0 => schoice[i][r] /\ Loc(smap[i][r])=i
       /\ (Active(i,r) /\ smap[i][r] \in SPages /\ spst[smap[i][r]]="shared") => SH(i,r,rg[i][r],smap[i][r]) \in rpgS
       /\ ph[i][r] \in {"reg","sent","exp"} => SSendReady(i,r)
  /\ \A h \in rpgS :
       /\ Loc(h[4])=h[1] /\ h[3]<=gen[h[2]]
       /\ (rg[h[1]][h[2]]=h[3] /\ Active(h[1],h[2]) /\ smap[h[1]][h[2]]=h[4]) \/ SHPin(h)
SI2 == \A p \in SPages :
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
SI3 == \A i \in PInst,k \in KSlots : kpin[i][k] => \A e \in krs[i][k] : e[3] \in SPages =>
  /\ e[4] \in {1,4} /\ SData(e) /\ SHeld(e)
  /\ spst[e[3]]="shared" => SH(i,e[1],e[2],e[3]) \in rpgS
  /\ e[4]=4 => sown[e[3]]=e[1] /\ sgen[e[3]]=e[2]
SI4 == \A x \in Xids :
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
SI5 ==
  /\ \A h \in squar : h[1]<nx /\ h[2] \in xsrcS[h[1]] /\ spst[h[2]]="shared" /\ skey[h[2]]=STok(xr[h[1]],xg[h[1]]) /\ iv[h[1]] # "reg"
  /\ \A x \in Xids : (hw[x]="stop" /\ hok[x] /\ xdst[x] \in Pages /\ Held(xdst[x],x)) => dpreOK[xdst[x]]
  /\ \A i \in PInst,r \in Rq : (Active(i,r) /\ smap[i][r] \in SPages /\ spst[smap[i][r]]="priv") =>
       ph[i][r] \in {"pre","ready"}
\* CTI b6_step: phantom prefix pin in pre before prefix choice permits double acquisition.
SI6 ==
  /\ \A i \in PInst,k \in KSlots : kpin[i][k] => \A e \in krs[i][k] : e[3] \in SPages =>
       /\ rg[i][e[1]] >= e[2]
       /\ rg[i][e[1]]=e[2] => schoice[i][e[1]] /\ ph[i][e[1]] \in {"ready","reg","sent","exp","end"}
       /\ (e[4]=1 /\ rg[i][e[1]]=e[2] /\ Active(i,e[1])) => smap[i][e[1]]=e[3]
  /\ \A h \in rpgS : (rg[h[1]][h[2]]=h[3] /\ Active(h[1],h[2])) => smap[h[1]][h[2]]=h[4]
SInd == IF ~B2 THEN SInit ELSE SI1 /\ SI2 /\ SI3 /\ SI4 /\ SI5 /\ SI6

SI7 == IF ~B2 THEN TRUE ELSE \A x \in Xids : iv[x]="reg" => x \in sentry

\* CTI4 CB2Pull part1: a pull exposer with xst=posted cannot lose all source holders.
\* PExpose creates sentry with the snapshot; SFollow removes it only on Close (terminal xst)
\* or Quarantine (which transfers every source to squar). squar never shrinks in this model.
SI8 == IF ~B2 THEN TRUE ELSE \A x \in Xids : (xk[x]="rd" /\ xst[x]="posted") =>
          x \in sentry \/ (\A p \in xsrcS[x] : <<x,p>> \in squar)

\* D-168: message x-domain is an explicit structural invariant, independent of MsgU.
\* TypeOK and Safety remain unchanged. All five message families use allocated x ids.
MsgXDomain == \A m \in net :
  m.t \in {"sinfo","notice","nopost","revoke","relsrc"} => m.x \in Xids

\* D-207: strengthen only the induction candidate, without changing Init or actions.
PrivateMapOwner == IF ~B2 THEN TRUE ELSE
 \A i \in PInst, r \in Rq :
  (Active(i,r) /\ smap[i][r] \in SPages /\ spst[smap[i][r]]="priv")
  => sown[smap[i][r]]=r /\ sgen[smap[i][r]]=rg[i][r]

EntryQuarantineDisjoint == IF ~B2 THEN TRUE ELSE
 \A x \in sentry : \A p \in xsrcS[x] : <<x,p>> \notin squar

IndInv == TypeOK /\ MsgXDomain /\ SInd /\ Safety /\ KStruct /\ Strengthen /\ SI7 /\ SI8 /\ PrivateMapOwner /\ EntryQuarantineDisjoint
IndInit == /\ net \in SUBSET MsgU
           /\ IndInv
====
