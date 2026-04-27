# aa-service

Service in the roaming domain of SignalGrid.

Language: Go Â· Port: 50183

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/aa-service/](../../../helm/charts/aa-service/) â€” Helm chart
- [manifests/roaming/aa-service/](../../../manifests/roaming/aa-service/) â€” Raw K8s manifests
