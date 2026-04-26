# commission-service

Service in the **channel** domain of SignalGrid.

**Language:** Go · **Port:** 50242

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/commission-service/](../../../helm/charts/commission-service/) — Helm chart
- [manifests/channel/commission-service/](../../../manifests/channel/commission-service/) — Raw K8s manifests
