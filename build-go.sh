#!/bin/bash

go build -tags netgo -o hello-openshift
ls -la
mv hello-openshift ./bin
