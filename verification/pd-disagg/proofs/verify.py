#!/usr/bin/env python3
"""Check the packaged model, proof structure and strict TLAPS results."""
import argparse
import csv
from collections import Counter, deque
import hashlib
import json
import os
from pathlib import Path
import random
import re
import shlex
import shutil
import signal
import subprocess
import sys
import tempfile
import time

from proof_graph import IndependentGraph, clean, compact, definitions, TOP

HERE = Path(__file__).resolve().parent
PINS = {
    'PdCore.tla': '24ef403401bed868c08be7f48f1b5da81052442448dc83443771b23317631906',
    'MC_pd_ind.tla': '27563caf183f1902d8bfda46e9b9c6ddb4f77203b2c48f23a177b894bde7b65e',
}
ROOT_PREMISE_SHA256 = {'Sizes': 'af40722abc44ba096a008dab5485af44ef08566d93b2b51e29163189d85ead85', 'Design': 'adbb202057cc1d2aef64e8fab7d83651e57ac4b41189e9daa0f1c8fe1eae5e5d'}
ROOT = 'PdCore_Proof::SpecImpliesAlwaysSafety'
GOOD = {'proved', 'trivial'}
STANDARD = {'Naturals', 'Integers', 'Reals', 'Sequences', 'FiniteSets', 'Bags', 'TLC'}


def require(condition, message):
    if not condition:
        raise ValueError(message)


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def digest(value):
    return hashlib.sha256(json.dumps(value, sort_keys=True, separators=(',', ':')).encode()).hexdigest()


def read(path):
    return json.loads(Path(path).read_text())


def read_summary(path):
    metadata, data = {}, []
    for line in Path(path).read_text().splitlines():
        if line.startswith('# '):
            key, value = line[2:].split('\t', 1)
            require(key not in metadata, 'duplicate summary metadata')
            metadata[key] = json.loads(value)
        else:
            data.append(line)
    rows = list(csv.DictReader(data, delimiter='\t'))
    for row in rows:
        row['obligations'] = int(row['obligations'])
        row['stretch'] = float(row['stretch'])
        row['shards'] = json.loads(row['shards'])
    metadata['modules'] = rows
    require(metadata.get('schema') == 1, 'unsupported summary format')
    return metadata


def read_renames(path):
    with Path(path).open() as stream:
        rows = list(csv.DictReader(stream, delimiter='\t'))
    require(len(rows) == len({r['pinned'] for r in rows}), 'duplicate rename source')
    return {r['pinned']: r['public'] for r in rows}


def write(path, value):
    path = Path(path)
    tmp = path.with_name(path.name + '.new')
    tmp.write_text(json.dumps(value, indent=2) + '\n')
    tmp.replace(path)


def tokens(text):
    # Longest operator first; comments are stripped without joining adjacent tokens.
    operators = ['<=>', '|->', '::=', '-+->', '...', '<<', '>>', '=>', '==', '/\\', '\\/',
                 '<=', '>=', '/=', '->', '<-', '~>', '..', '[]', '<>', '!!',
                 '++', '--', '**', '//', '^^', '&&', '||', '$$', '%%', '##', '::', ':=']
    pattern = r'"(?:\\.|[^"\\])*"|\\[A-Za-z]+|[A-Za-z_][A-Za-z_0-9]*|[0-9]+' \
              + '|' + '|'.join(re.escape(o) for o in sorted(operators, key=len, reverse=True)) + r'|[^\s]'
    return re.findall(pattern, clean(text))


def equivalent_models(source, public, mapping):
    require(len(mapping) == 40 and len(set(mapping.values())) == 40, 'rename map must be bijective (40 names)')
    result = {}
    for name in PINS:
        before, after = tokens((source / name).read_text()), tokens((public / name).read_text())
        renamed = [mapping.get(t, t) for t in before]
        require(renamed == after, 'public model token mismatch: ' + name)
        result[name] = {'tokens': len(before), 'renamed_occurrences': sum(x != y for x, y in zip(before, after))}
    return result


def imports(text):
    text = clean(text, strings=True)
    result = set(re.findall(r'\bINSTANCE\s+(\w+)', text))
    for match in re.finditer(r'\bEXTENDS\s+(\w+(?:\s*,\s*\w+)*)', text):
        result.update(re.findall(r'\w+', match[1]))
    return result


def source_closure(module, sources, texts):
    found, external, todo = set(), set(), [module]
    while todo:
        name = todo.pop()
        if name in found:
            continue
        if name not in texts:
            external.add(name)
            continue
        found.add(name)
        todo.extend(imports(texts[name]) - found)
    return {n + '.tla': sources[n + '.tla'] for n in sorted(found)}, external


def split_top(text, sep=','):
    parts, stack, start, i, quoted = [], [], 0, 0, False
    while i < len(text):
        if text[i] == '"':
            quoted = not quoted
        if quoted:
            i += 2 if text[i] == '\\' else 1
            continue
        if text.startswith('<<', i):
            stack.append('>>'); i += 2; continue
        if stack and text.startswith(stack[-1], i):
            i += len(stack.pop()); continue
        if text[i] in '([{':
            stack.append({'(': ')', '[': ']', '{': '}'}[text[i]])
        elif not stack and text.startswith(sep, i):
            parts.append(text[start:i].strip()); i += len(sep); start = i; continue
        i += 1
    parts.append(text[start:].strip())
    return parts


def unparen(text):
    text = compact(text)
    while text.startswith('(') and text.endswith(')'):
        depth = 0
        for i, c in enumerate(text):
            depth += (c == '(') - (c == ')')
            if depth == 0:
                break
        if i != len(text) - 1:
            break
        text = text[1:-1]
    return text


def sequent(statement):
    statement = statement.strip()
    if statement.startswith('ASSUME '):
        left, right = statement[7:].split('PROVE', 1)
        return split_top(left), right.strip()
    bindings = []
    while statement.startswith('\\A '):
        quant, statement = statement[3:].split(':', 1)
        groups = re.findall(r'((?:\w+\s*,\s*)*\w+)\s*\\in\s*((?:SUBSET\s+)?\w+)\s*(?:,|$)', quant)
        require(compact(','.join(n + '\\in' + d for n, d in groups)) == compact(quant), 'unsupported quantifier')
        for names, domain in groups:
            bindings.extend('NEW ' + n.strip() + ' \\in ' + domain for n in names.split(','))
        statement = statement.strip()
    sides = split_top(unparen(statement), '=>')
    require(len(sides) == 2, 'unsupported cell statement')
    return bindings + split_top(unparen(sides[0]), '/\\'), unparen(sides[1])


def assumptions(text):
    masked = clean(text, strings=True)
    module_assumes = []
    for match in re.finditer(r'\bASSUM(?:E|PTION)\b', masked):
        tail = masked[match.end():]
        stop = re.search(r'\b(?:BY|PROOF|THEOREM|LEMMA|AXIOM|ASSUME|ASSUMPTION)\b|<\d+>|^={4,}', tail, re.M)
        header = tail[:stop.start()] if stop else tail
        before = masked[:match.start()].rstrip()
        local = re.search(r'(?:THEOREM|LEMMA|COROLLARY|PROPOSITION)\s+\w+\s*==\s*$|<\d+>\w+\.\s*(?:SUFFICES\s*)?$|\bSUFFICES\s*$', before)
        if not (local and re.search(r'\bPROVE\b', header)):
            module_assumes.append(masked.count('\n', 0, match.start()) + 1)
    return module_assumes


def matrix(model):
    columns, todo = set(), ['IndInv']
    while todo:
        name = todo.pop()
        if name == 'SInd':
            require(compact(model[name]) == 'IF~B2THENSInitELSE' + '/\\'.join('SI' + str(i) for i in range(1, 7)), 'SInd decomposition')
            columns.update(['B2OffInit'] + ['SI' + str(i) for i in range(1, 7)])
        elif name in {'IndInv', 'Safety', 'BaseSafety', 'KStruct', 'Strengthen'}:
            terms = [s.strip() for s in model[name].split('/\\')]
            require(all(re.fullmatch(r'\w+', t) for t in terms), 'conjunction decomposition: ' + name)
            todo.extend(terms)
        else:
            columns.add(name)
    domains = {}
    for op in ('BaseNext', 'SNext'):
        bound = {}
        pattern = r'\\E\s+(?P<quant>[^:]+):|(?P<action>\b\w+)\((?P<args>[^()]*)\)|(?P<done>\bDone\b)'
        for m in re.finditer(pattern, model[op]):
            if m['quant']:
                for names, domain in re.findall(r'((?:\w+\s*,\s*)*\w+)\s*\\in\s*((?:SUBSET\s+)?\w+)', m['quant']):
                    bound.update({n: compact(domain) for n in re.findall(r'\w+', names)})
            elif m['done']:
                domains['Done'] = []
            elif m['action'] in model:
                domains[m['action']] = [bound[n.strip()] for n in m['args'].split(',')]
    domains.pop('SBadUnref')
    columns.add('MessageShape')
    require(len(domains) == 64 and len(columns) == 54, 'expected 64 actions and 54 conjuncts')
    return domains, columns


def cell_contract(node, action, column, domains):
    ps, goal = sequent(node.statement)
    flat = []
    for p in ps:
        flat.extend([p] if p.startswith('NEW ') else split_top(unparen(p), '/\\'))
    bindings, calls, facts = {}, [], []
    for p in flat:
        if p.startswith('NEW '):
            m = re.fullmatch(r'NEW\s+(\w+)\s*\\in\s*((?:SUBSET\s+)?\w+)', p)
            require(m is not None and m[1] not in bindings, 'invalid action binder: ' + node.key)
            bindings[m[1]] = compact(m[2])
        else:
            p = compact(p)
            m = re.fullmatch(re.escape(action) + r'(?:\(([^()]*)\))?', p)
            if m:
                calls.append(m[1].split(',') if m[1] else [])
            else:
                facts.append(p)
    require(len(calls) == 1 and len(calls[0]) == len(domains[action]), 'action call: ' + node.key)
    args = calls[0]
    require(len(set(args)) == len(args) and set(args) == set(bindings), 'action parameters: ' + node.key)
    require([bindings[x] for x in args] == domains[action], 'action domains: ' + node.key)
    require(set(facts) <= {'Sizes', 'Location', 'Design', 'PinInv', 'IndInv', 'MessageShape', 'SFollow'}
            and bool({'PinInv', 'IndInv'} & set(facts)), 'extra or missing cell premises: ' + node.key)
    target = 'P_' + column if column in {'B2OffInit', 'SI1', 'SI2', 'SI3', 'SI4', 'SI5', 'SI6'} else column
    allowed = {target + "'"}
    if column == 'TypeOK':
        allowed.add("TypInv'")
    require(unparen(goal) in allowed, 'cell postcondition: ' + node.key)


def static_checks(base=HERE):
    source = base / 'source'
    summary = read_summary(base / 'SUMMARY.tsv')
    paths = sorted(source.glob('*.tla'))
    sources = {p.name: sha(p) for p in paths}
    listed = {}
    for line in (source / 'SHA256SUMS').read_text().splitlines():
        h, name = line.split(None, 1)
        name = name.strip().lstrip('*')
        require(name not in listed and Path(name).name == name, 'invalid SHA256SUMS entry')
        listed[name] = h
    require(sources == listed and digest(sources) == summary['source_tree_sha256'], 'source tree SHA mismatch')
    require(all(sources.get(n) == h for n, h in PINS.items()), 'pinned model SHA mismatch')
    require(sha(base / 'coverage.tsv') == summary['coverage_sha256'], 'coverage map SHA mismatch')
    texts = {p.stem: p.read_text() for p in paths}
    rows = summary['modules']
    require(len(rows) == 226 and len({r['module'] for r in rows}) == 226, 'expected 226 unique proof modules')
    proof_modules = {m for m, text in texts.items() if TOP.search(clean(text))}
    require(proof_modules == {r['module'] for r in rows}, 'proof module inventory mismatch')
    allowed_externals = STANDARD | {Path(n).stem for n in summary['toolchain']['files'] if n.endswith('.tla')}
    for row in rows:
        module = row['module']
        closure, external = source_closure(module, sources, texts)
        require(not external - allowed_externals, 'unknown external imports: ' + repr(external - allowed_externals))
        require(row['source_sha256'] == sources[module + '.tla'] and row['closure_sha256'] == digest(closure), 'module/closure SHA mismatch: ' + module)
        require(row['method'] in {'whole-module', 'sharded'} and row['obligations'] > 0 and row['stretch'] > 0, 'invalid module summary')
        if row['method'] == 'sharded':
            require(sum(x['obligations'] for x in row['shards']) == row['obligations'], 'shard counts mismatch')
    for mod, text in texts.items():
        masked = clean(text, strings=True)
        require(not re.search(r'\bOMITTED\b', masked), 'OMITTED: ' + mod)
        if mod + '.tla' not in PINS:
            require(not re.search(r'\bAXIOM\b', masked) and not assumptions(text), 'new module assumption/axiom: ' + mod)
    equivalence = equivalent_models(source, base.parent / 'spec', read_renames(base / 'model-renames.tsv'))
    g = IndependentGraph(source)
    require(not g.errors, 'proof graph: ' + repr(g.errors[:8]))
    reach = g.closure(ROOT)
    require('MC_pd_ind' in g.imports['PdCore_Proof'] and 'PdCore' in g.visibility['PdCore_Proof'], 'root must import pinned model')
    contracts = {
        ROOT: 'ASSUMESizes,DesignPROVESpec=>[]Safety',
        'PdCore_Proof::InitImpliesIndInv': 'ASSUMESizes,DesignPROVEInit=>PinInv',
        'PdCore_Proof::IndInvImpliesSafety': 'ASSUMESizes,DesignPROVEPinInv=>Safety',
    }
    for key, value in contracts.items():
        require(key in reach and compact(g.nodes[key].statement) == value, 'closing contract: ' + key)
    premise_defs = definitions(texts['PdPinnedBridge'])
    for name, expected_sha in ROOT_PREMISE_SHA256.items():
        require(digest(tokens(premise_defs[name])) == expected_sha, 'root premise definition: ' + name)
    require(compact(definitions(texts['PdPinnedProofModel'])['PinInv']) == 'IndInv/\\MessageShape', 'strengthened invariant contract')
    require('PdPMutationDisabled::P_SBadUnref_Disabled' in reach, 'disabled mutation action proof not reachable')
    bridges = {
        'PdPinnedProofModel::PinnedLocationFact': 'ASSUMESizesPROVELocation',
        'PdPinnedProofModel::ProofTypeBridge': 'TypInv<=>(TypeOK/\\MessageShape)',
        'PdPinnedProofModel::ProofTypeWeakenNext': "TypInv'=>TypeOK'",
    }
    for key, statement in bridges.items():
        require(key in reach and compact(g.nodes[key].statement) == statement, 'bridge contract: ' + key)
    model = {}
    for name in PINS:
        model.update(definitions(texts[Path(name).stem]))
    require('Safety' in [x.strip() for x in model['IndInv'].split('/\\')], 'IndInv must imply Safety by decomposition')
    domains, columns = matrix(model)
    cells = []
    for line in (base / 'coverage.tsv').read_text().splitlines()[1:]:
        action, column, module, lemma = line.split('\t')
        targets = g.targets(module, lemma)
        require(len(targets) == 1 and targets[0] in reach, 'unreachable cell: ' + line)
        cell_contract(g.nodes[targets[0]], action, column, domains)
        cells.append((action, column))
    expected = {(a, c) for a in domains for c in columns}
    require(len(cells) == 3456 and set(cells) == expected, 'coverage must be exactly 64 x 54')
    def init_contract(statement, target):
        if statement.lstrip().startswith('ASSUME '):
            ps, goal = sequent(statement)
        else:
            ps, goal = [], statement
        return set(map(compact, ps)) <= {'Sizes', 'Design', 'Location'} and compact(goal) == 'Init=>' + target
    for col in columns:
        goal = 'TypInv' if col == 'TypeOK' else 'P_' + col if col in {'B2OffInit', 'SI1', 'SI2', 'SI3', 'SI4', 'SI5', 'SI6'} else col
        require(any(init_contract(g.nodes[k].statement, goal) for k in reach), 'missing Init target: ' + col)
    degrees = {k: 0 for k in reach}
    for k in reach:
        for dep in g.nodes[k].edges & reach:
            degrees[dep] += 1
    todo, removed = deque(k for k, d in degrees.items() if d == 0), 0
    while todo:
        k = todo.popleft(); removed += 1
        for dep in g.nodes[k].edges & reach:
            degrees[dep] -= 1
            if degrees[dep] == 0:
                todo.append(dep)
    require(removed == len(reach), 'cyclic proof dependency')
    require(all(g.nodes[k].module in proof_modules for k in reach), 'referenced theorem has no complete module result')
    result = dict(pinned_models=2, proof_modules=len(rows), obligations=sum(r['obligations'] for r in rows),
                  methods=dict(Counter(r['method'] for r in rows)), actions=64, invariant_conjuncts=54,
                  reachable_cells=len(cells), init_targets=len(columns), closing_contracts=len(contracts),
                  new_assumptions=0, new_axioms=0, omitted=0, renamed_models=equivalence)
    return summary, result


def replay(text, count_only=False):
    """Use declarations and terminal events, including repeated source locations."""
    events, frame = [], None
    for line in text.splitlines():
        if line == '@!!BEGIN':
            require(frame is None, 'nested toolbox event'); frame = {}
        elif line == '@!!END':
            require(frame is not None, 'unmatched toolbox end'); events.append(frame); frame = None
        elif line.startswith('@!!'):
            require(frame is not None and ':' in line, 'malformed toolbox field')
            key, value = line[3:].split(':', 1)
            require(key not in frame, 'duplicate toolbox field')
            frame[key] = value.strip()
    require(frame is None, 'truncated toolbox event')
    counts, initial, states, locations = [], set(), {}, {}
    for event in events:
        kind = event.get('type')
        if kind == 'obligationsnumber':
            counts.append(int(event['count']))
        elif kind == 'obligation':
            oid, loc, status = event.get('id', ''), event.get('loc', ''), event.get('status')
            require(oid.isdecimal() and int(oid) > 0 and re.fullmatch(r'\d+:\d+:\d+:\d+', loc), 'invalid obligation identity')
            require(oid not in locations or locations[oid] == loc, 'obligation location changed')
            if status == 'to be proved':
                require(oid not in states, 'duplicate or late obligation declaration')
                initial.add(oid)
            else:
                require(oid in initial, 'undeclared obligation')
            locations[oid], states[oid] = loc, status
        else:
            require(kind == 'warning', 'native error or unsupported toolbox event: ' + repr(event))
    require(len(counts) == 1 and counts[0] > 0 and counts[0] == len(initial) == len(states), 'incomplete obligation inventory')
    require(not re.search(r'\b[1-9]\d*\s+(?:obligations?\s+)?omitted\b|omitted_proofs_count\s*=\s*[1-9]|\[ERROR\]:[^\n]*(?:Omitted|Missing) proof', text, re.I), 'omitted or missing proof')
    if not count_only:
        require(set(states.values()) <= GOOD, 'unfinished obligations: ' + repr(Counter(states.values())))
        require(re.search(r'\bAll ' + str(counts[0]) + r' obligations? proved\.', text) is not None, 'missing native completion')
    return Counter(locations.values()), dict(Counter(states.values()))


def group_alive(pgid):
    try:
        os.killpg(pgid, 0)
        return True
    except ProcessLookupError:
        return False


def run_process(command, cwd, env, timeout, output):
    output.mkdir(parents=True, exist_ok=False)
    write(output / 'command.json', command)
    with (output / 'stdout.log').open('w') as out, (output / 'stderr.log').open('w') as err:
        child = subprocess.Popen(command, cwd=cwd, env=env, stdout=out, stderr=err, start_new_session=True)
        with (output.parent / 'process-groups.txt').open('a') as record:
            record.write(str(child.pid) + '\n')
        print('PGID', child.pid, shlex.join(command), flush=True)
        timed_out, rc = False, None
        try:
            rc = child.wait(timeout=timeout)
        except subprocess.TimeoutExpired:
            timed_out = True; rc = None
        finally:
            if group_alive(child.pid):
                os.killpg(child.pid, signal.SIGTERM)
                try:
                    child.wait(timeout=5)
                except subprocess.TimeoutExpired:
                    pass
                if group_alive(child.pid):
                    os.killpg(child.pid, signal.SIGKILL)
                child.wait()
            for _ in range(50):
                if not group_alive(child.pid):
                    break
                time.sleep(.1)
            exited = not group_alive(child.pid)
            write(output / 'exit.json', dict(rc=rc, timeout=timed_out, pgid=child.pid, group_exited=exited))
    require(not timed_out and rc == 0 and exited, 'incomplete or failed process: ' + str(output))
    stdout, stderr = (output / 'stdout.log').read_text(), (output / 'stderr.log').read_text()
    require(sum('@!!BEGIN' in t for t in (stdout, stderr)) == 1, 'ambiguous toolbox stream')
    return stdout + '\n' + stderr


def tool_environment(args, summary):
    binary = shutil.which(args.tlapm)
    require(binary is not None, 'tlapm not found; use --tlapm')
    binary = Path(binary).resolve()
    prefix = Path(args.prefix).resolve() if args.prefix else binary.parent.parent
    stdlib = prefix / 'lib/tlapm/stdlib'
    require((stdlib / 'TLAPS.tla').is_file(), 'TLAPS standard library missing; use --prefix')
    matches = {name: (prefix / name).is_file() and sha(prefix / name) == value for name, value in summary['toolchain']['files'].items()}
    exact = all(matches.values()) and sha(binary) == summary['toolchain']['files']['bin/tlapm']
    if args.require_toolchain:
        require(exact, 'toolchain SHA mismatch: ' + repr([n for n, ok in matches.items() if not ok]))
    env = dict(os.environ)
    env['PATH'] = os.pathsep.join([str(binary.parent), str(prefix / 'lib/tlapm/backends/bin'), env.get('PATH', '')])
    env.pop('TLAPM_SMT_SOLVER', None)
    env.pop('CLASSPATH', None)
    env.setdefault('OCAMLRUNPARAM', 's=1M,o=10,O=10')
    env.setdefault('TLAPM_POLY_OPTIONS', '--maxheap 6144 --stackspace 64 --gcthreads 2')
    return binary, stdlib, env, dict(exact_recorded_toolchain=exact, tlapm_sha256=sha(binary), files_match=matches)


def prove(args, summary):
    rows = {r['module']: r for r in summary['modules']}
    if args.sample is not None:
        require(0 < args.sample <= len(rows), '--sample must be between 1 and 226')
        modules = random.Random(args.seed).sample(sorted(rows), args.sample)
    elif args.all:
        modules = sorted(rows)
    else:
        require(args.module in rows, 'unknown proof module: ' + str(args.module))
        modules = [args.module]
    require(args.out is not None, 'proof runs require --out DIRECTORY')
    out = Path(args.out).resolve()
    require(not out.exists(), '--out must be a new directory')
    out.mkdir(parents=True)
    binary, stdlib, env, identity = tool_environment(args, summary)
    write(out / 'selection.json', dict(modules=modules, seed=args.seed, toolchain=identity))
    print(json.dumps(dict(selected=modules, exact_recorded_toolchain=identity['exact_recorded_toolchain'])), flush=True)
    results = []
    for module in modules:
        row = rows[module]
        unit = out / module
        unit.mkdir()
        source = unit / 'source'
        shutil.copytree(HERE / 'source', source)
        env['TLAPM_CACHE_DIR'] = str(unit / 'cache')
        env['TMPDIR'] = str(unit / 'tmp')
        Path(env['TLAPM_CACHE_DIR']).mkdir(); Path(env['TMPDIR']).mkdir()
        common = [str(binary), '--strict', '--threads', str(args.threads), '-I', str(stdlib), '-I', str(source), '--nofp']
        stretch = args.stretch or row['stretch']
        def command(lines, factor, count=False):
            return common + ['--stretch', str(factor)] + (['-N'] if count else []) + ['--toolbox', str(lines[0]), str(lines[1]), str(source / (module + '.tla'))]
        if args.shards:
            require(row.get('shards'), 'no recorded shards for ' + module)
            inventory = run_process(command([0, 0], stretch, True), source, env, args.timeout, unit / 'inventory')
            expected, _ = replay(inventory, count_only=True)
            require(sum(expected.values()) == row['obligations'], 'whole inventory count differs from SUMMARY')
            actual = Counter()
            for i, shard in enumerate(row['shards']):
                text = run_process(command(shard['lines'], args.stretch or shard.get('stretch', stretch)), source, env, args.timeout, unit / ('shard-' + str(i + 1)))
                locs, statuses = replay(text)
                require(sum(locs.values()) == shard['obligations'], 'shard count differs from SUMMARY')
                actual.update(locs)
            require(actual == expected, 'shard obligation location multiset differs from whole module')
            results.append(dict(module=module, obligations=sum(actual.values()), method='sharded', passed=True))
        else:
            text = run_process(command([0, 0], stretch), source, env, args.timeout, unit / 'whole')
            locs, statuses = replay(text)
            require(sum(locs.values()) == row['obligations'], 'whole count differs from SUMMARY')
            results.append(dict(module=module, obligations=sum(locs.values()), statuses=statuses, method='whole-module', passed=True))
        require({p.name: sha(p) for p in source.glob('*.tla')} == {p.name: sha(p) for p in (HERE / 'source').glob('*.tla')}, 'run changed source bytes')
        write(out / 'results.json', results)
        print(json.dumps(results[-1]), flush=True)
    return results


def main():
    def interrupted(signum, frame):
        raise KeyboardInterrupt
    signal.signal(signal.SIGTERM, interrupted)
    p = argparse.ArgumentParser(description=__doc__)
    selection = p.add_mutually_exclusive_group()
    selection.add_argument('--static', action='store_true', help='only static checks (default)')
    selection.add_argument('--module', help='rerun this module in full')
    selection.add_argument('--sample', type=int, help='rerun N uniformly sampled modules in full')
    selection.add_argument('--all', action='store_true', help='rerun all 226 modules')
    p.add_argument('--seed', type=int, default=0)
    p.add_argument('--shards', action='store_true', help='use recorded ranges and compare against a fresh whole inventory')
    p.add_argument('--tlapm', default='tlapm')
    p.add_argument('--prefix', help='TLAPS installation prefix, if not inferred from tlapm')
    p.add_argument('--require-toolchain', action='store_true', help='require the recorded tool and library byte hashes')
    p.add_argument('--threads', type=int, default=1)
    p.add_argument('--stretch', type=float, help='override recorded timeout multiplier')
    p.add_argument('--timeout', type=float, default=18000, help='wall seconds per invocation; expiry is failure')
    p.add_argument('--out', help='new directory for proof runs, logs and process records')
    args = p.parse_args()
    require(args.threads > 0 and args.timeout > 0 and (args.stretch is None or args.stretch > 0), 'positive resource parameters required')
    require(not args.shards or args.module or args.sample or args.all, '--shards requires a module selection')
    summary, result = static_checks()
    print(json.dumps(dict(static='PASS', **result), indent=2), flush=True)
    if args.module or args.sample is not None or args.all:
        prove(args, summary)


if __name__ == '__main__':
    try:
        main()
    except (ValueError, KeyError, OSError, subprocess.SubprocessError, KeyboardInterrupt) as exc:
        print('FAIL: ' + str(exc), file=sys.stderr)
        raise SystemExit(1)
