"""CPU checks for checksums, faults, identity logs, errors, and disconnects.

Flush timing and connection bursts use real control paths. Scheduler-dependent
stats checks live in test_scheduler_stub.py."""

from __future__ import annotations

import asyncio
import http.client
import json
import logging
import socket
import threading
import time
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer

import pytest
from toy import ToyD, ToyP, run_until

from minisgl.disagg import ledger as L
from minisgl.disagg import messages as M
from minisgl.disagg.router import Router, RouterHTTPServer, serve
from minisgl.disagg.transfer import FaultInjector, MooncakeBackend


@pytest.fixture
def pair():
    made = []

    def make(p_kw=None, d_kw=None):
        p = ToyP(f"p-{time.monotonic_ns()}", **(p_kw or {}))
        d = ToyD(f"d-{time.monotonic_ns()}", **(d_kw or {}))
        made.extend([p, d])
        return p, d

    yield make
    for n in made:
        n.close()


def test_checksum_reference_properties():
    a = bytes((i * 7 + i // 256 * 31) % 256 for i in range(768))  # three different pages
    assert M.kv_checksum_bytes(a) == sum(b * ((i * M.CSUM_MUL) % M.CSUM_MOD + 1)
                                         for i, b in enumerate(a))
    # the pages have equal byte sums: plain position weights (i + 1) would miss their swap
    linear = lambda d: sum(b * (i + 1) for i, b in enumerate(d))  # noqa: E731
    swapped = a[256:512] + a[:256] + a[512:]  # two pages swapped: same multiset of bytes
    assert linear(swapped) == linear(a)
    assert M.kv_checksum_bytes(swapped) != M.kv_checksum_bytes(a)
    flipped = bytearray(a)
    flipped[700] ^= 1
    assert M.kv_checksum_bytes(bytes(flipped)) != M.kv_checksum_bytes(a)


def test_checksum_happy_path_counts(pair):
    p, d = pair()
    for room in range(1, 11):
        p.submit(room, [room, 2, 3, 4])
        d.submit(room, [room, 2, 3, 4], p.port, 2)
    assert run_until(lambda: len(d.outputs) == 10 and not d.running, [p, d])
    st = d.pd.stats()
    assert st["kv_checksum_ok"] == 10 and st["kv_checksum_mismatch"] == 0
    assert st["kv_checksum_missing"] == 0 and st["kv_checksum_ns_total"] > 0
    assert d.bad_reads == 0


def test_checksum_mismatch_quarantines_and_fails_with_error(pair, caplog):
    p, d = pair()
    p.backend.corrupt_next = 1  # one byte flipped at D after a "successful" transfer
    caplog.set_level(logging.INFO, logger="minisgl.disagg")
    p.submit(1, [7, 7, 7])
    bad = d.submit(1, [7, 7, 7], p.port, 2)
    assert run_until(lambda: bad in d.failed, [p, d])
    assert "KV checksum mismatch" in d.failed[bad]
    st = d.ledger.stats()
    assert d.pd.stats()["kv_checksum_mismatch"] == 1
    assert st["quarantined_transfer_failed"] == 3  # the request's 3 pages, never reused
    assert any("KV CHECKSUM MISMATCH" in r.message and "xid=" in r.message
               for r in caplog.records)
    # the decoder never read the corrupt pages, and later requests are fine
    p.submit(2, [8, 8])
    ok = d.submit(2, [8, 8], p.port, 2)
    assert run_until(lambda: ok in d.outputs and not d.running, [p, d])
    assert d.bad_reads == 0 and bad not in d.outputs


def test_checksum_mismatch_fatal_stops(pair):
    p, d = pair(d_kw={"checksum_fatal": True})
    p.backend.corrupt_next = 1
    p.submit(1, [5, 6])
    d.submit(1, [5, 6], p.port, 2)
    with pytest.raises(L.LedgerViolation, match="checksum"):
        run_until(lambda: False, [p, d], timeout=3)


def test_checksum_missing_when_p_does_not_send(pair):
    p, d = pair(p_kw={"checksum": False})
    p.submit(1, [5, 6])
    uid = d.submit(1, [5, 6], p.port, 2)
    assert run_until(lambda: uid in d.outputs and not d.running, [p, d])
    assert d.pd.stats()["kv_checksum_missing"] == 1  # accepted, counted


def test_checksum_cpu_cost_scales():
    """Measure the CPU checksum reference without a GPU dependency."""
    data = bytes(1 << 20)
    t0 = time.perf_counter()
    M.kv_checksum_bytes(data)
    assert time.perf_counter() - t0 < 5.0


def test_fault_rules_grammar():
    f = FaultInjector("delay_after_ms=5@every3;fail_after@n2;fail_before@n4;delay_before_ms=1@all")
    assert f.active and len(f.rules) == 4
    for bad in ("nope@all", "fail_after", "fail_after@every0", "fail_after@x3"):
        with pytest.raises(ValueError):
            FaultInjector(bad)
    assert not FaultInjector("").active


def test_fault_knobs_behaviour():
    calls = []

    def lib():
        calls.append(1)
        return 0

    f = FaultInjector("fail_after@n2;fail_before@n3;delay_after_ms=30@n4")
    assert f.run(lib) == 0 and len(calls) == 1
    assert f.run(lib) == -1 and len(calls) == 2  # library ran, glue told failure
    assert f.run(lib) == -1 and len(calls) == 2  # library not called at all
    t0 = time.perf_counter()
    assert f.run(lib) == 0 and len(calls) == 3
    assert time.perf_counter() - t0 >= 0.03  # completion reported late
    assert f.injected == 3


def test_fault_env_drives_mooncake_backend(monkeypatch, tmp_path):
    """MooncakeBackend.write goes through the switch (engine replaced by a stand-in)."""
    log = tmp_path / "faults.jsonl"
    monkeypatch.setenv("MINISGL_PD_FAULT", "fail_after@every2")
    monkeypatch.setenv("MINISGL_PD_FAULT_LOG", str(log))
    mb = object.__new__(MooncakeBackend)
    seen = []

    class Engine:
        def batch_transfer_sync_write(self, sess, srcs, dsts, lens):
            seen.append(sess)
            return 0

    mb.engine = Engine()
    mb.faults = FaultInjector()  # what __init__ does: rules from the environment
    assert [mb.write("peer", [1], [2], [3]) for _ in range(4)] == [0, -1, 0, -1]
    assert len(seen) == 4
    assert [json.loads(x)["knob"] for x in log.read_text().splitlines()] == ["fail_after"] * 2
    monkeypatch.delenv("MINISGL_PD_FAULT")
    assert not FaultInjector().active  # off by default


def test_fault_fail_after_quarantines_both_sides(pair):
    p, d = pair()
    p.backend.faults = FaultInjector("fail_after@n1")
    p.submit(1, [3, 3])
    uid = d.submit(1, [3, 3], p.port, 2)
    assert run_until(lambda: uid in d.failed, [p, d])
    assert d.ledger.stats()["quarantined_transfer_failed"] == 2
    assert p.ledger.stats()["quarantined_transfer_failed"] == 2


def test_fault_delay_after_keeps_d_waiting(pair):
    p, d = pair()
    p.backend.faults = FaultInjector("delay_after_ms=300@n1")
    p.submit(1, [4, 4])
    uid = d.submit(1, [4, 4], p.port, 2)
    run_until(lambda: False, [p, d], timeout=0.15)
    assert d.pd.count("waiting") == 1  # bytes landed, completion not reported yet
    assert run_until(lambda: uid in d.outputs and not d.running, [p, d])


def test_identity_lines_link_rid_uid_room_h_xid(pair, caplog):
    caplog.set_level(logging.INFO, logger="minisgl.disagg")
    p, d = pair()
    puid = next(p.uids)
    p.prompts[puid] = [1, 2, 3]
    assert p.pd.add_request(puid, 77, 3, M.tok_hash([1, 2, 3]), rid="req-abc")
    uid = next(d.uids)
    d.meta[uid] = ([1, 2, 3], 2)
    assert d.pd.add_request(uid, 77, "127.0.0.1", p.port, 3, M.tok_hash([1, 2, 3]),
                            max_new_tokens=2, rid="req-abc")
    assert run_until(lambda: uid in d.outputs and not d.running, [p, d])
    msgs = [r.message for r in caplog.records]
    pub = [m for m in msgs if m.startswith("PD decode publish inst=") and " rid=req-abc " in m]
    post = [m for m in msgs if m.startswith("PD prefill post inst=") and " rid=req-abc " in m]
    landed = [m for m in msgs if m.startswith("PD decode landed inst=") and " rid=req-abc " in m]
    assert pub and post and landed
    xid = pub[0].split("xid=")[1].split()[0]
    assert f"xid={xid}" in post[0] and "room=77" in post[0] and f"xid={xid}" in landed[0]


def test_every_quarantine_event_names_h_and_xid(pair, caplog):
    caplog.set_level(logging.INFO, logger="minisgl.disagg")
    p, d = pair(d_kw={"waiting_timeout": 0.2})
    p.backend.hang.clear()
    p.submit(1, [1, 1, 1])
    uid = d.submit(1, [1, 1, 1], p.port, 2)
    assert run_until(lambda: uid in d.failed, [p, d], timeout=5)
    q = [r.message for r in caplog.records if r.message.startswith("PD quarantine side=D")]
    assert len(q) == 1 and "reason=timeout" in q[0] and " h=" in q[0] and " xid=" in q[0]
    p.backend.hang.set()


def _frontend():
    from minisgl.server.api_server import FrontendManager

    sent = []

    class Q:
        async def put(self, msg):
            sent.append(msg)

    fm = FrontendManager(config=None, send_tokenizer=Q(), recv_tokenizer=None)
    fm.initialized = True  # no listener task: the test feeds replies itself
    return fm, sent


def _drain(agen):
    async def go():
        return [x async for x in agen]

    return asyncio.run(go())


def test_error_reply_is_explicit_in_generate_stream():
    pytest.importorskip("fastapi")
    from minisgl.message import UserReply

    fm, _ = _frontend()
    uid = fm.new_user()
    fm.ack_map[uid].append(UserReply(uid=uid, incremental_output="", finished=True,
                                     error="PD decode: KV checksum mismatch"))
    fm.event_map[uid].set()
    out = b"".join(_drain(fm.stream_generate(uid))).decode()
    assert out == "data: [ERROR] PD decode: KV checksum mismatch\ndata: [DONE]\n"


def test_error_reply_in_chat_stream_has_finish_reason_error():
    pytest.importorskip("fastapi")
    from minisgl.message import UserReply

    fm, _ = _frontend()
    uid = fm.new_user()
    fm.ack_map[uid].append(UserReply(uid=uid, incremental_output="", finished=True,
                                     error="PD decode: waiting timeout"))
    fm.event_map[uid].set()
    chunks = [json.loads(c.decode()[6:]) for c in _drain(fm.stream_chat_completions(uid))
              if c.decode().startswith("data: {")]
    end = chunks[-1]
    assert end["choices"][0]["finish_reason"] == "error"
    assert end["error"]["message"] == "PD decode: waiting timeout"


def test_normal_reply_unchanged():
    pytest.importorskip("fastapi")
    from minisgl.message import UserReply

    fm, _ = _frontend()
    uid = fm.new_user()
    fm.ack_map[uid].append(UserReply(uid=uid, incremental_output="hi", finished=True))
    fm.event_map[uid].set()
    assert b"".join(_drain(fm.stream_generate(uid))) == b"data: hi\ndata: [DONE]\n"


def test_error_field_roundtrips_through_messages():
    pytest.importorskip("torch")
    from minisgl.message import BaseFrontendMsg, BaseTokenizerMsg, DetokenizeMsg, UserReply

    m = DetokenizeMsg(uid=1, next_token=2, finished=True, error="boom")
    assert BaseTokenizerMsg.decoder(BaseTokenizerMsg.encoder(m)).error == "boom"
    r = UserReply(uid=1, incremental_output="", finished=True, error="boom")
    assert BaseFrontendMsg.decoder(BaseFrontendMsg.encoder(r)).error == "boom"
    assert BaseTokenizerMsg.decoder(BaseTokenizerMsg.encoder(
        DetokenizeMsg(uid=1, next_token=2, finished=False))).error is None


def test_disconnect_while_waiting_sends_abort_and_ends_stream():
    pytest.importorskip("fastapi")
    from minisgl.message import AbortMsg

    fm, sent = _frontend()
    uid = fm.new_user()

    class Req:  # nothing is ever streamed: D is waiting for the KV
        t0 = time.monotonic()

        async def is_disconnected(self):
            return time.monotonic() - self.t0 > 0.3

    async def go():
        out = []
        try:
            async for c in fm.stream_with_cancellation(fm.stream_generate(uid), Req(), uid):
                out.append(c)
        except asyncio.CancelledError:  # mini-sglang raises it on a disconnected client
            out.append(b"<cancelled>")
        await asyncio.sleep(0.3)  # let the abort task (if any) run
        return out

    t0 = time.monotonic()
    out = asyncio.run(asyncio.wait_for(go(), timeout=5))
    assert time.monotonic() - t0 < 2.0
    assert [type(m) for m in sent] == [AbortMsg] and sent[0].uid == uid
    assert out in ([b"data: [DONE]\n"], [b"<cancelled>"]) and uid not in fm.ack_map


def test_router_turns_client_disconnect_into_d_disconnect():
    d_closed = threading.Event()

    class D(BaseHTTPRequestHandler):
        protocol_version = "HTTP/1.0"

        def log_message(self, *a):
            pass

        def do_POST(self):
            self.rfile.read(int(self.headers.get("Content-Length", "0")))
            self.send_response(200)
            self.send_header("Content-Type", "text/event-stream")
            self.end_headers()
            self.wfile.flush()
            # say nothing (waiting for KV) and watch for the router hanging up
            self.connection.settimeout(5)
            try:
                if self.connection.recv(1) == b"":
                    d_closed.set()
            except OSError:
                d_closed.set()

    class P(D):
        def do_POST(self):
            self.rfile.read(int(self.headers.get("Content-Length", "0")))
            time.sleep(3)

    d = ThreadingHTTPServer(("127.0.0.1", 0), D)
    p = ThreadingHTTPServer(("127.0.0.1", 0), P)
    for s in (d, p):
        threading.Thread(target=s.serve_forever, daemon=True).start()
    rt = Router([(f"http://127.0.0.1:{p.server_port}", 8998)],
                [f"http://127.0.0.1:{d.server_port}"])
    srv = serve(rt, "127.0.0.1", 0)
    c = socket.create_connection(("127.0.0.1", srv.server_port))
    body = json.dumps({"prompt": "x", "max_tokens": 4}).encode()
    c.sendall(b"POST /generate HTTP/1.0\r\nContent-Type: application/json\r\n"
              b"Content-Length: %d\r\n\r\n%s" % (len(body), body))
    time.sleep(0.3)  # the router is now waiting on D's empty stream
    c.close()  # the client cancels
    assert d_closed.wait(3.0)
    for s in (d, p, srv):
        s.shutdown()


def test_flush_timing_counters(pair):
    p, d = pair()
    for room in range(1, 6):
        p.submit(room, [room])
        d.submit(room, [room], p.port, 2)
    assert run_until(lambda: len(d.outputs) == 5 and not d.running, [p, d])
    st = d.pd.stats()
    assert st["flush_count"] == 5 == d.flushes
    assert st["flush_ns_total"] >= st["flush_ns_max"] > 0


def test_router_backlog_and_identity_headers():
    seen = []

    class S(BaseHTTPRequestHandler):
        protocol_version = "HTTP/1.0"

        def log_message(self, *a):
            pass

        def do_POST(self):
            seen.append(json.loads(self.rfile.read(int(self.headers["Content-Length"]))))
            self.send_response(200)
            self.end_headers()
            self.wfile.write(b"data: [DONE]\n")

    class Fast(ThreadingHTTPServer):
        request_queue_size = 1024
        daemon_threads = True

    up = Fast(("127.0.0.1", 0), S)
    threading.Thread(target=up.serve_forever, daemon=True).start()
    rt = Router([(f"http://127.0.0.1:{up.server_port}", 8998)],
                [f"http://127.0.0.1:{up.server_port}"])
    srv = serve(rt, "127.0.0.1", 0)
    assert isinstance(srv, RouterHTTPServer) and srv.request_queue_size == 1024
    # 32 connections opened at once, before the router accepts any of them
    socks = [socket.create_connection(("127.0.0.1", srv.server_port)) for _ in range(32)]
    body = json.dumps({"prompt": "x", "max_tokens": 1, "rid": "fixed-rid"}).encode()
    for s in socks:
        s.sendall(b"POST /generate HTTP/1.0\r\nContent-Type: application/json\r\n"
                  b"Content-Length: %d\r\n\r\n%s" % (len(body), body))
    replies = []
    for s in socks:
        s.settimeout(10)
        buf = b""
        while chunk := s.recv(4096):
            buf += chunk
        replies.append(buf)
        s.close()
    assert all(r.startswith(b"HTTP/1.0 200") for r in replies)
    assert all(b"X-PD-Rid: fixed-rid" in r and b"X-PD-Room: " in r for r in replies)
    assert len(seen) == 64 and {b["rid"] for b in seen} == {"fixed-rid"}
    c = http.client.HTTPConnection("127.0.0.1", srv.server_port, timeout=10)
    c.request("POST", "/generate", body=json.dumps({"prompt": "y", "max_tokens": 1}),
              headers={"Content-Type": "application/json"})
    r = c.getresponse()
    r.read()
    assert len(r.getheader("X-PD-Rid")) == 32  # generated when the client gives none
    for s in (up, srv):
        s.shutdown()


def test_p_abort_before_destination_refuses_it_at_once(pair):
    """P's request is aborted (router closed P's connection) before D's destination arrived:
    the later xfer_req is refused at once with stopped evidence, not at P's bootstrap timeout."""
    p, d = pair()
    puid = p.submit(9, [1, 2, 3])
    p.pd.abort(puid)  # what PDHooks.on_abort does on P
    t0 = time.monotonic()
    uid = d.submit(9, [1, 2, 3], p.port, 2)
    assert run_until(lambda: uid in d.failed, [p, d], timeout=5)
    assert time.monotonic() - t0 < 2.0
    assert "prefill refused" in d.failed[uid]
    assert d.ledger.stats()["quarantined"] == 0 and p.backend.calls == 0


def test_frontend_keeps_each_streams_first_reply_under_concurrency():
    """Batched arrivals must preserve each stream's first token and reply order.

    Feed 32 streams mixed reply batches while disconnect polling is active."""
    pytest.importorskip("fastapi")
    from minisgl.message import BatchFrontendMsg, UserReply

    fm, _ = _frontend()
    q: asyncio.Queue = None  # created inside the loop

    class Recv:
        async def get(self):
            return await q.get()

    class Req:
        async def is_disconnected(self):
            return False

    fm.recv_tokenizer = Recv()
    uids = [fm.new_user() for _ in range(32)]

    async def go():
        nonlocal q
        q = asyncio.Queue()
        listener = asyncio.create_task(fm.listen())
        outs = [asyncio.create_task(_collect(fm.stream_with_cancellation(
            fm.stream_generate(u), Req(), u))) for u in uids]
        await asyncio.sleep(0.05)
        await q.put(BatchFrontendMsg(data=[UserReply(uid=u, incremental_output=f"first{u}",
                                                     finished=False) for u in uids]))
        for step in range(1, 4):
            batch = [UserReply(uid=u, incremental_output=f"t{step}-{u}", finished=step == 3)
                     for u in reversed(uids)]
            await q.put(BatchFrontendMsg(data=batch[:16]))
            await asyncio.sleep(0.3 if step == 1 else 0)  # span a disconnect poll
            await q.put(BatchFrontendMsg(data=batch[16:]))
        res = await asyncio.wait_for(asyncio.gather(*outs), timeout=10)
        listener.cancel()
        return res

    async def _collect(agen):
        return [c async for c in agen]

    res = asyncio.run(go())
    for u, out in zip(uids, res):
        assert out == [f"data: first{u}\n".encode(), f"data: t1-{u}\n".encode(),
                       f"data: t2-{u}\n".encode(), f"data: t3-{u}\n".encode(),
                       b"data: [DONE]\n"], (u, out)
