# fm-service

Service in the **nms** domain of SignalGrid.

**Language:** Go · **Port:** 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fm-service/](../../../helm/charts/fm-service/) — Helm chart
- [manifests/nms/fm-service/](../../../manifests/nms/fm-service/) — Raw K8s manifests
