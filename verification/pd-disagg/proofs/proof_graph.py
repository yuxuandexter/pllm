#!/usr/bin/env python3
"""Independent, conservative scoped BY/USE/QED graph for the packaged proof syntax.

This is a static dependency checker, not a TLA+ prover. Unknown/ambiguous proof
references fail closed. EXTENDS merely supplies scope; it is never a proof edge.
"""
import argparse
from collections import Counter, defaultdict, deque
from dataclasses import dataclass, field
import re
from pathlib import Path

def read_text(path):
    return Path(path).read_text()

IDENT = r'[A-Za-z_][A-Za-z_0-9]*'
TOP = re.compile(r'^(?:LOCAL\s+)?(?:THEOREM|LEMMA|COROLLARY|PROPOSITION)\s+(' + IDENT + r')\s*==', re.M)
STEP = re.compile(r'^[ \t]*<(\d+)>(?:(\w+)\.[ \t]*|[ \t]+)', re.M)
REFERENCE = re.compile(r'<\d+>\w+|\b' + IDENT + r'(?:!' + IDENT + r')*\b')

def clean(text, strings=False):
    """Preserve offsets; remove nested comments and optionally quoted strings."""
    token = re.compile(r'\(\*|\\\*[^\n]*|"(?:\\.|[^"\\])*"')
    parts = []
    cursor = 0
    while True:
        m = token.search(text, cursor)
        if not m:
            parts.append(text[cursor:])
            break
        parts.append(text[cursor:m.start()])
        if m[0] == '(*':
            depth, end = 1, m.end()
            while depth:
                pair = re.search(r'\(\*|\*\)', text[end:])
                if not pair:
                    raise ValueError('unterminated TLA comment')
                depth += 1 if pair[0] == '(*' else -1
                end += pair.end()
            value = text[m.start():end]
        else:
            end, value = m.end(), m[0]
        parts.append(re.sub(r'[^\n]', ' ', value) if value.startswith(('(*', '\\*')) or strings else value)
        cursor = end
    return ''.join(parts)

def compact(text):
    return re.sub(r'"(?:\\.|[^"\\])*"|\s+', lambda m: m[0] if m[0].startswith('"') else '', clean(text))

def definitions(text):
    s = clean(text)
    boundaries = list(re.finditer(r'^(?:(?:LOCAL\s+)?(' + IDENT + r')(?:\([^\n]*?\))?\s*==|(?:THEOREM|LEMMA|EXTENDS|ASSUME|AXIOM|VARIABLES?|CONSTANTS?)\b|={4,})', s, re.M))
    out = {}
    for i,m in enumerate(boundaries):
        if m[1]:
            end = boundaries[i+1].start() if i+1 < len(boundaries) else len(s)
            if m[1] in out:
                raise ValueError('duplicate definition:' + m[1])
            out[m[1]] = s[m.end():end].strip()
    return out

@dataclass
class Node:
    key: str
    module: str
    name: str
    level: int
    start: int
    content: int
    line: int
    parent: str = ''
    end: int = 0
    header_end: int = 0
    statement: str = ''
    kind: str = ''
    children: list = field(default_factory=list)
    edges: set = field(default_factory=set)

class IndependentGraph:
    def __init__(self, source):
        self.source = Path(source)
        self.texts = {p.stem: clean(read_text(p)) for p in sorted(self.source.glob('*.tla'))}
        self.nodes, self.top, self.imports, self.instances = {}, {}, {}, {}
        self.errors = []
        self.visibility = {}
        self.externals = set()
        for mod, s in self.texts.items():
            ex = re.search(r'^EXTENDS\s+([^\n]+(?:\n[ \t]+(?:' + IDENT + r'\s*,?\s*)+)?)(?=\n|$)', s, re.M)
            # Packaged sources use single-line EXTENDS; multiline rejected.
            self.imports[mod] = re.findall(IDENT, ex[1]) if ex else []
            self.instances[mod] = dict(re.findall(r'^(' + IDENT + r')\s*==\s*INSTANCE\s+(' + IDENT + r')', s, re.M))
            for m in re.finditer(r'^\s*(?:LOCAL\s+)?INSTANCE\s+(' + IDENT + r')', s, re.M):
                self.imports[mod].append(m[1])
            self._parse(mod, s)
        for mod in self.texts:
            self._visible(mod, set())
        for n in self.nodes.values():
            self._edges(n)

    def _parse(self, mod, s):
        theorems = list(TOP.finditer(s))
        for i, m in enumerate(theorems):
            end = theorems[i+1].start() if i+1 < len(theorems) else len(s)
            stop = re.search(r'^={4,}|^(?:USE|HIDE)\b|^(?:LOCAL\s+)?' + IDENT + r'(?:\([^\n]*?\))?\s*==', s[m.end():end], re.M)
            if stop:
                end = m.end() + stop.start()
            key = mod + '::' + m[1]
            if key in self.nodes:
                self.errors.append('duplicate-theorem:' + key)
            n = Node(key, mod, m[1], 0, m.start(), m.end(), s.count('\n', 0, m.start())+1, end=end)
            self.nodes[key] = n
            self.top[(mod, m[1])] = key
            stack = [n]
            for step in STEP.finditer(s, m.end(), end):
                level = int(step[1])
                while len(stack) > 1 and stack[-1].level >= level:
                    stack.pop().end = step.start()
                parent = stack[-1]
                if level != parent.level + 1:
                    self.errors.append('unsupported-proof-level:' + mod + ':' + str(s.count('\n',0,step.start())+1))
                label = ('<' + step[1] + '>' + step[2]) if step[2] else ''
                content = step.end()
                kindmatch = re.match(r'(QED|HIDE|USE|DEFINE|SUFFICES|PICK|TAKE|HAVE|WITNESS|CASE)\b', s[content:])
                kind = kindmatch[1] if kindmatch else ''
                label = label or '@' + str(s.count('\n',0,step.start())+1)
                childkey = parent.key + '/' + label
                if childkey in self.nodes:
                    self.errors.append('duplicate-step:' + childkey)
                child = Node(childkey, mod, label, level, step.start(), content,
                             s.count('\n',0,step.start())+1, parent=parent.key, end=end, kind=kind)
                self.nodes[childkey] = child
                parent.children.append(childkey)
                stack.append(child)
            for x in stack[1:]:
                x.end = end
        for n in list(self.nodes.values()):
            if n.module != mod:
                continue
            n.header_end = self.nodes[n.children[0]].start if n.children else n.end
            head = s[n.content:n.header_end]
            stop = re.search(r'\b(?:BY|PROOF|OBVIOUS|OMITTED)\b', head)
            n.statement = head[:stop.start() if stop else len(head)].strip()

    def _visible(self, mod, stack):
        if mod in self.visibility:
            return self.visibility[mod]
        if mod in stack:
            self.errors.append('cyclic-module-import:' + mod)
            return set()
        out = {mod}
        for dep in self.imports.get(mod, []):
            if dep in self.texts:
                out.update(self._visible(dep, stack | {mod}))
        self.visibility[mod] = out
        return out

    def _resolve(self, n, token):
        if token.startswith('<'):
            scope = n
            while scope:
                if scope.name == token:
                    # Self/ancestor sequent and PICK labels denote hypotheses.
                    if re.match(r'(?:ASSUME|SUFFICES|PICK|TAKE|CASE)\b', scope.statement):
                        return None
                    self.errors.append('non-context-self-reference:' + n.key + ':' + token)
                    return None
                candidates = [self.nodes[k] for k in scope.children if self.nodes[k].name == token]
                if candidates:
                    target = candidates[0]
                    if target.start >= n.start:
                        self.errors.append('forward-step-reference:' + n.key + ':' + token)
                    return target.key
                scope = self.nodes.get(scope.parent)
            self.errors.append('unresolved-step:' + n.key + ':' + token)
            return None
        if '!' in token:
            parts = token.split('!')
            mod = n.module
            for alias in parts[:-1]:
                if alias not in self.instances.get(mod, {}):
                    self.errors.append('unresolved-instance:' + n.key + ':' + token)
                    return None
                mod = self.instances[mod][alias]
            candidates = [self.top[(m, parts[-1])] for m in self.visibility.get(mod,{mod}) if (m,parts[-1]) in self.top]
        else:
            candidates = [self.top[(m, token)] for m in self.visibility[n.module] if (m,token) in self.top]
        if len(candidates) > 1:
            self.errors.append('ambiguous-theorem:' + n.key + ':' + token)
        if len(candidates) == 1:
            return candidates[0]
        self.externals.add(token)
        return None

    def _edges(self, n):
        s = self.texts[n.module]
        head = s[n.content:n.header_end]
        by = re.search(r'\bBY\b([\s\S]*)', head)
        if n.children:
            qeds = [self.nodes[k] for k in n.children if self.nodes[k].kind == 'QED']
            if len(qeds) != 1 or qeds[0].key != n.children[-1]:
                self.errors.append('missing-or-nonfinal-qed:' + n.key)
            else:
                n.edges.add(qeds[0].key)
        refs = by[1] if by else ''
        # USE only supplies facts to subsequent proof nodes in its scope.
        if n.kind == 'USE':
            refs = head[len('USE'):]
        elif not (by and re.match(r'\s*ONLY\b', by[1])):
            cursor = n
            while cursor.parent:
                parent = self.nodes[cursor.parent]
                for sibling in parent.children:
                    prev = self.nodes[sibling]
                    if prev.start >= cursor.start:
                        break
                    if prev.kind == 'USE':
                        n.edges.add(prev.key)
                cursor = parent
        refs = clean(refs, strings=True)
        for token in REFERENCE.findall(refs):
            target = self._resolve(n, token)
            if target:
                n.edges.add(target)

    def closure(self, root):
        found, todo = set(), [root]
        while todo:
            key = todo.pop()
            if key in found or key not in self.nodes:
                continue
            found.add(key)
            todo.extend(self.nodes[key].edges - found)
        return found

    def targets(self, module, lemma):
        if lemma.startswith('<'):
            return [n.key for n in self.nodes.values() if n.module == module and n.name == lemma]
        key = module + '::' + lemma
        return [key] if key in self.nodes else []
