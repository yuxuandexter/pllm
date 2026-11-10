from __future__ import annotations

import argparse
import os
from dataclasses import dataclass
from typing import List, Tuple

import torch
from minisgl.distributed import DistributedInfo
from minisgl.scheduler import SchedulerConfig
from minisgl.utils import init_logger


@dataclass(frozen=True)
class ServerArgs(SchedulerConfig):
    server_host: str = "127.0.0.1"
    server_port: int = 1919
    num_tokenizer: int = 0
    silent_output: bool = False

    @property
    def share_tokenizer(self) -> bool:
        return self.num_tokenizer == 0

    @property
    def zmq_frontend_addr(self) -> str:
        return "ipc:///tmp/minisgl_3" + self._unique_suffix

    @property
    def zmq_tokenizer_addr(self) -> str:
        if self.share_tokenizer:
            return self.zmq_detokenizer_addr
        result = "ipc:///tmp/minisgl_4" + self._unique_suffix
        assert result != self.zmq_detokenizer_addr
        return result

    @property
    def tokenizer_create_addr(self) -> bool:
        return self.share_tokenizer

    @property
    def backend_create_detokenizer_link(self) -> bool:
        return not self.share_tokenizer

    @property
    def frontend_create_tokenizer_link(self) -> bool:
        return not self.share_tokenizer

    @property
    def distributed_addr(self) -> str:
        return f"tcp://127.0.0.1:{self.server_port + 1}"


def parse_args(args: List[str], run_shell: bool = False) -> Tuple[ServerArgs, bool]:
    """
    Parse command line arguments and return an EngineConfig.

    Args:
        args: Command line arguments (e.g., sys.argv[1:])

    Returns:
        EngineConfig instance with parsed arguments
    """
    from minisgl.attention import validate_attn_backend
    from minisgl.kvcache import SUPPORTED_CACHE_MANAGER
    from minisgl.moe import SUPPORTED_MOE_BACKENDS

    parser = argparse.ArgumentParser(description="MiniSGL Server Arguments")

    parser.add_argument(
        "--model-path",
        "--model",
        type=str,
        required=True,
        help="The path of the model weights. This can be a local folder or a Hugging Face repo ID.",
    )

    parser.add_argument(
        "--dtype",
        type=str,
        default="auto",
        choices=["auto", "float16", "bfloat16", "float32"],
        help="Data type for model weights and activations. 'auto' will use FP16 for FP32/FP16 models and BF16 for BF16 models.",
    )

    parser.add_argument(
        "--tensor-parallel-size",
        "--tp-size",
        type=int,
        default=1,
        help="The tensor parallelism size.",
    )

    parser.add_argument(
        "--max-running-requests",
        type=int,
        dest="max_running_req",
        default=ServerArgs.max_running_req,
        help="The maximum number of running requests.",
    )

    parser.add_argument(
        "--max-seq-len-override",
        type=int,
        default=ServerArgs.max_seq_len_override,
        help="The maximum sequence length override.",
    )

    parser.add_argument(
        "--memory-ratio",
        type=float,
        default=ServerArgs.memory_ratio,
        help="The fraction of GPU memory to use for KV cache.",
    )

    assert ServerArgs.use_dummy_weight == False
    parser.add_argument(
        "--dummy-weight",
        action="store_true",
        dest="use_dummy_weight",
        help="Use dummy weights for testing.",
    )

    assert ServerArgs.use_pynccl == True
    parser.add_argument(
        "--disable-pynccl",
        action="store_false",
        dest="use_pynccl",
        help="Disable PyNCCL for tensor parallelism.",
    )

    parser.add_argument(
        "--host",
        type=str,
        dest="server_host",
        default=ServerArgs.server_host,
        help="The host address for the server.",
    )

    parser.add_argument(
        "--port",
        type=int,
        dest="server_port",
        default=ServerArgs.server_port,
        help="The port number for the server to listen on.",
    )

    parser.add_argument(
        "--cuda-graph-max-bs",
        "--graph",
        type=int,
        default=ServerArgs.cuda_graph_max_bs,
        help="The maximum batch size for CUDA graph capture. None means auto-tuning based on the GPU memory.",
    )

    parser.add_argument(
        "--num-tokenizer",
        "--tokenizer-count",
        type=int,
        default=ServerArgs.num_tokenizer,
        help="The number of tokenizer processes to launch. 0 means the tokenizer is shared with the detokenizer.",
    )

    parser.add_argument(
        "--max-prefill-length",
        "--max-extend-length",
        type=int,
        dest="max_extend_tokens",
        default=ServerArgs.max_extend_tokens,
        help="Chunk Prefill maximum chunk size in tokens.",
    )

    parser.add_argument(
        "--num-pages",
        dest="num_page_override",
        type=int,
        default=ServerArgs.num_page_override,
        help="Set the maximum number of pages for KVCache.",
    )

    parser.add_argument(
        "--page-size",
        type=int,
        default=ServerArgs.page_size,
        help="Set the page size for system management.",
    )

    parser.add_argument(
        "--attention-backend",
        "--attn",
        type=validate_attn_backend,
        default=ServerArgs.attention_backend,
        help="The attention backend to use. If two backends are specified,"
        " the first one is used for prefill and the second one for decode.",
    )

    def _positive_int(v: str) -> int:
        n = int(v)
        if n <= 0:
            raise argparse.ArgumentTypeError("must be a positive number of MiB")
        return n

    parser.add_argument(
        "--attention-workspace-mb",
        type=_positive_int,
        default=ServerArgs.attention_workspace_mb,
        help="Float workspace of the flashinfer / TRT-LLM attention backend in MiB (default "
        "128, mini-sglang's original size). flashinfer sizes its prefill split-KV scratch "
        "(batch_prefill_tmp_v) inside plan() from the device grid, so it cannot be computed "
        "here; observed on GB200: Qwen3-32B with an 8192-token prefill batch needed 140 MiB "
        "for tmp_v alone. Use >= 256 on prefill-only (PD) instances with large models.",
    )

    parser.add_argument(
        "--model-source",
        type=str,
        default="huggingface",
        choices=["huggingface", "modelscope"],
        help="The source to download model from. Either 'huggingface' or 'modelscope'.",
    )

    parser.add_argument(
        "--cache-type",
        type=str,
        default=ServerArgs.cache_type,
        choices=SUPPORTED_CACHE_MANAGER.supported_names(),
        help="The KV cache management strategy.",
    )

    parser.add_argument(
        "--moe-backend",
        default=ServerArgs.moe_backend,
        choices=["auto"] + SUPPORTED_MOE_BACKENDS.supported_names(),
        help="The MoE backend to use.",
    )

    parser.add_argument(
        "--disaggregation-mode",
        type=str,
        default=ServerArgs.disaggregation_mode,
        choices=["null", "prefill", "decode"],
        help="PD disaggregation role of this instance (null = colocated).",
    )

    parser.add_argument(
        "--disaggregation-bootstrap-port",
        type=int,
        default=ServerArgs.disaggregation_bootstrap_port,
        help="Prefill only: TCP port where decode instances connect (bootstrap + control).",
    )

    parser.add_argument(
        "--disaggregation-transfer-backend",
        type=str,
        default=ServerArgs.disaggregation_transfer_backend,
        choices=["mooncake"],
        help="KV transfer engine (push: P writes into D).",
    )

    parser.add_argument(
        "--disaggregation-ib-device",
        type=str,
        default=ServerArgs.disaggregation_ib_device,
        help="RDMA device(s) for Mooncake, e.g. mlx5_0. Required: never chosen automatically.",
    )

    parser.add_argument(
        "--disaggregation-hostname",
        type=str,
        default=ServerArgs.disaggregation_hostname,
        help="Host name or IP other instances use to reach this one's transfer engine.",
    )

    parser.add_argument(
        "--disable-disaggregation-gpu-flush",
        action="store_false",
        dest="disaggregation_gpu_flush",
        help="Decode only: skip cudaDeviceFlushGPUDirectRDMAWrites before the landing is recorded "
        "(on by default, the contract; only for experiments).",
    )

    parser.add_argument(
        "--disaggregation-bootstrap-timeout",
        type=float,
        default=ServerArgs.disaggregation_bootstrap_timeout,
    )

    parser.add_argument(
        "--disaggregation-waiting-timeout",
        type=float,
        default=ServerArgs.disaggregation_waiting_timeout,
        help="Decode only: seconds to wait for the KV; on expiry the pages are quarantined.",
    )

    parser.add_argument(
        "--disaggregation-ledger-check-every",
        type=int,
        default=ServerArgs.disaggregation_ledger_check_every,
        help="Full ledger invariant scan every N ledger calls (0 = only when idle).",
    )

    parser.add_argument(
        "--disaggregation-kv-checksum",
        action="store_true",
        help="Per-write KV checksum: P sums every posted KV slab before p_post and sends it in "
        "kv_done; D recomputes after the flush, before accepting the landing (set on P and D).",
    )

    parser.add_argument(
        "--disaggregation-kv-checksum-fatal",
        action="store_true",
        help="Decode only: stop the process on a checksum mismatch (default: quarantine the "
        "pages and fail the request with an error).",
    )

    parser.add_argument(
        "--disaggregation-stats-port",
        type=int,
        default=ServerArgs.disaggregation_stats_port,
        help="Serve GET http://127.0.0.1:<port>/pd_stats from the scheduler (0 = off).",
    )

    def _positive_seconds(v: str) -> float:
        x = float(v)
        if not x > 0:
            raise argparse.ArgumentTypeError(f"must be > 0 seconds, got {v}")
        return x

    parser.add_argument(
        "--disaggregation-ack-timeout",
        type=_positive_seconds,
        default=ServerArgs.disaggregation_ack_timeout,
        help="Decode only: seconds to wait for P's acknowledgement of an abort; without it the "
        "exposed pages are quarantined (a timeout is never stopped evidence).",
    )

    parser.add_argument(
        "--disaggregation-row-check",
        choices=["auto", "on", "off"],
        default=ServerArgs.disaggregation_row_check,
        help="Page-table row check (red team page-table row check).  The kernels take the KV slots computed by "
        "the ledger core (k_launch), so 'auto' runs the check only for attention backends that "
        "still read the page table (trtllm, fa); 'on' = debug cross-check (row check plus core "
        "arrays == page-table gather every step, one host sync); 'off' = benchmarking only.",
    )
    parser.add_argument(
        "--disable-disaggregation-row-check",
        action="store_const",
        const="off",
        dest="disaggregation_row_check",
        help="Same as --disaggregation-row-check off (06b6baf spelling).",
    )

    parser.add_argument(
        "--shell-mode",
        action="store_true",
        help="Run the server in shell mode.",
    )

    # Parse arguments
    kwargs = parser.parse_args(args).__dict__.copy()

    # resolve some arguments
    run_shell |= kwargs.pop("shell_mode")
    if run_shell:
        kwargs["cuda_graph_max_bs"] = 1
        kwargs["max_running_req"] = 1
        kwargs["silent_output"] = True

    if kwargs["model_path"].startswith("~"):
        kwargs["model_path"] = os.path.expanduser(kwargs["model_path"])

    if kwargs["model_source"] == "modelscope":
        model_path = kwargs["model_path"]
        if not os.path.isdir(model_path):
            from modelscope import snapshot_download

            ignore_patterns = []
            if kwargs["use_dummy_weight"]:
                ignore_patterns = ["*.bin", "*.safetensors", "*.pt", "*.ckpt"]
            model_path = snapshot_download(model_path, ignore_patterns=ignore_patterns)
            kwargs["model_path"] = model_path
    del kwargs["model_source"]

    if (dtype_str := kwargs["dtype"]) == "auto":
        from minisgl.utils import cached_load_hf_config

        dtype_str = cached_load_hf_config(kwargs["model_path"]).dtype

    DTYPE_MAP = {
        "float16": torch.float16,
        "bfloat16": torch.bfloat16,
        "float32": torch.float32,
    }
    kwargs["dtype"] = DTYPE_MAP[dtype_str] if isinstance(dtype_str, str) else dtype_str
    kwargs["tp_info"] = DistributedInfo(0, kwargs["tensor_parallel_size"])
    del kwargs["tensor_parallel_size"]

    result = ServerArgs(**kwargs)
    logger = init_logger(__name__)
    logger.info(f"Parsed arguments:\n{result}")
    return result, run_shell
