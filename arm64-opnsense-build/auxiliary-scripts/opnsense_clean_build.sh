#!/bin/sh

# Script to clean build environment

. env.sh

umount /usr/obj/usr/tools/config/${VERSION}/aarch64/usr/ports
umount /usr/obj/usr/tools/config/${VERSION}/aarch64/usr/src
umount /usr/obj/usr/tools/config/${VERSION}/aarch64/dev


cd /usr/obj
rm -rf usr/; chflags -R nosimmutable *; chflags -R nouimmutable *; rm -rf usr/
