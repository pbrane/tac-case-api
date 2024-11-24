#!/bin/bash

source ../../tac-api-version.env
source ./authdb-prod.env

az containerapp create \
  --name "$AZ_CONTAINER_NAME" \
  --resource-group "$AZ_RESOURCE_GROUP" \
  --environment "$AZ_CONTAINERAPP_ENV" \
  --image pbranestrategy/tac-case-api-db-postgres:"$TAC_API_VERSION" \
  --env-vars POSTGRES_USER="$POSTGRES_USER" \
             POSTGRES_PASSWORD="$POSTGRES_PASSWORD" \
             POSTGRES_DB="$POSTGRES_DB" \
             PGDATA=/authdb-prod/data/postgres \
  --exposed-port 5432 \
  --target-port 5432 \
  --transport tcp \
  --ingress internal \
  --min-replicas 1 \
  --max-replicas 3

