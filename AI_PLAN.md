# AI_PLAN.md — SignalGrid (Telco / 5G Operator Platform)

> Hierarchical AI/ML strategy. Reuses the Paperclip / OpenClaw / NemoClaw
> agent platform first defined in [ShopOS/AI.md](../ShopOS/AI.md). This file
> is the SignalGrid-specific specialisation.

---

## 1. Why AI in SignalGrid

A modern telco runs on streaming KPIs (RAN, core, transport, billing,
fraud) at PB scale. AI is the operating system for:

- **RAN optimisation** — coverage, capacity, load balancing, energy.
- **Network anomaly detection** — silent failures, slow degradations.
- **Customer-experience prediction** — churn, NPS, complaint forecasting.
- **Voice / chat care agents** — multilingual, low-latency, 24/7.
- **Fraud detection** — IRSF, SIM-swap, Wangiri, traffic pumping.

3GPP, ETSI ZSM (zero-touch service management), TM Forum AI/ML APIs
provide the standards the AI plane plugs into.

---

## 2. Domain-Specific AI/ML Use Cases

| # | Use case | Domain | Model class | Latency budget |
|---|----------|--------|-------------|----------------|
| 1 | Network anomaly + silent-failure detection | ran, core | Autoencoder + Isolation Forest + LSTM | streaming |
| 2 | RAN load-balancing / traffic-steering | ran | RL + LightGBM priors | <30 s/epoch |
| 3 | Cell-energy savings (sleep modes) | ran, sustainability | RL + forecast | hourly |
| 4 | Customer churn prediction | crm, retention | LightGBM + GNN on family-plan graph | nightly |
| 5 | Voice care agent (multilingual) | care | Whisper + Llama 3.1 70B + tool-calling | <1.2 s |
| 6 | Chat care agent | care | Llama 3.1 70B + RAG over plans / device manuals | <1.5 s |
| 7 | IRSF + Wangiri + SIM-swap + bypass fraud | fraud | GBM + Graph + sequence model | <100 ms streaming |
| 8 | Demand forecast (data, voice, SMS, IoT) | planning | NHITS + Temporal Fusion Transformer | hourly |
| 9 | Complaint root-cause + ticket auto-route | care, ops | Llama 3.1 70B + KG + classifier | <1 s |
| 10 | Field-engineer dispatch optimisation | field-ops | OR-Tools + LightGBM travel-time priors | <30 s |
| 11 | Beam-management (mMIMO) — proxy with AI | ran | Custom RL / supervised proxies | streaming |
| 12 | Fraud / quality-of-service NLP on call recordings | fraud, quality | Whisper + Llama 3.1 + sentiment | nightly |

---

## 3. Hierarchical Agent Architecture

Reuses **OpenClaw** / **Paperclip** / **NemoClaw** from `ShopOS/AI.md`.

### Tier 0 — Master Architect Agent

`signal-architect` — researches AI tooling, proposes services, on-boards
Tier-1 leads, weekly written report. Read-only on prod.

### Tier 1 — Division Leads (5)

| Agent | Scope |
|-------|-------|
| `signal-dev-lead`        | Backend/frontend service code |
| `signal-devops-lead`     | Helm, GitOps, infra, CI |
| `signal-devsecops-lead`  | OPA, Vault, Cilium, Falco, GSMA NESAS, ETSI |
| `signal-dataml-lead`     | Feature store, training, drift, edge models |
| `signal-platform-lead`   | Cross-cutting (idempotency, saga, outbox), edge runtime |

### Tier 2 — Specialist Agents

**By language**: Go, Java, Kotlin, Python, Node, Rust, C++ (RAN bridge),
TypeScript.

**By tool**: PostgreSQL, MongoDB, Redis, Cassandra, ClickHouse,
TimescaleDB, Kafka, NATS, RabbitMQ, MQTT, Vault, Keycloak, OPA, Kyverno,
Falco, Cilium, Istio, ArgoCD, Argo Workflows, Prometheus, Grafana, Loki,
Jaeger, OpenTelemetry, MinIO, Trivy, Cosign, OpenSearch, Pulsar, Druid,
Camunda, OpenFGA, Wazuh, **Open5GS** (5G core), **srsRAN** (RAN),
**Magma** (access gateway), **OAI** (OpenAirInterface), **Free5GC**,
**Kamailio / OpenSIPS** (VoLTE/VoNR), **OpenCharge** (charging),
**Asterisk / FreeSWITCH** (voice), **Apache Pinot** (real-time KPIs).

**By service** — one agent per microservice (~210). Owns README,
OpenAPI, tests, CHANGELOG, deps, /healthz.

### Tier 3 — Ephemeral Workers

Spawned for retraining churn weekly, generating IRSF runbooks, building
edge bundles for cell-site analytics.

### Lifecycle

Research → Document → Implement → Test → Review → Deploy → Monitor →
Respond → Upgrade → Report. Network-availability freeze: NemoClaw blocks
agent-driven config pushes during peak hours and during P1 incidents.

---

## 4. Separate AI Infrastructure

```
ai-platform/
├── cluster: signal-ai-{aws,gcp,azure}    ← cloud GPU pool
├── cluster: signal-ai-edge               ← MEC nodes (cell-site clusters)
├── namespace: signal-ai-control           ← Paperclip
├── namespace: signal-ai-agents            ← OpenClaw runtime
├── namespace: signal-ai-sandbox           ← NemoClaw
├── namespace: signal-ai-models            ← vLLM, Ollama, LiteLLM, Triton
├── namespace: signal-ai-data              ← Qdrant, Weaviate, MinIO, MLflow
├── namespace: signal-ai-obs               ← Langfuse, Phoenix
└── namespace: signal-ai-pipelines         ← Argo Workflows
```

### Hardware

- **Cloud / regional DC**: A100 for training; A10G/L4 for LLM inference.
- **MEC** (multi-access edge): k3s on commodity x86 with optional GPU
  for streaming anomaly detection and voice STT.

### Software stack

Standard set + telco bridges listed in tool-agents above. Voice via
**Whisper + Coqui TTS** for self-hosted 24/7 care.

### Data isolation

- Per-MNO / per-country AI data planes (data-residency-strict).
- CDR / xDR / signalling data hashed before any LLM input.
- Vector DB sharded per market.

---

## 5. Compliance & Guardrails

| Control | Mechanism |
|---------|-----------|
| GDPR / CCPA / DPDP | PII tokenisation; right-to-erasure |
| Lawful intercept (LI) | AI never reads LI streams; physical / network separation |
| GSMA NESAS / ETSI / TM Forum | OPA policies aligned with TM Forum AI/ML API + ETSI ZSM |
| 3GPP fairness on RAN | RL traffic-steering bounded by hard constraints; never violates QoS SLAs |
| Care-agent honesty | NemoClaw blocks the LLM from inventing tariff terms; RAG-only on plan docs |
| Fraud / privacy balance | Fraud detection always logs hashed identifiers; raw IDs only on flagged cases reviewed by humans |

---

## 6. Implementation Roadmap

| Month | Milestone |
|-------|-----------|
| 1 | `signal-ai-*` cloud cluster up; vLLM Llama 3.1 70B |
| 2 | Paperclip + NemoClaw; Tier-0 architect live |
| 3 | Tier-1 leads; anomaly v0 shadow on KPI stream |
| 4 | Per-language / per-tool Tier-2 agents |
| 5 | Per-service Tier-2 agents (ran → core → care first) |
| 6 | Care chat agent v1; fraud GBM v1 |
| 7 | Churn v1; voice care pilot in 2 markets |
| 8 | RAN energy-savings v1 in 1 market; multi-cloud failover drill |

---

## 7. Cost Envelope (target)

- **Cloud / regional DC infra**: $7,000 – $11,500 / month per market
- **MEC edge (per cell-site cluster)**: $1,200 one-time + $40/month ops
- **No** subscription LLM spend

---

## 8. Cross-References

- Master AI strategy: [ShopOS/AI.md](../ShopOS/AI.md)
- Same Paperclip/OpenClaw/NemoClaw platform across all 15 sibling projects.
