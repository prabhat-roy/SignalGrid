# pcf-service

Service in the **5g-core** domain of SignalGrid.

**Language:** Go · **Port:** 50163

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pcf-service/](../../../helm/charts/pcf-service/) — Helm chart
- [manifests/5g-core/pcf-service/](../../../manifests/5g-core/pcf-service/) — Raw K8s manifests
