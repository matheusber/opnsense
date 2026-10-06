#!/bin/sh

# Script to build packages. Logs time it starts and finishes.

. env.sh

log_print $TAG_DEFAULT $LOG $DATE Inicio

make -C /usr/tools/ VERSION=$TAG_DEFAULT DEVICE=$DEVICE packages

log_print $TAG_DEFAULT $LOG $DATE Final
