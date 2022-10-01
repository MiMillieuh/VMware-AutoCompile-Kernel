#!/bin/bash

if [[ "$USER" != "root" ]]; then
    echo "Error: script not running as root or with sudo! Exiting..."
    exit 1
fi

mkdir /opt/VMware

cp vmwarecompile.sh /opt/VMware/

cp uninstall-auto-vmware-module.sh /opt/VMware/

chmod +x /opt/VMware/uninstall-auto-vmware-module.sh

chmod +x /opt/VMware/vmwarecompile.sh

cp vmware-compile.service /etc/systemd/system/

systemctl start vmware-compile.service
systemctl enable vmware-compile.service

echo "VMware modules are now compiling only on every kernel update and VMware update at boot"

exit 0
