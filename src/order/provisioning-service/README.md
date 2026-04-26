# provisioning-service

Service in the **order** domain of SignalGrid.

**Language:** Go · **Port:** 50080

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/provisioning-service/](../../../helm/charts/provisioning-service/) — Helm chart
- [manifests/order/provisioning-service/](../../../manifests/order/provisioning-service/) — Raw K8s manifests
