# rating-engine

Service in the billing domain of SignalGrid.

Language: Go Â· Port: 50101

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rating-engine/](../../../helm/charts/rating-engine/) â€” Helm chart
- [manifests/billing/rating-engine/](../../../manifests/billing/rating-engine/) â€” Raw K8s manifests
