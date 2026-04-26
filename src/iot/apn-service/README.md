# apn-service

Service in the **iot** domain of SignalGrid.

**Language:** Go · **Port:** 50201

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/apn-service/](../../../helm/charts/apn-service/) — Helm chart
- [manifests/iot/apn-service/](../../../manifests/iot/apn-service/) — Raw K8s manifests
