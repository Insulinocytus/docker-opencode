#!/usr/bin/env bash
set -euo pipefail

PORT="${PORT:-4096}"
BIND_HOST="${OPENCODE_HOSTNAME:-0.0.0.0}"

if ! [[ "$PORT" =~ ^[0-9]+$ ]]; then
  PORT=4096
fi

exec opencode web --hostname "$BIND_HOST" --port "$PORT" --print-logs
