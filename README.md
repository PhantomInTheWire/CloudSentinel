# CloudSentinel Monorepo

This monorepo contains the CloudSentinel application, consisting of a Next.js frontend, backend services (Go GraphQL API, Go workers, FastAPI AI), infrastructure configurations, and deployment scripts.

## Quick Start

```bash
cd infra
docker compose up
```

Services will be available at:
- Frontend: http://localhost:3000
- API: http://localhost:8080
- AI: http://localhost:5001
- Worker: Logs in Docker Compose output

## ⚙️ CI/CD Overview

CloudSentinel uses GitHub Actions for CI/CD:

| Stage | Workflow | Trigger | Description |
|--------|-----------|----------|--------------|
| CI | `.github/workflows/ci.yml` | On PR / push | Lints, type-checks, and builds all services |
| CD | `.github/workflows/cd.yml` | On master merge | Builds + deploys to VPS via SSH |

### Local Preflight
```bash
./scripts/pre-deploy-check.sh
```

### Manual Deployment

```bash
ssh deploy@<your_vps_ip>
./scripts/deploy.sh
```