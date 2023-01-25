# dev02

## Install mincube

```console
cees@dev02:~/Downloads$ wget https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
--2022-12-24 11:08:39--  https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
Resolving storage.googleapis.com (storage.googleapis.com)... 142.250.179.208, 172.217.168.208, 216.58.208.112, ...
Connecting to storage.googleapis.com (storage.googleapis.com)|142.250.179.208|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 27454510 (26M) [application/x-debian-package]
Saving to: ‘minikube_latest_amd64.deb’

minikube_latest_amd64.deb    100%[=============================================>]  26.18M   927KB/s    in 35s     

2022-12-24 11:09:15 (768 KB/s) - ‘minikube_latest_amd64.deb’ saved [27454510/27454510]

```

```console
cees@dev02:~$ sudo dpkg -i ~/Downloads/minikube_latest_amd64.deb 
Selecting previously unselected package minikube.
(Reading database ... 33810 files and directories currently installed.)
Preparing to unpack .../minikube_latest_amd64.deb ...
Unpacking minikube (1.28.0-0) ...
Setting up minikube (1.28.0-0) ...
cees@dev02:~$ 
```

```
cees@dev02:~$ export http_proxy=http://proxy01.kade3.home:3128/
cees@dev02:~$ export https_proxy=http://proxy01.kade3.home:3128/
cees@dev02:~$ minikube config set driver podman
! These changes will take effect upon a minikube delete and then a minikube start
cees@dev02:~$ minikube config set rootless true
```

```console
cees@dev02:~$ export http_proxy=http://proxy01.kade3.home:3128/
cees@dev02:~$ export https_proxy=http://proxy01.kade3.home:3128/
cees@dev02:~$ minikube start --driver=podman --container-runtime=containerd
* minikube v1.28.0 on Debian 11.6 (kvm/amd64)
  - MINIKUBE_ROOTLESS=true
* Using the podman driver based on user configuration
* Using rootless Podman driver
* Starting control plane node minikube in cluster minikube
* Pulling base image ...
E1224 11:42:54.032606     893 cache.go:203] Error downloading kic artifacts:  not yet implemented, see issue #8426
* Creating podman container (CPUs=2, Memory=2200MB) ...
! StartHost failed, but will try again: creating host: create host timed out in 360.000000 seconds
* Restarting existing podman container for "minikube" ...
* Failed to start podman container. Running "minikube delete" may fix it: driver start: start: podman start minikube: exit status 125
stdout:

stderr:
Error: no container with name or ID minikube found: no such container


X Exiting due to GUEST_PROVISION: Failed to start host: driver start: start: podman start minikube: exit status 125
stdout:

stderr:
Error: no container with name or ID minikube found: no such container

* 
╭─────────────────────────────────────────────────────────────────────────────────────────────╮
│                                                                                             │
│    * If the above advice does not help, please let us know:                                 │
│      https://github.com/kubernetes/minikube/issues/new/choose                               │
│                                                                                             │
│    * Please run `minikube logs --file=logs.txt` and attach logs.txt to the GitHub issue.    │
│                                                                                             │
╰─────────────────────────────────────────────────────────────────────────────────────────────╯

```