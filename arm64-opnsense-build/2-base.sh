#!/bin/sh

# Script to build base. Logs time it starts and finishes.

. env.sh

echo -n "$0 Inicio:     " >> $LOG
date  $DATE >> $LOG

make -C /usr/tools/ VERSION=$TAG_SRC DEVICE=$DEVICE base

echo -n "$0 Final:      " >> $LOG
date  $DATE >> $LOG
