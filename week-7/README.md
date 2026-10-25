# Week 7 – Continuous Delivery

## Overview
This lab uses GitHub Actions, OpenTofu, Helm, and cron to create an automated deployment pipeline.

## Deploy Gate
The deploy gate checks OpenTofu formatting and validation, along with Prometheus Helm chart rendering.

## Pull-Based Deployment
The VM checks GitHub for new commits on master. If the gate passes, the VM pulls the latest changes and deploys them to Kubernetes.

## Automatic Deployment
Cron runs the deployment script every two minutes.

## Manual Deployment
Run:
./week-7/deploy.sh

## Monitoring
Check:
tail -n 20 ~/deploy.log
kubectl get pods

## Rollback
Revert the affected merge commits, create a pull request, and merge the rollback after checks pass.

## Security
GitHub never connects directly to the VM. The VM pulls updates after the deploy gate succeeds.

## Limitations
The pipeline depends on one VM, local configuration, and automated checks that cannot detect every possible problem.