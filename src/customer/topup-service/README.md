# topup-service

Service in the customer domain of SignalGrid.

Language: Go Â· Port: 50223

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/topup-service/](../../../helm/charts/topup-service/) â€” Helm chart
- [manifests/customer/topup-service/](../../../manifests/customer/topup-service/) â€” Raw K8s manifests
