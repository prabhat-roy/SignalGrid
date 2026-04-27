# rbt-service

Service in the vas domain of SignalGrid.

Language: Go Â· Port: 50322

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rbt-service/](../../../helm/charts/rbt-service/) â€” Helm chart
- [manifests/vas/rbt-service/](../../../manifests/vas/rbt-service/) â€” Raw K8s manifests
