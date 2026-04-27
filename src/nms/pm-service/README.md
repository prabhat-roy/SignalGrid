# pm-service

Service in the nms domain of SignalGrid.

Language: Go Â· Port: 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pm-service/](../../../helm/charts/pm-service/) â€” Helm chart
- [manifests/nms/pm-service/](../../../manifests/nms/pm-service/) â€” Raw K8s manifests
