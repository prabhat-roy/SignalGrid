# site-service

Service in the inventory domain of SignalGrid.

Language: Go Â· Port: 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/site-service/](../../../helm/charts/site-service/) â€” Helm chart
- [manifests/inventory/site-service/](../../../manifests/inventory/site-service/) â€” Raw K8s manifests
