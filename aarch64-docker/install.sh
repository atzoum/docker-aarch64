#!/bin/sh
DOCKER_VERSION=17.03.0-ce && \
echo "stopping docker service" && \
systemctl stop docker.service && \
echo "downloading docker-${DOCKER_VERSION}.tgz to /tmp/" && \
wget -q https://github.com/atzoum/docker-aarch64/releases/download/docker-${DOCKER_VERSION}/docker-${DOCKER_VERSION}.tgz -P /tmp/ && \
echo "extracting binaries" && \
tar -xvf /tmp/docker-${DOCKER_VERSION}.tgz -C /usr/bin/ --strip-components=1 && \
echo "removing temporary files" && \
rm /tmp/docker-${DOCKER_VERSION}.tgz && \
echo "starting docker service" && \
systemctl daemon-reload && \
systemctl start docker.service && \
echo "enjoy!"
