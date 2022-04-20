#!/bin/bash

APP_DIR="./deployment"
FIRST_STEP="./deployment/config"
SECOND_STEP="./deployment/install"

if [ -d "$APP_DIR" ]; then
   microk8s.kubectl apply -f $FIRST_STEP && sleep 8 && microk8s.kubectl apply -f $SECOND_STEP || echo la folder $APP_DIR non esiste. && exit 1
fi 

echo "status exited = $?"
