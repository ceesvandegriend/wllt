# 100: template00

* Date: 19 december 2022
* CPU: 1
* Mem: 1 GiB
* HD0: 16 GiB
* Swap: 0
* Distro: Debian 11.5


## Tasksel

- SSH server
- standard system utilities


## Setup

```shell
# apt update && apt full-upgrade -y
...
# apt install -y qemu-guest-agent cloud-init
...
# usermod -aG adm,sudo cees
# rm -v /etc/ssh/ssh_host_*
# > /etc/machine-id
# apt clean
# apt autoremove
# cloud-init clean
# poweroff
```

## cloud-init

Proxmox VE -> template00 -> Hardware:
  - add CloudINit drive

Proxmox VE -> template00 -> Cloud-Init:
  * DNS domain: lab.kade3.home
  * DNS servers: 192.168.129.2, 192.168.1.2, 8.8.8.8
  * SSH public key: ...
  * IP Config (net0):
    - IPv4: Static
    - IPv4/CIDR: 192.168.129.222/24
    - Gateway (IPv4): 192.168.129.1

## Convert to template