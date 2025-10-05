#!/bin/bash

# This script creates a sealed secret for the Waha Integrator application.
# It uses kubectl and kubeseal to create a sealed secret that can be safely stored
# in version control.

# How to get your WAHA API Key: https://waha.devlike.pro/docs/how-to/security/
WAHA_API_KEY="<your_waha_api_key>"

# --scope cluster-wide (usable in any namespace/name — less restrictive; use with care)
kubectl create secret generic waha-integrator-secrets \
  --from-literal=WAHA_API_KEY="$WAHA_API_KEY" \
  --dry-run=client -o json \
| kubeseal --format yaml --scope cluster-wide \
> waha-integrator-secrets.cluster.sealed.yaml