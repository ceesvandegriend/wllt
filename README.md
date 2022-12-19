# wllt / wallet

HomeLab: Proxmox VE and configured with Ansible.

Should be standalone and no dependencies on other networks.

Forward DNS to Pi-Hole and Google.


## Overview

- Domain:     lab.kade3.home
- IP Range:   192.168.129.0/24
- DNS:        192.168.129.2
              192.168.1.2
              8.8.8.8

## Node gw: Unifi UDM-Pro
- Task:       Gateway & DHCP server
- IP:         192.168.129.1
- DHCP range: 192.168.129.224 - 192.168.129.255 (31)
- DHCP dns:   192.168.129.2
              192.168.1.2
              8.8.8.8

## Node pve01: Proxmox VE
- Task:       Virtualisation platform
- IP:         192.168.129.8
