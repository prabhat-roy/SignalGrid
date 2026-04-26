# Getting Started

> Quickstart for developers joining SignalGrid. For the full architecture, read
> [README.md](README.md) and [CLAUDE.md](CLAUDE.md).

---

## Prerequisites

- Docker 24+ and Docker Compose v2
- Make
- Git
- A POSIX shell (bash / zsh)

Language toolchains (install only what you need for the services you'll touch):

| Language | Version | Install |
|---|---|---|
| Go | 1.24+ | <https://go.dev/dl/> |
| Java | 21 | <https://adoptium.net/> |
| Kotlin | 2.x | bundled with Gradle |
| Python | 3.12+ | <https://www.python.org/> |
| Rust | 1.80+ | <https://rustup.rs/> |
| Erlang/OTP | 27+ | <https://www.erlang.org/downloads> |
| Elixir | 1.17+ | <https://elixir-lang.org/install.html> |
| Scala | 3.5+ (with sbt) | <https://www.scala-lang.org/> |
| Node.js | 22+ | <https://nodejs.org/> |

Optional but recommended:

- `kind` or `minikube` (local Kubernetes)
- `helm` v3
- `buf` (proto codegen)
- `kubectl` v1.30+

---

## First-time setup

```bash
# 1. Clone and enter the project
git clone https://github.com/prabhat-roy/SignalGrid
cd SignalGrid

# 2. Copy the env template
cp .env.example .env

# 3. Install local dev tooling
make bootstrap

# 4. Start the local stack (Postgres, Cassandra, TimescaleDB, ClickHouse,
#    Redis, Kafka, MinIO, Keycloak, Vault, signalling simulators)
make compose-up

# 5. Verify services are healthy
docker compose ps
```

---

## Running tests

```bash
make test         # all tests across all services
make lint         # lint everything
make fmt          # format everything
```

---

## Working on a service

Each service lives under `src/<domain>/<service>/` and has its own `Makefile`.

```bash
cd src/<domain>/<service>
make run          # start the service against the local stack
make test         # service-local tests
```

---

## Generating proto bindings

```bash
make proto        # regenerates all gRPC bindings from proto/
```

---

## Deploying to local Kubernetes

```bash
kind create cluster --name signalgrid-local
make deploy-local
kubectl port-forward svc/api-gateway 8080:80
```

---

## Where things live

| You want… | Look in… |
|---|---|
| Project overview | [README.md](README.md) |
| Architecture and rules for Claude | [CLAUDE.md](CLAUDE.md) |
| Service code | `src/<domain>/<service>/` |
| gRPC schemas | `proto/` |
| Kafka event schemas | `events/` |
| Helm charts | `helm/charts/` |
| Terraform / OpenTofu | `infra/` |
| CI pipelines | `ci/` |
| GitOps configs | `gitops/` |
| Observability configs | `observability/` |
| Architecture decisions | `docs/adr/` |
| Operational runbooks | `docs/runbooks/` |
| Lawful-intercept silo | `security/cilium/`, `security/opa/policies/lawful-intercept-*` |

---

## Help

- ADRs in `docs/adr/` capture major architectural decisions
- Service-level questions: see the README inside the service directory
- Anything missing: check [CLAUDE.md](CLAUDE.md), or open a PR with the change you'd like
