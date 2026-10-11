#!/bin/sh

# Script to build plugins. Logs time it starts and finishes.

. env.sh

log_print $TAG_DEFAULT $LOG $DATE Start

make -C /usr/tools/ VERSION=$TAG_PLUGINS DEVICE=$DEVICE plugins

log_print $TAG_DEFAULT $LOG $DATE End
