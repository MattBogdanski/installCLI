#!/bin/bash
sudo apt-get install apt-transport-https lsb-release software-properties-common dirmngr -y

AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
    sudo tee /etc/apt/sources.list.d/azure-cli.list

sudo apt-key --keyring /etc/apt/trusted.gpg.d/Microsoft.gpg adv \
     --keyserver packages.microsoft.com \
     --recv-keys BC528686B50D79E339D3721CEB3E94ADBE1229CF


read -p "You need to update all apps, if you want to exlcude some of them just finish here. In other way just update all." -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo apt-get update
fi

sudo apt-get install azure-cli


