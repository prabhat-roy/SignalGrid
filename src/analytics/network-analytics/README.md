# network-analytics

Service in the analytics domain of SignalGrid.

Language: Go Â· Port: 50300

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/network-analytics/](../../../helm/charts/network-analytics/) â€” Helm chart
- [manifests/analytics/network-analytics/](../../../manifests/analytics/network-analytics/) â€” Raw K8s manifests
