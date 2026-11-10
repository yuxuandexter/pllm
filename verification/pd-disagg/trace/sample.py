#!/usr/bin/env python3
"""One unchanged the contract CPU fake server: cold dedup, warm hit, then D page growth."""
import argparse
import concurrent.futures
from copy import deepcopy
import json
import os
from pathlib import Path
import signal
import subprocess
import sys
import time
import urllib.request

from ddesc_audit_cpu import audit, records, Invalid

KIT = Path(__file__).resolve().parent


def run(tree, out, port):
    out.mkdir(parents=True, exist_ok=False)
    (out/'predictions.json').write_text(json.dumps(dict(registered=subprocess.check_output(['date','-u','+%FT%TZ'], text=True).strip(), baseline='audit accepts ten CPU transfers', mutations={'entry_src':'ENTRY_SOURCE','plan_layer_missing':'ADDRESS_COVERAGE','submit_layer_swap':'ADDRESS_COVERAGE','bool_layout':'MISSING_LAYOUT','missing_layout':'MISSING_LAYOUT'}), indent=2)+'\n')
    env = dict(os.environ, MINISGL_PD_E2E_FAKE='1', MINISGL_PD_LEDGER_IMPL='python', MINISGL_PD_TRACE='1',
               MINISGL_PD_TRACE_DDESC='1', PYTHONDONTWRITEBYTECODE='1')
    with (out/'server.log').open('w') as log:
        p = subprocess.Popen([sys.executable, '-B', str(KIT/'server.py'), '--tree', str(tree),
                              '--out', str(out), '--port', str(port), '--page-size', '64',
                              '--p-pages', '48', '--d-pages', '96', '--radix'],
                             env=env, stdout=log, stderr=subprocess.STDOUT, start_new_session=True)
        (out/'pgid.txt').write_text(str(p.pid)+'\n')
        prompts = {p['id']: p for p in json.loads((KIT/'prompts.json').read_text())['prompts']}
        def request(name, j):
            prompt = prompts[name]
            req = urllib.request.Request(f'http://127.0.0.1:{port}/v1/completions',
                json.dumps(dict(prompt=prompt['text'], max_tokens=prompt['max_tokens'],
                                rid=f'ddesc19.sample.{j}', bootstrap_room=200000+j)).encode(),
                {'Content-Type': 'application/json'})
            with urllib.request.urlopen(req, timeout=55) as r:
                text = r.read().decode()
            assert '[ERROR]' not in text and 'data: tok' in text and '[DONE]' in text, text
            return dict(id=name, text=text)
        try:
            end = time.monotonic()+60
            while True:
                assert p.poll() is None, p.returncode
                try:
                    with urllib.request.urlopen(f'http://127.0.0.1:{port}/v1/models', timeout=1):
                        break
                except OSError:
                    if time.monotonic() > end:
                        raise TimeoutError('server startup')
                    time.sleep(.1)
            with concurrent.futures.ThreadPoolExecutor(max_workers=8) as pool:
                fs = [pool.submit(request, f'share{j}', j) for j in range(8)]
                responses = [f.result() for f in fs]
            responses += [request('share0', 8), request('suffix_pressure', 9)]
        finally:
            if p.poll() is None:
                os.killpg(p.pid, signal.SIGTERM)
            try:
                p.wait(timeout=15)
            except subprocess.TimeoutExpired:
                os.killpg(p.pid, signal.SIGKILL); p.wait(timeout=5)
            try:
                os.killpg(p.pid, 0)
            except ProcessLookupError:
                (out/'cleanup.txt').write_text(f'PGID {p.pid}: absent\n')
            else:
                raise AssertionError('server process group remains')
    assert p.returncode == 0
    raw = records(out/'raw.pdt'); result = audit(raw)
    assert result['posts'] == result['plans'] == result['submits'] == 10
    assert result['dgrow'] and result['nonmonotonic_descriptors']
    assert result['events'].get('hit') and result['events'].get('dedup')
    assert result['first_rejected_seq'] is None
    negatives = []
    for name, expected in [('entry_src', 'ENTRY_SOURCE'), ('plan_layer_missing', 'ADDRESS_COVERAGE'),
                           ('submit_layer_swap', 'ADDRESS_COVERAGE'), ('bool_layout', 'MISSING_LAYOUT'),
                           ('missing_layout', 'MISSING_LAYOUT')]:
        changed = deepcopy(raw)
        if name == 'entry_src':
            r = next(r for r in changed if r.get('ev') == 'post')
            r['entry_snapshot']['src_pages'][0] += 1
        elif name in ('bool_layout', 'missing_layout'):
            r = next(r for r in changed if r.get('k') == 'role')
            if name == 'bool_layout': r['layout'][0] = True
            else: del r['layout']
        else:
            r = next(r for r in changed if r.get('ev') == ('xfer_plan' if name.startswith('plan') else 'xfer_submit'))
            for key in ('src_addrs', 'dst_addrs', 'nbytes'):
                if name.startswith('plan'): r[key] = r[key][:-1]
                else: r[key][0], r[key][-1] = r[key][-1], r[key][0]
        path = out/(name+'.pdt')
        path.write_text(''.join('PDT '+json.dumps(r, separators=(',', ':'))+'\n' for r in changed))
        try:
            audit(changed)
        except Invalid as e:
            assert e.code == expected, (name, e.code)
            negatives.append(dict(name=name, expected=expected, actual=e.code, seq=e.seq))
        else:
            raise AssertionError('mutation survived '+name)
    (out/'summary.json').write_text(json.dumps(dict(audit=result, responses=responses, negatives=negatives), indent=2)+'\n')
    print(json.dumps(dict(audit=result, negative_samples=len(negatives))))


if __name__ == '__main__':
    ap = argparse.ArgumentParser(); ap.add_argument('--tree', type=Path, required=True); ap.add_argument('--out', type=Path, required=True)
    ap.add_argument('--port', type=int, default=19330)
    a = ap.parse_args(); run(a.tree, a.out, a.port)
