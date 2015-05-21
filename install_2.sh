# exit when error
set -e

# functions
write_once(){
string=$1
file=$2

if ! grep -qc "$string" "$file"; then
  echo "=> Appending $string to $file"
  printf "\n$string\n" >> "$file"
else
  echo "=> $string already in $file"
fi
}

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

# nvm, iojs

curl https://raw.githubusercontent.com/creationix/nvm/v0.25.1/install.sh | bash
# TODO find out why is failing here

# load nvm
write_once 'export NVM_DIR="$HOME/.nvm"' ~/.zshrc
write_once '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm' ~/.zshrc
source ~/.nvm/nvm.sh # TODO fix this to detect current shell?

nvm install iojs
nvm alias default iojs

# meteor

curl https://install.meteor.com/ | sh

# chrome
#sudo apt-get install libxss1 libappindicator1 libindicator7
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome*.deb

# sublime text

sudo apt-get install -y sublime-text-installer

# vim vim-gnome

sudo apt-get install -y vim vim-gnome

# TODO install hub

# generate ssh key

# add ssh key to github

# elastic search

# autosave sublime
# install packages sublime