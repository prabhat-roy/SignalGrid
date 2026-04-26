# migration-service

Service in the **order** domain of SignalGrid.

**Language:** Go · **Port:** 50083

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/migration-service/](../../../helm/charts/migration-service/) — Helm chart
- [manifests/order/migration-service/](../../../manifests/order/migration-service/) — Raw K8s manifests
