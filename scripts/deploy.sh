#!/usr/bin/env bash
set -e
cd /opt/cloudsentinel
git pull origin master
docker compose -f infra/docker-compose.yml pull
docker compose -f infra/docker-compose.yml up -d --remove-orphans
docker system prune -f