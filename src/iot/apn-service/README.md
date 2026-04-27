# apn-service

Service in the iot domain of SignalGrid.

Language: Go Â· Port: 50201

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/apn-service/](../../../helm/charts/apn-service/) â€” Helm chart
- [manifests/iot/apn-service/](../../../manifests/iot/apn-service/) â€” Raw K8s manifests
