#!/bin/sh

set -x -e

mkdir -p $GOPATH/src/github.com/appscode
cp -r pull-request $GOPATH/src/github.com/appscode/stash
cd $GOPATH/src/github.com/appscode/stash/hack
echo "testing commit"
git rev-parse HEAD

./make.py test unit
