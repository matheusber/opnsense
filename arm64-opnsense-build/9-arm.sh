
. env.sh

if [ -n $1 ]; then
 DEVICE=$1
fi

make -C /usr/tools/ VERSION=$TAG_SRC DEVICE=$DEVICE arm-3G
