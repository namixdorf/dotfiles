alias ald_production="ssh -p 32133 deployer@198.211.100.139"
alias ald_staging="ssh -p 32133 deployer@198.211.107.232"

function rvm () {
  if [[ $1 == 'use' ]]; then
    rbenv shell $2
  fi
}

alias vim="/usr/local/Cellar/vim/7.3.923/bin/vim"
alias vi="/usr/local/Cellar/vim/7.3.923/bin/vim"

alias start_postgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stop_postgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop"

alias tnursingald="tmuxinator nursingald"

alias rspec="nocorrect rspec"

# recommended by brew doctor
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin'

#editor
export EDITOR=vim

# zsh
ZSH=$HOME/.oh-my-zsh

plugins=(git brew gem namixdorf)

ZSH_THEME="afowler"

source $ZSH/oh-my-zsh.sh
#tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator


RUBIES=(~/.rbenv/versions/*)
source /usr/local/opt/chruby/share/chruby/chruby.sh

# set default ruby
chruby ruby-1.9.3
#eval "$(rbenv init -)"
# DO NOT EDIT BELOW THIS LINE

