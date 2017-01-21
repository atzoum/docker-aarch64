#!/bin/sh
DOCKER_VERSION=1.13.0 && \
systemctl stop docker.service && \
wget https://dl.dropboxusercontent.com/u/3207856/docker-${DOCKER_VERSION}.tgz -P /tmp/ && \
tar -xvf /tmp/docker-${DOCKER_VERSION}.tgz -C /usr/bin/ --strip-components=1 && \
rm /tmp/docker-${DOCKER_VERSION}.tgz && \
systemctl daemon-reload && \
systemctl start docker.service
