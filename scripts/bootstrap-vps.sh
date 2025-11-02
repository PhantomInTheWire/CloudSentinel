#!/usr/bin/env bash
set -e
apt update && apt install -y docker.io docker-compose git
useradd -m deploy || true
su - deploy -c "git clone https://github.com/PhantomInTheWire/CloudSentinel.git /opt/cloudsentinel"
cd /opt/cloudsentinel/infra
docker compose up -d