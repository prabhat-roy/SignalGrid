# fiber-service

Service in the inventory domain of SignalGrid.

Language: Go Â· Port: 50123

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fiber-service/](../../../helm/charts/fiber-service/) â€” Helm chart
- [manifests/inventory/fiber-service/](../../../manifests/inventory/fiber-service/) â€” Raw K8s manifests
