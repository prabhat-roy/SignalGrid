# signalling

Telecom signalling — DIAMETER, SS7/SIGTRAN, SIP. Carrier-grade Erlang/OTP for
nine-nines reliability and hot-code upgrades. Rust for ultra-low-latency adapters.

| Service | Language | Port | Description |
|---|---|---|---|
| diameter-gateway | Erlang | 50340 | DIAMETER (S6a, Gx, Gy, Sh) |
| ss7-gateway | Erlang | 50341 | SS7/SIGTRAN (MAP, CAMEL, INAP) |
| sip-gateway | Erlang | 50342 | SIP B2BUA + SBC functions |
| ss7-firewall | Erlang | 50343 | Open-source STP — SS7 firewall |
| signalling-adapter | Rust | 50344 | Real-time signalling adapter |
| gtp-adapter | Rust | 50345 | GTP-U / GTP-C adapter |
