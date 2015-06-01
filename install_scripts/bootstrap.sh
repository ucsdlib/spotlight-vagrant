###
# BASICS
###

SHARED_DIR=$1

if [ -f "$SHARED_DIR/install_scripts/config" ]; then
  . $SHARED_DIR/install_scripts/config
fi

cd $HOME_DIR

# Update
apt-get -y update && apt-get -y upgrade

# SSH
apt-get -y install openssh-server

# Build tools
apt-get -y install build-essential

# Git vim
apt-get -y install git vim

# Wget and curl
apt-get -y install wget curl

# Image Magick
apt-get -y install imagemagick

# Zlib
apt-get -y install zlib1g-dev

# sqlite
apt-get -y install sqlite3 libsqlite3-dev

# java
apt-get -y install openjdk-7-jdk
