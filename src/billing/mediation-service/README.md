# mediation-service

Service in the billing domain of SignalGrid.

Language: Go Â· Port: 50100

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/mediation-service/](../../../helm/charts/mediation-service/) â€” Helm chart
- [manifests/billing/mediation-service/](../../../manifests/billing/mediation-service/) â€” Raw K8s manifests
