#!/bin/sh

# Script to build packages. Logs time it starts and finishes.

. env.sh

log_print $TAG_SRC $LOG $DATE Inicio

make -C /usr/tools/ VERSION=$TAG_SRC DEVICE=$DEVICE packages

log_print $TAG_SRC $LOG $DATE Final
