# device-management

Service in the **iot** domain of SignalGrid.

**Language:** Go · **Port:** 50202

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/device-management/](../../../helm/charts/device-management/) — Helm chart
- [manifests/iot/device-management/](../../../manifests/iot/device-management/) — Raw K8s manifests
