#!/bin/bash

source ../../tac-api-version.env
source ./authsvr-prod_internal.env

az containerapp delete \
  --name "$AZ_CONTAINER_NAME" \
  --resource-group "$AZ_RESOURCE_GROUP"

