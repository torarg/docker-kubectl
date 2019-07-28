#!/usr/bin/env bash

KUBE_DIR=~/.kube

[[ ! -d $KUBE_DIR ]] && mkdir -p $KUBE_DIR
[[ ! -f $KUBE_DIR/config && -n $CONFIG ]] && echo $CONFIG | base64 -d > $KUBE_DIR/config

echo "kube_config: $CONFIG"
/usr/bin/env bash
