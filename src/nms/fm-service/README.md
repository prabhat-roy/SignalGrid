# fm-service

Service in the nms domain of SignalGrid.

Language: Go Â· Port: 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fm-service/](../../../helm/charts/fm-service/) â€” Helm chart
- [manifests/nms/fm-service/](../../../manifests/nms/fm-service/) â€” Raw K8s manifests
