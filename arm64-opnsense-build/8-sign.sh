#!/bin/sh

. env.sh

echo -n "$0 Inicio:   " >> $LOG
date  $DATE >> $LOG

make -C /usr/tools/ VERSION=$TAG_CORE DEVICE=$DEVICE sign-base,kernel,packages

echo -n "$0 Final:    " >> $LOG
date  $DATE >> $LOG
