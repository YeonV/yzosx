#!/bin/sh

read -p "YZ-OSX-Installer"

# SYSTEM-TOOLZ
echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap caskroom/cask

sudo mkdir -p ~/.bin
sudo cp ./tmuxinator.zsh ~/.bin/tmuxinator.zsh
sudo cp .tmux.mac.conf ~/.tmux.mac.conf
sudo cp ./test.sh ~/test.sh
sudo mkdir -p ~/.config
sudo mkdir -p ~/.config/tmuxinator
sudo cp dis.yml ~/.config/tmuxinator/dis.yml
sudo cp or.yml ~/.config/tmuxinator/or.yml
sudo cp wp.yml ~/.config/tmuxinator/wp.yml
sudo cp .zshrc ~/.zshrc
sudo chmod +x ~/test.sh

echo "Installing iTerm2 ..."
brew cask install iterm2

echo "Installing z..."
brew install z

# echo "Installing fzf"

echo "Installing git..."
brew install git

echo "Installing nvm ..."
mkdir -p ~/.nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.zshrc

echo "Installing node 8 ..."
nvm install 8

echo "Installing node 9 ..."
nvm install 9
npm config delete prefix

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
source ~/.zshrc
echo "Installing tmuxinator..."
gem install tmuxinator -v 0.9.0


echo "Installing Zsh ..."
brew install zsh zsh-completions
sudo sh -c 'echo /usr/local/bin/zsh >> /etc/shells'
chsh -s $(which zsh)

echo "Installing Oh My Zsh ..."
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# sleep 3s
# exit
source ~/.zshrc

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