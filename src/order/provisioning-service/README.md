# provisioning-service

Service in the order domain of SignalGrid.

Language: Go Â· Port: 50080

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/provisioning-service/](../../../helm/charts/provisioning-service/) â€” Helm chart
- [manifests/order/provisioning-service/](../../../manifests/order/provisioning-service/) â€” Raw K8s manifests
