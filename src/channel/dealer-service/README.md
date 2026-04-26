# dealer-service

Service in the **channel** domain of SignalGrid.

**Language:** Go · **Port:** 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/dealer-service/](../../../helm/charts/dealer-service/) — Helm chart
- [manifests/channel/dealer-service/](../../../manifests/channel/dealer-service/) — Raw K8s manifests
