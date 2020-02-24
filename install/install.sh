#!/bin/bash
export CLIENTS=/tmp/dl
export BIN=${BIN:-/usr/local/bin}

mkdir -p $CLIENTS

for client in $*; do
  "$(dirname $0)/install-${client}.sh"
done