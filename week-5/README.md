# Week 5 - Infrastructure as Code with OpenTofu

## What this does
This project uses OpenTofu to deploy a Flask web application, PostgreSQL database, persistent storage, ConfigMap, and Secret to a local k3s Kubernetes cluster.

## Requirements
- OpenTofu
- Running k3s cluster
- Kubernetes configuration
- Week 4 web Docker image
- terraform.tfvars with valid credentials

## Deploy
tofu init
tofu plan
tofu apply

## Verify
kubectl get pods
tofu output -raw port_forward_command

Open http://localhost:8080 after starting port forwarding.

## Tear Down
tofu destroy

Warning: This removes the database volume and stored tickets.

## Known Limitation
OpenTofu state files contain sensitive information in plain text. These files are excluded from Git using .gitignore.
