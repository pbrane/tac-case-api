#!/bin/bash

az containerapp compose create \
  --environment $AZ_CONTAINERAPP_ENV \
  --resource-group $AZ_RESOURCE_GROUP \
  --location westus \
  --compose-file-path az-compose-prod.yml
