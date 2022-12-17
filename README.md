# wllt / wallet

HomeLab: Proxmox VE and configured with Ansible.

Should be standalone and no dependencies on other networks.


## Overview

- Domain:     kade3.lab
- IP Range:   192.168.129.0/24


## Node gw: Unifi UDM-Pro
- Task:       Gateway & DHCP server
- IP:         192.168.129.1
- DHCP range: 192.168.129.224 - 192.168.129.255 (31)
- DHCP dns:   8.8.8.8, 192.168.129.2


## Node pve01: Proxmox VE
- Task:       Virtualisation platform
- IP:         192.168.129.8


## Node vm00
- Task:       VM Template
- IP:         DHCP
- Debian 11.5 taskselect:
  - SSH server
  - Standard system utilities

## Node vm01
- Task:       DNS, NTP
- IP:         192.168.129.2


## Public SSH key:
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDoQwOWd2+bxV6TaaRtQhI5uMES/oM4hMWjsGVhfMeX19RIbfgy4qNapiPvciQeJTmvmltRGCzWLJ+3DMjWe09pP1cX5JPMhb2vH1v8qmJZ3LtC/BupfVrDcg8/C/u3p48APUC8wb2m9Fa7oAgrQSQuMpjJBIfiR1TiinEb8bsEvJpTzZvbf1/KvosKRTmlx6n3aGIlp1Ly6mJZU0hyleXi4MuTZXJIvqfHnngUO5i/AkSoCgnwNkL3XGhR7eS8YRy25OijCCA3mT3RJ2/tQiyuXWvEnuyhmQ23i6S7d4x6O1qdx1D3xKemVxKOzkNOXCvttjtMKRdmZ+cnx8fw5bnQx+O+s/05x499udy8LBLF+UPXUyATyn6ok8thhsQ1p0d3ZCWrwoNCaKDaug13oVLdNLrdiEgUYmkLKJA0015QlOVmWodXduawsqJAkKnH45L5iRfm4WYkWDp/x4FwXe5D0fN8kQLjZHKrxdvlO2gVuIsYqk8ifzi0sIRkx0n2kcvjAZWzAbDY6CWLcu9bqAXxSfr28IcIW/CLjVyv7M5x8sSKOo/5XxWrK2PHdF5S7o37ZDtG6ItMUqUPYGA9SJIhnHGb/CSKfKZtDe6ODka2A49MzE91alIKc22OeP5APaF23Rx9f88YcEJK05fvr0Xlx6peHLvqPm2Ku9r0UspWcw== cardno:17 732 842
```
