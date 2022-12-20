#
# This file is managed by Ansible.
#

if [ -x /usr/bin/neofetch ] ; then
    # Debian
    /usr/bin/neofetch
elif [ -x /usr/local/bin/neofetch ] ; then
    # Apple MacOS
    /usr/local/bin/neofetch
fi
