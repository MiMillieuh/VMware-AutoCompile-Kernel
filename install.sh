#!/bin/bash

if [[ "$USER" != "root" ]]; then
    echo "Error: script not running as root or with sudo! Exiting..."
    exit 1
fi

mkdir /opt/VMware

cp vmwarecompile.sh /opt/VMware/

chmod +x /opt/VMware/vmwarecompile.sh

cp vmware-compile.service /opt/systemd/system/

systemctl start vmware-compile.service
systemctl enable vmware-compile.service

exit 0
