"""Expose the state before a rejected call without replaying it as success.

Use the observed extractor's normal mapping with read-only observer state,
identity admission before allocation, a terminal Nop, and numbering context."""
from __future__ import annotations
import argparse
from collections import Counter, defaultdict
from copy import deepcopy
import json
import os
from pathlib import Path
import re
import extract as old
import observe_rejected as obs


def extract(path, rejection, radix=True):
    os.environ['KARGS_CHECK']='0' # lifecycle observer is deliberately not used on new four-field input
    st=old.PdtStep(None,single=str(path))
    raw=st.merge()
    observed_state={}
    audit=obs.audit(raw, observed_state)
    byseq={r['seq']:r for r in raw}
    # The legacy lifecycle mapping sees only a copy of each item. All observed checks
    # use original records and explicitly fail if a new protocol field is absent.
    comp=deepcopy(raw)
    for r in comp:
        if r.get('ev')=='klaunch': r['it']=[it[:2] for it in r['it']]
        if r.get('side')=='P':
            for field in ('pre','post'):
                if isinstance(r.get(field),dict):
                    r[field]={k:v for k,v in r[field].items() if k!='shared'}
    out,drops,pfill,dgen=st.extract(comp)
    if not out: return [],{},audit,st.errors,dict(drops)
    # Match raw generations to calibrated request identity records.
    bases={}
    for e in out:
        pk=e['_pk']
        if pk and len(pk)==3 and pk[0] in ('P','D'):
            bases.setdefault((pk[1],pk[2]),e)
        for t in e.get('_items',[]):
            pk=t[4]
            bases.setdefault((pk[1],pk[2]),old.mk('PAlloc' if pk[0]=='P' else 'DExpose',pk[1],None,
                dict(room=t[1],g=t[2],x=t[3],_order=st.order),pk,seq=e['seq']))
    # Only rejected hit may precede its first suffix alloc. Admission is derived
    # from the recorded successful match and D publication, never a fake alloc.
    rr = rejection
    if rr['m'] == 'hit' and (rr['inst'], rr['h']) not in bases:
        matches=[r for r in raw if r.get('k')=='match' and r['inst']==rr['inst']
                 and r['uid']==rr['uid'] and r['room']==rr['room']]
        if len(matches)!=1: raise ValueError('rejected hit needs one prior match')
        match=matches[0]; d=dgen.get((match['peer'],match['d_h']))
        if d is None or d['xid']!=match['xid'] or d['room']!=match['room']:
            raise ValueError('rejected hit needs its prior D publication')
        e=old.mk('PAlloc',rr['inst'],match['peer'],d,('P',rr['inst'],rr['h']),
                 seq=rr['seq'],pg='',_ord=-2)
        out.append(e); bases[rr['inst'],rr['h']]=e
    inserts=[]
    def event(k,r,g=None,**more):
        g=r.get('h') if g is None else g
        b=bases.get((r['inst'],g))
        if b is None:
            st.errors.append(f"seq {r['seq']}: {k} has no matched PD identity")
            return None
        e=deepcopy(b); e.update(k=k,seq=r['seq'],pg='',ok=True,rs='')
        for field in ('_items','_step','_ka'): e.pop(field,None)
        e.update(more); inserts.append(e); return e
    prefix,hitgen,ready=set(),set(),set()
    noprefix=set()
    matched_len={(r['inst'],r['uid']):r.get('ntokens') for r in raw if r.get('k')=='match'}
    pfirst={}
    for r in raw:
        if r.get('m')=='hit': hitgen.add((r['inst'],r['h']))
        if r.get('m')=='alloc' and r.get('side')=='P' and r.get('res'): pfirst.setdefault((r['inst'],r['h']),r)
    # Hit precedes suffix allocation: open the abstract aggregate request at hit.
    for r in raw:
        if r.get('m')=='hit':
            for e in out:
                if e['k']=='PAlloc' and e['_pk']==('P',r['inst'],r['h']):
                    e['seq']=r['seq']; e['_ord']=-2; break
    # Track exact physical growth independently of array endpoints.
    grown=defaultdict(list); maps={}; written={}; launch={}; spkeys=set()
    for r in raw:
        i,g,m=r.get('inst'),r.get('h'),r.get('m'); key=(i,g)
        if m=='alloc':
            maps[key]=r['after'][:]
            if r.get('action')=='DGrow':
                for p in r['res']:
                    e=event('DGrow',r,_pk=('DG',i,g,p),_basepk=('D',i,g),_ord=0)
                    if e: grown[key].append((p,e['_pk']))
            if radix and r.get('side')=='P' and key not in prefix and key not in noprefix and key not in hitgen and r['res']:
                ps=next(rr['ps'] for rr in raw if rr.get('k')=='role' and rr['inst']==i)
                nt=matched_len.get((i,r.get('uid')))
                if nt is not None and nt<ps:
                    noprefix.add(key); event('PNoPrefix',r,_ord=1)
                    continue
                prefix.add(key); p=r['after'][0]; spkeys.add((i,p))
                event('PPrefixAlloc',r,_sp=p,_ord=1)
        elif m=='release' and r.get('side')=='D':
            post=r.get('post',{})
            if len(post)==1:
                state={'private':'priv','draining':'drain','quarantined':'quar','free':'free'}.get(next(iter(post)))
                if state:
                    for e in out:
                        if e['seq']==r['seq']: e['_gs']=[(pk,state) for p,pk in grown[key]]
        elif m=='d_mark_visible':
            written[key]=next((rr['ntokens'] for rr in raw if rr.get('inst')==i and rr.get('h')==g and rr.get('m')=='d_expect'),0)
        elif m=='hit':
            prefix.add(key); p=r['a'][1]; spkeys.add((i,p)); maps[key]=r['map_after'][:]
            written[key]=len(r['prefix_tokens']); event('PHit',r,_sp=p,_ss=r['shared_after'],_spmap=p,_ord=0)
        elif m in ('seal','dedup'):
            p=r['map_after'][0]; spkeys.add((i,p)); maps[key]=r['map_after'][:]
            event('PSeal' if m=='seal' else 'PDedup',r,_sp=p,_ss=r['shared_after'],_spmap=p,_ord=0)
        elif m in ('evict','flush_shared'):
            # These are instance-level actions, with no request identity.
            candidates=[b for (ii,gg),b in bases.items() if ii==i]
            if not candidates: st.errors.append(f"seq {r['seq']}: prefix maintenance with no instance identity"); continue
            b=candidates[0]; rr=dict(r,h=b['_pk'][2])
            if m=='evict': spkeys.add((i,r['a'][0]))
            event('SEvict' if m=='evict' else 'FlushAll',rr,_sp=r['a'][0] if m=='evict' else None,_ss=r['shared_after'],_ord=0)
        if r.get('ev')=='klaunch':
            details=[]
            for row,g,rd,wr in r['it']:
                key=(i,g); mp=maps.get(key,[]); gr=[]; w=[]
                ps=next(rr['ps'] for rr in raw if rr.get('k')=='role' and rr['inst']==i)
                for p,pk in grown[key]:
                    pos=mp.index(p); sh=2 if written.get(key,0)>pos*ps else 3
                    gr.append((pk,sh))
                    if sh==3 and rd<(pos+1)*ps and wr>pos*ps: w.append(pk)
                details.append((g,rd,wr,gr,w))
                written[key]=wr
            launch[i,r['step']]=r['it']
            for e in out:
                if e['seq']==r['seq'] and e['k'] in ('DStep','PStep'):
                    e['_bounds']=details; e['_ka']=r['_observation_ok']; e['_ord']=0
        elif r.get('ev')=='kdone':
            its=launch.get((i,r['step']),[])
            if r.get('side')=='P':
                for row,g,rd,wr in its:
                    key=(i,g); mp=maps.get(key,[])
                    if radix and key in prefix and key not in ready and key not in hitgen:
                        ps=next(rr['ps'] for rr in raw if rr.get('k')=='role' and rr['inst']==i)
                        if wr>=ps:
                            ready.add(key); event('PPrefixReady',r,g,_sp=mp[0],_ord=-1)
                    event('PLocalDone',r,g,_ord=2)
    # The terminal marker is an observation Nop. The rejected call is NOT
    # executed as a successful action and its post snapshot is NOT fed to observed.
    rr=rejection
    g=rr['h'] if rr['m']!='evict' else next(
        (gg for ii,gg in bases if ii==rr['inst']),None)
    marker=event('ObservationCheck',rr,g,_ord=9)
    if marker is None: raise ValueError('rejected call lacks mapped identity')
    for p in [rr['args'][-1]]+rr['map_before'][:1]+rr.get('map_after',[])[:1]:
        spkeys.add((rr['inst'],p))
    for s in rr['shared_before']+rr['shared_after']:
        spkeys.add((rr['inst'],s['page']))
    byseq[rr['seq']]=dict(rr,_observation_ok=True)
    out+=inserts
    out.sort(key=lambda e:(e['seq'],e.get('_ord',0)))
    notes=list(st.notes)
    evs,scale,imap=old.number(out,notes)
    if len(evs)!=len(out): raise ValueError('unexpected dropped numbered event')
    numbered=evs[:]
    pnums={}
    for e,n in zip(out,evs):
        if e['_pk'] is not None: pnums[e['_pk']]=n['p']
        for it,ni in zip(e.get('_items',[]),n.get('it',[])): pnums[it[4]]=ni[2]
    spp=max([sum(ii==i for ii,p in spkeys)+1 for i in imap]+[1]) if radix else 0
    spids={}
    np=(scale['NPI']+scale['NDI'])*scale['PPL']
    for i in imap:
        keys=sorted(p for ii,p in spkeys if ii==i)
        for n,p in enumerate(keys,2): spids[i,p]=np+(imap[i]-1)*spp+n
    for e,n in zip(out,evs):
        r=byseq[e['seq']]; n.update(observed=True,obs=r['_observation_ok'])
        if e['k']=='DGrow': n['q']=n['p']; n['p']=pnums[e['_basepk']]
        if '_sp' in e and e['_sp'] is not None: n['q']=spids[e['_i'],e['_sp']]
        if '_gs' in e: n['gs']=[[pnums[pk],state] for pk,state in e['_gs']]
        if '_ss' in e:
            n['ss']=[[spids[e['_i'],s['page']],s['refc'],sum(h[0]=='req' for h in s['holders']),sum(h[0]=='entry' for h in s['holders']),sum(h[0]=='quar' for h in s['holders'])] for s in e['_ss']]
        if '_spmap' in e: n['spmap']=spids[e['_i'],e['_spmap']]
        if e['k'] in ('DStep','PStep'):
            n.update(ka=r['_observation_ok'],gr=[],w=[])
            for it,detail in zip(n['it'],e['_bounds']):
                g,rd,wr,gr,w=detail
                it.extend([rd,wr])
                n['gr'].extend([[it[0],it[1],pnums[pk],sh] for pk,sh in gr])
                n['w'].extend(pnums[pk] for pk in w)
        # Empty pg on a prefix-only aggregate is a projection, not a physical free claim.
        if e['_i'] in imap and r.get('side')=='P' and r.get('post') and set(r['post'])=={'shared'}:
            n['pg']=''
    # Every audited raw event that has no model action still has a checked observation.
    modeled={e['seq'] for e in evs}
    for r in raw:
        if r['seq'] not in modeled:
            template=next((deepcopy(e) for e in evs if e['i']==imap.get(r.get('inst'))),None)
            if template:
                for k in list(template):
                    if k not in old.FIELDS: template.pop(k)
                template.update(k='ObservationCheck',a=0,seq=r['seq'],pg='',observed=True,obs=r['_observation_ok'])
                evs.append(template)
    evs.sort(key=lambda e:e['seq']) # stable: within a raw call keep the specified short program order
    if radix:
        boot=[]
        for i in range(1,scale['NPI']+1):
            b=deepcopy(evs[0]); b={k:v for k,v in b.items() if k in old.FIELDS}
            b.update(k='PBoot',i=i,a=0,p=0,q=np+(i-1)*spp+1,seq=0,pg='',observed=True,obs=True)
            boot.append(b)
        evs=boot+evs
    scale.update(PrefixSharing=radix,SPP=spp,KR=old.KR_STEPS)
    identities={}
    entry_ids={}
    for e,n in zip(out, numbered):
        pk=e['_pk']
        if pk and len(pk)==3 and pk[0] in ('P','D'):
            identities[pk[1],pk[2]]=(n['i'],n['r'],n['g'])
        r=byseq[e['seq']]
        if r.get('m')=='p_post' and type(r.get('res')) is int and r['res']>0:
            entry_ids[r['inst'],r['res']]=n['x']
    target=next(e for e in evs if e['seq']==rr['seq'] and e['k']=='ObservationCheck')
    context=dict(state=observed_state,spids=spids,imap=imap,identities=identities,
                 entries=entry_ids,target=target)
    return evs,scale,audit,st.errors,dict(drops),context

