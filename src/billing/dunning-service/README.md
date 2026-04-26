# dunning-service

Service in the **billing** domain of SignalGrid.

**Language:** Go · **Port:** 50103

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/dunning-service/](../../../helm/charts/dunning-service/) — Helm chart
- [manifests/billing/dunning-service/](../../../manifests/billing/dunning-service/) — Raw K8s manifests
