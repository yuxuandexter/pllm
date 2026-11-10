"""Router tests with stand-in P / D HTTP servers (CPU, standard library)."""

from __future__ import annotations

import http.client
import json
import threading
import time
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer

from minisgl.disagg.router import Router, serve


def fake_server(lines, status=200, delay=0.0):
    seen = []
    closed = threading.Event()

    class H(BaseHTTPRequestHandler):
        protocol_version = "HTTP/1.0"

        def log_message(self, *a):
            pass

        def do_POST(self):
            n = int(self.headers.get("Content-Length", "0"))
            seen.append(json.loads(self.rfile.read(n)))
            self.send_response(status)
            self.send_header("Content-Type", "text/event-stream")
            self.end_headers()
            try:
                for ln in lines:
                    time.sleep(delay)
                    self.wfile.write(ln)
                    self.wfile.flush()
            except OSError:
                closed.set()

    srv = ThreadingHTTPServer(("127.0.0.1", 0), H)
    threading.Thread(target=srv.serve_forever, daemon=True).start()
    return srv, seen, closed


def post(port, body):
    c = http.client.HTTPConnection("127.0.0.1", port, timeout=10)
    c.request("POST", "/generate", body=json.dumps(body),
              headers={"Content-Type": "application/json"})
    r = c.getresponse()
    return r.status, r.read()


def test_router_sends_same_room_to_both_and_streams_d():
    p, p_seen, _ = fake_server([b"data: P\n", b"data: [DONE]\n"])
    d, d_seen, _ = fake_server([b"data: a\n", b"data: b\n", b"data: [DONE]\n"])
    rt = Router([(f"http://127.0.0.1:{p.server_port}", 8998)],
                [f"http://127.0.0.1:{d.server_port}"])
    srv = serve(rt, "127.0.0.1", 0)
    status, body = post(srv.server_port, {"prompt": "hi", "max_tokens": 3})
    assert status == 200 and body == b"data: a\ndata: b\ndata: [DONE]\n"
    time.sleep(0.1)
    assert len(p_seen) == 1 and len(d_seen) == 1
    for k in ("bootstrap_room", "bootstrap_host", "bootstrap_port"):
        assert p_seen[0][k] == d_seen[0][k]
    assert p_seen[0]["bootstrap_port"] == 8998 and p_seen[0]["prompt"] == "hi"
    for s in (p, d, srv):
        s.shutdown()


def test_router_round_robin_ratios():
    ps = [fake_server([b"data: [DONE]\n"]) for _ in range(2)]
    ds = [fake_server([b"data: [DONE]\n"]) for _ in range(3)]
    rt = Router([(f"http://127.0.0.1:{s.server_port}", 9000 + i) for i, (s, _, _) in enumerate(ps)],
                [f"http://127.0.0.1:{s.server_port}" for s, _, _ in ds])
    srv = serve(rt, "127.0.0.1", 0)
    rooms = set()
    for _ in range(6):
        post(srv.server_port, {"prompt": "x", "max_tokens": 1})
    time.sleep(0.1)
    assert [len(seen) for _, seen, _ in ps] == [3, 3]
    assert [len(seen) for _, seen, _ in ds] == [2, 2, 2]
    for _, seen, _ in ps:
        rooms |= {b["bootstrap_room"] for b in seen}
    assert len(rooms) == 6  # a fresh room per request
    for s, _, _ in ps + ds:
        s.shutdown()
    srv.shutdown()


def test_router_closes_d_when_p_fails():
    p, _, _ = fake_server([b"error\n"], status=500)
    d, _, d_closed = fake_server([b"data: x\n"] * 200, delay=0.02)
    rt = Router([(f"http://127.0.0.1:{p.server_port}", 8998)],
                [f"http://127.0.0.1:{d.server_port}"])
    srv = serve(rt, "127.0.0.1", 0)
    t0 = time.monotonic()
    post(srv.server_port, {"prompt": "hi", "max_tokens": 3})
    assert time.monotonic() - t0 < 3.0  # not the full 4 s stream
    assert d_closed.wait(3.0)  # D saw the disconnect (mini-sglang turns it into an abort)
    for s in (p, d, srv):
        s.shutdown()


# ------------------------------------------------------------------- request completion (b) / request_deadline (compatibility)
def silent_server(send_headers=True, first_line=b""):
    """An instance that accepts the request, maybe sends headers and one line, then says
    nothing; ``closed`` is set when the router hangs up on it."""
    closed = threading.Event()

    class H(BaseHTTPRequestHandler):
        protocol_version = "HTTP/1.0"

        def log_message(self, *a):
            pass

        def do_POST(self):
            self.rfile.read(int(self.headers.get("Content-Length", "0")))
            if send_headers:
                self.send_response(200)
                self.send_header("Content-Type", "text/event-stream")
                self.end_headers()
                if first_line:
                    self.wfile.write(first_line)
                self.wfile.flush()
            self.connection.settimeout(10)
            try:
                if self.connection.recv(1) == b"":
                    closed.set()
            except OSError:
                closed.set()

    srv = ThreadingHTTPServer(("127.0.0.1", 0), H)
    threading.Thread(target=srv.serve_forever, daemon=True).start()
    return srv, closed


def test_router_deadline_errors_and_aborts_both_sides():
    p, p_closed = silent_server(send_headers=True)
    d, d_closed = silent_server(send_headers=True)
    rt = Router([(f"http://127.0.0.1:{p.server_port}", 8998)],
                [f"http://127.0.0.1:{d.server_port}"], deadline=0.5)
    srv = serve(rt, "127.0.0.1", 0)
    t0 = time.monotonic()
    status, body = post(srv.server_port, {"prompt": "hi", "max_tokens": 3})
    assert time.monotonic() - t0 < 3.0
    assert status == 200
    assert body.endswith(b"data: [ERROR] router: router deadline 0.5s exceeded\n"
                         b"data: [DONE]\n"), body
    assert d_closed.wait(2.0) and p_closed.wait(2.0)  # both instances see the hang-up
    for s in (p, d, srv):
        s.shutdown()


def test_router_d_breaks_off_mid_stream():
    p, _, _ = fake_server([b"data: P\n", b"data: [DONE]\n"])
    d, _, _ = fake_server([b"data: a\n"])  # D's stream ends without [DONE]
    rt = Router([(f"http://127.0.0.1:{p.server_port}", 8998)],
                [f"http://127.0.0.1:{d.server_port}"])
    srv = serve(rt, "127.0.0.1", 0)
    status, body = post(srv.server_port, {"prompt": "hi", "max_tokens": 3})
    assert body == (b"data: a\ndata: [ERROR] router: decode stream ended without [DONE]\n"
                    b"data: [DONE]\n"), body
    for s in (p, d, srv):
        s.shutdown()


def test_router_passes_an_instance_error_through_unchanged():
    p, _, _ = fake_server([b"data: P\n", b"data: [DONE]\n"])
    d, _, _ = fake_server([b"data: [ERROR] PD decode: waiting timeout\n", b"data: [DONE]\n"])
    rt = Router([(f"http://127.0.0.1:{p.server_port}", 8998)],
                [f"http://127.0.0.1:{d.server_port}"])
    srv = serve(rt, "127.0.0.1", 0)
    _, body = post(srv.server_port, {"prompt": "hi", "max_tokens": 3})
    assert body == b"data: [ERROR] PD decode: waiting timeout\ndata: [DONE]\n"
    for s in (p, d, srv):
        s.shutdown()
