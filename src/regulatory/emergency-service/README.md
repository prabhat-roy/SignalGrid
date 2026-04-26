# emergency-service

Service in the **regulatory** domain of SignalGrid.

**Language:** Go · **Port:** 50282

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/emergency-service/](../../../helm/charts/emergency-service/) — Helm chart
- [manifests/regulatory/emergency-service/](../../../manifests/regulatory/emergency-service/) — Raw K8s manifests
