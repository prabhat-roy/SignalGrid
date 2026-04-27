# bypass-detection

Service in the fraud domain of SignalGrid.

Language: Go Â· Port: 50262

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/bypass-detection/](../../../helm/charts/bypass-detection/) â€” Helm chart
- [manifests/fraud/bypass-detection/](../../../manifests/fraud/bypass-detection/) â€” Raw K8s manifests
