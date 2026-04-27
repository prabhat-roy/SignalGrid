# support-service

Service in the customer domain of SignalGrid.

Language: Go Â· Port: 50221

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/support-service/](../../../helm/charts/support-service/) â€” Helm chart
- [manifests/customer/support-service/](../../../manifests/customer/support-service/) â€” Raw K8s manifests
