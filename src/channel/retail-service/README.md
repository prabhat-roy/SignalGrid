# retail-service

Service in the **channel** domain of SignalGrid.

**Language:** Go · **Port:** 50243

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/retail-service/](../../../helm/charts/retail-service/) — Helm chart
- [manifests/channel/retail-service/](../../../manifests/channel/retail-service/) — Raw K8s manifests
