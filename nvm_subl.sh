
# TODO create isolated tests, for source command changes
source include/write_once.sh

# nvm, iojs

curl https://raw.githubusercontent.com/creationix/nvm/v0.25.1/install.sh | bash
# TODO find out why is failing here

# load nvm
write_once 'export NVM_DIR="$HOME/.nvm"' ~/.zshrc
write_once '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm' ~/.zshrc
export NVM_DIR="$HOME/.nvm"
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
