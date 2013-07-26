source ~/.private
function rvm () {
  if [[ $1 == 'use' ]]; then
    rbenv shell $2
  fi
}

alias vim="stty stop '' -ixoff ; /usr/local/Cellar/vim/7.3.923/bin/vim"
alias vi="stty stop '' -ixoff ; /usr/local/Cellar/vim/7.3.923/bin/vim"

alias start_postgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stop_postgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop"

alias start_mysql="mysql.server start"
alias stop_mysql="mysql.server stop"

alias start_memcached="/usr/local/opt/memcached/bin/memcached"

alias rspec="nocorrect rspec"

alias be="bundle exec"
alias rreseed='be rake db:migrate:reset && be rake db:seed_fu && be rake db:test:prepare'
alias rtests="be rspec"

alias rrrseedtest="rreseed && rtests"

alias reloadbash="source ~/.zshrc"

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


#RUBIES=(~/.rbenv/versions/*)
#source /usr/local/opt/chruby/share/chruby/chruby.sh

# set default ruby
#chruby ruby-1.9.3
eval "$(rbenv init -)"
# DO NOT EDIT BELOW THIS LINE

