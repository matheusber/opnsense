#!/bin/sh

TAG=ARM64
#TAG=RPI4
TAG_SRC="24.7.9"
TAG_CORE="24.7.9"
TAG_PLUGINS="24.7.9"
TAG_PORTS="24.7.9"
VERSION="24.7"

SRC_DIR=opnsense-confs

ROOTDIR=/usr
DATE="+%Y-%m-%d_%H:%M:%S"
DEVICE=ARM64
HOST=`hostname`
LOG=/root/opnsense-dev/log.$HOST.$TAG
