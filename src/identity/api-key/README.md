# api-key

Service in the **identity** domain of SignalGrid.

**Language:** Go · **Port:** 50024

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/api-key/](../../../helm/charts/api-key/) — Helm chart
- [manifests/identity/api-key/](../../../manifests/identity/api-key/) — Raw K8s manifests
