# cm-service

Service in the nms domain of SignalGrid.

Language: Go Â· Port: 50142

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/cm-service/](../../../helm/charts/cm-service/) â€” Helm chart
- [manifests/nms/cm-service/](../../../manifests/nms/cm-service/) â€” Raw K8s manifests
