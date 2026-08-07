#!/bin/bash

set -euo pipefail

########################################
# Project Fortress Cleanup Script
#
# Cleans up Kubernetes resources that
# create AWS infrastructure before
# running terraform destroy.
########################################

AWS_REGION="us-east-1"
CLUSTER_NAME="project-bedrock-cluster"

APP_NAMESPACE="retail-app"

ALB_RELEASE="aws-load-balancer-controller"
ALB_NAMESPACE="kube-system"

echo "=========================================="
echo " Project Fortress Cleanup"
echo "=========================================="

########################################
# Refresh kubeconfig
########################################

echo ""
echo "Refreshing kubeconfig..."

aws eks update-kubeconfig \
    --region "$AWS_REGION" \
    --name "$CLUSTER_NAME"

########################################
# Delete Retail Application
########################################

echo ""
echo "Deleting Retail Store application..."

helm uninstall retail-store \
    -n "$APP_NAMESPACE" \
    || true

########################################
# Delete all Ingresses
########################################

echo ""
echo "Deleting Ingress resources..."

kubectl delete ingress \
    --all \
    -n "$APP_NAMESPACE" \
    --ignore-not-found

########################################
# Delete LoadBalancer Services
########################################

echo ""
echo "Deleting LoadBalancer Services..."

kubectl delete svc \
    --all \
    -n "$APP_NAMESPACE" \
    --ignore-not-found

########################################
# Delete remaining resources
########################################

echo ""
echo "Deleting remaining application resources..."

kubectl delete all \
    --all \
    -n "$APP_NAMESPACE" \
    --ignore-not-found

########################################
# Wait for ALB deletion
########################################

echo ""
echo "Waiting for AWS Load Balancers to be deleted..."

while true
do
    COUNT=$(aws elbv2 describe-load-balancers \
        --query "length(LoadBalancers)" \
        --output text)

    if [[ "$COUNT" == "0" ]]; then
        echo "No Load Balancers remaining."
        break
    fi

    echo "$COUNT Load Balancer(s) still exist..."
    sleep 15
done

########################################
# Delete ALB Controller
########################################

echo ""
echo "Removing AWS Load Balancer Controller..."

helm uninstall \
    "$ALB_RELEASE" \
    -n "$ALB_NAMESPACE" \
    || true

########################################
# Wait for Kubernetes objects
########################################

echo ""
echo "Waiting for AWS Load Balancer Controller resources..."

kubectl wait \
    --for=delete deployment/aws-load-balancer-controller \
    -n kube-system \
    --timeout=180s \
    || true

########################################
# Final Verification
########################################

echo ""
echo "Checking remaining AWS resources..."

echo ""
echo "Load Balancers:"
aws elbv2 describe-load-balancers

echo ""
echo "Network Interfaces:"
aws ec2 describe-network-interfaces \
    --filters Name=description,Values="*ELB*"

echo ""
echo "Security Groups:"
aws ec2 describe-security-groups \
    --filters Name=group-name,Values="k8s-*"

echo ""
echo "Cleanup completed."

echo ""
echo "You may now safely run:"

echo ""
echo "terraform destroy"