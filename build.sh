#!/bin/bash

SRC="/src/github.com/containers/libpod"

git clone http://github.com/containers/libpod/ $SRC

cd $SRC
make
make podman-remote-darwin
make podman-remote-windows

cp -v bin/* /output

echo "your podman builds are in ./output"
