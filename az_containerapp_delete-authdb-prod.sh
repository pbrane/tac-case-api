#!/bin/bash

az containerapp delete \
  --name authdb-prod \
  --resource-group $AZ_RESOURCE_GROUP

