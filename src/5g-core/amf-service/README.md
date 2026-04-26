# amf-service

Service in the **5g-core** domain of SignalGrid.

**Language:** Go · **Port:** 50160

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/amf-service/](../../../helm/charts/amf-service/) — Helm chart
- [manifests/5g-core/amf-service/](../../../manifests/5g-core/amf-service/) — Raw K8s manifests
