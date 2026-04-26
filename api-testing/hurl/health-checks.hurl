GET https://api.signalgrid.com/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"
