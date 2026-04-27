# port-in-service

Service in the order domain of SignalGrid.

Language: Go Â· Port: 50082

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/port-in-service/](../../../helm/charts/port-in-service/) â€” Helm chart
- [manifests/order/port-in-service/](../../../manifests/order/port-in-service/) â€” Raw K8s manifests
