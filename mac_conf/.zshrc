# sourcing functions file
source ~/.functions

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Starting starship
eval "$(starship init zsh)"

### Aliases = privs
alias ls='ls --color'
alias l='ls -l'
alias ll='ls -alh'
alias lll='ls -alhR'
alias cl='clear'
alias v='nvim'
alias tf="terraform"
alias dotf="cd ~/repos/privs/dotfiles/"
alias proj="cd ~/repos/privs/Projects/"
alias notes="cd ~/repos/privs/ObsidianVault/"
alias scrs="cd ~/repos/privs/Scripts/"
alias play="cd ~/repos/privs/LinuxPlayground/"
alias cat="bat"
alias tmux="tmux -u"

# disabling gpg key pass prompt
export GPG_TTY=$(tty)

# ssh-agent
#eval `ssh-agent` > /dev/null

# binding arrow keys to move words in CLI
bindkey "\e[1;3D" backward-word  # Alt + Left
bindkey "\e[1;3C" forward-word   # Alt + Right

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# disabling sharing history
setopt appendhistory
setopt nosharehistory
setopt noincappendhistory
### WORK PART
## Aliases
alias tools="cd ~/repos/work/AnchorFreePartner/services/tools/; git pull"
alias invent="cd ~/repos/work/AnchorFreePartner/ansible-inventory/; git pull"
alias sdc="cd ~/repos/work/AnchorFree/sd/; git pull"
alias svt="cd ~/repos/work/AnchorFreePartner/static-vars-testcenters/; git pull"
alias met="afctl -n prod get node-maintenance"
alias afvault="afctl vault login arkadiusz.biskup@pango.co"
alias tssh="tsh ssh"

export TELEPORT_LOGIN="arkadiusz.biskup"


# Added by LM Studio CLI (lms)
#export PATH="$PATH:/Users/abiskup/.lmstudio/bin"

# Created by `pipx` on 2025-06-03 22:10:13
export PATH="$PATH:/Users/abiskup/.local/bin"
