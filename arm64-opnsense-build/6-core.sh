#!/bin/sh

# Script to build core. Logs time it starts and finishes.

. env.sh

log_print $TAG_SRC $LOG $DATE Inicio

make -C /usr/tools/ VERSION=$TAG_CORE DEVICE=$DEVICE COREBRANCH=$TAG_CORE core

log_print $TAG_SRC $LOG $DATE Final
