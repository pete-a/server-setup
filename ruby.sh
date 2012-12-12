RUBY_VERSION="1.9.3-p327"


apt-get update

# setup deploy user
sudo useradd deploy

# install git
sudo apt-get install git

# install ruby dependancies
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev git-core zlib1g zlib1g-dev libssl-dev libyaml-dev

# install rbenv
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
sudo echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
sudo echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

sudo exec $SHELL

# install ruby build and latest ruby
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install $RUBY_VERSION
