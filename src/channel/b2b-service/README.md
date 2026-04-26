# b2b-service

Service in the **channel** domain of SignalGrid.

**Language:** Go · **Port:** 50244

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/b2b-service/](../../../helm/charts/b2b-service/) — Helm chart
- [manifests/channel/b2b-service/](../../../manifests/channel/b2b-service/) — Raw K8s manifests
