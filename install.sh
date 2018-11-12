#!/bin/sh
if [ ! -d "~/YZosx" ]
then
    echo "\033[1;31m================================================================================\033[0m"
    echo "\033[1;31m                                   Getting Files..\033[0m"
    echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
    mkdir -p ~/YZosx
    cd ~/YZosx
    curl https://raw.githubusercontent.com/YeonV/yzosx/master/.tmux.mac.conf -o .tmux.mac.conf
    curl https://raw.githubusercontent.com/YeonV/yzosx/master/.zshrc -o .zshrc
    curl https://raw.githubusercontent.com/YeonV/yzosx/master/yz.sh -o yz.sh
    curl https://raw.githubusercontent.com/YeonV/yzosx/master/dis.yml -o dis.yml
    curl https://raw.githubusercontent.com/YeonV/yzosx/master/dockutil -o dockutil
    curl https://raw.githubusercontent.com/YeonV/yzosx/master/or.yml -o or.yml
    curl https://raw.githubusercontent.com/YeonV/yzosx/master/test.sh -o test.sh
    curl https://raw.githubusercontent.com/YeonV/yzosx/master/tmuxinator.zsh -o tmuxinator.zsh
    curl https://raw.githubusercontent.com/YeonV/yzosx/master/wp.yml -o wp.yml
    chmod +x *.sh
    chmod +x dockutil
else
    echo "\033[1;31m================================================================================\033[0m"
    echo "\033[1;31m                                   Already Downloaded..\033[0m"
    echo "\033[1;31m--------------------------------------------------------------------------------\033[0m"
    cd ~/YZosx
fi
sudo ./yz.sh