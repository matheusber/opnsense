#!/bin/sh

# Script to build base. Logs time it starts and finishes.

. env.sh

log_print $TAG_SRC $LOG $DATE Inicio

make -C /usr/tools/ VERSION=$TAG_SRC DEVICE=$DEVICE base

log_print $TAG_SRC $LOG $DATE Final
