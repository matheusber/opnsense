#!/bin/sh

VERSION=25.1
MINOR=.6

if [ -n "$1" ]; then
 SRC_DIR=$1
else
 SRC_DIR=/usr/local/opnsense/build/${VERSION}/aarch64
fi

DEST_DIR=/usr/local/opnsense/repo/FreeBSD:14:aarch64

# Create the destination dir
mkdir -p $DEST_DIR/${VERSION}

# setting the "sets" dir
mkdir $DEST_DIR/${VERSION}/sets

for file in $SRC_DIR/sets/*
do
 echo "==> Copy $file"
 cp $file $DEST_DIR/${VERSION}/sets/
done

# setting the "latest" dir in MINT TREE, using minor version if present
mkdir -p $DEST_DIR/${VERSION}/MINT/${VERSION}${MINOR}/latest

PKG_FILE=`ls -1 $SRC_DIR/sets/ | grep package | grep -v sig`
echo $PKG_FILE
echo tar xvf $SRC_DIR/sets/$PKG_FILE -C $DEST_DIR/${VERSION}/MINT/${VERSION}${MINOR}/latest
tar xvf $SRC_DIR/sets/$PKG_FILE -C $DEST_DIR/${VERSION}/MINT/${VERSION}${MINOR}/latest


# setting the "latest" dir in repository root. Will point to the latest build
rm $DEST_DIR/${VERSION}/latest
echo ln -sf $DEST_DIR/${VERSION}/MINT/${VERSION}${MINOR}/latest $DEST_DIR/${VERSION}/latest
ln -sf $DEST_DIR/${VERSION}/MINT/${VERSION}${MINOR}/latest $DEST_DIR/${VERSION}/latest

# setting the "latest" dir using ln
#mkdir $DEST_DIR/${VERSION}/latest
