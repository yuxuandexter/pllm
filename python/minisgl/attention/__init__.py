from __future__ import annotations

from typing import TYPE_CHECKING, Protocol

from minisgl.utils import Registry, init_logger

from .base import BaseAttnBackend, BaseAttnMetadata, HybridBackend

if TYPE_CHECKING:
    from minisgl.models import ModelConfig

logger = init_logger(__name__)


# Float workspace for flashinfer / TRT-LLM attention.  128 MiB is mini-sglang's original size;
# a prefill-only (PD) instance packing ~8192 tokens per batch at Qwen3-32B geometry needed
# 140 MiB for flashinfer's batch_prefill_tmp_v alone on GB200 (GPU batch 2), see
# --attention-workspace-mb and the attention workspace bound.
DEFAULT_WORKSPACE_MB = 128


class BackendCreator(Protocol):
    def __call__(self, config: ModelConfig, workspace_mb: int = ...) -> BaseAttnBackend: ...


SUPPORTED_ATTENTION_BACKENDS = Registry[BackendCreator]("Attention Backend")


@SUPPORTED_ATTENTION_BACKENDS.register("trtllm")
def create_trtllm_backend(config: ModelConfig, workspace_mb: int = DEFAULT_WORKSPACE_MB):
    from .trtllm import TensorRTLLMBackend

    return TensorRTLLMBackend(config, workspace_mb=workspace_mb)


@SUPPORTED_ATTENTION_BACKENDS.register("fi")
def create_fi_backend(config: ModelConfig, workspace_mb: int = DEFAULT_WORKSPACE_MB):
    from .fi import FlashInferBackend

    return FlashInferBackend(config, workspace_mb=workspace_mb)


@SUPPORTED_ATTENTION_BACKENDS.register("fa")
def create_fa_backend(config: ModelConfig, workspace_mb: int = DEFAULT_WORKSPACE_MB):
    from .fa import FlashAttentionBackend

    return FlashAttentionBackend(config)


def validate_attn_backend(backend: str, allow_auto: bool = True):
    if backend != "auto":
        required_backends = backend.split(",") if "," in backend else [backend]
        SUPPORTED_ATTENTION_BACKENDS.assert_supported(required_backends)
    else:
        assert allow_auto, "auto is not allowed here"
    return backend


def create_attention_backend(
    backend: str,
    config: ModelConfig,
    workspace_mb: int = DEFAULT_WORKSPACE_MB,
) -> BaseAttnBackend:
    validate_attn_backend(backend, allow_auto=False)
    if "," in backend:
        assert backend.count(",") == 1, "Only one comma is allowed in hybrid backend"
        p_backend, d_backend = backend.split(",", 1)
        if p_backend != d_backend:
            logger.info(f"Using hybrid attention backend: prefill={p_backend}, decode={d_backend}")
            p_backend = create_attention_backend(p_backend, config, workspace_mb)
            d_backend = create_attention_backend(d_backend, config, workspace_mb)
            return HybridBackend(p_backend, d_backend)
        backend = p_backend  # both are the same, fall through to single backend
        logger.warning(f"P/D attention backends are the same: {backend}, using single backend.")

    return SUPPORTED_ATTENTION_BACKENDS[backend](config, workspace_mb=workspace_mb)


__all__ = [
    "BaseAttnMetadata",
    "BaseAttnBackend",
    "create_attention_backend",
    "SUPPORTED_ATTENTION_BACKENDS",
    "validate_attn_backend",
    "DEFAULT_WORKSPACE_MB",
]
