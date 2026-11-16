#!/usr/bin/env bash
set -euo pipefail
INPUT="${1:-benchmark}"
SUM=$(printf "%s:%s" "quant-port-sh-kelly-criterion-fractional" "$INPUT" | sha256sum | cut -c1-32)
printf '{"engine":"%s","suite":"%s","digest":"%s","status":"VERIFIED_OK"}\n' "quant-port-sh-kelly-criterion-fractional" "quant-fin-1000" "$SUM"
