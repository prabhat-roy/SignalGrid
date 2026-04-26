# rap-service

Service in the **roaming** domain of SignalGrid.

**Language:** Go · **Port:** 50181

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rap-service/](../../../helm/charts/rap-service/) — Helm chart
- [manifests/roaming/rap-service/](../../../manifests/roaming/rap-service/) — Raw K8s manifests
