# migration-service

Service in the order domain of SignalGrid.

Language: Go Â· Port: 50083

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/migration-service/](../../../helm/charts/migration-service/) â€” Helm chart
- [manifests/order/migration-service/](../../../manifests/order/migration-service/) â€” Raw K8s manifests
