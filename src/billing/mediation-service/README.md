# mediation-service

Service in the **billing** domain of SignalGrid.

**Language:** Go · **Port:** 50100

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/mediation-service/](../../../helm/charts/mediation-service/) — Helm chart
- [manifests/billing/mediation-service/](../../../manifests/billing/mediation-service/) — Raw K8s manifests
