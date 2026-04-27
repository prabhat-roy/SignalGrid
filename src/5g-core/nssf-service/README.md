# nssf-service

Service in the 5g-core domain of SignalGrid.

Language: Go Â· Port: 50164

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/nssf-service/](../../../helm/charts/nssf-service/) â€” Helm chart
- [manifests/5g-core/nssf-service/](../../../manifests/5g-core/nssf-service/) â€” Raw K8s manifests
