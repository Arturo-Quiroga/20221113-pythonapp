
# Demo command:
az containerapp up \
--name pythonapp \
--resource-group my-rg \
--environment my-env \
--location canadacentral \
--ingress external \
--source .


# COMMAND FORMAT and flags:
az containerapp up --name
                   [--branch]
                   [--browse]
                   [--context-path]
                   [--env-vars]
                   [--environment]
                   [--image]
                   [--ingress {external, internal}]
                   [--location]
                   [--logs-workspace-id]
                   [--logs-workspace-key]
                   [--registry-password]
                   [--registry-server]
                   [--registry-username]
                   [--repo]
                   [--resource-group]
                   [--service-principal-client-id]
                   [--service-principal-client-secret]
                   [--service-principal-tenant-id]
                   [--source]
                   [--target-port]
                   [--token]
