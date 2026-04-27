# capacity-service

Service in the analytics domain of SignalGrid.

Language: Go Â· Port: 50303

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/capacity-service/](../../../helm/charts/capacity-service/) â€” Helm chart
- [manifests/analytics/capacity-service/](../../../manifests/analytics/capacity-service/) â€” Raw K8s manifests
