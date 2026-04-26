# tap-service

Service in the **roaming** domain of SignalGrid.

**Language:** Go · **Port:** 50180

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/tap-service/](../../../helm/charts/tap-service/) — Helm chart
- [manifests/roaming/tap-service/](../../../manifests/roaming/tap-service/) — Raw K8s manifests
