# activation-service

Service in the order domain of SignalGrid.

Language: Go Â· Port: 50081

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/activation-service/](../../../helm/charts/activation-service/) â€” Helm chart
- [manifests/order/activation-service/](../../../manifests/order/activation-service/) â€” Raw K8s manifests
