# ofcom-reporting

Service in the regulatory domain of SignalGrid.

Language: Go Â· Port: 50283

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ofcom-reporting/](../../../helm/charts/ofcom-reporting/) â€” Helm chart
- [manifests/regulatory/ofcom-reporting/](../../../manifests/regulatory/ofcom-reporting/) â€” Raw K8s manifests
