#!/bin/sh

# update and upgrade
apt-get update -y && apt-get full-upgrade -y && apt-get autoremove -y && apt-get clean -y && apt-get autoclean -y

# install dependencies
apt-get install wget -y

# install git
apt-get install git -y

# create linux user
useradd --system --create-home --user-group --home /home/git --shell /bin/bash git

# folder and files
mkdir -p /home/git/.ssh && chmod 0700 /home/git/.ssh
touch /home/git/.ssh/authorized_keys && chmod 0600 /home/git/.ssh/authorized_keys
chown --recursive git:git /home/git/.ssh
wget --quiet --output-document /home/git/.ssh/authorized_keys https://github.com/axaryk.keys
