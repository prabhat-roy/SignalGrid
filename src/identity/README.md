# identity

Auth, subscriber SSO, operator SSO, MFA, API key, RBAC.

| Service | Language | Port | Description |
|---|---|---|---|
| auth-service | Go | 50320 | Operator + subscriber auth |
| subscriber-sso | Go | 50321 | Subscriber SSO (Keycloak) |
| operator-sso | Go | 50322 | Operator SSO (mandatory MFA) |
| mfa-service | Go | 50323 | Multi-factor (TOTP, WebAuthn, SMS OTP) |
| api-key-service | Go | 50324 | Partner API keys + scopes |
| role-service | Go | 50325 | RBAC + role hierarchy |
