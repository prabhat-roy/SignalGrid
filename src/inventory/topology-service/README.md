# topology-service

Service in the **inventory** domain of SignalGrid.

**Language:** Go · **Port:** 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/topology-service/](../../../helm/charts/topology-service/) — Helm chart
- [manifests/inventory/topology-service/](../../../manifests/inventory/topology-service/) — Raw K8s manifests
