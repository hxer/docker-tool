#!/bin/bash
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

curl -sSL https://raw.githubusercontent.com/wayneeseguin/rvm/master/binscripts/rvm-installer | bash -s stable
source ~/.rvm/scripts/rvm

rvm install 2.1.5
rvm use 2.1.5 -- default
gem install --no-rdoc --no-ri bundle

git clone git://github.com/beefproject/beef.git bf
cd bf

bundle install
