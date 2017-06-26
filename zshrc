# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

EDITOR=vim

setopt extendedglob


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias rm="rm -i"
alias pf="find . -name '*.py' | xargs grep -I"
alias pj="find . -name '*.js*' | xargs grep -I"
alias cdw="cd ~/webdev/"
alias cdp="cd ~/webdev/code/patreon_py/ && source venv/bin/activate"
alias cdd="cd ~/webdev/db/"
alias cdr="cd ~/webdev/react/patreon_react_features/"
alias dcup="docker-compose -p minimal -f docker-compose.yml up"
alias gp="git push origin HEAD"
alias gpu="git pull"
alias gpur="git pull origin master --rebase"
alias gpco="gco master && gpur && gco -b"
alias schema="cdp && vi database/schema.sql"
alias gstf="gst | grep -o '\b[a-z_/]*.py'"
alias py="ipython"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

alias vi="/usr/local/Cellar/vim/7.4.1952/bin/vim"
alias j='vi ~/todo/jarvis.diff'

eval "$(pyenv init -)"

#export DOCKER_TLS_VERIFY="1"
#export DOCKER_HOST="tcp://192.168.99.100:2376"
#export DOCKER_CERT_PATH="/Users/jarvis/.docker/machine/machines/default"
#export DOCKER_MACHINE_NAME="default"
# Run this command to configure your shell:
#eval $(docker-machine env default)
# cat not_impersonators.txt | xargs -n 1 echo 'http://patreon.com/user?u=' | sed -e 's/ //g' | xargs open

#export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages
export PYTHONSTARTUP="$HOME/.pythonrc"
