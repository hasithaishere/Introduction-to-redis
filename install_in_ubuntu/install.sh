#!/bin/bash

# Install Redis server in linux

#Start off by updating all of the apt-get packages:
sudo apt-get update

#Once the process finishes, download a compiler with build essential which will help us install Redis from source:
sudo apt-get install build-essential

#Finally, we need to download tcl:
sudo apt-get install tcl8.5

#Download the latest stable release tarball from Redis.io.
wget http://download.redis.io/releases/redis-stable.tar.gz

#Untar it and switch into that directory:
tar xzf redis-stable.tar.gz

cd redis-stable

#Proceed to with the make command:
make

#Run the recommended make test:
make test

#Finish up by running make install, which installs the program system-wide.
sudo make install

#Once the program has been installed, Redis comes with a built in script that sets up Redis to run as a background daemon.
#To access the script move into the utils directory:
cd utils

#From there, run the Ubuntu/Debian install script:
sudo ./install_server.sh

#To set Redis to automatically start at boot, run:
sudo update-rc.d redis_6379 defaults

#You can start and stop redis with these commands (the number depends on the port you set during the installation. 6379 is the default port setting):
sudo service redis_6379 start