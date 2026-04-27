# rap-service

Service in the roaming domain of SignalGrid.

Language: Go Â· Port: 50181

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rap-service/](../../../helm/charts/rap-service/) â€” Helm chart
- [manifests/roaming/rap-service/](../../../manifests/roaming/rap-service/) â€” Raw K8s manifests
