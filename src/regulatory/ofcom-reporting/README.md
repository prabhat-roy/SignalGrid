# ofcom-reporting

Service in the **regulatory** domain of SignalGrid.

**Language:** Go · **Port:** 50283

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ofcom-reporting/](../../../helm/charts/ofcom-reporting/) — Helm chart
- [manifests/regulatory/ofcom-reporting/](../../../manifests/regulatory/ofcom-reporting/) — Raw K8s manifests
