#!/bin/bash


dnf makecache 
dnf update -y
dnf upgrade -y

dnf install epel-release
dnf update
dnf check-update


##install git to clone repos
dnf install git




#install python & pip to run python setup script 
dnf install python3
dnf install python3-pip


##obligitory refresh
dnf makecache --Refresh



##enable ssh
dnf install openssh-server
systemctl start sshd

##install prefered text editor nano

dnf install nano




##clone the repo for the setup

git clone https://github.com/bojongle/RockyServer.git


##switch to rocky server directory

cd RockyServer


##run the setup script

chmod +x RockyServer/SCRIPTS/Layer 1/dependanceies/filetoexe.sh

bash RockyServer/SCRIPTS/Layer 1/dependanceies/filetoexe.sh