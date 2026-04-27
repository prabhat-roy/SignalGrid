# Health check for all critical services
GET https://signalgrid.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"

GET https://api.signalgrid.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"
