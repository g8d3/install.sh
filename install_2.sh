# TODO create isolated tests, for source command changes
source include/write_once.sh

# exit when error
set -e

# rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 --yes
\curl -sSL https://get.rvm.io | bash -s stable --ruby
write_once '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' ~/.zshrc
source ~/.rvm/scripts/rvm
write_once 'gem: --no-rdoc --no-ri' ~/.gemrc

# rails
gem i rails

# pg gem dependency

sudo apt-get install -y libpq-dev
gem i pg

