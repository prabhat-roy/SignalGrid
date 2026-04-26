# nssf-service

Service in the **5g-core** domain of SignalGrid.

**Language:** Go · **Port:** 50164

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/nssf-service/](../../../helm/charts/nssf-service/) — Helm chart
- [manifests/5g-core/nssf-service/](../../../manifests/5g-core/nssf-service/) — Raw K8s manifests
