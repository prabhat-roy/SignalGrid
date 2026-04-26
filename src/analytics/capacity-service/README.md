# capacity-service

Service in the **analytics** domain of SignalGrid.

**Language:** Go · **Port:** 50303

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/capacity-service/](../../../helm/charts/capacity-service/) — Helm chart
- [manifests/analytics/capacity-service/](../../../manifests/analytics/capacity-service/) — Raw K8s manifests
