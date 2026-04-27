# usage-service

Service in the customer domain of SignalGrid.

Language: Go Â· Port: 50222

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/usage-service/](../../../helm/charts/usage-service/) â€” Helm chart
- [manifests/customer/usage-service/](../../../manifests/customer/usage-service/) â€” Raw K8s manifests
