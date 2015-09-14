apt-get -y update
apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev git-core


# Install ruby:
cd /tmp
wget http://ftp.ruby-lang.org/pub/ruby/2.2/ruby-2.2.3.tar.gz 
tar -xvzf ruby-2.2.3.tar.gz
cd ruby-2.2.3/
./configure --prefix=/usr/local
make
make install

# Install Jekyll stuff:
gem install github-pages
gem install bundler

# Install NVM and Node.js 4.0
sudo su vagrant -c 'curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash'

sudo su vagrant -c '. ~vagrant/.nvm/nvm.sh;nvm install v4.0'
sudo su vagrant -c '. ~vagrant/.nvm/nvm.sh;nvm use v4.0'
