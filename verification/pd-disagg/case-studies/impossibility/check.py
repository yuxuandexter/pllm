#!/usr/bin/env python3
"""Physical impossibility, standard-library SMT-LIB runner; never imports an unpinned z3py.

This checks the finite *release witness projection* of an infinite-family
argument. LegacyImpossibility.tla supplies the universal time/policy argument.
SAT controls establish consistency of this projection, not whole-engine proofs.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import os
from pathlib import Path
import signal
import subprocess
import time

SOLVER = None
PIN = '56e1b909c7462653471012478f317143c8eb77a3cea085d6ad5422084d8d63e5'
PRELUDE = '''(set-option :produce-unsat-cores true)
(set-option :produce-models true)
(set-option :timeout 5000)
(set-logic QF_UFLIA)
; Hist is a COMPLETE local observation prefix, not only its last event.
(declare-sort Hist 0)
(declare-fun pi (Hist Int Int Int Int Int Int) Bool)
(declare-const h_failed Hist)
(declare-const h_late Hist)
(declare-const release_failed Bool)
(declare-const release_late Bool)
(declare-const gen_checked Bool)
(declare-const hw_fence Bool)
(declare-const cut Int)
(declare-const land Int)
(declare-const batch Int)
(declare-const length Int)
(declare-const prefix Int)
(declare-const page Int)
(declare-const chunk Int)
(declare-const old_value Int)
(declare-const expected_value Int)
(declare-const cross_access Bool)
(declare-const consumed Bool)
(declare-const observed_value Int)
'''
# The arbitrary descriptor dimensions are part of the common history. They are
# not upper-bounded, and not claimed to implement batch/layout arithmetic here.
CLAIMS = {
    'Env_Domain': '(and (>= cut 0) (>= land 0) (> batch 0) (> length 0) '
                  '(>= prefix 0) (< prefix length) (>= page 0) (>= chunk 0) '
                  '(distinct old_value expected_value))',
    'Env_PhysicalMemory': '(and (= cross_access (and release_late (>= land cut) (not hw_fence))) '
                          '(= observed_value (ite cross_access old_value expected_value)) '
                          '(= consumed (not (and gen_checked cross_access))))',
    'DelayedAccess': '(and (= h_late h_failed) (> land cut) (not hw_fence))',
    'LocalPolicy': '(and (= release_failed (pi h_failed batch length prefix page chunk cut)) (= release_late (pi h_late batch length prefix page chunk cut)))',
    'NoGenerationValidation': '(not gen_checked)',
    'P_Isolation': '(not cross_access)',
    'P_Finality': 'release_failed',
    'P_Integrity': '(=> consumed (= observed_value expected_value))',
}

STOP_EVIDENCE_PRELUDE = '''(set-option :produce-unsat-cores true)
(set-option :produce-models true)
(set-option :timeout 5000)
(set-logic QF_UFLIA)
(declare-sort Hist 0)
(declare-fun stopEvidencePolicy (Hist Bool) Bool)
(declare-const h Hist)
(declare-const cut Int)
(declare-const land Int)
(declare-const failed_stop Int)
(declare-const late_stop Int)
(declare-const failed_release Int)
(declare-const late_release Int)
(declare-const old_gen Int)
(declare-const new_gen Int)
(declare-const consume_time Int)
(declare-const read_gen Int)
(declare-const old_value Int)
(declare-const expected_value Int)
(declare-const read_value Int)
'''
STOP_EVIDENCE_CLAIMS = {
    'Domain': '(and (>= cut 1) (> land cut) (>= old_gen 0) (= new_gen (+ old_gen 1)))',
    'EventualStopEvidence': '(and (= failed_stop cut) (= late_stop (+ land 1)))',
    'ReleaseAfterEvidence': '(and (= failed_release failed_stop) (= late_release late_stop) '
                              '(stopEvidencePolicy h true) (not (stopEvidencePolicy h false)))',
    'P_Isolation': '(> late_release land)',
    'P_Finality': '(and (>= failed_release 0) (>= late_release 0))',
    'NewOwnerRead': '(and (>= consume_time (+ late_release 1)) (= read_gen new_gen) '
                      '(distinct old_value expected_value) '
                      '(= read_value (ite (>= consume_time late_release) expected_value old_value)))',
    'P_Integrity': '(and (= read_gen new_gen) (= read_value expected_value))',
    'P_GenDistinct': '(distinct old_gen new_gen)',
}


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def atomic(path: Path, data: str) -> None:
    tmp = path.with_name(path.name + '.new')
    tmp.write_text(data)
    assert tmp.stat().st_size and tmp.read_text().splitlines()[-1] == data.splitlines()[-1]
    os.replace(tmp, path)


def solve(out: Path, name: str, expected: str, prelude: str, claims: dict,
          description: str, extra: dict | None = None) -> dict:
    selected = dict(claims)
    selected.update(extra or {})
    text = prelude + '\n'.join(f'(assert (! {formula} :named {key}))'
                              for key, formula in selected.items())
    text += '\n(check-sat)\n' + ('(get-unsat-core)\n' if expected == 'unsat' else '(get-model)\n')
    text += '(exit)\n'
    smt = out / (name + '.smt2')
    atomic(smt, text)
    start = time.monotonic()
    with (out / (name + '.out')).open('w') as log:
        # Dedicated group so a timeout cannot strand a backend or its children.
        p = subprocess.Popen([str(SOLVER), '-smt2', str(smt)], stdout=log,
                             stderr=subprocess.STDOUT, start_new_session=True)
        with (out / 'processes.tsv').open('a') as f:
            f.write(f'{name}\t{p.pid}\t{p.pid}\t{smt}\n')
        try:
            rc = p.wait(timeout=15)
        except subprocess.TimeoutExpired:
            os.killpg(p.pid, signal.SIGTERM)
            try:
                p.wait(timeout=2)
            except subprocess.TimeoutExpired:
                os.killpg(p.pid, signal.SIGKILL)
                p.wait()
            rc = 124
    raw = (out / (name + '.out')).read_text()
    first = raw.splitlines()[0].strip() if raw.strip() else 'empty'
    try:
        os.killpg(p.pid, 0)
        group_exited = False
    except ProcessLookupError:
        group_exited = True
    record = {'name': name, 'expected': expected, 'actual': first, 'returncode': rc,
              'seconds': round(time.monotonic() - start, 4), 'description': description,
              'smt2_sha256': sha(smt), 'output_sha256': sha(out / (name + '.out')),
              'assertions': list(selected), 'process_group': p.pid,
              'process_group_exited': group_exited,
              'matched': first == expected and rc == 0 and group_exited}
    if first == 'unsat':
        record['core'] = raw.splitlines()[1] if len(raw.splitlines()) > 1 else ''
    print(json.dumps(record, ensure_ascii=False), flush=True)
    return record


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    global SOLVER, PIN
    parser.add_argument('--solver', type=Path, required=True)
    parser.add_argument('--solver-sha256', required=True)
    parser.add_argument('--out', type=Path, required=True)
    args = parser.parse_args()
    SOLVER = args.solver.resolve()
    PIN = args.solver_sha256
    args.out.mkdir(parents=True, exist_ok=False)
    (args.out/'predicted-at.txt').write_text(subprocess.check_output(['date','-u','+%FT%TZ'], text=True))
    if sha(SOLVER) != PIN:
        raise SystemExit('FAIL: solver hash differs from supplied pin')
    version = subprocess.check_output([str(SOLVER), '-version'], text=True).strip()
    if version != 'Z3 version 4.8.9 - 64 bit':
        raise SystemExit('FAIL: solver version mismatch')
    cases = []
    cases.append(solve(args.out, 'legacy', 'unsat', PRELUDE, CLAIMS,
                       'DelayedAccess+LocalPolicy+NoGenerationValidation, physical Isolation, Integrity, finite-release Finality'))
    for axiom in ['DelayedAccess', 'LocalPolicy', 'NoGenerationValidation']:
        claims = {k: v for k, v in CLAIMS.items() if k != axiom}
        expected = 'unsat' if axiom == 'NoGenerationValidation' else 'sat'
        cases.append(solve(args.out, 'drop_' + axiom, expected, PRELUDE, claims,
                           'Delete only this named axiom; do not weaken Isolation'))
    cases.append(solve(args.out, 'physical_core', 'unsat', PRELUDE,
                       {k: v for k, v in CLAIMS.items() if k not in ['NoGenerationValidation', 'P_Integrity']},
                       'Stronger theorem: NoGenerationValidation and Integrity are unnecessary for the contradiction'))
    cases.append(solve(args.out, 'hold_forever', 'sat', PRELUDE,
                       {k: v for k, v in CLAIMS.items() if k != 'P_Finality'},
                       'Safe at this cut, failed page not released; full infinite case is in TLA'))
    cases.append(solve(args.out, 'software_gen_detects_but_accesses', 'sat', PRELUDE,
                       {k: v for k, v in CLAIMS.items() if k not in ['NoGenerationValidation', 'P_Isolation']},
                       'Integrity by discard is consistent with an actual physical isolation violation',
                       {'Control_GenCheck': 'gen_checked', 'Control_Access': 'cross_access'}))
    claims = {k: v for k, v in CLAIMS.items() if k != 'DelayedAccess'}
    cases.append(solve(args.out, 'bounded_completed_before_release', 'sat', PRELUDE, claims,
                       'Concrete remove-DelayedAccess control: access completed before release; same local policy',
                       {'Control_KnownBound': '(and (< land cut) (= h_late h_failed) (not hw_fence))'}))
    cases.append(solve(args.out, 'same_tick_release_and_access', 'unsat', PRELUDE, claims,
                       'TLA Isolation includes the release tick: simultaneous old access is unsafe',
                       {'Control_SameTick': '(and (= land cut) (= h_late h_failed) (not hw_fence))'}))
    claims = dict(CLAIMS)
    claims['DelayedAccess'] = '(and (= h_late h_failed) (> land cut))'
    del claims['NoGenerationValidation']
    cases.append(solve(args.out, 'hardware_fence_strengthening', 'sat', PRELUDE, claims,
                       'NOT a drop-NoGenerationValidation result: also remove irrevocable raw-DMA semantics from DelayedAccess',
                       {'Control_HardwareFence': '(and hw_fence gen_checked)'}))
    cases.append(solve(args.out, 'stop_evidence', 'sat', STOP_EVIDENCE_PRELUDE, STOP_EVIDENCE_CLAIMS,
                       'stop-evidence witness under eventual sound stop evidence and local processing; not full PdCore'))
    report = {'solver': str(SOLVER), 'solver_sha256': PIN, 'version': version,
              'script_sha256': sha(Path(__file__)), 'cases': cases,
              'all_predictions_matched': all(c['matched'] for c in cases),
              'original_brief_three_necessary_axioms_satisfied': False,
              'reason': 'drop_NoGenerationValidation remains UNSAT with physical Isolation'}
    atomic(args.out / 'results.json', json.dumps(report, ensure_ascii=False, indent=2) + '\n')
    return 0 if report['all_predictions_matched'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
