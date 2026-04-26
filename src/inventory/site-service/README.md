# site-service

Service in the **inventory** domain of SignalGrid.

**Language:** Go · **Port:** 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/site-service/](../../../helm/charts/site-service/) — Helm chart
- [manifests/inventory/site-service/](../../../manifests/inventory/site-service/) — Raw K8s manifests
