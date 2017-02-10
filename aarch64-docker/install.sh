#!/bin/sh
DOCKER_VERSION=1.13.1 && \
echo "stopping docker service" && \
systemctl stop docker.service && \
echo "downloading docker-${DOCKER_VERSION}.tgz to /tmp/" && \
wget -q https://dl.dropboxusercontent.com/u/3207856/docker-${DOCKER_VERSION}.tgz -P /tmp/ && \
echo "extracting binaries" && \
tar -xvf /tmp/docker-${DOCKER_VERSION}.tgz -C /usr/bin/ --strip-components=1 && \
echo "removing temporary files" && \
rm /tmp/docker-${DOCKER_VERSION}.tgz && \
echo "starting docker service" && \
systemctl daemon-reload && \
systemctl start docker.service && \
echo "enjoy!"
