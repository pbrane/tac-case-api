#!/bin/bash

source ./apisvc-dev.env

az containerapp delete \
  --name "$AZ_CONTAINER_NAME" \
  --resource-group "$AZ_RESOURCE_GROUP" \
