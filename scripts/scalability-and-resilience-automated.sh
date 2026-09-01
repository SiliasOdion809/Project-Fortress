#!/usr/bin/env bash

set -euo pipefail

NAMESPACE="retail-app"
METRICS_NAMESPACE="kube-system"
UI_DEPLOYMENT="ui"
LOAD_GENERATOR_PREFIX="hpa-load-generator"

echo "========================================================"
echo " Retail Store - scalability and resilience Automation"
echo "========================================================"

cleanup() {
    echo
    echo "Cleaning up HPA load generators..."
    kubectl delete pods -n "$NAMESPACE" \
      -l "app.kubernetes.io/component=$LOAD_GENERATOR_PREFIX" \
      --ignore-not-found=true >/dev/null 2>&1 || true
}
trap cleanup EXIT

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

    if [[ "$i" -eq 30 ]]; then
        echo "ERROR: Metrics API did not become ready."
        exit 1
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

HPA_MIN=$(kubectl get hpa "$UI_DEPLOYMENT" -n "$NAMESPACE" -o jsonpath='{.spec.minReplicas}')
HPA_MAX=$(kubectl get hpa "$UI_DEPLOYMENT" -n "$NAMESPACE" -o jsonpath='{.spec.maxReplicas}')
HPA_TARGET=$(kubectl get hpa "$UI_DEPLOYMENT" -n "$NAMESPACE" -o jsonpath='{.spec.metrics[0].resource.target.averageUtilization}')

if [[ -z "$HPA_MIN" || -z "$HPA_MAX" || -z "$HPA_TARGET" ]]; then
    echo "ERROR: Could not read UI HPA configuration."
    exit 1
fi

echo "UI HPA: minReplicas=$HPA_MIN maxReplicas=$HPA_MAX targetCPU=${HPA_TARGET}%"

if (( HPA_MIN != 1 )); then
    echo "ERROR: This automated test expects UI HPA minReplicas=1."
    exit 1
fi

if (( HPA_MAX != 10 )); then
    echo "ERROR: This automated test expects UI HPA maxReplicas=10."
    exit 1
fi

echo
echo "Establishing deterministic baseline: waiting for UI to return to $HPA_MIN ready replica(s)..."
BASELINE_SUCCESS=false

for i in {1..40}; do
    INITIAL_REPLICAS=$(kubectl get deployment "$UI_DEPLOYMENT" -n "$NAMESPACE" -o jsonpath='{.status.readyReplicas}')
    INITIAL_REPLICAS=${INITIAL_REPLICAS:-0}

    HPA_LINE=$(kubectl get hpa "$UI_DEPLOYMENT" -n "$NAMESPACE" --no-headers 2>/dev/null || true)
    echo "[$i/40] $HPA_LINE | ready replicas: $INITIAL_REPLICAS"

    if (( INITIAL_REPLICAS == HPA_MIN )); then
        BASELINE_SUCCESS=true
        break
    fi

    sleep 15
done

if [[ "$BASELINE_SUCCESS" != "true" ]]; then
    echo "ERROR: UI did not return to the configured minimum of $HPA_MIN replicas."
    echo "Final HPA state:"
    kubectl describe hpa "$UI_DEPLOYMENT" -n "$NAMESPACE"
    exit 1
fi

INITIAL_REPLICAS=$HPA_MIN
echo "Baseline established: $INITIAL_REPLICAS ready UI replica(s)."

echo
echo "[9/10] Running automated HPA scale-up / scale-down test..."

echo
echo "Starting controlled HTTP load against the UI Service..."

for n in 1 2 3; do
    kubectl run "${LOAD_GENERATOR_PREFIX}-${n}" \
      -n "$NAMESPACE" \
      --image=busybox:1.36 \
      --restart=Never \
      --labels="app.kubernetes.io/component=${LOAD_GENERATOR_PREFIX}" \
      -- /bin/sh -c '
        for i in $(seq 1 20); do
          while true; do
            wget -q -O /dev/null --timeout=2 http://ui || true
          done &
        done
        wait
      '
done

sleep 20

echo
echo "Monitoring HPA scale-up to the configured maximum of $HPA_MAX replicas..."
SCALE_UP_SUCCESS=false
MAX_OBSERVED_REPLICAS=$INITIAL_REPLICAS

for i in {1..40}; do
    CURRENT_REPLICAS=$(kubectl get deployment "$UI_DEPLOYMENT" -n "$NAMESPACE" -o jsonpath='{.status.readyReplicas}')
    CURRENT_REPLICAS=${CURRENT_REPLICAS:-0}

    DESIRED_REPLICAS=$(kubectl get deployment "$UI_DEPLOYMENT" -n "$NAMESPACE" -o jsonpath='{.spec.replicas}')
    DESIRED_REPLICAS=${DESIRED_REPLICAS:-0}

    HPA_LINE=$(kubectl get hpa "$UI_DEPLOYMENT" -n "$NAMESPACE" --no-headers 2>/dev/null || true)

    if (( CURRENT_REPLICAS > MAX_OBSERVED_REPLICAS )); then
        MAX_OBSERVED_REPLICAS=$CURRENT_REPLICAS
    fi

    echo "[$i/40] $HPA_LINE | desired replicas: $DESIRED_REPLICAS | ready replicas: $CURRENT_REPLICAS"

    if (( CURRENT_REPLICAS >= HPA_MAX && DESIRED_REPLICAS >= HPA_MAX )); then
        SCALE_UP_SUCCESS=true
        echo "✓ HPA scale-up reached the configured maximum: $INITIAL_REPLICAS -> $CURRENT_REPLICAS replicas."
        break
    fi

    sleep 15
done

if [[ "$SCALE_UP_SUCCESS" != "true" ]]; then
    echo "ERROR: HPA did not reach its configured maximum of $HPA_MAX replicas."
    echo "Maximum ready replicas observed: $MAX_OBSERVED_REPLICAS"
    echo "Final HPA state:"
    kubectl describe hpa "$UI_DEPLOYMENT" -n "$NAMESPACE"
    exit 1
fi

echo
echo "Scale-up evidence:"
kubectl get hpa "$UI_DEPLOYMENT" -n "$NAMESPACE"
kubectl get deployment "$UI_DEPLOYMENT" -n "$NAMESPACE"
kubectl get pods -n "$NAMESPACE" -l app.kubernetes.io/name="$UI_DEPLOYMENT"
kubectl top pods -n "$NAMESPACE"

echo
echo "Stopping load generators..."
cleanup
trap - EXIT

echo
echo "Monitoring HPA scale-down..."
SCALE_DOWN_SUCCESS=false

for i in {1..40}; do
    CURRENT_REPLICAS=$(kubectl get deployment "$UI_DEPLOYMENT" -n "$NAMESPACE" -o jsonpath='{.status.readyReplicas}')
    CURRENT_REPLICAS=${CURRENT_REPLICAS:-0}
    HPA_LINE=$(kubectl get hpa "$UI_DEPLOYMENT" -n "$NAMESPACE" --no-headers 2>/dev/null || true)

    echo "[$i/40] $HPA_LINE | ready replicas: $CURRENT_REPLICAS"

    if (( CURRENT_REPLICAS <= HPA_MIN )); then
        SCALE_DOWN_SUCCESS=true
        echo "✓ HPA scale-down detected: returned to $CURRENT_REPLICAS replicas."
        break
    fi

    sleep 15
done

if [[ "$SCALE_DOWN_SUCCESS" != "true" ]]; then
    echo "ERROR: HPA did not return to its configured minimum replica count."
    echo "Final HPA state:"
    kubectl describe hpa "$UI_DEPLOYMENT" -n "$NAMESPACE"
    exit 1
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

ALB_HOST=$(kubectl get ingress ui \
    -n "$NAMESPACE" \
    -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')

if [[ -z "$ALB_HOST" ]]; then
    echo "ERROR: ALB hostname is not available."
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
    echo "ERROR: ALB responded with HTTP $HTTP_STATUS"
    exit 1
fi

echo "✓ ALB is responding successfully."

echo
echo "=================================================="
echo " SCALABILITY-AND-RESILIENCE AUTOMATION PASSED"
echo "=================================================="

echo
echo "Test result:"
echo "  Initial replicas: $INITIAL_REPLICAS"
echo "  HPA target CPU:   ${HPA_TARGET}%"
echo "  Maximum replicas: $HPA_MAX (observed ready: $MAX_OBSERVED_REPLICAS)"
echo "  Scale-up:         PASSED"
echo "  Scale-down:       PASSED"
echo "  ALB health:       PASSED"

echo
echo "Application URL:"
echo "http://$ALB_HOST"