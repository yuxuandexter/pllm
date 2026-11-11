#!/usr/bin/env python3
"""Check successful trace actions and rejected prefix calls separately.

Register and reap every bounded TLC process group. Require a fresh output
directory so a run cannot overwrite earlier evidence."""
from __future__ import annotations
import argparse
from copy import deepcopy
import hashlib
import json
import os
from pathlib import Path
import re
import signal
import subprocess
import sys
import time
import extract_observed as observed
import extract_rejected_prefix

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
MODEL=HERE/'PdCore.tla'
PIN='c3d0077fd89a4076282ae57882187618b0638665c273298b133a9dafa5a441ce'
TRACEPIN='248eeeb0091559ef5bd6c55b6e3a55f49c55051151c6c44fe1ca68a1733cd43e'

class RejectError(ValueError):
    def __init__(self, code, detail):
        self.code=code
        super().__init__(detail)

def fail(code,detail): raise RejectError(code,detail)
def tla_literal(v):
    if isinstance(v, dict): return '['+', '.join(k+' |-> '+tla_literal(x) for k,x in v.items())+']'
    if isinstance(v, (list, tuple)): return '<<'+', '.join(tla_literal(x) for x in v)+'>>'
    return observed.old.tla_val(v)

def sha(p): return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def now(): return subprocess.check_output(['date','-u','+%FT%TZ'],text=True).strip()

def read_input(path):
    raw=[]; outcome=None
    for line in Path(path).read_text().splitlines():
        if 'PDT ' in line:
            try: raw.append(json.loads(line.split('PDT ',1)[1]))
            except (ValueError,TypeError): fail('ERROR-LOG','malformed PDT JSON')
        elif line.startswith('{'):
            try: e=json.loads(line)
            except ValueError: continue
            if e.get('k')=='end': outcome=e.get('outcome')
    if not raw: fail('ERROR-NO-PDT','no records')
    return raw,outcome

def contract(r):
    if r.get('ev')!='rejected' or r.get('k')!='rejected': fail('ERROR-REJECT_RECORD','k/ev mismatch')
    m=r.get('m')
    if m not in ('hit','dedup','evict'): fail('ERROR-REJECT_UNSUPPORTED',str(m))
    req=('seq','inst','side','h','room','uid','args','a','kwargs','res','guard','phase',
         'exception','exception_module','message','map_before','shared_before','shared_after','pages')
    if m!='evict': req+=('prefix_tokens','map_after')
    if any(k not in r for k in req): fail('ERROR-REJECT_RECORD','missing fields: '+','.join(k for k in req if k not in r))
    if any(k.endswith('_error') for k in r): fail('ERROR-REJECT_RECORD','failed observation')
    if (r['side']!='P' or r['res'] is not None or r['kwargs']!={} or r['a']!=r['args'] or
        r['exception']!='LedgerViolation' or r['exception_module']!='minisgl.disagg.ledger'):
        fail('ERROR-REJECT_RECORD','unsupported call/exception encoding')
    args=r['args']
    if not isinstance(args,list) or len(args)!=(1 if m=='evict' else 2) or any(type(v) is not int for v in args):
        fail('ERROR-REJECT_RECORD','argument arity/type')
    if m!='evict' and (args[0]!=r['h'] or r['h']<=0): fail('ERROR-REJECT_IDENTITY','argument generation mismatch')
    diag=re.sub(r'^\[ledger inst=[^\]]*\]\s*','',r['message'])
    phase='postcondition' if diag.startswith('postcondition ') else 'unspecified'
    guard=diag.removeprefix('postcondition ').split(':',1)[0]
    wanted={'hit':('PrefcMatchesHolders','postcondition'),
            'dedup':('HitIdentity/SMapIntegrity','postcondition'),
            'evict':('evict requires zero references','unspecified')}[m]
    if (r['guard'],r['phase'])!=wanted or phase!=r['phase']:
        fail('ERROR-REJECT_PHASE','unsupported source-classified method/guard/phase')
    if guard!=r['guard']: fail('ERROR-REJECT_RECORD','guard differs from diagnostic')
    for key in (('map_before',) if m=='evict' else ('map_before','map_after')):
        a=r[key]
        if not isinstance(a,list) or any(type(p) is not int or p<0 for p in a) or len(set(a))!=len(a):
            fail('ERROR-REJECT_RECORD','invalid '+key)
    for key in ('shared_before','shared_after'):
        a=r[key]
        if not isinstance(a,list): fail('ERROR-REJECT_RECORD','snapshot not list')
        ps=[]
        for s in a:
            if set(s)!={'page','tokens','refc','holders'}: fail('ERROR-REJECT_RECORD','snapshot fields')
            if type(s['page']) is not int or s['page']<0 or type(s['refc']) is not int or s['refc']<0:
                fail('ERROR-REJECT_RECORD','invalid page/count')
            if not isinstance(s['tokens'],list) or any(type(t) is not int for t in s['tokens']):
                fail('ERROR-REJECT_RECORD','tokens')
            hs=s['holders']
            if not isinstance(hs,list) or any(not isinstance(h,list) or len(h)!=2 or h[0] not in ('req','entry','quar') or type(h[1]) is not int or h[1]<=0 for h in hs):
                fail('ERROR-REJECT_RECORD','holders')
            if len(set(map(tuple,hs)))!=len(hs): fail('ERROR-REJECT_RECORD','duplicate holders')
            ps.append(s['page'])
        if len(set(ps))!=len(ps): fail('ERROR-REJECT_RECORD','duplicate snapshot page')
    if m=='evict' and (r['shared_before']!=r['shared_after']):
        fail('ERROR-REJECT_PHASE','pre-rejected evict changed observed state')


def reject_event(raw,r,ctx):
    state=ctx['state']; i=r['inst']; h=r['h']; m=r['m']; q=r['args'][-1]
    if state['shared'].get(i)!=r['shared_before'] or state['maps'].get((i,h),[])!=r['map_before']:
        fail('ERROR-REJECT_PRESTATE','before snapshot differs from independent observed replay')
    ps,np=state['cfg'][i]
    if q<0 or q>=np: fail('ERROR-REJECT_IDENTITY','physical page outside declared pool')
    # Physical parameters must remain inside the independently observed domain.
    enc=r['pages']
    if not isinstance(enc,list) or any(not isinstance(x,list) or len(x)!=2 or
            any(type(v) is not int for v in x) or x[0]<0 or x[1]<=0 or x[0]+x[1]>np for x in enc):
        fail('ERROR-REJECT_RECORD','invalid pages RLE')
    observed_pages=[a+j for a,n in enc for j in range(n)]
    if q not in observed_pages: fail('ERROR-REJECT_IDENTITY','argument absent from observed pages')
    if m!='evict':
        allowed=set(r['map_before'])|{q}
        if any(p not in allowed for p in r['map_after']):
            fail('ERROR-REJECT_IDENTITY','unobserved post mapping page')
        if r['map_after'][1:]!=r['map_before'][1:]:
            fail('ERROR-REJECT_RECORD','suffix update is outside single-prefix abstraction')
    known={s['page']:s for s in r['shared_before']}
    if q not in known: fail('ERROR-REJECT_IDENTITY','target is not an observed Shared page')
    if m!='evict' and (not isinstance(r['prefix_tokens'],list) or len(r['prefix_tokens'])!=ps or r['prefix_tokens']!=known[q]['tokens']):
        fail('ERROR-REJECT_IDENTITY','full token identity unavailable or mismatched')
    if {s['page']:s['tokens'] for s in r['shared_after']}!={p:s['tokens'] for p,s in known.items()}:
        fail('ERROR-REJECT_RECORD','unsupported changed Shared set/token observation')
    if m!='evict':
        if (i,h) not in ctx['identities']: fail('ERROR-REJECT_IDENTITY','request has no prior matched identity')
        if m=='hit' and r['map_before']: fail('ERROR-REJECT_PRESTATE','hit already has a prefix')
        if m=='dedup' and not r['map_before']: fail('ERROR-REJECT_PRESTATE','dedup lacks private prefix')
    def sp(p):
        if (i,p) not in ctx['spids']: fail('ERROR-REJECT_IDENTITY','unknown physical prefix page')
        return ctx['spids'][i,p]
    def snapshot(which):
        ss=[]; sr=[]; se=[]; sq=[]
        for s in r['shared_'+which]:
            p=sp(s['page']); hs=s['holders']
            ss.append([p,s['refc']]+[sum(x[0]==tag for x in hs) for tag in ('req','entry','quar')])
            for tag,v in hs:
                if tag=='req':
                    if (i,v) not in ctx['identities']: fail('ERROR-REJECT_IDENTITY','unknown holder generation')
                    sr.append(list(ctx['identities'][i,v])+[p])
                else:
                    if (i,v) not in ctx['entries']: fail('ERROR-REJECT_IDENTITY','unknown holder entry')
                    (se if tag=='entry' else sq).append([ctx['entries'][i,v],p])
        mp=[] if m=='evict' else r['map_'+which]
        return dict(ss=ss,sr=sr,se=se,sq=sq,spmap=sp(mp[0]) if mp else 0)
    e=ctx['target']
    return dict(i=e['i'],r=e['r'],g=e['g'],q=sp(q),seq=r['seq'],method=m,
                before=snapshot('before'),after=snapshot('after'))


def spawn(cmd,out,timeout,env):
    log=out/'tlc.out'; t0=time.monotonic()
    with log.open('w') as f:
        f.write('# start '+now()+'\n# command '+json.dumps(cmd)+'\n'); f.flush()
        proc=subprocess.Popen(cmd,stdout=f,stderr=subprocess.STDOUT,env=env,start_new_session=True)
        with (out/'pgids.tsv').open('a') as p: p.write(f'{proc.pid}\t{out}\n')
        try:
            try: rc=proc.wait(timeout=timeout)
            except subprocess.TimeoutExpired: rc=124
        finally:
            try: os.killpg(proc.pid,signal.SIGTERM)
            except ProcessLookupError: pass
            try: proc.wait(timeout=5)
            except subprocess.TimeoutExpired:
                os.killpg(proc.pid,signal.SIGKILL); proc.wait(timeout=5)
        for _ in range(20):
            try: os.killpg(proc.pid,0)
            except ProcessLookupError: break
            time.sleep(.1)
        else: fail('ERROR-PROCESS_CLEANUP',f'group {proc.pid} still exists')
        f.write(f'# end {now()} rc={rc}\n')
    (out/'cleanup.txt').write_text(f'{now()} kill -0 -- -{proc.pid}: absent\n')
    return rc,time.monotonic()-t0,log


def check(path,out,radix=False,env_name='cpu-stub',outcome=None,expect=False,timeout=600):
    path=Path(path).resolve(); out=Path(out).resolve(); out.mkdir(parents=True,exist_ok=False)
    result=dict(source=str(path),source_sha256=sha(path),started=now(),protocol='rejected_calls')
    try:
        if sha(MODEL)!=PIN or sha(HERE/'PdTrace.tla')!=TRACEPIN: fail('ERROR-PIN','fixed model/observed trace changed')
        raw,ending=read_input(path); outcome=ending if ending is not None else outcome
        if outcome not in ('passed','failed'): fail('ERROR-OUTCOME','need end trailer or explicit --outcome')
        result['outcome']=outcome
        rr=[r for r in raw if r.get('k')=='rejected' or r.get('ev')=='rejected']
        result['rejected_count']=len(rr)
        if expect and not rr: fail('ERROR-MISSING_REJECT','expected injected call absent')
        if not rr:
            try: events,scale,audit,errors,drops=observed.extract(path,radix)
            except observed.obs.MissingObservation as ex: fail('ERROR-MISSING_OBSERVATION',str(ex))
            if not events: fail('ERROR-NO-TRACES','no mapped events')
            err='LOG' if errors else ''
            if outcome!='passed': err='CAPTURE_'+outcome.upper()
            observed.write_run(out,'run',events,scale,env_name,dict(outcome=outcome,error=err,source=str(path),protocol='observed',notes=';'.join(errors)))
            env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1',TV_PIN='observed',TRACE_BASE=str(out),TV_TIMEOUT=str(timeout),TV_RETRY='0')
            rc,wall,log=spawn(['bash',str(HERE/'run_tv.sh'),str(out),'normal'],out,timeout+30,env)
            table=out/'out/normal/normal.tsv'
            if rc!=0 or not table.exists(): fail('ERROR-NORMAL_RUN',f'runner rc {rc}')
            cols=table.read_text().strip().split('\t')
            if len(cols)!=9: fail('ERROR-NORMAL_RUN','bad result row')
            result.update(verdict=cols[1],raw=cols[5],reached=cols[2],states=cols[3],rc=cols[4],wall=wall,
                          events=len(events),bad_observations=sum(not a['ok'] for a in audit),scale=scale)
            # Existing normal acceptance also needs a complete printed witness.
            tl=(out/'out/normal/run.out').read_text()
            if cols[5]=='CONSUMED' and ('The behavior up to this point' not in tl or 'Finished in' not in tl):
                result['verdict']='ERROR-INCOMPLETE_WITNESS'
        else:
            r=rr[0]; result.update(rejected_seq=r.get('seq'),method=r.get('m'),phase=r.get('phase'))
            contract(r)
            if not radix: fail('ERROR-REJECT_CONFIG','PrefixSharing rejection requires --radix')
            pos=raw.index(r); prefix=raw[:pos]
            if any(type(e.get('seq')) is not int for e in raw) or any(b['seq']!=a['seq']+1 for a,b in zip(raw,raw[1:])):
                fail('ERROR-LOG','non-contiguous input sequence')
            p=out/'prefix.pdt'
            p.write_text(''.join('PDT '+json.dumps(e,separators=(',',':'))+'\n' for e in prefix))
            (out/'rejection.json').write_text(json.dumps(r,indent=2)+'\n')
            events,scale,audit,errors,drops,ctx=extract_rejected_prefix.extract(p,r,radix)
            if errors: fail('ERROR-LOG',';'.join(errors))
            revent=reject_event(prefix,r,ctx)
            (out/'reject-event.json').write_text(json.dumps(revent,indent=2)+'\n')
            (out/'audit.json').write_text(json.dumps(audit,indent=2)+'\n')
            observed.write_run(out,'run',events,scale,env_name,dict(outcome=outcome,error='',source=str(path),protocol='observed',notes='rejected_calls rejection prefix'))
            tla=out/'TL_run.tla'; text=tla.read_text().replace('EXTENDS PdTrace','EXTENDS PdReject')
            text=text.replace('\n====\n','\nRejected == '+tla_literal(revent)+'\n====\n'); tla.write_text(text)
            cfg=out/'TL_run.cfg'; text=cfg.read_text().replace('  TraceLog <- Log\n','  TraceLog <- Log\n  RejectEvent <- Rejected\n')
            text=text.replace('INVARIANT TraceNotDone\n','INVARIANT RejectProbe\n'); cfg.write_text(text)
            (out/'PdCore.tla').write_bytes(MODEL.read_bytes())
            (out/'PdTrace.tla').write_bytes((HERE/'PdTrace.tla').read_bytes())
            (out/'PdReject.tla').write_bytes((HERE/'PdReject.tla').read_bytes())
            env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1',TLC_WORKERS='1',TLC_XMX='6g')
            cmd=['timeout','--foreground',str(timeout),str(ROOT/'spec/tlc.sh'),str(out),'TL_run','-difftrace','-config','TL_run.cfg']
            rc,wall,log=spawn(cmd,out,timeout+20,env); text=log.read_text()
            result.update(rc=rc,wall=wall,events=len(events),scale=scale,bad_observations=sum(not a['ok'] for a in audit),log=str(log),log_sha256=sha(log))
            states=re.findall(r'([\d,]+) distinct states found',text)
            reached=re.findall(r'<<"PDTRACE_REACHED_L", (\d+)>>',text)
            result.update(states=int(states[-1].replace(',','')) if states else None,reached=max(map(int,reached)) if reached else 0)
            if rc!=0 or 'Model checking completed. No error has been found.' not in text or 'Finished in' not in text or '0 states left on queue' not in text:
                fail('INCONCLUSIVE',f'TLC incomplete/error rc={rc}')
            probes=re.findall(r'<<"REJECTED_CALL", (\d+), (TRUE|FALSE), (TRUE|FALSE), (TRUE|FALSE)>>',text)
            result['probes']=[dict(seq=int(seq),before=b=='TRUE',enabled=e=='TRUE',post_match=p=='TRUE') for seq,b,e,p in probes]
            if not probes or result['reached']!=len(events)+1:
                result['verdict']='NOT_CONSUMED'
            elif any(seq!=str(r['seq']) for seq,b,e,p in probes): fail('ERROR-PROBE','wrong rejection position')
            elif any(b!='TRUE' for seq,b,e,p in probes): result['verdict']='ERROR-REJECT_PRESTATE'
            elif r['m']=='evict': result['verdict']='REJECT_ENABLED' if any(e=='TRUE' for seq,b,e,p in probes) else 'REJECT_PRE_DISABLED'
            elif any(e!='TRUE' for seq,b,e,p in probes): result['verdict']='REJECT_POST_DISABLED'
            elif any(p=='TRUE' for seq,b,e,p in probes): result['verdict']='REJECT_POST_MATCH'
            else: result['verdict']='REJECT_POST_MISMATCH'
            result['raw']=result['verdict']
            result['tail_records']=len(raw)-pos-1
        result['log']=str(log); result['log_sha256']=sha(log)
    except RejectError as ex:
        result.update(verdict=ex.code,detail=str(ex))
    except (ValueError,KeyError,TypeError,IndexError) as ex:
        result.update(verdict='ERROR-REJECT_RECORD',detail=type(ex).__name__+': '+str(ex))
    result['finished']=now()
    (out/'result.json').write_text(json.dumps(result,indent=2)+'\n')
    return result


def main():
    p=argparse.ArgumentParser(description=__doc__); p.add_argument('source'); p.add_argument('out')
    p.add_argument('--radix',action='store_true'); p.add_argument('--env',choices=observed.old.ENV_CONSTS,default='cpu-stub')
    p.add_argument('--outcome',choices=['passed','failed']); p.add_argument('--expect-rejected',action='store_true'); p.add_argument('--timeout',type=int,default=600)
    a=p.parse_args(); r=check(a.source,a.out,a.radix,a.env,a.outcome,a.expect_rejected,a.timeout)
    print(json.dumps(r,ensure_ascii=False))
    return 0 if r['verdict'] in ('CONSUMED','REJECT_PRE_DISABLED','REJECT_POST_MISMATCH') else 1

if __name__=='__main__': raise SystemExit(main())
