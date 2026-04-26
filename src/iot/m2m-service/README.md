# m2m-service

Service in the **iot** domain of SignalGrid.

**Language:** Go · **Port:** 50200

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/m2m-service/](../../../helm/charts/m2m-service/) — Helm chart
- [manifests/iot/m2m-service/](../../../manifests/iot/m2m-service/) — Raw K8s manifests
