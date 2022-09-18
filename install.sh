#!/bin/bash

mkdir /opt/VMware

cp vmwarecompile.sh /opt/VMware/

cp vmware-compile.service /opt/systemd/system/

systemctl start vmware-compile.service
systemctl enable vmware-compile.service

exit 0
