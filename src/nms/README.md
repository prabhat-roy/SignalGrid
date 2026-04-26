# nms

OSS — Network Management System. FM/PM/CM and alarm correlation.

| Service | Language | Port | Description |
|---|---|---|---|
| nms-service | Go | 50120 | NMS orchestrator |
| fm-service | Go | 50121 | Fault management (SNMP traps, syslog) |
| pm-service | Go | 50122 | Performance management (PM file parser) |
| cm-service | Go | 50123 | Configuration management (NETCONF/YANG) |
| alarm-correlation | Python | 50124 | ML root-cause analysis |
