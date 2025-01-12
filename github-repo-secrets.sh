az ad sp create-for-rbac \
  --name pythonapp-credentials \
  --role contributor \
  --scopes /subscriptions/83d06084-4157-4e25-adfa-4477e0910f91/resourceGroups/my-rg \
  --sdk-auth \
  --output json


# OUTPUT:
{
  "clientId": "c2035789-a1a7-4092-915b-fa19211dbc43",
  "clientSecret": "Pbx8Q~ozRi8IerhgtjYdLcx6AlQ2qy1.nFUPVdc~",
  "subscriptionId": "83d06084-4157-4e25-adfa-4477e0910f91",
  "tenantId": "f76e354f-c33a-45a7-aa21-aacc89d7f071",
  "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
  "resourceManagerEndpointUrl": "https://management.azure.com/",
  "activeDirectoryGraphResourceId": "https://graph.windows.net/",
  "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
  "galleryEndpointUrl": "https://gallery.azure.com/",
  "managementEndpointUrl": "https://management.core.windows.net/"
}