"""Control messages preserve request identity across connection and room reuse.

The handshake exchanges instance, layout, and transfer-session information.
Decode publishes destination pages in xfer_req and may later send abort.
Prefill sends kv_done only after successful local completion of every write;
kv_fail and abort_ack distinguish failure from evidence that writes have stopped.
ping and pong detect peers that no longer respond.

Every reply from prefill carries both instance IDs, room, generation, and transfer
ID. Decode drops mismatches. Random 62-bit instance IDs distinguish process
incarnations. Messages are dictionaries sent through channel.Hub."""

from __future__ import annotations

import hashlib
import secrets
import struct
from typing import Dict, Iterable, List

HELLO, HELLO_ACK, XFER_REQ, ABORT = "hello", "hello_ack", "xfer_req", "abort"
KV_DONE, KV_FAIL, ABORT_ACK, PING, PONG = "kv_done", "kv_fail", "abort_ack", "ping", "pong"


def new_instance_id() -> int:
    return secrets.randbits(62) | 1


# The router is untrusted. Reject rooms outside the signed 64-bit range before
# they reach the ledger's fatal local-call checks.
ROOM_LIM = 1 << 63


def room_ok(room) -> bool:
    return isinstance(room, int) and not isinstance(room, bool) and 0 <= room < ROOM_LIM


def model_identity(model_path: str, hf_config: Dict) -> int:
    """Include the resolved model path and HF config in layout agreement.

    Weight hashing would slow startup. Different checkpoints at the same path
    with the same config therefore remain indistinguishable."""
    import json
    import os

    blob = os.path.realpath(model_path) + "\n" + json.dumps(hf_config, sort_keys=True, default=str)
    return int(hashlib.sha256(blob.encode("utf-8")).hexdigest()[:15], 16)


CSUM_MOD = 65521  # largest prime below 2**16
CSUM_MUL = 40503  # Coprime weights permute each period, making the checksum sensitive to byte order.


def kv_checksum_weights_np(n: int):
    import numpy as np

    return (np.arange(n, dtype=np.int64) * CSUM_MUL) % CSUM_MOD + 1


def kv_checksum_bytes(data) -> int:
    """Compute the reference checksum over a KV layer's bytes in page order.

    Integer arithmetic gives identical CPU and GPU results without rounding.
    Permuted positional weights detect the tested byte flips, shifts, and page
    swaps that simple position weights can miss. They do not prevent collisions.
    Slabs below 5e11 bytes fit an int64 reduction. scheduler_pd.kv_checksums
    computes the same value on the device."""
    try:
        import numpy as np

        x = np.frombuffer(bytes(data), dtype=np.uint8).astype(np.int64)
        return int((x * kv_checksum_weights_np(len(x))).sum())
    except ImportError:  # pragma: no cover
        return sum(b * ((i * CSUM_MUL) % CSUM_MOD + 1) for i, b in enumerate(bytes(data)))


def tok_hash(token_ids: Iterable[int]) -> str:
    """Identity of the prompt tokens; P and D must agree on it before any byte moves."""
    ids = [int(t) for t in token_ids]
    return hashlib.sha256(struct.pack(f"<{len(ids)}i", *ids)).hexdigest()[:16]


def _ints(msg: Dict, *keys: str) -> bool:
    return all(isinstance(msg.get(k), int) and not isinstance(msg.get(k), bool) for k in keys)


def valid(msg: Dict) -> bool:
    """Shape check of an untrusted message (types only; the ledger checks the values)."""
    t = msg.get("t")
    if t == HELLO or t == HELLO_ACK:
        lay = msg.get("layout")
        return (_ints(msg, "inst") and isinstance(msg.get("session"), str)
                and isinstance(lay, list) and all(isinstance(x, int) for x in lay)
                and (t == HELLO or _ints(msg, "code")))
    if t == XFER_REQ:
        descriptor = msg.get("descriptor")
        if descriptor is not None:
            if not (isinstance(descriptor, (list, tuple)) and len(descriptor) == 7
                    and all(type(x) is int for x in descriptor[:5])
                    and all(isinstance(x, (list, tuple)) and all(type(y) is int for y in x)
                            for x in descriptor[5:])):
                return False
        pages = msg.get("pages")
        return (_ints(msg, "room", "gen", "xid", "ntokens") and isinstance(msg.get("tok_hash"), str)
                and isinstance(pages, list) and all(isinstance(p, int) for p in pages))
    if t == ABORT:
        return _ints(msg, "room", "gen", "xid")
    if t == KV_DONE:
        csum = msg.get("csum")  # optional per-slab KV checksums
        return (_ints(msg, "src", "dst", "room", "gen", "xid", "ntokens", "first_token")
                and (csum is None or (isinstance(csum, list)
                                      and all(isinstance(c, int) for c in csum))))
    if t == KV_FAIL:
        return _ints(msg, "src", "dst", "room", "gen", "xid", "stopped", "code")
    if t == ABORT_ACK:
        return _ints(msg, "src", "dst", "room", "gen", "xid")
    if t in (PING, PONG):
        return _ints(msg, "seq")
    return False


def to_p(t: str, **kw) -> Dict:
    kw["t"] = t
    return kw


def layout_list(layout: List[int]) -> List[int]:
    return [int(x) for x in layout]
