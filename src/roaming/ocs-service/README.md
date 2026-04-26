# ocs-service

Service in the **roaming** domain of SignalGrid.

**Language:** Go · **Port:** 50182

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ocs-service/](../../../helm/charts/ocs-service/) — Helm chart
- [manifests/roaming/ocs-service/](../../../manifests/roaming/ocs-service/) — Raw K8s manifests
