# tap-service

Service in the roaming domain of SignalGrid.

Language: Go Â· Port: 50180

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/tap-service/](../../../helm/charts/tap-service/) â€” Helm chart
- [manifests/roaming/tap-service/](../../../manifests/roaming/tap-service/) â€” Raw K8s manifests
