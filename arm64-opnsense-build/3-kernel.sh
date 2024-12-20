#!/bin/sh

# Script to build kernel. Logs time it starts and finishes.

. env.sh

echo -n "$0 Version: $TAG_SRC Inicio:   " >> $LOG
date  $DATE >> $LOG

make -C /usr/tools/ VERSION=$TAG_SRC DEVICE=$DEVICE kernel

echo -n "$0 Version: $TAG_SRC Final:    " >> $LOG
date  $DATE >> $LOG
