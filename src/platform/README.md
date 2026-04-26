# platform

Edge ingress and BFFs.

| Service | Language | Port | Description |
|---|---|---|---|
| api-gateway | Go | 50000 | TM Forum Open API ingress, OAuth2/mTLS, rate limit |
| self-svc-bff | Go | 50001 | BFF for customer self-service portal (Next.js) |
| noc-bff | Go | 50002 | BFF for NOC dashboard (Angular) |
| partner-bff | Go | 50003 | BFF for partner / MVNO portal |
| graphql-gateway | Go | 50004 | Federated GraphQL across BSS/OSS |
| ops-bff | Go | 50005 | BFF for operations portal (React) |
