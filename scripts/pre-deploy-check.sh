#!/usr/bin/env bash
set -e

echo "[+] Running pre-deploy checks..."
docker compose -f infra/docker-compose.yml config -q
docker compose -f infra/docker-compose.yml build
echo "[+] All good. Ready to deploy!"