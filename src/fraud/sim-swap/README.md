# sim-swap

Service in the fraud domain of SignalGrid.

Language: Go Â· Port: 50263

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/sim-swap/](../../../helm/charts/sim-swap/) â€” Helm chart
- [manifests/fraud/sim-swap/](../../../manifests/fraud/sim-swap/) â€” Raw K8s manifests
