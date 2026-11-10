"""Minimal PD router: one request -> one P and one D (standard library only).

Same shape as SGLang's PD router (sgl-model-gateway ``pd_router.rs``: inject a room, send the
request to both sides, stream D's answer, cancel D when P fails).  The routing policy is
untrusted (lifecycle contract): any choice of P and D, any room, is safe; the ledgers decide everything
about pages.

    python -m minisgl.disagg.router --port 8000 \
        --prefill http://127.0.0.1:30000 --prefill-bootstrap-port 8998 \
        --decode http://127.0.0.1:30001

Several ``--prefill`` / ``--decode`` give any P:D ratio (round robin on each side).
"""

from __future__ import annotations

import argparse
import http.client
import itertools
import json
import logging
import secrets
import select
import socket
import threading
import time
import uuid
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from typing import List, Tuple
from urllib.parse import urlparse

from . import trace as T

logger = logging.getLogger("minisgl.disagg.router")
# after P bootstrap (300 s) and D waiting (330 s): the record-level deadlines fire first
DEFAULT_DEADLINE_S = 900.0


class Router:
    """``deadline``: total time a request may take in the router (request completion clause (b), request_deadline).
    Ordered after the instances' own record-level deadlines (P bootstrap 300 s, D waiting
    330 s), so those fire first and the router deadline only catches what they cannot see.
    On expiry, or when D's stream breaks off: an explicit ``data: [ERROR] ...`` line goes to
    the client, and the connections to D and P are closed; each instance's API server turns
    that disconnect into an abort of its request (D: cancel(h, x) to P; P: drops the request,
    or refuses D's transfer with stopped evidence)."""

    def __init__(self, prefill: List[Tuple[str, int]], decode: List[str],
                 deadline: float = DEFAULT_DEADLINE_S) -> None:
        if not prefill or not decode:
            raise ValueError("need at least one prefill and one decode instance")
        self.prefill = prefill
        self.decode = decode
        self.deadline = deadline
        self._p = itertools.cycle(range(len(prefill)))
        self._d = itertools.cycle(range(len(decode)))
        self._lock = threading.Lock()

    def pick(self) -> Tuple[Tuple[str, int], str]:
        with self._lock:
            return self.prefill[next(self._p)], self.decode[next(self._d)]

    def _open(self, url: str, body: dict):
        """(socket, response).  The socket is kept because http.client drops it from the
        connection once a closing (HTTP/1.0) response arrives.  Its timeout is the deadline,
        not a shorter idle timeout, so only the deadline (or a real failure) ends a request."""
        u = urlparse(url)
        conn = http.client.HTTPConnection(u.hostname, u.port or 80, timeout=self.deadline + 5)
        conn.request("POST", "/generate", body=json.dumps(body),
                     headers={"Content-Type": "application/json"})
        sock = conn.sock
        return sock, conn.getresponse()

    def handle_generate(self, body: dict, write, client_gone=None) -> None:
        """``write(status, ctype, data, headers)`` streams to the client; ``client_gone()``
        tells whether the client went away (polled while D sends nothing, e.g. while D waits
        for the KV)."""
        (p_url, boot_port), d_url = self.pick()
        room = body.get("bootstrap_room")
        if room is None:
            room = secrets.randbits(63)
        rid = str(body.get("rid") or uuid.uuid4().hex)  # client request id, end to end
        pd = dict(body, bootstrap_host=urlparse(p_url).hostname, bootstrap_port=boot_port,
                  bootstrap_room=room, rid=rid)
        logger.info("PD router rid=%s room=%d p=%s d=%s", rid, room, p_url, d_url)
        t_end = time.monotonic() + self.deadline
        why = {}  # first reason this request is being ended early
        done = threading.Event()
        conns = {}

        def cut(reason: str) -> None:
            """End the request early: close D's and P's connections (they abort)."""
            why.setdefault("reason", reason)
            for side in ("d", "p"):
                c = conns.get(side)
                if c is not None:
                    _hard_close(c)

        def run_p() -> None:
            try:
                conns["p"], resp = self._open(p_url, pd)
                if "reason" in why:  # the request was already cut while P connected
                    _hard_close(conns["p"])
                    return
                resp.read()  # P's own output (the first token) is not returned to the client
                if resp.status != 200:
                    cut(f"prefill answered HTTP {resp.status}")
            except (OSError, http.client.HTTPException) as e:
                if not done.is_set():
                    cut(f"prefill connection failed ({type(e).__name__})")

        def watch() -> None:
            while not done.wait(0.1):
                if time.monotonic() > t_end:
                    logger.warning("PD router rid=%s room=%d: deadline %.0fs exceeded", rid,
                                   room, self.deadline)
                    cut(f"router deadline {self.deadline:g}s exceeded")
                    return
                if client_gone is not None and client_gone():
                    logger.info("PD router rid=%s room=%d: client gone, cancelling", rid, room)
                    cut("client went away")
                    return

        t = threading.Thread(target=run_p, daemon=True)
        t.start()
        threading.Thread(target=watch, daemon=True).start()
        headers = {"X-PD-Room": str(room), "X-PD-Rid": rid}
        started = False
        finished = False
        d_error = ""  # an [ERROR] line from the instance itself
        try:
            conns["d"], resp = self._open(d_url, pd)
            if "reason" in why:
                _hard_close(conns["d"])
            write(resp.status, resp.getheader("Content-Type", "text/event-stream"), None, headers)
            started = True
            while True:
                line = resp.readline()
                if not line:
                    break
                write(None, None, line, None)
                if line.startswith(b"data: [ERROR]") and not d_error:
                    d_error = line[len(b"data: [ERROR]"):].decode(errors="replace").strip()
                if line.strip() == b"data: [DONE]":
                    finished = True
        except (OSError, ValueError, http.client.HTTPException) as e:
            if "reason" not in why and not (client_gone is not None and client_gone()):
                why["reason"] = f"decode connection failed ({type(e).__name__})"
        finally:
            done.set()
        if not finished:  # deadline, D broke off, P failed, or the client left
            reason = why.get("reason", "decode stream ended without [DONE]")
            cut(reason)
            if reason != "client went away":
                try:
                    if not started:
                        write(502, "text/event-stream", None, headers)
                    write(None, None, f"data: [ERROR] router: {reason}\n".encode(), None)
                    write(None, None, b"data: [DONE]\n", None)
                except OSError:
                    pass
        t.join(timeout=1.0)
        if finished:
            outcome, reason = ("err", d_error) if d_error else ("ok", "")
        else:
            reason = why.get("reason", "decode stream ended without [DONE]")
            outcome = "client_gone" if reason == "client went away" else "err"
        T.write({"k": "router", "inst": "router", "rid": rid, "room": room, "outcome": outcome,
                 "reason": reason, "p": p_url, "d": d_url})


def _hard_close(sock: socket.socket) -> None:
    """Close a connection that another thread may be blocked reading: shut the socket down
    first (wakes the reader, sends FIN to the instance), then close it."""
    try:
        sock.shutdown(socket.SHUT_RDWR)
    except OSError:
        pass
    try:
        sock.close()
    except OSError:
        pass


class RouterHTTPServer(ThreadingHTTPServer):
    # the standard library default backlog (5) resets bursts of connections before accept
    request_queue_size = 1024
    daemon_threads = True


def _peer_closed(sock: socket.socket) -> bool:
    try:
        r, _, _ = select.select([sock], [], [], 0)
        if not r:
            return False
        return sock.recv(1, socket.MSG_PEEK) == b""
    except (OSError, ValueError):
        return True


def make_handler(router: Router):
    class Handler(BaseHTTPRequestHandler):
        protocol_version = "HTTP/1.0"

        def log_message(self, fmt, *args) -> None:  # quiet
            pass

        def do_GET(self) -> None:
            if self.path == "/health":
                self.send_response(200)
                self.end_headers()
                self.wfile.write(b"ok")
            else:
                self.send_error(404)

        def do_POST(self) -> None:
            if self.path != "/generate":
                self.send_error(404)
                return
            n = int(self.headers.get("Content-Length", "0"))
            try:
                body = json.loads(self.rfile.read(n) or b"{}")
            except ValueError:
                self.send_error(400)
                return

            def write(status, ctype, data, headers) -> None:
                if status is not None:
                    self.send_response(status)
                    self.send_header("Content-Type", ctype)
                    for k, v in (headers or {}).items():
                        self.send_header(k, v)
                    self.end_headers()
                if data:
                    self.wfile.write(data)
                    self.wfile.flush()

            try:
                router.handle_generate(body, write,
                                       client_gone=lambda: _peer_closed(self.connection))
            except OSError as e:
                try:
                    self.send_error(502, str(e))
                except OSError:
                    pass

    return Handler


def serve(router: Router, host: str, port: int) -> ThreadingHTTPServer:
    srv = RouterHTTPServer((host, port), make_handler(router))
    threading.Thread(target=srv.serve_forever, daemon=True, name="pd-router").start()
    return srv


def main() -> None:
    ap = argparse.ArgumentParser(description="mini-sglang PD router")
    ap.add_argument("--host", default="0.0.0.0")
    ap.add_argument("--port", type=int, default=8000)
    ap.add_argument("--prefill", action="append", required=True, help="P server URL")
    ap.add_argument("--prefill-bootstrap-port", action="append", type=int, required=True,
                    help="bootstrap port of each --prefill, in the same order")
    ap.add_argument("--decode", action="append", required=True, help="D server URL")
    ap.add_argument("--request-deadline", type=float, default=DEFAULT_DEADLINE_S,
                    help="total seconds per request (keep it above the instances' P bootstrap "
                    "and D waiting timeouts); on expiry: error line to the client, P and D "
                    "connections closed (they abort)")
    a = ap.parse_args()
    if len(a.prefill) != len(a.prefill_bootstrap_port):
        raise SystemExit("one --prefill-bootstrap-port per --prefill")
    logging.basicConfig(level=logging.INFO, format="%(asctime)s %(message)s")
    router = Router(list(zip(a.prefill, a.prefill_bootstrap_port)), a.decode,
                    deadline=a.request_deadline)
    srv = RouterHTTPServer((a.host, a.port), make_handler(router))
    print(f"PD router on {a.host}:{a.port}: P={a.prefill} D={a.decode}", flush=True)
    srv.serve_forever()


if __name__ == "__main__":
    main()
