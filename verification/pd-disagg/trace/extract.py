"""Map recorded ledger activity to PdCore traces without inferring run assumptions.

Inputs:
  extract.py <jsonl dir> <out dir>
      Read trace_shim.py JSONL, one file per CPU test.
  extract.py --pdt <step dir> <out dir>
      Merge PDT records from <step dir>/{P*,D*}.log in causal order.
  extract.py --pdtcpu <dir> <out dir>
      Read one .pdt file per CPU test. All instances share its sequence counter.

Explicit klaunch and kdone records select step mode. Each decode launch maps to
DStep, and its completion maps to DStepDone. KR_STEPS bounds in-flight decode
steps independently of the trace; its default of two covers overlap. If no model
slot is free, the event is NOT_CONSUMED. Prefill launches map to PStep, and the
last prefill completion maps to PFill. Read and complete records cross-check
these step records. Sequence gaps are errors in step mode. Legacy logs without
step records retain inferred completion handling.

Constants come from run_decl.tsv or RUN_DECL, with the first matching filename
pattern selecting the environment. Unmatched files use production assumptions.
production and cpu-toy require the flush hook. cpu-stub uses immediately visible
memmove transfers with Flush FALSE and narrow HVisible. GPU logs always use
production assumptions. Missing required flush hooks are errors; run_tv.sh also
refuses CONSUMED when the recorded test or run outcome is not passed.

Each run writes <name>.ndjson, TL_<name>.tla, TL_<name>.cfg, and <name>.meta,
plus a row in extract.tsv. GPU inputs also produce per-round and per-incarnation
projections, with inc/incarnations.tsv mapping request identities to traces.

Number instances with prefill first, rooms by first use, and transfers in merged
order. Represent each generation's page group with one fresh abstract page;
PPL is the largest group count on any instance. EXACT_P=1 retains observed P
page states. FIN_CALLERS selects CPU release callers treated as normal finish.
FOLD=finish_drain_fold maps a draining decode finish to the model's free ending
and marks that abstraction explicitly. MAX_ALL_EVENTS caps whole GPU traces at
6000 events by default; it does not change the per-incarnation projections."""

from __future__ import annotations

import kargs_check

import fnmatch
import json
import os
import re
import sys
from collections import Counter, OrderedDict

# Keep wire-state constants independent of the implementation import.
FREE, PRIVATE, DRAINING, QUAR = "free", "private", "draining", "quarantined"
X_POSTED, X_LANDED, X_VISIBLE, X_STOPPED, X_QUARANTINED = 1, 2, 3, 4, 5
E_POSTED, E_SUBMITTED, E_ABORT_REQ, E_DONE, E_FAILED, E_CANCELLED = 1, 2, 3, 4, 5, 6
OK, BAD_LEN = 0, -4
SEND_NOTHING, SEND_DONE, SEND_ACK, SEND_FAIL_UNSTOPPED = 0, 1, 2, 3
QNAMES = {1: "peer_lost", 2: "timeout", 3: "transfer_failed", 4: "cancelled"}
FIELDS = ("k", "i", "pe", "r", "g", "x", "p", "ok", "rs", "pg", "a", "seq")
# Step records carry row, generation, and page identities. PdTrace chooses a
# symmetric kernel slot; other events retain the legacy field layout.
STEP_FIELDS = {"DStep": ("it",), "DStepDone": ("it",), "PStep": ("it",)}
def event_fields(ev):
    return FIELDS + STEP_FIELDS.get(ev['k'], ()) + (("ka",) if "ka" in ev else ())


STEP_KINDS = tuple(STEP_FIELDS)
KR_STEPS = int(os.environ.get("KR_STEPS", "2"))
# Separate registration from submission so cancellation supplies stop evidence
# only before the engine call. Legacy decode logs infer completion after the
# first launch. EXACT_P retains observed source states instead of folding them.

# Run declarations select assumptions independently of observed behavior.
ENV_CONSTS = {
    "production": {},
    "cpu-toy": {},
    "cpu-stub": {"Flush": "FALSE", "HVisible": '"narrow"'},
}

RX_MATCH = re.compile(r"PD prefill match rid=\S* uid=(\d+) room=(-?\d+) d_h=(\d+) xid=(\d+) peer=0x([0-9a-f]+)")
RX_ID = {
    "publish": re.compile(r"PD decode publish rid=\S* uid=(\d+) room=(-?\d+) h=(\d+) xid=(\d+) peer=0x([0-9a-f]+)"),
    "post": re.compile(r"PD prefill post rid=\S* uid=(\d+) room=(-?\d+) h=(\d+) eid=(\d+) d_h=(\d+) xid=(\d+)"),
    "landed": re.compile(r"PD decode landed rid=\S* uid=(\d+) room=(-?\d+) h=(\d+) xid=(\d+)"),
    "cancel": re.compile(r"PD decode cancel rid=\S* uid=(\d+) room=(-?\d+) h=(\d+) xid=(\d+)"),
    "quarD": re.compile(r"PD quarantine side=D reason=(\w+) rid=\S* uid=(\d+) room=(-?\d+) h=(\d+) xid=(\d+)"),
    "quarP": re.compile(r"PD quarantine side=P reason=(\w+) rid=\S* room=(-?\d+) h=(\d+) eid=(\d+) d_h=(\d+) xid=(\d+)"),
    "failed": re.compile(r"PD decode failed rid=\S* uid=(\d+) room=(-?\d+) h=(\d+) xid=(\d+)"),
}


def load_decl(src):
    path = os.environ.get("RUN_DECL") or os.path.join(src, "run_decl.tsv")
    rules = []
    if os.path.exists(path):
        with open(path) as f:
            for line in f:
                line = line.split("#", 1)[0].strip()
                if not line:
                    continue
                pat, env = line.split()[:2]
                if env not in ENV_CONSTS:
                    raise SystemExit(f"{path}: unknown env {env!r} (known: {sorted(ENV_CONSTS)})")
                rules.append((pat, env))
    return (path if rules else "none"), rules


def decl_env(rules, fname):
    for pat, env in rules:
        if fnmatch.fnmatchcase(fname, pat):
            return env
    return "production"


def group_state(states, side):
    """One state for a page group (all pages agree, else 'mixed'); P side folds private/draining."""
    vals = set(states.values())
    if not vals:
        return ""
    if len(vals) != 1:
        if side == "P" and vals <= {PRIVATE, DRAINING}:
            return "held"
        return "mixed:" + "/".join(sorted(vals))
    v = vals.pop()
    if side == "P" and os.environ.get("EXACT_P", "1") != "0":  # variant: P observed exactly (source-release ordering cross-check)
        side = "D"
    if side == "P":
        return {PRIVATE: "held", DRAINING: "held", FREE: "free", QUAR: "quar"}.get(v, v)
    return {PRIVATE: "priv", DRAINING: "drain", FREE: "free", QUAR: "quar"}.get(v, v)


def number(out, notes, scale_extra=None):
    """Number raw identities consistently for whole runs and projections.

    Rooms and transfers follow first appearance. Generations are ranked within
    each room; instances put prefill before decode. Each page key gets a fresh
    abstract page so unrelated lifetimes cannot alias."""
    rooms, gens, xs = OrderedDict(), {}, OrderedDict()
    for ev in out:
        rooms.setdefault(ev["room"], None)
        gens.setdefault(ev["room"], set()).add(ev["graw"])
        if ev["xraw"]:
            xs.setdefault(ev["xraw"], None)
        for (rr, rm, gw, xw, pk, row) in ev.get("_items", ()):  # step events: every item's identity
            rooms.setdefault(rm, None)
            rooms.setdefault(rr, None)
            gens.setdefault(rm, set()).add(gw)
            if xw:
                xs.setdefault(xw, None)
    ridx = {rm: n for n, rm in enumerate(rooms, 1)}
    grank = {rm: {g: n for n, g in enumerate(sorted(gs), 1)} for rm, gs in gens.items()}
    xidx = {x: n for n, x in enumerate(xs, 1)}
    used = OrderedDict()
    for ev in out:
        used.setdefault(ev["_i"], ev["_io"])
        if ev["_pe"] is not None and ev["_peo"] is not None:
            used.setdefault(ev["_pe"], ev["_peo"])
    ps = sorted([i for i, (s, o) in used.items() if s == "P"], key=lambda i: used[i][1])
    ds = sorted([i for i, (s, o) in used.items() if s == "D"], key=lambda i: used[i][1])
    imap = {i: n for n, i in enumerate(ps + ds, 1)}
    pages_abs, abs_page = Counter(), {}
    for ev in out:
        for pk in [ev["_pk"]] + [t[4] for t in ev.get("_items", ())]:
            if pk is not None and pk not in abs_page:
                pages_abs[pk[1]] += 1
                abs_page[pk] = pages_abs[pk[1]]
    ppl = max([pages_abs[i] for i in imap] + [1])

    def pnum(pk):
        return 0 if pk is None else (imap[pk[1]] - 1) * ppl + abs_page[pk]

    evs_out, seen_rg = [], set()
    fly, live, nstep = Counter(), set(), 0   # step mode: D steps in flight per model instance (slots: PdTrace \E s)
    for ev in out:
        i = imap[ev["_i"]]
        pe = imap.get(ev["_pe"], 0)
        p = pnum(ev["_pk"])
        r, g = ridx[ev["room"]], grank[ev["room"]][ev["graw"]]
        x = xidx.get(ev["xraw"], 0)
        if ev["k"] in STEP_KINDS:
            nstep += 1
            its = [[ridx[rr], grank[rm][gw], pnum(pk)] for (rr, rm, gw, xw, pk, row) in ev["_items"]]
            # A step has no single peer; its program ignores the peer field.
            o = dict(k=ev["k"], i=i, pe=i, r=r, g=g, x=x, p=p, ok=True, rs="", pg="", a=0, seq=ev["seq"])
            if ev["k"] == "DStep":
                live.add(ev["_step"])
                fly[i] += 1
                if fly[i] > KR_STEPS:  # the model has no free slot here: NOT_CONSUMED at this event (fail-closed)
                    notes.append(f"seq {ev['seq']}: {fly[i]} > KR={KR_STEPS} D steps in flight on {ev['_i']}")
            elif ev["k"] == "DStepDone":
                if ev["_step"] not in live:  # its klaunch is not in this trace (projection): nothing to finish
                    continue
                live.discard(ev["_step"])
                fly[i] -= 1
            o["it"] = its
            if "_ka" in ev:
                o["ka"] = ev["_ka"]
            o["rows"] = [t[5] for t in ev["_items"]]
            o["step"] = ev["_step"][1]
            for k in ("src",):
                if k in ev:
                    o[k] = ev[k]
            evs_out.append(o)
            continue
        if ev["pg"].startswith("mixed"):
            notes.append(f"seq {ev['seq']}: page group mixed {ev['pg']}")
        fa = 1 if (r, g) not in seen_rg else 0
        seen_rg.add((r, g))
        o = dict(k=ev["k"], i=i, pe=pe, r=r, g=g, x=x, p=p, ok=ev["ok"], rs=ev["rs"], pg=ev["pg"], a=fa,
                 seq=ev["seq"])
        for k in ("src", "rid", "inf", "fold", "why"):
            if k in ev:
                o[k] = ev[k]
        evs_out.append(o)
    scale = dict(NPI=len(ps), NDI=len(ds), NR=max(1, len(rooms)), MG=max([1] + [len(v) for v in gens.values()]),
                 PPL=ppl, MX=max(1, len(xs)))
    if nstep:
        scale["KR"] = KR_STEPS  # step mode: the design bound on D kernel steps in flight (not read from the trace)
    if scale_extra:
        scale.update(scale_extra)
    return evs_out, scale, imap


def project(out, keys):
    """Keep only the selected request incarnations, including their step items.

    Drop empty steps. number() removes completions whose launches were omitted."""
    res = []
    for ev in out:
        if "_items" in ev:
            its = [t for t in ev["_items"] if (t[1], t[2]) in keys]
            if not its:
                continue
            e2 = dict(ev)
            e2["_items"] = its
            e2["room"], e2["graw"], e2["xraw"], e2["_pk"] = its[0][1], its[0][2], its[0][3], its[0][4]
            res.append(e2)
        elif (ev["room"], ev["graw"]) in keys:
            res.append(ev)
    return res


def mk(k, inst, peer, d, page_key, pg="", ok=True, rs="", seq=0, **extra):
    """An internal event; d = identity dict of the (r, g, x) it belongs to (room, g, x, side order keys)."""
    ev = dict(k=k, _i=inst, _io=d["_order"][inst], _pe=peer, _peo=d["_order"].get(peer), room=d["room"],
              graw=d["g"], xraw=d["x"], _pk=page_key, ok=ok, rs=rs, pg=pg, seq=seq)
    ev.update(extra)
    return ev


class Run:
    """CPU run: trace_shim.py JSONL."""

    def __init__(self, evs):
        self.evs = evs
        self.side = OrderedDict()
        for e in evs:
            if e["k"] == "role" and e["inst"] not in self.side:
                self.side[e["inst"]] = e["side"]
        self.order = {i: (s, n) for n, (i, s) in enumerate(self.side.items())}
        self.notes = []
        self.noflush = []

    def extract(self):
        evs = [e for e in self.evs if e.get("inst") in self.side or e["k"] == "log"]
        dgen = {}       # Keep raw transfer and request identities separate until event numbering.
        dxid = {}
        open_room = {}
        inc = Counter()
        xorder = {}
        p_uid_gen = {}
        p_match = {}
        p_post = {}
        last_fill = {}
        for e in evs:
            if e["k"] == "pdone":
                p_uid_gen[(e["inst"], e["gen"])] = e["uid"]
            if e["k"] == "match":  # PrefillPD._match (the glue's match line has no P instance)
                p_match[(e["inst"], e["uid"])] = (e["peer"], e["d_gen"])
            if e["k"] != "call":
                continue
            inst, m, a, res = e["inst"], e["m"], e["a"], e["res"]
            if m == "open_req":
                open_room[(inst, res)] = a[0]
            if self.side.get(inst) == "D" and m == "d_expect" and isinstance(res, int) and res > 0:
                h = a[0]
                room = open_room.get((inst, h))
                inc[room] += 1
                xorder[(inst, res)] = len(xorder) + 1
                dgen[(inst, h)] = dict(room=room, g=inc[room], xid=res, x=xorder[(inst, res)],
                                       peer=a[1], pages=e["post"].get("xpages", []), _order=self.order)
                dxid[(inst, res)] = (inst, h)
            if self.side.get(inst) == "P" and m == "p_post" and isinstance(res, int) and res > 0:
                p_post[(inst, a[0])] = (a[2], a[4], a[5])
            if self.side.get(inst) == "P" and m == "complete":
                for gen in e["pre"].get("gens", []):
                    last_fill[(inst, gen)] = e["seq"]  # chunked prefill: only the last step ends the model op
        pgen_d = {}
        for (pi, gen), (dinst, dh, xid) in p_post.items():
            pgen_d[(pi, gen)] = (dinst, dh)
        for (pi, gen), uid in p_uid_gen.items():
            if (pi, gen) not in pgen_d and (pi, uid) in p_match:
                pgen_d[(pi, gen)] = p_match[(pi, uid)]

        out = []
        first_launch = set()
        pending_flush = Counter()
        pgroups = {}
        ident = Counter()
        drops = Counter()

        def emit(k, inst, peer, d, page_key, **kw):
            out.append(mk(k, inst, peer, d, page_key, **kw))

        for e in evs:
            if e["k"] == "flush":
                pending_flush[e["inst"]] += 1
                continue
            if e["k"] == "log":
                for name, rx in RX_ID.items():
                    if rx.search(e["msg"]):
                        ident[name] += 1
                continue
            if e["k"] != "call":
                continue
            inst, m, a, res, seq = e["inst"], e["m"], e["a"], e["res"], e["seq"]
            side = self.side[inst]
            post_pages = e["post"].get("pages", {})
            if side == "D":
                if m == "d_expect" and isinstance(res, int) and res > 0:
                    d = dgen[(inst, a[0])]
                    emit("DExpose", inst, d["peer"], d, ("D", inst, a[0]), pg=group_state(post_pages, "D"), seq=seq)
                elif m == "d_landed":
                    key = dxid.get((inst, a[3]))
                    if res in (OK, BAD_LEN) and key is not None:
                        d = dgen[key]
                        if pending_flush[inst] > 0 and e["pre"].get("rstate") == 1:
                            pending_flush[inst] -= 1
                            emit("DFlush", inst, d["peer"], d, ("D",) + key, seq=seq)
                        emit("DNotice", inst, d["peer"], d, ("D",) + key, pg=group_state(post_pages, "D"),
                             ok=(res == OK), seq=seq)
                    else:
                        drops["d_landed"] += 1
                elif m == "d_mark_visible":
                    key = dxid[(inst, a[0])]
                    d = dgen[key]
                    emit("DVisible", inst, d["peer"], d, ("D",) + key, pg=group_state(post_pages, "D"), seq=seq)
                elif m == "d_stopped":
                    key = dxid.get((inst, a[3]))
                    if res == OK and key is not None:
                        d = dgen[key]
                        emit("DStopped", inst, d["peer"], d, ("D",) + key, pg=group_state(post_pages, "D"), seq=seq)
                    else:
                        drops["d_stopped"] += 1
                elif m == "d_unstopped":
                    key = dxid.get((inst, a[0]))
                    pending_flush[inst] = 0
                    if res == OK and key is not None:
                        d = dgen[key]
                        emit("DUnstop", inst, d["peer"], d, ("D",) + key, pg=group_state(post_pages, "D"),
                             rs=QNAMES.get(a[1], "?"), seq=seq)
                    else:
                        drops["d_unstopped"] += 1
                elif m == "peer_lost":
                    for xid in res:
                        key = dxid.get((inst, xid))
                        if key is None:
                            continue
                        d = dgen[key]
                        st = group_state({str(p): post_pages.get(str(p), "?") for p in d["pages"]}, "D")
                        emit("DUnstop", inst, d["peer"], d, ("D",) + key, pg=st, rs="peer_lost", seq=seq)
                elif m == "release":
                    key = (inst, a[0])
                    if key in dgen:
                        d = dgen[key]
                        st = group_state({str(p): post_pages.get(str(p), "?") for p in d["pages"]}, "D")
                        by, by2 = e.get("by", ""), e.get("by2", "")
                        if by == "decode.py:_finish":
                            kind = "DRelFail"      # DecodePD._finish: a failed waiting request
                        elif by in ("decode.py:abort", "scheduler_pd.py:_commit_ready") or by2 == "toy.py:abort":
                            kind = "DCancel"       # client abort (waiting, ready or decoding)
                        elif by == "toy.py:_finish" or by in os.environ.get("FIN_CALLERS", "").split(","):
                            kind = "DFin"          # decode finished (toy D)
                        else:
                            kind = "DRelease"
                        emit(kind, inst, d["peer"], d, ("D",) + key, pg=st, seq=seq)
                elif m == "launch":
                    for (h, rd, wr) in a[1]:
                        key = (inst, h)
                        if key in dgen and key not in first_launch:
                            first_launch.add(key)
                            d = dgen[key]
                            emit("DRead", inst, d["peer"], d, ("D",) + key, seq=seq)
                            emit("DKDone", inst, d["peer"], d, ("D",) + key, seq=seq, inf=3)
            else:  # P
                def dP(gen):
                    dd = pgen_d.get((inst, gen))
                    return None if dd is None else dgen.get(dd)
                if m == "alloc" and isinstance(res, list) and res:
                    gen = a[0]
                    if (inst, gen) not in pgroups:
                        pgroups[(inst, gen)] = list(res)
                        d = dP(gen)
                        if d is None:
                            self.notes.append(f"P alloc gen {gen} without a matched D request: skipped")
                            continue
                        emit("PAlloc", inst, pgen_d[(inst, gen)][0], d, ("P", inst, gen),
                             pg=group_state(post_pages, "P"), seq=seq)
                elif m == "launch":
                    for (gen, rd, wr) in a[1]:
                        key = (inst, gen)
                        d = dP(gen)
                        if d is not None and key not in first_launch:
                            first_launch.add(key)
                            emit("PRead", inst, pgen_d[key][0], d, ("P",) + key, seq=seq)
                elif m == "complete":
                    for gen in e["pre"].get("gens", []):
                        d = dP(gen)
                        if d is not None and last_fill.get((inst, gen)) == seq:
                            emit("PFill", inst, pgen_d[(inst, gen)][0], d, ("P", inst, gen), seq=seq)
                elif m == "p_post":
                    gen, dinst, dh = a[0], a[2], a[4]
                    d = dgen.get((dinst, dh))
                    if d is None:
                        continue
                    k = "PReg" if isinstance(res, int) and res > 0 else "PPostRej"
                    emit(k, inst, dinst, d, ("P", inst, gen), seq=seq)
                elif m == "release":
                    gen = a[0]
                    d = dP(gen)
                    if d is not None and (inst, gen) in pgroups:
                        st = group_state({str(p): post_pages.get(str(p), "?") for p in pgroups[(inst, gen)]}, "P")
                        emit("PRelease", inst, pgen_d[(inst, gen)][0], d, ("P", inst, gen), pg=st, seq=seq)
                elif m in ("p_begin", "p_done"):
                    pre_e = e["pre"].get("e")
                    if pre_e is None:
                        continue
                    gen, dinst, dh = pre_e[1], pre_e[2], pre_e[4]
                    d = dgen.get((dinst, dh))
                    if d is None:
                        continue
                    st = group_state(e["post"].get("pages", {}), "P")
                    if m == "p_begin":
                        if res:
                            emit("PSubmit", inst, dinst, d, ("P", inst, gen), pg=st, seq=seq)
                        elif pre_e[0] == E_POSTED:
                            emit("PBeginCancel", inst, dinst, d, ("P", inst, gen), pg=st, seq=seq)
                    else:
                        kind = {SEND_DONE: "PDoneOK", SEND_ACK: "PDoneAck",
                                SEND_FAIL_UNSTOPPED: "PDoneFail"}[res]
                        emit(kind, inst, dinst, d, ("P", inst, gen), pg=st, seq=seq)
                elif m == "p_abort":
                    dinst, dxid_ = a[0], a[1]
                    key = dxid.get((dinst, dxid_))
                    if key is None:
                        drops["p_abort_unknown"] += 1
                        continue
                    d = dgen[key]
                    pre_e = e["pre"].get("e")
                    st = group_state(e["post"].get("pages", {}), "P")
                    if pre_e is None:
                        # tombstone: a phantom page in case P never allocated this (r, g)
                        have = any(pgen_d.get(k) == key for k in pgroups if k[0] == inst)
                        pk = ("P", inst, "ph", d["room"], d["g"]) if not have else None
                        emit("PTomb", inst, dinst, d, pk, seq=seq)
                    elif pre_e[0] == E_POSTED:
                        emit("PAbortCancel", inst, dinst, d, ("P", inst, pre_e[1]), pg=st, seq=seq)
                    elif pre_e[0] == E_SUBMITTED:
                        emit("PAbortRun", inst, dinst, d, ("P", inst, pre_e[1]), pg=st, seq=seq)
                    else:
                        drops["p_abort_" + str(pre_e[0])] += 1
                elif m == "peer_lost":
                    for eid in res:
                        info = e["pre"].get("es", {}).get(str(eid))
                        if info is None:
                            continue
                        gen, dinst, dh = info[1], info[2], info[4]
                        d = dgen.get((dinst, dh))
                        if d is None:
                            continue
                        st = group_state({str(p): post_pages.get(str(p), "?") for p in info[6]}, "P")
                        emit("PCancelLost", inst, dinst, d, ("P", inst, gen), pg=st, seq=seq)
        if not out:
            return None
        evs_out, scale, imap = number(out, self.notes)
        # independent run declarations: constants are NOT changed here; a D without a flush hook is reported to the caller
        self.noflush = [e["inst"] for e in self.evs if e["k"] == "role" and e["side"] == "D"
                        and e.get("flush") is False and e["inst"] in imap]
        return evs_out, scale, ident, drops


def tla_val(v):
    if isinstance(v, bool):
        return "TRUE" if v else "FALSE"
    if isinstance(v, int):
        return str(v)
    if isinstance(v, (list, tuple)):
        return "<<" + ", ".join(tla_val(x) for x in v) + ">>"
    return '"' + str(v) + '"'


def write_module(name, evs, scale, outdir, consts=None):
    c = dict(Mode='"push"', HComplete='"narrow"', HOrder='"widest"', HVisible='"widest"', PushEv='"notice"',
             Flush="TRUE", Unquar="FALSE", Mut='"none"', Faults="TRUE", MaxFail="1", PS="1",
             MaxSilent="4")
    c.update({k: str(v) for k, v in scale.items()})
    c["NP"] = str((scale["NPI"] + scale["NDI"]) * scale["PPL"])
    if consts:
        c.update(consts)
    lines = [f"---- MODULE TL_{name} ----", "EXTENDS PdTrace", f"Log == <<"]
    body = []
    for ev in evs:
        fs = event_fields(ev)
        body.append("  [" + ", ".join(f"{k} |-> {tla_val(ev[k])}" for k in fs) + "]")
    lines.append(",\n".join(body))
    lines += [">>", "===="]
    with open(os.path.join(outdir, f"TL_{name}.tla"), "w") as f:
        f.write("\n".join(lines) + "\n")
    cfg = ["INIT TraceInit", "NEXT TraceNext", "CONSTANTS", "  TraceLog <- Log"]
    cfg += [f"  {k} = {v}" for k, v in c.items()]
    cfg += ["INVARIANT TraceNotDone", "INVARIANT TraceProgress", "CHECK_DEADLOCK FALSE"]
    with open(os.path.join(outdir, f"TL_{name}.cfg"), "w") as f:
        f.write("\n".join(cfg) + "\n")


def write_meta(outdir, name, **kw):
    """<name>.meta: key=value lines read by run_tv.sh (env, outcome, error, ...)."""
    with open(os.path.join(outdir, f"{name}.meta"), "w") as f:
        for k, v in kw.items():
            f.write(f"{k}={v}\n")


def read_meta(tdir, name):
    m = {}
    try:
        with open(os.path.join(tdir, f"{name}.meta")) as f:
            for line in f:
                if "=" in line:
                    k, v = line.rstrip("\n").split("=", 1)
                    m[k] = v
    except FileNotFoundError:
        pass
    return m


def write_run(outdir, name, tevs, scale, env, meta):
    if scale["NPI"] + scale["NDI"] > 4 and "SCALE_GT4" not in meta.get("error", ""):
        # PdCore has four locations. Larger runs exceed the model's addressing domain,
        # so report a scale error rather than a protocol rejection.
        meta = dict(meta, error=(meta.get("error") + "," if meta.get("error") else "") + "SCALE_GT4_INSTANCES")
    with open(os.path.join(outdir, f"{name}.ndjson"), "w") as f:
        for ev in tevs:
            f.write(json.dumps(ev) + "\n")
    with open(os.path.join(outdir, f"{name}.scale.json"), "w") as f:
        json.dump(scale, f)
    write_module(name, tevs, scale, outdir, consts=ENV_CONSTS[env])
    write_meta(outdir, name, env=env, **meta)


def main_cpu(src, outdir):
    os.makedirs(outdir, exist_ok=True)
    decl_path, rules = load_decl(src)
    rows = []
    for fn in sorted(os.listdir(src)):
        if not fn.endswith(".jsonl"):
            continue
        evs = []
        with open(os.path.join(src, fn)) as f:
            for line in f:
                line = line.strip()
                if line:
                    evs.append(json.loads(line))
        name = re.sub(r"[^A-Za-z0-9]", "_", fn[:-6]).replace("test_", "").replace("__", "_")
        outcome = next((e["outcome"] for e in evs if e["k"] == "end"), "?")
        env = decl_env(rules, fn)
        run = Run(evs)
        got = run.extract()
        if got is None:
            rows.append((name, 0, "", "", outcome, env, "", "no ledger events of a PD request"))
            continue
        tevs, scale, ident, drops = got
        error = ""
        if run.noflush and env != "cpu-stub":
            error = "NOFLUSH_UNDECLARED"
            run.notes.append(f"D without flush hook in a run declared {env}: ERROR (independent run declarations)")
        write_run(outdir, name, tevs, scale, env, dict(outcome=outcome, error=error, decl=decl_path, source=fn))
        kinds = Counter(ev["k"] for ev in tevs)
        rows.append((name, len(tevs), " ".join(f"{k}:{v}" for k, v in sorted(kinds.items())),
                     " ".join(f"{k}:{v}" for k, v in sorted(ident.items())) + " | drops " +
                     " ".join(f"{k}:{v}" for k, v in sorted(drops.items())),
                     outcome, env, error, "; ".join(run.notes[:5]) + f" scale={scale}"))
    with open(os.path.join(outdir, "extract.tsv"), "w") as f:
        f.write("name\tevents\tkinds\tidentity_lines|drops\ttest_outcome\tenv\terror\tnotes\n")
        for r in rows:
            f.write("\t".join(str(x) for x in r) + "\n")
    print(f"{len(rows)} runs, {sum(1 for r in rows if r[1])} with events, "
          f"{sum(1 for r in rows if r[6])} ERROR (declaration {decl_path}) -> {outdir}")


RX_TS = re.compile(r"\[(\d{4}-\d\d-\d\d)\|(\d\d:\d\d:\d\d)")
STATUS = {"PASS": "passed", "FINDING": "finding", "FAIL": "failed", "INCONCLUSIVE": "inconclusive",
          "ERROR": "failed"}


def unruns(rl):
    return [a + i for a, n in rl for i in range(n)]


def load_pdt(path, label):
    """Every PDT record of one server log (one process), in file order, with timestamp and source label."""
    recs, bad = [], 0
    with open(path, errors="replace") as f:
        for line in f:
            j = line.find("PDT {")
            if j < 0:
                continue
            try:
                r = json.loads(line[j + 4:].strip())
            except json.JSONDecodeError:
                bad += 1
                continue
            m = RX_TS.search(line)
            r["_ts"] = (m.group(1) + "T" + m.group(2)) if m else ""
            r["_src"] = label
            recs.append(r)
    return recs, bad


def pg_counts(post, side):
    """Page group state from PDT pre/post counts ({"private": 3, ...}); '' when the ledger gave none."""
    if not post:
        return ""
    return group_state({s: s for s, c in post.items() if c}, side)


def pg_release(rec, side, quarx):
    """Prefer observed post-release states over inference from the freed-page count.

    Without a snapshot, full release means free and partial release means
    mixed. A zero count means draining, or held on P unless EXACT_P is set.
    Quarantined decode transfers remain unobserved."""
    if rec.get("post"):
        return pg_counts(rec["post"], side), "counts"
    n = len(unruns(rec.get("pages", [])))
    freed = rec.get("res")
    if not isinstance(freed, int) or n == 0:
        return "", "none"
    if side == "D" and quarx:
        return "", "quar"
    if freed == n:
        return "free", "freed"
    if freed == 0:
        if side == "P":
            return ("drain" if os.environ.get("EXACT_P", "1") != "0" else "held"), "freed"
        return "drain", "freed"
    return f"mixed:freed{freed}/{n}", "freed"


class PdtStep:
    """One GPU step: the PDT records of its P and D server logs, merged into one causal order."""

    def __init__(self, stepdir, group="", single=None):
        self.dir = stepdir
        self.notes, self.errors = [], []
        self.procs = OrderedDict()
        self.side, self.inst_of, self.label_of, self.flush = {}, {}, {}, {}
        self.single = single
        self.router = {}
        if single is not None:
            self._load_single(single)
        else:
            self._load_step(stepdir, group)
        self.order = {self.inst_of[l]: (self.side[l], n) for n, l in enumerate(self.procs)}
        # compatibility: step mode per process = it wrote per-step lines (k = "step"); chosen by presence, never guessed
        self.stepmode = {label: any(r.get("k") == "step" for r in recs) for label, recs in self.procs.items()}
        self.gaps = {}
        for label, recs in self.procs.items():
            seqs = [r["seq"] for r in recs]
            if any(b <= a for a, b in zip(seqs, seqs[1:])):
                self.errors.append(f"{label}: seq not increasing in file order")
            have = set(seqs)
            missing = sorted(set(range(1, max(seqs) + 1)) - have) if seqs and single is None else []
            self.gaps[label] = missing
            if self.side[label] == "D" and missing:
                self.errors.append(f"{label}: {len(missing)} D seqs missing (lost lines): {missing[:5]}")
            elif self.stepmode[label] and missing:  # Step-mode records account for every sequence number on both sides.
                self.errors.append(f"{label}: {len(missing)} P seqs missing in step mode (lost lines): {missing[:5]}")
        self._post_load(stepdir, group, single)
        self.array_audit = []
        if os.environ.get("KARGS_CHECK", "1") != "0":
            for label, recs in self.procs.items():
                path = None if single else os.path.join(stepdir, label + ".log")
                self.array_audit.extend(kargs_check.audit(recs, path,
                    required=os.environ.get("KARGS_REQUIRED") == "1"))

    def _load_single(self, path):
        """CPU (pdt_capture.py): one file, every instance of the test process, one seq counter: the file must hold
        every seq from its first to its last (no hole), in order; records of an instance without a role line in
        this file (a thread of an earlier test) are dropped with a note."""
        recs, bad = load_pdt(path, "")
        if bad:
            self.errors.append(f"{os.path.basename(path)}: {bad} PDT lines not JSON")
        seqs = [r["seq"] for r in recs]
        if any(b <= a for a, b in zip(seqs, seqs[1:])):
            self.errors.append("file: seq not increasing in file order")
        if seqs:
            missing = sorted(set(range(seqs[0], seqs[-1] + 1)) - set(seqs))
            if missing:
                self.errors.append(f"file: {len(missing)} seqs missing (lost lines): {missing[:5]}")
        roles = OrderedDict()
        for r in recs:
            if r.get("k") == "role":
                if r["inst"] in roles:
                    self.errors.append(f"inst {r['inst']}: second role line (restart)")
                    continue
                roles[r["inst"]] = r
        cnt = Counter()
        for inst, r in sorted(roles.items(), key=lambda kv: (kv[1]["side"] != "P", list(roles).index(kv[0]))):
            label = f"{r['side']}{cnt[r['side']]}"
            cnt[r["side"]] += 1
            self.procs[label] = []
            self.side[label] = r["side"]
            self.inst_of[label] = inst
            self.label_of[inst] = label
            if r["side"] == "D":
                self.flush[label] = r.get("flush")
        self.groups = [""]
        self._file_order = []
        foreign = Counter()
        for r in recs:
            if r.get("k") == "router":
                self.router.setdefault(r.get("rid", ""), []).append(r.get("outcome", "?"))
                continue
            label = self.label_of.get(r.get("inst"))
            if label is None:
                foreign[r.get("inst")] += 1
                continue
            r["_src"] = label
            self.procs[label].append(r)
            self._file_order.append(r)
        for inst, n in foreign.items():
            self.notes.append(f"{n} records of instance {inst} without a role line in this file: dropped")

    def _load_step(self, stepdir, group):
        # server logs: prefill.log, decode-restarted.log (a restarted process), prefill-group.log (one of two server sets)
        rx = re.compile(r"^[PD]\d*n?(?:_([A-Za-z0-9]+))?\.log$")
        allf = [(f, rx.match(f)) for f in os.listdir(stepdir)]
        self.groups = sorted({(m.group(1) or "") for f, m in allf if m})
        files = sorted(f for f, m in allf if m and (m.group(1) or "") == group)
        files.sort(key=lambda f: (f[0] != "P", f))
        for fn in files:
            label = fn[:-4]
            recs, bad = load_pdt(os.path.join(stepdir, fn), label)
            if bad:
                self.errors.append(f"{fn}: {bad} PDT lines not JSON")
            roles = [r for r in recs if r.get("k") == "role"]
            if len(roles) != 1:
                self.errors.append(f"{fn}: {len(roles)} role lines (restart or no trace)")
                if not roles:
                    continue
            inst = roles[0]["inst"]
            self.procs[label] = recs
            self.side[label] = roles[0]["side"]
            self.inst_of[label] = inst
            self.label_of[inst] = label
            if roles[0]["side"] == "D":
                self.flush[label] = roles[0].get("flush")

    def _post_load(self, stepdir, group, single):
        """After the seq checks: the untraced completion hole witness (old P logs) and the router lines (GPU step dirs)."""
        # Legacy prefill completion can be identified only when each step has one gap
        # after all of its first-launch records. Completion order then binds each gap
        # to a step; other gaps need weaker evidence.
        self.step_hole = {}
        for label, recs in self.procs.items():
            if self.side[label] != "P" or self.stepmode[label] or single is not None:
                continue   # step mode: the complete seq IS the kdone line (at_seq), no holes to interpret
            rs = {}
            for r in recs:
                if r.get("m") == "launch" and r.get("ev") == "read":
                    rs.setdefault(r.get("step"), []).append(r["seq"])
            steps = sorted(s for s in rs if isinstance(s, int))
            holes = self.gaps[label]
            ok = bool(steps) and steps == list(range(1, len(steps) + 1)) and len(holes) == len(steps) \
                and all(holes[k - 1] > max(rs[k]) for k in steps)
            self.step_hole[label] = {k: holes[k - 1] for k in steps} if ok else None
            if not ok:
                self.notes.append(f"{label}: seq holes ({len(holes)}) not one per step ({len(steps)}): "
                                  f"weak complete witness only")
        if single is not None:
            return
        for fn in sorted(os.listdir(stepdir)):
            tok = fn[:-4].split("_")[1] if fn.count("_") >= 1 else ""
            mine = (tok == group) if group else (tok not in set(self.groups) - {""})
            if fn.startswith("router") and fn.endswith(".log") and mine:
                recs, _ = load_pdt(os.path.join(stepdir, fn), fn[:-4])
                for r in recs:
                    if r.get("k") == "router":
                        self.router.setdefault(r.get("rid", ""), []).append(r.get("outcome", "?"))

    def merge(self):
        """Merge process sequences using message causality.

        Decode publication precedes every prefill record that names that transfer.
        Prefill completion, abort, or refusal precedes the corresponding decode
        flush and landing or stop evidence. Timeout quarantine adds no such edge.
        Break ties by log time, prefill before decode, then file order.
        A single CPU file already has one sequence order and needs no merge."""
        if self.single is not None:
            return list(self._file_order)
        pub, pmsg = {}, {}
        for label, recs in self.procs.items():
            for r in recs:
                if self.side[label] == "D" and r.get("m") == "d_expect" and isinstance(r.get("res"), int) \
                        and r["res"] > 0:
                    pub[(r["inst"], r["res"])] = (label, r["seq"])
                if self.side[label] == "P" and (r.get("m") in ("p_done", "p_abort") or
                                                (r.get("m") == "p_post" and not (isinstance(r.get("res"), int)
                                                                                and r["res"] > 0))):
                    key = (r.get("peer"), r.get("xid"))
                    pmsg.setdefault(key, (label, r["seq"]))
        need = {}
        for label, recs in self.procs.items():
            for n, r in enumerate(recs):
                pre = []
                # publication-before-match ( every P line that names (D, xid), not only match / p_post: a tombstone p_abort answers D's dinfo)
                if self.side[label] == "P" and (r.get("k") == "match" or r.get("m") in ("p_post", "p_abort", "p_begin", "p_done")):
                    e = pub.get((r.get("peer"), r.get("xid")))
                    if e:
                        pre.append(e)
                    elif r.get("k") == "match":
                        self.notes.append(f"{label} seq {r['seq']}: match of (D {r.get('peer')}, xid "
                                          f"{r.get('xid')}) without a D publish")
                if self.side[label] == "D" and (r.get("k") == "flush" or r.get("m") in ("d_landed", "d_stopped")):
                    e = pmsg.get((self.inst_of[label], r.get("xid")))
                    if e:
                        pre.append(e)
                    elif r.get("m") == "d_landed" or r.get("k") == "flush":
                        self.notes.append(f"{label} seq {r['seq']}: {r.get('m') or r.get('k')} of xid "
                                          f"{r.get('xid')} without a P completion line")
                need[(label, n)] = pre
        ptr = {label: 0 for label in self.procs}
        done_upto = {label: 0 for label in self.procs}   # last emitted seq per process
        merged = []
        labels = list(self.procs)
        total = sum(len(v) for v in self.procs.values())
        while len(merged) < total:
            cands = []
            for li, label in enumerate(labels):
                n = ptr[label]
                if n >= len(self.procs[label]):
                    continue
                if all(done_upto[pl] >= ps for pl, ps in need[(label, n)]):
                    r = self.procs[label][n]
                    cands.append((r["_ts"], self.side[label] != "P", li, label))
            if not cands:
                heads = {label: self.procs[label][ptr[label]]["seq"] for label in labels
                         if ptr[label] < len(self.procs[label])}
                self.errors.append(f"merge: no process can advance (cycle) at heads {heads}")
                break
            label = min(cands)[3]
            r = self.procs[label][ptr[label]]
            merged.append(r)
            done_upto[label] = r["seq"]
            ptr[label] += 1
        return merged

    def extract(self, merged):
        dgen, dxid, inc, xorder = {}, {}, Counter(), {}
        p_match, p_uid, p_post, entries = {}, {}, {}, {}
        cpl_at = {}   # Associate each prefill generation with its final completion sequence.
        for r in merged:
            src = r["_src"]
            if self.side[src] == "D" and r.get("m") == "d_expect" and isinstance(r.get("res"), int) and r["res"] > 0:
                room = r["room"]
                inc[room] += 1
                xorder[(r["inst"], r["res"])] = len(xorder) + 1
                dgen[(r["inst"], r["h"])] = dict(room=room, g=inc[room], xid=r["res"],
                                                 x=xorder[(r["inst"], r["res"])], peer=r.get("peer"),
                                                 rid=r.get("rid", ""), _order=self.order)
                dxid[(r["inst"], r["res"])] = (r["inst"], r["h"])
            if self.side[src] == "P":
                if r.get("k") == "match":
                    p_match[(r["inst"], r["uid"])] = (r["peer"], r["d_h"])
                if r.get("m") == "alloc":
                    p_uid[(r["inst"], r["h"])] = r.get("uid")
                if r.get("m") == "p_post" and isinstance(r.get("res"), int) and r["res"] > 0:
                    p_post[(r["inst"], r["h"])] = (r["peer"], r["d_h"])
                    entries[(r["inst"], r["res"])] = (r["h"], r["peer"], r["d_h"])
                if r.get("m") == "complete" and self.stepmode[src]:
                    cpl_at[(r["inst"], r["h"])] = r.get("at_seq")
        pgen_d = dict(p_post)
        for (pi, gen), uid in p_uid.items():
            if (pi, gen) not in pgen_d and (pi, uid) in p_match:
                pgen_d[(pi, gen)] = p_match[(pi, uid)]
        out, drops = [], Counter()
        first_launch, pgroups, pfilled, read_seq, quarx, read_info = set(), {}, set(), {}, set(), {}
        visible = set()   # D (inst, gen) whose transfer was made visible (the record runs: DLanded)
        pfill = Counter()
        gap_sets = {label: set(g) for label, g in self.gaps.items()}
        gap_sorted = {label: g for label, g in self.gaps.items()}
        fold = os.environ.get("FOLD", "")

        def emit(k, inst, peer, d, pk, r, **kw):
            kw.setdefault("seq", r["seq"])
            out.append(mk(k, inst, peer, d, pk, src=r["_src"], rid=d.get("rid", ""), **kw))

        launched = {}            # Track launches, completions, and row bindings independently for cross-checks.
        kl_gens = {}
        kd_seq = {}
        rowbind, gen_row = {}, {}
        fly, maxfly, nstep = Counter(), Counter(), Counter()
        self.step_stats = {}

        def emit_step(k, inst, items, r, st, peer):
            d0 = dict(room=items[0][1], g=items[0][2], x=items[0][3], _order=self.order)
            ev = mk(k, inst, peer, d0, items[0][4], seq=r["seq"], src=r["_src"])
            ev["_pe"], ev["_peo"] = None, None   # a step has no single peer (pe = own instance in number())
            ev["_items"] = items
            if "_ka" in r:
                ev["_ka"] = r["_ka"]
            ev["_step"] = (inst, st)
            out.append(ev)

        def step_line(r, src, inst):
            """klaunch / kdone of a step-mode process."""
            st, ev = r.get("step"), r.get("ev")
            if ev == "klaunch":
                its = r.get("it") or []
                kl_gens[(inst, st)] = {g for _row, g in its}
                fly[src] += 1
                nstep[src] += 1
                maxfly[src] = max(maxfly[src], fly[src])
                items = []
                for row, gen in its:
                    key = (inst, gen)
                    if self.side[src] == "D":
                        d = dgen.get(key)
                        if d is None:
                            drops["step_item_unknown"] += 1
                            continue
                        rr = d["room"]
                        if isinstance(row, int) and row >= 0:
                            # the model's row r comes from the table row: the gen bound to it at that gen's first
                            # launch (bind_row holds until release); a row still bound to another live gen gives
                            # that gen's slot, and the KLaunch check (rg / rpg of the slot) refuses the item
                            b = gen_row.get(key)
                            if b is None:
                                gen_row[key] = row
                                rowbind.setdefault((inst, row), gen)
                            elif b != row:
                                self.errors.append(f"{src} seq {r['seq']}: gen {gen} launched on row {row}, "
                                                   f"bound to row {b} at its first launch")
                            bg = rowbind.get((inst, row), gen)
                            rr = dgen[(inst, bg)]["room"] if (inst, bg) in dgen else rr
                        items.append((rr, d["room"], d["g"], d["x"], ("D",) + key, row))
                    else:
                        dinst, d = dPs(inst, gen)
                        if d is None:
                            drops["step_item_unknown"] += 1
                            continue
                        items.append((d["room"], d["room"], d["g"], d["x"], ("P", inst, gen), row))
                launched[(inst, st)] = items
                if items:
                    emit_step("DStep" if self.side[src] == "D" else "PStep", inst, items, r, st, None)
            elif ev == "kdone":
                fly[src] -= 1
                kd_seq[(inst, st)] = r["seq"]
                items = launched.pop((inst, st), None)
                if items is None:
                    self.errors.append(f"{src} seq {r['seq']}: kdone of step {st} without its klaunch")
                    return
                if self.side[src] == "D":
                    if items:
                        emit_step("DStepDone", inst, items, r, st, None)
                    return
                # P: the gens whose last prefill step this is (their complete line points here): PFill now
                for t in items:
                    gen = t[4][2]
                    if cpl_at.get((inst, gen)) == r["seq"] and (inst, gen) not in pfilled:
                        dinst, d = dPs(inst, gen)
                        pfilled.add((inst, gen))
                        pfill["kdone"] += 1
                        emit("PFill", inst, dinst, d, ("P", inst, gen), r)

        def dPs(inst, gen):
            dd = pgen_d.get((inst, gen))
            return (None, None) if dd is None else (dd[0], dgen.get(dd))

        def gap_between(label, lo, hi):
            for s in reversed(gap_sorted[label]):
                if lo < s < hi:
                    return s
            return None

        for r in merged:
            src = r["_src"]
            inst = r.get("inst")
            m, k, res = r.get("m"), r.get("k"), r.get("res")
            sm = self.stepmode[src]
            if k == "step":
                step_line(r, src, inst)
                continue
            if sm and m == "launch" and r.get("ev") == "read":
                # step mode: the read line is covered by its klaunch (same call, written right after it)
                if r.get("h") not in kl_gens.get((inst, r.get("step")), ()):
                    self.errors.append(f"{src} seq {r['seq']}: read of gen {r.get('h')} not in klaunch of step "
                                       f"{r.get('step')}")
                continue
            if sm and m == "complete":
                if kd_seq.get((inst, r.get("step"))) != r.get("at_seq"):
                    self.errors.append(f"{src} seq {r['seq']}: complete of gen {r.get('h')} at_seq {r.get('at_seq')} "
                                       f"is not the kdone of step {r.get('step')}")
                continue
            if self.side[src] == "D":
                if m == "release" and (inst, r.get("h")) in gen_row:  # the table row is free again
                    row = gen_row.pop((inst, r["h"]))
                    if rowbind.get((inst, row)) == r["h"]:
                        del rowbind[(inst, row)]
                if m == "d_expect" and isinstance(res, int) and res > 0:
                    d = dgen[(inst, r["h"])]
                    emit("DExpose", inst, d["peer"], d, ("D", inst, r["h"]), r, pg=pg_counts(r.get("post"), "D"))
                elif k == "flush":
                    key = dxid.get((inst, r.get("xid")))
                    if key is not None:
                        d = dgen[key]
                        emit("DFlush", inst, d["peer"], d, ("D",) + key, r)
                    else:
                        drops["flush_unknown"] += 1
                elif m == "d_landed":
                    key = dxid.get((inst, r.get("xid")))
                    if res in (OK, BAD_LEN) and not r.get("drop") and key is not None:
                        d = dgen[key]
                        emit("DNotice", inst, d["peer"], d, ("D",) + key, r, pg=pg_counts(r.get("post"), "D"),
                             ok=(res == OK))
                    else:
                        drops["d_landed"] += 1
                elif m == "d_mark_visible":
                    key = dxid.get((inst, r.get("xid")))
                    if key is not None:
                        d = dgen[key]
                        visible.add(key)
                        emit("DVisible", inst, d["peer"], d, ("D",) + key, r)
                elif m == "d_stopped":
                    key = dxid.get((inst, r.get("xid")))
                    if res == OK and key is not None:
                        d = dgen[key]
                        emit("DStopped", inst, d["peer"], d, ("D",) + key, r, pg=pg_counts(r.get("post"), "D"))
                    else:
                        drops["d_stopped"] += 1
                elif m == "d_unstopped":
                    key = dxid.get((inst, r.get("xid")))
                    if res == OK and key is not None:
                        d = dgen[key]
                        quarx.add(key)
                        emit("DUnstop", inst, d["peer"], d, ("D",) + key, r, pg=pg_counts(r.get("post"), "D"),
                             rs=str(r.get("reason", "?")))
                    else:
                        drops["d_unstopped"] += 1
                elif m == "peer_lost":
                    for xid in (res or []):
                        key = dxid.get((inst, xid))
                        if key is None:
                            continue
                        d = dgen[key]
                        quarx.add(key)
                        emit("DUnstop", inst, d["peer"], d, ("D",) + key, r, rs="peer_lost")
                elif m == "release":
                    key = (inst, r["h"])
                    if key in dgen:
                        d = dgen[key]
                        st, how = pg_release(r, "D", key in quarx)
                        why = r.get("why", "")
                        kind = {"finish": "DFin", "abort": "DCancel", "failed": "DRelFail"}.get(why, "DRelease")
                        extra = {"why": why}
                        if kind == "DFin" and st == "drain" and "finish_drain_fold" in fold:
                            st, extra["fold"] = "free", "finish_drain_fold"  # the model's only non-shared finish ending
                        if sm and kind == "DFin":
                            # Explicit step records already retain overlap read pins through DFinish.
                            # Adding the legacy DLaunchNext and DFinishOvl pair would duplicate behaviors.
                            kind = "DFinS"
                        elif sm and kind == "DCancel" and key in visible:
                            # step mode, abort of a running record: its decode stream op is landed and polled, the
                            # Drain (if any) is the kernel pin's (same reason)
                            kind = "DCancelR"
                        emit(kind, inst, d["peer"], d, ("D",) + key, r, pg=st, **extra)
                elif m == "launch" and r.get("ev") == "read":
                    key = (inst, r["h"])
                    if key in dgen and key not in first_launch:
                        first_launch.add(key)
                        d = dgen[key]
                        emit("DRead", inst, d["peer"], d, ("D",) + key, r)
                        emit("DKDone", inst, d["peer"], d, ("D",) + key, r, inf=3)
            else:  # P
                def dP(gen):
                    dd = pgen_d.get((inst, gen))
                    return (None, None) if dd is None else (dd[0], dgen.get(dd))
                if m == "alloc" and isinstance(res, list) and res:
                    gen = r["h"]
                    if (inst, gen) not in pgroups:
                        pgroups[(inst, gen)] = True
                        dinst, d = dP(gen)
                        if d is None:
                            self.notes.append(f"{src} alloc gen {gen} without a matched D request: skipped")
                            continue
                        emit("PAlloc", inst, dinst, d, ("P", inst, gen), r, pg=pg_counts(r.get("post"), "P"))
                elif m == "launch" and r.get("ev") == "read":
                    gen = r["h"]
                    dinst, d = dP(gen)
                    if d is not None and (inst, gen) not in first_launch:
                        first_launch.add((inst, gen))
                        read_seq[(inst, gen)] = r["seq"]
                        read_info[(inst, gen)] = (r.get("step"), r.get("rd"), r.get("wr"))
                        emit("PRead", inst, dinst, d, ("P", inst, gen), r)
                elif m == "complete":  # The request has completed its final prefill step.
                    gen = r["h"]
                    dinst, d = dP(gen)
                    if d is not None and (inst, gen) not in pfilled:
                        pfilled.add((inst, gen))
                        pfill["logged"] += 1
                        emit("PFill", inst, dinst, d, ("P", inst, gen), r, seq=r.get("at_seq", r["seq"]))
                elif m == "p_post":
                    gen = r["h"]
                    d = dgen.get((r.get("peer"), r.get("d_h")))
                    if d is None:
                        continue
                    dinst = r.get("peer")
                    if (inst, gen) not in pfilled:
                        # Legacy logs may omit the completion record but retain its sequence gap.
                        # Bind a gap to a step only for a whole-request launch with one gap per step.
                        # Otherwise require a gap between the first launch and post, and mark the weaker inference.
                        lo = read_seq.get((inst, gen))
                        st, rd, wr = read_info.get((inst, gen), (None, None, None))
                        sh = self.step_hole.get(src)
                        whole = rd == 0 and isinstance(wr, int) and r.get("a") and wr >= r["a"][1]
                        s, how = None, 0
                        if sh is not None and whole:
                            hs = sh.get(st)
                            if hs is not None and lo is not None and lo < hs < r["seq"]:
                                s, how = hs, 1
                        elif lo is not None:
                            s, how = gap_between(src, lo, r["seq"]), 2
                        if s is not None:
                            pfilled.add((inst, gen))
                            pfill["inferred_step" if how == 1 else "inferred_weak"] += 1
                            emit("PFill", inst, dinst, d, ("P", inst, gen), r, seq=s, inf=how)
                        else:
                            pfill["no_witness"] += 1
                            self.notes.append(f"{src} seq {r['seq']}: post of gen {gen} without a complete "
                                              f"line or seq hole after its first launch")
                    k2 = "PReg" if isinstance(res, int) and res > 0 else "PPostRej"
                    emit(k2, inst, dinst, d, ("P", inst, gen), r)
                elif m == "release":
                    gen = r["h"]
                    dinst, d = dP(gen)
                    if d is not None and (inst, gen) in pgroups:
                        st, how = pg_release(r, "P", False)
                        emit("PRelease", inst, dinst, d, ("P", inst, gen), r, pg=st, why=r.get("why", ""))
                elif m in ("p_begin", "p_done"):
                    gen, dinst = r.get("h"), r.get("peer")
                    d = dgen.get((dinst, r.get("d_h")))
                    if d is None:
                        drops[m + "_unknown"] += 1
                        continue
                    st = pg_counts(r.get("post"), "P")
                    if m == "p_begin":
                        if res:
                            emit("PSubmit", inst, dinst, d, ("P", inst, gen), r, pg=st)
                        elif r.get("entry") == "posted":
                            emit("PBeginCancel", inst, dinst, d, ("P", inst, gen), r, pg=st)
                    else:
                        kind = {SEND_DONE: "PDoneOK", SEND_ACK: "PDoneAck", SEND_FAIL_UNSTOPPED: "PDoneFail"}.get(res)
                        if kind is None:
                            drops["p_done_" + str(res)] += 1
                            continue
                        emit(kind, inst, dinst, d, ("P", inst, gen), r, pg=st)
                elif m == "p_abort":
                    dinst = r.get("peer")
                    key = dxid.get((dinst, r.get("xid")))
                    if key is None:
                        drops["p_abort_unknown"] += 1
                        continue
                    d = dgen[key]
                    st = pg_counts(r.get("post"), "P")
                    ent = r.get("entry")
                    gen = r.get("h", -1)
                    if ent == "none":
                        have = any(pgen_d.get(kk) == key for kk in pgroups if kk[0] == inst)
                        pk = ("P", inst, "ph", d["room"], d["g"]) if not have else None
                        emit("PTomb", inst, dinst, d, pk, r)
                    elif ent == "posted":
                        emit("PAbortCancel", inst, dinst, d, ("P", inst, gen), r, pg=st)
                    elif ent == "submitted":
                        emit("PAbortRun", inst, dinst, d, ("P", inst, gen), r, pg=st)
                    else:
                        drops["p_abort_" + str(ent)] += 1
                elif m == "peer_lost":
                    for eid in (res or []):
                        info = entries.get((inst, eid))
                        if info is None:
                            continue
                        gen, dinst, dh = info
                        d = dgen.get((dinst, dh))
                        if d is None:
                            continue
                        emit("PCancelLost", inst, dinst, d, ("P", inst, gen), r)
        self.step_stats = {label: dict(stepmode=self.stepmode[label], steps=nstep[label], max_in_flight=maxfly[label],
                                       open_at_end=fly[label]) for label in self.procs}
        failed = {(row["inst"], row["seq"]) for row in self.array_audit if not row["ok"]}
        covered = {(e["_i"], e["seq"]) for e in out if "_ka" in e}
        if failed - covered:
            raise ValueError(f"KARGS failed observations without model events: {sorted(failed-covered)}")
        return out, drops, pfill, dgen


def round_of(rid):
    """Group per-test and per-request projections under their parent run name."""
    m = re.match(r"^(.*?)\.[a-z]\d+", rid or "")
    return m.group(1) if m else (rid or "?")


def write_array_audit(step, outdir, name="array-audit"):
    if step.array_audit:
        with open(os.path.join(outdir, name + ".jsonl"), "w") as f:
            for row in step.array_audit:
                f.write(json.dumps(row) + "\n")


def main_pdt(stepdir, outdir, group=""):
    os.makedirs(outdir, exist_ok=True)
    incdir = os.path.join(outdir, "inc")
    os.makedirs(incdir, exist_ok=True)
    step = PdtStep(stepdir, group)
    write_array_audit(step, outdir)
    vj = os.path.join(stepdir, "verdict.json")
    status = "?"
    if os.path.exists(vj):
        with open(vj) as f:
            status = json.load(f).get("status", "?")
    outcome = STATUS.get(status, "?")
    env = "production"  # GPU / Mooncake: never a stub (independent run declarations)
    error = ""
    noflush = [l for l, fl in step.flush.items() if fl is not True]
    if noflush:
        error = "NOFLUSH_UNDECLARED"
        step.notes.append(f"D without flush hook: {noflush} (GPU run: ERROR)")
    if step.errors:
        error = (error + "," if error else "") + "LOG_" + "_".join(sorted({e.split(':')[0] for e in step.errors}))
    merged = step.merge()
    out, drops, pfill, dgen = step.extract(merged)
    model = os.path.basename(os.path.dirname(os.path.abspath(stepdir)))
    base = re.sub(r"[^A-Za-z0-9]", "_", f"gpu_{model}_{os.path.basename(os.path.abspath(stepdir))}" + (f"_{group}" if group else ""))
    meta = dict(outcome=outcome, status=status, error=error, decl="gpu-production", source=stepdir,
                procs=",".join(f"{l}:{step.side[l]}:{step.inst_of[l]}" for l in step.procs))
    rows = []

    def put(name, evs_int, d=outdir):
        notes = []
        tevs, scale, imap = number(evs_int, notes)
        write_run(d, name, tevs, scale, env, meta)
        kinds = Counter(ev["k"] for ev in tevs)
        return tevs, scale, kinds, notes

    max_all = int(os.environ.get("MAX_ALL_EVENTS", "6000"))
    if len(out) <= max_all:
        tevs, scale, kinds, notes = put(base + "__all", out)
        rows.append((base + "__all", len(tevs), " ".join(f"{k}:{v}" for k, v in sorted(kinds.items())), scale))
    else:
        step.notes.append(f"whole-step trace not written: {len(out)} events > MAX_ALL_EVENTS {max_all}")
    rounds = OrderedDict()
    for ev in out:
        if "_items" not in ev:   # step events belong to every incarnation they read (project())
            rounds.setdefault(round_of(ev.get("rid", "")), set()).add((ev["room"], ev["graw"]))
    for rd, keys in rounds.items():
        name = base + "__" + re.sub(r"[^A-Za-z0-9]", "_", rd)
        tevs, scale, kinds, notes = put(name, project(out, keys))
        rows.append((name, len(tevs), " ".join(f"{k}:{v}" for k, v in sorted(kinds.items())), scale))
    # per request incarnation: projection onto one (room, g); identical projections share one trace
    inc_evs = OrderedDict()
    for ev in out:
        if "_items" not in ev:
            inc_evs.setdefault((ev["room"], ev["graw"]), None)
    sigs, inc_rows = OrderedDict(), []
    for (room, g) in inc_evs:
        evs_int = project(out, {(room, g)})
        tevs, scale, imap = number(evs_int, [])
        body = json.dumps([[e[k] for k in event_fields(e) if k != "seq"] for e in tevs]) \
            + json.dumps(scale)
        if body not in sigs:
            sigs[body] = (f"{base}__sig{len(sigs) + 1}", tevs, scale)
            write_run(incdir, sigs[body][0], tevs, scale, env, meta)
        rid = next(e.get("rid", "") for e in evs_int if "_items" not in e)
        dfin = [e for e in tevs if e["k"].startswith("D") and e["k"] in ("DFin", "DCancel", "DRelFail", "DRelease", "DFinS", "DCancelR")]
        prel = [e for e in tevs if e["k"] == "PRelease"]
        srcs = sorted({e.get("src", "") for e in tevs})
        nsd = sum(1 for e in tevs if e["k"] == "DStep")
        nsp = sum(1 for e in tevs if e["k"] == "PStep")
        inc_rows.append((rid, room, g, sigs[body][0], len(tevs), ",".join(srcs),
                         ("inferred_step" if any(e.get("inf") == 1 for e in tevs if e["k"] == "PFill") else "inferred_weak") if any(e.get("inf") for e in tevs if e["k"] == "PFill") else
                         ("logged" if any(e["k"] == "PFill" for e in tevs) else "none"),
                         ";".join(f"{e['k']}:{e['pg']}" for e in prel) or "-",
                         ";".join(f"{e['k']}:{e.get('why', '')}:{e['pg'] or '-'}{'(fold)' if e.get('fold') else ''}" for e in dfin) or "-",
                         ",".join(step.router.get(rid, ["-"])),
                         " ".join(e["k"] for e in tevs if e["k"] not in STEP_KINDS)
                         + (f" +steps D{nsd}/P{nsp}" if nsd or nsp else "")))
    with open(os.path.join(incdir, "incarnations.tsv"), "w") as f:
        f.write("rid\troom\tg\tsig\tevents\tprocs\tpfill\tp_release\td_release\trouter\tkinds\n")
        for row in inc_rows:
            f.write("\t".join(str(x) for x in row) + "\n")
    with open(os.path.join(outdir, "extract.tsv"), "w") as f:
        f.write("name\tevents\tkinds\tscale\n")
        for row in rows:
            f.write("\t".join(str(x) for x in row) + "\n")
    with open(os.path.join(outdir, "step.txt"), "w") as f:
        f.write(f"step {stepdir}\nstatus {status} -> outcome {outcome}\nenv {env}\nerror {error or '-'}\n")
        for l in step.procs:
            f.write(f"proc {l} side {step.side[l]} inst {step.inst_of[l]} flush {step.flush.get(l, '-')} "
                    f"records {len(step.procs[l])} seq_holes {len(step.gaps[l])}\n")
        f.write(f"merged {len(merged)} records -> {len(out)} model events; incarnations {len(inc_evs)}; "
                f"distinct projections {len(sigs)}\n")
        f.write(f"pfill {dict(pfill)}\ndrops {dict(drops)}\n")
        for l, ss in step.step_stats.items():
            if ss["stepmode"]:
                f.write(f"steps {l}: {ss['steps']} klaunch, max in flight {ss['max_in_flight']}, "
                        f"open at end {ss['open_at_end']} (KR {KR_STEPS})\n")
        f.write(f"mode {'step lines (compatibility)' if any(step.stepmode.values()) else 'no step lines (compatibility)'}\n")
        if step.array_audit:
            f.write(f"arrays {len(step.array_audit)} checked, "
                    f"{sum(not a['ok'] for a in step.array_audit)} rejected; "
                    f"sources {dict(Counter(a['ks'] for a in step.array_audit))}; "
                    "array-audit.jsonl is the full-batch witness before projection\n")
        rd = [r for r in merged if r.get("ev") == "read"]
        f.write(f"read lines {len(rd)}: kargs=1 {sum(1 for r in rd if r.get('kargs') == 1)}, with row "
                f"{sum(1 for r in rd if 'row' in r)} (KernelReadPins: kernel arguments from the ledger core)\n")
        f.write(f"router outcomes {dict(Counter(o for v in step.router.values() for o in v))}\n")
        f.write(f"FOLD={os.environ.get('FOLD', '')} EXACT_P={os.environ.get('EXACT_P', '')}\n")
        for e in step.errors:
            f.write(f"ERROR {e}\n")
        for n in step.notes[:50]:
            f.write(f"note {n}\n")
        if len(step.notes) > 50:
            f.write(f"note ... {len(step.notes) - 50} more\n")
    print(open(os.path.join(outdir, "step.txt")).read(), end="")


def main_pdtcpu(src, outdir):
    """Use declared assumptions and the end-line outcome for each CPU .pdt test."""
    os.makedirs(outdir, exist_ok=True)
    decl_path, rules = load_decl(src)
    rows = []
    for fn in sorted(os.listdir(src)):
        if not fn.endswith(".pdt"):
            continue
        path = os.path.join(src, fn)
        outcome = "?"
        with open(path) as f:
            for line in f:
                if line.startswith('{"k": "end"'):
                    outcome = json.loads(line).get("outcome", "?")
        name = re.sub(r"[^A-Za-z0-9]", "_", fn[:-4]).replace("test_", "").replace("__", "_")
        env = decl_env(rules, fn)
        step = PdtStep(None, single=path)
        write_array_audit(step, outdir, name + ".arrays")
        merged = step.merge()
        out, drops, pfill, dgen = step.extract(merged)
        notes = list(step.notes)
        if not out:
            rows.append((name, 0, "", "", outcome, env, "", "no ledger events of a PD request"))
            continue
        error = ""
        # lifecycle capture records independent layout in role lines. Failed tests are incomplete
        # execution evidence (cross-row-read can fail before any bad klaunch is emitted). Do not
        # accept their perfectly valid prefix as an observed successful execution.
        if os.environ.get("KARGS_CHECK", "1") != "0" and outcome == "failed" and any(
                r.get("k") == "role" and "ps" in r for rs in step.procs.values() for r in rs):
            error = "CAPTURE_FAILED"
        noflush = [l for l, fl in step.flush.items() if fl is not True]
        if noflush and env != "cpu-stub":
            error = "NOFLUSH_UNDECLARED"
            notes.append(f"D without flush hook in a run declared {env}: ERROR (independent run declarations)")
        if step.errors:
            error = (error + "," if error else "") + "LOG"
            notes += ["ERROR " + e for e in step.errors]
        tevs, scale, imap = number(out, notes)
        if scale["NPI"] + scale["NDI"] > 4:  # PdCore has 4 locations (write_run tags the meta the same way)
            error = (error + "," if error else "") + "SCALE_GT4_INSTANCES"
        write_run(outdir, name, tevs, scale, env, dict(outcome=outcome, error=error, decl=decl_path, source=fn,
                                                     procs=",".join(f"{l}:{step.inst_of[l]}" for l in step.procs)))
        kinds = Counter(ev["k"] for ev in tevs)
        st = "; ".join(f"{l} {s['steps']} steps max {s['max_in_flight']} open {s['open_at_end']}"
                       for l, s in step.step_stats.items() if s["stepmode"])
        rows.append((name, len(tevs), " ".join(f"{k}:{v}" for k, v in sorted(kinds.items())),
                     f"pfill {dict(pfill)} | drops " + " ".join(f"{k}:{v}" for k, v in sorted(drops.items()))
                     + f" | steps: {st or 'none'}", outcome, env, error, "; ".join(notes[:5]) + f" scale={scale}"))
    with open(os.path.join(outdir, "extract.tsv"), "w") as f:
        f.write("name\tevents\tkinds\tpfill|drops|steps\ttest_outcome\tenv\terror\tnotes\n")
        for r in rows:
            f.write("\t".join(str(x) for x in r) + "\n")
    print(f"{len(rows)} runs, {sum(1 for r in rows if r[1])} with events, "
          f"{sum(1 for r in rows if r[6])} ERROR (declaration {decl_path}) -> {outdir}")


if __name__ == "__main__":
    if sys.argv[1] == "--pdt":
        main_pdt(sys.argv[2], sys.argv[3], sys.argv[4] if len(sys.argv) > 4 else "")
    elif sys.argv[1] == "--pdtcpu":
        main_pdtcpu(sys.argv[2], sys.argv[3])
    else:
        main_cpu(sys.argv[1], sys.argv[2])
