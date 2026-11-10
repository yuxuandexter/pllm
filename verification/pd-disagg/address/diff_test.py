"""Seeded differential checks against this checkout's real Python ledger.

Check page addresses, merged-copy order/lengths, byte bounds and disjointness,
token slots and their guards, the nine-field handshake, and p_post page checks.
Two deliberately perturbed descriptors must produce mismatches. No GPU needed.
"""
import argparse
from pathlib import Path
import random
import sys

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / "python"))
from minisgl.disagg import ledger as L  # noqa: E402


def rand_layout(rng, ps=None, base=None):
    layout = [rng.randint(1, 8), ps or rng.choice([1, 16, 64]), rng.randint(1, 8), rng.randint(1, 16),
            rng.choice([1, 2, 4]), rng.randint(3, 64), base if base is not None else rng.randrange(0, 2 ** 40)]
    return layout + [{1: 4, 2: 1, 4: 3}[layout[4]], 12345]


MUT = None   # self-check: a perturbed descriptor must produce mismatches


def desc_page_addr(lay, kv, layer, page):
    NL, PS, H, D, IS, PP, B = lay[:7]
    if MUT == "slab_stride_numpages":
        PP = PP - 1
    if MUT == "pb_no_itemsize":
        IS = 1 if IS > 1 else IS
    return B + ((kv * NL + layer) * PP + page) * (PS * H * D * IS)


def rand_pages(rng, n, hi):
    """n distinct pages in [0, hi), with contiguous runs mixed in so that merging happens."""
    out, used = [], set()
    while len(out) < n:
        start = rng.randrange(0, hi)
        run = rng.randint(1, 4)
        for p in range(start, min(hi, start + run)):
            if p not in used and len(out) < n:
                used.add(p)
                out.append(p)
    return out


def check(trials, seed=20261105):
    rng = random.Random(seed)
    bad = []
    nblocks = nmerged = 0
    for it in range(trials):
        P = rand_layout(rng)
        D = list(P[:5]) + [rng.randint(3, 64), rng.randrange(0, 2 ** 40)] + P[7:]
        NL, PS, H, Dd, IS = P[:5]
        pb = PS * H * Dd * IS
        # D1
        for _ in range(4):
            kv, layer, page = rng.randint(0, 1), rng.randrange(NL), rng.randrange(P[5])
            if L.page_addr(P, kv, layer, page) != desc_page_addr(P, kv, layer, page):
                bad.append(("D1", it, P, kv, layer, page))
        # D2 / D3
        n = rng.randint(1, min(P[5], D[5]) - 1)
        src = rand_pages(rng, n, P[5] - 1)
        dst = rand_pages(rng, n, D[5] - 1)
        if rng.random() < 0.3:   # force a fully contiguous pair to exercise long runs
            s0, d0 = rng.randrange(0, P[5] - n), rng.randrange(0, D[5] - n)
            src, dst = list(range(s0, s0 + n)), list(range(d0, d0 + n))
        srcs, dsts, lens = L.plan_copy(P, src, D, dst)
        nblocks += len(lens)
        nmerged += sum(1 for x in lens if x > pb)
        if any(x % pb or x <= 0 for x in lens):
            bad.append(("D2-len", it))
        got = []
        for s, d, ln in zip(srcs, dsts, lens):
            for k in range(ln // pb):
                got.append((s + k * pb, d + k * pb))
        want = [(desc_page_addr(P, kv, l, src[i]), desc_page_addr(D, kv, l, dst[i]))
                for kv in (0, 1) for l in range(NL) for i in range(n)]
        if got != want:
            bad.append(("D2-order", it, P, D, src, dst))
        for lay, starts in ((P, srcs), (D, dsts)):
            ivs = sorted((a, a + ln) for a, ln in zip(starts, lens))
            for (a1, e1), (a2, e2) in zip(ivs, ivs[1:]):
                if e1 > a2:
                    bad.append(("D3-overlap", it))
            for a, ln in zip(starts, lens):
                off = a - lay[6]
                slab, rest = divmod(off, lay[5] * pb)
                if not (0 <= slab < 2 * NL and rest + ln <= (lay[5] - 1) * pb):
                    bad.append(("D3-bound", it))
        # D4 token_slots via the real RefLedger
        led = L.RefLedger(P[5] - 1, P, instance=7)
        gen = led.open_req(1)
        npg = rng.randint(1, P[5] - 1)
        pages = led.alloc(gen, npg)
        lo = rng.randint(0, npg * PS)
        hi = rng.randint(lo, npg * PS)
        if led.token_slots(gen, lo, hi) != [pages[t // PS] * PS + t % PS for t in range(lo, hi)]:
            bad.append(("D4", it))
        for blo, bhi in ((-1, 0), (0, npg * PS + 1)):
            try:
                led.token_slots(gen, blo, bhi)
                bad.append(("D4-guard", it, blo, bhi))
            except L.LedgerViolation:
                pass
        # D5 register_peer
        other = list(P)
        other[6] = P[6] + 4096
        other[5] = rng.randint(3, 64)
        f = rng.randrange(6)
        if f < 5:
            other[f] = other[f] * 2 if f != 1 else (16 if P[1] != 16 else 64)
        expect = L.OK if all(other[i] == P[i] for i in (0, 1, 2, 3, 4, 7, 8)) else L.REJ_LAYOUT
        if led.register_peer(99, other) != expect:
            bad.append(("D5", it, P, other))
        for field, value in ((7, {1: 2, 3: 1, 4: 5}[P[7]]), (8, P[8] + 1)):
            altered = list(P)
            altered[field] = value
            fresh = L.RefLedger(P[5] - 1, P, instance=7)
            if fresh.register_peer(99, altered) != L.REJ_LAYOUT:
                bad.append(("D5-identity", it, field))
        # D6 p_post page checks (on a fresh ledger that has `other` registered when accepted)
        if expect == L.OK:
            led.launch(1, [(gen, 0, PS)])
            led.complete(1)
            ntok = rng.randint(1, PS)
            k = L.div_ceil(ntok, PS)
            cand = rng.choice(["ok", "dummy", "neg", "dup", "count"])
            dp = rand_pages(rng, k, other[5] - 1)
            if cand == "dummy":
                dp[-1] = other[5] - 1
            elif cand == "neg":
                dp[0] = -1
            elif cand == "dup" and k >= 2:
                dp[1] = dp[0]
            elif cand == "count":
                dp = dp + [other[5] - 2] if other[5] - 2 not in dp else dp[:-1]
            pred = (len(dp) == k and len(set(dp)) == k and all(0 <= d < other[5] - 1 for d in dp))
            eid = led.p_post(gen, ntok, 99, 5, 6, it + 1, dp)
            if (eid > 0) != pred:
                bad.append(("D6", it, cand, dp, eid))
    return bad, nblocks, nmerged


def check_page_rejections():
    """Exercise multi-page duplicate/count/range guards in the real planner and p_post."""
    checks = 0
    for ps in (1, 16, 64):
        layout = [2, ps, 2, 4, 2, 5, 4096, 1, 12345]
        other = list(layout)
        other[6] += 4096
        for pages, accepted in (([0, 1], True), ([1, 0], True), ([0, 0], False),
                                ([0], False), ([0, 4], False), ([-1, 1], False)):
            led = L.RefLedger(4, layout, instance=7)
            if led.register_peer(99, other) != L.OK:
                raise AssertionError("compatible layout rejected")
            gen = led.open_req(1)
            src = led.alloc(gen, 2)
            led.launch(1, [(gen, 0, 2 * ps)])
            led.complete(1)
            eid = led.p_post(gen, 2 * ps, 99, 5, 6, 1, pages)
            if (eid > 0) != accepted:
                raise AssertionError(("D6-multipage", ps, pages, eid))
            try:
                L.plan_copy(layout, src, other, pages)
                got = True
            except L.LedgerViolation:
                got = False
            if got != accepted:
                raise AssertionError(("D2-page-guard", ps, pages, got))
            checks += 2
    return checks


def main():
    global MUT
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("trials", nargs="?", type=int, default=3000)
    parser.add_argument("--out", type=Path, help="optional summary file")
    args = parser.parse_args()
    if args.trials < 1:
        parser.error("trials must be positive")
    trials = args.trials
    page_checks = check_page_rejections()
    print(f"multi-page guard checks: {page_checks} passed")
    selfcheck = {}
    for m in ("slab_stride_numpages", "pb_no_itemsize"):
        MUT = m
        selfcheck[m] = len(check(200)[0])
    MUT = None
    print("self-check (perturbed descriptor -> mismatches must be > 0):", selfcheck)
    bad, nb, nm = check(trials)
    print(f"diff_test: {trials} trials, {nb} blocks ({nm} merged runs of >= 2 pages), {len(bad)} mismatches")
    for b in bad[:20]:
        print("  MISMATCH", b)
    if args.out:
        with args.out.open("w") as fh:
            fh.write(f"trials={trials} blocks={nb} merged={nm} mismatches={len(bad)}\n")
            for b in bad[:200]:
                fh.write(repr(b) + "\n")
            fh.write(f"selfcheck={selfcheck}\n")
            fh.write(f"multi_page_guard_checks={page_checks}\n")
    sys.exit(1 if bad or not all(selfcheck.values()) else 0)


if __name__ == "__main__":
    main()
