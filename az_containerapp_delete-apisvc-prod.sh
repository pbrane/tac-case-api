#!/bin/bash

source ./apisvc-prod.env

az containerapp delete \
  --name apisvc-prod \
  --resource-group $AZ_RESOURCE_GROUP \
  --environment $AZ_CONTAINERAPP_ENV \

