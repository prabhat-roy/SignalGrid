# ussd-service

Service in the **vas** domain of SignalGrid.

**Language:** Go · **Port:** 50321

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ussd-service/](../../../helm/charts/ussd-service/) — Helm chart
- [manifests/vas/ussd-service/](../../../manifests/vas/ussd-service/) — Raw K8s manifests
