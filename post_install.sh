!#/bin/sh

####################################################################################################
#                                                                                                  #
#                                Install script for Ubuntu distros                                 #
#                                                                                                  #
####################################################################################################

# Build and Ancillary
apt-get install -y apt-transport-https
apt-get install -y build-essentials
apt-get install -y ca-certificates
apt-get install -y software-properties-common
apt-get install -y curl
apt-get install -y libjpeg62 libjpeg62-dev
apt-get install -y libgstreamer1.0-0 libgstreamer1.0-dev
apt-get install -y libgstreamer-plugins-base1.0-0 libstreamer-plugins-base1.0-dev
apt-get install -y unixodbc-dev
apt-get install -y libxml2-dev
apt-get install -y libssl-dev
apt-get install -y libcurl4-openssl-dev
apt-get install -y libopenblas-dev
apt-get install -y dconf-tools

# Useful Programs
apt-get install -y chromium-browser
apt-get install -y clementine
apt-get install -y docky
apt-get install -y gimp
apt-get install -y inkscape

# Dev Tools
apt-get install -y tmux
apt-get install -y vim
apt-get install -y git
apt-get install -y guake

# VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" >
 /etc/apt/sources.list.d/vscode.list'

# Atom
add-apt-repository ppa:webupd8team/atom

# Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88

add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

apt-get update
apt-get install -y code
apt-get install -y atom
apt-get install -y docker-ce

########################################## Administrative #########################################
mkdir ~/workspace

# Setup SSH Keys
if [ ! -f ~/.ssh/id_rsa ]; then
	ssh-keygen -f ~/.ssh/id_rsa -N ""
else
	echo "SSH key already exists"
fi
