#!/bin/sh

TAG=ARM64
#TAG=RPI4
TAG_SRC="24.7.8"
TAG_CORE="24.7.8"
TAG_PLUGINS="24.7.8"
TAG_PORTS="24.7.8"
VERSION="24.7"

SRC_DIR=opnsense-confs

ROOTDIR=/usr
DATE="+%Y-%m-%d_%H:%M:%S"
DEVICE=ARM64
HOST=`hostname`
LOG=/root/opnsense-dev/log.$HOST.$TAG
