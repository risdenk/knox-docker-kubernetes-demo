#!/usr/bin/env bash

docker run -d --name ldap -p 33389:33389 apache/knox:ldap-1.3.0-SNAPSHOT
docker run -d --name gateway -p 8443:8443 apache/knox:gateway-1.3.0-SNAPSHOT

export KNOX_ADDR="https://127.0.0.1:8443/gateway/manager/admin-ui/index.html"
open $KNOX_ADDR

docker logs -f gateway

