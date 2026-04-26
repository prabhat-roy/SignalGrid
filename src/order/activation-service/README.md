# activation-service

Service in the **order** domain of SignalGrid.

**Language:** Go · **Port:** 50081

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/activation-service/](../../../helm/charts/activation-service/) — Helm chart
- [manifests/order/activation-service/](../../../manifests/order/activation-service/) — Raw K8s manifests
