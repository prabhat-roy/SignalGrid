# upf-service

Service in the **5g-core** domain of SignalGrid.

**Language:** Go · **Port:** 50162

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/upf-service/](../../../helm/charts/upf-service/) — Helm chart
- [manifests/5g-core/upf-service/](../../../manifests/5g-core/upf-service/) — Raw K8s manifests
