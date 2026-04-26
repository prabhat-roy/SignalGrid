# pos-service

Service in the **channel** domain of SignalGrid.

**Language:** Go · **Port:** 50241

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pos-service/](../../../helm/charts/pos-service/) — Helm chart
- [manifests/channel/pos-service/](../../../manifests/channel/pos-service/) — Raw K8s manifests
