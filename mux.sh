#!/bin/sh

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                            Installing tmuxinator ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
curl -sSL https://get.rvm.io | bash -s stable
sleep 2
source ~/.rvm/scripts/rvm
sleep 2
rvm install 2.4 --disable-binary
#gem sources --remove https://rubygems.org/
#gem sources --add http://rubygems.org
rm -rf ~/.gemrc
cp ~/YZosx/.gemrc ~/.gemrc
gem install tmuxinator -v 0.9.0
chsh -s $(which zsh)
env zsh