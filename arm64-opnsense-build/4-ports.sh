#!/bin/sh

# Script to build ports. Logs time it starts and finishes.

. env.sh

echo -n "$0 Version: $TAG_PORTS Inicio:    " >> $LOG
date  $DATE >> $LOG

make -C /usr/tools/ VERSION=$TAG_PORTS DEVICE=$DEVICE ports

echo -n "$0 Version: $TAG_PORTS Final:     " >> $LOG
date  $DATE >> $LOG
