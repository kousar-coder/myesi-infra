#!/usr/bin/env bash
set -e
kubectl label namespace production istio-injection=enabled --overwrite
for d in $(kubectl get deployments -n production -o jsonpath='{.items[*].metadata.name}'); do
  kubectl rollout restart deployment/$d -n production || true
done
