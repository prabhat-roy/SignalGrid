# payment-service

Service in the **customer** domain of SignalGrid.

**Language:** Go · **Port:** 50220

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/payment-service/](../../../helm/charts/payment-service/) — Helm chart
- [manifests/customer/payment-service/](../../../manifests/customer/payment-service/) — Raw K8s manifests
