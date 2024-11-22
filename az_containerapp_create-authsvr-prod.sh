#!/bin/bash

az containerapp create \
  --name authsvr-prod \
  --resource-group $AZ_RESOURCE_GROUP \
  --environment $AZ_CONTAINERAPP_ENV \
  --image pbranestrategy/tac-case-api-auth-server:0.1.3 \
  --env-vars CLIENT_ID=$CLIENT_ID \
             CLIENT_SECRET=$CLIENT_SECRET \
             CLIENT_NAME=$CLIENT_NAME \
             SERVER_PORT=8080 \
             SPRING_DATASOURCE_URL=jdbc:postgresql://authdb-prod:5432/tacauthd \
             SPRING_DATASOURCE_USERNAME=$DB_USERNAME \
             SPRING_DATASOURCE_PASSWORD=$DB_PASSWORD \
             AUTH_SVR_ENV=production