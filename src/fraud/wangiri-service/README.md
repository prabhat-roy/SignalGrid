# wangiri-service

Service in the fraud domain of SignalGrid.

Language: Go Â· Port: 50264

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/wangiri-service/](../../../helm/charts/wangiri-service/) â€” Helm chart
- [manifests/fraud/wangiri-service/](../../../manifests/fraud/wangiri-service/) â€” Raw K8s manifests
