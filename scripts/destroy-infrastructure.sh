#!/bin/bash

set -e

echo "Cleaning Kubernetes resources..."
./scripts/cleanup-k8s-resources.sh

echo ""
echo "Destroying infrastructure..."

cd terraform
terraform destroy -auto-approve