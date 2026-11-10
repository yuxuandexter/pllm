#!/usr/bin/env python3
"""descriptor-capture capture sanity only, not trace conformance closure or proof. No ledger/plan_copy import."""
import argparse
from collections import Counter
from copy import deepcopy
import hashlib
import json
from pathlib import Path


def records(path):
    return [json.loads(s.split('PDT ', 1)[1]) for s in path.read_text().splitlines() if 'PDT ' in s]


def ints(v, n=None):
    return isinstance(v, list) and all(type(x) is int for x in v) and (n is None or len(v) == n)


def pages(r, key):
    return [a+j for a, n in r[key] for j in range(n)]


class Invalid(ValueError):
    def __init__(self, code, r, detail):
        self.code, self.seq = code, r.get('seq')
        super().__init__(detail)


def need(ok, code, r, detail):
    if not ok:
        raise Invalid(code, r, detail)


def audit(raw):
    roles, descs, pubs, maps, entries, plans, submits = {}, {}, {}, {}, {}, {}, {}
    counts, sizes, dispositions = Counter(), Counter(), Counter()
    rejected, nonmonotonic, grown = None, 0, 0
    for r in raw:
        if r.get('k') == 'rejected':
            rejected = r['seq']
            break
        ev = r.get('ev', r['k']); inst = r.get('inst'); key = (inst, r.get('h'))
        counts[ev] += 1
        sizes[ev] += len(('PDT '+json.dumps(r, separators=(',', ':'))+'\n').encode())
        if r['k'] == 'role':
            need(r.get('ddesc_v') == 1 and ints(r.get('layout'), 9), 'MISSING_LAYOUT', r, 'nine integers, bool refused')
            need('capture_error' not in r, 'MISSING_CAPTURE', r, 'independent local layout')
            roles[inst] = r['layout']
        elif ev == 'peer' and r['res'] == 0:
            need(r.get('ddesc_v') == 1 and ints(r.get('peer_layout'), 9), 'MISSING_PEER', r, 'handshake input')
            need(r['peer_layout'] == roles[r['peer']], 'PEER_LAYOUT', r, 'peer input vs peer role')
            need([roles[inst][j] for j in (0, 1, 2, 3, 4, 7, 8)] ==
                 [r['peer_layout'][j] for j in (0, 1, 2, 3, 4, 7, 8)], 'COMMON_LAYOUT', r, 'seven shared fields')
        elif ev == 'alloc':
            maps[key] = r['after']; grown += r.get('action') == 'DGrow'
        elif ev in ('hit', 'seal', 'dedup'):
            maps[key] = r['map_after']
        elif ev == 'publish':
            need(pages(r, 'pages') == maps[key], 'PUBLISH_MAP', r, 'publication vs independent alloc')
            pubs[(inst, r['room'], r['h'], r['xid'])] = pages(r, 'pages')
        elif ev == 'ddesc':
            d = r.get('descriptor')
            need(r.get('ddesc_v') == 1 and isinstance(d, list) and len(d) == 7, 'MISSING_RETURN', r, 'actual tuple')
            need(all(type(x) is int for x in d[:5]) and ints(d[5], 9) and ints(d[6]), 'RETURN_TYPE', r, 'integer tuple')
            identity = (hex(d[0]), d[1], d[2], d[3])
            need(identity == (inst, r['room'], r['h'], r['xid']), 'RETURN_ID', r, 'identity')
            need(d[5] == roles[inst], 'D_LAYOUT', r, 'return vs independent D layout')
            need(d[6] == pubs[identity] == maps[key], 'D_ORDER', r, 'return vs publication/alloc')
            need(len(d[6]) == (d[4]+d[5][1]-1)//d[5][1], 'LENGTH', r, 'tokens/pages')
            descs[identity] = d; nonmonotonic += d[6] != sorted(d[6])
        elif ev == 'ddesc_recv':
            dispositions[r['disposition']] += 1
            need(type(r.get('bind')) is bool and r['bind'] == (r['disposition'] == 'bound'), 'BIND', r, 'disposition')
            if r['disposition'] in ('received', 'queued', 'bound'):
                d = descs[(r['peer'], r['room'], r['d_h'], r['xid'])]
                need(r['descriptor'] == d and r['wire_pages'] == d[6], 'WIRE_DESCRIPTOR', r, 'actual received tuple/pages')
        elif ev == 'post' and r['res'] > 0:
            d = descs[(r['peer'], r['room'], r['d_h'], r['xid'])]
            need(r.get('dst_descriptor') == d, 'POST_D_DESCRIPTOR', r, 'used tuple vs independent D return')
            e = r.get('entry_snapshot')
            need(r.get('ddesc_v') == 1 and isinstance(e, dict), 'MISSING_ENTRY', r, 'registered snapshot')
            for field in ('src_pages', 'dst_pages', 'src_layout', 'dst_layout'):
                need(ints(e.get(field), 9 if 'layout' in field else None), 'ENTRY_TYPE', r, field)
            need(e['src_layout'] == roles[inst] and e['dst_layout'] == roles[r['peer']], 'ENTRY_LAYOUT', r, 'local layouts')
            need(e['src_pages'] == pages(r, 'pages') == maps[key][:len(d[6])], 'ENTRY_SOURCE', r, 'source vs P map')
            need(e['dst_pages'] == pages(r, 'dst') == d[6], 'ENTRY_DEST', r, 'destination vs D return')
            need([e[k] for k in ('peer', 'room', 'd_h', 'xid', 'ntokens')] == d[:5] and e['h'] == r['h'], 'ENTRY_ID', r, 'entry identity')
            need(len(e['src_pages']) == len(e['dst_pages']), 'LENGTH', r, 'source/destination lengths')
            for pp, lay in ((e['src_pages'], e['src_layout']), (e['dst_pages'], e['dst_layout'])):
                need(len(set(pp)) == len(pp) and all(0 <= p < lay[5]-1 for p in pp), 'PAGES', r, 'duplicate/dummy/range')
            entries[(inst, r['eid'])] = e
        elif ev in ('xfer_plan', 'xfer_submit'):
            need(r.get('ddesc_v') == 1, 'MISSING_ARRAYS', r, 'version')
            e = entries[(inst, r['eid'])]; sl, dl = e['src_layout'], e['dst_layout']
            need((r['h'], r['room'], r['d_h'], r['xid'], r['peer']) ==
                 (e['h'], e['room'], e['d_h'], e['xid'], hex(e['peer'])), 'ARRAY_ID', r, 'context')
            for field in ('src_addrs', 'dst_addrs', 'nbytes'):
                need(ints(r.get(field)), 'ARRAY_TYPE', r, field)
            ss, ds, ns = (r[k] for k in ('src_addrs', 'dst_addrs', 'nbytes'))
            need(len(ss) == len(ds) == len(ns), 'ARRAY_LENGTH', r, 'triples')
            block = sl[1]*sl[2]*sl[3]*sl[4]
            need(all(n > 0 and n % block == 0 for n in ns), 'BLOCK_LENGTH', r, 'whole pages')
            # Independent expansion; preserve kv, layer and ordinal, including merged runs.
            expected = [(sl[6]+((kv*sl[0]+layer)*sl[5]+s)*block,
                         dl[6]+((kv*dl[0]+layer)*dl[5]+d)*block, block)
                        for kv in range(2) for layer in range(sl[0])
                        for s, d in zip(e['src_pages'], e['dst_pages'])]
            actual = [(s+off, d+off, block) for s, d, n in zip(ss, ds, ns) for off in range(0, n, block)]
            need(actual == expected, 'ADDRESS_COVERAGE', r, 'all layers/KV/ordered pages')
            if ev == 'xfer_plan':
                plans[(inst, r['eid'])] = r
            else:
                need((inst, r['eid']) in plans and r['status'] == 'attempt', 'SUBMIT_ORDER', r, 'plan then attempt')
                submits[r['seq']] = r
        elif ev == 'xfer_result':
            need(r['submit_seq'] in submits and r['status'] in ('returned', 'raised'), 'RESULT', r, 'attempt then outcome')
    return dict(status='CAPTURE_SANITY_OK', closed=False, first_rejected_seq=rejected,
                events=dict(counts), event_bytes=dict(sizes), posts=len(entries), plans=len(plans),
                submits=len(submits), dispositions=dict(dispositions),
                nonmonotonic_descriptors=nonmonotonic, dgrow=grown)
