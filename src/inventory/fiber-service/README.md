# fiber-service

Service in the **inventory** domain of SignalGrid.

**Language:** Go · **Port:** 50123

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fiber-service/](../../../helm/charts/fiber-service/) — Helm chart
- [manifests/inventory/fiber-service/](../../../manifests/inventory/fiber-service/) — Raw K8s manifests
