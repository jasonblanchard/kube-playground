#!/usr/bin/env bash

vault write auth/kubernetes/role/say-hello-rw-role bound_service_account_names=say-hello bound_service_account_namespaces=playground policies=say-hello-job ttl=24h
vault policy write say-hello-job say-hello-kv.hcl
