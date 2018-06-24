!#/bin/sh

###################################################################################################
#                                                                                                 #
#                                          R Installation                                         #
#                                                                                                 #
###################################################################################################

gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -

add-apt-repository 'deb [arch=amd64] https://cran.rstudio.com/bin/linux/ubuntu $(lsb_release -cs)/'

apt-get update -y

apt-get install -y r-base
apt-get install -y r-base-dev

