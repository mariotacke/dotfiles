export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=5000
export GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\w\[\033[0;32m\]$(__git_ps1)\[\033[0m\] \$ '

export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
