#!/bin/bash

source ./apisvc-prod.env

az containerapp create \
  --name "$AZ_CONTAINER_NAME" \
  --resource-group "$AZ_RESOURCE_GROUP" \
  --environment "$AZ_CONTAINERAPP_ENV" \
  --image pbranestrategy/tac-case-api-service:0.1.5 \
  --env-vars AUTH_SVC_ISSUER_URI="$AUTH_SVC_ISSUER_URI" \
             API_SVR_ENV="$API_SVR_ENV" \
             SERVER_PORT="$SERVER_PORT" \
  --exposed-port 8080 \
  --target-port "$SERVER_PORT" \
  --transport auto \
  --ingress external \
  --min-replicas 1 \
  --max-replicas 3

