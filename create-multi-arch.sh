#!/bin/bash

export DOCKER_CLI_EXPERIMENTAL=enabled

docker manifest create quay.io/rpsene/hello-ocp:latest \
quay.io/rpsene/hello-ocp:x86_64 quay.io/rpsene/hello-ocp:ppc64le

docker manifest inspect quay.io/rpsene/hello-ocp

docker login quay.io -u "$ROBOT_USER" -p $ROBOT_TOKEN

docker manifest push quay.io/rpsene/hello-ocp:latest
