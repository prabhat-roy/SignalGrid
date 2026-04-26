# sim-swap

Service in the **fraud** domain of SignalGrid.

**Language:** Go · **Port:** 50263

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/sim-swap/](../../../helm/charts/sim-swap/) — Helm chart
- [manifests/fraud/sim-swap/](../../../manifests/fraud/sim-swap/) — Raw K8s manifests
