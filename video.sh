source include/write_once.sh

# exit on error
set -e

# install avconv
sudo apt-get install -y libav-tools

# install mkvmerge
wget -q -O - https://www.bunkus.org/gpg-pub-moritzbunkus.txt | sudo apt-key add -
write_once 'deb http://www.bunkus.org/ubuntu/trusty/ ./' /etc/apt/sources.list
write_once 'deb-src http://www.bunkus.org/ubuntu/trusty/ ./' /etc/apt/sources.list

# TODO update sources just once, join scripts
sudo apt-get update
sudo apt-get install -y mkvtoolnix mkvtoolnix-gui

# TODO add autoremove after joining scripts