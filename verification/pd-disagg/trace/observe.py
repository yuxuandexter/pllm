"""Check captured lifecycle state independently of the ledger and TLC results.

Validate ordered allocation maps, token bounds, array summaries, and shared-page
holder changes. Missing protocol fields are errors. Prefill pins are observed
here because the trace model enables P KLaunch only after PPoll."""
from __future__ import annotations
from collections import Counter
from copy import deepcopy
from kargs_check import digest, MASK


class MissingObservation(ValueError):
    pass


def pages(r):
    return [a+i for a,n in r.get('pages', []) for i in range(n)]


def audit(records):
    cfg = {r['inst']: (r['ps'], r['np']) for r in records if r.get('k') == 'role' and 'ps' in r and 'np' in r}
    maps, live, progress, visible, posted, steps, entries = {}, set(), {}, set(), set(), {}, {}
    shared, tokens, holders, counts, owner, held = {}, {}, {}, {}, {}, {}
    pending_free, done = set(), {}
    results = []
    def need(r, fields):
        if any(f not in r for f in fields):
            raise MissingObservation(f"seq {r.get('seq')}: missing {','.join(f for f in fields if f not in r)}")
    def snapshot(i):
        return [dict(page=p, tokens=list(tokens[i,p]), refc=counts[i,p],
                     holders=[list(h) for h in sorted(holders[i,p])])
                for ii,p in sorted(shared) if ii == i]
    def add(i,p,h):
        check(h not in holders[i,p], 'duplicate holder')
        holders[i,p].add(h); counts[i,p] += 1
    def drop(i,p,h):
        check(h in holders[i,p], 'missing holder')
        holders[i,p].remove(h); counts[i,p] -= 1
    def pinned(i,g):
        return any(ii == i and g in [x[0] for x in items] for (ii,s),items in steps.items())
    def reclaim(i,g):
        if (i,g) not in live and not pinned(i,g):
            for p in maps.get((i,g),[]):
                if (i,p) in shared and ('req',g) in holders[i,p]: drop(i,p,('req',g))
                if (i,p) not in shared and not held.get((i,p)) and owner.get((i,p)) == g:
                    owner.pop((i,p),None)
    for r in records:
        errors = []
        def check(ok, why):
            if not ok: errors.append(why)
        i, g, m = r.get('inst'), r.get('h'), r.get('m')
        key = (i,g)
        ev = r.get('ev')
        if m == 'p_expose': raise MissingObservation('pull p_expose is outside observed push capture; no silent fallback')
        if i is not None and i not in cfg:
            raise MissingObservation(f'no independent ps/np for {i}')
        ps,np = cfg.get(i,(1,0))
        before_snapshot = snapshot(i)
        if m in ('hit','seal','dedup','evict','flush_shared'):
            need(r, ('map_before','map_after','shared_before','shared_after','prefix_tokens'))
            check(r['shared_before'] == before_snapshot, 'shared_before != replayed exact holders/count/tokens')
            check(r['map_before'] == maps.get(key,[]), 'map_before differs from allocated mapping')
        if m == 'alloc':
            need(r,('before','after','action','res','pages'))
            check(r['before'] == maps.get(key,[]), 'alloc before differs from complete ordered map')
            check(r['res'] == pages(r), 'alloc res/pages disagree')
            check(r['after'] == r['before']+r['res'], 'alloc after is not before+res')
            check(len(set(r['after']))==len(r['after']), 'duplicate allocated page')
            if r['action']=='DGrow' and r['res']:
                check(key in visible and key in live, 'DGrow before visible or after release')
            for p in r['res']:
                check(type(p) is int and 0<=p<np, 'alloc page bounds')
                check((i,p) not in shared and (i,p) not in owner, 'alloc page not Free')
                owner[i,p] = g
            maps[key] = list(r['after']); live.add(key); progress.setdefault(key,0)
        elif m == 'd_expect' and type(r.get('res')) is int and r['res']>0:
            check(pages(r) == maps.get(key), 'publish lacks independent alloc mapping')
            done[key] = r['ntokens']
            for p in pages(r): held.setdefault((i,p),set()).add(('x',r['res']))
        elif m == 'd_mark_visible':
            check(key in done, 'visible without published request')
            progress[key] = done.get(key,0); visible.add(key)
            for p in maps.get(key,[]): held.pop((i,p),None)
        elif m == 'hit':
            p=r['a'][1]; check(not maps.get(key), 'hit after allocation')
            check((i,p) in shared, 'hit non-Shared')
            if (i,p) in shared:
                check(tokens[i,p] == tuple(r['prefix_tokens'] or ()), 'HitIdentity')
                add(i,p,('req',g))
            maps[key]=[p]; live.add(key); progress[key]=ps
        elif m in ('seal','dedup'):
            mp=maps.get(key,[]); p=mp[0] if mp else -1
            check(key not in posted, 'postBeforeDedup')
            check(done.get(key,0)>=ps, 'sealUnwritten: no completed full prefix')
            check(owner.get((i,p)) == g, 'prefix candidate not own Private')
            check(len(r['prefix_tokens'] or [])==ps, 'prefix token page length')
            if m=='seal':
                check((i,p) not in shared,'seal already Shared')
                shared[i,p]=True; tokens[i,p]=tuple(r['prefix_tokens'] or ())
                holders[i,p]=set(); counts[i,p]=0; add(i,p,('req',g))
                owner.pop((i,p),None)
            else:
                q=r['a'][1]
                check((i,q) in shared,'dedup target not Shared')
                if (i,q) in shared:
                    check(tokens[i,q]==tuple(r['prefix_tokens'] or ()), 'dedup identity')
                    add(i,q,('req',g))
                maps[key]=[q]+mp[1:]
                # Dup remains physically pinned until the old step completes.
                if not pinned(i,g): owner.pop((i,p),None)
        elif m == 'evict':
            p=r['a'][0]
            check((i,p) in shared,'evict non-Shared')
            if (i,p) in shared:
                check(counts[i,p]==0 and not holders[i,p],'evict held Shared')
                shared.pop((i,p)); tokens.pop((i,p)); holders.pop((i,p)); counts.pop((i,p))
        elif m == 'flush_shared':
            keys=[k for k in shared if k[0]==i]
            check(r['res']==len(keys), 'flush count')
            for k in keys:
                check(counts[k]==0 and not holders[k], 'flushIgnoresEntries: flush held Shared')
                shared.pop(k); tokens.pop(k); holders.pop(k); counts.pop(k)
        elif m == 'p_post' and type(r.get('res')) is int and r['res']>0:
            check(pages(r) == maps.get(key), 'post source snapshot mismatch')
            if any(ii==i for ii,p in shared) or key in posted:
                need(r,('dst_descriptor',))
            e=r['res']; entries[i,e]=dict(gen=g, pages=pages(r), state='reg')
            posted.add(key)
            for p in pages(r):
                if (i,p) in shared: add(i,p,('entry',e))
                else: held.setdefault((i,p),set()).add(('e',e))
        elif m == 'p_begin' and r.get('res'):
            e=r['eid']; check((i,e) in entries and entries[i,e]['state']=='reg', 'submit not registered')
            if (i,e) in entries: entries[i,e]['state']='submitted'
        elif m in ('p_done','p_abort') or (m=='p_begin' and not r.get('res')):
            e=r.get('eid'); en=entries.get((i,e))
            cancel=(m=='p_abort' and r.get('entry')=='posted') or (m=='p_begin' and r.get('entry')=='posted' and not r.get('res'))
            close=m=='p_done' and r.get('res') in (1,2) or cancel
            fail=m=='p_done' and r.get('res')==3
            if en and (close or fail):
                for p in en['pages']:
                    if (i,p) in shared:
                        if ('entry',e) in holders[i,p]:
                            drop(i,p,('entry',e))
                            if fail: add(i,p,('quar',e))
                    elif close:
                        held.get((i,p),set()).discard(('e',e))
                en['state']='failed' if fail else 'closed'
                reclaim(i,en['gen'])
        elif m == 'peer_lost' and r.get('side')=='P':
            for e in r.get('eids',[]):
                en=entries.get((i,e))
                if en:
                    check(en['state']=='reg','cancel submitted entry')
                    for p in en['pages']:
                        if (i,p) in shared and ('entry',e) in holders[i,p]: drop(i,p,('entry',e))
                        held.get((i,p),set()).discard(('e',e))
                    en['state']='closed'; reclaim(i,en['gen'])
        elif m == 'd_stopped' and r.get('res')==0:
            for p in pages(r): held.pop((i,p),None)
            reclaim(i,g)
        elif m == 'release':
            live.discard(key); reclaim(i,g)
        if ev == 'klaunch':
            need(r,('it','kd','kp','kh','ks','npad'))
            if any(not isinstance(t,list) or len(t)!=4 for t in r['it']):
                raise MissingObservation(f"seq {r['seq']}: klaunch.it requires [row,gen,rd,wr]")
            check((i,r['step']) not in steps, 'step reused while live')
            check(len(r['it'])==len(r['kd']), 'kd item count')
            check(r['kp']==([ps*np] if r['npad'] else []), 'padding outside dummy')
            check(r['ks'] in ('kargs','attn','pt'), 'unknown ks')
            hr=hw=nr=nw=0; items=[]
            for t,kd in zip(r['it'],r['kd']):
                row,g,rd,wr=t; key=(i,g); mp=maps.get(key,[])
                check(key in live, 'launch released generation')
                check(0<=rd<=wr and rd<=progress.get(key,0), 'W: read beyond prior writes under StreamFIFO')
                check(wr<=len(mp)*ps, 'W: missing explicit allocated capacity')
                if 0<=rd<=wr<=len(mp)*ps:
                    for pos,p in enumerate(mp):
                        check((i,p) in shared or owner.get((i,p))==g, 'launch page ownership')
                        if (i,p) in shared:
                            check(('req',g) in holders[i,p], 'hitNoRef: missing request holder')
                            check(not (rd<(pos+1)*ps and wr>pos*ps), 'SharedImmutable: write touches Shared')
                    slot=lambda n: mp[n//ps]*ps+n%ps
                    exp=[wr,slot(0) if wr else -1,slot(wr-1) if wr else -1,wr-rd,slot(rd) if wr>rd else -1,slot(wr-1) if wr>rd else -1]
                    check(kd==exp,'actual array endpoints/lengths disagree with rd/wr/map')
                    hr=(hr+digest(mp,ps,0,wr,nr))&MASK; hw=(hw+digest(mp,ps,rd,wr,nw))&MASK
                    nr+=wr; nw+=wr-rd
                progress[key]=wr; items.append((g,wr,list(mp)))
            check(r['kh']==[hr,hw], 'actual array digest disagrees with full ordered map')
            steps[i,r['step']]=items
        elif ev == 'kdone':
            check((i,r['step']) in steps,'kdone without launch')
            items=steps.pop((i,r['step']),[])
            for g,wr,mp in items:
                done[i,g]=max(done.get((i,g),0),wr); reclaim(i,g)
                for p in mp:
                    if owner.get((i,p))==g and p not in maps.get((i,g),[]) and not pinned(i,g): owner.pop((i,p),None)
        if m in ('hit','seal','dedup','evict','flush_shared'):
            check(r['map_after']==maps.get(key,[]), 'map_after differs from replayed remapping')
            check(r['shared_after']==snapshot(i), 'shared_after != replayed exact holders/count/tokens')
        r['_observation_ok']=not errors
        r['_map7']=deepcopy(maps.get((i,r.get('h')),[]))
        results.append(dict(seq=r.get('seq'),inst=i,event=ev or r.get('k'),ok=not errors,errors=errors))
    return results
