#
# ~/.bashrc
#
export ANTHROPIC_API_KEY=apikeyHere
eval "$(starship init bash)"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Console Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -la'
alias cl='clear'

# Git Aliases
alias gaa='git add .'
alias gcm='git commit -m'
alias gacm='git add . && git commit -m'
alias gpsh='git push'
alias gf='git fetch && git pull'
alias gc='git checkout'
alias gcn='git checkout -b'
alias gs='git status'

PS1='[\u@\h \W]\$ '
