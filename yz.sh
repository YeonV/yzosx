#!/bin/sh
clear
echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                                 YZ-OSX-Installer \033[0m"
echo "\033[1;31m                               - plz run with sudo - \033[0m"
echo "\033[1;31m================================================================================\033[0m"
read -p "RETURN 2 start"
loggedInUser=`/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }'`

# SYSTEM-TOOLZ
echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                                Installing brew...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                              Installing brew cask...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew tap caskroom/cask

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

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                               Installing iTerm2 ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew cask install iterm2

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                                 Installing z...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew install z

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                                Installing Zsh ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew install zsh zsh-completions
sudo sh -c 'echo /usr/local/bin/zsh >> /etc/shells'
chsh -s $(which zsh)

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                             Installing Oh My Zsh ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# sleep 3s
# exit

# echo "Installing fzf"

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                               Installing git...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew install git

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                               Installing nvm ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
mkdir -p ~/.nvm
sudo -u $loggedInUser curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
npm config delete prefix

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                                Installing node 8 ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
nvm install 8
npm config delete prefix

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                                Installing node 9 ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
nvm install 9
npm config delete prefix

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                                 Installing yarn...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew install yarn

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                                 Installing Java8 ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew tap caskroom/versions
sudo -u $loggedInUser brew cask install java8

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                                 Installing Java ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew cask install java

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                                Installing python ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew install python
sudo -u $loggedInUser brew install python@2


echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                                Installing thefuck...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew install thefuck

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                                 Installing tmux...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew install tmux

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                                 Installing ruby...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew install ruby
echo 'export PATH="usr/local/opt/ruby/bin:$PATH"' >> ~/.bash_profile
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"


#echo "Installing tmuxinator...\033[0m"
#curl -sSL https://get.rvm.io | bash -s stable
#rvm install 2.2.3 --disable-binary
#source ~/.rvm/scripts/rvm
#sudo -u $loggedInUser gem install tmuxinator -v 0.9.0

# DEV-TOOLZ
echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                               Installing Docker ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew install docker docker-compose

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                             Installing VirtualBox ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew cask install virtualbox

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                               Installing Synergy ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew cask install synergy

echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                                Installing Code ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew cask install visual-studio-code
echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                             Installing Sourcetree ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew cask install sourcetree

# USER-TOOLZ
echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                               Installing Chrome ...\033[0m"
echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
sudo -u $loggedInUser brew cask install google-chrome

sudo cp .zshrc ~/.zshrc
source ~/.zshrc > /dev/null 2>&1
chmod +x *.sh
./yzdock.sh
echo "\033[1;31m================================================================================\033[0m"
echo "\033[1;31m                           YZ-OSX-Installer finished :) \033[0m"
echo "\033[1;31m================================================================================\033[0m"
read -p "RETURN 2 end"
