"""compatibility: --attention-workspace-mb reaches the flashinfer / TRT-LLM workspace allocation (CPU).

GPU batch 2 crash: a prefill-only instance at Qwen3-32B geometry needed 146,800,640 B for
flashinfer's batch_prefill_tmp_v but the fixed workspace was 128 MiB (attention/fi.py)."""

from __future__ import annotations

import ast
import inspect
import json
import sys
import types
from pathlib import Path
from types import SimpleNamespace

import pytest

torch = pytest.importorskip("torch")

from minisgl.distributed import DistributedInfo  # noqa: E402
from minisgl.distributed.info import set_tp_info, try_get_tp_info  # noqa: E402

if try_get_tp_info() is None:  # the rank-0 logger asks for it
    set_tp_info(rank=0, size=1)

MIB = 1024 * 1024
QWEN3_32B = SimpleNamespace(num_qo_heads=64, num_kv_heads=8, head_dim=128)


@pytest.fixture
def cpu_backend_env(monkeypatch):
    """Stand-ins for what the backends need from CUDA and flashinfer, recording the buffers."""
    seen = {}

    class Wrapper:
        def __init__(self, float_workspace_buffer, **kw):
            seen.setdefault("buffers", []).append(float_workspace_buffer)
            self._int_workspace_buffer = torch.empty(8, dtype=torch.uint8)

    fake = types.ModuleType("flashinfer")
    fake.BatchPrefillWithPagedKVCacheWrapper = Wrapper
    fake.BatchDecodeWithPagedKVCacheWrapper = Wrapper
    fake.CUDAGraphBatchDecodeWithPagedKVCacheWrapper = Wrapper
    monkeypatch.setitem(sys.modules, "flashinfer", fake)
    ctx = SimpleNamespace(kv_cache=SimpleNamespace(device=torch.device("cpu")), page_size=64)
    import minisgl.attention.fi as fi
    import minisgl.attention.trtllm as trt

    monkeypatch.setattr(fi, "get_global_ctx", lambda: ctx)
    monkeypatch.setattr(trt, "get_global_ctx", lambda: ctx)
    monkeypatch.setattr(fi, "get_tp_info", lambda: DistributedInfo(0, 1))

    class Event:
        def record(self, *a):
            pass

    monkeypatch.setattr(torch.cuda, "Event", Event)
    real_tensor = torch.tensor

    def tensor(*a, **kw):
        kw.pop("pin_memory", None)
        return real_tensor(*a, **kw)

    monkeypatch.setattr(torch, "tensor", tensor)
    return seen


@pytest.mark.parametrize("mb", [128, 256])
def test_flag_sizes_the_flashinfer_workspace(cpu_backend_env, mb):
    from minisgl.attention import create_attention_backend

    be = create_attention_backend("fi", QWEN3_32B, workspace_mb=mb)
    assert be.float_workspace_buffer.numel() == mb * MIB == be.workspace_bytes
    # the prefill and the decode wrapper both got this very buffer
    assert [b is be.float_workspace_buffer for b in cpu_backend_env["buffers"]] == [True, True]
    # the CUDA-graph decode wrappers (fi.py prepare_for_capture) reuse the same attribute
    src = inspect.getsource(type(be).prepare_for_capture)
    assert "CUDAGraphBatchDecodeWithPagedKVCacheWrapper(\n            self.float_workspace_buffer" \
        in src


def test_default_is_upstream_128(cpu_backend_env):
    from minisgl.attention import create_attention_backend

    assert create_attention_backend("fi", QWEN3_32B).float_workspace_buffer.numel() == 128 * MIB


def test_flag_reaches_trtllm_and_hybrid(cpu_backend_env):
    from minisgl.attention import create_attention_backend

    assert create_attention_backend("trtllm", QWEN3_32B, workspace_mb=64).workspace_bytes \
        == 64 * MIB
    hy = create_attention_backend("trtllm,fi", QWEN3_32B, workspace_mb=300)
    assert hy.prefill_backend.workspace_bytes == 300 * MIB
    assert hy.decode_backend.float_workspace_buffer.numel() == 300 * MIB


def test_cli_flag_to_engine_call(tmp_path):
    from minisgl.server.args import parse_args

    (tmp_path / "config.json").write_text(json.dumps({
        "architectures": ["Qwen3ForCausalLM"], "model_type": "qwen3", "torch_dtype": "bfloat16",
        "hidden_size": 64, "num_attention_heads": 4, "num_key_value_heads": 2, "head_dim": 16,
        "num_hidden_layers": 2, "intermediate_size": 128, "vocab_size": 1000,
        "max_position_embeddings": 4096, "rms_norm_eps": 1e-6, "rope_theta": 10000.0,
    }))
    base = ["--model-path", str(tmp_path)]
    assert parse_args(base)[0].attention_workspace_mb == 128
    assert parse_args(base + ["--attention-workspace-mb", "256"])[0].attention_workspace_mb == 256
    with pytest.raises(SystemExit):
        parse_args(base + ["--attention-workspace-mb", "0"])
    # the engine passes the config value to the backend factory
    src = (Path(__file__).resolve().parents[2] / "python/minisgl/engine/engine.py").read_text()
    calls = [n for n in ast.walk(ast.parse(src)) if isinstance(n, ast.Call)
             and getattr(n.func, "id", None) == "create_attention_backend"]
    assert len(calls) == 1
    kw = {k.arg: ast.unparse(k.value) for k in calls[0].keywords}
    assert kw == {"workspace_mb": "config.attention_workspace_mb"}


def test_rule_of_thumb_reproduces_the_crash_numbers(monkeypatch):
    from minisgl.attention.fi import estimate_prefill_workspace_bytes
    from minisgl.engine import engine as eng

    need = estimate_prefill_workspace_bytes(64, 128, 8192)
    assert need - 64 * 4480 * 4 == 146_800_640  # tmp_v as reported by flashinfer, + tmp_s
    warned = []
    monkeypatch.setattr(eng.logger, "warning_rank0", lambda m, *a, **k: warned.append(m))
    cfg = SimpleNamespace(attention_backend="fi", tp_info=DistributedInfo(0, 1),
                          model_config=QWEN3_32B, max_forward_len=8192, attention_workspace_mb=128)
    eng._warn_small_workspace(cfg)
    assert len(warned) == 1 and "batch_prefill_tmp_v" in warned[0]
    cfg.attention_workspace_mb = 256
    eng._warn_small_workspace(cfg)
    cfg.attention_backend = "trtllm"
    cfg.attention_workspace_mb = 128
    eng._warn_small_workspace(cfg)
    assert len(warned) == 1  # no warning with 256 MiB, none for a non-flashinfer backend
