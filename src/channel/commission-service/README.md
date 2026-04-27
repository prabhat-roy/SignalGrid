# commission-service

Service in the channel domain of SignalGrid.

Language: Go Â· Port: 50242

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/commission-service/](../../../helm/charts/commission-service/) â€” Helm chart
- [manifests/channel/commission-service/](../../../manifests/channel/commission-service/) â€” Raw K8s manifests
