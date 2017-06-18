#!/bin/bash
#
# can't run configure on systems where /usr/bin/python is python3, and
# it's often inconvenient to switch symlinks. So we make a tmp dir &
# stick on front of path.

mkdir -p /tmp/node-py2-dir
path=${PYTHON_EXE:-/usr/bin/python2}
ln -sf $path /tmp/node-py2-dir/python

PATH=/tmp/node-py2-dir:$PATH ./configure
