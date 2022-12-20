#
# This file is managed by Ansible.
#
if [ ! -d ~/.cache/zsh ] ; then
	mkdir -p ~/.cache/zsh
fi

setopt histignorealldups sharehistory

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
