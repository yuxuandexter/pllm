"""TCP control channel between prefill and decode instances.

Length-prefixed JSON preserves message order within a connection. A closed
connection reports CLOSED so the owner can handle peer loss. Delivery is not
guaranteed after disconnect. The scheduler drains one inbox; other threads may
send under a per-connection lock."""

from __future__ import annotations

import json
import queue
import socket
import struct
import threading
from typing import Dict, List, Tuple

CLOSED = "__closed__"  # pseudo message type: the connection is gone
_HDR = struct.Struct(">I")
MAX_FRAME = 64 << 20


class _Conn:
    def __init__(self, cid: int, sock: socket.socket) -> None:
        self.cid = cid
        self.sock = sock
        self.lock = threading.Lock()
        self.alive = True


class Hub:
    """Owns a listening socket (optional) and any number of connections."""

    def __init__(self) -> None:
        self.inbox: "queue.Queue[Tuple[int, Dict]]" = queue.Queue()
        self._conns: Dict[int, _Conn] = {}
        self._lock = threading.Lock()
        self._next = 1
        self._lsock: socket.socket | None = None
        self._stopped = False

    def listen(self, host: str, port: int) -> int:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        s.bind((host, port))
        s.listen(128)
        self._lsock = s
        threading.Thread(target=self._accept_loop, daemon=True, name="pd-accept").start()
        return s.getsockname()[1]

    def connect(self, host: str, port: int, timeout: float = 5.0) -> int:
        """Returns a connection id; raises OSError if the peer cannot be reached."""
        s = socket.create_connection((host, port), timeout=timeout)
        s.settimeout(None)
        return self._add(s)

    def _add(self, s: socket.socket) -> int:
        s.setsockopt(socket.IPPROTO_TCP, socket.TCP_NODELAY, 1)
        with self._lock:
            cid = self._next
            self._next += 1
            self._conns[cid] = _Conn(cid, s)
        threading.Thread(target=self._read_loop, args=(cid, s), daemon=True,
                         name=f"pd-read-{cid}").start()
        return cid

    def _accept_loop(self) -> None:
        assert self._lsock is not None
        while not self._stopped:
            try:
                s, _ = self._lsock.accept()
            except OSError:
                return
            self._add(s)

    def _read_loop(self, cid: int, s: socket.socket) -> None:
        try:
            while True:
                hdr = _recv_exact(s, _HDR.size)
                if hdr is None:
                    break
                (n,) = _HDR.unpack(hdr)
                if n > MAX_FRAME:
                    break
                body = _recv_exact(s, n)
                if body is None:
                    break
                try:
                    msg = json.loads(body.decode("utf-8"))
                except ValueError:
                    break
                if isinstance(msg, dict):
                    self.inbox.put((cid, msg))
        except OSError:
            pass
        self._mark_closed(cid)

    def _mark_closed(self, cid: int) -> None:
        with self._lock:
            c = self._conns.pop(cid, None)
        if c is not None:
            c.alive = False
            try:
                c.sock.close()
            except OSError:
                pass
            self.inbox.put((cid, {"t": CLOSED}))

    def send(self, cid: int, msg: Dict) -> bool:
        """Best effort.  False if the connection is gone (the CLOSED event follows)."""
        with self._lock:
            c = self._conns.get(cid)
        if c is None:
            return False
        data = json.dumps(msg, separators=(",", ":")).encode("utf-8")
        try:
            with c.lock:
                c.sock.sendall(_HDR.pack(len(data)) + data)
            return True
        except OSError:
            self._mark_closed(cid)
            return False

    def close(self, cid: int) -> None:
        with self._lock:
            c = self._conns.get(cid)
        if c is not None:
            try:
                c.sock.shutdown(socket.SHUT_RDWR)
            except OSError:
                pass
            self._mark_closed(cid)

    def poll(self, timeout: float = 0.0) -> List[Tuple[int, Dict]]:
        """All queued messages; waits up to ``timeout`` seconds for the first one."""
        out: List[Tuple[int, Dict]] = []
        try:
            if timeout > 0:
                out.append(self.inbox.get(timeout=timeout))
            while True:
                out.append(self.inbox.get_nowait())
        except queue.Empty:
            pass
        return out

    def shutdown(self) -> None:
        self._stopped = True
        if self._lsock is not None:
            try:
                # shutdown wakes accept on Linux; close alone can leave the thread alive.
                self._lsock.shutdown(socket.SHUT_RDWR)
            except OSError:
                pass
            try:
                self._lsock.close()
            except OSError:
                pass
        with self._lock:
            cids = list(self._conns)
        for cid in cids:
            self.close(cid)


def _recv_exact(s: socket.socket, n: int) -> bytes | None:
    buf = bytearray()
    while len(buf) < n:
        chunk = s.recv(n - len(buf))
        if not chunk:
            return None
        buf += chunk
    return bytes(buf)
