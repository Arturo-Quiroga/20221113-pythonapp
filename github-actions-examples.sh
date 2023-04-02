
# The following snippet shows how to build a container image from source code and deploy it to Container Apps.

# The action uses the Dockerfile in appSourcePath to build the container image. 
# If no Dockerfile is found, the action attempts to build the container image from source code in appSourcePath.
steps:

  - name: Log in to Azure
    uses: azure/login@v1
    with:
      creds: ${{ secrets.AZURE_CREDENTIALS }}

  - name: Build and deploy Container App
    uses: azure/container-apps-deploy-action@v0
    with:
      appSourcePath: ${{ github.workspace }}
      acrName: myregistry
      containerAppName: my-container-app
      resourceGroup: my-rg



# This is a more complete workflow:

name: Azure Container Apps Deploy

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v3

      - name: Log in to Azure
        uses: azure/login@v1
        with:
          creds: ${{ secrets.AZURE_CREDENTIALS }}

      - name: Build and deploy Container App
        uses: azure/container-apps-deploy-action@v0
        with:
          appSourcePath: ${{ github.workspace }}
          acrName: <ACR_NAME>
          containerAppName: my-container-app
          resourceGroup: my-container-app-rg