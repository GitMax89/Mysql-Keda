#!/bin/bash

APP_DIR="./deployment"
FIRST_STEP="./deployment/config"
SECOND_STEP="./deployment/install"

if [ -d "$APP_DIR" ]; then
   microk8s.kubectl apply -f $FIRST_STEP && sleep 8 && microk8s.kubectl apply -f $SECOND_STEP || echo "this folder $APP_DIR does not exist." && exit 1
fi 

