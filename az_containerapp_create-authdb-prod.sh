#!/bin/bash

az containerapp create \
  --name authdb-prod \
  --resource-group $AZ_RESOURCE_GROUP \
  --environment $AZ_CONTAINERAPP_ENV \
  --image postgres:17 \
  --env-vars POSTGRES_USER=$DB_USERNAME \
             POSTGRES_PASSWORD=$DB_PASSWORD \
             POSTGRES_DB="tacauthdb" \
             PGDATA="/authdb-prod/data/postgres" \
  --exposed-port 5432 \
  --target-port 5432 \
  --transport tcp \
  --ingress internal \
  --min-replicas 1 \
  --max-replicas 3
