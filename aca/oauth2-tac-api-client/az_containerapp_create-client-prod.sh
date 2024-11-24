#!/bin/bash

source ./client-prod.env

az containerapp create \
  --name client-prod \
  --resource-group $AZ_RESOURCE_GROUP \
  --environment $AZ_CONTAINERAPP_ENV \
  --image pbranestrategy/tac-case-api-oauth2-sample-client:0.1.5 \
  --env-vars AUTH_BASE_URI=$AUTH_BASE_URI \
             TOKEN_EP_URI=$TOKEN_EP_URI \
             AUTH_EP_URI=$AUTH_EP_URI \
             USER_INFO_EP_URI=$USER_INFO_EP_URI \
             JWK_SET_EP_URI=$JWK_SET_EP_URI \
             CLIENT_ID=$CLIENT_ID \
             CLIENT_SECRET=$CLIENT_SECRET \
             CLIENT_NAME=$CLIENT_NAME \
             CLIENT_SCOPE=$CLIENT_SCOPE \
             CLIENT_CONN_TIMEOUT=$CLIENT_CONN_TIMEOUT \
             CLIENT_RESP_TIMEOUT=$CLIENT_RESP_TIMEOUT \
             RESOURCE_BASE_URI=$RESOURCE_BASE_URI \
             AUTH_BASE_URI=$AUTH_BASE_URI \
  --min-replicas 1 \
  --max-replicas 3
