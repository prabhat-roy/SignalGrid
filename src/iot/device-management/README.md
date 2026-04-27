# device-management

Service in the iot domain of SignalGrid.

Language: Go Â· Port: 50202

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/device-management/](../../../helm/charts/device-management/) â€” Helm chart
- [manifests/iot/device-management/](../../../manifests/iot/device-management/) â€” Raw K8s manifests
