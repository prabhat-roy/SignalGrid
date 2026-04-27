# 5g-core

3GPP 5G SA cloud-native network functions. Bare-metal Kubernetes + Helm Operator
with traffic-drain rollouts.

| Service | Language | Port | Description |
|---|---|---|---|
| amf-service | Go | 50140 | Access & Mobility Management Function |
| smf-service | Go | 50141 | Session Management Function (PDU sessions) |
| upf-service | Rust | 50142 | User Plane Function (ultra-low latency) |
| pcf-service | Go | 50143 | Policy Control Function |
| nssf-service | Go | 50144 | Network Slice Selection Function |
| udm-service | Go | 50145 | Unified Data Management (SUCI deconcealment) |
| ausf-service | Go | 50146 | Authentication Server Function (5G-AKA) |
| nrf-service | Go | 50147 | NF Repository Function |

Deploys with blue-green strategy (mediation + 5G core); see CLAUDE.md.
