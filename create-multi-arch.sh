#!/bin/bash

export DOCKER_CLI_EXPERIMENTAL=enabled

docker manifest create quay.io/rpsene/multi-arch-travis:latest \
quay.io/rpsene/multi-arch-travis:x86_64 quay.io/rpsene/multi-arch-travis:ppc64le

docker manifest inspect quay.io/rpsene/multi-arch-travis

docker login quay.io -u "$ROBOT_USER" -p $ROBOT_TOKEN

docker manifest push quay.io/rpsene/multi-arch-travis:latest
