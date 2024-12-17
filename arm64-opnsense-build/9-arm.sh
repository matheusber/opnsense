#!/bin/sh

. env.sh

if [ ! -z $1 ]; then
 DEVICE=$1
fi

make -C /usr/tools/ VERSION=$TAG_SRC DEVICE=$DEVICE arm-8G
