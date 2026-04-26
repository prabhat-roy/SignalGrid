# network-analytics

Service in the **analytics** domain of SignalGrid.

**Language:** Go · **Port:** 50300

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/network-analytics/](../../../helm/charts/network-analytics/) — Helm chart
- [manifests/analytics/network-analytics/](../../../manifests/analytics/network-analytics/) — Raw K8s manifests
