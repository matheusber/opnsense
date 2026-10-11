#!/bin/sh

# Script to build ports. Logs time it starts and finishes.

. env.sh

log_print $TAG_DEFAULT $LOG $DATE Start

make -C /usr/tools/ VERSION=$TAG_PORTS DEVICE=$DEVICE ports

log_print $TAG_DEFAULT $LOG $DATE End
