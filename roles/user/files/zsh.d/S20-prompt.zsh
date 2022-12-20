#
# This file is managed by Ansible.
#
# PROMPT='%(?.%F{green}V.%F{red}?%?)%f %B%F{240}%1~%f%b %# '

# username @ hostname : path 
# PROMPT='%n@%m:%~%#'
PROMPT='%(?.%F{green}%n@%m.%F{red}[%?] %n@%m)%f:%~%#'
RPROMPT=''

autoload -Uz vcs_info

precmd_vcs_info() { vcs_info }

precmd_functions+=( precmd_vcs_info )

setopt prompt_subst

#RPROMPT=\$vcs_info_msg_0_
#zstyle ':vcs_info:git:*' formats '%b'

zstyle ':vcs_info:*' stagedstr 'M'
zstyle ':vcs_info:*' unstagedstr 'M'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' actionformats '%F{5}|[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats '%F{5}|%F{2}%b%F{5} %F{2}%c%F{3}%u%f'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
zstyle ':vcs_info:*' enable git

git-untracked() {
    if [ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ] && [ $(git ls-files --other --directory --exclude-standard | sed q | wc -l | tr -d ' ') == 1 ] ; then
        hook_com[unstaged]+='%F{1}??%f'
    fi
}

precmd () {
    vcs_info
}

# PROMPT="%F{5}[%F{2}%n%F{5}] %F{3}%3~ ${vcs_info_msg_0_}%f ${PROMPT}"
# PROMPT="${PROMPT} [${vcs_info_msg_0_}]"
PROMPT='%(?.%F{green}%n@%m.%F{red}[%?] %n@%m)%f:%~${vcs_info_msg_0_}%#'
