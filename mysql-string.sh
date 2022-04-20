#!/bin/bash


SERVICE_IP=`microk8s.kubectl get svc | grep mysql | awk '{print $3}'`
STRING=`echo -n "root:password@tcp("$SERVICE_IP":3306)/stats_db" | base64`
MY_FILE="./deployment/install/mysql-keda-hpa.yaml"
OP=$(echo -n $SERVICE_IP | wc -c)

echo "change mysql string" && sleep 2


if [[ $(( $OP > "0" )) ]]; then
   sed -i "s/mysql_conn_str: mysqlstring/mysql_conn_str: "$STRING"/g" $MY_FILE && echo "change complete!" || echo "Service IP not present. Microk8s is running?" && exit 1
fi


   	
