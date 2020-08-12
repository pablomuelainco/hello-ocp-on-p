FROM ppc64le/golang:latest

MAINTAINER Rafael Sene <rpsene@gmail.com>

COPY bin/hello-openshift-power /hello-openshift-power

EXPOSE 8080 8888

USER 1001

ENTRYPOINT ["/hello-openshift-power"]
