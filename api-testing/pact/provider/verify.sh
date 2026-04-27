#!/usr/bin/env bash
set -euo pipefail
pact-provider-verifier https://pact-broker.signalgrid.internal \
  --provider signalgrid_identity_service \
  --provider-base-url http://identity-service.signalgrid.svc:50060 \
  --provider-version "${GIT_SHA:-local}" \
  --publish-verification-results
