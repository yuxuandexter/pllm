"""Symbolic KV address arithmetic and calibrated negative controls for pLLM.

The layout is (2, num_layers, pool_pages, page_size, kv_heads, head_dim).
The model uses mathematical integers and page sizes 1, 16, and 64. Private
request page sets are assumed disjoint; shared-prefix aliasing is outside
those claims. See README.md for assumptions, historical controls and commands.
"""
import argparse
from pathlib import Path
import sys

import z3
from z3 import And, Function, If, Implies, Int, IntSort, Ints, Not, Or

from common import Query, Runner, below, cdiv, mono, radix

PS_ALL = ((1,), (16,), (64,))
PS_GT1 = ((16,), (64,))
TWO64 = 2 ** 64


# ============================================================================================
# geometry (first seven LAYOUT_FIELDS) = (num_layers, page_size, kv_heads, head_dim, itemsize, pool_pages, base_ptr)
# Built in scheduler_pd.make_pd from engine.kv_cache._kv_buffer; dtype and model identity follow.
# ============================================================================================
class Lay:
    def __init__(self, tag, ps, share=None, own=()):
        """ps: a numeral or None (symbolic in {1,16,64}).  share: another Lay whose num_layers / kv_heads /
        head_dim / itemsize / page_size symbols are reused (the fields register_peer compared equal),
        except the names in `own`, which get fresh symbols (a mutant that omits that field)."""
        def f(name, mine):
            if share is not None and name not in own:
                return getattr(share, name)
            return mine
        self.tag = tag
        self.NL = f("NL", Int(f"NL_{tag}"))
        self.H = f("H", Int(f"H_{tag}"))
        self.D = f("D", Int(f"D_{tag}"))
        self.IS = f("IS", Int(f"IS_{tag}"))
        self.PS = f("PS", ps if ps is not None else Int(f"PS_{tag}"))
        self.PP = Int(f"PP_{tag}")  # pool_pages = engine.num_pages + 1 (engine.py)
        self.B = Int(f"B_{tag}")    # base_ptr = buf.data_ptr()
        self.dt = Int(f"dtype_{tag}")

    def pb(self):
        """page_bytes = page_size * kv_heads * head_dim * itemsize (ledger.py)."""
        return self.PS * self.H * self.D * self.IS

    def region(self):
        """registered length = buf.numel() * buf.element_size() (scheduler_pd.py)."""
        return 2 * self.NL * self.PP * self.pb()

    def num_pages(self):
        """the ledger's num_pages = engine.num_pages = pool_pages - 1 (scheduler_pd.py, engine.py)."""
        return self.PP - 1

    def slab(self, kv, layer):
        """kv * num_layers + layer, kv in {0,1} (ledger.py)."""
        return If(kv == 1, self.NL, 0) + layer

    def page_addr(self, kv, layer, page, slab_stride=None, pb=None):
        """ledger.py: base_ptr + ((kv * num_layers + layer) * pool_pages + page) * page_bytes."""
        st = self.PP if slab_stride is None else slab_stride
        return self.B + (self.slab(kv, layer) * st + page) * (self.pb() if pb is None else pb)

    def inpage(self, slot, head, dim, byte):
        """byte offset of element (slot, head, dim) byte `byte` inside one page (contiguous tensor, mha_pool.py)."""
        return ((slot * self.H + head) * self.D + dim) * self.IS + byte

    def real(self, kv, layer, page, slot, head, dim, byte):
        """torch contiguous byte address of _kv_buffer[kv, layer, page, slot, head, dim] + byte."""
        H, D, IS, PS, PP, NL = self.H, self.D, self.IS, self.PS, self.PP, self.NL
        kvNL = If(kv == 1, NL, 0)  # kv * num_layers for kv in {0,1}
        return self.B + IS * (kvNL * PP * PS * H * D + layer * PP * PS * H * D + page * PS * H * D
                              + slot * H * D + head * D + dim) + byte

    def req(self, mode, small=True):
        r = [self.NL >= 1, self.H >= 1, self.D >= 1, self.IS >= 1, self.PP >= 2, self.B >= 0]
        if not isinstance(self.PS, int):
            r.append(Or(self.PS == 1, self.PS == 16, self.PS == 64))
        if mode == "bounded" and small:
            r += [self.NL <= 8, self.H <= 8, self.D <= 16, self.IS <= 4, self.PP <= 64, self.B <= 2 ** 20]
        return r

    def fit64(self):
        """physical fact: the registered region lies inside the 64-bit address space."""
        return self.B + self.region() <= TWO64

    def digits_ok(self, t, page_hi=None):
        kv, layer, page, slot, head, dim, byte = t
        return And(Or(kv == 0, kv == 1), 0 <= layer, layer < self.NL, 0 <= page,
                   page < (self.PP if page_hi is None else page_hi), 0 <= slot, slot < self.PS,
                   0 <= head, head < self.H, 0 <= dim, dim < self.D, 0 <= byte, byte < self.IS)

    def chain(self, t):
        """mixed-radix chain v1..v7 of a digit tuple: v7 = real address - base."""
        kv, layer, page, slot, head, dim, byte = t
        v1 = self.slab(kv, layer)
        v2 = v1 * self.PP + page
        v3 = v2 * self.PS + slot
        v4 = v3 * self.H + head
        v5 = v4 * self.D + dim
        v6 = v5 * self.IS + byte
        return [v1, v2, v3, v4, v5, v6]

    def chain_facts(self, t):
        """lemma instances (L-MONO, L-BELOW) for one tuple: every level is >= 0 and below its radix product."""
        kv, layer, page, slot, head, dim, byte = t
        v = self.chain(t)
        rad = [self.PP, self.PS, self.H, self.D, self.IS]
        dig = [page, slot, head, dim, byte]
        X = [2 * self.NL]
        for m in rad:
            X.append(X[-1] * m)
        out = []
        for i in range(5):
            out.append(mono(0, v[i], rad[i]))
            out.append(below(rad[i], v[i], X[i], dig[i]))
        return out, X[-1]

    def radix_facts(self, t, u):
        """L-RADIX instances comparing two tuples level by level (top: kv, layer)."""
        vt, vu = self.chain(t), self.chain(u)
        rad = [self.PP, self.PS, self.H, self.D, self.IS]
        return [radix(rad[i], vt[i], t[i + 2], vu[i], u[i + 2]) for i in range(5)]


def tup(tag):
    return list(Ints(" ".join(f"{n}_{tag}" for n in ("kv", "layer", "page", "slot", "head", "dim", "byte"))))


# ============================================================================================
# lemmas (nonlinear, proved once; their instances are used as hypotheses below)
# ============================================================================================
def lemma_rows(R):
    a, b, c, m, x, y, X = Ints("a b c m x y X")
    R.lemma("L-MONO", "0<=a<=b, c>=0  =>  a*c <= b*c", "",
            [("nla", Query([0 <= a, a <= b, c >= 0], [], a * c <= b * c))])
    R.lemma("L-BELOW", "0<=x<X, 0<=a<m  =>  x*m + a < X*m", "",
            [("nla", Query([m >= 1, 0 <= x, x < X, 0 <= a, a < m], [], x * m + a < X * m))])
    R.lemma("L-RADIX", "x,y>=0, 0<=a,b<m, x*m+a = y*m+b  =>  x=y and a=b", "",
            [("nla", Query([m >= 1, x >= 0, y >= 0, 0 <= a, a < m, 0 <= b, b < m, x * m + a == y * m + b], [],
                           And(x == y, a == b)))])


# ============================================================================================
# A-4  page_addr is the tensor's byte address; addresses injective, inside the registered region, < 2^64
# ============================================================================================
def b_a4_real(mut, mode, nmax, ps):
    L = Lay("", ps)
    t = tup("t")
    kv, layer, page, slot, head, dim, byte = t
    req = L.req(mode) + [L.digits_ok(t)]
    if mode == "bounded":
        req.append(L.NL <= nmax)
    st, pbm = None, None
    if mut == "slab_stride_numpages":
        st = L.num_pages()          # page_addr strides slabs by the ledger's num_pages instead of pool_pages
    if mut == "pb_no_itemsize":
        pbm = L.PS * L.H * L.D      # page_bytes forgets x itemsize
    if mut == "pb_no_pagesize":
        pbm = L.H * L.D * L.IS      # page_bytes forgets x page_size (bytes per token, as an item_len)
    if mut == "kv_inner":           # (layer * 2 + kv) instead of (kv * num_layers + layer)
        code = L.B + ((layer * 2 + kv) * L.PP + page) * L.pb() + L.inpage(slot, head, dim, byte)
    else:
        code = L.page_addr(kv, layer, page, st, pbm) + L.inpage(slot, head, dim, byte)
    real = L.real(*t)
    return Query(req, [], code == real,
                 wit=[L.NL >= 2, L.IS == 2, L.H >= 2, kv == 1, page >= 1, slot == (ps - 1)],
                 show={"NL": L.NL, "PP": L.PP, "H": L.H, "D": L.D, "IS": L.IS, "kv": kv, "layer": layer,
                       "page": page, "slot": slot, "head": head, "dim": dim, "byte": byte, "code": code, "real": real})


def b_a4_inj(mut, mode, nmax, ps):
    L = Lay("", ps)
    t, u = tup("t"), tup("u")
    small = mut != "wrap32"
    req = L.req(mode, small) + [L.fit64(), L.digits_ok(t), L.digits_ok(u)]
    if not small:   # realistic sizes for the wrap mutant: only the pool is large (> 4 GiB registered)
        req += [L.NL <= 128, L.H <= 128, L.D <= 512, Or(L.IS == 1, L.IS == 2, L.IS == 4)]
    if mode == "bounded":
        req.append(L.NL <= nmax)
    ft, R = L.chain_facts(t)
    fu, _ = L.chain_facts(u)
    rf = L.radix_facts(t, u)
    region = L.region()
    if mut == "region_numpages":
        region = 2 * L.NL * L.num_pages() * L.pb()   # registered length counts the ledger's pages only

    def code(x):
        kv, layer, page, slot, head, dim, byte = x
        st = L.num_pages() if mut == "slab_stride_numpages" else None
        pbm = L.PS * L.H * L.D if mut == "pb_no_itemsize" else None
        a = L.page_addr(kv, layer, page, st, pbm) + L.inpage(slot, head, dim, byte)
        if mut == "wrap32":                       # the MR offset wraps modulo 2^32
            a = L.B + (a - L.B) % (2 ** 32)
        return a
    at, au = code(t), code(u)
    same = And(*[t[i] == u[i] for i in range(7)])
    goal = And(Implies(at == au, same), L.B <= at, at < L.B + region, at < TWO64)
    return Query(req, ft + fu + rf + [R == 2 * L.NL * L.PP * L.pb()], goal,
                 wit=[L.NL >= 2, L.IS >= 2, Not(same)],
                 show={"NL": L.NL, "PP": L.PP, "PS": L.PS, "H": L.H, "D": L.D, "IS": L.IS, "B": L.B,
                       "t_kv": t[0], "t_layer": t[1], "t_page": t[2],
                       "t_slot": t[3], "t_head": t[4], "t_dim": t[5], "t_byte": t[6],
                       "u_kv": u[0], "u_layer": u[1], "u_page": u[2], "u_slot": u[3], "u_head": u[4],
                       "u_dim": u[5], "u_byte": u[6], "addr_t": at, "addr_u": au})


# ============================================================================================
# A-2 plan_copy blocks.  Run model: one block j = (kv, layer, run) with run (i0, s, d, nr):
#   src(i0+k) = s+k, dst(i0+k) = d+k for 0 <= k < nr, i0 + nr <= npg, maximal on both ends
#   (proved for the real loop ledger.pyby L-MERGE (induction) and L-MERGE-U (unrolled)).
# ============================================================================================
class Xfer:
    """One transfer: P's source pages src(i) (P ledger r.pages[:npg], ledger.py) and D's destination
    pages dst(i) (decode.py -> p_post dst_pages), i < npg = div_ceil(ntokens, page_size)."""

    def __init__(self, tag):
        self.tag = tag
        self.npg = Int(f"npg_{tag}")
        self.src = Function(f"src_{tag}", IntSort(), IntSort())
        self.dst = Function(f"dst_{tag}", IntSort(), IntSort())

    def page_req(self, i, P, D, mut):
        """ledger facts for index i: P's pages from alloc are < P.num_pages (ledger.py);
        D's pages pass p_post's range check 0 <= d < pool_pages - 1 (ledger.py)."""
        s, d = self.src(i), self.dst(i)
        p_hi = P.PP if mut == "ledger_pool_pages" else P.num_pages()
        lo_d = [] if mut == "pcheck_no_lower" else [0 <= d]
        if mut == "pcheck_dummy":
            d_hi = d < D.PP
        else:
            d_hi = d < D.PP - 1
        return And(0 <= s, s < p_hi, *lo_d, d_hi)


class Block:
    def __init__(self, tag, X):
        self.X = X
        self.kv, self.layer, self.i0, self.nr = Ints(f"kv_{tag} layer_{tag} i0_{tag} nr_{tag}")
        self.s, self.d = X.src(self.i0), X.dst(self.i0)

    def shape(self, NL):
        return And(Or(self.kv == 0, self.kv == 1), 0 <= self.layer, self.layer < NL, 0 <= self.i0, self.nr >= 1,
                   self.i0 + self.nr <= self.X.npg)

    def run_at(self, k, mut=None):
        """instance of the run invariant at offset k."""
        X = self.X
        dst_ok = X.dst(self.i0 + k) == self.d + k
        if mut == "merge_src_only":   # the merge test checks only src contiguity: dst is not a run
            dst_ok = z3.BoolVal(True)
        return Implies(And(0 <= k, k < self.nr), And(X.src(self.i0 + k) == self.s + k, dst_ok))

    def maximal(self, mut=None):
        """the loop ends a run only when the next page does not continue it on both sides."""
        X, e = self.X, self.i0 + self.nr
        if mut == "merge_src_only":
            cont_r = X.src(e) == self.s + self.nr
            cont_l = X.src(self.i0) == X.src(self.i0 - 1) + 1
        else:
            cont_r = And(X.src(e) == self.s + self.nr, X.dst(e) == self.d + self.nr)
            cont_l = And(X.src(self.i0) == X.src(self.i0 - 1) + 1, X.dst(self.i0) == X.dst(self.i0 - 1) + 1)
        return And(Implies(e < X.npg, Not(cont_r)), Implies(self.i0 > 0, Not(cont_l)))

    def length(self, pb, mut=None):
        """lens.append(n * page_bytes) (ledger.py)."""
        return (self.nr + 1) * pb if mut == "len_plus1" else self.nr * pb


def xfer_req(X, P, D, mut, idx):
    """page facts and pairwise distinctness at the given indices (instances of the ledger's
    allocation facts; global pigeonhole npg <= pool pages keeps every model extendable)."""
    r = [X.npg >= 1, X.npg <= P.num_pages(), X.npg <= D.num_pages()]
    ids = []
    for i in idx:
        if not any(z3.eq(i, j) for j in ids):
            ids.append(i)
    for i in ids:
        r.append(Implies(And(0 <= i, i < X.npg), X.page_req(i, P, D, mut)))
    for a in range(len(ids)):
        for b in range(a + 1, len(ids)):
            i, j = ids[a], ids[b]
            inr = And(0 <= i, i < X.npg, 0 <= j, j < X.npg, i != j)
            r.append(Implies(inr, X.src(i) != X.src(j)))       # ledger alloc pops distinct FREE pages
            if mut != "pcheck_no_dup":
                r.append(Implies(inr, X.dst(i) != X.dst(j)))   # p_post: len(set(dst_pages)) == npages
    return r


def two_layouts(ps, mode, shared_fields=True):
    P = Lay("P", ps)
    D = Lay("D", ps, share=P)   # register_peer accepted: layout[:5] equal (ledger.py)
    return P, D, P.req(mode) + D.req(mode) + [P.fit64(), D.fit64()]


def slab_bounds(L, blk, page_lo, pb):
    """L-MONO instances for 'block inside its slab, inside the region' (all true lemma instances)."""
    v1 = L.slab(blk.kv, blk.layer)
    return [mono(0, v1, L.PP), mono(0, v1 * L.PP, pb), mono(0, page_lo, pb), mono(v1 + 1, 2 * L.NL, L.PP),
            mono((v1 + 1) * L.PP, 2 * L.NL * L.PP, pb),
            mono(v1 * L.PP + page_lo + blk.nr, v1 * L.PP + L.PP - 1, pb),
            mono(v1 * L.PP + page_lo + blk.nr + 1, v1 * L.PP + L.PP - 1, pb)]


def b_a2_bound(mut, mode, nmax, ps):
    P, D, req = two_layouts(ps, mode)
    X = Xfer("x")
    blk = Block("j", X)
    last = blk.i0 + blk.nr - 1
    req += [blk.shape(P.NL), blk.run_at(blk.nr - 1, mut), blk.run_at(0, mut), blk.maximal(mut)]
    req += xfer_req(X, P, D, mut, [blk.i0, last])
    if mode == "bounded":
        req.append(X.npg <= nmax)
    pb = P.pb()
    ln = blk.length(pb, mut)
    sA = P.page_addr(blk.kv, blk.layer, blk.s)
    dA = D.page_addr(blk.kv, blk.layer, blk.d)

    def inside(L, A, page):
        v1 = L.slab(blk.kv, blk.layer)
        slab0 = L.B + v1 * L.PP * pb
        return And(L.B <= slab0, slab0 <= A, A + ln <= slab0 + (L.PP - 1) * pb,   # never the dummy page
                   slab0 + L.PP * pb <= L.B + L.region(), page >= 0)
    facts = slab_bounds(P, blk, blk.s, pb) + slab_bounds(D, blk, blk.d, pb)
    goal = And(inside(P, sA, blk.s), inside(D, dA, blk.d))
    return Query(req, facts, goal,
                 wit=[blk.nr >= 2, blk.kv == 1, blk.layer >= 1, X.npg >= 3, P.PP != D.PP, P.B != D.B],
                 show={"npg": X.npg, "kv": blk.kv, "layer": blk.layer, "i0": blk.i0, "nr": blk.nr,
                       "s": blk.s, "d": blk.d, "PP_P": P.PP, "PP_D": D.PP, "NL": P.NL, "page_bytes": pb,
                       "B_P": P.B, "B_D": D.B, "srcA": sA, "dstA": dA, "len": ln})


def b_a2_disj(mut, mode, nmax, ps, cross):
    """cross = 0: two different blocks of one transfer; cross = 1: blocks of transfers of two different
    requests (D side: same destination instance; P side: same source instance)."""
    P, D, req = two_layouts(ps, mode)
    X1 = Xfer("x1")
    X2 = X1 if not cross else Xfer("x2")
    b1, b2 = Block("j1", X1), Block("j2", X2)
    pb = P.pb()
    req += [b1.shape(P.NL), b2.shape(P.NL), b1.maximal(mut), b2.maximal(mut)]
    if not cross:   # different blocks: different (kv, layer), or different runs (disjoint index ranges)
        req.append(Or(b1.kv != b2.kv, b1.layer != b2.layer,
                      b1.i0 + b1.nr <= b2.i0, b2.i0 + b2.nr <= b1.i0))
    if mode == "bounded":
        req += [X1.npg <= nmax, X2.npg <= nmax]

    out_goals, facts, show = [], [], {}
    idx1, idx2 = [], []
    for side, L, pick in (("dst", D, lambda X: X.dst), ("src", P, lambda X: X.src)):
        v1a, v1b = L.slab(b1.kv, b1.layer), L.slab(b2.kv, b2.layer)
        pa, pbb = pick(X1)(b1.i0), pick(X2)(b2.i0)
        Fa, Fb = v1a * L.PP + pa, v1b * L.PP + pbb
        A1, A2 = L.B + Fa * pb, L.B + Fb * pb
        l1, l2 = b1.length(pb, mut), b2.length(pb, mut)
        out_goals.append(Or(A1 + l1 <= A2, A2 + l2 <= A1))
        n1 = b1.nr + (1 if mut == "len_plus1" else 0)
        n2 = b2.nr + (1 if mut == "len_plus1" else 0)
        c = If(pa >= pbb, pa, pbb)
        k1, k2 = c - pa, c - pbb
        facts += [mono(Fb + n2, Fa, pb), mono(Fa + n1, Fb, pb), mono(v1a + 1, v1b, L.PP), mono(v1b + 1, v1a, L.PP),
                  mono(0, v1a, L.PP), mono(0, v1b, L.PP)]
        facts += [b1.run_at(k1, mut), b2.run_at(k2, mut), b1.run_at(b1.nr - 1, mut), b2.run_at(b2.nr - 1, mut)]
        show.update({f"{side}_page1": pa, f"{side}_page2": pbb, f"{side}_A1": A1, f"{side}_A2": A2,
                     f"{side}_len1": l1, f"{side}_len2": l2})
        idx1 += [b1.i0, b1.i0 + b1.nr - 1, b1.i0 + k1]
        idx2 += [b2.i0, b2.i0 + b2.nr - 1, b2.i0 + k2]
    if not cross:
        req += xfer_req(X1, P, D, mut, idx1 + idx2 + [b1.i0 + b1.nr, b2.i0 + b2.nr])
    else:
        req += xfer_req(X1, P, D, mut, idx1 + [b1.i0 + b1.nr]) + xfer_req(X2, P, D, mut, idx2 + [b2.i0 + b2.nr])
        req += [X1.npg + X2.npg <= P.num_pages(), X1.npg + X2.npg <= D.num_pages()]
        # different requests own disjoint pages (ledger: alloc FREE -> PRIVATE(gen), one owner per page)
        for i in idx1:
            for j in idx2:
                inr = And(0 <= i, i < X1.npg, 0 <= j, j < X2.npg)
                if mut != "alloc_overlap":
                    req.append(Implies(inr, X1.dst(i) != X2.dst(j)))
                    req.append(Implies(inr, X1.src(i) != X2.src(j)))
    goal = And(*out_goals)
    show.update({"kv1": b1.kv, "layer1": b1.layer, "i0_1": b1.i0, "nr1": b1.nr, "kv2": b2.kv,
                 "layer2": b2.layer, "i0_2": b2.i0, "nr2": b2.nr, "npg1": X1.npg, "npg2": X2.npg,
                 "page_bytes": pb, "PP_D": D.PP, "NL": P.NL})
    wit = [b1.kv == b2.kv, b1.layer == b2.layer, b1.nr >= 2, b2.nr >= 2]
    return Query(req, facts, goal, wit=wit, show=show)


def b_a2_order(mut, mode, nmax, ps):
    """(d) the k-th byte block of srcs and of dsts describe the same token range: byte o of block j is
    byte r of logical page i = i0 + k on both sides (src page src(i), dst page dst(i)), same kv, layer."""
    P, D, req = two_layouts(ps, mode)
    X = Xfer("x")
    blk = Block("j", X)
    pb = P.pb()
    k, r = Ints("k r")
    o = k * pb + r
    ln = blk.length(pb, mut)
    req += [blk.shape(P.NL), blk.maximal(mut), 0 <= k, 0 <= r, r < pb, o < ln]
    req += xfer_req(X, P, D, mut, [blk.i0, blk.i0 + k, blk.i0 + blk.nr])
    if mode == "bounded":
        req.append(X.npg <= nmax)
    sA = P.page_addr(blk.kv, blk.layer, blk.s)
    dA = D.page_addr(blk.kv, blk.layer, blk.d)
    i = blk.i0 + k
    goal = And(i < X.npg,
               sA + o == P.page_addr(blk.kv, blk.layer, X.src(i)) + r,
               dA + o == D.page_addr(blk.kv, blk.layer, X.dst(i)) + r)
    facts = [blk.run_at(k, mut), mono(blk.nr, k, pb)]
    return Query(req, facts, goal, wit=[blk.nr >= 2, k == 1, X.npg >= 3, blk.kv == 1],
                 show={"npg": X.npg, "i0": blk.i0, "nr": blk.nr, "k": k, "r": r, "page_bytes": pb,
                       "s": blk.s, "d": blk.d, "src_i": X.src(i), "dst_i": X.dst(i), "srcA+o": sA + o,
                       "dstA+o": dA + o, "want_dst": D.page_addr(blk.kv, blk.layer, X.dst(i)) + r})


def b_a2_token(mut, mode, nmax, ps):
    """(d) end to end, in token terms.  P's prefill wrote token t's KV at P's slot pgP(t//PS)*PS + t%PS
    (P's page table, A1); D's decode reads token t at D's slot pgD(t//PS)*PS + t%PS (D's write_rows, A1).
    The transfer's source pages are P's r.pages[:npg] (ledger.py) and its destination pages are D's
    pages_of(gen)[:need] (decode.py; d_expect exposes r.pages[:npages], ledger.py).  Property: for every
    token t < n and every (kv, layer, head, dim, byte), the block that holds logical page t//PS copies exactly
    the byte P wrote for t onto exactly the byte D will read for t."""
    P, D, req = two_layouts(ps, mode)
    X = Xfer("x")
    blk = Block("j", X)
    pgP = Function("pgP", IntSort(), IntSort())   # P's page list for the request (its page table)
    pgD = Function("pgD", IntSort(), IntSort())   # D's page list for the request (its page table)
    t, n = Ints("t n")
    head, dim, byte = Ints("head dim byte")
    i = t / ps
    sl = t % ps
    req += [blk.shape(P.NL), blk.maximal(mut), n >= 1, X.npg == cdiv(n, ps), 0 <= t, t < n,
            blk.i0 <= i, i < blk.i0 + blk.nr,                      # the run that holds logical page i (partition)
            0 <= head, head < P.H, 0 <= dim, dim < P.D, 0 <= byte, byte < P.IS]
    req += xfer_req(X, P, D, mut, [blk.i0, i, blk.i0 + blk.nr])
    # the transfer's page lists are prefixes of the two page tables (in order)
    j = Int("j_other")
    if mut == "dst_permuted":    # D sends its pages in another order than its page table (e.g. sorted)
        req += [X.dst(i) == pgD(j), j != i, 0 <= j, j < X.npg, X.src(i) == pgP(i)]
    elif mut == "src_shift1":    # P posts r.pages[1:npg+1] instead of r.pages[:npg]
        req += [X.src(i) == pgP(i + 1), X.dst(i) == pgD(i), i + 1 < X.npg]   # P holds exactly npg pages: a short slice asserts in plan_copy
    else:
        req += [X.src(i) == pgP(i), X.dst(i) == pgD(i)]
    # page tables hold valid, distinct pages (alloc, ledger.py) at every index used
    used = [i, j, i + 1]
    for a in used:
        req += [Implies(And(0 <= a, a < X.npg + 1), And(0 <= pgP(a), pgP(a) < P.num_pages(),
                                                       0 <= pgD(a), pgD(a) < D.num_pages()))]
    for a in range(len(used)):
        for b in range(a + 1, len(used)):
            req += [Implies(used[a] != used[b], And(pgP(used[a]) != pgP(used[b]), pgD(used[a]) != pgD(used[b])))]
    if mut not in ("dst_permuted",):
        req.append(j == i + 1)   # j only matters for the permuted mutant
    if mode == "bounded":
        req.append(X.npg <= nmax)
    pb = P.pb()
    k = i - blk.i0
    o = k * pb + P.inpage(sl, head, dim, byte)
    ln = blk.length(pb, mut)
    sA = P.page_addr(blk.kv, blk.layer, blk.s)
    dA = D.page_addr(blk.kv, blk.layer, blk.d)
    p_byte = P.real(blk.kv, blk.layer, pgP(i), sl, head, dim, byte)   # what P's kernels wrote for token t
    d_byte = D.real(blk.kv, blk.layer, pgD(i), sl, head, dim, byte)   # what D's kernels read for token t
    facts = [blk.run_at(k, mut), mono(0, k, pb), mono(k + 1, blk.nr, pb)]
    inpg = P.inpage(sl, head, dim, byte)
    facts += [below(P.IS, (sl * P.H + head) * P.D + dim, P.PS * P.H * P.D, byte),
              below(P.D, sl * P.H + head, P.PS * P.H, dim), below(P.H, sl, P.PS, head),
              mono(0, sl * P.H + head, P.D), mono(0, (sl * P.H + head) * P.D + dim, P.IS), mono(0, sl, P.H)]
    goal = And(0 <= o, o < ln, sA + o == p_byte, dA + o == d_byte)
    return Query(req, facts, goal, wit=[blk.nr >= 2, t > ps, blk.kv == 1, P.NL >= 2],
                 show={"n": n, "t": t, "page_index": i, "i0": blk.i0, "nr": blk.nr, "src_i": X.src(i),
                       "dst_i": X.dst(i), "pgP_i": pgP(i), "pgD_i": pgD(i), "page_bytes": pb, "o": o,
                       "srcA+o": sA + o, "P_byte": p_byte, "dstA+o": dA + o, "D_byte": d_byte, "inpage": inpg})


def lemma_merge(R):
    """L-MERGE: the run loop of plan_copy (ledger.py) keeps, for the last run (i0, s, d, n) after
    processing pages 0..m-1:  i0 + n = m;  src(i0+k) = s+k, dst(i0+k) = d+k for k < n;  i0 = 0 or page i0
    did not continue the previous run.  A run is closed only when page m does not continue it."""
    src = Function("src", IntSort(), IntSort())
    dst = Function("dst", IntSort(), IntSort())
    i0, s, d, n, m, k = Ints("i0 s d n m k")

    def inv_at(i0_, s_, d_, n_, m_, k_):
        return And(i0_ >= 0, n_ >= 1, i0_ + n_ == m_, src(i0_) == s_, dst(i0_) == d_,
                   Implies(And(0 <= k_, k_ < n_), And(src(i0_ + k_) == s_ + k_, dst(i0_ + k_) == d_ + k_)),
                   Implies(i0_ > 0, Not(And(src(i0_) == src(i0_ - 1) + 1, dst(i0_) == dst(i0_ - 1) + 1))))
    # base: after page 0 the run is (0, src(0), dst(0), 1)
    base = Query([], [], inv_at(0, src(0), dst(0), 1, 1, k))
    # step: IH instantiated at k (a universally quantified IH; the goal's k is arbitrary)
    cont = And(s + n == src(m), d + n == dst(m))          # ledger.py
    n_i0 = If(cont, i0, m)
    n_s, n_d, n_n = If(cont, s, src(m)), If(cont, d, dst(m)), If(cont, n + 1, 1)
    ih = [inv_at(i0, s, d, n, m, k), inv_at(i0, s, d, n, m, n - 1), m >= 1]
    step = Query(ih, [], inv_at(n_i0, n_s, n_d, n_n, m + 1, k))
    # closing: when a run is closed at m, page m does not continue it (right-maximality of the closed run)
    close = Query(ih + [Not(cont)], [], Not(And(src(i0 + n) == s + n, dst(i0 + n) == d + n)))
    R.lemma("L-MERGE", "plan_copy run loop: run invariant + maximality (induction over pages)",
            "python/minisgl/disagg/ledger.py:192-222", [("base", base), ("step", step), ("close", close)])


def b_merge_unrolled(mut, mode, nmax, ps=None):
    """L-MERGE-U: the loop itself, unrolled for exactly K = nmax pages (bounded), compared page by page
    with the run model: page i lies in the run that starts at ri[i] with src/dst start rs[i]/rd[i], at
    offset i - ri[i] on both sides."""
    K = nmax if nmax else 4
    src = [Int(f"src{i}") for i in range(K)]
    dst = [Int(f"dst{i}") for i in range(K)]
    rs, rd, ri, rn = [src[0]], [dst[0]], [z3.IntVal(0)], [z3.IntVal(1)]
    for i in range(1, K):
        if mut == "merge_src_only":
            cont = rs[-1] + rn[-1] == src[i]
        elif mut == "merge_gap1":
            cont = And(rs[-1] + rn[-1] + 1 == src[i], rd[-1] + rn[-1] + 1 == dst[i])
        else:
            cont = And(rs[-1] + rn[-1] == src[i], rd[-1] + rn[-1] == dst[i])   # ledger.py
        rs.append(If(cont, rs[-1], src[i]))
        rd.append(If(cont, rd[-1], dst[i]))
        ri.append(If(cont, ri[-1], i))
        rn.append(If(cont, rn[-1] + 1, 1))
    req = [z3.Distinct(*src)] if K > 1 else []
    if K > 1:
        req.append(z3.Distinct(*dst))
    req += [s >= 0 for s in src] + [d >= 0 for d in dst]
    goal = And(*[And(rs[i] + (i - ri[i]) == src[i], rd[i] + (i - ri[i]) == dst[i]) for i in range(K)])
    show = {f"src{i}": src[i] for i in range(K)}
    show.update({f"dst{i}": dst[i] for i in range(K)})
    return Query(req, [], goal, wit=[src[i] == src[0] + i for i in range(K)], show=show)


# ============================================================================================
# A-5 / (d): layout agreement.  register_peer acceptance implies layout[:5] equality (ledger.py); then every byte
# plan_copy writes lands on D at the same (kv, layer, logical page, slot, head, dim, byte) it had on P.
# Mutants drop one field from the comparison: each must be caught (a byte lands elsewhere or outside).
# ============================================================================================
FIELD_OF = {"chk_omit_num_layers": "NL", "chk_omit_page_size": "PS", "chk_omit_kv_heads": "H",
            "chk_omit_head_dim": "D", "chk_omit_itemsize": "IS"}


def b_a5_layout(mut, mode, nmax, ps, silent=0):
    """silent = 1: the byte must stay inside D's registered pool (Mooncake accepts the write) and land at a
    different element: silent misplacement rather than an out-of-region error."""
    P = Lay("P", ps)
    if mut == "chk_none":
        own = ("NL", "PS", "H", "D", "IS")
    elif mut in FIELD_OF:
        own = (FIELD_OF[mut],)
    else:
        own = ()
    D = Lay("D", None if "PS" in own else ps, share=P, own=own)
    req = P.req(mode) + D.req(mode) + [P.fit64(), D.fit64()]
    X = Xfer("x")
    blk = Block("j", X)
    pb = P.pb()  # page_bytes from src_layout only (ledger.py)
    k = Int("k")
    slot, head, dim, byte = Ints("slot head dim byte")
    o = k * pb + P.inpage(slot, head, dim, byte)
    req += [blk.shape(P.NL), blk.maximal(), 0 <= k, k < blk.nr,
            0 <= slot, slot < P.PS, 0 <= head, head < P.H, 0 <= dim, dim < P.D, 0 <= byte, byte < P.IS]
    req += xfer_req(X, P, D, None, [blk.i0, blk.i0 + k, blk.i0 + blk.nr - 1])
    if mode == "bounded":
        req.append(X.npg <= nmax)
        for L in (P, D):   # tighter search box for the nonlinear sat search (sizes stay symbolic inside it)
            req += [L.NL <= 4, L.H <= 4, L.D <= 4, L.PP <= 8]
    dA = D.page_addr(blk.kv, blk.layer, blk.d)   # page_addr(dst_layout, ...) (ledger.py)
    a = dA + o
    want = [blk.kv, blk.layer, X.dst(blk.i0 + k), slot, head, dim, byte]
    got = tup("g")
    fw, Rw = D.chain_facts(want)
    fg, _ = D.chain_facts(got)
    rf = D.radix_facts(want, got)
    facts = fw + fg + rf + [blk.run_at(k), blk.run_at(blk.nr - 1), Rw == 2 * D.NL * D.PP * D.pb()]
    in_region = And(D.B <= a, a < D.B + D.region())
    lands_right = Implies(And(D.digits_ok(got), D.real(*got) == a), And(*[got[i] == want[i] for i in range(7)]))
    goal = And(in_region, lands_right)
    if silent:
        req.append(in_region)
        goal = lands_right
    show = {"in_region": in_region, "NL_P": P.NL, "NL_D": D.NL, "PS_P": P.PS, "PS_D": D.PS, "H_P": P.H, "H_D": D.H, "D_P": P.D,
            "D_D": D.D, "IS_P": P.IS, "IS_D": D.IS, "PP_D": D.PP, "kv": blk.kv, "layer": blk.layer, "k": k,
            "slot": slot, "head": head, "dim": dim, "byte": byte, "dst_page": want[2],
            "lands_kv": got[0], "lands_layer": got[1], "lands_page": got[2], "lands_slot": got[3],
            "lands_head": got[4], "lands_dim": got[5], "lands_byte": got[6], "addr": a,
            "D_region_end": D.B + D.region()}
    return Query(req, facts, goal, wit=[blk.nr >= 2, k == 1, blk.kv == 1, P.NL >= 2, P.H >= 2, P.IS == 2],
                 show=show)


def b_a5_dtype(mut, mode, nmax, ps, fixed):
    """Compare geometry-only (historical negative control) or geometry plus dtype (current)."""
    P = Lay("P", ps)
    D = Lay("D", ps)
    size = Function("itemsize_of", IntSort(), IntSort())
    req = P.req(mode) + D.req(mode) + [P.IS == size(P.dt), D.IS == size(D.dt)]
    # concrete dtype table: 1 bf16 (2 B), 2 fp16 (2 B), 3 fp32 (4 B), 4 fp8_e4m3 (1 B), 5 fp8_e5m2 (1 B)
    req += [size(1) == 2, size(2) == 2, size(3) == 4, size(4) == 1, size(5) == 1,
            And(P.dt >= 1, P.dt <= 5), And(D.dt >= 1, D.dt <= 5)]
    fields = [P.NL == D.NL, P.PS == D.PS, P.H == D.H, P.D == D.D, P.IS == D.IS]
    use_dtype = (fixed and mut != "omit_dtype")
    accept = And(*fields, *( [P.dt == D.dt] if use_dtype else []))
    return Query(req, [accept], P.dt == D.dt, wit=[P.dt != 3],
                 show={"dtype_P": P.dt, "dtype_D": D.dt, "itemsize_P": P.IS, "itemsize_D": D.IS})


# ============================================================================================
# A-1 / (b): token slots.  token_slots(gen, lo, hi) = [pages[t // ps] * ps + t % ps for t in [lo, hi)]
# with guard 0 <= lo <= hi <= len(pages) * ps (ledger.py); pages from alloc (ledger.py).
# ============================================================================================
def slot_of(pg, npg, t, ps, mut):
    """Python semantics: t // ps and t % ps are floor-based; a negative list index counts from the end."""
    idx = t / ps                                   # == t // ps for the numeral ps > 0 (Euclidean = floor here)
    pidx = If(idx < 0, npg + idx, idx)             # r.pages[idx] with Python negative indexing
    page = pg(pidx)
    if mut == "slot_no_offset":
        return page * ps, pidx, page
    if mut == "slot_no_scale":
        return page + t % ps, pidx, page
    return page * ps + t % ps, pidx, page


def guard(lo, hi, npg, ps, mut):
    lo_ok = [] if mut == "guard_no_lower" else [0 <= lo]
    return And(*lo_ok, lo <= hi, hi <= npg * ps)


def b_a1_slot(mut, mode, nmax, ps):
    NP = Int("num_pages")                          # ledger num_pages; dummy page = NP, its slots start at NP*ps
    npg = Int("npg")
    pg = Function("pg", IntSort(), IntSort())
    t, lo, hi = Ints("t lo hi")
    slot, pidx, page = slot_of(pg, npg, t, ps, mut)
    p_hi = NP + 1 if mut == "pool_pages" else NP   # ledger built over pool_pages: the dummy page is allocatable
    req = [NP >= 1, npg >= 1, npg <= p_hi, guard(lo, hi, npg, ps, mut), lo <= t, t < hi,
           Implies(And(0 <= pidx, pidx < npg), And(0 <= page, page < p_hi))]
    if mode == "bounded":
        req.append(npg <= nmax)
    goal = And(0 <= pidx, pidx < npg, slot / ps == page, slot % ps == t % ps, 0 <= slot, slot < NP * ps)
    return Query(req, [], goal, wit=[npg >= 3, t % ps == (ps - 1), t >= ps],
                 show={"num_pages": NP, "npg": npg, "t": t, "lo": lo, "hi": hi, "page_index": pidx, "page": page,
                       "slot": slot})


def b_a1_inj(mut, mode, nmax, ps, cross):
    """cross = 0: two different positions of one request; cross = 1: positions of two live requests."""
    NP = Int("num_pages")
    n1, n2 = Ints("npg1 npg2")
    pg1 = Function("pg1", IntSort(), IntSort())
    pg2 = pg1 if not cross else Function("pg2", IntSort(), IntSort())
    if not cross:
        n2 = n1
    t1, t2, lo1, hi1, lo2, hi2 = Ints("t1 t2 lo1 hi1 lo2 hi2")
    s1, i1, p1 = slot_of(pg1, n1, t1, ps, mut)
    s2, i2, p2 = slot_of(pg2, n2, t2, ps, mut)
    req = [NP >= 1, n1 >= 1, n2 >= 1, guard(lo1, hi1, n1, ps, mut), guard(lo2, hi2, n2, ps, mut),
           lo1 <= t1, t1 < hi1, lo2 <= t2, t2 < hi2,
           t1 / ps >= -n1, t2 / ps >= -n2]   # a list index below -len raises IndexError (a crash, not an alias)
    for (pidx, page, n) in ((i1, p1, n1), (i2, p2, n2)):
        req.append(Implies(And(0 <= pidx, pidx < n), And(0 <= page, page < NP)))
    if not cross:
        req += [t1 != t2, n1 <= NP]
        if mut != "alloc_dup":   # alloc pops distinct FREE pages (ledger.py)
            req.append(Implies(And(0 <= i1, i1 < n1, 0 <= i2, i2 < n1, i1 != i2), pg1(i1) != pg1(i2)))
    else:
        req += [n1 + n2 <= NP]
        if mut != "alloc_overlap":   # one owner per PRIVATE page (ledger.py; _check )
            req.append(Implies(And(0 <= i1, i1 < n1, 0 <= i2, i2 < n2), pg1(i1) != pg2(i2)))
    if mode == "bounded":
        req += [n1 <= nmax, n2 <= nmax]
    return Query(req, [], s1 != s2, wit=[n1 >= 2, n2 >= 2, t1 / ps != t2 / ps],
                 show={"npg1": n1, "npg2": n2, "t1": t1, "t2": t2, "idx1": i1, "idx2": i2, "page1": p1,
                       "page2": p2, "slot1": s1, "slot2": s2})


def b_a1_table(mut, mode, nmax, ps):
    """one LedgerCacheManager.allocate_paged step for a request with (cached_len c, device_len d)
    (scheduler_pd.py; the D side's write_rows  is the step c = 0, d = n), induction over steps:
    IH = the ledger holds ceil(c/ps) pages for gen and page-table columns [0, ceil(c/ps)*ps) hold slot(col)."""
    c, d, col = Ints("c d col")
    pg = Function("pg", IntSort(), IntSort())
    stale = Function("stale", IntSort(), IntSort())   # whatever the row held before (previous user of the row)
    npg0 = cdiv(c, ps)
    first = c / ps if mut == "first_page_floor" else cdiv(c, ps)      # 
    last = d / ps if mut == "last_page_floor" else cdiv(d, ps)        # 
    nalloc = If(last > first, last - first, 0)                        # 
    if mut == "alloc_minus1":
        nalloc = If(last > first, last - first - 1, 0)
    npg1 = npg0 + nalloc
    lo, hi = first * ps, last * ps                                    # 
    wlo = c if mut == "write_at_cached" else lo                       # _write_slots(row, lo, ...) 
    did = last > first

    def slot(x):
        return pg(x / ps) * ps + x % ps
    old = If(col < npg0 * ps, slot(col), stale(col))
    new = If(And(did, wlo <= col, col < wlo + (hi - lo)), slot(col - wlo + lo), old)
    guard_ok = Implies(did, And(0 <= lo, lo <= hi, hi <= npg1 * ps))  # token_slots _fail (ledger.py)
    req = [0 <= c, c < d, 0 <= col, col < d]
    if mode == "bounded":
        req.append(cdiv(d, ps) <= nmax)
    goal = And(npg1 == cdiv(d, ps), guard_ok, new == slot(col))
    return Query(req, [], goal, wit=([c % ps != 0, d - c > ps, col >= c] if ps > 1 else [c >= 1, d - c >= 2, col >= c]),
                 show={"c": c, "d": d, "col": col, "pages_before": npg0, "pages_after": npg1, "lo": lo, "hi": hi,
                       "write_lo": wlo, "table_col": new, "slot_col": slot(col)})


def b_a1_row(mut, mode, nmax, ps):
    """page-table width: the columns written ([.., ceil(d/ps)*ps)) fit the row width W = align_up_32(Lmax)
    (engine.py); Lmax = min(cfg.max_seq_len, num_pages*ps); admission n < Lmax and
    device_len <= max_device_len <= Lmax (scheduler.py)."""
    cfg, NP, d = Ints("cfg_max_seq_len num_pages d")
    NT = NP * ps
    Lmax = If(cfg < NT, cfg, NT)
    W = (Lmax / 32) * 32 if mut == "width_align_down" else ((Lmax + 31) / 32) * 32
    hi = cdiv(d, ps) * ps
    req = [cfg >= 1, NP >= 2, 1 <= d, d <= Lmax]                      # engine.py asserts num_pages > 1
    if mode == "bounded":
        req.append(cdiv(d, ps) <= nmax)
    return Query(req, [], hi <= W, wit=[d >= 2 * ps],
                 show={"cfg_max_seq_len": cfg, "num_pages": NP, "Lmax": Lmax, "W": W, "device_len": d,
                       "cols_written": hi})


# ============================================================================================
# A-3 / (c): landed tokens and sealing.  lt(k) = min(PS, n - k*PS) for the pages of a transfer of
# tokens [pre, n) (pre = 0 for the current whole-prompt transfer: d_expect exposes the first ceil(n/PS) pages, ledger.py).
# Abstract arithmetic condition: seal only a full page.
# ============================================================================================
def lt_of(n, k, ps, mut):
    if mut == "lt_full":
        return z3.IntVal(ps)          # landed count by whole pages moved (npages * ps), tail counted full
    return If(n - k * ps < ps, n - k * ps, ps)


def b_a3_lt(mut, mode, nmax, ps):
    n, pre, k, t, s = Ints("n pre k t s")
    npg = (n - pre) / ps if mut == "expose_floor" else cdiv(n - pre, ps)
    if mut == "pages_minus1":
        npg = cdiv(n - pre, ps) - 1
    k0 = pre / ps
    req = [pre >= 0, pre % ps == 0, n > pre]
    if mode == "bounded":
        req.append(cdiv(n - pre, ps) <= nmax)
    kt = t / ps
    cover = Implies(And(pre <= t, t < n), And(k0 <= kt, kt < k0 + npg, t % ps < lt_of(n, kt, ps, mut)))
    sound = Implies(And(k0 <= k, k < k0 + npg, 0 <= s, s < lt_of(n, k, ps, mut)), And(pre <= k * ps + s, k * ps + s < n))
    rng = Implies(And(k0 <= k, k < k0 + npg), And(1 <= lt_of(n, k, ps, mut), lt_of(n, k, ps, mut) <= ps))
    return Query(req, [], And(cover, sound, rng), wit=([n % ps != 0, n - pre > ps, pre > 0] if ps > 1 else [n - pre >= 3, pre > 0]),
                 show={"n": n, "pre": pre, "pages": npg, "k": k, "s": s, "t": t, "lt_k": lt_of(n, k, ps, mut),
                       "lt_of_t_page": lt_of(n, kt, ps, mut)})


def b_a3_seal(mut, mode, nmax, ps):
    n, pre, k, s = Ints("n pre k s")
    npg = cdiv(n - pre, ps)
    k0 = pre / ps
    lt = lt_of(n, k, ps, mut)
    seal_ok = lt >= 1 if mut == "seal_any" else lt == ps          # abstract full-page sealing condition
    req = [pre >= 0, pre % ps == 0, n > pre, k0 <= k, k < k0 + npg]
    if mode == "bounded":
        req.append(npg <= nmax)
    full = Implies(And(seal_ok, 0 <= s, s < ps), k * ps + s < n)   # every slot of a sealed page holds landed data
    tail = Implies(And(n % ps != 0, k == k0 + npg - 1), Not(seal_ok))
    return Query(req, [], And(full, tail), wit=([n % ps != 0, npg >= 2] if ps > 1 else [npg >= 2]),
                 show={"n": n, "pre": pre, "pages": npg, "k": k, "s": s, "lt_k": lt, "seal_ok": seal_ok})


def b_a3_decode(mut, mode, nmax, ps):
    """code-level accounting on D: d_expect exposes div_ceil(n) pages (ledger.py, decode.py);
    d_landed accepts P's count nP only if nP == n, then written := n (); the D glue starts decode
    with cached_len = n (scheduler_pd.py) and allocate_paged appends ceil((n+1)/ps) - ceil(n/ps)
    pages (scheduler_pd.py, minisgl.utils.div_ceil); launch admits (rd, wr) only if
    0 <= rd <= wr <= len(pages)*ps () and rd <= written ().  P wrote tokens [0, nP) and p_post
    required len(dst_pages) == div_ceil(nP) ().
    Property: an admitted first decode launch reads only tokens P wrote, all inside exposed pages."""
    n, nP, t = Ints("n nP t")
    floor_helper = mut in ("expose_floor", "expose_floor_norange")
    dceil = (lambda a: a / ps) if floor_helper else (lambda a: cdiv(a, ps))   # ledger.div_ceil ()
    npg = dceil(n)
    app = If(cdiv(n + 1, ps) > cdiv(n, ps), cdiv(n + 1, ps) - cdiv(n, ps), 0)
    total = npg + app
    rd, wr = n, n + 1
    no_len = mut in ("landed_no_len_check", "no_len_no_read_check", "drop_all_checks")
    g = {"count": dceil(nP) == npg,                       # p_post
         "len": z3.BoolVal(True) if no_len else nP == n,  # d_landed BAD_LEN
         "range": z3.BoolVal(True) if mut in ("expose_floor_norange", "drop_all_checks")
         else And(0 <= rd, rd <= wr, wr <= total * ps),   # launch 
         "read": z3.BoolVal(True) if mut in ("no_len_no_read_check", "drop_all_checks")
         else rd <= (nP if no_len else n)}                # launch  with written
    if mut == "drop_all_checks":
        g["count"] = z3.BoolVal(True)
    req = [n >= 1, nP >= 1, And(*g.values())]
    if mode == "bounded":
        req.append(cdiv(n, ps) <= nmax)
    reads_landed = Implies(And(0 <= t, t < rd), And(t < nP, t / ps < npg))
    return Query(req, [], reads_landed, wit=([n % ps != 0, n > ps] if ps > 1 else [n >= 2]),
                 show={"n": n, "nP": nP, "pages_exposed": npg, "t": t})



# ============================================================================================
# A-6 (e): plan agreement.  D's n equals P's input length and P computed the same prompt.
# ============================================================================================
def b_a6_agree(mut, mode, nmax, ps):
    pP, pD = Ints("prompt_P prompt_D")              # abstract prompt identities
    length = Function("len", IntSort(), IntSort())
    hsh = Function("tok_hash", IntSort(), IntSort())
    nP, nD = length(pP), length(pD)                  # P: req.cached_len after prefill = len(prompt) (core.py)
    drop = {"drop_all": {"G1", "G2", "G3", "G4"}, "drop_hash": {"G2"}, "drop_G1": {"G1"}, "drop_G3": {"G3"},
            "drop_G4": {"G4"}, "only_count": {"G1", "G2", "G4"}}.get(mut, set())
    g = {"G1": nD == nP,                             # prefill.py ntok != r.ntokens
         "G2": hsh(pD) == hsh(pP),                   # prefill.py h != r.tok_hash (messages.py)
         "G3": cdiv(nP, ps) == cdiv(nD, ps),         # p_post len(dst_pages) == div_ceil(ntokens) (ledger.py)
         "G4": nP == nD}                             # d_landed ntokens == x.ntokens (ledger.py)
    accept = And(*[v for k_, v in g.items() if k_ not in drop])
    a, b = Ints("a b")
    req = [nP >= 1, nD >= 1, accept,
           # SHA-256 (16 hex digits) collision resistance, instantiated at the two prompts (assumption)
           Implies(hsh(pP) == hsh(pD), pP == pD),
           Implies(pP == pD, nP == nD)]
    return Query(req, [], And(pP == pD, nP == nD), wit=[nP > ps],
                 show={"nP": nP, "nD": nD, "same_prompt": pP == pD})


def b_a1_row_guarded(mut, mode, nmax, ps):
    """The make_pd check rejects layouts whose whole-page writes exceed the row."""
    q = b_a1_row(None, mode, nmax, ps)
    if mut != "omit_guard":
        q.req.append(cdiv(q.show["Lmax"], ps) * ps <= q.show["W"])
    return q


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--only", help="comma-separated property ID prefixes; partial run")
    parser.add_argument("--out", type=Path, help="write results.json and RESULTS.md to this directory")
    args = parser.parse_args()
    only = args.only.split(",") if args.only else None
    R = Runner("pLLM address arithmetic (pd_arith.py)", only)

    lemma_rows(R)
    lemma_merge(R)
    R.prop("L-MERGE-U", "plan_copy run loop unrolled: page i at offset i-ri[i] of its run on both sides",
           'python/minisgl/disagg/ledger.py:192-222', "bounded: exactly K pages, K = 1..6 (src, dst symbolic, distinct)",
           b_merge_unrolled, modes=(("bounded", 2), ("bounded", 4), ("bounded", 6)),
           mutants=[("merge_src_only", "code", "merge test checks src contiguity only (dst dropped)"),
                    ("merge_gap1", "code", "merge test off by one (s + n + 1 == next)")],
           configs=((),), scale="pages K")

    # ---------------- A-4
    R.prop("A4-REAL", "page_addr + in-page offset = torch contiguous byte address of _kv_buffer[kv,layer,page,slot,head,dim]",
           'python/minisgl/disagg/ledger.py:183-189; python/minisgl/kvcache/mha_pool.py:28-30',
           "proof: NL, PP, H, D, IS, B, all digits symbolic; page_size per config", b_a4_real,
           mutants=lambda cfg: [("slab_stride_numpages", "code", "slab stride = ledger num_pages (pool_pages - 1)"),
                                ("pb_no_itemsize", "code", "page_bytes forgets x itemsize"),
                                ("kv_inner", "code", "slab index layer*2 + kv instead of kv*NL + layer")]
           + ([("pb_no_pagesize", "code", "page_bytes forgets x page_size", "SURVIVES")] if cfg[0] == 1 else
              [("pb_no_pagesize", "code", "page_bytes forgets x page_size")]),
           configs=PS_ALL, scale="num_layers")
    R.prop("A4-INJ", "addresses of distinct (kv,layer,page,slot,head,dim,byte) differ; inside [base, base+registered); < 2^64",
           'python/minisgl/disagg/ledger.py:183-189; python/minisgl/disagg/scheduler_pd.py:448-525',
           "proof: all sizes symbolic (lemma instances L-MONO/L-BELOW/L-RADIX); page_size per config", b_a4_inj,
           mutants=[("slab_stride_numpages", "code", "slab stride = ledger num_pages: slab s dummy page = slab s+1 page 0"),
                    ("pb_no_itemsize", "code", "page_bytes forgets x itemsize: pages overlap"),
                    ("region_numpages", "code", "registered length counts num_pages, not pool_pages"),
                    ("wrap32", "env", "offset wraps modulo 2^32 (no small-size bounds)")],
           configs=PS_ALL, scale="num_layers")

    # ---------------- A-2
    R.prop("A2-BOUND", "(a) every plan_copy block lies in its (kv,layer) slab of the registered pool, never the dummy page (src on P, dst on D)",
           'python/minisgl/disagg/ledger.py:192-222; python/minisgl/disagg/ledger.py:1375-1434',
           "proof: npg, run, layouts symbolic; page_size per config", b_a2_bound,
           mutants=[("pcheck_dummy", "code", "p_post bound d < pool_pages (dummy page allowed)"),
                    ("pcheck_no_lower", "code", "p_post drops 0 <= d"),
                    ("len_plus1", "code", "lens = (n + 1) * page_bytes"),
                    ("ledger_pool_pages", "glue", "ledger built with num_pages = pool_pages (constructor guard omitted)")],
           configs=PS_ALL, scale="pages per transfer")
    R.prop("A2-DISJ", "(a) blocks of one transfer are pairwise byte-disjoint (dst on D, src on P)",
           'python/minisgl/disagg/ledger.py:192-222; python/minisgl/disagg/ledger.py:1375-1434', "proof: two blocks, symbolic", lambda m, md, n, ps: b_a2_disj(m, md, n, ps, 0),
           mutants=[("pcheck_no_dup", "code", "p_post drops len(set(dst_pages)) == npages"),
                    ("len_plus1", "code", "lens = (n + 1) * page_bytes")],
           configs=PS_ALL, scale="pages per transfer")
    R.prop("A2-DISJX", "(a) transfers with disjoint private page sets are byte-disjoint (same D: dst; same P: src)",
           'python/minisgl/disagg/ledger.py:192-222; python/minisgl/disagg/ledger.py:493-516 (private, disjoint page sets assumed)',
           "proof: two transfers, symbolic", lambda m, md, n, ps: b_a2_disj(m, md, n, ps, 1),
           mutants=[("alloc_overlap", "Requires", "a page owned by both requests (free list hands it twice)"),
                    ("len_plus1", "code", "lens = (n + 1) * page_bytes")],
           configs=PS_ALL, scale="pages per transfer")
    R.prop("A2-ORDER", "(d) srcs[j]+o and dsts[j]+o are byte r of the same logical page i0+k (same kv, layer) on P and on D",
           'python/minisgl/disagg/ledger.py:192-222',
           "proof: symbolic; layouts equal by register_peer", b_a2_order,
           mutants=[("merge_src_only", "code", "merge test checks src contiguity only"),
                    ("len_plus1", "code", "lens = (n + 1) * page_bytes")],
           configs=PS_ALL, scale="pages per transfer")

    R.prop("A2-TOKEN", "(d) end to end: for every token t < n the copy takes the byte P's prefill wrote for t (P's page table) to the byte D's decode reads for t (D's page table)",
           'python/minisgl/disagg/ledger.py:192-222; python/minisgl/disagg/ledger.py:530-539',
           "proof: t, n, run, layouts symbolic", b_a2_token,
           mutants=[("dst_permuted", "glue", "D sends its pages in another order than its page table (e.g. sorted)"),
                    ("src_shift1", "code", "P posts r.pages[1:npg+1] (slice off by one)"),
                    ("merge_src_only", "code", "merge test checks src contiguity only")],
           configs=PS_ALL, scale="pages per transfer")

    # ---------------- A-5: layout agreement
    R.prop("A5-LAYOUT", "(d) accepted layouts => every written byte lands on D at the same (kv,layer,page pair,slot,head,dim,byte); each compared field is necessary",
           'python/minisgl/disagg/ledger.py:192-222; python/minisgl/disagg/ledger.py:436-447',
           "proof: symbolic (L-RADIX/L-BELOW instances on D's radices); mutants bounded small sizes", b_a5_layout,
           mutants=[("chk_none", "code", "no layout check (destination addressed with source geometry)"),
                    ("chk_omit_num_layers", "code", "register_peer ignores num_layers"),
                    ("chk_omit_page_size", "code", "register_peer ignores page_size"),
                    ("chk_omit_kv_heads", "code", "register_peer ignores kv_heads"),
                    ("chk_omit_head_dim", "code", "register_peer ignores head_dim"),
                    ("chk_omit_itemsize", "code", "register_peer ignores itemsize (dtype size)")],
           configs=PS_ALL, scale="pages per transfer")
    R.prop("A5-SILENT", "(d) same as A5-LAYOUT restricted to bytes that stay inside D's registered pool: an omitted field gives silent misplacement",
           'python/minisgl/disagg/ledger.py:192-222; python/minisgl/disagg/ledger.py:436-447', "proof: symbolic; mutants bounded small sizes",
           lambda m, md, n, ps: b_a5_layout(m, md, n, ps, 1),
           mutants=[("chk_none", "code", "no layout check"),
                    ("chk_omit_num_layers", "code", "register_peer ignores num_layers"),
                    ("chk_omit_page_size", "code", "register_peer ignores page_size"),
                    ("chk_omit_kv_heads", "code", "register_peer ignores kv_heads"),
                    ("chk_omit_head_dim", "code", "register_peer ignores head_dim"),
                    ("chk_omit_itemsize", "code", "register_peer ignores itemsize")],
           configs=PS_ALL, scale="pages per transfer")
    R.prop("A5-DTYPE", "historical negative control: geometry-only handshake does not imply the same dtype",
           'python/minisgl/disagg/ledger.py:436-447 (negative control: geometry-only handshake)', "dtype table bf16/fp16/fp32/fp8 x2", lambda m, md, n, ps: b_a5_dtype(m, md, n, ps, 0),
           expect="VIOLATED", configs=((16,),))
    R.prop("A5-DTYPE-FIX", "current dtype comparison: accepted => same dtype",
           'python/minisgl/disagg/ledger.py:436-447; python/minisgl/disagg/ledger.py:79-85', "dtype table", lambda m, md, n, ps: b_a5_dtype(m, md, n, ps, 1),
           mutants=[("omit_dtype", "code", "compare layout[:5] only (historical negative control)")], configs=((16,),),
           mutant_ns=(1,))

    # ---------------- A-1 (b)
    R.prop("A1-SLOT", "(b) token_slots: slot(t) = pages[t//ps]*ps + t%ps, i.e. slot//ps = its page, slot%ps = t%ps; 0 <= slot < num_pages*ps (never the dummy page)",
           'python/minisgl/disagg/ledger.py:530-539', "proof: npg, t, lo, hi, num_pages symbolic; pages = UF",
           b_a1_slot,
           mutants=lambda cfg: [("slot_no_offset", "code", "slot = page*ps (drops + t%ps)") + (("SURVIVES",) if cfg[0] == 1 else ()),
                                ("slot_no_scale", "code", "slot = page + t%ps (drops *ps)") + (("SURVIVES",) if cfg[0] == 1 else ()),
                                ("pool_pages", "glue", "ledger built over pool_pages: dummy page allocatable")],
           configs=PS_ALL, scale="pages of the request")
    R.prop("A1-INJ", "(b) two different positions of one request get different slots",
           'python/minisgl/disagg/ledger.py:530-539; python/minisgl/disagg/ledger.py:493-516', "proof: symbolic", lambda m, md, n, ps: b_a1_inj(m, md, n, ps, 0),
           mutants=lambda cfg: [("slot_no_offset", "code", "slot = page*ps") + (("SURVIVES",) if cfg[0] == 1 else ()),
                                ("slot_no_scale", "code", "slot = page + t%ps") + (("SURVIVES",) if cfg[0] == 1 else ()),
                                ("alloc_dup", "Requires", "alloc hands the same page twice to one request"),
                                ("guard_no_lower", "code", "token_slots guard drops 0 <= lo: Python pages[-1] wraps")],
           configs=PS_ALL, scale="pages of the request")
    R.prop("A1-NOALIAS", "(b) slots of two private requests with disjoint page sets never alias",
           'python/minisgl/disagg/ledger.py:530-539; python/minisgl/disagg/ledger.py:493-516 (private, disjoint page sets assumed)', "proof: symbolic", lambda m, md, n, ps: b_a1_inj(m, md, n, ps, 1),
           mutants=lambda cfg: [("alloc_overlap", "Requires", "a page owned by two live requests"),
                                ("slot_no_scale", "code", "slot = page + t%ps") + (("SURVIVES",) if cfg[0] == 1 else ())],
           configs=PS_ALL, scale="pages per request")
    R.prop("A1-TABLE", "(b) allocate_paged step: ledger holds ceil(d/ps) pages, guard passes, every column < device_len holds slot(col) (chunked prefill and D's write_rows + decode)",
           'python/minisgl/disagg/scheduler_pd.py:291-309; python/minisgl/disagg/ledger.py:530-539', "proof: induction step over allocate_paged calls; c, d, col symbolic",
           b_a1_table,
           mutants=lambda cfg: [(m, "code", dsc) + (("SURVIVES",) if cfg[0] == 1 else ()) for m, dsc in (
               ("first_page_floor", "first_page = cached_len // ps (allocates the partial page again)"),
               ("last_page_floor", "last_page = device_len // ps (floorBlocks: tail columns stay stale)"),
               ("write_at_cached", "slots written from column cached_len instead of first_page*ps"))]
           + [("alloc_minus1", "code", "allocates one page fewer (last - first - 1)")],
           configs=PS_ALL, scale="pages after the step")
    R.prop("A1-ROW", "historical row-width model without make_pd admission guard (negative control at page_size 64)",
           'python/minisgl/engine/engine.py (negative control: omit make_pd row-width guard)',
           "proof: cfg.max_seq_len, num_pages, device_len symbolic", b_a1_row,
           expect=lambda ps: "VIOLATED" if ps == 64 else "HOLDS",
           mutants=lambda cfg: [] if cfg[0] == 64 else [("width_align_down", "code", "row width aligned down to 32")],
           configs=PS_ALL, scale="pages of the request")

    # ---------------- A-3 (c)
    R.prop("A3-LT", "(c) lt(k) = min(PS, n - k*PS): pages cover [pre, n) exactly, 1 <= lt <= PS",
           'python/minisgl/disagg/ledger.py:1194-1223 (abstract per-page landed counts)', "proof: n, pre (multiple of PS), k, t symbolic",
           b_a3_lt,
           mutants=lambda cfg: [(m, "code", dsc) + (("SURVIVES",) if cfg[0] == 1 else ()) for m, dsc in (
               ("expose_floor", "pages = (n - pre) // PS (tail page omitted)"),
               ("lt_full", "landed count by whole pages: lt = PS for every page"))]
           + [("pages_minus1", "code", "exposes div_ceil(n - pre) - 1 pages (off by one)")],
           configs=PS_ALL, scale="pages of the transfer")
    R.prop("A3-SEAL", "(c) seal only when lt = PS: a sealed page is all landed data; a partial tail page is never sealable",
           'python/minisgl/disagg/ledger.py:701-713 (abstract full-page sealing condition)', "proof: symbolic",
           b_a3_seal,
           mutants=lambda cfg: [(m, "code", dsc) + (("SURVIVES",) if cfg[0] == 1 else ()) for m, dsc in (
               ("seal_any", "seal_ok = plt >= 1 (missing tail check)"),
               ("lt_full", "landed count by whole pages (tail counted full)"))],
           configs=PS_ALL, scale="pages of the transfer")
    R.prop("A3-DECODE", "(c) D: an admitted first decode launch reads only tokens P wrote, inside exposed pages",
           'python/minisgl/disagg/ledger.py:1282-1310; python/minisgl/disagg/ledger.py:792-829',
           "proof: n, nP symbolic", b_a3_decode,
           mutants=lambda cfg: [
               ("expose_floor", "code", "div_ceil -> floor in the ledger helper: caught by launch range check (fail-stop)", "SURVIVES"),
               ("expose_floor_norange", "code", "same, and launch range check dropped")
               + (("SURVIVES",) if cfg[0] == 1 else ()),
               ("landed_no_len_check", "code", "d_landed drops ntokens == x.ntokens: caught by launch read check", "SURVIVES"),
               ("no_len_no_read_check", "code", "d_landed len check and launch read check both dropped")
               + (("SURVIVES",) if cfg[0] == 1 else ()),
               ("drop_all_checks", "code", "p_post count, d_landed len, launch range and read checks all dropped")],
           configs=PS_ALL, scale="pages exposed")

    # ---------------- A-6 (e)
    R.prop("A6-AGREE", "(e) D's ntokens = P's prefill length and the same prompt, whenever D accepts the landing",
           'python/minisgl/disagg/prefill.py: PrefillManager._match; python/minisgl/disagg/ledger.py:1375-1434',
           "proof: lengths symbolic; hash collision resistance is an explicit Requires", b_a6_agree,
           mutants=lambda cfg: [
               ("drop_all", "code", "no agreement check at all (D trusts its own token count)"),
               ("drop_hash", "code", "_match compares ntokens only (equal length, different prompt)"),
               ("only_count", "code", "only p_post's page-count check remains") + (("SURVIVES",) if False else ()),
               ("drop_G1", "code", "_match drops the ntokens comparison: hash still implies it", "SURVIVES"),
               ("drop_G3", "code", "p_post drops the count check: hash still implies it", "SURVIVES"),
               ("drop_G4", "code", "d_landed drops the len check: hash still implies it", "SURVIVES")],
           configs=PS_ALL, mutant_ns=(1,), scale="-")

    R.prop("A1-ROW-GUARDED", "current make_pd guard: whole-page writes fit the row width",
           "python/minisgl/disagg/scheduler_pd.py:458-464", "proof: symbolic accepted geometry",
           b_a1_row_guarded, configs=PS_ALL,
           mutants=lambda cfg: [("omit_guard", "glue", "omit the row-width admission guard")]
           if cfg[0] == 64 else [], scale="pages of the request")
    if only is not None and not any(R.want(row["id"]) for row in R.rows):
        parser.error("--only did not select any property rows")
    if args.out:
        args.out.mkdir(parents=True, exist_ok=True)
    rc = R.finish(args.out / "results.json" if args.out else None,
                  args.out / "RESULTS.md" if args.out else None)
    sys.exit(rc)


if __name__ == "__main__":
    main()
