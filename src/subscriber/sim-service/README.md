# sim-service

SIM card lifecycle (ICCID, IMSI, Ki, OPc, OTA)

**Domain:** `subscriber` · **Language:** java · **Port:** 50021

## Run locally

```bash
make run
```

Ki and OPc are HSM-backed via Vault — never written to disk in clear.
