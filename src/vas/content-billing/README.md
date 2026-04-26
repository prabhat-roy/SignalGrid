# content-billing

Service in the **vas** domain of SignalGrid.

**Language:** Go · **Port:** 50323

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/content-billing/](../../../helm/charts/content-billing/) — Helm chart
- [manifests/vas/content-billing/](../../../manifests/vas/content-billing/) — Raw K8s manifests
