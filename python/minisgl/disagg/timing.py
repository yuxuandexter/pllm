"""Measure ledger calls without CUDA synchronization or per-step I/O.

Core time includes the outermost method body and lock acquisition. Diagnostic
and auxiliary spans overlap it and must not be added to it. CPU time belongs to
the calling thread. MINISGL_PD_LEDGER_TIMING=1 enables wrappers at construction;
disabled ledgers keep their original methods."""
from __future__ import annotations

from contextlib import contextmanager
from copy import deepcopy
from functools import wraps
import hashlib
import inspect
import os
from pathlib import Path
import platform
import threading
import time
import uuid

SCHEMA = "ledger-timing"
PUBLIC = frozenset("""register_peer peer_lost open_req alloc pages_of page_states token_slots
release prefix_guard shared_snapshot shared_refs hit seal dedup evict flush_shared launch
bind_row row_gen k_launch step_done complete d_expect d_descriptor d_landed d_mark_visible
d_stopped d_unstopped d_xfer p_post p_expose p_plan p_begin p_cancel p_done p_abort p_entry
free_pages stats check""".split())
SUBSPANS = ("_kargs", "_kargs_post", "_check", "_shared_check")
OBSERVATION = frozenset(("stats", "shared_snapshot", "_trace_entry_snapshot"))
SCOPES = ("prepare", "complete", "retire")
AUXILIARY = ("write_slots", "row_check", "stage", "xcheck", "kargs_seen")


def _counter():
    return dict(wall_ns=0, cpu_ns=0, calls=0, errors=0)


def _add(dst, wall, cpu, error=False):
    dst["wall_ns"] += wall
    dst["cpu_ns"] += cpu
    dst["calls"] += 1
    dst["errors"] += int(error)


class LedgerTiming:
    def __init__(self, instance, role, check_every, *, limit=100000,
                 wall=None, cpu=None):
        self.wall = wall or time.perf_counter_ns
        self.cpu = cpu or time.thread_time_ns
        self.tls = threading.local()
        self.lock = threading.RLock()  # never acquire ledger lock while holding this lock
        self.limit = limit
        self.records = []
        self.pending = {}
        self.cursor = 0
        self.token = 0
        self.steps = set()
        self.last_bound = 0
        self.active_calls = 0
        self.unknown_calls = 0
        self.overflow = False
        self.issues = set()
        self.ambient = {}
        self.instrumentation = _counter()
        self.export_cost = _counter()
        self.instance = instance
        self.role = role
        self.header = dict(
            schema=SCHEMA, instance=instance, role=role,
            run_id=os.environ.get("MINISGL_PD_TIMING_RUN_ID") or uuid.uuid4().hex,
            glue_commit=os.environ.get("MINISGL_PD_TIMING_COMMIT"),
            glue_tree_sha256=os.environ.get("MINISGL_PD_TIMING_TREE_SHA256"),
            python=platform.python_version(), main_thread_id=threading.main_thread().ident,
            construction_thread_id=threading.get_ident(),
            affinity=sorted(os.sched_getaffinity(0)) if hasattr(os, "sched_getaffinity") else None,
            check_every=check_every, enabled=True, limit=limit,
            clocks={name: vars(time.get_clock_info(name))
                    for name in ("perf_counter", "thread_time")},
            source_sha256={name: hashlib.sha256(Path(__file__).with_name(name).read_bytes()).hexdigest()
                           for name in ("ledger.py", "timing.py", "scheduler_pd.py")},
            public_methods=sorted(PUBLIC),
            subspans_inclusive=list(SUBSPANS),
        )

    def encode_snapshot(self, snapshot, label="timing_json"):
        """JSON work is observation; its cost is visible in the next snapshot."""
        import json
        with self.scope(None, "observation"):
            with self.auxiliary(label):
                return json.dumps(snapshot).encode()

    def issue(self, name):
        with self.lock:
            self.issues.add(name)

    def start(self):
        return self.wall(), self.cpu()

    def stop(self, start):
        cpu, wall = self.cpu(), self.wall()
        w, c = wall - start[0], cpu - start[1]
        if not isinstance(w, int) or not isinstance(c, int) or w < 0 or c < 0:
            self.issue("invalid_clock")
            return 0, 0  # invalid status prevents these placeholders becoming measurements
        return w, c

    def context(self):
        return getattr(self.tls, "context", (None, "control"))

    @contextmanager
    def scope(self, record, name):
        old = self.context()
        self.tls.context = (record, name)
        try:
            yield
        finally:
            self.tls.context = old

    def new_batch(self, batch):
        start = self.start()
        with self.lock:
            self.token += 1
            r = dict(token=self.token, instance=self.instance, role=self.role,
                     step_id=None, phase="prefill" if batch.is_prefill else "decode",
                     num_reqs=len(batch.reqs), launched=False, completed=False, failed=False,
                     ledger_wall_ns=0, ledger_cpu_ns=0, clock_calls=0,
                     by_scope={k: _counter() for k in SCOPES}, by_call={},
                     subspans_inclusive={k: _counter() for k in SUBSPANS},
                     auxiliary_inclusive={k: _counter() for k in AUXILIARY},
                     auxiliary_exclusive={k: _counter() for k in AUXILIARY},
                     instrumentation=_counter())
            # Bound pending storage as well as sealed storage. Overflow remains a hard flag.
            if len(self.pending) + len(self.records) < self.limit:
                self.pending[self.token] = r
            else:
                self.overflow = True
            batch.pd_timing = r
        self._instrument(start, r)
        return r

    def bind(self, record, step):
        with self.lock:
            if record is None:
                self.issues.add("missing_batch_token")
                return
            if record["step_id"] is not None or step in self.steps:
                self.issues.add("duplicate_step")
            if step != self.last_bound + 1:
                self.issues.add("step_sequence_gap")
            self.last_bound = step
            if len(self.steps) < self.limit:
                self.steps.add(step)
            else:
                self.overflow = True
            record["step_id"] = step

    def seal(self, record, completed):
        start = self.start()
        with self.lock:
            if record is None or record.get("cursor") is not None:
                self.issues.add("missing_or_duplicate_seal")
                return
            record["completed"] = bool(completed and record["launched"] and not record["failed"])
            if not record["completed"]:
                record["failed"] = True
                self.issues.add("failed_batch")
            self.pending.pop(record["token"], None)
            self.cursor += 1
            record["cursor"] = self.cursor
            if len(self.records) < self.limit:
                self.records.append(record)
            else:
                self.overflow = True
            self._instrument(start, record)

    def _instrument(self, start, record=None):
        w, c = self.stop(start)
        with self.lock:
            _add(self.instrumentation, w, c)
            if record is not None:
                _add(record["instrumentation"], w, c)
                record["clock_calls"] += 4

    def _record(self, group, name, w, c, error, context, exclusive=None):
        start = self.start()
        r, scope = context
        with self.lock:
            if r is not None and r.get("cursor") is not None:
                self.issues.add("call_after_seal")
                r = None
            if r is not None:
                r["clock_calls"] += 4
                if error:
                    r["failed"] = True
                if group == "core":
                    r["ledger_wall_ns"] += w
                    r["ledger_cpu_ns"] += c
                    _add(r["by_scope"].setdefault(scope, _counter()), w, c, error)
                    _add(r["by_call"].setdefault(name, _counter()), w, c, error)
                else:
                    _add(r[group].setdefault(name, _counter()), w, c, error)
                    if exclusive is not None:
                        _add(r["auxiliary_exclusive"][name], *exclusive, error)
            else:
                key = f"{threading.get_ident()}:{scope}:{group}:{name}"
                if key not in self.ambient and len(self.ambient) >= 4096:
                    self.overflow = True
                else:
                    bucket = self.ambient.setdefault(key, dict(thread_id=threading.get_ident(),
                        thread_name=threading.current_thread().name, scope=scope, group=group,
                        call=name, **_counter()))
                    _add(bucket, w, c, error)
                    bucket["clock_calls"] = bucket.get("clock_calls", 0) + 8
                    if exclusive is not None:
                        bucket.setdefault("exclusive_wall_ns", 0)
                        bucket.setdefault("exclusive_cpu_ns", 0)
                        bucket["exclusive_wall_ns"] += exclusive[0]
                        bucket["exclusive_cpu_ns"] += exclusive[1]
            if error:
                self.issues.add("call_exception")
        self._instrument(start, r)

    def wrap(self, fn, name, group="core", forced_scope=None, unknown=False):
        @wraps(fn)
        def call(*args, **kwargs):
            depth = getattr(self.tls, "depth", 0)
            if unknown:
                with self.lock:
                    self.unknown_calls += 1
                    self.issues.add("unknown_method:" + name)
            if group == "core" and depth:
                return fn(*args, **kwargs)  # Count step_done calling complete as one outer interval.
            context = (None, forced_scope) if forced_scope else self.context()
            if group == "core":
                self.tls.depth = depth + 1
            old_context = self.context()
            self.tls.context = context
            with self.lock:
                self.active_calls += 1
            error = True
            start = self.start()
            try:
                result = fn(*args, **kwargs)
                error = False
                return result
            finally:
                w, c = self.stop(start)
                self.tls.context = old_context
                if group == "core":
                    self.tls.depth = depth
                    # Subtract only core body intervals from an auxiliary region.
                    for frame in getattr(self.tls, "aux", ()):
                        frame[0] += w
                        frame[1] += c
                self._record(group, name, w, c, error, context)
                with self.lock:
                    self.active_calls -= 1
        return call

    @contextmanager
    def auxiliary(self, name):
        context = self.context()
        frames = getattr(self.tls, "aux", None)
        if frames is None:
            frames = self.tls.aux = []
        child = [0, 0]
        frames.append(child)
        error = True
        start = self.start()
        try:
            yield
            error = False
        finally:
            w, c = self.stop(start)
            frames.pop()
            self._record("auxiliary_inclusive", name, w, c, error, context,
                         (max(0, w-child[0]), max(0, c-child[1])))

    def snapshot(self, after=None, through=None):
        """Immutable window copy (after, through]; omitted bounds return summary only.

        Cursors count all sealed records, including failed ones. No reset or ring overwrite.
        Consumers must take quiet before/after summaries and validate equal instance/run IDs.
        """
        start = self.start()
        with self.lock:
            issues = sorted(self.issues)
            if self.overflow:
                issues.append("overflow")
            if self.pending:
                issues.append("pending")
            if self.active_calls:
                issues.append("active_calls")
            rows = None
            if after is not None or through is not None:
                if (type(after) is not int or type(through) is not int or
                        not 0 <= after <= through <= self.cursor):
                    raise ValueError("expected 0 <= after <= through <= cursor")
                selected = [r for r in self.records if after < r["cursor"] <= through]
                if [r["cursor"] for r in selected] != list(range(after + 1, through + 1)):
                    issues.append("cursor_gap")
                rows = selected
            out = deepcopy(dict(schema=SCHEMA, header=self.header, instance=self.instance,
                run_id=self.header["run_id"], cursor=self.cursor, record_count=len(self.records),
                pending=len(self.pending), active_calls=self.active_calls,
                unknown_calls=self.unknown_calls, overflow=self.overflow, issues=issues,
                status="INCONCLUSIVE" if issues else "OK", records=rows,
                after_cursor=after, through_cursor=through,
                ambient=list(self.ambient.values()), instrumentation=self.instrumentation,
                export_cost=self.export_cost))
        w, c = self.stop(start)
        with self.lock:
            _add(self.export_cost, w, c)
        out["this_export"] = dict(wall_ns=w, cpu_ns=c)
        return out


class _TimedGuard:
    """Time original lock __enter__/__exit__, never the caller's with-body."""
    def __init__(self, timer, cm):
        self.cm = cm
        self.enter = timer.wrap(cm.__enter__, "prefix_guard.acquire")
        self.exit = timer.wrap(cm.__exit__, "prefix_guard.release")

    def __enter__(self):
        return self.enter()

    def __exit__(self, *exc):
        return self.exit(*exc)


def _guard_method(timer, bound):
    @wraps(bound)
    def guard(*args, **kwargs):
        # Forward even invalid arguments to the original API for identical TypeErrors.
        try:
            cm = bound(*args, **kwargs)
        except BaseException:
            timer.issue("call_exception")
            raise
        return _TimedGuard(timer, cm)
    return guard


def _auxiliary_method(timer, fn, label, hooks):
    from . import trace
    @wraps(fn)
    def call(*args, **kwargs):
        if label == "kargs_seen" and not (trace.ENABLED and trace.STEP_LINES
                                          and isinstance(hooks.ledger, trace.TracedLedger)):
            return fn(*args, **kwargs)
        with timer.auxiliary(label):
            return fn(*args, **kwargs)
    return call


def install(ledger):
    """Called only when enabled, after PdLedger's original constructor has completed."""
    timer = LedgerTiming(ledger.instance, ledger.role, ledger.check_every)
    ledger._timing = timer
    for name, fn in inspect.getmembers(type(ledger), inspect.isfunction):
        if name.startswith("_"):
            continue
        bound = getattr(ledger, name)
        if name == "prefix_guard":
            ledger.prefix_guard = _guard_method(timer, bound)
            continue
        scope = "observation" if name in OBSERVATION else "idle_check" if name == "check" else None
        setattr(ledger, name, timer.wrap(bound, name, forced_scope=scope, unknown=name not in PUBLIC))
    for name in SUBSPANS:
        setattr(ledger, name, timer.wrap(getattr(ledger, name), name, "subspans_inclusive"))
    ledger._trace_entry_snapshot = timer.wrap(ledger._trace_entry_snapshot,
        "_trace_entry_snapshot", forced_scope="observation")
    return timer


def collector(ledger):
    # TracedLedger keeps the real type and delegates; never replace it with a timing proxy.
    return getattr(ledger, "_timing", None)


def prepare_batch(fn):
    @wraps(fn)
    def call(self, batch, *args, **kwargs):
        timer = getattr(self.pd, "timing", None)
        if timer is None:
            return fn(self, batch, *args, **kwargs)
        record = timer.new_batch(batch)
        with timer.scope(record, "prepare"):
            try:
                return fn(self, batch, *args, **kwargs)
            except BaseException:
                record["failed"] = True
                timer.seal(record, False)
                raise
    return call


def finish_batch(fn):
    @wraps(fn)
    def call(self, last_data, *args, **kwargs):
        timer = getattr(self.pd, "timing", None)
        if timer is None or last_data is None:
            return fn(self, last_data, *args, **kwargs)
        record = getattr(last_data[0].batch, "pd_timing", None)
        success = False
        with timer.scope(record, "retire"):
            try:
                result = fn(self, last_data, *args, **kwargs)
                success = True
                return result
            finally:
                timer.seal(record, success)  # after original lazy_free_region exits
    return call


def attach_hooks(hooks):
    timer = hooks.timing
    if timer is None:
        return
    from . import trace
    from .ledger import _np
    scheduler_source = Path(__file__).parent.parent / "scheduler" / "scheduler.py"
    timer.header["source_sha256"]["scheduler/scheduler.py"] = hashlib.sha256(scheduler_source.read_bytes()).hexdigest()
    timer.header.update(row_check=hooks.cache.row_check, kread=hooks.kread, xcheck=hooks.xcheck,
                        trace=trace.ENABLED, trace_steps=trace.STEP_LINES, trace_ddesc=trace.DDESC,
                        numpy=None if _np is None else _np.__version__)
    for obj, method, label in ((hooks.cache, "_write_slots", "write_slots"),
                               (hooks.cache, "check_rows", "row_check"),
                               (hooks, "_xcheck", "xcheck"), (hooks, "kargs_seen", "kargs_seen")):
        setattr(obj, method, _auxiliary_method(timer, getattr(obj, method), label, hooks))
    original_snapshot = hooks.snapshot
    def snapshot():
        with timer.scope(None, "observation"):
            with timer.auxiliary("stats_snapshot"):
                return original_snapshot()
    hooks.snapshot = snapshot
    original_complete = hooks.complete
    def complete(batch, *args, **kwargs):
        with timer.scope(getattr(batch, "pd_timing", None), "complete"):
            return original_complete(batch, *args, **kwargs)
    hooks.complete = complete
