#!/bin/bash

source ./authsvr-external-prod.env

az containerapp delete \
  --name authsvr-external-prod \
  --resource-group $AZ_RESOURCE_GROUP \

