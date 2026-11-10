"""Control-plane messages between P and D (dicts with a "t" field, sent over ``channel.Hub``).

Mirrors the SGLang Mooncake message set (SGLang control plane "messages"), reduced to what step 1 needs:

D -> P  hello      {inst, layout, session}            register D's KV pool (once per connection)
P -> D  hello_ack  {inst, layout, session, code}      P's identity; code != 0 = refused (layout)
D -> P  xfer_req   {room, gen, xid, ntokens, tok_hash, pages}
                                                      destination pages for one request
D -> P  abort      {room, gen, xid}                   D gave up on the transfer
P -> D  kv_done    {src, dst, room, gen, xid, ntokens, first_token[, csum]}
                                                      csum: per-(K/V, layer) checksums (optional)
                                                      sent only after the engine returned success
P -> D  kv_fail    {src, dst, room, gen, xid, stopped, code}
                                                      stopped=1: no write ever happened / will happen
P -> D  abort_ack  {src, dst, room, gen, xid}         P certifies the transfer stopped
D -> P  ping {seq} / P -> D pong {seq}                heartbeat

Every P -> D message carries (src instance, dst instance, room, gen, xid); D's ledger drops any
that does not match its record.  Instances are random 62-bit ids drawn at process start: they
play the role of the instance generation in lifecycle contract (an old instance never matches a new one).
"""

from __future__ import annotations

import hashlib
import secrets
import struct
from typing import Dict, Iterable, List

HELLO, HELLO_ACK, XFER_REQ, ABORT = "hello", "hello_ack", "xfer_req", "abort"
KV_DONE, KV_FAIL, ABORT_ACK, PING, PONG = "kv_done", "kv_fail", "abort_ack", "ping", "pong"


def new_instance_id() -> int:
    return secrets.randbits(62) | 1


# Bootstrap rooms D accepts (compatibility, the contract): 0 <= room < 2^63.  The router draws
# secrets.randbits(63); D's ledger core (role D) refuses open_req of a room that folds to a
# negative i64 (fail-stop), so D drops any other room from the (untrusted) router before that.
ROOM_LIM = 1 << 63


def room_ok(room) -> bool:
    return isinstance(room, int) and not isinstance(room, bool) and 0 <= room < ROOM_LIM


def model_identity(model_path: str, hf_config: Dict) -> int:
    """Model identity compared in the handshake (layout agreement §1, Z3 finding layout identity): the resolved
    model path plus the full HF config.  Weight bytes are not hashed (too slow at start-up), so
    two different checkpoints at the same path with the same config are not told apart."""
    import json
    import os

    blob = os.path.realpath(model_path) + "\n" + json.dumps(hf_config, sort_keys=True, default=str)
    return int(hashlib.sha256(blob.encode("utf-8")).hexdigest()[:15], 16)


CSUM_MOD = 65521  # largest prime below 2**16
CSUM_MUL = 40503  # coprime with CSUM_MOD: i -> i * MUL mod MOD permutes each period


def kv_checksum_weights_np(n: int):
    import numpy as np

    return (np.arange(n, dtype=np.int64) * CSUM_MUL) % CSUM_MOD + 1


def kv_checksum_bytes(data) -> int:
    """Per-write KV checksum of one (K/V, layer) slab (per-write integrity primary criterion, SPEC §1).

    ``data`` = the bytes of the transferred pages of that slab, concatenated in page order
    (exactly the bytes the RDMA descriptors cover).
    C = sum_i data[i] * w(i), w(i) = ((i * 40503) mod 65521) + 1, an exact integer:
    deterministic on CPU and GPU (integer adds commute, no rounding); the weights are a
    pseudo-random permutation of 1..65521 within each period, so a flipped byte, a shifted page
    and two swapped pages all change it (plain position weights w(i) = i + 1 miss a swap of two
    pages with equal byte sums: the compatibility test caught that); below 2**63 for any slab under
    5e11 bytes, so an int64 reduction on the GPU never overflows.  ``scheduler_pd.kv_checksums``
    computes the same value with torch on the device; this is the reference."""
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
        csum = msg.get("csum")  # optional per-slab KV checksums (compatibility)
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
