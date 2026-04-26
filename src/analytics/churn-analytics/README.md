# churn-analytics

Service in the **analytics** domain of SignalGrid.

**Language:** Go · **Port:** 50302

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/churn-analytics/](../../../helm/charts/churn-analytics/) — Helm chart
- [manifests/analytics/churn-analytics/](../../../manifests/analytics/churn-analytics/) — Raw K8s manifests
