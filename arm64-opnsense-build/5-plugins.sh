#!/bin/sh

# Script to build plugins. Logs time it starts and finishes.

. env.sh

echo -n "$0 Inicio:  " >> $LOG
date  $DATE >> $LOG

make -C /usr/tools/ VERSION=$TAG_PLUGINS DEVICE=$DEVICE plugins

echo -n "$0 Final:   " >> $LOG
date  $DATE >> $LOG
