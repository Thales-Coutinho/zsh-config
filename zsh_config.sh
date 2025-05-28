#!/usr/bin/env bash

mkdir ~/.zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-history-substring-search.git ~/.zsh/zsh-history-substring-search


cat > ~/.zshrc <<'EOF'
# settings for ZSH by Thales Martim Coutinho

# prompt:
precmd() {
  if [[ `hostname` == "debian-host" ]]; then
    COLOR='default'
  else
    COLOR='blue' 
  fi

PROMPT='
%F{%(?.green.red)}%(?.O.X)%f
%K{yellow}[%F{%(!.red.default)}%n%f@%F{'"$COLOR"'}%m%f]%k %d
> '
}

# history settings:
HISTSIZE=10000
SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh/.zsh_history
setopt sharehistory

# Tab settings:
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zmodload zsh/complist
compinit
_comp_options+=(globdots)


# plugins:
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

# zsh-history-substring-search configuration
bindkey '\eOA' history-substring-search-up # or '^[[A'
bindkey '\eOB' history-substring-search-down # or '^[[B'


# alias:
alias ls='ls --color'
alias cp='cp -i'
alias backup="~/Dev/Cloud-Backup/cloud_backup.sh"
alias update="sudo aptitude update -y && sudo aptitude upgrade -y && sudo flatpak update -y"
alias cotacao="/home/thales/.config/xfce4/xfce4-genmon-plugin-config.sh"
alias VPNup="sudo wg-quick up ProtonVPN-teste"
alias VPNdown="sudo wg-quick down ProtonVPN-teste"

export PATH="$PATH:/usr/local/go/bin"
EOF
