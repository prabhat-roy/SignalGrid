# fra-service

Service in the **fraud** domain of SignalGrid.

**Language:** Go · **Port:** 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fra-service/](../../../helm/charts/fra-service/) — Helm chart
- [manifests/fraud/fra-service/](../../../manifests/fraud/fra-service/) — Raw K8s manifests
