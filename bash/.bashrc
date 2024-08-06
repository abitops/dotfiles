### Prompt
source .git-prompt.sh
#parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}
#export PS1="\n\[\033[32m\]\w\[\033[33m\]\$\(__git_ps1 \" \(\%s\)\"\)\[\033[00m\]\n> "
#export PS1='\w$(__git_ps1 " (%s)")\n> ' 
PROMPT_COMMAND='__git_ps1 "\n\[\e[33m\]\w\[\e[0m\]" " \n> "'
### Aliases
alias ls='ls --color'
alias ll='ls -alh'
alias lll='ls -alhR'
alias cl='clear'
alias v='nvim'
alias tf="terraform"
alias dotf="cd ~/pers_repo/dotfiles/"
alias proj="cd ~/pers_repo/Projects/"
alias cat="bat"
