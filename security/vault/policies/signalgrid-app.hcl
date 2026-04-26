# Default policy for SignalGrid application services.
# Each service consumes its own KV path; Postgres / Redis credentials are dynamic.
path "signalgrid/data/{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}/*" {
  capabilities = ["read"]
}
path "database/creds/signalgrid-{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}" {
  capabilities = ["read"]
}
path "transit/encrypt/signalgrid" { capabilities = ["update"] }
path "transit/decrypt/signalgrid" { capabilities = ["update"] }
