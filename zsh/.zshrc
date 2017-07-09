# Path to your oh-my-zsh installation.
export ZSH=/Users/michelle/.oh-my-zsh



ZSH_THEME="amichelle"

plugins=(git colorize github)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Get all the variables and things from .bash_profilev (Mostly local things for work that I don't need to sync between computers)
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
# cowsay -f dragon "Greetings, Human!" | lolcat


[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Talk "slides"
alias intro='figlet "How I got a Rainbow Dragon in my Terminal and Other Tricks" | lolcat'
alias alt='figlet "or: How to Copy and Paste from Other Developers"'
