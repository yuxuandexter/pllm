#!/usr/bin/env python3
"""Use source mutations to check whether CPU tests detect broken ledger behavior."""
import argparse
import ast
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import signal
import subprocess
import sys

MUTANTS = {
    'timeoutFrees': ('_quarantine_xfer', 'self._quarantine(p, reason, x.peer)',
                    'self.pst[p] = FREE\n                self.pown[p] = 0\n                self.free.append(p)'),
    'generationIgnored': ('_check_msg', 'x.peer != peer or x.room != room or x.gen != gen',
                          'x.peer != peer or x.room != room'),
    'kIndptrOffByOne': ('_kargs', 'ip.append(ip[-1] + wr)', 'ip.append(ip[-1] + wr + 1)'),
}


def mutate(tree, name):
    method, old, new = MUTANTS[name]
    path = tree/'python/minisgl/disagg/ledger.py'
    text = path.read_text()
    matches = [m for m in re.finditer(rf'^    def {method}\(', text, re.M)
               if m.start() > text.index('class PdLedger:')]
    assert len(matches) == 1, (name, 'method not unique')
    begin = matches[0].start()
    tail = re.search(r'^    (?:def |class |@)', text[text.find('\n', begin)+1:], re.M)
    end = len(text) if tail is None else text.find('\n', begin)+1+tail.start()
    part = text[begin:end]
    assert part.count(old) == 1, (name, 'source drift')
    changed = text[:begin]+part.replace(old, new)+text[end:]
    ast.parse(changed)
    path.write_text(changed)


def run(tree, output, timeout):
    env = dict(os.environ, PYTHONPATH=str(tree/'python'), PYTHONDONTWRITEBYTECODE='1',
               MINISGL_PD_LEDGER_IMPL='python', CUDA_VISIBLE_DEVICES='', MALLOC_ARENA_MAX='2',
               OPENBLAS_NUM_THREADS='1', OMP_NUM_THREADS='1')
    tests = [f'tests/disagg/test_{name}.py' for name in ('ledger', 'pyledger', 'kargs')]
    cmd = [sys.executable, '-B', '-m', 'pytest', '-q', '-o', 'addopts=', '-p', 'no:cacheprovider']+tests
    with (output/'pytest.log').open('w') as log:
        proc = subprocess.Popen(cmd, cwd=tree, env=env, stdout=log, stderr=subprocess.STDOUT,
                                start_new_session=True)
        (output/'pgid.txt').write_text(str(proc.pid)+'\n')
        try:
            rc = proc.wait(timeout=timeout)
        except subprocess.TimeoutExpired:
            rc = 124
        finally:
            try:
                os.killpg(proc.pid, signal.SIGTERM)
            except ProcessLookupError:
                pass
            try:
                proc.wait(timeout=5)
            except subprocess.TimeoutExpired:
                os.killpg(proc.pid, signal.SIGKILL)
                proc.wait(timeout=5)
    try:
        os.killpg(proc.pid, 0)
        cleaned = False
    except ProcessLookupError:
        cleaned = True
    text = (output/'pytest.log').read_text()
    passed = re.search(r'(\d+) passed', text)
    failed = re.search(r'(\d+) failed', text)
    errors = re.search(r'\d+ errors?|ERROR collecting|ImportError|SyntaxError|MemoryError|not enough memory', text)
    verdict = 'ERROR'
    if cleaned and not errors:
        if rc == 0 and passed:
            verdict = 'CLEAN'
        elif rc == 1 and failed and 'FAILED ' in text:
            verdict = 'KILLED'
    return dict(actual=verdict, returncode=rc, group_exited=cleaned,
                passed=int(passed[1]) if passed else 0, failed=int(failed[1]) if failed else 0)


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--out', type=Path, required=True)
    ap.add_argument('--timeout', type=int, default=90)
    a = ap.parse_args()
    a.out = a.out.resolve()
    a.out.mkdir(parents=True, exist_ok=False)
    repo_root = Path(__file__).resolve().parents[3]
    expected = {'clean': 'CLEAN', **{name: 'KILLED' for name in MUTANTS}}
    stamp = subprocess.check_output(['date', '-u', '+%FT%TZ'], text=True).strip()
    prediction = dict(registered=stamp, expected=expected,
        source_sha256=hashlib.sha256((repo_root/'python/minisgl/disagg/ledger.py').read_bytes()).hexdigest())
    (a.out/'predictions.json').write_text(json.dumps(prediction, indent=2)+'\n')
    results = []
    for name, verdict in expected.items():
        output = a.out/name
        tree = output/'engine'
        shutil.copytree(repo_root/'python', tree/'python', symlinks=True)
        shutil.copytree(repo_root/'tests/disagg', tree/'tests/disagg', symlinks=True)
        if name != 'clean':
            mutate(tree, name)
        result = dict(name=name, expected=verdict, **run(tree, output, a.timeout))
        result['matched'] = result['actual'] == verdict
        results.append(result)
        print(json.dumps(result), flush=True)
        if name == 'clean' and not result['matched']:
            break
    (a.out/'results.json').write_text(json.dumps(results, indent=2)+'\n')
    return 0 if len(results) == len(expected) and all(r['matched'] for r in results) else 1


if __name__ == '__main__':
    raise SystemExit(main())
