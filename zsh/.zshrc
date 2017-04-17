# Path to your oh-my-zsh installation.
export ZSH=/Users/michelle/.oh-my-zsh

ZSH_THEME="michelle"

plugins=(git colored-man colorize github vagrant virtualenv pip python brew osx zsh-syntax-highlighting wd)

source $ZSH/oh-my-zsh.sh

# This loads nvm
export NVM_DIR="/Users/michelle/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export PATH="/usr/local/sbin:$PATH"

# Include Z
. /usr/local/etc/profile.d/z.sh

# Alias'
alias fishies='asciiquarium'
alias zs='source ~/.zshrc'
