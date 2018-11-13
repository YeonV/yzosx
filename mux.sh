#!/bin/sh

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                            Installing tmuxinator ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
curl -sSL https://get.rvm.io | sudo -u $loggedInUser bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.4 --disable-binary
gem sources -r https://rubygems.org/
# gem sources --add https://rubygems.org
echo -e '--- \nsources:\n- http://rubygems.org' >> ~/.gemrc
gem install tmuxinator