# Path to your oh-my-zsh installation.
export ZSH=/Users/michelle/.oh-my-zsh



ZSH_THEME="amichelle"

plugins=(git colored-man colorize github zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# This loads nvm
export NVM_DIR="/Users/michelle/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export PATH="/usr/local/sbin:$PATH"

# Get all the variables and things from .bash_profile
source ~/.bash_profile

# Include Z
. /usr/local/etc/profile.d/z.sh

# Setting up thefuck
eval $(thefuck --alias)

# Alias'
alias fishies='asciiquarium'
alias zs='source ~/.zshrc'
alias config='atom ~/Projects/my_config'


# Personal greeting because why not
cowsay -f dragon "Greetings, Michelle!" | lolcat
