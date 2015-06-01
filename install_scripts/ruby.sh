#!/bin/sh

apt-add-repository ppa:brightbox/ruby-ng
apt-get update
apt-get install -y ruby2.2 ruby2.2-dev
gem install rails
