#!/bin/sh

# Script to build imag for a device. Logs time it starts and finishes.

. env.sh

if [ ! -z $1 ]; then
 DEVICE=$1
fi

log_print $TAG_DEFAULT $LOG $DATE Start

make -C /usr/tools/ VERSION=$TAG_DEFAULT DEVICE=$DEVICE arm-$IMAGE_SIZE

log_print $TAG_DEFAULT $LOG $DATE End
