# regulatory

Lawful intercept, MNP clearing, emergency services, OFCOM/FCC reporting.

| Service | Language | Port | Description |
|---|---|---|---|
| lawful-intercept | Java | 50260 | CALEA/ETSI LI mediation function |
| mnp-clearing-service | Java | 50261 | MNP central database integration |
| emergency-service | Java | 50262 | E112 / E911 routing |
| ofcom-reporting | Java | 50263 | OFCOM / FCC / ITU regulatory reports |
| gdpr-dsar-service | Java | 50264 | GDPR DSAR workflow |
| dnc-registry | Java | 50265 | Do-not-call enforcement |

Lawful intercept is a siloed data plane. See:

- `security/opa/policies/lawful-intercept-dual-control.rego` â€” CALEA dual-control change approval
- `security/cilium/` â€” namespace isolation
- Database lives in a separate Postgres cluster with separate keys, audit on every read.
