#!/bin/sh

VERSION=24.7

SRC_DIR=/usr/local/opnsense/build/$VERSION/aarch64
DEST_DIR=/usr/local/opnsense/repo/FreeBSD:14:aarch64

# Create the destination dir
mkdir -p $DEST_DIR/$VERSION

# setting the "sets" dir
mkdir $DEST_DIR/$VERSION/sets

for file in $SRC_DIR/sets/*
do
 echo "==> Copy $file"
 cp $file $DEST_DIR/$VERSION/sets/
done

# setting the "latest" dir
mkdir $DEST_DIR/$VERSION/latest

PKG_FILE=`ls -1 $SRC_DIR/sets/ | grep package | grep -v sig`

tar xvf $SRC_DIR/sets/$PKG_FILE -C  $DEST_DIR/$VERSION/latest

# setting the "MINT" dir
mkdir -p $DEST_DIR/$VERSION/MINT/$VERSION
ln -sf $DEST_DIR/$VERSION/latest $DEST_DIR/$VERSION/MINT/$VERSION
