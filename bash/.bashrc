### Prompt
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="verbose"
PROMPT_COMMAND='__git_ps1 "\n\[\e[33m\]\w\[\e[0m\]" " \n> "'

### Aliases
alias ls='ls --color'
alias ll='ls -alh'
alias lll='ls -alhR'
alias cl='clear'
alias v='nvim'
alias tf="terraform"
alias dotf="cd ~/repos/privs/dotfiles/"
alias proj="cd ~/repos/privs/Projects/"
alias cat="bat"
