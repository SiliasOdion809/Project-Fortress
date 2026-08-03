#!/bin/bash

# Exit immediately if a command fails
set -e

# Variables
AWS_REGION="us-east-1"
CLUSTER_NAME="project-bedrock-cluster"

echo "========================================="
echo "Refreshing EKS kubeconfig..."
echo "Cluster: $CLUSTER_NAME"
echo "Region : $AWS_REGION"
echo "========================================="

aws eks update-kubeconfig \
  --region "$AWS_REGION" \
  --name "$CLUSTER_NAME"

echo ""
echo "Current Kubernetes Context:"
kubectl config current-context

echo ""
echo "Cluster Nodes:"
kubectl get nodes

echo ""
echo "✅ kubeconfig successfully refreshed!"