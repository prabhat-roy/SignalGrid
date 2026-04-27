# payment-service

Service in the customer domain of SignalGrid.

Language: Go Â· Port: 50220

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/payment-service/](../../../helm/charts/payment-service/) â€” Helm chart
- [manifests/customer/payment-service/](../../../manifests/customer/payment-service/) â€” Raw K8s manifests
