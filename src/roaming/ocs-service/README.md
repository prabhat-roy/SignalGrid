# ocs-service

Service in the roaming domain of SignalGrid.

Language: Go Â· Port: 50182

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ocs-service/](../../../helm/charts/ocs-service/) â€” Helm chart
- [manifests/roaming/ocs-service/](../../../manifests/roaming/ocs-service/) â€” Raw K8s manifests
