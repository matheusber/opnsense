#!/bin/sh

TAG=ARM64
TAG_SRC="25.1.7"
TAG_CORE="25.1.7-local"
TAG_PLUGINS="25.1.7"
TAG_PORTS="25.1.7"
VERSION="25.1"

SRC_DIR=opnsense-confs

ROOTDIR=/usr
DATE="+%Y-%m-%d_%H:%M:%S"
DEVICE=ARM64
HOST=`hostname`
IMAGE_SIZE=3G
LOGDIR=/root/opnsense-dev/
LOG=$LOGDIR/log.$HOST.$TAG

# Functions used

log_print () {
 SCRIPT=$0
 TAG_SRC_FUNC=$1
 LOG_FILE=$2
 DATE_FUNC=$3
 STATE=$4

 echo -n "$SCRIPT $TAG_SRC_FUNC $DEVICE $IMAGE_SIZE $STATE: $(printf '\t')" >> $LOG_FILE
 date  $DATE_FUNC >> $LOG_FILE
}
