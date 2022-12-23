# pve02

* laptop
* IP: 192.168.129.64/24
* Gateway: 192.168.129.1

```bash
root@pve02:~# apt update
root@pve02:~# apt install -y sudo
root@pve02:~# useradd -m cees
root@pve02:~# usermod -aG adm,sudo cees
root@pve02:~# passwd cees
```
