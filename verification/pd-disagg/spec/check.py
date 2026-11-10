#!/usr/bin/env python3
"""Bounded TLC safety check. Never convert a timeout or incomplete run into PASS."""
import argparse
import json
import os
from pathlib import Path
import re
import shutil
import signal
import subprocess


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--out', type=Path, required=True)
    p.add_argument('--config', choices=('small', 'push', 'pull'), default='small')
    p.add_argument('--timeout', type=int, default=300)
    a = p.parse_args()
    here = Path(__file__).resolve().parent
    a.out = a.out.resolve()
    a.out.mkdir(parents=True, exist_ok=False)
    for name in ('PdCore.tla', 'MC_pd_ind.tla', a.config+'.cfg'):
        shutil.copyfile(here/name, a.out/name)
    with (a.out/'tlc.log').open('w') as log:
        proc = subprocess.Popen(['bash', str(here/'tlc.sh'), str(a.out), 'MC_pd_ind',
                                 '-deadlock', '-coverage', '1', '-config', a.config+'.cfg'],
                                stdout=log, stderr=subprocess.STDOUT, start_new_session=True)
        (a.out/'pgid.txt').write_text(str(proc.pid)+'\n')
        try:
            rc = proc.wait(timeout=a.timeout)
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
    text = (a.out/'tlc.log').read_text()
    states = re.findall(r'([\d,]+) distinct states found', text)
    complete = (rc == 0 and cleaned and states and int(states[-1].replace(',', '')) > 0
                and 'Model checking completed. No error has been found.' in text
                and '0 states left on queue' in text and 'Finished in' in text
                and not re.search(r'(^Error:|is violated|OutOfMemory|StackOverflow|Exception)', text, re.M))
    verdict = 'PASS_BOUNDED_SAFETY' if complete else 'INCONCLUSIVE_OR_VIOLATED'
    report = dict(verdict=verdict, returncode=rc, group_exited=cleaned,
                  config=a.config, deadlock_checked=False, action_coverage_reviewed=False,
                  scope='Reachable states in this finite configuration; not induction or a proof.')
    (a.out/'result.json').write_text(json.dumps(report, indent=2)+'\n')
    print(json.dumps(report))
    return 0 if complete else 1


if __name__ == '__main__':
    raise SystemExit(main())
