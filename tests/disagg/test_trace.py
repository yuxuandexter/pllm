"""compatibility: trace log points (the CPU control-plane checks) - format and content, CPU."""

from __future__ import annotations

import json
import logging
import time

import pytest
from toy import ToyD, ToyP, run_until

from minisgl.disagg import ledger as L
from minisgl.disagg import trace as T

STD = ("k", "seq", "inst", "side", "m", "ev", "rid", "room", "uid", "h", "xid", "eid", "d_h",
       "peer", "a", "res")


@pytest.fixture
def recs(caplog):
    caplog.set_level(logging.INFO, logger="minisgl.disagg")

    def get():
        out = []
        for r in caplog.records:
            msg = r.getMessage()
            if msg.startswith("PDT "):
                out.append(json.loads(msg[4:]))
        return out

    return get


@pytest.fixture
def nodes():
    made = []

    def make(n_d=1, d_kw=None, p_kw=None):
        p = ToyP(f"tp-{time.monotonic_ns()}", **(p_kw or {}))
        ds = [ToyD(f"td{i}-{time.monotonic_ns()}", **(d_kw or {})) for i in range(n_d)]
        made.extend([p] + ds)
        return p, ds

    yield make
    for n in made:
        n.close()


def of(rs, **kw):
    return [r for r in rs if all(r.get(k) == v for k, v in kw.items())]


def test_every_line_has_the_standard_fields_and_one_seq_order(nodes, recs):
    p, (d,) = nodes()
    p.submit(5, [1, 2, 3], rid="r-1")
    uid = d.submit(5, [1, 2, 3], p.port, 3, rid="r-1")
    assert run_until(lambda: uid in d.outputs and not d.running, [p, d])
    rs = recs()
    seqs = [r["seq"] for r in rs]
    assert seqs == sorted(seqs) and len(set(seqs)) == len(seqs)  # lines in seq order
    for r in rs:
        if r["k"] == "call":
            assert all(k in r for k in STD), r
            assert r["inst"] in (hex(p.inst), hex(d.inst))
    assert {r["k"] for r in rs} >= {"call", "role", "flush", "match"}


def test_success_path_lines_on_p_and_d(nodes, recs):
    _success_path(nodes, recs)  # with the default Python ledger



def test_success_path_lines_with_python_ledger(monkeypatch, nodes, recs):
    """The Python ledger emits the complete success path, including P-side completion."""
    cls = L.PyRefLedger
    monkeypatch.setattr(L, "RefLedger", cls)  # what toy.ToyP / ToyD construct
    p, d = _success_path(nodes, recs)
    assert type(p.ledger.inner) is cls and type(d.ledger.inner) is cls


def _success_path(nodes, recs):
    p, (d,) = nodes()
    p.submit(5, [1, 2, 3], rid="r-ok")
    uid = d.submit(5, [1, 2, 3], p.port, 3, rid="r-ok")
    assert run_until(lambda: uid in d.outputs and not d.running, [p, d])
    rs = of(recs(), rid="r-ok", k="call")
    # descriptor-capture adds independent descriptor/transport observations. Preserve the old
    # lifecycle contract below; the new observations have their own strict tests.
    added = {"ddesc", "ddesc_recv", "xfer_plan", "xfer_submit", "xfer_result"}
    if T.DDESC:
        assert of(rs, ev="xfer_plan") and of(rs, ev="xfer_submit")
        assert of(rs, ev="ddesc_recv", disposition="bound")
        assert of(rs, ev="ddesc")
    rs = [r for r in rs if r["ev"] not in added]
    dd = [r["ev"] for r in rs if r["inst"] == hex(d.inst)]
    pp = [r["ev"] for r in rs if r["inst"] == hex(p.inst)]
    assert dd == ["alloc", "publish", "evidence", "visible", "alloc", "read", "alloc", "release"], dd
    da = [r for r in rs if r["inst"] == hex(d.inst) and r["ev"] == "alloc"]
    assert [r["action"] for r in da] == ["DRecvReq", "DGrow", "DGrow"]
    assert pp[:4] == ["alloc", "read", "complete", "post"], pp
    rest = pp[4:]  # the P scheduler releases while its transfer worker begins / finishes
    assert sorted(rest) == ["begin", "done", "release"] and rest.index("begin") < rest.index("done")
    pub = of(rs, ev="publish")[0]
    xid, h = pub["xid"], pub["h"]
    assert pub["res"] == xid and T.unruns(pub["pages"]) and pub["post"] == {"private": 3}
    ev = of(rs, ev="evidence")[0]
    assert (ev["kind"], ev["code"], ev["drop"], ev["xid"], ev["h"]) == ("landed", 0, False, xid, h)
    flush = of(recs(), k="flush", xid=xid)
    assert len(flush) == 1 and flush[0]["seq"] < ev["seq"] and flush[0]["inst"] == hex(d.inst)
    rel = [r for r in rs if r["ev"] == "release" and r["inst"] == hex(d.inst)][0]
    assert rel["why"] == "finish" and rel["post"] == {"free": 5}  # 3 transferred + 2 decode pages
    post = of(rs, ev="post")[0]
    assert (post["xid"], post["d_h"], post["peer"]) == (xid, h, hex(d.inst))
    assert post["uid"] >= 1 and post["eid"] == post["res"] > 0
    comp = of(rs, ev="complete")[0]
    assert comp["at_seq"] < post["seq"] and comp["h"] == post["h"]
    done = of(rs, ev="done")[0]
    assert done["result"] == "done" and done["seq"] < ev["seq"]  # P completion before D evidence
    alloc = of(rs, ev="alloc", side="P")[0]
    assert alloc["uid"] >= 1 and alloc["h"] == post["h"] and alloc["room"] == 5
    return p, d


def test_two_decoders_are_told_apart(nodes, recs):
    """The 1P2D finding: two D's printed identical 'uid=1 room=5 h=1 xid=1' lines."""
    p, (d1, d2) = nodes(n_d=2)
    for d, room in ((d1, 5), (d2, 6)):
        p.submit(room, [room, 1])
        d.submit(room, [room, 1], p.port, 2)
    assert run_until(lambda: all(d.outputs and not d.running for d in (d1, d2)), [p, d1, d2])
    pubs = of(recs(), ev="publish")
    assert {(r["uid"], r["h"], r["xid"]) for r in pubs} == {(1, 1, 1)}  # same local ids ...
    assert {r["inst"] for r in pubs} == {hex(d1.inst), hex(d2.inst)}  # ... different instances


def test_identity_log_lines_carry_own_instance(nodes, caplog):
    caplog.set_level(logging.INFO, logger="minisgl.disagg")
    p, (d,) = nodes()
    p.submit(5, [1, 2])
    uid = d.submit(5, [1, 2], p.port, 2)
    assert run_until(lambda: uid in d.outputs and not d.running, [p, d])
    lines = [r.getMessage() for r in caplog.records if r.getMessage().startswith("PD ")]
    for key, inst in (("PD decode publish", d.inst), ("PD decode landed", d.inst),
                      ("PD prefill post", p.inst), ("PD prefill match", p.inst)):
        got = [m for m in lines if m.startswith(key)]
        assert got and all(f"inst={inst:#x} " in m for m in got), (key, got)


def test_abort_while_running_release_draining_then_late_evidence(nodes, recs):
    p, (d,) = nodes()
    p.backend.delay_s = 0.3
    p.submit(7, [4, 4, 4], rid="r-ab")
    uid = d.submit(7, [4, 4, 4], p.port, 2, rid="r-ab")
    assert run_until(lambda: p.backend.calls == 1, [p, d])
    d.abort(uid)
    assert run_until(lambda: d.pd.count("aborting") == 0, [p, d])
    rs = of(recs(), rid="r-ab", k="call")
    rel = [r for r in rs if r["ev"] == "release" and r["inst"] == hex(d.inst)][0]
    assert rel["why"] == "abort" and rel["post"] == {"draining": 3}
    ev = [r for r in rs if r["ev"] == "evidence"][-1]
    assert ev["kind"] == "stopped" and ev["post"] == {"free": 3} and ev["seq"] > rel["seq"]
    ab = of(rs, ev="abort")[0]
    assert (ab["entry"], ab["why"], ab["result"]) == ("submitted", "decode_abort", "nothing")
    assert of(rs, ev="done")[0]["result"] == "ack"


def test_timeout_quarantine_and_late_drop(nodes, recs):
    p, (d,) = nodes(d_kw={"waiting_timeout": 0.2})
    p.backend.hang.clear()
    p.submit(8, [1, 1], rid="r-to")
    uid = d.submit(8, [1, 1], p.port, 2, rid="r-to")
    assert run_until(lambda: uid in d.failed, [p, d], timeout=5)
    p.backend.hang.set()
    assert run_until(lambda: d.ledger.stats()["dropped_msgs"] >= 1, [p, d])
    evs = of(recs(), ev="evidence", inst=hex(d.inst))
    un = [r for r in evs if r["kind"] == "unstopped"][0]
    assert un["reason"] == "timeout" and un["post"] == {"quarantined": 2} and un["rid"] == "r-to"
    # P finishes the write and acknowledges the abort D sent at the timeout: dropped
    late = [r for r in evs if r["seq"] > un["seq"]][0]
    assert late["drop"] and late["code"] < 0 and late["xid"] == un["xid"]
    rel = of(recs(), ev="release", inst=hex(d.inst), rid="r-to")[0]
    assert rel["why"] == "failed" and rel["post"] == {"quarantined": 2}


def test_peer_lost_lists_the_xids(nodes, recs):
    p, (d,) = nodes(d_kw={"hb_interval": 0.05, "hb_timeout": 0.3})
    p.backend.hang.clear()
    p.submit(9, [3, 3])
    uid = d.submit(9, [3, 3], p.port, 2)
    assert run_until(lambda: d.pd.count("waiting") == 1, [p, d])
    p.pd.hub.shutdown()
    assert run_until(lambda: uid in d.failed, [d])
    pl = of(recs(), ev="peer_lost", inst=hex(d.inst))
    pub = of(recs(), ev="publish")[0]
    assert pl and pl[0]["xids"] == [pub["xid"]] and pl[0]["peer"] == hex(p.inst)
    p.backend.hang.set()


def test_p_abort_reasons_at_call_sites(nodes, recs):
    p, (d,) = nodes()
    p.submit(3, [1, 2, 3])
    uid = d.submit(3, [1, 2, 4], p.port, 2)  # prompt mismatch -> P refuses
    assert run_until(lambda: uid in d.failed, [p, d])
    ab = of(recs(), ev="abort", inst=hex(p.inst))
    assert ab and ab[0]["why"] == "mismatch" and ab[0]["entry"] == "none"
    assert ab[0]["result"] == "ack" and ab[0]["room"] == 3


def test_router_outcome_line():
    import threading
    from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer

    from minisgl.disagg.router import Router, serve

    class S(BaseHTTPRequestHandler):
        protocol_version = "HTTP/1.0"

        def log_message(self, *a):
            pass

        def do_POST(self):
            self.rfile.read(int(self.headers["Content-Length"]))
            self.send_response(200)
            self.end_headers()
            self.wfile.write(b"data: x\ndata: [DONE]\n")

    up = ThreadingHTTPServer(("127.0.0.1", 0), S)
    threading.Thread(target=up.serve_forever, daemon=True).start()
    got = []

    class H(logging.Handler):
        def emit(self, record):
            m = record.getMessage()
            if m.startswith("PDT "):
                got.append(json.loads(m[4:]))

    h = H()
    lg = logging.getLogger("minisgl.disagg.trace")
    lg.addHandler(h)
    old = lg.level
    lg.setLevel(logging.INFO)
    try:
        rt = Router([(f"http://127.0.0.1:{up.server_port}", 8998)],
                    [f"http://127.0.0.1:{up.server_port}"])
        srv = serve(rt, "127.0.0.1", 0)
        import http.client
        c = http.client.HTTPConnection("127.0.0.1", srv.server_port, timeout=10)
        c.request("POST", "/generate", body=json.dumps({"prompt": "x", "max_tokens": 1,
                                                        "rid": "r-rt"}),
                  headers={"Content-Type": "application/json"})
        c.getresponse().read()
        deadline = time.time() + 3
        while not got and time.time() < deadline:
            time.sleep(0.01)
    finally:
        lg.removeHandler(h)
        lg.setLevel(old)
    r = [x for x in got if x["k"] == "router"][0]
    assert (r["rid"], r["outcome"], r["inst"]) == ("r-rt", "ok", "router") and "seq" in r
    srv.shutdown()
    up.shutdown()


def test_switch_off_writes_nothing(nodes, recs, monkeypatch):
    monkeypatch.setattr(T, "ENABLED", False)
    p, (d,) = nodes()
    p.submit(5, [1])
    uid = d.submit(5, [1], p.port, 2)
    assert run_until(lambda: uid in d.outputs and not d.running, [p, d])
    assert recs() == []


def test_traced_ledger_is_transparent():
    """Same results and Ledger method names."""
    lay = [2, 1, 1, 1, 1, 9, 0, 1, 1]
    a, b = L.RefLedger(8, lay, 5, check_every=1), L.RefLedger(8, lay, 5, check_every=1)
    t = T.wrap(b, 5, "D")
    for led in (a, t):
        g = led.open_req(1)
        assert led.alloc(g, 3) == [0, 1, 2]
        led.launch(1, [(g, 0, 3)])
        led.complete(1)
        assert led.release(g) == 3
    assert a.stats() == t.stats()
    names = [n for n, v in vars(L.Ledger).items() if callable(v) and not n.startswith("_")]
    assert all(callable(getattr(T.TracedLedger, n, None)) for n in names)
    assert T.wrap(t, 5, "D") is t
