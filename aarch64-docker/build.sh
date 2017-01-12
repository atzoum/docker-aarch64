#!/bin/sh
set -x
rm -rf /workspace/*
git clone --depth 1 --branch v${1} https://github.com/docker/docker.git /workspace
cd workspace
make tgz