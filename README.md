# SignalGrid — Enterprise Telecom & Network Management Platform

Enterprise-grade, cloud-native telecommunications platform built on open source technologies.
Covers the full telecom stack — network inventory, BSS/OSS operations, subscriber management,
billing & mediation, 5G network slicing, IoT connectivity management, roaming, number portability,
and network analytics — designed for MNOs, MVNOs, ISPs, and telecom infrastructure companies.
Compliant with TM Forum Open APIs, 3GPP standards, and GSMA guidelines.

---

## Overview

| Attribute         | Value                                                              |
|-------------------|--------------------------------------------------------------------|
| Type              | BSS · OSS · 5G Core · MVNO Platform · IoT Connectivity             |
| Domains           | 17 business domains                                                |
| Services          | 200+ microservices                                                 |
| Languages         | Go, Java, Kotlin, Python, Rust, Erlang (telecom signalling), Scala |
| Standards         | 3GPP, TM Forum Open APIs, GSMA, DIAMETER, SIP, SS7, SMPP, SNMP   |
| Compliance        | GDPR, CALEA (lawful intercept), OFCOM, FCC, ITU regulations        |
| Databases         | PostgreSQL, Cassandra, Redis, ClickHouse, TimescaleDB, MongoDB     |
| Message Broker    | Apache Kafka, NATS JetStream, RabbitMQ, SMPP (SMS gateway)        |
| Cloud             | AWS (primary), bare-metal (telco workloads), Cloudflare (edge)    |
| Orchestration     | Kubernetes (EKS) + bare-metal K8s (network functions), Helm        |
| Frontend          | React (OSS/BSS ops portal), Angular (network NOC), Next.js (self-service), Flutter (mobile) |

---

## Business Domains

| # | Domain                    | Key Services                                                           |
|---|---------------------------|------------------------------------------------------------------------|
| 1 | Subscriber Management     | subscriber-service, sim-service, number-service, esim-service, mnp    |
| 2 | Product & Offer Catalogue | catalogue-service, bundle-service, plan-service, addon, promotion     |
| 3 | Order Management          | order-service, provisioning-service, activation, port-in, migration   |
| 4 | Billing & Revenue         | billing-service, mediation-service, rating-engine, invoice, dunning   |
| 5 | Network Inventory         | inventory-service, topology-service, site-service, ne-service, fiber  |
| 6 | Network Operations (OSS)  | nms-service, fm-service, pm-service, cm-service, alarm-correlation    |
| 7 | 5G Network Functions      | amf-service, smf-service, upf-service, pcf-service, nssf-service     |
| 8 | Roaming & Interconnect    | roaming-service, tap-service, rap-service, ocs-service, aa-service    |
| 9 | IoT Connectivity          | iot-service, m2m-service, apn-service, device-management, fleet       |
| 10 | Customer Self-Service     | customer-service, payment-service, support, usage-service, top-up    |
| 11 | Channel & Dealer          | dealer-service, pos-service, commission, retail-service, b2b-service  |
| 12 | Fraud Management          | fra-service, revenue-assurance, bypass-detection, sim-swap, wangiri  |
| 13 | Regulatory & Compliance   | lawful-intercept, number-portability, emergency-service, ofcom-report |
| 14 | Analytics & Intelligence  | network-analytics, revenue-analytics, churn-analytics, capacity       |
| 15 | VAS & Content             | vas-service, sms-gateway, ussd-service, rbt-service, content-billing |
| 16 | Identity & Access         | auth-service, subscriber-sso, operator-sso, mfa, api-key             |
| 17 | Platform                  | api-gateway, self-svc-bff, noc-bff, partner-bff, graphql-gateway     |

---

## Architecture

```
    ┌──────────────────────────────────────────────────────────────────┐
    │              Cloudflare Edge (WAF + Global CDN)                  │
    └──────────────────────────┬───────────────────────────────────────┘
                               │
    ┌──────────────────────────▼───────────────────────────────────────┐
    │                       API Gateway (TM Forum Open API)            │
    │          (OAuth2 · mTLS · Rate Limit · Subscriber Auth)          │
    └────┬──────────────┬───────────────┬──────────────┬───────────────┘
         │              │               │              │
  ┌──────▼──┐    ┌──────▼───┐   ┌───────▼──┐   ┌──────▼──────────┐
  │Self-Svc │    │  NOC     │   │ Partner  │   │ Operations     │
  │(Next.js)│    │(Angular) │   │ Portal   │   │  Portal(React) │
  └──────┬──┘    └──────┬───┘   └───────┬──┘   └──────┬──────────┘
         └──────────────┴───────────────┴──────────────┘
                                │ gRPC (Istio mTLS)
    ┌───────────────────────────▼────────────────────────────────────┐
    │                    BSS Layer (Business)                        │
    │  ┌──────────┐  ┌────────────┐  ┌────────────┐  ┌────────────┐  │
    │  │Subscriber│  │  Billing   │  │  Order     │  │  Fraud     │  │
    │  │  Mgmt    │  │  & Rating  │  │  & Provn   │  │  Mgmt      │  │
    │  └──────────┘  └────────────┘  └────────────┘  └────────────┘  │
    └──────────────────────┬─────────────────────────────────────────┘
                           │ Kafka (Telecom Events / CDRs)
    ┌──────────────────────▼─────────────────────────────────────────┐
    │                    OSS Layer (Network)                          │
    │  ┌────────────────┐    ┌──────────────┐    ┌─────────────────┐ │
    │  │  5G Core NFs   │    │  Network     │    │  Roaming &      │ │
    │  │ (AMF/SMF/UPF)  │    │  Inventory   │    │  Interconnect   │ │
    │  └────────┬───────┘    └──────┬───────┘    └────────┬────────┘ │
    │           │                   │                      │          │
    │   Radio Access Network   Core Network            Partner NWs   │
    └────────────────────────────────────────────────────────────────┘
```

---

## Tech Stack

### Telecom Standards & Protocols
- **3GPP 5G**: SA (Standalone) 5G core — AMF, SMF, UPF, PCF, NSSF as cloud-native network functions
- **DIAMETER**: Authentication, authorisation, accounting protocol (AAA) for LTE/5G core
- **SIP / VoIP**: Session Initiation Protocol — voice and video call signalling
- **SS7 / SIGTRAN**: Legacy signalling (SMS-MO/MT, HLR queries) via SIGTRAN adaptation
- **SMPP**: Short Message Peer-to-Peer — bulk SMS gateway and termination
- **TM Forum Open APIs**: Standardised BSS/OSS APIs (TMF620 Product Catalogue, TMF641 Service Activation)
- **TAP3 / RAP**: Transferred Account Procedure — GSM roaming data exchange between operators

### Infrastructure
- **Kubernetes**: EKS (BSS/analytics) + bare-metal K8s (network functions — ultra-low latency)
- **Telecom Workloads**: Erlang/OTP (telecom signalling gateway — SIGTRAN, SS7, DIAMETER) for carrier-grade reliability
- **Mediation**: High-throughput CDR (Call Detail Record) mediation — 100K+ CDRs/second via Kafka + Flink
- **Time-Series**: TimescaleDB (network KPIs, utilisation trends); ClickHouse (CDR analytics, revenue reporting)
- **Real-time Rating**: In-memory Hazelcast-backed rating cache — sub-10ms balance check for prepaid subscribers

### CI/CD & GitOps
- **CI**: Jenkins (primary), GitLab CI (self-hosted for OAM network builds), Tekton
- **CD**: ArgoCD (BSS layer), Helm Operator (network functions — controlled rollout with traffic drain)
- **IaC**: Terraform (EKS + VPC), Ansible (bare-metal server provisioning and hardening)
- **Secrets**: HashiCorp Vault (roaming partner credentials, DIAMETER shared secrets)

### Observability
- **Metrics**: Prometheus + Grafana (BHCA, Erlang B blocking, network utilisation, CDR processing lag)
- **Logs**: Loki + Fluent Bit (CALEA-compliant lawful intercept audit logs — immutable, law enforcement access)
- **Traces**: Jaeger + OpenTelemetry (trace subscriber session from attach → service request → CDR → billing)
- **NOC Dashboard**: Real-time network topology, alarm correlation, KPI trends (Grafana + ClickHouse)
- **SLOs**: CDR processing latency < 5s, provisioning SLA < 30s, billing accuracy > 99.99%

### Security (GDPR + CALEA)
- **Identity**: Keycloak (subscriber self-service + social login), operator MFA mandatory for NOC access
- **Lawful Intercept**: CALEA/ETSI LI-compliant interception (mediation function to law enforcement agency)
- **SIM Swap Fraud**: Real-time SIM swap detection (velocity check + biometric re-auth) — prevents account takeover
- **SS7 Security**: SS7 firewall (open-source STP) — blocks location tracking and IMSI catchers
- **Network**: Cilium eBPF (IT), dedicated VLANs (OAM), Istio mTLS, Cloudflare WAF

### AI / ML (Network Intelligence)
- **Network Anomaly Detection**: LSTM autoencoder on KPI timeseries — detects performance degradation before customer impact
- **Churn Prediction**: Gradient Boosting on usage patterns, ARPU trend, complaints history — 30-day churn score per subscriber
- **Revenue Assurance**: ML-based discrepancy detection (network usage vs. CDR vs. billing) — identifies revenue leakage
- **Capacity Planning**: Prophet + XGBoost — 90-day traffic forecast per cell site for capacity upgrade planning
- **Fraud Detection**: Real-time Wangiri (missed call) and bypass fraud detection on SMPP/SIP traffic
- **Predictive Maintenance**: Anomaly detection on network element KPIs — predicts hardware failure 48h ahead
- **Dynamic QoS**: RL agent for 5G network slicing — allocates network resources based on SLA and real-time demand

---

## Key Design Decisions

1. **Erlang for signalling gateway**: DIAMETER, SIP, and SS7/SIGTRAN processing in Erlang/OTP — carrier-grade fault tolerance (9 nines), hot-code upgrades without downtime
2. **CDR mediation as a stream**: Call Detail Records processed in real-time via Kafka + Flink — no batch mediation window; enables real-time balance deduction for prepaid and near-real-time billing for postpaid
3. **TM Forum API compliance**: All BSS APIs expose TM Forum Open API schemas — plug-and-play with third-party OSS/BSS components, reduces integration cost
4. **5G core as cloud-native NFs**: AMF/SMF/UPF implemented as standard Kubernetes pods (not VMs) — horizontal scaling during peak hours, NSSF-driven network slicing for enterprise SLAs
5. **Multi-MVNO platform**: Full MVNO isolation at subscriber, product, billing, and network level — single SignalGrid deployment hosts multiple MVNOs with separate branding and tariff plans
6. **Revenue assurance by design**: Network usage events, CDRs, and billing records stored in separate Kafka topics and reconciled by dedicated service — discrepancies trigger alerts before revenue is lost

---

## Compliance Controls

| Standard          | Implementation                                                         |
|-------------------|------------------------------------------------------------------------|
| GDPR / ePrivacy   | Subscriber PII minimisation, consent, location data retention limits   |
| CALEA             | Lawful intercept mediation function — LEA delivery interface           |
| OFCOM / FCC       | Number portability, emergency services, consumer protection rules      |
| GSMA SG.24        | SIM swap fraud prevention — biometric re-authentication requirement    |
| 3GPP TS 33.501    | 5G SA security architecture — subscriber identity privacy (SUCI)       |

---

## Status

- [ ] Architecture design & telecom data model
- [ ] Service registry & proto definitions
- [ ] BSS core (subscriber, product catalogue, billing)
- [ ] Mediation engine (CDR collection + rating)
- [ ] SS7/DIAMETER signalling gateway (Erlang)
- [ ] Service skeletons (healthz, metrics)
- [ ] Docker Compose (local dev with network simulators)
- [ ] Helm charts (per-service)
- [ ] CI/CD pipelines (Jenkins, GitLab CI)
- [ ] GitOps (ArgoCD)
- [ ] 5G core network functions (AMF/SMF/UPF)
- [ ] Revenue assurance analytics pipeline
