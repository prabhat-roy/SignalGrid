# rating-engine

Service in the **billing** domain of SignalGrid.

**Language:** Go · **Port:** 50101

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rating-engine/](../../../helm/charts/rating-engine/) — Helm chart
- [manifests/billing/rating-engine/](../../../manifests/billing/rating-engine/) — Raw K8s manifests
