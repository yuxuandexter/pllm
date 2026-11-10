#!/usr/bin/env python3
"""Check partial destination-descriptor observations without claiming full closure.

Read captured layouts and calls independently of the ledger. --legacy adds a
separate TLC result when TLC is installed; it does not strengthen this verdict."""
from __future__ import annotations
import argparse
from copy import deepcopy
import hashlib
import json
from pathlib import Path
import subprocess
import observe

GAPS = ['P_LOCAL_LAYOUT', 'D_LOCAL_LAYOUT_AND_DESCRIPTOR', 'TRANSPORT_ARGUMENT_ARRAYS']

class ObservationError(ValueError):
    def __init__(self, code, seq, detail):
        self.code, self.seq, self.detail = code, seq, detail
        super().__init__(detail)

def fail(code, r, detail):
    raise ObservationError(code, r.get('seq'), detail)

def require(ok, code, r, detail):
    if not ok:
        fail(code, r, detail)

def integer(x):
    return type(x) is int

def ident(x):
    if integer(x) and x >= 0:
        return x
    if isinstance(x, str) and x.startswith('0x'):
        return int(x, 16)
    raise ValueError('invalid instance identity')

def page_list(value, r, field):
    require(isinstance(value, list) and all(integer(x) and x >= 0 for x in value),
            'ERROR-FIELD', r, field+' must be an integer page list')
    return value

def expand(r, field):
    require(field in r and isinstance(r[field], list), 'ERROR-MISSING_FIELD', r, field)
    out = []
    for pair in r[field]:
        require(isinstance(pair, list) and len(pair) == 2 and all(integer(x) for x in pair)
                and pair[0] >= 0 and 0 < pair[1] <= 1000000,
                'ERROR-RLE', r, field+' invalid [first,count]')
        require(len(out)+pair[1] <= 1000000, 'ERROR-RLE', r, 'page expansion limit')
        out.extend(range(pair[0], pair[0]+pair[1]))
    return out

def read_records(path):
    raw=[]
    for line in Path(path).read_text().splitlines():
        if 'PDT ' in line:
            r=json.loads(line.split('PDT ', 1)[1])
            if not isinstance(r, dict):
                raise ValueError('PDT record must be an object')
            raw.append(r)
    if not raw:
        raise ValueError('no PDT records')
    return raw

def audit(records):
    result=dict(protocol='partial-descriptor', closed=False, gaps=GAPS,
                partial_verdict='OBSERVED_OK', descriptor_verdict='INCONCLUSIVE_MISSING_CAPTURE',
                posts=0, publications=0, kernel_steps=0, kernel_items=0,
                first_rejected_seq=None, ignored_tail_records=0, first_error_seq=None,
                error='', error_code='', transfers=[])
    raw=deepcopy(records)
    first=next((j for j,r in enumerate(raw) if r.get('k')=='rejected' or r.get('ev')=='rejected'), len(raw))
    if first < len(raw):
        result.update(first_rejected_seq=raw[first].get('seq'), ignored_tail_records=len(raw)-first)
    raw=raw[:first]  # rejected call may have changed state; never replay it as success
    cfg, maps, pubs, used = {}, {}, {}, set()
    try:
        for j,r in enumerate(raw):
            require(integer(r.get('seq')), 'ERROR-SEQ', r, 'integer seq required')
            require(j == 0 or r['seq'] == raw[j-1]['seq']+1, 'ERROR-SEQ', r, 'non-contiguous merged seq')
            if r.get('k') == 'role':
                require(all(integer(r.get(k)) and r[k]>0 for k in ('ps','np')), 'ERROR-MISSING_GEOMETRY', r, 'independent role ps/np required')
                i=ident(r['inst']); v=(r['side'],r['ps'],r['np'])
                require(i not in cfg or cfg[i]==v, 'REJECT-GEOMETRY',r,'role geometry changed')
                cfg[i]=v
            if r.get('inst') is None:
                continue
            i=ident(r['inst']); m=r.get('m'); g=r.get('h'); key=(i,g)
            require(i in cfg, 'ERROR-MISSING_GEOMETRY', r, 'instance has no role geometry')
            side,ps,np=cfg[i]
            require(r.get('side')==side, 'REJECT-IDENTITY',r,'instance side changed')
            if m == 'alloc':
                require(all(k in r for k in ('before','res','after')), 'ERROR-MISSING_FIELD',r,'alloc before/res/after')
                before=page_list(r['before'],r,'before'); res=page_list(r['res'],r,'res'); after=page_list(r['after'],r,'after')
                require(before==maps.get(key,[]) and after==before+res and expand(r,'pages')==res,
                        'REJECT-ALLOC',r,'allocation differs from independent ordered map')
                require(len(set(after))==len(after) and all(p<np for p in after), 'REJECT-ALLOC',r,'duplicate/out-of-pool allocation')
                maps[key]=after[:]
            elif m in ('hit','seal','dedup'):
                # Exact legality and independent Shared/holder remapping checked below by frozen observed.
                require('map_after' in r, 'ERROR-MISSING_FIELD',r,'map_after')
                maps[key]=page_list(r['map_after'],r,'map_after')[:]
            elif m == 'd_expect' and integer(r.get('res')) and r['res']>0:
                require(side=='D','REJECT-IDENTITY',r,'publication side')
                pg=expand(r,'pages'); nt=r.get('ntokens'); a=r.get('a')
                require(integer(nt) and nt>0 and integer(g) and g>0, 'ERROR-FIELD',r,'positive tokens/gen')
                require(a==[g,ident(r['peer']),nt] and r.get('xid')==r['res'], 'REJECT-IDENTITY',r,'publication arguments')
                require(pg==maps.get(key), 'REJECT-D_ORDER',r,'publish != D allocation map')
                require(len(pg)==(nt+ps-1)//ps, 'REJECT-LENGTH',r,'D count != ceil(tokens/ps)')
                pk=(i,r['room'],g,r['xid'])
                require(pk not in pubs,'REJECT-IDENTITY',r,'duplicate publication')
                pubs[pk]=dict(pages=pg,ntokens=nt,peer=ident(r['peer']),seq=r['seq'])
                result['publications']+=1
            elif m == 'p_post' and integer(r.get('res')) and r['res']>0:
                require(side=='P','REJECT-IDENTITY',r,'post side')
                a=r.get('a')
                require(isinstance(a,list) and len(a)==6 and all(integer(x) for x in a), 'ERROR-FIELD',r,'post a')
                h,nt,peer,room,dgen,xid=a
                require(h==g and peer==ident(r['peer']) and room==r['room'] and dgen==r['d_h'] and xid==r['xid'],
                        'REJECT-IDENTITY',r,'post arguments != record identity')
                require(peer in cfg and cfg[peer][0]=='D', 'REJECT-IDENTITY',r,'unknown D instance')
                require(nt>0,'ERROR-FIELD',r,'positive tokens required')
                pk=(peer,room,dgen,xid)
                require(pk in pubs,'REJECT-IDENTITY',r,'no matching earlier D publication')
                pub=pubs[pk]
                require(pub['peer']==i and pub['ntokens']==nt, 'REJECT-IDENTITY',r,'D expects another P or token length')
                require(pk not in used, 'REJECT-IDENTITY',r,'duplicate successful post')
                src,dst=expand(r,'pages'),expand(r,'dst')
                require(len(src)==len(dst)==(nt+ps-1)//ps, 'REJECT-LENGTH',r,'src/dst/token page counts differ')
                require(src==maps.get(key), 'REJECT-SRC_ORDER',r,'post src != P ordered map')
                require(dst==pub['pages'], 'REJECT-D_ORDER',r,'post dst != D published ordered pages')
                require('dst_descriptor' in r, 'ERROR-MISSING_FIELD',r,'dst_descriptor')
                d=r['dst_descriptor']
                require(isinstance(d,list) and len(d)==7, 'ERROR-FIELD',r,'descriptor arity')
                require(d[:5]==[peer,room,dgen,xid,nt], 'REJECT-DESCRIPTOR_ID',r,'descriptor identity/count')
                require(page_list(d[6],r,'descriptor.pages')==dst,'REJECT-DESCRIPTOR_PAGES',r,'descriptor pages != dst')
                layout=d[5]
                require(isinstance(layout,list) and len(layout)==9 and all(integer(v) for v in layout),
                        'ERROR-FIELD',r,'nine-integer layout required')
                require(layout[1]==ps==cfg[peer][1], 'REJECT-PAGE_SIZE',r,'descriptor/P/D page sizes differ')
                # role np is usable pages; descriptor pool_pages includes the reserved dummy.
                require(layout[5]==cfg[peer][2]+1,'REJECT-POOL_SIZE',r,'D pool_pages != usable np + dummy')
                require(len(set(src))==len(src) and all(0<=p<np for p in src)
                        and len(set(dst))==len(dst) and all(0<=p<cfg[peer][2] for p in dst),
                        'REJECT-PAGES',r,'duplicate or out-of-pool source/destination')
                used.add(pk); result['posts']+=1
                result['transfers'].append(dict(seq=r['seq'],publish_seq=pub['seq'],p_inst=hex(i),p_gen=g,
                    d_inst=hex(peer),d_gen=dgen,room=room,xid=xid,ntokens=nt,pages=len(src)))
            if r.get('ev')=='klaunch':
                result['kernel_steps']+=1
                result['kernel_items']+=len(r.get('it',[]))
        # Validate ordered maps against captured kernel arguments and holder lifetimes
        # without calling the implementation ledger.
        checks=observe.audit(deepcopy(raw))
        bad=next((c for c in checks if not c['ok']),None)
        if bad:
            fail('REJECT-LEDGER_OBSERVATION',{'seq':bad['seq']},'; '.join(bad['errors']))
    except ObservationError as ex:
        result.update(partial_verdict=ex.code,descriptor_verdict='REJECT_OBSERVED',
                      first_error_seq=ex.seq,error=ex.detail,error_code=ex.code)
    except (ValueError,KeyError,TypeError,IndexError) as ex:
        result.update(partial_verdict='ERROR-OBSERVATION',descriptor_verdict='INCONCLUSIVE_MISSING_CAPTURE',
                      error=type(ex).__name__+': '+str(ex),error_code='ERROR-OBSERVATION')
    return result

def sha(p): return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def now(): return subprocess.check_output(['date','-u','+%FT%TZ'],text=True).strip()

def check(path, out, *, legacy=False, radix=False, timeout=600):
    path=Path(path).resolve(); out=Path(out).resolve(); out.mkdir(parents=True,exist_ok=False)
    started=now(); source_sha=sha(path)
    try:
        r=audit(read_records(path))
    except (ValueError,TypeError) as ex:
        r=dict(protocol='partial-descriptor',closed=False,partial_verdict='ERROR-LOG',
               descriptor_verdict='INCONCLUSIVE_MISSING_CAPTURE',error=str(ex))
    r.update(source=str(path),source_sha256=source_sha,started=started)
    if legacy:
        from check_rejected import check as old_check
        old=old_check(path,out/'legacy',radix,'production',timeout=timeout)
        r['legacy']=old
        r['legacy_verdict']=old['verdict']
    r['finished']=now()
    if sha(path)!=source_sha:
        r.update(partial_verdict='ERROR-INPUT_CHANGED',descriptor_verdict='INCONCLUSIVE_MISSING_CAPTURE')
    (out/'result.json').write_text(json.dumps(r,indent=2)+'\n')
    return r

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('source'); p.add_argument('out'); p.add_argument('--legacy',action='store_true')
    p.add_argument('--radix',action='store_true'); p.add_argument('--timeout',type=int,default=600)
    a=p.parse_args(); r=check(a.source,a.out,legacy=a.legacy,radix=a.radix,timeout=a.timeout)
    print(json.dumps(r,ensure_ascii=False))
    # rc2 deliberately prevents interpreting an observable-only clean run as closure.
    return 2 if r['partial_verdict']=='OBSERVED_OK' else 1

if __name__=='__main__': raise SystemExit(main())
