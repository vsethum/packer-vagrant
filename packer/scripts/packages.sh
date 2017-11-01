#!/usr/bin/env bash

# add ppa to install current versions of nodejs
#apt-get install -y python-software-properties software-properties-common
#add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y vim git zip unzip curl wget



#install java
if which java >/dev/null; then
   	echo "skip java 8 installation"
else
	echo "java 8 installation"
	apt-get -y install python-software-properties software-properties-common
    hash -r
    add-apt-repository ppa:webupd8team/java
    apt-get update && apt-get -y upgrade
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
    apt-get -y install oracle-java8-installer
    update-alternatives --display java
    apt-get -y install oracle-java8-set-default && apt-get clean
    apt-get update
    apt-get -y install openjdk-8-jre-headless
fi


#install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
nvm install stable


#install node and npm
#curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
#sudo apt-get install -y nodejs
#sudo apt-get install build-essential