#!/bin/sh
FLAGS=${1:-"-td"}
NETWORK=${NETWORK:-"kazoo"} 
NAME=rabbitmq.$NETWORK
docker stop $NAME
docker rm $NAME
docker run $FLAGS --net $NETWORK -h $NAME --name $NAME kazoo/rabbitmq
