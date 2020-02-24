#!/bin/bash
[ -e $CLIENTS/kubectl ] || curl -sLf --retry 3 -o $CLIENTS/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.14.0/bin/linux/amd64/kubectl
cp $CLIENTS/kubectl $BIN/
chmod +x $BIN/kubectl