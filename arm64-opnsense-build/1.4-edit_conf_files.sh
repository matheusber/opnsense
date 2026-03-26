#!/bin/sh

# Checks if there is repo.key, if not it generates one and creates a fingerprint for the package and update repository that may be generated later on

. env.sh

#cd /usr/tools/config/$VERSION

pwd

# sed time
echo "==> plugins.conf"
sed -i -e 's/realtek-re-kmod/realtek-re-kmod198/g' /usr/tools/config/$VERSION/plugins.conf

echo "==> ports.conf"
sed -i -e 's/realtek-re-kmod/realtek-re-kmod198/g' /usr/tools/config/$VERSION/ports.conf

# Copy extras.conf file
echo "cp $SRC_DIR/extras.conf /usr/tools/config/$VERSION/"
cp $SRC_DIR/extras.conf /usr/tools/config/$VERSION/

exit 0
