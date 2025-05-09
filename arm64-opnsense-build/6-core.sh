#!/bin/sh

# Script to build core. Logs time it starts and finishes.

. env.sh

log_print $TAG_SRC $LOG $DATE Inicio

make -C /usr/tools/ VERSION=$TAG_CORE DEVICE=$DEVICE COREBRANCH=25.1.5-local core

log_print $TAG_SRC $LOG $DATE Final
