#!/bin/sh

# Script to sign tar files if it has not yet been done. Logs time it starts and finishes.

. env.sh

log_print $TAG_DEFAULT $LOG $DATE Start

make -C /usr/tools/ VERSION=$TAG_CORE DEVICE=$DEVICE sign-base,kernel,packages

log_print $TAG_DEFAULT $LOG $DATE End
