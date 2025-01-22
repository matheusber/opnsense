#!/bin/sh

TAG=ARM64
#TAG=RPI4
TAG_SRC="25.1.b"
TAG_CORE="25.1.b"
TAG_PLUGINS="25.1.b"
TAG_PORTS="25.1.b"
VERSION="25.1"

SRC_DIR=opnsense-confs

ROOTDIR=/usr
DATE="+%Y-%m-%d_%H:%M:%S"
DEVICE=ARM64
HOST=`hostname`
LOG=/root/opnsense-dev/log.$HOST.$TAG
