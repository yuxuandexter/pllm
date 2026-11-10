#!/usr/bin/env bash
# observed existence check, adapted from the original trace runner; no version fallback.
set -euo pipefail
(( $# == 2 )) || { echo 'usage: run_tv.sh EXTRACTED_DIRECTORY RUN_NAME' >&2; exit 2; }
tdir=$(realpath "$1") oname=$2
[[ $oname =~ ^[a-zA-Z0-9_-]+$ ]] || exit 2
here=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
base=${TRACE_BASE:?TRACE_BASE must name a writable run directory}
odir=$base/out/$oname
mkdir -p "$(dirname "$odir")"
mkdir "$odir"
: > "$odir/$oname.tsv"
shopt -s nullglob
traces=("$tdir"/TL_*.tla)
(( ${#traces[@]} )) || exit 4
metaval() { sed -n "s/^$2=//p" "$1" | head -1; }
status=0
for tla in "${traces[@]}"; do
  module=$(basename "$tla" .tla); name=${module#TL_}
  work=$base/work/$oname/$name
  mkdir -p "$(dirname "$work")"
  mkdir "$work"
  cp "$here/PdCore.tla" "$work/PdCore.tla"
  cp "$here/PdTrace.tla" "$work/PdTrace.tla"
  cp "$tla" "$tdir/$module.cfg" "$work/"
  meta=$tdir/$name.meta out=$odir/$name.out
  [[ -f $meta && $(metaval "$meta" protocol) == observed ]] || exit 4
  len=$(grep -c '^  \[k |-> ' "$tla")
  rc=0
  TLC_WORKERS=1 timeout --foreground "${TV_TIMEOUT:-600}" bash "$here/../spec/tlc.sh" \
    "$work" "$module" -difftrace -config "$module.cfg" > "$out" 2>&1 || rc=$?
  raw=INCONCLUSIVE
  if (( rc == 12 )) && grep -q 'Invariant TraceNotDone is violated' "$out" &&
      grep -q 'The behavior up to this point' "$out" && grep -q 'Finished in' "$out"; then
    raw=CONSUMED
  elif (( rc == 0 )) && grep -q 'Model checking completed. No error has been found.' "$out" &&
      grep -q '0 states left on queue' "$out" && grep -q 'Finished in' "$out"; then
    raw=NOT_CONSUMED
  fi
  if grep -Eq 'TLC threw|OutOfMemory|StackOverflow|^Error: (The error occurred|Attempted|Evaluating|Assumption)' "$out"; then raw=INCONCLUSIVE; fi
  reached=$(grep -o '<<"PDTRACE_REACHED_L", [0-9]*>>' "$out" | sed 's/[^0-9]//g' | sort -n | tail -1 || true)
  states=$(grep -o '[0-9,]* distinct states found' "$out" | tail -1 | cut -d' ' -f1 || true)
  [[ $raw != CONSUMED ]] || reached=$((len+1))
  env=$(metaval "$meta" env); outcome=$(metaval "$meta" outcome); err=$(metaval "$meta" error)
  verdict=$raw
  if [[ -n $err ]]; then verdict=ERROR-$err
  elif [[ $raw == CONSUMED && $outcome != passed ]]; then verdict=RUN-${outcome:-unknown}; fi
  printf '%s\t%s\t%s/%s\t%s\t%s\t%s\t%s\t%s\t%s\n' \
    "$name" "$verdict" "${reached:-?}" "$len" "${states:-?}" "$rc" "$raw" "${env:--}" "${outcome:--}" "${err:--}" >> "$odir/$oname.tsv"
  [[ $verdict == CONSUMED ]] || status=1
done
exit "$status"
