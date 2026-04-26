# lawful-intercept

Service in the **regulatory** domain of SignalGrid.

**Language:** Go · **Port:** 50280

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lawful-intercept/](../../../helm/charts/lawful-intercept/) — Helm chart
- [manifests/regulatory/lawful-intercept/](../../../manifests/regulatory/lawful-intercept/) — Raw K8s manifests
