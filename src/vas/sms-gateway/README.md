# sms-gateway

Service in the vas domain of SignalGrid.

Language: Go Â· Port: 50320

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/sms-gateway/](../../../helm/charts/sms-gateway/) â€” Helm chart
- [manifests/vas/sms-gateway/](../../../manifests/vas/sms-gateway/) â€” Raw K8s manifests
