# emergency-service

Service in the regulatory domain of SignalGrid.

Language: Go Â· Port: 50282

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/emergency-service/](../../../helm/charts/emergency-service/) â€” Helm chart
- [manifests/regulatory/emergency-service/](../../../manifests/regulatory/emergency-service/) â€” Raw K8s manifests
