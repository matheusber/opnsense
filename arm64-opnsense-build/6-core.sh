#!/bin/sh

# Script to build core. Logs time it starts and finishes.

. env.sh

echo -n "$0 Version: $TAG_CORE Inicio:     " >> $LOG
date  $DATE >> $LOG

make -C /usr/tools/ VERSION=$TAG_CORE DEVICE=$DEVICE core

echo -n "$0 Version: $TAG_CORE Final:      " >> $LOG
date  $DATE >> $LOG
