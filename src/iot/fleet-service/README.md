# fleet-service

Service in the iot domain of SignalGrid.

Language: Go Â· Port: 50203

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fleet-service/](../../../helm/charts/fleet-service/) â€” Helm chart
- [manifests/iot/fleet-service/](../../../manifests/iot/fleet-service/) â€” Raw K8s manifests
