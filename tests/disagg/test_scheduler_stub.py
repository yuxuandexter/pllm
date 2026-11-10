"""Drive the real mini-sglang ``Scheduler`` loops (prefill / decode managers, overlap loop,
``_process_last_data``, abort handling) plus the PD hooks on CPU with a stub engine.

The stub engine keeps the real KV layout (a CPU tensor shaped like ``MHAKVCache._kv_buffer``)
and the real page table / token pool.  Its "model" writes a deterministic value per
(token, position, layer, K/V) at ``page_table[row, pos]`` and computes the next token from every
KV value it reads, so a wrong, stale or unlanded page changes the output.  "RDMA" is a
``ctypes.memmove`` between the two schedulers' KV tensors (same process), done only after the
ledger's address plan.  The PD outputs must equal a colocated run of the same stub, token by
token.  What this cannot show: CUDA stream ordering, Mooncake, GPU visibility of RDMA writes.
"""

from __future__ import annotations

import contextlib
import ctypes
import threading
import time
from types import SimpleNamespace

import pytest

torch = pytest.importorskip("torch")

from minisgl.core import Req, SamplingParams  # noqa: E402
from minisgl.disagg import ledger as L  # noqa: E402
from minisgl.disagg.scheduler_pd import make_pd  # noqa: E402
from minisgl.distributed import DistributedInfo  # noqa: E402
from minisgl.distributed.info import set_tp_info, try_get_tp_info  # noqa: E402
from minisgl.engine.engine import ForwardOutput  # noqa: E402
from minisgl.message import AbortBackendMsg, UserMsg  # noqa: E402
from minisgl.scheduler.cache import CacheManager  # noqa: E402
from minisgl.scheduler.decode import DecodeManager  # noqa: E402
from minisgl.scheduler.prefill import PrefillManager  # noqa: E402
from minisgl.scheduler.scheduler import Scheduler  # noqa: E402
from minisgl.scheduler.table import TableManager  # noqa: E402

NL, H, HD = 2, 1, 2
EOS = 2
if try_get_tp_info() is None:  # the logger asks for it; one TP rank, as in PD step 1
    set_tp_info(rank=0, size=1)


@pytest.fixture(autouse=True)
def no_pinned_memory(monkeypatch):
    real_empty = torch.empty

    def empty(*a, **kw):
        kw.pop("pin_memory", None)
        return real_empty(*a, **kw)

    real_tensor = torch.tensor

    def tensor(*a, **kw):
        kw.pop("pin_memory", None)
        return real_tensor(*a, **kw)

    monkeypatch.setattr(torch, "empty", empty)
    monkeypatch.setattr(torch, "tensor", tensor)
    monkeypatch.setattr(torch.Tensor, "pin_memory", lambda self, *a, **k: self)


class _Done:
    """Require host synchronization before the fake copy-done event becomes ready.

    Recording each event lets tests detect step_done before copy completion."""

    def __init__(self, step=None) -> None:
        self.step = step
        self.synced = False

    def synchronize(self) -> None:
        self.synced = True

    def query(self) -> bool:
        return self.synced


GRAPH_BS = [1, 2, 4, 8, 16]  # stub CUDA-graph batch sizes (pad=True)
DUMMY_KV = 250.0  # what a padding row writes (the real graph writes the dummy token's KV)


class StubEngine:
    """Exercise either ledger arrays or the page-table backend through the same stub.

    kread selects ledger arrays. Compare them with an independent page-table
    gather on every step to expose disagreements. pad adds a dummy request at
    CUDA-graph batch sizes, using the same reserved slot as the real engine."""

    def __init__(self, num_pages: int, ps: int, max_running: int, max_seq: int,
                 kread: bool = True, pad: bool = False) -> None:
        self.num_pages = num_pages
        self.ps = ps
        self.max_seq_len = max_seq
        self.page_table = torch.zeros((max_running + 1, max_seq), dtype=torch.int32)
        buf = torch.zeros((2, NL, num_pages + 1, ps, H, HD), dtype=torch.float32)
        self.kv_cache = SimpleNamespace(_kv_buffer=buf)
        self.kv = buf
        self.stream = SimpleNamespace(wait_stream=lambda s: None)
        self.graph_runner = SimpleNamespace(pad_batch=self._pad)
        self.attn_backend = SimpleNamespace(prepare_metadata=lambda b: None, takes_pd_kargs=kread)
        self.sampler = SimpleNamespace(prepare=lambda b: None)
        self.token_pool = None  # set by the scheduler builder
        self.steps = 0
        self.kread = kread
        self.pad = pad
        self.kargs_same = 0
        self.kargs_diff = 0
        self.pad_rows = 0
        self.pad_slots: set = set()
        self.eos_at: dict = {}  # Control which decode output ends each request.
        self.events: dict = {}  # Retain events to test overlapping lifetimes.
        self._nout: dict = {}
        if pad:
            self.dummy_req = Req(input_ids=torch.tensor([0], dtype=torch.int32),
                                 table_idx=max_running,
                                 cached_len=0, output_len=1, uid=-1, sampling_params=None,
                                 cache_handle=None)
            self.page_table[max_running].fill_(num_pages * ps)  # Engine.__init__: the dummy page

    def _pad(self, batch) -> None:
        n = batch.size
        if self.pad and batch.is_decode and n <= GRAPH_BS[-1]:
            n = next(bs for bs in GRAPH_BS if bs >= batch.size)
        batch.padded_reqs = batch.reqs + [self.dummy_req] * (n - batch.size) if self.pad \
            else batch.reqs

    def _flat(self, kv: int, layer: int):
        return self.kv[kv, layer].view(-1, H, HD)

    def _gather_06b6baf(self, batch):
        """Reconstruct attention and store slots independently from the page table."""
        ind, ip, ol = [], [0], []
        for r in batch.padded_reqs:
            ind += self.page_table[r.table_idx, : r.device_len].tolist()
            ip.append(ip[-1] + r.device_len)
            ol += self.page_table[r.table_idx, r.cached_len : r.device_len].tolist()
        return ind, ip, ol

    def forward_batch(self, batch, args) -> ForwardOutput:
        self.steps += 1
        ka = getattr(batch, "pd_kargs", None)
        if ka is not None:
            ind, ip, ol = self._gather_06b6baf(batch)
            same = (ka.indices.tolist() == ind and ka.indptr_cpu.tolist() == ip
                    and batch.out_loc.tolist() == ol and ka.last_page_len_cpu.tolist()
                    == [1] * len(batch.padded_reqs))
            self.kargs_same += same
            self.kargs_diff += not same
        use_core = ka is not None and self.kread
        out = []
        qo0 = 0  # the store kernel writes token pos of row j into out_loc[qo_j + pos - cached]
        for j, req in enumerate(batch.padded_reqs):
            row = req.table_idx
            base = qo0
            qo0 += req.extend_len

            def wslot(pos, b=base, c=req.cached_len):
                return int(batch.out_loc[b + pos - c])
            if use_core:  # attention reads indices[indptr[j] : indptr[j] + device_len]
                ip0 = int(ka.indptr_cpu[j])
                slots = ka.indices[ip0 : ip0 + req.device_len].long()
            else:  # Page-table backends read the row through device_len.
                slots = self.page_table[row, : req.device_len].long()
            if j >= batch.size:  # CUDA-graph padding row: writes the dummy token's KV, no output
                self.pad_rows += 1
                s = wslot(0)
                self.pad_slots.add(s)
                for kv in (0, 1):
                    for layer in range(NL):
                        self._flat(kv, layer)[s] = DUMMY_KV
                continue
            for pos in range(req.cached_len, req.device_len):
                slot = wslot(pos)
                tok = int(self.token_pool[row, pos])
                for kv in (0, 1):
                    for layer in range(NL):
                        self._flat(kv, layer)[slot] = float((tok * 7 + pos * 3 + layer * 5
                                                             + kv * 11) % 251)
            acc = 0
            for kv in (0, 1):
                for layer in range(NL):
                    vals = self._flat(kv, layer)[slots][:, 0, 0].tolist()
                    acc += sum(int(v) * (i + 1) for i, v in enumerate(vals))
            tok = acc % 997 + 3  # never EOS (2) unless eos_at says so
            if batch.is_decode and req.uid in self.eos_at:
                k = self._nout.get(req.uid, 0)
                self._nout[req.uid] = k + 1
                if k == self.eos_at[req.uid]:
                    tok = EOS
            out.append(tok)
        for req in batch.reqs:
            req.complete_one()
        t = torch.tensor(out, dtype=torch.int32)
        ev = _Done(getattr(batch, "pd_step", None))
        if ev.step is not None:
            self.events[ev.step] = ev
        return ForwardOutput(t, t.clone(), ev)


class MemBackend:
    """``memmove`` between registered ranges of this process (stands in for RDMA WRITE)."""

    sessions: dict = {}

    def __init__(self, name: str) -> None:
        self.session_id = f"mem:{name}"
        self.ranges = []
        self.calls = 0
        self.fail_next = 0
        self.gate = threading.Event()
        self.gate.set()
        MemBackend.sessions[self.session_id] = self

    def register(self, ptrs, lens) -> None:
        self.ranges += list(zip(ptrs, lens))

    def _inside(self, a, n) -> bool:
        return any(b <= a and a + n <= b + m for b, m in self.ranges)

    def write(self, peer_session, srcs, dsts, lens) -> int:
        self.calls += 1
        self.gate.wait()
        peer = MemBackend.sessions.get(peer_session)
        if peer is None:
            return -1
        if self.fail_next:
            self.fail_next -= 1
            return -1
        for s, d, n in zip(srcs, dsts, lens):
            assert self._inside(s, n) and peer._inside(d, n), "address outside registration"
            ctypes.memmove(d, s, n)
        return 0


def build(mode: str, ps: int = 1, num_pages: int = 256, max_running: int = 16,
          backend=None, port: int = 0, waiting_timeout: float = 30.0, row_check="auto",
          ack_timeout: float = 30.0, kread: bool = True, pad: bool = False,
          cache_type: str = "naive"):
    eng = StubEngine(num_pages, ps, max_running, 512, kread=kread, pad=pad)
    s = object.__new__(Scheduler)
    s.engine = eng
    s.device = torch.device("cpu")
    s.stream = None
    s.engine_stream_ctx = contextlib.nullcontext()
    s.table_manager = TableManager(max_running, eng.page_table)
    eng.token_pool = s.table_manager.token_pool
    cfg = SimpleNamespace(
        tp_info=DistributedInfo(0, 1), cache_type=cache_type, page_size=ps,
        disaggregation_mode=mode, disaggregation_bootstrap_port=port,
        disaggregation_transfer_backend="mem", disaggregation_ib_device="",
        disaggregation_hostname="127.0.0.1", disaggregation_gpu_flush=False,
        disaggregation_bootstrap_timeout=30.0, disaggregation_waiting_timeout=waiting_timeout,
        disaggregation_ledger_check_every=1, disaggregation_kv_checksum=True,
        disaggregation_row_check=row_check, disaggregation_ack_timeout=ack_timeout,
        model_path="/models/stub",
        hf_config=SimpleNamespace(to_dict=lambda: {"model_type": "stub", "num_hidden_layers": NL}))
    s.pd = None
    if mode == "null":
        s.cache_manager = CacheManager(num_pages, ps, eng.page_table, "naive")
    else:
        s.cache_manager, s.pd = make_pd(cfg, eng, s.table_manager, backend=backend)
    s.decode_manager = DecodeManager(ps)
    s.prefill_manager = PrefillManager(s.cache_manager, s.table_manager, s.decode_manager)
    s.finished_reqs = set()
    s.aborted_reqs = set()  # Scheduler.__init__ is bypassed: its new field (upstream abort fix)
    s.eos_token_id = EOS
    s.token_pool = s.table_manager.token_pool
    s.prefill_budget = 64
    s.inbox = []
    s.outputs = {}
    s.errors = {}
    s.receive_msg = lambda blocking=False: [s.inbox.pop(0) for _ in range(len(s.inbox))]

    def send_result(reply):
        for m in reply:
            s.outputs.setdefault(m.uid, []).append((m.next_token, m.finished))
            if getattr(m, "error", None):
                s.errors[m.uid] = m.error

    s.send_result = send_result
    if s.pd is not None:
        s.pd.attach(s)
    s.data = None
    return s


def run(scheds, cond, overlap=True, timeout=20.0):
    t0 = time.monotonic()
    while time.monotonic() - t0 < timeout:
        for s in scheds:
            if overlap:
                s.data = s.overlap_loop(s.data)
            else:
                s.normal_loop()
        if cond():
            # flush the last in-flight batch of the overlap loop
            for s in scheds:
                while overlap and s.data is not None:
                    s.data = s.overlap_loop(s.data)
            return True
        time.sleep(0.001)
    return False


def msg(uid, prompt, max_tokens, disagg=None):
    return UserMsg(uid=uid, input_ids=torch.tensor(prompt, dtype=torch.int32),
                   sampling_params=SamplingParams(max_tokens=max_tokens), disagg=disagg)


def finished(s, uids):
    return all(u in s.outputs and s.outputs[u][-1][1] for u in uids)


def reference(prompts, max_tokens, ps):
    ref = build("null", ps=ps)
    for uid, p in prompts.items():
        ref.inbox.append(msg(uid, p, max_tokens))
    assert run([ref], lambda: finished(ref, prompts))
    return {u: [t for t, _ in ref.outputs[u]] for u in prompts}


def pd_pair(ps, row_check="auto", kread=True, pad=False, **kw):
    """Use row_check to select auto, on, or off; booleans retain the on/off aliases.

    kread selects ledger arrays instead of page-table lookups."""
    bp, bd = MemBackend(f"p{time.monotonic_ns()}"), MemBackend(f"d{time.monotonic_ns()}")
    p = build("prefill", ps=ps, backend=bp, row_check=row_check, kread=kread)
    d = build("decode", ps=ps, backend=bd, row_check=row_check, kread=kread, pad=pad, **kw)
    return p, d, bp, bd


def send_pd(p, d, uid, room, prompt, max_tokens):
    dis = {"bootstrap_host": "127.0.0.1", "bootstrap_port": p.pd.pd.port, "bootstrap_room": room}
    p.inbox.append(msg(uid, prompt, max_tokens, dis))
    d.inbox.append(msg(uid, prompt, max_tokens, dis))


def close(*scheds):
    for s in scheds:
        if s.pd is not None:
            s.pd.shutdown()


@pytest.mark.parametrize("ps,overlap", [(1, True), (4, True), (1, False), (4, False)])
def test_pd_matches_colocated(ps, overlap):
    prompts = {u: [(u * 31 + i * 7) % 900 + 3 for i in range(3 + u % 9)] for u in range(1, 13)}
    ref = reference(prompts, 6, ps)
    p, d, _, _ = pd_pair(ps)
    for uid, pr in prompts.items():
        send_pd(p, d, uid, 1000 + uid, pr, 6)
    assert run([p, d], lambda: finished(d, prompts), overlap=overlap)
    for uid in prompts:
        got = [t for t, _ in d.outputs[uid]]
        assert got == ref[uid], (uid, got, ref[uid])
        assert [t for t, _ in p.outputs[uid]] == ref[uid][:1]  # P returns the first token only
    for s in (p, d):
        s.cache_manager.ledger.check()
        st = s.cache_manager.ledger.stats()
        assert st["free"] == s.engine.num_pages and st["quarantined"] == 0, st
    close(p, d)


def test_abort_on_d_while_waiting_then_reuse():
    prompts = {u: [u + 3] * 5 for u in range(1, 5)}
    ref = reference(prompts, 4, 1)
    p, d, bp, _ = pd_pair(1)
    bp.gate.clear()  # P's engine call blocks: the transfer stays in flight
    send_pd(p, d, 1, 501, prompts[1], 4)
    assert run([p, d], lambda: bp.calls == 1)  # P is inside the engine call
    d.inbox.append(AbortBackendMsg(uid=1))
    run([p, d], lambda: False, timeout=0.2)
    assert d.pd.pd.count("aborting") == 1  # pages DRAINING until P's evidence
    bp.gate.set()
    assert run([p, d], lambda: d.pd.pd.count("aborting") == 0)
    for uid in (2, 3, 4):
        send_pd(p, d, uid, 500 + uid, prompts[uid], 4)
    assert run([p, d], lambda: finished(d, [2, 3, 4]))
    for uid in (2, 3, 4):
        assert [t for t, _ in d.outputs[uid]] == ref[uid]
    st = d.cache_manager.ledger.stats()
    assert st["quarantined"] == 0 and st["free"] == d.engine.num_pages
    close(p, d)


def test_failed_transfer_quarantines_and_others_still_correct():
    prompts = {u: [u * 5 + 3] * 4 for u in range(1, 6)}
    ref = reference(prompts, 3, 1)
    p, d, bp, _ = pd_pair(1)
    bp.fail_next = 1
    send_pd(p, d, 1, 701, prompts[1], 3)
    assert run([p, d], lambda: finished(d, [1]))  # ends (EOS) after the failure
    assert d.outputs[1] == [(EOS, True)]
    assert "transfer failed" in d.errors[1]  # explicit error, not a plain EOS
    assert d.cache_manager.ledger.stats()["quarantined_transfer_failed"] == 4
    assert p.cache_manager.ledger.stats()["quarantined_transfer_failed"] == 4
    for uid in range(2, 6):
        send_pd(p, d, uid, 700 + uid, prompts[uid], 3)
    assert run([p, d], lambda: finished(d, range(2, 6)))
    for uid in range(2, 6):
        assert [t for t, _ in d.outputs[uid]] == ref[uid]
    close(p, d)


def test_waiting_timeout_quarantines():
    p, d, bp, _ = pd_pair(1, waiting_timeout=0.3)
    bp.gate.clear()
    send_pd(p, d, 1, 801, [5, 6, 7], 3)
    assert run([p, d], lambda: finished(d, [1]), timeout=5)
    assert d.cache_manager.ledger.stats()["quarantined_timeout"] == 3
    bp.gate.set()
    run([p, d], lambda: False, timeout=0.3)
    st = d.cache_manager.ledger.stats()
    assert st["quarantined"] == 3 and st["dropped_msgs"] >= 1  # late notice dropped
    close(p, d)


def test_max_tokens_one_finishes_at_commit():
    p, d, _, _ = pd_pair(1)
    send_pd(p, d, 1, 901, [9, 9, 9], 1)
    assert run([p, d], lambda: finished(d, [1]))
    assert len(d.outputs[1]) == 1 and d.outputs[1][0][1]
    assert d.cache_manager.ledger.stats()["free"] == d.engine.num_pages
    close(p, d)


def _cfg(ps):
    return SimpleNamespace(
        tp_info=DistributedInfo(0, 1), cache_type="naive", page_size=ps,
        disaggregation_mode="decode", disaggregation_bootstrap_port=0,
        disaggregation_transfer_backend="mem", disaggregation_ib_device="",
        disaggregation_hostname="127.0.0.1", disaggregation_gpu_flush=False,
        disaggregation_bootstrap_timeout=30.0, disaggregation_waiting_timeout=30.0,
        disaggregation_ledger_check_every=1, disaggregation_kv_checksum=True,
        model_path="/models/stub",
        hf_config=SimpleNamespace(to_dict=lambda: {"model_type": "stub"}))


def test_row_width_row_width_config_refused_at_start():
    """Whole-page mapping needs 1088 columns when max_seq_len is 1025 and pages hold 64 tokens.

    The engine allocates only 1056 columns, so startup must reject this geometry."""
    eng = StubEngine(17, 64, 4, 1056)
    eng.max_seq_len = 1025
    with pytest.raises(ValueError, match="row width 1056 < 1088"):
        make_pd(_cfg(64), eng, TableManager(4, eng.page_table),
                backend=MemBackend(f"f1-{time.monotonic_ns()}"))


def test_row_width_good_config_accepted_and_backstop():
    eng = StubEngine(16, 64, 4, 1024)  # max_seq_len 1024 = 16 pages of 64: rows cover them
    cache, hooks = make_pd(_cfg(64), eng, TableManager(4, eng.page_table),
                           backend=MemBackend(f"f1ok-{time.monotonic_ns()}"))
    try:
        gen = cache.ledger.open_req(1)
        cache.ledger.alloc(gen, 16)
        cache.write_rows(0, gen, 16)  # the widest legal mapping: exactly 1024 columns
        assert int(eng.page_table[0, 1023]) == cache.ledger.token_slots(gen, 1023, 1024)[0]
        with pytest.raises(RuntimeError, match="exceed the row width"):
            cache._write_slots(0, 1000, [0] * 64)  # runtime backstop if the start check is bypassed
    finally:
        hooks.shutdown()


def test_layout_carries_dtype_and_model_identity():
    eng = StubEngine(8, 1, 4, 64)
    cache, hooks = make_pd(_cfg(1), eng, TableManager(4, eng.page_table),
                           backend=MemBackend(f"lay-{time.monotonic_ns()}"))
    try:
        lay = cache.ledger.layout
        assert len(lay) == len(L.LAYOUT_FIELDS) == 9
        assert lay[7] == L.DTYPE_CODES["float32"]  # the stub KV pool is float32
        from minisgl.disagg.messages import model_identity
        assert lay[8] == model_identity("/models/stub", {"model_type": "stub"})
        assert lay[8] != model_identity("/models/other", {"model_type": "stub"})
    finally:
        hooks.shutdown()


def test_torch_checksum_matches_reference():
    """scheduler_pd.kv_checksums (torch, any dtype, runs where the pool lives) equals the
    reference messages.kv_checksum_bytes over each slab's bytes in page order."""
    from minisgl.disagg import messages as Msg
    from minisgl.disagg.scheduler_pd import kv_checksums

    g = torch.Generator().manual_seed(3)
    buf = torch.randn((2, 3, 9, 4, 2, 8), generator=g).to(torch.bfloat16)
    pages = [5, 1, 7, 2]  # out of order and not contiguous, as the ledger may hand them out
    got = kv_checksums(buf, pages)
    u8 = buf.view(torch.uint8)
    want = [Msg.kv_checksum_bytes(b"".join(u8[kv, layer, p].numpy().tobytes() for p in pages))
            for kv in range(2) for layer in range(3)]
    assert got == want and len(got) == 6
    buf[1, 2, 7, 3, 1, 5] += 1  # one value of one page changes one slab's checksum
    got2 = kv_checksums(buf, pages)
    assert [i for i in range(6) if got[i] != got2[i]] == [5]


def test_pd_checksum_runs_in_the_real_scheduler_path():
    prompts = {u: [u + 10] * (2 + u) for u in range(1, 5)}
    ref = reference(prompts, 3, 4)
    p, d, _, _ = pd_pair(4)
    for uid, pr in prompts.items():
        send_pd(p, d, uid, 3000 + uid, pr, 3)
    assert run([p, d], lambda: finished(d, prompts))
    for uid in prompts:
        assert [t for t, _ in d.outputs[uid]] == ref[uid]
    st = d.pd.pd.stats()
    assert st["kv_checksum_ok"] == 4 and st["kv_checksum_mismatch"] == 0
    close(p, d)


def test_stats_on_demand_endpoint():
    import json as _json
    import urllib.request

    from minisgl.disagg.scheduler_pd import _start_stats_server

    p, d, _, _ = pd_pair(1)
    srv = _start_stats_server(d.pd, 0)
    got = {}

    def fetch():
        url = f"http://127.0.0.1:{srv.server_address[1]}/pd_stats"
        got.update(_json.loads(urllib.request.urlopen(url, timeout=10).read()))

    t = threading.Thread(target=fetch)
    t.start()
    assert run([p, d], lambda: bool(got), timeout=10)  # answered by the scheduler thread
    t.join()
    assert got["mode"] == "decode" and "scheduler" not in got  # the scheduler thread answered
    assert "ledger_free" in got and "flush_count" in got and "kv_checksum_ok" in got
    srv.shutdown()
    close(p, d)


def test_p_drops_the_request_on_client_abort():
    """A router disconnect must cancel prefill and resolve decode with stop evidence.

    The API converts disconnect into AbortBackendMsg; this test exercises the
    scheduler's handling of it. No unused destination page should quarantine."""
    p, d, bp, _ = pd_pair(1)
    dis = {"bootstrap_host": "127.0.0.1", "bootstrap_port": p.pd.pd.port, "bootstrap_room": 4242}
    d.inbox.append(msg(1, [9, 8, 7], 3, dis))
    assert run([p, d], lambda: d.pd.pd.count("waiting") == 1)
    p.inbox += [msg(1, [9, 8, 7], 3, dis), AbortBackendMsg(uid=1)]  # arrives, then cancelled
    assert run([p, d], lambda: finished(d, [1]))
    assert "prefill refused the transfer" in d.errors[1]
    assert bp.calls == 0  # P never wrote
    st = d.cache_manager.ledger.stats()
    assert st["quarantined"] == 0 and st["free"] == d.engine.num_pages
    assert p.pd.pd.stats()["waiting"] == 0 and not p.pd.parked
    close(p, d)


@pytest.mark.parametrize("overlap", [True, False])
def test_many_landings_in_one_tick_keep_the_first_token(overlap):
    """A burst of 24 completed transfers must preserve the first token on every stream."""
    prompts = {u: [(u * 13 + i) % 900 + 3 for i in range(2 + u % 5)] for u in range(1, 25)}
    ref = reference(prompts, 5, 1)
    p, d, bp, _ = pd_pair(1)
    bp.gate.clear()
    for uid, pr in prompts.items():
        send_pd(p, d, uid, 6000 + uid, pr, 5)
    assert run([p, d], lambda: d.pd.pd.count("waiting") == len(prompts), overlap=overlap)
    bp.gate.set()  # every transfer completes; D's next poll sees all the notices together
    assert run([p, d], lambda: finished(d, prompts), overlap=overlap)
    for uid in prompts:
        got = [t for t, _ in d.outputs[uid]]
        assert got == ref[uid], (uid, got, ref[uid])
        assert len(got) == 5 and got[0] == p.outputs[uid][0][0]  # P's first token, first
    close(p, d)
