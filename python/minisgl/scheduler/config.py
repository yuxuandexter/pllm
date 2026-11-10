from __future__ import annotations

from dataclasses import dataclass, field

from minisgl.engine import EngineConfig


def _get_pid_suffix() -> str:
    import os

    return f".pid={os.getpid()}"


@dataclass(frozen=True)
class SchedulerConfig(EngineConfig):
    max_extend_tokens: int = 8192
    cache_type: str = "radix"
    offline_mode: bool = False

    # PD disaggregation (ledger mode; see python/minisgl/disagg/)
    disaggregation_mode: str = "null"  # null | prefill | decode
    disaggregation_bootstrap_port: int = 8998  # P: where D instances connect
    disaggregation_transfer_backend: str = "mooncake"
    disaggregation_ib_device: str = ""  # required for Mooncake RDMA (no auto choice, the contract)
    disaggregation_hostname: str = "127.0.0.1"  # Mooncake session host of this instance
    disaggregation_gpu_flush: bool = True  # D: cudaDeviceFlushGPUDirectRDMAWrites (the contract)
    disaggregation_bootstrap_timeout: float = 300.0
    disaggregation_waiting_timeout: float = 330.0  # D; longer than P's bootstrap timeout
    disaggregation_ledger_check_every: int = 0  # full ledger scan every N calls (0 = idle only)
    disaggregation_kv_checksum: bool = False  # per-write KV checksum, P computes, D verifies
    disaggregation_kv_checksum_fatal: bool = False  # mismatch stops the process (else quarantine)
    disaggregation_stats_port: int = 0  # GET 127.0.0.1:<port>/pd_stats (0 = off)
    disaggregation_ack_timeout: float = 30.0  # D: abort without ACK for this long -> quarantine
    # page-table row == ledger token_slots before every launch (red team page-table row check).  KernelReadPins: the kernels
    # take the ledger core's arrays, so "auto" runs it only for attention backends that still read
    # the page table; "on" = debug cross-check (also core arrays == page-table gather); "off" =
    # benchmark only
    disaggregation_row_check: str = "auto"

    # networking config
    _unique_suffix: str = field(default_factory=_get_pid_suffix)

    @property
    def zmq_backend_addr(self) -> str:
        return "ipc:///tmp/minisgl_0" + self._unique_suffix

    @property
    def zmq_detokenizer_addr(self) -> str:
        return "ipc:///tmp/minisgl_1" + self._unique_suffix

    @property
    def zmq_scheduler_broadcast_addr(self) -> str:
        return "ipc:///tmp/minisgl_2" + self._unique_suffix

    @property
    def max_forward_len(self) -> int:
        return self.max_extend_tokens

    @property
    def backend_create_detokenizer_link(self) -> bool:
        return True
