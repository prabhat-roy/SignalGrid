# amf-service

Service in the 5g-core domain of SignalGrid.

Language: Go Â· Port: 50160

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/amf-service/](../../../helm/charts/amf-service/) â€” Helm chart
- [manifests/5g-core/amf-service/](../../../manifests/5g-core/amf-service/) â€” Raw K8s manifests
