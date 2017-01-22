#!/bin/sh
set -x
set -e

# Set temp environment vars
export GOPATH=/tmp/go
export PATH=${PATH}:${GOPATH}/bin
#export GO15VENDOREXPERIMENT=1

# Build Gogs
git clone --depth 1 --single-branch https://github.com/go-gitea/gitea.git /app/gitea
mkdir -p ${GOPATH}/src/code.gitea.io/
ln -s /app/gitea ${GOPATH}/src/code.gitea.io/
cd ${GOPATH}/src/code.gitea.io/gitea
ls -la
#glide install
TAGS="bindata sqlite pam" make generate build

cp /app/gitea/gitea /binary/
