# ne-service

Service in the inventory domain of SignalGrid.

Language: Go Â· Port: 50122

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ne-service/](../../../helm/charts/ne-service/) â€” Helm chart
- [manifests/inventory/ne-service/](../../../manifests/inventory/ne-service/) â€” Raw K8s manifests
