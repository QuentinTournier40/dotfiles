#!/usr/bin/env zsh

# +---------+
# | HISTORY |
# +---------+

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.

# +------------+
# | COMPLETION |
# +------------+

autoload -U +X compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

source <(kubectl completion zsh)
source <(helm completion zsh)

# +--------+
# | KEYMAP |
# +--------+

bindkey -e

# +---------+
# | ALIASES |
# +---------+

alias vi='vim'

alias c='clear'

alias ls='ls --color=auto --group-directories-first'
alias l='ls -CF'
alias ll='ls -AFgh'
alias la='ls -AF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias rm='rm -i'

alias k='kubectl'
alias ka='kubectl apply -f'
alias kex='kubectl exec -i -t'
alias kg='kubectl get'
alias kga='kubectl get all'

alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gcm='git commit -m'
alias gp='git push'

# +----------+
# | STARSHIP |
# +----------+

eval "$(starship init zsh)"
