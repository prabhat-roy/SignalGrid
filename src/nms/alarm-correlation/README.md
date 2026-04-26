# alarm-correlation

Service in the **nms** domain of SignalGrid.

**Language:** Go · **Port:** 50143

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/alarm-correlation/](../../../helm/charts/alarm-correlation/) — Helm chart
- [manifests/nms/alarm-correlation/](../../../manifests/nms/alarm-correlation/) — Raw K8s manifests
