# sim-service

SIM card lifecycle (ICCID, IMSI, Ki, OPc, OTA)

Domain: `subscriber` Â· Language: java Â· Port: 50021

## Run locally

```bash
make run
```

Ki and OPc are HSM-backed via Vault â€” never written to disk in clear.
