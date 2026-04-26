# port-in-service

Service in the **order** domain of SignalGrid.

**Language:** Go · **Port:** 50082

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/port-in-service/](../../../helm/charts/port-in-service/) — Helm chart
- [manifests/order/port-in-service/](../../../manifests/order/port-in-service/) — Raw K8s manifests
