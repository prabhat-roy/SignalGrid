# smf-service

Service in the **5g-core** domain of SignalGrid.

**Language:** Go · **Port:** 50161

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/smf-service/](../../../helm/charts/smf-service/) — Helm chart
- [manifests/5g-core/smf-service/](../../../manifests/5g-core/smf-service/) — Raw K8s manifests
