# cm-service

Service in the **nms** domain of SignalGrid.

**Language:** Go · **Port:** 50142

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/cm-service/](../../../helm/charts/cm-service/) — Helm chart
- [manifests/nms/cm-service/](../../../manifests/nms/cm-service/) — Raw K8s manifests
