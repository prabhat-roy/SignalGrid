# fra-service

Service in the fraud domain of SignalGrid.

Language: Go Â· Port: 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fra-service/](../../../helm/charts/fra-service/) â€” Helm chart
- [manifests/fraud/fra-service/](../../../manifests/fraud/fra-service/) â€” Raw K8s manifests
