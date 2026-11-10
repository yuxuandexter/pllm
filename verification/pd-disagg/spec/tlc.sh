#!/usr/bin/env bash
# Low-level TLC invocation. Call check.py for a fail-closed safety verdict.
set -euo pipefail
(( $# >= 2 )) || { echo 'usage: tlc.sh DIRECTORY MODULE [TLC arguments]' >&2; exit 2; }
: "${TLA2TOOLS_JAR:?Set TLA2TOOLS_JAR to a local tla2tools.jar}"
jar=$(realpath "$TLA2TOOLS_JAR")
dir=$1 module=$2; shift 2
cd "$dir"
mkdir -p states
exec "${JAVA:-java}" -Djava.io.tmpdir="$PWD/states" -Xmx"${TLC_XMX:-3g}" -Xss8m \
  -XX:+UseParallelGC -XX:ParallelGCThreads=2 -XX:CICompilerCount=2 \
  -XX:CompressedClassSpaceSize=256m -XX:ReservedCodeCacheSize=128m -XX:MaxMetaspaceSize=256m \
  -cp "$jar" tlc2.TLC -workers "${TLC_WORKERS:-1}" -metadir "$PWD/states" "$@" "$module"
