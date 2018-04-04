#!/bin/sh

set -x -e

mkdir -p $GOPATH/src/github.com/appscode
cp -r pull-request $GOPATH/src/github.com/appscode/stash
cd $GOPATH/src/github.com/appscode/stash
echo "testing commit"
git rev-parse HEAD

go get golang.org/x/tools/cmd/goimports
./hack/make.py
./hack/make.py test unit
