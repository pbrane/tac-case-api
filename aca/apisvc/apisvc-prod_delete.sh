#!/bin/bash

source ./apisvc-prod.env

az containerapp delete \
  --name "$AZ_CONTAINER_NAME" \
  --resource-group "$AZ_RESOURCE_GROUP" \
  --environment "$AZ_CONTAINERAPP_ENV" \

