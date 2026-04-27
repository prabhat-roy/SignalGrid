# pcf-service

Service in the 5g-core domain of SignalGrid.

Language: Go Â· Port: 50163

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/pcf-service/](../../../helm/charts/pcf-service/) â€” Helm chart
- [manifests/5g-core/pcf-service/](../../../manifests/5g-core/pcf-service/) â€” Raw K8s manifests
