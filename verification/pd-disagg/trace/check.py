#!/usr/bin/env python3
"""CPU observation and mutation gate, adapted from the descriptor calibration suite."""
import argparse
from copy import deepcopy
import hashlib
import json
from pathlib import Path
import subprocess


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--source', type=Path, default=Path(__file__).with_name('example.pdt'))
    p.add_argument('--out', type=Path, required=True)
    a = p.parse_args()
    a.out.mkdir(parents=True, exist_ok=False)
    source = a.source.read_bytes()
    records = [json.loads(line.split('PDT ', 1)[1]) for line in source.decode().splitlines() if line.startswith('PDT ')]
    plans = [('baseline', 'CLOSED', ''), ('entry_src', 'REJECT_OBSERVED', 'REJECT-ENTRY_SRC'),
             ('return_layout', 'REJECT_OBSERVED', 'REJECT-D_RETURN_LAYOUT'),
             ('bool_layout', 'REJECT_OBSERVED', 'REJECT-TYPE'),
             ('missing_layout', 'INCONCLUSIVE_MISSING_CAPTURE', 'MISSING_CAPTURE'),
             ('require_engine', 'INCONCLUSIVE_MISSING_CAPTURE', 'MISSING_CAPTURE')]
    predictions = []
    for name, verdict, code in plans:
        changed = deepcopy(records)
        if name == 'entry_src':
            row = next(r for r in changed if r.get('ev') == 'post')
            row['entry_snapshot']['src_pages'][0] += 1
        elif name == 'return_layout':
            row = next(r for r in changed if r.get('ev') == 'ddesc')
            row['descriptor'][5][8] += 1
        elif name in ('bool_layout', 'missing_layout'):
            row = next(r for r in changed if r.get('k') == 'role')
            if name == 'bool_layout':
                row['layout'][0] = True
            else:
                del row['layout']
        path = a.out/(name+'.pdt')
        path.write_text(''.join('PDT '+json.dumps(r, separators=(',', ':'))+'\n' for r in changed)
                        + '{"k":"end","outcome":"passed"}\n')
        predictions.append(dict(name=name, expected=verdict, code=code,
                                sha256=hashlib.sha256(path.read_bytes()).hexdigest()))
    stamp = subprocess.check_output(['date', '-u', '+%FT%TZ'], text=True).strip()
    (a.out/'predictions.json').write_text(json.dumps(dict(registered=stamp,
        source_sha256=hashlib.sha256(source).hexdigest(), cases=predictions), indent=2)+'\n')
    # Import only after every input, expected verdict and timestamp has been frozen.
    from check_descriptor import audit, read_input
    results = []
    for prediction in predictions:
        path = a.out/(prediction['name']+'.pdt')
        assert hashlib.sha256(path.read_bytes()).hexdigest() == prediction['sha256']
        raw, outcome = read_input(path)
        r = audit(raw, outcome=outcome, require_engine=prediction['name'] == 'require_engine')
        match = r['descriptor_verdict'] == prediction['expected'] and r['error_code'] == prediction['code']
        results.append(dict(name=prediction['name'], expected=prediction['expected'],
                            actual=r['descriptor_verdict'], expected_code=prediction['code'],
                            code=r['error_code'], matched=match, closed=r['closed']))
    assert hashlib.sha256(a.source.read_bytes()).hexdigest() == hashlib.sha256(source).hexdigest()
    (a.out/'results.json').write_text(json.dumps(results, indent=2)+'\n')
    print(json.dumps(dict(matched=sum(r['matched'] for r in results), total=len(results), results=results)))
    return 0 if all(r['matched'] for r in results) else 1


if __name__ == '__main__':
    raise SystemExit(main())
