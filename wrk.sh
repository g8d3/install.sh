sudo apt-get install build-essential libssl-dev git
git clone https://github.com/wg/wrk.git
cd wrk
make
# move the executable to somewhere in your PATH
sudo cp wrk /usr/local/bin
