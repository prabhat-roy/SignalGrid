#!/usr/bin/env bash
set -euo pipefail
NS="${1:-signalgrid}"
TS=$(date -u +%Y%m%dT%H%M%S)
velero backup create "signalgrid-$TS" --include-namespaces "$NS" --wait
