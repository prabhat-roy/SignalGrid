# billing

Billing, mediation, rating, invoicing, dunning (TM Forum TMF678).

| Service | Language | Port | Description |
|---|---|---|---|
| billing-service | Java | 50080 | TMF678 billing master |
| mediation-service | Go | 50081 | CDR mediation orchestrator |
| rating-engine | Java | 50082 | Real-time rating (sub-10ms prepaid) |
| invoice-service | Java | 50083 | Invoice generation + PDF |
| dunning-service | Java | 50084 | Dunning workflow |
| tax-engine | Java | 50085 | Tax calculation by jurisdiction |

CDR processing is idempotent on `(network_element, charging_id)` â€” see
[security/opa/policies/cdr-idempotency.rego](../../security/opa/policies/cdr-idempotency.rego).
