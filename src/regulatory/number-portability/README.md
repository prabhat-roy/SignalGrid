# number-portability

Service in the **regulatory** domain of SignalGrid.

**Language:** Go · **Port:** 50281

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/number-portability/](../../../helm/charts/number-portability/) — Helm chart
- [manifests/regulatory/number-portability/](../../../manifests/regulatory/number-portability/) — Raw K8s manifests
