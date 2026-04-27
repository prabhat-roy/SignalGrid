# smf-service

Service in the 5g-core domain of SignalGrid.

Language: Go Â· Port: 50161

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/smf-service/](../../../helm/charts/smf-service/) â€” Helm chart
- [manifests/5g-core/smf-service/](../../../manifests/5g-core/smf-service/) â€” Raw K8s manifests
