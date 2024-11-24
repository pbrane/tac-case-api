#!/bin/bash

source ../../tac-api-version.env
source ./authsvr-prod_internal.env

az containerapp create \
  --name "$AZ_CONTAINER_NAME" \
  --resource-group "$AZ_RESOURCE_GROUP" \
  --environment "$AZ_CONTAINERAPP_ENV" \
  --image pbranestrategy/tac-case-api-auth-server:"$TAC_API_VERSION" \
  --env-vars CLIENT_ID="$CLIENT_ID" \
             CLIENT_SECRET="$CLIENT_SECRET" \
             CLIENT_NAME="$CLIENT_NAME" \
             SERVER_PORT="$SERVER_PORT" \
             SPRING_DATASOURCE_URL=jdbc:postgresql://authdb-prod:5432/tacauthdb \
             SPRING_DATASOURCE_USERNAME="$SPRING_DATASOURCE_USERNAME" \
             SPRING_DATASOURCE_PASSWORD="$SPRING_DATASOURCE_PASSWORD" \
             AUTH_SVR_ENV="$AUTH_SVR_ENV" \
  --exposed-port 8080 \
  --target-port 8080 \
  --transport tcp \
  --ingress internal \
  --min-replicas 1 \
  --max-replicas 3

