#!/bin/bash

set -e

if [[ -z $1 ]]; then echo "Environment is not specified"; exit 1; else export ENVIRONMENT="$1"; fi

echo "Environment: $ENVIRONMENT"

kubectl apply -f ./service.yaml -n $ENVIRONMENT
