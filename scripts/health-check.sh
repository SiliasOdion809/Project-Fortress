#!/bin/bash

kubectl get pods -A

aws eks describe-cluster \
--name project-fortress-cluster \
--region us-east-1