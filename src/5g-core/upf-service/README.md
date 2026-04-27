# upf-service

Service in the 5g-core domain of SignalGrid.

Language: Go Â· Port: 50162

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/upf-service/](../../../helm/charts/upf-service/) â€” Helm chart
- [manifests/5g-core/upf-service/](../../../manifests/5g-core/upf-service/) â€” Raw K8s manifests
