#!/bin/bash

set -e

AWS_REGION="us-east-1"

echo "========================================"
echo "Deleting Project Fortress Secrets"
echo "========================================"

SECRETS=(
  "project-fortress/dev/mysql"
  "project-fortress/dev/postgres"
)

for SECRET in "${SECRETS[@]}"; do
    echo
    echo "Deleting: $SECRET"

    aws secretsmanager delete-secret \
        --secret-id "$SECRET" \
        --region "$AWS_REGION" \
        --force-delete-without-recovery

    echo "✓ Deleted $SECRET"
done

echo
echo "========================================"
echo "All secrets deleted successfully!"
echo "========================================"