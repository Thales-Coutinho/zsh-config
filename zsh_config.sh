#!/usr/bin/env bash

mkdir ~/.zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-history-substring-search.git ~/.zsh/zsh-history-substring-search


cat > ~/.zshrc <<EOF
# settings for ZSH by Thales Martim Coutinho

# prompt:
precmd() {
  if [[ "fedorahost" == $HOSTNAME ]]; then
    PROMPT=$'\n%K{yellow}[%F{%(!.red.default)}%n%f@%m]%k %d\n%F{%(?.green.red)}>%f '
  else
    PROMPT=$'\n%K{yellow}[%F{%(!.red.default)}%n%f@%F{blue}%m%f]%k %d\n%F{%(?.green.red)}>%f '
  fi
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
source ~/.asdf/asdf.sh

#settings for zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#alias:
alias backup="~/Dev/backup-na-nuvem/backup_na_nuvem.sh"
alias vscode="flatpak run com.visualstudio.code"
alias firefox="flatpak run org.mozilla.firefox"
EOF
