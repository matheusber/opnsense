#!/bin/sh

. env.sh

echo -n "$0 Inicio:    " >> $LOG
date  $DATE >> $LOG

make -C /usr/tools/ VERSION=$TAG_PORTS DEVICE=$DEVICE ports

echo -n "$0 Final:     " >> $LOG
date  $DATE >> $LOG
