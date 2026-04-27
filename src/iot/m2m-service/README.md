# m2m-service

Service in the iot domain of SignalGrid.

Language: Go Â· Port: 50200

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/m2m-service/](../../../helm/charts/m2m-service/) â€” Helm chart
- [manifests/iot/m2m-service/](../../../manifests/iot/m2m-service/) â€” Raw K8s manifests
