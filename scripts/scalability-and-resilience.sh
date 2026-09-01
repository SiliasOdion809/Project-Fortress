#!/usr/bin/env bash

set -euo pipefail

NAMESPACE="retail-app"
METRICS_NAMESPACE="kube-system"
UI_DEPLOYMENT="ui"

echo "========================================================"
echo " Retail Store - scalability and resilience Automation"
echo "========================================================"

echo
echo "[1/10] Checking Kubernetes connection..."
kubectl cluster-info

echo
echo "[2/10] Checking Kubernetes nodes..."
kubectl get nodes -o wide

echo
echo "[3/10] Installing/upgrading Metrics Server..."

kubectl apply \
  -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

echo "Waiting for Metrics Server..."
kubectl rollout status \
  deployment/metrics-server \
  -n "$METRICS_NAMESPACE" \
  --timeout=180s

echo
echo "[4/10] Waiting for Metrics API..."

for i in {1..30}; do
    if kubectl top nodes >/dev/null 2>&1; then
        echo "Metrics API is ready."
        break
    fi

    echo "Waiting for Metrics API... ($i/30)"
    sleep 10
done

echo
echo "Node metrics:"
kubectl top nodes

echo
echo "Pod metrics:"
kubectl top pods -n "$NAMESPACE"

echo
echo "[5/10] Checking application deployments..."
kubectl get deployments -n "$NAMESPACE"

echo
echo "[6/10] Checking application pods..."
kubectl get pods -n "$NAMESPACE"

echo
echo "[7/10] Checking Services..."
kubectl get svc -n "$NAMESPACE"

echo
echo "[8/10] Checking HPA..."
kubectl get hpa -n "$NAMESPACE"

echo
echo "Detailed HPA status:"
kubectl describe hpa -n "$NAMESPACE"

echo
echo "[9/10] Checking Ingress / ALB..."
kubectl get ingress -n "$NAMESPACE"

ALB_HOST=$(kubectl get ingress ui \
    -n "$NAMESPACE" \
    -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')

if [[ -z "$ALB_HOST" ]]; then
    echo
    echo "ERROR: ALB hostname is not available yet."
    exit 1
fi

echo
echo "ALB:"
echo "http://$ALB_HOST"

echo
echo "Testing ALB..."

HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" \
    --max-time 30 \
    "http://$ALB_HOST")

echo "HTTP status: $HTTP_STATUS"

if [[ "$HTTP_STATUS" != "200" ]]; then
    echo
    echo "WARNING: ALB responded with HTTP $HTTP_STATUS"
else
    echo
    echo "ALB is responding successfully."
fi

echo
echo "[10/10] Final scalability and resilience verification..."

echo
echo "Deployments:"
kubectl get deployments -n "$NAMESPACE"

echo
echo "Pods:"
kubectl get pods -n "$NAMESPACE"

echo
echo "HPA:"
kubectl get hpa -n "$NAMESPACE"

echo
echo "Ingress:"
kubectl get ingress -n "$NAMESPACE"

echo
echo "=================================================="
echo " SCALABILITY-AND-RESILIENCE AUTOMATION COMPLETE"
echo "=================================================="

echo
echo "Application URL:"
echo "http://$ALB_HOST"

echo
echo "Next recommended command:"
echo "terraform plan"