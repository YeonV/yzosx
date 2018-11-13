#!/bin/sh

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                            Installing tmuxinator ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
chsh -s $(which zsh)
env zsh
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.4 --disable-binary
gem sources -c
# gem sources --add https://rubygems.org
echo '\n:sources:\n- http://rubygems.org' >> ~/.gemrc
gem install tmuxinator
