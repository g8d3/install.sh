source ../write_once.sh

write_once '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' ~/.zshrc

write_once 'export NVM_DIR="$HOME/.nvm"' ~/.zshrc
write_once '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm' ~/.zshrc
