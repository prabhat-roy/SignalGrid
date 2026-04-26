# support-service

Service in the **customer** domain of SignalGrid.

**Language:** Go · **Port:** 50221

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/support-service/](../../../helm/charts/support-service/) — Helm chart
- [manifests/customer/support-service/](../../../manifests/customer/support-service/) — Raw K8s manifests
