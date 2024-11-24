#!/bash

az containerapp env create --name $AZ_CONTAINERAPP_ENV \
  --resource-group $AZ_RESOURCE_GROUP \
  --location $AZ_REGION 

