# vas

Value-added services — SMS, USSD, RBT, content billing, MMSC.

| Service | Language | Port | Description |
|---|---|---|---|
| vas-service | Go | 50300 | VAS orchestrator |
| sms-gateway | Erlang | 50301 | SMPP A2P/P2P gateway |
| ussd-service | Erlang | 50302 | USSD short-code menu engine |
| rbt-service | Go | 50303 | Ringback tone catalogue |
| content-billing | Go | 50304 | DCB / partner content |
| mmsc-service | Go | 50305 | MMS message centre |
