# This file is generated from information provided by the datasource.  Changes
# to it will not persist across an instance reboot.  To disable cloud-init's
# network configuration capabilities, write a file
# /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg with the following:
# network: {config: disabled}
network:
    version: 2
    renderer: networkd
    ethernets:
        eth0:
            dhcp4: no
            addresses:
              - 10.99.2.10/24
            nameservers:
              search: [emil2.local]
              addresses: [10.99.2.10, 8.8.8.8]
        eth1:
          dhcp4: yes
