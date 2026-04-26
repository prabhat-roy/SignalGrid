# src — SignalGrid services

17 telecom business domains, ~100 microservices.

## Domains

| # | Folder | Description |
|---|---|---|
| 1 | `subscriber/` | Subscriber, SIM, number, eSIM, MNP |
| 2 | `product/` | Catalogue, bundle, plan, addon, promotion |
| 3 | `order/` | Order, provisioning, activation, port-in, migration |
| 4 | `billing/` | Billing, mediation, rating, invoice, dunning |
| 5 | `inventory/` | Inventory, topology, site, NE, fiber |
| 6 | `nms/` | FM, PM, CM, alarm correlation |
| 7 | `5g-core/` | AMF, SMF, UPF, PCF, NSSF, UDM, AUSF, NRF |
| 8 | `roaming/` | TAP, RAP, OCS, AA |
| 9 | `iot/` | IoT, M2M, APN, device, fleet |
| 10 | `customer/` | Self-service, payment, support, usage, top-up |
| 11 | `channel/` | Dealer, POS, commission, retail, B2B |
| 12 | `fraud/` | FRA, revenue assurance, bypass, SIM swap, wangiri |
| 13 | `regulatory/` | Lawful intercept, MNP, emergency, OFCOM |
| 14 | `analytics/` | Network, revenue, churn, capacity, CX |
| 15 | `vas/` | VAS, SMS gateway, USSD, RBT, content billing |
| 16 | `identity/` | Auth, subscriber SSO, operator SSO, MFA, API key |
| 17 | `platform/` | api-gateway, BFFs, GraphQL gateway |

Plus signalling and stream-processing services that span domains:

- `signalling/` — DIAMETER, SS7/SIGTRAN, SIP gateways (Erlang/OTP) + Rust adapters
- `stream/` — Flink Scala jobs (CDR mediation, fraud, revenue assurance, anomaly detection)
