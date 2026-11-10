"""Scheduler integration of PD disaggregation (the only torch-dependent part of the glue).

``Scheduler`` (scheduler/scheduler.py) calls these hooks when ``--disaggregation-mode`` is
``prefill`` or ``decode``:

    make_pd(config, engine, table_manager)  -> (LedgerCacheManager, PDHooks)
    PDHooks.attach(scheduler)               after the managers exist
    PDHooks.tick(idle)                      once per loop iteration (replaces blocking recv)
    PDHooks.on_user_msg(msg) -> bool        True = parked by PD (not given to prefill yet)
    PDHooks.on_abort(uid) -> bool           True = handled entirely by PD
    PDHooks.launch(batch)                   after pages were allocated for a batch
    PDHooks.out_loc(batch, input_mapping)   the KV slots the step writes (the core's out_loc)
    PDHooks.complete(batch, copy_done)      after the batch's copy-done event synchronized (checked)
    PDHooks.on_finished(req, next_token)    P: prefill done, before the request is freed

Every page goes through the ledger: ``LedgerCacheManager`` replaces mini-sglang's free-slot list
(``CacheManager``) so that allocation, release and in-flight steps are all ledger calls.
PrefixSharing enables one optional full P prefix page through the real radix cache and PdLedger.
D remains naive and receives the complete KV. Multi-page radix is a multi-page prefix sharing obligation.

Kernel arguments (KernelReadPins, lifecycle contract, kernel argument contract = ledger contract): every step is launched
with ``ledger.k_launch``, which refuses the step or returns the arrays the kernels use (flashinfer
``indptr`` / ``indices`` / ``last_page_len`` / ``qo_indptr`` and the KV-store ``out_loc``), computed
from the ledger's own page lists.  ``stage_kargs`` copies them to the device (``PDKArgs`` on the
batch); the fi attention backend and the scheduler use them instead of gathering from
``page_table``, so the kernels read and write exactly the slots the ledger checked.  The 06b6baf
page-table row check (page-table row check) is kept as a debug cross-check (``--disaggregation-row-check on``) and
stays on for attention backends that still read the page table (trtllm, fa).

Row binding (KernelReadPins compatibility, ledger contract): every generation is bound to its page-table row in
the core (``bind_row``: P right after ``open_req`` in ``gen_for``, D in ``_commit_ready``), and
``k_launch`` gets each item's row, so a row cannot be launched with any generation but its own;
``release`` unbinds.  What the glue is still trusted for is listed in glue/README.md section 6.
"""

from __future__ import annotations

import os
import threading
import time
from contextlib import contextmanager
from dataclasses import dataclass
from typing import TYPE_CHECKING, Dict, List, Tuple

import torch
from minisgl.core import Req, SamplingParams
from minisgl.kvcache import MatchResult
from minisgl.kvcache.naive_cache import NaiveCacheHandle, NaivePrefixCache
from minisgl.message import DetokenizeMsg, UserMsg
from minisgl.utils import div_ceil, init_logger

from . import ledger as L
from . import messages as M
from . import trace as T

if TYPE_CHECKING:
    from minisgl.core import Batch
    from minisgl.scheduler.config import SchedulerConfig
    from minisgl.scheduler.scheduler import Scheduler
    from minisgl.scheduler.table import TableManager

logger = init_logger(__name__)

# KernelReadPins: host staging of the core's kernel arguments.  "pinned" (default): one pinned int32 buffer
# per step, one async H2D; the buffer is kept on the batch until step_done (its copy-done event
# synchronized), so it is never reused or changed while a copy may still read it.  "pageable":
# torch.frombuffer views of the core's bytearrays, H2D from pageable memory (the driver stages
# the bytes before cudaMemcpyAsync returns; no extra copy here, no async).  GPU A/B: set
# MINISGL_PD_KARGS_H2D=pageable.
KARGS_H2D = os.environ.get("MINISGL_PD_KARGS_H2D", "pinned")
if KARGS_H2D not in ("pinned", "pageable"):
    raise ValueError(f"MINISGL_PD_KARGS_H2D={KARGS_H2D!r}: expected 'pinned' or 'pageable'")
_ALIGN = 64  # int32 elements (256 B): every staged array starts 256-byte aligned on the device
ROW_CHECK_MODES = ("auto", "on", "off")


@dataclass
class PDKArgs:
    """The kernel arguments of one step as computed by the ledger core (``k_launch``), staged.

    Rows are ``batch.reqs`` then the CUDA-graph padding rows (``batch.padded_reqs`` order)."""

    step: int
    rows: int  # B + npad
    nq: int  # qo_indptr[-1]: tokens written by the step (= len(batch.positions))
    nbytes: int  # bytes of the five arrays (the H2D of the step)
    indptr_cpu: torch.Tensor  # (rows + 1,) int32 host: flashinfer paged_kv_indptr
    qo_indptr_cpu: torch.Tensor  # (rows + 1,) int32 host
    last_page_len_cpu: torch.Tensor  # (rows,) int32 host, all 1
    seq_lens_cpu: torch.Tensor  # (rows,) int32 host: indptr[1:] - indptr[:-1]
    qo_indptr: torch.Tensor  # device copy of qo_indptr (cu_seqlens_q_gpu)
    indices: torch.Tensor  # (indptr[-1],) int32 device: KV slot of every token read
    out_loc: torch.Tensor  # (nq,) int32 device: KV slot of every token written
    host: object = None  # host staging (pinned buffer or the pageable views), dropped at step_done


def _i32(b: bytearray) -> torch.Tensor:
    return torch.frombuffer(b, dtype=torch.int32) if len(b) else torch.empty(0, dtype=torch.int32)


def stage_kargs(step: int, arrs, device: torch.device, pinned: bool = True) -> PDKArgs:
    """Copy the five little-endian int32 bytearrays of ``ledger.k_launch`` to where the kernels
    and flashinfer's ``plan()`` take them: indptr / qo_indptr / last_page_len / seq_lens stay on
    the host (``plan`` reads them there and copies them into its own or the CUDA-graph buffers),
    qo_indptr / indices / out_loc go to ``device``.  flashinfer 0.6.11 copies CPU ``indices``
    into the graph buffer with a blocking copy (``decode.py`` plan: non_blocking only for
    same-device indices), which would wait for the engine stream, so indices must arrive as a
    device tensor."""
    ip, qo, ind, ol, lpl = arrs
    n1, nb, ni, no = len(ip) // 4, len(lpl) // 4, len(ind) // 4, len(ol) // 4
    if not pinned:
        ipc, qoc, indh, olh, lplc = (_i32(b) for b in arrs)
        seq = ipc[1:] - ipc[:-1]
        # the views (and so the bytearrays) are kept until step_done as well, in case the driver
        # ever reads pageable memory after cudaMemcpyAsync returned
        return PDKArgs(step, nb, int(qoc[-1]), len(ip) + len(qo) + len(ind) + len(ol) + len(lpl),
                       ipc, qoc, lplc, seq, qoc.to(device, non_blocking=True),
                       indh.to(device, non_blocking=True), olh.to(device, non_blocking=True),
                       host=(ipc, qoc, indh, olh, lplc))

    def up(x: int) -> int:
        return -(-x // _ALIGN) * _ALIGN

    # host-only part [indptr | last_page_len | seq_lens], then the device part
    # [qo_indptr | indices | out_loc]; one pinned buffer, one H2D
    o_lpl, o_seq = up(n1), up(n1) + up(nb)
    o_dev = o_seq + up(nb)
    o_ind = up(n1)
    o_ol = o_ind + up(ni)
    host = torch.empty(o_dev + o_ol + no, dtype=torch.int32, pin_memory=True)
    for off, b, n in ((0, ip, n1), (o_lpl, lpl, nb), (o_dev, qo, n1), (o_dev + o_ind, ind, ni),
                      (o_dev + o_ol, ol, no)):
        if n:
            host[off:off + n].copy_(_i32(b))
    ipc = host[:n1]
    seq = host[o_seq:o_seq + nb]
    torch.sub(ipc[1:], ipc[:-1], out=seq)
    dev = host[o_dev:].to(device, non_blocking=True)
    return PDKArgs(step, nb, int(host[o_dev + n1 - 1]),
                   len(ip) + len(qo) + len(ind) + len(ol) + len(lpl),
                   ipc, host[o_dev:o_dev + n1], host[o_lpl:o_lpl + nb], seq, dev[:n1],
                   dev[o_ind:o_ind + ni], dev[o_ol:o_ol + no], host=host)


class LedgerCacheManager:
    """Drop-in for ``scheduler/cache.py:CacheManager`` whose pages all come from the ledger."""

    def __init__(self, ledger: L.Ledger, num_pages: int, page_size: int,
                 page_table: torch.Tensor, row_check: bool = True, inst: int = 0, cache_type: str = "naive") -> None:
        self.ledger = ledger
        self.num_pages = num_pages
        self.page_size = page_size
        self.page_table = page_table
        self.device = page_table.device
        self.radix = cache_type == "radix"
        if self.radix:
            if ledger.role != "P" or not hasattr(ledger, "prefix_guard"):
                raise ValueError("PrefixSharing radix requires the Python P ledger")
            from minisgl.kvcache.radix_cache import RadixPrefixCache
            self.prefix_cache = RadixPrefixCache(device=self.device, page_size=page_size)
        else:
            self.prefix_cache = NaivePrefixCache(device=self.device)
        # One additional tree lock per page with ANY ledger holder. Admission locks
        # remain separate, including the interval before hit obtains its req holder.
        self._tree_pages = {}  # page -> handle, one page per node (single-page prefix sharing)
        self._ledger_locks = set()
        self._prefix_rows = set()
        self._prepared = set()
        self._admission_handles = {}  # row -> original (possibly empty) locked handle
        self.gen_of_row: Dict[int, int] = {}
        self.uid_ctx = lambda uid: {}  # P: rid / room of a request, for the alloc trace line
        # row check (red team page-table row check): a shadow of the page table holding the ledger's
        # token_slots, on the page table's device; see check_rows
        self.inst = inst
        self.row_check = row_check
        self._sh = torch.zeros_like(page_table) if row_check else None
        self._sh_gen: Dict[int, int] = {}  # row -> gen whose slots the shadow row holds
        self._sh_len: Dict[int, int] = {}  # row -> columns [0, len) filled from the ledger
        self.row_stats: Dict[str, int] = {"row_check": int(row_check), "row_checks": 0,
                                          "row_check_cols": 0, "row_check_fetched": 0,
                                          "row_check_ns_total": 0, "row_check_ns_max": 0}

    # -- interface used by PrefillAdder / Scheduler ------------------------------------------
    def match_req(self, req) -> MatchResult:
        if not self.radix:
            return MatchResult(NaiveCacheHandle())
        # PdCore[05e988a5] PHit:1314 chooses a single complete prefix page.
        # Last input token is always computed. single-page prefix sharing deliberately caps the radix key.
        n = self.page_size if req.input_len > self.page_size else 0
        with self.ledger.prefix_guard():
            self._sync_tree_holds()
            return self.prefix_cache.match_prefix(req.input_ids[:n])

    def _sync_tree_holds(self) -> None:
        """Scheduler-thread only, within prefix_guard; worker threads never edit radix."""
        refs = self.ledger.shared_refs()
        if set(refs) != set(self._tree_pages):
            raise L.LedgerViolation("PrefixSharing tree/ledger Shared page set differs")
        for p, handle in self._tree_pages.items():
            held = refs[p] > 0
            if held != (p in self._ledger_locks):
                self.prefix_cache.lock_handle(handle, unlock=not held)
                if held:
                    self._ledger_locks.add(p)
                else:
                    self._ledger_locks.remove(p)

    @property
    def available_size(self) -> int:
        if not self.radix:
            return self.ledger.free_pages() * self.page_size
        with self.ledger.prefix_guard():
            self._sync_tree_holds()
            return (self.ledger.free_pages() * self.page_size +
                    self.prefix_cache.size_info.evictable_size)

    def lock(self, handle) -> None:
        if self.radix:
            with self.ledger.prefix_guard():
                self.prefix_cache.lock_handle(handle)

    def unlock(self, handle) -> None:
        if self.radix:
            with self.ledger.prefix_guard():
                self.prefix_cache.lock_handle(handle, unlock=True)

    def admit(self, row: int, req, handle) -> None:
        """After both capacity checks: open/hit and copy the ledger's canonical slots."""
        if not self.radix:
            return
        with self.ledger.prefix_guard():
            # PdCore[05e988a5] PRecvReq:517 / PHit:1314. Full token identity, not hash.
            tokens = req.input_ids[:self.page_size].tolist() if req.input_len >= self.page_size else None
            gen = self.ledger.open_req(-1, prefix_tokens=tokens)
            self.ledger.bind_row(row, gen)
            self.gen_of_row[row] = gen
            self.ledger.bind(gen, uid=req.uid, **self.uid_ctx(req.uid))
            self._admission_handles[row] = handle
            if tokens is not None:
                self._prefix_rows.add(row)
            if handle.cached_len:
                page = int(handle.get_matched_indices()[0]) // self.page_size
                self.ledger.hit(gen, page)
                self._write_slots(row, 0, self.ledger.token_slots(gen, 0, handle.cached_len))
                self._prepared.add(gen)
            self._sync_tree_holds()

    def prepare_prefix(self, req: Req) -> None:
        """Complete/insert/remap BEFORE checksumming or registering the source snapshot."""
        if not self.radix or req.table_idx not in self._prefix_rows:
            return
        gen = self.gen_of_row[req.table_idx]
        if gen in self._prepared:
            return
        with self.ledger.prefix_guard():
            key = req.input_ids[:self.page_size]
            found = self.prefix_cache.match_prefix(key).cuda_handle
            if found.cached_len:
                page = int(found.get_matched_indices()[0]) // self.page_size
                # PdCore[05e988a5] PDedup:1352: remap before post; old physical read pins survive.
                self.ledger.dedup(gen, page)
            else:
                # PdCore[05e988a5] PSeal:1344: completion, full page, no in-flight writer.
                page = self.ledger.seal(gen)
                slots = self.ledger.token_slots(gen, 0, self.page_size)
                result = self.prefix_cache.insert_prefix(
                    key, torch.tensor(slots, dtype=torch.int32, device=self.device))
                self._tree_pages[page] = result.handle
            self._write_slots(req.table_idx, 0, self.ledger.token_slots(gen, 0, self.page_size))
            # Dedup invalidates the row shadow; it is no longer append-only.
            self._sh_gen.pop(req.table_idx, None)
            self._prepared.add(gen)
            self._sync_tree_holds()

    def _evict_for(self, needed: int) -> None:
        # PdCore[05e988a5] SEvict:1364. Both changes are hidden until prefix_guard exits.
        self._sync_tree_holds()
        candidates = sorted(self.prefix_cache._collect_leave_nodes_for_evict())
        for node in candidates:
            if self.ledger.free_pages() >= needed:
                break
            page = int(node.value[0]) // self.page_size
            self.ledger.evict(page)  # fail BEFORE tree deletion if a holder was missed
            del node.parent.children[self.prefix_cache.key_fn(node._key)]
            self.prefix_cache.evictable_size -= node.length
            del self._tree_pages[page]
        if self.ledger.free_pages() < needed:
            raise RuntimeError("ledger: not enough evictable pages (admission estimate broken)")

    def flush_shared(self) -> int:
        if not self.radix:
            return 0
        with self.ledger.prefix_guard():
            self._sync_tree_holds()
            if self.prefix_cache.size_info.protected_size:
                raise L.LedgerViolation("PrefixSharing flush has protected tree pages")
            # PdCore[05e988a5] FlushAll:1369; precheck every ledger holder before tree reset.
            count = self.ledger.flush_shared()
            self.prefix_cache.evict(self.prefix_cache.size_info.evictable_size)
            self._tree_pages.clear()
            self._ledger_locks.clear()
            return count

    def gen_for(self, row: int) -> int:
        gen = self.gen_of_row.get(row)
        if gen is None:  # P side / local request: one ledger incarnation per table row use
            if getattr(self.ledger, "role", None) == "D":
                # compatibility (the contract): D runs only requests committed from a landed transfer
                # (PDHooks._commit_ready binds them); never open a local incarnation on D
                raise L.LedgerViolation(
                    f"[pd inst={self.inst:#x}] D: page-table row {row} has no generation bound "
                    f"(a local request on a decode instance; only _commit_ready binds D rows)")
            gen = self.ledger.open_req(-1)
            self.ledger.bind_row(row, gen)  # KernelReadPins compatibility: the core owns row <-> gen
            self.gen_of_row[row] = gen
        return gen

    def allocate_paged(self, reqs: List[Req]) -> None:
        for req in reqs:
            first_page = div_ceil(req.cached_len, self.page_size)
            last_page = div_ceil(req.device_len, self.page_size)
            if last_page > first_page:
                gen = self.gen_for(req.table_idx)
                if self.radix:
                    with self.ledger.prefix_guard():
                        self._evict_for(last_page - first_page)
                        self.ledger.note("alloc", uid=req.uid, **self.uid_ctx(req.uid))
                        got = self.ledger.alloc(gen, last_page - first_page)
                else:
                    # PdCore[05e988a5] DGrow:1206 on D after visibility.
                    self.ledger.note("alloc", uid=req.uid, **self.uid_ctx(req.uid))
                    got = self.ledger.alloc(gen, last_page - first_page)
                if not got:
                    raise RuntimeError("ledger: not enough free pages (admission estimate broken)")
                lo, hi = first_page * self.page_size, last_page * self.page_size
                self._write_slots(req.table_idx, lo, self.ledger.token_slots(gen, lo, hi))

    def write_rows(self, row: int, gen: int, npages: int) -> None:
        """D side: map the transferred pages (whole pages, so that decode can append into the
        last partial one) into the request's page-table row."""
        self._write_slots(row, 0, self.ledger.token_slots(gen, 0, npages * self.page_size))

    def _write_slots(self, row: int, lo: int, slots: List[int]) -> None:
        # page-table entries come from the ledger (token_slots); the glue only copies them
        if lo + len(slots) > self.page_table.shape[1]:  # row-width bound backstop (make_pd refuses first)
            raise RuntimeError(f"page-table row {row}: columns {lo}..{lo + len(slots)} exceed "
                               f"the row width {self.page_table.shape[1]}")
        t = torch.tensor(slots, dtype=torch.int32).to(self.device, non_blocking=True)
        self.page_table[row, lo : lo + len(slots)] = t

    def check_rows(self, step: int, items: List[Tuple[int, int, int]]) -> None:
        """Red team page-table row check: the attention and KV-store kernels of a step read and write KV through
        ``page_table[row, 0:device_len]``, and nothing else compared those entries with the
        ledger.  Before step ``step`` is launched, every column [0, n) of every ``(row, gen, n)``
        in ``items`` must equal ``ledger.token_slots(gen, 0, n)``; any difference raises
        ``LedgerViolation`` (fail-stop) naming the row, gen, column and both slots.

        Exact, every step, every column.  Cheap because the ledger's answer is cached in a
        shadow table on the page table's device: the slots of a live gen never change (the
        ledger only appends pages), so each (row, gen) column is fetched from the ledger once
        (decode: one new column per request per step); the comparison of all columns is a few
        vectorised tensor ops with one host sync for the verdict."""
        if self._sh is None:
            return
        t0 = time.perf_counter_ns()
        rows: List[int] = []
        lens: List[int] = []
        ur: List[int] = []
        uc: List[int] = []
        uv: List[int] = []
        width = self.page_table.shape[1]
        for row, gen, n in items:
            if n > width:  # row-width bound (make_pd refuses such a configuration at start)
                raise L.LedgerViolation(f"[row check inst={self.inst:#x}] step {step}: row {row} "
                                        f"reads {n} columns, the row width is {width}")
            if self._sh_gen.get(row) != gen:  # a new request in this row: nothing cached
                self._sh_gen[row] = gen
                self._sh_len[row] = 0
            lo = self._sh_len[row]
            if n > lo:
                ur.extend([row] * (n - lo))
                uc.extend(range(lo, n))
                uv.extend(self.ledger.token_slots(gen, lo, n))
                self._sh_len[row] = n
            if n > 0:
                rows.append(row)
                lens.append(n)
        if ur:
            u = torch.tensor([ur, uc, uv], dtype=torch.int64).to(self.device, non_blocking=True)
            self._sh[u[0], u[1]] = u[2].to(torch.int32)
        ncols = sum(lens)
        if rows:
            mx = max(lens)
            m = torch.tensor([rows, lens], dtype=torch.int64).to(self.device, non_blocking=True)
            got = self.page_table[:, :mx].index_select(0, m[0])
            want = self._sh[:, :mx].index_select(0, m[0])
            cols = torch.arange(mx, device=self.device)
            bad = (got != want) & (cols.unsqueeze(0) < m[1].unsqueeze(1))
            if bool(bad.any()):  # the one host sync (scheduler stream only)
                self._row_violation(step, items, rows, bad, got, want)
        dt = time.perf_counter_ns() - t0
        st = self.row_stats
        st["row_checks"] += 1
        st["row_check_cols"] += ncols
        st["row_check_fetched"] += len(uv)
        st["row_check_ns_total"] += dt
        st["row_check_ns_max"] = max(st["row_check_ns_max"], dt)

    def _row_violation(self, step, items, rows, bad, got, want) -> None:
        gen_of = {row: gen for row, gen, _ in items}
        where = bad.nonzero().tolist()
        i, col = where[0]
        row = rows[i]
        nrows = len({w[0] for w in where})
        msg = (f"[row check inst={self.inst:#x}] step {step}: page-table row {row} (gen "
               f"{gen_of[row]}) column {col} holds slot {int(got[i, col])}, the ledger's "
               f"token_slots gives {int(want[i, col])}; {len(where)} columns differ in {nrows} "
               f"of {len(rows)} rows")
        logger.error("PD ROW MISMATCH %s", msg)
        raise L.LedgerViolation(msg)

    def cache_req(self, req: Req, *, finished: bool) -> None:
        if finished:
            gen = self.gen_of_row.pop(req.table_idx, None)
            if gen is not None:
                self.ledger.note("release", why=getattr(req, "pd_why", "finish"))
                if self.radix:
                    with self.ledger.prefix_guard():
                        # PdCore[05e988a5] PRelease:1086 / SFollow:1384. Ledger retains
                        # req refs until the final KDone, and entry/quarantine refs separately.
                        self.ledger.release(gen)
                        self.unlock(self._admission_handles.pop(req.table_idx))
                        self._prefix_rows.discard(req.table_idx)
                        self._prepared.discard(gen)
                        self._sync_tree_holds()
                else:
                    self.ledger.release(gen)

    def check_integrity(self) -> None:
        self.ledger.check()
        if self.radix:
            with self.ledger.prefix_guard():
                self._sync_tree_holds()

    @contextmanager
    def lazy_free_region(self):
        yield  # in-flight steps are tracked by the ledger (launch / complete)


def make_gpu_flush_hook():
    """``cudaDeviceFlushGPUDirectRDMAWrites(CurrentDevice, ToOwner)`` (H-visible).  On by
    default (the contract): D calls it before the ledger records a landing.  Same call as the visibility litmus test
    program (CUDA runtime wrapper): ctypes on the libcudart that torch loaded
    (found in /proc/self/maps), enum values from cuda-13 ``driver_types.h:1902-1911`` as cited
    there (target CurrentDevice = 0, scope ToOwner = 100).  Not yet run inside mini-sglang on
    a GPU."""
    import ctypes

    path = None
    try:
        with open("/proc/self/maps") as f:
            for ln in f:
                if "libcudart.so" in ln:
                    path = ln.split()[-1]
                    break
    except OSError:
        pass
    fn = ctypes.CDLL(path or "libcudart.so.13").cudaDeviceFlushGPUDirectRDMAWrites
    fn.argtypes = [ctypes.c_int, ctypes.c_int]
    fn.restype = ctypes.c_int

    def flush() -> None:
        err = fn(0, 100)
        if err != 0:
            raise RuntimeError(f"cudaDeviceFlushGPUDirectRDMAWrites failed: {err}")

    return flush


def make_pd(config: SchedulerConfig, engine, table_manager: TableManager, backend=None):
    """``backend`` is injected only by tests (an in-process memory engine); servers pass None."""
    if config.tp_info.size != 1:
        raise ValueError("PD disaggregation supports TP = 1 only")
    if config.cache_type not in ("naive", "radix"):
        raise ValueError("PD supports --cache-type naive or radix")
    if config.cache_type == "radix" and config.disaggregation_mode != "prefill":
        raise ValueError("PrefixSharing: D needs --cache-type naive (receives complete KV)")
    # Z3 finding row-width bound (row-width bound at page size 64): the glue maps whole pages, up to ceil(Lmax / ps) * ps columns,
    # but a page-table row is only align_up_32(Lmax) wide (engine/engine.py:67-68).  Refuse such
    # a configuration at start instead of resizing the engine's table (non-PD code unchanged);
    # this also keeps the decode replay table (width // ps) wide enough.
    width = int(engine.page_table.shape[1])
    need = div_ceil(engine.max_seq_len, config.page_size) * config.page_size
    if need > width:
        raise ValueError(
            f"PD: page-table row width {width} < {need} (max_seq_len {engine.max_seq_len} "
            f"rounded up to page_size {config.page_size}); set --max-seq-len-override to a "
            f"multiple of {config.page_size}")
    buf = engine.kv_cache._kv_buffer  # (2, L, pool_pages, page_size, H, D), contiguous
    assert buf.is_contiguous()
    _, num_layers, pool_pages, page_size, kv_heads, head_dim = buf.shape
    dtype_name = str(buf.dtype).replace("torch.", "")
    if dtype_name not in L.DTYPE_CODES:
        raise ValueError(f"PD: no handshake code for KV dtype {dtype_name}")
    model_id = M.model_identity(config.model_path, config.hf_config.to_dict())
    layout = [num_layers, page_size, kv_heads, head_dim, buf.element_size(), pool_pages,
              buf.data_ptr(), L.DTYPE_CODES[dtype_name], model_id]
    inst = M.new_instance_id()
    # compatibility (the contract): the ledger core holds this instance's role and refuses the other side's
    # primitives (and, on D, local requests, early decode allocs, launches without a transfer)
    role = {"prefill": "P", "decode": "D"}.get(config.disaggregation_mode)
    if role is None:
        raise ValueError(f"PD: --disaggregation-mode {config.disaggregation_mode!r}")
    ledger = L.RefLedger(engine.num_pages, layout, inst,
                         check_every=config.disaggregation_ledger_check_every, role=role)
    if getattr(ledger, "role", None) != role:  # read back from the ledger, not assumed
        raise RuntimeError(f"PD: the ledger did not take role {role!r} ({L.ledger_impl()})")
    # Log the implementation and the role reported by the ledger.
    logger.info("PD ledger: %s role=%s", L.ledger_impl(), ledger.role)
    ledger = T.wrap(ledger, inst, role)
    # KernelReadPins: the dummy slot CUDA-graph padding rows read and write must be the one k_launch hands out
    # for padding rows (num_pages * page_size, Engine.__init__ fills the dummy row with it)
    dummy = getattr(engine, "dummy_req", None)
    if dummy is not None:
        got = int(engine.page_table[dummy.table_idx, 0])
        if got != engine.num_pages * config.page_size:
            raise ValueError(f"PD: dummy page-table row holds slot {got}, the ledger's dummy slot "
                             f"is {engine.num_pages * config.page_size}")
    # the attention kernels take the core's arrays only if the backend says so (fi); backends that
    # still read page_table (trtllm, fa, hybrids) keep the 06b6baf row check (page-table row check) on
    kread = bool(getattr(engine.attn_backend, "takes_pd_kargs", False))
    mode = getattr(config, "disaggregation_row_check", "auto")
    mode = {True: "on", False: "off"}.get(mode, mode)
    if mode not in ROW_CHECK_MODES:
        raise ValueError(f"--disaggregation-row-check {mode!r}: expected one of {ROW_CHECK_MODES}")
    row_check = mode == "on" or (mode == "auto" and not kread)
    cache = LedgerCacheManager(ledger, engine.num_pages, config.page_size, engine.page_table,
                               row_check=row_check, inst=inst, cache_type=config.cache_type)
    logger.info("PD kernel arguments: attention %s, KV store from the ledger core (k_launch); "
                "page-table row check %s (mode %s); host staging %s",
                "from the ledger core" if kread else "reads page_table (backend has no core path)",
                "on" if row_check else "off", mode, KARGS_H2D)
    if mode == "off" and not kread:
        logger.warning("PD: page-table row check OFF while the attention backend reads the page "
                       "table (--disaggregation-row-check off; benchmarking only)")
    if backend is not None:
        pass
    elif config.disaggregation_transfer_backend == "mooncake":
        from .transfer import MooncakeBackend

        backend = MooncakeBackend(config.disaggregation_hostname, config.disaggregation_ib_device)
    elif config.disaggregation_transfer_backend == "fake":
        raise ValueError("the fake backend moves bytes between CPU bytearrays; it is for the "
                         "CPU tests only and cannot reach GPU memory")
    else:
        raise ValueError(config.disaggregation_transfer_backend)
    backend.register([buf.data_ptr()], [buf.numel() * buf.element_size()])  # whole pool, once
    hooks = PDHooks(config, ledger, cache, backend, layout, inst, table_manager, kv_buf=buf,
                    kread=kread, xcheck=mode == "on")
    logger.info(f"PD {config.disaggregation_mode}: instance {inst:#x}, layout {layout[:6]}, "
                f"session {backend.session_id}")
    return cache, hooks


_CSUM_W: Dict[Tuple[str, int], torch.Tensor] = {}


def kv_checksums(buf: torch.Tensor, pages: List[int]) -> List[int]:
    """Per-(K/V, layer) checksums of ``pages`` in the KV pool ``buf`` (shape
    (2, L, pool_pages, page_size, H, D), any dtype), computed on buf's device.

    Same value as ``messages.kv_checksum_bytes`` over each slab's bytes in page order:
    C = sum_i b_i * w(i), w(i) = ((i * 40503) mod 65521) + 1, in int64 (exact, deterministic,
    no overflow below 5e11 bytes per slab).  One slab at a time (index_select of n pages,
    uint8 -> int64, multiply by a cached weight vector, sum), so the extra device memory is
    about 17x one slab (uint8 copy, int64 copy, product); one host sync at the end."""
    u8 = buf.view(torch.uint8)  # (2, L, pool_pages, ps, H, D * itemsize)
    idx = torch.tensor(pages, dtype=torch.long).to(buf.device)
    two, nl = u8.shape[0], u8.shape[1]
    m = len(pages) * u8[0, 0, 0].numel()
    key = (str(buf.device), m)
    w = _CSUM_W.get(key)
    if w is None:
        w = (torch.arange(m, dtype=torch.int64, device=buf.device) * M.CSUM_MUL) % M.CSUM_MOD + 1
        if len(_CSUM_W) > 64:
            _CSUM_W.clear()
        _CSUM_W[key] = w
    out = torch.empty(two * nl, dtype=torch.int64, device=buf.device)
    for kv in range(two):
        for layer in range(nl):
            slab = u8[kv, layer].index_select(0, idx).reshape(-1)
            out[kv * nl + layer] = (slab.to(torch.int64) * w).sum()
    return [int(x) for x in out.tolist()]


class PDHooks:
    def __init__(self, config, ledger, cache: LedgerCacheManager, backend, layout, inst,
                 table_manager, kv_buf: torch.Tensor | None = None, kread: bool = False,
                 xcheck: bool = False) -> None:
        for name in ("minisgl.disagg.prefill", "minisgl.disagg.decode",
                     "minisgl.disagg.transfer", "minisgl.disagg.trace"):
            init_logger(name)  # the torch-free modules log through the standard logger
        T.hold_step_lines()  # per-step PDT lines go out with the next other line, not one by one
        self.mode = config.disaggregation_mode
        self.inst = inst
        self.ledger = ledger
        from .timing import collector
        self.timing = collector(ledger)
        if isinstance(ledger, T.TracedLedger):
            ledger.defer_kargs = True
        self.cache = cache
        self.table_manager = table_manager
        self.page_size = config.page_size
        self.step = 0
        # KernelReadPins: kernel arguments from the core (k_launch); xcheck (debug, --disaggregation-row-check
        # on) also compares them with the 06b6baf page-table gather every step (fail-stop)
        self.kread = kread
        self.xcheck = xcheck
        self.kargs_pinned = KARGS_H2D == "pinned"
        self.kargs_stats: Dict[str, int] = {
            "kargs": int(kread), "kargs_pinned": int(self.kargs_pinned), "kargs_steps": 0,
            "kargs_bytes_total": 0, "kargs_bytes_max": 0, "kargs_pad_rows": 0,
            "kargs_ns_total": 0, "kargs_ns_max": 0, "kargs_stage_ns_total": 0,
            "kargs_stage_ns_max": 0, "kargs_xcheck": int(xcheck), "kargs_xchecks": 0,
            "kargs_seen_steps": 0, "kargs_seen_ns_total": 0, "kargs_seen_ns_max": 0}
        self.parked: Dict[int, UserMsg] = {}
        self.ready_d: List[Tuple[int, int, int]] = []
        self._last_log = 0.0
        self._last_stats: Dict[str, int] = {}
        self.kv_buf = kv_buf
        # per-write KV checksum (compatibility): off by default; --disaggregation-kv-checksum
        self.checksum = bool(getattr(config, "disaggregation_kv_checksum", False))
        csum_fn = None
        if self.checksum:
            assert kv_buf is not None
            csum_fn = lambda pages: kv_checksums(self.kv_buf, pages)  # noqa: E731
        if self.mode == "prefill":
            from .prefill import PrefillPD

            self.pd = PrefillPD(ledger, backend, layout, inst, host="0.0.0.0",
                                port=config.disaggregation_bootstrap_port,
                                bootstrap_timeout=config.disaggregation_bootstrap_timeout)
            cache.uid_ctx = self.pd.ctx_of
        else:
            from .decode import DecodePD

            flush = make_gpu_flush_hook() if config.disaggregation_gpu_flush else None
            self.pd = DecodePD(ledger, backend, layout, inst,
                               bootstrap_timeout=config.disaggregation_bootstrap_timeout,
                               waiting_timeout=config.disaggregation_waiting_timeout,
                               ack_timeout=float(getattr(config, "disaggregation_ack_timeout",
                                                         30.0)),
                               flush_hook=flush, checksum_fn=csum_fn,
                               checksum_fatal=bool(getattr(
                                   config, "disaggregation_kv_checksum_fatal", False)))
        # stats on demand (compatibility): GET http://127.0.0.1:<port>/pd_stats; 0 = off
        self._stats_req = threading.Event()
        self._stats_ready = threading.Event()
        self._stats_lock = threading.Lock()
        self._stats_reply: Dict = {}
        self.stats_server = None
        port = int(getattr(config, "disaggregation_stats_port", 0) or 0)
        from .timing import attach_hooks
        attach_hooks(self)
        if port:
            self.stats_server = _start_stats_server(self, port)

    def timing_snapshot(self, after=None, through=None) -> Dict:
        """Structured, independent of the legacy numeric pd_stats consumer."""
        if self.timing is None:
            return {"schema": "ledger-timing", "status": "DISABLED",
                    "instance": self.inst, "records": None}
        return self.timing.snapshot(after, through)

    # ------------------------------------------------------------------ stats on demand
    def snapshot(self) -> Dict:
        """Full stats of this instance (scheduler thread)."""
        out = {"mode": self.mode, "instance": self.inst, "parked": len(self.parked),
               "kv_checksum": int(self.checksum)}
        out.update(self.pd.stats())
        out.update(self.cache.row_stats)
        out.update(self.kargs_stats)
        return out

    def stats_now(self, timeout: float = 5.0) -> Dict:
        """Called from the stats HTTP thread: ask the scheduler thread for a snapshot (no
        signals, no shared mutable state); fall back to the ledger's own (locked) stats if the
        scheduler does not answer in time."""
        with self._stats_lock:
            self._stats_ready.clear()
            self._stats_req.set()
            if self._stats_ready.wait(timeout):
                return dict(self._stats_reply)
            out = {"mode": self.mode, "instance": self.inst, "scheduler": "busy"}
            out.update({"ledger_" + k: v for k, v in self.ledger.stats().items()})
            return out

    def _serve_stats_request(self) -> None:
        if self._stats_req.is_set():
            self._stats_reply = self.snapshot()
            self._stats_req.clear()
            self._stats_ready.set()

    def _fail_reply(self, uid: int, why: str) -> None:
        """Error channel (compatibility): the request ends with an explicit error, not a plain EOS."""
        s = self.sched
        s.send_result([DetokenizeMsg(uid=uid, next_token=s.eos_token_id, finished=True,
                                     error=f"PD {self.mode}: {why}")])

    def attach(self, sched: Scheduler) -> None:
        self.sched = sched

    # ------------------------------------------------------------------ loop
    def tick(self, idle: bool) -> None:
        self.pd.poll(timeout=0.002 if idle else 0.0)
        self._serve_stats_request()
        s = self.sched
        for uid, why in self.pd.pop_failed():
            msg = self.parked.pop(uid, None)
            logger.warning(f"PD request {uid} failed: {why}")
            self._fail_reply(uid, why)
            if self.mode == "prefill" and msg is None:
                req = s.prefill_manager.abort_req(uid)  # already handed to prefill
                if req is not None:
                    req.pd_why = "failed"  # type: ignore[attr-defined]
                    s._free_req_resources(req)
        if self.mode == "prefill":
            for uid in self.pd.pop_ready():
                s.prefill_manager.add_one_req(self.parked.pop(uid))
        else:
            budget = (self.ledger.free_pages() - self._running_reserve()
                      - self.pd.pending_reserve())
            if self.table_manager.available_size - len(self.ready_d) - self.pd.count("waiting") <= 0:
                budget = 0  # every admitted transfer needs a table row at commit
            self.pd.try_prealloc(budget)
            self.ready_d.extend(self.pd.pop_ready())
            self._commit_ready()
        if idle:
            T.flush_steps()  # held step lines out while nothing runs (no write if none held)
        self._maybe_log(idle)

    def _running_reserve(self) -> int:
        dm = self.sched.decode_manager
        return div_ceil(dm.inflight_tokens, self.page_size) + len(dm.running_reqs)

    def _commit_ready(self) -> None:
        s = self.sched
        keep = []
        for uid, gen, first in self.ready_d:
            msg = self.parked.get(uid)
            if msg is None:  # aborted meanwhile
                self.ledger.note("release", why="abort")
                self.ledger.release(gen)
                continue
            if self.table_manager.available_size == 0:
                keep.append((uid, gen, first))
                continue
            del self.parked[uid]
            row = self.table_manager.allocate()
            prompt = msg.input_ids.to(torch.int32)
            n = len(prompt)
            ids = torch.cat([prompt, torch.tensor([first], dtype=torch.int32)])
            self.cache.gen_of_row[row] = gen
            self.ledger.bind_row(row, gen)  # KernelReadPins compatibility: k_launch checks rows against this
            self.cache.write_rows(row, gen, len(self.ledger.pages_of(gen)))
            s.token_pool[row, : n + 1].copy_(ids.pin_memory(), non_blocking=True)
            finished = msg.sampling_params.max_tokens <= 1 or (
                not msg.sampling_params.ignore_eos and first == s.eos_token_id)
            s.send_result([DetokenizeMsg(uid=uid, next_token=first, finished=finished)])
            req = Req(input_ids=ids, table_idx=row, cached_len=n,
                      output_len=max(0, msg.sampling_params.max_tokens - 1), uid=uid,
                      sampling_params=msg.sampling_params, cache_handle=NaiveCacheHandle())
            if finished or not req.can_decode:
                s._free_req_resources(req)
            else:
                s.decode_manager.running_reqs.add(req)
        self.ready_d = keep

    def _maybe_log(self, idle: bool) -> None:
        now = time.monotonic()
        if now - self._last_log < 10.0:
            return
        self._last_log = now
        if idle:
            self.ledger.check()  # full invariant scan while idle (fail-stop)
        st = self.pd.stats()
        if st != self._last_stats:
            self._last_stats = st
            keys = ("ledger_free", "ledger_private", "ledger_draining", "ledger_quarantined",
                    "ledger_quarantined_timeout", "ledger_quarantined_peer_lost",
                    "ledger_quarantined_transfer_failed", "ledger_quarantined_cancelled",
                    "ledger_dropped_msgs", "flush_count", "flush_ns_total", "flush_ns_max",
                    "kv_checksum_ok", "kv_checksum_mismatch", "kv_checksum_missing")
            logger.info("PD %s stats: %s", self.mode,
                        " ".join(f"{k[7:] if k.startswith('ledger_') else k}={st.get(k, 0)}"
                                 for k in keys))

    # ------------------------------------------------------------------ messages
    def on_user_msg(self, msg: UserMsg) -> bool:
        d = msg.disagg or {}
        room = d.get("bootstrap_room")
        rid = str(d.get("rid") or "")
        if room is None:
            logger.warning(f"PD {self.mode}: request {msg.uid} without bootstrap_room, dropped")
            self._fail_reply(msg.uid, "request without bootstrap_room")
            return True
        ids = msg.input_ids.tolist()
        th = M.tok_hash(ids)
        if self.mode == "prefill":
            # P computes the KV and the first token only (SGLang: max_new_tokens forced to 1)
            msg.sampling_params = SamplingParams(**{**msg.sampling_params.__dict__,
                                                    "max_tokens": 1})
            ok = self.pd.add_request(msg.uid, int(room), len(ids), th, rid=rid)
        else:
            ok = self.pd.add_request(msg.uid, int(room), str(d.get("bootstrap_host")),
                                     int(d.get("bootstrap_port")), len(ids), th,
                                     max_new_tokens=msg.sampling_params.max_tokens, rid=rid)
        logger.info("PD %s request rid=%s uid=%d room=%d ntokens=%d accepted=%d", self.mode,
                    rid, msg.uid, int(room), len(ids), int(ok))
        if not ok:
            if self.mode != "prefill" and not M.room_ok(int(room)):  # dropped before open_req
                why = f"bootstrap_room {room} outside [0, 2^63)"
            else:
                why = f"duplicate active room {room}"
            logger.warning(f"PD {self.mode}: {why}, request rejected")
            self._fail_reply(msg.uid, why)
            return True
        self.parked[msg.uid] = msg
        return True

    def on_dropped(self, msg: UserMsg, why: str) -> None:
        """The scheduler dropped a request before PD saw it.  P: D's destination for it (if D
        published one, or does later) gets the stopped refusal at once (intake_refusal)."""
        room = (msg.disagg or {}).get("bootstrap_room")
        if self.mode == "prefill" and room is not None:
            ids = msg.input_ids.tolist()
            self.pd.drop_request(int(room), len(ids), M.tok_hash(ids))
        self._fail_reply(msg.uid, why)

    def on_abort(self, uid: int) -> bool:
        self.pd.abort(uid)
        if uid in self.parked:
            del self.parked[uid]
            return True
        return False

    # ------------------------------------------------------------------ steps
    def launch(self, batch: Batch) -> None:
        """KLaunch of the batch's step: the ledger core checks every row (the generation bound
        to that table row, live, its pages PRIVATE to it, incoming transfer landed and visible,
        reads only written KV), pins it until step_done, and returns the kernel arguments
        (``batch.pd_kargs``).  Padding rows are not items: the core gives them the dummy slot."""
        self.step += 1
        batch.pd_step = self.step  # type: ignore[attr-defined]
        if self.timing is not None:
            self.timing.bind(getattr(batch, "pd_timing", None), batch.pd_step)
        items = [(self.cache.gen_for(r.table_idx), r.cached_len, r.device_len) for r in batch.reqs]
        if self.cache.row_check:  # page-table row check (06b6baf): debug cross-check, or a page-table backend
            self.cache.check_rows(self.step, [(r.table_idx, g, r.device_len)
                                              for r, (g, _, _) in zip(batch.reqs, items)])
        npad = len(batch.padded_reqs) - len(batch.reqs)
        t0 = time.perf_counter_ns()
        arrs = self.ledger.k_launch(self.step, items, npad,
                                    rows=[r.table_idx for r in batch.reqs])
        t1 = time.perf_counter_ns()
        if self.timing is None:
            ka = stage_kargs(self.step, arrs, self.cache.device, pinned=self.kargs_pinned)
        else:
            with self.timing.auxiliary("stage"):
                ka = stage_kargs(self.step, arrs, self.cache.device, pinned=self.kargs_pinned)
        t2 = time.perf_counter_ns()
        nq = sum(r.extend_len for r in batch.padded_reqs)
        if ka.rows != len(batch.padded_reqs) or ka.nq != nq:
            raise L.LedgerViolation(f"[kargs inst={self.inst:#x}] step {self.step}: the core's "
                                    f"arrays have {ka.rows} rows / {ka.nq} written tokens, the "
                                    f"batch {len(batch.padded_reqs)} / {nq}")
        batch.pd_kargs = ka  # type: ignore[attr-defined]
        st = self.kargs_stats
        st["kargs_steps"] += 1
        st["kargs_bytes_total"] += ka.nbytes
        st["kargs_bytes_max"] = max(st["kargs_bytes_max"], ka.nbytes)
        st["kargs_pad_rows"] += npad
        st["kargs_ns_total"] += t1 - t0
        st["kargs_ns_max"] = max(st["kargs_ns_max"], t1 - t0)
        st["kargs_stage_ns_total"] += t2 - t1
        st["kargs_stage_ns_max"] = max(st["kargs_stage_ns_max"], t2 - t1)
        if self.timing is not None and getattr(batch, "pd_timing", None) is not None:
            batch.pd_timing["launched"] = True

    def out_loc(self, batch: Batch, input_mapping) -> torch.Tensor:
        """The KV slots the step's store kernel writes: the core's out_loc (06b6baf gathered
        ``page_table[input_mapping]``)."""
        ka: PDKArgs = batch.pd_kargs  # type: ignore[attr-defined]
        if self.xcheck:
            self._xcheck(batch, ka, input_mapping)
        return ka.out_loc

    def kargs_seen(self, batch: Batch) -> None:
        """argument capture/argument capture: observe after prepare_metadata, before ForwardInput leaves scheduler.
        fi reads metadata.indices; stores use batch.out_loc. Later graph/plan copies are
        still a trusted boundary. One blocking D2H for both device arrays, on this stream.
        """
        if not T.ENABLED or not T.STEP_LINES or not isinstance(self.ledger, T.TracedLedger):
            return
        t0 = time.perf_counter_ns()
        meta = getattr(batch, "attn_metadata", None)
        ka = batch.pd_kargs
        if self.kread and meta is not None:
            ind, ip, qo = meta.indices, meta.cu_seqlens_k_cpu, meta.cu_seqlens_q_cpu
            source = "attn"
        elif self.kread:
            # CPU recording backend: no attention metadata object exists.
            ind, ip, qo = ka.indices, ka.indptr_cpu, ka.qo_indptr_cpu
            source = "kargs"
        else:
            # fa / trtllm consume a page table. This is a snapshot of the requested rows,
            # not evidence of any later gather in those backends (ks=pt).
            ind = torch.cat([self.cache.page_table[r.table_idx, :r.device_len]
                             for r in batch.padded_reqs])
            ip, qo = [0], [0]
            for r in batch.padded_reqs:
                ip.append(ip[-1] + r.device_len)
                qo.append(qo[-1] + r.extend_len)
            source = "pt"
        ol = batch.out_loc  # final scheduler output; deliberately not ka.out_loc
        # The cat is queued after H2D staging in the scheduler stream. CPU is synchronous;
        # CUDA .cpu() waits once for that cat and its inputs, without touching another stream.
        both = torch.cat((ind.reshape(-1), ol.reshape(-1))).detach().cpu().numpy()
        ni = ind.numel()
        summary = T.kargs_summary(ip, qo, both[:ni], both[ni:], len(batch.reqs), source)
        self.ledger.flush_kargs(batch.pd_step, summary)
        dt = time.perf_counter_ns() - t0
        st = self.kargs_stats
        st["kargs_seen_steps"] += 1
        st["kargs_seen_ns_total"] += dt
        st["kargs_seen_ns_max"] = max(st["kargs_seen_ns_max"], dt)

    def _xcheck(self, batch: Batch, ka: PDKArgs, input_mapping) -> None:
        """Debug (``--disaggregation-row-check on``): the core's arrays must equal what 06b6baf
        gathered from the page table (fi ``prepare_metadata`` and ``_prepare_batch``); one host
        sync per step.  Any difference raises ``LedgerViolation`` (fail-stop)."""
        pt = self.cache.page_table
        reqs = batch.padded_reqs
        want_ip = [0]
        for r in reqs:
            want_ip.append(want_ip[-1] + r.device_len)
        old_ol = pt[input_mapping]
        old_ind = torch.cat([pt[r.table_idx, : r.device_len] for r in reqs])
        bad = []
        if ka.indptr_cpu.tolist() != want_ip:
            bad.append("indptr")
        if ka.last_page_len_cpu.tolist() != [1] * len(reqs):
            bad.append("last_page_len")
        if old_ol.shape != ka.out_loc.shape or bool((old_ol != ka.out_loc).any()):
            bad.append("out_loc")
        if old_ind.shape != ka.indices.shape or bool((old_ind != ka.indices).any()):
            bad.append("indices")
        self.kargs_stats["kargs_xchecks"] += 1
        if bad:
            msg = (f"[kargs xcheck inst={self.inst:#x}] step {ka.step}: the core's {bad} differ "
                   f"from the page-table gather ({len(reqs)} rows)")
            logger.error("PD KARGS MISMATCH %s", msg)
            raise L.LedgerViolation(msg)

    def complete(self, batch: Batch, copy_done=None) -> None:
        """KDone: called after the step's copy-done event synchronized (stream completion), so every kernel of
        the step, and every copy of its staged arguments, has finished.  The event is checked
        here, before the ledger is told (red team copy-completion ordering): no event, or one whose
        ``query()`` is not yet true, is a glue ordering bug and stops the process (the step's
        pages would be unpinned while its kernels may still read or write them)."""
        if copy_done is None or not copy_done.query():
            raise L.LedgerViolation(
                f"[kdone inst={self.inst:#x}] step {getattr(batch, 'pd_step', '?')}: step_done "
                f"before the step's copy-done event completed ({'no event' if copy_done is None else 'query() false'})")
        self.ledger.step_done(batch.pd_step)  # type: ignore[attr-defined]
        ka = getattr(batch, "pd_kargs", None)
        if ka is not None:
            ka.host = None  # the host staging may be reused from now on

    def on_finished(self, req: Req, next_token: int) -> None:
        if self.mode != "prefill":
            return
        gen = self.cache.gen_of_row.get(req.table_idx)
        if gen is None:
            return
        # PdCore[05e988a5] PSeal:1344 / PDedup:1352 precede PPost:556.
        self.cache.prepare_prefix(req)
        csum = None
        if self.checksum:  # after prefill completed (step synchronized), before p_post
            npages = div_ceil(req.cached_len, self.page_size)
            csum = kv_checksums(self.kv_buf, self.ledger.pages_of(gen)[:npages])
        self.pd.on_prefill_done(req.uid, gen, req.cached_len, next_token, csum=csum)

    def shutdown(self) -> None:
        if isinstance(self.ledger, T.TracedLedger):
            self.ledger.flush_kargs()
        logger.info("PD %s final stats: %s %s %s", self.mode, self.pd.stats(), self.cache.row_stats,
                    self.kargs_stats)
        if self.stats_server is not None:
            self.stats_server.shutdown()
        self.pd.shutdown()
        T.flush_steps()


def _start_stats_server(hooks: PDHooks, port: int):
    """GET /pd_stats on 127.0.0.1:<port> returns the instance's stats as JSON (compatibility)."""
    import json
    from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer

    class Handler(BaseHTTPRequestHandler):
        def log_message(self, fmt, *args) -> None:
            pass

        def do_GET(self) -> None:
            from urllib.parse import parse_qs, urlsplit
            url = urlsplit(self.path)
            if url.path.rstrip("/") == "/pd_timing":
                try:
                    q = parse_qs(url.query, strict_parsing=True, keep_blank_values=True)
                    if set(q) - {"after", "through"} or any(len(v) != 1 for v in q.values()):
                        raise ValueError("unknown or repeated timing query parameter")
                    after = int(q["after"][0]) if "after" in q else None
                    through = int(q["through"][0]) if "through" in q else None
                    snapshot = hooks.timing_snapshot(after, through)
                    body = (hooks.timing.encode_snapshot(snapshot) if hooks.timing is not None
                            else json.dumps(snapshot).encode())
                except ValueError as exc:
                    self.send_error(400, str(exc))
                    return
                self.send_response(200)
                self.send_header("Content-Type", "application/json")
                self.send_header("Content-Length", str(len(body)))
                self.end_headers()
                self.wfile.write(body)
                return
            if self.path.rstrip("/") != "/pd_stats":
                self.send_error(404)
                return
            stats = hooks.stats_now()
            body = (hooks.timing.encode_snapshot(stats, "stats_json") if hooks.timing is not None
                    else json.dumps(stats).encode())
            self.send_response(200)
            self.send_header("Content-Type", "application/json")
            self.send_header("Content-Length", str(len(body)))
            self.end_headers()
            self.wfile.write(body)

    srv = ThreadingHTTPServer(("127.0.0.1", port), Handler)
    srv.daemon_threads = True
    threading.Thread(target=srv.serve_forever, daemon=True, name="pd-stats").start()
    logger.info("PD %s stats endpoint: http://127.0.0.1:%d/pd_stats", hooks.mode,
                srv.server_address[1])
    return srv
