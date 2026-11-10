"""CPU smoke checks of the torch-side PD integration: modules import, CLI flags parse into the
config, and the message schema carries the PD fields through (de)serialization."""

from __future__ import annotations

import py_compile
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parents[2] / "python" / "minisgl"


@pytest.mark.parametrize("rel", [
    "disagg/ledger.py", "disagg/channel.py", "disagg/messages.py", "disagg/transfer.py",
    "disagg/prefill.py", "disagg/decode.py", "disagg/router.py", "disagg/scheduler_pd.py",
    "scheduler/scheduler.py", "scheduler/config.py", "server/args.py", "server/api_server.py",
    "message/backend.py", "message/tokenizer.py", "tokenizer/server.py",
])
def test_compiles(rel):
    py_compile.compile(str(ROOT / rel), doraise=True)


def test_scheduler_pd_imports():
    pytest.importorskip("torch")
    import minisgl.disagg.scheduler_pd as spd  # noqa: F401
    import minisgl.scheduler.scheduler  # noqa: F401


def test_user_msg_roundtrip_keeps_disagg():
    torch = pytest.importorskip("torch")
    from minisgl.core import SamplingParams
    from minisgl.message import BaseBackendMsg, UserMsg

    d = {"bootstrap_host": "10.0.0.1", "bootstrap_port": 8998, "bootstrap_room": 123456789}
    m = UserMsg(uid=3, input_ids=torch.tensor([1, 2, 3], dtype=torch.int32),
                sampling_params=SamplingParams(max_tokens=5), disagg=d)
    back = BaseBackendMsg.decoder(m.encoder())
    assert back.disagg == d and back.input_ids.tolist() == [1, 2, 3]
    plain = BaseBackendMsg.decoder(UserMsg(uid=4, input_ids=torch.tensor([1], dtype=torch.int32),
                                           sampling_params=SamplingParams()).encoder())
    assert plain.disagg is None


def test_args_parse_pd_flags(tmp_path):
    pytest.importorskip("torch")
    import json

    from minisgl.server.args import parse_args

    # a minimal local HF config so that parse_args can resolve dtype without the network
    (tmp_path / "config.json").write_text(json.dumps({
        "architectures": ["Qwen3ForCausalLM"], "model_type": "qwen3", "torch_dtype": "bfloat16",
        "hidden_size": 64, "num_attention_heads": 4, "num_key_value_heads": 2, "head_dim": 16,
        "num_hidden_layers": 2, "intermediate_size": 128, "vocab_size": 1000,
        "max_position_embeddings": 4096, "rms_norm_eps": 1e-6, "rope_theta": 10000.0,
    }))
    args, _ = parse_args(["--model-path", str(tmp_path), "--disaggregation-mode", "decode",
                          "--disaggregation-ib-device", "mlx5_0", "--cache-type", "naive",
                          "--num-pages", "4096", "--disaggregation-waiting-timeout", "12"])
    assert args.disaggregation_mode == "decode"
    assert args.disaggregation_ib_device == "mlx5_0"
    assert args.disaggregation_waiting_timeout == 12.0
    assert args.num_page_override == 4096


def test_gpu_flush_on_by_default(tmp_path):
    """Decode flushes GPUDirect writes before recording a landing by default."""
    pytest.importorskip("torch")
    import json

    from minisgl.server.args import parse_args

    (tmp_path / "config.json").write_text(json.dumps({
        "architectures": ["Qwen3ForCausalLM"], "model_type": "qwen3", "torch_dtype": "bfloat16",
        "hidden_size": 64, "num_attention_heads": 4, "num_key_value_heads": 2, "head_dim": 16,
        "num_hidden_layers": 2, "intermediate_size": 128, "vocab_size": 1000,
        "max_position_embeddings": 4096, "rms_norm_eps": 1e-6, "rope_theta": 10000.0,
    }))
    base = ["--model-path", str(tmp_path), "--disaggregation-mode", "decode"]
    assert parse_args(base)[0].disaggregation_gpu_flush is True
    assert parse_args(base + ["--disable-disaggregation-gpu-flush"])[0].disaggregation_gpu_flush \
        is False


def _tiny_model(tmp_path):
    import json

    (tmp_path / "config.json").write_text(json.dumps({
        "architectures": ["Qwen3ForCausalLM"], "model_type": "qwen3", "torch_dtype": "bfloat16",
        "hidden_size": 64, "num_attention_heads": 4, "num_key_value_heads": 2, "head_dim": 16,
        "num_hidden_layers": 2, "intermediate_size": 128, "vocab_size": 1000,
        "max_position_embeddings": 4096, "rms_norm_eps": 1e-6, "rope_theta": 10000.0,
    }))
    return ["--model-path", str(tmp_path), "--disaggregation-mode", "decode"]


def test_ack_timeout_flag(tmp_path):
    """The server flag must reach the decode abort timeout."""
    pytest.importorskip("torch")
    from minisgl.server.args import parse_args

    base = _tiny_model(tmp_path)
    assert parse_args(base)[0].disaggregation_ack_timeout == 30.0
    assert parse_args(base + ["--disaggregation-ack-timeout", "7.5"])[0] \
        .disaggregation_ack_timeout == 7.5
    for bad in ("0", "-1"):
        with pytest.raises(SystemExit):
            parse_args(base + ["--disaggregation-ack-timeout", bad])


def test_row_check_flag(tmp_path):
    """Keep auto, on, off, and the disable alias consistent in the parsed config."""
    pytest.importorskip("torch")
    from minisgl.server.args import parse_args

    base = _tiny_model(tmp_path)
    assert parse_args(base)[0].disaggregation_row_check == "auto"
    for v in ("auto", "on", "off"):
        assert parse_args(base + ["--disaggregation-row-check", v])[0] \
            .disaggregation_row_check == v
    assert parse_args(base + ["--disable-disaggregation-row-check"])[0] \
        .disaggregation_row_check == "off"
    with pytest.raises(SystemExit):
        parse_args(base + ["--disaggregation-row-check", "yes"])
