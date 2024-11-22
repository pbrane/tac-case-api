#!/bin/bash

az containerapp create --name admin-console-prod \
  --resource-group MolexProject \
  --environment tac-case-api-env-prod \
  --image pbranestrategy/ubuntu-noble-with-bash \
  --ingress internal \
  --allow-insecure true \
  --min-replicas 1 \
  --max-replicas 3 \
