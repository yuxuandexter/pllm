"""Verdict machinery for the veriserve arithmetic model.

Every property is a function build(mut, mode, nmax, *cfg) -> Query with
  req   : Requires (ledger / glue postconditions and host facts the descriptor may assume)
  defs  : the descriptor, i.e. what the code computes (one block per code line range, anchored)
  goal  : the Ensures
  wit   : extra constraints for the non-vacuity witness (a non-trivial scenario)
  show  : {label: term} printed from a model

Verdicts (fail closed):
  1. vacuity : req & defs must be sat, and req & defs & wit must be sat (else VACUOUS = fail).
  2. property: req & defs & Not(goal): unsat = HOLDS, sat = VIOLATED (+ counterexample),
               unknown / timeout = INCONCLUSIVE (fail).
  3. mutant  : the same query with one code / Requires mutation, in 'bounded' mode with the scale
               bound nmax = 1, 2, ...; the first sat nmax is the minimum exposure scale.
               unsat at every nmax = SURVIVED (fail unless the row documents it as a degenerate case,
               e.g. a tail-page mutant at page_size 1).
Modes:
  'proof'   : every size (pages per request, tokens, layers, heads, head_dim, itemsize, pool pages,
              base addresses) is a symbolic integer without upper bound.  Per-index data (page lists)
              are uninterpreted functions of the index; universally quantified Requires are instantiated
              at the terms the goal mentions, so unsat is a proof for every size.
  'bounded' : the same encoding plus the scale bound n <= nmax (what n counts is stated per row:
              pages per transfer, layers, ...).  Global pigeonhole facts (pages used <= pool pages) are
              part of the Requires, so a sat model extends to a real state.
"""
import json
import time

import z3

TIMEOUT_MS = 120_000


class Query:
    def __init__(self, req, defs, goal, wit=(), show=None, note=""):
        self.req, self.defs, self.goal = list(req), list(defs), goal
        self.wit, self.show, self.note = list(wit), dict(show or {}), note


def _solve(cs, timeout_ms=TIMEOUT_MS, seed=0):
    s = z3.Solver()
    s.set("timeout", timeout_ms)
    s.set("random_seed", seed)
    s.add(*cs)
    t0 = time.time()
    r = s.check()
    dt = time.time() - t0
    return r, (s.model() if r == z3.sat else None), dt, (s.reason_unknown() if r == z3.unknown else "")


def _render(model, show):
    out = {}
    for k, t in show.items():
        if isinstance(t, int):
            out[k] = t
            continue
        try:
            v = model.eval(t, model_completion=True)
            if z3.is_int_value(v) or z3.is_bv_value(v):
                out[k] = v.as_long()
            elif z3.is_true(v) or z3.is_false(v):
                out[k] = bool(z3.is_true(v))
            else:
                out[k] = str(v)
        except Exception as e:  # pragma: no cover
            out[k] = f"?{e}"
    return out


def evaluate(q: Query, use_wit=True, seed=0):
    """Return dict(verdict, witness, cex, secs)."""
    t0 = time.time()
    rv, _, _, why_v = _solve(q.req + q.defs, seed=seed)
    if rv != z3.sat:
        return {"verdict": "VACUOUS" if rv == z3.unsat else "INCONCLUSIVE", "why": f"premises {rv} {why_v}",
                "secs": round(time.time() - t0, 3)}
    witness = None
    if q.wit and use_wit:
        rw, mw, _, why_w = _solve(q.req + q.defs + q.wit)
        if rw != z3.sat:
            return {"verdict": "VACUOUS" if rw == z3.unsat else "INCONCLUSIVE",
                    "why": f"witness {rw} {why_w}", "secs": round(time.time() - t0, 3)}
        witness = _render(mw, q.show)
    r, m, _, why = _solve(q.req + q.defs + [z3.Not(q.goal)], seed=seed)
    res = {"secs": round(time.time() - t0, 3), "witness": witness}
    if r == z3.unsat:
        res["verdict"] = "HOLDS"
    elif r == z3.sat:
        res["verdict"] = "VIOLATED"
        res["cex"] = _render(m, q.show)
    else:
        res["verdict"] = "INCONCLUSIVE"
        res["why"] = why
    return res


class Runner:
    """Collects rows; exit code 1 if any verdict differs from its expectation or is INCONCLUSIVE/VACUOUS."""

    def __init__(self, model_name, only=None):
        self.model_name = model_name
        self.rows = []
        self.bad = []
        self.only = only

    def want(self, pid):
        return self.only is None or any(pid.startswith(o) for o in self.only)

    def prop(self, pid, title, anchor, scope, build, expect="HOLDS", modes=(("proof", None),),
             mutants=(), configs=((),), note="", mutant_ns=range(1, 7), scale=""):
        """mutants: list of (mid, kind, desc) or (mid, kind, desc, 'SURVIVES') for a documented
        degenerate configuration; may be a callable cfg -> list."""
        if not self.want(pid):
            return
        for cfg in configs:
            row = {"id": pid + (f"[{','.join(map(str, cfg))}]" if cfg else ""), "title": title, "anchor": anchor,
                   "scope": scope, "note": note, "scale": scale, "runs": [], "mutants": []}
            exp = expect(*cfg) if callable(expect) else expect
            row["expect"] = exp
            for mode, nmax in modes:
                r = evaluate(build(None, mode, nmax, *cfg))
                r["mode"] = f"{mode}" + (f"(n<={nmax})" if nmax else "")
                row["runs"].append(r)
                if r["verdict"] != exp:
                    self.bad.append(f"{row['id']} {r['mode']}: {r['verdict']} != {exp} {r.get('why', '')}")
            for m in (mutants(cfg) if callable(mutants) else mutants):
                mid, kind, desc = m[:3]
                want_survive = len(m) > 3 and m[3] == "SURVIVES"
                mr = {"mid": mid, "kind": kind, "desc": desc, "expect": "SURVIVES" if want_survive else "KILLED"}
                found = None
                t0 = time.time()
                for nm in mutant_ns:
                    r = evaluate(build(mid, "bounded", nm, *cfg), use_wit=False)
                    for seed in (1, 2):   # mutant search only: a sat model is a kill whatever the seed
                        if r["verdict"] != "INCONCLUSIVE":
                            break
                        r = evaluate(build(mid, "bounded", nm, *cfg), use_wit=False, seed=seed)
                        r["seed"] = seed
                    if r["verdict"] == "VACUOUS":  # scenario needs a larger scale: grow n
                        found = r
                        continue
                    if r["verdict"] == "INCONCLUSIVE":
                        found = r
                        break
                    if r["verdict"] == "VIOLATED":
                        found = r
                        found["min_n"] = nm
                        break
                    found = None  # HOLDS at this n: keep growing
                if found is None:
                    found = {"verdict": f"SURVIVED(n<={max(mutant_ns)})"}
                found["secs_total"] = round(time.time() - t0, 3)
                mr.update(found)
                row["mutants"].append(mr)
                killed = found["verdict"] == "VIOLATED"
                if want_survive and not found["verdict"].startswith("SURVIVED"):
                    self.bad.append(f"{row['id']} mutant {mid}: expected to survive (degenerate), got {found['verdict']}")
                if not want_survive and not killed:
                    self.bad.append(f"{row['id']} mutant {mid}: {found['verdict']} {found.get('why', '')}")
            if exp == "HOLDS" and row["mutants"] and not any(m["verdict"] == "VIOLATED" for m in row["mutants"]):
                if all(m["expect"] == "SURVIVES" for m in row["mutants"]):
                    row["degenerate"] = True   # minimum exposure scale not reached in this configuration
                    row["note"] = (row.get("note", "") + " degenerate configuration: every mutant is a documented "
                                   "survivor (below the minimum exposure scale)").strip()
                else:
                    self.bad.append(f"{row['id']}: no mutant killed (calibration missing)")
            self.rows.append(row)
            self._print_row(row)

    def lemma(self, lid, title, anchor, obligations, note=""):
        """obligations: list of (name, Query); each must be HOLDS (induction base / step, nonlinear lemma)."""
        row = {"id": lid, "title": title, "anchor": anchor, "scope": "symbolic (unbounded)", "scale": "",
               "expect": "HOLDS", "runs": [], "mutants": [], "note": note or "lemma"}
        for name, q in obligations:
            r = evaluate(q)
            r["mode"] = name
            row["runs"].append(r)
            if r["verdict"] != "HOLDS":
                self.bad.append(f"{lid} {name}: {r['verdict']} {r.get('why', '')}")
        self.rows.append(row)
        self._print_row(row)

    @staticmethod
    def _print_row(row):
        runs = "; ".join(f"{r['mode']}={r['verdict']}({r['secs']}s)" for r in row["runs"])
        print(f"[{row['id']}] {row['title']} | expect {row['expect']} | {runs}", flush=True)
        for r in row["runs"]:
            if r.get("cex"):
                print(f"    cex({r['mode']}): {r['cex']}", flush=True)
            if r.get("why"):
                print(f"    why({r['mode']}): {r['why']}", flush=True)
        for m in row["mutants"]:
            print(f"    mutant {m['mid']} ({m['kind']}, expect {m['expect']}): {m['verdict']} min_n={m.get('min_n')} "
                  f"({m['secs_total']}s) cex={m.get('cex')}", flush=True)

    def finish(self, out_json, out_md=None):
        if out_json is not None:
            with open(out_json, "w") as f:
                json.dump({"model": self.model_name, "z3": z3.get_version_string(), "rows": self.rows,
                           "bad": self.bad}, f, indent=1, default=str)
                f.write("\n")
        if out_md:
            write_md(self, out_md)
        nm = sum(len(r["mutants"]) for r in self.rows)
        nk = sum(1 for r in self.rows for m in r["mutants"] if m["verdict"] == "VIOLATED")
        print(f"\n{self.model_name}: {len(self.rows)} rows, {nm} mutant runs ({nk} killed), {len(self.bad)} bad",
              flush=True)
        for b in self.bad:
            print("  BAD", b, flush=True)
        return 1 if self.bad else 0


def write_md(runner, path):
    L = [f"# {runner.model_name}: all rows (generated by the script; do not edit)", "",
         f"z3 {z3.get_version_string()}; rows {len(runner.rows)}; bad {len(runner.bad)}", ""]
    for row in runner.rows:
        L.append(f"## {row['id']} {row['title']}")
        L.append("")
        L.append(f"- anchor: {row['anchor']}")
        L.append(f"- scope: {row['scope']}" + (f"; scale n = {row['scale']}" if row.get("scale") else ""))
        L.append(f"- expect: {row['expect']}")
        if row.get("note"):
            L.append(f"- note: {row['note']}")
        for r in row["runs"]:
            L.append(f"- run {r['mode']}: **{r['verdict']}** ({r['secs']} s)")
            if r.get("witness"):
                L.append(f"  - witness: `{r['witness']}`")
            if r.get("cex"):
                L.append(f"  - counterexample: `{r['cex']}`")
            if r.get("why"):
                L.append(f"  - why: {r['why']}")
        for m in row["mutants"]:
            L.append(f"- mutant `{m['mid']}` ({m['kind']}; expect {m['expect']}): **{m['verdict']}**"
                     f" min_n={m.get('min_n')} ({m['secs_total']} s) — {m['desc']}")
            if m.get("cex"):
                L.append(f"  - counterexample: `{m['cex']}`")
        L.append("")
    if runner.bad:
        L.append("## BAD")
        L += [f"- {b}" for b in runner.bad]
    with open(path, "w") as f:
        f.write("\n".join(L) + "\n")


def cdiv(a, b):
    """div_ceil(a, b) = -(-a // b) (ledger.div_ceil) for a positive numeral b: (a + b - 1) div b."""
    return (a + b - 1) / b


def mono(a, b, c):
    """Instance of lemma L-MONO: 0 <= a <= b and c >= 0 imply a*c <= b*c (proved once in lemma rows)."""
    return z3.Implies(z3.And(0 <= a, a <= b, c >= 0), a * c <= b * c)


def radix(m, x, a, y, b):
    """Instance of lemma L-RADIX: m >= 1, x, y >= 0, 0 <= a, b < m, x*m + a == y*m + b imply x == y and a == b."""
    return z3.Implies(z3.And(m >= 1, x >= 0, y >= 0, 0 <= a, a < m, 0 <= b, b < m, x * m + a == y * m + b),
                      z3.And(x == y, a == b))


def below(m, x, X, a):
    """Instance of lemma L-BELOW: 0 <= x < X, 0 <= a < m imply x*m + a < X*m."""
    return z3.Implies(z3.And(m >= 1, 0 <= x, x < X, 0 <= a, a < m), x * m + a < X * m)
