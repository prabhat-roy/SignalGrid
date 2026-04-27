# dunning-service

Service in the billing domain of SignalGrid.

Language: Go Â· Port: 50103

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/dunning-service/](../../../helm/charts/dunning-service/) â€” Helm chart
- [manifests/billing/dunning-service/](../../../manifests/billing/dunning-service/) â€” Raw K8s manifests
