# wangiri-service

Service in the **fraud** domain of SignalGrid.

**Language:** Go · **Port:** 50264

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/wangiri-service/](../../../helm/charts/wangiri-service/) — Helm chart
- [manifests/fraud/wangiri-service/](../../../manifests/fraud/wangiri-service/) — Raw K8s manifests
