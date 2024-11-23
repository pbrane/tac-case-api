#!/bin/bash

source ./authsvr-internal-prod.env

az containerapp delete \
  --name authsvr-internal-prod \
  --resource-group $AZ_RESOURCE_GROUP

