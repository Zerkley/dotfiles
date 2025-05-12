# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH
ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="false"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

# -------
# Aliases
# -------
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder
alias att="tmux new-session -A -s zerkley"
alias detach="tmux detach"
alias cl="clear"
# ----------------------
# Git Aliases
# ----------------------
alias gaa='git add .'
alias gcm='git commit -m'
alias gacm='git add . && git commit -m'
alias gpsh='git push'
alias gss='git status -s'
alias gf='git fetch && git pull'
alias gp='git pull'
alias gb='git branch'
alias gc='git checkout'
alias gcn='git checkout -b'
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'
PATH=~/.console-ninja/.bin:$PATH

 # Postgres
 export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/miguelmr/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/miguelmr/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/miguelmr/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/miguelmr/google-cloud-sdk/completion.zsh.inc'; fi
export PATH=$PATH:$HOME/go/bin

# ~/.zshrc

eval "$(starship init zsh)"
eval "$(rbenv init -)"
