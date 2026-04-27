# dealer-service

Service in the channel domain of SignalGrid.

Language: Go Â· Port: 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/dealer-service/](../../../helm/charts/dealer-service/) â€” Helm chart
- [manifests/channel/dealer-service/](../../../manifests/channel/dealer-service/) â€” Raw K8s manifests
