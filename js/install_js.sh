#!/usr/bin/env bash

###################################################################################################
#                                                                                                 #
#                               Install Script for JS Development                                 #
#                                                                                                 #
###################################################################################################

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

apt-get install -y nodejs

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
source ~/.profile
