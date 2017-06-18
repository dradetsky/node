#!/bin/bash
#
# see configure-force-py2.sh

mkdir -p /tmp/node-py2-dir
path=${PYTHON_EXE:-/usr/bin/python2}
ln -sf $path /tmp/node-py2-dir/python

PATH=/tmp/node-py2-dir:$PATH make $@
