# aa-service

Service in the **roaming** domain of SignalGrid.

**Language:** Go · **Port:** 50183

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/aa-service/](../../../helm/charts/aa-service/) — Helm chart
- [manifests/roaming/aa-service/](../../../manifests/roaming/aa-service/) — Raw K8s manifests
