# sms-gateway

Service in the **vas** domain of SignalGrid.

**Language:** Go · **Port:** 50320

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/sms-gateway/](../../../helm/charts/sms-gateway/) — Helm chart
- [manifests/vas/sms-gateway/](../../../manifests/vas/sms-gateway/) — Raw K8s manifests
