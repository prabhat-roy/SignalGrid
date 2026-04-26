# usage-service

Service in the **customer** domain of SignalGrid.

**Language:** Go · **Port:** 50222

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/usage-service/](../../../helm/charts/usage-service/) — Helm chart
- [manifests/customer/usage-service/](../../../manifests/customer/usage-service/) — Raw K8s manifests
