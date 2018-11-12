#!/bin/bash

echo "Enter OSX-VM-Name:"
read input
VBoxManage modifyvm "$input" --cpuid-set 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage setextradata "$input" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata "$input" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata "$input" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "$input" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1
VBoxManage setextradata "$input" VBoxInternal2/EfiGopMode 4
echo "OSX-VM patched"