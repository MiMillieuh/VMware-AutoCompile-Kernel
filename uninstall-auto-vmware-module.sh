#!/bin/bash

if [[ "$USER" != "root" ]]; then
    echo "Error: script not running as root or with sudo! Exiting..."
    exit 1
fi

systemctl disable vmware-compile.service

rm /opt/systemd/system/vmware-compile.service

rm -rf /opt/VMware

echo "Succesfully uninstalled"

exit 0
