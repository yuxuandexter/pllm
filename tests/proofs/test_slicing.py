"""Regressions for source-preserving proof slicing; no TLAPS required."""
import argparse
import copy
import json
import os
from pathlib import Path
import sys
import tempfile
import threading
import time
import unittest
from unittest.mock import patch

# The proof tools are standalone scripts in a directory whose name contains '-'.
PROOFS = Path(__file__).resolve().parents[2] / "verification/pd-disagg/proofs"
sys.path.insert(0, str(PROOFS))
try:
    from slicing import Runtime, add_arguments, plan, validate, reconcile, structure, validate_args
    from verify import replay, read_summary, HERE
finally:
    sys.path.pop(0)

TEXT = '''---- MODULE Mini ----
EXTENDS TLAPS
(* THEOREM Fake == FALSE *)
THEOREM A == TRUE
<1>1. TRUE
  OBVIOUS
<1>2. TRUE
  OBVIOUS
<1> QED BY <1>1,
    <1>2
USE DEF A
THEOREM B == TRUE
OBVIOUS
====
'''
INVENTORY = {'6:3:6:9': 2, '8:3:8:9': 1, '9:9:10:8': 1, '13:1:13:7': 1}


class Slices(unittest.TestCase):
    def setUp(self):
        self.plan = plan(TEXT, 3, INVENTORY)
        self.parts = [dict(locations=dict(c), statuses={'proved': sum(c.values())})
                      for c in validate(self.plan, INVENTORY)]

    def test_real_corpus_all_proof_units_covered(self):
        rows = read_summary(HERE/'SUMMARY.tsv')['modules']
        self.assertEqual(len(rows), 226)
        for row in rows:
            with self.subTest(module=row['module']):
                validate(plan((HERE/'source'/(row['module']+'.tla')).read_text(), 8))

    def test_duplicate_locations_preserve_multiplicity(self):
        self.assertEqual(reconcile(self.plan, INVENTORY, self.parts), 5)
        bad = copy.deepcopy(self.parts)
        for result in bad:
            result['locations'] = dict.fromkeys(result['locations'], 1)
        with self.assertRaises(ValueError):
            reconcile(self.plan, INVENTORY, bad)

    def test_comments_and_continued_references_are_not_steps(self):
        parsed = structure(TEXT)
        self.assertEqual([t['name'] for t in parsed['theorems']], ['A', 'B'])
        self.assertEqual(parsed['theorems'][0]['steps'], [5, 7, 9])

    def test_missing_extra_failed_or_wrong_shard_rejected(self):
        mutations = [self.parts[:-1], self.parts+[self.parts[-1]], self.parts[::-1]]
        bad = copy.deepcopy(self.parts)
        bad[0]['statuses'] = {'failed': sum(bad[0]['locations'].values())}
        mutations.append(bad)
        for parts in mutations:
            with self.assertRaises(ValueError):
                reconcile(self.plan, INVENTORY, parts)

    def test_cut_inside_step_or_native_location_rejected(self):
        bad = copy.deepcopy(self.plan)
        bad['ranges'][0]['end'] = 5
        bad['ranges'][1]['start'] = 6
        with self.assertRaises(ValueError):
            validate(bad, INVENTORY)
        crossing = {'6:3:8:9': 1, '9:9:10:8': 1, '13:1:13:7': 1}
        self.assertEqual(sum(sum(x.values()) for x in validate(plan(TEXT, 8, crossing), crossing)), 3)

    def test_unknown_context_or_incomplete_structure_rejected(self):
        for text in [TEXT.replace('USE DEF A', 'USE TRUE'),
                     TEXT.replace('USE DEF A', 'HIDE TRUE'),
                     TEXT.replace('USE DEF A', 'USE DEF A + 1'),
                     TEXT.replace('EXTENDS TLAPS', '---- MODULE Nested ----'),
                     TEXT.replace('<1> QED BY <1>1,', '<1>3. TRUE BY <1>1,')]:
            with self.assertRaises(ValueError):
                plan(text, 3)

    def test_native_log_truncation_and_nonfinal_rejected(self):
        declaration = '@!!BEGIN\n@!!type:obligation\n@!!id:1\n@!!loc:1:1:1:1\n@!!status:to be proved\n@!!END\n'
        count = '@!!BEGIN\n@!!type:obligationsnumber\n@!!count:1\n@!!END\n'
        complete = declaration+count+declaration.replace('to be proved', 'proved')+'All 1 obligation proved.\n'
        self.assertEqual(sum(replay(complete)[0].values()), 1)
        for text in [complete.replace('@!!END\n', '', 1), declaration+count,
                     complete.replace('status:proved', 'status:failed'),
                     complete.replace('count:1', 'count:2')]:
            with self.assertRaises(ValueError):
                replay(text)


class Options(unittest.TestCase):
    def test_parallel_options_and_legacy_shards(self):
        parser = argparse.ArgumentParser()
        parser.add_argument('--shards', action='store_true')
        add_arguments(parser)
        for argv in [[], ['--jobs', '2'], ['--slice-large', '--plan-only'], ['--shards']]:
            with self.subTest(argv=argv):
                validate_args(parser.parse_args(argv))
        for argv in [['--jobs', '0'], ['--slice-parts', '0'], ['--slice-parts', '257'],
                     ['--slice-obligations', '-1'], ['--slice-seconds', 'nan'],
                     ['--memory-budget-gib', '8'], ['--job-memory-gib', 'inf'],
                     ['--plan-only'], ['--shards', '--slice-large'], ['--shards', '--jobs', '2']]:
            with self.subTest(argv=argv), self.assertRaises(ValueError):
                validate_args(parser.parse_args(argv))


@unittest.skipUnless(sys.platform == 'linux', 'parallel resource monitoring uses /proc')
class Processes(unittest.TestCase):
    def setUp(self):
        self.directory = tempfile.TemporaryDirectory()
        self.addCleanup(self.directory.cleanup)
        self.out = Path(self.directory.name)
        # Keep admission tests independent of unrelated load on the test host.
        self.memory = patch('slicing.memory', return_value={
            'total': 128 * 2**30, 'available': 96 * 2**30, 'fraction': .75})
        self.memory.start()
        self.addCleanup(self.memory.stop)

    def assert_groups_exited(self, runtime):
        runtime.close()
        self.assertTrue(json.loads((self.out / 'process-audit.json').read_text())['all_exited'])
        for record in runtime.groups:
            with self.assertRaises(ProcessLookupError):
                os.killpg(record['pgid'], 0)

    def test_nonzero_process_exit_is_failure(self):
        runtime = Runtime(self.out, jobs=1, budget_gib=16, timeout=5)
        self.addCleanup(runtime.close)
        with self.assertRaisesRegex(ValueError, 'failed native process'):
            runtime.run(['/bin/sh', '-c', 'exit 7'], self.out, os.environ, self.out / 'failed')
        self.assertEqual(json.loads((self.out / 'failed/exit.json').read_text())['rc'], 7)
        self.assert_groups_exited(runtime)

    def test_timeout_is_failure_and_cleans_process_group(self):
        runtime = Runtime(self.out, jobs=1, budget_gib=16, timeout=.05)
        self.addCleanup(runtime.close)
        with self.assertRaisesRegex(ValueError, 'failed native process'):
            runtime.run(['/bin/sh', '-c', 'exec sleep 30'], self.out, os.environ, self.out / 'timeout')
        self.assertEqual(json.loads((self.out / 'timeout/exit.json').read_text())['reason'], 'timeout')
        self.assert_groups_exited(runtime)

    def test_memory_budget_limits_parallel_admission(self):
        runtime = Runtime(self.out, jobs=2, budget_gib=16, timeout=5)
        self.addCleanup(runtime.close)
        lock = threading.Lock()
        active = peak = 0

        def task():
            nonlocal active, peak
            with lock:
                active += 1
                peak = max(peak, active)
            try:
                time.sleep(.03)
                return 'completed'
            finally:
                with lock:
                    active -= 1

        results = runtime.queue([dict(key=str(i), weight=i+1, memory_gib=16, call=task)
                                 for i in range(3)])
        self.assertEqual(results, dict.fromkeys(('0', '1', '2'), 'completed'))
        self.assertEqual(peak, 1)
        self.assert_groups_exited(runtime)


if __name__ == '__main__':
    unittest.main()
