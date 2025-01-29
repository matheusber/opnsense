#!/bin/sh

# Script to build ports. Logs time it starts and finishes.

. env.sh

log_print $TAG_SRC $LOG $DATE Inicio

make -C /usr/tools/ VERSION=$TAG_PORTS DEVICE=$DEVICE ports

log_print $TAG_SRC $LOG $DATE Final
