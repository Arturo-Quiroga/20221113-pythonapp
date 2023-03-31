az acr show --name cafcd1ab3c48acr --query id --output tsv

az containerapp identity assign \
  --name pythonapp \
  --resource-group my-rg \
  --system-assigned \
  --output tsv

az role assignment create \
  --assignee 8f5028e1-4875-45ee-91c3-24e81b3773be \
  --role AcrPull \
  --scope /subscriptions/83d06084-4157-4e25-adfa-4477e0910f91/resourceGroups/my-rg/providers/Microsoft.ContainerRegistry/registries/cafcd1ab3c48acr

az containerapp registry set \
  --name pythonapp \
  --resource-group my-rg \
  --server cafcd1ab3c48acr.azurecr.io \
  --identity system


az ad sp create-for-rbac \
  --name pythonapp-credentials \
  --role contributor \
  --scopes /subscriptions/83d06084-4157-4e25-adfa-4477e0910f91/resourceGroups/my-rg \
  --sdk-auth \
  --output json