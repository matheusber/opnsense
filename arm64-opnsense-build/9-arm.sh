#!/bin/sh

. env.sh

if [ ! -z $1 ]; then
 DEVICE=$1
fi

echo -n "$0 Version: $TAG_SRC DEVICE: $DEVICE Inicio:     " >> $LOG
date  $DATE >> $LOG

make -C /usr/tools/ VERSION=$TAG_SRC DEVICE=$DEVICE arm-8G

echo -n "$0 Version: $TAG_SRC DEVICE: $DEVICE Final:      " >> $LOG
date  $DATE >> $LOG
