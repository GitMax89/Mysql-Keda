#!/bin/bash


if [ -d "$APP_DIR" ]; then
   microk8s.kubectl delete secret/mysql-secrets && microk8s.kubectl delete triggerauthentication.keda.sh/keda-trigger-auth-mysql-secret && microk8s.kubectl delete scaledobject mysql-scaledobject
fi

echo "status exited = $?"
