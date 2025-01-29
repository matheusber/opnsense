#!/bin/sh

# Script to build plugins. Logs time it starts and finishes.

. env.sh

log_print $TAG_SRC $LOG $DATE Inicio

make -C /usr/tools/ VERSION=$TAG_PLUGINS DEVICE=$DEVICE plugins

log_print $TAG_SRC $LOG $DATE Final
