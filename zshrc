source ~/.private
function rvm () {
  if [[ $1 == 'use' ]]; then
    rbenv shell $2
  fi
}

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

alias vi="vim"

alias start_postgres="pg_ctl -D /usr/local/var/postgres9.3 -l logfile start"
alias stop_postgres="pg_ctl -D /usr/local/var/postgres9.3 -l logfile stop"
alias start_postgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"

alias start_mysql="mysql.server start"
alias stop_mysql="mysql.server stop"

alias start_memcached="/usr/local/opt/memcached/bin/memcached"

alias rspec="nocorrect rspec"

alias be="bundle exec"
alias rreseed='be rake db:migrate:reset && be rake db:seed_fu && be rake db:test:prepare'
alias rtests="be rspec"

alias rrrseedtest="rreseed && rtests"

alias reloadbash="source ~/.zshrc"

alias gca='git commit -v -a'

alias gpush="git push -u origin master"

alias cbundles='cd /Users/namixdorf/Library/Application\ Support/Avian/Bundles'

# recommended by brew doctor
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/chef/embedded/bin:$PATH'

#editor
export EDITOR=vim

# zsh
ZSH=$HOME/.oh-my-zsh

plugins=(git brew gem namixdorf)

ZSH_THEME="afowler"

source $ZSH/oh-my-zsh.sh

#source ~/.zshenv
#
#source /usr/local/opt/chruby/share/chruby/chruby.sh
#source /usr/local/share/chruby/auto.sh
export PATH="$HOME/.rbenv/bin:$PATH"
# set default ruby
eval "$(rbenv init -)"
# DO NOT EDIT BELOW THIS LINE
export PATH=/usr/local/sbin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
