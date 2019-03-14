#!/usr/bin/env bash

docker-compose up -d

export KNOX_ADDR="https://127.0.0.1:8443/gateway/manager/admin-ui/index.html"
open $KNOX_ADDR

docker-compose logs -f gateway

