#!/bin/bash

source ../../tac-api-version.env
source ./authsvr-prod_external.env

az containerapp create \
  --name "$AZ_CONTAINER_NAME" \
  --resource-group "$AZ_RESOURCE_GROUP" \
  --environment "$AZ_CONTAINERAPP_ENV" \
  --image pbranestrategy/tac-case-api-auth-server:"$TAC_API_VERSION" \
  --env-vars CLIENT_ID="$CLIENT_ID" \
             CLIENT_SECRET="$CLIENT_SECRET" \
             CLIENT_NAME="$CLIENT_NAME" \
             SERVER_PORT=8080 \
             SPRING_DATASOURCE_URL=jdbc:postgresql://authdb-prod:5432/tacauthdb \
             SPRING_DATASOURCE_USERNAME="$SPRING_DATASOURCE_USERNAME" \
             SPRING_DATASOURCE_PASSWORD="$SPRING_DATASOURCE_PASSWORD" \
             AUTH_SVR_ENV=production \
  --exposed-port 8080 \
  --target-port 8080 \
  --transport auto \
  --ingress external \
  --min-replicas 1 \
  --max-replicas 3

