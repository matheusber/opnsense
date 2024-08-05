
. env.sh

# clone the opnsense/tools
git clone --depth=1 https://github.com/opnsense/tools.git /usr/tools

rm -rf /usr/tools/config/24.1

# fetch all source codes
make -C /usr/tools update

# make and install the old version of pkg used by opnsense
cd /usr/ports/ports-mgmt/pkg/
make -j4
make reinstall

cp $SRC_DIR/R5S.conf /usr/tools/device

echo "Copy custem .conf files"
cp $SRC_DIR/extras.conf $SRC_DIR/plugins.conf $SRC_DIR/ports.conf /usr/tools/config/24.7/
