#!/bin/sh

TAG=ARM64
#TAG=RPI4
TAG_SRC="24.7.3"
TAG_CORE="24.7.3"
TAG_PLUGINS="24.7.3"
TAG_PORTS="24.7.3"
VERSION="24.7.3"

SRC_DIR=opnsense-confs

ROOTDIR=/usr
DATE="+%Y-%m-%d_%H:%M:%S"
#DEVICE=R4S
DEVICE=R5S_SD
#DEVICE=RPI
HOST=`hostname`
LOG=/root/opnsense-dev/log.$HOST.$TAG
