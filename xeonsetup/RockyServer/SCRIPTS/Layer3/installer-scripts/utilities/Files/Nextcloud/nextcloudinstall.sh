#!/bin/bash


##install nextcloud dependancies

sudo dnf install -y epel-release yum-utils unzip curl wget \
bash-completion policycoreutils-python-utils mlocate bzip2


##update system

dnf update -y


##install apache webserver,,, maybe,,, might do nginx instead

dnf install -y httpd

