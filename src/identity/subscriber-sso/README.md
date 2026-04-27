# subscriber-sso

Service in the identity domain of SignalGrid.

Language: Go Â· Port: 50021

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/subscriber-sso/](../../../helm/charts/subscriber-sso/) â€” Helm chart
- [manifests/identity/subscriber-sso/](../../../manifests/identity/subscriber-sso/) â€” Raw K8s manifests
