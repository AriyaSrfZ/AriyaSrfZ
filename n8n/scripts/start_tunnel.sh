#!/usr/bin/env bash
# Ensures local port 5678 is tunneled to Smart-DB n8n server (192.168.1.136:5678)
set -euo pipefail

TARGET_HOST="smart-db"
LOCAL_PORT="5678"
REMOTE_PORT="5678"

if ss -tuln | grep -q ":${LOCAL_PORT} "; then
    echo "[OK] Local port ${LOCAL_PORT} is already listening."
    exit 0
fi

echo "[*] Establishing SSH tunnel to ${TARGET_HOST}:${REMOTE_PORT}..."
ssh -o ConnectTimeout=5 -o ServerAliveInterval=30 -o ServerAliveCountMax=3 -f -N -L "0.0.0.0:${LOCAL_PORT}:127.0.0.1:${REMOTE_PORT}" "${TARGET_HOST}"

if curl -s -I "http://127.0.0.1:${LOCAL_PORT}" >/dev/null; then
    echo "[SUCCESS] Tunnel online. n8n available at: http://localhost:${LOCAL_PORT}"
else
    echo "[WARN] Tunnel initiated, verifying service response..."
fi
