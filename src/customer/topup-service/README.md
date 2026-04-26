# topup-service

Service in the **customer** domain of SignalGrid.

**Language:** Go · **Port:** 50223

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/topup-service/](../../../helm/charts/topup-service/) — Helm chart
- [manifests/customer/topup-service/](../../../manifests/customer/topup-service/) — Raw K8s manifests
