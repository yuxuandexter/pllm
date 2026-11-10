"""CPU HTTP harness: real Scheduler/PD/radix/ledger, CPU model + memmove transport.
Used ONLY with MINISGL_PD_E2E_FAKE=1. No synthetic success PDT records.
"""
import argparse
import contextlib
import json
import os
from pathlib import Path
import queue
import signal
import sys
import threading
import time
import traceback
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer

ap = argparse.ArgumentParser()
ap.add_argument("--tree", required=True); ap.add_argument("--out", required=True)
ap.add_argument("--port", type=int, required=True); ap.add_argument("--page-size", type=int, default=64)
ap.add_argument("--p-pages", type=int, required=True); ap.add_argument("--d-pages", type=int, required=True)
ap.add_argument("--radix", action="store_true")
a = ap.parse_args()
assert os.environ.get("MINISGL_PD_E2E_FAKE") == "1", "CPU harness requires explicit fake declaration"
root = Path(a.out)
sys.path[:0] = [str(Path(a.tree) / "python"), str(Path(a.tree) / "tests/disagg")]
import pytest
import torch
from minisgl.disagg import trace as T, ledger as L
from test_scheduler_stub import build, MemBackend, send_pd, run, finished, close, no_pinned_memory
from test_prefix_glue import exact_cpu_compare

torch.set_num_threads(1)
mp = pytest.MonkeyPatch()
no_pinned_memory.__wrapped__(mp)
exact_cpu_compare.__wrapped__(mp)
capture = open(root / "raw.pdt", "w", buffering=1)
original_write = T.write
layouts = {}
orig_init = T.TracedLedger.__init__


def init(self, inner, inst, side):
    layouts[hex(inst)] = (inner.page_size, inner.num_pages)
    orig_init(self, inner, inst, side)


def write(rec, step=False):
    with T._LOCK:
        seq = original_write(rec, step)
        if seq:
            r = dict(rec)
            if r.get("k") == "role":
                r["ps"], r["np"] = layouts[r["inst"]]
            line = "PDT " + json.dumps(r, separators=(",", ":")) + "\n"
            capture.write(line)
            if r.get("side") in ("P", "D"):
                with open(root / (r["side"] + ".log"), "a") as f:
                    f.write(line)
        return seq


T.TracedLedger.__init__, T.write = init, write
bp, bd = MemBackend("cpu_stub_prefill"), MemBackend("cpu_stub_decode")
p = build("prefill", ps=a.page_size, num_pages=a.p_pages, max_running=8, backend=bp,
          cache_type="radix" if a.radix else "naive", row_check="on")
d = build("decode", ps=a.page_size, num_pages=a.d_pages, max_running=8, backend=bd, row_check="on")
# All eight cold requests can be admitted into one step; genuine dedup, not a forced event.
p.prefill_budget = 4096
for side, s in (("P", p), ("D", d)):
    with open(root / (side + ".log"), "a") as f:
        f.write(f"PD ledger: {L.ledger_impl()} role={side}\n")
prompts = json.loads((Path(__file__).parent / "prompts.json").read_text())["prompts"]
tokens = {q["text"]: q["token_ids"] for q in prompts}
pending = queue.Queue()
dead = threading.Event()
shutdown = threading.Event()
counter = 0
lock = threading.RLock()


def worker():
    while not shutdown.is_set():
        try:
            first = pending.get(timeout=.1)
        except queue.Empty:
            continue
        time.sleep(.04)  # collect an HTTP burst before running the real scheduler
        batch = [first]
        while not pending.empty():
            batch.append(pending.get_nowait())
        try:
            with lock:
                if dead.is_set():
                    raise RuntimeError("earlier scheduler failure")
                for uid, req, event, box in batch:
                    room = int(req.get("bootstrap_room", uid + 100000))
                    # The fixture bypasses the tokenizer/frontend and returns max_tokens values.
                    # Emulate the pinned suite HTTP contract (max_tokens-1) by
                    # requesting that many CPU model outputs; never truncate them.
                    send_pd(p, d, uid, room, tokens[req["prompt"]], int(req["max_tokens"]) - 1)
                    # The normal helper has no rid; add it to the actual request messages.
                    for s in (p, d):
                        s.inbox[-1].disagg["rid"] = req["rid"]
                if not run([p, d], lambda: finished(d, [x[0] for x in batch]), timeout=30):
                    raise TimeoutError("real CPU scheduler did not finish in 30s")
                for uid, req, event, box in batch:
                    box["tokens"] = [tok for tok, done in d.outputs.get(uid, [])]
                    box["error"] = d.errors.get(uid)
        except BaseException:
            dead.set()
            text = traceback.format_exc()
            print(text, flush=True)
            with open(root / "P.log", "a") as f:
                f.write(text)
            for uid, req, event, box in batch:
                box["error"] = "CPU scheduler stopped"
        finally:
            for uid, req, event, box in batch:
                event.set()


class Handler(BaseHTTPRequestHandler):
    protocol_version = "HTTP/1.0"

    def log_message(self, *args):
        pass

    def do_GET(self):
        if self.server.side:
            if dead.is_set():
                self.send_error(503)
                return
            with lock:
                st = (p if self.server.side == "P" else d).pd.snapshot()
        else:
            st = {"data": [{"id": "real-scheduler-cpu-stub"}]}
        body = json.dumps(st).encode()
        self.send_response(200); self.send_header("Content-Length", str(len(body)))
        self.end_headers(); self.wfile.write(body)

    def do_POST(self):
        global counter
        req = json.loads(self.rfile.read(int(self.headers["Content-Length"])))
        event, box = threading.Event(), {}
        # Do not hold the scheduler lock while clients enqueue a burst.
        with id_lock:
            counter += 1
            uid = counter
        pending.put((uid, req, event, box))
        if not event.wait(45):
            box["error"] = "CPU HTTP wait timeout"
        self.send_response(200); self.send_header("Content-Type", "text/event-stream")
        self.end_headers()
        lines = ([f"data: [ERROR] {box['error']}"] if box.get("error") else
                 [f"data: tok{v}" for v in box.get("tokens", [])])
        try:
            for line in lines:
                self.wfile.write((line + "\n").encode())
            self.wfile.write(b"data: [DONE]\n"); self.wfile.flush()
        except OSError:
            pass


id_lock = threading.Lock()
servers = []
for port, side in ((a.port, None), (a.port + 1, "P"), (a.port + 2, "D")):
    srv = ThreadingHTTPServer(("127.0.0.1", port), Handler)
    srv.side = side
    servers.append(srv)
    threading.Thread(target=srv.serve_forever, daemon=True).start()
threading.Thread(target=worker, daemon=True).start()
signal.signal(signal.SIGTERM, lambda *args: shutdown.set())
try:
    shutdown.wait()
finally:
    for srv in servers:
        srv.shutdown()
    with lock:
        close(p, d)
        bp.gate.set()
        p.pd.pd._worker.join(3)
    with T._LOCK:
        capture.write(json.dumps(dict(k="end", outcome="failed" if dead.is_set() else "passed")) + "\n")
        capture.close()
    mp.undo()
