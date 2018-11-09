#! /bin/zsh

avd() {
    cd "$(dirname $(which emulator))"
    ./emulator -avd Nexus_5_API_25 &
}

echo "Start Android Emulator?"
read input
if [ $input = "y" ]; 
then avd
else echo "Skipping Emulator...";
fi
clear && code .
