#!/usr/bin/env bash
set -euo pipefail
root=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
export PYTHONPATH="$root/python${PYTHONPATH:+:$PYTHONPATH}"
export PYTHONDONTWRITEBYTECODE=1 CUDA_VISIBLE_DEVICES=
export OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 MINISGL_PD_LEDGER_IMPL=python
export MALLOC_ARENA_MAX=${MALLOC_ARENA_MAX:-2}
exec "${PYTHON:-python3}" -B -m pytest -q -o addopts='' -p no:cacheprovider "$root/tests/disagg" "$@"
