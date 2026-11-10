"""Trace log points for trace validation against PdCore (the CPU control-plane checks).

``TracedLedger`` wraps any ``Ledger`` (the Python reference or the Rust core): it forwards
every call unchanged and, for the ledger calls the trace needs, writes one ``PDT`` line:

    PDT {"k": "call", "seq": 17, "inst": "0x1a2b...", "side": "D", "m": "d_landed",
         "ev": "evidence", "rid": "...", "room": 5, "h": 3, "xid": 2, "eid": -1, "d_h": -1,
         "peer": "0x...", "a": [...], "res": 0, "pages": [[40, 3]], "pre": {"private": 3},
         "post": {"private": 3}, ...}

Every line carries the emitting instance ``inst``, ``rid``, ``room``, its own ``h`` (ledger gen),
``xid`` (D's transfer id; on P the D xid it pushes to), ``eid`` and ``d_h`` (P only, else -1),
``peer``, and ``seq``: a per-process sequence number taken under one process-wide lock that is
held across the ledger call itself, so ``seq`` order is the order of the ledger state changes
even with P's transfer worker thread and the scheduler thread calling at once (and the lines
are written in that order too).  ``pages`` are run-length encoded ``[[first, count], ...]``;
``pre`` / ``post`` count the states of those pages before / after the call (needs the optional
``page_states`` query; the Rust core may omit it, then they are absent).  The schema follows
trace conformance's ``trace_shim.py`` events (k = call / role / flush / match / router) so its extractor
can read these lines instead of the shim.

Lines (``ev``): ``alloc`` (P only: uid <-> h), ``publish`` (d_expect, exposed pages),
``flush`` (one per xid), ``evidence`` (every d_landed / d_stopped / d_unstopped result,
including late evidence and drops), ``visible``, ``release`` (why=finish|abort|failed, page
states after), ``read`` (first launch per request), ``complete`` (P: the last prefill step of a
request, written when the request posts or releases, with the seq it had), ``post``,
``begin``, ``done`` (every p_done result), ``abort`` (every p_abort: entry state and why),
``peer_lost`` (affected xids / eids), ``peer``, ``match``, ``role``; the router writes
``router`` (outcome per request).  ``begin`` / ``done`` / ``abort`` (KernelReadPins compatibility) carry the
entry's source pages (``pages``, recorded at its p_post; ``[]`` when the entry holds none: never
posted, or already finished) and their ``pre`` / ``post`` state counts, like the D lines.

Per-step lines (KernelReadPins compatibility, ``k = "step"``, no per-request fields): every ``launch`` /
``k_launch`` writes ``{"k":"step","ev":"klaunch","inst","side","step","it":[[row, gen], ...],
"npad","seq"}`` (``it`` in batch order; row -1 when the call gave no rows) before that call's
``read`` lines, and every ``complete`` / ``step_done`` writes ``{"k":"step","ev":"kdone","inst",
"side","step","seq"}``, P and D.  So no ledger call consumes a seq without a line (the P
``complete`` seq holes of untraced completion are gone: ``at_seq`` of a ``complete`` line is the seq of its
``kdone`` line).  ``MINISGL_PD_TRACE_STEPS=0`` drops the step lines only (then P's complete
leaves its seq hole again, as before).  In a server process (``hold_step_lines``) step lines are
not written one by one: they are held and written together with the next other PDT line in one
write, or after ``STEP_HOLD_LINES`` lines / ``STEP_HOLD_S`` seconds, when the scheduler idles,
and at exit, so file order stays seq order.

Refused calls: one ``k = ev = "rejected"`` record, actual API ``m``, complete
pre-call ``args`` / ``kwargs``, legacy ``a`` encoding, exception / message / guard /
phase, and available identity/page observations. The original LedgerViolation is
re-raised. "rejected" means the API raised, NOT that it rolled back: a postcondition
failure may have changed state. No success record or success-context update occurs.
Rejected-call extraction checks the captured before and after states.

Descriptor capture (descriptor-capture): ``MINISGL_PD_TRACE_DDESC=0`` disables the additive
``ddesc_v=1`` observations and restores the old PDT bytes/sequence. When enabled,
role/peer/post gain independent layout/input/registered-entry snapshots; ``ddesc``
records the actual D return, ``ddesc_recv`` records wire/binding dispositions,
``xfer_plan`` records actual return arrays, and ``xfer_submit``/``xfer_result``
observe backend and final TransferEngine call boundaries. Submit means attempt,
not completion. Layout/address arrays retain exact JSON integers and list order.

Always on at INFO (``MINISGL_PD_TRACE=0`` turns it off): trace validation needs these lines from
every GPU run; they cost a few lines per request plus two per step.
"""

from __future__ import annotations

import atexit
import json
import logging
import os
import threading
import time
from collections import OrderedDict
from copy import deepcopy
from contextvars import ContextVar
from typing import Dict, List, Tuple

from . import ledger as L

logger = logging.getLogger(__name__)

_LOCK = threading.RLock()  # process wide: one seq order for every ledger in this process
_SEQ = [0]
_MAX_CTX = 1 << 16

_OFF = ("0", "false", "no", "off")
ENABLED = os.environ.get("MINISGL_PD_TRACE", "1") not in _OFF
DDESC = os.environ.get("MINISGL_PD_TRACE_DDESC", "1") not in _OFF
_XFER_CONTEXT = ContextVar("pdt_xfer_context", default=None)
STEP_LINES = os.environ.get("MINISGL_PD_TRACE_STEPS", "1") not in _OFF
STEP_HOLD_LINES = 256  # held step lines written at the latest with the 256th ...
STEP_HOLD_S = 1.0  # ... or with the first step line that finds the oldest one 1 s old
_DIGEST_TABLE = None  # lazily initialized public period weights + prefix sums (about 1 MiB)
_STEP = {"pd_step": True}  # LogRecord attribute that marks a step line

_E_NAMES = {0: "none", L.E_POSTED: "posted", L.E_SUBMITTED: "submitted",
            L.E_ABORT_REQ: "abort_req", L.E_DONE: "done", L.E_FAILED: "failed",
            L.E_CANCELLED: "cancelled"}
_X_NAMES = {0: "none", L.X_POSTED: "posted", L.X_LANDED: "landed", L.X_VISIBLE: "visible",
            L.X_STOPPED: "stopped", L.X_QUARANTINED: "quarantined"}
_SEND_NAMES = {L.SEND_NOTHING: "nothing", L.SEND_DONE: "done", L.SEND_ACK: "ack",
               L.SEND_FAIL_UNSTOPPED: "fail_unstopped"}


def runs(pages: List[int]) -> List[List[int]]:
    """Run-length encoding of a page list: [[first, count], ...] in list order."""
    out: List[List[int]] = []
    for p in pages:
        if out and out[-1][0] + out[-1][1] == p:
            out[-1][1] += 1
        else:
            out.append([int(p), 1])
    return out


def unruns(rl: List[List[int]]) -> List[int]:
    return [a + i for a, n in rl for i in range(n)]


def write(rec: Dict, step: bool = False) -> int:
    """Write one PDT record with the next seq (also used by the router and the glue); returns
    the seq (0 when tracing is off).  ``step`` marks a per-step line (held by StepLineHandler)."""
    if not ENABLED:
        return 0
    with _LOCK:
        _SEQ[0] += 1
        rec["seq"] = _SEQ[0]
        logger.info("PDT %s", json.dumps(rec, separators=(",", ":"), default=str),
                    extra=_STEP if step else None)
        return _SEQ[0]


def transfer_call(boundary, call, session, srcs, dsts, lens):
    """Observe final call arguments, without holding a trace/ledger lock during I/O.

    Context is an immutable tuple of scalar identity fields, carried by the caller,
    never guessed from session names. A submit is an attempt, not completion evidence.
    Exceptions are recorded then re-raised; existing backend error policy still applies.
    """
    context = _XFER_CONTEXT.get()
    if not (ENABLED and DDESC) or context is None:
        return call(session, srcs, dsts, lens)
    fields = dict(context)
    attempt = write(dict(fields, k="call", ev="xfer_submit", m=boundary, ddesc_v=1,
                         boundary=boundary, status="attempt", session=session, a=[], res=None,
                         src_addrs=deepcopy(srcs), dst_addrs=deepcopy(dsts),
                         nbytes=deepcopy(lens)))
    try:
        result = call(session, srcs, dsts, lens)
    except BaseException as error:
        write(dict(fields, k="call", ev="xfer_result", m=boundary, ddesc_v=1,
                   boundary=boundary, submit_seq=attempt, status="raised", a=[], res=None,
                   exception=type(error).__name__, message=str(error)))
        raise
    write(dict(fields, k="call", ev="xfer_result", m=boundary, ddesc_v=1,
               boundary=boundary, submit_seq=attempt, status="returned", a=[], res=result))
    return result


def kargs_summary(ip, qo, indices, out_loc, nb: int, source: str) -> Dict:
    """argument capture/argument capture additive fields from observed arrays (not recomputed ledger arguments).
    Digest is an order-sensitive diagnostic checksum, NOT a collision-free proof.
    Inputs are host arrays; PDHooks owns any device synchronization. See the argument capture fields.
    """
    ip, qo = list(map(int, ip)), list(map(int, qo))
    nr = len(ip) - 1
    if (len(qo) != len(ip) or not 0 <= nb <= nr or not ip or ip[0] or qo[0]
            or any(a > b for a, b in zip(ip, ip[1:]))
            or any(a > b for a, b in zip(qo, qo[1:]))
            or ip[-1] != len(indices) or qo[-1] != len(out_loc)):
        raise L.LedgerViolation("trace kargs shape / pointer mismatch")
    kd = []
    for j in range(nb):
        n, m = ip[j + 1] - ip[j], qo[j + 1] - qo[j]
        kd.append([n, int(indices[ip[j]]) if n else -1,
                   int(indices[ip[j + 1] - 1]) if n else -1,
                   m, int(out_loc[qo[j]]) if m else -1,
                   int(out_loc[qo[j + 1] - 1]) if m else -1])
    kp = sorted(set(map(int, indices[ip[nb]:])) | set(map(int, out_loc[qo[nb]:])))

    def digest(a):
        np = L._np
        if np is None:
            return sum((int(x) + 1) * ((i * 40503) % 65521 + 1)
                       for i, x in enumerate(a)) % (1 << 64)
        global _DIGEST_TABLE
        if _DIGEST_TABLE is None:
            i = np.arange(65521, dtype=np.uint64)
            weights = (i * 40503) % 65521 + 1
            sums = np.concatenate((np.zeros(1, dtype=np.uint64),
                                   np.cumsum(weights, dtype=np.uint64)))
            _DIGEST_TABLE = weights, sums
        weights, sums = _DIGEST_TABLE
        v = np.asarray(a).astype(np.uint64, copy=False)
        total = 0
        # w(i + 65521) == w(i). dot(v,w) + sum(w) equals sum((v+1)*w),
        # with uint64 wrap in each dot and modulo after adding chunks. No slot is skipped.
        for start in range(0, len(v), 65521):
            part = v[start:start + 65521]
            total += int(np.dot(part, weights[:len(part)])) + int(sums[len(part)])
        return total % (1 << 64)

    return {"kd": kd, "kp": kp,
            "kh": [digest(indices[:ip[nb]]), digest(out_loc[:qo[nb]])], "ks": source}


class StepLineHandler(logging.StreamHandler):
    """The PDT handler of a server process (``hold_step_lines``): same stream and formatter as
    the ``init_logger`` handler it replaces, and every record not marked as a step line is
    written and flushed at once as before.  A step line is formatted at once (its own time
    stamp) but held, and written in the same write as the next other record, or when
    ``STEP_HOLD_LINES`` are held, or by the first step line that finds the oldest held one
    ``STEP_HOLD_S`` old, or at ``flush()`` (scheduler idle, shutdown, process exit).  Records
    reach this handler in seq order (``write`` holds ``_LOCK``), so file order is seq order;
    lost on SIGKILL: at most the held step lines, all after the last other PDT line."""

    def __init__(self, stream, formatter=None) -> None:
        super().__init__(stream)
        if formatter is not None:
            self.setFormatter(formatter)
        self._held: List[str] = []
        self._t0 = 0.0
        self.writes = 0  # stream writes so far (tests, the byte count)

    def emit(self, record) -> None:
        try:
            text = self.format(record) + self.terminator
            if getattr(record, "pd_step", False):
                now = time.monotonic()
                if not self._held:
                    self._t0 = now
                self._held.append(text)
                if len(self._held) < STEP_HOLD_LINES and now - self._t0 < STEP_HOLD_S:
                    return
                text = ""
            self._out(text)
        except RecursionError:
            raise
        except Exception:
            self.handleError(record)

    def _out(self, text: str) -> None:
        if self._held:
            text = "".join(self._held) + text
            self._held.clear()
        if text:
            self.stream.write(text)
            self.writes += 1
            super().flush()

    def flush(self) -> None:
        self.acquire()
        try:
            self._out("")
        finally:
            self.release()


_HOLDERS: List[StepLineHandler] = []


def flush_steps() -> None:
    """Write any held step lines now (cheap when none are held)."""
    for h in list(_HOLDERS):
        if h._held:
            try:
                h.flush()
            except Exception:  # closed stream at exit: nothing left to do
                pass


def hold_step_lines() -> None:
    """Server processes: swap the trace logger's plain StreamHandler(s) (``init_logger``'s) for
    StepLineHandler(s) on the same stream and formatter, and flush them at process exit (atexit
    and the multiprocessing exit of the scheduler subprocess).  Idempotent.  A holder that is no
    longer on the logger (``init_logger`` cleared it: a second PDHooks in one test process) writes
    what it holds and is dropped."""
    lg = logging.getLogger(__name__)
    for h in list(_HOLDERS):
        if h not in lg.handlers:
            _HOLDERS.remove(h)
            try:
                h.flush()
            except Exception:
                pass
    for h in list(lg.handlers):
        if type(h) is logging.StreamHandler:
            nh = StepLineHandler(h.stream, h.formatter)
            nh.setLevel(h.level)
            lg.removeHandler(h)
            lg.addHandler(nh)
            _HOLDERS.append(nh)
    if not getattr(hold_step_lines, "_reg", False):
        hold_step_lines._reg = True  # type: ignore[attr-defined]
        atexit.register(flush_steps)
        import multiprocessing.util as mpu

        mpu.Finalize(None, flush_steps, exitpriority=100)  # mp children skip atexit


class _Ctx(OrderedDict):
    def put(self, k, v) -> None:
        self[k] = v
        self.move_to_end(k)
        while len(self) > _MAX_CTX:
            self.popitem(last=False)


class TracedLedger:
    """Same methods as ``Ledger`` (calls pass through unchanged) plus trace context helpers:
    ``bind(gen, **ctx)`` (rid, room, uid of a request), ``note(**kw)`` (one-shot fields for the
    next traced call on this thread, e.g. ``why``), ``event(k, **fields)``."""

    def __init__(self, inner, inst: int, side: str) -> None:
        self.inner = inner
        self.inst = inst
        self.side = side
        self._tl = threading.local()
        self.gen_ctx = _Ctx()  # gen -> {rid, room, uid}
        self.eid_ctx = _Ctx()  # P: eid -> {h, d_h, xid, room, peer}
        self.eid_of = _Ctx()  # P: (peer, xid) -> eid
        self.read_seen = _Ctx()  # gens whose first launch was traced
        self.last_complete: Dict[int, Tuple[int, int]] = {}  # P: gen -> (seq, step)
        # P: step -> gens it covers, kept here (not read from the ledger's internals) so that
        # the complete line is written for any Ledger implementation (the Rust one has no .steps)
        self._step_gens: Dict[int, List[int]] = {}
        self._ps = getattr(inner, "page_size", 1)
        self.defer_kargs = False  # PDHooks observes the staged metadata before assigning seq
        self._pending_kargs = None  # (step record, first-read records); no seq reserved
        # One independent observation of this instance, never from the peer descriptor.
        self._ddesc_layout = (deepcopy(getattr(inner, "layout", None))
                              if ENABLED and DDESC else None)

    # -- passthrough for everything not traced (stats, check, d_xfer, internals in tests) --
    def __getattr__(self, name):
        value = getattr(self.inner, name)
        if callable(value) and not name.startswith("_"):
            return lambda *a, **kw: self._call(name, a, kw)
        return value

    def prefix_guard(self):
        # Same order as _traced: trace -> ledger, including calls from the P worker.
        from contextlib import ExitStack
        stack = ExitStack()
        stack.enter_context(_LOCK)
        try:
            stack.enter_context(self._call("prefix_guard", ()))
        except BaseException:
            stack.close()
            raise
        return stack

    # -- context ---------------------------------------------------------------------------
    def bind(self, gen: int, **ctx) -> None:
        cur = dict(self.gen_ctx.get(gen, {}))
        cur.update({k: v for k, v in ctx.items() if v is not None})
        self.gen_ctx.put(gen, cur)

    def note(self, m: str, **kw) -> None:
        self._tl.note = dict(kw, _m=m)  # only for the next call, and only if it is m()

    def _take_note(self, m: str) -> Dict:
        kw = getattr(self._tl, "note", None) or {}
        self._tl.note = None
        if kw.get("_m") != m:
            return {}
        kw = dict(kw)
        del kw["_m"]
        return kw

    def event(self, k: str, **fields) -> None:
        rec = {"k": k, "inst": hex(self.inst), "side": self.side}
        rec.update(fields)
        if k == "role" and ENABLED and DDESC:
            rec.update(ddesc_v=1, layout=deepcopy(self._ddesc_layout))
            if self._ddesc_layout is None:
                rec["capture_error"] = "local_layout_unavailable"
        write(rec)

    def ddesc_receive(self, *, descriptor, wire_pages, disposition, **identity):
        if ENABLED and DDESC:
            with _LOCK:
                self.flush_kargs()
                rec = self._rec("XFER_REQ", "ddesc_recv", [], None, ddesc_v=1,
                                descriptor=deepcopy(descriptor), wire_pages=deepcopy(wire_pages),
                                disposition=disposition, bind=disposition == "bound")
                rec.update(identity)
                write(rec)

    def transfer_write(self, eid, backend, session, srcs, dsts, lens):
        if not (ENABLED and DDESC):
            return backend.write(session, srcs, dsts, lens)
        with _LOCK:
            rec = self._entry_rec("backend.write", "xfer_submit", [], None, eid)
            keys = ("inst", "side", "rid", "room", "uid", "h", "xid", "eid", "d_h", "peer")
            context = tuple((k, rec[k]) for k in keys)
        token = _XFER_CONTEXT.set(context)
        try:
            return transfer_call("backend.write", backend.write, session, srcs, dsts, lens)
        finally:
            _XFER_CONTEXT.reset(token)

    # -- helpers ---------------------------------------------------------------------------
    def _states(self, pages: List[int]) -> Dict[str, int] | None:
        q = getattr(self.inner, "page_states", None)
        if q is None or not pages:
            return None if q is None else {}
        out: Dict[str, int] = {}
        for s in q(pages):
            n = L.PAGE_STATE_NAMES.get(s, str(s))
            out[n] = out.get(n, 0) + 1
        return out

    def _rec(self, m: str, ev: str, a, res, gen: int = -1, xid: int = -1, eid: int = -1,
             d_h: int = -1, peer: int = 0, pages: List[int] | None = None, pre=None,
             **extra) -> Dict:
        ctx = self.gen_ctx.get(gen, {}) if gen is not None and gen >= 0 else {}
        if xid == -1 and self.side == "D":
            xid = ctx.get("xid", -1)  # the request's incoming transfer
        rec = {"k": "call", "inst": hex(self.inst), "side": self.side, "m": m, "ev": ev,
               "rid": extra.pop("rid", ctx.get("rid", "")),
               "room": extra.pop("room", ctx.get("room", -1)),
               "uid": extra.pop("uid", ctx.get("uid", -1)), "h": gen, "xid": xid, "eid": eid,
               "d_h": d_h, "peer": hex(peer) if peer else "", "a": list(a), "res": res}
        if pages is not None:
            rec["pages"] = runs(pages)
            if pre is not None:
                rec["pre"] = pre
            post = self._states(pages)
            if post is not None:
                rec["post"] = post
        rec.update(extra)
        return rec

    def _call(self, m: str, a, kwargs=None, context=None):
        """The sole invocation boundary: success is silent; ledger exceptions get one line.

        Freeze inputs before calling: a failing implementation may already have mutated
        them or its state. This does NOT claim rollback or a disabled model action.
        Metadata probes in builders use inner directly, so they cannot double-report.
        """
        kw = kwargs or {}
        if not ENABLED:
            return getattr(self.inner, m)(*a, **kw)
        with _LOCK:
            def snapshot(v):
                if isinstance(v, memoryview):
                    return bytes(v)
                if isinstance(v, (list, tuple)):
                    return type(v)(snapshot(x) for x in v)
                if isinstance(v, dict):
                    return {k: snapshot(x) for k, x in v.items()}
                return deepcopy(v)
            args, keys = snapshot(a), snapshot(kw)
            try:
                return getattr(self.inner, m)(*a, **kw)
            except L.LedgerViolation as exc:
                # p_begin/p_done may commute past an observed-but-not-yet-written launch.
                # On failure publish that earlier launch before the terminal rejection.
                try:
                    self.flush_kargs()
                    self._rejected(m, args, keys, exc, context or {})
                except Exception:
                    # Never replace the original fatal ledger exception with a logging
                    # or optional observation failure. Missing capture remains an error.
                    try:
                        logger.exception("PDT rejected capture failed for %s", m)
                    except Exception:
                        pass  # even a broken logging handler must not mask exc
                raise

    def _rejected(self, m, args, kwargs, exc, c):
        gen, xid, eid, peer, d_h = -1, -1, -1, 0, -1
        extra = {}
        if m in ("alloc", "release", "hit", "seal", "dedup", "pages_of", "token_slots",
                 "d_expect", "p_post", "p_expose"):
            gen = args[0]
        elif m == "bind_row":
            gen = args[1]
        if m in ("register_peer", "peer_lost", "p_abort"):
            peer = args[0]
        if m == "open_req":
            extra["room"] = args[0]
        if m == "d_expect":
            peer = args[1]
        if m in ("d_landed", "d_stopped"):
            peer, room, gen, xid = args[:4]
            extra["room"] = room
        if m in ("d_mark_visible", "d_unstopped", "d_descriptor", "d_xfer"):
            xid = args[0]
            gen, peer = c.get("_gen", -1), c.get("_peer", 0)
        if m in ("p_post", "p_expose"):
            peer, room, d_h, xid = args[2:6]
            extra["room"] = room
            try:
                extra["dst"] = runs(args[6])
            except (TypeError, ValueError, OverflowError) as error:
                extra["dst_error"] = type(error).__name__ + ": " + str(error)
        if m == "p_abort":
            xid = args[1]
            eid = c.get("_eid", self.eid_of.get((peer, xid), -1))
        elif m in ("p_begin", "p_done", "p_cancel", "p_entry", "p_plan"):
            eid = args[0]
        if isinstance(eid, int) and eid >= 0:
            e = self.eid_ctx.get(eid, {})
            gen, xid = e.get("h", gen), e.get("xid", xid)
            peer, d_h = e.get("peer", peer), e.get("d_h", d_h)
            extra["room"] = e.get("room", -1)
        # a keeps the existing success record's split encoding; args/kwargs below
        # are the complete invocation, including fields omitted by legacy a.
        a = args[:1] if m == "register_peer" else args[:6] if m in ("p_post", "p_expose") else args
        if m == "register_peer":
            extra["layout"] = args[1]
        if m in ("launch", "k_launch", "complete", "step_done"):
            extra["step"] = args[0]
        text = str(exc)
        reason = text.split("] ", 1)[1] if text.startswith("[ledger inst=") else text
        phase = "postcondition" if reason.startswith("postcondition ") else "unspecified"
        guard = reason.removeprefix("postcondition ").split(":", 1)[0]
        if L.ROLE_REFUSED in reason:
            guard = L.ROLE_REFUSED
        # A role/gen guard can reject malformed operands before checking their
        # types. Keep the exact operands in args, not in numeric context fields.
        gen, xid, eid, d_h = (v if isinstance(v, int) else -1 for v in (gen, xid, eid, d_h))
        peer = peer if isinstance(peer, int) else 0
        if "room" in extra and not isinstance(extra["room"], int):
            extra["room"] = -1
        rec = self._rec(m, "rejected", a, None, gen=gen, xid=xid, eid=eid,
                        peer=peer, d_h=d_h, **extra)
        rec.update(k="rejected", args=args, kwargs=kwargs,
                   exception=type(exc).__name__, exception_module=type(exc).__module__,
                   message=text, guard=guard, phase=phase)
        if gen in self.gen_ctx:
            rec["prefix_tokens"] = self.gen_ctx[gen].get("prefix_tokens")
        if "prefix_tokens" in kwargs:
            rec["prefix_tokens"] = kwargs["prefix_tokens"]
        if "_pages" in c or "_src" in c:
            rec["pages"] = runs(c.get("_pages", c.get("_src", [])))
        if "_pre" in c:
            rec["pre"] = c["_pre"]
        if "_map" in c:
            rec["map_before"] = c["_map"]
        if "_shared" in c:
            rec["shared_before"] = c["_shared"]
        if "_before" in c:
            rec["before"] = c["_before"]
        # Refusal may leave broken state. Only optional read-only observations,
        # never the success builder (which mutates trace context and expects res).
        for key, probe in (("map_after", lambda: self.inner.pages_of(gen)),
                           ("shared_after", self.inner.shared_snapshot if
                            hasattr(self.inner, "shared_snapshot") else None)):
            if "_shared" in c and probe is not None and (key != "map_after" or gen >= 0):
                try:
                    rec[key] = probe()
                except Exception as error:
                    rec[key + "_error"] = type(error).__name__ + ": " + str(error)
        # Kernel validation extensions accept bytes. Preserve every byte instead
        # of json's default=str; ordinary scalar/list/tuple encoding is unchanged.
        def encode(v):
            if isinstance(v, (bytes, bytearray, memoryview)):
                return {"encoding": "hex", "data": bytes(v).hex()}
            if isinstance(v, (list, tuple)):
                return [encode(x) for x in v]
            if isinstance(v, dict):
                return {k: encode(x) for k, x in v.items()}
            return v
        write(encode(rec))

    def _traced(self, m: str, a, build, kwargs=None):
        """Run inner.m(*a) and build/write its record under the process-wide trace lock."""
        if not ENABLED:
            return getattr(self.inner, m)(*a, **(kwargs or {}))
        note = self._take_note(m)
        with _LOCK:
            # Only P's entry worker operations may commute with the pending launch. All
            # other calls flush first, preserving the old order on direct ledger clients.
            if m not in ("p_begin", "p_done"):
                self.flush_kargs()
            ctx = build("pre", None, note)
            res = self._call(m, a, kwargs, dict(note, **(ctx or {})))
            recs = build("post", res, dict(note, **ctx)) if ctx is not None else None
            for rec in recs or []:
                write(rec)
        return res

    # -- the traced Ledger methods -------------------------------------------------------------
    def register_peer(self, peer: int, layout: List[int]) -> int:
        def b(phase, res, c):
            if phase == "pre":
                return {"_layout": deepcopy(layout)} if DDESC else {}
            extra = {"ddesc_v": 1, "peer_layout": c["_layout"]} if DDESC else {}
            return [self._rec("register_peer", "peer", [peer], res, peer=peer, **extra)]
        return self._traced("register_peer", (peer, layout), b)

    def peer_lost(self, peer: int) -> List[int]:
        def b(phase, res, c):
            if phase == "pre":
                return {}
            key = "xids" if self.side == "D" else "eids"
            out = [self._rec("peer_lost", "peer_lost", [peer], list(res), peer=peer,
                             **{key: list(res)})]
            if self.side == "P":
                for eid in res:  # cancelled entries: the ledger collected them
                    self._entry_end(eid)
            return out
        return self._traced("peer_lost", (peer,), b)

    def open_req(self, room: int, *, prefix_tokens: List[int] | None = None) -> int:
        if prefix_tokens is None:  # preserve the archived wheel's old signature
            return self._call("open_req", (room,))
        with _LOCK:
            gen = self._call("open_req", (room,), {"prefix_tokens": prefix_tokens})
            self.bind(gen, prefix_tokens=list(prefix_tokens))
            return gen

    # PrefixSharing ledger events only. PdTrace extraction of these events is a separate trace conformance
    # deliverable; forwarding and recording do not assert model acceptance.
    def _prefix(self, method: str, args, gen: int = -1):
        def b(phase, res, c):
            if phase == "pre":
                # Metadata lookup must not change the inner method's refusal (e.g.
                # out-of-range page or D role). A refused call emits no success line.
                try:
                    mapped = self.inner.pages_of(gen) if gen >= 0 else []
                    pages = list(mapped)
                    if method in ("hit", "dedup", "evict"):
                        pages = list(dict.fromkeys(pages + [args[-1]]))
                    pre = self._states(pages)
                except (L.LedgerViolation, IndexError, TypeError):
                    pages, mapped, pre = [], [], None
                return {"_pages": pages, "_pre": pre, "_map": mapped,
                        "_shared": self.inner.shared_snapshot()}
            return [self._rec(method, method, args, res, gen=gen, pages=c["_pages"],
                              pre=c["_pre"], prefix_tokens=self.gen_ctx.get(gen, {}).get("prefix_tokens"),
                              map_before=c["_map"],
                              map_after=self.inner.pages_of(gen) if gen >= 0 else [],
                              shared_before=c["_shared"], shared_after=self.inner.shared_snapshot())]
        return self._traced(method, args, b)

    def hit(self, gen: int, page: int) -> None:
        return self._prefix("hit", (gen, page), gen)

    def seal(self, gen: int) -> int:
        return self._prefix("seal", (gen,), gen)

    def dedup(self, gen: int, page: int) -> int:
        return self._prefix("dedup", (gen, page), gen)

    def evict(self, page: int) -> None:
        return self._prefix("evict", (page,))

    def flush_shared(self) -> int:
        return self._prefix("flush_shared", ())

    def d_descriptor(self, xid: int) -> tuple | None:
        # Frozen KernelReadPins Rust archive has no PrefixSharing descriptor API. Never manufacture one in
        # the wrapper; None is allowed only by the existing naive/PPost path.
        describe = getattr(self.inner, "d_descriptor", None)
        if describe is None:
            return None
        if not (ENABLED and DDESC):
            return self._call("d_descriptor", (xid,))
        with _LOCK:
            self.flush_kargs()
            result = self._call("d_descriptor", (xid,))
            frozen = deepcopy(result)  # actual return value, NOT publish/request/arguments
            x = self.inner.d_xfer(xid)
            write(self._rec("d_descriptor", "ddesc", [xid], None, gen=x[1],
                            xid=xid, peer=x[3], room=x[2], ddesc_v=1, descriptor=frozen))
            return result

    def alloc(self, gen: int, npages: int) -> List[int]:
        def b(phase, res, c):
            if phase == "pre":
                if c:
                    self.bind(gen, **{k: c[k] for k in ("rid", "room", "uid") if k in c})
                try:
                    before = self.inner.pages_of(gen)
                except L.LedgerViolation:
                    before = []
                return {"_before": before}
            return [self._rec("alloc", "alloc", [gen, npages], list(res), gen=gen,
                              pages=list(res), before=c["_before"],
                              after=self.inner.pages_of(gen),
                              action=("DGrow" if self.side == "D" and
                                      self.gen_ctx.get(gen, {}).get("xid") else
                                      "DRecvReq" if self.side == "D" else "PRecvReq"))]
        return self._traced("alloc", (gen, npages), b)

    def pages_of(self, gen: int) -> List[int]:
        return self._call("pages_of", (gen,))

    def token_slots(self, gen: int, lo: int, hi: int) -> List[int]:
        return self._call("token_slots", (gen, lo, hi,))

    def release(self, gen: int) -> int:
        def b(phase, res, c):
            if phase == "pre":
                try:
                    pages = self.inner.pages_of(gen)
                except L.LedgerViolation:
                    pages = []
                return {"_pages": pages, "_pre": self._states(pages)}
            out = []
            if self.side == "P" and gen in self.last_complete:
                out.append(self._complete_rec(gen))
            out.append(self._rec("release", "release", [gen], res, gen=gen,
                                 pages=c["_pages"], pre=c["_pre"],
                                 why=c.get("why", "finish")))
            self.read_seen.pop(gen, None)
            return out
        return self._traced("release", (gen,), b)

    def launch(self, step: int, items: List[Tuple[int, int, int]]) -> None:
        self._launch(lambda: self._call("launch", (step, items)), step, items, {})

    def k_launch(self, step: int, items: List[Tuple[int, int, int]], npad: int = 0,
                 rows: List[int] | None = None):
        """KernelReadPins KLaunch: the step's ``klaunch`` line, then the same ``read`` lines as ``launch``
        (m = "launch", so the trace extractor reads them unchanged) plus ``kargs: 1`` (and the
        item's table ``row`` when ``rows`` is given); returns the core's arrays."""
        if rows is None:
            return self._launch(lambda: self._call("k_launch", (step, items, npad)), step, items,
                                {"kargs": 1}, npad=npad)
        return self._launch(lambda: self._call("k_launch", (step, items, npad), {"rows": rows}), step,
                            items, {"kargs": 1}, rows, npad)

    # KernelReadPins compatibility: the row binding is forwarded unchanged (no trace line of its own; the row of
    # each item appears on its first read line and on every klaunch line of its steps)
    def bind_row(self, row: int, gen: int) -> None:
        return self._call("bind_row", (row, gen,))

    def row_gen(self, row: int) -> int:
        return self._call("row_gen", (row,))

    def _launch(self, call, step: int, items: List[Tuple[int, int, int]], extra: Dict,
                rows: List[int] | None = None, npad: int = 0):
        if not ENABLED:
            return call()
        with _LOCK:
            self.flush_kargs()
            res = call()  # rejection records itself before propagating
            if self.side == "P":
                self._step_gens[step] = [it[0] for it in items]
            rec = None
            if STEP_LINES:
                # PdCore[05e988a5] KLaunch:1259. Preserve row first; include every
                # item's generation AND read/write bounds (not just the first read).
                it = [[-1 if rows is None else rows[j], *items[j]] for j in range(len(items))]
                rec = {"k": "step", "ev": "klaunch", "inst": hex(self.inst), "side": self.side,
                       "step": step, "it": it, "npad": npad}
            reads = []
            for j, (gen, rd, wr) in enumerate(items):
                if gen not in self.read_seen:
                    self.read_seen.put(gen, step)
                    more = dict(extra) if rows is None else dict(extra, row=rows[j])
                    reads.append(self._rec("launch", "read", [step, [gen, rd, wr]], None, gen=gen,
                                           xid=self.gen_ctx.get(gen, {}).get("xid", -1),
                                           step=step, rd=rd, wr=wr, **more))
            self._pending_kargs = (rec, reads)
            if not (rec and extra.get("kargs") and self.defer_kargs):
                self.flush_kargs()
            return res

    def flush_kargs(self, step=None, summary=None) -> None:
        """Assign seq only now: klaunch and its read records remain adjacent and ordered.
        Next launch / completion / shutdown flushes an unobserved step WITHOUT a summary;
        absence is missing evidence, never a fabricated observation (argument capture)."""
        with _LOCK:
            pending = self._pending_kargs
            if pending is None:
                return
            rec, reads = pending
            if step is not None and (rec is None or rec["step"] != step):
                raise L.LedgerViolation("kargs observation does not match pending step")
            if rec is not None:
                if summary is not None:
                    rec.update(summary)
                write(rec, step=True)
            for r in reads:
                write(r)
            self._pending_kargs = None

    def complete(self, step: int) -> None:
        self._complete(lambda: self._call("complete", (step,)), step)

    def step_done(self, step: int) -> None:
        """KernelReadPins KDone: traced exactly like ``complete`` (the ``kdone`` line; P also keeps its seq
        for the request's ``complete`` line at post / release)."""
        self._complete(lambda: self._call("step_done", (step,)), step)

    def _complete(self, call, step: int) -> None:
        self.flush_kargs()
        if not ENABLED or (self.side != "P" and not STEP_LINES):
            return call()
        with _LOCK:
            gens = self._step_gens.get(step, [])
            call()  # rejection records itself before propagating
            if STEP_LINES:
                seq = write({"k": "step", "ev": "kdone", "inst": hex(self.inst),
                             "side": self.side, "step": step}, step=True)
            else:
                _SEQ[0] += 1  # untraced completion: the seq this complete had (a hole in the line sequence)
                seq = _SEQ[0]
            if self.side != "P":
                return
            self._step_gens.pop(step, None)  # only after the ledger accepted the completion
            for gen in gens:  # the request's complete line is written when it posts / releases
                self.last_complete[gen] = (seq, step)

    def _complete_rec(self, gen: int) -> Dict:
        seq, step = self.last_complete.pop(gen)
        rec = self._rec("complete", "complete", [step], None, gen=gen, step=step)
        rec["at_seq"] = seq  # the order position of the complete call itself
        return rec

    def d_expect(self, gen: int, peer: int, ntokens: int) -> int:
        def b(phase, res, c):
            if phase == "pre":
                return {}
            pages = self.inner.pages_of(gen)[:L.div_ceil(ntokens, self._ps)]
            ctx = dict(self.gen_ctx.get(gen, {}), xid=res)
            self.gen_ctx.put(gen, ctx)
            return [self._rec("d_expect", "publish", [gen, peer, ntokens], res, gen=gen,
                              xid=res, peer=peer, pages=pages, ntokens=ntokens)]
        return self._traced("d_expect", (gen, peer, ntokens), b)

    def _evidence(self, m: str, a, xid: int, kind: str):
        def b(phase, res, c):
            if phase == "pre":
                st, gen, room, peer, ntok = self.inner.d_xfer(xid)
                pages = []
                if st:
                    try:
                        pages = self.inner.pages_of(gen)[:L.div_ceil(ntok, self._ps)]
                    except L.LedgerViolation:  # the request record is already collected
                        pages = []
                return {"_gen": gen if st else -1, "_peer": peer, "_pages": pages,
                        "_pre": self._states(pages), "_xpre": _X_NAMES.get(st, st)}
            gen = c["_gen"]
            xst = self.inner.d_xfer(xid)[0]
            rec = self._rec(m, "evidence", a, res, gen=gen, xid=xid, peer=c["_peer"],
                            pages=c["_pages"], pre=c["_pre"], kind=kind,
                            code=res, drop=bool(isinstance(res, int) and res < 0
                                                and res != L.BAD_LEN),
                            x_pre=c["_xpre"], x_post=_X_NAMES.get(xst, xst))
            if "reason" in c:
                rec["reason"] = c["reason"]
            return [rec]
        return self._traced(m, a, b)

    def d_landed(self, peer: int, room: int, gen: int, xid: int, ntokens: int) -> int:
        return self._evidence("d_landed", (peer, room, gen, xid, ntokens), xid, "landed")

    def d_mark_visible(self, xid: int) -> None:
        def b(phase, res, c):
            if phase == "pre":
                return {"_gen": self.inner.d_xfer(xid)[1]}
            return [self._rec("d_mark_visible", "visible", [xid], None, gen=c["_gen"],
                              xid=xid)]
        return self._traced("d_mark_visible", (xid,), b)

    def d_stopped(self, peer: int, room: int, gen: int, xid: int) -> int:
        return self._evidence("d_stopped", (peer, room, gen, xid), xid, "stopped")

    def d_unstopped(self, xid: int, reason: int) -> int:
        self.note("d_unstopped", reason=L.Q_REASON_NAMES.get(reason, reason),
                  **self._peek_note("d_unstopped"))
        return self._evidence("d_unstopped", (xid, reason), xid, "unstopped")

    def _peek_note(self, m: str) -> Dict:
        kw = dict(getattr(self._tl, "note", None) or {})
        return {k: v for k, v in kw.items() if k != "_m"} if kw.get("_m") == m else {}

    def d_xfer(self, xid: int):
        return self._call("d_xfer", (xid,))

    def p_post(self, gen: int, ntokens: int, peer: int, peer_room: int, peer_gen: int,
               peer_xid: int, dst_pages: List[int], *, dst_descriptor: tuple | None = None) -> int:
        a = (gen, ntokens, peer, peer_room, peer_gen, peer_xid, dst_pages)

        def b(phase, res, c):
            if phase == "pre":
                return {}
            out = []
            if gen in self.last_complete:
                out.append(self._complete_rec(gen))
            pages = None
            if res > 0:
                pages = self.inner.pages_of(gen)[:L.div_ceil(ntokens, self._ps)]
                # src: the pages the entry holds (the ledger's e.src), for its begin / done /
                # abort lines; dropped when the entry finishes with stopped evidence
                self.eid_ctx.put(res, {"h": gen, "d_h": peer_gen, "xid": peer_xid,
                                       "room": peer_room, "peer": peer, "src": runs(pages)})
                self.eid_of.put((peer, peer_xid), res)
            extra = {}
            if DDESC:
                extra["ddesc_v"] = 1
                if res > 0:
                    snapshot = getattr(self.inner, "_trace_entry_snapshot", None)
                    if snapshot is None:
                        extra["capture_error"] = "entry_snapshot_unavailable"
                    else:
                        extra["entry_snapshot"] = snapshot(res)
            out.append(self._rec("p_post", "post", [gen, ntokens, peer, peer_room, peer_gen,
                                                    peer_xid], res, gen=gen, xid=peer_xid,
                                 eid=res if res > 0 else -1, d_h=peer_gen, peer=peer,
                                 room=peer_room, pages=pages, dst=runs(dst_pages), **extra,
                                 **({"dst_descriptor": dst_descriptor} if dst_descriptor is not None else {})))
            return out
        kw = {} if dst_descriptor is None else {"dst_descriptor": dst_descriptor}
        if ENABLED and DDESC and callable(getattr(type(self.inner), "_trace_entry_snapshot", None)):
            # Same lock order as prefix_guard. Hold across atomic registration AND
            # observation, so even a direct inner caller cannot remove/change the entry.
            with _LOCK, self.inner.prefix_guard():
                return self._traced("p_post", a, b, kw)
        return self._traced("p_post", a, b, kw)

    def p_expose(self, gen: int, ntokens: int, peer: int, peer_room: int, peer_gen: int,
                 peer_xid: int, dst_pages: List[int], *, dst_descriptor: tuple) -> tuple:
        # PdCore[05e988a5] PExpose:612: the only emitted publication is after source
        # holds and noncancellability have committed together in the inner ledger.
        args = (gen, ntokens, peer, peer_room, peer_gen, peer_xid, dst_pages)
        def b(phase, res, c):
            if phase == "pre":
                return {}
            eid, descriptor = res
            out = [self._complete_rec(gen)] if gen in self.last_complete else []
            pages = list(descriptor[-1]) if descriptor is not None else []
            if eid > 0:
                self.eid_ctx.put(eid, {"h": gen, "d_h": peer_gen, "xid": peer_xid,
                                      "room": peer_room, "peer": peer, "src": runs(pages)})
                self.eid_of.put((peer, peer_xid), eid)
            out.append(self._rec("p_expose", "expose", args[:6], eid, gen=gen, eid=eid,
                                 peer=peer, room=peer_room, d_h=peer_gen, xid=peer_xid,
                                 pages=pages, src_descriptor=descriptor,
                                 dst_descriptor=dst_descriptor,
                                 shared_after=self.inner.shared_snapshot()))
            return out
        return self._traced("p_expose", args, b, {"dst_descriptor": dst_descriptor})

    def _entry_rec(self, m: str, ev: str, a, res, eid: int, **extra) -> Dict:
        e = self.eid_ctx.get(eid, {})
        return self._rec(m, ev, a, res, gen=e.get("h", -1), xid=e.get("xid", -1), eid=eid,
                         d_h=e.get("d_h", -1), peer=e.get("peer", 0),
                         room=e.get("room", -1), **extra)

    def _entry_pre(self, eid: int) -> Dict:
        """Before an entry call: the entry state and the source pages it holds now (the
        p_post pages while the ledger still has the entry, else none) with their states."""
        st = self.inner.p_entry(eid)[0] if eid else 0
        e = self.eid_ctx.get(eid, {}) if st else {}
        src = unruns(e["src"]) if "src" in e else []
        return {"_st": st, "_src": src, "_pre": self._states(src)}

    def _entry_end(self, eid: int) -> None:
        """After an entry call: forget the source pages once the ledger collected the entry
        (done or cancelled; a failed entry keeps its quarantined pages forever)."""
        if eid and not self.inner.p_entry(eid)[0]:
            self.eid_ctx.get(eid, {}).pop("src", None)

    def p_plan(self, eid: int):
        if not (ENABLED and DDESC):
            return self._call("p_plan", (eid,))
        with _LOCK:
            self.flush_kargs()
            result = self._call("p_plan", (eid,))
            srcs, dsts, lens = deepcopy(result)
            write(self._entry_rec("p_plan", "xfer_plan", [eid], None, eid, ddesc_v=1,
                                  src_addrs=srcs, dst_addrs=dsts, nbytes=lens))
            return result

    def p_begin(self, eid: int) -> bool:
        def b(phase, res, c):
            if phase == "pre":
                return self._entry_pre(eid)
            out = [self._entry_rec("p_begin", "begin", [eid], res, eid, pages=c["_src"],
                                   pre=c["_pre"], entry=_E_NAMES.get(c["_st"], c["_st"]))]
            self._entry_end(eid)
            return out
        return self._traced("p_begin", (eid,), b)

    def p_cancel(self, eid: int) -> bool:
        def b(phase, res, c):
            if phase == "pre":
                return self._entry_pre(eid)
            # A successful cancellation has exactly p_abort's POSTED -> CANCELLED effect.
            # Keep that existing trace vocabulary for PCancelReg; retain the actual API in via.
            e = self.eid_ctx.get(eid, {})
            out = ([self._entry_rec("p_abort", "abort", [e.get("peer", 0), e.get("xid", -1)],
                                   L.SEND_ACK, eid, pages=c["_src"], pre=c["_pre"],
                                   entry=_E_NAMES.get(c["_st"], c["_st"]), result="ack",
                                   via="p_cancel", why=c.get("why", "?"))] if res else [])
            self._entry_end(eid)
            return out
        return self._traced("p_cancel", (eid,), b)

    def p_done(self, eid: int, ok: bool) -> int:
        def b(phase, res, c):
            if phase == "pre":
                return self._entry_pre(eid)
            out = [self._entry_rec("p_done", "done", [eid, bool(ok)], res, eid, pages=c["_src"],
                                   pre=c["_pre"], result=_SEND_NAMES.get(res, res))]
            self._entry_end(eid)
            return out
        return self._traced("p_done", (eid, ok), b)

    def p_abort(self, peer: int, peer_xid: int) -> int:
        def b(phase, res, c):
            if phase == "pre":
                eid = self.eid_of.get((peer, peer_xid), 0)
                return dict(self._entry_pre(eid), _eid=eid)
            eid = c["_eid"]
            extra = dict(entry=_E_NAMES.get(c["_st"], c["_st"]),
                         result=_SEND_NAMES.get(res, res), why=c.get("why", "?"),
                         pages=c["_src"], pre=c["_pre"])
            if eid:
                out = [self._entry_rec("p_abort", "abort", [peer, peer_xid], res, eid,
                                       **extra)]
                self._entry_end(eid)
                return out
            return [self._rec("p_abort", "abort", [peer, peer_xid], res, xid=peer_xid,
                              peer=peer, room=c.get("room", -1), d_h=c.get("d_h", -1),
                              **extra)]
        return self._traced("p_abort", (peer, peer_xid), b)

    def p_entry(self, eid: int):
        return self._call("p_entry", (eid,))

    def free_pages(self) -> int:
        return self._call("free_pages", ())

    def stats(self) -> Dict[str, int]:
        return self._call("stats", ())

    def check(self) -> None:
        return self._call("check", ())


def wrap(ledger, inst: int, side: str):
    """The traced view of ``ledger`` (idempotent)."""
    if isinstance(ledger, TracedLedger):
        return ledger
    return TracedLedger(ledger, inst, side)
