# fleet-service

Service in the **iot** domain of SignalGrid.

**Language:** Go · **Port:** 50203

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fleet-service/](../../../helm/charts/fleet-service/) — Helm chart
- [manifests/iot/fleet-service/](../../../manifests/iot/fleet-service/) — Raw K8s manifests
