#!/usr/bin/env bash

helm repo add knox 'https://raw.githubusercontent/com/risdenk/knox-helm-chart/master/'
helm repo update
helm search knox

helm install --name knox --namespace knox knox/knox

