# ussd-service

Service in the vas domain of SignalGrid.

Language: Go Â· Port: 50321

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ussd-service/](../../../helm/charts/ussd-service/) â€” Helm chart
- [manifests/vas/ussd-service/](../../../manifests/vas/ussd-service/) â€” Raw K8s manifests
