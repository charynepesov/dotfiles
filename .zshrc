# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/chary/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
# Prompt ZSH
autoload -Uz promptinit
promptinit
# PROMPT FROM STARSHIP
eval "$(starship init zsh)"

# MY ALIASES
## 0 - For managing dotfiles with git bare repo
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
## 1 - clearing the terminal
alias c=clear
## 2 - trimming strings
alias trim="awk '{\$1=\$1;print}'"
## 3 - quick notes
function note {
    echo "date: $(date)" >> $HOME/drafts.txt
    echo "$@" >> $HOME/drafts.txt
    echo "" >> $HOME/drafts.txt
}
## 4 - better files listings
alias l='exa -lah'
alias ls=exa
alias sl=exa
alias l='ls -lah'
