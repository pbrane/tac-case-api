#!/bin/bash

az containerapp create \
  --name authdb-prod \
  --resource-group $AZ_RESOURCE_GROUP \
  --environment $AZ_CONTAINERAPP_ENV \
  --location $AZ_REGION \
  --image postgres:17 \
  --env-vars POSTGRES_USER=$DB_USERNAME \
             POSTGRES_PASSWORD=$DB_PASSWORD \
             POSTGRES_DB="tacauthdb" \
             PGDATA="/authdb-prod/data/postgres"\n  \
  --ingress internal \
  --allow-insecure true \
  --min-replicas 1 \
  --max-replicas 3
