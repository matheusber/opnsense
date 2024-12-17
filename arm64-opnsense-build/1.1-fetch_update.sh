#!/bin/sh

# Script to clone opnsense git and fire up the tools update.
# Builds the pkg version featured on opnsense ports repo
# Copies R5S device conf files and custom config files

. env.sh

# clone the opnsense/tools
git clone --depth=1 https://github.com/opnsense/tools.git /usr/tools

rm -rf /usr/tools/config/24.1

# fetch all source codes
make -C /usr/tools update

# Save current dir for future references
CURRENT_DIR=`pwd`

# make and install the old version of pkg used by opnsense
cd /usr/ports/ports-mgmt/pkg/
make -j4
make deinstall
make reinstall
pkg lock pkg

# Back to initial dir
cd $CURRENT_DIR

echo "Copy R5S conf files"
cp $SRC_DIR/R5S.conf $SRC_DIR/R5S_SD.conf /usr/tools/device

echo "Copy custom .conf files"
cp $SRC_DIR/extras.conf $SRC_DIR/plugins.conf $SRC_DIR/ports.conf /usr/tools/config/$VERSION/

# Copy R5S boot files
echo "Copy R5S u-boot files"
cp -Rv u-boot-nanopi-r5s /usr/local/share/u-boot/

# install needed packages
echo pkg install u-boot-nanopi-r4s
pkg install u-boot-nanopi-r4s
