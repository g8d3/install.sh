# exit if any command throws error
set -e

# vars

pg_pass=${pg_pass:-123} # development password

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

# adding repos and updating

sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
#apt-get update

# git, postgres, shutter 
sudo apt-get install -y git shutter
sudo apt-get install -y postgresql postgresql-contrib pgadmin3
sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '$pg_pass';"

# config git
# TODO receive email and name from user

git config --global user.email "pastasjuan@gmail.com"
git config --global user.name "Juan Pastas"
git config --global push.default simple

# TODO ignore globally ignorable files

# zsh

sudo apt-get install -y zsh
sudo chsh -s /bin/zsh `whoami`

# oh-my-zsh

curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
# this fails with PAM auth failure

# TODO select oh-my-zsh plugins
