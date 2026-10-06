#!/bin/sh

# Script to build imag for a device. Logs time it starts and finishes.

. env.sh

if [ ! -z $1 ]; then
 DEVICE=$1
fi

log_print $TAG_DEFAULT $LOG $DATE Inicio

make -C /usr/tools/ SRCBRANCH=HEAD VERSION=$TAG_DEFAULT DEVICE=$DEVICE arm-$IMAGE_SIZE

log_print $TAG_DEFAULT $LOG $DATE Final
