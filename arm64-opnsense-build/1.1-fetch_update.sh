#!/bin/sh

# Script to clone opnsense git and fire up the tools update.
# Builds the pkg version featured on opnsense ports repo
# Copies R5S device conf files and custom config files

. env.sh

# Create LOGDIR
mkdir -p $LOGDIR

# clone the opnsense/tools
git clone --depth=1 https://github.com/opnsense/tools.git /usr/tools

rm -rf /usr/tools/config/25.7

# fetch all source codes
make -C /usr/tools update

# Save current dir for future references
CURRENT_DIR=`pwd`

# make and install the old version of pkg used by opnsense
cd /usr/ports/ports-mgmt/pkg/
make -j4
pkg unlock -y pkg
#make deinstall
make reinstall
pkg lock -y pkg

# Back to initial dir
cd $CURRENT_DIR

echo "Copy R5S and Orange Pi 5 Plus conf files"
cp $SRC_DIR/R5S_USB.conf $SRC_DIR/R5S_UBOOT.conf $SRC_DIR/R5S_EDK2.conf $SRC_DIR/OP5P_MBR.conf /usr/tools/device

echo "Copy custom rc file"
cp $SRC_DIR/usr-core-src-etc-rc /usr/core/src/etc/rc

#echo "Copy custom .conf files"
#cp $SRC_DIR/extras.conf $SRC_DIR/plugins.conf $SRC_DIR/ports.conf /usr/tools/config/$VERSION/

# Copy R5S boot files
echo "Copy R5S edk2 files"
mkdir -p /usr/local/share/edk2/
cp -Rv edk2-nanopi-r5s /usr/local/share/edk2/

# install needed packages
echo pkg install u-boot-nanopi-r4s u-boot-nanopi-r5s
pkg install u-boot-nanopi-r4s u-boot-nanopi-r5s

echo "==> About custom .conf build files"
echo " As in every new version there can be new lines on the files, they are not copied by default anymore. As a hint, compare files to the ones from this repository and adjust as needed."
