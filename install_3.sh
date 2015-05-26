# exit when error
set -e

# vars
hub_url=https://github.com/github/hub/releases/download/v2.2.1/hub-linux-amd64-2.2.1.tar.gz

# install hub

curl -L $hub_url -o hub.tar.gz
sudo tar -xvf hub.tar.gz -C /opt
sudo ln -fs /opt/hub-linux-amd64-2.2.1/hub /bin

# generate ssh key

ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa

# TODO add ssh key to github

# TODO elastic search
# https://www.elastic.co/downloads/elasticsearch
sudo apt-get install -y openjdk-7-jre

# Elasticsearch plugins: head, hq

# autosave sublime

echo '
{
	"font_size": 12,
	"save_on_focus_lost": true
}
' > ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

# install packages sublime

curl -L https://packagecontrol.io/Package%20Control.sublime-package -o \
 ~/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package

 