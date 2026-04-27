# churn-analytics

Service in the analytics domain of SignalGrid.

Language: Go Â· Port: 50302

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/churn-analytics/](../../../helm/charts/churn-analytics/) â€” Helm chart
- [manifests/analytics/churn-analytics/](../../../manifests/analytics/churn-analytics/) â€” Raw K8s manifests
