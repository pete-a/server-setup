RUBY_VERSION="1.9.3-p327"

echo Installing ruby $RUBY_VERSION...

apt-get update

# setup deploy user
sudo useradd deploy

# install git
sudo apt-get install git

# install ruby dependancies
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev git-core zlib1g zlib1g-dev libssl-dev libyaml-dev 

# install mysql client
sudo apt-get installmysql-client libmysqlclient-dev

# install rbenv
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

# install ruby build and latest ruby
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

source ~/.bash_profile

rbenv install $RUBY_VERSION
rbenv rehash
rbenv global $RUBY_VERSION

