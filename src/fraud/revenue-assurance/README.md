# revenue-assurance

Service in the **fraud** domain of SignalGrid.

**Language:** Go · **Port:** 50261

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/revenue-assurance/](../../../helm/charts/revenue-assurance/) — Helm chart
- [manifests/fraud/revenue-assurance/](../../../manifests/fraud/revenue-assurance/) — Raw K8s manifests
