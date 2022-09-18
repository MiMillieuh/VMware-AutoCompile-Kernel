#!/bin/bash

if [[ "$USER" != "root" ]]; then
    echo "Error: script not running as root or with sudo! Exiting..."
    exit 1
fi

rm -rf /opt/VMware

systemctl disable vmware-compile.service

rm /opt/systemd/system/vmware-compile.service

exit 0
