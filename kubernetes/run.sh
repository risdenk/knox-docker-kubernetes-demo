#!/usr/bin/env bash

kubectl create namespace knox
kubectl -n knox create serviceaccount knox

kubectl -n knox run knox-gateway --serviceaccount=knox --restart=Never --image apache/knox:gateway-1.3.0-SNAPSHOT
kubectl -n knox expose pod knox-gateway --type=NodePort --port=8443 --name=knox

KNOX_ADDR="https://127.0.0.1:$(kubectl -n knox get services knox-gateway -o=jsonpath='{.spec.ports[?(@.port==8443)].nodePort}')/gateway/manager/admin-ui/index.html"
open "$KNOX_ADDR"
 
