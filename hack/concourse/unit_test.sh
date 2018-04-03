#!/bin/sh

set -x -e

mkdir -p $GOPATH/src/github.com/appscode
cp -r stash $GOPATH/src/github.com/appscode
cd $GOPATH/src/github.com/appscode/stash

./make.py test unit
