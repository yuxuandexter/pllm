"""Plan, run and reconcile source-preserving TLAPS slices.

The planner recognizes the packaged proof grammar, not arbitrary TLA+. Every
process reads the complete module. A fresh native whole-module inventory is the
authority for each slice's obligation location multiset, including multiplicity.
"""
from bisect import bisect_left
from collections import Counter
from concurrent.futures import FIRST_COMPLETED, ThreadPoolExecutor, wait
import json
import math
import os
from pathlib import Path
import random
import re
import shutil
import signal
import subprocess
import threading
import time

from proof_graph import clean
import verify as v

HEAD = re.compile(r'^[ \t]*(?:LOCAL[ \t]+)?(?:THEOREM|LEMMA|COROLLARY|PROPOSITION)[ \t]+([A-Za-z_]\w*)[ \t]*==', re.M)
STEP = re.compile(r'^[ \t]*<1>(?:\w+\.[ \t]*|[ \t]+)([^\n]*)', re.M)


def need(value, message):
    if not value:
        raise ValueError(message)


def structure(text):
    masked = clean(text, strings=True)
    need(len(re.findall(r'-{4,}\s*MODULE\b', masked)) == 1, 'nested/missing MODULE unsupported')
    need(len(re.findall(r'^={4,}[ \t]*$', masked, re.M)) == 1, 'ambiguous module terminator')
    heads = list(HEAD.finditer(masked))
    need(heads and len(heads) == len(re.findall(r'\b(?:THEOREM|LEMMA|COROLLARY|PROPOSITION)\b', masked)), 'unparsed theorem syntax')
    need(len({m[1] for m in heads}) == len(heads), 'duplicate theorem name')
    # DEF-only mutations change visibility but generate no obligation in this
    # pinned TLAPM. The complete module is parsed for every range, so these
    # directives remain in order even when their line is outside the range.
    for directive in re.finditer(r'^[ \t]*(?:USE|HIDE)\b[^\n]*', masked, re.M):
        need(re.fullmatch(r'[ \t]*(?:USE|HIDE)[ \t]+DEF[ \t]+[A-Za-z_]\w*(?:[ \t]*,[ \t]*[A-Za-z_]\w*)*[ \t]*', directive[0]),
             'module/bare USE or HIDE facts/unknown syntax unsupported')
    total = len(text.splitlines())
    line = lambda pos: masked.count('\n', 0, pos) + 1
    theorems, units, theorem_cuts, step_cuts = [], [], [], []
    for i, head in enumerate(heads):
        end = heads[i+1].start() if i+1 < len(heads) else len(masked)
        # Definitions and module visibility directives end a theorem's proof.
        stop = re.search(r'^={4,}|^(?:USE|HIDE)\b|^(?:LOCAL\s+)?[A-Za-z_]\w*(?:\([^\n]*?\))?\s*==', masked[head.end():end], re.M)
        proof_end = head.end()+stop.start() if stop else end
        steps = list(STEP.finditer(masked, head.end(), proof_end))
        need(len(steps) == len(re.findall(r'^[ \t]*<1>(?:\w+\.|[ \t])', masked[head.end():proof_end], re.M)), 'unparsed level-one step')
        qeds = [x for x in steps if re.match(r'QED\b', x[1])]
        if steps:
            need(len(qeds) == 1 and qeds[0] == steps[-1], 'missing/ambiguous level-one QED')
        start_line = line(head.start())
        end_line = line(proof_end-1)
        theorems.append(dict(name=head[1], start=start_line, end=end_line, steps=[line(x.start()) for x in steps], qed=[line(x.start()) for x in qeds]))
        theorem_cuts.append(start_line)
        if not steps:
            units.append(dict(kind='theorem', name=head[1], start=start_line, end=end_line))
        else:
            # The theorem header belongs to its first step. Cutting before the
            # first step is not a cut between two complete level-one steps.
            for j, step in enumerate(steps):
                first = start_line if j == 0 else line(step.start())
                last = line(steps[j+1].start())-1 if j+1 < len(steps) else end_line
                units.append(dict(kind='level-one', name=head[1], step_line=line(step.start()), start=first, end=last, qed=step in qeds))
                if j:
                    step_cuts.append(first)
    return dict(lines=total, theorems=theorems, units=units, theorem_cuts=theorem_cuts[1:], step_cuts=step_cuts,
                context_policy='unmodified full module and import closure; USE DEF/HIDE DEF preserved in order; module facts refused')


def validate(plan, locations=None):
    ranges, structure_ = plan['ranges'], plan['structure']
    need(ranges and ranges[0]['start'] == 1 and ranges[-1]['end'] == structure_['lines'], 'range endpoints incomplete')
    allowed = set(structure_['theorem_cuts'] + structure_['step_cuts'])
    for i, item in enumerate(ranges):
        need(1 <= item['start'] <= item['end'] <= structure_['lines'], 'invalid range')
        if i:
            need(item['start'] == ranges[i-1]['end']+1 and item['start'] in allowed, 'gap/overlap/unsafe cut')
    for unit in structure_['units']:
        need(sum(r['start'] <= unit['start'] <= unit['end'] <= r['end'] for r in ranges) == 1, 'proof unit split or uncovered')
    for theorem in structure_['theorems']:
        for h in [theorem['start'], *theorem['steps'], *theorem['qed']]:
            need(sum(r['start'] <= h <= r['end'] for r in ranges) == 1, 'head/step/QED not covered exactly once')
    if locations is not None:
        expected_parts = []
        for item in ranges:
            expected_parts.append(Counter({loc:n for loc,n in locations.items() if item['start'] <= int(loc.split(':')[0]) <= int(loc.split(':')[2]) <= item['end']}))
        actual = sum(expected_parts, Counter())
        need(actual == Counter(locations), 'native obligation crosses cut or is uncovered')
        need(all(expected_parts), 'empty native range')
        return expected_parts


def plan(text, parts, locations=None):
    need(type(parts) == int and 1 <= parts <= 256, 'parts must be in 1..256')
    st = structure(text)
    if locations is None:
        starts = list(range(1, st['lines']+1)); ends = starts
    else:
        need(locations and all(type(n) == int and n > 0 for n in locations.values()), 'invalid native inventory')
        starts, ends = [], []
        for loc, n in locations.items():
            need(re.fullmatch(r'[1-9]\d*:[1-9]\d*:[1-9]\d*:[1-9]\d*', loc), 'bad native location')
            a,b,c,d = map(int, loc.split(':'))
            need((a,b) <= (c,d) and c <= st['lines'], 'reversed/outside native location')
            starts.extend([a]*n); ends.extend([c]*n)
        starts.sort(); ends.sort()
    def candidates(cuts):
        by_weight = {}
        for cut in sorted(cuts):
            before = bisect_left(starts, cut)
            if 0 < before < len(starts) and before == bisect_left(ends, cut):
                by_weight.setdefault(before, cut)
        return by_weight
    by_weight = candidates(st['theorem_cuts'])
    top_weights = [0, *sorted(by_weight), len(starts)]
    max_top = max(b-a for a,b in zip(top_weights, top_weights[1:]))
    level = 0
    if len(by_weight)+1 < parts or max_top > 1.5*len(starts)/parts:
        by_weight = candidates(st['theorem_cuts'] + st['step_cuts']); level = 1
    weights = sorted(by_weight)
    count = min(parts, len(weights)+1)
    cuts, lo = [], 0
    for k in range(1, count):
        hi = len(weights)-(count-1-k)
        ideal = k*len(starts)/count
        i = bisect_left(weights, ideal, lo, hi)
        j = min((j for j in (i-1, i) if lo <= j < hi), key=lambda j:abs(weights[j]-ideal))
        cuts.append(by_weight[weights[j]]); lo = j+1
    first, last = [1]+cuts, [c-1 for c in cuts]+[st['lines']]
    result = dict(schema=1, requested_parts=parts, boundary_level=level, structure=st, weight_basis='native-obligations' if locations is not None else 'source-lines', ranges=[dict(index=i+1,start=a,end=b) for i,(a,b) in enumerate(zip(first,last))])
    expected = validate(result, locations)
    for i, item in enumerate(result['ranges']):
        item['estimated_work'] = sum(expected[i].values()) if expected is not None else item['end']-item['start']+1
    return result


def reconcile(plan_, inventory, results):
    expected = validate(plan_, inventory)
    need(len(results) == len(expected), 'missing/extra shard result')
    actual = Counter()
    for want, result in zip(expected, results):
        got = Counter(result['locations'])
        need(got == want, 'shard native location multiset differs from its assigned whole inventory')
        need(set(result['statuses']) <= {'proved', 'trivial'}, 'non-success shard status')
        need(sum(result['statuses'].values()) == sum(got.values()), 'shard status count mismatch')
        actual.update(got)
    need(actual == Counter(inventory), 'combined native multiset mismatch')
    return sum(actual.values())


def memory():
    fields = dict(line.split(':', 1) for line in Path('/proc/meminfo').read_text().splitlines())
    total = int(fields['MemTotal'].split()[0]) * 1024
    available = int(fields['MemAvailable'].split()[0]) * 1024
    return dict(total=total, available=available, fraction=available / total)


class Runtime:
    def __init__(self, out, jobs, budget_gib, timeout):
        self.v, self.out = v, Path(out)
        self.jobs, self.budget, self.timeout = jobs, budget_gib, timeout
        self.stop = threading.Event()
        self.closed = threading.Event()
        self.lock = threading.Lock()
        self.active, self.groups = {}, []
        self.peak_rss_kib = 0
        self.monitor = threading.Thread(target=self._monitor, daemon=True)
        self.monitor.start()

    def _monitor(self):
        with (self.out / 'resource-samples.jsonl').open('w') as log:
            while not self.closed.is_set():
                mem = memory()
                if mem['fraction'] < .15:
                    self.stop.set()
                with self.lock:
                    groups = set(self.active)
                rss = Counter()
                if groups:
                    raw = subprocess.check_output(['ps', '-e', '-o', 'pgid=,rss='], text=True)
                    for line in raw.splitlines():
                        pgid, value = map(int, line.split())
                        if pgid in groups:
                            rss[pgid] += value
                with self.lock:
                    for pgid, value in rss.items():
                        if pgid in self.active:
                            self.active[pgid]['peak_group_rss_kib'] = max(value, self.active[pgid]['peak_group_rss_kib'])
                total = sum(rss.values())
                self.peak_rss_kib = max(self.peak_rss_kib, total)
                log.write(json.dumps(dict(time=time.time(), memory=mem, group_rss_kib=rss, total_rss_kib=total)) + '\n')
                log.flush()
                self.closed.wait(1)

    def run(self, command, source, env, output, count=False):
        v = self.v
        output = Path(output)
        output.mkdir(parents=True, exist_ok=False)
        local_env = dict(env, TLAPM_CACHE_DIR=str(output / 'cache'), TMPDIR=str(output / 'tmp'))
        (output / 'cache').mkdir(); (output / 'tmp').mkdir()
        v.write(output / 'command.json', command)
        v.write(output / 'environment.json', {k: local_env.get(k) for k in ('OCAMLRUNPARAM', 'TLAPM_POLY_OPTIONS', 'PATH', 'TLAPM_CACHE_DIR', 'TMPDIR')})
        started = time.monotonic()
        record = dict(command=command, output=str(output), peak_group_rss_kib=0)
        reason, rc = 'exited', None
        with (output / 'stdout.log').open('w') as so, (output / 'stderr.log').open('w') as se:
            child = subprocess.Popen(command, cwd=source, env=local_env, stdout=so, stderr=se, start_new_session=True)
            record.update(pgid=child.pid, started=time.time())
            with self.lock:
                self.active[child.pid] = record
                self.groups.append(record)
                v.write(self.out / 'process-groups.json', self.groups)
            print('PGID', child.pid, str(output), flush=True)
            usage = None
            def reap():
                nonlocal usage
                if child.returncode is None:
                    pid, status, ru = os.wait4(child.pid, os.WNOHANG)
                    if pid:
                        child.returncode = os.waitstatus_to_exitcode(status)
                        usage = dict(user_seconds=ru.ru_utime, system_seconds=ru.ru_stime,
                                     max_process_rss_kib=ru.ru_maxrss, wall_seconds=time.monotonic()-started)
                return child.returncode
            try:
                while reap() is None:
                    if self.stop.is_set() or time.monotonic() - started > self.timeout:
                        reason = 'cancelled/memory-floor' if self.stop.is_set() else 'timeout'
                        break
                    time.sleep(.2)
                rc = reap()
            finally:
                if v.group_alive(child.pid):
                    os.killpg(child.pid, signal.SIGTERM)
                    until = time.monotonic()+5
                    while reap() is None and time.monotonic() < until:
                        time.sleep(.1)
                    if v.group_alive(child.pid):
                        os.killpg(child.pid, signal.SIGKILL)
                while reap() is None:
                    time.sleep(.1)
                v.write(output / 'usage.json', usage)
                for _ in range(50):
                    if not v.group_alive(child.pid):
                        break
                    time.sleep(.1)
                with self.lock:
                    self.active.pop(child.pid, None)
                record.update(rc=rc, reason=reason, wall_seconds=time.monotonic()-started, group_exited=not v.group_alive(child.pid))
                v.write(output / 'exit.json', record)
        v.require(reason == 'exited' and rc == 0 and record['group_exited'], 'failed native process: ' + str(output))
        raw = (output / 'stdout.log').read_text() + '\n' + (output / 'stderr.log').read_text()
        v.require(sum('@!!BEGIN' in (output / name).read_text() for name in ('stdout.log', 'stderr.log')) == 1, 'ambiguous event streams')
        locations, statuses = v.replay(raw, count_only=count)
        # Persist run-local IDs separately; they must never be unioned across shards.
        events = []
        for block in raw.split('@!!BEGIN\n')[1:]:
            fields = dict(line[3:].split(':', 1) for line in block.split('@!!END')[0].splitlines() if line.startswith('@!!'))
            fields = {k: val.strip() for k, val in fields.items()}
            if fields.get('type') == 'obligation':
                events.append(fields)
        ids = {}
        for event in events:
            ids[event['id']] = dict(loc=event['loc'], status=event['status'])
        v.write(output / 'obligations.json', dict(locations=locations, statuses=statuses, local_ids=ids))
        usage = json.loads((output / 'usage.json').read_text())
        result = dict(locations=locations, statuses=statuses, metrics=dict(**usage, peak_group_rss_kib=record['peak_group_rss_kib']), output=str(output))
        v.write(output / 'result.json', result)
        return result

    def queue(self, tasks):
        """LPT scheduling; task = {key, weight, memory_gib, call}."""
        v = self.v
        v.require(all(0 < x['memory_gib'] <= self.budget for x in tasks), 'task exceeds total memory budget')
        pending_tasks = sorted(tasks, key=lambda t: t['weight'], reverse=True)
        pending, results, reservation, paused = {}, {}, 0., None
        pool = ThreadPoolExecutor(max_workers=self.jobs)
        try:
            while pending_tasks or pending:
                v.require(not self.stop.is_set(), 'cancelled or memory below 15%')
                v.require(self.monitor.is_alive(), 'resource monitor stopped')
                mem = memory()
                while pending_tasks and len(pending) < self.jobs and mem['fraction'] >= .20:
                    candidates = [i for i, t in enumerate(pending_tasks) if reservation+t['memory_gib'] <= self.budget and t['memory_gib'] * 2**30 <= mem['available']-.15*mem['total']]
                    if not candidates:
                        break
                    task = pending_tasks.pop(candidates[0])
                    reservation += task['memory_gib']
                    future = pool.submit(task['call'])
                    pending[future] = task
                if not pending:
                    paused = paused or time.monotonic()
                    v.require(time.monotonic()-paused < self.timeout, 'resource admission timeout')
                    self.stop.wait(1)
                    continue
                paused = None
                done, _ = wait(pending, timeout=1, return_when=FIRST_COMPLETED)
                for future in done:
                    task = pending.pop(future)
                    reservation -= task['memory_gib']
                    results[task['key']] = future.result()
                v.write(self.out / 'progress.json', dict(done=list(results), active=[t['key'] for t in pending.values()], waiting=[t['key'] for t in pending_tasks], reserved_gib=reservation))
            return results
        except BaseException:
            self.stop.set()
            raise
        finally:
            pool.shutdown(wait=True, cancel_futures=True)

    def close(self):
        self.stop.set()
        self.closed.set()
        self.monitor.join(timeout=10)
        gone = {str(g['pgid']): not self.v.group_alive(g['pgid']) for g in self.groups}
        self.v.write(self.out / 'process-audit.json', dict(groups=gone, all_exited=all(gone.values()), peak_total_rss_kib=self.peak_rss_kib))
        self.v.require(all(gone.values()), 'owned process group remains alive')


def add_arguments(p):
    p.add_argument('--jobs', type=int, default=1, help='maximum concurrent native processes')
    p.add_argument('--slice-large', action='store_true', help='plan theorem/level-one slices for large modules')
    p.add_argument('--slice-parts', type=int, default=8, help='maximum slices per large module')
    p.add_argument('--slice-obligations', type=int, default=5000, help='slice modules above this obligation count')
    p.add_argument('--slice-seconds', type=float, default=300, help='slice modules above this identity-bound historical time')
    p.add_argument('--costs', help='JSON module -> {source_sha256, closure_sha256, wall_seconds, memory_gib}; scheduling hints only')
    p.add_argument('--job-memory-gib', type=float, default=16, help='conservative memory reservation per native process')
    p.add_argument('--memory-budget-gib', type=float, default=160, help='sum of admitted memory reservations')
    p.add_argument('--plan-only', action='store_true', help='emit static source-line plan, without claiming proof success')


def validate_args(a):
    v.require(a.jobs > 0 and 1 <= a.slice_parts <= 256 and a.slice_obligations >= 0, 'invalid jobs/slice limits')
    v.require(all(math.isfinite(x) and x > 0 for x in (a.job_memory_gib, a.memory_budget_gib, a.slice_seconds)), 'positive finite resource limits required')
    v.require(a.job_memory_gib <= a.memory_budget_gib, 'job memory exceeds total memory budget')
    v.require(not (a.shards and a.slice_large), 'choose --shards or --slice-large')
    v.require(not a.plan_only or a.slice_large, '--plan-only requires --slice-large')
    v.require(not (a.shards and a.jobs != 1), '--shards is legacy sequential mode; use --slice-large for automatic parallel ranges')


def selected(args, rows):
    if args.sample is not None:
        v.require(0 < args.sample <= len(rows), '--sample outside module count')
        return random.Random(args.seed).sample(sorted(rows), args.sample)
    if args.all:
        return sorted(rows)
    v.require(args.module in rows, 'unknown proof module')
    return [args.module]


def prove(args, summary):
    rows = {r['module']: r for r in summary['modules']}
    modules = selected(args, rows)
    v.require(args.out, 'parallel proof runs require --out DIRECTORY')
    out = Path(args.out).resolve()
    v.require(not out.exists(), '--out must be new')
    out.mkdir(parents=True)
    costs = v.read(args.costs) if args.costs else {}
    for name, cost in costs.items():
        v.require(name in rows and all(cost.get(k) == rows[name][k] for k in ('source_sha256','closure_sha256')), 'historical cost identity mismatch: '+name)
        v.require(all(math.isfinite(float(cost.get(k, 0))) and float(cost.get(k, 0)) >= 0 for k in ('wall_seconds','memory_gib')), 'invalid cost hint')
    v.require(v.static_input_lock() == args.static_lock, 'inputs changed after static check')
    sources = {p.name: v.sha(p) for p in (v.HERE/'source').glob('*.tla')}
    v.require(v.digest(sources) == summary['source_tree_sha256'], 'source changed after static check')
    locked_inputs = args.static_lock
    snapshot = out/'source'
    shutil.copytree(v.HERE/'source', snapshot)
    v.require({p.name:v.sha(p) for p in snapshot.glob('*.tla')} == sources, 'snapshot SHA mismatch')
    texts = {p.stem:p.read_text() for p in snapshot.glob('*.tla')}
    closures = {m:v.source_closure(m, sources, texts)[0] for m in modules}
    v.write(out/'source-lock.json', dict(source_tree_sha256=v.digest(sources), files=sources, closures=closures, inputs=locked_inputs))
    v.write(out/'static.json', dict(proof_modules=226, reachable_cells=3456, source_tree_sha256=v.digest(sources), selection=modules))
    sliced = [m for m in modules if args.slice_large and (rows[m]['obligations'] > args.slice_obligations or costs.get(m,{}).get('wall_seconds',0) > args.slice_seconds)]
    plans = {m:plan(texts[m], args.slice_parts) for m in sliced}
    v.write(out/'static-plan.json', plans)
    if args.plan_only:
        v.write(out/'verdict.json', dict(status='PLAN-ONLY', proved_modules=0, static_modules=226, static_cells=3456, selected=modules, sliced=sliced))
        return []
    # Slice parity requires the recorded native binary and libraries, not merely
    # matching one executable name. Whole parallel runs retain the explicit flag.
    if args.slice_large:
        args.require_toolchain = True
    binary, stdlib, env, identity = v.tool_environment(args, summary)
    env.pop('TLAPM_LAX', None); env.pop('TLAPS_HOME', None)
    prefix = Path(args.prefix).resolve() if args.prefix else binary.parent.parent
    tool_lock = {str(prefix/name):v.sha(prefix/name) for name in summary['toolchain']['files']}
    tool_lock[str(binary)] = v.sha(binary)
    v.write(out/'runner-sha256.json', {p.name:v.sha(p) for p in [v.HERE/'verify.py',v.HERE/'slicing.py',v.HERE/'proof_graph.py']})
    v.write(out/'selection.json', dict(modules=modules, sliced=sliced, toolchain=identity, tool_lock=tool_lock, jobs=args.jobs, threads=args.threads, memory_budget_gib=args.memory_budget_gib, job_memory_gib=args.job_memory_gib, costs=costs))
    started = time.monotonic()
    runtime = Runtime(out, args.jobs, args.memory_budget_gib, args.timeout)
    def command(module, lines, count=False):
        return [str(binary), '--strict', '--nofp', '--threads', str(args.threads), '--stretch', str(args.stretch or rows[module]['stretch']), '-I', str(stdlib), '-I', str(snapshot), *(['-N'] if count else []), '--toolbox', str(lines[0]), str(lines[1]), str(snapshot/(module+'.tla'))]
    def task(module, key, lines, count=False, weight=None):
        cmd = command(module, lines, count)
        return dict(key=key, weight=weight or costs.get(module,{}).get('wall_seconds') or rows[module]['obligations'], memory_gib=max(args.job_memory_gib,costs.get(module,{}).get('memory_gib',0)), call=lambda:runtime.run(cmd,snapshot,env,out/key,count=count))
    results = []
    try:
        inventory_start = time.monotonic()
        inventories = runtime.queue([task(m,m+'/inventory',[0,0],True) for m in sliced])
        inventory_wall = time.monotonic()-inventory_start
        tasks = []
        for module in modules:
            row = rows[module]
            if module not in sliced:
                tasks.append(task(module,module+'/whole',[0,0]))
                continue
            inv = inventories[module+'/inventory']['locations']
            v.require(sum(inv.values()) == row['obligations'], 'native inventory differs from SUMMARY: '+module)
            plans[module] = plan(texts[module],args.slice_parts,inv)
            plans[module].update(source_sha256=row['source_sha256'],closure_sha256=row['closure_sha256'],native_count=row['obligations'])
            for item in plans[module]['ranges']:
                work = item['estimated_work']
                if costs.get(module,{}).get('wall_seconds'):
                    work *= costs[module]['wall_seconds']/row['obligations']
                tasks.append(task(module,module+'/slice-'+str(item['index']),[item['start'],item['end']],weight=work))
        v.write(out/'plan.json',plans)
        proof_start = time.monotonic()
        raw = runtime.queue(tasks)
        proof_wall = time.monotonic()-proof_start
        for module in modules:
            if module in sliced:
                parts = [raw[module+'/slice-'+str(r['index'])] for r in plans[module]['ranges']]
                obligations = reconcile(plans[module],inventories[module+'/inventory']['locations'],parts)
                method = 'theorem-slice'
            else:
                parts = [raw[module+'/whole']]
                obligations = sum(parts[0]['locations'].values())
                method = 'whole-module'
            v.require(obligations == rows[module]['obligations'], 'count mismatch: '+module)
            results.append(dict(module=module,obligations=obligations,method=method,passed=True,parts=[p['output'] for p in parts]))
        v.require({p.name:v.sha(p) for p in snapshot.glob('*.tla')} == sources, 'snapshot changed during run')
        v.require({p.name:v.sha(p) for p in (v.HERE/'source').glob('*.tla')} == sources, 'source changed during run')
        v.require({p:v.sha(p) for p in locked_inputs} == locked_inputs, 'static inputs changed during run')
        v.require({p:v.sha(p) for p in tool_lock} == tool_lock, 'toolchain changed during run')
        runtime.close()
        full = set(modules) == set(rows) and len(results) == 226
        v.write(out/'results.json', results)
        v.write(out/'verdict.json', dict(status='PASS' if full else 'SELECTED-PASS', proof_modules_passed=len(results), static_proof_modules=226, static_reachable_cells=3456, full_proof_cells=3456 if full else None, all_226_modules_passed=full, obligations=sum(x['obligations'] for x in results), inventory_wall_seconds=inventory_wall, proof_wall_seconds=proof_wall, wall_seconds=time.monotonic()-started, peak_total_rss_kib=runtime.peak_rss_kib, static_seconds=args.static_seconds, preparation_seconds=started-args.started_monotonic-args.static_seconds, wall_including_static_seconds=time.monotonic()-args.started_monotonic))
        print((out/'verdict.json').read_text(),flush=True)
    except BaseException as exc:
        runtime.stop.set()
        v.write(out/'verdict.json',dict(status='FAIL',error=str(exc),all_226_modules_passed=False))
        raise
    finally:
        runtime.close()
    return results
