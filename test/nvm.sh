source ../write_once.sh

curl https://raw.githubusercontent.com/creationix/nvm/v0.25.1/install.sh | bash

# load nvm
write_once 'export NVM_DIR="$HOME/.nvm"' ~/.zshrc
write_once '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm' ~/.zshrc
source ~/.nvm/nvm.sh # TODO fix this to detect current shell?
