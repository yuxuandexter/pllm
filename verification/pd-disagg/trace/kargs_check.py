"""lifecycle concrete slot witness for PdCore's abstract KEnt page groups.

Reads only independent allocation/publish pages and configuration, then reconstructs
ordered token slots. D growth has no alloc record: a new boundary page is learned
from w0, checked for bounds/ownership, and retained for all later steps. Summary
collisions and post-hook copies remain trusted boundaries (README section 18).
"""
from __future__ import annotations
import os
import re

FIELDS = ('kd', 'kp', 'kh', 'ks')
MASK = (1 << 64) - 1
PERIOD = 65521
W = [((i * 40503) % PERIOD) + 1 for i in range(PERIOD)]
SW, SI = [0], [0]
for i, w in enumerate(W):
    SW.append(SW[-1] + w)
    SI.append(SI[-1] + i*w)


def segment(slot, length, position):
    """Exact weighted sum for consecutive slots, including weight-period wrap."""
    total = 0
    while length:
        phase = position % PERIOD
        take = min(length, PERIOD-phase)
        total += (slot+1-phase)*(SW[phase+take]-SW[phase]) + SI[phase+take]-SI[phase]
        slot += take
        position += take
        length -= take
    return total


def digest(pages, ps, lo, hi, position):
    h = 0
    while lo < hi:
        page, off = divmod(lo, ps)
        take = min(hi-lo, ps-off)
        h += segment(pages[page]*ps+off, take, position)
        position += take
        lo += take
    return h & MASK


def page_runs(pages):
    """Lossless [first, count, stride] runs, including reversed free-stack pages."""
    runs = []
    for p in pages:
        if runs and runs[-1][1] == 1:
            runs[-1][2] = p-runs[-1][0]
            runs[-1][1] = 2
        elif runs and runs[-1][0]+runs[-1][1]*runs[-1][2] == p:
            runs[-1][1] += 1
        else:
            runs.append([p,1,0])
    return runs


def integer(x):
    return type(x) is int


def config(path, records):
    for r in records:
        if r.get('k') == 'role' and 'ps' in r and 'np' in r:
            return r['ps'], r['np']
    # GPU independent startup configuration, never inferred from kd / kp / kh.
    if path:
        with open(path, errors='replace') as f:
            for line in f:
                m = re.search(r'PD (?:decode|prefill): instance .*layout \[([^]]+)\]', line)
                if m:
                    layout = [int(v.strip()) for v in m[1].split(',')]
                    return layout[1], layout[5]-1
    raise ValueError('missing independent page_size / num_pages configuration')


def audit(records, path=None, required=False):
    """Attach _ka witness to each new-format klaunch, before any projection.

    Aggregate kh is checked over ALL original items. A projected trace inherits
    that whole-batch check; it never pretends kh is a hash of the projection.
    Returns details for the independent, durable array-audit.jsonl report.
    """
    launches = [r for r in records if r.get('ev') == 'klaunch']
    if not required and not any(any(k in r for k in FIELDS) for r in launches):
        return []  # historical/no array evidence: preserve all output bytes
    evidence = []
    try:
        ps, np = config(path, records)
        assert integer(ps) and ps > 0 and integer(np) and np > 0
        cfgerr = ''
    except (ValueError, AssertionError, KeyError) as e:
        ps, np, cfgerr = 1, 0, str(e) or 'invalid configuration'
    pages, owner, progress, live, pinned, steps = {}, {}, {}, set(), {}, {}
    released_state, allocation_errors, entries, page_cache = {}, {}, {}, {}
    reads = {(r.get('step'), r.get('h')): r for r in records if r.get('ev') == 'read'}
    def rawpages(r):
        return [a+i for a,n in r.get('pages', []) for i in range(n)]
    def unown(gen):
        for p in pages.get(gen, []):
            if owner.get(p) == gen:
                owner.pop(p)
    for r in records:
        gen, method = r.get('h'), r.get('m')
        # Keep transfer-held / quarantined pages owned across release; a later observed
        # all-free post state (p_done / d_stopped etc.) is independent reclaim evidence.
        post = r.get('post', {})
        if post and set(post) == {'free'}:
            for p in rawpages(r):
                owner.pop(p, None)
        if method == 'p_post' and integer(r.get('res')) and r['res'] > 0:
            entries[r['res']] = gen
        if method == 'p_done':
            entries.pop(r.get('eid'), None)
        if method == 'peer_lost' and r.get('side') == 'P':
            # Returned eids are E_POSTED entries cancelled before submission, not
            # in-flight writes. This is the same PCancelReg witness used by PdTrace.
            cancelled = [entries.pop(eid, None) for eid in r.get('eids', [])]
            for g in cancelled:
                if (g is not None and g not in live and not pinned.get(g)
                        and g not in entries.values() and released_state.get(g) == {'draining'}):
                    unown(g)
        if method in ('alloc', 'd_expect') and isinstance(r.get('res'), (list, int)):
            pg = rawpages(r)
            if pg:
                pages.setdefault(gen, [])
                if method == 'd_expect':
                    pages[gen] = pg
                else:
                    pages[gen].extend(pg)
                for p in pg:
                    if p in owner and owner[p] != gen:
                        allocation_errors[gen] = f'page {p} allocated while owned by {owner[p]}'
                    else:
                        owner[p] = gen
                live.add(gen)
        if method == 'release':
            live.discard(gen)
            released_state[gen] = set(post)
            if not pinned.get(gen) and set(post) == {'free'}:
                unown(gen)
        if r.get('ev') == 'kdone':
            for g in steps.pop(r.get('step'), []):
                pinned[g] -= 1
                if (not pinned[g] and g not in live and r.get('side') == 'D'
                        and released_state.get(g) == {'draining'}):
                    unown(g)
        if r.get('ev') != 'klaunch':
            continue
        errors, expected, item_pages = [], [], []
        def check(cond, why):
            if not cond:
                raise ValueError(why)
        hr = hw = nr = nw = 0
        try:
            check(not cfgerr, cfgerr)
            check(all(k in r for k in FIELDS), 'missing kd/kp/kh/ks')
            check(r['ks'] in ('attn','kargs','pt'), 'unknown ks')
            its, kd, kh = r['it'], r['kd'], r['kh']
            check(isinstance(kd,list) and len(kd)==len(its), 'kd item count')
            check(isinstance(kh,list) and len(kh)==2 and all(integer(h) and 0<=h<=MASK for h in kh), 'kh uint64')
            check(integer(r.get('npad')) and r['npad']>=0, 'npad')
            check(r['kp'] == ([np*ps] if r['npad'] else []), 'padding must touch only dummy')
            for j, ((row, gen), item) in enumerate(zip(its,kd)):
                check(isinstance(item,list) and len(item)==6 and all(integer(v) for v in item), 'kd item shape')
                n,r0,r1,m,w0,w1 = item
                check(0<=m<=n, 'negative lengths or write longer than read')
                pg = pages.get(gen)
                check(pg is not None and gen in live, f'item {j}: no live allocated generation {gen}')
                check(gen not in allocation_errors, allocation_errors.get(gen, ''))
                first = reads.get((r['step'],gen))
                if first is not None:
                    check(n == first['wr'] and m == first['wr']-first['rd'], f'item {j}: first read/write lengths')
                    previous = first['rd']
                else:
                    check(gen in progress, f'item {j}: missing first read witness')
                    previous = progress[gen]
                check(n-m == previous, f'item {j}: token progress {n-m} != {previous}')
                need = (n+ps-1)//ps
                if need > len(pg):
                    # D decode appends one token. The new page can only start at the write boundary.
                    check(r.get('side')=='D' and need==len(pg)+1 and n-m==len(pg)*ps and m==1,
                          f'item {j}: unobserved growth exceeds one boundary page')
                    check(0<=w0<np*ps and w0%ps==0, f'item {j}: invalid growth slot')
                    p = w0//ps
                    check(p not in owner, f'item {j}: growth page {p} already owned by {owner.get(p)}')
                    pg.append(p)
                    owner[p] = gen
                check(need<=len(pg) and len(set(pg))==len(pg), f'item {j}: pages missing/duplicated')
                check(all(0<=p<np and owner.get(p)==gen for p in pg[:need]), f'item {j}: page ownership')
                def slot(t): return pg[t//ps]*ps+t%ps
                exp = [n,slot(0) if n else -1,slot(n-1) if n else -1,
                       m,slot(n-m) if m else -1,slot(n-1) if m else -1]
                expected.append(exp)
                if gen not in page_cache or page_cache[gen][0] != len(pg):
                    page_cache[gen] = (len(pg), page_runs(pg))
                item_pages.append(page_cache[gen][1])
                check(item==exp, f'item {j}: endpoints {item} != {exp}')
                hr = (hr+digest(pg,ps,0,n,nr)) & MASK
                hw = (hw+digest(pg,ps,n-m,n,nw)) & MASK
                nr += n
                nw += m
                progress[gen] = n
            check(kh == [hr,hw], f'weighted digest {kh} != {[hr,hw]}')
        except (ValueError, KeyError, TypeError, IndexError, ZeroDivisionError) as e:
            errors.append(str(e))
        gs = [it[1] for it in r.get('it', [])]
        steps[r['step']] = gs
        for g in gs:
            pinned[g] = pinned.get(g,0)+1
        r['_ka'] = not errors
        r['_ke'] = expected
        evidence.append(dict(inst=r.get('inst'),seq=r['seq'],step=r['step'],it=r.get('it'),
                             kd=r.get('kd'),kp=r.get('kp'),kh=r.get('kh'),ks=r.get('ks'),
                             ps=ps,np=np,expected=expected,expected_hash=[hr,hw],pages=item_pages,
                             ok=not errors,errors=errors))
    return evidence
