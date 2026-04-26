# subscriber

Subscriber lifecycle, SIM/eSIM, MSISDN, MNP.

| Service | Language | Port | Description |
|---|---|---|---|
| subscriber-service | Java | 50020 | Subscriber identity, SUPI/SUCI lifecycle |
| sim-service | Java | 50021 | SIM card lifecycle (ICCID, IMSI, Ki, OPc, OTA) |
| number-service | Java | 50022 | MSISDN range allocation, reservation, recycle |
| esim-service | Java | 50023 | eSIM SM-DP+/SM-SR (GSMA SGP.22) |
| mnp-service | Java | 50024 | Mobile Number Portability — port-in/out workflow |
