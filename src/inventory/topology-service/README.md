# topology-service

Service in the inventory domain of SignalGrid.

Language: Go Â· Port: 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/topology-service/](../../../helm/charts/topology-service/) â€” Helm chart
- [manifests/inventory/topology-service/](../../../manifests/inventory/topology-service/) â€” Raw K8s manifests
