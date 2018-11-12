#!/bin/sh

read -p "YZ-OSX-Installer"

# SYSTEM-TOOLZ
echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap caskroom/cask

echo "Installing iTerm2 ..."
brew cask install iterm2

echo "Installing z..."
brew install z

# echo "Installing fzf"

echo "Installing git..."
brew install git

echo "Installing nvm ..."
brew install nvm

echo "Installing yarn..."
brew install yarn


echo "Installing Java8 ..."
brew tap caskroom/versions
brew cask install java8

echo "Installing Java ..."
brew cask install java

echo "Installing python ..."
brew install python
brew install python@2


echo "Installing thefuck..."
brew install thefuck

echo "Installing tmux..."
brew install tmux

echo "Installing ruby..."
brew install ruby
echo 'export PATH="usr/local/opt/ruby/bin:$PATH"' >> ~/.bash_profile
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
source ~/.bash_profile
echo "Installing tmuxinator..."
gem install tmuxinator
sudo cp ./tmuxinator.zsh ~/.bin/tmuxinator.zsh
sudo cp ./.tmux.mac.conf ~/.tmux.mac.conf
sudo cp ./test.sh ~/test.sh
sudo chmod +x ~/test.sh
sudo cp ./dis.yml ~/.config/tmuxinator/dis.yml
sudo cp ./or.yml ~/.config/tmuxinator/or.yml
sudo cp ./wp.yml ~/.config/tmuxinator/wp.yml

echo "Installing Zsh ..."
brew install zsh zsh-completions
sudo sh -c 'echo /usr/local/bin/zsh >> /etc/shells'
chsh -s $(which zsh)

echo "Installing Oh My Zsh ..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo cp ./.zshrc ~/.zshrc
sleep 3s
exit

# DEV-TOOLZ
echo "Installing Docker ..."
brew install docker docker-compose

echo "Installing VirtualBox ..."
brew cask install virtualbox

echo "Installing Synergy ..."
brew cask install synergy

echo "Installing Code ..."
brew cask install visual-studio-code

echo "Installing Sourcetree ..."
brew cask install sourcetree

# USER-TOOLZ
echo "Installing Chrome ..."
brew cask install google-chrome

read -p "YZ-OSX-Ready"