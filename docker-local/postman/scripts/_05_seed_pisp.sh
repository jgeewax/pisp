#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PATH=$(cd ${DIR} && npm bin):$PATH
POSTMAN_DIR="${DIR}/.."

newman run \
  --delay-request=2000 \
  --folder='pisp (data setup)' \
  --environment=${POSTMAN_DIR}/environments/Mojaloop-Local-Docker-Compose.postman_environment_PISP.json \
  ${POSTMAN_DIR}/OSS-New-Deployment-FSP-Setup-DFSPS.postman_collection.json
