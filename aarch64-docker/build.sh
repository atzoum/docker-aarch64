#!/bin/sh
set -x
git clone --depth 1 --branch v${1} https://github.com/docker/docker.git /docker-build-workspace
cd docker-build-workspace
make tgz