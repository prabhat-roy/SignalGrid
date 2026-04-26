# fraud

Fraud risk assessment, revenue assurance, bypass / SIM-swap / wangiri / PRS detection.

| Service | Language | Port | Description |
|---|---|---|---|
| fra-service | Python | 50240 | FRA master + scoring |
| revenue-assurance | Python | 50241 | Usage/CDR/billing reconciliation |
| bypass-detection | Python | 50242 | SIM box / bypass detection |
| sim-swap-service | Python | 50243 | SIM-swap real-time detection |
| wangiri-detection | Python | 50244 | Missed-call fraud |
| prs-fraud-service | Python | 50245 | Premium-rate abuse |
