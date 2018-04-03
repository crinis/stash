#!/bin/sh

set -x -e

mkdir -p $GOPATH/src/github.com/appscode
cp -r stash $GOPATH/src/github.com/appscode
cd $GOPATH/src/github.com/appscode/stash

go get golang.org/x/tools/cmd/goimports
./hack/make.py
./hack/make.py test unit
