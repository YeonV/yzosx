#!/bin/sh

read -p "YZ-OSX-Installer - SUDO"
loggedInUser=`python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");'`



# SYSTEM-TOOLZ
echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
sudo -u $loggedInUser 'brew tap caskroom/cask'

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
sudo -u $loggedInUser 'brew cask install iterm2'

echo "Installing z..."
sudo -u $loggedInUser 'brew install z'

echo "Installing Zsh ..."
sudo -u $loggedInUser 'brew install zsh zsh-completions'
sudo sh -c 'echo /usr/local/bin/zsh >> /etc/shells'
chsh -s $(which zsh)

echo "Installing Oh My Zsh ..."
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# sleep 3s
# exit
sudo cp .zshrc ~/.zshrc
source ~/.zshrc

# echo "Installing fzf"

echo "Installing git..."
sudo -u $loggedInUser 'brew install git'

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
sudo -u $loggedInUser 'brew install yarn'


echo "Installing Java8 ..."
sudo -u $loggedInUser 'brew tap caskroom/versions'
sudo -u $loggedInUser 'brew cask install java8'

echo "Installing Java ..."
sudo -u $loggedInUser 'brew cask install java'

echo "Installing python ..."
sudo -u $loggedInUser 'brew install python'
sudo -u $loggedInUser 'brew install python@2'


echo "Installing thefuck..."
sudo -u $loggedInUser 'brew install thefuck'

echo "Installing tmux..."
sudo -u $loggedInUser 'brew install tmux'

echo "Installing ruby..."
sudo -u $loggedInUser 'brew install ruby'
echo 'export PATH="usr/local/opt/ruby/bin:$PATH"' >> ~/.bash_profile
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
source ~/.zshrc

echo "Installing tmuxinator..."
curl -sSL https://get.rvm.io | bash -s stable
rvm install 2.2.3 --disable-binary
source ~/.rvm/scripts/rvm
gem install tmuxinator -v 0.9.0




# DEV-TOOLZ
echo "Installing Docker ..."
sudo -u $loggedInUser 'brew install docker docker-compose'

echo "Installing VirtualBox ..."
sudo -u $loggedInUser 'brew cask install virtualbox'

echo "Installing Synergy ..."
sudo -u $loggedInUser 'brew cask install synergy'

echo "Installing Code ..."
sudo -u $loggedInUser 'brew cask install visual-studio-code'

echo "Installing Sourcetree ..."
sudo -u $loggedInUser 'brew cask install sourcetree'

# USER-TOOLZ
echo "Installing Chrome ..."
sudo -u $loggedInUser 'brew cask install google-chrome'

chmod +x *.sh
./yzdock.sh
read -p "YZ-OSX-Ready"