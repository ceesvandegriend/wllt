#
# This file is managed by Ansible.
#
# Only unique paths
typeset -U path

if [ -d ${HOME}/.local/bin ] ; then
  path+=${HOME}/.local/bin
fi

if [ -d ${HOME}/bin ] ; then
  path+=${HOME}/bin
fi

export path
