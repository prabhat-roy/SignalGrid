# rbt-service

Service in the **vas** domain of SignalGrid.

**Language:** Go · **Port:** 50322

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rbt-service/](../../../helm/charts/rbt-service/) — Helm chart
- [manifests/vas/rbt-service/](../../../manifests/vas/rbt-service/) — Raw K8s manifests
