# subscriber-sso

Service in the **identity** domain of SignalGrid.

**Language:** Go · **Port:** 50021

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/subscriber-sso/](../../../helm/charts/subscriber-sso/) — Helm chart
- [manifests/identity/subscriber-sso/](../../../manifests/identity/subscriber-sso/) — Raw K8s manifests
