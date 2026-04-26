# pm-service

Service in the **nms** domain of SignalGrid.

**Language:** Go · **Port:** 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pm-service/](../../../helm/charts/pm-service/) — Helm chart
- [manifests/nms/pm-service/](../../../manifests/nms/pm-service/) — Raw K8s manifests
