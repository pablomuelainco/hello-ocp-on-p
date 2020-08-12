#!/bin/bash

ARCH=$(uname -m)

docker build -t quay.io/rpsene/hello-ocp:$ARCH -f ./Dockerfile.$ARCH .
docker login quay.io -u "$ROBOT_USER" -p $ROBOT_TOKEN
docker push quay.io/rpsene/hello-ocp:$ARCH
