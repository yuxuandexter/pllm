#!/usr/bin/env python3
"""Explicit descriptor_capture/descriptor-capture observer. Does not change observed/rejected_calls or import PdLedger.
CLOSED concerns captured ordered descriptor/argument equality, not RDMA visibility.
Missing/unsupported capture is inconclusive; --legacy retains an independent rejected_calls result.
"""
from __future__ import annotations
import argparse
from copy import deepcopy
import json
from pathlib import Path
import check_ddesc as old

MISSING = 'INCONCLUSIVE_MISSING_CAPTURE'
COMMON = (0, 1, 2, 3, 4, 7, 8)
ARRAYS = ('src_addrs', 'dst_addrs', 'nbytes')
CONTEXT = ('h', 'room', 'd_h', 'xid', 'uid', 'rid')
REQUEST = ('room', 'uid', 'rid')
BOUNDARIES = ('backend.write', 'TransferEngine.batch_transfer_sync_write')
LIMIT = 1000000

class Fault(ValueError):
    def __init__(self, code, r, detail, missing=False):
        self.code, self.seq, self.missing = code, r.get('seq'), missing
        super().__init__(detail)

def need(ok, code, r, detail):
    if not ok: raise Fault(code, r, detail)

def captured(ok, r, detail):
    if not ok: raise Fault('MISSING_CAPTURE', r, detail, True)

def fields(r, names):
    captured(all(k in r and r[k] is not None for k in names), r,
             'required fields: '+','.join(names))

def ints(v, r, name, n=None):
    need(isinstance(v, list) and all(type(x) is int and 0 <= x < 2**64 for x in v)
         and (n is None or len(v) == n), 'REJECT-TYPE', r, name+' unsigned integer list')
    return v

def layout(v, r, name):
    ints(v, r, name, 9)
    need(all(v[j] > 0 for j in range(6)) and v[5] > 1,
         'REJElayout agreement', r, name+' dimensions/capacity')
    return v

def descriptor(v, r):
    need(isinstance(v, list) and len(v) == 7, 'REJECT-TYPE', r, 'descriptor arity')
    ints(v[:5], r, 'descriptor identity', 5)
    layout(v[5], r, 'descriptor layout'); ints(v[6], r, 'descriptor pages')
    return v

def identity(r, dside=False):
    fields(r, ('inst', 'room', 'h' if dside else 'd_h', 'xid') + (() if dside else ('peer',)))
    return (old.ident(r['inst'] if dside else r['peer']), r['room'],
            r['h'] if dside else r['d_h'], r['xid'])

def same_context(r, post):
    fields(r, CONTEXT + ('peer', 'eid'))
    need(all(type(r[k]) is int for k in ('h','room','d_h','xid','uid','eid')) and isinstance(r['rid'],str),
         'REJECT-XFER_ID', r, 'typed transfer identity')
    need(all(r[k] == post[k] for k in CONTEXT) and old.ident(r['peer']) == old.ident(post['peer'])
         and r['eid'] == post['eid'], 'REJECT-XFER_ID', r, 'transfer context != registered post')

def addresses(r, e):
    fields(r, ARRAYS)
    ss, ds, ns = [ints(r[k], r, k) for k in ARRAYS]
    need(len(ss) == len(ds) == len(ns) and bool(ns), 'REJECT-ARRAY_LENGTH', r, 'array arity/count')
    sl, dl = e['src_layout'], e['dst_layout']
    block = sl[1]*sl[2]*sl[3]*sl[4]
    count = 2*sl[0]*len(e['src_pages'])
    need(count <= LIMIT, 'REJECT-RESOURCE_BOUND', r, 'expanded array limit')
    need(all(n > 0 and n % block == 0 for n in ns), 'REJECT-ARRAY_BYTES', r, 'whole-page blocks')
    need(sum(n//block for n in ns) == count, 'REJECT-ARRAY_COVERAGE', r, 'missing/extra pages or layers')
    # Independent logical expansion, not the implementation's run-coalescing algorithm.
    expected = ((sl[6]+((kv*sl[0]+layer)*sl[5]+s)*block,
                 dl[6]+((kv*dl[0]+layer)*dl[5]+d)*block)
                for kv in range(2) for layer in range(sl[0])
                for s, d in zip(e['src_pages'], e['dst_pages']))
    actual = ((s+off, d+off) for s, d, n in zip(ss, ds, ns) for off in range(0, n, block))
    need(all(a == b for a, b in zip(actual, expected)), 'REJECT-ARRAY_ORDER', r,
         'addresses != ordered (K/V,layer,page ordinal) expansion')
    return [ss, ds, ns]

def audit(records, *, outcome=None, require_engine=False):
    partial = old.audit(records)
    result = dict(protocol='descriptor-capture', capture_version=1, closed=False,
                  descriptor_verdict=MISSING, partial_verdict=partial['partial_verdict'],
                  partial=partial, error_code='', error='', first_error_seq=None,
                  posts=0, publications=0, descriptors=0, received=0, bound=0,
                  plans=0, backend_submits=0, engine_submits=0, results=0,
                  pending_entries=[], require_engine=require_engine,
                  first_rejected_seq=partial.get('first_rejected_seq'), outcome=outcome)
    end = next((j for j, r in enumerate(records) if r.get('k') == 'rejected' or r.get('ev') == 'rejected'), len(records))
    raw = records[:end]
    roles, peers, pubs, descs, received, bound, matches, entries, submits = {}, {}, {}, {}, {}, {}, {}, {}, {}
    request_context = {}
    try:
        captured(bool(raw), {}, 'empty prefix')
        # Missing version/layout is not inferred from any post descriptor.
        for r in raw:
            ev, m = r.get('ev'), r.get('m')
            if r.get('k') == 'role' or ev in ('peer', 'ddesc', 'ddesc_recv', 'xfer_plan', 'xfer_submit', 'xfer_result') or (m == 'p_post' and type(r.get('res')) is int and r['res'] > 0):
                captured(type(r.get('ddesc_v')) is int and r['ddesc_v'] == 1, r, 'ddesc_v=1 required')
                captured(not any(k.endswith('_error') for k in r), r, 'capture error recorded')
                req = {'peer': ('peer_layout',), 'ddesc': ('descriptor',),
                       'ddesc_recv': ('descriptor', 'wire_pages', 'disposition', 'bind'),
                       'post': ('dst_descriptor', 'entry_snapshot'),
                       'xfer_plan': ARRAYS, 'xfer_submit': ARRAYS + ('boundary', 'status'),
                       'xfer_result': ('boundary', 'status', 'submit_seq')}.get(ev, ())
                fields(r, ('layout',) if r.get('k') == 'role' else req)
        # Preserve the calibrated ordered alloc/Shared/kernel-array observation gate.
        if partial['partial_verdict'] != 'OBSERVED_OK':
            missing = partial['partial_verdict'] in ('ERROR-MISSING_FIELD', 'ERROR-MISSING_GEOMETRY', 'ERROR-OBSERVATION')
            raise Fault(partial['partial_verdict'], {'seq': partial.get('first_error_seq')}, partial.get('error', ''), missing)
        for r in raw:
            i = old.ident(r['inst']) if 'inst' in r else None
            ev, m = r.get('ev'), r.get('m')
            if r.get('k') == 'role':
                lay = layout(r['layout'], r, 'local layout')
                need(lay[1] == r['ps'] and lay[5] == r['np']+1, 'REJElayout agreement_GEOMETRY', r, 'layout != independent ps/np')
                need(i not in roles or roles[i]['layout'] == lay, 'REJECT-LOCAL_LAYOUT', r, 'local layout changed')
                roles[i] = r
            elif ev == 'peer' and r['res'] == 0:
                p = old.ident(r['peer']); captured(p in roles and i in roles, r, 'both independent roles')
                pl = layout(r['peer_layout'], r, 'peer layout')
                need(pl == roles[p]['layout'], 'REJECT-PEER_LAYOUT', r, 'accepted peer_layout != peer local layout')
                need(all(roles[i]['layout'][j] == pl[j] for j in COMMON), 'REJECT-LOCAL_LAYOUT', r, 'P/D semantic layout mismatch')
                need(roles[i]['side'] != roles[p]['side'], 'REJECT-PEER_ID', r, 'same-side peer')
                peers[i, p] = pl
            elif m in ('alloc','hit','seal','dedup'):
                fields(r, REQUEST + ('h',))
                need(type(r['h']) is int and r['h'] > 0 and type(r['uid']) is int and r['uid'] >= 0
                     and type(r['room']) is int and isinstance(r['rid'],str),
                     'REJECT-LOCAL_REQUEST', r, 'local request context types')
                key=(i,r['h']); context=tuple(r[k] for k in REQUEST)
                need(key not in request_context or request_context[key] == context,
                     'REJECT-LOCAL_REQUEST', r, 'generation changed local request context')
                request_context[key]=context
            elif m == 'd_expect' and type(r.get('res')) is int and r['res'] > 0:
                captured((i,r['h']) in request_context, r, 'D allocation request context')
                need(tuple(r[k] for k in REQUEST) == request_context[i,r['h']],
                     'REJECT-LOCAL_REQUEST', r, 'publication != D local allocation identity')
                pk = identity(r, True); p = old.ident(r['peer'])
                captured((i, p) in peers and (p, i) in peers, r, 'bidirectional accepted handshake')
                pubs[pk] = r; result['publications'] += 1
            elif ev == 'ddesc':
                d = descriptor(r['descriptor'], r); pk = identity(r, True)
                captured(pk in pubs, r, 'prior D publication')
                pub = pubs[pk]
                need(tuple(d[:4]) == pk and d[4] == pub['ntokens'] and old.ident(r['peer']) == old.ident(pub['peer'])
                     and r['a'] == [r['xid']], 'REJECT-D_RETURN_ID', r, 'D return identity/token count')
                need(d[5] == roles[i]['layout'], 'REJECT-D_RETURN_LAYOUT', r, 'D return != independent D layout')
                need(d[6] == old.expand(pub, 'pages'), 'REJECT-D_RETURN_PAGES', r, 'D return != publication')
                need(pk not in descs or descs[pk]['descriptor'] == d, 'REJECT-D_RETURN_ID', r, 'inconsistent repeated return')
                descs[pk] = r; result['descriptors'] += 1
            elif ev == 'ddesc_recv':
                disposition = r['disposition']
                need(type(r['bind']) is bool and r['bind'] == (disposition == 'bound'), 'REJECT-BIND', r, 'bind/disposition mismatch')
                allowed = ('received','queued','bound','duplicate','mismatch','refused_intake','dropped_room',
                           'invalid_message','unregistered_peer','unmatched_timeout','aborted_unmatched','peer_lost_unmatched','failed')
                need(disposition in allowed, 'REJECT-BIND', r, 'unknown disposition')
                if disposition not in ('received','queued','bound'): continue
                pk = identity(r); captured(pk in descs, r, 'prior actual D return')
                d = descriptor(r['descriptor'], r)
                need(d == descs[pk]['descriptor'] and ints(r['wire_pages'], r, 'wire pages') == d[6]
                     and r['ntokens'] == d[4] and old.ident(pubs[pk]['peer']) == i,
                     'REJECT-WIRE_DESCRIPTOR', r, 'received/bound tuple != D actual return')
                rk = (i, pk)
                if disposition == 'received': received[rk] = r; result['received'] += 1
                else:
                    captured(rk in received, r, 'prior wire receive')
                    if disposition == 'bound':
                        fields(r, ('uid','rid'))
                        need(type(r['uid']) is int and r['uid'] >= 0 and isinstance(r['rid'], str) and bool(r['rid']),
                             'REJECT-BIND_ID', r, 'bound local request identity')
                        need(rk not in bound, 'REJECT-BIND_ID', r, 'duplicate successful binding')
                        bound[rk] = r; result['bound'] += 1
            elif r.get('k') == 'match':
                pk = identity(r); rk = (i, pk); captured(rk in bound, r, 'bound receive before match')
                b = bound[rk]
                need((r['uid'],r['rid'],r['ntokens']) == (b['uid'],b['rid'],b['ntokens']),
                     'REJECT-BIND_ID', r, 'binding attached to another local request')
                matches[rk] = r
            elif m == 'p_post' and type(r.get('res')) is int and r['res'] > 0:
                pk = identity(r); rk = (i, pk)
                captured(pk in descs and rk in matches, r, 'D return and successful P binding/match')
                d = descriptor(r['dst_descriptor'], r)
                need(d == descs[pk]['descriptor'], 'REJECT-POST_DESCRIPTOR', r, 'P used tuple != D return')
                need((r['uid'],r['rid']) == (bound[rk]['uid'],bound[rk]['rid']), 'REJECT-BIND_ID', r, 'post != bound request')
                captured((i,r['h']) in request_context, r, 'P local allocation/hit request context')
                need(tuple(r[k] for k in REQUEST) == request_context[i,r['h']],
                     'REJECT-LOCAL_REQUEST', r, 'binding/post != P local generation identity')
                e = r['entry_snapshot']; need(isinstance(e, dict), 'REJECT-TYPE', r, 'entry object')
                captured(all(k in e and e[k] is not None for k in ('src_pages','dst_pages','src_layout','dst_layout','h','peer','room','d_h','xid','ntokens')), r, 'complete entry snapshot')
                for k in ('src_layout','dst_layout'): layout(e[k], r, k)
                for k in ('src_pages','dst_pages'): ints(e[k], r, k)
                need(e['src_layout'] == roles[i]['layout'] and e['dst_layout'] == roles[pk[0]]['layout'],
                     'REJECT-ENTRY_LAYOUT', r, 'entry layouts != independent roles')
                need(e['src_pages'] == old.expand(r,'pages'), 'REJECT-ENTRY_SRC', r, 'entry src != post ordered map')
                need(e['dst_pages'] == old.expand(r,'dst') == d[6], 'REJECT-ENTRY_DST', r, 'entry dst != published destination')
                need(all(type(e[k]) is int for k in ('h','peer','room','d_h','xid','ntokens')) and
                     [e[k] for k in ('peer','room','d_h','xid','ntokens')] == d[:5] and e['h'] == r['h']
                     and r['eid'] == r['res'], 'REJECT-ENTRY_ID', r, 'entry identity != post')
                ek = (i, r['eid']); need(ek not in entries, 'REJECT-ENTRY_ID', r, 'duplicate entry id')
                entries[ek] = dict(post=r, snapshot=e, plan=None, backend=None, engine=None, done=False)
                result['posts'] += 1
            elif ev in ('xfer_plan','xfer_submit','xfer_result'):
                ek = (i, r['eid']); captured(ek in entries, r, 'registered entry for transfer')
                e = entries[ek]; same_context(r,e['post'])
                if ev == 'xfer_plan':
                    need(r['a'] == [r['eid']], 'REJECT-XFER_ID', r, 'plan argument eid')
                    addresses(r,e['snapshot']); e['plan'] = r; result['plans'] += 1
                elif ev == 'xfer_submit':
                    captured(e['plan'] is not None, r, 'plan before submit')
                    addresses(r,e['snapshot'])
                    need([r[k] for k in ARRAYS] == [e['plan'][k] for k in ARRAYS], 'REJECT-SUBMIT_PLAN', r, 'backend arrays != actual plan arrays')
                    boundary = r['boundary']
                    need(boundary in BOUNDARIES and r['status'] == 'attempt' and r['m'] == boundary,
                         'REJECT-SUBMIT_BOUNDARY', r, 'unsupported/malformed submission')
                    which = 'backend' if boundary == BOUNDARIES[0] else 'engine'
                    if which == 'engine': captured(e['backend'] is not None, r, 'backend attempt before engine')
                    need(e[which] is None, 'REJECT-SUBMIT_DUPLICATE', r, 'duplicate transfer attempt')
                    e[which] = r; submits[r['seq']] = dict(record=r, result=None)
                    result[which+'_submits'] += 1
                else:
                    captured(r['submit_seq'] in submits, r, 'matching attempt for transfer result')
                    s = submits[r['submit_seq']]
                    need(s['record']['inst'] == r['inst'] and s['record']['eid'] == r['eid']
                         and s['record']['boundary'] == r['boundary'] and r['m'] == r['boundary']
                         and s['result'] is None, 'REJECT-XFER_RESULT', r, 'result identity/duplicate')
                    need(r['status'] in ('returned','raised'), 'REJECT-XFER_RESULT', r, 'invalid result status')
                    if r['status'] == 'returned': need(type(r.get('res')) is int, 'REJECT-TYPE', r, 'return code integer')
                    else: fields(r, ('exception','message'))
                    s['result'] = r; result['results'] += 1
            elif m == 'p_done':
                ek = (i,r['eid'])
                if ek in entries:
                    e = entries[ek]; captured(e['backend'] is not None, r, 'backend submission before done')
                    s = submits[e['backend']['seq']]; captured(s['result'] is not None, r, 'backend result before done')
                    e['done'] = True
        captured(bool(roles) and result['posts'] > 0, raw[-1], 'non-vacuous successful posts')
        # A rejected call may interrupt an entry; do not invent missing submit evidence.
        for ek,e in entries.items():
            if e['plan'] is None or e['backend'] is None or (require_engine and e['engine'] is None):
                result['pending_entries'].append(list(ek))
            for which in ('backend','engine'):
                if e[which] is not None and submits[e[which]['seq']]['result'] is None:
                    result['pending_entries'].append(list(ek))
        captured(not result['pending_entries'], raw[-1], 'missing plan/required submission/result')
        result['descriptor_prefix_verdict'] = 'CLOSED'
        captured(outcome in ('passed','failed'), raw[-1], 'explicit end outcome required')
        if end < len(records) or outcome != 'passed':
            result['descriptor_verdict'] = 'INCONCLUSIVE_INTERRUPTED'
        else:
            result.update(descriptor_verdict='CLOSED', closed=True)
    except Fault as ex:
        result.update(descriptor_verdict=MISSING if ex.missing else 'REJECT_OBSERVED',
                      error_code=ex.code, error=str(ex), first_error_seq=ex.seq)
    except (ValueError,KeyError,TypeError,IndexError) as ex:
        result.update(descriptor_verdict=MISSING, error_code='MISSING_OR_INVALID_CAPTURE', error=type(ex).__name__+': '+str(ex))
    return result

def read_input(path):
    records = old.read_records(path); outcome = None
    for line in Path(path).read_text().splitlines():
        if line.startswith('{'):
            trailer = json.loads(line)
            if trailer.get('k') == 'end': outcome = trailer.get('outcome')
    return records, outcome

def check(path, out, *, legacy=False, radix=False, timeout=180, require_engine=False):
    path=Path(path).resolve(); out=Path(out).resolve(); out.mkdir(parents=True,exist_ok=False)
    started=old.now(); digest=old.sha(path)
    try:
        records,outcome=read_input(path)
        r=audit(records,outcome=outcome,require_engine=require_engine)
    except (ValueError,TypeError) as ex:
        r=dict(protocol='descriptor-capture',closed=False,descriptor_verdict=MISSING,error_code='ERROR-LOG',error=str(ex))
    r.update(source=str(path),source_sha256=digest,started=started)
    if legacy:
        from check_rejected import check as old_check
        r['legacy']=old_check(path,out/'legacy',radix,'production',timeout=timeout)
        r['legacy_verdict']=r['legacy']['verdict']
    if old.sha(path)!=digest:
        r.update(closed=False,descriptor_verdict=MISSING,error_code='ERROR-INPUT_CHANGED')
    r['finished']=old.now(); (out/'result.json').write_text(json.dumps(r,indent=2)+'\n')
    return r

def main():
    p=argparse.ArgumentParser(description=__doc__); p.add_argument('source'); p.add_argument('out')
    p.add_argument('--legacy',action='store_true'); p.add_argument('--radix',action='store_true')
    p.add_argument('--require-engine',action='store_true'); p.add_argument('--timeout',type=int,default=180)
    a=p.parse_args(); r=check(a.source,a.out,legacy=a.legacy,radix=a.radix,timeout=a.timeout,require_engine=a.require_engine)
    print(json.dumps(r,ensure_ascii=False))
    return 0 if r['closed'] else (1 if r['descriptor_verdict']=='REJECT_OBSERVED' else 2)

if __name__=='__main__': raise SystemExit(main())
