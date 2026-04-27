# pos-service

Service in the channel domain of SignalGrid.

Language: Go Â· Port: 50241

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pos-service/](../../../helm/charts/pos-service/) â€” Helm chart
- [manifests/channel/pos-service/](../../../manifests/channel/pos-service/) â€” Raw K8s manifests
