# bypass-detection

Service in the **fraud** domain of SignalGrid.

**Language:** Go · **Port:** 50262

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/bypass-detection/](../../../helm/charts/bypass-detection/) — Helm chart
- [manifests/fraud/bypass-detection/](../../../manifests/fraud/bypass-detection/) — Raw K8s manifests
