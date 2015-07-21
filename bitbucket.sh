source include/write_once.sh

curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
write_once 'export PATH="$HOME/.pyenv/bin:$PATH"' ~/.zshrc
write_once 'eval "$(pyenv init -)"' ~/.zshrc
write_once 'eval "$(pyenv virtualenv-init -)"' ~/.zshrc
source ~/.zshrc

last_2_version=$(pyenv install -l | grep  -E '^\s+2.' | tail -1)
pyenv install $last_2_version
pyenv global $last_2_version
pyenv rehash

#sudo apt-get install -y python-pip python-dev build-essential
pip install --upgrade pip
pip install bitbucket-cli
