"""compatibility (the contract) in the glue: the ledger's instance role (ledger contract, role checks).

``RefLedger(..., role=None|"P"|"D")`` uses the Python ledger:
a role refusal raises LedgerViolation containing
``L.ROLE_REFUSED`` ("refused for this instance's role") before any argument pre-filter, and the
state is unchanged.  Role unset = compatibility.  Then the glue: make_pd builds P / D ledgers with
their role and logs it, D drops an untrusted bootstrap room outside [0, 2^63) before open_req,
gen_for never opens a local incarnation on D, and a P/D pair with roles gives the same tokens as
the colocated reference.
"""

from __future__ import annotations

import os
import random
import re

import pytest

import test_ledger as TL
from minisgl.disagg import ledger as L
from minisgl.disagg import messages as M

BF16, MODEL = L.DTYPE_CODES["bfloat16"], 777
LAY_D = [2, 1, 2, 4, 2, 17, 1 << 40, BF16, MODEL]
LAY_P = [2, 1, 2, 4, 2, 17, 2 << 40, BF16, MODEL]
LAYOUT_DECODE_PAGE_SIZE_FOUR = [2, 4, 2, 4, 2, 17, 1 << 40, BF16, MODEL]  # page size 4
D_INST, P_INST = 222, 111
REFUSED = re.escape(L.ROLE_REFUSED)


def mk(role, layout=LAY_D, inst=D_INST, n=16):
    led = L.RefLedger(n, layout, inst, check_every=1, role=role)
    peer, play = (P_INST, LAY_P) if inst == D_INST else (D_INST, LAY_D)
    assert led.register_peer(peer, play if layout[1] == 1 else LAY_P[:1] + [4] + LAY_P[2:]) == L.OK
    return led


def snap(led, gens=(), xids=(), eids=()):
    """What the interface observes; a refused call must leave it equal."""
    return (list(led.pst), led.stats(), led.free_pages(), [led.pages_of(g) for g in gens],
            [led.d_xfer(x) for x in xids], [led.p_entry(e) for e in eids],
            [led.row_gen(w) for w in range(4)])


def refused(led, fn, *a, gens=(), xids=(), eids=()):
    before = snap(led, gens, xids, eids)
    with pytest.raises(L.LedgerViolation, match=REFUSED):
        fn(*a)
    assert snap(led, gens, xids, eids) == before


def not_role(led, fn, *a):
    """Refused, but by the check it had before compatibility (not a role refusal)."""
    with pytest.raises(L.LedgerViolation) as e:
        fn(*a)
    assert L.ROLE_REFUSED not in str(e.value), e.value


def d_landed_visible(led, g, ntok):
    """D: expose all pages of g to P, land them, make them visible; returns the xid."""
    x = led.d_expect(g, P_INST, ntok)
    assert led.d_landed(P_INST, led.d_xfer(x)[2], g, x, ntok) == L.OK
    led.d_mark_visible(x)
    return x


# ------------------------------------------------------------------------------- 1. construction
def test_role_is_set_once_and_read_only():
    for role in (None, "P", "D"):
        assert L.RefLedger(16, LAY_D, D_INST, role=role).role == role
    assert L.RefLedger(16, LAY_D, D_INST).role is None  # default: unset
    assert L.RefLedger(16, LAY_D, D_INST, 0, "D").role == "D"  # positional after check_every
    led = L.RefLedger(16, LAY_D, D_INST, role="D")
    with pytest.raises(AttributeError):
        led.role = "P"
    assert led.role == "D"


@pytest.mark.parametrize("bad", ["X", "", "p", "d", "PD", " D"])
def test_a_bad_role_string_is_refused(bad):
    with pytest.raises(L.LedgerViolation, match="role must be None, 'P' or 'D'"):
        L.RefLedger(16, LAY_D, D_INST, role=bad)


@pytest.mark.parametrize("bad", [1, 2, True, b"D", ["D"]])
def test_a_role_that_is_not_a_str_is_a_type_error(bad):
    # the Rust layer converts the argument to a str first (PyO3): TypeError, not LedgerViolation
    with pytest.raises(TypeError):
        L.RefLedger(16, LAY_D, D_INST, role=bad)


def test_the_role_is_checked_before_the_layout():
    with pytest.raises(L.LedgerViolation, match="role must be"):
        L.RefLedger(16, LAY_D[:3], D_INST, role="X")
    with pytest.raises(TypeError):
        L.RefLedger(16, LAY_D[:3], D_INST, role=1)
    with pytest.raises(L.LedgerViolation, match="layout"):
        L.RefLedger(16, LAY_D[:3], D_INST, role="D")


# ------------------------------------------------------------------------------- 2. unset
def test_role_unset_keeps_every_call_that_a_role_refuses():
    """Role unset (compatibility): each call that P or D refuses below still has its old answer."""
    led = mk(None)
    g = led.open_req(-1)  # a local request
    assert len(led.alloc(g, 2)) == 2
    led.k_launch(1, [(g, 0, 2)])  # a row with no incoming transfer
    led.step_done(1)
    g2 = led.open_req(1 << 63)
    assert len(led.alloc(g2, 2)) == 2
    x = led.d_expect(g2, P_INST, 1)  # exposes 1 of 2 pages
    assert len(led.alloc(g2, 1)) == 1  # alloc while the transfer is POSTED
    assert led.p_post(g, 1, P_INST, 1, 1, -1, [0]) == L.REJ_DUP  # P pre-filter (peer transfer identity range)
    assert led.p_abort(P_INST, -1) == L.SEND_ACK
    assert led.d_landed(P_INST, 1, 1, -1, 1) == L.DROP_UNKNOWN  # D pre-filter
    assert led.d_unstopped(x, L.Q_TIMEOUT) == L.OK
    led.check()


# ------------------------------------------------------------------------------- 3. D refuses
@pytest.mark.parametrize("room,ok", [
    (-1, False), (-(1 << 63), False), (1 << 63, False), ((1 << 64) - 1, False),
    (0, True), (1, True), ((1 << 63) - 1, True),
    # the core holds rooms as i64 (Python ints folded modulo 2^64, ledger contract)
    (1 << 64, True), (-(1 << 63) - 1, True)])
def test_d_open_req_of_a_room_that_folds_negative_is_refused(room, ok):
    led = mk("D")
    g0 = led.open_req(5)
    if ok:
        assert led.open_req(room) == g0 + 1
    else:
        refused(led, led.open_req, room, gens=[g0])
        assert led.open_req(6) == g0 + 1  # no gen was used by the refused call
    assert led.role == "D"


def test_d_alloc_only_before_the_transfer_is_exposed_or_once_it_is_visible():
    led = mk("D")
    g = led.open_req(7)
    assert len(led.alloc(g, 2)) == 2  # not exposed yet: the DRecvReq allocation
    x = led.d_expect(g, P_INST, 2)
    refused(led, led.alloc, g, 1, gens=[g], xids=[x])  # POSTED
    refused(led, led.alloc, g, 0, gens=[g], xids=[x])  # even 0 pages
    other = led.open_req(8)
    assert len(led.alloc(other, led.free_pages())) > 0  # pool full now
    assert led.free_pages() == 0
    refused(led, led.alloc, g, 1, gens=[g], xids=[x])  # before the capacity check (not [])
    assert led.release(other) > 0
    not_role(led, led.alloc, g, -1)  # negative npages: the old error comes first
    assert led.d_landed(P_INST, 7, g, x, 2) == L.OK
    refused(led, led.alloc, g, 1, gens=[g], xids=[x])  # LANDED, not VISIBLE
    led.d_mark_visible(x)
    assert len(led.alloc(g, 1)) == 1  # VISIBLE: decode pages (decode growth window)
    g3 = led.open_req(9)
    assert len(led.alloc(g3, 1)) == 1
    x3 = led.d_expect(g3, P_INST, 1)
    assert led.d_unstopped(x3, L.Q_TIMEOUT) == L.OK  # g3 failed
    not_role(led, led.alloc, g3, 1)  # gen not live: the old error
    led.check()


def test_d_launch_of_a_row_without_an_incoming_transfer_is_refused():
    led = mk("D")
    g = led.open_req(3)
    assert len(led.alloc(g, 2)) == 2  # never exposed
    refused(led, led.k_launch, 1, [(g, 0, 1)], gens=[g])
    refused(led, led.launch, 1, [(g, 0, 1)], gens=[g])
    h = led.open_req(4)
    assert len(led.alloc(h, 2)) == 2
    xh = led.d_expect(h, P_INST, 2)
    not_role(led, led.k_launch, 1, [(h, 2, 2)])  # transfer POSTED: the old V_LAUNCH (visibility)
    assert led.d_landed(P_INST, 4, h, xh, 2) == L.OK
    led.d_mark_visible(xh)
    refused(led, led.k_launch, 1, [(h, 2, 2), (g, 0, 1)], gens=[g, h], xids=[xh])  # one bad row
    led.k_launch(1, [(h, 2, 2)])  # step 1 was not used by the refused calls
    led.step_done(1)
    led.check()


@pytest.mark.parametrize("ps", [1, 4])
def test_d_expect_must_expose_every_page_of_the_gen(ps):
    led = mk("D", LAY_D if ps == 1 else LAYOUT_DECODE_PAGE_SIZE_FOUR)
    g = led.open_req(11)
    assert len(led.alloc(g, 2)) == 2
    refused(led, led.d_expect, g, P_INST, ps, gens=[g])  # 1 of 2 pages
    not_role(led, led.d_expect, g, P_INST, 2 * ps + 1)  # needs 3 pages: the old error
    x = led.d_expect(g, P_INST, ps + 1)  # ceil((ps + 1) / ps) = 2 pages: all of them
    assert led.d_xfer(x)[0] == L.X_POSTED
    led.check()


def test_d_refuses_every_p_method_before_its_pre_filters():
    led = mk("D")
    g = led.open_req(1)
    assert len(led.alloc(g, 1)) == 1
    s = dict(gens=[g])
    refused(led, led.p_post, g, 1, P_INST, 1, 1, 1, [0], **s)
    refused(led, led.p_post, g, 1, P_INST, 1, 1, -1, [0], **s)  # unset: REJ_DUP pre-filter
    refused(led, led.p_begin, 1, **s)
    refused(led, led.p_done, 1, True, **s)
    refused(led, led.p_abort, P_INST, 5, **s)
    refused(led, led.p_abort, P_INST, -1, **s)  # unset: SEND_ACK without a tombstone
    not_role(led, led.p_plan, 1)  # not refused for the role: no entry exists on D
    assert led.p_entry(1) == (0, 0, 0, 0, 0)


def test_d_keeps_its_own_path():
    led = mk("D")
    g = led.open_req(21)
    assert len(led.alloc(g, 3)) == 3
    x = d_landed_visible(led, g, 3)
    assert len(led.alloc(g, 1)) == 1  # decode page
    led.bind_row(0, g)
    led.k_launch(1, [(g, 3, 4)], rows=[0])
    led.step_done(1)
    g2 = led.open_req(22)
    assert len(led.alloc(g2, 2)) == 2
    x2 = led.d_expect(g2, P_INST, 2)
    assert led.d_stopped(P_INST, 22, g2, x2) == L.OK
    g3 = led.open_req(23)
    assert len(led.alloc(g3, 1)) == 1
    x3 = led.d_expect(g3, P_INST, 1)
    assert led.peer_lost(P_INST) == [x3]  # not refused on D
    assert led.release(g) == 4 and led.release(g2) == 2 and led.release(g3) == 0
    assert led.d_xfer(x)[0] in (0, L.X_VISIBLE)
    led.check()


# ------------------------------------------------------------------------------- 4. P refuses
def test_p_refuses_every_d_method_before_its_pre_filters():
    led = mk("P", LAY_P, P_INST)
    g = led.open_req(-1)
    assert len(led.alloc(g, 1)) == 1
    s = dict(gens=[g])
    refused(led, led.d_expect, g, D_INST, 1, **s)
    refused(led, led.d_landed, D_INST, 1, g, 1, 1, **s)
    refused(led, led.d_landed, D_INST, 1, g, -1, 1, **s)  # unset: DROP_UNKNOWN (+ a drop count)
    refused(led, led.d_stopped, D_INST, 1, g, 1, **s)
    refused(led, led.d_stopped, D_INST, 1, g, -1, **s)
    refused(led, led.d_unstopped, 1, L.Q_TIMEOUT, **s)
    refused(led, led.d_unstopped, -1, L.Q_TIMEOUT, **s)
    refused(led, led.d_mark_visible, 1, **s)
    assert led.stats()["dropped_msgs"] == 0
    assert led.d_xfer(1) == (0, 0, 0, 0, 0)


def test_p_keeps_its_own_path():
    led = mk("P", LAY_P, P_INST)
    g = led.open_req(-1)  # local requests are P's
    assert len(led.alloc(g, 2)) == 2
    led.bind_row(0, g)
    led.k_launch(1, [(g, 0, 2)], rows=[0])  # no incoming transfer on P
    led.step_done(1)
    e = led.p_post(g, 2, D_INST, 5, 1, 1, [3, 4])
    assert e > 0 and led.p_begin(e)
    assert len(led.p_plan(e)[0]) > 0
    assert led.p_done(e, True) == L.SEND_DONE
    e2 = led.p_post(g, 2, D_INST, 6, 2, 2, [5, 6])
    assert led.p_abort(D_INST, 2) == L.SEND_ACK and led.p_entry(e2)[0] == 0
    assert led.p_abort(D_INST, -1) == L.SEND_ACK
    e3 = led.p_post(g, 2, D_INST, 7, 3, 3, [7, 8])
    assert led.peer_lost(D_INST) == [e3]
    assert led.release(g) == 2
    led.check()


# ------------------------------------------------------------------------------- 5. role world
class _Rec:
    """Records every call's (method, args, result or exception type) of one ledger."""

    def __init__(self, inner, log):
        self._i, self._log = inner, log

    def __getattr__(self, m):
        a = getattr(self._i, m)
        if not callable(a):
            return a

        def f(*args):
            try:
                r = a(*args)
            except Exception as e:  # noqa: BLE001
                self._log.append((m, args, type(e).__name__))
                raise
            self._log.append((m, args, list(r) if isinstance(r, (list, tuple)) else r))
            return r

        return f


def _world_log(seed, roles, monkeypatch):
    log = []

    def make(n, layout, inst, check_every=0):
        role = {TL.P_INST: "P", TL.D_INST: "D"}[inst] if roles else None
        led = L.RefLedger(n, layout, inst, check_every=check_every, role=role)
        assert led.role == role
        return _Rec(led, log)

    monkeypatch.setattr(TL, "RefLedger", make)
    w = TL.World(random.Random(seed))
    for _ in range(400):
        w.step()
    w.drain()
    return log


@pytest.mark.parametrize("seed", range(20))
def test_randomized_world_with_roles_is_the_world_without(seed, monkeypatch):
    """test_ledger's randomized P/D world (aborts, timeouts, failed and late writes, peer loss)
    uses each ledger the way the glue does: with P = role P and D = role D every call gives the
    same result as with the role unset, so no role refusal is ever hit."""
    a = _world_log(seed, False, monkeypatch)
    b = _world_log(seed, True, monkeypatch)
    assert len(a) > 100 and a == b


# ------------------------------------------------------------------------------- 6. glue (toy)
def test_decode_drops_a_room_outside_the_i64_range_before_open_req():
    """D (role D) gets rooms from an untrusted router: one outside [0, 2^63) is refused by
    DecodePD.add_request (counted, no ledger call), so it can never reach open_req and stop D;
    rooms 0 and 2^63 - 1 work end to end."""
    from toy import ToyD, ToyP, run_until

    from test_pd_glue import expected_output

    p = ToyP("p-role", 64, 1)
    d = ToyD("d-role", 64, 1)
    try:
        assert p.ledger.role == "P" and d.ledger.role == "D"
        opened = []
        real = d.pd.ledger.open_req
        d.pd.ledger.open_req = lambda room: opened.append(room) or real(room)
        for i, room in enumerate((-1, 1 << 63, (1 << 64) - 1, -(1 << 63), 2 ** 70)):
            assert not M.room_ok(room)
            assert d.pd.add_request(100 + i, room, "127.0.0.1", p.port, 3, "h") is False
        assert d.pd.counters["bad_rooms"] == 5 and d.pd.counters["dup_rooms"] == 0
        assert not d.pd.reqs and not d.pd.queue
        good = {0: [7, 8, 9], (1 << 63) - 1: [4, 5]}
        uids = {}
        for room, prompt in good.items():
            p.submit(room, prompt)
            uids[d.submit(room, prompt, p.port, 3)] = prompt
        assert run_until(lambda: len(d.outputs) == 2 and not d.running, [p, d])
        assert {u: d.outputs[u] for u in uids} == {u: expected_output(pr, 3) for u, pr in uids.items()}
        assert sorted(opened) == sorted(good)  # only the good rooms reached open_req
        assert d.ledger.stats()["live_reqs"] == 0 and d.bad_reads == 0
    finally:
        p.close()
        d.close()


# ------------------------------------------------------------------------------- 7. glue (Scheduler)
torch = pytest.importorskip("torch")

from minisgl.disagg import scheduler_pd as SPD  # noqa: E402
from minisgl.disagg import trace as T  # noqa: E402
from minisgl.scheduler.table import TableManager  # noqa: E402
from test_scheduler_stub import (build, close, finished, msg, no_pinned_memory,  # noqa: E402,F401
                                 pd_pair, reference, run, send_pd)

PROMPTS = {u: [(u * 31 + i * 7) % 900 + 3 for i in range(3 + u % 9)] for u in range(1, 9)}
E2E_LEDGER_RE = re.compile(r"PD ledger: (\w+) (\S+) from (\S+)")  # server ledger log format


def test_make_pd_builds_each_ledger_with_its_role_and_logs_it(caplog):
    caplog.set_level("INFO")
    p, d, _, _ = pd_pair(1)
    try:
        assert p.pd.ledger.role == "P" and p.cache_manager.ledger.role == "P"
        assert d.pd.ledger.role == "D" and d.cache_manager.ledger.role == "D"
        assert p.pd.pd.ledger.inner is p.pd.ledger.inner  # one ledger per instance
        lines = [r.getMessage() for r in caplog.records if r.getMessage().startswith("PD ledger: ")]
        assert len(lines) == 2
        for ln, role in zip(lines, ("P", "D")):
            m = re.fullmatch(r"PD ledger: (\w+) (\S+) from (\S+) role=([PD])", ln)
            assert m and m.group(1) == L.LEDGER_KIND and m.group(4) == role, ln
            e = E2E_LEDGER_RE.search(ln)  # the e2e kit's parse is unchanged: group 3 = the file
            assert e.group(3) == m.group(3) and os.path.exists(e.group(3)), ln
    finally:
        close(p, d)


def test_make_pd_refuses_a_ledger_that_did_not_take_the_role(monkeypatch):
    real = L.RefLedger

    class NoRole:
        def __init__(self, *a, role=None, **k):
            self._inner = real(*a, **k)

        def __getattr__(self, m):
            return getattr(self._inner, m)

    monkeypatch.setattr(SPD.L, "RefLedger", NoRole)
    with pytest.raises(RuntimeError, match="did not take role 'D'"):
        build("decode", ps=1, backend=SimpleBackend())
    monkeypatch.setattr(SPD.L, "RefLedger", real)
    with pytest.raises(ValueError, match="disaggregation-mode"):
        build("bogus", ps=1, backend=SimpleBackend())


class SimpleBackend:
    session_id = "mem:role-unused"

    def register(self, ptrs, lens) -> None:
        pass


def test_gen_for_on_d_never_opens_a_local_incarnation():
    """D's rows are bound only by _commit_ready (a landed, visible transfer).  An unbound row
    reaching gen_for is a glue bug: it fails loudly here, before any ledger call (role D); on P
    the same call opens and binds the row's incarnation."""
    lay = [2, 1, 1, 2, 4, 17, 1 << 30, L.DTYPE_CODES["float32"], 7]
    pt = torch.zeros((5, 32), dtype=torch.int32)
    for role in ("D", "P"):
        led = T.wrap(L.RefLedger(16, lay, 0xD5, check_every=1, role=role), 0xD5, role)
        cm = SPD.LedgerCacheManager(led, 16, 1, pt, row_check=False, inst=0xD5)
        if role == "D":
            before = (led.stats(), led.row_gen(3))
            with pytest.raises(L.LedgerViolation, match="row 3 has no generation bound"):
                cm.gen_for(3)
            assert (led.stats(), led.row_gen(3)) == before and 3 not in cm.gen_of_row
            assert led.open_req(1) == 1  # no gen was opened by the refused call
        else:
            g = cm.gen_for(3)
            assert led.row_gen(3) == g and cm.gen_of_row[3] == g


def test_scheduler_d_with_an_unbound_running_request_stops_at_gen_for():
    """The same glue bug through the real Scheduler: a decode request that did not come from
    _commit_ready stops D at the step's gen_for with the gen_for message, not at the core's
    open_req refusal (no ledger call was made for it)."""
    from minisgl.core import Req, SamplingParams
    from minisgl.kvcache.naive_cache import NaiveCacheHandle

    p, d, _, _ = pd_pair(1)
    try:
        row = d.table_manager.allocate()
        ids = torch.tensor([5, 6, 7], dtype=torch.int32)
        d.decode_manager.running_reqs.add(Req(
            input_ids=ids, table_idx=row, cached_len=2, output_len=3, uid=77,
            sampling_params=SamplingParams(max_tokens=3), cache_handle=NaiveCacheHandle()))
        st = d.pd.ledger.stats()
        with pytest.raises(L.LedgerViolation, match=f"row {row} has no generation bound"):
            run([d], lambda: False, timeout=2)
        assert d.pd.ledger.stats() == st
    finally:
        close(p, d)


@pytest.mark.parametrize("room", [-1, 1 << 63, (1 << 64) - 1, -(1 << 63)])
def test_scheduler_d_answers_a_bad_room_with_an_error_and_keeps_serving(room):
    p, d, _, _ = pd_pair(1)
    try:
        dis = {"bootstrap_host": "127.0.0.1", "bootstrap_port": p.pd.pd.port,
               "bootstrap_room": room}
        d.inbox.append(msg(1, PROMPTS[1], 4, dis))  # only D gets it (P would wait for D)
        assert run([p, d], lambda: 1 in d.errors, timeout=5)
        assert "outside [0, 2^63)" in d.errors[1] and d.outputs[1][-1][1]
        assert d.pd.pd.counters["bad_rooms"] == 1
        prompts = {2: PROMPTS[2]}
        send_pd(p, d, 2, 9502, prompts[2], 4)
        assert run([p, d], lambda: finished(d, prompts))
        assert [t for t, _ in d.outputs[2]] == reference(prompts, 4, 1)[2]
    finally:
        close(p, d)


@pytest.mark.parametrize("ps,overlap", [(1, True), (4, True), (1, False), (4, False)])
def test_pd_pair_with_roles_matches_colocated(ps, overlap):
    """End to end on the CPU: P (role P) and D (role D) through the real Scheduler give the
    colocated reference tokens (the PD output of df853bc, test_pd_matches_colocated); D's
    ledger only ever saw rooms in [0, 2^63), P's only local opens."""
    p, d, _, _ = pd_pair(ps)
    rooms = {"P": [], "D": []}
    for s, side in ((p, "P"), (d, "D")):
        led = s.pd.ledger
        real = led.open_req
        led.open_req = lambda room, _r=real, _s=side: rooms[_s].append(room) or _r(room)
    prompts = {u: PROMPTS[u] for u in range(1, 9)}
    try:
        assert p.pd.ledger.role == "P" and d.pd.ledger.role == "D"
        for u, pr in prompts.items():
            send_pd(p, d, u, 9600 + u, pr, 5)
        assert run([p, d], lambda: finished(d, prompts), overlap=overlap)
        assert {u: [t for t, _ in d.outputs[u]] for u in prompts} == reference(prompts, 5, ps)
        assert sorted(rooms["D"]) == [9600 + u for u in prompts]
        assert rooms["P"] and set(rooms["P"]) == {-1}
        for s in (p, d):
            st = s.pd.ledger.stats()
            assert st["private"] == 0 and st["draining"] == 0 and st["quarantined"] == 0, st
    finally:
        close(p, d)
