# ne-service

Service in the **inventory** domain of SignalGrid.

**Language:** Go · **Port:** 50122

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ne-service/](../../../helm/charts/ne-service/) — Helm chart
- [manifests/inventory/ne-service/](../../../manifests/inventory/ne-service/) — Raw K8s manifests
