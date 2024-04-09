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
%F{%(?.green.red)}%(?..)%f
%K{yellow}[%F{%(!.red.default)}%n%f@%F{'"$COLOR"'}%m%f]%k %d
> '
}

# history settings
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh/.zsh_history

# Tab settings
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

#plugins:
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

#settings for zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#alias:
alias backup="~/Dev/Cloud-Backup/cloud_backup.sh"
alias update="sudo aptitude update -y && sudo aptitude upgrade -y && sudo flatpak update -y"
EOF
