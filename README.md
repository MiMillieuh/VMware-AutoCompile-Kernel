# VMware-AutoCompile-Kernel
An automatic service that compile VMware kernel module on update using [mkubecek](https://github.com/mkubecek/vmware-host-modules)'s VMware modules


## How to install :

`git clone https://github.com/MiMillieuh/VMware-AutoCompile-Kernel.git`

`cd VMware-AutoCompile-Kernel`

`sudo sh install-auto-vmware-module.sh`

## How to uninstall : 

`sh /opt/VMware/uninstall-auto-vmware-module.sh`

## Requirements

- Systemd
- git
- devel tool for VMware (check for your distribution) ex for fedora : kernel-devel kernel-headers gcc gcc-c++ make git
