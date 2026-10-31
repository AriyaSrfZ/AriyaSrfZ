#!/usr/bin/env bash
# Deploys and imports all workflows from local workflows/ directory into n8n on smart-db
# Usage: ./import_all_workflows.sh [--include-templates]
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKFLOWS_DIR="${SCRIPT_DIR}/../workflows"
TEMPLATES_DIR="${SCRIPT_DIR}/../templates"
REMOTE_HOST="smart-db"
REMOTE_DIR="/home/fersta/n8n_data"

INCLUDE_TEMPLATES=false
for arg in "$@"; do
    case "$arg" in
        --include-templates|-t)
            INCLUDE_TEMPLATES=true
            ;;
    esac
done

echo "[*] Copying production workflow definitions to ${REMOTE_HOST}:${REMOTE_DIR}..."
scp "${WORKFLOWS_DIR}"/*.json "${REMOTE_HOST}:${REMOTE_DIR}/"

if [ "$INCLUDE_TEMPLATES" = true ]; then
    echo "[*] Copying community templates to ${REMOTE_HOST}:${REMOTE_DIR}..."
    scp "${TEMPLATES_DIR}"/*.json "${REMOTE_HOST}:${REMOTE_DIR}/"
fi

echo "[*] Importing production workflows into n8n container..."
for wf in "${WORKFLOWS_DIR}"/*.json; do
    filename="$(basename "$wf")"
    echo " -> Importing ${filename}..."
    ssh "${REMOTE_HOST}" "docker exec -i n8n n8n import:workflow --input=/home/node/.n8n/${filename}"
done

if [ "$INCLUDE_TEMPLATES" = true ]; then
    echo "[*] Importing community templates into n8n container..."
    for tmpl in "${TEMPLATES_DIR}"/*.json; do
        filename="$(basename "$tmpl")"
        echo " -> Importing ${filename}..."
        ssh "${REMOTE_HOST}" "docker exec -i n8n n8n import:workflow --input=/home/node/.n8n/${filename}"
    done
fi

echo "[*] Listing registered workflows in n8n:"
ssh "${REMOTE_HOST}" "docker exec n8n n8n list:workflow"

echo "[*] Restarting n8n to refresh active scheduler..."
ssh "${REMOTE_HOST}" "docker restart n8n"
echo "[SUCCESS] All workflows synced and activated."
