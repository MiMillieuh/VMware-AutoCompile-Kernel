#!/bin/bash

FILE=/usr/lib/modules/$(uname -r)/misc/vmmon.ko
if test -f "$FILE"; then

echo "already compiled"

else

VMWARE_VERSION=workstation-$(cat /etc/vmware/config | grep "player.product.version =" | cut -d'"' -f 2)
TMP_FOLDER=/tmp/patch-vmware
rm -fdr $TMP_FOLDER
mkdir -p $TMP_FOLDER
cd $TMP_FOLDER
git clone https://github.com/mkubecek/vmware-host-modules.git
cd $TMP_FOLDER/vmware-host-modules
git checkout $VMWARE_VERSION
git fetch
make
make install
rm /usr/lib/vmware/lib/libz.so.1/libz.so.1
ln -s /lib/x86_64-linux-gnu/libz.so.1 /usr/lib/vmware/lib/libz.so.1/libz.so.1

fi
